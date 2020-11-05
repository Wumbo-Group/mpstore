<?php

require_once("koneksidb.php");
require_once("testing/woonotif.php");

session_start();
date_default_timezone_set('Asia/Jakarta');


//DATA
$IDMember = $_SESSION['data_user'][0];
$nama = $_SESSION['data_user'][1];
$email = $_SESSION['data_user'][2];
// $username = $_SESSION['data_user'][3];
$level = $_SESSION['data_user'][3];
$tgl_lahir = $_SESSION['data_user'][4];
$tgl_gabung = $_SESSION['data_user'][5];
$alamat = $_SESSION['data_user'][6];
$jenis_kelamin = $_SESSION['data_user'][7]; 
$no_ktp = $_SESSION['data_user'][8];
$no_hp = $_SESSION['data_user'][9];

$id_produk = $_SESSION['data_user'][10];
$IDorder = $_SESSION['data_user'][11];

//ORDER
$sql = "SELECT * FROM `produk` WHERE id_produk='$id_produk' ";
$stmt = $db->prepare($sql);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);//or die(print_r($stmt->errorInfo(), true));

$IDReferal = $_SESSION['hakmember'];
$harga = $row['harga'];
$jenis = $row['jenis_produk'];
$reward = $row['reward_member'];
$tgl_beli = date('Y-m-d');

//MEMBER
$sql = "SELECT * FROM `user` WHERE id_user='$IDReferal' ";
$stmt = $db->prepare($sql);
$stmt->execute();
$dataMember = $stmt->fetch(PDO::FETCH_ASSOC);

$nama_member 	= $dataMember['nama_user'];
$no_member		= $dataMember['no_hp'];

//ORDER DETAIL
$cariKodeOd = "SELECT * FROM order_detail ORDER BY id_order_detail DESC";
$stmt = $db->prepare($cariKodeOd);
$stmt->execute();
$cariKOd = $stmt->fetch(PDO::FETCH_ASSOC);
$dataKOd = $cariKOd['id_order_detail'];
$tgl = date("d");
$bln = date("m");
$thn = date("y");
$nilaiKOd = substr($dataKOd, 8, 3);
if ($nilaiKOd == "999") {
    $IDOd = "OD".$tgl.$bln.$thn."001";
}
else {
    $KodeOd = (int)$nilaiKOd + 1;
    if (strlen($KodeOd) == 1) {
        $IDOd = "OD".$thn.$bln.$tgl."00".$KodeOd;
    }
    elseif (strlen($KodeOd) == 2) {
        $IDOd = "OD".$thn.$bln.$tgl."0".$KodeOd;
    }
    else {
        $IDOd = "OD".$thn.$bln.$tgl.$KodeOd;
    }
}

if ($id_produk == '1') {
	$sql = "INSERT INTO user (id_user, nama_user, email_user, username, lvl, tgl_lahir, tgl_gabung, alamat, jenis_kelamin, no_ktp, no_hp) 
		VALUES ('$IDMember', '$nama', '$email', '$IDorder', '$level', '$tgl_lahir', '$tgl_gabung', '$alamat', '$jenis_kelamin', '$no_ktp', '$no_hp');
		INSERT INTO `order` (id_order, id_member, jenis_produk, total_harga, ongkir, total_bayar, total_reward_member, tgl_beli, nama_pembeli, email_pembeli, alamat_pembeli, nohp_pembeli, status_pembayaran, status_pengiriman) 
		VALUES ('$IDorder', '$IDReferal', '$jenis', '$harga', '0', '$harga', '$reward', '$tgl_beli', '$nama', '$email', '$alamat', '$no_hp', 'pending', 'Belum Dikirim');
		INSERT INTO order_detail (id_order_detail, id_order, id_produk, catatan, jumlah_beli, total, id_member, reward_member)
		VALUES ('$IDOd', '$IDorder', '$id_produk', '', 1, '$harga', '$IDReferal', '$reward');
		UPDATE produk SET stok = (stok - 1) WHERE id_produk=$id_produk";
} else {
	$sql = "INSERT INTO `order` (id_order, id_member, jenis_produk, total_harga, ongkir, total_bayar, total_reward_member, tgl_beli, nama_pembeli, email_pembeli, alamat_pembeli, nohp_pembeli, status_pembayaran, status_pengiriman) 
		VALUES ('$IDorder', '$IDReferal', '$jenis', '$harga', '0', '$harga', '$reward', '$tgl_beli', '$nama', '$email', '$alamat', '$no_hp', 'pending', 'Belum Dikirim');
		INSERT INTO order_detail (id_order_detail, id_order, id_produk, catatan, jumlah_beli, total, id_member, reward_member)
		VALUES ('$IDOd', '$IDorder', '$id_produk', '', 1, '$harga', '$IDReferal', '$reward');
		UPDATE produk SET stok = (stok - 1) WHERE id_produk=$id_produk";
} 

$stmt = $db->prepare($sql);
$saved = $stmt->execute(); //or die(print_r($stmt->errorInfo(), true));

if($saved) {

	if ($IDReferal == 'MB000000001') {

		$pesan = $tgl_beli."
Assalamualaikum Bapak/Ibu  ".$nama." 

Kami sudah menerima data pendaftaran dari Bapak/Ibu sebagai berikut :
Nama Lengkap : ".$nama."
No. Whatsapp : ".$no_hp."
Email : ".$email."
Alamat : ".$alamat."

Segera lakukan pembayaran sesuai dengan nominal dibawah ini: 

Rp. ".number_format($harga)."

Untuk detail dan instruksi pembayaran, silahkan cek email tanggal ".$tgl_beli." dari kami.

Jazakumullah khayran 🙏

CS MP Store";

		if ($id_produk == '1') {
			woonotif($no_hp, $tokenAll['mp'], $pesan);
		} else if ($id_produk == '2') {
			woonotif($no_hp, $tokenAll['agoas'], $pesan);
		} else if ($id_produk == '3') {
			woonotif($no_hp, $tokenAll['ppa'], $pesan);
		} else if ($id_produk == '4') {
			woonotif($no_hp, $tokenAll['samara'], $pesan);
		} else {
			woonotif($no_hp, $tokenAll['seminar'], $pesan);
		}

		header("Location: ../product?status=sukses");
	} else {
		$pesan = $tgl_beli."
Assalamualaikum Bapak/Ibu  ".$nama." 

Kami sudah menerima data pendaftaran dari Bapak/Ibu sebagai berikut :
Nama Lengkap : ".$nama."
No. Whatsapp : ".$no_hp."
Email : ".$email."
Alamat : ".$alamat."

Segera lakukan pembayaran sesuai dengan nominal dibawah ini: 

Rp. ".number_format($harga)."

Untuk detail dan instruksi pembayaran, silahkan cek email tanggal ".$tgl_beli." dari kami.

Jazakumullah khayran 🙏

CS MP Store";

		$pesanMem = $tgl_beli."
Assalamualaikum Bapak/Ibu  ".$nama_member." 

Kami sudah menerima data pendaftaran yang menggunakan link referal dari Bapak/Ibu sebagai berikut :
ID Pesanan : ".$IDorder."
Nama Lengkap : ".$nama."
No. Whatsapp : ".$no_hp."
Email : ".$email."
Alamat : ".$alamat."
Total Biaya : Rp. ".number_format($harga)."
Income yang akan anda peroleh : Rp. ".number_format($reward)."

Silahkan melakukan follow up secara manual ke pembeli pada nomor WA pembeli agar pembeli segera melakukan pembayaran dan income bisa masuk ke saldo anda. 

Detail pesanan dapat anda lihat pada :
https://www.mpstore.net/mpadmin/daftartransaksi

Jazakumullah khayran 🙏

CS MP Store";

    if ($id_produk == '1') {
		woonotif($no_member, $tokenAll['mp'], $pesanMem);
		woonotif($no_hp, $tokenAll['mp'], $pesan);
	} else if ($id_produk == '2') {
		woonotif($no_member, $tokenAll['agoas'], $pesanMem);
		woonotif($no_hp, $tokenAll['agoas'], $pesan);
	} else if ($id_produk == '3') {
		woonotif($no_member, $tokenAll['ppa'], $pesanMem);
		woonotif($no_hp, $tokenAll['ppa'], $pesan);
	} else if ($id_produk == '4') {
		woonotif($no_member, $tokenAll['samara'], $pesanMem);
		woonotif($no_hp, $tokenAll['ppa'], $pesan);
	} else {
		woonotif($no_member, $tokenAll['seminar'], $pesanMem);
		woonotif($no_hp, $tokenAll['seminar'], $pesan);
	}

	header("Location: ../product?status=sukses");
	} 
} else {
	echo "<script type='text/javascript'>alert('Pendaftaran gagal! Data yang dimasukkan sudah ada. Silahkan masukan data yang lain!');</script>";
}

?>