<?php

$kab_id = explode("-",$_GET['kab_id']);

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://pro.rajaongkir.com/api/subdistrict?city=".$kab_id[0],
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "key: f2c402bc35dfc4f4c78c27e44d446171"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
//   echo $response;
}

$data = json_decode($response, true);
for ($i=0; $i < count($data['rajaongkir']['results']); $i++) { 
    echo "<option value='".$data['rajaongkir']['results'][$i]['subdistrict_id']."-".$data['rajaongkir']['results'][$i]['subdistrict_name']."'>".$data['rajaongkir']['results'][$i]['subdistrict_name']."</option>";
}

?>