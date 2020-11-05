<?php
require 'koneksidb.php';
// menyimpan data kedalam variabel
//SELECT email_user, username, password, nama_user, jenis_kelamin, nohp_user, alamat, foto_profil FROM user WHERE id_user = 1
$id     			= filter_input(INPUT_POST, 'id', FILTER_SANITIZE_STRING);
$email   			= filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING);
$username       	= filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
$password       	= password_hash($_POST["password"], PASSWORD_DEFAULT);
$nama           	= filter_input(INPUT_POST, 'nama', FILTER_SANITIZE_STRING);
$jenis_kelamin  	= filter_input(INPUT_POST, 'jenis_kelamin', FILTER_SANITIZE_STRING);
$tgl_lahir			= filter_input(INPUT_POST, 'tgl_lahir', FILTER_SANITIZE_STRING);
$alamat        		= filter_input(INPUT_POST, 'alamat', FILTER_SANITIZE_STRING);
$no_ktp        		= filter_input(INPUT_POST, 'no_ktp', FILTER_SANITIZE_STRING);
$no_hp      		= filter_input(INPUT_POST, 'no_hp', FILTER_SANITIZE_STRING);
$bank_rek       	= filter_input(INPUT_POST, 'bank_rek', FILTER_SANITIZE_STRING);
$no_rek        		= filter_input(INPUT_POST, 'no_rek', FILTER_SANITIZE_STRING);
$nama_pemilik_bank  = filter_input(INPUT_POST, 'nama_pemilik_bank', FILTER_SANITIZE_STRING);

// query SQL untuk insert data
$query="UPDATE user SET password='$password', jenis_kelamin='$jenis_kelamin', tgl_lahir='$tgl_lahir', alamat='$alamat', no_hp='$no_hp' where id_user='$id'";

$stmt = $db->prepare($query);

// bind parameter ke query
$params = array(
  ":password" => $password,
  ":jenis_kelamin" => $jenis_kelamin,
  ":tgl_lahir" => $tgl_lahir,
  ":alamat" => $alamat,
  ":no_hp" => $no_hp,
  ":id_user" => $id
);

// eksekusi query untuk menyimpan ke database
$saved = $stmt->execute($params);

// jika query simpan berhasil
// maka alihkan ke halaman tujuan
if($saved) header("Location: profil");
?>