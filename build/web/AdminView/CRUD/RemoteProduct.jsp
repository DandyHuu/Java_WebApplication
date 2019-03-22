<%-- 
    Document   : Remote
    Created on : Mar 20, 2019, 10:40:53 AM
    Author     : Dandy Huu
--%>

<%@page import="CSDL.tbMonan"%>
<%@page import="Models.clsTaikhoan"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbTaikhoan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <% 
       request.setCharacterEncoding("UTF-8");
       tbMonan monan = new tbMonan();
       String message = "";
       
       boolean kq = true;
       String id_p = "";
       if (request.getParameter("id_p") != null) {
               id_p = request.getParameter("id_p");
               
               if (id_p.equals("admin") != true) {
                     kq = monan.XoaMonAn(id_p);  
                   }
           }
       
       if (kq == false) {
           message = "Xóa thành công 1 mục1";
            session.setAttribute("message", message);
             RequestDispatcher rd = request.getRequestDispatcher("../QLKhachhang.jsp");
             rd.include(request, response);  
           }
       else{
           out.println("NOOOOOOOOOOOOOOOOOOOOO");
       }
   
   %>
</html>
