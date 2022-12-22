/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import static com.miage.beans.client.connecterBD;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author ADMIN
 */
@MultipartConfig
@WebServlet(name = "enreggistrerProduit", urlPatterns = {"/enreggistrerProduit"})
public class enreggistrerProduit extends HttpServlet {

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
            String p1 = request.getParameter("nomProduit");  
            String p2 = request.getParameter("prixProduit");
            String p3 = request.getParameter("categorie");
            
            Part p4 = request.getPart("imgProduit");
            String fileName = p4.getSubmittedFileName();
            String path = "C:/Users/ADMIN/Documents/NetBeansProjects/E_commerce/src/main/webapp/images/"+fileName;
            
            Connection connecter = null;
            String requete = "INSERT INTO produit VALUES (idProduit,'"+p1+"','"+p2+"','"+fileName+"','"+p3+"');";
            try {
                connecter = connecterBD();
                Statement ps = connecter.createStatement();
                ps.executeUpdate(requete);
                request.setAttribute("msg", "Produit ajouté avec succès");
                this.getServletContext().getRequestDispatcher("/accueil.jsp").forward(request, response);
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
            try{
           FileOutputStream fos = new FileOutputStream(path);
           InputStream is = p4.getInputStream();
           byte[] data = new byte[is.available()];
           is.read(data);
           fos.write(data);
           fos.close();
       }
       catch(Exception e){
           e.printStackTrace();
       }
    }

}
