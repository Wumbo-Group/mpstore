<?php
include 'koneksi.php';
$kategori = $koneksi->query("SELECT * FROM kategori LIMIT 4");
?>
<!-- #FCEFE0 -->
<!-- #9cfcbe -->
<footer class="bg6 p-t-45 p-b-43 p-l-45 p-r-45" style="background-color:#9c85bd;">
		<div class="flex-w p-b-90">
			<div class="w-size6 p-t-30 p-l-15 p-r-15 respon3">
				<h4 class="s-text12 p-b-30">
					Kontak
				</h4>

				<div>
					<p class="s-text7 w-size27">
						Taman Denhaag P4/2 Kota Wisata Cibubur Nagrak Gunung Putri Bogor<br>
                        Call Center: <a class="s-text7" href="tel:+6281932760903">081932760903</a><br>
                        SMS/WA : <a class="s-text7" href="tel:+6281932760903">081932760903</a><br>
					</p>

					<div class="flex-m p-t-30">
						<a href="https://facebook.com/muslimpreneurship" class="fs-18 color1 p-r-20 fa fa-facebook" target="_blank"></a>
						<a href="https://instagram.com/muslimpreneurship" class="fs-18 color1 p-r-20 fa fa-instagram" target="_blank"></a>
						<a href="https://wa.me/6281317100235" class="fs-18 color1 p-r-20 fa fa-whatsapp" target="_blank"></a>
						<a href="mailto:customerservice@mpstore.net" class="fs-18 color1 p-r-20 fa fa-envelope-o" target="_blank"></a>
						<a href="https://youtube.com/channel/UCQDK7E6MSa_OtJ2D3RHPeZA" class="fs-18 color1 p-r-20 fa fa-youtube-play" target="_blank"></a>
					</div>
				</div>
			</div>

			<div class="w-size6 p-t-30 p-l-15 p-r-15 respon4">
				<h4 class="s-text12 p-b-30">
					Top Kategori
				</h4>

				<ul>
                <?php 
				while ($kProduk = $kategori->fetch_assoc()) { 
					$enIdKategori = encrypt_decrypt('encrypt', $kProduk['id_kategori']);
				?>
					<li class="">
						<a href="product?ct=<?php echo $enIdKategori; ?>" class="s-text7">
                            <?php echo $kProduk['nama_kategori']; ?>
                        </a>
					</li>
                <?php }?>
				</ul>
			</div>

			<div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
				<h4 class="s-text12 p-b-30">
					Link
				</h4>

				<ul>
					<!-- <li class="">
						<a href="#" class="s-text7">
							Search
						</a>
					</li> -->

					<li class="">
						<a href="about" class="s-text7">
							Tentang Kami
						</a>
					</li>

					<li class="">
						<a href="contact" class="s-text7">
							Kontak Kami
						</a>
					</li>

					

					<!-- <li class="">
						<a href="#" class="s-text7">
							Returns
						</a>
					</li> -->
				</ul>
			</div>

			<div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
				<h4 class="s-text12 p-b-30">
					Bantuan
				</h4>

				<ul>
					<li class="">
						<a href="track_order" class="s-text7">
							Lacak Pesanan
						</a>
					</li>

					<li class="">
						<a href="https://www.jne.co.id" class="s-text7" target="_blank">
							Pengiriman
						</a>
					</li>
					
					<li class="">
                    	<a href="refund" class="s-text7">
                    		Kebijakan Pengembalian Barang
                    	</a>
                    </li>
				</ul>
			</div>

			<!-- <div class="w-size8 p-t-30 p-l-15 p-r-15 respon3">
				<h4 class="s-text12 p-b-30">
					Newsletter
				</h4>

				<form>
					<div class="effect1 w-size9">
						<input class="s-text7 bg6 w-full p-b-5" type="text" name="email" placeholder="email@example.com">
						<span class="effect1-line"></span>
					</div>

					<div class="w-size2 p-t-20">
						<button class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4">
							Subscribe
						</button>
					</div>

				</form>
			</div> -->
		</div>

		<div class="t-center p-l-15 p-r-15">
		<p class="s-text8">Didukung dengan</p>
			<a href="https://www.midtrans.com" target="_blank"> 
				<img class="m-r-10" src="images/icons/logo-midtrans.png" alt="MIDTRANS" style="height:100px;">
			</a>
			<a href="https://www.jne.co.id" target="_blank">
				<img class="h-size2 m-l-10" src="images/icons/logo-jne.png" alt="JNE">
			</a>

			<div class="t-center s-text8 p-t-20">
				©
                <script>
                  document.write(new Date().getFullYear())
                </script> MP Store. | Dibuat oleh 
                <a href="mailto:contact@imwumbo.com?subject=Pemesanan-Projek&body=Isi-Pesan-Anda...">Wumbo Group</a>
			</div>
			<!-- This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>  -->
		</div>
	</footer>