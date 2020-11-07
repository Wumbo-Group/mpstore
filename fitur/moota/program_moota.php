<?php

$baseURLMoota = "https://app.moota.co/";
$apiTokenMoota = "";

function read_pofile() {
    $urlAPI = "https://app.moota.co/api/v1/profile";
    return curlAPI($urlAPI);
}

function read_saldo() {
  $urlAPI = "https://app.moota.co/api/v1/balance";
  return curlAPI($urlAPI);
}

function daftar_akunBank() {
  $urlAPI = "https://app.moota.co/api/v1/bank";
  return curlAPI($urlAPI);
}

function detail_akunBank($bankId) {
  $urlAPI = 'https://app.moota.co/api/v1/bank/'.$bankId;
  return curlAPI($urlAPI);
}

function mutasi_bulanIni($bankId) {
  $urlAPI = 'https://app.moota.co/api/v1/bank/'.$bankId.'/mutation/';
  return curlAPI($urlAPI);
}

function mutasi_terakhir($bankId, $jumlah) {
  $urlAPI = 'https://app.moota.co/api/v1/bank/'.$bankId.'/mutation/recent/'.$jumlah;
  return curlAPI($urlAPI);
}

function mutasi_nominal($bankId, $amount) {
  $urlAPI = 'https://app.moota.co/api/v1/bank/'.$bankId.'/mutation/search/'.$amount;
  return curlAPI($urlAPI);
}

function mutasi_deskripsi($bankId, $description) {
  $urlAPI = 'https://app.moota.co/api/v1/bank/'.$bankId.'/mutation/search/description/'.$description;
  return curlAPI($urlAPI);
}

function curlAPI($urlAPI) {
  global $apiTokenMoota;
  $curl = curl_init();
  curl_setopt_array($curl, array(
    CURLOPT_URL => $urlAPI,
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