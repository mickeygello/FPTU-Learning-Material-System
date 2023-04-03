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
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Curriculum;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ListCurriculum", urlPatterns = {"/ListCurriculum"})
public class ListCurriculum extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        CurriculumDAO curriculumDAO = new CurriculumDAO();
        HttpSession session = request.getSession();
        
        String search = request.getParameter("search") == null ? "" : request.getParameter("search");
        search = search.trim();
        int totalproduct = curriculumDAO.countTotalCurriculum(search);
//        int totalproduct = productDao.getNumberProduct();
        int numberPage = (int) Math.ceil((double) totalproduct / 6);
        int index;
        String currentPage = request.getParameter("index");
        if (currentPage == null) {
            index = 1;
        } else {
            index = Integer.parseInt(currentPage);
        }

        if (session.getAttribute("roleName") == null) {
            ArrayList<Curriculum> cList = curriculumDAO.getCurriculum(search, index, 6);
            request.setAttribute("cList", cList);

        } else {
            ArrayList<Curriculum> cList = curriculumDAO.getCurriculumAdmin(search, index, 6);
            request.setAttribute("cList", cList);

        }

        request.setAttribute("numberPage", numberPage);
        request.getRequestDispatcher("ListCurriculum.jsp").forward(request, response);
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
