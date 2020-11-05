<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
if(!isset($_SESSION["user"])) header("Location: login");

if ($_SESSION["user"]["no_rek"] == "") {
    header("Location: aktivasi");
  } else {
    
  }

// if ($_SESSION["user"]["lvl"] != "0") {
//     header("Location: dashboard");    
//   } else {

//   }

// if ($_SESSION["user"]["no_ktp"] == "") {
//   header("Location: aktivasi.php");
// } else {
//   header("Location: dashboard.php");
// }

?>