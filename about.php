<?php
session_start();
require 'koneksi.php';
include 'secure.php';
$ambilAbout = $koneksi->query("SELECT * FROM about");
$pecahAbout = $ambilAbout->fetch_assoc();
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Tentang Kami</title>
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
			Tentang MP Store
		</h2>
	</section> -->

	<!-- content page -->
	<section class="bgwhite p-t-38 p-b-38">
		<div class="container">
			<div class="row">
				<div class="col-md-4 p-b-30">
					<div class="hov-img-zoom">
						<img src="images/about/<?php echo $pecahAbout['foto_about']; ?>?nocache=<?php echo time(); ?>" alt="IMG-ABOUT">
					</div>
				</div>

				<div class="col-md-8 p-b-30">
					<h3 class="m-text26 p-t-15 p-b-16">
						<?php echo $pecahAbout['judul_about']; ?>
					</h3>

					<p class="p-b-28">
						MPstore adalah suatu perseroan terbatas yang salah satu jenis usahanya bergerak di bidang jasa portal web. MPstore dalam hal ini menyediakan Platform perdagangan elektronik (e-commerce) di mana Pengguna dapat melakukan transaksi jual-beli barang dan menggunakan berbagai fitur serta layanan yang tersedia. Setiap pihak yang berada di wilayah Negara Kesatuan Republik Indonesia dapat mengakses Platform MPstore untuk kemudian membuka toko online, menjual barang, membeli barang, menggunakan fitur/layanan, atau hanya sekadar mengakses/mengunjungi Platform MPstore. Sebagai penunjang bisnis dan penyedia Platform perdagangan elektronik, MPstore menjamin keamanan dan kenyamanan bagi para Pengguna. <br>Aturan Penggunaan ini mengatur penggunaan seluruh layanan yang terdapat pada Platform MPstore yang berlaku terhadap seluruh Pengguna dan terhadap setiap Pihak yang menyampaikan permintaan atau informasi kepada MPstore. Dengan mendaftar akun MPstore dan/atau menggunakan Platform MPstore, maka Pengguna dianggap telah membaca, mengerti, memahami dan menyetujui seluruh isi dalam Aturan Penggunaan.

					</p>

					<div class="bo13 p-l-29 m-l-9 p-b-10">
						<p class="p-b-11">
							ATURAN PENGGUNAAN INI MERUPAKAN BENTUK KESEPAKATAN YANG MERUPAKAN PERJANJIAN MENGIKAT ANTARA PENGGUNA DENGAN MPSTORE. PENGGUNA SECARA SADAR DAN SUKARELA MENYETUJUI KETENTUAN INI UNTUK MENGGUNAKAN LAYANAN DI PLATFORM MPSTORE.
						</p>

						<!--<span class="s-text7">-->
						<!--	- <?php echo $pecahAbout['teks_about3']; ?>-->
						<!--</span>-->
					</div>
				</div>
			</div>
		</div>
	</section>
	
	 <!--ol {-->
  <!--      counter-reset: item;-->
  <!--  }-->
  <!--  li { display: block }-->
  <!--  li:before { content: counter(item) ". "; counter-increment: item }-->
	
	<section class="bgwhite p-t-10 p-b-38">
		<div class="container">
		    <h3 class="m-text26 p-t-15 p-b-16">
				Definisi
			</h3>
		    <p>
		        Dalam Aturan Penggunaan ini, sepanjang tidak ditentukan lain, istilah-istilah di bawah ini mempunyai arti sebagai berikut:
		    </p>
		    <ul style="list-style-type: decimal; margin: 25px; font-family: Montserrat-Regular; font-size: 15px; line-height: 1.7; color: #888888;">
	            <li style="list-style-type: decimal;">Pengguna adalah pihak (terdaftar/tidak terdaftar) yang mengakses Platform MPstore, termasuk namun tidak terbatas pada Pembeli dan Penjual (Vendor), mitra, user offline, klien yang mana wajib mematuhi Aturan Penggunaan MPstore beserta ketentuan-ketentuan lain termasuk namun tidak terbatas pada Kebijakan Privasi MPstore.
	            </li>
	            <li style="list-style-type: decimal;">Akun adalah data tentang Vendor, minimum terdiri dari username, password, nomor telepon bisa whatsapp, email, no KTP, jenis kelamin dan informasi bank yang wajib diisi oleh Pengguna Terdaftar.
	            </li>
	            <li style="list-style-type: decimal;">Platform MPstore adalah situs resmi www.mpstore.biz dan seluruh microsite resmi beserta aplikasi resmi MPstore (berbasis web) di masa akan datang yang dapat diakses melalui perangkat komputer dan/atau perangkat seluler Pengguna.
	            </li>
	            <li style="list-style-type: decimal;">Barang adalah suatu objek yang memiliki wujud dan nilai jual beli yang memenuhi kriteria pengiriman pihak penyelenggara jasa ekspedisi pengiriman Barang.
	            </li>
	            <li style="list-style-type: decimal;">Layanan adalah secara kolektif: (i) Platform MPstore; (ii) Konten, fitur, layanan, dan fungsi apa pun yang tersedia di atau melalui Platform oleh atau atas nama MPstore, termasuk Layanan Partner; dan pemberitahuan email, tombol, widget, dan iklan.
	            </li>
	            <li style="list-style-type: decimal;">Aturan Vendor adalah perjanjian antara Vendor dan MPstore yang berisi seperangkat peraturan yang mengatur hak, kewajiban, tanggung jawab Vendor dan MPstore, serta tata cara penggunaan sistem layanan MPstore.
	            </li>
	            <li style="list-style-type: decimal;">Agen adalah Pengguna terdaftar yang melakukan penjualan dan/atau penawaran Barang kepada para Pengguna melalui lapak di Platform MPstore serta wajib mematuhi Aturan Penggunaan MPstore beserta ketentuan-ketentuan lain termasuk namun tidak terbatas pada Kebijakan Privasi MPstore.
	            </li>
	            <li style="list-style-type: decimal;">Pembeli adalah Pengguna terdaftar atau tidak terdaftar yang melakukan pembelian Barang yang dijual oleh Penjual (Agen) di Platform MPstore serta wajib mematuhi Aturan Penggunaan MPstore beserta ketentuan-ketentuan lain termasuk namun tidak terbatas pada Kebijakan Privasi MPstore.
	            </li>
	            <li style="list-style-type: decimal;">MPstore Payment System adalah sistem pembayaran yang difasilitasi oleh MPstore untuk para Pengguna melakukan transaksi jual-beli di Platform MPstore.
	            </li>
	            <li style="list-style-type: decimal;">Saldo adalah jumlah dana pada akun Vendor dan Agen setelah semua transaksi dan operasi perdagangan dihitung, termasuk untuk operasi nonperdagangan, yakni Penarikan dana. Saldo tersimpan di direktori MPwallet.
	            </li>
	            <li style="list-style-type: decimal;">MPwallet adalah suatu bentuk dompet virtual yang dimiliki setiap Vendor dan Agen Terdaftar yang berfungsi untuk menyimpan dana hasil penjualan (remit).
	            </li>
	            <li style="list-style-type: decimal;">MPagen adalah tempat dimana Penjual (Agen) dapat menawarkan dan/atau menjual barang dagangannya yang terdapat pada Platform MPstore.
	            </li>
	            <li style="list-style-type: decimal;">Barang Terlarang adalah adalah barang yang dilarang diperdagangkan oleh Penjual (Agen) di Platform MPstore berdasarkan peraturan perundang-undangan yang berlaku di Indonesia dan kebijakan internal MPstore.
	            </li>
	        </ul>
	        <p>
	            MPhelpdesk merupakan layanan yang disediakan oleh MPstore untuk memfasilitasi penyelesaian masalah termasuk namun tidak terbatas pada masalah transaksi Pembeli, Penjual dan Vendor, Hak Kekayaan Intelektual, pelaporan pelanggaran produk, dan lain-lain.
	        </p>
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
	<script src="js/main.js"></script>

</body>
</html>
