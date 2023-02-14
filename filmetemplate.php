<?php
    include 'reglog/config.php';
    session_start();
    $id = $_GET['id'];

    // Consulta SQL para buscar os itens esperados

    $filme_trailer = "SELECT trailer FROM filmes WHERE id = $id";
    $filme_banner = "SELECT Imagem FROM filmes WHERE id = $id";
    $filme_titulo = "SELECT titulo FROM filmes WHERE id = $id";
    $filme_sinopse = "SELECT sinopse FROM filmes WHERE id = $id";
    $filme_classificacao = "SELECT Classificacao FROM filmes WHERE id = $id";
    $filme_nota = "SELECT nota FROM filmes WHERE id = $id";



    $result_ftrailer = mysqli_query($conn, $filme_trailer);
    $result_fbanner = mysqli_query($conn, $filme_banner);
    $result_ftitulo = mysqli_query($conn, $filme_titulo);
    $result_fsinopse = mysqli_query($conn, $filme_sinopse);
    $result_fclassificacao = mysqli_query($conn, $filme_classificacao);
    $result_fnota = mysqli_query($conn, $filme_nota);



    $row1 = mysqli_fetch_assoc($result_ftrailer);
    $row2 = mysqli_fetch_assoc($result_fbanner);
    $row3 = mysqli_fetch_assoc($result_ftitulo);
    $row4 = mysqli_fetch_assoc($result_fsinopse);
    $row5 = mysqli_fetch_assoc($result_fclassificacao);
    $row6 = mysqli_fetch_assoc($result_fnota);



    $ftrailer = $row1['trailer'];
    $fimagem = $row2['Imagem'];
    $ftitulo = $row3['titulo'];
    $fsinopse = $row4['sinopse'];
    $fclassificacao = $row5['Classificacao'];
    $fnota = $row6['nota'];

    function definirCor($fclassificacao) {
        switch ($fclassificacao) {
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
            <img src="<?php echo $fimagem; ?>">
            <div id ="nota">
                <i class="ri-star-fill"></i><?php echo $fnota; ?>
            </div>
        </div>
        <div class="trailer">
            <h2>
                <?php echo $ftitulo; ?>
            </h2>
            <iframe width='100%' height='100%' src="<?php echo $ftrailer; ?>"
                title="YouTube video player" frameborder="0" 
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowfullscreen>
            </iframe>
        </div>
        <div class="sinopse">
            <p>
                <?php echo $fsinopse; ?>
            </p>
        </div>
        <div id="classificacao" style=" <?php echo definirCor($fclassificacao); ?>">
        <?php echo $fclassificacao; ?>
        </div>

        <div class="elenco">
            <!-- <h2>Elenco</h2> -->

            <?php

                $felenco = "SELECT elenco.Ator, elenco.image_Ator
                FROM elenco
                JOIN filmes ON elenco.idFilmes = filmes.id 
                WHERE idFilmes = $id LIMIT 5";
                $result_felenco = mysqli_query($conn, $felenco);

                while ($row_felenco = mysqli_fetch_assoc($result_felenco)) {
            ?>
                 <div class = "cards">
                    <img src="<?php echo $row_felenco['image_Ator']; ?>">
                    <p><?php echo $row_felenco['Ator']; ?></p>
                </div>
            <?php
                }
            ?>

        </div>
    </main>
</body>

</html>