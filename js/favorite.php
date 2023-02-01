<?php

if (isset($_POST['favorite_movie'])) {
    $user_id = $_SESSION['user_id'];
    $movie_id = $_POST['movie_id'];

    $sql = "INSERT INTO favorites (user_id, movie_id) VALUES ($user_id, $movie_id)";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        echo "Filme adicionado aos favoritos com sucesso!";
    } else {
        echo "Erro ao adicionar filme aos favoritos";
    }
}