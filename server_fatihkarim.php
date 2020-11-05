<?php
require 'koneksi.php';
include 'secure.php';
include 'wa_woonotif.php';
date_default_timezone_set("Asia/Jakarta");

$ambil = $koneksi->query("SELECT * FROM `order` LEFT JOIN order_detail ON `order`.id_order = order_detail.id_order LEFT JOIN produk ON order_detail.id_produk = produk.id_produk WHERE produk.id_kategori = 3 AND `order`.status_pembayaran ='pending' AND `order`.bool_wa = 1");
while ($pecah = $ambil->fetch_assoc()) {
    $idMem = $pecah['id_member'];
    $id_order = $pecah['id_order'];
    $tgl_bayar = date("Y-m-d");

    $curl = curl_init();
	curl_setopt_array($curl, array(
	  CURLOPT_URL => "https://api.sandbox.midtrans.com/v2/".$id_order."/status",
	  CURLOPT_RETURNTRANSFER => true,
	  CURLOPT_ENCODING => "",
	  CURLOPT_MAXREDIRS => 10,
	  CURLOPT_TIMEOUT => 30,
	  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	  CURLOPT_CUSTOMREQUEST => "GET",
	  CURLOPT_HTTPHEADER => array(
	    "Authorization: Basic U0ItTWlkLXNlcnZlci1COXJDR0JMSTZobmNXMWhFbGpSMV9DRTE="
	  ),
	));

	$response = curl_exec($curl);
	$err = curl_error($curl);

    curl_close($curl);
    
    $hasil = json_decode($response, true);
    $status_transaksi = $hasil['transaction_status'];
    $status_transaksi;
    // Kalau yg beli pakai link referal kirim pesan ke member juga
    if ($idMem != "MB000000001") {
        $ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
        $pecahNo = $ambilNo->fetch_assoc();
        $noHP = $pecahNo['no_hp'];
        if ($status_transaksi = 'pending') {
            //kirim wa ke siswa pending
            $pesan = "untuk siswa pending";
            wa_fatihkarim($noHP, $pesan);
        }
        elseif ($status_transaksi = 'settlement') {
            //kirim wa ke siswa pesan sukses fatihkarim
            $pesan = "untuk siswa sukses";
            wa_fatihkarim($noHP, $pesan);
        }
        else {
            //kirim wa ke siswa pesan gagal fatihkarim
            $pesan = "untuk siswa gagal";
            wa_fatihkarim($noHP, $pesan);
        }
        echo $noHP;
        echo "\n";
        echo $pesan;
        echo "\n";
    }
    // kirim pesan ke pembeli
    if ($status_transaksi = 'pending') {
        //kirim wa ke pembeli pending
        $bool_wa = 1;
        $pesan = "untuk pembeli pending";
        wa_fatihkarim($noHP, $pesan);
    }
    elseif ($status_transaksi = 'settlement') {
        //kirim wa ke pembeli pesan sukses fatihkarim
        $bool_wa = 2;
        $pesan = "untuk pembeli sukses";
        wa_fatihkarim($noHP, $pesan);
    }
    else {
        //kirim wa ke pembeli pesan gagal fatihkarim
        $bool_wa = 2;
        $pesan = "untuk pembeli gagal";
        wa_fatihkarim($noHP, $pesan);

        // Update pengembalian stok jika pembelian gagal
		$ambildetail = $koneksi->query("SELECT * FROM order_detail WHERE id_order = '$id_order'");
		while ($pecahdetail = $ambildetail->fetch_assoc()){
			$idprodukdetail = $pecahdetail['id_produk'];
			$jumlahbeli = $pecahdetail['jumlah_beli'];
			$ambilpro = $koneksi->query("SELECT * FROM produk WHERE id_produk = '$idprodukdetail'");
			$pecahpro = $ambilpro->fetch_assoc();
			$stokpro = $pecahpro['stok'];
			$updatestok = $jumlahbeli + $stokpro;
			$koneksi->query("UPDATE produk SET stok = '$updatestok' WHERE id_produk = '$idprodukdetail'");
		}
    }
    echo $noHP;
    echo "\n";
    echo $pesan;
    echo "\n";

    $koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");

    echo $id_order;
    echo "\n";
    echo $status_transaksi;

    
}

function wame($nohp){
    $nohape = "089507229772";
    $if62 = substr($nohape, 0, 2);

    if ($if62 == "62") {
        $nohape = $nohape;
    }
    else {
        $nohape = "62".substr($nohape,1);
    }
    $wame = "wa.me/".$nohape;
}
?>