<%-- 
    Document   : Header
    Created on : Mar 4, 2019, 10:03:08 PM
    Author     : Dandy Huu
--%>

<%@page import="Models.MyCart"%>
<%@page import="Models.clsTaikhoan"%>
<%@page import="Models.clsLoaimon"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbLoaimon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    tbLoaimon lm = new tbLoaimon();
    Vector<clsLoaimon> dscate = lm.LayDSCate();
    
    MyCart cart = (MyCart) session.getAttribute("Cart");
        if (session.getAttribute("Cart") == null) {
            cart = new MyCart();
            session.setAttribute("Cart", cart);
        }
        
%>
   <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Coffee<small>Blend</small></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li id="trangchu" class="nav-item active"><a href="index.jsp" class="nav-link">Trang chủ</a></li>
                        <li id="menu" class="nav-item"><a href="Menu.jsp" class="nav-link">Thực đơn</a></li>
                       
                        <li id="sanpham"  class="nav-item dropdown ">
                            <a class="nav-link dropdown-toggle" href="Product.jsp" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sản phẩm</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown04">
                               <% for(clsLoaimon item : dscate){ %>
                                    <a class="dropdown-item" href="Product.jsp?cate_id=<%= item.getMamon() %>"><%= item.getLoaimon() %></a>
                                    
                                <%}%>
                            </div>
                          </li>   
                        <!--<li class="nav-item"><a href="services.html" class="nav-link">Dịch vụ</a></li>-->
                        <li id="tintuc" class="nav-item"><a href="Blog.jsp" class="nav-link">Tin tức</a></li>

                        <li id="lienhe" class="nav-item"><a href="Contact.jsp" class="nav-link">Liên hệ</a></li>
                        <li id="vechungtoi" class="nav-item"><a href="About.jsp" class="nav-link">Giới thiệu</a></li>
                        <% 
                            Vector<clsTaikhoan> user = new Vector<clsTaikhoan>();
                            String name = "";
                            if (session.getAttribute("User") != null) {
                                user = (Vector<clsTaikhoan>) session.getAttribute("User");
                                for(clsTaikhoan item : user){
                                    name = item.getName();
                                }
                            }
                            
                            
                            if(user.size()>0){
                         %>
                        <li id="Dangnhap" class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Chào : <small> <%= name %> </small></a>
                            <div class="dropdown-menu" aria-labelledby="dropdown04">
                               <a class="dropdown-item" href="Logout.jsp">Đăng xuất</a>
                               <a class="dropdown-item" href="Logout.jsp">Chi tiết</a>
                            </div>
                        </li>
                        <% } else{ %>
                             <li id="Dangnhap" class="nav-item"><a href="Login.jsp" class="nav-link">Đăng nhập</a></li>
                        <% } %>
                        <li id="" class="nav-item cart"><a href="Cart.jsp" class="nav-link"><span class="icon icon-shopping_cart"></span><span class="bag d-flex justify-content-center align-items-center"><small><%= cart.CountHang() %></small></span></a></li>
                        
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->
