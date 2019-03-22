<%-- 
    Document   : Menu.jsp
    Created on : Feb 19, 2019, 10:54:25 PM
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
       <%@include file="HomeView/CSS.jsp" %> 
    </head>
    <body>
        <%
            tbMonan mn = new tbMonan();
            Vector<clsMonan> dsMonans = mn.LayDSMonAnHot(4);

            Vector<clsMonan> dsMonans_new_1 = mn.LayDSMonAnNew("LM001", 99);
            Vector<clsMonan> dsMonans_new_2 = mn.LayDSMonAnNew("LM002", 99);
            Vector<clsMonan> dsMonans_new_4 = mn.LayDSMonAnNew("LM004", 99);
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
            	<h1 class="mb-3 mt-5 bread">Thực đơn của chúng tôi</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Trang chủ</a></span> <span>Thực đơn</span></p>
            </div>

          </div>
        </div>
      </div>
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
	    						<p>A small river named Duden flows by their place and supplies.</p>
	    					</div>
	    				</div>
	    				<div class="col-md-4 d-flex ftco-animate">
	    					<div class="icon"><span class="icon-my_location"></span></div>
	    					<div class="text">
	    						<h3>198 Phúc Diễn - Phú Diễn</h3>
	    						<p>	203 Phúc Diễn - Phú Diễn - Từ Liêm - Hà Nội</p>
	    					</div>
	    				</div>
	    				<div class="col-md-4 d-flex ftco-animate">
	    					<div class="icon"><span class="icon-clock-o"></span></div>
	    					<div class="text">
	    						<h3>Mở cửa từ Thứ Hai - Chủ Nhật</h3>
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

    <section class="ftco-section">
    	<div class="container">
        <div class="row">
        	<div class="col-md-6 mb-5 pb-3">
        		<h3 class="mb-5 heading-pricing ftco-animate">Starter</h3>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/dish-1.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Cornish - Mackerel</span></h3>
	        				<span class="price">$20.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
        			</div>
        		</div>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/dish-2.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Roasted Steak</span></h3>
	        				<span class="price">$29.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/dish-3.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Seasonal Soup</span></h3>
	        				<span class="price">$20.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/dish-4.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Chicken Curry</span></h3>
	        				<span class="price">$20.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
                        <button class="btn btn-info  ftco-animate">Xem tất cả</button>
        	</div>

        	<div class="col-md-6 mb-5 pb-3">
        		<h3 class="mb-5 heading-pricing ftco-animate">Main Dish</h3>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/dish-5.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Sea Trout</span></h3>
	        				<span class="price">$49.91</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/dish-6.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Roasted Beef</span></h3>
	        				<span class="price">$20.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/dish-7.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Butter Fried Chicken</span></h3>
	        				<span class="price">$20.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/dish-8.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Chiken Filet</span></h3>
	        				<span class="price">$20.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
                        <button class="btn btn-info ftco-animate">Xem tất cả</button>
        	</div>

        	<div class="col-md-6">
        		<h3 class="mb-5 heading-pricing ftco-animate">Desserts</h3>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/dessert-1.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Cornish - Mackerel</span></h3>
	        				<span class="price">$20.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
        			</div>
        		</div>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/dessert-2.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Roasted Steak</span></h3>
	        				<span class="price">$29.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/dessert-3.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Seasonal Soup</span></h3>
	        				<span class="price">$20.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/dessert-4.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Chicken Curry</span></h3>
	        				<span class="price">$20.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
                        <button class="btn btn-info ftco-animate">Xem tất cả</button>
        	</div>

        	<div class="col-md-6">
        		<h3 class="mb-5 heading-pricing ftco-animate">Drinks</h3>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/drink-5.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Sea Trout</span></h3>
	        				<span class="price">$49.91</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/drink-6.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Roasted Beef</span></h3>
	        				<span class="price">$20.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/drink-7.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Butter Fried Chicken</span></h3>
	        				<span class="price">$20.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
        		<div class="pricing-entry d-flex ftco-animate">
        			<div class="img" style="background-image: url(Plugins/images/drink-8.jpg);"></div>
        			<div class="desc pl-3">
	        			<div class="d-flex text align-items-center">
	        				<h3><span>Chiken Filet</span></h3>
	        				<span class="price">$20.00</span>
	        			</div>
	        			<div class="d-block">
	        				<p>A small river named Duden flows by their place and supplies</p>
	        			</div>
	        		</div>
        		</div>
                        <button class="btn btn-info ftco-animate">Xem tất cả</button>
        	</div>
        </div>
    	</div>
    </section>

    <section class="ftco-menu mb-5 pb-5">
    	<div class="container">
    		<div class="row justify-content-center mb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">Khám phá</span>
            <h2 class="mb-4">Món ăn của chúng tôi</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
          </div>
        </div>
    		<div class="row d-md-flex">
	    		<div class="col-lg-12 ftco-animate p-md-5">
		    		<div class="row">
		          <div class="col-md-12 nav-link-wrap mb-5">
		            <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		              <a class="nav-link active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Main Dish</a>

		              <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Drinks</a>

		              <a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Desserts</a>
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

		              <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab">
		                <div class="row">
		              		 <% for(clsMonan item: dsMonans_new_2){%>
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
        
  <!-- Footer -->
        <%@include file="HomeView/Footer.jsp" %> 
        <!-- end Footer -->



        
         <%@include file="HomeView/JS.jsp" %> 
         <script type="text/javascript">
             var element = document.getElementById("menu");
             element.classList.add("active");
            document.getElementById("trangchu").classList.remove("active");
         </script>
    </body>
</html>
