<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Inscription E-commerce</title>

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
            <header>
		<div id="top-header">
                    <div class="container text-center">
                        <div class="header-links pull-left">
                            <h1 style="color:white;">Bienvenu dans votre boutique en ligne</h1>
                        </div>
                    </div>
                </div>
                <% if (request.getAttribute("msg1")!=null){ %>
                <h3><%=request.getAttribute("msg1")%></h3>
                <% } %>
                
                <% if (request.getAttribute("msg2")!=null){ %>
                <h3><%=request.getAttribute("msg2")%></h3>
                <% } %>
		<div id="newsletter" class="section">
                    <!-- container -->
                    <div class="container">
                        <!-- row -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="newsletter">
                                    <p><strong>Inscrivez-vous</strong></p>
                                    <form method="post" action="inscription">
                                        <input class="input" type="text" name="login" placeholder="Saisir 7 caractères minuscules" pattern="[a-z]{7}" required="required" maxlength="7"/></br>
                                        <input class="input" type="password" name="passWord" placeholder="Saisir 5 caractères" pattern="[a-z A-Z 0-9]{5}" required="required" maxlength="5"/></br></br>
                                        <select name="role" required="">
                                            <option value="">Choisir rôle</option>
                                            <option value="client">Client</option>
                                            <option value="administrateur">Administrateur</option>
                                        </select></br></br>
                                        <button class="newsletter-btn" type="submit">Soumettre</button>
                                    </form>
                                    <a href="authentification.jsp"/>Se connecter
                                </div>
                            </div>
                        </div>
                        <!-- /row -->
                    </div>
                    <!-- /container -->
		</div>
            </header>
            <section align="center">
                <div class="header-links pull">
                    <img src="icons8-shopping-cart-24.png"/>
                    Identifiez-vous pour faire vos achats en ligne
                </div>
            </section>
		
            <footer id="footer">
		<div id="bottom-footer" class="section">
                    <div class="container">
			<div class="row">
                            <div class="col-md-12 text-center">
				<span class="copyright">
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by SSF
				</span>
                            </div>
			</div>
                    </div>
		</div>
            </footer>
	</body>
</html>
