<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>Login</title>
		<script src="js/bootstrap.js" ></script>		
		<link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="css/login.css"/>
		
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
				<button class="btn btn-outline-primary" type="submit">Déposer une annonce</button>
			</div>
	 </nav>
 	</header>

	<body>
		<div class="container">
			
			<div class="alert alert-primary text-center" role="alert">
					<h2>CONNEXION</h2>
			</div>
			
			<div class="row">
				<div class="col-md-4 col-sm-4 col-xs-12"></div>
				<div class="col-md-4 col-sm-4 col-xs-12">

				<form>
					
					 <div class="form-group">
					  	<img class="img img-center img-responsive img-circle" src="images/user_avatar.png">
					    
					    <label for="exampleInputEmail1"><strong>Nom d'utilisateur ou E-mail</strong></label>

					    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
					    <small id="emailHelp" class="form-text text-muted">Nous ne partagerons jamais votre email avec qui que ce soit.</small>
					 </div>
					 <div class="form-group">
					    <label for="exampleInputPassword1"><strong>Mot de passe</strong></label>
					    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
					 </div>
					 <div class="form-group form-check">
					    <input type="checkbox" class="form-check-input" id="exampleCheck1">
					    <label class="form-check-label" for="exampleCheck1">Maintenir la connexion</label>
					    <a href="#"><p class="text-right">Mot de passe oublié</p></a>
					 </div>
					  <button type="submit" class="btn btn-primary">Se connecter</button>
					  <p class="text-left">Vous n'avez pas encore de compte? <a href="http://localhost/realestate/register.html">Créez-en un!</a></p>

				</form>
					<!--<form id="log" class="bodybg">
						<h2 class="text-center">Connexion</h2>
						<img class="img img-center img-responsive img-circle" src="images/avatar.png">
						<div class="form-group"><br>
							<label>Nom d'utilisateur ou E-mail</label>
							<input type="email" class="form-control" placeholder="E-mail">
						</div>
						<div class="form-group">
							<label>Mot de passe</label>
							<input type="password" class="form-control" placeholder="Password">
						</div>
						<div class="checkbox">
							<label><input type="checkbox"> Maintenir la connexion</label>
							<a href="#"><p class="text-right">Mot de passe oublié</p></a>
						</div>
						<button type="submit" class="btn btn-success btn-block">Connecter</button><br>
						<p class="text-left">Vous n'avez pas encore de compte ? <a href="#">Créez-en un !</a></p>
					</form>-->
				</div>
				<!--<div class="col-md-8 col-sm-8 col-xs-120"></div>-->
			</div>
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
	                    <a class="nav-link" href="#!">CGV</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="#!">Contact-site</a>
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
	                    <a class="nav-link">© 2019 Copyright : Hisoka RealEstate</a>

	                </li>
	            </ul>
	        </div>
	    </nav>


	</footer>
<!-- Footer -->


</html>