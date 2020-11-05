<?php
    session_start();
    include 'koneksi.php';
	$asal = $_POST['asal'];
	$id_kabupaten = $_POST['kab_id'];
	$kurir = $_POST['kurir'];
    $berat = $_POST['berat'];
    

    $totalHarga = 0;
    $totalBerat = 0;
    foreach ($_SESSION["pembelian"] as $id_produk => $jumlah):
        $ambilPembelian = $koneksi->query("SELECT * FROM produk WHERE id_produk = '$id_produk'");
        $aPembelian = $ambilPembelian->fetch_assoc();
        $subHarga = $aPembelian["harga"] * $jumlah;
        $subBerat = $aPembelian["berat_produk"] * $jumlah;
        $totalBerat += $subBerat;
        $totalHarga += $subHarga;
    endforeach;
    $t_harg = $totalHarga;

	$curl = curl_init();
	curl_setopt_array($curl, array(
	  CURLOPT_URL => "http://api.rajaongkir.com/starter/cost",
	  CURLOPT_RETURNTRANSFER => true,
	  CURLOPT_ENCODING => "",
	  CURLOPT_MAXREDIRS => 10,
	  CURLOPT_TIMEOUT => 30,
	  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	  CURLOPT_CUSTOMREQUEST => "POST",
	  CURLOPT_POSTFIELDS => "origin=".$asal."&destination=".$id_kabupaten."&weight=".$berat."&courier=".$kurir."",
	  CURLOPT_HTTPHEADER => array(
	    "content-type: application/x-www-form-urlencoded",
	    "key: f2c402bc35dfc4f4c78c27e44d446171"
	  ),
	));

	$response = curl_exec($curl);
	$err = curl_error($curl);

    curl_close($curl);
    
    $hasil = json_decode($response, true);
    $biaya_ongkir = $hasil['rajaongkir']['results'][0]['costs'][1]['cost'][0]['value'];
    $jumlahnya = $biaya_ongkir + $t_harg;

	if ($err) {	
        echo "cURL Error #:" . $err;
	} else {
    echo "Rp ".number_format($biaya_ongkir);
      
    }
?>