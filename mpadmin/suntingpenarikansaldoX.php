<?php
require_once("koneksidb.php");

  $id_tarik          = $_POST['id_tarik'];
  $id_member          = $_POST['id_member'];
  $status_tarik      = $_POST['status_tarik'];
  $jumlah_tarik      = $_POST['jumlah_tarik'];

  // menyiapkan query
  

  if ($status_tarik == 'Gagal') {
    $sql = "UPDATE tarik_saldo SET status_tarik='$status_tarik' WHERE id_tarik='$id_tarik'; 
      UPDATE saldo SET jmlh_saldo=(jmlh_saldo+$jumlah_tarik) WHERE id_user='$id_member'";
  } else {
    $sql = "UPDATE tarik_saldo SET status_tarik='$status_tarik' WHERE id_tarik='$id_tarik' ";
  }

  $stmt = $db->prepare($sql);

  // bind parameter ke query
  $params = array(
      ":id_tarik" => $id_tarik,
      ":id_member" => $id_member,
      ":status_tarik" => $status_tarik,
      ":jumlah_tarik" => $jumlah_tarik
  );

  // eksekusi query untuk menyimpan ke database
  $saved = $stmt->execute($params);

  // jika query simpan berhasil, maka user sudah terdaftar
  // maka alihkan ke halaman login
  if($saved) header("Location: penarikansaldo");

?>