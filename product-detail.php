<?php

session_start();
require 'koneksi.php';
include 'secure.php';
include 'check_member.php';


if (isset($_GET['mem'])){
	$lmem = $_GET['mem'];
	$linkProdukMem = 'product?mem='.$lmem.'&';
	$linkCartMem = 'cart?mem='.$lmem.'&';
	$linkDetailMem = 'product-detail?mem='.$lmem.'&';
}
else {
	$linkProdukMem = "product?";
	$linkCartMem = "cart?";
	$linkDetailMem = "product-detail?";
}

if (isset($_GET['did'])){
	$linkdtl = encrypt_decrypt('decrypt', $_GET['did']);
	$produk = $koneksi->query("SELECT * FROM produk WHERE id_produk = '$linkdtl'");
	$pencocokan = $produk->num_rows;
	if ($pencocokan == 1) {	
		$dtlProduk = $produk->fetch_assoc();
		$dapat_idKategori = $dtlProduk['id_kategori'];
	}
	else {
		echo "<script>location='product';</script>";
	}
}
else {
	echo "<script>location='product';</script>";
}

if (empty($_SESSION["catatan"][$linkdtl]) OR !isset($_SESSION["catatan"][$linkdtl])) {
	$data_catatan = "";
}
else {
	$data_catatan = $_SESSION['catatan'][$linkdtl];
}

if (isset($_SESSION['pembelian'][$linkdtl])) {
	$jumlah_pesan = $_SESSION['pembelian'][$linkdtl];
}
else {
	$jumlah_pesan = 1;
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Detail Produk</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<?php
	require 'linkrel.php';
	?>
<!--===============================================================================================-->
</head>
<body class="animsition">

	<?php include 'menu.php'; ?>

	<!-- breadcrumb -->
	<div class="bread-crumb bgwhite flex-w p-l-52 p-r-15 p-t-30 p-l-15-sm">
		<a href="index" class="s-text16">
			Beranda
			<i class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
		</a>

		<a href="product" class="s-text16">
			Produk
			<i class="fa fa-angle-right m-l-8 m-r-9" aria-hidden="true"></i>
		</a>

		<span class="s-text17">
			<?php echo $dtlProduk['nama_produk']; ?>
		</span>
	</div>

	<!-- Product Detail -->
	<div class="container bgwhite p-t-35 p-b-80" >
		<div class="flex-w flex-sb">
			<div class="w-size13 p-t-30 respon5">
				<div class="wrap-slick3 flex-sb flex-w">
					<div class="wrap-slick3-dots"></div>

					<div class="slick3">
						<div class="item-slick3" data-thumb="images/produk/produk_barang/<?php echo $dtlProduk['foto_produk1']; ?>?nocache=<?php echo time(); ?>">
							<div class="wrap-pic-w">
								<img src="images/produk/produk_barang/<?php echo $dtlProduk['foto_produk1']; ?>?nocache=<?php echo time(); ?>" alt="IMG-PRODUCT">
							</div>
						</div>

				<?php	
				$src1 = 'images/produk/produk_barang/'.$dtlProduk['foto_produk2'];

				if (@getimagesize($src1)) {
					echo '<div class="item-slick3" data-thumb="images/produk/produk_barang/'. $dtlProduk['foto_produk2'].'?nocache='.time().'">
							<div class="wrap-pic-w">
								<img src="images/produk/produk_barang/'.$dtlProduk['foto_produk2'].'?nocache='.time().'" alt="IMG-PRODUCT">
							</div>
						</div>';
				} ?>


				<?php	
				$src2 = 'images/produk/produk_barang/'.$dtlProduk['foto_produk3'];

				if (@getimagesize($src2)) {
					echo '<div class="item-slick3" data-thumb="images/produk/produk_barang/'. $dtlProduk['foto_produk3'].'?nocache='.time().'">
							<div class="wrap-pic-w">
								<img src="images/produk/produk_barang/'.$dtlProduk['foto_produk3'].'?nocache='.time().'" alt="IMG-PRODUCT">
							</div>
						</div>';
				} ?>
					</div>
				</div>
			</div>

			<div class="w-size14 p-t-30 respon5">
				<h4 class="product-detail-name m-text16 p-b-13">
					<?php echo $dtlProduk['nama_produk']; ?>
				</h4>

				<span class="m-text17 p-b-13">
					Rp <?php echo number_format($dtlProduk['harga']); ?>
				</span><br>

				<!-- <h5 class="m-text10 p-t-10">Deskripsi</h5>
				<p class="s-text8 p-t-10">
					<?php echo $dtlProduk['deskripsi']; ?>
				</p> -->

				<!--  -->
				<form method="post" action="">
					<?php if ($dtlProduk['jenis_produk'] == 'barang') { ?>
				<div class="p-t-33 p-b-60">
					<div class="flex-m flex-w p-b-10">	
						<div class="s-text15 w-size15 t-center">
						<input type="hidden" value="<?php echo $dtlProduk['stok']; ?>" name="stoknya" id="stoknya">
							Stok : <?php echo $dtlProduk['stok']; ?>
						</div>
					</div>

					<div class="flex-m flex-w p-b-10">
						<div class="s-text15 w-size15 t-center">
							Catatan
						</div>

						<div class="rs2-select2 rs3-select2 bo4 of-hidden w-size16">
							<div class="size16 bo4 m-r-10">
								<input class="sizefull s-text7 p-l-22 p-r-22" type="text" name="catatan_pb" placeholder="..." value="<?php echo $data_catatan; ?>">
							</div>
						</div>
					</div>

					<div class="flex-r-m flex-w p-t-10">
						<div class="w-size16 flex-m flex-w">
						
							<div class="flex-w bo5 of-hidden m-r-22 m-t-10 m-b-10">
								<button class="btn-num-product-down color1 flex-c-m size8 bg8 eff2">
									<i class="fs-12 fa fa-minus" aria-hidden="true"></i>
								</button>

								<input class="size8 m-text18 t-center num-product" type="number" name="jm_produk" value=<?php echo $jumlah_pesan?>>

								<button class="btn-num-product-up color1 flex-c-m size8 bg8 eff2">
									<i class="fs-12 fa fa-plus" aria-hidden="true"></i>
								</button>
							</div>
							
							<div class="btn-addcart-product-detail size9 trans-0-4 m-t-10 m-b-10">
								<!-- Button -->
								<button name="produk_id" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" value="<?php echo $dtlProduk['id_produk']; ?>">
									BELI
								</button>
							</div>
						</div>
					</div>
				</div>
				<?php }
				else { ?>
				<div class="p-t-33 p-b-60">
					<div class="flex-m flex-w p-b-10">	
						<div class="s-text15 w-size15 t-center">
						<input type="hidden" value="<?php echo $dtlProduk['stok']; ?>" name="stoknya" id="stoknya">
							Stok : <?php echo $dtlProduk['stok']; ?>
						</div>
					</div>
					<div class="btn-addcart-product-detail size9 trans-0-4 m-t-10 m-b-10">
								<!-- Button -->
								<button name="produk_id" class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4" value="<?php echo $dtlProduk['id_produk']; ?>">
									DAFTAR
								</button>
							</div>
						</div>
				<?php } ?>
				</form>

				<!-- <div class="p-b-45">
					<span class="s-text8 m-r-35">SKU: MUG-01</span>
					<span class="s-text8">Categories: Mug, Design</span>
				</div> -->

				<!--  -->
				<div class="wrap-dropdown-content bo6 p-t-15 p-b-14 active-dropdown-content">
					<h5 class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
						Deskripsi
						<i class="down-mark fs-12 color1 fa fa-minus dis-none" aria-hidden="true"></i>
						<i class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>
					</h5>

					<div class="dropdown-content dis-none p-t-15 p-b-23">
						<p class="s-text8" style="white-space: pre-line;">
							<?php echo $dtlProduk['deskripsi']; ?>
						</p>
					</div>
				</div>

				<!-- <div class="wrap-dropdown-content bo7 p-t-15 p-b-14">
					<h5 class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
						Additional information
						<i class="down-mark fs-12 color1 fa fa-minus dis-none" aria-hidden="true"></i>
						<i class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>
					</h5>

					<div class="dropdown-content dis-none p-t-15 p-b-23">
						<p class="s-text8">
							Fusce ornare mi vel risus porttitor dignissim. Nunc eget risus at ipsum blandit ornare vel sed velit. Proin gravida arcu nisl, a dignissim mauris placerat
						</p>
					</div>
				</div>

				<div class="wrap-dropdown-content bo7 p-t-15 p-b-14">
					<h5 class="js-toggle-dropdown-content flex-sb-m cs-pointer m-text19 color0-hov trans-0-4">
						Reviews (0)
						<i class="down-mark fs-12 color1 fa fa-minus dis-none" aria-hidden="true"></i>
						<i class="up-mark fs-12 color1 fa fa-plus" aria-hidden="true"></i>
					</h5>

					<div class="dropdown-content dis-none p-t-15 p-b-23">
						<p class="s-text8">
							Fusce ornare mi vel risus porttitor dignissim. Nunc eget risus at ipsum blandit ornare vel sed velit. Proin gravida arcu nisl, a dignissim mauris placerat
						</p>
					</div> -->
				</div>
			</div>
		</div>
	</div>


	<!-- Relate Product -->
	<section class="relateproduct bgwhite p-t-45 p-b-138">
		<div class="container">
			<div class="sec-title p-b-60">
				<h3 class="m-text5 t-center">
					Produk Serupa
				</h3>
			</div>

			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">
				

					<?php 
					
					$kategori = $koneksi->query("SELECT * FROM kategori WHERE id_kategori = '$dapat_idKategori'");
					$pecahKategori = $kategori->fetch_assoc();

					$produk_serupa = $koneksi->query("SELECT * FROM produk WHERE id_kategori = '$dapat_idKategori'");
					while ($pSerupa = $produk_serupa->fetch_assoc()) { 
						$ecLinkId = encrypt_decrypt('encrypt', $pSerupa['id_produk']);
						?>

					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-img wrap-pic-w of-hidden pos-relative">
								<img src="images/produk/produk_barang/<?php echo $pSerupa['foto_produk1']; ?>?nocache=<?php echo time(); ?>" alt="IMG-PRODUCT" class="">

								<div class="block2-overlay trans-0-4">
									<!-- <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
										<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
										<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
									</a> -->

									<div class="block2-btn-addcart w-size1 trans-0-4">
										<!-- Button -->
										<button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
											BELI
										</button>
									</div>
								</div>
							</div>

							<div class="block2-txt p-t-20">
								<a href="product-detail?did=<?php echo $ecLinkId ?>" class="block2-name dis-block s-text3 p-b-5">
									<?php echo $pSerupa['nama_produk']; ?>
								</a>

								<span class="block2-price m-text6 p-r-5">
									IDR <?php echo $pSerupa['harga']; ?>
								</span>
							</div>
						</div>
					</div>

					<?php } ?>

					
				</div>
			</div>

		</div>
	</section>


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
	<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/sweetalert/sweetalert.min.js"></script>
	<script type="text/javascript">
		// $('.block2-btn-addcart').each(function(){
		// 	var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
		// 	$(this).on('click', function(){
		// 		swal(nameProduct, "is added to cart !", "success");
		// 	});
		// });

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");
			});
		});

		// $('.btn-addcart-product-detail').each(function(){
		// 	var nameProduct = $('.product-detail-name').html();
		// 	$(this).on('click', function(){
		// 		swal(nameProduct, "is added to wishlist !", "success");
		// 	});
		// });
	</script>

<!--===============================================================================================-->
	<script src="js/main.js"></script>

	<?php
    if (isset($_POST['produk_id']))
    {
		$id_produk = $_POST['produk_id'];
		$stok = $_POST['stoknya'];
		$jumlahnya = $_POST['jm_produk'];
		$catatan = $_POST['catatan_pb'];
		$data_beli = $koneksi->query("SELECT * FROM produk WHERE id_produk = '$id_produk'");
		$pecahData = $data_beli->fetch_assoc();
		$jenis_produk = $pecahData['jenis_produk'];

		if ($jenis_produk == 'jasa') {
			$_SESSION['belijasa'] = $id_produk;
			if ($pecahData['stok'] > 0){
                echo "<script>location='mpadmin/pendaftaran?so=".$id_produk."';</script>";
            }
            else {
                echo "<script>
                        alert('Produk Berhasil Ditambahkan')
                    </script>";
                echo "<script>location='product'</script>";
            }
		}
		else {
			if ($jumlahnya == 0) {
				unset($_SESSION['catatan'][$id_produk]);
				unset($_SESSION['pembelian'][$id_produk]);
				echo "<script>location='product';</script>";
			}
			else if ($jumlahnya <= $stok) {
				if (isset($_SESSION['catatan'][$id_produk]))
				{
					$_SESSION['catatan'][$id_produk] = $catatan;
				}
				else
				{
					$_SESSION['catatan'][$id_produk] = $catatan;
				}
				
				if (isset($_SESSION['pembelian'][$id_produk]))
				{
					$_SESSION['pembelian'][$id_produk] = $jumlahnya;
				}
				//selain itu (blm ada di keranjang), maka produk itu dianggap dibeli 1
				else
				{
					$_SESSION['pembelian'][$id_produk] = $jumlahnya;
				}
				// echo "<script>alert('produk telah masuk ke keranjang belanja');</script>";
				echo "<script>
						$('.block2-btn-addcart').each(function(){
							var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
							$(this).on('click', function(){
								swal(nameProduct, 'Berhasil ditambahkan !', 'sukses');
							});
						});
					</script>";
				echo "<script>location='cart';</script>";

			}
			else {
				echo "<script>alert('Stok Tidak Mencukupi Untuk Jumlah Pesanan Anda')</script>";
			}
		}
    }
?>

</body>
</html>
