/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.miage.servlets;

import com.miage.beans.client;
import static com.miage.beans.client.connecterBD;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "inscription", urlPatterns = {"/inscription"})
public class inscription extends HttpServlet {

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

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String p1 = request.getParameter("login");  
            String p2 = request.getParameter("passWord");
            String p3 = request.getParameter("role");
            Connection connecter = null;
            String requete = "INSERT INTO client VALUES (id,'"+p1+"','"+p2+"','"+p3+"');";
            try {
                connecter = connecterBD();
                Statement stmt = connecter.createStatement();
                stmt.executeUpdate(requete);
                request.setAttribute("msg","Inscription validé, vous pouvez vous connecter!");
                this.getServletContext().getRequestDispatcher("/authentification.jsp").forward(request, response);
            }
            catch(Exception e){
                e.printStackTrace();
            }
       }

}
