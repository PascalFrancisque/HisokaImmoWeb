<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8"/>
		<title> RESULTATS </title>
		<%@ include file ="head.html" %>
	</head>
	<%@ include file ="header.jsp" %>	
	<body>
		<div class="container">
		<!-- CONTENU / CONTENT -->
		<section>
			<header>
				<div class="container">
					<div class="row">
						<div class="col-lg-4">
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
								<label class="btn btn-light active">
									<input type="radio" name="options" id="option1" autocomplete="off" checked> Vue par liste
								</label>
								<label class="btn btn-light">
									<input type="radio" name="options" id="option2" autocomplete="off"> Vue par carte
								</label>
							</div>
						</div>
						<div class="col-lg-3  offset-lg-5 text-right">
							<!-- AJOUT DU JS pour DROPDOWN -->
							<div class="btn-group ">
								<button type="button"  class="btn btn-info">Trier...</button>
								<button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<span class="sr-only">Toggle Dropdown</span>
								</button>
								<div class="dropdown-menu" id="tri">
									<a class="dropdown-item" href="#">par prix croissant</a>
									<a class="dropdown-item" href="#">prix dÃ©croissant</a>
									<a class="dropdown-item" href="#">surface</a>
									<a class="dropdown-item" href="#">date</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Supprimer les filtres</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
		</section>	
		<section>
			<div class="container">
				<div class="row">
					<div class="col-sm-3 mb-3">
						<article>
							<div class="card">
								<img src="src/immo5.png" class="card-img-top side-crop" alt="house">
								<div class="card-body">
									
									<h5 class="card-title">Prix</h5>
									<p class="card-text">Title ad</p>
									<div class="row">
										<div class="col-sm-8">
											<a href="detail.jsp" class="btn btn-primary btn-sm">Voir plus</a>
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
								<img src="src/immo5.png" class="card-img-top side-crop" alt="house">
								<div class="card-body">
									
									<h5 class="card-title">Prix</h5>
									<p class="card-text">Title ad</p>
									<div class="row">
										<div class="col-sm-8">
											<a href="detail.jsp" class="btn btn-primary btn-sm">Voir plus</a>
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
								<img src="images/pic2.jpg" class="card-img-top side-crop " alt="house">
								<div class="card-body">
									
									<h5 class="card-title">340</h5>
									<p class="card-text">Title ad</p>
									<div class="row">
										<div class="col-sm-8">
											<a href="detail.jsp" class="btn btn-primary btn-sm">Voir plus</a>
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
								<img src="src/immo5.png" class="card-img-top side-crop" alt="house">
								<div class="card-body">
									
									<h5 class="card-title">Prix</h5>
									<p class="card-text">Title ad</p>
									<div class="row">
										<div class="col-sm-8">
											<a href="detail.jsp" class="btn btn-primary btn-sm">Voir plus</a>
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
				
				<div class="row">
				<div class="col-sm-3">
					<article>
						<div class="card">
							<img src="src/immo5.png" class="card-img-top side-crop" alt="house">
							<div class="card-body">
								
								<h5 class="card-title">Prix</h5>
								<p class="card-text">Title ad</p>
								<div class="row">
									<div class="col-sm-8">
										<a href="detail.jsp" class="btn btn-primary btn-sm">Voir plus</a>
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
							<img src="src/immo5.png" class="card-img-top side-crop" alt="house">
							<div class="card-body">
								
								<h5 class="card-title">Prix</h5>
								<p class="card-text">Title ad</p>
								<div class="row">
									<div class="col-sm-8">
										<a href="detail.jsp" class="btn btn-primary btn-sm">Voir plus</a>
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
							<img src="src/immo5.png" class="card-img-top side-crop" alt="house">
							<div class="card-body">
								
								<h5 class="card-title">Prix</h5>
								<p class="card-text">Title ad</p>
								<div class="row">
									<div class="col-sm-8">
										<a href="detail.jsp" class="btn btn-primary btn-sm">Voir plus</a>
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
							<img src="src/immo5.png" class="card-img-top side-crop" alt="house">
							<div class="card-body">
								
								<h5 class="card-title">Prix</h5>
								<p class="card-text">Title ad</p>
								<div class="row">
									<div class="col-sm-8">
										<a href="detail.jsp" class="btn btn-primary btn-sm">Voir plus</a>
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
		</section>
		<section>
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<footer>
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-center">
									<li class="page-item disabled">
									<a class="page-link" href="#" tabindex="-1">Previous</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item">
									<a class="page-link" href="#">Next</a>
									</li>
								</ul>
							</nav>
						</footer>
					</div>
				</div>
			</div>
		</section>
		</div>
		<%@ include file ="footer.jsp" %>
	</body>
</html>
	