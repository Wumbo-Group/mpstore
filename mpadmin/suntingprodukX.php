<?php
require_once("koneksidb.php");

  $id_produk          = $_POST['id_produk'];
  $id_kategori        = $_POST['id_kategori'];
  $nama_produk        = $_POST['nama_produk'];
  $jenis_produk       = $_POST['jenis_produk'];
  $deskripsi          = $_POST['deskripsi'];
  $harga              = $_POST['harga'];
  $berat              = $_POST['berat'];
  $stok               = $_POST['stok'];
  $reward_member      = $_POST['reward_member'];
  $best_seller        = $_POST['best_seller'];

  $last_page = (isset($_POST['last_page']))? $_POST['last_page'] : 1 ;     


  // menyiapkan query
  $sql = "UPDATE produk SET id_kategori='$id_kategori', nama_produk='$nama_produk', jenis_produk='$jenis_produk', deskripsi='$deskripsi', harga='$harga', berat_produk='$berat', stok='$stok', reward_member='$reward_member', best_seller='$best_seller' WHERE id_produk='$id_produk' ";
  $stmt = $db->prepare($sql);

  // bind parameter ke query
  $params = array(
      ":id_produk" => $id_produk,
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

  // jika query simpan berhasil, maka user sudah terdaftar
  // maka alihkan ke halaman login
  if($saved) header("Location: produk?page=". $last_page);

?>