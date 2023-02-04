<?php
$id = $_POST['id'];
$imagem = $_POST['imagem'];
$trailer = $_POST['trailer'];
$titulo = $_POST['titulo'];
$sinopse = $_POST['sinopse'];
$anolancamento = $_POST['anoLancamento'];
$classificacao = $_POST['classificacao'];


$conn = mysqli_connect("localhost","root","","kinoflix");

$query = "UPDATE filmes SET titulo = '$titulo', anoLancamento = '$anolancamento', sinopse = '$sinopse', imagem = '$imagem', classificacao = '$classificacao', trailer = '$trailer' WHERE id = '$id'";


$stmt = $conn->prepare($query);
$stmt->execute();

echo "Filme atualizado com sucesso!";

header('Location: filmes.php');

?>
