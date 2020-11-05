<?php
require 'koneksidb.php';
// menyimpan data kedalam variabel
$id     			= filter_input(INPUT_POST, 'id', FILTER_SANITIZE_STRING);
$id_produk			= filter_input(INPUT_POST, 'id_produk', FILTER_SANITIZE_STRING);
$teks1     			= filter_input(INPUT_POST, 'teks1', FILTER_SANITIZE_STRING);
$teks2     			= filter_input(INPUT_POST, 'teks2', FILTER_SANITIZE_STRING);

// query SQL untuk insert data
$query="UPDATE jumbotron SET id_produk='$id_produk', teks1_jum='$teks1', teks2_jum='$teks2' where id_jum='$id'";

$stmt = $db->prepare($query);

// bind parameter ke query
$params = array(
  ":id_jum" => $id_produk,
  ":teks1_jum" => $teks1,
  ":teks2_jum" => $teks2,
  ":id_jum" => $id,
);

// eksekusi query untuk menyimpan ke database
$saved = $stmt->execute($params);

// jika query simpan berhasil
// maka alihkan ke halaman tujuan
if($saved) header("Location: jumbotron");
?>