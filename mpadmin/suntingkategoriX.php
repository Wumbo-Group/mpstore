<?php
require_once("koneksidb.php");

  $id_kategori        = $_POST['id_kategori'];
  $id_kategori_awal        = $_POST['id_kategori_awal'];
  $nama_kategori      = $_POST['nama_kategori'];

  // menyiapkan query
  $sql = "UPDATE kategori SET id_kategori_awal='$id_kategori_awal', nama_kategori='$nama_kategori' WHERE id_kategori='$id_kategori' ";
  $stmt = $db->prepare($sql);

  // bind parameter ke query
  $params = array(
      ":id_kategori" => $id_kategori,
      ":id_kategori_awal" => $id_kategori_awal,
      ":nama_kategori" => $nama_kategori
  );

  // eksekusi query untuk menyimpan ke database
  $saved = $stmt->execute($params);

  // jika query simpan berhasil, maka user sudah terdaftar
  // maka alihkan ke halaman login
  if($saved) header("Location: kategori");

?>