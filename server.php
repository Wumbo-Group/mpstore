<?php
require 'koneksi.php';
include 'secure.php';
date_default_timezone_set("Asia/Jakarta");

$ambil = $koneksi->query("SELECT * FROM `order` WHERE status_pembayaran != 'sukses' AND bool_wa = 1");

while ($pecah = $ambil->fetch_assoc()) {
    $idMem = $pecah['id_member'];
    $id_order = $pecah['id_order'];
    $nohp = $pecah['nohp_pembeli'];
    $email = $pecah['email_pembeli'];
    $totalbayar = $pecah['total_bayar'];
    $tgl_beli = $pecah['tgl_beli'];
    $nama_pembeli = $pecah['nama_pembeli'];

    $ambilDetail = $koneksi->query("SELECT * FROM order_detail WHERE id_order = '$id_order' AND id_produk == 1");
    $pecahDetail = $ambilDetail->fetch_assoc();
    $id_produk = $pecahDetail['id_produk'];

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

    if ($status_transaksi == 'setlemen') {
        $koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', bool_wa = 2 WHERE id_order = '$id_order'");
    }
    elseif ($status_transaksi == 'pending') {
        if ($idMem == "MB000000001" || $id_produk == 1) {
            $waktu = explode("-", $pecah['waktu_wa']);
            $hari = (int)$waktu[0]+2;
            $bulan = (int)$menit[1];
            $hariSekarang = date("d");
            $bulanSekarang = date("m");
            if ($hari == $hariSekarang && $bulan == $bulanSekarang &&) {
                $token = '60cfc8f966ff9505e4c89fd72a272ecbef3bba6572a46b6a';
                $data = array(
                    'phone_no' => $nohp, 
                    'key' => $token, 
                    'message' => 'Terimakasih suda berbelanja di MPSTORE
                    Segera Melakukan Pembayaran agar Barang Segera diproses
                    
                    Terima Kasih'
                );
                $data_string = json_encode($data);
                $ch = curl_init('http://send.woonotif.com/api/send_message');
                curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
                curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch, CURLOPT_VERBOSE, 0);
                curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0);
                curl_setopt($ch, CURLOPT_TIMEOUT, 15);
                curl_setopt($ch, CURLOPT_HTTPHEADER, array(
                    'Content-Type: application/json',
                    'Content-Length: ' . strlen($data_string)
                    )
                );
                $result = curl_exec($ch);

                $err = curl_error($ch);
                curl_close($ch);
            }
            $koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi' WHERE id_order = '$id_order'");
            
        }
    }
    else {
        $koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', bool_wa = 1 WHERE id_order = '$id_order'");
    }
}

?>