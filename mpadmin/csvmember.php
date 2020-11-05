<?php  

include 'koneksidb.php';

header('Content-Type: text/csv; charset=utf-8'); 

date_default_timezone_set('Asia/Jakarta');

header('Content-Disposition: attachment; filename="Member '.date('Y-m-d').'.csv"'); 

$output = fopen("php://output", "w"); 

fputcsv($output, array('ID', 'Nama', 'Email', 'Username', 'Level', 'Tanggal Lahir', 'Tanggal Gabung', 'Alamat', 'Jenis Kelamin', 'No. KTP', 'No. HP', 'Bank Rekening', 'No. Rekening', 'Nama Pemilik Rekening')); 

$sql = "SELECT id_user, nama_user, email_user, username, level, tgl_lahir, tgl_gabung, alamat, jenis_kelamin, no_ktp, no_hp, bank_rek, no_rek, nama_pemilik_rek FROM user"; 
$stmt = $db->prepare($sql);
$stmt -> execute();

while($row = $stmt->fetch(PDO::FETCH_ASSOC)) 

{ 
     fputcsv($output, $row); 
} 

fclose($output); 

?> 
