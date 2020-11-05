<?php
require 'koneksi.php';
session_start();

// ambil data file
$id = $_POST['id'];
$path = $_FILES['berkas']['name'];
$ext = pathinfo($path, PATHINFO_EXTENSION);
$namaFile = 'jb_' . $id . '.' . $ext;
$namaSementara = $_FILES['berkas']['tmp_name'];

// tentukan lokasi file akan dipindahkan
$dirUpload = "../images/produk/jumbotron/";

// pindahkan file
$terupload = move_uploaded_file($namaSementara, $dirUpload.$namaFile);

if ($terupload) {
	// query SQL untuk insert data
	$query="UPDATE jumbotron SET foto_jum='$namaFile' where id_jum=$id ";
	mysqli_query($conn, $query);

    // echo "Upload berhasil!<br/>";
    // echo "Link: <a href='".$dirUpload.$namaFile."'>".$namaFile."</a>";
    header("Location: jumbotron");
} else {
    // echo "Upload Gagal!";
    header("Location: jumbotron");
}

?>