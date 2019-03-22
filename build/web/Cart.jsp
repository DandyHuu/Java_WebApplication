<%-- 
    Document   : Cart.jsp
    Created on : Feb 19, 2019, 10:41:25 PM
    Author     : Dandy Huu
--%>

<%@page import="java.util.Map"%>
<%@page import="Models.Item"%>
<%@page import="Models.clsMonan"%>
<%@page import="CSDL.tbMonan"%>
<%@page import="java.text.DecimalFormat"%>
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
            Vector<clsMonan> monan_hot=mn.LayDSMonAnHot(4);
            
//             MyCart cart2 = (MyCart) session.getAttribute("Cart");
//        if (session.getAttribute("Cart") == null) {
//            cart2 = new MyCart();
//            session.setAttribute("Cart", cart2);
//        }
            
            
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
            	<h1 class="mb-3 mt-5 bread">Giỏ hàng</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Trang chủ</a></span> <span>Giỏ hàng</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>&nbsp;</th>
						        <th>&nbsp;</th>
						        <th>Product</th>
						        <th>Price</th>
						        <th>Quantity</th>
						        <th>Total</th>
						      </tr>
						    </thead>
						    <tbody>
                                                        <% for(Map.Entry<String, Item> list : cart.getCart().entrySet()){ %>
						      <tr class="text-center">
						        <td class="product-remove"><a href="RemoteCart.jsp?id=<%= list.getKey() %>"><span class="icon-close"></span></a></td>
						        
						        <td class="image-prod"><div class="img" style="background-image:url(Plugins/images/<%= list.getValue().getProduct().getHinhanh()  %>);"></div></td>
						        
						        <td class="product-name">
						        	<h3><%= list.getValue().getProduct().getTenmon()%></h3>
                                                                <p><%= list.getValue().getProduct().getMota()%></p>
						        </td>
						         <% DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                                                                    String gia =  formatter.format(list.getValue().getProduct().getDongia())+" VNĐ";
                                                                    String tonggia = formatter.format(list.getValue().getProduct().getDongia() *  list.getValue().getQuantity())+"VND";
                                                                 %>
						        <td class="price"><%= gia %></td>
						        
						        <td class="quantity">
						        	<div class="input-group mb-3">
					             	<input type="text" name="quantity" class="quantity form-control input-number" value="<%= list.getValue().getQuantity()%>" min="1" max="100">
					          	</div>
					          </td>
						        
						        <td class="total"><%= tonggia %></td>
						      </tr><!-- END TR-->
                                                      <% } %>
						     
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    		<div class="row justify-content-end">
                     <%  String monney = "";
                        double tonggia=0;
                         for(Map.Entry<String, Item> list : cart.getCart().entrySet()){ 
                                DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                                tonggia = tonggia + (list.getValue().getProduct().getDongia() *  list.getValue().getQuantity());
                               monney = formatter.format(tonggia)+"VNĐ";
                              }
                              
                     %>
    			<div class="col col-lg-3 col-md-6 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>Cart Totals</h3>
    					<p class="d-flex">
    						<span>Thành tiền</span>
                                                <span><%=  monney%></span>
    					</p>
    					<p class="d-flex">
    						<span>Thuế(VAT)</span>
    						<span>0 VND</span>
    					</p>
    					<p class="d-flex">
    						<span>Giảm giá</span>
    						<span>0 VND</span>
    					</p>
    					<hr>
    					<p class="d-flex total-price">
    						<span>Tổng tiền</span>
    						<span><%=  monney%></span>
    					</p>
    				</div>
    				<p class="text-center"><a href="Thanhtoan.jsp" class="btn btn-primary py-3 px-4">Thanh toán</a></p>
    			</div>
                        
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
                        <p class="" style="overflow: hidden;max-height: 52px;"><%=item.getMota()%></p>
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
    

    </body>
</html>