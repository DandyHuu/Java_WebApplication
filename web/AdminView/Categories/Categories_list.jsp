<%-- 
    Document   : Product_list
    Created on : Mar 18, 2019, 8:28:20 PM
    Author     : Dandy Huu
--%>

<%@page import="Models.clsLoaimon"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbLoaimon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% tbLoaimon lm = new tbLoaimon();
        Vector<clsLoaimon> dslm = lm.LayDSCate();
    
    %>
     <!-- Content Wrapper. Contains page content -->
   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Quản lí danh mục
            <small>Danh sách danh mục</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="Admin.jsp"><i class="fa fa-dashboard"></i> Admin</a></li>
            <li class="active">Danh sách danh mục</li>
        </ol>
    </section>

    <!-- Main content -->

    <section class="content">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Bảng danh sách danh mục</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody><tr>
                                <th>Mã danh mục</th>
                                <th>Danh mục</th>
                                <th>
                                    <a href="QLDanhmuc.jsp?page=add" class="btn btn-sm btn-success">Thêm</a>
                                </th>
                            </tr>
                            <% for (clsLoaimon item : dslm) {%>
                            <tr>
                                <td style=""><%= item.getMamon()%></td>
                                <td style=""><%= item.getLoaimon()%></td>
                                <td>
                                    <a href="QLDanhmuc.jsp?page=edit&id=<%= item.getMamon() %> "  class="btn btn-sm btn-info">Sửa</a>
                                    <p></p>
                                    <a href="CRUD/remoteCategories.jsp?id_lm=<%= item.getMamon() %> " class="btn btn-sm btn-danger">Xóa</a>
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
