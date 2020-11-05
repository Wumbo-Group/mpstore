<?php

// $db_host = "localhost";
// $db_user = "root";
// $db_pass = "";
// $db_name = "mpstore";

$db_host = "localhost";
$db_user = "u982728152_adminmp";
$db_pass = "ZqFEcQnz";
$db_name = "u982728152_mpstore";

try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}

// date_default_timezone_set("Asia/Jakarta");
// $tgl_gabung = date("Y-m-d");
// echo ($tgl_gabung);