<?php
session_start();

require 'koneksi.php';
include 'secure.php';
include 'wa_woonotif.php';
date_default_timezone_set("Asia/Jakarta");

$IDorder = $_SESSION['semuadata'][0];
$id_mem = $_SESSION['semuadata'][1];
$totalPembelian = $_SESSION['semuadata'][2];
$biayaongkir = $_SESSION['semuadata'][3];
$totalHrga = $_SESSION['semuadata'][4];
$totalBonus = $_SESSION['semuadata'][5];
$tgl_pesan = $_SESSION['semuadata'][6];
$namapembeli = $_SESSION['semuadata'][7];
$emailpembeli = $_SESSION['semuadata'][8];
$idProvinsi = $_SESSION['semuadata'][9];
$idKota = $_SESSION['semuadata'][10];
$alamatpembeli = $_SESSION['semuadata'][11];
$idKodepos = $_SESSION['semuadata'][12];
$nohppembeli = $_SESSION['semuadata'][13];
$statusPembayaran = $_SESSION['semuadata'][14];
$statusPengiriman = $_SESSION['semuadata'][15];
$kecamatan = $_SESSION['semuadata'][16];
$kelurahan = $_SESSION['semuadata'][17];
$jenisProduk = $_SESSION['semuadata'][18];
$statusPengiriman = "Belum Dikirim";

$ambilLevel = $koneksi->query("SELECT * FROM user WHERE id_user = '$id_mem'");
$pecahlevel = $ambilLevel->fetch_assoc();
$level = $pecahlevel['lvl'];

// insert ke tabel order di database

$koneksi->query("INSERT INTO `order`(`id_order`, `id_member`, `jenis_produk`, `total_harga`, `ongkir`, `total_bayar`, `total_reward_member`, `tgl_beli`, `nama_pembeli`, `email_pembeli`, `provinsi_pembeli`, `kota_pembeli`, `kecamatan`, `kelurahan`, `alamat_pembeli`, `kodepos`, `nohp_pembeli`, `status_pembayaran`, `status_pengiriman`) VALUES ('$IDorder', '$id_mem', '$jenisProduk', '$totalPembelian', '$biayaongkir', '$totalHrga','$totalBonus', '$tgl_pesan', '$namapembeli', '$emailpembeli', '$idProvinsi', '$idKota', '$kecamatan', '$kelurahan', '$alamatpembeli', '$idKodepos', '$nohppembeli', '$statusPembayaran', '$statusPengiriman')");

foreach ($_SESSION["pembelian"] as $id_produk => $jumlah) {
    $ambilProduk = $koneksi->query("SELECT * FROM produk WHERE id_produk = '$id_produk'");
    $pecahProduk = $ambilProduk->fetch_assoc();
    $IdProduk = $pecahProduk['id_produk'];
    $JmlhBeli = $_SESSION["pembelian"][$id_produk];
    $totalHargaProduk = $pecahProduk['harga'] * $jumlah;
    $rewardPerproduk = $pecahProduk['reward_member'] * $jumlah;
    if (isset($_SESSION["catatan"][$id_produk])) {
        $catatanBeli = $_SESSION["catatan"][$id_produk];
    }
    else {
        $catatanBeli = "";
    }
    $cariKodeOd = $koneksi->query("SELECT * FROM order_detail ORDER BY id_order_detail DESC");
    $cariKOd = $cariKodeOd->fetch_assoc();
    $dataKOd = $cariKOd['id_order_detail'];
    $tgl = date("d");
    $bln = date("m");
    $thn = date("y");
    $nilaiKOd = substr($dataKOd, 8, 3);
    if ($nilaiKOd == "999") {
        $IDOd = "OD".$thn.$bln.$tgl."001";
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
    $koneksi->query("INSERT INTO order_detail (id_order_detail, id_order, id_produk, catatan, jumlah_beli, total, id_member, reward_member) VALUES ('$IDOd', '$IDorder', '$id_produk', '$catatanBeli', '$jumlah', '$totalHargaProduk', '$id_mem' ,'$rewardPerproduk')");
    $koneksi->query("UPDATE produk SET stok = stok - $jumlah WHERE id_produk = '$id_produk'");
    
}

$IdOdLink = encrypt_decrypt('encrypt', $IDorder);

// request midtrans
$curl = curl_init();
	curl_setopt_array($curl, array(
	  // CURLOPT_URL => "https://api.sandbox.midtrans.com/v2/".$IDorder."/status",
      CURLOPT_URL => "https://api.midtrans.com/v2/".$IDorder."/status",
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
    // $no_rek = $hasil['bill_key'];

// Kirim WA Woonotif
if ($level == '0') {
$pesan = $tgl_pesan."
Assalamualaikum Bapak/Ibu  ".$namapembeli." 
Terima kasih telah berbelanja di 
*MP Store*

Kami sudah menerima data Bapak/Ibu sebagai berikut :
Nama Lengkap : ".$namapembeli."
No. Whatsapp : ".$nohppembeli."
Email : ".$emailpembeli."
Alamat : ".$alamatpembeli."

Segera lakukan pembayaran sesuai dengan nominal dibawah ini: 

Rp ".number_format($totalHrga)."

Untuk detail dan instruksi pembayaran, silahkan cek email dari kami pada tanggal ".$tgl_pesan.".

Untuk melacak pesanan anda silahkan kunjungi link berikut:
https://www.mpstore.net/track_order

Lalu masukkan ID Pesanan anda :
".$IDorder."

Jazakumullah khayran 🙏

CS MP Store";

wa_mpstore($nohppembeli, $pesan);
    // $token = '60cfc8f966ff9505e4c89fd72a272ecbef3bba6572a46b6a';
    // $data = array(
    //     'phone_no' => $nohppembeli, 
    //     'key' => $token, 
    //     'message' => $pesan
    // );
    // $data_string = json_encode($data);
    // $ch = curl_init('http://send.woonotif.com/api/send_message');
    // curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
    // curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
    // curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    // curl_setopt($ch, CURLOPT_VERBOSE, 0);
    // curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0);
    // curl_setopt($ch, CURLOPT_TIMEOUT, 15);
    // curl_setopt($ch, CURLOPT_HTTPHEADER, array(
    //     'Content-Type: application/json',
    //     'Content-Length: ' . strlen($data_string)
    //     )
    // );
    // $result = curl_exec($ch);
}
else {
    $ambilMember = $koneksi->query("SELECT * FROM user WHERE id_user = '$id_mem'");
    $pecahMember = $ambilMember->fetch_assoc();
    $namaMember = $pecahMember['nama_user'];
    $emailMember = $pecahMember['email_user'];
    $noMember = $pecahMember['no_hp'];

$pesan = $tgl_pesan."
Assalamualaikum Bapak/Ibu  ".$namaMember." 

Kami sudah menerima data belanja yang menggunakan link referal dari Bapak/Ibu sebagai berikut :
ID Pesanan : ".$IDorder."
Nama Lengkap : ".$namapembeli."
No. Whatsapp : ".$nohppembeli."
Email : ".$emailpembeli."
Alamat : ".$alamatpembeli."
Total Belanja : Rp. ".number_format($totalHrga)."
Ongkir : Rp. ".number_format($biayaongkir)."
Income yang akan anda peroleh : ".number_format($totalBonus)."

Silahkan melakukan follow up secara manual ke pembeli pada nomor WA pembeli agar pembeli segera melakukan pembayaran dan income bisa masuk ke saldo anda.

Jazakumullah khayran 🙏

CS MP Store";

wa_mpstore($noMember, $pesan);

    // $token = '60cfc8f966ff9505e4c89fd72a272ecbef3bba6572a46b6a';
    // $data = array(
    //     'phone_no' => $noMember, 
    //     'key' => $token, 
    //     'message' => $pesan
    // );
    // $data_string = json_encode($data);
    // $ch = curl_init('http://send.woonotif.com/api/send_message');
    // curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
    // curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
    // curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    // curl_setopt($ch, CURLOPT_VERBOSE, 0);
    // curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0);
    // curl_setopt($ch, CURLOPT_TIMEOUT, 15);
    // curl_setopt($ch, CURLOPT_HTTPHEADER, array(
    //     'Content-Type: application/json',
    //     'Content-Length: ' . strlen($data_string)
    //     )
    // );
    // $result = curl_exec($ch);

}

// kosongkan session
unset($_SESSION['semuadata']);
unset($_SESSION['pembelian']);
unset($_SESSION['catatan']);

echo "<script>location='product?status=sukses';</script>";

?>