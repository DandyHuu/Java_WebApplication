package org.apache.jsp.AdminView;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Models.clsTaikhoan;
import java.util.Vector;
import java.util.Vector;
import Models.clsMonan;
import CSDL.tbMonan;
import java.util.Vector;
import CSDL.tbLoaimon;
import Models.clsLoaimon;
import java.text.DecimalFormat;
import Models.clsLoaimon;
import CSDL.tbLoaimon;
import Models.clsMonan;
import java.util.Vector;
import CSDL.tbMonan;

public final class QLSanpham_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(5);
    _jspx_dependants.add("/AdminView/Layout/Admin_header.jsp");
    _jspx_dependants.add("/AdminView/Product/Product_list.jsp");
    _jspx_dependants.add("/AdminView/Product/Product_add.jsp");
    _jspx_dependants.add("/AdminView/Product/Product_edit.jsp");
    _jspx_dependants.add("/AdminView/Layout/Admin_footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <title>AdminLTE 2 | Dashboard</title>\n");
      out.write("        <!-- Tell the browser to be responsive to screen width -->\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n");
      out.write("        <!-- Bootstrap 3.3.7 -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Plugins/Teamplace_Admin/plugins/bootstrap/dist/css/bootstrap.min.css\">\n");
      out.write("        <!-- Font Awesome -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Plugins/Teamplace_Admin/plugins/font-awesome/css/font-awesome.min.css\">\n");
      out.write("        <!-- Ionicons -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Plugins/Teamplace_Admin/plugins/Ionicons/css/ionicons.min.css\">\n");
      out.write("        <!-- Theme style -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Plugins/Teamplace_Admin/css/AdminLTE.min.css\">\n");
      out.write("        <!-- AdminLTE Skins. We have chosen the skin-blue for this starter\n");
      out.write("              page. However, you can choose any other skin. Make sure you\n");
      out.write("              apply the skin class to the body tag so the changes take effect. -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Plugins/Teamplace_Admin/css/skins/skin-blue.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Plugins/Teamplace_Admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css\">\n");
      out.write("\n");
      out.write("        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("        <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("        <!-- Google Font -->\n");
      out.write("        <link rel=\"stylesheet\"\n");
      out.write("              href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic\">\n");
      out.write("        <!-- REQUIRED JS SCRIPTS -->\n");
      out.write("\n");
      out.write("        <!-- jQuery 3 -->\n");
      out.write("        <script src=\"../Plugins/Teamplace_Admin/plugins/jquery/dist/jquery.min.js\"></script>\n");
      out.write("        <!-- Bootstrap 3.3.7 -->\n");
      out.write("        <script src=\"../Plugins/Teamplace_Admin/plugins/bootstrap/dist/js/bootstrap.min.js\"></script>\n");
      out.write("        <!-- AdminLTE App -->\n");
      out.write("        <script src=\"../Plugins/Teamplace_Admin/js/adminlte.min.js\"></script>\n");
      out.write("        <script src=\"../Plugins/Teamplace_Admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js\"></script>\n");
      out.write("        <script src=\"../Plugins/Teamplace_Admin/plugins/jquery-validate/jquery.validate.min.js\"></script>\n");
      out.write("        <script src=\"../Plugins/Teamplace_Admin/plugins/jquery-validate/additional-methods.min.js\"></script>\n");
      out.write("        \n");
      out.write("        <script src=\"../Plugins/assets/vendor/bootstrap-validator/validator.min.js\"></script>\n");
      out.write("        <!-- Optionally, you can add Slimscroll and FastClick plugins.\n");
      out.write("        \n");
      out.write("             Both of these plugins are recommended to enhance the\n");
      out.write("             user experience. -->\n");
      out.write("    </head>\n");
      out.write("</head>\n");
      out.write("<body class=\"hold-transition skin-blue sidebar-mini\">\n");
      out.write("    ");

       

        Vector<clsTaikhoan> user = new Vector<clsTaikhoan>();
        String name = "Admin: ";
        if (session.getAttribute("User") != null) {
            user = (Vector<clsTaikhoan>) session.getAttribute("User");
            for (clsTaikhoan item : user) {
                name += item.getName();
            }
        }
    
      out.write("\n");
      out.write("    <div class=\"wrapper\">\n");
      out.write("\n");
      out.write("        <header class=\"main-header\">\n");
      out.write("            <!-- Logo -->\n");
      out.write("            <a href=\"index2.html\" class=\"logo\">\n");
      out.write("                <!-- mini logo for sidebar mini 50x50 pixels -->\n");
      out.write("                <span class=\"logo-mini\"><b>A</b>LT</span>\n");
      out.write("                <!-- logo for regular state and mobile devices -->\n");
      out.write("                <span class=\"logo-lg\"><b>Admin</b>LTE</span>\n");
      out.write("            </a>\n");
      out.write("            <!-- Header Navbar: style can be found in header.less -->\n");
      out.write("            <nav class=\"navbar navbar-static-top\">\n");
      out.write("                <!-- Sidebar toggle button-->\n");
      out.write("                <a href=\"#\" class=\"sidebar-toggle\" data-toggle=\"push-menu\" role=\"button\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                </a>\n");
      out.write("\n");
      out.write("                <div class=\"navbar-custom-menu\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <!-- Messages: style can be found in dropdown.less-->\n");
      out.write("                        <li class=\" messages-menu\">\n");
      out.write("                            <a href=\"../index.jsp\" class=\"\" >\n");
      out.write("                                Trang sản phẩm\n");
      out.write("                            </a>\n");
      out.write("\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <!-- User Account: style can be found in dropdown.less -->\n");
      out.write("                        <li class=\"dropdown user user-menu\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">\n");
      out.write("                                <img src=\"../Plugins/images/user/user2-160x160.jpg\" class=\"user-image\" alt=\"User Image\">\n");
      out.write("                                <span class=\"hidden-xs\">");
      out.print( name);
      out.write("</span>\n");
      out.write("                            </a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <!-- User image -->\n");
      out.write("                                <li class=\"user-header\">\n");
      out.write("                                    <img src=\"../Plugins/images/user/user2-160x160.jpg\" class=\"img-circle\" alt=\"User Image\">\n");
      out.write("\n");
      out.write("                                    <p>\n");
      out.write("                                        ");
      out.print( name);
      out.write(" - Web Developer\n");
      out.write("                                        <small>Member since Nov. 2012</small>\n");
      out.write("                                    </p>\n");
      out.write("                                </li>\n");
      out.write("                                <!-- Menu Body -->\n");
      out.write("                                <li class=\"user-body\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-xs-4 text-center\">\n");
      out.write("                                            <a href=\"#\">Followers</a>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-xs-4 text-center\">\n");
      out.write("                                            <a href=\"#\">Sales</a>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-xs-4 text-center\">\n");
      out.write("                                            <a href=\"#\">Friends</a>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- /.row -->\n");
      out.write("                                </li>\n");
      out.write("                                <!-- Menu Footer-->\n");
      out.write("                                <li class=\"user-footer\">\n");
      out.write("                                    <div class=\"pull-left\">\n");
      out.write("                                        <a href=\"#\" class=\"btn btn-default btn-flat\">Profile</a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"pull-right\">\n");
      out.write("                                        <a href=\"#\" class=\"btn btn-default btn-flat\">Sign out</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <!-- Control Sidebar Toggle Button -->\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"#\" data-toggle=\"control-sidebar\"><i class=\"fa fa-gears\"></i></a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <!-- Left side column. contains the logo and sidebar -->\n");
      out.write("        <aside class=\"main-sidebar\">\n");
      out.write("            <!-- sidebar: style can be found in sidebar.less -->\n");
      out.write("            <section class=\"sidebar\">\n");
      out.write("                <!-- Sidebar user panel -->\n");
      out.write("                <div class=\"user-panel\">\n");
      out.write("                    <div class=\"pull-left image\">\n");
      out.write("                        <img src=\"../Plugins/images/user/user2-160x160.jpg\" class=\"img-circle\" alt=\"User Image\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"pull-left info\">\n");
      out.write("                        <p>");
      out.print( name);
      out.write("</p>\n");
      out.write("                        <a href=\"#\"><i class=\"fa fa-circle text-success\"></i> Online</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- search form -->\n");
      out.write("                <form action=\"#\" method=\"get\" class=\"sidebar-form\">\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <input type=\"text\" name=\"q\" class=\"form-control\" placeholder=\"Search...\">\n");
      out.write("                        <span class=\"input-group-btn\">\n");
      out.write("                            <button type=\"submit\" name=\"search\" id=\"search-btn\" class=\"btn btn-flat\"><i class=\"fa fa-search\"></i>\n");
      out.write("                            </button>\n");
      out.write("                        </span>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                <!-- /.search form -->\n");
      out.write("                <!-- Sidebar Menu -->\n");
      out.write("                <ul class=\"sidebar-menu\" data-widget=\"tree\">\n");
      out.write("                    <li class=\"header\">Chức năng</li>\n");
      out.write("                    <!-- Optionally, you can add icons to the links -->\n");
      out.write("                    <li class=\"\">\n");
      out.write("                        <a href=\"Admin.jsp\"><i class=\"fa fa-link\"></i> <span>Trang chủ Admin</span>\n");
      out.write("\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"treeview\">\n");
      out.write("                        <a href=\"#\"><i class=\"fa fa-link\"></i> <span>Quản lí danh mục</span>\n");
      out.write("                            <span class=\"pull-right-container\">\n");
      out.write("                                <i class=\"fa fa-angle-left pull-right\"></i>\n");
      out.write("                            </span>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"treeview-menu\">\n");
      out.write("                            <li><a href=\"QLDanhmuc.jsp?page=list\">Danh sách danh mục</a></li>\n");
      out.write("                            <li><a href=\"QLDanhmuc.jsp?page=add\">Thêm danh mục</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("                    <li class=\"treeview\">\n");
      out.write("                        <a href=\"#\"><i class=\"fa fa-link\"></i> <span>Quản lí sản phẩm</span>\n");
      out.write("                            <span class=\"pull-right-container\">\n");
      out.write("                                <i class=\"fa fa-angle-left pull-right\"></i>\n");
      out.write("                            </span>\n");
      out.write("                        </a>\n");
      out.write("                        <ul class=\"treeview-menu\">\n");
      out.write("                            <li><a href=\"QLSanpham.jsp?page=list\">Danh sách sản phẩm</a></li>\n");
      out.write("                            <li><a href=\"QLSanpham.jsp?page=add\">Thêm sản phẩm</a></li>\n");
      out.write("                        </ul> \n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"\">\n");
      out.write("                        <a href=\"order-list.jsp\"><i class=\"fa fa-link\"></i> <span>Quản lí đơn hàng</span>\n");
      out.write("\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"\">\n");
      out.write("                        <a href=\"QLKhachhang.jsp?page=list\"><i class=\"fa fa-link\"></i> <span>Người dùng/Khách hàng</span>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("                <!-- /.sidebar-menu -->\n");
      out.write("            </section>\n");
      out.write("            <!-- /.sidebar -->\n");
      out.write("        </aside>\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    ");
 
        String pag = "list";
        if (request.getParameter("page") != null) {
                pag = request.getParameter("page");
            }
        if ( pag.equals("list") == true){ 
    
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

    tbMonan monan = new tbMonan();
    Vector<clsMonan> dsMA = monan.LayDSMonAn();

      out.write("\n");
      out.write("<div class=\"content-wrapper\">\n");
      out.write("    <!-- Content Header (Page header) -->\n");
      out.write("    <section class=\"content-header\">\n");
      out.write("        <h1>\n");
      out.write("            Quản lí sản phẩm\n");
      out.write("            <small>Danh sách sản phẩm</small>\n");
      out.write("        </h1>\n");
      out.write("        <ol class=\"breadcrumb\">\n");
      out.write("            <li><a href=\"Admin.jsp\"><i class=\"fa fa-dashboard\"></i> Admin</a></li>\n");
      out.write("            <li class=\"active\">Danh sách sản phẩm</li>\n");
      out.write("        </ol>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <!-- Main content -->\n");
      out.write("\n");
      out.write("    <section class=\"content\">\n");
      out.write("        <div class=\"col-xs-12\">\n");
      out.write("            <div class=\"box\">\n");
      out.write("                <div class=\"box-header\">\n");
      out.write("                    <h3 class=\"box-title\">Bảng danh sách danh mục</h3>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.box-header -->\n");
      out.write("                <div class=\"box-body table-responsive no-padding\">\n");
      out.write("                    <table class=\"table table-hover\">\n");
      out.write("                        <tbody><tr>\n");
      out.write("                                <th>Mã món ăn</th>\n");
      out.write("                                <th>Tên món</th>\n");
      out.write("                                <th>Danh mục</th>\n");
      out.write("                                <th>Đơn giá</th>\n");
      out.write("                                <th class=\"text-center\">Ảnh</th>\n");
      out.write("                                <th>Mô tả</th>\n");
      out.write("                                <th>\n");
      out.write("                                    <a href=\"QLSanpham.jsp?page=add\" class=\"btn btn-sm btn-success\">Thêm</a>\n");
      out.write("                                </th>\n");
      out.write("                            </tr>\n");
      out.write("                            ");
 for (clsMonan item : dsMA) {
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
      out.print( item.getMamon());
      out.write("</td>\n");
      out.write("                                <td style=\"\">");
      out.print( item.getTenmon());
      out.write("</td>\n");
      out.write("                                <td style=\"\">");
      out.print( item.getDongia());
      out.write("</td>\n");
      out.write("                                <td style=\"\">");
      out.print( item.getMaloai());
      out.write("</td>\n");
      out.write("                                <td style=\"width: 30%;\"><img style=\"width: 100%;\" src=\"../Plugins/images/");
      out.print( item.getHinhanh());
      out.write("\" alt=\"\"></td>\n");
      out.write("\n");
      out.write("                                <td style=\"width: 30%;\">");
      out.print( item.getMota());
      out.write("</td>\n");
      out.write("\n");
      out.write("                                <td>\n");
      out.write("                                    <a href=\"QLSanpham.jsp?page=edit&id=");
      out.print( item.getMamon() );
      out.write(" \"  class=\"btn btn-sm btn-info\">Sửa</a>\n");
      out.write("                                    <p></p>\n");
      out.write("                                    <a href=\"QLSanpham.jsp?page=add \" class=\"btn btn-sm btn-danger\">Xóa</a>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            ");
}
      out.write("\n");
      out.write("                        </tbody></table>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"text-center col-md-12\">\n");
      out.write("                    <ul class=\"pagination custom-pagination\">\n");
      out.write("<!--                        <?= $list_page ?>-->\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.box-body -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /.box -->\n");
      out.write("        </div>\n");
      out.write("    </section>     \n");
      out.write("</div>");
      out.write("\n");
      out.write("    ");
}
      out.write("\n");
      out.write("    ");
  if( pag.equals("add") == true) { 
      out.write("\n");
      out.write("     ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    ");

    tbLoaimon lm = new tbLoaimon();

    String id = "";
    Vector<clsLoaimon> dslm = lm.LayDSCate();

    



      out.write("\n");
      out.write("    <!-- Content Wrapper. Contains page content -->\n");
      out.write("    <div class=\"content-wrapper\">\n");
      out.write("        <!-- Content Header (Page header) -->\n");
      out.write("        <section class=\"content-header\">\n");
      out.write("            <h1>\n");
      out.write("                Quản lí sản phẩm\n");
      out.write("                <small>Thêm sản phẩm</small>\n");
      out.write("            </h1>\n");
      out.write("            <ol class=\"breadcrumb\">\n");
      out.write("                <li><a href=\"Admin.jsp\"><i class=\"fa fa-dashboard\"></i> Admin</a></li>\n");
      out.write("                <li class=\"active\">Thêm sản phẩm</li>\n");
      out.write("            </ol>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- Main content -->\n");
      out.write("        <section class=\"content\">\n");
      out.write("            <div class=\"box box-warning\">\n");
      out.write("                <!-- /.box-header -->\n");
      out.write("\n");
      out.write("                <div class=\"box-body\">\n");
      out.write("                    <form class=\" login\" action=\"../AddProduct\" method=\"post\" data-toggle=\"validator\" enctype=\"multipart/form-data\">\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Mã món ăn</label>\n");
      out.write("                            <input name=\"SpID\" maxlength=\"100\" required=\"\" data-error=\"Vui lòng nhập tên\" type=\"text\" class=\"form-control\" placeholder=\"Ví du: MA001, MA004 , MA009, ...\">\n");
      out.write("                            <div class=\"help-block with-errors\"></div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Tên món ăn</label>\n");
      out.write("                            <input name=\"SpName\" maxlength=\"100\" required=\"\" data-error=\"Vui lòng nhập tên\" type=\"text\" class=\"form-control\" placeholder=\"Tên món ăn\">\n");
      out.write("                            <div class=\"help-block with-errors\"></div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Đơn giá</label>\n");
      out.write("                            <input name=\"SpGia\" maxlength=\"100\" required=\"\" data-error=\"Vui lòng nhập giá hợp lệ\" type=\"text\" class=\"form-control\" placeholder=\"Đơn giá (VND)\">\n");
      out.write("                            <div class=\"help-block with-errors\"></div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("<!--                        <div class=\"form-group\">\n");
      out.write("                            <label> Ảnh sản phẩm</label>\n");
      out.write("                            <input name=\"SpAnh\" maxlength=\"100\" required=\"\" data-error=\"Bạn chưa chọn file\" type=\"file\" class=\"form-control\" placeholder=\"Hình ảnh\">\n");
      out.write("                            <div class=\"help-block with-errors\"></div>\n");
      out.write("                        </div>-->\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Loại món</label>\n");
      out.write("                            <select name=\"SpLoaimon\" class=\"form-control\">\n");
      out.write("                                <option>Loại món</option>\n");
      out.write("                                ");
 for (clsLoaimon itemlLoaimon : dslm) {
      out.write("\n");
      out.write("                                <option value=\"");
      out.print( itemlLoaimon.getMamon());
      out.write("\"> ");
      out.print( itemlLoaimon.getLoaimon());
      out.write("</option>\n");
      out.write("                                ");
 }
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                            <div class=\"help-block with-errors\"></div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group \">\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label class=\"\">\n");
      out.write("                                    Sản phẩm Hot :\n");
      out.write("                                </label>\n");
      out.write("                                <select name=\"SpHot\" class=\"form-control\">\n");
      out.write("                                    <option>Hot</option>\n");
      out.write("                                    <option>Bình thường</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div\n");
      out.write("                            <br>\n");
      out.write("                            <div class=\"col-md-6\">\n");
      out.write("                                <label>\n");
      out.write("                                    Sản phẩm mới : \n");
      out.write("                                </label>\n");
      out.write("                                <select name=\"SpNew\" class=\"form-control\">\n");
      out.write("                                    <option>Hot</option>\n");
      out.write("                                    <option>Bình thường</option>\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <p></p>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label>Mô tả sản phẩm </label>\n");
      out.write("\n");
      out.write("                                <textarea name=\"SpMota\" class=\"form-control\" placeholder=\"Mô tả\"></textarea>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-small btn-sussess full-width \"  >Thêm mới\n");
      out.write("                                </button>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.box-body -->\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- /.content-wrapper -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Control Sidebar -->\n");
      out.write("\n");
      out.write("        <!-- /.control-sidebar -->\n");
      out.write("        <!-- Add the sidebar's background. This div must be placed\n");
      out.write("             immediately after the control sidebar -->\n");
      out.write("        <div class=\"control-sidebar-bg\"></div>\n");
      out.write("    </div>\n");
      out.write("    <!-- ./wrapper -->\n");
      out.write("</html>\n");
      out.write("                        \n");
      out.write("     ");
}
      out.write("\n");
      out.write("     ");
  if( pag.equals("edit") == true) { 
      out.write("\n");
      out.write("     ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- Content Wrapper. Contains page content -->\n");

    tbMonan ma = new tbMonan();
    tbLoaimon lm = new tbLoaimon();

    String id = "";
    Vector<clsMonan> dsm = new Vector<clsMonan>();
    Vector<clsLoaimon> dslm = lm.LayDSCate();

    if (request.getParameter("id") != null) {
        id = request.getParameter("id");
        dsm = ma.LayMonAnByID(id);
    }



      out.write("\n");
      out.write("<div class=\"content-wrapper\">\n");
      out.write("    <!-- Content Header (Page header) -->\n");
      out.write("    <section class=\"content-header\">\n");
      out.write("        <h1>\n");
      out.write("            Quản lí sản phẩm\n");
      out.write("            <small>Sửa sản phẩm</small>\n");
      out.write("        </h1>\n");
      out.write("        <ol class=\"breadcrumb\">\n");
      out.write("            <li><a href=\"Admin.jsp\"><i class=\"fa fa-dashboard\"></i> Admin</a></li>\n");
      out.write("            <li class=\"active\">Sửa sản phẩm</li>\n");
      out.write("        </ol>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <!-- Main content -->\n");
      out.write("    <section class=\"content\">\n");
      out.write("        <div class=\"box box-warning\">\n");
      out.write("            <!-- /.box-header -->\n");
      out.write("\n");
      out.write("            <div class=\"box-body\">\n");
      out.write("                <form class=\" login\" action=\"EditProduct\" method=\"post\" data-toggle=\"validator\" enctype=\"multipart/form-data\">\n");
      out.write("                    ");
 for (clsMonan item : dsm) {
      out.write("\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Mã món ăn</label>\n");
      out.write("                        <input name=\"SpID\" value=\"");
      out.print( item.getMaloai());
      out.write("\" maxlength=\"100\" required=\"\" data-error=\"Vui lòng nhập tên\" type=\"text\" class=\"form-control\" placeholder=\"Ví du: MA001, MA004 , MA009, ...\">\n");
      out.write("                        <div class=\"help-block with-errors\"></div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Tên món ăn</label>\n");
      out.write("                        <input name=\"SpName\" value=\"");
      out.print( item.getTenmon());
      out.write("\" maxlength=\"100\" required=\"\" data-error=\"Vui lòng nhập tên\" type=\"text\" class=\"form-control\" placeholder=\"Tên món ăn\">\n");
      out.write("                        <div class=\"help-block with-errors\"></div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Đơn giá</label>\n");
      out.write("                        ");
 DecimalFormat formatter = new DecimalFormat("###,###,###");
                            String gia = formatter.format(item.getDongia()) + " VNĐ";
                        
      out.write("\n");
      out.write("                        <input name=\"SpGia\" value=\"");
      out.print( gia);
      out.write("\" maxlength=\"100\" required=\"\" data-error=\"Vui lòng nhập giá hợp lệ\" type=\"text\" class=\"form-control\" placeholder=\"Đơn giá (VND)\">\n");
      out.write("                        <div class=\"help-block with-errors\"></div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label> Ảnh sản phẩm</label>\n");
      out.write("                        <input name=\"SpAnh\" value=\"");
      out.print( item.getHinhanh());
      out.write("\" maxlength=\"100\" required=\"\" data-error=\"Bạn chưa chọn file\" type=\"file\" class=\"form-control\" placeholder=\"");
      out.print( item.getHinhanh());
      out.write("\">\n");
      out.write("                        <div class=\"help-block with-errors\"></div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Loại món</label>\n");
      out.write("                        <select name=\"SpLoaimon\" class=\"form-control\">\n");
      out.write("                            <option>Loại món</option>\n");
      out.write("                            ");
 for (clsLoaimon itemlLoaimon : dslm) {
      out.write("\n");
      out.write("                            <option value=\"");
      out.print( itemlLoaimon.getMamon());
      out.write("\"> ");
      out.print( itemlLoaimon.getLoaimon());
      out.write("</option>\n");
      out.write("                            ");
 }
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                        <div class=\"help-block with-errors\"></div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-group \">\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <label class=\"\">\n");
      out.write("                                Sản phẩm Hot :\n");
      out.write("                            </label>\n");
      out.write("                            ");
 if (item.getSpHot() == 1) { 
      out.write("\n");
      out.write("                            <select name=\"SpHot\" class=\"form-control\">\n");
      out.write("                                <option value=\"1\">Hot</option>\n");
      out.write("                                <option value=\"1\">Bình thường</option>\n");
      out.write("                            </select>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                            ");
 if (item.getSpHot() != 1) { 
      out.write("\n");
      out.write("                            <select name=\"SpHot\" class=\"form-control\">\n");
      out.write("                                <option value=\"1\">Bình thường</option>\n");
      out.write("                                <option value=\"1\">Hot</option>\n");
      out.write("                            </select>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                        </div\n");
      out.write("                        <br>\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <label>\n");
      out.write("                                Sản phẩm mới : \n");
      out.write("                            </label>\n");
      out.write("                            \n");
      out.write("                            ");
 if (item.getSpNew()== 1) { 
      out.write("\n");
      out.write("                            <select name=\"SpNew\" class=\"form-control\">\n");
      out.write("                                <option value=\"1\">New</option>\n");
      out.write("                                <option value=\"0\">Bình thường</option>\n");
      out.write("                            </select>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                            ");
 if (item.getSpNew()!= 1) { 
      out.write("\n");
      out.write("                            <select name=\"SpNew\" class=\"form-control\">\n");
      out.write("                                <option value=\"0\">Bình thường</option>\n");
      out.write("                                <option value=\"1\">New</option>\n");
      out.write("                            </select>\n");
      out.write("                            ");
 } 
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                        <p></p>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Mô tả sản phẩm </label>\n");
      out.write("\n");
      out.write("                        <textarea name=\"SpMota\" class=\"form-control\" placeholder=\"Mô tả\">");
      out.print( item.getMota());
      out.write("</textarea>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <button class=\"btn btn-small btn-sussess full-width \" id=\"login-form-submit\" name=\"login-form-submit\" value=\"login\">Lưu lại\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    ");
 }
      out.write("\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.box-body -->\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <!-- /.content-wrapper -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Control Sidebar -->\n");
      out.write("\n");
      out.write("    <!-- /.control-sidebar -->\n");
      out.write("    <!-- Add the sidebar's background. This div must be placed\n");
      out.write("         immediately after the control sidebar -->\n");
      out.write("    <div class=\"control-sidebar-bg\"></div>\n");
      out.write("</div>\n");
      out.write("<!-- ./wrapper -->\n");
      out.write("                        \n");
      out.write("     ");
}
      out.write("\n");
      out.write("\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<footer class=\"main-footer\">\n");
      out.write("    <div class=\"pull-right hidden-xs\">\n");
      out.write("        <b>Version</b> 2.4.0\n");
      out.write("    </div>\n");
      out.write("    <strong>Copyright &copy; 2014-2016 <a href=\"https://adminlte.io\">Almsaeed Studio</a>.</strong> All rights\n");
      out.write("    reserved.\n");
      out.write("</footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
