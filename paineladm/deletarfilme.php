<?php
    $id = $_GET["id"];
    include_once 'configfilmes.php';

    $sql = "delete from filmes where id = ".$id;

    if(mysqli_query($sql,$conn)){
        $msg = "Deletado com sucesso!";
    }else{
        $msg = "Erro ao deletar!";
    }
    mysql_close($conn);

    ?>