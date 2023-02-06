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

    $result_strailer = mysqli_query($conn, $serie_trailer);
    $result_sbanner = mysqli_query($conn, $serie_banner);
    $result_stitulo = mysqli_query($conn, $serie_titulo);
    $result_ssinopse = mysqli_query($conn, $serie_sinopse);
    $result_sclassificacao = mysqli_query($conn, $serie_classificacao);
    $result_snota = mysqli_query($conn, $serie_nota);

    $row1 = mysqli_fetch_assoc($result_strailer);
    $row2 = mysqli_fetch_assoc($result_sbanner);
    $row3 = mysqli_fetch_assoc($result_stitulo);
    $row4 = mysqli_fetch_assoc($result_ssinopse);
    $row5 = mysqli_fetch_assoc($result_sclassificacao);
    $row6 = mysqli_fetch_assoc($result_snota);


    $strailer = $row1['trailer'];
    $simagem = $row2['imagem'];
    $stitulo = $row3['titulo'];
    $ssinopse = $row4['sinopse'];
    $sclassificacao = $row5['Classificacao'];
    $snota = $row6['nota'];

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
    <link rel="stylesheet" href="css/template.css">
    <title></title>
</head>

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

        $selenco = "SELECT elenco.Ator, elenco.image_Ator
        FROM elenco
        JOIN series ON elenco.idSeries = series.id 
        WHERE idSeries = $id LIMIT 5";
        $result_selenco = mysqli_query($conn, $selenco);
        
        while ($row_selenco = mysqli_fetch_assoc($result_selenco)) {
            ?>
         <div class = "cards">
            <img src="<?php echo $row_selenco['image_Ator']; ?>">
            <p><?php echo $row_selenco['Ator']; ?></p>
        </div>
        <?php
        }
        ?>

        </div>
    </main>
</body>

</html>