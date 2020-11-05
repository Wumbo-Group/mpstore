<?php
session_start();
require 'koneksi.php';
$data_jum = $koneksi->query("SELECT * FROM jumbotron");
$kategori = $koneksi->query("SELECT * FROM kategori");
$best_seller = $koneksi->query("SELECT * FROM produk WHERE best_seller = 'ya' AND stok > 0");
include 'check_member.php';
include 'secure.php';

for ($i=1; $i<=5; $i++) {
	$banner_k[$i] = $koneksi->query("SELECT * FROM banner_kategori WHERE id_bk = $i");
	$b_k[$i] = $banner_k[$i]->fetch_assoc();
}

$ecbk1 = encrypt_decrypt('encrypt', $b_k[1]['id_kategori']);
$ecbk2 = encrypt_decrypt('encrypt', $b_k[2]['id_kategori']);
$ecbk3 = encrypt_decrypt('encrypt', $b_k[3]['id_kategori']);
$ecbk4 = encrypt_decrypt('encrypt', $b_k[4]['id_kategori']);
$ecbk5 = encrypt_decrypt('encrypt', $b_k[5]['id_kategori']);

$b2landing = $koneksi->query("SELECT * FROM banner2landing");
$b2l = $b2landing->fetch_assoc();
// $b2lpro = $b2l['id_produk'];
// $dapatStok = $koneksi->query("SELECT * FROM produk WHERE id_produk = '$b2lpro'");
// $pecahStok = $dapatStok->fetch_assoc();
// if ($pecahStok['stok'] > 0){
// 	$linkDaftar = "mpadmin/pendaftaran?so=".$b2lpro;
// }
// else {
// 	echo "<script>alert('Maaf Pendaftaran Ditutup');</script>";
// }

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Beranda</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<?php
	require 'linkrel.php';
	?>
<!--===============================================================================================-->
</head>
<body class="animsition">

	<?php include 'menu.php' ?>

	<!-- Slide Jumbotron -->
	<section class="slide1">
		<div class="wrap-slick1">
			<div class="slick1">

				<?php 
				while ($jumbo = $data_jum->fetch_assoc()) { 
					$id_enc = encrypt_decrypt('encrypt', $jumbo['id_produk']);	
				?>

				<div class="item-slick1 item1-slick1" style="background-image: url(images/produk/jumbotron/<?php echo $jumbo['foto_jum']?>?nocache=<?php echo time(); ?>);">
					<div class="container wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span class="caption1-slide1 m-text1 t-center animated visible-false m-b-15" data-appear="fadeInDown" style="text-shadow: 0px 0px 8px black;">
							<?php echo $jumbo['teks1_jum']?>
						</span>

						<h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-37" data-appear="fadeInUp" style="text-shadow: 0px 0px 8px black;">
							<?php echo $jumbo['teks2_jum']?>
						</h2>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="zoomIn">
							<a href="product-detail?did=<?php echo $id_enc ?>" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Daftar
							</a>
						</div>
					</div>
				</div>

				<?php } ?>

			</div>
		</div>
	</section>
	<!-- Close Slide Jumbotron -->


	<!-- Banner Kategori -->
<section style="background: rgb(249,239,178);
background: linear-gradient(180deg, rgba(249,239,178,1) 0%, rgba(227,198,118,1) 50%, rgba(195,146,70,1) 100%);">
	<section class="banner p-t-40 p-b-40">
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
					<div class="hov-img-zoom pos-relative m-b-30">
						<img src="images/produk/banner_kategori/<?php echo $b_k[1]['foto_bk']; ?>?nocache=<?php echo time(); ?>" class="" alt="IMG-BENNER">
						<div class="block1-wrapbtn w-size2">
						
							<a href="product?ct=<?php echo $ecbk1 ?>" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								<?php echo $b_k[1]['tombol_bk']; ?>
							</a>
						</div>
					</div>

					<div class="hov-img-zoom pos-relative m-b-30">
						<img src="images/produk/banner_kategori/<?php echo $b_k[2]['foto_bk']; ?>?nocache=<?php echo time(); ?>" class="" alt="IMG-BENNER">
						<div class="block1-wrapbtn w-size2">
							<a href="product?ct=<?php echo $ecbk2 ?>" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								<?php echo $b_k[2]['tombol_bk']; ?>
							</a>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
					<div class="hov-img-zoom pos-relative m-b-30">
						<img src="images/produk/banner_kategori/<?php echo $b_k[3]['foto_bk']; ?>?nocache=<?php echo time(); ?>" class="" alt="IMG-BENNER">

						<div class="block1-wrapbtn w-size2">
							<a href="product?ct=<?php echo $ecbk3 ?>" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								<?php echo $b_k[3]['tombol_bk']; ?>
							</a>
						</div>
					</div>

					<div class="hov-img-zoom pos-relative m-b-30">
						<img src="images/produk/banner_kategori/<?php echo $b_k[4]['foto_bk']; ?>?nocache=<?php echo time(); ?>" alt="IMG-BENNER">

						<div class="block1-wrapbtn w-size2">
							<a href="product?ct=<?php echo $ecbk4 ?>" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								<?php echo $b_k[4]['tombol_bk']; ?>
							</a>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
					<div class="hov-img-zoom pos-relative m-b-30">
						<img src="images/produk/banner_kategori/<?php echo $b_k[5]['foto_bk']; ?>?nocache=<?php echo time(); ?>" alt="IMG-BENNER">

						<div class="block1-wrapbtn w-size2">
							<a href="product?ct=<?php echo $ecbk5 ?>" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								<?php echo $b_k[5]['tombol_bk']; ?>
							</a>
						</div>
					</div>

					<div class=" wrap-pic-w pos-relative m-b-30">
						<img src="images/icons/bg-01.jpg" class="" alt="IMG">

						<div class="block2-content sizefull ab-t-l flex-col-c-m">
							<h4 class="m-text4 t-center w-size4 p-b-8">
								<?php echo $b2l['judul_teks']; ?>
								
							</h4>

							<p class="t-center w-size4">
								<?php echo $b2l['isi_teks']; ?>
							</p>
							

							<div class="w-size2 p-t-25">
								<a href="mpadmin/pendaftaran?so=<?php echo $b2l['id_produk'] ?>" class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4">
									Daftar
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Close Banner Kategori -->

	<!-- Best Seller -->
	<section class="newproduct bgwhite p-t-45 p-b-105">
		<div class="container">
			<div class="sec-title p-b-60">
				<h3 class="m-text5 t-center">
					Best Seller
				</h3>
			</div>

			<div class="wrap-slick2">
				<div class="slick2">

					<?php
					while ($bs = $best_seller->fetch_assoc()) {
						$enbs = encrypt_decrypt('encrypt', $bs['id_produk']);		
					?>

					<div class="item-slick2 p-l-15 p-r-15">
						<div class="block2">
							<div class="block2-img wrap-pic-w of-hidden pos-relative">
								<img src="images/produk/produk_barang/<?php echo $bs['foto_produk1'] ?>?nocache=<?php echo time(); ?>" class="" alt="IMG-PRODUCT">

								<div class="block2-overlay trans-0-4">
									<!-- <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
										<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
										<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
									</a> -->
									<form method="post">
									<div class="block2-btn-addcart w-size1 trans-0-4">
									<input type="hidden" name="stoknya" value="<?php echo $bs['stok']; ?>">
										<!--<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4" value="<?php echo $bs['id_produk']; ?>" name="produk_id">-->
										<!--	Beli-->
										<!--</button>-->
										
										<a href="product-detail?did=<?php echo $enbs; ?>" class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4" name="tmbh_nama_produk">
            								LANJUT
    									</a>
									</div>
									</form>
								</div>
							</div>

							<div class="block2-txt p-t-20">
								<a href="product-detail?did=<?php echo $enbs ?>" class="block2-name dis-block s-text3 p-b-5">
									<?php echo $bs['nama_produk'] ?>
								</a>

								<span class="block2-price m-text6 p-r-5">
									Rp <?php echo number_format($bs['harga'],0,',','.') ?>
								</span>
							</div>
						</div>
					</div>

					<?php } ?>
	
				</div>
			</div>
		</div>
	</section>
	<!-- Close Best Seller -->

	<!-- Banner2 -->
	<section class="banner2 p-t-55 p-b-55" >
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-md-8 col-lg-6 m-l-r-auto p-t-15 p-b-15">
					<div class="blockak1 pos-relative">
						<img src="images/produk/banner_kategori/<?php echo $b2l['foto_b2']; ?>?nocache=<?php echo time(); ?>" alt="IMG-BANNER" class="blockak1">
					</div>
				</div>

				<div class="col-sm-10 col-md-8 col-lg-6 m-l-r-auto p-t-15 p-b-15">
					<div class="blockak1 pos-relative" style="background-color:#FCEFE0;">

						<div class="block2-content sizefull ab-t-l flex-col-c-m">
							<h4 class="m-text4 t-center w-size4 p-b-8" style="">
								<?php echo $b2l['judul_teks']; ?>
							</h4>

							<p class="t-center w-size4" style="">
								<?php echo $b2l['isi_teks']; ?>
							</p>

							<div class="w-size2 p-t-25">
								<a href="mpadmin/pendaftaran?so=<?php echo $b2l['id_produk'] ?>" class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4">
									<?php echo $b2l['button_teks']; ?>
								</a>
							</div>
						</div>
					</div>
				</div>

				
			</div>
		</div>
	</section>

	<?php // include 'blog_ig.php'; ?>

	<!-- Shipping -->
	<section class="shipping bgwhite p-t-62 p-b-46">
		<div class="flex-w p-l-15 p-r-15">
			<div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 respon1">
				<!--<h4 class="m-text12 t-center">-->
				<!--	Pembayaran Midtrans-->
				<!--</h4>-->

				<!--<a href="#" class="s-text11 t-center">-->
				<!--	Transaksi Aman, Cepat dan Terpercaya-->
				<!--</a>-->
			</div>

			<div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 bo2 respon2">
				<h4 class="m-text12 t-center">
					Partner :
				</h4>

				<span class="s-text11 t-center">
					...
				</span>
			</div>

			<div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 respon1">
				<!--<h4 class="m-text12 t-center">-->
				<!--	Operasional Toko-->
				<!--</h4>-->

				<!--<span class="s-text11 t-center">-->
				<!--	Toko buka hari Senin hingga Minggu-->
				<!--</span>-->
			</div>
		</div>
	</section>


	<!-- Footer -->
	<?php
	include 'footer.php';
	include 'beli_produk.php';
	?>



	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- Container Selection1 -->
	<div id="dropDownSelect1"></div>
</section>


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
	</script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/lightbox2/js/lightbox.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/sweetalert/sweetalert.min.js"></script>
	<script type="text/javascript">
		// $('.block2-btn-addcart').each(function(){
			
		// 	var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			
		// 	$(this).on('click', function(){
		// 		swal(nameProduct, "is added to cart !", "success");

		// 			// location = 'beli_produk.php';

				
		// 	});
		// });

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");
			});
		});
	</script>

<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
