<?php  

include 'koneksidb.php';

header('Content-Type: text/csv; charset=utf-8'); 

date_default_timezone_set('Asia/Jakarta');

header('Content-Disposition: attachment; filename="Penarikan Saldo '.date('Y-m-d').'.csv"'); 

$output = fopen("php://output", "w"); 

fputcsv($output, array('ID Penarikan', 'ID Member', 'Bank Rekening', 'No. Rekening', 'Nama Pemilik Rekening', 'Jumlah Penarikan', 'Tanggal Penarikan', 'Status Penarikan')); 

$sql = "SELECT t.id_tarik, t.id_user, u.bank_rek, u.no_rek, u.nama_pemilik_rek, t.jmlh_tarik, t.tgl_tarik, t.status_tarik FROM `tarik_saldo` AS t LEFT JOIN `user` AS u ON t.id_user = u.id_user"; 
$stmt = $db->prepare($sql);
$stmt -> execute();

while($row = $stmt->fetch(PDO::FETCH_ASSOC)) 

{ 
     fputcsv($output, $row); 
} 

fclose($output); 

?> 
