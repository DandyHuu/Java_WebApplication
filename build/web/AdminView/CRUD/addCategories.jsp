<%-- 
    Document   : addCategories
    Created on : Mar 22, 2019, 11:04:13 AM
    Author     : Dandy Huu
--%>

<%@page import="Models.clsLoaimon"%>
<%@page import="CSDL.tbLoaimon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <%
        tbLoaimon lm = new tbLoaimon();
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String Madanhmuc = request.getParameter("Madanhmuc");
        String tenDanhmuc = request.getParameter("tenDanhmuc");
        
        
        clsLoaimon c = new clsLoaimon();
        c.setMamon(Madanhmuc);
        c.setLoaimon(tenDanhmuc);
        
        lm.insertMaLoai(new clsLoaimon(Madanhmuc, tenDanhmuc));
        response.sendRedirect("../QLDanhmuc.jsp");
    
        %>
</html>
