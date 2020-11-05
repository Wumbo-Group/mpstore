<?php
require_once("koneksidb.php");

  $id_kategori        = $_POST['id_kategori'];
  $nama_produk        = $_POST['nama_produk'];
  $jenis_produk       = $_POST['jenis_produk'];
  $deskripsi          = $_POST['deskripsi'];
  $harga              = $_POST['harga'];
  $berat              = $_POST['berat'];
  $stok               = $_POST['stok'];
  $reward_member      = $_POST['reward_member'];
  $best_seller        = $_POST['best_seller'];

  // menyiapkan query
  $sql = "INSERT INTO produk  (id_kategori, nama_produk, jenis_produk, deskripsi, harga, berat_produk, stok, reward_member, best_seller) VALUES (:id_kategori, :nama_produk, :jenis_produk, :deskripsi, :harga, :berat, :stok, :reward_member, :best_seller) ";
  $stmt = $db->prepare($sql);

  // bind parameter ke query
  $params = array(
      ":id_kategori" => $id_kategori,
      ":nama_produk" => $nama_produk,
      ":jenis_produk" => $jenis_produk,
      ":deskripsi" => $deskripsi,
      ":harga" => $harga,
      ":berat" => $berat,
      ":stok" => $stok,
      ":reward_member" => $reward_member,
      ":best_seller" => $best_seller,
  );

  // eksekusi query untuk menyimpan ke database
  $saved = $stmt->execute($params);

  $last_id = $db->lastInsertId();
  

  // jika query simpan berhasil, maka user sudah terdaftar
  // maka alihkan ke halaman login
  if($saved) {
    // tentukan lokasi file akan dipindahkan
    $dirUpload = "../images/produk/produk_barang/";

    // Foto Produk 1
    $path1 = $_FILES['foto_produk1']['name'];
    $ext1 = pathinfo($path1, PATHINFO_EXTENSION);
    $namaFile1 = 'pd_' . $last_id . '_1.' . $ext1;
    $namaSementara1 = $_FILES['foto_produk1']['tmp_name'];

    $terupload1 = move_uploaded_file($namaSementara1, $dirUpload.$namaFile1);

    // Foto Produk 2
    $path2 = $_FILES['foto_produk2']['name'];
    $ext2 = pathinfo($path2, PATHINFO_EXTENSION);
    $namaFile2 = 'pd_' . $last_id . '_2.' . $ext2;
    $namaSementara2 = $_FILES['foto_produk2']['tmp_name'];

    $terupload2 = move_uploaded_file($namaSementara2, $dirUpload.$namaFile2);

    // Foto Produk 1
    $path3 = $_FILES['foto_produk3']['name'];
    $ext3 = pathinfo($path3, PATHINFO_EXTENSION);
    $namaFile3 = 'pd_' . $last_id . '_3.' . $ext3;
    $namaSementara3 = $_FILES['foto_produk3']['tmp_name'];

    $terupload3 = move_uploaded_file($namaSementara3, $dirUpload.$namaFile3);
  
    $query="UPDATE produk SET foto_produk1='$namaFile1', foto_produk2='$namaFile2', foto_produk3='$namaFile3' where id_produk='$last_id'";
    $stmt = $db->prepare($query);
    $stmt->execute();

    header("Location: produk");
    
  } 

?>