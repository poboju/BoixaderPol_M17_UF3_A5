<?php
session_start();
 
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: validat.html");
    exit;
}

require_once "basedades.php";

$username = "";
$password = "";
$username_err = "";
$password_err = "";

 
if($_SERVER["REQUEST_METHOD"] == "POST"){
    echo $_POST["username"];
    echo $_POST["password"]; 
    if(empty($_POST["username"])){
      $username_err = "Please enter username.";
    } else{
      $username = $_POST["username"];
    }
   
    if(empty($_POST["password"])){
      $password_err = "Please enter your password.";
    }else{
      $password = $_POST["password"];
    }

    if (empty($username_err) && empty($password_err)){
      $validar = "select * from usuaris where username='$username' and password='$password'";
        if ($result = $conn -> query($validar)){
          if ($result->num_rows > 0) {
            // output data of each row
            session_start();
            $_SESSION["loggedin"] = true;
            header("location: validat.html");
            exit;
          } else {
              echo "0 results";
              header("location: index.html");
              exit;
          }
        } else {
          echo "ERROR";
        }
}
//$conn->close();
}
