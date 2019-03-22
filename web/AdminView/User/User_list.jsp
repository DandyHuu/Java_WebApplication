<%-- 
    Document   : User_list
    Created on : Mar 20, 2019, 1:35:05 AM
    Author     : Dandy Huu
--%>

<%@page import="java.util.Vector"%>
<%@page import="Models.clsTaikhoan"%>
<%@page import="CSDL.tbTaikhoan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% tbTaikhoan tk = new tbTaikhoan();
        Vector<clsTaikhoan> dstk1 = tk.LayDSUsers();
        
        String mesage = "";
        if (session.getAttribute("mesage") != null) {
                mesage = (String)session.getAttribute("mesage");
                session.removeAttribute(mesage);
            }
        else{
            mesage = "Có lỗi khi xóa!";
        }
    
    %>
     <!-- Content Wrapper. Contains page content -->
   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Quản lí Người dùng
            <small>Danh sách Người dùng</small>
            <!--<small><strong class="text-danger"><%= mesage %> </strong></small>-->
        </h1>
        <ol class="breadcrumb">
            <li><a href="Admin.jsp"><i class="fa fa-dashboard"></i> Admin</a></li>
            <li class="active">Danh sách Người dùng</li>
            
        </ol>
    </section>

    <!-- Main content -->

    <section class="content">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Bảng danh sách Người dùng</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody><tr>
                                <th>Mã Người dùng</th>
                                <th>Tên người dùng</th>
                                <th>Tài khoản</th>
                                 <th>Số điện thoại</th>
                                 <th>Phân quyền</th>
                                <th>
                                   Tác vụ
                                </th>
                            </tr>
                            <% int index = 0;
                                for (clsTaikhoan item : dstk1) { 
                                    index++; 
                            %>
                            <tr>
                                <td style=""><%= index %></td>
                                <td style=""><%= item.getName()%></td>
                                <td style=""><%= item.getUser()%></td>
                                <td style=""><%= item.getPhone()%></td>
                                 <% 
                                String pq = "Người dùng";
                                if (item.getMaphanquyen().equals("PQ001") == true) {
                                        pq = "Quản lí";
                                    }
                                %>
                                <td style=""><%= pq %></td>
                                <td>
                                    <a href="CRUD/Remote.jsp?id_user=<%= item.getUser()%>&role=<%= item.getMaphanquyen()%>" class="btn btn-sm btn-danger">Xóa</a>
                                </td>
                            </tr>
                            <%}%>
                        </tbody></table>
                </div>
                <div class="text-center col-md-12">
                    <ul class="pagination custom-pagination">
<!--                        <?= $list_page ?>-->
                    </ul>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
    </section>     
</div>
</html>

