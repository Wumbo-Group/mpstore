<?php
  require_once("koneksidb.php");

      $sql = "SELECT * FROM user ORDER BY id_user DESC";
      $cariKodeMember = $db->prepare($sql);
      $cariKodeMember->execute();
      $cariKMem       = $cariKodeMember->fetch(PDO::FETCH_ASSOC);
      $dataKMem       = $cariKMem['id_user'];
      $nilaiKMem      = substr($dataKMem, 8, 3);
      
      $tgl            = date("d");
      $bln            = date("m");
      $thn            = date("y");

      if ($nilaiKMem == '999'){
        $IDMember = "MB".$thn.$bln.$tgl."001";
      } else {
        $KodeMem        = (int)$nilaiKMem + 1;
        if (strlen($KodeMem) == 1) {
            $IDMember = "MB".$thn.$bln.$tgl."00".$KodeMem;
        }
        elseif (strlen($KodeMem) == 2) {
            $IDMember = "MB".$thn.$bln.$tgl."0".$KodeMem;
        }
        else {
            $IDMember = "MB".$thn.$bln.$tgl.$KodeMem;
        }
      }


  $nama_member        = $_POST['nama_member'];
  $email_member       = $_POST['email_member'];
  $username           = $_POST['username'];
  $password           = password_hash($_POST["password"], PASSWORD_DEFAULT);
  $level              = $_POST['level'];
  $tgl_lahir          = $_POST['tgl_lahir'];
  date_default_timezone_set('Asia/Jakarta');
  $tgl_gabung         = date('Y-m-d H:i:s');
  $alamat             = $_POST['alamat'];
  $jenis_kelamin      = $_POST['jenis_kelamin'];
  $no_ktp              = $_POST['no_ktp'];
  $no_hp              = $_POST['no_hp'];
  $bank_rek           = $_POST['bank_rek'];
  $no_rek             = $_POST['no_rek'];
  $nama_pemilik_rek   = $_POST['nama_pemilik_rek'];

  // menyiapkan query
  $sql = "INSERT INTO user (id_user, nama_user, email_user, username, password, lvl, tgl_lahir, tgl_gabung, alamat, jenis_kelamin, no_ktp, no_hp, bank_rek, no_rek, nama_pemilik_rek) VALUES (:id_member, :nama_member, :email_member, :username, :password, :level, :tgl_lahir, :tgl_gabung, :alamat, :jenis_kelamin, :no_ktp, :no_hp, :bank_rek, :no_rek, :nama_pemilik_rek);
              INSERT INTO saldo (id_user, jmlh_saldo) VALUES ('$IDMember', '0')";
  $stmt = $db->prepare($sql);

  // bind parameter ke query
  $params = array(
      ":id_member" => $IDMember,
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
  $saved = $stmt->execute($params) or die(print_r($stmt->errorInfo(), true));

  // jika query simpan berhasil, maka user sudah terdaftar
  // maka alihkan ke halaman login
  if($saved) header("Location: member");

?>