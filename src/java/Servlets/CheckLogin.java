/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import CSDL.CheckConnect;
import CSDL.tbTaikhoan;
import Models.MyCart;
import Models.clsTaikhoan;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dandy Huu
 */
@WebServlet(name = "CheckLogin", urlPatterns = {"/CheckLogin"})
public class CheckLogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String user = request.getParameter("username");
            String pass = request.getParameter("password");

            String _err;

            tbTaikhoan tk = new tbTaikhoan();
            Vector<clsTaikhoan> check = tk.check_login(user, pass);
            MyCart cart = new MyCart();
            int n = check.size();
            int role = 0;
            if (n > 0) {
                HttpSession session = request.getSession();
                session.setAttribute("User", check);
                session.setAttribute("Cart", cart);
//                  String r = check.
                for (clsTaikhoan item : check) {
                    String r = item.getMaphanquyen();
                    if (r.equalsIgnoreCase("PQ001") == true) {
                        role = 1;

                    } else {
                        role = 2;
                    }
                   
                }
                
                if (role == 1) {
                     response.sendRedirect("AdminView/Admin.jsp");
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.include(request, response);
                }

            }
            else {
                role = 0;
                _err = "Sai tên tài khoản hoặc mật khẩu";
                request.setAttribute("_err", _err);
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                rd.include(request, response);
            }

//           
//               
//           
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
