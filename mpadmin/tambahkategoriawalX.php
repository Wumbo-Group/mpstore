<?php
  require_once("koneksidb.php");

  $nama_kategori_awal      = $_POST['nama_kategori_awal'];

  // menyiapkan query
  $sql = "INSERT INTO kategori_awal (nama_kategori_awal) VALUES (:nama_kategori_awal)";
  $stmt = $db->prepare($sql);

  // bind parameter ke query
  $params = array(
      ":nama_kategori_awal" => $nama_kategori_awal
  );

  // eksekusi query untuk menyimpan ke database
  $saved = $stmt->execute($params);

  // jika query simpan berhasil, maka user sudah terdaftar
  // maka alihkan ke halaman login
  if($saved) header("Location: kategoriawal");

?>