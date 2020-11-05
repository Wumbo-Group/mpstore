<?php
require 'koneksidb.php';
require("ambildatauser.php");
// menyimpan data kedalam variabel
$id_user			= filter_input(INPUT_POST, 'id_user', FILTER_SANITIZE_STRING);
$jmlh_tarik			= filter_input(INPUT_POST, 'jmlh_tarik', FILTER_SANITIZE_STRING);
date_default_timezone_set('Asia/Jakarta');
$tgl_tarik = date('Y-m-d');

$sql="SELECT * FROM saldo WHERE id_user='$id_user'";
$stmt = $db->prepare($sql);
$stmt->execute();
$saldo_sekarang = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($data_user['lvl'] == '0') {
            header("Location: saldo?status=admin");
     } elseif ((($saldo_sekarang['jmlh_saldo'] - 10000) >= $jmlh_tarik) AND ($jmlh_tarik >= 10000)) {
		// query SQL untuk insert data
		$query="INSERT INTO tarik_saldo (id_user,jmlh_tarik,tgl_tarik) VALUES('$id_user', '$jmlh_tarik', '$tgl_tarik');
				UPDATE saldo SET jmlh_saldo=(jmlh_saldo-'$jmlh_tarik') WHERE id_user='$id_user'";

		$stmt = $db->prepare($query);

		// bind parameter ke query
		$params = array(
		  ":id_user" => $id_user,
		  "jmlh_tarik" => $jmlh_tarik,
		  "tgl_tarik" => $tgl_tarik
		);

		// eksekusi query untuk menyimpan ke database
		$saved = $stmt->execute($params);

		// jika query simpan berhasil
		// maka alihkan ke halaman tujuan
		if($saved) header("Location: saldo?status=sukses");
	} else {
        header("Location: saldo?status=gagal");
	}

?>