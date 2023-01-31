<?php

$conn = mysqli_connect("localhost","root","","kinoflix");

if(!$conn) {
    die("Falha na conexão: " . mysqli_connect_error());
  }
//echo "Show!";
