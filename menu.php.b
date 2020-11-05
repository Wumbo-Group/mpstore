<?php
	$jumlahKeranjang = 0;
	if (empty($_SESSION["pembelian"]) OR !isset($_SESSION["pembelian"]))
	{
		$jumlahKeranjang = 0;
	}
	else
	{
		foreach ($_SESSION["pembelian"] as $idPro => $jumlahKer):
			$jumlahKeranjang += $jumlahKer;
		endforeach;
	}
?>

<!-- Header -->
<header class="header1">
	

		<!-- Header desktop -->
		<div class="container-menu-header">
			<div class="topbar">
				<div class="topbar-social">
					<a href="https://facebook.com/muslimpreneurship" class="fs-18 color1 p-r-20 fa fa-facebook" target="_blank"></a>
					<a href="https://instagram.com/muslimpreneurship" class="fs-18 color1 p-r-20 fa fa-instagram" target="_blank"></a>
					<a href="https://wa.me/6281317100235" class="fs-18 color1 p-r-20 fa fa-commenting" target="_blank"></a>
					<a href="mailto:customerservice@mpstore.net" class="fs-18 color1 p-r-20 fa fa-envelope-o" target="_blank"></a>
					<a href="https://youtube.com/channel/UCQDK7E6MSa_OtJ2D3RHPeZA" class="fs-18 color1 p-r-20 fa fa-youtube-play" target="_blank"></a>
				</div>

				<span class="topbar-child1">
					Kembali Ke Jalan Allah
				</span>

				<div class="topbar-child2">
					<span class="topbar-email">
						<a href="mailto:customerservice@mpstore.net" target="_blank">customerservice@mpstore.net</a>
					</span>

					
				</div>
			</div>
			<div class="wrap_header">
				<!-- Logo -->
				<a href="https://mpstore.net" class="logo">
					<!-- MPSTORE -->
					<img src="images/icons/logo_mp_land.png" alt="IMG-LOGO">
				</a>

				

				<!-- Menu -->
				<div class="wrap_menu">
					<nav class="menu">
						<ul class="main_menu">
							<li <?php if ($_SERVER['SCRIPT_NAME']=="/index.php") { ?> class="sale-noti" <?php } ?>>
								<a href="https://mpstore.net">Beranda</a>
							</li>

							<li <?php if ($_SERVER['SCRIPT_NAME']=="/product.php") { ?> class="sale-noti" <?php } ?>>
								<a href="product">Produk</a>
							</li>

							<li <?php if ($_SERVER['SCRIPT_NAME']=="/about.php") { ?> class="sale-noti" <?php } ?>>
								<a href="about">Tentang Kami</a>
							</li>

							<li <?php if ($_SERVER['SCRIPT_NAME']=="/contact.php") { ?> class="sale-noti" <?php } ?>>
								<a href="contact">Kontak</a>
							</li>
						</ul>
					</nav>
				</div>

				<!-- Header Icon -->
				<div class="header-icons">
					<a href="mpadmin/login" class="header-wrapicon1 dis-block">
						<img src="images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
					</a>

					<span class="linedivide1"></span>
					
					

					<div class="header-wrapicon2">
						<img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
						<span class="header-icons-noti"><?php echo $jumlahKeranjang; ?></span>
						

						<!-- Header cart noti -->
						<?php include 'notif_keranjang.php'; ?>
					</div>
				</div>
			</div>
		</div>

		<!-- Header Mobile -->
		<div class="wrap_header_mobile">
			<!-- Logo moblie -->
			<a href="https://mpstore.net" class="logo-mobile">
				<img src="images/icons/logo_mp_land.png" alt="IMG-LOGO">
			</a>

			<!-- Button show menu -->
			<div class="btn-show-menu">
				<!-- Header Icon mobile -->
				<div class="header-icons-mobile">
					<a href="mpadmin/login" class="header-wrapicon1 dis-block">
						<img src="images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
					</a>

					<span class="linedivide2"></span>

					<div class="header-wrapicon2">
						<img src="images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
						<span class="header-icons-noti"><?php echo $jumlahKeranjang; ?></span>

						<!-- Header cart noti -->
						<?php include 'notif_keranjang.php'; ?>
					</div>
				</div>

				<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
					</span>
				</div>
			</div>
		</div>

		<!-- Menu Mobile -->
		<div class="wrap-side-menu" >
			<nav class="side-menu">
				<ul class="main-menu">

					<li class="item-menu-mobile">
						<a href="https://mpstore.net">Beranda</a>
					</li>

					<li class="item-menu-mobile">
						<a href="product">Produk</a>
					</li>

					<li class="item-menu-mobile">
						<a href="about">Tentang Kami</a>
					</li>

					<li class="item-menu-mobile">
						<a href="contact">Kontak</a>
					</li>
				</ul>
			</nav>
		</div>
	</header>