<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
        integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
        crossorigin="anonymous"></script>

    <link rel="shortcut icon" href="img/website-logo/logo.png">
    <title>Kinoplay | ADMIN</title>

    <style>
            /* Configurações Gerais */
        *{
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
            scroll-behavior: smooth;
            scroll-padding-top: 2rem;
        }
        main{
            width: 100vw;
        }
        .navbar{
            padding: 0;
            position: relative;
            background-color: #0a051f;
            color: #8400ff;
        }
        .nav-item{
            position: absolute;
            top: 0px;
            right: 5vw;
            font-size: 2rem;
            display: flex;
        }
        .nav-link{
            margin: 10px 30px 0;
        }
        .navbar-brand{
            margin: 15px 10px 0;
            font-size: 20px;
        }
        .navbar-brand span{
            color: #8400ff;
            font-size: 20px;
            text-transform: uppercase;	
        }
        .form{
            position: absolute;
            top: 100px;
            left: 350px;
            width: 50vw;
        }
        .form2{
            position: absolute;
            top: 700px;
            left: 350px;
            width: 50vw;
        }

        .form3{
            position: absolute;
            top: 1500px;
            left: 350px;
            width: 50vw;
        }
        .form4{
            position: absolute;
            top: 2500px;
            left: 350px;
            width: 50vw;
        }
        .capa{
            width: 250px;
            height: 350px;
            margin: 40px;
        }
        .capa img{
            width: 100%;
            height: 100%;
        }
    </style>
</head>

<body>
    <nav class="navbar">
        <div class="container-fluid">
            <a class="navbar-brand text-light" href="#">KINO<span>play</span> | DASHBOARD</a>
        </div>
        <ul>
            <li class="nav-item">
                <a class="nav-link" href="/painel/filmes.html">Filmes</a>
                <a class="nav-link" href="/painel/series.html">Séries</a>
            </li>
        </ul>
    </nav>
    <main>
        <div class="capa">
            <img id="capa-img">
        </div>
        <form class="form" method="POST" action="config.php">
            <div class="mb-3">
                <label for="imagem" class="form-label">Link para capa</label>
                <input type="text" name="imagem" class="form-control" id="imagem" placeholder="https://exemploimagem.com/imagem.png">
            </div>
            <div class="mb-3">
                <label for="trailer" class="form-label">Link para trailer</label>
                <input type="text" name="trailer" class="form-control" id="trailer" placeholder="https://exemplovideo.com/trailer.mp4">
            </div>
            <div class="mb-3">
                <label for="titulo" class="form-label">Título</label>
                <input type="text" name="titulo" class="form-control" id="titulo" placeholder="Exemplo: Gato de Botas">
            </div>
            <div class="mb-3">
                <label for="sinopse" class="form-label">Sinopse</label>
                <textarea class="form-control" name="sinopse" id="sinopse" rows="3" placeholder="Era uma vez..."></textarea>
            </div>
            <div class="mb-3">
                <label for="anolancamento" class="form-label">Ano de lançamento</label>
                <input type="number" name="anolancamento" class="form-control" id="anolancamento" min='1900' max='' placeholder="<script>document.write(ano_atual)</script>">
            </div>
            <label for="anolancamento" class="form-label">Classificação indicativa</label>
            <select class="form-control" name="anolancamento">
                <option>Livre</option>
                <option>Não recomendado para menores de 10 anos</option>
                <option>Não recomendado para menores de 12 anos</option>
                <option>Não recomendado para menores de 14 anos</option>
                <option>Não recomendado para menores de 16 anos</option>
                <option>Não recomendado para menores de 18 anos</option>
            </select><br>
            <input type="submit" value="Enviar">
</form>

<form class="form2" method="POST" action="update.php">
                <!--ATUALIZAR LISTA DE FILMES -->
            <h2>ATUALIZAR</h2>
            <div class="mb-3">
                <label for="id" class="form-label">ID do filme</label>
                <input type="number" name="id" class="form-control" id="id">
            </div>
            <div class="mb-3">
                <label for="imagem" class="form-label">Link para capa</label>
                <input type="text" name="imagem" class="form-control" id="imagem" placeholder="https://exemploimagem.com/imagem.png">
            </div>
            <div class="mb-3">
                <label for="trailer" class="form-label">Link para trailer</label>
                <input type="text" name="trailer" class="form-control" id="trailer" placeholder="https://exemplovideo.com/trailer.mp4">
            </div>
            <div class="mb-3">
                <label for="titulo" class="form-label">Título</label>
                <input type="text" name="titulo" class="form-control" id="titulo" placeholder="Exemplo: Gato de Botas">
            </div>
            <div class="mb-3">
                <label for="sinopse" class="form-label">Sinopse</label>
                <textarea class="form-control" name="sinopse" id="sinopse" rows="3" placeholder="Era uma vez..."></textarea>
            </div>
            <div class="mb-3">
                <label for="anoLancamento" class="form-label">Ano de lançamento</label>
                <input type="date" name="anoLancamento" class="form-control" id="anoLancamento" min='1900' max='' placeholder="">
            </div>
            <label for="anoLancamento" class="form-label">Classificação indicativa</label>
            <select class="form-control" name="classificacao">
                <option>Livre</option>
                <option>Não recomendado para menores de 10 anos</option>
                <option>Não recomendado para menores de 12 anos</option>
                <option>Não recomendado para menores de 14 anos</option>
                <option>Não recomendado para menores de 16 anos</option>
                <option>Não recomendado para menores de 18 anos</option>
            </select><br>
            <button type="submit" class="btn btn-primary">Atualizar</button>
</form>

<form class="form3" method="POST" action="delete.php">
            <h2>DELETAR</h2>
            <div class="mb-3">
                <label for="id" class="form-label">ID do filme</label>
                <input type="number" name="id" class="form-control" id="id">
            </div>
            <button type="submit" class="btn btn-danger" onclick="return confirm('Tem certeza que deseja excluir este filme?');">Excluir</button>
</form>

<div class="form4">
<?php

$conn = new PDO("mysql:host=localhost;dbname=kinoflix", "root", "");

$query = "SELECT * FROM filmes";

$stmt = $conn->prepare($query);
$stmt->execute();

$result = $stmt->fetchAll();

echo "<table class='table'>";
echo "<thead>";
echo "<tr>";
echo "<th>ID</th>";
echo "<th>Titulo</th>";
echo "<th>Ano de lançamento</th>";
echo "<th>Sinopse</th>";
echo "<th>Imagem</th>";
echo "<th>Classificação indicativa</th>";
echo "<th>Trailer</th>";
echo "</tr>";
echo "</thead>";
echo "<tbody>";

foreach($result as $row) {
    echo "<tr>";
    echo "<td>" . $row['id'] . "</td>";
    echo "<td>" . $row['titulo'] . "</td>";
    echo "<td>" . $row['anoLancamento'] . "</td>";
    echo "<td>" . $row['sinopse'] . "</td>";
    echo "<td>" . $row['imagem'] . "</td>";
    echo "<td>" . $row['classificacao'] . "</td>";
    echo "<td>" . $row['trailer'] . "</td>";
    echo "</tr>";
}

echo "</tbody>";
echo "</table>";

?>
                </div>
<br>
</body>
<script src="dashboard.js"></script>

</html>