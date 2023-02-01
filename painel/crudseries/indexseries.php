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

<nav class="navbar navbar-light justify-content-center fs-3 mb-5" style="background-color: red">
Teste
</nav>



<div class="container">
    <?php
    if(isset($_GET['msg'])) {
        $msg = $_GET['msg'];
        echo '<div class="alert alert-warning alert-dismissible fade show" 
        role="alert">
        '.$msg.'
        <button type="button" class="btn-close" data-bs-dismiss="alert" 
        aria-label="Close"></button>
      </div>';
    }
    ?>



        <a href="cadastrarserie.php" class="btn btn-dark">Adicionar nova serie</a>
        <table class="table">
    <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Título</th>
            <th scope="col">Ano de Lançamento</th>
            <th scope="col">ID Diretor</th>
            <th scope="col">ID Gênero</th>
            <th scope="col">Sinopse</th>
            <th scope="col">Classificação</th>
            <th scope="col">Nota</th>
            <th scope="col">Imagem</th>
            <th scope="col">Trailer</th>
            <th scope="col">Editar/Deletar</th>
        </tr>
    </thead>
    <tbody>
        <?php
        include "configseries.php";

        $sql = "SELECT * FROM `series`";
        $result = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_assoc($result)) {
            ?>
            <tr>
      <th><?php echo $row['id'] ?></th>
      <th><?php echo $row['titulo'] ?></th>
      <th><?php echo $row['anoLancamento'] ?></th>
      <th><?php echo $row['idDiretor'] ?></th>
      <th><?php echo $row['idGenero'] ?></th>
      <th><?php echo $row['sinopse'] ?></th>
      <th><?php echo $row['Classificacao'] ?></th>
      <th><?php echo $row['nota'] ?></th>
      <th><?php echo $row['Imagem'] ?></th>
      <th><?php echo $row['trailer'] ?></th>
      <td>
        <a href="editarserie.php?id=<?php echo $row['id'] ?>" class="link-dark"><i class="fa-solid 
        fa-pen-to-square fs-5 me-3"></i></a>
        <a href="deletarserie.php?id=<?php echo $row['id'] ?>" class="link-dark"><i class="fa-solid fa-trash 
        fs-5 me-3"></i></a>
      </td>     
    </tr> 
            <?php
        }
        ?>
    </tbody>
  </table>
</div>
</body>
</html>