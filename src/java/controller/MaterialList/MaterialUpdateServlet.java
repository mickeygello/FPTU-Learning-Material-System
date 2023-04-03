/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.MaterialList;

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
import model.Material;
import model.Subject;
import model.Syllabus;

/**
 *
 * @author DELL
 */
@WebServlet(name = "MaterialUpdateServlet", urlPatterns = {"/editMaterial"})
public class MaterialUpdateServlet extends HttpServlet {

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
        MaterialDAO md = new MaterialDAO();
        Material m = new Material(); 
        PrintWriter out = response.getWriter();
        
        try {
            // kiểu gì cũng lấy được id bên kia -1 hoặc id nào đó trong bảng
             id = Integer.parseInt(id_raw);
            if (!id_raw.equals("-1")) { // update; khi không phải id = -1 thì sẽ là update lúc đấy sẽ parse int của id update
             
                m = md.getByIDMaterial(id); // id2 là của update
                request.setAttribute("material", m);
            }
            List<Syllabus> list = md.getAllSyllabus("");
            request.setAttribute("dataSubject", list);

            request.getRequestDispatcher("view/Material/MaterialEdit.jsp").forward(request, response);
        } catch (Exception e) {
           out.println(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String mdes = request.getParameter("mdescription");
        String author = request.getParameter("author");
        String publisher = request.getParameter("publisher");
        String pDate = request.getParameter("pDate");
        String edition = request.getParameter("edition");
        String isbn = request.getParameter("isbn");
        String isMain_raw = request.getParameter("isMain");
        String isHCopy_raw = request.getParameter("isHCopy");
        String isOnline_raw = request.getParameter("isOnline");
        String note = request.getParameter("note");
        String sjCode = request.getParameter("sjCode");
        String status_raw = request.getParameter("status");
        HttpSession session = request.getSession();
        MaterialDAO md = new MaterialDAO();
        List<Syllabus> list = md.getAllSyllabus("");
        request.setAttribute("dataSubject", list);
     
        PrintWriter out = response.getWriter();
        boolean check;

        try {

            int isMain = Integer.parseInt(isMain_raw);
            int isHCopy = Integer.parseInt(isHCopy_raw);
            int isOnline = Integer.parseInt(isOnline_raw);
            int status = Integer.parseInt(status_raw);
            Syllabus s = md.getSyllabus(Integer.parseInt(sjCode));
            Material m1 = new Material(id, mdes, author, publisher, pDate, edition, isbn, isMain, isHCopy, isOnline, note, s, status);
            request.setAttribute("material", m1);
//                    out.println(m1.toString());
            if (!md.isLengthValid(mdes, 10, 200)) { // nếu không nằm trong khoảng này thì cho quay về kia
                request.setAttribute("errorMdes", "The length of material description is must be larger 10 character");
                request.getRequestDispatcher("view/Material/MaterialEdit.jsp").forward(request, response);
            } else if (!note.equals("") && note != null && !md.isLengthValid(note, 3, 100)) { // nếu không nằm trong khoảng này thì cho quay về kia
                request.setAttribute("errorNote", "The length of Note is must be larger 3 character");
                request.getRequestDispatcher("view/Material/MaterialEdit.jsp").forward(request, response);
            } else if (pDate != null && !pDate.equals("") && !md.isYearValid(Integer.parseInt(pDate))) {
                request.setAttribute("errorYear", "Year is must be smaller the present year");
                request.getRequestDispatcher("view/Material/MaterialEdit.jsp").forward(request, response);
                
            } else {
                
                if(id != -1){
                    md.update(m1);
                request.setAttribute("UpdateSuccess", "success");
                
                }else{
                    md.insert(m1);
                    
                    request.setAttribute("AddSuccess", "success");
                }
                request.getRequestDispatcher("listMaterial").forward(request, response);
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
