<?php
require 'koneksidb.php';
// menyimpan data kedalam variabel
$judul_teks			= filter_input(INPUT_POST, 'judul_teks', FILTER_SANITIZE_STRING);
$isi_teks			= filter_input(INPUT_POST, 'isi_teks', FILTER_SANITIZE_STRING);
$button_teks  		= filter_input(INPUT_POST, 'button_teks', FILTER_SANITIZE_STRING);
$id_produk  		= filter_input(INPUT_POST, 'id_produk', FILTER_SANITIZE_STRING);

// query SQL untuk insert data
$query="UPDATE banner2landing SET id_produk='$id_produk', judul_teks='$judul_teks', isi_teks='$isi_teks', button_teks='$button_teks'";

$stmt = $db->prepare($query);

// bind parameter ke query
$params = array(
  ":id_produk" => $id_produk,
  ":judul_teks" => $judul_teks,
  ":isi_teks" => $isi_teks,
  ":button_teks" => $button_teks,
);

// eksekusi query untuk menyimpan ke database
$saved = $stmt->execute($params);

// jika query simpan berhasil
// maka alihkan ke halaman tujuan
if($saved) header("Location: bannerprodukbaru");
?>