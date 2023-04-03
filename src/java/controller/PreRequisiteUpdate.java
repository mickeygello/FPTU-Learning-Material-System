/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.PreRequisite;
import model.Subject;

/**
 *
 * @author TUF GAMING
 */
@WebServlet(name = "PreRequisiteUpdate", urlPatterns = {"/PreRequisiteUpdate"})
public class PreRequisiteUpdate extends HttpServlet {

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
            out.println("<title>Servlet PreRequisiteUpdate</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PreRequisiteUpdate at " + request.getContextPath() + "</h1>");
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
        PreRequisiteDAO pd = new PreRequisiteDAO();
        PreRequisite p = new PreRequisite();
        SubjectDAO s = new SubjectDAO();

        PrintWriter out = response.getWriter();

        try {
            id = Integer.parseInt(id_raw);
            if (!id_raw.equals("-1")) {
                p = pd.getPreRequisite(id);
                request.setAttribute("preRequisite", p);
            }
            request.setAttribute("id", id);
            List<Subject> list = s.getAll();
//            out.print(list.toString());
            request.setAttribute("dataSubject", list);
            request.getRequestDispatcher("PreRequisiteAdd.jsp").forward(request, response);
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
        String id_raw = request.getParameter("id");
        int preId = Integer.parseInt(id_raw);

        String subjectCode = request.getParameter("sjCode");
        String preRequisiteSubject = request.getParameter("reqSubject");
        String des = request.getParameter("descriptions");
        
        HttpSession session = request.getSession();
        PreRequisiteDAO pd = new PreRequisiteDAO();
        SubjectDAO sd = new SubjectDAO();
        
//        List<Subject> list = sd.getAll();
//        request.setAttribute("dataSubject", list);

        PrintWriter out = response.getWriter();
        boolean check;

        try {

            PreRequisite p = pd.getPreRequisite(preId);
            PreRequisite p1 = new PreRequisite(preId, des, subjectCode, des);
            request.setAttribute("preRequisite", p1);

            if (id != -1) {
                pd.update(preRequisiteSubject, des, id);
                request.setAttribute("UpdateSuccess", "success");

            } else {
                pd.createPreRequisite(subjectCode, preRequisiteSubject, des);
                request.setAttribute("AddSuccess", "success");
            }
            request.getRequestDispatcher("ListPreRequisite").forward(request, response);

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
