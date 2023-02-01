<?php

function insert($id_cliente, $id, $tipo) {
  // Conectar ao banco de dados
  $conn = mysqli_connect('localhost', 'root', '', 'kinoflix');

  // Verificar a conexão
  if (!$conn) {
    return json_encode(['error' => 'Falha ao conectar ao banco de dados']);
  }

  // Preparar a consulta
  $query = "INSERT INTO favoritos (id_cliente, id_{$tipo}) VALUES (?, ?)";
  $stmt = mysqli_prepare($conn, $query);
  mysqli_stmt_bind_param($stmt, 'ii', $id_cliente, $id);

  // Executar a consulta
  if (mysqli_stmt_execute($stmt)) {
    return json_encode(['message' => 'item adicionado aos favoritos']);
  } else {
    return json_encode(['error' => 'Falha ao adicionar item aos favoritos']);
  }

  // Fechar a conexão
  mysqli_close($conn);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  // Ler os dados da requisição
  $id_cliente = $_POST['id_cliente'];
  $tipo = $_POST['tipo'];
  $id = $_POST["id_{$tipo}"];

  // Adicionar o item aos favoritos do usuário
  echo insert($id_cliente, $id, $tipo);
} else {
  http_response_code(405);
  echo json_encode(['error' => 'Método não permitido']);
}
