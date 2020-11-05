<?php

// $host = "localhost"; /* Host name */
// $user = "root"; /* User */
// $password = ""; /* Password */
// $dbname = "mpstore"; /* Database name */

$host = "localhost";
$user = "u982728152_adminmp";
$password = "ZqFEcQnz";
$dbname = "u982728152_mpstore";

$con = mysqli_connect($host, $user, $password,$dbname);
// Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}