<%-- 
    Document   : accueil
    Created on : 19 janv. 2022, 21:29:59
    Author     : ADMIN
--%>

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
        <link rel="stylesheet" href="bootstrap/css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="bootstrap/css/style.css"/>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

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
                        <li><i class="fa fa-user-o"></i><p style="color:white;"><%=session.getAttribute("login1")%></p>
                        </li>
                        <li class="btn" style="color:white;">
                           <a href="authentification.jsp"/> Se déconnecter
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
                                        <span>Gestion de la boutique</span>
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
                        <li class="active"><a href="#">Accueil</a></li>
                        <li><a href="gestionClients.jsp">Liste des Clients</a></li>
                        <li><a href="gestionStock.jsp">Liste des Produits</a></li>
                        <li><a href="gestionCommande.jsp">Liste des Commandes</a></li>
                        <li><a href="./catalogue.jsp">Catalogue des Produits pour la Clientèle</a></li>
                    </ul>
                    <!-- /NAV -->
                </div>
                <!-- /responsive-nav -->
            </div>
            <!-- /container -->
        </nav>
        <!-- /NAVIGATION -->
        <% if (request.getAttribute("msg")!=null){ %>
        <h3><%=request.getAttribute("msg")%></h3>
        <% } %>
       <header>
            <div id="newsletter" class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="newsletter">
                                <p><strong>Ajouter un produit</strong></p>
                                <form method="post" action="enreggistrerProduit" enctype="multipart/form-data">
                                    <input class="input" type="text" name="nomProduit" placeholder="Saisir le nom  du produit" required="required" /></br>
                                    <input class="input" type="text" name="prixProduit" placeholder="Saisir le prix(FCFA) en quatre chiffres" pattern="[0-9]{4}[FCFA]{4}" required="required"/></br></br>
                                    <select name="categorie" required="">
                                        <option value="">Catégorie Produit</option>
                                        <option value="Accessoires">Accessoires</option>
                                        <option value="Cameras">Caméras</option>
                                        <option value="Ordinateurs">Ordinateurs</option>
                                        <option value="Smartphones">Smartphones</option>
                                    </select></br></br>
                                    <input class="input" type="file" required="required" name="imgProduit"/></br>
                                    <button class="newsletter-btn" type="submit">Ajouter</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
        </header>
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
