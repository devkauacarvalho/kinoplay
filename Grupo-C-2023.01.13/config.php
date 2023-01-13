<?php

$conexao = new mysqli('localhost:3306','root','','2023.01.13');

if($conexao->connect_errno)
{
    echo"Erro em algo...";
}
else
{
    echo"Conexão rodando!";
}

?>