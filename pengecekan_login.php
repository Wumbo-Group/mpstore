<?php
session_start();
include 'koneksi.php';

$email = $_POST["email"];
$password = md5($_POST["pass"]);

$ambil = $koneksi->query("SELECT * FROM user WHERE email_user = '$email' AND password_user = '$password'");

$akunyangcocok = $ambil->num_rows;

if ($akunyangcocok==1) 
{
//anda sudah login
$akun = $ambil->fetch_assoc();
$_SESSION["user"] = $akun;

echo "<script>alert('anda sukses login');</script>";
echo "<script>location='index';</script>";

}

else
{
echo "<script>alert('anda gagal login, periksa akun anda');</script>";
echo "<script>location='login';</script>";
}

?>