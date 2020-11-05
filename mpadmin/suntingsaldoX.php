<?php
require_once("koneksidb.php");

  $id_saldo        = $_POST['id_saldo'];
  $jmlh_saldo      = $_POST['jmlh_saldo'];

  // menyiapkan query
  $sql = "UPDATE saldo SET jmlh_saldo='$jmlh_saldo' WHERE id_saldo='$id_saldo' ";
  $stmt = $db->prepare($sql);

  // bind parameter ke query
  $params = array(
      ":id_saldo" => $id_saldo,
      ":jmlh_saldo" => $jmlh_saldo
  );

  // eksekusi query untuk menyimpan ke database
  $saved = $stmt->execute($params);

  // jika query simpan berhasil, maka user sudah terdaftar
  // maka alihkan ke halaman login
  if($saved) header("Location: saldomember");

?>