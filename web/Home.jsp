<%-- 
    Document   : Home.jsp
    Created on : Feb 19, 2019, 9:28:29 PM
    Author     : Dandy Huu
--%>

<%@page import="Models.clsBlog"%>
<%@page import="CSDL.tbBlog"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="Models.clsMonan"%>
<%@page import="CSDL.tbMonan"%>
<%@page import="Models.clsSlide"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbSlide"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  tbSlide sl = new tbSlide();
    Vector<clsSlide> dSlides = sl.LayDSSlides();
    
    tbMonan mn = new tbMonan();
    Vector<clsMonan> dsMonans = mn.LayDSMonAnHot(4);
    
    Vector<clsMonan> dsMonans_new_1 = mn.LayDSMonAnNew("LM001", 3);
    Vector<clsMonan> dsMonans_new_2 = mn.LayDSMonAnNew("LM002", 3);
    Vector<clsMonan> dsMonans_new_3 = mn.LayDSMonAnNew("LM003", 4);
    Vector<clsMonan> dsMonans_new_4 = mn.LayDSMonAnNew("LM004", 3);
    
    tbBlog blog = new tbBlog();
    Vector<clsBlog> dsblog = blog.LayDSBlogLimit(3);
%>
<section class="home-slider owl-carousel">
    <% for (clsSlide item : dSlides) { %>
     
    <div class="slider-item" style="background-image: url(Plugins/images/<%=item.getHinhanh() %>);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                <div class="col-md-8 col-sm-12 text-center ftco-animate">
                    <span class="subheading">Welcome</span>
                    <h1 class="mb-4"><%= item.getTitle() %></h1>
                    <p class="mb-4 mb-md-5"><%= item.getDiscription() %></p>
                    <p><a href="#" class="btn btn-primary p-3 px-xl-4 py-xl-3">Đặt hàng</a> <a href="#" class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">Xem thực đơn</a></p>
                </div>

            </div>
        </div>
    </div>
    <%                  
             }
    %>

</section>

<section class="ftco-intro">
    <div class="container-wrap">
        <div class="wrap d-md-flex align-items-xl-end">
            <div class="info">
                <div class="row no-gutters">
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="icon"><span class="icon-phone"></span></div>
                        <div class="text">
                            <h3>000 (123) 456 7890</h3>
                            <p>Liên hệ với chúng tôi bất cứ khi nào (24/7).</p>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="icon"><span class="icon-my_location"></span></div>
                        <div class="text">
                            <h3>198 Từ Liêm - Hà Nội</h3>
                            <p>	203 Phú Diễn - Phúc Diễn - Từ Liêm - Hà Nội</p>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="icon"><span class="icon-clock-o"></span></div>
                        <div class="text">
                            <h3>Mở cửa từ Thứ hai - Chủ nhật</h3>
                            <p>8:00 - 21:00</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="book p-4">
                <h3>Đặt bàn trước</h3>
                <form action="#" class="appointment-form">
                    <div class="d-md-flex">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Họ">
                        </div>
                        <div class="form-group ml-md-4">
                            <input type="text" class="form-control" placeholder="Tên">
                        </div>
                    </div>
                    <div class="d-md-flex">
                        <div class="form-group">
                            <div class="input-wrap">
                                <div class="icon"><span class="ion-md-calendar"></span></div>
                                <input type="text" class="form-control appointment_date" placeholder="Ngày">
                            </div>
                        </div>
                        <div class="form-group ml-md-4">
                            <div class="input-wrap">
                                <div class="icon"><span class="ion-ios-clock"></span></div>
                                <input type="text" class="form-control appointment_time" placeholder="Thời gian">
                            </div>
                        </div>
                        <div class="form-group ml-md-4">
                            <input type="text" class="form-control" placeholder="Số điện thoại">
                        </div>
                    </div>
                    <div class="d-md-flex">
                        <div class="form-group">
                            <textarea name="" id="" cols="30" rows="2" class="form-control" placeholder="Lưu ý"></textarea>
                        </div>
                        <div class="form-group ml-md-4">
                            <input type="submit" value="Đặt bàn" class="btn btn-white py-3 px-4">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<section class="ftco-about d-md-flex">
    <div class="one-half img" style="background-image: url(Plugins/images/about.jpg);"></div>
    <div class="one-half ftco-animate">
        <div class="overlap">
            <div class="heading-section ftco-animate ">
                <span class="subheading">Khám phá</span>
                <h2 class="mb-4">Câu chuyện của chúng tôi</h2>
            </div>
            <div>
                <p> Trên đường đi, cô gặp một bản sao. Bản sao đã cảnh báo Little Blind Text, rằng nó đến từ nó sẽ được viết lại hàng ngàn lần và mọi thứ còn lại từ nguồn gốc của nó sẽ là từ "và" và Little Blind Text sẽ quay lại và trở về chính nó, Đất nước an toàn. Nhưng không có gì mà bản sao nói có thể thuyết phục được cô và vì thế không mất nhiều thời gian cho đến khi một vài Nhà văn Sao chép quỷ quyệt phục kích cô, khiến cô say sưa với Longe và Parole và kéo cô vào công ty của họ, nơi họ lạm dụng cô vì họ.</p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-services">
    <div class="container">
        <div class="row">
            <div class="col-md-4 ftco-animate">
                <div class="media d-block text-center block-6 services">
                    <div class="icon d-flex justify-content-center align-items-center mb-5">
                        <span class="flaticon-choices"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">DỄ DÀNG ĐẶT HÀNG</h3>
                        <p>Ngay cả Pointing toàn năng cũng không kiểm soát được các văn bản mù, nó là một thứ gần như không chính thống.</p>
                    </div>
                </div>      
            </div>
            <div class="col-md-4 ftco-animate">
                <div class="media d-block text-center block-6 services">
                    <div class="icon d-flex justify-content-center align-items-center mb-5">
                        <span class="flaticon-delivery-truck"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">GIAO HÀNG NHANH NHẤT</h3>
                        <p>Ngay cả Pointing toàn năng cũng không kiểm soát được các văn bản mù, nó là một thứ gần như không chính thống.</p>
                    </div>
                </div>      
            </div>
            <div class="col-md-4 ftco-animate">
                <div class="media d-block text-center block-6 services">
                    <div class="icon d-flex justify-content-center align-items-center mb-5">
                        <span class="flaticon-coffee-bean"></span></div>
                    <div class="media-body">
                        <h3 class="heading">CÀ PHÊ CHẤT LƯỢNG</h3>
                        <p>Ngay cả Pointing toàn năng cũng không kiểm soát được các văn bản mù, nó là một thứ gần như không chính thống.</p>
                    </div>
                </div>    
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6 pr-md-5">
                <div class="heading-section text-md-right ftco-animate">
                    <span class="subheading">Khám phá</span>
                    <h2 class="mb-4">Thực đơn chúng tôi</h2>
                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                    <p><a href="#" class="btn btn-primary btn-outline-primary px-4 py-3">View Full Menu</a></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6">
                        <div class="menu-entry">
                            <a href="Product.jsp" class="img" style="background-image: url(Plugins/images/menu-1.jpg);"></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="menu-entry mt-lg-4">
                            <a href="Product.jsp" class="img" style="background-image: url(Plugins/images/menu-2.jpg);"></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="menu-entry">
                            <a href="Product.jsp" class="img" style="background-image: url(Plugins/images/menu-3.jpg);"></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="menu-entry mt-lg-4">
                            <a href="Product.jsp" class="img" style="background-image: url(Plugins/images/menu-4.jpg);"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-counter ftco-bg-dark img" id="section-counter" style="background-image: url(Plugins/images/bg_2.jpg);" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="row">
                    <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center">
                            <div class="text">
                                <div class="icon"><span class="flaticon-coffee-cup"></span></div>
                                <strong class="number" data-number="100">0</strong>
                                <span>Coffee Branches</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center">
                            <div class="text">
                                <div class="icon"><span class="flaticon-coffee-cup"></span></div>
                                <strong class="number" data-number="85">0</strong>
                                <span>Number of Awards</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center">
                            <div class="text">
                                <div class="icon"><span class="flaticon-coffee-cup"></span></div>
                                <strong class="number" data-number="10567">0</strong>
                                <span>Happy Customer</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center">
                            <div class="text">
                                <div class="icon"><span class="flaticon-coffee-cup"></span></div>
                                <strong class="number" data-number="900">0</strong>
                                <span>Staff</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section ftco-animate text-center">
                <span class="subheading">Khám phá</span>
                <h2 class="mb-4">Cà phê tốt nhất cho bạn</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
        </div>
        <div class="row">
          <% for(clsMonan item : dsMonans_new_3) {%>
            <div class="col-md-3">
                <div class="menu-entry">
                    <a href="Product-detail.jsp?id=<%=item.getMamon()%>" class="img" style="background-image: url(Plugins/images/<%= item.getHinhanh()%>);"></a>
                    <div class="text text-center pt-4">
                        <h3><a href="Product-detail.jsp?id=<%=item.getMamon()%>"><%= item.getTenmon()%></a></h3>
                        <p style="overflow: hidden;max-height: 52px;"><%= item.getMota()%></p>
                        <% DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                           String gia =  formatter.format(item.getDongia())+" VNĐ";
                        %>


                        <p class="price"><span><%=  gia %></span></p>
                        <p><a href="AddtoCart.jsp?id=<%=item.getMamon()%>" class="btn btn-primary btn-outline-primary">Thêm vào giỏ</a></p>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</section>

<section class="ftco-gallery">
    <div class="container-wrap">
        <div class="row no-gutters">
            <div class="col-md-3 ftco-animate">
                <a href="#" class="gallery img d-flex align-items-center" style="background-image: url(Plugins/images/gallery-1.jpg);">
                    <div class="icon mb-4 d-flex align-items-center justify-content-center">
                        <span class="">2007</span>
                    </div>
                </a>
            </div>
            <div class="col-md-3 ftco-animate">
                <a href="#" class="gallery img d-flex align-items-center" style="background-image: url(Plugins/images/gallery-2.jpg);">
                    <div class="icon mb-4 d-flex align-items-center justify-content-center">
                        <span class="">2010</span>
                    </div>
                </a>
            </div>
            <div class="col-md-3 ftco-animate">
                <a href="#" class="gallery img d-flex align-items-center" style="background-image: url(Plugins/images/gallery-3.jpg);">
                    <div class="icon mb-4 d-flex align-items-center justify-content-center">
                        <span class="">2015</span>
                    </div>
                </a>
            </div>
            <div class="col-md-3 ftco-animate">
                <a href="#" class="gallery img d-flex align-items-center" style="background-image: url(Plugins/images/gallery-4.jpg);">
                    <div class="icon mb-4 d-flex align-items-center justify-content-center">
                        <span class="">2019</span>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>

<section class="ftco-menu">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <span class="subheading">Khám phá</span>
                <h2 class="mb-4">Món ăn của chúng tôi</h2>
                <p>Xa xa, đằng sau những ngọn núi chữ, xa các quốc gia Vokalia và Consonantia, có những văn bản mù quáng.</p>
            </div>
        </div>
        <div class="row d-md-flex">
            <div class="col-lg-12 ftco-animate p-md-5">
                <div class="row">
                    <div class="col-md-12 nav-link-wrap mb-5">
                        <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Món chính</a>

                            <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Đồ uống</a>

                            <a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Tráng miệng</a>
                        </div>
                    </div>
                    <div class="col-md-12 d-flex align-items-center">

                        <div class="tab-content ftco-animate" id="v-pills-tabContent">

                            <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">
                                <div class="row">
                                   <% for(clsMonan item: dsMonans_new_1){%>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="Product-detail.jsp?id=<%=item.getMamon()%>" class="menu-img img mb-4" style="background-image: url(Plugins/images/<%= item.getHinhanh()%>);"></a>
                                            <div class="text">
                                                <h3><a href="Product-detail.jsp?id=<%=item.getMamon()%>"><%= item.getTenmon()%></a></h3>
                                                <p style="overflow: hidden;max-height: 52px;"><%= item.getMota()%></p>
                                                 <% DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                                                    String gia =  formatter.format(item.getDongia())+" VNĐ";
                                                 %>
                                                 <p class="price"><span><%= gia%></span></p>
                                                <p><a href="AddtoCart.jsp?id=<%=item.getMamon()%>" class="btn btn-primary btn-outline-primary">Thêm vào giỏ</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <% } %>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab">
                                <div class="row">
                                    <% for(clsMonan item: dsMonans_new_2){%>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="Product-detail.jsp?id=<%=item.getMamon()%>" class="menu-img img mb-4" style="background-image: url(Plugins/images/<%= item.getHinhanh()%>);"></a>
                                            <div class="text">
                                                <h3><a href="Product-detail.jsp?id=<%=item.getMamon()%>"><%= item.getTenmon()%></a></h3>
                                                <p style="overflow: hidden;max-height: 52px;"><%= item.getMota()%></p>
                                                 <% DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                                                    String gia =  formatter.format(item.getDongia())+" VNĐ";
                                                 %>
                                                 <p class="price"><span><%= gia%></span></p>
                                                <p><a href="AddtoCart.jsp?id=<%=item.getMamon()%>" class="btn btn-primary btn-outline-primary">Thêm vào giỏ</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <% } %>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab">
                                <div class="row">
                                    <% for(clsMonan item: dsMonans_new_4){%>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="Product-detail.jsp?id=<%=item.getMamon()%>" class="menu-img img mb-4" style="background-image: url(Plugins/images/<%= item.getHinhanh()%>);"></a>
                                            <div class="text">
                                                <h3><a href="Product-detail.jsp?id=<%=item.getMamon()%>"><%= item.getTenmon()%></a></h3>
                                                <p><%= item.getMota()%></p>
                                                 <% DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                                                    String gia =  formatter.format(item.getDongia())+" VNĐ";
                                                 %>
                                                 <p class="price"><span><%= gia%></span></p>
                                                <p><a href="AddtoCart.jsp?id=<%=item.getMamon()%>" class="btn btn-primary btn-outline-primary">Thêm vào giỏ</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <% } %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section img" id="ftco-testimony" style="background-image: url(Plugins/images/bg_1.jpg);"  data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <span class="subheading">Đánh giá</span>
                <h2 class="mb-4">Khách hàng </h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
        </div>
    </div>
    <div class="container-wrap">
        <div class="row d-flex no-gutters">
            <div class="col-lg align-self-sm-end ftco-animate">
                <div class="testimony">
                    <blockquote>
                        <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small.&rdquo;</p>
                    </blockquote>
                    <div class="author d-flex mt-4">
                        <div class="image mr-3 align-self-center">
                            <img src="Plugins/images/person_4.jpg" alt="">
                        </div>
                        <div class="name align-self-center">Louise Kelly <span class="position">Illustrator Designer</span></div>
                    </div>
                </div>
            </div>
            <div class="col-lg align-self-sm-end">
                <div class="testimony overlay">
                    <blockquote>
                        <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                    </blockquote>
                    <div class="author d-flex mt-4">
                        <div class="image mr-3 align-self-center">
                            <img src="Plugins/images/person_2.jpg" alt="">
                        </div>
                        <div class="name align-self-center">Louise Kelly <span class="position">Illustrator Designer</span></div>
                    </div>
                </div>
            </div>
            <div class="col-lg align-self-sm-end ftco-animate">
                <div class="testimony">
                    <blockquote>
                        <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small  line of blind text by the name. &rdquo;</p>
                    </blockquote>
                    <div class="author d-flex mt-4">
                        <div class="image mr-3 align-self-center">
                            <img src="Plugins/images/person_3.jpg" alt="">
                        </div>
                        <div class="name align-self-center">Louise Kelly <span class="position">Illustrator Designer</span></div>
                    </div>
                </div>
            </div>
            <div class="col-lg align-self-sm-end">
                <div class="testimony overlay">
                    <blockquote>
                        <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however.&rdquo;</p>
                    </blockquote>
                    <div class="author d-flex mt-4">
                        <div class="image mr-3 align-self-center">
                            <img src="Plugins/images/person_2.jpg" alt="">
                        </div>
                        <div class="name align-self-center">Louise Kelly <span class="position">Illustrator Designer</span></div>
                    </div>
                </div>
            </div>
            <div class="col-lg align-self-sm-end ftco-animate">
                <div class="testimony">
                    <blockquote>
                        <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small  line of blind text by the name. &rdquo;</p>
                    </blockquote>
                    <div class="author d-flex mt-4">
                        <div class="image mr-3 align-self-center">
                            <img src="Plugins/images/person_3.jpg" alt="">
                        </div>
                        <div class="name align-self-center">Louise Kelly <span class="position">Illustrator Designer</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section ftco-animate text-center">
                <h2 class="mb-4">Tin tức mới</h2>
                <p>Xa xa, đằng sau những ngọn núi chữ, xa các quốc gia Vokalia và Consonantia, có những văn bản mù quáng.</p>
            </div>
        </div>
        <div class="row d-flex">
            <% for(clsBlog item : dsblog){%>
            <div class="col-md-4 d-flex ftco-animate">
                <div class="blog-entry align-self-stretch">
                    <a href="Blog-detail.jsp?id=<%= item.getMablog() %>" class="block-20" style="background-image: url('Plugins/images/<%= item.getHinhanh() %>');">
                    </a>
                    <div class="text py-4 d-block">
                        <div class="meta">
                            <div><a href="#"><%= item.getThoigian()%></a></div>
                            <div><a href="#"><%= item.getNguoidang()%></a></div>
                            
                        </div>
                        <h3 class="heading mt-2"><a href="Blog-detail.jsp?id=<%= item.getMablog() %>"><%= item.getTieude()%></a></h3>
                        <p  style="overflow: hidden;max-height: 52px;" ><%= item.getNoidung()%></p>
                    </div>
                </div>
            </div>
            <%}%>
           
        </div>
    </div>
</section>


<section class="ftco-appointment">
    <div class="overlay"></div>
    <div class="container-wrap">
        <div class="row no-gutters d-md-flex align-items-center">
            <div class="col-md-6 d-flex align-self-stretch">
                <div id="map"></div>
            </div>
            <div class="col-md-6 appointment ftco-animate">
                <h3 class="mb-3">Đặt bàn trước</h3>
                <form action="#" class="appointment-form">
                    <div class="d-md-flex">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Họ">
                        </div>
                        <div class="form-group ml-md-4">
                            <input type="text" class="form-control" placeholder="Tên">
                        </div>
                    </div>
                    <div class="d-md-flex">
                        <div class="form-group">
                            <div class="input-wrap">
                                <div class="icon"><span class="ion-md-calendar"></span></div>
                                <input type="text" class="form-control appointment_date" placeholder="Ngày">
                            </div>
                        </div>
                        <div class="form-group ml-md-4">
                            <div class="input-wrap">
                                <div class="icon"><span class="ion-ios-clock"></span></div>
                                <input type="text" class="form-control appointment_time" placeholder="Thời gian">
                            </div>
                        </div>
                        <div class="form-group ml-md-4">
                            <input type="text" class="form-control" placeholder="Điện thoại">
                        </div>
                    </div>
                    <div class="d-md-flex">
                        <div class="form-group">
                            <textarea name="" id="" cols="30" rows="2" class="form-control" placeholder="Lưu ý"></textarea>
                        </div>
                        <div class="form-group ml-md-4">
                            <input type="submit" value="Đặt bàn" class="btn btn-primary py-3 px-4">
                        </div>
                    </div>
                </form>
            </div>    			
        </div>
    </div>
</section>
