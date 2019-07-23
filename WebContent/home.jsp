<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<title> INDEX </title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="fontawesome/css/all.min.css">
	<script src ="jquery/jquery-3.4.1.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- <script src="js/code.js"></script> -->
	<script src="js/jqcode.js"></script>
	<script src="js/ajax.js"></script>
</head>

<body>

	<div onclick="toggleAllDivs();">
		<nav>
			<ul>
				<li id="compte">Compte</li>
				<li>Favoris</li>
				<li>Annonce</li>
			</ul>
		</nav>
	</div>

	<div>
		<script>
			titre1();
			titre2();
		</script>
	</div>

	<button id="appear">DIVS-APPEARED</button>

	<img src="src/immo1.png" data-img="src/immo2.png" />

	<div>
		<i class="fas fa-chevron-circle-left"></i>
		<img id="diaporama" src="" data-imgs="immo3,immo5,immo2,immo1,immo4"></img>
		<i class="fas fa-chevron-circle-right"></i>
	</div>

	<button onclick="ajaxDiaporama()">AJAX-DIAPORAMA</button>
	<p id="complements"></p>

	<button onclick="ajaxSelect()">AJAX-SELECT</button>
	<select id="selectEstates"></select>

	<input id="search" type="text">AJAX-CITY</button>




	titre2();
	<h1>INDEX</h1>
</body>

</html>