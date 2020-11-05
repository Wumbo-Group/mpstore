<?php
require 'koneksidb.php';
// menyimpan data kedalam variabel
$id_bk     			= filter_input(INPUT_POST, 'id_bk', FILTER_SANITIZE_STRING);
$id_kategori		= filter_input(INPUT_POST, 'id_kategori', FILTER_SANITIZE_STRING);
$tombol_bk  		= filter_input(INPUT_POST, 'tombol_bk', FILTER_SANITIZE_STRING);

// query SQL untuk insert data
$query="UPDATE banner_kategori SET id_kategori='$id_kategori', tombol_bk='$tombol_bk' where id_bk='$id_bk'";

$stmt = $db->prepare($query);

// bind parameter ke query
$params = array(
  ":id_kategori" => $id_kategori,
  ":tombol_bk" => $tombol_bk,
  ":id_bk" => $id_bk,
);

// eksekusi query untuk menyimpan ke database
$saved = $stmt->execute($params);

// jika query simpan berhasil
// maka alihkan ke halaman tujuan
if($saved) header("Location: bannerkategori");
?>