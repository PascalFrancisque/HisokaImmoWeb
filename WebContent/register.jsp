<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage ="error.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8" />		
		<script src="jquery/jquery-3.4.1.js"></script>
		<title>Enregistrer</title>		
		<script src="typeahead/bootstrap3-typeahead.js"></script>
		<link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/styles.css"/>
		<script src="js/register.js"></script>
		<link rel="stylesheet" href="fontawesome/css/all.css" type="text/css">
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
					<h2>FORMULAIRE D'INSCRIPTION</h2>
	</div>
		
		
	<section class="col-lg-8 offset-lg-2">
		<form action="/adresse/ou/envoyer/" method="post" class="form-inscription" class="was-validated">
				
			<div>
				<fieldset>

					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text" id="basic-addon1">Titre <span>*</span></span>

							<div class="form-check form-check-inline text-left">
							  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
							  <label class="form-check-label" for="inlineRadio1">Madame</label>
							</div>
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
							  <label class="form-check-label" for="inlineRadio2">Monsieur</label>
							</div>
							
					 </div>
					</div>

					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text" id="basic-addon1">Nom <span>*</span></span>
					  </div>
					  <input type="text" class="form-control">
					</div>

					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text" id="basic-addon1">Prénom <span>*</span></span>
					  </div>
					  <input type="text" class="form-control">
					</div>

					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text" id="basic-addon1">E-mail <span>*</span></span>
					  </div>
					  <input type="email" class="form-control">
					</div>
					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text" id="basic-addon1">Mot de passe <span>*</span></span>
					  </div>
					  <input type="password" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"class="form-control"/>
					  <i class="fa fa-eye"></i>
					</div>

					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text" id="basic-addon1">Confirmer le mot de passe <span>*</span></span>
					  </div>	 
					    <input type= "password" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" class="form-control"/>
					    <i class="fa fa-eye"></i>	
					</div>
					

					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text" id="basic-addon1">Téléphone</span>
					  </div>
					  <input type="phone" pattern="^(?:0|\(?\+33\)?\s?|0033\s?)[1-79](?:[\.\-\s]?\d\d){4}$" class="form-control"/>
					</div>
					<div class="input-group mb-3">
					  <div class="input-group-prepend">
					    <span class="input-group-text" id="basic-addon1">Moderateur </span>
					  </div>
					  <input type="text" class="form-control">
					</div>

					<div class="custom-control custom-checkbox">
					  <input type="checkbox" class="custom-control-input" id="customCheck1">
					  <label class="blue custom-control-label" for="customCheck1">J'accepte les conditions d'utilisation</label>
					</div>
					<!--</div>
					<input type="checkbox" name="accord" value=" true">
					<a href="conditions.html" target="_ blank">J'accepte les conditions d'utilisation</a><br>-->
			   		
			   		<div class="input-group mb-3">
			   		<button type="submit" class="btn btn-primary">S'enregistrer</button>
					</div>
					<!--<input type="submit" value=" S'enregistrer">-->
						</fieldset>
					<label class="red"><span>*</span>&nbsp;Champs obligatoires</label>
					</div>	
			</form>

				<!-- &gt; &lt; -->			
					<!--<label for="nom">Nom : </label>
					<input type="text" name="nom" id ="nom"><br>
					
					<label for ="prenom">PrÃ©nom<span>*</span> :</label>
					<input type="text" name="prenom" id ="prenom"><br>
					
					<label for ="username">Email<span>*</span> :</label>
					<input type="email" name="mail" id ="email"><br>
			
					<label for =" mdp">Mot de passe<span>*</span> :</label>
					<input type="password" name="pwd" id ="mdp"><br>
			
					<label for ="phone">TÃ©lÃ©phone :</label>
					<input type="phone" name="phone" id ="phone" pattern="^(?:0|\(?\+33\)?\s?|0033\s?)[1-79](?:[\.\-\s]?\d\d){4}$"><br>
			
					<span class="hidemoderator">
					<label for="name"> Nom de moderateur :</label>
					<input type="text" name="name" id="name"><br>
					
				<textarea id ="story" name="story" rows="5" cols="100">
				it was a dark and stormy night ...
				</textarea>-->
				
		
	</section>
	</bordy>
	<!--<button onclick="selectPreviousLabel()">REQ ALL</button>-->

		<!--<div class="alert alert-primary" role="alert">
				A simple primary alertâcheck it out!
		</div>-->
	<!-- footer -->
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
                    <a class="nav-link"> © 2019 Copyright : Hisoka RealEstate</a>

                </li>
            </ul>
        </div>
    </nav>

</footer>

</html>
	