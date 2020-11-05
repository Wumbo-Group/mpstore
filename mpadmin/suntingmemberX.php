<?php
require_once("koneksidb.php");

  $id_member          = $_POST['id_member'];
  $nama_member        = $_POST['nama_member'];
  $email_member       = $_POST['email_member'];
  $username           = $_POST['username'];
  $password           = password_hash($_POST["password"], PASSWORD_DEFAULT);
  $level              = $_POST['level'];
  $tgl_lahir          = $_POST['tgl_lahir'];
  $tgl_gabung         = $_POST['tgl_gabung'];
  $alamat             = $_POST['alamat'];
  $jenis_kelamin      = $_POST['jenis_kelamin'];
  $no_ktp              = $_POST['no_ktp'];
  $no_hp              = $_POST['no_hp'];
  $bank_rek           = $_POST['bank_rek'];
  $no_rek             = $_POST['no_rek'];
  $nama_pemilik_rek   = $_POST['nama_pemilik_rek'];


  // menyiapkan query
  $sql = "UPDATE user SET id_user='$id_member', nama_user='$nama_member', email_user='$email_member', username='$username', password='$password', lvl='$level', tgl_lahir='$tgl_lahir', alamat='$alamat', jenis_kelamin='$jenis_kelamin', no_ktp='$no_ktp', no_hp='$no_hp', bank_rek='$bank_rek', no_rek='$no_rek', nama_pemilik_rek='$nama_pemilik_rek' WHERE id_user='$id_member' ";
  $stmt = $db->prepare($sql);

  // bind parameter ke query
  $params = array(
      ":id_member" => $id_member,
      ":nama_member" => $nama_member,
      ":email_member" => $email_member,
      ":username" => $username,
      ":password" => $password,
      ":level" => $level,
      ":tgl_lahir" => $tgl_lahir,
      ":tgl_gabung" => $tgl_gabung,
      ":alamat" => $alamat,
      ":jenis_kelamin" => $jenis_kelamin,
      ":no_ktp" => $no_ktp,
      ":no_hp" => $no_hp,
      ":bank_rek" => $bank_rek,
      ":no_rek" => $no_rek,
      ":nama_pemilik_rek" => $nama_pemilik_rek
  );

  // eksekusi query untuk menyimpan ke database
  $saved = $stmt->execute($params);

  // jika query simpan berhasil, maka user sudah terdaftar
  // maka alihkan ke halaman login
  if($saved) header("Location: member");

?>