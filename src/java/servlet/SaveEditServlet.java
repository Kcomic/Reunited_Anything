/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
    private String time, date;

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
        try (PrintWriter out = response.getWriter()) {
            String place = String.valueOf(request.getParameter("place"));
            String type = String.valueOf(request.getParameter("type"));
            String dateTime = String.valueOf(request.getParameter("dateTime"));
            String detail = String.valueOf(request.getParameter("detail"));
            String validate = String.valueOf(request.getParameter("validate"));
            String postId = String.valueOf(request.getParameter("post_id"));
            HttpSession session = request.getSession();
            Member member = (Member) session.getAttribute("member");
            

            convertTime(dateTime, out);
            String sql = "UPDATE `reunited_anything`.`post` SET `Date`= ?, `Type`= ?, `Place`= ?, `Detail`= ?, `Time`= ?, `Validate`= ? WHERE `idPost`= ?";

            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, date);
            stmt.setString(2, type);
            stmt.setString(3, place);
            stmt.setString(4, detail);
            stmt.setString(5, time);
            stmt.setString(6, validate);         
            stmt.setString(7, postId);
            stmt.executeUpdate();

            System.out.println("Comment : "+detail);
            response.sendRedirect("PostDetailServlet?post_id=" + postId + "&email=" + member.getEmail());
        } catch (Exception e) {
            System.out.println("time catch");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Please login');");
            out.println("location='HomeServlet';");
            out.println("</script>");
        }
    }

    private void convertTime(String datetime, PrintWriter out) {
        date = datetime.split(" ")[0];
        time = datetime.split(" ")[1];
        time = time.replace("-", ":");
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
