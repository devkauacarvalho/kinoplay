<?php
    require 'reglog/config.php';

    $id = $_GET['id'];

    // Consulta SQL para buscar os itens esperados
    $sql_trailer = "SELECT trailer FROM filmes WHERE id = $id";
    $sql_banner = "SELECT Imagem FROM filmes WHERE id = $id";
    $sql_titulo = "SELECT nomebr FROM filmes WHERE id = $id";
    $sql_sinopse = "SELECT sinopse FROM filmes WHERE id = $id";

    $result_trailer = mysqli_query($conn, $sql_trailer);
    $result_banner = mysqli_query($conn, $sql_banner);
    $result_titulo = mysqli_query($conn, $sql_titulo);
    $result_sinopse = mysqli_query($conn, $sql_sinopse);

    $row1 = mysqli_fetch_assoc($result_trailer);
    $row2 = mysqli_fetch_assoc($result_banner);
    $row3 = mysqli_fetch_assoc($result_titulo);
    $row4 = mysqli_fetch_assoc($result_sinopse);

    $trailer = $row1['trailer'];
    $imagem = $row2['Imagem'];
    $titulo = $row3['nomebr'];
    $sinopse = $row4['sinopse'];
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/website-logo/logo.png">
    <title></title>
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Lexend:wght@500;600;700;800;900&display=swap');

/* Configurações Gerais */
*{
    font-family: Arial, Helvetica, sans-serif;
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    scroll-behavior: smooth;
    scroll-padding-top: 2rem;
}
:root{
    --text-font:'Lexend', cursive;
}
header.ativo{
    background-color: #00001f;
}
header > section{
    display: flex;
    justify-content: flex-end;
}
a{
    color: white;
    text-decoration: none;
}
.logo{
    margin-top: 10px;
    margin-left: 20px;
    align-items: center;
    display: flex;
    height: 100%;
    color: var(--button-color);
}
.imglogo{
height: 50px;
}
.name{
    font-family: var(--text-font);
    margin-left: 10px;
    color: white;
    font-size: 20px;
}
.name span{
    font-family: var(--text-font);
    color: #8400ff;
    font-size: 20px;
    text-transform: uppercase;	
}
.nav-links{
    font-family: var(--text-font);
    list-style-type: none;
    justify-content: center;
    display: flex;
    gap: 40px;
}
.nav-links a:hover{
    color: #c300ff;
    
}

.navbar{
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
        background: aliceblue;
    }
    .main{
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
        font-size:30px;
        color: white;
        position: absolute;
        z-index: 1;
        bottom: 5rem;
        left: 18rem;
    }

    .sinopse {
        position: absolute;
        top: 50rem;
        left: 15vw;
        z-index: 100;
        width: 50vw;
        height: auto;
        color: black;
    }
    .elenco{
        height: 270px;
        position: absolute;
        top: 70rem;
        display: flex;
    }
    .elenco div{
        position: relative;
        top: 50px;
        left: 1rem;
        border-radius: 200px;
        margin: 10px;
        width: 200px;
        height: 200px;
        background: black;
    }
    .elenco h2{
        color: black;
        position: absolute;
        top:0;
        left: 2.5rem;
    }
</style>

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
    </header>
    <main>
    </nav>
        <div class="banner">
            <img
                 src="<?php echo $imagem; ?>">
        </div>
        <div class="trailer">
            <h2>
                <?php echo $titulo; ?>
            </h2>
            <video width='100%' height='100%' controls>
                <source src="<?php echo $trailer; ?>" type="video/mp4">
            </video>
        </div>
        <div class="sinopse">
            <p>
                <?php echo $sinopse; ?>
            </p>
        </div>
        <div class="elenco">
            <h2>Elenco</h2>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </main>
</body>

</html>