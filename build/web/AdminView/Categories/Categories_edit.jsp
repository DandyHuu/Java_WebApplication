<%-- 
    Document   : Product_edit
    Created on : Mar 18, 2019, 8:29:44 PM
    Author     : Dandy Huu
--%>

<%@page import="Models.clsLoaimon"%>
<%@page import="java.util.Vector"%>
<%@page import="CSDL.tbLoaimon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    tbLoaimon lm = new tbLoaimon();

    String id = "";
    Vector<clsLoaimon> dslm1 = lm.LayDSCate();

    if (request.getParameter("id") != null) {
        id = request.getParameter("id");
        dslm1 = lm.LayDSCateById(id);
    }


%>
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Quản lí danh mục
                <small>Thêm danh mục</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="Admin.jsp"><i class="fa fa-dashboard"></i> Admin</a></li>
                <li class="active">Thêm danh mục</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="box box-warning">
                <!-- /.box-header -->

                <div class="box-body">
                    <form class=" login" action="CRUD/EditCategories.jsp" method="post" data-toggle="validator" >
                         <% for (clsLoaimon item : dslm1) {%>
                        <div class="form-group">
                            <!--<label>Mã danh mục</label>-->
                            <input value="<%= item.getMamon() %>" name="id" maxlength="100" required="" data-error="Vui lòng nhập ..." type="hidden" class="form-control" placeholder="Ví du: ML001, ML004 , ML009, ...">
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <label>Tên danh mục</label>
                            <input value="<%= item.getLoaimon()%>" name="Danhmuc" maxlength="100" required="" data-error="Vui lòng nhập ..." type="text" class="form-control" placeholder="Tên danh mục">
                            <div class="help-block with-errors"></div>
                        </div>

                        

                            <div class="form-group">
                                <button type="submit" class="btn btn-small btn-sussess full-width "  >Lưu lại
                                </button>
                            </div>

                         <% } %>
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
