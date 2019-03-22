package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Map;
import Models.Item;
import Models.clsMonan;
import CSDL.tbMonan;
import java.text.DecimalFormat;
import Models.MyCart;
import Models.clsTaikhoan;
import Models.clsLoaimon;
import java.util.Vector;
import CSDL.tbLoaimon;
import Models.clsBlog;
import java.util.Vector;
import CSDL.tbBlog;

public final class Cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/HomeView/CSS.jsp");
    _jspx_dependants.add("/HomeView/Header.jsp");
    _jspx_dependants.add("/HomeView/Footer.jsp");
    _jspx_dependants.add("/HomeView/JS.jsp");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Coffee Blend</title>\n");
      out.write("       ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("         \n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/css/open-iconic-bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/css/animate.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/css/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/css/owl.theme.default.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/css/magnific-popup.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/css/aos.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/css/ionicons.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/css/bootstrap-datepicker.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/css/jquery.timepicker.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/css/flaticon.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/css/icomoon.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Plugins/css/style.css\">\n");
      out.write("       \n");
      out.write("        \n");
      out.write("    \n");
      out.write(" \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       ");

           tbMonan mn = new tbMonan();
            Vector<clsMonan> monan_hot=mn.LayDSMonAnHot(4);
            
//             MyCart cart2 = (MyCart) session.getAttribute("Cart");
//        if (session.getAttribute("Cart") == null) {
//            cart2 = new MyCart();
//            session.setAttribute("Cart", cart2);
//        }
            
            String monney = "";
       
      out.write("\n");
      out.write("        <!-- Header -->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
 
    tbLoaimon lm = new tbLoaimon();
    Vector<clsLoaimon> dscate = lm.LayDSCate();
    
    MyCart cart = (MyCart) session.getAttribute("Cart");
        if (session.getAttribute("Cart") == null) {
            cart = new MyCart();
            session.setAttribute("Cart", cart);
        }
        

      out.write("\n");
      out.write("   <nav class=\"navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light\" id=\"ftco-navbar\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.jsp\">Coffee<small>Blend</small></a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#ftco-nav\" aria-controls=\"ftco-nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"oi oi-menu\"></span> Menu\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                        <li id=\"trangchu\" class=\"nav-item active\"><a href=\"index.jsp\" class=\"nav-link\">Trang chủ</a></li>\n");
      out.write("                        <li id=\"menu\" class=\"nav-item\"><a href=\"Menu.jsp\" class=\"nav-link\">Thực đơn</a></li>\n");
      out.write("                       \n");
      out.write("                        <li id=\"sanpham\"  class=\"nav-item dropdown \">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"Product.jsp\" id=\"dropdown04\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Sản phẩm</a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"dropdown04\">\n");
      out.write("                               ");
 for(clsLoaimon item : dscate){ 
      out.write("\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"Product.jsp?cate_id=");
      out.print( item.getMamon() );
      out.write('"');
      out.write('>');
      out.print( item.getLoaimon() );
      out.write("</a>\n");
      out.write("                                    \n");
      out.write("                                ");
}
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                          </li>   \n");
      out.write("                        <!--<li class=\"nav-item\"><a href=\"services.html\" class=\"nav-link\">Dịch vụ</a></li>-->\n");
      out.write("                        <li id=\"tintuc\" class=\"nav-item\"><a href=\"Blog.jsp\" class=\"nav-link\">Tin tức</a></li>\n");
      out.write("\n");
      out.write("                        <li id=\"lienhe\" class=\"nav-item\"><a href=\"Contact.jsp\" class=\"nav-link\">Liên hệ</a></li>\n");
      out.write("                        <li id=\"vechungtoi\" class=\"nav-item\"><a href=\"About.jsp\" class=\"nav-link\">Giới thiệu</a></li>\n");
      out.write("                        ");
 
                            Vector<clsTaikhoan> user = new Vector<clsTaikhoan>();
                            String name = "";
                            if (session.getAttribute("User") != null) {
                                user = (Vector<clsTaikhoan>) session.getAttribute("User");
                                for(clsTaikhoan item : user){
                                    name = item.getName();
                                }
                            }
                            
                            
                            if(user.size()>0){
                         
      out.write("\n");
      out.write("                        <li id=\"Dangnhap\" class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"dropdown04\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"> Chào : <small> ");
      out.print( name );
      out.write(" </small></a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"dropdown04\">\n");
      out.write("                               <a class=\"dropdown-item\" href=\"Logout.jsp\">Đăng xuất</a>\n");
      out.write("                               <a class=\"dropdown-item\" href=\"Logout.jsp\">Chi tiết</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        ");
 } else{ 
      out.write("\n");
      out.write("                             <li id=\"Dangnhap\" class=\"nav-item\"><a href=\"Login.jsp\" class=\"nav-link\">Đăng nhập</a></li>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        <li id=\"\" class=\"nav-item cart\"><a href=\"Cart.jsp\" class=\"nav-link\"><span class=\"icon icon-shopping_cart\"></span><span class=\"bag d-flex justify-content-center align-items-center\"><small>");
      out.print( cart.CountHang() );
      out.write("</small></span></a></li>\n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <!-- END nav -->\n");
      out.write(" \n");
      out.write("        <!-- end Header -->\n");
      out.write("\n");
      out.write(" <section class=\"home-slider owl-carousel\">\n");
      out.write("\n");
      out.write("      <div class=\"slider-item\" style=\"background-image: url(Plugins/images/bg_3.jpg);\" data-stellar-background-ratio=\"0.5\">\n");
      out.write("      \t<div class=\"overlay\"></div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("          <div class=\"row slider-text justify-content-center align-items-center\">\n");
      out.write("\n");
      out.write("            <div class=\"col-md-7 col-sm-12 text-center ftco-animate\">\n");
      out.write("            \t<h1 class=\"mb-3 mt-5 bread\">Giỏ hàng</h1>\n");
      out.write("\t            <p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"index.jsp\">Trang chủ</a></span> <span>Giỏ hàng</span></p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("\t\t\n");
      out.write("\t\t<section class=\"ftco-section ftco-cart\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("    \t\t\t<div class=\"col-md-12 ftco-animate\">\n");
      out.write("    \t\t\t\t<div class=\"cart-list\">\n");
      out.write("\t    \t\t\t\t<table class=\"table\">\n");
      out.write("\t\t\t\t\t\t    <thead class=\"thead-primary\">\n");
      out.write("\t\t\t\t\t\t      <tr class=\"text-center\">\n");
      out.write("\t\t\t\t\t\t        <th>&nbsp;</th>\n");
      out.write("\t\t\t\t\t\t        <th>&nbsp;</th>\n");
      out.write("\t\t\t\t\t\t        <th>Product</th>\n");
      out.write("\t\t\t\t\t\t        <th>Price</th>\n");
      out.write("\t\t\t\t\t\t        <th>Quantity</th>\n");
      out.write("\t\t\t\t\t\t        <th>Total</th>\n");
      out.write("\t\t\t\t\t\t      </tr>\n");
      out.write("\t\t\t\t\t\t    </thead>\n");
      out.write("\t\t\t\t\t\t    <tbody>\n");
      out.write("                                                        ");
 for(Map.Entry<String, Item> list : cart.getCart().entrySet()){ 
      out.write("\n");
      out.write("\t\t\t\t\t\t      <tr class=\"text-center\">\n");
      out.write("\t\t\t\t\t\t        <td class=\"product-remove\"><a href=\"RemoteCart.jsp?id=");
      out.print( list.getKey() );
      out.write("\"><span class=\"icon-close\"></span></a></td>\n");
      out.write("\t\t\t\t\t\t        \n");
      out.write("\t\t\t\t\t\t        <td class=\"image-prod\"><div class=\"img\" style=\"background-image:url(Plugins/images/");
      out.print( list.getValue().getProduct().getHinhanh()  );
      out.write(");\"></div></td>\n");
      out.write("\t\t\t\t\t\t        \n");
      out.write("\t\t\t\t\t\t        <td class=\"product-name\">\n");
      out.write("\t\t\t\t\t\t        \t<h3>");
      out.print( list.getValue().getProduct().getTenmon());
      out.write("</h3>\n");
      out.write("                                                                <p>");
      out.print( list.getValue().getProduct().getMota());
      out.write("</p>\n");
      out.write("\t\t\t\t\t\t        </td>\n");
      out.write("\t\t\t\t\t\t         ");
 DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                                                                    String gia =  formatter.format(list.getValue().getProduct().getDongia())+" VNĐ";
                                                                    String tonggia = formatter.format(list.getValue().getProduct().getDongia() *  list.getValue().getQuantity())+"VND";
                                                                 
      out.write("\n");
      out.write("\t\t\t\t\t\t        <td class=\"price\">");
      out.print( gia );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t        \n");
      out.write("\t\t\t\t\t\t        <td class=\"quantity\">\n");
      out.write("\t\t\t\t\t\t        \t<div class=\"input-group mb-3\">\n");
      out.write("\t\t\t\t\t             \t<input type=\"text\" name=\"quantity\" class=\"quantity form-control input-number\" value=\"");
      out.print( list.getValue().getQuantity());
      out.write("\" min=\"1\" max=\"100\">\n");
      out.write("\t\t\t\t\t          \t</div>\n");
      out.write("\t\t\t\t\t          </td>\n");
      out.write("\t\t\t\t\t\t        \n");
      out.write("\t\t\t\t\t\t        <td class=\"total\">");
      out.print( tonggia );
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t      </tr><!-- END TR-->\n");
      out.write("                                                      ");
 } 
      out.write("\n");
      out.write("\t\t\t\t\t\t     \n");
      out.write("\t\t\t\t\t\t    </tbody>\n");
      out.write("\t\t\t\t\t\t  </table>\n");
      out.write("\t\t\t\t\t  </div>\n");
      out.write("    \t\t\t</div>\n");
      out.write("    \t\t</div>\n");
      out.write("    \t\t<div class=\"row justify-content-end\">\n");
      out.write("    \t\t\t<div class=\"col col-lg-3 col-md-6 mt-5 cart-wrap ftco-animate\">\n");
      out.write("    \t\t\t\t<div class=\"cart-total mb-3\">\n");
      out.write("    \t\t\t\t\t<h3>Cart Totals</h3>\n");
      out.write("    \t\t\t\t\t<p class=\"d-flex\">\n");
      out.write("    \t\t\t\t\t\t<span>Thành tiền</span>\n");
      out.write("    \t\t\t\t\t\t<span></span>\n");
      out.write("    \t\t\t\t\t</p>\n");
      out.write("    \t\t\t\t\t<p class=\"d-flex\">\n");
      out.write("    \t\t\t\t\t\t<span>Thuế(VAT)</span>\n");
      out.write("    \t\t\t\t\t\t<span>0 VND</span>\n");
      out.write("    \t\t\t\t\t</p>\n");
      out.write("    \t\t\t\t\t<p class=\"d-flex\">\n");
      out.write("    \t\t\t\t\t\t<span>Giảm giá</span>\n");
      out.write("    \t\t\t\t\t\t<span>0 VND</span>\n");
      out.write("    \t\t\t\t\t</p>\n");
      out.write("    \t\t\t\t\t<hr>\n");
      out.write("    \t\t\t\t\t<p class=\"d-flex total-price\">\n");
      out.write("    \t\t\t\t\t\t<span>Tổng tiền</span>\n");
      out.write("    \t\t\t\t\t\t<span>$17.60</span>\n");
      out.write("    \t\t\t\t\t</p>\n");
      out.write("    \t\t\t\t</div>\n");
      out.write("    \t\t\t\t<p class=\"text-center\"><a href=\"Thanhtoan.jsp\" class=\"btn btn-primary py-3 px-4\">Thanh toán</a></p>\n");
      out.write("    \t\t\t</div>\n");
      out.write("    \t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</section>\n");
      out.write("\n");
      out.write("<section class=\"ftco-section\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row justify-content-center mb-5 pb-3\">\n");
      out.write("            <div class=\"col-md-7 heading-section ftco-animate text-center\">\n");
      out.write("                <span class=\"subheading\">Khám phá</span>\n");
      out.write("                <h2 class=\"mb-4\">Sản phẩm Hot</h2>\n");
      out.write("                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            ");
 for(clsMonan item : monan_hot){
      out.write("\n");
      out.write("            <div class=\"col-md-3\">\n");
      out.write("                <div class=\"menu-entry\">\n");
      out.write("                    <a href=\"Product-detail.jsp?id=");
      out.print(item.getMamon());
      out.write("\" class=\"img\" style=\"background-image: url(Plugins/images/");
      out.print(item.getHinhanh());
      out.write(");\"></a>\n");
      out.write("                    <div class=\"text text-center pt-4\">\n");
      out.write("                        <h3><a href=\"Product-detail.jsp?id=");
      out.print(item.getMamon());
      out.write('"');
      out.write('>');
      out.print(item.getTenmon());
      out.write("</a></h3>\n");
      out.write("                        <p class=\"\" style=\"overflow: hidden;max-height: 52px;\">");
      out.print(item.getMota());
      out.write("</p>\n");
      out.write("                        ");
 DecimalFormat formatter = new DecimalFormat("###,###,###"); 
                           String gia =  formatter.format(item.getDongia())+" VNĐ";
                        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <p class=\"price\"><span>");
      out.print(  gia );
      out.write("</span></p>\n");
      out.write("                        <p><a href=\"AddtoCart.jsp?id=");
      out.print(item.getMamon());
      out.write("\" class=\"btn btn-primary btn-outline-primary\">Thêm vào giỏ</a></p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");
}
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("<!-- Footer -->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write(" <footer class=\"ftco-footer ftco-section img\">\n");
      out.write("            <div class=\"overlay\"></div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row mb-5\">\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 mb-5 mb-md-5\">\n");
      out.write("                        <div class=\"ftco-footer-widget mb-4\">\n");
      out.write("                            <h2 class=\"ftco-heading-2\">về chúng tôi</h2>\n");
      out.write("                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\n");
      out.write("                            <ul class=\"ftco-footer-social list-unstyled float-md-left float-lft mt-5\">\n");
      out.write("                                <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-twitter\"></span></a></li>\n");
      out.write("                                <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-facebook\"></span></a></li>\n");
      out.write("                                <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-instagram\"></span></a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-md-6 mb-5 mb-md-5\">\n");
      out.write("                        <div class=\"ftco-footer-widget mb-4\">\n");
      out.write("                            <h2 class=\"ftco-heading-2\">Tin tức</h2>\n");
      out.write("                            ");

                                    tbBlog blog_f = new tbBlog();
                                    Vector<clsBlog> dsBlogRandFooter = blog_f.LayDSBlogLimit(2);
                             
      out.write("\n");
      out.write("                            ");
 for (clsBlog item : dsBlogRandFooter){
      out.write("\n");
      out.write("                                <div class=\"block-21 mb-4 d-flex\">\n");
      out.write("                                  <a class=\"blog-img mr-4\" style=\"background-image: url(Plugins/images/");
      out.print( item.getHinhanh());
      out.write(");\"></a>\n");
      out.write("                                  <div class=\"text\">\n");
      out.write("                                      <h3 class=\"heading\"><a href=\"#\">");
      out.print( item.getTieude());
      out.write("</a></h3>\n");
      out.write("                                    <div class=\"meta\">\n");
      out.write("                                      <div><a href=\"#\"><span class=\"icon-calendar\"></span> ");
      out.print( item.getThoigian());
      out.write("</a></div>\n");
      out.write("                                      <div><a href=\"#\"><span class=\"icon-person\"></span> ");
      out.print( item.getNguoidang());
      out.write("</a></div>\n");
      out.write("                                    </div>\n");
      out.write("                                  </div>\n");
      out.write("                                </div>\n");
      out.write("                                ");
}
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-2 col-md-6 mb-5 mb-md-5\">\n");
      out.write("                        <div class=\"ftco-footer-widget mb-4 ml-md-4\">\n");
      out.write("                            <h2 class=\"ftco-heading-2\">Menu nhanh</h2>\n");
      out.write("                            <ul class=\"list-unstyled\">\n");
      out.write("                                <li><a href=\"#\" class=\"py-2 d-block\">Cooked</a></li>\n");
      out.write("                                <li><a href=\"#\" class=\"py-2 d-block\">Deliver</a></li>\n");
      out.write("                                <li><a href=\"#\" class=\"py-2 d-block\">Quality Foods</a></li>\n");
      out.write("                                <li><a href=\"#\" class=\"py-2 d-block\">Mixed</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 mb-5 mb-md-5\">\n");
      out.write("                        <div class=\"ftco-footer-widget mb-4\">\n");
      out.write("                            <h2 class=\"ftco-heading-2\">Liên hệ</h2>\n");
      out.write("                            <div class=\"block-23 mb-3\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><span class=\"icon icon-map-marker\"></span><span class=\"text\">203 Phú Diễn - Phúc Diễn - Từ Liêm - Hà Nội</span></li>\n");
      out.write("                                    <li><a href=\"#\"><span class=\"icon icon-phone\"></span><span class=\"text\">+2 392 3929 210</span></a></li>\n");
      out.write("                                    <li><a href=\"#\"><span class=\"icon icon-envelope\"></span><span class=\"text\">info@yourdomain.com</span></a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12 text-center\">\n");
      out.write("\n");
      out.write("                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"icon-heart\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\n");
      out.write("                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write(" \n");
      out.write("        <!-- end Footer -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("      ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("  <script src=\"Plugins/js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/jquery-migrate-3.0.1.min.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/popper.min.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/jquery.easing.1.3.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/jquery.waypoints.min.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/jquery.stellar.min.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/aos.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/jquery.animateNumber.min.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/bootstrap-datepicker.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/jquery.timepicker.min.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/scrollax.min.js\"></script>\n");
      out.write("        <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false\"></script>\n");
      out.write("        <script src=\"Plugins/js/google-map.js\"></script>\n");
      out.write("        <script src=\"Plugins/js/main.js\"></script>");
      out.write(" \n");
      out.write("    \n");
      out.write("\n");
      out.write("    </body>\n");
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
