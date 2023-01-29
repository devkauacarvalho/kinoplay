<?php
require('reglog/config.php');
$query = "SELECT * FROM filmes";
$result = mysqli_query($conn, $query);
while ($row = mysqli_fetch_assoc($result)) {
    $img = $row['Imagem'];
    echo '<img src="'.$img.'">';
}
?>