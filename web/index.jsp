<%-- 
    Document   : index
    Created on : Feb 19, 2019, 9:06:04 PM
    Author     : Dandy Huu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Coffee Blend</title>
        <link rel="stylesheet" href="Plugins/css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="Plugins/css/animate.css">

        <link rel="stylesheet" href="Plugins/css/owl.carousel.min.css">
        <link rel="stylesheet" href="Plugins/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="Plugins/css/magnific-popup.css">

        <link rel="stylesheet" href="Plugins/css/aos.css">

        <link rel="stylesheet" href="Plugins/css/ionicons.min.css">

        <link rel="stylesheet" href="Plugins/css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="Plugins/css/jquery.timepicker.css">


        <link rel="stylesheet" href="Plugins/css/flaticon.css">
        <link rel="stylesheet" href="Plugins/css/icomoon.css">
        <link rel="stylesheet" href="Plugins/css/style.css">
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Coffee<small>Blend</small></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a href="index.jsp" class="nav-link">Trang chủ</a></li>
                        <li class="nav-item"><a href="menu.html" class="nav-link">Thực đơn</a></li>
                        <li class="nav-item"><a class="nav-link" href="shop.html">Sản phẩm</a></li>
                        <!--<li class="nav-item"><a href="services.html" class="nav-link">Dịch vụ</a></li>-->
                        <li class="nav-item"><a href="blog.html" class="nav-link">Tin tức</a></li>

                        <li class="nav-item"><a href="contact.html" class="nav-link">Liên hệ</a></li>
                        <li class="nav-item"><a href="about.html" class="nav-link">Về chúng tôi</a></li>
                        <li class="nav-item cart"><a href="cart.html" class="nav-link"><span class="icon icon-shopping_cart"></span><span class="bag d-flex justify-content-center align-items-center"><small>1</small></span></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->

        <!-- main -->
        <%@include file="Home.jsp" %> 
        <!-- end main -->

        <footer class="ftco-footer ftco-section img">
            <div class="overlay"></div>
            <div class="container">
                <div class="row mb-5">
                    <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">về chúng tôi</h2>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-5 mb-md-5">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Tin tức</h2>
                            <div class="block-21 mb-4 d-flex">
                                <a class="blog-img mr-4" style="background-image: url(Plugins/images/image_1.jpg);"></a>
                                <div class="text">
                                    <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                                    <div class="meta">
                                        <div><a href="#"><span class="icon-calendar"></span> Sept 15, 2018</a></div>
                                        <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                        <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="block-21 mb-4 d-flex">
                                <a class="blog-img mr-4" style="background-image: url(Plugins/images/image_2.jpg);"></a>
                                <div class="text">
                                    <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a></h3>
                                    <div class="meta">
                                        <div><a href="#"><span class="icon-calendar"></span> Sept 15, 2018</a></div>
                                        <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                        <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 mb-5 mb-md-5">
                        <div class="ftco-footer-widget mb-4 ml-md-4">
                            <h2 class="ftco-heading-2">Menu nhanh</h2>
                            <ul class="list-unstyled">
                                <li><a href="#" class="py-2 d-block">Cooked</a></li>
                                <li><a href="#" class="py-2 d-block">Deliver</a></li>
                                <li><a href="#" class="py-2 d-block">Quality Foods</a></li>
                                <li><a href="#" class="py-2 d-block">Mixed</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Liên hệ</h2>
                            <div class="block-23 mb-3">
                                <ul>
                                    <li><span class="icon icon-map-marker"></span><span class="text">203 Phú Diễn - Phúc Diễn - Từ Liêm - Hà Nội</span></li>
                                    <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                                    <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">

                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </footer>



        <!-- loader -->
        <!--<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>-->

        <script src="Plugins/js/jquery.min.js"></script>
        <script src="Plugins/js/jquery-migrate-3.0.1.min.js"></script>
        <script src="Plugins/js/popper.min.js"></script>
        <script src="Plugins/js/bootstrap.min.js"></script>
        <script src="Plugins/js/jquery.easing.1.3.js"></script>
        <script src="Plugins/js/jquery.waypoints.min.js"></script>
        <script src="Plugins/js/jquery.stellar.min.js"></script>
        <script src="Plugins/js/owl.carousel.min.js"></script>
        <script src="Plugins/js/jquery.magnific-popup.min.js"></script>
        <script src="Plugins/js/aos.js"></script>
        <script src="Plugins/js/jquery.animateNumber.min.js"></script>
        <script src="Plugins/js/bootstrap-datepicker.js"></script>
        <script src="Plugins/js/jquery.timepicker.min.js"></script>
        <script src="Plugins/js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="Plugins/js/google-map.js"></script>
        <script src="Plugins/js/main.js"></script>

    </body>
</html>
