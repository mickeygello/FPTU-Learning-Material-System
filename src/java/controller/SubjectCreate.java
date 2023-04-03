/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.SubjectDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Subject;

/**
 *
 * @author TUF GAMING
 */
@WebServlet(name = "SubjectCreate", urlPatterns = {"/SubjectCreate"})
public class SubjectCreate extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SubjectCreate</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SubjectCreate at " + request.getContextPath() + "</h1>");
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
    int id;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_raw = request.getParameter("id");

        HttpSession session = request.getSession();
        SubjectDAO sd = new SubjectDAO();
        Subject s = new Subject();

        PrintWriter out = response.getWriter();

        try {
            id = Integer.parseInt(id_raw);
            if (!id_raw.equals("-1")) {
                s = sd.getSubject(id);
                request.setAttribute("subject", s);
            }
            request.setAttribute("id", id);
            request.getRequestDispatcher("SubjectCreate.jsp").forward(request, response);
        } catch (Exception e) {
            out.println(e);
            out.println("get");
        }
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
//        String id_raw = request.getParameter("id");
      

        String subjectCode = request.getParameter("sjCode");
        String subjectName = request.getParameter("sjName");
        String sCredit = request.getParameter("credit");
    
        String degree = request.getParameter("degree");

        String sStatus = request.getParameter("status");
     

        String sCombo = request.getParameter("combo");
        

        String description = request.getParameter("description");

        HttpSession session = request.getSession();
        SubjectDAO sd = new SubjectDAO();

        PrintWriter out = response.getWriter();

        try {
            int combo = Integer.parseInt(sCombo);
              int credit = Integer.parseInt(sCredit);
                 boolean status = Boolean.getBoolean(sStatus);
//                   int sjId = Integer.parseInt(id_raw);
            Subject s = sd.getSubject(id);
            Subject s1 = new Subject(id, subjectCode, subjectName, description, credit, degree, combo, status);
            request.setAttribute("subject", s1);
            if (id != -1) {
                sd.update(id, subjectCode, subjectName, description, credit, degree, combo, status);
                request.setAttribute("UpdateSuccess", "success");

            } else {
                sd.createSubject(subjectCode, subjectName, description, credit, degree, combo, status);
                request.setAttribute("AddSuccess", "success");
            }
            request.getRequestDispatcher("listSubject").forward(request, response);
        } catch (Exception e) {
            out.print(e);
            out.println("post");
        }
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
