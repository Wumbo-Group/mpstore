<?php

	function req_midtrans($no_order, $sandbox_production) {
		$curl = curl_init();
		if ($sandbox_production == 'production') {
			curl_setopt_array($curl, array(
		      CURLOPT_URL => "https://api.midtrans.com/v2/".$no_order."/status",
			  CURLOPT_RETURNTRANSFER => true,
			  CURLOPT_ENCODING => "",
			  CURLOPT_MAXREDIRS => 10,
			  CURLOPT_TIMEOUT => 30,
			  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
			  CURLOPT_CUSTOMREQUEST => "GET",
		      CURLOPT_HTTPHEADER => array(
		         "Authorization: Basic TWlkLXNlcnZlci1nYjYtYWU4bWNBaUNacmsyNkxkZUwtRmI6"
		       ),
			));
		} elseif ($sandbox_production == 'sandbox') {
			curl_setopt_array($curl, array(
			  CURLOPT_URL => "https://api.sandbox.midtrans.com/v2/".$no_order."/status",
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
		}

		$response = curl_exec($curl);
		$err = curl_error($curl);

	    curl_close($curl);
	    
	    $hasil = json_decode($response, true);
	    print_r($hasil);
	    if (array_key_exists('transaction_status', $hasil)) {
	    	$status_transaksi = $hasil['transaction_status'];
	    } else {
	    	$status_transaksi = 'Field tidak ditemukan.';
	    }
	    // echo $status_transaksi;
	    return $status_transaksi;
	    //return $hasil;
	}

	//CARA PAKAI
	 $hasil = req_midtrans('200311064', 'production');
	 echo $hasil;

?>