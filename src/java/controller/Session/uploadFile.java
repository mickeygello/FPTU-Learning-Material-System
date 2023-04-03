/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.Session;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.InputStream;

/**
 *
 * @author DELL
 */
@WebServlet(name="uploadFile", urlPatterns={"/upload-file"})
public class uploadFile extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet uploadFile</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet uploadFile at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   private static final String UPLOAD_DIRECTORY = "uploads";
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
//        Part filePart = request.getPart("file");
//    String fileName = filePart.getSubmittedFileName();
//    InputStream fileContent = filePart.getInputStream();
    
    
    
        String applicationPath = request.getServletContext().getRealPath("");
       
        String uploadFilePath = applicationPath + File.separator + UPLOAD_DIRECTORY;
        File fileUploadDirectory = new File(uploadFilePath);
        if (!fileUploadDirectory.exists()) {
            fileUploadDirectory.mkdirs();
        }
 
        try {
            // gets the file part
            Part filePart = request.getPart("file");
            String fileName = getSubmittedFileName(filePart);
 
            // validates file name
            if (!isValidFileName(fileName)) {
                response.getWriter().write("Invalid file name.");
                return;
            }
 
            // saves the file to upload directory
            filePart.write(uploadFilePath + File.separator + fileName);
 
            response.getWriter().write("File uploaded successfully!");
        } catch (IOException | ServletException ex) {
            response.getWriter().write("Error: " + ex.getMessage());
        }
    }
 
    // gets the submitted file name
    private String getSubmittedFileName(Part filePart) {
        String fileName = "";
        String header = filePart.getHeader("content-disposition");
        if (header != null) {
            for (String headerPart : header.split(";")) {
                if (headerPart.trim().startsWith("filename")) {
                    fileName = headerPart.substring(headerPart.indexOf('=') + 1).trim().replace("\"", "");
                }
            }
        }
        return fileName;
    }
 
    // validates file name
    private boolean isValidFileName(String fileName) {
        // check if file name is not empty and contains only allowed characters
        return !fileName.isEmpty() && fileName.matches("[a-zA-Z0-9\\-_]+(\\.[a-zA-Z]+)?$");
    }
    

        
}
