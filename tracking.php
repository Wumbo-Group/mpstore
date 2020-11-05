<?php
session_start();
include 'koneksi.php';
$idTrack = $_GET['idtrack'];
$ambil = $koneksi->query("SELECT * FROM `order` WHERE id_order = '$idTrack'");
$cocokan = $ambil->num_rows;

if ($cocokan == 1) {
    $pecah = $ambil->fetch_assoc();
    echo "
    <div class='pos-relative'>
        <div class='wrap-table-shopping-cart bgwhite'>
            <table class='table'>
                <tr class='table-head'>
                    <th>No Pesanan</th>
                    <th>Nama Pembeli</th>
                    <th>Tgl Beli</th>
                    <th>Jumlah Pembayaran</th>
                    <th>Status Pembayaran</th>
                    <th>Status Pengiriman</th>
                    <th>Resi Pengiriman</th>
                </tr>
                <tr class='table-row'>
                    <td>".$pecah['id_order']."</td>
                    <td>".$pecah['nama_pembeli']."</td>
                    <td>".$pecah['tgl_beli']."</td>
                    <td>".$pecah['total_bayar']."</td>
                    <td>".$pecah['status_pembayaran']."</td>
                    <td>".$pecah['status_pengiriman']."</td>
                    <td>".$pecah['resie_pengiriman']."</td>
                </tr>
            </table>
        </div>
        <p>Apabila Barang Anda Sudah Sampai, Silahkan Tekan Tombol Konfirmasi</p>

        <form method='post'>
        <div class='size10 m-t-20 t-center'>
            <input type='hidden' value='".$pecah['id_order']."' name='konfirm'>
            <input type='hidden' value='".$pecah['status_pembayaran']."' name='spem'>
            
            <button class='flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4' name='konfirmasi' id='konfirmasi'>
                Konfirmasi
            </button>
        </div>
        </form>

    </div>";
}

else {
    echo "
    <div class='t-center'>
    Data Tidak Ditemukan
    </div>";
}
?>