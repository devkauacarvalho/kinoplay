<?php
require 'reglog/config.php';
if(!empty($_SESSION["id"])){
	$id = $_SESSION["id"];
	$result = mysqli_query($conn, "SELECT * FROM cliente WHERE id = $id");
	$row = mysqli_fetch_assoc($result);
}else{
	header("Location: reglog/login-cadastro.php");
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="img/website-logo/logo.png">
	<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="css/index-main.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
	<script src="https://code.jquery.com/jquery-3.5.1.js" 
    integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
    crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../package/css/swiper.min.css">
	<script src="https://kit.fontawesome.com/cb4778956c.js" crossorigin="anonymous"></script>
	<title>Kinoplay</title>
	<style>
		.inicio{
    	color: #a600d8;
		}
	</style>
</head>
<body>
	<header>
		 <nav class="navbar">
			<button class="menu-sandwiche">Menu</button>
			</div>
			<div class="logo">
			<a  href="#" >
				<img class="imglogo" src="img/website-logo/logo.png" height="50px"alt="logo">
			</a>
			<a class="name">KINO<span>play</span></a>
		</div>
		<div class="nav-links">
			<a href="index.html" class="inicio">Inicio</a>
			<a href="filmes.html" class="films">Filmes</a>
			<a href="series.html" class="series">Séries</a>
			<a href="minhalista.html" class="minhaLista">Minha lista</a>
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
			<a href="/reglog/logout.php" class="button2">Sair</a> 
	</section>
	</header>
	<main>
		<section class="menu swiper">
			<div class="swiper-wrapper">
			  <div class="swiper-slide container">
				<img src="img/banner-destaque/venom.jpg" alt="Venom">
				<div class="menu-home">
					<img src="img/destaque-logo/venom.png" alt="Título" id="venom">
					<div class="info">
					<a href="#" >
						<i class="ri-information-fill"></i> <span>more info</span>
					</a>
				</div>	
					<a href="#" class="play">
						<i class="ri-play-fill"></i>
					</a>
				</div>
			</div>
			<div class="swiper-slide container">
				<img src="img/banner-destaque/avengers.jpg" alt="Vingadores Ultimato">
				<div class="menu-home">
					<img id="vingadores" src="img/destaque-logo/avengers.png" alt="vingadores Endgame">
					<div class="info">
						<a href="#" >
							<i class="ri-information-fill"></i> <span>more info</span>
						</a>
					</div>
					<a href="#" class="play">
						<i class="ri-play-fill"></i>
					</a>
				</div>
			  </div>
			  <div class="swiper-slide container">
				<img src="img/banner-destaque/avatar2.jpg" alt="Avatar">
				<div class="menu-home">
					<img src="img/destaque-logo/avatar2.png" alt="Título" id="avatar">
					<div class="info">
						<a href="#" >
							<i class="ri-information-fill"></i> <span>more info</span>
						</a>
					</div>
					<a href="#" class="play">
						<i class="ri-play-fill"></i>
					</a>
				</div>
			  </div>
			</div>
			<div class="swiper-pagination"></div>
		</section>
	  
		  <!-- Swiper JS -->
		  <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
		  
		  <!-- Customizar JS-->
		  <script src="custom.js"></script>
		<section class="catalogos">
			<div class="main-scroll-emalta">
				<div class="tituloCatalogo">
					<h2>Recomendado para você</h2>
					<div class="cover1">
						<button class="icon1" data-target="list1" onclick="scroll_left(this)"><i class="ri-arrow-left-s-line"></i></button>
						<button class="icon2" data-target="list1" onclick="scroll_right(this)"><i class="ri-arrow-right-s-line"></i></button>
						<div class="scroll-images" id="list1">
							<div class="child"><img class="child-img" src="img/film-cards/avatar-o-caminho-da-agua.jpg" alt="Avatar: O Caminho da Água"></div>
							<div class="child"><img class="child-img" src="img/film-cards/aventuras-de-pi.jpg" alt="As Aventuras de PI"></div>
							<div class="child"><img class="child-img" src="img/film-cards/capitao-america-2-o-soldado-invernal.jpg" alt="Capitão América 2: O Soldado invernal"></div>
							<div class="child"><img class="child-img" src="img/film-cards/doutor-estranho-no-multiverso-da-loucura.jpeg" alt="Doutor Estranho no Multiverso da Loucura"></div>
							<div class="child"><img class="child-img" src="img/film-cards/hancock.jpg" alt="Hancock"></div>
							<div class="child"><img class="child-img" src="img/film-cards/terrifier-2.jpg" alt="Terrifier 2"></div>
							<div class="child"><img class="child-img" src="img/film-cards/wifi-ralph-quebrando-a-internet.png" alt="Wifi Ralph: Quebrando a Internet"></div>
							<div class="child"><img class="child-img" src="img/film-cards/ate-o-ultimo-homem.jpg" alt="Até o Ultimo Homem"></div>
							<div class="child"><img class="child-img" src="img/film-cards/avatar-o-caminho-da-agua.jpg" alt="Avatar: O Caminho da Água"></div>
							<div class="child"><img class="child-img" src="img/film-cards/aventuras-de-pi.jpg" alt="As Aventuras de PI"></div>
							<div class="child"><img class="child-img" src="img/film-cards/capitao-america-2-o-soldado-invernal.jpg" alt="Capitão América 2: O Soldado invernal"></div>
							<div class="child"><img class="child-img" src="img/film-cards/doutor-estranho-no-multiverso-da-loucura.jpeg" alt="Doutor Estranho no Multiverso da Loucura"></div>
							<div class="child"><img class="child-img" src="img/film-cards/hancock.jpg" alt="Hancock"></div>
							<div class="child"><img class="child-img" src="img/film-cards/terrifier-2.jpg" alt="Terrifier 2"></div>
							<div class="child"><img class="child-img" src="img/film-cards/wifi-ralph-quebrando-a-internet.png" alt="Wifi Ralph: Quebrando a Internet"></div>
							<div class="child"><img class="child-img" src="img/film-cards/ate-o-ultimo-homem.jpg" alt="Até o Ultimo Homem"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="main-scroll-Fmomento">
				<div class="tituloCatalogo">
					<h2>Filmes Destaque</h2>
					<div class="cover2">
						<button class="icon1" data-target="list2" onclick="scroll_left(this)"><i class="ri-arrow-left-s-line"></i></button>
						<button class="icon2" data-target="list2" onclick="scroll_right(this)"><i class="ri-arrow-right-s-line"></i></button>
						<div class="scroll-images" id="list2">
							<div class="child"><img class="child-img" src="img/film-cards/avatar-o-caminho-da-agua.jpg" alt="Avatar: O Caminho da Água"></div>
							<div class="child"><img class="child-img" src="img/film-cards/aventuras-de-pi.jpg" alt="As Aventuras de PI"></div>
							<div class="child"><img class="child-img" src="img/film-cards/capitao-america-2-o-soldado-invernal.jpg" alt="Capitão América 2: O Soldado invernal"></div>
							<div class="child"><img class="child-img" src="img/film-cards/doutor-estranho-no-multiverso-da-loucura.jpeg" alt="Doutor Estranho no Multiverso da Loucura"></div>
							<div class="child"><img class="child-img" src="img/film-cards/hancock.jpg" alt="Hancock"></div>
							<div class="child"><img class="child-img" src="img/film-cards/terrifier-2.jpg" alt="Terrifier 2"></div>
							<div class="child"><img class="child-img" src="img/film-cards/wifi-ralph-quebrando-a-internet.png" alt="Wifi Ralph: Quebrando a Internet"></div>
							<div class="child"><img class="child-img" src="img/film-cards/ate-o-ultimo-homem.jpg" alt="Até o Ultimo Homem"></div>
							<div class="child"><img class="child-img" src="img/film-cards/avatar-o-caminho-da-agua.jpg" alt="Avatar: O Caminho da Água"></div>
							<div class="child"><img class="child-img" src="img/film-cards/aventuras-de-pi.jpg" alt="As Aventuras de PI"></div>
							<div class="child"><img class="child-img" src="img/film-cards/capitao-america-2-o-soldado-invernal.jpg" alt="Capitão América 2: O Soldado invernal"></div>
							<div class="child"><img class="child-img" src="img/film-cards/doutor-estranho-no-multiverso-da-loucura.jpeg" alt="Doutor Estranho no Multiverso da Loucura"></div>
							<div class="child"><img class="child-img" src="img/film-cards/hancock.jpg" alt="Hancock"></div>
							<div class="child"><img class="child-img" src="img/film-cards/terrifier-2.jpg" alt="Terrifier 2"></div>
							<div class="child"><img class="child-img" src="img/film-cards/wifi-ralph-quebrando-a-internet.png" alt="Wifi Ralph: Quebrando a Internet"></div>
							<div class="child"><img class="child-img" src="img/film-cards/ate-o-ultimo-homem.jpg" alt="Até o Ultimo Homem"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="main-scroll-Smomento">
				<div class="tituloCatalogo">
					<h2>Séries do Momento</h2>
					<div class="cover3">
						<button class="icon1" data-target="list3" onclick="scroll_left(this)"><i class="ri-arrow-left-s-line"></i></button>
						<button class="icon2" data-target="list3" onclick="scroll_right(this)"><i class="ri-arrow-right-s-line"></i></button>
						<div class="scroll-images" id="list3">
							<div class="child"><img class="child-img" src="img/film-cards/avatar-o-caminho-da-agua.jpg" alt="Avatar: O Caminho da Água"></div>
							<div class="child"><img class="child-img" src="img/film-cards/aventuras-de-pi.jpg" alt="As Aventuras de PI"></div>
							<div class="child"><img class="child-img" src="img/film-cards/capitao-america-2-o-soldado-invernal.jpg" alt="Capitão América 2: O Soldado invernal"></div>
							<div class="child"><img class="child-img" src="img/film-cards/doutor-estranho-no-multiverso-da-loucura.jpeg" alt="Doutor Estranho no Multiverso da Loucura"></div>
							<div class="child"><img class="child-img" src="img/film-cards/hancock.jpg" alt="Hancock"></div>
							<div class="child"><img class="child-img" src="img/film-cards/terrifier-2.jpg" alt="Terrifier 2"></div>
							<div class="child"><img class="child-img" src="img/film-cards/wifi-ralph-quebrando-a-internet.png" alt="Wifi Ralph: Quebrando a Internet"></div>
							<div class="child"><img class="child-img" src="img/film-cards/ate-o-ultimo-homem.jpg" alt="Até o Ultimo Homem"></div>
							<div class="child"><img class="child-img" src="img/film-cards/avatar-o-caminho-da-agua.jpg" alt="Avatar: O Caminho da Água"></div>
							<div class="child"><img class="child-img" src="img/film-cards/aventuras-de-pi.jpg" alt="As Aventuras de PI"></div>
							<div class="child"><img class="child-img" src="img/film-cards/capitao-america-2-o-soldado-invernal.jpg" alt="Capitão América 2: O Soldado invernal"></div>
							<div class="child"><img class="child-img" src="img/film-cards/doutor-estranho-no-multiverso-da-loucura.jpeg" alt="Doutor Estranho no Multiverso da Loucura"></div>
							<div class="child"><img class="child-img" src="img/film-cards/hancock.jpg" alt="Hancock"></div>
							<div class="child"><img class="child-img" src="img/film-cards/terrifier-2.jpg" alt="Terrifier 2"></div>
							<div class="child"><img class="child-img" src="img/film-cards/wifi-ralph-quebrando-a-internet.png" alt="Wifi Ralph: Quebrando a Internet"></div>
							<div class="child"><img class="child-img" src="img/film-cards/ate-o-ultimo-homem.jpg" alt="Até o Ultimo Homem"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
				<script src="js/scrollScript.js"></script>
		</main>
		<footer>	
		<div class="link">
			
			<div>
				<ul>
					<a href="#">Audiodescrição</a>
					<a href="#">Cartão pré-pago</a>
					<a href="#">Relações com investidores</a>
				</ul>
			</div>
		<div>
			<ul>
				<a href="#">Avisos legais</a>
				<a href="#">Termos de Uso</a>
				<a href="#">Informações corporativas</a>
			</ul>
		</div>
		<div>
			<ul>
				<a href="#">Imprensa</a>
				<a href="#">Carreiras</a>
				<a href="#">Central de Ajuda</a>
			</ul>
		</div>
		<div>
			<ul>
				<a href="#">Privacidade</a>
				<a href="#">Entre em contato</a>
				<a href="#">Preferência de cookies</a>
			</ul>
		</div>
		</div>
		
			<h5>© 2022 KINOPLAY.</h5>
		
	</footer>

</body>
</html>