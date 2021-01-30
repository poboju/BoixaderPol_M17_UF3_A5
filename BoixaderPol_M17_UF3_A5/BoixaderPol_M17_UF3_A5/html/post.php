<?php
session_start();
 
if(!isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] !== true){
    header("location: validat.html");
    exit;
}

require_once "basedades.php";

$pseudonimo = "";
$motiu = "";
$categoria = "";
$pseudonimo_err = "";
$motiu_err = "";
$categoria_err = "";

 
if($_SERVER["REQUEST_METHOD"] == "POST"){
    echo $_POST["pseudonimo"];
    echo $_POST["motiu"];
    echo $_POST["categoria"];
    if(empty($_POST["pseudonimo"])){
      $pseudonimo_err = "Please enter username.";
    } else{
      $pseudonimo = $_POST["pseudonimo"];
    }
   
    if(empty($_POST["motiu"])){
      echo "error";
      $motiu_err = "Please enter your password.";
    }else{
      echo "ERROR";
      $motiu = $_POST["motiu"];
    }

    if(empty($_POST["categoria"])){
      $categoria_err = "Please enter username.";
    } else{
      $categoria = $_POST["categoria"];
    }

    if (empty($pseudonimo_err) && empty($motiu_err) && empty($categoria_err)){
      echo $pseudonimo_err;
      echo $motiu_err;
      echo $categoria_err;

      $crearPost = "insert into entrades (pseudonimo, motiu, categoria) values ('$pseudonimo', '$motiu', '$categoria');";
        if ($result = $conn->query($crearPost)){
            echo "$pseudonimo";
            echo "<br>";
            echo "$categoria";
            echo "<br>";
            echo "$motiu";
            echo "<br>";

            // output data of each row
            //header("location: validat.html");
            //exit;
        } else {
          echo "ERROR";
        }
}
//$conn->close();
}