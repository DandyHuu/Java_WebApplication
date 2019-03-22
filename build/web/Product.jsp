<%-- 
    Document   : Product.jsp
    Created on : Feb 19, 2019, 10:11:27 PM
    Author     : Dandy Huu
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="Models.clsMonan"%>
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
            Vector<clsMonan> dsMonans = mn.LayDSMonAnHot(4);

            Vector<clsMonan> dsMonans_new_1 = mn.LayDSMonAnNew("LM001", 99);
            Vector<clsMonan> dsMonans_new_2 = mn.LayDSMonAnNew("LM002", 99);
            Vector<clsMonan> dsMonans_new_3 = mn.LayDSMonAnNew("LM003", 99);
            Vector<clsMonan> dsMonans_new_4 = mn.LayDSMonAnNew("LM004", 99);
            
            String cate_id = "";
            if (request.getParameter("cate_id") != null) {
                    cate_id = request.getParameter("cate_id");
            }
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
                            <h1 class="mb-3 mt-5 bread">Đặt hàng Online</h1>
                            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Trang chủ</a></span> <span>Sản phẩm</span></p>
                        </div>

                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-menu mb-5 pb-5">
            <div class="container">
                <div class="row d-md-flex">
                    <div class="col-lg-12 ftco-animate p-md-5">
                        <div class="row">
                            <div class="col-md-12 nav-link-wrap mb-5">
                                <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                    <a id="coffee"  class="nav-link active" id="v-pills-0-tab" data-toggle="pill" href="#v-pills-0" role="tab" aria-controls="v-pills-0" aria-selected="true">Coffee</a>

                                    <a id="monchinh" class="nav-link" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="false">Món chính</a>

                                    <a id="douong" class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Đồ uống</a>

                                    <a id="trangmieng" class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Tráng miệng</a>
                                </div>
                            </div>
                            <div class="col-md-12 d-flex align-items-center">

                                <div class="tab-content ftco-animate" id="v-pills-tabContent">

                                    <div class="tab-pane fade show active" id="v-pills-0" role="tabpanel" aria-labelledby="v-pills-0-tab">
                                        <div class="row">
                                           <% for(clsMonan item: dsMonans_new_3){%>
                                            <div class="col-md-3">
                                                <div class="menu-entry">
                                                    <a href="Product-detail.jsp?id=<%= item.getMamon()%>" class="img" style="background-image: url(Plugins/images/<%=item.getHinhanh()%>);"></a>
                                                    <div class="text text-center pt-4">
                                                        <h3><a href="Product-detail.jsp?id=<%= item.getMamon()%>"><%=item.getTenmon()%></a></h3>
                                                        <p style="overflow: hidden;max-height: 52px;" ><%=item.getMota()%></p>
                                                         <% DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                                                            String gia =  formatter.format(item.getDongia())+" VNĐ";
                                                         %>
                                                         <p class="price"><span><%= gia%></span></p>
                                                        <p><a href="AddtoCart.jsp?id=<%=item.getMamon()%>" class="btn btn-primary btn-outline-primary">Thêm vào giỏ</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <%}%>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">
                                        <div class="row">
                                           <% for(clsMonan item: dsMonans_new_1){%>
                                            <div class="col-md-3">
                                                <div class="menu-entry">
                                                    <a href="Product-detail.jsp?id=<%= item.getMamon()%>" class="img" style="background-image: url(Plugins/images/<%=item.getHinhanh()%>);"></a>
                                                    <div class="text text-center pt-4">
                                                        <h3><a href="Product-detail.jsp?id=<%= item.getMamon()%>"><%=item.getTenmon()%></a></h3>
                                                        <p style="overflow: hidden;max-height: 52px;" ><%=item.getMota()%></p>
                                                         <% DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                                                            String gia =  formatter.format(item.getDongia())+" VNĐ";
                                                         %>
                                                         <p class="price"><span><%= gia%></span></p>
                                                        <p><a href="AddtoCart.jsp?id=<%=item.getMamon()%>" class="btn btn-primary btn-outline-primary">Thêm vào giỏ</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <%}%>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab">
                                        <div class="row">
                                           <% for(clsMonan item: dsMonans_new_2){%>
                                            <div class="col-md-3">
                                                <div class="menu-entry">
                                                    <a href="Product-detail.jsp?id=<%= item.getMamon()%>" class="img" style="background-image: url(Plugins/images/<%=item.getHinhanh()%>);"></a>
                                                    <div class="text text-center pt-4">
                                                        <h3><a href="Product-detail.jsp?id=<%= item.getMamon()%>"><%=item.getTenmon()%></a></h3>
                                                        <p style="overflow: hidden;max-height: 52px;" ><%=item.getMota()%></p>
                                                        <% DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                                                            String gia =  formatter.format(item.getDongia())+" VNĐ";
                                                         %>
                                                         <p class="price"><span><%= gia%></span></p>
                                                        <p><a href="AddtoCart.jsp?id=<%=item.getMamon()%>" class="btn btn-primary btn-outline-primary">Thêm vào giỏ</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <%}%>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab">
                                        <div class="row">
                                           <% for(clsMonan item: dsMonans_new_4){%>
                                            <div class="col-md-3">
                                                <div class="menu-entry">
                                                    <a href="Product-detail.jsp?id=<%= item.getMamon()%>" class="img" style="background-image: url(Plugins/images/<%=item.getHinhanh()%>);"></a>
                                                    <div class="text text-center pt-4">
                                                        <h3><a href="Product-detail.jsp?id=<%= item.getMamon()%>"><%=item.getTenmon()%></a></h3>
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer -->
        <%@include file="HomeView/Footer.jsp" %> 
        <!-- end Footer -->
         <input type="hidden" id="cate" value="<%= cate_id %>">


        <%@include file="HomeView/JS.jsp" %> 
         <script type="text/javascript">
             var element = document.getElementById("sanpham");
             element.classList.add("active");
            document.getElementById("trangchu").classList.remove("active");
            
            
            var cate =  document.getElementById("cate").value;
            console.log(cate);
            
            if (cate === "LM001" ) {
                document.getElementById("monchinh").classList.add("active");
                 document.getElementById("v-pills-1").classList.add("active");
                 document.getElementById("v-pills-1").classList.add("show");
                document.getElementById("v-pills-0").classList.remove("active");
                document.getElementById("v-pills-0").classList.remove("show");
                 document.getElementById("coffee").classList.remove("active");
                document.getElementById("monchinh").setAttribute('aria-selected', true);
                document.getElementById("coffee").setAttribute('aria-selected', false);
                }
                
            else if (cate === "LM002") {
                document.getElementById("douong").classList.add("active");
                 document.getElementById("douong").classList.add("show");
                 document.getElementById("coffee").classList.remove("active");
                 document.getElementById("coffee").classList.remove("show");
                  document.getElementById("v-pills-2").classList.add("active");
                 document.getElementById("v-pills-2").classList.add("show");
                document.getElementById("v-pills-0").classList.remove("active");
                document.getElementById("v-pills-0").classList.remove("show");
                document.getElementById("douong").setAttribute('aria-selected', true);
                document.getElementById("coffee").setAttribute('aria-selected', false);
            }
          
            else if (cate ==="LM004") {
                document.getElementById("trangmieng").classList.add("active");
                 document.getElementById("trangmieng").classList.add("show");
                 document.getElementById("coffee").classList.remove("active");
                  document.getElementById("v-pills-3").classList.add("active");
                 document.getElementById("v-pills-3").classList.add("show");
                document.getElementById("v-pills-0").classList.remove("active");
                document.getElementById("v-pills-0").classList.remove("show");
                document.getElementById("trangmieng").setAttribute('aria-selected', true);
                document.getElementById("coffee").setAttribute('aria-selected', false);
            }
            
            
         </script>

    </body>
</html>        