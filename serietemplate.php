<?php
    require 'reglog/config.php';
    session_start();
    $id = $_GET['id'];

    // Consulta SQL para buscar os itens esperados
    $serie_trailer = "SELECT trailer FROM series WHERE id = $id";
    $serie_banner = "SELECT imagem FROM series WHERE id = $id";
    $serie_titulo = "SELECT titulo FROM series WHERE id = $id";
    $serie_sinopse = "SELECT sinopse FROM series WHERE id = $id";
    $serie_classificacao = "SELECT Classificacao FROM series WHERE id = $id";
    $serie_nota = "SELECT nota FROM series WHERE id = $id";
    $series = "SELECT Ator FROM elenco WHERE id = $id";

    $result_strailer = mysqli_query($conn, $serie_trailer);
    $result_sbanner = mysqli_query($conn, $serie_banner);
    $result_stitulo = mysqli_query($conn, $serie_titulo);
    $result_ssinopse = mysqli_query($conn, $serie_sinopse);
    $result_sclassificacao = mysqli_query($conn, $serie_classificacao);
    $result_snota = mysqli_query($conn, $serie_nota);
    $result_sator = mysqli_query($conn, $series);

    $row1 = mysqli_fetch_assoc($result_strailer);
    $row2 = mysqli_fetch_assoc($result_sbanner);
    $row3 = mysqli_fetch_assoc($result_stitulo);
    $row4 = mysqli_fetch_assoc($result_ssinopse);
    $row5 = mysqli_fetch_assoc($result_sclassificacao);
    $row6 = mysqli_fetch_assoc($result_snota);
    $row7 = mysqli_fetch_assoc($result_sator);


    $strailer = $row1['trailer'];
    $simagem = $row2['imagem'];
    $stitulo = $row3['titulo'];
    $ssinopse = $row4['sinopse'];
    $sclassificacao = $row5['Classificacao'];
    $snota = $row6['nota'];
    $sator = $row7['Ator'];

    function definirCor($sclassificacao) {
        switch ($sclassificacao) {
            case 'L':
                return 'background-color:#098B41;width: 51.81px; height: 51.8px; padding-left: 20px; padding-top: 9px; font-family: Lexend;';
                break;
            case '10':
                return 'background-color:#0F71BC';
                break;
            case '12':
                return 'background-color:#F9BE0C';
                break;
            case '14':
                return 'background-color:#E16C1D';
                break;
            case '16':
                return 'background-color:#D92123'; 
                break;
            case '18':
                return 'background-color:#131313';
                break;
            default:
                return 'display:none';
        }
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
    <title></title>
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Lexend:wght@500;600;700;800;900&display=swap');

    /* Configurações Gerais */
    :root {
        --text-font: 'Lexend', cursive;
    }

    header.ativo {
        background-color: #00001f;
    }

    header>section {
        display: flex;
        justify-content: flex-end;
    }

    a {
        color: white;
        text-decoration: none;
    }

    .logo {
        margin-top: 10px;
        margin-left: 20px;
        align-items: center;
        display: flex;
        height: 100%;
        color: var(--button-color);
    }

    .imglogo {
        height: 50px;
    }

    .name {
        font-family: var(--text-font);
        margin-left: 10px;
        color: white;
        font-size: 20px;
    }

    .name span {
        font-family: var(--text-font);
        color: #8400ff;
        font-size: 20px;
        text-transform: uppercase;
    }

    .nav-links {
        font-family: var(--text-font);
        list-style-type: none;
        justify-content: center;
        display: flex;
        gap: 40px;
    }

    .nav-links a:hover {
        color: #c300ff;

    }

    .navbar {
        justify-content: space-around;
        display: flex;
        align-items: center;
        gap: 40px;
    }

    .trailer {
        z-index: -1;
        width: 100%;
        height: 40vw;
        position: absolute;
        top: 0;
        left: 0;
    }

    body {
        overflow-x: hidden;
        background: darkslategray;
    }

    .main {
        width: 100%;
        height: 100%;
    }

    .banner {
        width: 13rem;
        height: 17rem;
        background-color: rgb(180, 180, 180);
        position: absolute;
        top: 33vw;
        left: 3vw;
    }

    .banner img {
        width: 100%;
        height: 100%;
    }

    h2 {
        font-size: 30px;
        color: white;
        position: absolute;
        z-index: 1;
        bottom: 2rem;
        left: 18rem;
    }

    .sinopse {
        position: absolute;
        top: 42rem;
        left: 21vw;
        z-index: 100;
        width: 50vw;
        height: auto;
        color: white;
    }

    .elenco {
        height: 270px;
        position: absolute;
        top: 70rem;
        display: flex;
        left:10rem;
    }

    .elenco div {
        position: relative;
        top: 50px;
        left: 1rem;
        border-radius: 200px;
        margin: 10px;
        width: 200px;
        height: 200px;
        background: linear-gradient(#e66465, #9198e5);
    }

   /*  .elenco h2 {
        color: black;
        position: absolute;
        top: 0;
        left: 2.5rem;
    } */

    #classificacao{
        position: absolute;
        bottom:0.5rem;
        left:74vw;
        color: white;
        padding: 12px;
        font-size: 25px;
        border-radius: 5px;
    }

    #nota{
        position: absolute;
        top:0;
        left:10.3vw;
        height:22px;
        width:50px;
        background-color: darkgrey;
    }
    .ri-star-fill{
        color: yellow;
        padding: 5px;
        position: relative;
        top:2px
    }
    .cards > img{
        position: relative;
        top:6px;
        left:48px;
        width:105px;
        transition: all 1.3s;
    }

    .cards > p{
        position: relative;
        bottom:3rem;
        left:1.6rem;
        font-size:1.5em;
        font-family: cursive;
        color: cornsilk;
        visibility: hidden;
    }

    .cards > img:hover{ 
        transform: translateY(-5rem) rotateZ(-360deg) scale(1.3);
    }

    .cards > img:hover +p{
        visibility: visible;
        transform: rotateZ(360deg);
        transition: all 1.3s;
    }
</style>

<body>
    <header>
        <nav class="navbar">
            <div class="logo">
                <a href="index.php">
                    <img class="imglogo" src="img/website-logo/logo.png" height="50px" alt="logo">
                </a>
                <a class="name">KINO<span>play</span></a>
            </div>
            <div class="nav-links responsive">
                <li><a href="index.php" class="inicio">Inicio</a></li>
                <li><a href="filmes.php" class="films">Filmes</a></li>
                <li><a href="series.php" class="series">Séries</a></li>
                <li><a href="minhalista.php" class="minhaLista">Minha lista</a></li>
            </div>
            <div class="hamburger">
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
            </div>
        </nav>
    </header>
    <main>
        <div class="banner">
            <img src="<?php echo $simagem; ?>">
            <div id ="nota">
                <i class="ri-star-fill"></i><?php echo $snota; ?>
            </div>
        </div>
        <div class="trailer">
            <h2>
                <?php echo $stitulo; ?>
            </h2>
            <iframe width='100%' height='100%' src="<?php echo $strailer; ?>"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowfullscreen>
            </iframe>
        </div>
        <div class="sinopse">
            <p>
                <?php echo $ssinopse; ?>
            </p>
        </div>
        <div id="classificacao" style=" <?php echo definirCor($sclassificacao); ?>">
    <?php echo $sclassificacao; ?>
        </div>

        <div class="elenco">
           <!--  <h2>Elenco</h2> -->

            <?php
        include "reglog/config.php";


        $selenco = "SELECT elenco.image_Ator,elenco.idSeries,elenco.idFilmes
        FROM elenco
        INNER JOIN series ON elenco.idSeries=series.id limit 5";
        $result_selenco = mysqli_query($conn, $selenco);
        
        while ($row_selenco = mysqli_fetch_assoc($result_selenco)) {
            ?>
         <div class = "cards">
            <img src="<?php echo $row_elenco['image_Ator']; ?>">
            <p><?php echo $sator; ?></p>
        <?php
        }
        ?>

        </div>
    </main>
</body>

</html>