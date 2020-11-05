<?php
require 'koneksi.php';
session_start();

// ambil data file
$id_bk 			= $_POST['id_bk'];
$path 			= $_FILES['berkas']['name'];
$ext 			= pathinfo($path, PATHINFO_EXTENSION);
$namaFile 		= 'bk_' . $id_bk . '.' . $ext;
$namaSementara 	= $_FILES['berkas']['tmp_name'];

// tentukan lokasi file akan dipindahkan
$dirUpload = "../images/produk/banner_kategori/";

// pindahkan file
$terupload = move_uploaded_file($namaSementara, $dirUpload.$namaFile);

if ($terupload) {
	// query SQL untuk insert data
	$query="UPDATE banner_kategori SET foto_bk='$namaFile' where id_bk=$id_bk";
	mysqli_query($conn, $query);

    // echo "Upload berhasil!<br/>";
    // echo "Link: <a href='".$dirUpload.$namaFile."'>".$namaFile."</a>";
    header("Location: bannerkategori");
} else {
    // echo "Upload Gagal!";
    header("Location: bannerkategori");
}

?>