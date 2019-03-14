<%-- 
    Document   : Blog.jsp
    Created on : Feb 19, 2019, 10:40:58 PM
    Author     : Dandy Huu
--%>

<%@page import="Models.clsBlog"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbBlog"%>
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
           tbBlog blog = new tbBlog();
           Vector<clsBlog> dsblog = blog.LayDSBlog();
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
            	<h1 class="mb-3 mt-5 bread">Tin tức</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Trang chủ</a></span> <span>Tin tức</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
      <div class="container">
        <div class="row d-flex">
          <%for(clsBlog item :dsblog){%>
          <div class="col-md-4 d-flex ftco-animate">
          	<div class="blog-entry align-self-stretch">
              <a href="Blog-detail.jsp?id=<%=item.getMablog()%>" class="block-20" style="background-image: url('Plugins/images/<%= item.getHinhanh()%>');">
              </a>
              <div class="text py-4 d-block">
              	<div class="meta">
                  <div><a href="#"><%=item.getThoigian()%></a></div>
                  <div><a href="#"><%=item.getNguoidang()%></a></div>
                  
                </div>
                <h3 class="heading mt-2"><a href="Blog-detail.jsp?id=<%=item.getMablog()%>"><%= item.getTieude() %></a></h3>
                <p class="overflow-hidden" style="max-height : 20px;"><%= item.getNoidung() %></p>
              </div>
            </div>
          </div>
          <%}%>
        </div>
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
<!-- Footer -->
        <%@include file="HomeView/Footer.jsp" %> 
        <!-- end Footer -->



      <%@include file="HomeView/JS.jsp" %> 
    <script type="text/javascript">
             var element = document.getElementById("tintuc");
             element.classList.add("active");
            document.getElementById("trangchu").classList.remove("active");
         </script>

    </body>
</html>