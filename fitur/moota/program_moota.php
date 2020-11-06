<?php

$baseURLMoota = "https://app.moota.co/";
$apiTokenMoota = "";

function read_pofile() {
    global $apiTokenMoota;
    $curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://app.moota.co/api/v1/profile',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "GET",
      CURLOPT_HTTPHEADER => [
        'Accept: application/json',
        'Authorization: Bearer '.$apiTokenMoota
      ],
    ));
    
    $response = curl_exec($curl);
    $err = curl_error($curl);
    
    curl_close($curl);
    
    if ($err) {
      echo "cURL Error #:" . $err;
    } else {
      echo $response;
    }
    
    $result = json_decode($response, true);
    return $result;
}

function read_saldo() {
    global $apiTokenMoota;
    $curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://app.moota.co/api/v1/balance',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "GET",
      CURLOPT_HTTPHEADER => [
        'Accept: application/json',
        'Authorization: Bearer '.$apiTokenMoota
      ],
    ));
    
    $response = curl_exec($curl);
    $err = curl_error($curl);
    
    curl_close($curl);
    
    if ($err) {
      echo "cURL Error #:" . $err;
    } else {
      echo $response;
    }
    
    $result = json_decode($response, true);
    return $result;
}

function daftar_akunBank() {
    global $apiTokenMoota;
    $curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://app.moota.co/api/v1/bank',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "GET",
      CURLOPT_HTTPHEADER => [
        'Accept: application/json',
        'Authorization: Bearer '.$apiTokenMoota
      ],
    ));
    
    $response = curl_exec($curl);
    $err = curl_error($curl);
    
    curl_close($curl);
    
    if ($err) {
      echo "cURL Error #:" . $err;
    } else {
      echo $response;
    }
    
    $result = json_decode($response, true);
    return $result;
}

function detail_akunBank($bankId) {
    global $apiTokenMoota;
    $curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://app.moota.co/api/v1/bank/'.$bankId,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "GET",
      CURLOPT_HTTPHEADER => [
        'Accept: application/json',
        'Authorization: Bearer '.$apiTokenMoota
      ],
    ));
    
    $response = curl_exec($curl);
    $err = curl_error($curl);
    
    curl_close($curl);
    
    if ($err) {
      echo "cURL Error #:" . $err;
    } else {
      echo $response;
    }
    
    $result = json_decode($response, true);
    return $result;
}

function mutasi_bulanIni($bankId) {
    global $apiTokenMoota;
    $curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://app.moota.co/api/v1/bank/'.$bankId.'/mutation/',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "GET",
      CURLOPT_HTTPHEADER => [
        'Accept: application/json',
        'Authorization: Bearer '.$apiTokenMoota
      ],
    ));
    
    $response = curl_exec($curl);
    $err = curl_error($curl);
    
    curl_close($curl);
    
    if ($err) {
      echo "cURL Error #:" . $err;
    } else {
      echo $response;
    }
    
    $result = json_decode($response, true);
    return $result;
}

function mutasi_terakhir($bankId, $jumlah) {
    global $apiTokenMoota;
    $curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://app.moota.co/api/v1/bank/'.$bankId.'/mutation/recent/'.$jumlah,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "GET",
      CURLOPT_HTTPHEADER => [
        'Accept: application/json',
        'Authorization: Bearer '.$apiTokenMoota
      ],
    ));
    
    $response = curl_exec($curl);
    $err = curl_error($curl);
    
    curl_close($curl);
    
    if ($err) {
      echo "cURL Error #:" . $err;
    } else {
      echo $response;
    }
    
    $result = json_decode($response, true);
    return $result;
}

function mutasi_nominal($bankId, $amount) {
    global $apiTokenMoota;
    $curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://app.moota.co/api/v1/bank/'.$bankId.'/mutation/search/'.$amount,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "GET",
      CURLOPT_HTTPHEADER => [
        'Accept: application/json',
        'Authorization: Bearer '.$apiTokenMoota
      ],
    ));
    
    $response = curl_exec($curl);
    $err = curl_error($curl);
    
    curl_close($curl);
    
    if ($err) {
      echo "cURL Error #:" . $err;
    } else {
      echo $response;
    }
    
    $result = json_decode($response, true);
    return $result;
}

function mutasi_deskripsi($bankId, $description) {
    global $apiTokenMoota;
    $curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://app.moota.co/api/v1/bank/'.$bankId.'/mutation/search/description/'.$description,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => "",
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => "GET",
      CURLOPT_HTTPHEADER => [
        'Accept: application/json',
        'Authorization: Bearer '.$apiTokenMoota
      ],
    ));
    
    $response = curl_exec($curl);
    $err = curl_error($curl);
    
    curl_close($curl);
    
    if ($err) {
      echo "cURL Error #:" . $err;
    } else {
      echo $response;
    }
    
    $result = json_decode($response, true);
    return $result;
}