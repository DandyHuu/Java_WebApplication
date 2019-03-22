<%-- 
    Document   : QLSanpham
    Created on : Mar 18, 2019, 5:41:18 PM
    Author     : Dandy Huu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%@include file="Layout/Admin_header.jsp" %>
    
    <% 
        String pag = "list";
        if (request.getParameter("page") != null) {
                pag = request.getParameter("page");
            }
        if ( pag.equals("list") == true){ 
    %>
    <%@include file="Product/Product_list.jsp" %>
    <%}%>
    <%  if( pag.equals("add") == true) { %>
     <%@include file="Product/Product_add.jsp" %>                        
     <%}%>
     <%  if( pag.equals("edit") == true) { %>
     <%@include file="Product/Product_edit.jsp" %>                        
     <%}%>

    <%@include file="Layout/Admin_footer.jsp" %>

</html>