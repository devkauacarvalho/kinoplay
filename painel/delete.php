<?php
$id = $_POST['id'];

$conn = mysqli_connect("localhost","root","","kinoflix");

$query = "DELETE FROM filmes WHERE id = '$id'";

$stmt = $conn->prepare($query);
$stmt->execute();

echo "Filme excluído com sucesso!";


header('Location: filmes.php');
?>

