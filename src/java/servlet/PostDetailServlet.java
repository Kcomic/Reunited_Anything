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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Comment;
import model.Post;
import model.PostDetail;

/**
 *
 * @author Kawin
 */
@WebServlet(name = "PostDetailServlet", urlPatterns = {"/PostDetailServlet"})
public class PostDetailServlet extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        try {
            String postId = String.valueOf(request.getParameter("post_id"));
            String emailPost = String.valueOf(request.getParameter("email"));
            HttpSession session = request.getSession();
            String sql = "select idPost, Email, Date, Name, Pic_base64, Type, Place, Detail, F_Name, L_Name, Time, Validate, Phone  from post join member using (Email) where idPost = ? order by Date DESC, Time DESC";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, postId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                int idPost = rs.getInt(1);
                String email = rs.getString(2);
                String date = rs.getString(3);
                String name = rs.getString(4);
                String pic_base64 = rs.getString(5);
                String type = rs.getString(6);
                String place = rs.getString(7);
                String detail = rs.getString(8);
                String firstName = rs.getString(9);
                String lastName = rs.getString(10);
                String time = rs.getString(11);
                String validate = rs.getString(12);
                String phone = rs.getString(13);
                PostDetail p = new PostDetail(idPost, firstName, lastName, email, date, name, pic_base64, type, place, detail, "found", time, validate, phone);
                session.setAttribute("postDetail", p);
            }
            String sqlComment = "SELECT Email, DateTime, detail, F_Name, L_Name, Uploaded FROM reunited_anything.comment join member using (Email) where idPost = ?";
            stmt = conn.prepareStatement(sqlComment);
            stmt.setInt(1, Integer.parseInt(postId));
            ResultSet rsCment = stmt.executeQuery();
            ArrayList<Comment> listComment = new ArrayList();
            while (rsCment.next()) {
                System.out.println("aaaaaaaaaaa : " + rsCment.getString(1));
                String email1 = rsCment.getString(1);
                //DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                Date date = rsCment.getDate(2);
                
                String detail = rsCment.getString(3);
                String firstName = rsCment.getString(4);
                String LastName = rsCment.getString(5);
                int uploaded = rsCment.getInt(6);

                Comment comment = new Comment(email1, date.toString(), detail, firstName, LastName, postId, uploaded);

                listComment.add(comment);
            }

            session.setAttribute("listComment", listComment);
            System.out.println("emailPosts : " + emailPost);
            System.out.println("PostsID : " + postId);
            session.setAttribute("emailPosts", emailPost);
            response.sendRedirect("postDetail.jsp");
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
