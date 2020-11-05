<?php 
  require_once("otentikasi.php"); 

  require 'koneksidb.php';

  //CARA LAMA
  // $query = "SELECT id_user, username, nama_user, foto_profil FROM user WHERE id_user = {$_SESSION['user']['id_user']}"; 
  // $result = $conn->query($query);
  // $data_user = $result->fetch_assoc();
  $idMember = $_SESSION['user']['id_user'];

  $sql = "SELECT id_user, email_user, username, password, nama_user, jenis_kelamin, tgl_lahir, alamat, no_ktp, no_hp, bank_rek, no_rek, nama_pemilik_rek, foto_profil, lvl FROM user WHERE id_user = '$idMember'";
  $stmt = $db->prepare($sql);
  $stmt->execute();

  $data_user = $stmt->fetch(PDO::FETCH_ASSOC);
?>