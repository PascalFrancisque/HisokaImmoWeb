<%@ page language="java" contentType ="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>Depot Annonce</title>
<link rel="stylesheet" href="bootstrap-4.3.1/css/bootstrap.min.css" />
<link rel="stylesheet" href="fontawesome/css/all.min.css">
<link rel="stylesheet" href="css/style.css" />
<script src="jquery/jquery-3.4.1.js"></script>
<script src="bootstrap-4.3.1/js/bootstrap.js"></script>
<script src="jQuery-Bootstrap-4-Typeahead/bootstrap3-typeahead.js"></script>
<script src="js/realestate.js"></script>
</head>

<!-- <div class="container">	 -->

<body>
	<!--   ENTETE/HEADER  -->
	<%@include file="header.jsp"%>
	<section id="section_depot" class="container">
		<!-- CONTENU / CONTENT -->
		<div class="col-lg-12 col text-center">
			<div id="titre">
				<h2>
					Déposer votre annonce <i class="fas fa-file-contract"></i>
				</h2>
			</div>
		</div>

		<form id="depot" action="Envoi d'un advertisement" method="POST"
			class="was-validated">

			<div class="row">
				<div class="col-lg-12">
					<div class="form-row">
						<div class="offset-2 col-lg-4">
							<div class="input-group mb-4">
								<div class="input-group-prepend">
									<label class="input-group-text" for="transaction_type">Type
										de transaction</label>
								</div>
								<select class="custom-select" name="transaction_type"
									id="transaction_type" required>
									<option selected></option>
									<option value="location">Location</option>
									<option value="vente">Vente</option>
								</select>
								<div class="valid-feedback">Valid.</div>
								<div class="invalid-feedback">Please fill out this field.</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="input-group mb-4">
								<div class="input-group-prepend">
									<label class="input-group-text" for="type_bien">Type de
										biens</label>
								</div>
								<select class="custom-select" name="type_bien" id="type_bien"
									onchange="hideElement(this);" required>
									<option selected></option>
									<option value="appartement">Appartement</option>
									<option value="maison">Maison</option>
									<option value="parking">Parking</option>
									<option value="terrain">Terrain</option>
									<option value="commercial">Local commercial</option>
									<option value="atypique">Atypique</option>
								</select>
								<div class="valid-feedback">Valid.</div>
								<div class="invalid-feedback">Please fill out this field.</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="col-lg-12">
					<div class="form-row">
						<div class="offset-2 col-lg-4">
							<div class="input-group mb-4">
								<div class="input-group-prepend">
									<span class="input-group-text">Surface</span>
								</div>
								<input class="form-control" type="number" name="area" id="area"
									min="0" required>
								<div class="input-group-append">
									<span class="input-group-text">m²</span>
								</div>
								<div class="valid-feedback">Valid.</div>
								<div class="invalid-feedback">Please fill out this field.</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="input-group mb-4">
								<div class="input-group-prepend">
									<span class="input-group-text">Prix</span>
								</div>
								<input class="form-control" type="number" name="price"
									id="price" min="0" required>
								<div class="input-group-append">
									<span class="input-group-text">€</span>
								</div>
								<div class="valid-feedback">Valid.</div>
								<div class="invalid-feedback">Please fill out this field.</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<input type="hidden" name="statut" id="statut" placeholder="Statut"
				value="pending">


			<div>
				<div class="row">
					<div class="col-lg-12">
						<div class="form-row">
							<div class="offset-2 col-lg-4">
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text">Ville</span>
									</div>
									<input class="form-control" type="text" name="city" id="city"
										required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
							</div>
							<input type='hidden' id='cityid' />
							<div class="col-lg-4">
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text">Publication</span>
									</div>
									<input class="form-control" type="date" name="release_date"
										id="release_date" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
							</div>
						</div>
					</div>
				</div>



			</div>


			<div id="appartement">

				<div class="row">
					<div class="col-lg-12">
						<div class="form-row">
							<div class="offset-2 col-lg-4">
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text">Nombre de pièces</span>
									</div>
									<input class="form-control" type="number" name="rooms"
										id="rooms" min="0" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text">Nombre d'étages</span>
									</div>
									<input class="form-control" type="number" name="floor"
										id="floor" min="0" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="form-row">
							<div class="offset-2 col-lg-4">
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<label class="input-group-text" for="energy_level">Consommation
											Energétique</label>
									</div>
									<select class="custom-select" name="energy_level"
										id="energy_level" required>
										<option selected></option>
										<option value="A">A</option>
										<option value="B">B</option>
										<option value="C">C</option>
										<option value="D">D</option>
										<option value="E">E</option>
										<option value="F">F</option>
										<option value="G">G</option>
									</select>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<label class="input-group-text" for="gas_level">Emission
											de Gaz</label>
									</div>
									<select class="custom-select" name="gas_level" id="gas_level"
										required>
										<option selected></option>
										<option value="A">A</option>
										<option value="B">B</option>
										<option value="C">C</option>
										<option value="D">D</option>
										<option value="E">E</option>
										<option value="F">F</option>
										<option value="G">G</option>
									</select>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12 mb-4">
						<div class="form-row">
							<div class="offset-2 col-lg-2">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										name="elevator" id="elevator"> <label
										class="custom-control-label" for="elevator">Ascenseur</label>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										name="parking" id="parking"> <label
										class="custom-control-label" for="parking">Parking</label>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="custom-control custom-checkbox">
									<input class="custom-control-input" type="checkbox"
										name="balcony" id="balcony"> <label
										class="custom-control-label" for="balcony">Balcon</label>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="custom-control custom-checkbox">
									<input class="custom-control-input" type="checkbox"
										name="terrace" id="terrace"> <label
										class="custom-control-label" for="terrace">Terrasse</label>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="row">
					<div class="col-lg-12 mb-4">
						<div class="form-row">
							<div class="offset-2 col-lg-2">
								<div class="custom-control custom-checkbox">
									<input class="custom-control-input" type="checkbox"
										name="garage" id="garage"> <label
										class="custom-control-label" for="garage">Garage</label>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="custom-control custom-checkbox">
									<input class="custom-control-input" type="checkbox"
										name="alarm" id="alarm"> <label
										class="custom-control-label" for="alarm">Alarme</label>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="custom-control custom-checkbox">
									<input class="custom-control-input" type="checkbox"
										name="cellar" id="cellar"> <label
										class="custom-control-label" for="cellar">Cave</label>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="custom-control custom-checkbox">
									<input class="custom-control-input" type="checkbox"
										name="digicode" id="digicode"> <label
										class="custom-control-label" for="digicode">Digicode</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div id="maison">

				<div class="row">
					<div class="col-lg-12">
						<div class="form-row">
							<div class="offset-2 col-lg-4">
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text">Nombre de pièces</span>
									</div>
									<input class="form-control" type="number" name="rooms"
										id="rooms" min="0" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text">Surface Terrain</span>
									</div>
									<input class="form-control" type="number" name="area" id="area"
										min="0" required>
									<div class="input-group-append">
										<span class="input-group-text">m²</span>
									</div>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
							</div>
						</div>
					</div>
				</div>



				<div class="row">
					<div class="col-lg-12">
						<div class="form-row">
							<div class="offset-2 col-lg-4">
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<label class="input-group-text" for="energy_level">Consommation
											Energétique</label>
									</div>
									<select class="custom-select" name="energy_level"
										id="energy_level" required>
										<option selected></option>
										<option value="A">A</option>
										<option value="B">B</option>
										<option value="C">C</option>
										<option value="D">D</option>
										<option value="E">E</option>
										<option value="F">F</option>
										<option value="G">G</option>
									</select>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<label class="input-group-text" for="gas_level">Emission
											de Gaz</label>
									</div>
									<select class="custom-select" name="gas_level" id="gas_level"
										required>
										<option selected></option>
										<option value="A">A</option>
										<option value="B">B</option>
										<option value="C">C</option>
										<option value="D">D</option>
										<option value="E">E</option>
										<option value="F">F</option>
										<option value="G">G</option>
									</select>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 mb-4">
						<div class="form-row">
							<div class="offset-2 col-lg-2">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input" name="pool"
										id="pool"> <label class="custom-control-label"
										for="pool">Piscine</label>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="custom-control custom-checkbox">
									<input class="custom-control-input" type="checkbox"
										name="house_alarm" id="house_alarm"> <label
										class="custom-control-label" for="house_alarm">Alarme</label>
								</div>
							</div>
							<div class="col-lg-2">
								<div class="custom-control custom-checkbox">
									<input class="custom-control-input" type="checkbox"
										name="house_cellar" id="house_cellar"> <label
										class="custom-control-label" for="house_cellar">Cave</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="form-row">
				<div class="offset-2 col-lg-8">
					<div class="input-group mb-4 ">
						<div class="input-group-prepend">
							<span class="input-group-text">Description du bien</span>
						</div>
						<textarea class="form-control" type="textarea" name="description"
							id="description" row="5" col="100" required></textarea>
						<div class="valid-feedback">Valid.</div>
						<div class="invalid-feedback">Please fill out this field.</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 mb-4">
					<div class="form-row">
						<div class="offset-2 col-lg-2">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" name="cgv"
									id="cgv" required> <label class="custom-control-label"
									for="cgv">J'accepte les CGV*</label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="form-row">
				<div class="col-lg-12 mb-5">
					<div class="col text-center">
						<button type="submit" class="btn btn-primary center-block"
							disabled>Soumettre votre annonce</button>
					</div>
				</div>
			</div>
		</form>
	</section>



	<!--   PIED-PAGE/FOOTER  -->
	<%@include file="footer.jsp"%>
</body>

</html>