<%-- 
    Document   : Login.jsp
    Created on : Feb 26, 2019, 10:52:08 AM
    Author     : Dandy Huu
--%>

<%@page import="java.util.Scanner"%>
<%@page import="Models.clsTaikhoan"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbTaikhoan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Plugins/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="Plugins/assets/vendor/animate/animate.css">
    <link rel="stylesheet" href="Plugins/assets/vendor/elasic-slider/elastic.css">
    <link rel="stylesheet" href="Plugins/assets/vendor/iconmoon/linea-icon.css">
    <link rel="stylesheet" href="Plugins/assets/vendor/magnific-popup/magnific-popup.css">
    <link rel="stylesheet" href="Plugins/assets/vendor/owl-carousel/owl.carousel.css">
    <link rel="stylesheet" href="Plugins/assets/vendor/owl-carousel/owl.theme.css">
    <link rel="stylesheet" href="Plugins/assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="Plugins/assets/css/shortcodes.css">
    <link rel="stylesheet" href="Plugins/assets/css/style.css">
    <link rel="stylesheet" href="Plugins/assets/css/default-theme.css">
    </head>
    <body>
        <% 
           
            String _err = "";
            if (request.getAttribute("_err") != null) {
                    _err = (String) request.getAttribute("_err");
                }
            
            String active_login = "", active_cr="";
            if (request.getAttribute("active_login") != null) {
                    active_login = (String) request.getAttribute("active_login");
                }
            
            if (request.getAttribute("active_cr") != null) {
                    active_cr = (String) request.getAttribute("active_cr");
                }
            
            String username_err = "";
            if (request.getAttribute("username_err") != null) {
                    username_err = (String) request.getAttribute("username_err");
                }
        %>
        
        <!--  preloader start -->
        <div id="tb-preloader">
            <div class="tb-preloader-wave"></div>
        </div>
        <!-- preloader end -->
        <div class="wrapper">

            <section class="body-content ">

                <div class="page-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <dl class="accordion login-accordion">
                                    <dt>
                                    <a href="#" class="">Đăng nhập với tài khoản của bạn</a>
                                    </dt>
                                    <dd style="<%=active_login%>">
                                        <div class="login register ">
                                            <div class=" btn-rounded">
                                                <form class="" action="CheckLogin" id="login-form" method="post" novalidate="true" data-toggle="validator">

                                                    <div class="form-group">
                                                        <input type="text" name="username" value="" class="form-control" required=""  placeholder="Tên đăng nhập" maxlength="50" minlength="6"  data-error="Vui lòng nhập tài khoản" >
                                                        <div class="help-block with-errors"></div>
                                                    </div>

                                                    <div class="form-group">
                                                        <input maxlength="100"  data-error="Vui lòng nhập mật khẩu" required=""  type="password" name="password" value="" class="form-control " placeholder="Mật khẩu">
                                                        <div class="help-block with-errors"></div>
                                                    </div>
                                                    <p class="text-danger"><%= _err%></p>
                                                    <!-- <span style="color: red"><?= $msg ?></span> -->
                                                    <div class="form-group">
                                                        <button class="btn btn-small btn-dark-solid full-width" type="submit" value="login">Đăng nhập
                                                        </button>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for=""> <a class="pull-left" href="index.jsp"> Quay lại trang chủ</a></label>
                                                        <a class="pull-right" data-toggle="modal" href="#forgotPass"> Forgot Password?</a>
                                                    </div>

                                                </form>
                                            </div>

                                        </div>
                                    </dd>
                                    <dt>
                                    <a href="#">Bạn không có tài khoản? Đăng ký ngay!</a>
                                    </dt>
                                    
                                    
                                    <dd style="<%=active_cr%>">
                                        <form class=" login" action="DangkyServlet" method="post" data-toggle="validator">

                                            <div class="form-group">
                                                <input name ="ten" maxlength="100" required="" data-error="Vui lòng nhập tên" type="text" class="form-control" placeholder="Tên của bạn">
                                                <div class="help-block with-errors"></div>
                                            </div>
                                            
                                            <div class="form-group" id="user-result">
                                                <input id="username" name="username" minlength="6" required="" data-error="Vui lòng nhập lại tài khoản (lớn hơn 6 kí tự)" type="text" class="form-control" placeholder="Tài khoản">
                                                <div class="help-block with-errors"></div>
                                            </div>
                                             <p class="text-danger"><%= username_err%></p>
                                            <div class="form-group">
                                                <input name="phone" maxlength="13" minlength="12" required="" data-error="Số điện thoại không chính xác" type="text" class="form-control" placeholder="Điện thoại">
                                                <div class="help-block with-errors"></div>
                                            </div>
                                            <div class="form-group">
                                                <input name="pass" maxlength="100" required="" data-error="Mật khẩu phải dài hơn 6 kí tự" type="text" class="form-control" placeholder="Mật khẩu">
                                                <div class="help-block with-errors"></div>
                                            </div>


                                            <div class="form-group">
                                                <button class="btn btn-small btn-dark-solid full-width " id="login-form-submit" name="login-form-submit" value="login">Đăng kí
                                                </button>
                                            </div>


                                        </form>
                                    </dd>

                                </dl>
                            </div>
                        </div>
                    </div>

                </div>


            </section>
            <!--body content end-->

            <!--footer start 1-->

            <!--footer 1 end-->

        </div>
        
            <!-- inject:js -->
    <script src="Plugins/assets/vendor/modernizr/modernizr.js"></script>
    <script src="Plugins/assets/vendor/jquery/jquery-1.10.2.min.js"></script>
    <script src="Plugins/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="Plugins/assets/vendor/bootstrap-validator/validator.min.js"></script>
    <script src="Plugins/assets/vendor/breakpoint/breakpoint.js"></script>
    <script src="Plugins/assets/vendor/count-to/jquery.countTo.js"></script>
    <script src="Plugins/assets/vendor/countdown/jquery.countdown.js"></script>
    <script src="Plugins/assets/vendor/easing/jquery.easing.1.3.js"></script>
    <script src="Plugins/assets/vendor/easy-pie-chart/jquery.easypiechart.min.js"></script>
    <script src="Plugins/assets/vendor/elasic-slider/jquery.eislideshow.js"></script>
    <script src="Plugins/assets/vendor/flex-slider/jquery.flexslider-min.js"></script>
    <script src="Plugins/assets/vendor/gmap/jquery.gmap.min.js"></script>
    <script src="Plugins/assets/vendor/images-loaded/imagesloaded.js"></script>
    <script src="Plugins/assets/vendor/isotope/jquery.isotope.js"></script>
    <script src="Plugins/assets/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <script src="Plugins/assets/vendor/mailchimp/jquery.ajaxchimp.min.js"></script>
    <script src="Plugins/assets/vendor/menuzord/menuzord.js"></script>
    <script src="Plugins/assets/vendor/nav/jquery.nav.js"></script>
    <script src="Plugins/assets/vendor/owl-carousel/owl.carousel.min.js"></script>
    <script src="Plugins/assets/vendor/parallax-js/parallax.min.js"></script>
    <script src="Plugins/assets/vendor/smooth/smooth.js"></script>
    <script src="Plugins/assets/vendor/sticky/jquery.sticky.min.js"></script>
    <script src="Plugins/assets/vendor/touchspin/touchspin.js"></script>
    <script src="Plugins/assets/vendor/typist/typist.js"></script>
    <script src="Plugins/assets/vendor/visible/visible.js"></script>
    <script src="Plugins/assets/vendor/wow/wow.min.js"></script>
    <script src="Plugins/assets/js/scripts.js"></script>
    </body>
</html>
