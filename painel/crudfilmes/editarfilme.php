<?php
include 'configfilmes.php';
$id = $_GET['id'];

if(isset($_POST['submit'])) {
    
  $titulo = mysqli_real_escape_string($conn, $_POST['titulo']);
  $anoLancamento = mysqli_real_escape_string($conn, $_POST['anoLancamento']);
  $idGenero = mysqli_real_escape_string($conn, $_POST['idGenero']); 
  $sinopse = mysqli_real_escape_string($conn, $_POST['sinopse']);
  $Imagem = mysqli_real_escape_string($conn, $_POST['Imagem']);
  $Classificacao = mysqli_real_escape_string($conn, $_POST['Classificacao']);
  $trailer = mysqli_real_escape_string($conn, $_POST['trailer']);
  $nota = mysqli_real_escape_string($conn, $_POST['nota']);

    $sql = "UPDATE filmes SET titulo='$titulo', anoLancamento='$anoLancamento',idGenero='$idGenero',sinopse='$sinopse',Imagem='$Imagem',
    Classificacao=$Classificacao,trailer='$trailer',nota='$nota' WHERE id='$id' ";

    $result = mysqli_query($conn, $sql);

    if($result) {
       header("Location: indexfilmes.php?msg=registro atualizado com sucesso");
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

<div class="container">
<div class="text-center mb-4">
<h3>Editar Informações dos Filmes</h3>
<p class="text-muted">Clique em Atualizar depois de mudar qualquer informação</p>

</div>
</div>  
<?php 
$sql = "SELECT * FROM filmes WHERE id =".$id;
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
?>

<div class="container d-flex justify-content-center"> 
<form action="" method="post">
  <div class="form-group">
    <label for="titulo">Título</label>
    <input type="text" class="form-control" id="titulo" name="titulo" value="<?php echo $row['titulo']?>">
  </div>
  <div class="form-group">
    <label for="anoLancamento">Ano de Lançamento</label>
    <input type="date" class="form-control" id="anoLancamento" name="anoLancamento" value="<?php echo $row['anoLancamento']?>">
  </div>
  <div class="form-group">
    <label for="idGenero">ID Gênero</label>
    <input type="number" class="form-control" id="idGenero" name="idGenero" value="<?php echo $row['idGenero']?>">
  </div>
  <div class="form-group">
    <label for="sinopse">Sinopse</label>
    <textarea class="form-control" id="sinopse" name="sinopse"><?php echo $row['sinopse']?></textarea>
  </div>
  <div class="form-group">
    <label for="Imagem">Imagem</label>
    <input class="form-control" id="Imagem" name="Imagem" value="<?php echo $row['Imagem']?>">
  </div>
  <div class="form-group">
    <label for="Classificacao">Classificação</label>
    <input type="number" class="form-control" id="Classificacao" name="Classificacao" value="<?php echo $row['Classificacao']?>">
  </div>
  <div class="form-group">
    <label for="nota">Nota</label>
    <input class="form-control" id="nota" name="nota" value="<?php echo $row['nota']?>">
  </div>
  <div class="form-group">
    <label for="trailer">Trailer</label>
    <input class="form-control" id="trailer" name="trailer" value="<?php echo $row['trailer']?>">
  </div>
  <button type="submit"  name="submit" class="btn btn-primary">Atualizar</button>
</form>
</div>
</body>
</html>