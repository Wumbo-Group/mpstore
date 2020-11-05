<?php
$url = "http://eis.dinkes.jakarta.go.id/api-bed/bed";
$apiBedUser = 3172702;
$apiBedKey = '$2y$10$NLlr3meVHoTz9WeArQymKeFbAZdndQvkjDrwctOiDrgKtiLKWCSK6';

$kapasitas_VIP = $_POST['kapasitasVIP'];
$kapasitas_KELAS1 = $_POST['kapasitasKELAS1'];
$kapasitas_KELAS2 = $_POST['kapasitasKELAS2'];
$kapasitas_KELAS3 = $_POST['kapasitasKELAS3'];
$kapasitas_HCU = $_POST['kapasitasHCU'];
$kapasitas_ICU = $_POST['kapasitasICU'];
$kapasitas_INV = $_POST['kapasitasINV'];
$kapasitas_INTV = $_POST['kapasitasINTV'];
$kapasitas_ITNV = $_POST['kapasitasITNV'];
$kapasitas_ITNTV = $_POST['kapasitasITNTV'];
$kapasitas_ISN = $_POST['kapasitasISN'];
$kapasitas_ISTN = $_POST['kapasitasISTN'];
$kapasitas_NC = $_POST['kapasitasNC'];
$kapasitas_PEC = $_POST['kapasitasPEC'];
$kapasitas_PIC = $_POST['kapasitasPIC'];
$kapasitas_OC = $_POST['kapasitasOC'];
$kapasitas_HC = $_POST['kapasitasHC'];
					
$kosong_VIP = $_POST['kosongVIP'];
$kosong_KELAS1 = $_POST['kosongKELAS1'];
$kosong_KELAS2 = $_POST['kosongKELAS2'];
$kosong_KELAS3 = $_POST['kosongKELAS3'];
$kosong_HCU = $_POST['kosongHCU'];
$kosong_ICU = $_POST['kosongICU'];
$kosong_INV = $_POST['kosongINV'];
$kosong_INTV = $_POST['kosongINTV'];
$kosong_ITNV = $_POST['kosongITNV'];
$kosong_ITNTV = $_POST['kosongITNTV'];
$kosong_ISN = $_POST['kosongISN'];
$kosong_ISTN = $_POST['kosongISTN'];
$kosong_NC = $_POST['kosongNC'];
$kosong_PEC = $_POST['kosongPEC'];
$kosong_PIC = $_POST['kosongPIC'];
$kosong_OC = $_POST['kosongOC'];
$kosong_HC = $_POST['kosongHC'];

$dataArray = array(
    "kapasitas_vip"=> $kapasitas_VIP,
    "kapasitas_kelas_1"=> $kapasitas_KELAS1,
    "kapasitas_kelas_2"=> $kapasitas_KELAS2,
    "kapasitas_kelas_3"=> $kapasitas_KELAS3,
    "kapasitas_hcu"=> $kapasitas_HCU,
    "kapasitas_iccu"=> $kapasitas_ICU,
    "kapasitas_icu_negatif_ventilator"=> $kapasitas_INV,
    "kapasitas_icu_negatif_tanpa_ventilator"=> $kapasitas_INTV,
    "kapasitas_icu_tanpa_negatif_ventilator"=> $kapasitas_ITNV,
    "kapasitas_icu_tanpa_negatif_tanpa_ventilator"=> $kapasitas_ITNTV,
    "kapasitas_isolasi_negatif"=> $kapasitas_ISN,
    "kapasitas_isolasi_tanpa_negatif"=> $kapasitas_ISTN,
    "kapasitas_nicu_covid"=> $kapasitas_NC,
    "kapasitas_perina_covid"=> $kapasitas_PEC,
    "kapasitas_picu_covid"=> $kapasitas_PIC,
    "kapasitas_ok_covid"=> $kapasitas_OC,
    "kapasitas_hd_covid"=> $kapasitas_HC,
    "kosong_vip"=> $kosong_VIP,
    "kosong_kelas_1"=> $kosong_KELAS1,
    "kosong_kelas_2"=> $kosong_KELAS2,
    "kosong_kelas_3"=> $kosong_KELAS3,
    "kosong_hcu"=> $kosong_HCU,
    "kosong_iccu"=> $kosong_ICU,
    "kosong_icu_negatif_ventilator"=> $kosong_INV,
    "kosong_icu_negatif_tanpa_ventilator"=> $kosong_INTV,
    "kosong_icu_tanpa_negatif_ventilator"=> $kosong_ITNV,
    "kosong_icu_tanpa_negatif_tanpa_ventilator"=> $kosong_ITNTV,
    "kosong_isolasi_negatif"=> $kosong_ISN,
    "kosong_isolasi_tanpa_negatif"=> $kosong_ISTN,
    "kosong_nicu_covid"=> $kosong_NC,
    "kosong_perina_covid"=> $kosong_PEC,
    "kosong_picu_covid"=> $kosong_PIC,
    "kosong_ok_covid"=> $kosong_OC,
    "kosong_hd_covid"=> $kosong_HC,
);

$dataSend = json_encode($dataArray);

    $curl = curl_init();

    curl_setopt_array($curl, array(
    CURLOPT_URL => $url,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "POST",
    CURLOPT_POSTFIELDS => $dataSend,
    CURLOPT_HTTPHEADER => array(
        "Api-Bed-User: ".$apiBedUser,
        "Api-Bed-Key: ".$apiBedKey,
        "Content-Type: application/json"
    ),
    ));

    $response = curl_exec($curl);

    curl_close($curl);

    echo "<script>alert('Data Berhasil Dikirim')</script>";
    echo "<script>location='index.php'</script>";
	
?>