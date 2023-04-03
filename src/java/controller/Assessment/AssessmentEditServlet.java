/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Assessment;

import dal.AssessmentDAO;
import dal.MaterialDAO;
import jakarta.servlet.RequestDispatcher;
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
import model.Subject;
import model.Syllabus;

/**
 *
 * @author DELL
 */
@WebServlet(name = "AssessmentEditServlet", urlPatterns = {"/editAssessment"})
public class AssessmentEditServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MaterialUpdateServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MaterialUpdateServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    int id, id2;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_raw = request.getParameter("id");
        // dựa vào id để biết được nó muốn lấy cái gì
        // có id thì lấy m theo id; còn ko có id thì chỉ lấy mỗi datasubject

        HttpSession session = request.getSession();
        AssessmentDAO md = new AssessmentDAO();
        Assessment m = new Assessment(); 
        PrintWriter out = response.getWriter();
        
        try {
            // kiểu gì cũng lấy được id bên kia -1 hoặc id nào đó trong bảng
             id = Integer.parseInt(id_raw);
            if (!id_raw.equals("-1")) { // update; khi không phải id = -1 thì sẽ là update lúc đấy sẽ parse int của id update
             
                m = md.getByIDAssessment(id); // id2 là của update
                request.setAttribute("material", m);
            }
            List<Syllabus> list = md.getAllSyllabus("");
            request.setAttribute("dataSubject", list);

            request.getRequestDispatcher("view/assessment/AssessmentEdit.jsp").forward(request, response);
        } catch (Exception e) {
           out.println(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        
//        "`syllabusID` = ?,\n" "`category` = ?,\n" "`type` = ?,\n"  "`part` = ?,\n" "`weight` = ?,\n"
//    "`completion_criteria` = ?,\n" "`duration` = ?,\n" "`clo` = ?,\n" "`question_type` = ?,\n" "`no_question` 
//     "`knowledge_and_skill` = ?,\n""`grading_guide` = ?,\n" "`note` = ?,\n" "`is_active` = ?\n"
        String syllabusID_raw = request.getParameter("syllabusID");
        String category = request.getParameter("category");
        String type = request.getParameter("type");
        String part_raw = request.getParameter("part");
        String weight= request.getParameter("weight");
        String completion_criteria = request.getParameter("completion_criteria");
        String duration = request.getParameter("duration");
        String clo = request.getParameter("clo");
        String question_type = request.getParameter("question_type");
        String no_question = request.getParameter("no_question");
        String knowledge_and_skill = request.getParameter("knowledge_and_skill");
        String grading_guide = request.getParameter("grading_guide");
        String note = request.getParameter("note");
        String status_raw = request.getParameter("status");
        PrintWriter out = response.getWriter();
        out.println(status_raw);
        HttpSession session = request.getSession();
        AssessmentDAO md = new AssessmentDAO();
        List<Syllabus> list = md.getAllSyllabus("");
        request.setAttribute("dataSubject", list);
     
        
        boolean check;

        try {
            int syllabusID = Integer.parseInt(syllabusID_raw);
            int part = 0;
            if(!part_raw.equals("") && part_raw != null){
                part = Integer.parseInt(part_raw);
            }
            int status = Integer.parseInt(status_raw);
            
            Syllabus s = md.getSyllabus(syllabusID);
            Assessment m1 = new Assessment(id, s, category, type, part, weight, completion_criteria, clo, duration, question_type, no_question, knowledge_and_skill, grading_guide, note, status);
            request.setAttribute("material", m1);
            
                    out.println(m1.toString());
            if (!md.isLengthValid(category.trim(), 10, 200)) { // nếu không nằm trong khoảng này thì cho quay về kia
                request.setAttribute("errorMdes", "The length of material description is must be larger 10 character");
                request.getRequestDispatcher("view/assessment/AssessmentEdit.jsp").forward(request, response);
            } else if (!note.trim().equals("") && note.trim() != null && !md.isLengthValid(note, 3, 500)) { // nếu không nằm trong khoảng này thì cho quay về kia
                request.setAttribute("errorNote", "The length of Note is must be larger 3 character");
                request.getRequestDispatcher("view/assessment/AssessmentEdit.jsp").forward(request, response);
            }else {
                
                if(id != -1){
                    md.update(m1);
                request.setAttribute("UpdateSuccess", "success");
                
                }else{
                    md.insert(m1);
                    
                    request.setAttribute("AddSuccess", "success");
                }
                request.getRequestDispatcher("listAssessment").forward(request, response);
            }

        } catch (Exception e) {
            out.print(e);
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
