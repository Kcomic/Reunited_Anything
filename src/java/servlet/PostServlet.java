/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.Member;

/**
 *
 * @author Kcomic
 */
@MultipartConfig
@WebServlet(name = "PostServlet", urlPatterns = {"/PostServlet"})
public class PostServlet extends HttpServlet {

    Member member;
    String time, date, icon;
    private Connection conn;

    public void init() {
        conn = (Connection) getServletContext().getAttribute("connection");
        member = Member.getInstance();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Part filePart = request.getPart("fileImage");
            System.out.println("file checking");
            if (filePart.getContentType().equals("image/jpeg")) {
                System.out.println("file success");
                insertToDatabase(request, out);

                File save = new File("E:\\Reunited_Anything\\web\\img", icon + ".jpg");
                filePart.write(save.getAbsolutePath());

                out.println("<script type=\"text/javascript\">");
                out.println("alert('Post Successfull');");
                out.println("location='HomeServlet';");
                out.println("</script>");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Image type is not support or No image uploaded');");
                out.println("location='foundPost.jsp';");
                out.println("</script>");
            }
        } catch (Exception e) {
            System.out.println("catch");
            System.out.println(e.toString());
        }
    }

    private void convertTime(String datetime, PrintWriter out) {
        date = datetime.split(" ")[0];
        time = datetime.split(" ")[1];
        time = time.replace("-", ":");
        time = time + ":00:0000";
    }

    private void insertToDatabase(HttpServletRequest request, PrintWriter out) {
        try {
            HttpSession session = request.getSession();
            String email = member.getEmail();
            String name = request.getParameter("name");
            String type = request.getParameter("type");
            String place = request.getParameter("place");
            String dateTime = request.getParameter("dateTime");
            convertTime(dateTime, out);
            String detail = request.getParameter("detail");
            String status = (String) session.getAttribute("post");
            String sql = "select max(idPost) from post";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            icon = String.valueOf(rs.getInt(1) + 1);
            System.out.println(email + name + type + place + date + time + detail + status);
            sql = "insert into post(Email, Date, Name, Pic_base64, Type, Place, Detail, Status, Time, Validate) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, date);
            stmt.setString(3, name);
            stmt.setString(4, icon);
            stmt.setString(5, type);
            stmt.setString(6, place);
            stmt.setString(7, detail);
            stmt.setString(8, status);
            stmt.setString(9, time);
            stmt.setString(10, "wating");
            stmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("database catch");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Please complete the informations');");
            out.println("location='home.jsp';");
            out.println("</script>");
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
