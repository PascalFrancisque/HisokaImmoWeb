<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8"/>
		<title>CONTACT-SITE</title>
		<link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="fontawesome/css/all.min.css"/>
		<link rel="stylesheet" href="css/styles.css"/>
		<script src="js/codes.js"></script>
		<script src="bootstrap-4.3.1/js/bootstrap.js"></script>
		<script src="typeahead/bootstrap3-typeahead.js"></script>
		
		
		
		<script src=""></script>
	</head>
	
	<header>
	<!-- NAVIGATION -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<!--   LOGO DU SITE  -->
		<div class="collapse navbar-collapse">
		<a class="navbar-brand" href="#">Hisoka RealEstate<a>
				<!--   MENU  -->
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item">
						<a class="nav-link" href="#">Compte <i class="fas fa-user-circle"></i></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Favoris <i class="far fa-heart"></i></a>
					</li>
				</ul>
				
				<!-- BOUTON DEPOSER UNE ANNONCE -->
				<button class="btn btn-outline-primary" type="submit">DÃ©poser une annonce</button>
			</div>
	</nav>
</header>
	
	<body>
	
	
	
			<section class="col-lg-7 offset-lg-1">
		<div class="container">
		
		<div class="alert alert-primary text-center" role="alert">
                    <h2>Contact</h2>
            </div><br>
			
			
			
	<h6>Pour toute demande d'information, merci de nous envoyer le formulaire ci-dessous</h6>
	<br>

	
	
	<form action="/ma-page-de-traitement" method="post">
		<div>
			
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="basic-addon1">Nom</span>
				</div>
				<input type="text"  class="form-control" id="name" name="user_name" class=> 
			</div>


			<fieldset>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
				     <span class="input-group-text" id="basic-addon1">e-mailâ¯</span>
				</div>
				<input type="email"  class="form-control" id="mail" name="user_mail" class=> 
		
				
			</fieldset>
		
			<fieldset>
			
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="basic-addon1">Message :</span>
				</div>
				
				<textarea class="form-control" rows="5" id="comment"></textarea>
			</div>
			
			
				
			</fieldset>
			<button type="submit" class="btn btn-primary">Envoyer</button>
			<!--input type="submit" value="Envoyer"--> 
		
		</form>
		</section>
		</div>
	
</body>

<!-- Footer -->
<footer id="sticky-footer" class="text-center">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <!--   LOGO DU SITE  -->
        <div class="collapse navbar-collapse">
            <!--   MENU  -->
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <!-- Links -->
                <li class="nav-item">
                    <a class="nav-link" href="#!">Qui-sommes-nous ?</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost/realestate/cgv.html#!">CGV</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost/realestate/contact-site.html#!">Contact-site</a>
                </li>

                <!-- Social buttons -->
                <li class="nav-item">
                    <a class="nav-link">
                        <i class="fab fa-facebook-f"> </i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">
                        <i class="fab fa-twitter"> </i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">
                        <i class="fab fa-google-plus-g"> </i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">
                        <i class="fab fa-linkedin-in"> </i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">Â© 2019 Copyright : Hisoka RealEstate</a>

                </li>
            </ul>
        </div>
    </nav>


</footer>

</html>
	