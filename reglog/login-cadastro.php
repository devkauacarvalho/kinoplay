<?php
require 'config.php';
session_start();

if(isset($_POST["submit"])){
    $nome = $_POST["nome"];
    $username = $_POST["username"];
    $email = $_POST["email"];
    $data_nasc = $_POST["data_nasc"];
    $senha = $_POST["senha"];
    $confirmesenha = $_POST["confirmesenha"];
    $duplicate = mysqli_query($conn, "SELECT * FROM cliente where username = '$username' or email = '$email'");
    if(mysqli_num_rows($duplicate) > 0){
        echo "<script> alert('Nome de usuário ou Email já cadastrado'); </script>";
    }else{
        if($senha == $confirmesenha){
            $query = "INSERT INTO cliente values('','$username','$email','$nome','$senha','$data_nasc')";
            mysqli_query($conn,$query);
            echo "<script> alert('Cadastro Finalizado!!'); </script>";
        } else{
            echo "<script> alert('Senhas não estão iguais'); </script>";
        }
    }
}

if(isset($_POST["enviarlogin"])){
    $usernameemail = $_POST["usernameemail"];
    $senha = $_POST["senha"];
    $result = mysqli_query($conn, "SELECT * FROM cliente where username = '$usernameemail' or email = '$usernameemail'");
    $row = mysqli_fetch_assoc($result);
    if(mysqli_num_rows($result) > 0){

        if($senha == $row["senha"]){
            $_SESSION["login"] = true;
            $_SESSION["id"] = $row["id"];
            header("Location: ../index.php");
        }
        else{
            echo "<script> alert('Senha incorreta'); </script>";
        }
    }else{
        echo "<script> alert('Nome de usuário ou email não está cadastrado'); </script>";
    }
}

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../img/website-logo/logo.png">
    <link rel="stylesheet" href="../css/login-page.css">
    <title>Kinoplay | Login</title>
</head>
<body>
    <div class="wrapper">
        <div class="form-wrapper sign-up">
            <form action="" method="post">
                <h2>Cadastrar</h2>
                <div class="input-group">
                    <input type="text" name="username" id="username" required>
                    <label for="username">Nome de Usuário</label>
                </div>
                <div class="input-group">
                    <input type="text" name="nome" id="nome" required>
                    <label for="nome">Nome</label>
                    
                </div>
                <div class="input-group">
                    <input type="email"name="email" id="email" required>
                    <label for="email">Email</label>
                    
                </div>
                <div class="input-group">
                    <input type="date" name="data_nasc" id="data_nasc" required>
                    <label for="data_nasc">Data de nascimento</label>
                    
                </div>
                <div class="input-group">
                    <input type="password" name="senha" id="senha" required>
                    <label for="senha">Senha</label>
                </div>
                <div class="input-group">
                    <input type="password" name="confirmesenha" id="confirmesenha" required>
                    <label for="confirmesenha">Confirme sua senha</label>
                </div>
                <button type="submit" name="submit" class="btn">Cadastrar</button>
                <div class="sign-link">
                    <p>Já tem uma conta? <a href="#" class="signIn-link">Entrar</a></p>
                </div>
            </form>
        </div>

        <div class="form-wrapper sign-in">
            <form action="" method="post">
                <h2>Bem-vindo de volta</h2>
                <div class="input-group">
                    <input type="text" name="usernameemail" id="usernameemail" required>
                    <label for="usernameemail">Nome de Usuário ou Email</label>
                </div>
                <div class="input-group">
                    <input type="password" name="senha" id="senha" required>
                    <label for="senha">Senha</label>
                </div>
                <div class="forgot-pass">
                    <a href="#">Esqueceu a senha?</a>
                </div>
                <button type="submit" name="enviarlogin" class="btn">Entrar</button>
                <div class="sign-link">
                    <p>Ainda não tem uma conta? <a href="#" class="signUp-link">Cadastre-se</a></p>
                </div>
            </form>
        </div>
    </div>

    <script src="../js/login.js"></script>
</body>
</html>