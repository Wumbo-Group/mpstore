<?php
require 'koneksi.php';
include 'secure.php';
include 'wa_woonotif.php';
include 'generatekatasandi.php';
date_default_timezone_set("Asia/Jakarta");

$ambil1 = $koneksi->query("SELECT * FROM `order` WHERE status_pembayaran ='pending'");
while ($pecah1 = $ambil1->fetch_assoc()) {
    $idMem = $pecah1['id_member'];
    $id_order = $pecah1['id_order'];
    $tgl_bayar = date("Y-m-d");
    $jenis_produk = $pecah1['jenis_produk'];
    $total_reward_member  = $pecah1['total_reward_member'];
    $email_pembeli = $pecah1['email_pembeli'];

    $curl = curl_init();
	curl_setopt_array($curl, array(
	//   CURLOPT_URL => "https://api. sandbox.midtrans.com/v2/".$id_order."/status",
	  CURLOPT_URL => "https://api.midtrans.com/v2/".$id_order."/status",
	  CURLOPT_RETURNTRANSFER => true,
	  CURLOPT_ENCODING => "",
	  CURLOPT_MAXREDIRS => 10,
	  CURLOPT_TIMEOUT => 30,
	  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	  CURLOPT_CUSTOMREQUEST => "GET",
	//   CURLOPT_HTTPHEADER => array(
	//     "Authorization: Basic U0ItTWlkLXNlcnZlci1COXJDR0JMSTZobmNXMWhFbGpSMV9DRTE="
	//   ),
	CURLOPT_HTTPHEADER => array(
		"Authorization: Basic TWlkLXNlcnZlci1nYjYtYWU4bWNBaUNacmsyNkxkZUwtRmI6"
	 ),
	));

	$response = curl_exec($curl);
	$err = curl_error($curl);

    curl_close($curl);
    
    $hasil = json_decode($response, true);
	$status_transaksi = $hasil['transaction_status'];
	
	$ambil = $koneksi->query("SELECT * FROM `order` LEFT JOIN `order_detail` ON `order`.id_order = `order_detail`.id_order LEFT JOIN `produk` ON `order_detail`.id_produk = `produk`.id_produk LEFT JOIN `kategori` ON `produk`.id_kategori = `kategori`.id_kategori WHERE `order`.id_order = '$id_order' AND `order`.status_pembayaran ='pending' AND `order`.bool_wa = 0");
	$pecah = $ambil->fetch_assoc();
	//print_r($pecah);
	$tgl_bayar = date("Y-m-d");
    // $pecahtanggal = explode("-", $pecah['tgl_beli']);
    // $tglexpire = $pecahtanggal[2]+10;
    // $date_expire = $pecahtanggal[0]."-".$pecahtanggal[1]."-".$tglexpire;
    setlocale(LC_ALL, 'IND');
    $date_beli = date("Y-m-d", strtotime($pecah['tgl_beli']));  
    $date_expire = date_create($pecah['tgl_beli']);
    date_add($date_expire,date_interval_create_from_date_string("10 days"));
    $date_expire = $date_expire->format('Y-m-d');
	// echo $pecah['id_kategori'];
	// echo $pecah['id_kategori_awal'];
	
	
	// $idprod = $pecah['id_produk'];
	// $prod = $koneksi->query("SELECT * FROM produk WHERE id_produk = '$idprod'");
	// $cah = $prod->fetch_assoc();

	if ($status_transaksi == 'settlement') {
	    if ($jenis_produk == 'jasa') {
	        $koneksi->query("UPDATE `order` SET bool_finish = '1' WHERE id_order = '$id_order'");
	        $koneksi->query("INSERT INTO reward (id_user, jmlh_reward, tgl_reward) VALUES ('$idMem', '$total_reward_member', '$tgl_bayar')");
            $koneksi->query("UPDATE saldo SET jmlh_saldo=(jmlh_saldo+'$total_reward_member') WHERE id_user='$idMem'");
	    }
		if ($pecah['id_kategori'] == 1){
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan sukses mp
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi nomor ".$id_order." melalui link member anda telah berhasil.
Anda akan segera mendapatkan reward sebesar Rp. ".number_format($pecah['total_reward_member'])." ketika transaksi selesai.

SALAM BERKAH MULIA
CS MP Store - Muslimpreneurship";
				wa_mp($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi anda nomor ".$id_order." telah berhasil.
Kami akan segera memroses transaksi anda.

SALAM BERKAH MULIA
CS MP Store - Muslimpreneurship";
			wa_mp($noHP, $pesan);
			resetPassword($email_pembeli);
            echo "-akun dibuat-";
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
		elseif ($pecah['id_kategori'] == 2){
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan sukses agoas
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi nomor ".$id_order." melalui link member anda telah berhasil.
Anda akan segera mendapatkan reward sebesar Rp. ".number_format($pecah['total_reward_member'])." ketika transaksi selesai.

SALAM BERKAH MULIA
CS MP Store - AGOAS";
				wa_agoas($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi anda nomor ".$id_order." telah berhasil.
Kami akan segera memroses transaksi anda.

SALAM BERKAH MULIA
CS MP Store - AGOAS";
			wa_agoas($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
		elseif ($pecah['id_kategori'] == 3){
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan sukses samara
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi nomor ".$id_order." melalui link member anda telah berhasil.
Anda akan segera mendapatkan reward sebesar Rp. ".number_format($pecah['total_reward_member'])." ketika transaksi selesai.

SALAM BERKAH MULIA
CS MP Store - Sekolah Samara";
				wa_samara($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi anda nomor ".$id_order." telah berhasil.
Kami akan segera memroses transaksi anda.

SALAM BERKAH MULIA
CS MP Store - Samara";
			wa_samara($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
		elseif ($pecah['id_kategori'] == 4){
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan sukses ppa
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi nomor ".$id_order." melalui link member anda telah berhasil.
Anda akan segera mendapatkan reward sebesar Rp. ".number_format($pecah['total_reward_member'])." ketika transaksi selesai.

SALAM BERKAH MULIA
CS MP Store - School of Life PPA";
				wa_ppa($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi anda nomor ".$id_order." telah berhasil.
Kami akan segera memroses transaksi anda.

SALAM BERKAH MULIA
CS MP Store - School of Life PPA";
			wa_ppa($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
		// elseif ($pecah['id_kategori'] == 5){

		// }
		// elseif ($pecah['id_kategori'] == 6){

		// }
		// elseif ($pecah['id_kategori'] == 7){

		// }
		elseif ($pecah['id_kategori'] == 8) {
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan sukses seminar
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi nomor ".$id_order." melalui link member anda telah berhasil.
Anda akan segera mendapatkan reward sebesar Rp. ".number_format($pecah['total_reward_member'])." ketika transaksi selesai.

SALAM BERKAH MULIA
CS MP Store - Seminar";
				wa_seminar($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi anda nomor ".$id_order." telah berhasil.
Kami akan segera memroses transaksi anda.

SALAM BERKAH MULIA
CS MP Store - Seminar";
			wa_seminar($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
		elseif ($pecah['id_kategori'] == 9) {
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan sukses umroh
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi nomor ".$id_order." melalui link member anda telah berhasil.
Anda akan segera mendapatkan reward sebesar Rp. ".number_format($pecah['total_reward_member'])." ketika transaksi selesai.

SALAM BERKAH MULIA
CS MP Store - Umroh";
				wa_umroh($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi anda nomor ".$id_order." telah berhasil.
Kami akan segera memroses transaksi anda.

SALAM BERKAH MULIA
CS MP Store - Umroh";
			wa_umroh($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
		elseif ($pecah['id_kategori_awal'] == 0 or $pecah['id_kategori_awal'] == 5) {
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan sukses mpstore
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi nomor ".$id_order." melalui link member anda telah berhasil.
Anda akan segera meendapatkan reward sebesar Rp. ".number_format($pecah['total_reward_member'])." ketika transaksi selesai.

SALAM BERKAH MULIA
CS MP Store";
				wa_mpstore($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi anda nomor ".$id_order." telah berhasil.
Kami akan segera memroses transaksi anda.

SALAM BERKAH MULIA
CS MP Store";
			wa_mpstore($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
	}

	elseif ($status_transaksi == 'failure' or $status_transaksi == 'expire') {
		if ($pecah['id_kategori'] == 1){
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan gagal mp
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi melalui link member anda dengan ID ".$id_order." telah pada batas akhir pembayaran.
Silahkan mengingatkan pembeli untuk melakukan pemesanan ulang pada MP Store karena data pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - Muslimpreneurship";
				wa_mp($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi anda nomor ".$id_order." telah pada batas akhir pembayaran.
Silahkan melakukan pemesanan ulang pada MP Store dikarenakan pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - Muslimpreneurship";
			wa_mp($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
		elseif ($pecah['id_kategori'] == 2){
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan gagal agoas
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi melalui link member anda dengan ID ".$id_order." telah pada batas akhir pembayaran.
Silahkan mengingatkan pembeli untuk melakukan pemesanan ulang pada MP Store karena data pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - AGOAS";
				wa_agoas($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi anda nomor ".$id_order." telah pada batas akhir pembayaran.
Silahkan melakukan pemesanan ulang pada MP Store dikarenakan pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - AGOAS";
			wa_agoas($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
		elseif ($pecah['id_kategori'] == 3){
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan gagal samara
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi melalui link member anda dengan ID ".$id_order." telah pada batas akhir pembayaran.
Silahkan mengingatkan pembeli untuk melakukan pemesanan ulang pada MP Store karena data pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - Samara";
				wa_samara($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi anda nomor ".$id_order." telah pada batas akhir pembayaran.
Silahkan melakukan pemesanan ulang pada MP Store dikarenakan pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - Samara";
			wa_samara($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
		elseif ($pecah['id_kategori'] == 4){
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan gagal ppa
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi melalui link member anda dengan ID ".$id_order." telah pada batas akhir pembayaran.
Silahkan mengingatkan pembeli untuk melakukan pemesanan ulang pada MP Store karena data pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - School of Life PPA";
				wa_ppa($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi anda nomor ".$id_order." telah pada batas akhir pembayaran.
Silahkan melakukan pemesanan ulang pada MP Store dikarenakan pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - School of Life PPA";
			wa_ppa($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
		// elseif ($pecah['id_kategori'] == 5){

		// }
		// elseif ($pecah['id_kategori'] == 6){

		// }
		// elseif ($pecah['id_kategori'] == 7){

		// }
		elseif ($pecah['id_kategori'] == 8) {
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan gagal seminar
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi melalui link member anda dengan ID ".$id_order." telah pada batas akhir pembayaran.
Silahkan mengingatkan pembeli untuk melakukan pemesanan ulang pada MP Store karena data pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - Seminar";
				wa_seminar($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi anda nomor ".$id_order." telah pada batas akhir pembayaran.
Silahkan melakukan pemesanan ulang pada MP Store dikarenakan pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - Seminar";
			wa_seminar($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
		elseif ($pecah['id_kategori'] == 9) {
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan gagal umroh
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi melalui link member anda dengan ID ".$id_order." telah pada batas akhir pembayaran.
Silahkan mengingatkan pembeli untuk melakukan pemesanan ulang pada MP Store karena data pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - Umroh";
				wa_umroh($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi anda nomor ".$id_order." telah pada batas akhir pembayaran.
Silahkan melakukan pemesanan ulang pada MP Store dikarenakan pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - Umroh";
			wa_umroh($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}
		// elseif ($pecah['id_kategori_awal'] != 1 or $pecah['id_kategori_awal'] != 2 or $pecah['id_kategori_awal'] != 6) {
		elseif ($pecah['id_kategori_awal'] == 0 or $pecah['id_kategori_awal'] == 5) {
			if ($idMem != "MB000000001") {
				$ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
				$pecahNo = $ambilNo->fetch_assoc();
				$noHP = $pecahNo['no_hp'];
				//kirim wa ke siswa pesan gagal mpstore
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi melalui link member anda dengan ID ".$id_order." telah pada batas akhir pembayaran.
Silahkan mengingatkan pembeli untuk melakukan pemesanan ulang pada MP Store karena data pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store";
				wa_mpstore($noHP, $pesan);
			}
			$noHP = $pecah['nohp_pembeli'];
			// kirim pesan ke pembeli
			$bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi anda nomor ".$id_order." telah pada batas akhir pembayaran.
Silahkan melakukan pemesanan ulang pada MP Store dikarenakan pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store";
			wa_mpstore($noHP, $pesan);
			
			$koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");
		}

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
	
	
	echo $id_order;
	echo "-";
	echo $status_transaksi;
	echo "done check\n";
}
?>