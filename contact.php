<?php
session_start();
require 'koneksi.php';
include 'secure.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Kontak</title>
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
	<!-- <section class="bg-title-page p-t-40 p-b-50 flex-col-c-m" style="background-color: #C4AF92;">
		<h2 class="l-text2 t-center">
			Kontak Kami
		</h2>
	</section> -->

	<!-- content page -->
	<section class="bgwhite p-t-66 p-b-60">
		<div class="container">
			<div class="row">
				<div class="col-md-6 p-b-30">
					<div class="p-r-20 p-r-0-lg">
						<div class="contact-map size21">
						    <!-- id="google_map" data-map-x="-6.3778389" data-map-y="106.9556493" data-pin="images/icons/icon-position-map.png" data-scrollwhell="0" data-draggable="1" -->
						    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.0988343133054!2d106.95786160043806!3d-6.381242828424941!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e699480a95973b1%3A0xc7d934aa2c5faf9b!2sJl.%20Taman%20Den%20Haag%20Blok%20P4%20No.2%2C%20Nagrak%2C%20Kec.%20Gn.%20Putri%2C%20Bogor%2C%20Jawa%20Barat%2016967!5e0!3m2!1sen!2sid!4v1583505573991!5m2!1sen!2sid" width="100%" height="600px" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
						</div>
					</div>
				</div>	

				<div class="col-md-6 p-b-30">
					<form class="leave-comment" method="post">
						<h4 class="m-text26 p-b-36 p-t-15">
						Kontak Kami
						</h4>
						<p class ="p-b-36">Silakan hubungi kami melalui alamat dan info berikut.<br>
						Anda juga dapat mengirimkan pesan melalui form dibawah ini, Insya Alloh kami membalas setiap pesan yang masuk.</p>

						<div class="bo4 of-hidden size15 m-b-20">
							<input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="name" placeholder="Nama Lengkap">
						</div>

						<div class="bo4 of-hidden size15 m-b-20">
							<input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="phone-number" placeholder="No Hp">
						</div>

						<div class="bo4 of-hidden size15 m-b-20">
							<input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="email" placeholder="Email">
						</div>

						<textarea class="dis-block s-text7 size20 bo4 p-l-22 p-r-22 p-t-13 m-b-20" name="message" placeholder="Pesan"></textarea>

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
		if (empty($_POST['name']) or empty($_POST['phone-number']) or empty($_POST['email']) or empty($_POST['message'])) {
			echo "<script>alert('Lengkapi Seluruh Data')</script>";
			echo "<script>location='contact';</script>";
		}
		else {
			ini_set('display_errors', 1 );
			error_reporting( E_ALL );
			$from = $_POST['email'];
			$to = "mpstore.net@gmail.com";
			$subject = "Pesan Pengunjung";
			$message = $_POST['name']."\n".$_POST['message'];
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
