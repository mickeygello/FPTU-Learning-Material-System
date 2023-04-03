/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Session;

import controller.MaterialList.*;
import dal.MaterialDAO;
import dal.SessionDAO;
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
import model.Material;
import model.Session;
import model.Subject;
import model.Syllabus;

/**
 *
 * @author DELL
 */
@WebServlet(name = "SessionUpdateServlet", urlPatterns = {"/editSession"})
public class SessionUpdateServlet extends HttpServlet {

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

    
    int id;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_raw = request.getParameter("id");
        // dựa vào id để biết được nó muốn lấy cái gì
        // có id thì lấy m theo id; còn ko có id thì chỉ lấy mỗi datasubject

        HttpSession session = request.getSession();
         SessionDAO md = new SessionDAO();
     Session m = new Session();
        PrintWriter out = response.getWriter();
        
        try {
            // kiểu gì cũng lấy được id bên kia -1 hoặc id nào đó trong bảng
             id = Integer.parseInt(id_raw);
            if (!id_raw.equals("-1")) { // update; khi không phải id = -1 thì sẽ là update lúc đấy sẽ parse int của id update
             
                m = md.getByIDSession(id); // id2 là của update
                request.setAttribute("material", m);
            }
            List<Syllabus> list = md.getAllSyllabus("");
            request.setAttribute("dataSubject", list);

            request.getRequestDispatcher("view/session/SessionEdit.jsp").forward(request, response);
        } catch (Exception e) {
           out.println(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        String topic = request.getParameter("topic");
        String learning_teaching_type = request.getParameter("learning_teaching_type");
        String lO = request.getParameter("lO");
        String iTU = request.getParameter("iTU");
        String studentMaterial = request.getParameter("studentMaterial");
        String download = request.getParameter("download");
        String studentTask = request.getParameter("studentTask");
        String urls = request.getParameter("urls");
        String syllabusID_raw = request.getParameter("syllabusID");
        String status_raw = request.getParameter("status");
        HttpSession session = request.getSession();
        
       SessionDAO md = new SessionDAO();
        List<Syllabus> list = md.getAllSyllabus("");
        request.setAttribute("dataSubject", list);
     
        PrintWriter out = response.getWriter();
        boolean check;

        try {

            int syllabusID = Integer.parseInt(syllabusID_raw);
           
            int status = Integer.parseInt(status_raw);
            Syllabus s = md.getSyllabus(syllabusID);
            Session m1 = new Session(id, s, topic, learning_teaching_type, lO, iTU, studentMaterial, download, studentTask, urls, status);
           
            request.setAttribute("material", m1);
           
//                    out.println(m1.toString());
            if (!md.isLengthValid(topic, 10, 200)) { // nếu không nằm trong khoảng này thì cho quay về kia
                request.setAttribute("errorMdes", "The length of material description is must be larger 10 character");
                request.getRequestDispatcher("view/session/SessionEdit.jsp").forward(request, response);
            } else if (!md.equals("") && learning_teaching_type != null && !md.isLengthValid(learning_teaching_type, 3, 100)) { // nếu không nằm trong khoảng này thì cho quay về kia
                request.setAttribute("errorNote", "The length of Note is must be larger 3 character");
                request.getRequestDispatcher("view/session/SessionEdit.jsp").forward(request, response);
            }  else {
                
                if(id != -1){
                    md.update(m1);
                request.setAttribute("UpdateSuccess", "success");
                
                }else{
                    md.insert(m1);
                    
                    request.setAttribute("AddSuccess", "success");
                }
                request.getRequestDispatcher("listSession").forward(request, response);
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
