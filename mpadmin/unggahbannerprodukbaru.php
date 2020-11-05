<?php
require 'koneksi.php';
session_start();

// ambil data file
$path 			= $_FILES['berkas']['name'];
$ext 			= pathinfo($path, PATHINFO_EXTENSION);
$namaFile 		= 'produk_baru' . '.' . $ext;
$namaSementara 	= $_FILES['berkas']['tmp_name'];

// tentukan lokasi file akan dipindahkan
$dirUpload = "../images/produk/banner_kategori/";

// pindahkan file
$terupload = move_uploaded_file($namaSementara, $dirUpload.$namaFile);

if ($terupload) {
	// query SQL untuk insert data
	$query="UPDATE banner2landing SET foto_b2='$namaFile'";
	mysqli_query($conn, $query);

    // echo "Upload berhasil!<br/>";
    // echo "Link: <a href='".$dirUpload.$namaFile."'>".$namaFile."</a>";
    header("Location: bannerprodukbaru");
} else {
    // echo "Upload Gagal!";
    header("Location: bannerprodukbaru");
}

?>