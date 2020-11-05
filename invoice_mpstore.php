<?php
session_start();
include 'koneksi.php';
if (isset($_GET['ki'])) {
    $kodeInvoice = $_GET['ki'];
    include 'secure.php';
    $kodeInv = encrypt_decrypt('decrypt', $kodeInvoice);
	$ambil = $koneksi->query("SELECT * FROM `order` WHERE id_order = '$kodeInv'");
	$pecah = $ambil->fetch_assoc();
	$ambilDetail = $koneksi->query("SELECT * FROM order_detail WHERE id_order = '$kodeInv'");
	
?>

<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="utf-8">
    <title>Nota Mpstore</title>
    <link rel="stylesheet" href="css/styleprint.css" media="all" />
    </head>
    <body>
        <header class="clearfix">
            <div id="logo">
                <img src="images/icons/logo_mp.png">
            </div>
            <h1>INVOICE <?php echo $kodeInv; ?></h1>
            <div id="company" class="clearfix">
                <div>MPSTORE</div>
                <div>Depok Kelapa Dua Cimanggis<br /> 16521, Indonesia</div>
                <div>(602) 519-0450</div>
                <div><a href="mailto:company@example.com">company@example.com</a></div>
            </div>
            <div id="project">
                <div><span>NAMA</span> <?php echo $pecah['nama_pembeli']; ?></div>
                <div><span>ALAMAT</span> <?php echo $pecah['alamat_pembeli']; ?></div>
                <div><span>EMAIL</span> <a href="mailto:john@example.com"><?php echo $pecah['email_pembeli']; ?></a></div>
                <div><span>TGL BELI</span> <?php echo $pecah['tgl_beli']; ?></div>
                <div><span>TGL BAYAR</span> <?php echo $pecah['tgl_bayar']; ?></div>
            </div>
        </header>
        <main>
            <table style="font-size:12px;">
                <thead style="text-align:center;">
                    <tr>
                        <th class="service">FOTO</th>
                        <th class="service">NAMA PRODUK</th>
                        <th class="service">CATATAN</th>
                        <th class="service">HARGA</th>
                        <th class="service">JMLH</th>
                        <th class="service">TOTAL</th>
                    </tr>
                </thead>
                
                <tbody>
                    <?php 
                    $subTotal = 0;
                    while ($pecahDetail = $ambilDetail->fetch_assoc()) { 
                        $dataID = $pecahDetail['id_produk'];
                        $dataPro = $koneksi->query("SELECT * FROM produk WHERE id_produk = '$dataID'");
                        $pecahDataPro = $dataPro->fetch_assoc();
                        $subTotal += $pecahDetail['total'];
                        ?>
                    <tr>
                        <td class="service"><img src="images/produk/produk_barang/<?php echo $pecahDataPro['foto_produk1']; ?>.jpg?nocache=<?php echo time(); ?>" alt="<?php echo $pecahDataPro['nama_produk']; ?>" style="width:70px;"></td>
                        <td class="service"><?php echo $pecahDataPro['nama_produk']; ?></td>
                        <td class="service"><?php echo $pecahDetail['catatan']; ?></td>
                        <td class="service">Rp <?php echo number_format($pecahDataPro['harga']); ?></td>
                        <td class="service"><?php echo $pecahDetail['jumlah_beli']; ?></td>
                        <td class="service">Rp <?php echo number_format($pecahDetail['total']); ?></td>
                    </tr>
                    <?php } ?>
                    <tr>
                        <td colspan="5">SUBTOTAL</td>
                        <td class="">Rp <?php echo number_format($subTotal); ?></td>
                    </tr>
                    <tr>
                        <td colspan="5">ONGKIR</td>
                        <td class="">Rp <?php echo number_format($pecah['ongkir']); ?></td>
                    </tr>
                    <tr>
                        <td colspan="5" class="grand total" style="font-size:12px;">TOTAL</td>
                        <td class="grand total" style="font-size:12px;">Rp <?php echo number_format($pecah['total_bayar']); ?></td>
                    </tr>
                </tbody>
                
            </table>
            <div id="notices" style="margin-top:100px; text-align:center;">
                <p>Status Pembayaran</p>
                
                <?php 
                if ($pecah['status_pembayaran'] == "sukses") {
                    echo "<img src='images/lunas.png' alt='' style='width:250px;'>";
                } 
                else {
                    echo "Pending";
                }
                ?>
            </div>
        </main>
        <footer>
        Invoice was created on a computer and is valid without the signature and seal.
        </footer>
    </body>
</html>

<?php

    
}
?>