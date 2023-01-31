<?php
INCLUDE 'configfilmes.php';

if(isset($_POST['submit'])) {
    $titulo = mysqli_real_escape_string($conn, $_POST['titulo']);
    $anoLancamento = mysqli_real_escape_string($conn, $_POST['anoLancamento']);
    $idDiretor = mysqli_real_escape_string($conn, $_POST['idDiretor']);
    $idGenero = mysqli_real_escape_string($conn, $_POST['idGenero']); 
    $sinopse = mysqli_real_escape_string($conn, $_POST['sinopse']);
    $Imagem = mysqli_real_escape_string($conn, $_POST['Imagem']);
    $Classificacao = mysqli_real_escape_string($conn, $_POST['Classificacao']);
    $trailer = mysqli_real_escape_string($conn, $_POST['trailer']);

    $sql = "INSERT INTO `filmes`(`id`,`titulo`,`anoLancamento`, `idDiretor`, `idGenero`, `sinopse`, `Imagem`, `Classificacao`, `trailer`) 
    VALUES ('','$titulo','$anoLancamento','$idDiretor','$idGenero','$sinopse','$Imagem','$Classificacao','$trailer')";

    $result = mysqli_query($conn, $sql);

    if($result) {
        header("Location: indexfilmes.php?msg=Novo registro criado com sucesso");
    }
    else {
      echo "Erro. Algo falhou" . mysqli_error($conn); 
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" 
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" 
        crossorigin="anonymous" referrerpolicy="no-referrer" />    

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
        integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
        crossorigin="anonymous"></script>

    <title>CRUD</title>
</head>
<body>
    
<form action="create.php" method="post">
  <div class="form-group">
    <label for="titulo">Título</label>
    <input type="text" class="form-control" id="titulo" name="titulo" required>
  </div>
  <div class="form-group">
    <label for="anoLancamento">Ano de Lançamento</label>
    <input type="date" class="form-control" id="anoLancamento" name="anoLancamento" required>
  </div>
  <div class="form-group">
    <label for="idDiretor">ID Diretor</label>
    <input type="number" class="form-control" id="idDiretor" name="idDiretor" required>
  </div>
  <div class="form-group">
    <label for="idGenero">ID Gênero</label>
    <input type="number" class="form-control" id="idGenero" name="idGenero" required>
  </div>
  <div class="form-group">
    <label for="sinopse">Sinopse</label>
    <textarea class="form-control" id="sinopse" name="sinopse" required></textarea>
  </div>
  <div class="form-group">
    <label for="Imagem">Imagem</label>
    <textarea class="form-control" id="Imagem" name="Imagem" required></textarea>
  </div>
  <div class="form-group">
    <label for="Classificacao">Classificação</label>
    <input type="number" class="form-control" id="Classificacao" name="Classificacao" required>
  </div>
  <div class="form-group">
    <label for="trailer">Trailer</label>
    <textarea class="form-control" id="trailer" name="trailer" required></textarea>
  </div>
  <button type="submit"  name="submit" class="btn btn-primary">Adicionar Filme</button>
</form>

</body>
</html>