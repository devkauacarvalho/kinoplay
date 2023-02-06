<?php
include '../reglog/config.php';
session_start();
  $id_cliente = $_SESSION["id"];
  $id_filme = $_GET["id_F"];
  $id_serie = $_GET["id_S"];
  $estado = $_GET["estado"];

  if (isset($id_filme) && isset($id_cliente)) {
    $sql = "INSERT INTO `favoritos` (`id_cliente`, `id_filme`, `estado`) VALUES ($id_cliente, $id_filme, $estado) ON DUPLICATE KEY UPDATE `estado` = $estado";
  } else if (isset($id_serie)) {
    $sql = "INSERT INTO `favoritos` (`id_cliente`, `id_serie`, `estado`) VALUES ($id_cliente, $id_serie, $estado) ON DUPLICATE KEY UPDATE `estado` = $estado";
  }
  else {
    echo 'Nenhum id foi passado';
  }

  if (mysqli_query($conn, $sql)) {
    echo "Adicionado com sucesso aos favoritos";
  } else {
    echo "Erro ao adicionar aos favoritos";
  }
  