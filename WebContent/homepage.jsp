<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8"/>
		<title> ACCUEIL </title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="fontawesome/css/all.min.css" >
		<link rel="stylesheet" href="css/styles.css"/>
		<script src="js/code.js"></script>
		<script src="js/ajaxSelection.js"></script>
	</head>
	
	<body >
		<!-- <p onclick="makeRequired();">click</p> -->
		<p onclick="hideAllDivs()">click</p>
		
		
		
		
		<div class="container">
		<?php 
		echo file_get_contents('header.html');
		?>		
		
		
		<!-- CONTENU / CONTENT -->
		<section class="border">
			<div class="container " id="background_recherche">
				<div class="container " id="recherche">
					<form action="#" method="POST">
					<header><h1>Votre recherche</h1></header>
					<!-- SELECT ACHAT/VENTE  -->
					<div class="row mt-3">
						<div class="col-lg-12">
							<div class="form-row">
								<div class="input-group mb-3">
								<select class="form-control form-control-sm" name="action" id="action">
									<option value="">-- Type de transaction --</option>
									<option value="louer">Louer</option>
									<option value="acheter">Acheter</option>
								</select>
								</div>
							</div>
						</div>	
					</div>		
					<!-- SELECT ACHAT/VENTE && TYPE DE BIENS -->
					<div class="row">
						<div class="col-lg-12">
							<div class="form-row">
								<div class="col-6">
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1">Nombre de pièces</span>
										</div>
										<input class="form-control" type="number" name="rooms" id="rooms" min="0">
									</div>
								</div>
								<div class="col-6">
									<select class="form-control form-control-sm" name="categories" id="categories" onclick="ajaxSelection();">
											<option value="">-- Type de biens --</option>
											<option value="appartement">Appartement</option>
											<option value="maison">Maison</option>
											<option value="parking">Parking</option>
											<option value="terrain">Terrain</option>
											<option value="commercial">Local commercial</option>
											<option value="atypique">Atypique</option>
									</select>
								</div>
							</div>
						</div>	
					</div>		
					<!-- NB DE PIECES && PRIX -->
					<div class="row">
						<div class="col-lg-12">
								<div class="form-row">
									<div class="col-6">
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1">Prix minimum</span>
											</div>
											<input class="form-control" type="number" name="minprice" id="minprice" min="0">
										</div>
									</div>
									<div class="col-6">
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1">Prix maximum</span>
											</div>
											<input class="form-control" type="number" name="maxprice" id="maxprice" min="0">
										</div>
									</div>
								</div>
						</div>			
					</div>
					<!-- CRITERES -->
					<div class="row">
						<div class="col-lg-12 mb-3">	
							<div class="form-check form-check-inline">			
								<input class="form-check-input" type="checkbox" name="elevator" id="elevator" value="elevator"><label class="form-check-label" for="elevator">Ascenseur</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="pool" id="pool" value="pool">
								<label class="form-check-label" for="pool">Piscine</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="balcony" id="balcony" value="balcony">
								<label class="form-check-label"  for="balcony">Balcon</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="terrace" id="terrace" value="terrace">
								<label class="form-check-label"  for="terrace">Terrasse</label>
							</div>							
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="garage"  id="garage" value="garage">
								<label class="form-check-label"  for="garage">Garage</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="cellar" id="cellar" value="cellar">
								<label class="form-check-label"  for="cellar">Cave</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="alarm" id="alarm" value="alarm">
								<label class="form-check-label"  for="alarm">Alarme</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="digicode" id="digicode" value="digicode">
								<label class="form-check-label"  for="digicode">Digicode</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 mb-3">		
							<input class="form-control" type="text" placeholder="Ville">
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 mb-3">
							<input class="btn btn-success" type="submit" value="RECHERCHER" >
						</div>
					</div>
				</form>
			</div>				
			<footer>
			</footer>
		</div>
		</section>

		<!--   ASIDE  -->
		<aside>
			<header><h1>Derniers bien ajoutés</h1></header>
			<div class="container">
				<div class="row">
				<div class="col-sm-3">
					<article>
						<div class="card">
							<img src="images\house.png" class="card-img-top" alt="house">
							<div class="card-body">
								
								<h5 class="card-title">Prix</h5>
								<p class="card-text">Title ad</p>
								<div class="row">
									<div class="col-sm-8">
										<a href="#" class="btn btn-primary btn-sm">Voir plus</a>
									</div>
									<div class="col-sm-2">
										<i class="far fa-paper-plane"></i>
									</div>
									<div class="col-sm-2">
										<i class="far fa-heart"></i>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>
				<div class="col-sm-3">
					<article>
						<div class="card">
							<img src="images\house.png" class="card-img-top" alt="house">
							<div class="card-body">
								
								<h5 class="card-title">Prix</h5>
								<p class="card-text">Title ad</p>
								<div class="row">
									<div class="col-sm-8">
										<a href="#" class="btn btn-primary btn-sm">Voir plus</a>
									</div>
									<div class="col-sm-2">
										<i class="far fa-paper-plane"></i>
									</div>
									<div class="col-sm-2">
										<i class="far fa-heart"></i>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>
				<div class="col-sm-3">
					<article>
						<div class="card">
							<img src="images\house.png" class="card-img-top" alt="house">
							<div class="card-body">
								
								<h5 class="card-title">Prix</h5>
								<p class="card-text">Title ad</p>
								<div class="row">
									<div class="col-sm-8">
										<a href="#" class="btn btn-primary btn-sm">Voir plus</a>
									</div>
									<div class="col-sm-2">
										<i class="far fa-paper-plane"></i>
									</div>
									<div class="col-sm-2">
										<i class="far fa-heart"></i>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>
				<div class="col-sm-3">
					<article>
						<div class="card">
							<img src="images\house.png" class="card-img-top" alt="house">
							<div class="card-body">
								
								<h5 class="card-title">Prix</h5>
								<p class="card-text">Title ad</p>
								<div class="row">
									<div class="col-sm-8">
										<a href="#" class="btn btn-primary btn-sm">Voir plus</a>
									</div>
									<div class="col-sm-2">
										<i class="far fa-paper-plane"></i>
									</div>
									<div class="col-sm-2">
										<i class="far fa-heart"></i>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>
			</div>
			<footer></footer>
		</div>
		</aside>
		<p id="click">click</p>
		<script>
		initClick();
		</script>
		<!--   PIED-PAGE/FOOTER  -->
		<?php 
		echo file_get_contents('footer.html');
		?>
		</div>
    </body>
    
</html>
	