<?php

include 'koneksi.php';
 
$email = $_POST['email'];
$password = $_POST['password'];
 
//$query = mysqli_query($success, "SELECT * FROM user WHERE email_user='$email' AND password='$password'");

$query = "SELECT * FROM user WHERE email_user='$email' AND password='$password'"; 

$result = $conn->query($query);

$cek = mysqli_num_rows($result);
echo $result;
?>