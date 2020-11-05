<?php
require_once("koneksidb.php");

  $id_order             = $_POST['id_order'];
  $id_member            = $_POST['id_member'];
  $total_reward_member  = $_POST['total_reward_member'];
  $bool_finish          = $_POST['bool_finish'];
  $status_pembayaran    = $_POST['status_pembayaran'];
  $status_pengiriman    = $_POST['status_pengiriman'];
  $resie_pengiriman     = $_POST['resie_pengiriman'];
  date_default_timezone_set('Asia/Jakarta');
  $tgl_skrg         = date('Y-m-d');

  if (($status_pengiriman == 'Sudah Sampai') AND ($bool_finish == '0')) {
    $bool_finish = '1';
  } else {
    $bool_finish = '0';
  }

  // menyiapkan query
  if ($bool_finish == '1') {
    $sql = "UPDATE `order` SET status_pembayaran='$status_pembayaran', status_pengiriman='$status_pengiriman', resie_pengiriman='$resie_pengiriman', bool_finish='$bool_finish' WHERE id_order='$id_order'; 
      INSERT INTO reward (id_user, jmlh_reward, tgl_reward) VALUES ('$id_member', '$total_reward_member', '$tgl_skrg');
      UPDATE saldo SET jmlh_saldo=(jmlh_saldo+'$total_reward_member') WHERE id_user='$id_member'";
  } else {
    $sql = "UPDATE `order` SET status_pembayaran='$status_pembayaran', status_pengiriman='$status_pengiriman', resie_pengiriman='$resie_pengiriman' WHERE id_order='$id_order' ";
  }
  $stmt = $db->prepare($sql);

  // bind parameter ke query
  $params = array(
      ":id_order" => $id_order,
      ":status_pembayaran" => $status_pembayaran,
      ":status_pengiriman" => $status_pengiriman,
      ":resie_pengiriman" => $resie_pengiriman
  );

  // eksekusi query untuk menyimpan ke database
  $saved = $stmt->execute($params);

  // jika query simpan berhasil, maka user sudah terdaftar
  // maka alihkan ke halaman login
  if($saved) header("Location: transaksi");

?>