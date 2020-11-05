<?php
require 'koneksi.php';
include 'secure.php';
include 'wa_woonotif.php';
date_default_timezone_set("Asia/Jakarta");

// sebelumnya
// $ambil = $koneksi->query("SELECT * FROM `order` INNER JOIN order_detail ON `order`.id_order = order_detail.id_order WHERE order_detail.id_produk = 2 AND `order`.status_pembayaran ='pending' AND `order`.bool_wa = 1");

$ambil = $koneksi->query("SELECT * FROM `order` LEFT JOIN order_detail ON `order`.id_order = order_detail.id_order LEFT JOIN produk ON order_detail.id_produk = produk.id_produk WHERE produk.id_kategori = 4 AND `order`.status_pembayaran ='pending' AND `order`.bool_wa = 0");
while ($pecah = $ambil->fetch_assoc()) {
    $idMem = $pecah['id_member'];
    $id_order = $pecah['id_order'];
    $no_hp_pembeli = $pecah['nohp_pembeli'];
    $tgl_bayar = date("Y-m-d");
    // $pecahtanggal = explode("-", $pecah['tgl_beli']);
    // $tglexpire = $pecahtanggal[2]+10;
    // $date_expire = $pecahtanggal[0]."-".$pecahtanggal[1]."-".$tglexpire;
    setlocale(LC_ALL, 'IND');
    $date_beli = date("Y-m-d", strtotime($pecah['tgl_beli']));  
    $date_expire = date_create($pecah['tgl_beli']);
    date_add($date_expire,date_interval_create_from_date_string("10 days"));
    $date_expire = $date_expire->format('Y-m-d');

    $curl = curl_init();
	curl_setopt_array($curl, array(
	  // CURLOPT_URL => "https://api.sandbox.midtrans.com/v2/".$id_order."/status",
      CURLOPT_URL => "https://api.midtrans.com/v2/".$id_order."/status",
	  CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "GET",
      // CURLOPT_HTTPHEADER => array(
      //   "Authorization: Basic U0ItTWlkLXNlcnZlci1COXJDR0JMSTZobmNXMWhFbGpSMV9DRTE="
      // ),
      CURLOPT_HTTPHEADER => array(
         "Authorization: Basic TWlkLXNlcnZlci1nYjYtYWU4bWNBaUNacmsyNkxkZUwtRmI6"
      ),
	));

	$response = curl_exec($curl);
	$err = curl_error($curl);

    curl_close($curl);
    
    $hasil = json_decode($response, true);
    $status_transaksi = $hasil['transaction_status'];
    // Kalau yg beli pakai link referal kirim pesan ke member juga
    if ($idMem != "MB000000001") {
        $ambilNo = $koneksi->query("SELECT * FROM user WHERE id_user = '$idMem'");
        $pecahNo = $ambilNo->fetch_assoc();
        $noHP = $pecahNo['no_hp'];
        
        if ($status_transaksi == 'pending') {
            //kirim wa ke siswa pending
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Bagaimana kabar Bapak/Ibu Muslim Preneurship hari ini? 
Semoga diberikan kesehatan dan kemudahan dalam beraktivitas ya. 

Izin mengingatkan, bahwa batas akhir pembayaran transaksi nomor ".$id_order." adalah ".$date_expire.".

Berikut data dari pesanan tersebut:
Nama Lengkap Pembeli : ".$pecah['nama_pembeli']."
No. WhatsApp Pembeli : ".$pecah['nohp_pembeli']."
Email Pembeli : ".$pecah['email_pembeli']."
Alamat Pembeli : ".$pecah['alamat_pembeli']."
Total Pembelian : Rp. ".number_format($pecah['total_bayar'])."

Apabila transaksi tersebut berhasil, anda akan mendapatkan reward sebesar Rp. ".number_format($pecah['total_reward_member'])."

Untuk detail dan instruksi pembayaran, pembeli dapat memeriksa email dari MP Store pada tanggal ".$pecah['tgl_beli'].".

SALAM BERKAH MULIA
CS MP Store - School of Life PPA";
            wa_ppa($noHP, $pesan);
        }
        elseif ($status_transaksi == 'settlement') {
            //kirim wa ke siswa pesan sukses School of Life PPA
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi nomor ".$id_order." melalui link member anda telah berhasil.
Anda akan segera meendapatkan reward sebesar Rp. ".number_format($pecah['total_reward_member'])." ketika transaksi selesai.

SALAM BERKAH MULIA
CS MP Store - School of Life PPA";
            wa_ppa($noHP, $pesan);
        }
        else {
            //kirim wa ke siswa pesan gagal School of Life PPA
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi melalui link member anda dengan ID ".$id_order." telah pada batas akhir pembayaran.
Silahkan mengingatkan pembeli untuk melakukan pemesanan ulang pada MP Store karena data pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - School of Life PPA";
            wa_ppa($noHP, $pesan);
        }
    }
    // kirim pesan ke pembeli
    if ($status_transaksi == 'pending') {
        //kirim wa ke pembeli pending
        $bool_wa = 0;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Bagaimana kabar Bapak/Ibu hari ini? 
Semoga diberikan kesehatan dan kemudahan dalam beraktivitas ya. 

Izin mengingatkan, bahwa batas akhir pembayaran transaksi anda nomor ".$id_order." adalah ".$date_expire.".

Untuk detail dan instruksi pembayaran, silahkan cek email dari kami pada tanggal ".$pecah['tgl_beli'].".

SALAM BERKAH MULIA
CS MP Store - School of Life PPA";
        wa_ppa($no_hp_pembeli, $pesan);
    }
    elseif ($status_transaksi == 'settlement') {
        //kirim wa ke pembeli pesan sukses School of Life PPA
        $bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Selamat, pembayaran transaksi anda nomor ".$id_order." telah berhasil.
Kami akan segera memroses transaksi anda.

SALAM BERKAH MULIA
CS MP Store - School of Life PPA";
        wa_ppa($no_hp_pembeli, $pesan);
    }
    else {
        //kirim wa ke pembeli pesan gagal School of Life PPA
        $bool_wa = 1;
$pesan = "Assalamu'alaikum Warohmatullahi Wabarokatuh

Izin mengingatkan bahwa transaksi anda nomor ".$id_order." telah pada batas akhir pembayaran.
Silahkan melakukan pemesanan ulang pada MP Store dikarenakan pesanan tersebut sudah tidak berlaku.

SALAM BERKAH MULIA
CS MP Store - School of Life PPA";
        wa_ppa($no_hp_pembeli, $pesan);

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

    $koneksi->query("UPDATE `order` SET status_pembayaran = '$status_transaksi', tgl_bayar = '$tgl_bayar', bool_wa = '$bool_wa' WHERE id_order = '$id_order'");

    echo $id_order;
	echo "-";
	echo $status_transaksi;
	echo "done check\n";
}
?>