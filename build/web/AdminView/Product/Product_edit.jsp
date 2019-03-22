<%-- 
    Document   : Product_edit
    Created on : Mar 18, 2019, 8:29:44 PM
    Author     : Dandy Huu
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="Models.clsLoaimon"%>
<%@page import="CSDL.tbLoaimon"%>
<%@page import="Models.clsMonan"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbMonan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Content Wrapper. Contains page content -->
<%
    tbMonan ma = new tbMonan();
    tbLoaimon lm = new tbLoaimon();

    String id = "";
    Vector<clsMonan> dsm = new Vector<clsMonan>();
    Vector<clsLoaimon> dslm = lm.LayDSCate();

    if (request.getParameter("id") != null) {
        id = request.getParameter("id");
        dsm = ma.LayMonAnByID(id);
    }


%>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Quản lí sản phẩm
            <small>Sửa sản phẩm</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="Admin.jsp"><i class="fa fa-dashboard"></i> Admin</a></li>
            <li class="active">Sửa sản phẩm</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="box box-warning">
            <!-- /.box-header -->

            <div class="box-body">
                <form class=" login" action="CRUD/EditProduct.jsp" method="post" data-toggle="validator" enctype="multipart/form-data">
                    <% for (clsMonan item : dsm) {%>
                    <div class="form-group">
                        <label>Mã món ăn</label>
                        <input name="SpID" value="<%= item.getMamon()%>" maxlength="100" required="" data-error="Vui lòng nhập tên" type="text" class="form-control" placeholder="Ví du: MA001, MA004 , MA009, ...">
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="form-group">
                        <label>Tên món ăn</label>
                        <input name="SpName" value="<%= item.getTenmon()%>" maxlength="100" required="" data-error="Vui lòng nhập tên" type="text" class="form-control" placeholder="Tên món ăn">
                        <div class="help-block with-errors"></div>
                    </div>


                    <div class="form-group">
                        <label>Đơn giá (VNĐ)</label>
                        <%  DecimalFormat formatter = new DecimalFormat("###");
                            String gia = formatter.format(item.getDongia());
                        %>
                        <input name="SpGia" value="<%= gia %>" maxlength="100" required="" data-error="Vui lòng nhập giá hợp lệ" type="text" class="form-control" placeholder="Đơn giá (VND)">
                        <div class="help-block with-errors"></div>
                    </div>

                    <div class="form-group">
                        <label> Ảnh sản phẩm</label>
                        <input name="SpAnh" value="<%= "D:/Lap trinh Java/BigLesson_JavaWeb/web/Plugins/images/"+item.getHinhanh()%>" maxlength="100" required="" data-error="Bạn chưa chọn file" type="file" class="form-control" placeholder="<%= item.getHinhanh()%>">
                        <div class="help-block with-errors"></div>
                    </div>

                    <div class="form-group">
                        <label>Loại món</label>
                        <select name="SpLoaimon" class="form-control">
                            <% String maloaimon = item.getMaloai();
                            for (clsLoaimon itemlLoaimon : dslm) {
                                    if (maloaimon.equals(itemlLoaimon.getMamon()) == true) {
                            %>
                            <option value="<%= itemlLoaimon.getMamon()%>"> <%= itemlLoaimon.getLoaimon()%></option>
                            <%  }
                            }%>
                            <option>Loại món</option>
                            <%
                            for (clsLoaimon itemLoaimon2 : dslm) {
                                    if (maloaimon.equals(itemLoaimon2.getMamon()) != true) {
                            %>
                            <option value="<%= itemLoaimon2.getMamon()%>"> <%= itemLoaimon2.getLoaimon()%></option>
                            <%  }
                            }%>
                        </select>
                        <div class="help-block with-errors"></div>
                    </div>

                    <div class="form-group ">
                        <div class="col-md-6">
                            <label class="">
                                Sản phẩm Hot :
                            </label>
                            <% if (item.getSpHot() == 1) { %>
                            <select name="SpHot" class="form-control">
                                <option value="1">Hot</option>
                                <option value="0">Bình thường</option>
                            </select>
                            <% } %>
                            <% if (item.getSpHot() != 1) { %>
                            <select name="SpHot" class="form-control">
                                <option value="0">Bình thường</option>
                                <option value="1">Hot</option>
                            </select>
                            <% } %>
                        </div
                        <br>
                        <div class="col-md-6">
                            <label>
                                Sản phẩm mới : 
                            </label>
                            
                            <% if (item.getSpNew()== 1) { %>
                            <select name="SpNew" class="form-control">
                                <option value="1">New</option>
                                <option value="0">Bình thường</option>
                            </select>
                            <% } %>
                            <% if (item.getSpNew()!= 1) { %>
                            <select name="SpNew" class="form-control">
                                <option value="0">Bình thường</option>
                                <option value="1">New</option>
                            </select>
                            <% } %>
                        </div>
                    </div>
                        <p></p>
                    <div class="form-group">
                        <label>Mô tả sản phẩm </label>

                        <textarea name="SpMota" class="form-control" placeholder="Mô tả"><%= item.getMota()%></textarea>
                    </div>




                    <div class="form-group">
                        <button class="btn btn-small btn-sussess full-width " id="login-form-submit" name="login-form-submit" value="login">Lưu lại
                        </button>
                    </div>

                    <% }%>
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
