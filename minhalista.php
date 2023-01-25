<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="/img/website-logo/logo.png">
	<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="css/index-main.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
	<title>Kinoplay</title>
	<style>
	#minhaLista{
    color: #a600d8;
	}
		
	.main-scroll h2{
		margin: 30px;
		color: var(--text-color);
	}
	.main-scroll{
		text-align: center;
		width: 100%;
		height: 100%;
		margin-bottom: 50px;
	}
	 .scroll-images{
		
		justify-content: center;
		width:100%;
		height: 100%;
		display: flex;
		flex-wrap:wrap;
		align-items: center;
		position: relative;
		scroll-behavior: smooth;
	 }
	 
	.scroll-images::-webkit-scrollbar{
		-webkit-appearance: none;
	}
	.child {
		position: relative;
		width: 202px;
		height:302px;
		margin: 8px;
		cursor: pointer;
		overflow: hidden;
	}
	.heartBtn {
		display: none;
		z-index: 1000;
		font-size: 40px;
	  	color: rgb(255, 255, 255);
	  	position: absolute; /* Estabelece posição absoluta para o elemento filho */
	  	top: 240px; /* Posiciona o elemento no topo do elemento pai */
	  	left: 140px; /* Posiciona o elemento à esquerda do elemento pai */
	}
	.child:hover .heartBtn{
		display: block;
	}
	.child-img{
		filter: brightness(0.8);
		width: 200px;
		height: 300px;
	}
	.child-img:hover{
		filter: brightness(1);
		border: 2px solid white;
		border-radius: 5px;
	}
	</style>
</head>
<body>
	<header>
	<nav class="navbar">
			<div class="logo">
				<a  href="index.php" >
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
	<section class="catalogos">
			<div class="main-scroll">
					<h2>A escolha é sua!</h2>
						<div class="scroll-images">
						<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
							<div class="child"><i class="heartBtn ri-heart-add-line"></i></div>
				</div>
			</div>
		</section>
		</div>
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
	<script src="https://code.jquery.com/jquery-3.5.1.js" 
    		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
    		crossorigin="anonymous"></script>

	<script src="https://kit.fontawesome.com/cb4778956c.js" crossorigin="anonymous"></script>

	<script>
			$(".btn").click(function() {
			$(".input").toggleClass("click")
			$("span").toggleClass("click")
		})
	</script>
	
	<!-- Swiper JS -->
	<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

	<!-- Customizar JS-->
	<script src="js/custom.js"></script>

	<script src="js/favButton.js"></script>
	
	<script src="js/scrollScript.js"></script>

</html>