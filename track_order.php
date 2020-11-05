<?php
session_start();
require 'koneksi.php';
include 'secure.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Lacak Pesanan</title>
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
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-color:#C4AF92;">
		<h2 class="l-text2 t-center">
			Lacak Pesanan
		</h2>
	</section>

	<!-- content page -->
	
	<section class="bgwhite p-t-66 p-b-66">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<p>Masukkan No Pesanan / Invoice</p>
					<div class="size16 bo4 m-t-20 m-r-10">
						<input class="sizefull s-text7 p-l-22 p-r-22" type="text" id="idTrack" name="idTrack" placeholder="Contoh: 032172" value="">
					</div>
					<div class="size10 m-t-20 t-center">
						<button class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" name="carino" id="carino">
							Cari
						</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	

	<div class="container m-b-50" id="hasil_track" name="hasil_track"  style="font-size:13px;">

	</div>

	<!-- Footer -->
	<?php
	include 'footer.php';
	?>

	<!-- Konfirmasi Pembayaran -->
	<?php 
	if (isset($_POST['konfirmasi'])) {
		$id = $_POST['konfirm'];
		$spem = $_POST['spem'];
		if ($spem == 'settlement') {
			$koneksi->query("UPDATE `order` SET status_pengiriman = 'Sudah Sampai' WHERE id_order = '$id'");
		}
		else {
			echo "<script>alert('Silahkan Lakukan Pembayaran terlebih Dahulu');</script>";
			echo "<script>location='track_order';</script>";
		}
	}
	?>


	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true" ></i>
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

		$(document).ready(function(){
			$('#carino').click(function(){
				var idtrack = $('#idTrack').val();
				$.ajax({
					type : 'GET',
					url : 'tracking',
					data :  'idtrack=' + idtrack,
						success: function (data) {
						$("#hasil_track").html(data);
					}
				});
			});

			$('#idTrack').change(function(){
				var idtrack = $('#idTrack').val();
				$.ajax({
					type : 'GET',
					url : 'tracking',
					data :  'idtrack=' + idtrack,
						success: function (data) {
						$("#hasil_track").html(data);
					}
				});
			});
		});
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
