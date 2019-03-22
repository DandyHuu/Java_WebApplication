<%-- 
    Document   : Product_list
    Created on : Mar 18, 2019, 8:28:20 PM
    Author     : Dandy Huu
--%>

<%@page import="CSDL.tbLoaimon"%>
<%@page import="Models.clsLoaimon"%>
<%@page import="java.util.Vector"%>
<%@page import="Models.clsMonan"%>
<%@page import="CSDL.tbMonan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    tbMonan monan = new tbMonan();
    Vector<clsMonan> dsMA = monan.LayDSMonAn();
    tbLoaimon lm = new tbLoaimon();
//    Vector<clsLoaimon> dslm2 = lm.LayDSCate();
%>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Quản lí sản phẩm
            <small>Danh sách sản phẩm</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="Admin.jsp"><i class="fa fa-dashboard"></i> Admin</a></li>
            <li class="active">Danh sách sản phẩm</li>
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
                                <th>Mã món ăn</th>
                                <th>Tên món</th>
                               
                                <th>Đơn giá</th>
                                 <th>Danh mục</th>
                                <th class="text-center">Ảnh</th>
                                <th>Mô tả</th>
                                <th>
                                    <a href="QLSanpham.jsp?page=add" class="btn btn-sm btn-success">Thêm</a>
                                </th>
                            </tr>
                            <% for (clsMonan item : dsMA) {%>
                            <tr>
                                <td><%= item.getMamon()%></td>
                                <td style=""><%= item.getTenmon()%></td>
                                <td style=""><%= item.getDongia()%></td>
                                 <% String maloaimon = item.getMaloai();
                                    String loaimon = lm.LayCateNameById(maloaimon);
                                  %>
                                <td style=""><%= loaimon %></td>
                                <td style="width: 30%;"><img  class="img-fluid" style="width: 100%;" src="../Plugins/images/<%= item.getHinhanh()%>" alt=""></td>

                                <td style="width: 30%;" class="text-center" ><%= item.getMota()%></td>

                                <td>
                                    <a href="QLSanpham.jsp?page=edit&id=<%= item.getMamon() %> "  class="btn btn-sm btn-info">Sửa</a>
                                    <p></p>
                                    <a href="RemoteProduct.jsp?id=<%= item.getMamon() %> " class="btn btn-sm btn-danger">Xóa</a>
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