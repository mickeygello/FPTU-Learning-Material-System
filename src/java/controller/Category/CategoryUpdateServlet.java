/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.Category;

import controller.Session.*;
import controller.MaterialList.*;
import dal.MaterialDAO;
import dal.SessionDAO;
import dal.categoryDAO;
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
import model.Category;
import model.Material;
import model.Session;
import model.Subject;
import model.Syllabus;

/**
 *
 * @author DELL
 */
@WebServlet(name = "CategoryUpdateServlet", urlPatterns = {"/editCategory"})
public class CategoryUpdateServlet extends HttpServlet {

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
        categoryDAO cd = new categoryDAO();
        Category c = new Category();
        PrintWriter out = response.getWriter();

        try {
            // kiểu gì cũng lấy được id bên kia -1 hoặc id nào đó trong bảng
            id = Integer.parseInt(id_raw);
            if (!id_raw.equals("-1")) { // update; khi không phải id = -1 thì sẽ là update lúc đấy sẽ parse int của id update

                c = cd.getByIDCategory(id); // id2 là của update
                request.setAttribute("category", c);
            }

            request.getRequestDispatcher("view/category/categoryEdit.jsp").forward(request, response);
        } catch (Exception e) {
            out.println(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String status_raw = request.getParameter("status");
        categoryDAO cd = new categoryDAO();
        PrintWriter out = response.getWriter();
        boolean check;

        try {
            int status = Integer.parseInt(status_raw);
            Category m1 = new Category(id, name, status);
//            out.println(m1.toString());
            request.setAttribute("category", m1);

//                    out.println(m1.toString());
            if (!cd.isLengthValid(name, 3, 200)) { // nếu không nằm trong khoảng này thì cho quay về kia
                request.setAttribute("errorMdes", "The length of category name description is must be larger 3 character");
                request.getRequestDispatcher("view/category/categoryEdit.jsp").forward(request, response);
            } else {

                if (id != -1) {
                    cd.update(m1);
                    request.setAttribute("UpdateSuccess", "success");

                } else {
                    cd.insert(m1);

                    request.setAttribute("AddSuccess", "success");
                }
                request.getRequestDispatcher("listCategory").forward(request, response);
            }

        } catch (Exception e) {
            out.println("oke");
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
