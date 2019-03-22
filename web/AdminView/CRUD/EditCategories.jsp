<%-- 
    Document   : EditCategories
    Created on : Mar 22, 2019, 11:53:02 AM
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
        clsLoaimon loaimon = new clsLoaimon();
        
        loaimon.setMamon(request.getParameter("id"));
        loaimon.setLoaimon(request.getParameter("Danhmuc"));
        lm.updateLoaimon(loaimon);
        
        response.sendRedirect("../QLDanhmuc.jsp");
     %>
</html>
