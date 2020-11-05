<?php
include 'koneksidb.php';
// menyimpan data id kedalam variabel
$id_jum   = $_GET['id_jum'];
// query SQL untuk insert data
$sql="DELETE from jumbotron where id_jum='$id_jum'";
$stmt = $db->prepare($sql);
$saved = $stmt->execute();

if($saved) header("Location: jumbotron");
?>