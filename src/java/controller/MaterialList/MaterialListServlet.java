/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.MaterialList;

import dal.MaterialDAO;
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
import model.Syllabus;

/**
 *
 * @author DELL
 */
@WebServlet(name = "MaterialListServlet", urlPatterns = {"/listMaterial"})
public class MaterialListServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String value = request.getParameter("search");
//        String value2 = request.getParameter("search2");

        String valueSyllabusID_raw = request.getParameter("opt");

        String valueCategory_raw = request.getParameter("arrangeCategory");
        String valueWeight_raw = request.getParameter("arrangeWeight");

        String update = request.getParameter("UpdateSuccess");
        String add = request.getParameter("AddSuccess");
        MaterialDAO md = new MaterialDAO();
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

                totalproduct = md.countTotalMaterials("1");
            } else {

                // lúc hiển thị ra danh sách sang bên kia nó cần lấy add và update để báo thành công
                // nhưng vấn đề có những lúc: khi bấm index để chuyển trang thì nó vẫn load lại và thông báo success
                totalproduct = md.countTotalMaterials(null);
            }
            int index;
            int numberPage = (int) Math.ceil((double) totalproduct / 6);
            String currentPage = request.getParameter("index");
//            request.setAttribute("check", "search");
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
                Material m1 = md.getByIDMaterial(Integer.parseInt(id));

                request.setAttribute("material", m1);
                // nó đang vướng chỗ roleName

//                out.println(roleName.equalsIgnoreCase("guest"));
                if (roleName.equalsIgnoreCase("guest") || roleName.equalsIgnoreCase("student")) {

                    request.getRequestDispatcher("view/Material/MaterialDetail.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("view/Material/MaterialAdmin.jsp").forward(request, response);
                }
            }
            if (value.equals("-2")) {
                String id = request.getParameter("sid");

                List<Material> list = md.getAllMaterial(id);
////                List<Assessment> list = md.getAllAssessmentBySjCode(value, valueSyllabusID, valueCategory, valueWeight, "1", index, 6); // user
                request.setAttribute("data", list);
////                request.setAttribute("sid", id);
//            if (roleName.equalsIgnoreCase("guest") || roleName.equalsIgnoreCase("student")) {
                request.getRequestDispatcher("view/Material/MaterialListUser.jsp").forward(request, response);
//            }
            }

            if (roleName.equalsIgnoreCase("guest") || roleName.equalsIgnoreCase("student")) {
                List<Material> list = md.getAllAssessmentBySjCode(value, valueSyllabusID, valueCategory, valueWeight, "1", index, 6); // user
                request.setAttribute("data", list);
                request.setAttribute("valueSearch", value);
//                    out.println(list.toString());
                request.getRequestDispatcher("view/Material/MaterialListUser.jsp").forward(request, response);
            } else {
                List<Material> list = md.getAllAssessmentBySjCode(value, valueSyllabusID, valueCategory, valueWeight, null, index, 6);
                request.setAttribute("data", list);
                request.setAttribute("valueSearch", value);
//                 out.println("đây là admin" +list.toString());
                request.getRequestDispatcher("view/Material/MaterialList.jsp").forward(request, response);
            }
        } catch (Exception e) {
            out.print(e);
        }
//        HttpSession session = request.getSession();
//        String valueCategory_raw = request.getParameter("arrangeCategory");
//        String valueWeight_raw = request.getParameter("arrangeWeight");
//        String valueSyllabusID_raw = request.getParameter("opt");
//
//        String value = request.getParameter("search");
//        String value2 = request.getParameter("search2");
//        String update = request.getParameter("UpdateSuccess");
//        String add = request.getParameter("AddSuccess");
//        PrintWriter out = response.getWriter();
//        session.removeAttribute("material");
//        MaterialDAO md = new MaterialDAO();
//        try {
//            int valueSyllabusID = (valueSyllabusID_raw == null || valueSyllabusID_raw.equals("") || valueSyllabusID_raw.equals("0")) ? 0 : Integer.parseInt(valueSyllabusID_raw);
//            int valueCategory = (valueCategory_raw == null || valueCategory_raw.equals("") || valueCategory_raw.equals("0")) ? 0 : Integer.parseInt(valueCategory_raw);
//            int valueWeight = (valueWeight_raw == null || valueWeight_raw.equals("") || valueWeight_raw.equals("0")) ? 0 : Integer.parseInt(valueWeight_raw);
//
//            int totalproduct;
//
//            if (value == null || value.equals("")) {
//                value = "";
//            }
//            if (session.getAttribute("roleName") == null) { // đây là user
//
//                totalproduct = md.countTotalMaterials("1");
//            } else {
//
//                totalproduct = md.countTotalMaterials(null);
//            }
//            int index;
//            int numberPage = (int) Math.ceil((double) totalproduct / 6);
//            String currentPage = request.getParameter("index");
//            request.setAttribute("check", "search");
//            request.setAttribute("valueSearch", value);
//            if (currentPage == null) {
//
//                if (update != null && !update.equals("")) {
//                    request.setAttribute("UpdateSuccess", "success");
//                }
//                if (add != null && !update.equals("")) {
//                    request.setAttribute("AddSuccess", "success");
//                }
//                index = 1;
//            } else { // lúc chuyển index là ko search
//
//                session.removeAttribute("material");
//                index = Integer.parseInt(currentPage);
//            }
//            List<Syllabus> listSyllabus = md.getAllSyllabus("");
//            request.setAttribute("dataSubject", listSyllabus);
//            if (value.equals("-1")) {
//                String id = request.getParameter("id");
//                Material m1 = md.getByIDMaterial(Integer.parseInt(id));
//
//                request.setAttribute("material", m1);
//                if (session.getAttribute("roleName") == null) {
//                    request.getRequestDispatcher("view/Material/MaterialDetail.jsp").forward(request, response);
//                } else {
//                    request.getRequestDispatcher("view/Material/MaterialAdmin.jsp").forward(request, response);
//                }
//            }
//            if (value2.equals("-2")) {
//                String id = request.getParameter("sid");
////            List<Material> listM = md.getAllMaterial(id);
////            request.setAttribute("listMaterial", listM);
////            out.println(id);
////            out.println(listM.toString());
////            return;
////            request.getRequestDispatcher("view/Material/SyllabusDetailMaterial.jsp").forward(request, response);
//                List<Material> list = md.getAllMaterial(id); // user
//                request.setAttribute("data", list);
//                request.getRequestDispatcher("view/Material/MaterialListUser.jsp").forward(request, response);
//                return;
//            }
//
//            if (session.getAttribute("roleName") == null) {
////                List<Material> list = md.getAllMateriallBySjCode(value, "1", index, 6); // user
//                List<Material> list = md.getAllAssessmentBySjCode(value, valueSyllabusID, valueCategory, valueWeight, "1", index, 6); // user
//
//                request.setAttribute("data", list);
//
//                request.getRequestDispatcher("view/Material/MaterialListUser.jsp").forward(request, response);
//            } else {
//
////                List<Material> list = md.getAllMateriallBySjCode(value, null, index, 6); // admin
//                List<Material> list = md.getAllAssessmentBySjCode(value, valueSyllabusID, valueCategory, valueWeight, null, index, 6);
//
//                request.setAttribute("data", list);
//                out.println(list.toString());
////                request.getRequestDispatcher("view/Material/MaterialList.jsp").forward(request, response);
//            }
////        request.setAttribute("data", list);
//        } catch (Exception e) {
//        }
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
