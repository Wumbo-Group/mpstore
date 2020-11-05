<?php
include 'koneksidb.php';
// menyimpan data id kedalam variabel
$id_kategori   = $_GET['id_kategori'];
// query SQL untuk insert data
$sql="DELETE from kategori where id_kategori='$id_kategori'";
$stmt = $db->prepare($sql);
$saved = $stmt->execute();

if($saved) header("Location: kategori");
?>