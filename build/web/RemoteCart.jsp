<%-- 
    Document   : RemoteCart
    Created on : Mar 20, 2019, 6:40:44 PM
    Author     : Dandy Huu
--%>

<%@page import="Models.MyCart"%>
<%@page import="CSDL.tbMonan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% 
        tbMonan mn = new tbMonan();
        MyCart cart = (MyCart) session.getAttribute("Cart");
        if (session.getAttribute("Cart") == null) {
            cart = new MyCart();
            session.setAttribute("Cart", cart);
        }
        String id_sp = "";
        if (request.getParameter("id") != null) {
                id_sp = request.getParameter("id");
                
                
                cart.XoaHang(id_sp);
                 response.sendRedirect("Cart.jsp");
            }
        
    
    %>
</html>
