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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Member;

/**
 *
 * @author Kcomic
 */
public class LoginServlet extends HttpServlet {

    private Connection conn;
    private Member member;

    @Override
    public void init() {
        conn = (Connection) getServletContext().getAttribute("connection");
        member = Member.getInstance();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  {
            HttpSession session = request.getSession();
            
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if(username == null || username.equals("")){
                username = (String) request.getAttribute("username");
                password = (String) request.getAttribute("password");
            }
            String sql = "select * from member where Email = ? and Password = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                member.setFirstName(rs.getString("F_Name"));
                member.setLastName(rs.getString("L_Name"));
                member.setEmail(username);
                member.setFacebook(rs.getString("Facebook"));
                member.setPhone(rs.getString("Phone"));
                member.setUploaded(rs.getInt("Uploaded"));
                session.setAttribute("member", member);
                response.sendRedirect("HomeServlet");
            } else {
//                out.println("<head><meta charset=\"utf-8\"></head>");
//            response.sendRedirect("register.html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('username or password incorrect');");
                out.println("location='home.jsp';");
                out.println("</script>");
//            out.println("<h1>Login Fail!!!</h1>");
//            out.println("Username or Password is incorrect Please try again");
            }
        } catch (Exception ex) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Permission denied!!');");
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
