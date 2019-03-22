<%-- 
    Document   : remoteCategories
    Created on : Mar 22, 2019, 11:05:59 AM
    Author     : Dandy Huu
--%>

<%@page import="CSDL.tbLoaimon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% 
       
       request.setCharacterEncoding("UTF-8");
       tbLoaimon lm = new tbLoaimon();
       
       String id= request.getParameter("id_lm");
//       out.print(id);
       
       lm.deleteLoaimon(id);
       
       response.sendRedirect("../QLDanhmuc.jsp");
//   
   %>
</html>
