<?php
    $filme_classificacao = "SELECT Classificacao FROM filmes WHERE id = $id";
    $result_fclassificacao = mysqli_query($conn, $filme_classificacao);
    $row5 = mysqli_fetch_assoc($result_fclassificacao);
    $fclassificacao = $row5['Classificacao'];
?>



function definirCor($fclassificacao) {
    switch ($fclassificacao) {
        case 'Livre':
            return 'green';
            break;
        case '18':
            return 'red';
            break;
        case '16':
            return 'yellow';
            break;
        case '12':
            return 'blue';
            break;
        default:
            return 'black';
    }
}