<?php  

include 'koneksidb.php';

header('Content-Type: text/csv; charset=utf-8'); 

date_default_timezone_set('Asia/Jakarta');
$idMember = $_POST['id_member'];

header('Content-Disposition: attachment; filename="Daftar Penarikan '.$idMember.' '.date('Y-m-d').'.csv"'); 

$output = fopen("php://output", "w"); 

fputcsv($output, array('ID Penarikan', 'ID User', 'Jumlah Penarikan', 'Tanggal Penarikan', 'Status Penarikan')); 

$sql = "SELECT * FROM tarik_saldo WHERE id_user = '$idMember'";
$stmt = $db->prepare($sql);
$stmt -> execute();

while($row = $stmt->fetch(PDO::FETCH_ASSOC)) 

{ 
     fputcsv($output, $row); 
} 

fclose($output); 

?> 
