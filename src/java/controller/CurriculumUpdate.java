/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CurriculumDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Curriculum;

/**
 *
 * @author Admin
 */
@WebServlet(name = "CurriculumUpdate", urlPatterns = {"/CurriculumUpdate"})
public class CurriculumUpdate extends HttpServlet {

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
            out.println("<title>Servlet CurriculumUpdate</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CurriculumUpdate at " + request.getContextPath() + "</h1>");
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
        CurriculumDAO curriculumDAO = new CurriculumDAO();
        String id = request.getParameter("id");
//         ArrayList<Curriculum> cList = curriculumDAO.getCurriculum(search, typeSearch, index, 3);
        Curriculum curriculum = curriculumDAO.getCurriculum(id);
        request.setAttribute("c", curriculum);
        request.getRequestDispatcher("CurriculumUpdate.jsp").forward(request, response);
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
        CurriculumDAO curriculumDAO = new CurriculumDAO();
        String name = request.getParameter("name");
        String code = request.getParameter("code");
        String desc = request.getParameter("desc");
        String decision = request.getParameter("decision");
        String credit = request.getParameter("credit");
        String id = request.getParameter("id");
        
        curriculumDAO.editCurriculum(name, code, desc, decision, credit, id);
        response.sendRedirect("ListCurriculum");
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
