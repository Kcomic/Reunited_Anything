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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Post;

/**
 *
 * @author Kawin
 */
@WebServlet(name = "LostServlet", urlPatterns = {"/LostServlet"})
public class LostServlet extends HttpServlet {

    private Connection conn;
    private String date;

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
        try {
            HttpSession session = request.getSession();
            String sql = "select idPost, Email, Date, Name, Pic_base64, Type, Place, Detail, F_Name, Time, Validate from post join member using (Email) where Status = ? order by Date DESC, Time DESC";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, "lost");
            ResultSet rs = stmt.executeQuery();
            ArrayList<Post> LostPosts = new ArrayList();
            while (rs.next()) {
                int idPost = rs.getInt(1);
                String email = rs.getString(2);
                date = rs.getString(3);
                convertDate();
                String name = rs.getString(4);
                String pic_base64 = rs.getString(5);
                String type = rs.getString(6);
                String place = rs.getString(7);
                String detail = rs.getString(8);
                String first_name = rs.getString(9);
                String time = rs.getString(10);
                String validate = rs.getString(11);
                Post p = new Post(idPost, first_name, email, date, name, pic_base64, type, place, detail, "lost", time, validate);
                LostPosts.add(p);
            }
            session.setAttribute("LostPosts", LostPosts);
            System.out.println("FoundPosts : " + LostPosts.size());
            response.sendRedirect("lost.jsp");
        } catch (Exception e) {

        }
    }

    private void convertDate() {
        final String OLD_FORMAT = "yyyy-MM-dd";
        final String NEW_FORMAT = "dd-MM-yyyy";
        SimpleDateFormat sdf = new SimpleDateFormat(OLD_FORMAT);
        try {
            Date d = sdf.parse(date);
            sdf.applyPattern(NEW_FORMAT);
            date = sdf.format(d);
        } catch (ParseException ex) {

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
