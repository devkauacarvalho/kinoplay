<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="/img/website-logo/logo.png">
	<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="css/filmes-series-main.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/cb4778956c.js" crossorigin="anonymous"></script>
	<title>Kinoplay</title>
	<style>
		.series{
		color: #a600d8;
		}
	</style>
</head>
<body>
	<header>
		 <nav class="navbar">
			<div class="logo">
			<a  href="#" >
				<img class="imglogo" src="img/website-logo/logo.png" height="50px" alt="logo">
			</a>
			<a class="name">KINO<span>play</span></a>
		</div>
		<ul class="nav-links">
		<li><a href="index.php" class="inicio">Inicio</a></li>
			<li><a href="filmes.php" class="films">Filmes</a></li>
			<li><a href="series.php" class="series">Séries</a></li>
			<li><a href="minhalista.php" class="minhaLista">Minha lista</a></li>
		</ul>
		<div class="hamburger">
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
	 </div>
	</nav>
	<section>
		<div class="box">
			<form name="search"> 
				<input type="text" class="input" name="txt">
			</form>
			<div class="btn" onclick="document.search.txt.value = ''">
				<span class="closeBtn"></span>
				<span class="closeBtn"></span>
			</div>
		</div>
	   
		<script>
			$(".btn").click(function() {
				$(".input").toggleClass("click")
				$("span").toggleClass("click")
			})
		</script>
		<div class="buttons">
			<a href="#" class="button">Entrar</a>
			<a href="#" class="button2">Cadastrar</a>
		</div>
	</section>
	</header>
	<main>
		<section class="menu swiper">
		</section>
	  
		  <!-- Swiper JS -->
		  <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
		  
		  <!-- Customizar JS-->
		  <script src="custom.js"></script>
		  
		<section class="catalogos">
			<div class="main-scroll">
					<h2>A escolha é sua!</h2>
						<div class="scroll-images">
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/avatar-o-caminho-da-agua.jpg" alt="Avatar: O Caminho da Água"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/aventuras-de-pi.jpg" alt="As Aventuras de PI"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/capitao-america-2-o-soldado-invernal.jpg" alt="Capitão América 2: O Soldado invernal"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/doutor-estranho-no-multiverso-da-loucura.jpeg" alt="Doutor Estranho no Multiverso da Loucura"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/hancock.jpg" alt="Hancock"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/terrifier-2.jpg" alt="Terrifier 2"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/wifi-ralph-quebrando-a-internet.png" alt="Wifi Ralph: Quebrando a Internet"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/ate-o-ultimo-homem.jpg" alt="Até o Ultimo Homem"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/avatar-o-caminho-da-agua.jpg" alt="Avatar: O Caminho da Água"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/aventuras-de-pi.jpg" alt="As Aventuras de PI"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/capitao-america-2-o-soldado-invernal.jpg" alt="Capitão América 2: O Soldado invernal"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/doutor-estranho-no-multiverso-da-loucura.jpeg" alt="Doutor Estranho no Multiverso da Loucura"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/hancock.jpg" alt="Hancock"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/terrifier-2.jpg" alt="Terrifier 2"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/wifi-ralph-quebrando-a-internet.png" alt="Wifi Ralph: Quebrando a Internet"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/ate-o-ultimo-homem.jpg" alt="Até o Ultimo Homem"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/avatar-o-caminho-da-agua.jpg" alt="Avatar: O Caminho da Água"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img" src="img/film-cards/aventuras-de-pi.jpg" alt="As Aventuras de PI"></div>
					<script src="js/favButton.js"></script>
				</div>
			</div>
		</section>
		</main>
		<footer>	
		<div class="link">
				<ul>
					<li><a href="#">Audiodescrição</a></li>
					<li><a href="#">Relações com investidores</a></li>
					<li><a href="#">Cartão pré-pago</a></li>
				</ul>
			<ul>
				<li><a href="#">Avisos legais</a></li>
				<li><a href="#">Termos de Uso</a></li>
				<li><a href="#">Informações corporativas</a></li>
			</ul>
			<ul>
				<li><a href="#">Imprensa</a></li>
				<li><a href="#">Carreiras</a></li>
				<li><a href="#">Central de Ajuda</a></li>
			</ul>
			<ul>
				<li><a href="#">Privacidade</a></li>
				<li><a href="#">Entre em contato</a></li>
				<li><a href="#">Preferência de cookies</a></li>
			</ul>
		</div>
			<h5>© 2022 KINOPLAY.</h5>
	</footer>
</body>
</html>