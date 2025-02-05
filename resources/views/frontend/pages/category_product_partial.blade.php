@if($product->isEmpty())
    <div class="col-12 text-center py-5">
        <p class="text-muted">No products found matching your criteria.</p>
    </div>
@else
    <div class="row">
        @foreach($product as $products)
        <?php
        $discount_type = $products->discount_type;
        $discount_amount = $products->discount_amount;
        $sale_price = $products->sale_price;
        if ($discount_type='fixed') {
            $final_price = $sale_price - $discount_amount;
        }
        if ($discount_type='percentage'){
            $final_price = $sale_price-($sale_price/100)*$discount_amount;
        }
        ?>
        <div class="cat-grid-col">
            <div class="cat-product-box">
                <span class="cat-product-badge">
                    {{ $products->variants->first()->stock_quantity ? 'In Stock' : 'Out of stock' }}
                </span>
                
                <button class="cat-wishlist-btn">
                    <i class="far fa-heart"></i>
                </button>
                
                <div class="cat-product-image">
                    <a href="{{ route('product.details',$products->id) }}">
                        <img class="cat-primary-image" src="{{ asset('uploads/products/' . $products->product_image) }}" alt="{{ $products->name }}">
                        @if($products->galleryImages->isNotEmpty())
                            <img class="cat-hover-image" src="{{ asset('uploads/gallery/' . $products->galleryImages->first()->image) }}" alt="{{ $products->name }}">
                        @endif
                    </a>
                    <button onclick="addToCartFromCategory({{ $products->id }}, {{ $products->variants->first()->id }}, {{ $final_price }})" class="cat-plus-btn" title="Add to Cart">
                        <i class="fas fa-plus"></i>
                    </button>
                </div>
                
                <div class="cat-product-info">
                    <div class="cat-product-price">
                        <p class="cat-product-title">{{ $products->product_name }}</p>
                        @if($products->discount_amount !=0)
                        <div class="price-row d-flex">
                            <span class="cat-current-price">৳{{$final_price}}
                                <span class="cat-original-price">৳{{ $products->sale_price }}</span>
                        </div>
                        @else 
                        <span class="cat-current-price">৳{{$final_price}}</span>
                        @endif
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
@endif

<script>
async function addToCartFromCategory(productId, variantId, price) {
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