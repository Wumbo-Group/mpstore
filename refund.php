<?php
session_start();
require 'koneksi.php';
include 'secure.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Pengembalian Barang</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<?php
	require 'linkrel.php';
	?>
<!--===============================================================================================-->
</head>
<body class="animsition">
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

	<?php include 'menu.php'; ?>

	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-color: #C4AF92;">
		<h2 class="l-text2 t-center">
			Pengembalian Barang
		</h2>
	</section>

	<!-- content page -->
	<section class="bgwhite p-t-66 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 col-md-6 p-b-30">
					<div class="p-r-20 p-r-0-lg">
					    <h4 class="m-text26 p-b-36 p-t-15">
						Kebijakan Pengembalian Barang
						</h4>
						<div class="contact-map size21">
                        <p>Jika Anda tidak puas dengan pembelian, Anda dapat mengembalikan produk kepada kami dalam waktu tiga (3) hari penerimaan. Produk tidak boleh digunakan, usang, di cuci, rusak dengan tag harga yang tidak di hapus dan label, faktur asli dengan produk harus dalam kemasan merek asli. Kebijakan pengembalian ini hanya berlaku untuk produk cacat. <br/><br/>
Pastikan bahwa produk yang dikirimkan kepada kami dalam kondisi yang sama seperti ketika Anda menerimanya. Dalam hal ini, jika barang tersebut dikembalikan kepada kami dalam kondisi yang tidak dapat diterima, kami berhak untuk tidak menerima pengembalian dan mengirimkan produk kembali kepada Anda. <br/><br/>
* Harap dicatat bahwa untuk semua proses pengembalian, semua biaya pengiriman yang berkaitan dengan pengiriman produk kembali ke gudang kami akan sepenuhnya ditanggung oleh pelanggan yang meminta pengembalian.
<br/><br/>
Anda dapat memproses pengembalian dana melalui layanan pengiriman yang Anda pilih. Harap pastikan produk yang Anda kembalikan bersama dengan slip pengembalian, kami terima dalam waktu lima (5) hari setelah Anda menyerahkannya ke kantor pos/ jasa pengiriman lain. Refund akan dikeluarkan segera setelah kami menerima barang Anda, sesuai dengan metode pembayaran yang Anda pilih pada slip pengembalian Anda. Untuk informasi lebih lanjut, silakan hubungi CS kami.<br/><br/>
Kebijakan pengembalian kami:<br/>
1.  Semua pengembalian harus sesuai dengan pedoman kebijakan pengembalian kami dan harus disertai dengan faktur asli, label harga.<br/>
2.  Hanya penggantian produk yang sama akan diberikan jika memenuhi persyaratan di atas dan tergantung pada ketersediaan produk di gudang kami.<br/>
3.  Pengembalian barang/ pengembalian dana hanya dapat dilakukan untuk barang yang dibeli melalui <b>mpstore.net</b>.<br/><br/>
Tunggu dalam 14 hari kerja kami akan memproses pengembalian dana Anda.<br/>
1.  Pembelian dengan kartu kredit/debit: setiap kredit akan dikembalikan ke kartu yang digunakan.<br/>
2.	Pembelian dengan transfer: dana akan dikembalikan ke rekening  Anda dengan jangka waktu yang disampaikan di atas.<br/>

</p>

                        </div>
					</div>
				</div>	

				<div class="col-lg-5 col-md-6 p-b-30">
					<form class="leave-comment" method="post">
					    <h4 class="m-text26 p-b-36 p-t-15">
						Produk yang Rusak
						</h4>
						<p class ="p-b-36">
						Semua Deskripsi Produk, informasi dan materi yang diposting di situs ini disediakan apa adanya dan tanpa jaminan secara langsung, atau tersirat atau makna tersembunyi.<br/>
Produk seperti yang terlihat di situs mungkin sedikit berbeda dari produk aktual yang Anda terima.<br/><br/>

Jika barang yang Anda terima rusak, silakan hubungi CS kami dan sediakan nomor referensi pesanan, nama dan alamat, rincian produk dan alasan pengembalian, dan apakah Anda memerlukan pengembalian atau penggantian.<br/>
Setelah menerima produk, kami akan memeriksa dan kami akan memberitahu Anda tentang hak Anda untuk penggantian atau pengembalian dana (jika ada) melalui e-mail sesegera mungkin.
.</p>
						<h4 class="m-text26 p-b-36 p-t-15">
						Pengembalian Barang
						</h4>
						<p class ="p-b-36">
						Apabila pesanan yang anda terima tidak sesuai dengan pesanan anda, silahkan hubungi customer service kami melalui WA atau lengkapi data dibawah ini.</p>

						<div class="bo4 of-hidden size15 m-b-20">
							<input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="name" placeholder="Nama Lengkap">
						</div>

						<div class="bo4 of-hidden size15 m-b-20">
							<input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="phone-number" placeholder="No HP">
						</div>

						<div class="bo4 of-hidden size15 m-b-20">
							<input class="sizefull s-text7 p-l-22 p-r-22" type="email" name="email" placeholder="Email">
						</div>

                        <div class="bo4 of-hidden size15 m-b-20">
							<input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="nopesanan" placeholder="Nomer Pesanan Anda">
						</div>

						<textarea class="dis-block s-text7 size20 bo4 p-l-22 p-r-22 p-t-13 m-b-20" name="message" placeholder="Detail Pesan"></textarea>

						<div class="w-size25">
							<button class="flex-c-m size2 bg1 bo-rad-23 hov1 m-text3 trans-0-4" name="kirim">
								Kirim
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>


	<?php
	include 'footer.php';

	if (isset($_POST['kirim'])) {
		if (empty($_POST['name']) or empty($_POST['phone-number']) or empty($_POST['email']) or empty($_POST['nopesanan']) or empty($_POST['message'])) {
			echo "<script>alert('Lengkapi Seluruh Data')</script>";
			echo "<script>location='contact';</script>";
		}
		else {
			ini_set('display_errors', 1 );
			error_reporting( E_ALL );
			$from = $_POST['email'];
			$to = "customerservice@mpstore.net";
			$subject = "Refund Barang";
			$message = "Pesanan Dengan No Pesanan".$_POST['nopesanan']."\n Atas Nama : ".$_POST['name']."\n".$_POST['message'];
			$headers = "From:" . $from;
			mail($to,$subject,$message, $headers);
		}
	}
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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="js/map-custom.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
