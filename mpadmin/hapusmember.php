<?php
include 'koneksidb.php';
// menyimpan data id kedalam variabel
$id_member   = $_GET['id_member'];
// query SQL untuk insert data
$sql="DELETE from user where id_user='$id_member'";
$stmt = $db->prepare($sql);
$saved = $stmt->execute();

if($saved) header("Location: member");
?>