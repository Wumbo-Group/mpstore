<?php  

include 'koneksidb.php';

header('Content-Type: text/csv; charset=utf-8'); 

date_default_timezone_set('Asia/Jakarta');
$idMember = $_POST['id_member'];

header('Content-Disposition: attachment; filename="Daftar Transaksi '.$idMember.' '.date('Y-m-d').'.csv"'); 

$output = fopen("php://output", "w"); 

fputcsv($output, array('ID', 'Jenis Produk', 'Total Harga', 'Ongkir', 'Total Bayar', 'Total Reward Member', 'Tanggal Beli', 'Tanggal Bayar', 'Nama', 'Email', 'Provinsi', 'Kota', 'Kecamatan', 'Kelurahan', 'Alamat', 'Kode Pos', 'No. HP', 'Status Pembayaran', 'Status Pengiriman', 'No. Resi')); 

$sql = "SELECT id_order, jenis_produk, total_harga, ongkir, total_bayar, total_reward_member, tgl_beli, tgl_bayar, nama_pembeli, email_pembeli, provinsi_pembeli, kota_pembeli, kecamatan, kelurahan, alamat_pembeli, kodepos, nohp_pembeli, status_pembayaran, status_pengiriman, resie_pengiriman FROM `order` WHERE id_member = '$idMember'"; 
$stmt = $db->prepare($sql);
$stmt -> execute();

while($row = $stmt->fetch(PDO::FETCH_ASSOC)) 

{ 
     fputcsv($output, $row); 
} 

fclose($output); 

?> 
