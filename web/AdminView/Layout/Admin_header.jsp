<%-- 
    Document   : Admin_header
    Created on : Mar 18, 2019, 8:21:10 PM
    Author     : Dandy Huu
--%>

<%@page import="Models.clsTaikhoan"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AdminLTE 2 | Dashboard</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="../Plugins/Teamplace_Admin/plugins/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../Plugins/Teamplace_Admin/plugins/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../Plugins/Teamplace_Admin/plugins/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../Plugins/Teamplace_Admin/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
              page. However, you can choose any other skin. Make sure you
              apply the skin class to the body tag so the changes take effect. -->
        <link rel="stylesheet" href="../Plugins/Teamplace_Admin/css/skins/skin-blue.min.css">
        <link rel="stylesheet" href="../Plugins/Teamplace_Admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <!-- REQUIRED JS SCRIPTS -->

        <!-- jQuery 3 -->
        <script src="../Plugins/Teamplace_Admin/plugins/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="../Plugins/Teamplace_Admin/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- AdminLTE App -->
        <script src="../Plugins/Teamplace_Admin/js/adminlte.min.js"></script>
        <script src="../Plugins/Teamplace_Admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <script src="../Plugins/Teamplace_Admin/plugins/jquery-validate/jquery.validate.min.js"></script>
        <script src="../Plugins/Teamplace_Admin/plugins/jquery-validate/additional-methods.min.js"></script>
        
        <script src="../Plugins/assets/vendor/bootstrap-validator/validator.min.js"></script>
        <!-- Optionally, you can add Slimscroll and FastClick plugins.
        
             Both of these plugins are recommended to enhance the
             user experience. -->
    </head>
</head>
<body class="hold-transition skin-blue sidebar-mini">
    <%
       

        Vector<clsTaikhoan> user = new Vector<clsTaikhoan>();
        String name = "Admin: ";
        if (session.getAttribute("User") != null) {
            user = (Vector<clsTaikhoan>) session.getAttribute("User");
            for (clsTaikhoan item : user) {
                name += item.getName();
            }
        }
    %>
    <div class="wrapper">

        <header class="main-header">
            <!-- Logo -->
            <a href="index2.html" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>A</b>LT</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>Admin</b>LTE</span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>

                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class=" messages-menu">
                            <a href="../index.jsp" class="" >
                                Trang sản phẩm
                            </a>

                        </li>

                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="../Plugins/images/user/user2-160x160.jpg" class="user-image" alt="User Image">
                                <span class="hidden-xs"><%= name%></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="../Plugins/images/user/user2-160x160.jpg" class="img-circle" alt="User Image">

                                    <p>
                                        <%= name%> - Web Developer
                                        <small>Member since Nov. 2012</small>
                                    </p>
                                </li>
                                <!-- Menu Body -->
                                <li class="user-body">
                                    <div class="row">
                                        <div class="col-xs-4 text-center">
                                            <a href="#">Followers</a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#">Sales</a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#">Friends</a>
                                        </div>
                                    </div>
                                    <!-- /.row -->
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <!-- Control Sidebar Toggle Button -->
                        <li>
                            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="../Plugins/images/user/user2-160x160.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p><%= name%></p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
                <!-- search form -->
                <form action="#" method="get" class="sidebar-form">
                    <div class="input-group">
                        <input type="text" name="q" class="form-control" placeholder="Search...">
                        <span class="input-group-btn">
                            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                </form>
                <!-- /.search form -->
                <!-- Sidebar Menu -->
                <ul class="sidebar-menu" data-widget="tree">
                    <li class="header">Chức năng</li>
                    <!-- Optionally, you can add icons to the links -->
                    <li class="">
                        <a href="Admin.jsp"><i class="fa fa-link"></i> <span>Trang chủ Admin</span>

                        </a>
                    </li>
                    <li class="treeview">
                        <a href="#"><i class="fa fa-link"></i> <span>Quản lí danh mục</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="QLDanhmuc.jsp?page=list">Danh sách danh mục</a></li>
                            <li><a href="QLDanhmuc.jsp?page=add">Thêm danh mục</a></li>
                        </ul>
                    </li>

                    <li class="treeview">
                        <a href="#"><i class="fa fa-link"></i> <span>Quản lí sản phẩm</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="QLSanpham.jsp?page=list">Danh sách sản phẩm</a></li>
                            <li><a href="QLSanpham.jsp?page=add">Thêm sản phẩm</a></li>
                        </ul> 
                    </li>
                    <li class="">
                        <a href="order-list.jsp"><i class="fa fa-link"></i> <span>Quản lí đơn hàng</span>

                        </a>
                    </li>
                    <li class="">
                        <a href="QLKhachhang.jsp?page=list"><i class="fa fa-link"></i> <span>Người dùng/Khách hàng</span>
                        </a>
                    </li>
                </ul>
                <!-- /.sidebar-menu -->
            </section>
            <!-- /.sidebar -->
        </aside>

