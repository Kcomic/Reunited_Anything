/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package listener;

import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;

/**
 * Web application lifecycle listener.
 *
 * @author Kcomic
 */
public class init implements ServletContextListener {

   private Connection conn;
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            conn = getReunited_Anything().getConnection();
            sce.getServletContext().setAttribute("connection", conn);
        } catch (Exception ex) {
            Logger.getLogger(init.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        try {
            conn.close();
        } catch (Exception ex) {
            Logger.getLogger(init.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private DataSource getReunited_Anything() throws NamingException {
        Context c = new InitialContext();
        return (DataSource) c.lookup("java:comp/env/Reunited_Anything");
    }

   
    
}
