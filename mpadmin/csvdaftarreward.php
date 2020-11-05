<?php  

include 'koneksidb.php';

header('Content-Type: text/csv; charset=utf-8'); 

date_default_timezone_set('Asia/Jakarta');
$idMember = $_POST['id_member'];

header('Content-Disposition: attachment; filename="Daftar Reward '.$idMember.' '.date('Y-m-d').'.csv"'); 

$output = fopen("php://output", "w"); 

fputcsv($output, array('ID Pemesanan', 'Tanggal Pembelian', 'Nama Pembeli', 'No. HP Pembeli', 'Total Harga', 'Total Reward Member')); 

$sql = "SELECT id_order, tgl_beli, nama_pembeli, nohp_pembeli, total_harga, total_reward_member FROM `order` WHERE id_member = '$idMember' AND bool_finish='1'"; 
$stmt = $db->prepare($sql);
$stmt -> execute();

while($row = $stmt->fetch(PDO::FETCH_ASSOC)) 

{ 
     fputcsv($output, $row); 
} 

fclose($output); 

?> 
