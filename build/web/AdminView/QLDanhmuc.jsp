<%-- 
    Document   : QLDanhmuc.jsp
    Created on : Mar 21, 2019, 1:08:51 PM
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
    <%@include file="Categories/Categories_list.jsp" %>
    <%}%>
    <%  if( pag.equals("add") == true) { %>
     <%@include file="Categories/Categories_add.jsp" %>                        
     <%}%>
     <%  if( pag.equals("edit") == true) { %>
     <%@include file="Categories/Categories_edit.jsp" %>                        
     <%}%>

    <%@include file="Layout/Admin_footer.jsp" %>
</html>
