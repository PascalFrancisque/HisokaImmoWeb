<%@ page language="java" contentType ="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<title> Contact </title>
	<link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css" />
	<link rel="stylesheet" href="fontawesome/css/all.min.css">
	<link rel="stylesheet" href="css/style.css" />
	<script src="jquery/jquery-3.4.1.js"></script>
	<script src="bootstrap-4.3.1/js/bootstrap.js"></script>
	<script src="jQuery-Bootstrap-4-Typeahead/bootstrap3-typeahead.js"></script>
	<script src="js/realestate.js"></script>
</head>

<body class="container">

	<!--   ENTETE/HEADER  -->
	<%@include file="header.jsp"%>

	<section class="section_contact">
		<!-- CONTENU / CONTENT -->
		<div class="col-lg-12 col text-center">
			<div id="titre">
				<h2>Contact <i class="far fa-address-card"></i></h2>
			</div>
		</div>

		<form id="contact" action="Envoi de demande d'information" method="post">

			<div class="row">
				<div class="col-lg-12 mb-4">
					<div class="form-row">
						<div class="offset-4 col-lg-2">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" name="info" id="info">
								<label class="custom-control-label" for="info">Plus d'infos</label>
							</div>
						</div>
						<div class="col-lg-2">
							<div class="custom-control custom-checkbox">
								<input class="custom-control-input" type="checkbox" name="rappel" id="rappel">
								<label class="custom-control-label" for="rappel">Etre rappelé</label>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12 mb-4">
					<div class="form-row">
						<div class="offset-4 col-lg-2">
							<div class="custom-control custom-checkbox">
								<input class="custom-control-input" type="checkbox" name="rdv"
									id="rdv">
								<label class="custom-control-label" for="rdv">Rendez-vous</label>
							</div>
						</div>
						<div class="col-lg-2">
							<div class="custom-control custom-checkbox">
								<input class="custom-control-input" type="checkbox" name="photos" id="photos">
								<label class="custom-control-label" for="photos">Plus de photos</label>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="offset-3 col-lg-6">
				<div class="input-group mb-4">
					<div class="input-group-prepend">
						<span class="input-group-text">Détail de votre demande</span>
					</div>
					<textarea class="form-control" type="textarea" name="description" id="description" row="5"
						col="100"></textarea>
				</div>
			</div>

			<div class="offset-3 col-lg-6">
				<div class="input-group mb-4">
					<div class="input-group-prepend">
						<span class="input-group-text">Nom</span>
					</div>
					<input class="form-control" type="text" name="nom" id="nom" required>
				</div>
			</div>
			<div class="offset-3 col-lg-6">
				<div class="input-group mb-4">
					<div class="input-group-prepend">
						<span class="input-group-text">Email</span>
					</div>
					<input class="form-control" type="email" name="email" id="email" required>
				</div>
			</div>
			<div class="offset-3 col-lg-6">
				<div class="input-group mb-4">
					<div class="input-group-prepend">
						<span class="input-group-text">Téléphone</span>
					</div>
					<input class="form-control" type="tel" name="phone" id="phone" required>
				</div>
			</div>

			<div class="form-row">
				<div class="col-lg-12 mb-5">
					<div class="col text-center">
						<button type="submit" class="btn btn-primary" disabled>Contacter l'advertiser</button>
					</div>
				</div>
			</div>
		</form>
	</section>

	<!--   PIED-PAGE/FOOTER  -->
	<%@include file="footer.jsp"%>
</body>

</html>