<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <title></title>
    
    <style>
        .trailer{
            position: absolute;
            left: 0px;
            top: 0;
            height: 40vw;
            width: 100vw;
            z-index: -1;
        }
        .header{
            position: relative;
            z-index: 100;
        }
    </style>
</head>
<body>
<?php
    require '../reglog/config.php';

    $id = $_GET['id'];

    // Consulta SQL para buscar o link do vídeo
    $sql = "SELECT trailer FROM filmes WHERE id = $id";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);

    $trailer = $row['trailer'];
?>
    <header>
    <nav class="navbar">
        <div class="logo">
            <a  href="#" >
                <img class="imglogo" src="../img/website-logo/logo.png" height="50px" alt="logo">
            </a>
            <a class="name">KINO<span>play</span></a>
        </div>
        <div class="nav-links responsive">
            <li><a href="../index.php" class="inicio">Inicio</a></li>
            <li><a href="../filmes.php" class="films">Filmes</a></li>
            <li><a href="../series.php" class="series">Séries</a></li>
            <li><a href="../minhalista.php" class="minhaLista">Minha lista</a></li>
        </div>
        <div class="hamburger">
            <div class="line"></div>
            <div class="line"></div>
            <div class="line"></div>
        </div>
        <div class="trailer">
            <video width="100%" height="100%" controls>
                <source src="<?php echo $trailer; ?>" type="video/mp4">
            </video>
        </div>
    </header>
</nav>
</body>
</html>