<?php
include 'koneksitable.php';

## Read value
$draw = $_POST['draw'];
$row = $_POST['start'];
$rowperpage = $_POST['length']; // Rows display per page
$columnIndex = $_POST['order'][0]['column']; // Column index
$columnName = $_POST['columns'][$columnIndex]['data']; // Column name
$columnSortOrder = $_POST['order'][0]['dir']; // asc or desc
$searchValue = $_POST['search']['value']; // Search value

## Custom Field value
$searchByName = $_POST['searchByName'];
$searchByCategory = $_POST['searchByCategory'];

## Search 
$searchQuery = " ";
if($searchByName != ''){
    $searchQuery .= " and (nama_produk like '%".$searchByName."%' ) ";
}
if($searchByCategory != ''){
    $searchQuery .= " and (nama_kategori ='".$searchByCategory."') ";
}
if($searchValue != ''){
  $searchQuery .= " and (nama_produk like '%".$searchValue."%' or 
        harga like '%".$searchValue."%' or 
        reward_member like'%".$searchValue."%' ) ";
}

## Total number of records without filtering
$sel = mysqli_query($con,"select count(*) as allcount from produk LEFT JOIN kategori ON produk.id_kategori = kategori.id_kategori");
$records = mysqli_fetch_assoc($sel);
$totalRecords = $records['allcount'];

## Total number of records with filtering
$sel = mysqli_query($con,"select count(*) as allcount from produk LEFT JOIN kategori ON produk.id_kategori = kategori.id_kategori WHERE 1 ".$searchQuery);
$records = mysqli_fetch_assoc($sel);
$totalRecordwithFilter = $records['allcount'];

## Fetch records
$empQuery = "select * from produk LEFT JOIN kategori ON produk.id_kategori = kategori.id_kategori WHERE 1 ".$searchQuery." order by ".$columnName." ".$columnSortOrder." limit ".$row.",".$rowperpage;
$empRecords = mysqli_query($con, $empQuery);
$data = array();

while ($row = mysqli_fetch_assoc($empRecords)) {
    $data[] = array(
             "id_produk"=>$row['id_produk'],
             "nama_kategori"=>$row['nama_kategori'],
             "nama_produk"=>$row['nama_produk'],
             "jenis_produk"=>$row['jenis_produk'],
             "harga"=>$row['harga'],
             "reward_member"=>$row['reward_member'],
             "stok"=>$row['stok'],
             "berat_produk"=>$row['berat_produk'],
             "best_seller"=>$row['best_seller']
      );
}

## Response
$response = array(
    "draw" => intval($draw),
    "iTotalRecords" => $totalRecords,
    "iTotalDisplayRecords" => $totalRecordwithFilter,
    "aaData" => $data
);

echo json_encode($response);
