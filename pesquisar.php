<?php

$servidor = "localhost";
$usuario = "root";
$senha = "";
$dbname = "kinoflix";
//Criar a conexao
$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);

$pesquisar = $_POST['pesquisar'];
$result_filmes = "SELECT * FROM filmes WHERE nomebr LIKE '%$pesquisar%' LIMIT 5";
$resultado_filmes = mysqli_query($conn, $result_filmes);

while($rows_filmes = mysqli_fetch_array($resultado_filmes)){
    echo "Nome do filme: ".$rows_filmes['nomebr']."<br>";
    echo "               ".$rows_filmes['Imagem']."<br>";
}

?>