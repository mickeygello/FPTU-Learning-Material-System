package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import dal.User2DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

import dal.*;
import model.User2;
/**
 *
 * @author HP
 */
public class updateUser extends HttpServlet {

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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String id = request.getParameter("ID");
            request.setAttribute("idNew", id);
            User2DAO dao = new User2DAO();
            List<User2> list = dao.getListUser();
            request.setAttribute("listUser", list);
            request.setAttribute("check", 1);
            request.getRequestDispatcher("manageUser.jsp").forward(request, response);
        } catch (Exception e) {

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
        try {
            String IdNew = request.getParameter("UserID");
            String firstName = request.getParameter("name");
            String lastName = request.getParameter("name2");
            String email = request.getParameter("email");
            String number = request.getParameter("phoneNum");
            User2DAO dao = new User2DAO();
            dao.updateAccount(Integer.parseInt(IdNew), firstName, email,number);            

            request.getRequestDispatcher("listUser").forward(request, response);

        } catch (Exception e) {

        }
    }
    // public class FileUpload {
//
//        public void uploadFile(HttpServletRequest request, HttpServletResponse response, Part filePart, String destination)
//                throws ServletException, IOException {
//            OutputStream out = null;
//            InputStream filecontent = null;
//            try {
//                out = new FileOutputStream(destination);
//                filecontent = filePart.getInputStream();
//                int read = 0;
//                final byte[] bytes = new byte[1024];
//
//                while ((read = filecontent.read(bytes)) != -1) {
//                    out.write(bytes, 0, read);
//                }
//            } catch (IOException e) {
//                e.printStackTrace();
//            } finally {
//                if (out != null) {
//                    out.close();
//                }
//                if (filecontent != null) {
//                    filecontent.close();
//                }
//            }
//        }
//
//        public String projectWebPath(HttpServletRequest request) {
//            List<String> buildPath = Arrays.asList(request.getRealPath("").split("\\\\"));
//            List<String> projectPath = buildPath.subList(0, buildPath.size() - 2);
//            return String.join("/", projectPath) + "/web";
//        }
//    }

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
