<?php

$servidor = "localhost";
$usuario = "root";
$senha = "";
$dbname = "kinoflix";
//Criar a conexao
$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);

$pesquisar = $_POST['pesquisar'];
$result_filmes = "SELECT * FROM filmes WHERE titulo LIKE '%$pesquisar%' LIMIT 100";
$resultado_filmes = mysqli_query($conn, $result_filmes);

$result_series = "SELECT * FROM series WHERE titulo LIKE '%$pesquisar%' LIMIT 100";
$resultado_series = mysqli_query($conn, $result_series);

/*while($rows_filmes = mysqli_fetch_array($resultado_filmes)){
    echo "Nome do filme: ".$rows_filmes['titulo']."<br>";
	echo '<img src="'.$rows_filmes['titulo'].'">';
}*/

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
	<link rel="stylesheet" href="css/filmes-series-main.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
	<link rel="stylesheet" href="../package/css/swiper.min.css">
	<title>Kinoplay</title>
	<style>
		main{
			margin-top: 110px;
			margin-bottom:50px
		}
		footer{
			width:100%;
		}
		#warning{
    color: var(--text-color);
	text-align:center;
	position: relative;
	top:150px;
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
		<section>
			<div class="scroll-images">
				<?php 
					while($rows_filmes = mysqli_fetch_array($resultado_filmes)){
						 ?>
			<div class="child">
				<i class="heartBtn ri-heart-add-line"></i>
				<a href="filmetemplate.php?id=<?php echo $rows_filmes['id']?>">
				<?php
					echo '<img class="child-img" src="'.$rows_filmes['Imagem'].'">';?>
				</a>
			</div>
				<?php
			}
		?>
				<?php 
					while($rows_series = mysqli_fetch_array($resultado_series)){
						?>
						<div class="child">
						<i class="heartBtn ri-heart-add-line"></i>
						<a href="serietemplate.php?id=<?php echo $rows_series['id']?>">
						<?php
							echo '<img class="child-img" src="'.$rows_series['Imagem'].'">';?>
						</a>
					</div>
				<?php
			}
		?>		
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

	<script src="js/footer.js"></script>
</html>