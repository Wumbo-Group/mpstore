<?php 

  require 'koneksidb.php';

  //CARA LAMA
  // $query = "SELECT id_user, username, nama_user, foto_profil FROM user WHERE id_user = {$_SESSION['user']['id_user']}"; 
  // $result = $conn->query($query);
  // $data_user = $result->fetch_assoc();
  if (session_status() == PHP_SESSION_NONE) {
    session_start();
  }
  if (!isset($_SESSION['user']['id_user'])) {
    header("Location: login");
  }
  else {
    $idMember = $_SESSION['user']['id_user'];
  }
  

  $sql = "SELECT id_user, username, nama_user, foto_profil, lvl FROM user WHERE id_user = '$idMember'";
  $stmt = $db->prepare($sql);
  $stmt->execute();
  //print_r($_SESSION['user']['id_user']);

  $data_user = $stmt->fetch(PDO::FETCH_ASSOC);
  //print_r($data_user);
?>