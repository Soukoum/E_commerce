/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.miage.beans;

import java.awt.Image;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;
import javax.servlet.http.Part;
/**
 *
 * @author ADMIN
 */
public class produit {
    private String nomProduit;
    private String prix;
    private String categorie;
    private byte[] image;

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public String getNomProduit() {
        return nomProduit;
    }

    public void setNomProduit(String nomProduit) {
        this.nomProduit = nomProduit;
    }

    public String getPrix() {
        return prix;
    }

    public void setPrix(String prix) {
        this.prix = prix;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }
    
    public static void main(String[] args){
        String p = "1";
        String p1;
        String p2;
        int id = Integer.parseInt(p);
        Connection connecter = null;
        String requete = "Select * From produit where idProduit='"+id+"';";
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/bd_client";
            connecter = DriverManager.getConnection(url, "root", "root");
            Statement stmt = connecter.createStatement();
            ResultSet rs = stmt.executeQuery(requete);
            if (rs.next()){
                p1 = rs.getString(2);
                p2 = rs.getString(3);
                
                String requete1 = "INSERT INTO commande VALUES('"+p1+"','"+p2+"');";
                Statement stmt1 = connecter.createStatement();
                stmt1.executeUpdate(requete1);
                System.out.println("Commande validée avec succès");
            }
            else
            {
                System.out.println("Produit non disponible");
            }
            rs.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
