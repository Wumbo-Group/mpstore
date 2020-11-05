<?php
include 'koneksi.php';

    if (isset($_POST['produk_id']))
    {
        $stok = $_POST['stoknya'];
        $id_produk = $_POST['produk_id'];
        $ambil = $koneksi->query("SELECT * FROM produk WHERE id_produk ='$id_produk'");
        $pecah = $ambil->fetch_assoc();
        if ($pecah['jenis_produk'] == "jasa") {
            $_SESSION['belijasa'] = $id_produk;
            if ($pecah['stok'] > 0){
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
            if (isset($_SESSION['pembelian'][$id_produk]))
            {
                $jumlah = $_SESSION['pembelian'][$id_produk];
                if ($jumlah < $stok) {
                    $_SESSION['pembelian'][$id_produk]+=1;
                    echo "<script>
                            alert('Produk Berhasil Ditambahkan')
                        </script>";
                    echo "<script>location='product'</script>";
                }
                else {
                    echo "<script>alert('Stok Tidak Mencukupi Untuk Jumlah Pesanan Anda')</script>";
                    echo "<script>location='product'</script>";
                }
                
            }
            //selain itu (blm ada di keranjang), maka produk itu dianggap dibeli 1
            else
            {
                $_SESSION['pembelian'][$id_produk] = 1;
                echo "<script>
                        alert('Produk Berhasil Ditambahkan')
                    </script>";
                echo "<script>location='product'</script>";
            }
        }
    }
?>