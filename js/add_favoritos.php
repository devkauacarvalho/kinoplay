<?php
include '../reglog/config.php';
session_start();
$id_cliente = $_SESSION["id"];
$id_filme = $_GET["id_F"];
$id_serie = $_GET["id_S"];
$estado = $_GET["estado"];

if (isset($id_filme) && isset($id_cliente)) {
  if ($estado) {
    $sql = "INSERT INTO `favoritos` (`id_cliente`, `id_filme`, `estado`) VALUES ($id_cliente, $id_filme, $estado) ON DUPLICATE KEY UPDATE `estado` = $estado";
  } else {
    $sql = "DELETE FROM `favoritos` WHERE `id_cliente` = $id_cliente AND `id_filme` = $id_filme";
  }
} else if (isset($id_serie)) {
  if ($estado) {
    $sql = "INSERT INTO `favoritos` (`id_cliente`, `id_serie`, `estado`) VALUES ($id_cliente, $id_serie, $estado) ON DUPLICATE KEY UPDATE `estado` = $estado";
  } else {
    $sql = "DELETE FROM `favoritos` WHERE `id_cliente` = $id_cliente AND `id_serie` = $id_serie";
  }
} else {
  echo 'Nenhum id foi passado';
}

if (mysqli_query($conn, $sql)) {
  echo "Operação realizada com sucesso";
} else {
  echo "Erro ao realizar a operação";
}