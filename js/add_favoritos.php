<?php
include '../reglog/config.php';

  $id_cliente = $_SESSION['id'];
  $id_filme = $_GET['id_F'];


  if (isset($id_filme) && isset($id_cliente)) {
    $sql = "INSERT INTO favoritos (id_cliente, id_filme) VALUES ($id_cliente, $id_filme)";
  } else if (isset($id_serie)) {
    $sql = "INSERT INTO favoritos (id_cliente, id_serie) VALUES ($id_cliente, $id_serie)";
  }
  else {
    echo 'Nenhum id foi passado';
  }

  if (mysqli_query($conn, $sql)) {
    echo "Adicionado com sucesso aos favoritos";
  } else {
    echo "Erro ao adicionar aos favoritos";
  }
  