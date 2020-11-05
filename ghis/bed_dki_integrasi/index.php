<?php
$url = "http://eis.dinkes.jakarta.go.id/api-bed/bed";
$apiBedUser = 3172702;
$apiBedKey = '$2y$10$NLlr3meVHoTz9WeArQymKeFbAZdndQvkjDrwctOiDrgKtiLKWCSK6';

?>

<!DOCTYPE HTML>
<html>

<head>
	<?php include 'header.php'; ?>
</head>

<body>
	<div id="wrapper">
		<!----->
		<?php

		include 'menu.php';

		?>
		<div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="content-main">

				<!--banner-->
				<div class="banner">
					<h2>
						<a href="index.php">API BED DKI Jakarta RS Dharma Nugraha</a>
					</h2>
				</div>
				
				<!--//banner-->
				<div class="banner">
					<div class="grid-form1">
						<h3>Form Kirim Data Bed ke DKI Jakarta</h3>
						<div class="tab-content">
							<form method= "DELETE" action="delete.php">
								<div class="panel-footer">
									<div class="row">
										<div class="col-sm-8 col-sm-offset-2">
											<button class="btn-danger btn" name="delete" id="delete">Delete Data BED di DKI Jakarta</button>
										</div>
									</div>
								</div>
							</form>
							<div class="banner">
								<h2>Note : Semua Data Di Bawah ini harus di isi jika ingin mengirimkan data ke DKI Jakarta</h2>
							</div>
							<div class="tab-pane active" id="horizontal-form">
								<form method="POST" class="form-horizontal" action="kirim.php">
									<div name="pencarian" id="pencarian">



										<!-- <h4 class="col-sm-12">Pengisian Data Pasien</h4> -->
										<div class="form-group">
											<label for="kapasitasVIP" class="col-sm-2 control-label">kapasitas VIP</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasVIP" id="kapasitasVIP" value="" placeholder="kapasitasVIP">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasKELAS1" class="col-sm-2 control-label">kapasitas KELAS1</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasKELAS1" id="kapasitasKELAS1" value="" placeholder="kapasitasKELAS1">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasKELAS2" class="col-sm-2 control-label">kapasitas KELAS2</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasKELAS2" id="kapasitasKELAS2" value="" placeholder="kapasitasKELAS2">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasKELAS3" class="col-sm-2 control-label">kapasitas KELAS3</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasKELAS3" id="kapasitasKELAS3" value="" placeholder="kapasitasKELAS3">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasHCU" class="col-sm-2 control-label">kapasitas HCU</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasHCU" id="kapasitasHCU" value="" placeholder="kapasitasHCU">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasICU" class="col-sm-2 control-label">kapasitas ICU</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasICU" id="kapasitasICU" value="" placeholder="kapasitasICU">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasINV" class="col-sm-2 control-label">kapasitas ICU NEGATIF VENTILATOR</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasINV" id="kapasitasINV" value="" placeholder="kapasitasINV">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasINTV" class="col-sm-2 control-label">kapasitas ICU NEGATIF TANPA VENTILATOR</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasINTV" id="kapasitasINTV" value="" placeholder="kapasitasINTV">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasITNV" class="col-sm-2 control-label">kapasitas ICU TANPA NEGATIF VENTILATOR</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasITNV" id="kapasitasITNV" value="" placeholder="kapasitasITNV">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasITNTV" class="col-sm-2 control-label">kapasitas ICU TANPA NEGATIF TANPA VENTILATOR</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasITNTV" id="kapasitasITNTV" value="" placeholder="kapasitasITNTV">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasISN" class="col-sm-2 control-label">kapasitas ISOLASI NEGATIF</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasISN" id="kapasitasISN" value="" placeholder="kapasitasISN">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasISTN" class="col-sm-2 control-label">kapasitas ISOLASI TANPA NEGATIF</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasISTN" id="kapasitasISTN" value="" placeholder="kapasitasISTN">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasNC" class="col-sm-2 control-label">kapasitas NICU COVID</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasNC" id="kapasitasNC" value="" placeholder="kapasitasNC">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasPEC" class="col-sm-2 control-label">kapasitas PERINA COVID</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasPEC" id="kapasitasPEC" value="" placeholder="kapasitasPEC">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasPIC" class="col-sm-2 control-label">kapasitas PICU COVID</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasPIC" id="kapasitasPIC" value="" placeholder="kapasitasPIC">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasOC" class="col-sm-2 control-label">kapasitas OKE COVID</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasOC" id="kapasitasOC" value="" placeholder="kapasitasOC">
											</div>
										</div>
										<div class="form-group">
											<label for="kapasitasHC" class="col-sm-2 control-label">kapasitas HD COVID</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kapasitasHC" id="kapasitasHC" value="" placeholder="kapasitasHC">
											</div>
										</div>
										<!-- Kosong -->
										<div class="form-group">
											<label for="kosongVIP" class="col-sm-2 control-label">kosong VIP</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongVIP" id="kosongVIP" value="" placeholder="kosongVIP">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongKELAS1" class="col-sm-2 control-label">kosong KELAS1</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongKELAS1" id="kosongKELAS1" value="" placeholder="kosongKELAS1">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongKELAS2" class="col-sm-2 control-label">kosong KELAS2</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongKELAS2" id="kosongKELAS2" value="" placeholder="kosongKELAS2">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongKELAS3" class="col-sm-2 control-label">kosong KELAS3</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongKELAS3" id="kosongKELAS3" value="" placeholder="kosongKELAS3">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongHCU" class="col-sm-2 control-label">kosong HCU</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongHCU" id="kosongHCU" value="" placeholder="kosongHCU">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongICU" class="col-sm-2 control-label">kosong ICU</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongICU" id="kosongICU" value="" placeholder="kosongICU">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongINV" class="col-sm-2 control-label">kosong ICU NEGATIF VENTILATOR</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongINV" id="kosongINV" value="" placeholder="kosongINV">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongINTV" class="col-sm-2 control-label">kosong ICU NEGATIF TANPA VENTILATOR</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongINTV" id="kosongINTV" value="" placeholder="kosongINTV">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongITNV" class="col-sm-2 control-label">kosong ICU TANPA NEGATIF VENTILATOR</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongITNV" id="kosongITNV" value="" placeholder="kosongITNV">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongITNTV" class="col-sm-2 control-label">kosong ICU TANPA NEGATIF TANPA VENTILATOR</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongITNTV" id="kosongITNTV" value="" placeholder="kosongITNTV">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongISN" class="col-sm-2 control-label">kosong ISOLASI NEGATIF</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongISN" id="kosongISN" value="" placeholder="kosongISN">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongISTN" class="col-sm-2 control-label">kosong ISOLASI TANPA NEGATIF</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongISTN" id="kosongISTN" value="" placeholder="kosongISTN">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongNC" class="col-sm-2 control-label">kosong NICU COVID</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongNC" id="kosongNC" value="" placeholder="kosongNC">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongPEC" class="col-sm-2 control-label">kosong PERINA COVID</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongPEC" id="kosongPEC" value="" placeholder="kosongPEC">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongPIC" class="col-sm-2 control-label">kosong PICU COVID</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongPIC" id="kosongPIC" value="" placeholder="kosongPIC">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongOC" class="col-sm-2 control-label">kosong OKE COVID</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongOC" id="kosongOC" value="" placeholder="kosongOC">
											</div>
										</div>
										<div class="form-group">
											<label for="kosongHC" class="col-sm-2 control-label">kosong HD COVID</label>
											<div class="col-sm-8">
												<input type="text" class="form-control1" name="kosongHC" id="kosongHC" value="" placeholder="kosongHC">
											</div>
										</div>


									</div>
								<!-- </form> -->
								<!-- <form method="POST"> -->
									<div class="panel-footer">
										<div class="row">
											<div class="col-sm-8 col-sm-offset-2">
												<button class="btn-primary btn" name="kirim" id="kirim">Kirim</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
		<!--scrolling js-->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!--//scrolling js-->
		<!---->
		<script type="text/javascript">
		</script>

</body>

</html>