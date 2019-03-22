<%-- 
    Document   : Product_add
    Created on : Mar 18, 2019, 8:31:23 PM
    Author     : Dandy Huu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                    <form class=" login" action="CRUD/addCategories.jsp" method="post" data-toggle="validator" >

                        <div class="form-group">
                            <label>Mã danh mục</label>
                            <input name="Madanhmuc" maxlength="100" required="" data-error="Vui lòng nhập tên" type="text" class="form-control" placeholder="Ví du: ML001, ML004 , ML009, ...">
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <label>Tên danh mục</label>
                            <input name="tenDanhmuc" maxlength="100" required="" data-error="Vui lòng nhập tên" type="text" class="form-control" placeholder="Tên danh mục">
                            <div class="help-block with-errors"></div>
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
