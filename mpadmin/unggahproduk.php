<?php
require 'koneksi.php';
session_start();


$id_produk = $_POST['id_produk'];
$foto_ke = $_POST['foto_ke'];
// ambil data file
$path = $_FILES['berkas']['name'];
$ext = pathinfo($path, PATHINFO_EXTENSION);
$namaFile = 'pd_' . $id_produk . '_' . $foto_ke . '.' . $ext;
$namaSementara = $_FILES['berkas']['tmp_name'];

$kolomFotoProduk = 'foto_produk' . $foto_ke;

// tentukan lokasi file akan dipindahkan
$dirUpload = "../images/produk/produk_barang/";

// pindahkan file
$terupload = move_uploaded_file($namaSementara, $dirUpload.$namaFile);
$link = 'suntingproduk?id_produk=' . $id_produk;

if ($terupload) {
	// query SQL untuk insert data
	$query="UPDATE produk SET $kolomFotoProduk='$namaFile' where id_produk=$id_produk";
	mysqli_query($conn, $query);

    // echo "Upload berhasil!<br/>";
    // echo "Link: <a href='".$dirUpload.$namaFile."'>".$namaFile."</a>";
    header("Location: $link");
} else {
    // echo "Upload Gagal!";
    header("Location: $link");
}

?>