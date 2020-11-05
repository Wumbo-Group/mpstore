<?php
    session_start();
    include 'koneksi.php';
    
	$asal = explode("-",$_POST['asal']);
	$id_kabupaten = $_POST['kab_id'];
	$kurir = $_POST['kurir'];
    $berat = $_POST['berat'];
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $nohp = $_POST['nohp'];
    $prov = explode("-",$_POST['provinsi']);
    $kota = explode("-",$_POST['kabupaten']);
    $kodepos = $_POST['kodepos'];
    $alamatLengkap = $_POST['al-lengkap'];
    $kecamatan = explode("-",$_POST['kecamatan']);
    $kelurahan = $_POST['kelurahan'];
    
    if (!empty($nama)) {
        function Search($search, $string){ 
            $position = strpos($string, $search, 1);   
            if ($position == true){ 
                return "1"; 
            } 
            else{ 
                return "0"; 
            } 
        }
        $search = "'";
        if (Search($search,$nama) == '1') {
            echo "<script>alert('Nama Tidak boleh ada simbol');</script>";
            echo "<script>location='cart';</script>";
        }
    
        
    }
    
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

    // ------------------------------------------------------------
    if ($_POST['provinsi'] == "Pilih Provinsi ...") {
        echo "<script>alert('Provinsi dan Kota/Kabupaten harus diisi untuk melihat total pembayaran')</script>";
        echo "<script>location.reload()</script>";
        echo "
        <div class='flex-w flex-sb-m p-t-26'>
            
            <span class='m-text22 w-size19 w-full-sm'>
                Ongkir:
            </span>

            <span class='m-text21 w-size20 w-full-sm'>
                Rp 0
            </span>
        </div>
        <div class='flex-w flex-sb-m p-t-26 p-b-30'>
            
            <span class='m-text22 w-size19 w-full-sm'>
                Total:
            </span>

            <span class='m-text21 w-size20 w-full-sm'>
                Rp ".number_format($t_harg)."
            </span>
        </div>";
    }
    else {

    // $curl = curl_init();
	// curl_setopt_array($curl, array(
	//   CURLOPT_URL => "http://api.rajaongkir.com/starter/cost",
	//   CURLOPT_RETURNTRANSFER => true,
	//   CURLOPT_ENCODING => "",
	//   CURLOPT_MAXREDIRS => 10,
	//   CURLOPT_TIMEOUT => 30,
	//   CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	//   CURLOPT_CUSTOMREQUEST => "POST",
	//   CURLOPT_POSTFIELDS => "origin=".$asal."&destination=".$kota[0]."&weight=".$berat."&courier=".$kurir."",
	//   CURLOPT_HTTPHEADER => array(
	//     "content-type: application/x-www-form-urlencoded",
	//     "key: f2c402bc35dfc4f4c78c27e44d446171"
	//   ),
    // ));
    
    $curl = curl_init();
	curl_setopt_array($curl, array(
	  CURLOPT_URL => "https://pro.rajaongkir.com/api/cost",
	  CURLOPT_RETURNTRANSFER => true,
	  CURLOPT_ENCODING => "",
	  CURLOPT_MAXREDIRS => 10,
	  CURLOPT_TIMEOUT => 30,
	  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
	  CURLOPT_CUSTOMREQUEST => "POST",
	  CURLOPT_POSTFIELDS => "origin=".$asal[0]."&originType=city&destination=".$kecamatan[0]."&destinationType=subdistrict&weight=".$berat."&courier=".$kurir."",
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

    

    echo "
    <div class='flex-w flex-sb-m p-t-26'>
        <input type='hidden' value=".$biaya_ongkir." name='ongkiraja' id='ongkiraja'>
        <span class='m-text22 w-size19 w-full-sm'>
            Ongkir:
        </span>

        <span class='m-text21 w-size20 w-full-sm'>
            Rp ".$biaya_ongkir."
        </span>
    </div>
    <div class='flex-w flex-sb-m p-t-26 p-b-30'>
        <input type='hidden' value=".$jumlahnya." name='totalHrga' id='totalHrga'>
        <span class='m-text22 w-size19 w-full-sm'>
            Total:
        </span>

        <span class='m-text21 w-size20 w-full-sm'>
            Rp ".number_format($jumlahnya)."
        </span>
        <input type='hidden' value='".$nama."' name='nama' id='nama'>
        <input type='hidden' value='".$email."' name='email' id='email'>
        <input type='hidden' value='".$nohp."' name='nohp' id='nohp'>
        <input type='hidden' value='".$alamatLengkap."' name='al-lengkap' id='al-lengkap'>
        <input type='hidden' value='".$prov[1]."' name='prov' id='prov'>
        <input type='hidden' value='".$kota[1]."' name='kota' id='kota'>
        <input type='hidden' value='".$kecamatan[1]."' name='kec' id='kec'>
        <input type='hidden' value='".$kelurahan."' name='kel' id='kel'>
        <input type='hidden' value='".$kodepos."' name='kodepos' id='kodepos'>
    </div>";
      
    }
}
    // echo "---------------------------------------------------------------------";

    
    
    // echo $data_hasil_ongkir = json_decode($response, true);
    // for ($i=0; $i < count($data_hasil_ongkir['rajaongkir']['results']); $i++) { 
    //     echo "<option value='".$data_hasil_ongkir['rajaongkir']['results'][$i]['city_id']."'>".$data_hasil_ongkir['rajaongkir']['results'][$i]['city_name']."</option>";
    // }
	
?>