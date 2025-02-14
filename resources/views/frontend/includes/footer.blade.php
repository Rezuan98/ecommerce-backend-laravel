
                   
                
                
                    <!-- Main Footer -->
                    <div class="footer_area" >
                        <div class="container">
                           
                            
                            <div class="row mt-5">
                                <!-- Quick Links -->
                                <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
                                    <h5 class="footer-heading">Quick Links</h5>
                                    <ul class="footer-links">
                                        <li><a href="{{ route('about.us') }}">About Us</a></li>
                                        <li><a href="{{ route('contact.us') }}">Contact Us</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                        <li><a href="#">Terms & Conditions</a></li>
                                        <li><a href="#">FAQ</a></li>
                                    </ul>
                                </div>
                
                                <!-- Customer Service -->
                                <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
                                    <h5 class="footer-heading">Customer Service</h5>
                                    <ul class="footer-links">
                                        <li><a href="#">Payment Methods</a></li>
                                        <li><a href="#">Shipping Policy</a></li>
                                        <li><a href="#">Returns & Exchange</a></li>
                                        <li><a href="#">Track Order</a></li>
                                    </ul>
                                </div>
                
                                <!-- Contact Info -->
                                <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
                                    <h5 class="footer-links">Our Address</h5>
                                    <address class="contact-info mt-3">
                                        <p><i class="fas fa-map-marker-alt me-2"></i> {{ $settings->address }}</p>
                                        <p><i class="fas fa-phone me-2"></i>{{ $settings->phone }}</p>
                                        <p><i class="fas fa-envelope me-2"></i> {{ $settings->email }}</p>
                                    </address>
                                </div>
                
                                <!-- Follow Us -->
                                <div class="col-lg-3 col-md-6">
                                    <h5 class="footer-heading">Follow Us</h5>
                                    <div class="social-links">
                                        <a href="{{ $settings->facebook_url }}" class="social-link"><i class="fab fa-facebook-f"></i></a>
                                        <a href="{{ $settings->instagram_url }}" class="social-link"><i class="fab fa-instagram"></i></a>
                                        <a href="{{ $settings->youtube_url }}" class="social-link"><i class="fab fa-youtube"></i></a>
                                    </div>
                                    <!-- Payment Methods -->
                                    <div class="payment-methods mt-4">
                                        <h5 class="footer-heading">We Accept</h5>
                                        <img src="{{ asset('frontend/images/payments.webp') }}" style="height: 120px;width:120px;padding-bottom:50px;" alt="Payment Methods" class="img-fluid">
                                    </div>
                                </div>

                                <!-- Copyright Bar -->
<div class="copyright-bar mt-3">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="d-flex justify-content-between align-items-center py-2 text-center text-md-start">
                    <div class="copyright-text text-muted">
                        © {{ date('Y') }} {{ $settings->site_name ?? 'Your Site' }}. All Rights Reserved.
                    </div>
                    <div class="developer-credit text-muted">
                        Developed by <a href="https://www.emanagerit.com/" class="text-decoration-none" target="_blank">eManagerIT</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                            </div>
                        </div>
                    </div>
                
                    <!-- Copyright -->
                    
                