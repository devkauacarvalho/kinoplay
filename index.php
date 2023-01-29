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
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/index-main.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
	<title>Kinoplay</title>
	<style>
		#inicio {
			color: #a600d8;
		}
	</style>
</head>

<body>
	<header>
		<nav class="navbar">
			<div class="logo">
				<a href="#">
					<img class="imglogo" src="img/website-logo/logo.png" height="50px" alt="logo">
				</a>
				<a class="name">KINO<span>play</span></a>
			</div>
			<div class="nav-links responsive">
				<li><a href="index.php" id="inicio">Inicio</a></li>
				<li><a href="filmes.php" id="films">Filmes</a></li>
				<li><a href="series.php" id="series">Séries</a></li>
				<li><a href="minhalista.php" id="minhaLista">Minha lista</a></li>
				<li><a href="reglog/logout.php" id="button1">Sair</a></li>
			</div>
			<div class="hamburger">
				<div class="line"></div>
				<div class="line"></div>
				<div class="line"></div>
			</div>
		</nav>
		<section>
			<div class="box">
				<form method="POST" name="pesquisar" action="pesquisar.php">
					<input type="text" class="input" name="pesquisar">
				</form>
				<div class="btn" onclick="document.search.txt.value = ''">
					<span class="closeBtn"></span>
					<span class="closeBtn"></span>
				</div>
			</div>
			<i class="ri-map-pin-user-line"></i>
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
							<a href="#">
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
							<a href="#">
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
							<a href="#">
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
		<section class="catalogos">
			<div class="main-scroll-emalta">
				<div class="tituloCatalogo">
					<h2>Recomendado para você</h2>
					<div class="cover1">
						<button class="icon1" data-target="list1" onclick="scroll_left(this)"><i
								class="ri-arrow-left-s-line"></i></button>
						<button class="icon2" data-target="list1" onclick="scroll_right(this)"><i
								class="ri-arrow-right-s-line"></i></button>
						<div class="scroll-images" id="list1">
							<div class="child"><a href="template.php?id=1"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="1" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=2"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="2" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=3"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="3" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=4"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="4" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=5"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="5" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=6"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="6" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=7"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="7" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=8"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="8" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=9"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="9" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=10"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="10" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=11"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="11" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=12"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="12" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=13"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="13" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=14"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="14" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=15"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="15" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=16"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="16" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=17"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="17" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=18"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="18" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=18"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="19" src=""
										alt=""></a></div>
							<div class="child"><a href="template.php?id=18"><i
										class="heartBtn ri-heart-add-line"></i><img class="child-img" dataid="20" src=""
										alt=""></a></div>
						</div>
					</div>
				</div>
			</div>
			<div class="main-scroll-Fmomento">
				<div class="tituloCatalogo">
					<h2>Filmes Destaque</h2>
					<div class="cover2">
						<button class="icon1" data-target="list2" onclick="scroll_left(this)"><i
								class="ri-arrow-left-s-line"></i></button>
						<button class="icon2" data-target="list2" onclick="scroll_right(this)"><i
								class="ri-arrow-right-s-line"></i></button>
						<div class="scroll-images" id="list2">
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="21" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="22" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="23" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="24" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="25" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="26" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="27" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="28" src="" alt="">
							</div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="29" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="30" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="31" src="" alt=""></div>
							<div class="child"><i class=""></i><img class="child-img"
									dataid="32" src="" alt="Hancock"></div>
							<div class="child"><i class=""></i><img class="child-img"
									dataid="33" src="" alt="Terrifier 2"></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="34" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="35" src="" alt=""></div>
						</div>
					</div>
				</div>
			</div>
			<div class="main-scroll-Smomento">
				<div class="tituloCatalogo">
					<h2>Séries do Momento</h2>
					<div class="cover3">
						<button class="icon1" data-target="list3" onclick="scroll_left(this)"><i
								class="ri-arrow-left-s-line"></i></button>
						<button class="icon2" data-target="list3" onclick="scroll_right(this)"><i
								class="ri-arrow-right-s-line"></i></button>
						<div class="scroll-images" id="list3">
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="36" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="37" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="38" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="39" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="40" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="41" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="42" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="43" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="44" src="" alt="">
							</div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="45" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="46" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="47" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="48" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="49" src="" alt=""></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i><img class="child-img"
									dataid="50" src="" alt=""></div>
						</div>
					</div>
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
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

<script src="https://kit.fontawesome.com/cb4778956c.js" crossorigin="anonymous"></script>

<script>
	$(".btn").click(function () {
		$(".input").toggleClass("click")
		$("span").toggleClass("click")
	})
</script>

<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<!-- Customizar JS-->
<script src="/js/custom.js"></script>

<script src="js/favButton.js"></script>

<script src="js/scrollScript.js"></script>

<script src="js/cards.js"></script>

</html>