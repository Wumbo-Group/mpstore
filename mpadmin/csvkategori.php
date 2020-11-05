<?php  

include 'koneksidb.php';

header('Content-Type: text/csv; charset=utf-8'); 

date_default_timezone_set('Asia/Jakarta');

header('Content-Disposition: attachment; filename="Kategori '.date('Y-m-d').'.csv"'); 

$output = fopen("php://output", "w"); 

fputcsv($output, array('ID Kategori', 'ID Kategori Awal', 'Nama Kategori')); 

$sql = "SELECT * FROM kategori"; 
$stmt = $db->prepare($sql);
$stmt -> execute();

while($row = $stmt->fetch(PDO::FETCH_ASSOC)) 

{ 
     fputcsv($output, $row); 
} 

fclose($output); 

?> 
