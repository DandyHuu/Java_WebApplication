<%-- 
    Document   : Logout
    Created on : Mar 20, 2019, 4:21:27 PM
    Author     : Dandy Huu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%  
//         HttpSession session = request.getSession();
         session.removeAttribute("User");
            
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
        
    %>
</html>
