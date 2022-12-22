/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.miage.beans;
import java.sql.*;

/**
 *
 * @author ADMIN
 */
public class client {

    private String login; //Login du client
    private String mdp; // Mot de passe du client
   
    
    public client(){
        super();
    }
    public client(String login, String mdp){
        this.login = login;
        this.mdp = mdp;
    }
    
    public String getLogin(){
        return login;
    }
    public void setLogin(String login){
        this.login = login; 
    }
    
    public String getMdp(){
        return login;
    }
    public void setMdp(String mdp){
        this.mdp = mdp; 
    }
    
    /**
     *@fonction pour la connexion à la base de données
     */
    public static Connection connecterBD(){
         try{
             Class.forName("com.mysql.cj.jdbc.Driver");
             String url = "jdbc:mysql://localhost:3306/bd_client";
             Connection con = DriverManager.getConnection(url, "root", "root");
             System.out.println("Connection établie avec succès");
             return con;
         }
         catch(Exception e){
             e.printStackTrace();
         }
         return null;
     }
    public static void main(String[] args){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
             String url = "jdbc:mysql://localhost:3306/bd_client";
             Connection con = DriverManager.getConnection(url, "root", "root");
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery("select * from client;");
             System.out.println("Login    Password    Role");
             while(rs.next()){
                 if(rs.getString(3).equals("client")){
                     System.out.println(rs.getString(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3));
                 }
             }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
