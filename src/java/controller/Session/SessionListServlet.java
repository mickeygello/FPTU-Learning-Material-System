/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Session;

import controller.MaterialList.*;
import dal.MaterialDAO;
import dal.SessionDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Material;
import model.Session;
import model.Syllabus;

/**
 *
 * @author DELL
 */
@WebServlet(name = "SessionListServlet", urlPatterns = {"/listSession"})
public class SessionListServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String value = request.getParameter("search");
        String update = request.getParameter("UpdateSuccess");
        String add = request.getParameter("AddSuccess");
        String valueSyllabusID_raw = request.getParameter("opt");
        String valueDowload_raw = request.getParameter("opt2");
        try {
            int valueSyllabusID = (valueSyllabusID_raw == null || valueSyllabusID_raw.equals("") || valueSyllabusID_raw.equals("0")) ? 0 : Integer.parseInt(valueSyllabusID_raw);
            String valueDowload_raw2 = (valueDowload_raw == null || valueDowload_raw.equals("") || valueDowload_raw.equals("0")) ? null : valueDowload_raw;

            session.removeAttribute("material");
            SessionDAO md = new SessionDAO();

            int totalproduct;
            if (value == null || value.equals("")) {
                value = "";
            }
            if (session.getAttribute("roleName") == null) { // đây là user

                totalproduct = md.countTotalSession("1");
            } else {

                // lúc hiển thị ra danh sách sang bên kia nó cần lấy add và update để báo thành công
                // nhưng vấn đề có những lúc: khi bấm index để chuyển trang thì nó vẫn load lại và thông báo success
                totalproduct = md.countTotalSession(null);
            }
            int index;
            int numberPage = (int) Math.ceil((double) totalproduct / 6);
            String currentPage = request.getParameter("index");
            request.setAttribute("check", "search");
            request.setAttribute("valueSyllabusID_raw", valueSyllabusID);
            request.setAttribute("valueDowload_raw2", valueDowload_raw2);

            if (currentPage == null) {

                if (update != null && !update.equals("")) {
                    request.setAttribute("UpdateSuccess", "success");
                }
                if (add != null && !update.equals("")) {
                    request.setAttribute("AddSuccess", "success");
                }
                index = 1;
            } else { // lúc chuyển index là ko search

                session.removeAttribute("material");
                index = Integer.parseInt(currentPage);
            }

            List<Syllabus> listSyllabus = md.getAllSyllabus("");
            request.setAttribute("dataSubject", listSyllabus);
            if (value.equals("-2")) {
                String id = request.getParameter("sid");
                SessionDAO sd = new SessionDAO();
                List<Session> listS = sd.getAllSession(id);
//                request.setAttribute("listSession", listS);
//                request.getRequestDispatcher("view/session/SyllabusDetailSession.jsp").forward(request, response);
                request.setAttribute("data", listS);
                request.getRequestDispatcher("view/session/SessionListUser.jsp").forward(request, response);

            }
            if (session.getAttribute("roleName") == null) {
                List<Session> list = md.getAllSessionBySjCode(value, valueSyllabusID, valueDowload_raw2, "1", index, 6); // user
                request.setAttribute("data", list);
                request.setAttribute("valueSearch", value);
                request.getRequestDispatcher("view/session/SessionListUser.jsp").forward(request, response);
            } else {

                List<Session> list = md.getAllSessionBySjCode(value, valueSyllabusID, valueDowload_raw2, null, index, 6);
                request.setAttribute("data", list);
                request.setAttribute("valueSearch", value);
                request.getRequestDispatcher("view/session/SessionList.jsp").forward(request, response);

            }
        } catch (Exception e) {
            out.println(e);
        }
//        request.setAttribute("data", list);

    }

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
