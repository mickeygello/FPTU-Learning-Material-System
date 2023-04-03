/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.UserDAO;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author 84379
 */
@WebServlet(name="EditProfile", urlPatterns={"/EditProfile"})
public class EditProfile extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         HttpSession session = request.getSession();
        int id = (int)session.getAttribute("roleID");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pNumber = request.getParameter("pNumber");
        UserDAO dao = new UserDAO();
        try {
           dao.update(id, name, email, pNumber);
           
            
           
           request.getRequestDispatcher("viewProfile").forward(request, response);
        } catch (Exception e) {
            System.out.println(e);
        }
        
        
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         HttpSession session = request.getSession();
        int id = (int)session.getAttribute("roleID");
    UserDAO udao = new UserDAO();
        User user = udao.getUsers(id);
        request.setAttribute("user", user);
           request.getRequestDispatcher("edit_profile.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        int id = (int)session.getAttribute("roleID");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pNumber = request.getParameter("pNumber");
        UserDAO dao = new UserDAO();
        try {
           dao.update(id, name, email, pNumber);
           
           request.getRequestDispatcher("viewProfile").forward(request, response);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
