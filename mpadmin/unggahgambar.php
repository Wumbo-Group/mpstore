<?php
require 'koneksi.php';
session_start();

$idMember = $_SESSION['user']['id_user'];

// ambil data file
$path = $_FILES['berkas']['name'];
$ext = pathinfo($path, PATHINFO_EXTENSION);
$namaFile = 'foto_' . $idMember . '.' . $ext;
$namaSementara = $_FILES['berkas']['tmp_name'];

// tentukan lokasi file akan dipindahkan
$dirUpload = "images/";

// pindahkan file
$terupload = move_uploaded_file($namaSementara, $dirUpload.$namaFile);

if ($terupload) {
	// query SQL untuk insert data
	$query="UPDATE user SET foto_profil='$namaFile' where id_user='$idMember'";
	mysqli_query($conn, $query);

    // echo "Upload berhasil!<br/>";
    // echo "Link: <a href='".$dirUpload.$namaFile."'>".$namaFile."</a>";
    header("Location: profil");
} else {
    // echo "Upload Gagal!";
    header("Location: profil");
}

?>