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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kcomic
 */
public class RegisterServlet extends HttpServlet {

    private Connection conn;

    public void init() {

        conn = (Connection) getServletContext().getAttribute("connection");
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            int chk_info = 0;
            int chk = 0;
    
            String password = request.getParameter("Password");
            String c_password = request.getParameter("C_Password");
            String username = request.getParameter("Email");
            String first_name = request.getParameter("F_Name");
            String last_name = request.getParameter("L_Name");
            String phone = request.getParameter("Phone");

            if (username == null || password == null || first_name == null || last_name == null || phone == null
                    || username.equals("") || password.equals("") || first_name.equals("") || last_name.equals("") || phone.equals("")) {
                chk_info = 1;
            }
            String sql = "select * from member where Email = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                if (rs.getString("Email").equals(username)) {
                    chk = 1;
                } else {
                    chk = 2;
                }
            }
            
            
            
            if (chk == 0 || password.equals(c_password)) {
                System.out.println("");
                System.out.println(first_name);
                sql = "insert into member (Email, Password, F_Name, L_Name, Phone, Facebook) values (?, ?, ?, ?, ?, ?)";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, username);
                stmt.setString(2, password);
                stmt.setString(3, first_name);
                stmt.setString(4, last_name);
                stmt.setString(5, phone);
                stmt.setString(6, "fb.me/Kcomic");
                stmt.executeUpdate();
            }

            /* TODO output your page here. You may use following sample code. */
            if (chk == 0 && chk_info == 0 && password.equals(c_password)) {
                RequestDispatcher rd = request.getRequestDispatcher("Login.do");
                request.setAttribute("username", username);
                request.setAttribute("password", password);
                rd.forward(request, response);
            } else if (chk == 1 && chk_info == 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Username already exists');");
                out.println("location='register.html';");
                out.println("</script>");
            } else if (chk == 2 && chk_info == 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Email already exists');");
                out.println("location='register.html';");
                out.println("</script>");
            } else if (!(password.equals(c_password))){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Password and Confirm Password are not match');");
                out.println("location='register.html';");
                out.println("</script>");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Please complete the infomation');");
                out.println("location='register.html';");
                out.println("</script>");
            }

            /* out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterSevlet</title>");
            out.println("</head>");
            out.println("<body>");
            if (chk == 0) {
                out.println("REGISTATION SUCCESSFUL!!</h1>");
            } else {
                out.println("REGISTATION FAILED!!</h1><br>");
                out.println("Username was used");
            }
            out.println("</body>");
            out.println("</html>");*/
        }catch(Exception e){
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Please complete the infomation');");
            out.println("location='register.html';");
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
