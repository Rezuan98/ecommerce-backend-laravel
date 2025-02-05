

@push('ecomcss')
    <style>
        .fa-spinner {
            animation: spin 1s linear infinite;
        }
        
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
@endpush

<section id="new-arrivals-section" class="new-arrivals-products">
    <div class="container mt-4">
        <h2 class="section-title" style="text-align: center;">Best Selling Products</h2>
        <div class="row">
            <div class="col-lg-12">
                <div class="row">
                    @foreach($best_selling as $product)
                    <?php
                    $discount_type = $product->discount_type;
$discount_amount = $product->discount_amount;
$sale_price = $product->sale_price;

if ($discount_type === 'fixed') {
    $final_price = $sale_price - $discount_amount;
} 
elseif ($discount_type === 'percentage') {
    $final_price = $sale_price - ($sale_price/100) * $discount_amount;
}
                    ?>
                    <div class="col-md-2-4 col-lg-2-4">
                        <div class="new-arrival-box">
                            <span class="product-badge">
                                {{ $product->variants->first()->stock_quantity ? 'In Stock' : 'Out of stock' }}
                            </span>
                            
                            <button class="new-wishlist-btn">
                                <i class="far fa-heart"></i>
                            </button>
                        
                            <div class="new-arrival-image">
                                <a href="{{ route('product.details',$product->id) }}">
                                    <img class="primary-image" src="{{ asset('uploads/products/' . $product->product_image) }}" alt="{{ $product->name }}">
                                    @if($product->galleryImages->isNotEmpty())
                                        <img class="hover-image" src="{{ asset('uploads/gallery/' . $product->galleryImages->first()->image) }}" alt="{{ $product->name }}">
                                    @endif
                                </a>
                                <button onclick="addToCartFromBestSelling({{ $product->id }}, {{ $product->variants->first()->id }}, {{ $final_price }})" class="plus-btn" title="Add to Cart">
                                    <i class="fas fa-plus"></i>
                                </button>
                            </div>
                        {{-- <?php dd($final_price); ?> --}}
                            <div class="product-info">
                                <div class="product-price">
                                    <p class="product-title">{{ $product->product_name }}</p>
                                    @if($product->discount_amount !=0)
                                    <div class="price-row d-flex">
                                        <span class="current-price">৳{{$final_price}}
                                            <span class="original-product-price">৳{{ $product->sale_price }}</span>
                                    </div>
                                    @else 
                                    <span class="current-price">৳{{$final_price}}
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

@push('ecomjs')
<script>
async function addToCartFromBestSelling(productId, variantId, price) {
    try {
        const clickedButton = event.currentTarget;
        clickedButton.innerHTML = '<i class="fas fa-spinner fa-spin"></i>';
        clickedButton.disabled = true;

        setTimeout(() => {
            clickedButton.innerHTML = '<i class="fas fa-plus"></i>';
            clickedButton.disabled = false;
        }, 3000);

        const response = await fetch('/add-to-cart', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content,
                'Accept': 'application/json'
            },
            body: JSON.stringify({
                product_id: productId,
                varient_id: variantId,
                quantity: 1,
                price: price
            })
        });

        const data = await response.json();
        
        if (data.success) {
            const cartCountElements = document.querySelectorAll('.cart-count');
            cartCountElements.forEach(element => {
                element.textContent = data.cartCount;
            });
            toggleCart();
        }
    } catch (error) {
        console.error('Error:', error);
    }
}
</script>
@endpush