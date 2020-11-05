<?php
namespace Midtrans;

require_once dirname(__FILE__) . '/midtrans-php-master/Midtrans.php';
//Set Your server key
//Config::$serverKey = "SB-Mid-server-B9rCGBLI6hncW1hEljR1_CE1";
  Config::$serverKey = "Mid-server-gb6-ae8mcAiCZrk26LdeL-Fb";

// Uncomment for production environment
 Config::$isProduction = true;

// Enable sanitization
Config::$isSanitized = true;

// Enable 3D-Secure
Config::$is3ds = true;

session_start();
include 'koneksi.php';
include 'secure.php';

if (empty($_SESSION["pembelian"]) OR !isset($_SESSION["pembelian"])) {
	echo "<script>alert('Keranjang Kosong, Silahkan Beli Produk Terlebih Dahulu!');</script>";
    echo "<script>location='product';</script>";
}
include 'check_member.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Keranjang Belanja</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<?php
	require 'linkrel.php';
	?>
<!--===============================================================================================-->
</head>
<!-- <style>
	.bg-title-page {
		margin-top: 0px; 
		}
	@media (min-width:992px) {
		.bg-title-page {
			margin-top: -45px;
		}
	}
</style> -->
<body class="animsition">

	<?php include 'menu.php'; ?>

	

	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m mx-auto" style="background-color: #C4AF92;">
		<h2 class="l-text2 t-center" style="color: white;">
			Keranjang Belanja
		</h2>
	</section>

	<!-- Cart -->
	<section class="cart bgwhite p-t-70 p-b-10">
		<div class="container">
			<!-- Cart item -->
			<div class="container-table-cart pos-relative">
				<div class="wrap-table-shopping-cart bgwhite">
					<table class="table-shopping-cart">
						<tr class="table-head">
							<th class="column-1 p-r-20"></th>
							<th class="">Produk</th>
							<th class="column-4">Harga</th>
							
							<th class="column-4">Jumlah</th>
							<th class="column-4">Catatan</th>
							<th class="column-4">Berat</th>
							<th class="column-4">Total</th>
							<th class="column-4">Aksi</th>
						</tr>

						<?php
						$totalHarga = 0;
						$totalBerat = 0;
						foreach ($_SESSION["pembelian"] as $id_produk => $jumlah):
							$ambilPembelian = $koneksi->query("SELECT * FROM produk WHERE id_produk = '$id_produk'");
							$aPembelian = $ambilPembelian->fetch_assoc();
							$subHarga = $aPembelian["harga"] * $jumlah;
							$subBerat = $aPembelian["berat_produk"] * $jumlah;
							if (empty($_SESSION["catatan"][$id_produk]) OR !isset($_SESSION["catatan"][$id_produk])) {
								$data_catatan = "";
							}
							else {
								$data_catatan = $_SESSION['catatan'][$id_produk];
							}
						?>
						<form action="" method="post">
						<tr class="table-row">
							<td class="column-1 p-r-20">
								<div class="cart-img-product b-rad-4 o-f-hidden">
									<img src="images/produk/produk_barang/<?php echo $aPembelian['foto_produk1'] ?>?nocache=<?php echo time(); ?>" alt="IMG-PRODUCT">
								</div>
							</td>
							<td class="column-4"><?php echo $aPembelian['nama_produk']; ?></td>
							<td class="column-4">Rp <?php echo number_format($aPembelian['harga']); ?></td>
							<td class="column-4"><?php echo $jumlah; ?></td>
							<td class="column-4"><?php echo $data_catatan; ?></td>
							<td class="column-4"><?php echo number_format($subBerat); ?> gr</td>
							<td class="column-4">Rp <?php echo number_format($subHarga); ?></td>
							<td class="column-4">
								<div class="p-b-10">
									<button class="btn bg1 s-text1 hov1 w-50" name="buang" value="<?php echo $aPembelian['id_produk']; ?>"><i class="fa fa-trash"></i></button>
								</div>
								<div>
								<button class="btn bg1 s-text1 hov1 w-50" name="u_p" value="<?php echo $aPembelian['id_produk']; ?>"><i class="fa fa-edit"></i></button>
								</div>
							</td>
						</tr>
						</form>
						<?php 
						$totalBerat += $subBerat;
						$totalHarga += $subHarga;
						endforeach; ?>

						<?php

						if (isset($_POST['hapusAll']))
						{
							unset($_SESSION['pembelian']);
							echo "<script>location='product';</script>";
						}

						if (isset($_POST['buang'])) {
							$dataid = $_POST['buang'];
							unset($_SESSION['pembelian'][$dataid]);
							unset($_SESSION['catatan'][$dataid]);
							echo "<script>location='cart';</script>";
						}
						
						if (isset($_POST['u_p'])) {
							$jml_baru = $_POST['jml_produk'];
							$data_id = encrypt_decrypt('encrypt', $_POST['u_p']);
							
							echo "<script>location='product-detail?did=".$data_id."';</script>";
						}

						?>

					</table>
				</div>
			</div>

			<div class="flex-w flex-sb-m p-t-25 p-b-25 bo8 p-l-35 p-r-60 p-lr-15-sm">
				<div class="flex-w flex-m w-full-sm">
				</div>
				<form action="" method="post">
				<div class="size10 trans-0-4 m-t-10 m-b-10">
                    
					<button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" name="hapusAll">
						Kosongkan
					</button>
				</div>
				</form>
			</div>
			</div>
		</div>
    </section>
    
    <section class="p-b-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="bo9 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm">
                        <h5 class="m-text20 p-b-24">
					        Total Keranjang
				        </h5>

                        <div class="flex-w flex-sb-m p-b-12">
                            <span class="s-text18 w-size19 w-full-sm">
                                Total Harga:
                            </span>
                        
                            <span class="m-text21 w-size20 w-full-sm">
                                Rp <?php echo number_format($totalHarga); ?>
                            </span>
                        </div>

                        <div class="flex-w flex-sb-m p-b-12">
                            <span class="s-text18 w-size19 w-full-sm">
                                Total Berat:
                            </span>

                            <span class="m-text21 w-size20 w-full-sm">
                                <?php echo number_format($totalBerat); ?> gr
                            </span>
                        </div>

                        <div class="flex-w flex-sb bo10 p-t-15 p-b-5">
                            <span class="s-text18 w-size19 w-full-sm">
                                Pengiriman:
                            </span>

                            <div class="w-size20 w-full-sm">
                                <p class="s-text8 p-b-23">
                                    Pesanan akan tiba dalam waktu 3-4 hari kerja
                                </p>
                            </div>
                            <span class="s-text18 w-size19 w-full-sm">
                                Catatan:
                            </span>

                            <div class="w-size20 w-full-sm">
                                <p class="s-text8 p-b-23">
                                    Harap untuk mengisi data catatan tiap produk, jika tidak di isi maka kami akan mengirimkan produk tersebut secara random
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="bo9 p-l-40 p-r-40 p-t-30 p-b-38 m-t-30 m-r-0 m-l-auto p-lr-15-sm">
                        <h5 class="m-text20 p-b-5">
                            Data Pengiriman
                        </h5>
                        
                        <?php
                        
                        ?>
                        <form method="post">
                        <div class="size15 trans-0-4">
                            <div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-100 m-t-8 m-b-12 size10">
                                <input class="sizefull h-100 s-text7 p-l-15 p-r-15" type="text" name="nama" id="nama" placeholder="Nama">
                            </div>
                        </div>
                        <div class="size15 trans-0-4">
                            <div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-100 m-t-8 m-b-12 size10">
                                <input class="sizefull h-100 s-text7 p-l-15 p-r-15" type="email" name="email" id="email" placeholder="Email">
                            </div>
                        </div>
                        <div class="size15 trans-0-4">
                            <div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-100 m-t-8 m-b-12 size10">
                                <input class="sizefull h-100 s-text7 p-l-15 p-r-15" type="text" name="nohp" id="nohp" placeholder="No HP">
                            </div>
                        </div>

                    
                        <?php
                        $kota_asal = $koneksi->query("SELECT * FROM kota_asal");
                        $pecah_kota = $kota_asal->fetch_assoc();
                        echo "<input type='hidden' name='asal' id='asal' value=".$pecah_kota['id_kota_asal']."-".$pecah_kota['nama_kota_asal'].">";
                        ?>
                        
                    

                        <div class="size15 trans-0-4">
                            <div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-100 m-t-8 m-b-12">
                                <select class="selection-2" name="provinsi" id='provinsi'>
                                    <?php
                                    $curl = curl_init();
                                
                                    curl_setopt_array($curl, array(
									// CURLOPT_URL => "http://api.rajaongkir.com/starter/province",
									CURLOPT_URL => "https://pro.rajaongkir.com/api/province",
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
                                    //Close Get Data Provinsi
                                    echo "<option>Pilih Provinsi ...</option>";
                                    $data = json_decode($response, true);
                                    for ($i=0; $i < count($data['rajaongkir']['results']); $i++) {
                                        echo "<option value='".$data['rajaongkir']['results'][$i]['province_id']."-".$data['rajaongkir']['results'][$i]['province']."'>".$data['rajaongkir']['results'][$i]['province']."</option>";
                                    };
                                    
                                    ?>
                                </select>
                            </div>
                        </div>

                        <div class="size15 trans-0-4">
                            <div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-100 m-t-8 m-b-12">
                                <select class="selection-2" name="kabupaten" id="kabupaten">
                                    <option>Pilih Kota / Kabupaten</option>
                                </select>
                            </div>
                        </div>
                        <input value="jne" type="hidden" id="kurir" name="kurir">
                        
                        <!-- <div class="size15 trans-0-4">
                            <div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-100 m-t-8 m-b-12 size10">
                                <input class="sizefull h-100 s-text7 p-l-15 p-r-15" type="text" name="kecamatan" id="kecamatan" placeholder="Kecamatan">
                            </div>
						</div> -->
						
						<div class="size15 trans-0-4">
                            <div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-100 m-t-8 m-b-12">
                                <select class="selection-2" name="kecamatan" id="kecamatan">
                                    <option>Pilih Kecamatan</option>
                                </select>
                            </div>
                        </div>

                        <div class="size15 trans-0-4">
                            <div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-100 m-t-8 m-b-12 size10">
                                <input class="sizefull h-100 s-text7 p-l-15 p-r-15" type="text" name="kelurahan" id="kelurahan" placeholder="Kelurahan">
                            </div>
                        </div>

                        <input id="berat" type="hidden" name="berat" value=<?php echo $totalBerat; ?> />

                        <div class="size15 trans-0-4">
                            <div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-100 m-t-8 m-b-12 size10">
                                <input class="sizefull h-100 s-text7 p-l-15 p-r-15" type="text" name="al-lengkap" id="al-lengkap" placeholder="Alamat Lengkap">
                            </div>
                        </div>

                        <div class="size15 trans-0-4">
                            <div class="rs2-select2 rs3-select2 rs4-select2 bo4 of-hidden w-100 m-t-8 m-b-12 size10">
                                <input class="sizefull h-100 s-text7 p-l-15 p-r-15" type="text" name="kodepos" id="kodepos" placeholder="Kodepos">
                            </div>
                        </div>
                        </form>

                        <div class="size15 trans-0-4 m-t-10 mb-12">
                            <button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" id="cek" type="submit" value="Cek">
                                Cek Ongkir
                            </button>
                        </div>
                
                        <?php $jumlahnya=$totalHarga; ?>
                        <form method="post">
                        <div id="ongkir" name="ongkir">
                            <div class="flex-w flex-sb-m p-t-26">
                                <input type="hidden" value="0" name='ongkiraja' id='ongkiraja'>
                                <span class="m-text22 w-size19 w-full-sm">
                                    Ongkir:
                                </span>

                                <span class="m-text21 w-size20 w-full-sm">
                                    Rp 0
                                </span>
                            </div>

                            <div class="flex-w flex-sb-m p-t-26 p-b-30">
                                <input type="hidden" value="<?php echo $jumlahnya; ?>" name='totalHrga' id='totalHrga'>
                                <span class="m-text22 w-size19 w-full-sm">
                                    Total:
                                </span>

                                <span class="m-text21 w-size20 w-full-sm">
                                    Rp <?php echo number_format($jumlahnya); ?>
                                </span>
                            </div>
                        </div>
                        
                        <div class="size15 trans-0-4">
                            <button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" id="pembayaran" name="pembayaran">
                                Lanjut Pembayaran
                            </button>
                            <input id="triger" type="hidden" value="0">
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <div class="container" id="mid">

	</div>
	
	<?php
	if (isset($_POST['pembayaran'])) {
		$id_pesanan = rand();
		$totalBayar = $_SESSION['hakmember'];
		$biayaongkir = $_POST['ongkiraja'];
		$totalHrga = $_POST['totalHrga'];
		$nama = $_POST['nama'];
		$email = $_POST['email'];
		$nohp = $_POST['nohp'];
		$alamatpembeli = $_POST['al-lengkap'];
		$kelurahan = $_POST['kel'];
		$kecamatan = $_POST['kec'];

		$cariKodeOngkir = $koneksi->query("SELECT * FROM lempar ORDER BY id_lempar DESC");
		$cariKode = $cariKodeOngkir->fetch_assoc();
		$dataKode = $cariKode["id_lempar"];
		
		$bln = date("m");
		$thn = date("y");
		$tgl = date("d");
		if (empty($dataKode)) {
			$IDorder = $thn.$bln.$tgl."001";
			$koneksi->query("INSERT INTO lempar (id_lempar) VALUES ('$IDorder')");
		}
		else {
			$nilaiKode = substr($dataKode, 6, 3);
			if ($nilaiKode == "999") {
				$IDorder = $thn.$bln.$tgl."001";
			}
			else {
				$kode = (int)$nilaiKode + 1;
				if (strlen($kode) == 1) {
					$IDorder = $thn.$bln.$tgl."00".$kode;
				}
				elseif (strlen($kode) == 2) {
					$IDorder = $thn.$bln.$tgl."0".$kode;
				}
				else {
					$IDorder = $thn.$bln.$tgl.$kode;
				}
				$koneksi->query("UPDATE lempar SET id_lempar = '$IDorder'");
			}
		}
		// $IDorder = "012000001";

		// Update

		

		$transaction_details = array(
			'order_id' => $IDorder,
			'gross_amount' => $totalHrga, // no decimal allowed for creditcard
		);
		$bayarongkir = array(
			'id' => $IDorder,
			'price' => $biayaongkir,
			'quantity' => 1,
			'name' => "ongkir"
		);
		$item_details = array();
		$totalPembelian = 0;
		$totalBonus = 0;
		foreach ($_SESSION["pembelian"] as $id_produk => $jumlah):
			$ambilPembelian = $koneksi->query("SELECT * FROM produk WHERE id_produk = '$id_produk'");
			$aPembelian = $ambilPembelian->fetch_assoc();
			$subHarga = $aPembelian["harga"] * $jumlah;
			$subBerat = $aPembelian["berat_produk"] * $jumlah;
			$subBonus = $aPembelian["reward_member"] * $jumlah;
			if (empty($_SESSION["catatan"][$id_produk]) OR !isset($_SESSION["catatan"][$id_produk])) {
				$data_catatan = "";
			}
			else {
				$data_catatan = $_SESSION['catatan'][$id_produk];
			}
			$dataArray = array(
				'id' => $id_produk,
				'price' => $aPembelian['harga'],
				'quantity' => $jumlah,
				'name' => $aPembelian['nama_produk']
			);
			array_push($item_details, $dataArray);
			$totalPembelian += $subHarga;
			$totalBonus += $subBonus;
		endforeach;
		array_push($item_details, $bayarongkir);

		if (empty($_POST['nama']) or empty($_POST['email']) or empty($_POST['nohp']) or empty($_POST['al-lengkap']) or empty($_POST['kel']) or empty($_POST['kec'])) {
			echo "<script>alert('Seluruh Data Pengiriman harus diisi')</script>";
		}
		
		else {
			if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
				$namapembeli = filter_var($nama, FILTER_SANITIZE_STRING);
				$emailpembeli = $_POST['email'];
				$nohppembeli = $_POST['nohp'];
				$alamatpembeli = $_POST['al-lengkap'];
				$id_mem = $_SESSION['hakmember'];
				$idProvinsi = $_POST['prov'];
				$idKota = $_POST['kota'];
				$idKodepos = $_POST['kodepos'];
				$statusPembayaran = "pending";
				$statusPengiriman = "pending";
				$jenis = "barang";
				$tgl_pesan = date("Y-m-d");

				$arrayDataSemua = array($IDorder, $id_mem, $totalPembelian, $biayaongkir, $totalHrga,$totalBonus, $tgl_pesan, $namapembeli, $emailpembeli, $idProvinsi, $idKota, $alamatpembeli, $idKodepos, $nohppembeli, $statusPembayaran, $statusPengiriman, $kecamatan, $kelurahan, $jenis);

				$_SESSION['semuadata'] = $arrayDataSemua;
				// var_dump($_SESSION['semuadata']);

				$shipping_address = array(
					'address'       => $alamatpembeli,
					'postal_code'   => $idKodepos,
					'phone'         => $nohppembeli,
					'country_code'  => 'IDN'
				);
				$customer_details = array(
					'first_name'    => $namapembeli,
					'email'         => $emailpembeli,
					'phone'         => $nohppembeli,
					'shipping_address' => $shipping_address
				);
				// $enable_payments = array();
				$transaction = array(
				// 	'enabled_payments' => $enable_payments,
					'transaction_details' => $transaction_details,
					'customer_details' => $customer_details,
					'item_details' => $item_details,
				);

				$snapToken = Snap::getSnapToken($transaction);
				// echo "<script src='https://app.sandbox.midtrans.com/snap/snap.js' data-client-key='SB-Mid-client-jAH_IcfvIz2YdOHE'></script>";
                echo "<script src='https://app.midtrans.com/snap/snap.js' data-client-key='Mid-client-suwwVbkA4Rjbzy1X'></script>";
				echo "<script>
				snap.pay('".$snapToken."', {
					onSuccess: function(result){	
					},
					onPending: function(result){
						location='insert_notif';
					},
					onError: function(result){
						alert('Error, Silahkan Checkout Ulang');
						location='cart';
					}
				});
				</script>";
			}
			else {
			echo "<script>alert('Email tidak valid/Nama tidak boleh menggunakan simbol')</script>";
			}
		}
	}
	?>
	

	<!-- Footer -->
	<?php 
	include 'footer.php';
	
	?>



	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- Container Selection -->
	<div id="dropDownSelect1"></div>
	<div id="dropDownSelect2"></div>



<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/select2/select2.min.js"></script>
	<script type="text/javascript">
		$(".selection-1").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});

		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect2')
		});
	</script>
<!--===============================================================================================-->
    <script src="js/main.js"></script>
<!--===============================================================================================-->
<!-- Untuk Ongkir Use Raja Ongkir -->
    <script type="text/javascript">
 
	$(document).ready(function(){
		$('#provinsi').change(function(){
 
			//Mengambil value dari option select provinsi kemudian parameternya dikirim menggunakan ajax 
			var prov = $('#provinsi').val();
 
      		$.ajax({
            	type : 'GET',
           		url : 'cek_kabupaten',
            	data :  'prov_id=' + prov,
					success: function (data) {
 
					//jika data berhasil didapatkan, tampilkan ke dalam option select kabupaten
					$("#kabupaten").html(data);
				}
          	});
		});

		$('#kabupaten').change(function(){
 
			//Mengambil value dari option select provinsi kemudian parameternya dikirim menggunakan ajax 
			var kab = $('#kabupaten').val();

			$.ajax({
				type : 'GET',
				url : 'cek_kecamatan',
				data :  'kab_id=' + kab,
					success: function (data) {

					//jika data berhasil didapatkan, tampilkan ke dalam option select kabupaten
					$("#kecamatan").html(data);
				}
			});
		});
 
		$("#cek").click(function(){
			//Mengambil value dari option select provinsi asal, kabupaten, kurir, berat kemudian parameternya dikirim menggunakan ajax 
			var asal = $('#asal').val();
			var kab = $('#kabupaten').val();
			var kurir = $('#kurir').val();
			var berat = $('#berat').val();
			var nama = $('#nama').val();
			var email = $('#email').val();
			var nohp = $('#nohp').val();
			var alamatLengkap = $('#al-lengkap').val();
			var prov = $('#provinsi').val();
			var kota = $('#kabupaten').val();
			var kecamatan = $('#kecamatan').val();
			var kelurahan = $('#kelurahan').val();
			var kodepos = $('#kodepos').val();
 
      		$.ajax({
            	type : 'POST',
           		url : 'cek_ongkir',
            	data :  {'kab_id' : kab, 'kurir' : kurir, 'asal' : asal, 'berat' : berat, 'nama' : nama, 'email' : email, 'nohp' : nohp, 'al-lengkap' : alamatLengkap, 'provinsi' : prov, 'kabupaten' : kota, 'kecamatan' : kecamatan, 'kelurahan' : kelurahan, 'kodepos' : kodepos},
					success: function (data) {
 
					//jika data berhasil didapatkan, tampilkan ke dalam element div ongkir
					$("#ongkir").html(data);
				}
          	});
		});
		// $("#cek").click(function(){
		// 	//Mengambil value dari option select provinsi asal, kabupaten, kurir, berat kemudian parameternya dikirim menggunakan ajax 
		// 	var asal = $('#asal').val();
		// 	var kab = $('#kabupaten').val();
		// 	var kurir = $('#kurir').val();
		// 	var berat = $('#berat').val();
 
      	// 	$.ajax({
        //     	type : 'POST',
        //    		url : 'hasil_ongkir',
        //     	data :  {'kab_id' : kab, 'kurir' : kurir, 'asal' : asal, 'berat' : berat},
		// 			success: function (data) {
 
		// 			//jika data berhasil didapatkan, tampilkan ke dalam element div ongkir
		// 			$("#ongkiraja").text(data);
		// 		}
        //   	});
		// });

		// $('#ongkir').change(function(){
 
		//Mengambil value dari option select provinsi kemudian parameternya dikirim menggunakan ajax 
		// var totalbelanja = $('#ongkir').val();

		// 	$.ajax({
		// 		type : 'GET',
		// 		url : 'midtrans',
		// 		data :  'total_belanja=' + totalbelanja,
		// 			success: function (data) {

		// 			$("#mid").html(data);
		// 		}
		// 	});
		// });
	});
</script>

</body>
</html>