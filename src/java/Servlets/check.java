/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import CSDL.CheckConnect;
import CSDL.tbMonan;
import CSDL.tbSlide;
import Models.clsMonan;
import Models.clsSlide;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dandy Huu
 */
@WebServlet(name = "check", urlPatterns = {"/check"})
public class check extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet check</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet check at " + request.getContextPath() + "</h1>");
            CheckConnect ch = new CheckConnect();
            boolean check = ch.check();
           int a = 100000;
            if (check == true) {
                out.println("<h1>Ket noi thanh cong</h1>");
//                tbMonan ma = new tbMonan();
//                Vector<clsMonan> dsmonan = ma.LayDSMonAn();
                 tbSlide sl = new tbSlide();
                Vector<clsSlide> dssl = sl.LayDSSlides();
                out.println("<h1>"+ dssl.size()+"</h1>");
                if (dssl.size() >0) {
                    for (clsSlide item : dssl) {
                        out.println("<h1>"+item.getDiscription()+" - "+item.getTitle()+" - "+item.getHinhanh()+"</h1>");
                    }
                }
                else{
                    out.println("<h1>Ket noi that bai</h1>");
                }
            }else{
                 out.println("<h1>Ket noi that bai</h1>");
            }
            out.println("</body>");
            out.println("</html>");
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
