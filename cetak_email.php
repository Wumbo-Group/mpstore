<?php
session_start();
include 'koneksi.php';

if (isset($_GET['ki'])) {
	$kodeInvoice = $_GET['ki'];
	$ambil = $koneksi->query("SELECT * FROM order WHERE id_order = '$kodeInvoice'");
	$pecah = $ambil->fetch_assoc();
	$ambilDetail = $koneksi->query("SELECT * FROM order_detail WHERE id_order = '$kodeInvoice'");
	while ($pecahDetail = $ambilDetail->fetch_assoc()) {
		
	}
}

if (empty($_SESSION["pembelian"]) OR !isset($_SESSION["pembelian"])) {
	echo "<script>alert('Keranjang Kosong, Silahkan Beli Produk Terlebih Dahulu!');</script>";
    echo "<script>location='product';</script>";
}



?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Cart</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/themify/themify-icons.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body class="animsition">

	<!-- Title Page -->
	<div class="container p-t-70">
		<div class="col-lg-12">
			<div class="row">
				<div class="col-lg-6">
					<section class=" p-t-10 p-b-10 flex-col-c-m" style="background-color: #C4AF92;">
						<h2 class="l-text2 t-center">
						INVOICE #123
						</h2>
			    	</section>
				</div>
				<div class="col-lg-6">
					<section class="p-t-20 p-b-20 flex-col-c-6 t-right" style="background-color: white;">
						<img src="images/icons/logo_mp.png" alt="" style="width:80px;">
    				</section>
				</div>
			</div>
		</div>
	</div>
	
    <section class=" p-t-20 p-b-10 flex-col-c-m" style="background-color: white;">
		<div class="container">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-9">
                        <div class="row">
                            <div class="col-lg-1" style="font-size:13px;">
                                Nama<br>
                                Alamat<br>
                                Email<br>
                                No. hp<br>
                                Tanggal<br>
                            </div>
                            <div class="col-lg-7" style="font-size:13px;">
                                : Cahyo Bayu Sahid Pratomo<br>
                                : Baron Kunden RT03/02 Panularan Laweyan Surakarta<br>
                                : sahid_pratomo@yahoo.com<br>
                                : 089507229772<br>
                                : 7 Januari 2020<br>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 t-right" style="font-size:13px;">
                        mpstore<br>
                        alamat bla bla bla<br>
                        no hp<br>
                        mpstore.net@gmail.com<br>
                    </div>
                </div>
            </div>
        </div>
    </section>

	<!-- Cart -->
	<section class="cart bgwhite p-t-50 p-b-100">
		<div class="container">
			<!-- Cart item -->
			<div class="">
				<div class="">
					<table class="table" style="font-size:13px;">
						<tr class="table-head">
							<th class="column-1 p-r-20" ></th>
							<th class="column-4">Produk</th>
							<th class="column-3">Harga</th>
							
							<th class="column-4">Jumlah</th>
							<th class="column-4 p-r-70">Catatan</th>
							<th class="column-4">Berat</th>
							<th class="column-4">Total</th>
						</tr>

						<?php
						// var_dump($_SESSION['pembelian']);
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
									<img src="images/produk/produk_barang/<?php echo $aPembelian['foto_produk1'] ?>.jpg" alt="IMG-PRODUCT">
								</div>
							</td>
							<td class="column-4"><?php echo $aPembelian['nama_produk']; ?></td>
							<td class="column-3">Rp <?php echo number_format($aPembelian['harga']); ?></td>
							<td class="column-4">
								<?php echo $jumlah; ?>
							</td>
							<td class="column-4 p-r-70">
                                <?php echo $data_catatan; ?>
							</td>
							<td class="column-4"><?php echo number_format($subBerat); ?> gr</td>
							<td class="column-4">Rp <?php echo number_format($subHarga); ?></td>
							
						</tr>
						</form>
						<?php 
						$totalBerat += $subBerat;
						$totalHarga += $subHarga;
						endforeach; ?>

						<?php
						if (isset($_POST['u_p'])) {
							$jml_baru = $_POST['jml_produk'];
							$data_id = $_POST['u_p'];
							$_SESSION['pembelian'][$data_id] = $jml_baru;
							var_dump($_SESSION['pembelian']);
							echo "<script>location='cart';</script>";
						}

						if (isset($_POST['hapusAll']))
						{
							unset($_SESSION['pembelian']);
							echo "<script>location='product';</script>";
						}
                        ?>
                        <tr class="table-row">
							<td class="column-1 p-r-20">
								<div class="cart-img-product b-rad-4 o-f-hidden">
								</div>
							</td>
							<td class="column-4"></td>
							<td class="column-3"></td>
							<td class="column-4"></td>
							<th class="column-4 p-r-70">
                                Sub Total
							</th>
							<th class="column-4"><?php echo number_format($totalBerat); ?> gr</th>
							<th class="column-4">Rp <?php echo number_format($totalHarga); ?></th>
                        </tr>
                        <tr class="table-row">
							<td class="column-1 p-r-20">
								<div class="cart-img-product b-rad-4 o-f-hidden">
								</div>
							</td>
							<td class="column-4"></td>
							<td class="column-3"></td>
							<td class="column-4"></td>
							<th class="column-4 p-r-70">
                                Ongkos Kirim
							</th>
							<th class="column-4"></th>
							<th class="column-4">Rp 34.000</th>
                        </tr>
                        <tr class="table-row">
							<td class="column-1 p-r-20">
								<div class="cart-img-product b-rad-4 o-f-hidden">
								</div>
							</td>
							<td class="column-4"></td>
							<td class="column-3"></td>
							<td class="column-4"></td>
							<th class="column-4 p-r-70">
                                Total Pembayaran
							</th>
							<th class="column-4"></th>
							<th class="column-4">Rp <?php echo number_format($totalHarga); ?></th>
						</tr>
					</table>
				</div>
            </div>

            

			
		</div>
	</section>



	<!-- Footer -->
	<footer class="bg6">
        <div class="t-center s-text8 p-b-20 p-t-20">
            Invoice was created on a computer and is valid without the signature and seal.
        </div>
	</footer>



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
 
		$("#cek").click(function(){
			//Mengambil value dari option select provinsi asal, kabupaten, kurir, berat kemudian parameternya dikirim menggunakan ajax 
			var asal = $('#asal').val();
			var kab = $('#kabupaten').val();
			var kurir = $('#kurir').val();
			var berat = $('#berat').val();
 
      		$.ajax({
            	type : 'POST',
           		url : 'cek_ongkir',
            	data :  {'kab_id' : kab, 'kurir' : kurir, 'asal' : asal, 'berat' : berat},
					success: function (data) {
 
					//jika data berhasil didapatkan, tampilkan ke dalam element div ongkir
					$("#ongkir").text(data);
				}
          	});
		});
	});
</script>

</body>
</html>
