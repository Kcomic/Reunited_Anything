/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Member;

/**
 *
 * @author Kawin
 */
@WebServlet(name = "SaveEditServlet", urlPatterns = {"/SaveEditServlet"})
public class SaveEditServlet extends HttpServlet {

    private Connection conn;

    public void init() {
        conn = (Connection) getServletContext().getAttribute("connection");
    }

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
        try (PrintWriter out = response.getWriter()) {
            String place = String.valueOf(request.getParameter("place"));
            String type = String.valueOf(request.getParameter("type"));
            String dateTime = String.valueOf(request.getParameter("dateTime"));
            String detail = String.valueOf(request.getParameter("detail"));
            String validate = String.valueOf(request.getParameter("validate"));
            String postId = String.valueOf(request.getParameter("post_id"));
            HttpSession session = request.getSession();
            Member member = (Member)session.getAttribute("member");
            
            
            String sql = "UPDATE post SET place = ?, type= ?, detail = ?, validate = ? WHERE id = ?";
            String sql1 = "UPDATE `reunited_anything`.`post` SET `Type`= ?, `Place`= ?, `Detail`= ?, `Validate`=? WHERE `idPost`= ?";

           
            PreparedStatement stmt = conn.prepareStatement(sql1);
            stmt.setString(1, type);
            stmt.setString(2, place);
           
            stmt.setString(3, detail);
            stmt.setString(4, validate);
            stmt.setString(5, postId);
            stmt.executeUpdate();

            out.println("postId :" + postId);
            out.println("place :" + place);
            out.println("type :" + type);
            out.println("dateTime :" + dateTime);
            out.println("detail :" + detail);
            out.println("validate :" + validate);
            response.sendRedirect("PostDetailServlet?post_id="+postId+"&email="+member.getEmail());
        } catch (Exception e) {

        }
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
