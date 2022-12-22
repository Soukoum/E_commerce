/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.miage.beans;

/**
 *
 * @author ADMIN
 */
public class commande {
    produit[] listeProduit;
    private String prix;
    private int  nombreProduits;

    public produit[] getListeProduit() {
        return listeProduit;
    }

    public void setListeProduit(produit[] listeProduit) {
        this.listeProduit = listeProduit;
    }

    public String getPrix() {
        return prix;
    }

    public void setPrix(String prix) {
        this.prix = prix;
    }

    public int getNombreProduits() {
        return nombreProduits;
    }

    public void setNombreProduits(int nombreProduits) {
        this.nombreProduits = nombreProduits;
    }
    
    
}
