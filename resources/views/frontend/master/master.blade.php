<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('keyTitle')</title>
    @if(isset($settings) && $settings->favicon)
    <link rel="icon" sizes="86x86" type="image/png" href="{{ asset('storage/' . $settings->favicon) }}">
    {{-- <link rel="shortcut icon" sizes="86x86" type="image/png" href="{{ asset('storage/' . $settings->favicon) }}">
    <link rel="apple-touch-icon" sizes="86x86" href="{{ asset('storage/' . $settings->favicon) }}"> --}}
@endif
<link rel="stylesheet" href="{{ asset('frontend/css/layout.css') }}">
<link rel="stylesheet" href="{{ asset('frontend/css/style.css') }}">
<link rel="stylesheet" href="{{ asset('frontend/css/new-arrival.css') }}">
<link rel="stylesheet" href="{{ asset('frontend/css/best_selling.css') }}">
<link rel="stylesheet" href="{{ asset('frontend/css/cart.css') }}">
<link rel="stylesheet" href="{{ asset('frontend/css/navbar.css') }}">
<link rel="stylesheet" href="{{ asset('frontend/css/product_details.css') }}">
<link rel="stylesheet" href="{{ asset('frontend/css/mobile-nav.css') }}">
    {{-- bootstrap css start --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    {{-- bootstrap css end --}}

    {{-- cdn for slick slider start --}}
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" />


    {{-- cdn for slick slider start --}}
   @stack('ecomcss')

   
   <style>
    .mobile-category-list {
    list-style: none;
    padding: 0;
    margin: 0;
}

.mobile-category-list li {
    border-bottom: 1px solid #eee;
}

.mobile-menu-item {
    display: block;
    padding: 5px 7px;
    color: #333;
    text-decoration: none;
    font-size: 16px;
    transition: background-color 0.3s;
}

.mobile-menu-item:hover {
    background-color: #f5f5f5;
    color: #007bff;
}


/* cart sidebar */

.cart-sidebar {
    position: fixed;
    top: 0;
   
    right: -500px;
    width: 500px;
    height: 100vh;
    background: white;
    box-shadow: -2px 0 5px rgba(0,0,0,0.1);
    transition: right 0.3s ease;
    z-index: 1051;
    display: flex;
    flex-direction: column;
    
}

@media (max-width:678px){

    .cart-sidebar{
        right: -90%;
        width: 90%;
        z-index: 1051;
    }
}

.cart-sidebar.active {
    right: 0;
}

.cart-header {
    padding: 20px;
    border-bottom: 1px solid #eee;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.close-cart {
    border: none;
    background: none;
    font-size: 24px;
    cursor: pointer;
}

.cart-items {
    flex: 1;
    overflow-y: auto;
    padding: 20px;
}

.cart-item {
    display: flex;
    padding: 10px 0;
    border-bottom: 1px solid #eee;
}

.cart-item-image {
    width: 80px;
    height: 80px;
    object-fit: cover;
    margin-right: 15px;
}

.cart-item-details {
    flex: 1;
}

.cart-item-title {
    margin: 0 0 5px;
    font-size: 14px;
}

.cart-item-variant {
    color: #666;
    font-size: 12px;
    margin-bottom: 5px;
}

.cart-item-price {
    font-weight: bold;
    margin-bottom: 10px;
}

.cart-item-actions {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.cart-item-actions i {
    color: #ab6752;
}
.quantity-controls {
    display: flex;
    align-items: center;
    gap: 10px;
}

.quantity-controls button {
    width: 24px;
    height: 24px;
    border: 1px solid #ddd;
    background: white;
    border-radius: 4px;
    cursor: pointer;
}

.remove-item {
    border: none;
    background: none;
    color: #dc3545;
    cursor: pointer;
}

.cart-footer {
    padding: 20px;
    border-top: 1px solid #eee;
    background: #f8f9fa;
}

.cart-subtotal {
    display: flex;
    justify-content: space-between;
    margin-bottom: 15px;
    font-weight: bold;
}

.cart-buttons {
    display: flex;
    gap: 10px;
}

.view-cart-btn, .checkout-btn {
    flex: 1;
    padding: 10px;
    text-align: center;
    border-radius: 4px;
    text-decoration: none;
}

.view-cart-btn {
    background: #f8f9fa;
    border: 1px solid #ddd;
    color: #333;
}

.checkout-btn {
    background: #007bff;
    color: white;
    border: none;
}

.empty-cart {
    text-align: center;
    padding: 40px 20px;
    color: #666;
}

.empty-cart i {
    font-size: 40px;
    margin-bottom: 10px;
    color: #ddd;
}
/* cart sidebar */

/* Scroll Navbar */
.scroll-navbar {
    position: fixed; /* Makes it fixed instead of sticky */
    top: 0;
    left: 0;
    width: 100%; /* Full width */
    opacity: 0; /* Hidden initially */
    transform: translateY(-20px); /* Moves it slightly upwards */
    transition: opacity 0.5s ease, transform 0.5s ease; /* Smooth transition */
    z-index: 1000; /* Ensures it stays on top of other content */
    pointer-events: none; /* Prevents interaction when hidden */
}

.scroll-navbar.visible {
    opacity: 1; /* Makes it visible */
    transform: translateY(0); /* Moves it back to its original position */
    pointer-events: auto; /* Enables interaction */
}

.second-navbar {
    background-color: white;
    padding: 10px 20px;
    background-color:  #ab6752;
}

.scroll-navbar .scroll-logo img {
    height: 80px;
}

.scroll-navbar .scroll-categories {
    display: flex;
    gap: 30px;
}

.scroll-navbar .scroll-categories a {
    color: #f5f5f5;
    text-decoration: none;
    font-size: 16px;
    letter-spacing: 0.5px;
}

/* .scroll-navbar .scroll-categories a:hover {
    color: green;
} */

.scroll-navbar .scroll-icons {
    display: flex;
    /* gap: 15px; */
    /* margin: 0 10px; */
    color: #000;
    /* font-size: 1.3rem; */
}

.scroll-navbar .scroll-icons a {
    color: #000;
    /* font-size: 20px; */
    text-decoration: none;
    transition: color 0.3s;
    text-decoration: none;
}



@media (max-width: 768px) {
    .scroll-navbar {
        display: none;
    }
}


#sticky-mobile-menu {
        position: fixed;
        top: 0;
        left: -250px; /* Sidebar starts off-screen */
        height: 100vh;
        width: 250px; /* Set the width of the sidebar */
        background-color: #f5f5f5; /* Sidebar background */
        color: #333; /* Text color */
        transition: left 0.3s ease; /* Smooth transition when sliding in/out */
        z-index: 1051;
        /* padding: 20px; */
    }
    #sticky-mobile-menu .menu-content {

        background-color: #f5f5f5;
    }


#sticky-mobile-menu.open {
        left: 0; /* Sidebar slides in */
    }















 /* #sticky-mobile-menu with subcategories {
        position: fixed;
        top: 0;
        left: -250px; 
        height: 100vh;
        width: 250px; 
        background-color: #f5f5f5; 
        color: #333; 
        transition: left 0.3s ease; 
        z-index: 1051;
         padding: 20px; 
    }
    #sticky-mobile-menu .menu-content {

        background-color: #f5f5f5;
    }
    

    
    #sticky-mobile-menu.open {
        left: 0; 
    }

    .categories-menu {
    background-color: #fff;
    border-bottom: 1px solid #eee;
    position: relative;
    z-index: 1000;
}

.category-list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    justify-content: center;
    gap: 2rem;
}

.category-item {
    position: relative;
    padding: 1rem 0;
}

.category-item > a {
    color: #333;
    text-decoration: none;
    font-weight: 500;
    display: flex;
    align-items: center;
    transition: color 0.3s ease;
}

.category-item > a:hover {
    color: #a70000;
}

.category-item i {
    font-size: 0.75rem;
    margin-left: 0.5rem;
}


.subcategory-dropdown {
    position: absolute;
    top: 100%;
    left: 0;
    background: white;
    min-width: 200px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    opacity: 0;
    visibility: hidden;
    transform: translateY(10px);
    transition: all 0.3s ease;
    border-radius: 8px;
    padding: 1rem;
}

.category-item:hover .subcategory-dropdown {
    opacity: 1;
    visibility: visible;
    transform: translateY(0);
}

.dropdown-heading {
    color: #333;
    font-size: 0.9rem;
    font-weight: 600;
    padding-bottom: 0.5rem;
    margin-bottom: 0.5rem;
    border-bottom: 1px solid #eee;
}

.subcategory-list {
    list-style: none;
    padding: 0;
    margin: 0;
}

.subcategory-list li {
    padding: 0.5rem 0;
}

.subcategory-list a {
    color: #666;
    text-decoration: none;
    font-size: 0.9rem;
    transition: color 0.3s ease;
    display: block;
}

.subcategory-list a:hover {
    color: #a70000;
}


.subcategory-list li {
    opacity: 0;
    transform: translateX(-10px);
    transition: all 0.3s ease;
}

.category-item:hover .subcategory-list li {
    opacity: 1;
    transform: translateX(0);
}


.subcategory-list li:nth-child(1) { transition-delay: 0.05s; }
.subcategory-list li:nth-child(2) { transition-delay: 0.10s; }
.subcategory-list li:nth-child(3) { transition-delay: 0.15s; }
.subcategory-list li:nth-child(4) { transition-delay: 0.20s; }
.subcategory-list li:nth-child(5) { transition-delay: 0.25s; }
.subcategory-list li:nth-child(6) { transition-delay: 0.30s; }
.subcategory-list li:nth-child(7) { transition-delay: 0.35s; }
.subcategory-list li:nth-child(8) { transition-delay: 0.40s; }
.subcategory-list li:nth-child(9) { transition-delay: 0.45s; }
.subcategory-list li:nth-child(10) { transition-delay: 0.50s; }


@media (max-width: 768px) {
    .category-list {
        flex-direction: column;
        gap: 0;
    }

    .category-item {
        padding: 0.75rem 0;
        border-bottom: 1px solid #eee;
    }

    .subcategory-dropdown {
        position: static;
        box-shadow: none;
        padding: 0.5rem 0 0.5rem 1rem;
        display: none;
    }

    .category-item:hover .subcategory-dropdown {
        display: block;
    }

    .dropdown-heading {
        display: none;
    }
}  */

</style>





</head>

<body>

  
    @include('frontend.includes.navbar')
    {{-- @include('frontend.includes.second_navbar') --}}
    <section id="main-area">
        @yield('contents')
    </section>

    @include('frontend.includes.footer')


    {{-- bootstrap js cdn start --}}
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

     {{-- bootstrap js cdn end --}}
   
   @stack('ecomjs')
  {{-- cdn for alpine js start --}}
<script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
   {{-- cdn for alpine js end --}}

   {{-- cdn for slick slider start --}}
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
   {{-- cdn for slick slider end--}}


   <!-- Quick View Sidebar plus icon -->
 {{-- <div id="quick-view-sidebar" class="quick-view-sidebar">
    <div class="quick-view-header">
        <h5>Product Quick View</h5>
        <button class="close-quick-view" onclick="toggleQuickView()">×</button>
    </div>

    <div class="quick-view-content">
        <!-- Product content will be loaded here dynamically -->
    </div>
</div>  --}}
<script src="{{ asset('frontend/js/best_selling_products.js') }}"></script>
<script src="{{ asset('frontend/js/navbar.js') }}"></script>
<script src="{{ asset('frontend/js/cart.js') }}"></script>
<script src="{{ asset('frontend/js/product_details.js') }}"></script>
<script>
    // slider
    $(document).ready(function () {
        $('.slider').slick({
            dots: false,          // Enable navigation dots
            infinite: true,      // Infinite scrolling
            speed: 500,          // Transition speed in milliseconds
            slidesToShow: 1,     // Show one slide at a time
            slidesToScroll: 1,   // Scroll one slide at a time
            autoplay: true,      // Enable autoplay
            autoplaySpeed: 4000, // Time between slides in autoplay
            arrows: false,        // Show navigation arrows
            adaptiveHeight: true // Adjust height automatically
        });
    });
    // slider

    
</script>
@stack('ecomjs')
</body>

</html>
