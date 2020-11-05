<?php 
$url = "http://eis.dinkes.jakarta.go.id/api-bed/bed";
$apiBedUser = 3172702;
$apiBedKey = '$2y$10$NLlr3meVHoTz9WeArQymKeFbAZdndQvkjDrwctOiDrgKtiLKWCSK6';
$curl = curl_init();

    curl_setopt_array($curl, array(
    CURLOPT_URL => $url,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "DELETE",
    CURLOPT_HTTPHEADER => array(
        "Api-Bed-User: ".$apiBedUser,
        "Api-Bed-Key: ".$apiBedKey,
        "Content-Type: application/json"
    ),
    ));

    $response = curl_exec($curl);

    curl_close($curl);

    echo "<script>alert('Data Berhasil Dihapus')</script>";
    echo "<script>location='index.php'</script>";