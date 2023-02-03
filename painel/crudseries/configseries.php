<?php

$conn = mysqli_connect("localhost","root","","tempo");

if(!$conn) {
    die("Falha na conexão: " . mysqli_connect_error());
  }
//echo "Show!";
