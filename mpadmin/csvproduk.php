<?php  

include 'koneksidb.php';

header('Content-Type: text/csv; charset=utf-8'); 

date_default_timezone_set('Asia/Jakarta');

header('Content-Disposition: attachment; filename="Produk '.date('Y-m-d').'.csv"'); 

$output = fopen("php://output", "w"); 

fputcsv($output, array('ID Produk', 'ID Kategori', 'Nama', 'jenis_produk', 'Deskripsi', 'Harga', 'Berat', 'Stok', 'Reward Member', 'Best Seller')); 

$sql = "SELECT id_produk, id_kategori, nama_produk, jenis_produk, deskripsi, harga, berat_produk, stok, reward_member, best_seller FROM produk"; 
$stmt = $db->prepare($sql);
$stmt -> execute();

while($row = $stmt->fetch(PDO::FETCH_ASSOC)) 

{ 
     fputcsv($output, $row); 
} 

fclose($output); 

?> 
