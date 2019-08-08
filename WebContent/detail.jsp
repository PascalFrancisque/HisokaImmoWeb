<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<title> DETAIL </title>
		<%@ include file ="head.html" %>
		<%@ include file ="header.jsp" %>	
	</head>
	
	<body>
		<div id="page-container">

		<!-- CONTENU / CONTENT -->
		<section>
			<div class="container">
				<header><h1></h1></header>
				<div class="row">
					<div class="col-lg-8">
						<div class="card">
							<div class="card-header">
								Bien en détail
							</div>
							<div class="card-body">
								<h3 class="card-title text-right">280 000 €</h3>
								<p class="text-right"><a href="#">Mettre en favori <i class="fas fa-heart"></i></a></p>
								<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
									<div class="carousel-inner">
										<div class="carousel-item active side-crop">
										<img src="src/immo1.png" class="d-block w-100" alt="...">
										</div>
										<div class="carousel-item side-crop">
										<img src="src/immo2.png" class="d-block w-100" alt="...">
										</div>
										<div class="carousel-item side-crop">
										<img src="src/immo4.png" class="d-block w-100" alt="...">
										</div>
									</div>
									<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
										<span class="carousel-control-prev-icon" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a>
									<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
										<span class="carousel-control-next-icon" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<p class="card-text">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
								<a href="#" class="btn btn-primary">Go somewhere</a>
							</div>
						</div>
					</div>
					
					<div class="col-lg-4">
						<div class="card" style="width: 18rem;">
							<div class="card-body">
								<h5 class="card-title">Contactez l'agence</h5>
								<p class="card-text">Stephane Plaza Immobilier</p>
								<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
								<a href="contact.jsp" class="btn btn-primary">Contacter</a>
							</div>
						</div>
					</div>
				</div>
				</div>		
		</section>

		<!--   PIED-PAGE/FOOTER  -->
		<%@ include file ="footer.jsp" %>
		</div>
	</body>
</html>
	