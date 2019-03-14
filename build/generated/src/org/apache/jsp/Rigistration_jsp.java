package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Scanner;
import Models.clsTaikhoan;
import java.util.Vector;
import CSDL.tbTaikhoan;

public final class Rigistration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/assets/vendor/bootstrap/css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"Plugins/assets/vendor/animate/animate.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"Plugins/assets/vendor/elasic-slider/elastic.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"Plugins/assets/vendor/iconmoon/linea-icon.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"Plugins/assets/vendor/magnific-popup/magnific-popup.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"Plugins/assets/vendor/owl-carousel/owl.carousel.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"Plugins/assets/vendor/owl-carousel/owl.theme.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"Plugins/assets/vendor/font-awesome/css/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"Plugins/assets/css/shortcodes.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"Plugins/assets/css/style.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"Plugins/assets/css/default-theme.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
           
            String _err = "";
            if (request.getAttribute("_err") != null) {
                    _err = (String) request.getAttribute("_err");
                }
            
            String active_login = "", active_cr="";
            if (request.getAttribute("active_login") != null) {
                    active_login = (String) request.getAttribute("active_login");
                }
            
            if (request.getAttribute("active_cr") != null) {
                    active_cr = (String) request.getAttribute("active_cr");
                }
            
            String username_err = "";
            if (request.getAttribute("username_err") != null) {
                    username_err = (String) request.getAttribute("username_err");
                }
        
      out.write("\n");
      out.write("        \n");
      out.write("        <!--  preloader start -->\n");
      out.write("        <div id=\"tb-preloader\">\n");
      out.write("            <div class=\"tb-preloader-wave\"></div>\n");
      out.write("        </div>\n");
      out.write("        <!-- preloader end -->\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("\n");
      out.write("            <section class=\"body-content \">\n");
      out.write("\n");
      out.write("                <div class=\"page-content\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-6 col-md-offset-3\">\n");
      out.write("                                <dl class=\"accordion login-accordion\">\n");
      out.write("                                   \n");
      out.write("                                    <dt>\n");
      out.write("                                    <a href=\"#\">Bạn không có tài khoản? Đăng ký ngay!</a>\n");
      out.write("                                    </dt>\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                     \n");
      out.write("                                    <dd style=\"");
      out.print(active_cr);
      out.write("\">\n");
      out.write("                                        <form class=\" login\" action=\"DangkyServlet\" method=\"post\" data-toggle=\"validator\">\n");
      out.write("\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input name =\"ten\" maxlength=\"100\" required=\"\" data-error=\"Vui lòng nhập tên\" type=\"text\" class=\"form-control\" placeholder=\"Tên của bạn\">\n");
      out.write("                                                <div class=\"help-block with-errors\"></div>\n");
      out.write("                                            </div>\n");
      out.write("                                            \n");
      out.write("                                            <div class=\"form-group\" id=\"user-result\">\n");
      out.write("                                                <input id=\"username\" name=\"username\" minlength=\"6\" required=\"\" data-error=\"Vui lòng nhập lại tài khoản (lớn hơn 6 kí tự)\" type=\"text\" class=\"form-control\" placeholder=\"Tài khoản\">\n");
      out.write("                                                <div class=\"help-block with-errors\"></div>\n");
      out.write("                                            </div>\n");
      out.write("                                             <p  class=\"err-p text-danger\">");
      out.print( username_err);
      out.write("</p>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input name=\"phone\" maxlength=\"13\" minlength=\"12\" required=\"\" data-error=\"Số điện thoại không chính xác\" type=\"text\" class=\"form-control\" placeholder=\"Điện thoại\">\n");
      out.write("                                                <div class=\"help-block with-errors\"></div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input name=\"pass\" maxlength=\"100\" required=\"\" data-error=\"Mật khẩu phải dài hơn 6 kí tự\" type=\"text\" class=\"form-control\" placeholder=\"Mật khẩu\">\n");
      out.write("                                                <div class=\"help-block with-errors\"></div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <button class=\"btn btn-small btn-dark-solid full-width \" id=\"login-form-submit\" name=\"login-form-submit\" value=\"login\">Đăng kí\n");
      out.write("                                                </button>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                        </form>\n");
      out.write("                                    </dd>\n");
      out.write("                                    \n");
      out.write("                                     <dt>\n");
      out.write("                                    <a href=\"#\" class=\"\">Đăng nhập với tài khoản của bạn</a>\n");
      out.write("                                    </dt>\n");
      out.write("                                    <dd style=\"");
      out.print(active_login);
      out.write("\">\n");
      out.write("                                        <div class=\"login register \">\n");
      out.write("                                            <div class=\" btn-rounded\">\n");
      out.write("                                                <form class=\"\" action=\"CheckLogin\" id=\"login-form\" method=\"post\" novalidate=\"true\" data-toggle=\"validator\">\n");
      out.write("\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <input type=\"text\" name=\"username\" value=\"\" class=\"form-control\" required=\"\"  placeholder=\"Tên đăng nhập\" maxlength=\"50\" minlength=\"6\"  data-error=\"Vui lòng nhập tài khoản\" >\n");
      out.write("                                                        <div class=\"help-block with-errors\"></div>\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <input maxlength=\"100\"  data-error=\"Vui lòng nhập mật khẩu\" required=\"\"  type=\"password\" name=\"password\" value=\"\" class=\"form-control \" placeholder=\"Mật khẩu\">\n");
      out.write("                                                        <div class=\"help-block with-errors\"></div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <p class=\"text-danger\">");
      out.print( _err);
      out.write("</p>\n");
      out.write("                                                    <!-- <span style=\"color: red\"><?= $msg ?></span> -->\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <button class=\"btn btn-small btn-dark-solid full-width\" type=\"submit\" value=\"login\">Đăng nhập\n");
      out.write("                                                        </button>\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <label for=\"\"> <a class=\"pull-left\" href=\"index.jsp\"> Quay lại trang chủ</a></label>\n");
      out.write("                                                        <a class=\"pull-right\" data-toggle=\"modal\" href=\"#forgotPass\"> Forgot Password?</a>\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                </form>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                    </dd>\n");
      out.write("                                </dl>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </section>\n");
      out.write("            <!--body content end-->\n");
      out.write("\n");
      out.write("            <!--footer start 1-->\n");
      out.write("\n");
      out.write("            <!--footer 1 end-->\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("            <!-- inject:js -->\n");
      out.write("    <script src=\"Plugins/assets/vendor/modernizr/modernizr.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/jquery/jquery-1.10.2.min.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/bootstrap-validator/validator.min.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/breakpoint/breakpoint.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/count-to/jquery.countTo.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/countdown/jquery.countdown.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/easing/jquery.easing.1.3.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/easy-pie-chart/jquery.easypiechart.min.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/elasic-slider/jquery.eislideshow.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/flex-slider/jquery.flexslider-min.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/gmap/jquery.gmap.min.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/images-loaded/imagesloaded.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/isotope/jquery.isotope.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/magnific-popup/jquery.magnific-popup.min.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/mailchimp/jquery.ajaxchimp.min.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/menuzord/menuzord.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/nav/jquery.nav.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/owl-carousel/owl.carousel.min.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/parallax-js/parallax.min.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/smooth/smooth.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/sticky/jquery.sticky.min.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/touchspin/touchspin.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/typist/typist.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/visible/visible.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/vendor/wow/wow.min.js\"></script>\n");
      out.write("    <script src=\"Plugins/assets/js/scripts.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("              $('#username').keyup(function(){\n");
      out.write("                  $(\"err-p\").css(\"display\", \"none\");\n");
      out.write("                });\n");
      out.write("              function HideAtt(){\n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("              }                       \n");
      out.write("     </script>\n");
      out.write("     \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
