<?php
	require '../reglog/config.php';

// Obtém as informações do formulário
$imagem = $_POST['imagem'];
$trailer = $_POST['trailer'];
$titulo = $_POST['titulo'];
$sinopse = $_POST['sinopse'];
$anolancamento = $_POST['anolancamento'];
$classificacao = $_POST['classificacao'];

// Valida as informações
if(empty($imagem) || empty($trailer) || empty($titulo) || empty($sinopse) || empty($anolancamento)){
    die("Todos os campos são obrigatórios");
}

if(!filter_var($imagem, FILTER_VALIDATE_URL)){
    die("Link para capa inválido");
}

if(!filter_var($trailer, FILTER_VALIDATE_URL)){
    die("Link para trailer inválido");
}

// Escapa as informações para prevenir SQL injection
$imagem = mysqli_real_escape_string($conn, $imagem);
$trailer = mysqli_real_escape_string($conn, $trailer);
$titulo = mysqli_real_escape_string($conn, $titulo);
$sinopse = mysqli_real_escape_string($conn, $sinopse);
$anolancamento = mysqli_real_escape_string($conn, $anolancamento);
$classificacao = mysqli_real_escape_string($conn, $classificacao);

// Insere as informações no banco de dados
$query = "INSERT INTO filmes (id, titulo, anoLançamento, idDiretor, idGenero, sinopse, Imagem) VALUES ('', '$titulo', '$anolancamento', '', '','$sinopse','$imagem')";

if(!mysqli_query($conn, $query)){
    die("Erro ao inserir no banco de dados");
}

echo "Filme adicionado com sucesso";

?>