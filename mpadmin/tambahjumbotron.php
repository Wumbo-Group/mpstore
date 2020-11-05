<?php
  require_once("koneksidb.php");

  $id_produk      = $_POST['id_produk'];

  // menyiapkan query
  $sql = "INSERT INTO jumbotron (id_produk) VALUES ('')";
  $stmt = $db->prepare($sql);

  // bind parameter ke query
  $params = array(
      ":id_produk" => $id_produk
  );

  // eksekusi query untuk menyimpan ke database
  $saved = $stmt->execute($params);

  // jika query simpan berhasil, maka user sudah terdaftar
  // maka alihkan ke halaman login
  if($saved) header("Location: jumbotron");

?>