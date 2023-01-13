<?php

if(isset($_POST['submit']))
{
    include_once('config.php');

    $nome = $_POST['nome'];
    $tel1 = $_POST['tel1'];
    $tel2 = $_POST['tel2'];
    $email = $_POST['email'];
    $emailrec = $_POST['emailrec'];
    $datanasc = $_POST['datanasc'];
    $cidadenasc = $_POST['cidadenasc'];
    $bairronasc = $_POST['bairronasc'];
    $cpf = $_POST['cpf'];
    $rg = $_POST['rg'];
    $datarg = $_POST['datarg'];
    $cep = $_POST['cep'];
    $complemento = $_POST['complemento'];
    $nomeusuario = $_POST['nomeusuario'];
    $senha = $_POST['senha'];
    $profissao = $_POST['profissao'];
    $nivelescola = $_POST['nivelescola'];
    $estadocivil = $_POST['estadocivil'];
    $altura = $_POST['altura'];
    $peso = $_POST['peso'];

    $result = mysqli_query($conexao, "INSERT INTO formulario (nome,tel1,tel2,email,emailrec,datanasc,cidadenasc,bairronasc,cpf,rg,datarg,cep,complemento,nomeusuario,senha,profissao,nivelescola,estadocivil,altura,peso) values('$nome','$tel1','$tel2','$email','$emailrec','$datanasc','$cidadenasc','$bairronasc','$cpf','$rg','$datarg','$cep','$complemento','$nomeusuario','$senha','$profissao','$nivelescola','$estadocivil','$altura','$peso')");
    
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>13.01.2023</title>

<style>

        label{
            font-size:15px;
        }
        body{
            overflow-x:hidden;
        }
        .box {
            width:100%;
            position: absolute;
            background-color: blue;
        }

        .field{
            border: 1px solid #fff;
            padding: 0 45% 0 45% ;
            align-items: center;
            margin: 20px;
            display: inline;
            border-radius: 36px 35px 35px 10px;
            -webkit-border-radius: 36px 35px 35px 10px;
            -moz-border-radius: 36px 35px 35px 10px;
        }
        .legend {
            color: #fff;
            text-align: center;
            display: flex;
        }
        .cadastrar {
            text-align: center;
            justify-content: center;
            align-items: center;
            margin: 0;
            display: flex;
        }

        .inputUser {
            border-radius: 10px;
            ;
        }

        .inputtext{
            color: #fff;
        }

        .submit-button {
            justify-content: center;
            border-radius: 15px;
            display: flex;
            padding: 5px;
        }
    </style>
</head>
<body>
    <form class="cadastro" action="index.php" method="POST">
        <div class="box">
        <fieldset class="field">
            <legend class="legend">Atividade 13.01.2023</legend>
                <label class="cadastrar">Cadastre-se</label>
                    <br>
                        <label for="nome" class="inputtext">Nome Completo</label>
                            <br>
                        <input type="text"  name="nome" id="nome" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="tel1" class="inputtext">Telefone</label>
                            <br>    
                        <input type="number"  name="tel1" id="tel1" class="inputUser" required/>
                            <br>
                            <br>
                        <label for="tel2" class="inputtext">Telefone para recado</label>
                            <br>    
                        <input type="number"  name="tel2" id="tel2" class="inputUser" required/>
                            <br>
                            <br>
                        <label for="email" class="inputtext">Email</label>
                            <br>
                            <input type="email"  name="email" id="email" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="emailrec" class="inputtext">Email de Recuperação</label>
                            <br>
                            <input type="email"  name="emailrec" id="emailrec" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="data" class="inputtext">Data de Nascimento</label>
                            <br>
                            <input type="date"  name="datanasc" id="datanasc" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="cidadenasc" class="inputtext">Cidade de Nascimento</label>
                            <br>
                            <input type="text"  name="cidadenasc" id="cidadenasc" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="bairronasc" class="inputtext">Bairro de Nascimento</label>
                            <br>
                            <input type="text"  name="bairronasc" id="bairronasc" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="cpf" class="inputtext">CPF</label>
                            <br>
                            <input type="text"  name="cpf" id="cpf" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="rg" class="inputtext">RG</label>
                            <br>
                            <input type="text"  name="rg" id="rg" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="datarg" class="inputtext">Data de emissão RG</label>
                            <br>
                            <input type="text"  name="datarg" id="datarg" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="cep" class="inputtext">CEP</label>
                            <br>
                            <input type="text"  name="cep" id="cep" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="complemento" class="inputtext">Complemento</label>
                            <br>
                            <input type="text"  name="complemento" id="complemento" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="nomeusuario" class="inputtext">Nome de usuário</label>
                            <br>
                            <input type="text"  name="nomeusuario" id="nomeusuario" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="senha" class="inputtext">Senha</label>
                            <br>
                            <input type="text"  name="senha" id="nomeusenhasuario" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="profissao" class="inputtext">Profissão</label>
                            <br>
                            <input type="text"  name="profissao" id="profissao" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="nivelescola" class="inputtext">Nível de escolaridade</label>
                            <br>
                            <input type="text"  name="nivelescola" id="nivelescola" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="estadocivil" class="inputtext">Estado civil</label>
                            <br>
                            <input type="text"  name="estadocivil" id="estadocivil" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="altura" class="inputtext">Altura</label>
                            <br>
                            <input type="text"  name="altura" id="altura" class="inputUser" required/>  
                            <br>
                            <br>
                        <label for="peso" class="inputtext">Peso</label>
                            <br>
                            <input type="text"  name="peso" id="peso" class="inputUser" required/>  
                            <br>
                            <br>
                        <input type="submit" name="submit" id="submit" class="submit-button"/>
                            <br>
        </fieldset>
        </div>
    </form>
</body>
</html>