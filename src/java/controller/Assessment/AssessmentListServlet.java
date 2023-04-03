/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Assessment;

import controller.MaterialList.*;
import dal.AssessmentDAO;
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
import model.Assessment;
import model.Material;
import model.Session;
import model.Syllabus;

/**
 *
 * @author DELL
 */
@WebServlet(name = "AssessmentListServlet", urlPatterns = {"/listAssessment"})
public class AssessmentListServlet extends HttpServlet {

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

        HttpSession session = request.getSession();
        String value = request.getParameter("search");
        String valueSyllabusID_raw = request.getParameter("opt");
        String valueCategory_raw = request.getParameter("arrangeCategory");
        String valueWeight_raw = request.getParameter("arrangeWeight");
        String update = request.getParameter("UpdateSuccess");
        String add = request.getParameter("AddSuccess");
        AssessmentDAO md = new AssessmentDAO();
        PrintWriter out = response.getWriter();
 String roleName = (String) session.getAttribute("roleName");
        session.removeAttribute("material");

        try {

            int valueSyllabusID = (valueSyllabusID_raw == null || valueSyllabusID_raw.equals("") || valueSyllabusID_raw.equals("0")) ? 0 : Integer.parseInt(valueSyllabusID_raw);
            int valueCategory = (valueCategory_raw == null || valueCategory_raw.equals("") || valueCategory_raw.equals("0")) ? 0 : Integer.parseInt(valueCategory_raw);
            int valueWeight = (valueWeight_raw == null || valueWeight_raw.equals("") || valueWeight_raw.equals("0")) ? 0 : Integer.parseInt(valueWeight_raw);

            int totalproduct;
            if (value == null || value.equals("")) {
                value = "";
            }
            if (session.getAttribute("roleName") == null) { // đây là user

                totalproduct = md.countTotalAssessment("1");
            } else {

                // lúc hiển thị ra danh sách sang bên kia nó cần lấy add và update để báo thành công
                // nhưng vấn đề có những lúc: khi bấm index để chuyển trang thì nó vẫn load lại và thông báo success
                totalproduct = md.countTotalAssessment(null);
            }
            int index;
            int numberPage = (int) Math.ceil((double) totalproduct / 6);
            String currentPage = request.getParameter("index");
            request.setAttribute("check", "search");
           
            request.setAttribute("valueSyllabusID_raw", valueSyllabusID);
            request.setAttribute("valueCategory_raw", valueCategory);
            request.setAttribute("valueWeight_raw", valueWeight);
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
            if (value.equals("-1")) {
                String id = request.getParameter("id");
                Assessment m1 = md.getByIDAssessment(Integer.parseInt(id));

                request.setAttribute("material", m1);
                if (roleName.equalsIgnoreCase("guest") || roleName.equalsIgnoreCase("student")) {
                    request.getRequestDispatcher("view/assessment/AssessmentDetail.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("view/assessment/AssessmentAdmin.jsp").forward(request, response);
                }
            }

            if (value.equals("-2")) {
                String id = request.getParameter("sid");
                AssessmentDAO ad = new AssessmentDAO();
                List<Assessment> listAs2 = ad.getAllAssessment(id);
//                List<Assessment> list = md.getAllAssessmentBySjCode(value, valueSyllabusID, valueCategory, valueWeight, "1", index, 6); // user
                request.setAttribute("data", listAs2);
//                request.setAttribute("sid", id);
                request.getRequestDispatcher("view/assessment/AssessmentListUser.jsp").forward(request, response);
            }

            if (roleName.equalsIgnoreCase("guest") || roleName.equalsIgnoreCase("student")) {
                List<Assessment> list = md.getAllAssessmentBySjCode(value, valueSyllabusID, valueCategory, valueWeight, "1", index, 6); // user
                request.setAttribute("data", list);
                 request.setAttribute("valueSearch", value);
                request.getRequestDispatcher("view/assessment/AssessmentListUser.jsp").forward(request, response);
            } else {

                List<Assessment> list = md.getAllAssessmentBySjCode(value, valueSyllabusID, valueCategory, valueWeight, null, index, 6);
                request.setAttribute("data", list);
                 request.setAttribute("valueSearch", value);
                request.getRequestDispatcher("view/assessment/AssessmentList.jsp").forward(request, response);
            }
        } catch (Exception e) {
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
