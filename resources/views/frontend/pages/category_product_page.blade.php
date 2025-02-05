@extends('frontend.master.master')

@section('keyTitle','Category Products')
@push('ecomcss')
   <style>
/* Category Grid Layout */
.cat-grid-col {
    flex: 0 0 33.333%;
    max-width: 33.333%;
    padding: 0 5px;
    width: calc(33.333% - 10px);
}

/* Product Box */
.cat-product-box {
    position: relative;
    background: #fff;
    padding: 8px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.08);
    transition: transform 0.3s ease;
    margin: 5px;
    width: 100%;
}

.cat-product-box:hover {
    transform: translateY(-5px);
}

/* Image Styles */
.cat-product-image {
    position: relative;
    margin-bottom: 10px;
    height: 0;
    padding-bottom: 100%;
    overflow: hidden;
}

.cat-product-image img {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .7s ease;
}

.cat-product-image:hover img {
    transform: scale(1.1);
}

.cat-primary-image {
    opacity: 1;
}

.cat-hover-image {
    position: absolute;
    top: 0;
    left: 0;
    opacity: 0;
    transition: opacity 0.3s ease;
}

.cat-product-box:hover .cat-primary-image {
    opacity: 0;
}

.cat-product-box:hover .cat-hover-image {
    opacity: 1;
}

/* Product Badge */
.cat-product-badge {
    position: absolute;
    top: 10px;
    left: 10px;
    background: #333;
    color: #fff;
    padding: 5px 12px;
    font-size: 12px;
    border-radius: 3px;
    z-index: 2;
}

/* Wishlist Button */
.cat-wishlist-btn {
    position: absolute;
    top: 20px;
    right: 20px;
    border: none;
    width: 30px;
    height: 30px;
    background-color: transparent;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    z-index: 2;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

.cat-wishlist-btn i {
    font-size: 16px;
    color: #333;
    background-color: transparent;
}

/* Plus Button */
.cat-plus-btn {
    position: absolute;
    bottom: 15px;
    right: 15px;
    width: 35px;
    height: 35px;
    border: none;
    border-radius: 50%;
    background: #fff;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    opacity: 0;
    z-index: 2;
    transition: all 0.3s ease;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

.cat-plus-btn i {
    color: black;
}

.cat-product-box:hover .cat-plus-btn {
    opacity: 1;
}

.cat-plus-btn:hover {
    background: #333;
    color: #fff;
}

.cat-plus-btn:hover i {
    color: #fff;
}

/* Product Info */
.cat-product-info {
    padding: 5px 0;
    width: 100%;
}

.cat-product-title {
    font-size: 14px;
    margin-bottom: 5px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 100%;
    height: 20px;
    line-height: 20px;
}

.cat-product-price {
    width: 100%;
}

.cat-current-price {
    font-size: 14px;
    font-weight: 600;
    display: block;
    width: 100%;
}

.cat-original-price {
    font-size: 12px;
    color: #999;
    text-decoration: line-through;
    margin-left: 5px;
    display: inline-block;
}
.category-header {
    background-color: #fef5f0;
}
.category-header .container i {
    color: #ab6752;
}
/* Responsive Design */
@media (max-width: 991px) {
    .cat-grid-col {
        flex: 0 0 50%;
        max-width: 50%;
        width: calc(50% - 10px);
    }
}

@media (max-width: 576px) {
    .cat-grid-col {
        flex: 0 0 50%;
        max-width: 50%;
        width: calc(50% - 10px);
    }
    
    .cat-product-title {
        font-size: 12px;
        height: 18px;
        line-height: 18px;
    }
    
    .cat-plus-btn {
        opacity: 1;
        width: 25px;
        height: 25px;
        bottom: 5px;
        right: 5px;
    }
    
    .cat-product-badge {
        font-size: 10px;
        padding: 3px 8px;
    }

    .cat-original-price {
        font-size: 10px;
        margin-left: 2px;
    }

    .cat-wishlist-btn {
        top: 10px;
        right: 10px;
    }
}









.category-filters {
    background: white;
    padding: 10px;
    margin-bottom: 10px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
}

.filter-row {
    display: flex;
    align-items: center;
    gap: 15px;
    flex-wrap: wrap;
}

.filter-item {
    flex: 1;
    min-width: 200px;
}

.filter-label {
    font-size: 14px;
    color: #666;
    /* margin-bottom: 8px; */
    display: block;
}

/* Price Range Slider */
.price-range-container {
    position: relative;
    width: 100%;
    padding: 10px 0;
}

.price-slider {
    height: 4px;
    width: 100%;
    background: #e0e0e0;
    position: relative;
    border-radius: 2px;
}

.price-progress {
    height: 100%;
    position: absolute;
    background: #ab6752;
    border-radius: 2px;
    left: 0%;
    right: 0%;
}

.range-input {
    position: relative;
}

.range-input input {
    position: absolute;
    top: -5px;
    height: 4px;
    width: 100%;
    background: none;
    pointer-events: none;
    -webkit-appearance: none;
    appearance: none;
}

.range-input input::-webkit-slider-thumb {
    height: 15px;
    width: 15px;
    border-radius: 50%;
    background: #ab6752;
    pointer-events: auto;
    -webkit-appearance: none;
    border: 2px solid white;
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.2);
}

.price-inputs {
    display: flex;
    align-items: center;
    margin-top: 10px;
    gap: 10px;
}

.field {
    display: flex;
    align-items: center;
    height: 35px;
    background: #f5f5f5;
    border-radius: 4px;
    padding: 0 10px;
}

.field span {
    font-size: 14px;
    color: #666;
    margin-right: 5px;
}

.field input {
    width: 80px;
    background: none;
    border: none;
    outline: none;
    font-size: 14px;
}

/* Sort By Filter */
.sort-select {
    appearance: none;
    width: 100%;
    padding: 8px 12px;
    border: 1px solid #ddd;
    border-radius: 4px;
    background: white;
    font-size: 14px;
    cursor: pointer;
    outline: none;
    transition: all 0.3s ease;
}

.sort-select:hover {
    border-color: #ab6752;
}

.sort-select:focus {
    border-color: #ab6752;
    box-shadow: 0 0 0 2px rgba(167, 0, 0, 0.1);
}

/* Availability Filter */
.availability-options {
    display: flex;
    gap: 15px;
}

.availability-checkbox {
    display: none;
}

.availability-label {
    display: flex;
    align-items: center;
    gap: 8px;
    cursor: pointer;
    font-size: 14px;
    padding: 8px 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    transition: all 0.3s ease;
}

.availability-checkbox:checked + .availability-label {
    background: #ab6752;
    color: white;
    border-color: #ab6752;
}

/* Filter Actions */
.filter-actions {
    display: flex;
    align-items: center;
    gap: 10px;
}

.apply-filters-btn {
    padding: 8px 10px;
    background: #ab6752;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.apply-filters-btn:hover {
    background: #ab6752;
}

.clear-filters-btn {
    padding: 8px 20px;
    background: white;
    color: #666;
    border: 1px solid #ddd;
    border-radius: 4px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.clear-filters-btn:hover {
    background: #f5f5f5;
}

@media (max-width: 768px) {
    .filter-row {
        flex-direction: column;
        gap: 20px;
    }

    .filter-item {
        width: 100%;
    }
}
    </style> 
@endpush











@section('contents')
@push('ecomjs')

<script>
document.addEventListener('DOMContentLoaded', function() {
    const rangeMin = document.querySelector('.range-min');
    const rangeMax = document.querySelector('.range-max');
    const inputMin = document.querySelector('.input-min');
    const inputMax = document.querySelector('.input-max');
    const progress = document.querySelector('.progress');
    const priceGap = 0;

    function updateProgress() {
        const min = parseInt(rangeMin.value);
        const max = parseInt(rangeMax.value);
        const percent1 = (min / rangeMin.max) * 100;
        const percent2 = (max / rangeMax.max) * 100;
        
        progress.style.left = percent1 + '%';
        progress.style.width = (percent2 - percent1) + '%';
        
        inputMin.value = min;
        inputMax.value = max;
        
        // Trigger the filter update
        filterProducts();
    }

    // Range slider input event handlers
    rangeMin.addEventListener('input', function() {
        let minVal = parseInt(rangeMin.value);
        let maxVal = parseInt(rangeMax.value);
        
        if(maxVal - minVal < priceGap) {
            rangeMin.value = maxVal - priceGap;
        }
        updateProgress();
    });

    rangeMax.addEventListener('input', function() {
        let minVal = parseInt(rangeMin.value);
        let maxVal = parseInt(rangeMax.value);
        
        if(maxVal - minVal < priceGap) {
            rangeMax.value = minVal + priceGap;
        }
        updateProgress();
    });

    // Number input event handlers
    inputMin.addEventListener('change', function() {
        let minVal = parseInt(inputMin.value);
        let maxVal = parseInt(inputMax.value);
        
        if(minVal < 0) {
            inputMin.value = 0;
            minVal = 0;
        }
        
        if(maxVal - minVal < priceGap) {
            inputMin.value = maxVal - priceGap;
        }
        
        rangeMin.value = minVal;
        updateProgress();
    });

    inputMax.addEventListener('change', function() {
        let minVal = parseInt(inputMin.value);
        let maxVal = parseInt(inputMax.value);
        
        if(maxVal > parseInt(rangeMax.max)) {
            inputMax.value = rangeMax.max;
            maxVal = rangeMax.max;
        }
        
        if(maxVal - minVal < priceGap) {
            inputMax.value = minVal + priceGap;
        }
        
        rangeMax.value = maxVal;
        updateProgress();
    });

    function filterProducts() {
        const filters = {
            min_price: parseInt(inputMin.value),
            max_price: parseInt(inputMax.value),
            sort: document.querySelector('input[name="sort"]:checked')?.value || 'newest',
            in_stock: document.querySelector('input[value="in_stock"]')?.checked || false
        };

        // Get current URL and update parameters
        const url = new URL(window.location.href);
        Object.keys(filters).forEach(key => {
            url.searchParams.set(key, filters[key]);
        });

        // Show loading state
        const productList = document.querySelector('.product-list');
        productList.innerHTML = '<div class="spinner">Loading products...</div>';

        // Fetch filtered results
        fetch(url)
            .then(response => response.text())
            .then(html => {
                const parser = new DOMParser();
                const doc = parser.parseFromString(html, 'text/html');
                const newProductList = doc.querySelector('.product-list');
                
                if (newProductList) {
                    productList.innerHTML = newProductList.innerHTML;
                } else {
                    productList.innerHTML = '<p>No products found.</p>';
                }
            })
            .catch(error => {
                console.error('Error:', error);
                productList.innerHTML = '<p>Error loading products. Please try again.</p>';
            });
    }

    document.querySelectorAll('input[name="sort"]').forEach(radio => {
        radio.addEventListener('change', function() {
            filterProducts();
        });
    });

    function filterProducts() {
        // Get all current filter values
        const filters = {
            min_price: parseInt(document.querySelector('.input-min').value),
            max_price: parseInt(document.querySelector('.input-max').value),
            sort: document.querySelector('input[name="sort"]:checked').value,
            // Add other filters here
        };

        // Show loading spinner
        const productList = document.querySelector('.product-list');
        productList.innerHTML = '<div class="spinner">Loading products...</div>';

        // Build URL with filters
        const url = new URL(window.location.href);
        Object.keys(filters).forEach(key => {
            url.searchParams.set(key, filters[key]);
        });

        // Fetch filtered results
        fetch(url)
            .then(response => response.text())
            .then(html => {
                const parser = new DOMParser();
                const doc = parser.parseFromString(html, 'text/html');
                const newProductList = doc.querySelector('.product-list');

                if (newProductList) {
                    productList.innerHTML = newProductList.innerHTML;
                } else {
                    productList.innerHTML = '<p>No products found.</p>';
                }
            })
            .catch(error => {
                console.error('Error:', error);
                productList.innerHTML = '<p>Error loading products. Please try again.</p>';
            });
    }

    // Clear filters button
    document.getElementById('clear-filters')?.addEventListener('click', function() {
        rangeMin.value = 0;
        rangeMax.value = 50000;
        inputMin.value = 0;
        inputMax.value = 50000;
        document.querySelector('input[name="sort"][value="newest"]').checked = true;
        document.querySelector('input[value="in_stock"]').checked = false;
        updateProgress();
    });
});

function applyFilters() {
    const minPrice = document.querySelector('.input-min').value;
    const maxPrice = document.querySelector('.input-max').value;
    const sortBy = document.querySelector('.sort-select').value;
    const inStock = document.querySelector('#in_stock').checked;
    const outOfStock = document.querySelector('#out_of_stock').checked;

    const url = new URL(window.location.href);
    url.searchParams.set('min_price', minPrice);
    url.searchParams.set('max_price', maxPrice);
    url.searchParams.set('sort', sortBy);
    url.searchParams.set('in_stock', inStock);
    url.searchParams.set('out_of_stock', outOfStock);

    const productList = document.querySelector('.product-list');
    productList.innerHTML = '<div class="col-12 text-center"><div class="spinner">Loading products...</div></div>';

    fetch(url)
        .then(response => response.text())
        .then(html => {
            const parser = new DOMParser();
            const doc = parser.parseFromString(html, 'text/html');
            const newProductList = doc.querySelector('.product-list');
            if (newProductList) {
                productList.innerHTML = newProductList.innerHTML;
            }
        })
        .catch(error => {
            console.error('Error:', error);
            productList.innerHTML = '<div class="col-12 text-center">Error loading products. Please try again.</div>';
        });
}

function clearFilters() {
    document.querySelector('.input-min').value = 0;
    document.querySelector('.input-max').value = 10000;
    document.querySelector('.sort-select').value = 'newest';
    document.querySelector('#in_stock').checked = false;
    document.querySelector('#out_of_stock').checked = false;
    
    // Reset range sliders
    document.querySelector('.range-min').value = 0;
    document.querySelector('.range-max').value = 10000;
    updatePriceProgress();
    
    applyFilters();
}

function updatePriceProgress() {
    const rangeMin = document.querySelector('.range-min');
    const rangeMax = document.querySelector('.range-max');
    const progress = document.querySelector('.price-progress');
    
    const minVal = parseInt(rangeMin.value);
    const maxVal = parseInt(rangeMax.value);
    const percent1 = (minVal / rangeMin.max) * 100;
    const percent2 = (maxVal / rangeMax.max) * 100;
    
    progress.style.left = percent1 + '%';
    progress.style.width = (percent2 - percent1) + '%';
}

// Initialize range slider functionality
document.addEventListener('DOMContentLoaded', function() {
    const rangeMin = document.querySelector('.range-min');
    const rangeMax = document.querySelector('.range-max');
    const inputMin = document.querySelector('.input-min');
    const inputMax = document.querySelector('.input-max');

    rangeMin.addEventListener('input', function() {
        const minVal = parseInt(rangeMin.value);
        const maxVal = parseInt(rangeMax.value);
        
        if(maxVal - minVal >= 0) {
            inputMin.value = minVal;
            updatePriceProgress();
        }
    });

    rangeMax.addEventListener('input', function() {
        const minVal = parseInt(rangeMin.value);
        const maxVal = parseInt(rangeMax.value);
        
        if(maxVal - minVal >= 0) {
            inputMax.value = maxVal;
            updatePriceProgress();
        }
    });

    updatePriceProgress();
});

</script>

    
@endpush
<!-- Category Header -->
<!-- Category Header -->
<section class="category-header py-4">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="breadcrumb-nav text-center">
                    <div class="breadcrumb-path">
                        <span>Home</span>
                        <i class="fas fa-chevron-right mx-2"></i>
                        <span>Category</span>
                        <i class="fas fa-chevron-right mx-2"></i>
                        <span>{{ App\Models\Category::find($id)->name }}</span>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</section>

<!-- Filter Section -->
<div class="container">
    <div class="category-filters">
        <div class="filter-row">
            <!-- Price Range Filter -->
            <div class="filter-item">
                <label class="filter-label">Price Range</label>
                <div class="price-range-container">
                    <div class="price-slider">
                        <div class="price-progress"></div>
                    </div>
                    <div class="range-input">
                        <input type="range" class="range-min" min="0" max="10000" value="0" step="100">
                        <input type="range" class="range-max" min="0" max="10000" value="10000" step="100">
                    </div>
                    <div class="price-inputs">
                        <div class="field">
                            <span>৳</span>
                            <input type="number" class="input-min" value="0">
                        </div>
                        <div class="field">
                            <span>৳</span>
                            <input type="number" class="input-max" value="10000">
                        </div>
                    </div>
                </div>
            </div>

            <!-- Sort By Filter -->
            <div class="filter-item">
                <label class="filter-label">Sort By</label>
                <select class="sort-select" name="sort">
                    <option value="newest">Newest First</option>
                    <option value="price_low">Price: Low to High</option>
                    <option value="price_high">Price: High to Low</option>
                    <option value="popular">Most Popular</option>
                </select>
            </div>

            <!-- Availability Filter -->
            <div class="filter-item">
                <label class="filter-label">Availability</label>
                <div class="availability-options">
                    <input type="checkbox" id="in_stock" class="availability-checkbox" value="in_stock">
                    <label for="in_stock" class="availability-label">In Stock</label>

                    <input type="checkbox" id="out_of_stock" class="availability-checkbox" value="out_of_stock">
                    <label for="out_of_stock" class="availability-label">Out of Stock</label>
                </div>
            </div>

            <!-- Filter Actions -->
            <div class="filter-item">
                <label class="filter-label">&nbsp;</label>
                <div class="filter-actions">
                    <button class="apply-filters-btn" onclick="applyFilters()">
                        Apply Filters
                    </button>
                    <button class="clear-filters-btn" onclick="clearFilters()">
                        Clear All
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Product Grid -->
    <div class="row">
        <div class="col-12">
            <div class="row product-list">
                @include('frontend.pages.category_product_partial', ['product' => $product])
            </div>
        </div>
    </div>
</div>
    
</div>




</div>

</div>
    </div>
</section>
@endsection