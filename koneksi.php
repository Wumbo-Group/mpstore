<?php  
// $koneksi = new mysqli ("localhost","root","","mpstore");
 $koneksi = new mysqli ("localhost","u982728152_adminmp","ZqFEcQnz","u982728152_mpstore");
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}
?>