<?php

include 'koneksi.php';

$koneksi->query("INSERT INTO `order`(`id_order`, `id_member`, `total_harga`, `ongkir`, `total_bayar`, `total_reward_member`, `tgl_beli`, `tgl_bayar`, `nama_pembeli`, `email_pembeli`, `provinsi_pembeli`, `kota_pembeli`, `alamat_pembeli`, `nohp_pembeli`, `status_pembayaran`, `status_pengiriman`, `resie_pengiriman`) VALUES ('3','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1')");


?>