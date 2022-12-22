<%-- 
    Document   : gestionClients
    Created on : 19 janv. 2022, 21:34:11
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Accueil Administrateur - E-commerce</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="bootstrap/css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="bootstrap/css/slick-theme.css"/>

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="bootstrap/css/nouislider.min.css"/>

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="../bootstrap/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="bootstrap/css/style.css"/>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>
            table.table td a 
            {
                color: #a0a5b1;
                display: inline-block;
                margin: 0 5px;
             }
            table.table td a.edit 
            {
                color: #FFC107;
            }
            table.table td a.delete 
            {
                color: #E34724;
            }
            table.table td i 
            {
                font-size: 19px;
            }  
        </style>
    </head>
    <body>
        <!-- HEADER -->
        <header>
            <!-- TOP HEADER -->
            <div id="top-header">
                <div class="container">
                    <ul class="header-links pull-left">
                        <li><img src="icons8-shopping-cart-24.png"/></li>
                        <li style="color:white;">Bienvenu dans votre boutique en ligne</li>
                    </ul>
                    <ul class="header-links pull-right">
                        <li><i class="fa fa-user-o"></i><p style="color:white;"><%=session.getAttribute("login1")%></p> </li>
                        <li class="btn" style="color:white;">
                            <a href="authentification.jsp"/>Se déconnecter
                        </li>
                    </ul>
                </div>
            </div>
            <!-- /TOP HEADER -->

            <!-- MAIN HEADER -->
            <div id="header">
                    <!-- container -->
                <div class="container">
                        <!-- row -->
                    <div class="row">
                        <!-- ACCOUNT -->
                        <div class="col-md-3 clearfix">
                            <div class="header-ctn">
                                <!-- Cart -->
                                <div class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                        <i class="fa fa-shopping-cart"></i>
                                        <span>Gestion des Clients</span>
                                        <div class="qty"><!-- Le nombre de produits commaandés --></div>
                                    </a>
                                </div>
                                <!-- /Cart -->

                                <!-- Menu Toogle -->
                                <div class="menu-toggle">
                                    <a href="#">
                                        <i class="fa fa-bars"></i>
                                        <span>Menu</span>
                                    </a>
                                </div>
                                <!-- /Menu Toogle -->
                            </div>
                        </div>
                        <!-- /ACCOUNT -->
                    </div>
                    <!-- row -->
                </div>
                <!-- container -->
            </div>
            <!-- /MAIN HEADER -->
        </header>
        <!-- /HEADER -->
        <!-- NAVIGATION -->
        <nav id="navigation">
            <!-- container -->
            <div class="container">
                <!-- responsive-nav -->
                <div id="responsive-nav">
                    <!-- NAV -->
                    <ul class="main-nav nav navbar-nav">
                        <li><a href="accueil.jsp">Accueil</a></li>
                        <li class="active"><a href="#">Liste des Clients</a></li>
                        <li><a href="gestionStock.jsp">Liste des Produits</a></li>
                        <li><a href="gestionCommande.jsp">Liste des Commandes</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- /NAV -->
        <!-- NAV -->
         <nav id="navigation">
            <!-- container -->
            <%
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/bd_client";
                Connection con = DriverManager.getConnection(url, "root", "root");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("Select * From client;");
            %>
            <div class="container">
                <!-- responsive-nav -->
                <div id="responsive-nav">
                    <!-- container -->
                    <ul class="main-nav nav navbar-nav">
                        <table class="table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Login</th>
                                    <th>Mot de passe</th>
                                    <th>Role</th>
                                </tr>
                                <%
                                    while(rs.next()){
                                    if(rs.getString(4).equals("client")){
                                %>
                            </thead>
                            <tbody> 
                                <tr>
                                    <td><%=rs.getInt(1)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                                </tr>
                            </tbody>
                            <%
                                }
                               }   
                              rs.close();
                            %>
                        </table>
                    </ul>
                    <!-- /NAV -->
                </div>
                <!-- /responsive-nav -->
            </div>
            <!-- /container -->
        </nav>
        <!-- /NAVIGATION -->
        <!-- FOOTER -->
        <footer id="footer">
            <!-- top footer -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">A propos de nous</h3>
                                <ul class="footer-links">
                                    <li><i class="fa fa-map-marker"></i>UGB Saint-Louis</li>
                                    <li><i class="fa fa-phone"></i>+221 77 381 62 95</li>
                                    <li><i class="fa fa-envelope-o"></i>serigne12.fonseca@gmail.com</li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Categories</h3>
                                <ul class="footer-links">
                                    <li>Ordinateurs</li>
                                    <li>Smartphones</li>
                                    <li>Cameras</li>
                                    <li>Accessories</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                <!-- /container -->
                </div>
            </div>
            <!-- /top footer -->

                <!-- bottom footer -->
            <div id="bottom-footer" class="section">
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <span class="copyright">
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <p>SSF</p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </span>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /bottom footer -->
        </footer>
        <!-- /FOOTER -->

        <!-- jQuery Plugins -->
        <script src="bootstrap/js/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="bootstrap/js/slick.min.js"></script>
        <script src="bootstrap/js/nouislider.min.js"></script>
        <script src="bootstrap/js/jquery.zoom.min.js"></script>
        <script src="bootstrap/js/main.js"></script>
    </body>
</html>

