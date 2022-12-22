<%-- 
    Document   : ordinateurs
    Created on : 29 déc. 2021, 04:14:11
    Author     : ADMIN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Ordinateurs - E-commerce la boutique en ligne</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="../bootstrap/css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="../bootstrap/css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="../bootstrap/css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="../bootstrap/css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="../bootstrap/css/style.css"/>

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
                                            <li><img src="../icons8-shopping-cart-24.png"/></li>
                                            <li style="color:white;">Bienvenu dans votre boutique en ligne</li>
					</ul>
					</ul>
					<ul class="header-links pull-right">
                                            <li><i class="fa fa-user-o"></i><p style="color:white;"><%=session.getAttribute("login1")%></p>
                                            </li>
                                            <li class="btn" style="color:white;">
                                                <a href="../authentification.jsp"/>Se déconnecter
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
										<span>Faites vos Commmandes</span>
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
						<li><a href="../catalogue.jsp">Home</a></li>
						<li class="active"><a href="ordinateurs.jsp">Ordinateurs</a></li>
						<li><a href="smartphones.jsp">Smartphones</a></li>
						<li><a href="cameras.jsp">Cameras</a></li>
						<li><a href="accessoires.jsp">Accessoires</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->
                <div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">Nouveaux Produits</h3>
							<div class="section-nav">
								<ul class="section-tab-nav tab-nav">
									<li class="active"><a data-toggle="tab" href="#tab1">Ordinateurs</a></li>
									<li><a data-toggle="tab">Smartphones</a></li>
									<li><a data-toggle="tab">Cameras</a></li>
									<li><a data-toggle="tab">Accessories</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12">
						<div class="row">
                                                    <%
                                                        Class.forName("com.mysql.cj.jdbc.Driver");
                                                        String url = "jdbc:mysql://localhost:3306/bd_client";
                                                        Connection con = DriverManager.getConnection(url, "root", "root");
                                                        Statement stmt = con.createStatement();
                                                        ResultSet rs = stmt.executeQuery("SELECT * FROM produit;");
                                                    %>
							<div class="products-tabs">
                                                            <%
                                                                while(rs.next()){
                                                            %>
                                                            <!-- tab -->
                                                            <div id="tab1" class="tab-pane active">
                                                                <%
                                                                   if (rs.getString("categorie").equals("Ordinateurs")){
                                                                %>
                                                                <div class="products-slick" data-nav="#slick-nav-1">
                                                                    <!-- product -->
                                                                  
                                                                    <div class="product">
                                                                        <div class="product-img">
                                                                            <img src="../images/<%=rs.getString(4)%>">
                                                                            <div class="product-label">
                                                                                <span class="new">Nouveau</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-body">
                                                                                <h4 class="product-price"><%=rs.getString(5)%></h4>
                                                                        </div>
                                                                        <div class="product-btns">
                                                                            <a href="../afficherProduitClient.jsp?idProduit=<%=rs.getInt(1)%>" />Voir Produit
                                                                        </div>
                                                                        
                                                                    </div>
                                                                        
                                                                    <!-- /product -->
                                                                    <!-- /product -->
                                                                     
                                                                </div>
                                                                <%
                                                                    }
                                                                    }
                                                                    rs.close();
                                                                %>
                                                            </div>  
                                                            <!-- /tab -->
                                                            
							</div> 
                                                                    
						</div>  
					</div>
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
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
		<script src="../bootstrap/js/jquery.min.js"></script>
		<script src="../bootstrap/js/bootstrap.min.js"></script>
		<script src="../bootstrap/js/slick.min.js"></script>
		<script src="../bootstrap/js/nouislider.min.js"></script>
		<script src="../bootstrap/js/jquery.zoom.min.js"></script>
		<script src="../bootstrap/js/main.js"></script>
    </body>
</html>

