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
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Post;

/**
 *
 * @author Kcomic
 */
@WebServlet(name = "HomeServlet", urlPatterns = {"/HomeServlet"})
public class HomeServlet extends HttpServlet {
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
        PrintWriter out = response.getWriter();
        try {
            HttpSession session = request.getSession();
            String sql = "select idPost, Email, Date, Name, Pic_base64, Type, Place, Detail, Status, F_Name, Time from post join member using (Email)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            ArrayList<Post> posts = new ArrayList();
            while(rs.next()){
                Post p = new Post();
                int idPost = rs.getInt(1);
                String email = rs.getString(2);
                String date = rs.getString(3);
                String name = rs.getString(4);
                String pic_base64 = rs.getString(5);
                String type = rs.getString(6);
                String place = rs.getString(7);
                String detail = rs.getString(8);
                String status = rs.getString(9);
                String first_name = rs.getString(10);
                String time = rs.getString(11);
                p.setDate(date);
                p.setDetail(detail);
                p.setEmail(email);
                p.setId(idPost);
                p.setName(name);
                p.setFirst_name(first_name);
                p.setPic_base64(pic_base64);
                p.setType(type);
                p.setPlace(place);
                p.setStatus(status);
                p.setTime(time);
                posts.add(p);
            }
            session.setAttribute("posts", posts);
            response.sendRedirect("home.jsp");
        } catch(Exception e){
        
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
