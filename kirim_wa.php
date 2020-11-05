<?php
// $INSTANCE_ID = 'YOUR_INSTANCE_ID_HERE';  // TODO: Replace it with your gateway instance ID here
// $CLIENT_ID = "YOUR_CLIENT_ID_HERE";  // TODO: Replace it with your Forever Green client ID here
// $CLIENT_SECRET = "YOUR_CLIENT_SECRET_HERE";   // TODO: Replace it with your Forever Green client secret here
// $postData = array(
//   'number' => '12025550108',  // TODO: Specify the recipient's number here. NOT the gateway number
//   'message' => 'Howdy! Is this exciting?'
// );
// $headers = array(
//   'Content-Type: application/json',
//   'X-WM-CLIENT-ID: '.$CLIENT_ID,
//   'X-WM-CLIENT-SECRET: '.$CLIENT_SECRET
// );
// $url = 'http://api.whatsmate.net/v3/whatsapp/single/text/message/' . $INSTANCE_ID;
// $ch = curl_init($url);
// curl_setopt($ch, CURLOPT_POST, 1);
// curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
// curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
// curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($postData));
// $response = curl_exec($ch);
// echo "Response: ".$response;
// curl_close($ch);
?>

<?php

// $curl = curl_init();

// curl_setopt_array($curl, array(
//   CURLOPT_URL => "https://panel.rapiwha.com/send_message.php?apikey=PIXWFXGOXILMFMVCLU2H&number=6282210388103&text=Tolong jangan di balas.-Regrads, Bayu",
//   CURLOPT_RETURNTRANSFER => true,
//   CURLOPT_ENCODING => "",
//   CURLOPT_MAXREDIRS => 10,
//   CURLOPT_TIMEOUT => 30,
//   CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
//   CURLOPT_CUSTOMREQUEST => "GET",
// ));

// $response = curl_exec($curl);
// $err = curl_error($curl);

// curl_close($curl);

// if ($err) {
//   echo "cURL Error #:" . $err;
// } else {
//   echo $response;
// }


$pesan = "Selamat Pesanan Anda Sudah Tersimpan
Silahkan lakukan pembayaran untuk proses selanjutnya

Mohon untuk tidak membalas pesan ini, karena ini hanyalah both
Terima kasih";

$key='f3c14e82574ff675a523c27159fa7696207a3b0e6ea281eb';
$url='http://116.203.92.59/api/send_message';
$data = array(
  "phone_no"=> '+6289507229772',
  "key"		=>$key,
  "message"	=>$pesan
);
$data_string = json_encode($data);

$ch = curl_init($url);
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_VERBOSE, 0);
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0);
curl_setopt($ch, CURLOPT_TIMEOUT, 360);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  'Content-Type: application/json',
  'Content-Length: ' . strlen($data_string))
);
echo $res=curl_exec($ch);
curl_close($ch);

// $pesan = "Selamat Pesanan Anda Sudah Tersimpan
// Silahkan lakukan pembayaran untuk proses selanjutnya

// Mohon untuk tidak membalas pesan ini, karena ini hanyalah both
// Terima kasih";

// $key='f3c14e82574ff675a523c27159fa7696207a3b0e6ea281eb';
// $url='http://116.203.92.59/api/send_message';
// $data = array(
//   "phone_no"=>$nohp2,
//   "key"		=>$key,
//   "message"	=>$pesan
// );
// $data_string = json_encode($data);

// $ch = curl_init($url);
// curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
// curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
// curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
// curl_setopt($ch, CURLOPT_VERBOSE, 0);
// curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0);
// curl_setopt($ch, CURLOPT_TIMEOUT, 360);
// curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
// curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
// curl_setopt($ch, CURLOPT_HTTPHEADER, array(
//   'Content-Type: application/json',
//   'Content-Length: ' . strlen($data_string))
// );
// echo $res=curl_exec($ch);
// curl_close($ch);