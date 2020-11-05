<?php

session_start();
require 'koneksi.php';
date_default_timezone_set("Asia/Jakarta");

$kategori = $koneksi->query("SELECT * FROM kategori");

include 'check_member.php';
include 'secure.php';

// if (isset($_GET['mem'])){
// 	$lmem = $_GET['mem'];
// 	$linkProdukMem = 'product?mem='.$lmem.'&';
// 	$linkCartMem = 'cart?mem='.$lmem.'&';
// 	$linkDetailMem = 'product-detail?mem='.$lmem.'&';
// }

// else {
// 	$linkProdukMem = "product?";
// 	$linkCartMem = "cart?";
// 	$linkDetailMem = "product-detail?";
// }

if (isset($_GET['status'])) {
	echo "<script>alert('Transaksi Anda Berhasil diproses, Silahkan periksa email anda untuk detail pembayaran');</script>";
	echo "<script>location='product';</script>";
}

if (isset($_POST['pencarian'])) {
	$dataPencarian = $_POST['pencarian'];
}
else {
	$dataPencarian ="";
}

if (isset($_GET['page_no']) && $_GET['page_no']!="") {
	$page_no = $_GET['page_no'];
	} else {
		$page_no = 1;
        }

	$total_records_per_page = 12;
    $offset = ($page_no-1) * $total_records_per_page;
	$previous_page = $page_no - 1;
	$next_page = $page_no + 1;
	$adjacents = "2"; 


if (isset($_GET['ct'])) {
	$linkct = encrypt_decrypt('decrypt', $_GET['ct']);
	$linkNow = "product?ct=".$_GET['ct']."&";
	$produk_page = $koneksi->query("SELECT COUNT(*) As total_records FROM produk WHERE id_kategori = '$linkct' AND nama_produk LIKE '%".$dataPencarian."%' AND stok > 0");
	$total_records = $produk_page->fetch_array();
	$total_records = $total_records['total_records'];
	$total_no_of_pages = ceil($total_records / $total_records_per_page);
	$second_last = $total_no_of_pages - 1;

	$ujpro = $koneksi->query("SELECT * FROM produk WHERE id_kategori = '$linkct' AND nama_produk LIKE '%".$dataPencarian."%' AND stok > 0 ORDER BY id_produk ASC LIMIT $offset, $total_records_per_page");
	$produk = $koneksi->query("SELECT * FROM produk WHERE id_kategori = '$linkct' AND nama_produk LIKE '%".$dataPencarian."%' AND stok > 0 ORDER BY id_produk ASC LIMIT $offset, $total_records_per_page");

	
}
else {
	$linkNow = "product?";
	$produk_page = $koneksi->query("SELECT COUNT(*) As total_records FROM produk WHERE nama_produk LIKE '%".$dataPencarian."%' AND stok > 0");
	$total_records = $produk_page->fetch_array();
	$total_records = $total_records['total_records'];
	$total_no_of_pages = ceil($total_records / $total_records_per_page);
	$second_last = $total_no_of_pages - 1;

	$ujpro = $koneksi->query("SELECT * FROM produk WHERE nama_produk LIKE '%".$dataPencarian."%' AND stok > 0 ORDER BY id_produk ASC LIMIT $offset, $total_records_per_page");
	$produk = $koneksi->query("SELECT * FROM produk WHERE nama_produk LIKE '%".$dataPencarian."%' AND stok > 0 ORDER BY id_produk ASC LIMIT $offset, $total_records_per_page");
	$linkct = 0;
}



?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Produk</title>
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

	<!-- Title Page -->
	<section class="bg-title-page p-t-50 p-b-40 flex-col-c-m" style="background-color: #C4AF92;">
		<h2 class="l-text2 t-center">
			Produk
		</h2>
		<p class="m-text13 t-center">
			<?php
			if ($linkct == 0) {
				echo "Semua Produk";
			}
			else {
				$penamaan = $koneksi->query("SELECT * FROM kategori WHERE id_kategori = '$linkct'");
				$pecah = $penamaan->fetch_assoc();
				echo $pecah['nama_kategori'];
			}
			?>
		</p>
	</section>

	<!-- Content page -->
	<section class="bgwhite p-t-55 p-b-65" style="background: rgb(249,239,178);
background: linear-gradient(180deg, rgba(249,239,178,1) 0%, rgba(227,198,118,1) 85%, rgba(195,146,70,1) 100%);">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-4 col-lg-3 p-b-50">
					<div class="leftbar p-r-20 p-r-0-sm">
						<!--  -->
						<h4 class="m-text14 p-b-7" style="font-size:30px;">
							Kategori
						</h4>

						<ul class="p-b-54">
							<li class="p-t-4">
								<a href="product" class="s-text13">
									Semua Produk
								</a>
							</li>

							<?php
							$newKategori = $koneksi->query("SELECT * FROM kategori_awal");
							while ($pecahNewKat = $newKategori->fetch_assoc()){
							

							?>

							<li class="p-t-4">
							
								<div class="col-lg-12 col-12" style="margin-left:-15px;">
									<div class="row">
										<div class="col-lg-10 col-10">
											<a data-toggle="collapse" href="#<?php echo $pecahNewKat['id_kategori_awal'] ?>" class="t-left s-text13">
												<?php echo $pecahNewKat['nama_kategori_awal'] ?>
											</a>
										</div>
										<div class="col-lg-2 col-2 t-right">
											<a data-toggle="collapse" href="#<?php echo $pecahNewKat['id_kategori_awal'] ?>" class="fa fa-caret-down"></a>
										</div>
									</div>
								</div>
								<div class="collapse " id="<?php echo $pecahNewKat['id_kategori_awal'] ?>">
									<ul class="">
									<?php 
									$id_awal = $pecahNewKat['id_kategori_awal'];
									$dapatKategori = $koneksi->query("SELECT * FROM kategori WHERE id_kategori_awal = '$id_awal'");
									while ($pecahKat = $dapatKategori->fetch_assoc()) {
										$ecIdKat = encrypt_decrypt('encrypt', $pecahKat['id_kategori']);
									?>
										<li class="p-t-4 m-l-15">
											<a href="product?ct=<?php echo $ecIdKat ?>" class="s-text13"><?php echo $pecahKat['nama_kategori'] ?>
											</a>
										</li>
										<?php } ?>
									</ul>
								</div>
								
							</li>
							<?php } ?>
							
							<?php 
							
							$naKat = $koneksi->query("SELECT * FROM kategori WHERE id_kategori_awal = 0 or id_kategori_awal = 6");
							while ($pchKat = $naKat->fetch_assoc()) {
								$ecIdKatNew = encrypt_decrypt('encrypt', $pchKat['id_kategori']);
							
							?>
							
							<li class="p-t-4">
								<a href="product?ct=<?php echo $ecIdKatNew ?>" class="s-text13"><?php echo $pchKat['nama_kategori'] ?>
								</a>
							</li>
							<?php } ?>

							<!-- <?php 
							
							while ($kProduk = $kategori->fetch_assoc()) { ?>

							<li class="p-t-4">
								<a href="product?ct=<?php echo $kProduk['id_kategori'] ?>" class="s-text13" value="<?php echo $kProduk['id_kategori']; ?>">
									<?php echo $kProduk['nama_kategori']; ?>
								</a>
							</li>

							<?php } ?> -->

							
						</ul>

						<!--  -->
						<!-- <h4 class="m-text14 p-b-32">
							Filters
						</h4>

						<div class="filter-price p-t-22 p-b-50 bo3">
							<div class="m-text15 p-b-17">
								Price
							</div>

							<div class="wra-filter-bar">
								<div id="filter-bar"></div>
							</div>

							<div class="flex-sb-m flex-w p-t-16">
								<div class="w-size11">
									<button class="flex-c-m size4 bg7 bo-rad-15 hov1 s-text14 trans-0-4">
										Filter
									</button>
								</div>

								<div class="s-text3 p-t-10 p-b-10">
									Range: $<span id="value-lower">610</span> - $<span id="value-upper">980</span>
								</div>
							</div>
						</div> -->

						
					</div>
				</div>

				<div class="col-sm-6 col-md-8 col-lg-9 p-b-50">
					<!--  -->
					<div class="flex-sb-m flex-w p-b-35">
						<div class="flex-w">
							<div class="rs2-select2 of-hidden w-size12 m-t-5 m-b-5 m-r-10">
								<select class="selection-2" name="sorting" id="sorting">
									<option value="1-<?php echo $linkct."-".$dataPencarian; ?>">Standar</option>
									<option value="2-<?php echo $linkct."-".$dataPencarian; ?>">Harga: Rendah ke Tinggi</option>
									<option value="3-<?php echo $linkct."-".$dataPencarian; ?>">Harga: Tinggi ke Rendah</option>
								</select>
							</div>

							<div class="rs2-select2 bo4 of-hidden w-size10 m-t-5 m-b-5 m-r-10">
							<form action="" method="post">
								<div class="search-product pos-relative of-hidden">
									<input class="s-text7 size6 p-l-23 p-r-50" type="text" name="pencarian" placeholder="Cari Produk..." value="">

									<button class="flex-c-m size5 ab-r-m color2 color0-hov trans-0-4">
										<i class="fs-12 fa fa-search" aria-hidden="true"></i>
									</button>
								</div>
							</form>
							</div>
						</div>

						
						<span class="s-text8 p-t-5 p-b-5 mr-4">
						<?php $jumlahProduk = 0;
						while ($ujpro->fetch_assoc()) {
							$jumlahProduk += 1;
						 }
						echo $jumlahProduk; ?> Produk
						</span>
					</div>

					<!-- Product -->
					
					<div class="row" id="fungsi_produk" name="fungsi_produk">

						<?php
						while ($dProduk = $produk->fetch_assoc()) {
							$ecIdPro = encrypt_decrypt('encrypt', $dProduk['id_produk']);
							?>
						<div class="col-sm-12 col-md-6 col-lg-4 p-b-50">
							<!-- Block2 -->
							<div class="block2">
							<!-- block label new : block2-labelnew -->
								<div class=" block2-img wrap-pic-w of-hidden pos-relative ">
									<img src="images/produk/produk_barang/<?php echo $dProduk['foto_produk1']; ?>?nocache=<?php echo time(); ?>" class="" alt="IMG-PRODUCT">

									<div class="block2-overlay trans-0-4">
									
										<!-- <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
											<i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
											<i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
										</a> -->
										<form method="post" action="" class="block2-btn-addcart">
											<div class="block2-btn-addcart w-size1 trans-0-4">
												<input type="hidden" value="<?php echo $dProduk['stok']; ?>" name="stoknya">
												
												<!--<button name="produk_id" class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4" value="<?php echo $dProduk['id_produk'];?>">-->
												<!--	LANJUT-->
												<!--</button>-->
												
												<a href="product-detail?did=<?php echo $ecIdPro; ?>" class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4" name="tmbh_nama_produk">
            										LANJUT
            									</a>
											</div>
										</form>
									</div>
								</div>

								<div class="block2-txt p-t-20">
									<a href="product-detail?did=<?php echo $ecIdPro; ?>" class="block2-name dis-block s-text3 p-b-5" name="tmbh_nama_produk">
										<?php echo $dProduk['nama_produk']; ?>
									</a>

									<span class="block2-price m-text6 p-r-5" name="tmbh_harga_produk">
										Rp <?php echo number_format($dProduk['harga'],0,',','.'); ?>
									</span>
								</div>
							</div>
						</div>
						<?php } ?>

					</div>

					<div class="pagination flex-m flex-w p-t-26">
						<strong>Halaman : <?php echo $page_no ?></strong>
					</div>
					
					<!-- Pagination -->
					<ul class="pagination flex-m flex-w p-t-26">
						<?php if($page_no > 1){ echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=1'>&lsaquo;&lsaquo;</a></li>"; } ?>
					
									
						<li <?php if($page_no <= 1){ echo "class='disabled'"; } ?>>
						<a class="item-pagination flex-c-m trans-0-4" <?php if($page_no > 1){ echo "href='".$linkNow."page_no=$previous_page'"; } ?>>&lsaquo;</a>
						</li>
						
						<?php 
						if ($total_no_of_pages <= 10) {  	 
							for ($counter = 1; $counter <= $total_no_of_pages; $counter++){
								if ($counter == $page_no) {
									echo "<li class='active'><a class='item-pagination flex-c-m trans-0-4' >$counter</a></li>";	
								}
								else {
									echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=$counter'>$counter</a></li>";
								}
							}
						}
						elseif ($total_no_of_pages > 10) {
							if($page_no <= 4) {			
								for ($counter = 1; $counter < 8; $counter++) {		 
									if ($counter == $page_no) {
										echo "<li class='active'><a>$counter</a></li>";	
									}
									else {
										echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=$counter'>$counter</a></li>";
									}
								}
								echo "<li><a class='item-pagination flex-c-m trans-0-4'>...</a></li>";
								echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=$second_last'>$second_last</a></li>";
								echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=$total_no_of_pages'>$total_no_of_pages</a></li>";
							}

							elseif($page_no > 4 && $page_no < $total_no_of_pages - 4) {		 
								echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=1'>1</a></li>";
								echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=2'>2</a></li>";
								echo "<li><a class='item-pagination flex-c-m trans-0-4'>...</a></li>";
								for ($counter = $page_no - $adjacents; $counter <= $page_no + $adjacents; $counter++) {		
									if ($counter == $page_no) {
										echo "<li class='active'><a class='item-pagination flex-c-m trans-0-4'>$counter</a></li>";	
									}
									else {
										echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=$counter'>$counter</a></li>";
									}                  
								}
								echo "<li><a class='item-pagination flex-c-m trans-0-4'>...</a></li>";
								echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=$second_last'>$second_last</a></li>";
								echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=$total_no_of_pages'>$total_no_of_pages</a></li>";      
							}
							
							else {
								echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=1'>1</a></li>";
								echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=2'>2</a></li>";
								echo "<li><a class='item-pagination flex-c-m trans-0-4'>...</a></li>";

								for ($counter = $total_no_of_pages - 6; $counter <= $total_no_of_pages; $counter++) {
									if ($counter == $page_no) {
										echo "<li class='active'><a>$counter</a></li>";	
									}
									else {
										echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=$counter'>$counter</a></li>";
									}                   
								}
							}
						}
					?>
						
						<li <?php if($page_no >= $total_no_of_pages){ echo "class='disabled'"; } ?>>
						<a class="item-pagination flex-c-m trans-0-4" <?php if($page_no < $total_no_of_pages) { echo "href='".$linkNow."page_no=$next_page'"; } ?>>&rsaquo;</a>
						</li>
						<?php if($page_no < $total_no_of_pages){
							echo "<li><a class='item-pagination flex-c-m trans-0-4' href='".$linkNow."page_no=$total_no_of_pages'>&rsaquo;&rsaquo;</a></li>";
							} ?>
					</ul>
						
					<!-- Pagination -->
					<!-- <div class="pagination flex-m flex-w p-t-26">
						<a href="#" class="item-pagination flex-c-m trans-0-4 active-pagination">1</a>
						<a href="#" class="item-pagination flex-c-m trans-0-4">2</a>
					</div> -->
				</div>
			</div>
		</div>
	</section>


	<!-- Footer -->
	<?php include 'footer.php'; ?>



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
	<script type="text/javascript" src="vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript" src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/sweetalert/sweetalert.min.js"></script>
	<!-- <script type="text/javascript">
		$('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "Berhasil ditambahkan !", "sukses");
			});
		});

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "Berhasil ditambahkan sebagai wishlist !", "sukses");
			});
		});
	</script> -->

	<script type="text/javascript">
		$(document).ready(function(){
			$("#produk_id").click(function(){

				$.ajax({
					type: 'POST',
					url: 'beli_produk.php',
					success: function() {
						// alert("Berhasil ditambahkan");
						$("p").text();

					}
				});
		});
	});
	</script>

<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/noui/nouislider.min.js"></script>
	<script type="text/javascript">
		/*[ No ui ]
	    ===========================================================*/
	    var filterBar = document.getElementById('filter-bar');

	    noUiSlider.create(filterBar, {
	        start: [ 0, 1000000 ],
	        connect: true,
	        range: {
	            'min': 0,
	            'max': 1000000
	        }
	    });

	    var skipValues = [
	    document.getElementById('value-lower'),
	    document.getElementById('value-upper')
	    ];

	    filterBar.noUiSlider.on('update', function( values, handle ) {
	        skipValues[handle].innerHTML = Math.round(values[handle]) ;
	    });
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
<!--===============================================================================================-->
	<script>
	function myFunction() {
		var linkCT = <?php echo "$linkct" ?>;
		function rubahKategori() {
			document.getElementById(linkCT).style.color = "red";
		}
	}
	</script>
<!--===============================================================================================-->
<script type="text/javascript">
 
	$(document).ready(function(){
		$('#sorting').change(function(){
 
			//Mengambil value dari option select provinsi kemudian parameternya dikirim menggunakan ajax 
			var sort = $('#sorting').val();
 
      		$.ajax({
            	type : 'GET',
           		url : 'filter_produk',
            	data :  'filter_id=' + sort,
					success: function (data) {
 
					//jika data berhasil didapatkan, tampilkan ke dalam option select kabupaten
					$("#fungsi_produk").html(data);
				}
          	});
		});
 
	});
</script>

	<!-- Beli Produk Php Tombol -->
	<?php
		include 'beli_produk.php';
			
		
	?>
	<!-- Close Beli Produk Php Tombol -->

</body>
</html>
