<!-- 
// $koneksi = new mysqli ("localhost","root","","tes_kerja");
// $ambil = $koneksi->query("SELECT MAX(gaji) FROM tabel1 WHERE gaji < (SELECT MAX(gaji) FROM tabel1)");
// $pecah = $ambil->fetch_assoc();
// print_r($pecah);
// $x=0;
// Function change1($a){
// 	$a=$a+5;
// }
// Function change2(&$b)($a){
// 	$b = $b+7;
// }
// $x += 10;
// $y = 11 + 011 + 0x11;
// change2($y);
// echo $x;
// echo "-";
// echo $y; -->

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Document</title>
</head>
<body>

<h1 id="KA">sdad</h1>
<h1 id="KKA"></h1>


<!-- <script src='https://app.sandbox.midtrans.com/snap/snap.js' data-client-key='SB-Mid-client-jAH_IcfvIz2YdOHE'>
  var xhttp = new XMLHttpRequest();  
  xhttp.onreadystatechange = function() {      
    if (this.readyState == 4 && this.status == 200) {         // Typical actiontobe performed whenthe document is
        ready:
        var data=JSON.parse(xhttp.responseText);         
        console.log(data);
		document.getElementById("KA").innerHTML = data.order_id;
      }
  };
  xhttp.open("GET", "https://api.sandbox.midtrans.com/snap/v2/012000003/status.json", true);
  xhttp.send(); 
  </script>
	 -->
	<?php


// function http_request($url){
//     // persiapkan curl
//     $ch = curl_init(); 

//     // set url 
//     curl_setopt($ch, CURLOPT_URL, $url);
    
//     // set user agent    
//     curl_setopt($ch,CURLOPT_USERAGENT,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13');

//     // return the transfer as a string 
// 	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
// 	curl_setopt($ch, CURLOPT_HTTPHEADER) = array("Authorization: SB-Mid-server-B9rCGBLI6hncW1hEljR1_CE1");

//     // $output contains the output string 
//     $output = curl_exec($ch); 

//     // tutup curl 
//     curl_close($ch);      

//     // mengembalikan hasil curl
//     return $output;
// }

// $profile = http_request("https://api.sandbox.midtrans.com/v2/012000001/status");

// // ubah string JSON menjadi array
// $profile = json_decode($profile, TRUE);

// echo "<pre>";
// print_r($profile);
// echo "</pre>";


$curl = curl_init();
	curl_setopt_array($curl, array(
	  CURLOPT_URL => "https://api.sandbox.midtrans.com/v2/012000003/status",
	  CURLOPT_RETURNTRANSFER => true,
	  CURLOPT_ENCODING => "",
	  CURLOPT_MAXREDIRS => 10,
	  CURLOPT_TIMEOUT => 30,
	  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	  CURLOPT_CUSTOMREQUEST => "GET",
	  CURLOPT_HTTPHEADER => array(
	    "Authorization: Basic U0ItTWlkLXNlcnZlci1COXJDR0JMSTZobmNXMWhFbGpSMV9DRTE="
	  ),
	));

	$response = curl_exec($curl);
	$err = curl_error($curl);

    curl_close($curl);
    
	$hasil = json_decode($response, true);
	var_dump($hasil);
	echo $hasil['transaction_status'];
	print_r($hasil['payment_type']);
	if ($hasil['payment_type'] == 'bank_transfer') {
		print_r($hasil['va_numbers']);
		echo $hasil['merchant_id'];
	}
	elseif ($hasil['payment_type'] == 'echannel') {
		echo $hasil['bill_key'];
	}
	elseif ($hasil['payment_type'] == 'gopay') {

	}
?>
</body>
</html>




