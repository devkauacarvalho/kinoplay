<?php
    $id = $_GET["id"];
    include_once 'configfilmes.php';

    $sql = "delete from filmes where id = ".$id;

    if(mysqli_query($conn, $sql)){
        header("Location: indexfilmes.php?msg=Registro deletado com sucesso!");
    }else{
        $msg = "Erro ao deletar!";
    }
    mysqli_close($conn);

    ?>