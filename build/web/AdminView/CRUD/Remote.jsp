<%-- 
    Document   : Remote
    Created on : Mar 20, 2019, 10:40:53 AM
    Author     : Dandy Huu
--%>

<%@page import="Models.clsTaikhoan"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbTaikhoan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% 
        request.setCharacterEncoding("UTF-8");
        tbTaikhoan taikhoan = new tbTaikhoan();
        String mesage ="";
        boolean kq = true;
        String id_user = "";
        String role = "";
        if (request.getParameter("id_user") != null && request.getParameter("role") != null) {
                id_user = request.getParameter("id_user");
                role = request.getParameter("role") ;
                if (role.equals("PQ001") != true) {
                      kq = taikhoan.XoaNguoidung(id_user);  
                    }
                else{
                    mesage = "Không thể xóa ADMIN!";
                }
            }
       
        if (kq = false) {
           mesage = "Xóa không thành công!";
            }
        else {
            mesage = "Xóa thành công!";     
            }
        
        session.setAttribute("mesage", mesage);

       response.sendRedirect("../QLKhachhang.jsp");
      
   
    %>
</html>
