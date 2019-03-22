<%-- 
    Document   : Product_add
    Created on : Mar 18, 2019, 8:31:23 PM
    Author     : Dandy Huu
--%>

<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbLoaimon"%>
<%@page import="Models.clsLoaimon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    tbLoaimon lm = new tbLoaimon();

    String id = "";
    Vector<clsLoaimon> dslm = lm.LayDSCate();

    


%>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Quản lí sản phẩm
                <small>Thêm sản phẩm</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="Admin.jsp"><i class="fa fa-dashboard"></i> Admin</a></li>
                <li class="active">Thêm sản phẩm</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="box box-warning">
                <!-- /.box-header -->

                <div class="box-body">
                    <form class=" login" action="CRUD/AddProduct.jsp" method="post" data-toggle="validator" enctype="multipart/form-data">

                        <div class="form-group">
                            <label>Mã món ăn</label>
                            <input name="SpID" maxlength="100" required="" data-error="Vui lòng nhập tên" type="text" class="form-control" placeholder="Ví du: MA001, MA004 , MA009, ...">
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <label>Tên món ăn</label>
                            <input name="SpName" maxlength="100" required="" data-error="Vui lòng nhập tên" type="text" class="form-control" placeholder="Tên món ăn">
                            <div class="help-block with-errors"></div>
                        </div>


                        <div class="form-group">
                            <label>Đơn giá</label>
                            <input name="SpGia" maxlength="100" required="" data-error="Vui lòng nhập giá hợp lệ" type="text" class="form-control" placeholder="Đơn giá (VND)">
                            <div class="help-block with-errors"></div>
                        </div>

                        <div class="form-group">
                            <label> Ảnh sản phẩm</label>
                            <input name="SpAnh" maxlength="100" required="" data-error="Bạn chưa chọn file" type="file" class="form-control" placeholder="Hình ảnh">
                            <div class="help-block with-errors"></div>
                        </div>

                        <div class="form-group">
                            <label>Loại món</label>
                            <select name="SpLoaimon" class="form-control">
                                <option>Loại món</option>
                                <% for (clsLoaimon itemlLoaimon : dslm) {%>
                                <option value="<%= itemlLoaimon.getMamon()%>"> <%= itemlLoaimon.getLoaimon()%></option>
                                <% }%>
                            </select>
                            <div class="help-block with-errors"></div>
                        </div>

                        <div class="form-group ">
                            <div class="col-md-6">
                                <label class="">
                                    Sản phẩm Hot :
                                </label>
                                <select name="SpHot" class="form-control">
                                    <option>Hot</option>
                                    <option>Bình thường</option>
                                </select>
                            </div
                            <br>
                            <div class="col-md-6">
                                <label>
                                    Sản phẩm mới : 
                                </label>
                                <select name="SpNew" class="form-control">
                                    <option>New</option>
                                    <option>Bình thường</option>
                                </select>
                            </div>
                        </div>
                        <p></p>
                            <div class="form-group">
                                <label>Mô tả sản phẩm </label>

                                <textarea name="SpMota" class="form-control" placeholder="Mô tả"></textarea>
                            </div>




                            <div class="form-group">
                                <button type="submit" class="btn btn-small btn-sussess full-width "  >Thêm mới
                                </button>
                            </div>


                    </form>
                </div>
                <!-- /.box-body -->
            </div>

        </section>

        <!-- /.content-wrapper -->


        <!-- Control Sidebar -->

        <!-- /.control-sidebar -->
        <!-- Add the sidebar's background. This div must be placed
             immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>
    </div>
    <!-- ./wrapper -->
</html>
