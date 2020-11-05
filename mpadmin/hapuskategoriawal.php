<?php
include 'koneksidb.php';
// menyimpan data id kedalam variabel
$id_kategori_awal   = $_GET['id_kategori_awal'];
// query SQL untuk insert data
$sql="DELETE from kategori_awal where id_kategori_awal='$id_kategori_awal'";
$stmt = $db->prepare($sql);
$saved = $stmt->execute();

if($saved) header("Location: kategoriawal");
?>