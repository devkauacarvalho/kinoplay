<?php
    $id = $_GET["id"];
    include_once 'configseries.php';

    $sql = "delete from series where id = ".$id;

    if(mysqli_query($conn, $sql)){
        header("Location: indexseries.php?msg=Registro deletado com sucesso!");
    }else{
        $msg = "Erro ao deletar!";
    }
    mysqli_close($conn);

    ?>