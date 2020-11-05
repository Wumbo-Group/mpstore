<?php
include 'koneksidb.php';
// menyimpan data id kedalam variabel
$id_produk   = $_GET['id_produk'];
// query SQL untuk insert data
$sql="DELETE from produk where id_produk='$id_produk'";
$stmt = $db->prepare($sql);
$saved = $stmt->execute();

if($saved) header("Location: produk");
?>