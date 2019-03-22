<%-- 
    Document   : AddtoCart
    Created on : Mar 20, 2019, 12:40:04 PM
    Author     : Dandy Huu
--%>

<%@page import="Models.clsMonan"%>
<%@page import="Models.Item"%>
<%@page import="CSDL.tbMonan"%>
<%@page import="java.util.Vector"%>
<%@page import="Models.MyCart"%>
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
                
                clsMonan dsproduct = mn.LayMonAnByID_cls(id_sp);
                Item  item = new Item( dsproduct, 1);
                cart.ThemHang(id_sp , item);
                 response.sendRedirect("index.jsp");
            }
        
    
    %>
</html>
