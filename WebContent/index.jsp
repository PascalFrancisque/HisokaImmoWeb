<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<title> ACCUEIL </title>
		<%@ include file ="head.html" %>
	</head>
	
	<body >
		<!-- <p onclick="makeRequired();">click</p> -->
		<!-- <p onclick="hideAllDivs()">click</p> -->
		
		<div class="container">
		<%@ include file ="header.jsp" %>		
		
		
		<!-- CONTENU / CONTENT -->
		<section class="border">
			<div class="container " id="background_recherche">
				<div class="container" id="recherche">
					<form id="research" action="#" method="GET">
					<header><h1>Votre recherche</h1></header>
					<ul class="nav nav-tabs">
						<li class="nav-item">
							<a class="nav-link active" id="tab_louer">Louer</a>
						</li>
						<li class="nav-item">
							<a class="nav-link " id="tab_acheter">Acheter</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="vendre">Vendre</a>
						</li>
					</ul>
					<!-- SELECT ACHAT/VENTE  -->
					<div class="row mt-3 ">
						<div class="col-lg-12">
							<div class="form-row ">
								<!-- <div class="col-lg-3 offset-lg-3"></div>-->
								<div class="col-12"> 
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1">Dans quelle ville ?</span>
										</div>
										<input class=" form-control form-control-lg typeahead" id="searchcity" type="text">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1"><i class="fas fa-search"></i>
											</span>
										</div>
									</div>								
								</div>
								<div class="col-lg-3"></div>
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
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<label class="input-group-text" for="categories">Type de biens</label>
										</div>
										<select class="custom-select" name="categories" id="categories">
											
										</select>
									</div>
								</div>
							</div>
						</div>	
					</div>
					<!-- SURFACE -->
					<div class="row">
						<div class="col-lg-12">
							<div class="form-row">
								<div class="col-6">
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1">Surface minimum</span>
										</div>
										<input class="form-control" type="number" name="minsurface" id="minsurface" min="0">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1">m²</span>
										</div>
									</div>
								</div>
								<div class="col-6">
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1">Surface maximum</span>
										</div>
										<input class="form-control" type="number" name="maxsurface" id="maxsurface" min="0">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1">m²</span>
										</div>
									</div>
								</div>
							</div>
						</div>			
					</div>	
					<!-- PRIX -->
					<div class="row">
						<div class="col-lg-12">
								<div class="form-row">
									<div class="col-6">
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1">Prix minimum</span>
											</div>
											<input class="form-control " type="number" name="minprice" id="minprice" min="0" required>
											<div class="input-group-prepend needs-validation">
												<span class="input-group-text" id="basic-addon1">€</span>
												<div class="valid-feedback">Valide</div>
												<div class="invalid-feedback">Prix à  partir de.</div>
											</div>
										</div>
									</div>
									<div class="col-6">
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1">Prix maximum</span>
											</div>
											<input class="form-control" type="number" name="maxprice" id="maxprice" min="0">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1">€</span>
											</div>
										</div>
									</div>
								</div>
						</div>			
					</div>
					<!-- CRITERES -->
					<div class="row">
						<div class="col-lg-12 mb-3">	
							<div class="form-check form-check-inline appartement">			
								<input class="form-check-input " type="checkbox" name="elevator" id="elevator" value="elevator">
								<label class="form-check-label" for="elevator">Ascenseur</label>
							</div>
							<div class="form-check form-check-inline appartement">			
								<input class="form-check-input " type="checkbox" name="parking" id="parking" value="parking">
								<label class="form-check-label" for="parking">Parking</label>
							</div>
							<div class="form-check form-check-inline house">
								<input class="form-check-input" type="checkbox" name="pool" id="pool" value="pool">
								<label class="form-check-label" for="pool">Piscine</label>
							</div>
							<div class="form-check form-check-inline appartement">
								<input class="form-check-input" type="checkbox" name="balcony" id="balcony" value="balcony">
								<label class="form-check-label"  for="balcony">Balcon</label>
							</div>
							<div class="form-check form-check-inline appartement">
								<input class="form-check-input" type="checkbox" name="terrace" id="terrace" value="terrace">
								<label class="form-check-label"  for="terrace">Terrasse</label>
							</div>							
							<div class="form-check form-check-inline appartement">
								<input class="form-check-input" type="checkbox" name="garage"  id="garage" value="garage">
								<label class="form-check-label"  for="garage">Garage</label>
							</div>
							<div class="form-check form-check-inline appartement house">
								<input class="form-check-input" type="checkbox" name="cellar" id="cellar" value="cellar">
								<label class="form-check-label"  for="cellar">Cave</label>
							</div>
							<div class="form-check form-check-inline appartement house">
								<input class="form-check-input" type="checkbox" name="alarm" id="alarm" value="alarm">
								<label class="form-check-label"  for="alarm">Alarme</label>
							</div>
							<div class="form-check form-check-inline appartement">
								<input class="form-check-input" type="checkbox" name="digicode" id="digicode" value="digicode">
								<label class="form-check-label"  for="digicode">Digicode</label>
							</div>
							<div class="form-check form-check-inline appartement ">
								<input class="form-check-input" type="checkbox" name="intercom" id="intercom" value="intercom">
								<label class="form-check-label"  for="intercom">Intercom</label>
							</div>
						</div>
					</div>
					<div class="row ">
						<div class="col-lg-12 mb-3">
							<div class="form-row">
								<div class="col-12 col text-center">
									<input class="btn btn-success " type="submit" value="RECHERCHER" >
								</div>
							</div>

							</select> 
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 mb-3">
						</div>
					</div>
				</form>
			</div>			
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
							<img src="images\appart1.jpg" class="card-img-top" alt="house">
							<div class="card-body">
								
								<h5 class="card-title">340 000 €</h5>
								<p class="card-text">Bien à  saisir !</p>
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
							<img src="images\appart2.jpg" class="card-img-top img-fluid" alt="house">
							<div class="card-body">
								
								<h5 class="card-title">340 000 €</h5>
								<p class="card-text">Bien à saisir !</p>
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
							<img src="images\appart3.jpg" class="card-img-top" alt="house">
							<div class="card-body">
								
								<h5 class="card-title">340 000 €</h5>
								<p class="card-text">Bien à saisir !</p>
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
							<img src="images\appart4.jpg" class="card-img-top" alt="house">
							<div class="card-body">
								
								<h5 class="card-title">340 000 €</h5>
								<p class="card-text">Bien à saisir !</p>
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
		</div>
		</aside>
		<!--   PIED-PAGE/FOOTER  -->
		<%@ include file ="footer.jsp" %>
		</div>
    </body>
    
</html>
	