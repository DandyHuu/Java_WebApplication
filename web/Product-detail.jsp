<%-- 
    Document   : Product-detail.jsp
    Created on : Feb 19, 2019, 10:52:13 PM
    Author     : Dandy Huu
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="Models.clsMonan"%>
<%@page import="Models.clsBan"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbMonan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Coffee Blend</title>
        <%@include file="HomeView/CSS.jsp" %> 
    </head>
    <body>
        <%
            tbMonan mn = new tbMonan();
            Vector<clsMonan> monans = new Vector<clsMonan>();
            String id = "";
            if (request.getParameter("id") != null) {
                id = (String) request.getParameter("id");
                monans = mn.LayMonAnByID(id);
            }

            Vector<clsMonan> monan_hot=mn.LayDSMonAnHot(4);
        %>
        <!-- Header -->
        <%@include file="HomeView/Header.jsp" %> 
        <!-- end Header -->
        <section class="home-slider owl-carousel">

            <div class="slider-item" style="background-image: url(Plugins/images/bg_3.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center">

                        <div class="col-md-7 col-sm-12 text-center ftco-animate">
                            <h1 class="mb-3 mt-5 bread">Product Detail</h1>
                            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Trang chủ</a></span> <span>Chi tiết món ăn</span></p>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <% for (clsMonan item : monans) {%>
                    <div class="col-lg-6 mb-5 ftco-animate">
                        <a href="Plugins/images/<%= item.getHinhanh()%>" class="image-popup"><img src="Plugins/images/<%= item.getHinhanh()%>" class="img-fluid" alt="Colorlib Template"></a>
                    </div>
                    <div class="col-lg-6 product-details pl-md-5 ftco-animate">
                        <h3><%= item.getTenmon()%></h3>
                        <% DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                           String gia =  formatter.format(item.getDongia())+" VNĐ";
                        %>


                        <p class="price"><span><%=  gia %></span></p>
                        <p><%= item.getMota()%></p>
                        <p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word "and" and the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their.
                        </p>
                        <div class="row mt-4">
                            <div class="col-md-6">
                                <div class="form-group d-flex">
                                    <div class="select-wrap">
                                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                        <select name="" id="" class="form-control">
                                            <option value="">Small</option>
                                            <option value="">Medium</option>
                                            <option value="">Large</option>
                                            <option value="">Extra Large</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="w-100"></div>
                            <div class="input-group col-md-6 d-flex mb-3">
                                <span class="input-group-btn mr-2">
                                    <button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
                                        <i class="icon-minus"></i>
                                    </button>
                                </span>
                                <input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
                                <span class="input-group-btn ml-2">
                                    <button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                                        <i class="icon-plus"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                        <p><a href="AddtoCart.jsp?id=<%=item.getMamon()%>" class="btn btn-primary py-3 px-5">Thêm vào giỏ</a></p>
                    </div>
                    <% }%>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section ftco-animate text-center">
                <span class="subheading">Khám phá</span>
                <h2 class="mb-4">Sản phẩm Hot</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
        </div>
        <div class="row">
            <% for(clsMonan item : monan_hot){%>
            <div class="col-md-3">
                <div class="menu-entry">
                    <a href="Product-detail.jsp?id=<%=item.getMamon()%>" class="img" style="background-image: url(Plugins/images/<%=item.getHinhanh()%>);"></a>
                    <div class="text text-center pt-4">
                        <h3><a href="Product-detail.jsp?id=<%=item.getMamon()%>"><%=item.getTenmon()%></a></h3>
                        <p style="overflow: hidden;max-height: 52px;" ><%=item.getMota()%></p>
                        <% DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                           String gia =  formatter.format(item.getDongia())+" VNĐ";
                        %>


                        <p class="price"><span><%=  gia %></span></p>
                        <p><a href="AddtoCart.jsp?id=<%=item.getMamon()%>" class="btn btn-primary btn-outline-primary">Thêm vào giỏ</a></p>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</section>
<!-- Footer -->
<%@include file="HomeView/Footer.jsp" %> 
<!-- end Footer -->



<%@include file="HomeView/JS.jsp" %> 

 <script type="text/javascript">
             var element = document.getElementById("sanpham");
             element.classList.add("active");
            document.getElementById("trangchu").classList.remove("active");
         </script>

</body>
</html>