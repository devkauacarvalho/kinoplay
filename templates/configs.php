<?php
    $id = $_GET['id'];

    // Consulta SQL para buscar o link do vídeo
    $sql = "SELECT trailer FROM filmes WHERE id = $id";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);

    $trailer = $row['trailer'];
?>