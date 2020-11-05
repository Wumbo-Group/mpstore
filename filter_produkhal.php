<?php 
    // session_start();
    // require 'koneksi.php';
    // include 'secure.php';
    // $fiter_id = $_GET['filter_id'];
    // $pecah = explode("-",$fiter_id);
    // $data_sort = $pecah[0];
    // $linkct = $pecah[1];
    // $dataPencarian = $pecah[2];
    // $_SESSION['filt'] = $data_sort;

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
    
        $produk_page = $koneksi->query("SELECT COUNT(*) As total_records FROM produk");
        $total_records = $produk_page->fetch_array();
        $total_records = $total_records['total_records'];
        $total_no_of_pages = ceil($total_records / $total_records_per_page);
        $second_last = $total_no_of_pages - 1;

        $hitungpage = ($page_no - 1) * 12;
    
    if ($data_sort == "1") {
        if ($linkct == "0") {
            $produk_page = $koneksi->query("SELECT COUNT(*) As total_records FROM produk WHERE nama_produk LIKE '%".$dataPencarian."%' AND stok > 0");
            $total_records = $produk_page->fetch_array();
            $total_records = $total_records['total_records'];
            $total_no_of_pages = ceil($total_records / $total_records_per_page);
            $second_last = $total_no_of_pages - 1;

            $produk = $koneksi->query("SELECT * FROM produk WHERE nama_produk LIKE '%".$dataPencarian."%' AND stok > 0 ORDER BY jenis_produk LIMIT $offset, $total_records_per_page");
        }
        else {
            $produk_page = $koneksi->query("SELECT COUNT(*) As total_records FROM produk WHERE id_kategori = '$linkct' AND nama_produk LIKE '%".$dataPencarian."%' AND stok > 0");
            $total_records = $produk_page->fetch_array();
            $total_records = $total_records['total_records'];
            $total_no_of_pages = ceil($total_records / $total_records_per_page);
            $second_last = $total_no_of_pages - 1;

            $produk = $koneksi->query("SELECT * FROM produk WHERE id_kategori = '$linkct' AND nama_produk LIKE '%".$dataPencarian."%' AND stok > 0 ORDER BY jenis_produk LIMIT $offset, $total_records_per_page");
        }
    }
    else if ($data_sort == "2") {
        if ($linkct == "0") {
            $produk_page = $koneksi->query("SELECT COUNT(*) As total_records FROM produk WHERE nama_produk LIKE '%".$dataPencarian."%' AND stok > 0");
            $total_records = $produk_page->fetch_array();
            $total_records = $total_records['total_records'];
            $total_no_of_pages = ceil($total_records / $total_records_per_page);
            $second_last = $total_no_of_pages - 1;

            $produk = $koneksi->query("SELECT * FROM produk WHERE nama_produk LIKE '%".$dataPencarian."%' AND stok > 0 ORDER BY harga ASC LIMIT $offset, $total_records_per_page");
        }
        else {
            $produk_page = $koneksi->query("SELECT COUNT(*) As total_records FROM produk WHERE id_kategori = '$linkct' AND nama_produk LIKE '%".$dataPencarian."%' AND stok > 0");
            $total_records = $produk_page->fetch_array();
            $total_records = $total_records['total_records'];
            $total_no_of_pages = ceil($total_records / $total_records_per_page);
            $second_last = $total_no_of_pages - 1;

            $produk = $koneksi->query("SELECT * FROM produk WHERE id_kategori = '$linkct' AND nama_produk LIKE '%".$dataPencarian."%' AND stok > 0 ORDER BY harga ASC LIMIT $offset, $total_records_per_page");
        }
        
    }
    else if ($data_sort == "3") {
        if ($linkct == "0") {
            $produk_page = $koneksi->query("SELECT COUNT(*) As total_records FROM produk WHERE nama_produk LIKE '%".$dataPencarian."%' AND stok > 0");
            $total_records = $produk_page->fetch_array();
            $total_records = $total_records['total_records'];
            $total_no_of_pages = ceil($total_records / $total_records_per_page);
            $second_last = $total_no_of_pages - 1;

            $produk = $koneksi->query("SELECT * FROM produk WHERE nama_produk LIKE '%".$dataPencarian."%' AND stok > 0 ORDER BY harga DESC LIMIT $offset, $total_records_per_page");
        }
        else {
            $produk_page = $koneksi->query("SELECT COUNT(*) As total_records FROM produk WHERE id_kategori = '$linkct' AND nama_produk LIKE '%".$dataPencarian."%' AND stok > 0");
            $total_records = $produk_page->fetch_array();
            $total_records = $total_records['total_records'];
            $total_no_of_pages = ceil($total_records / $total_records_per_page);
            $second_last = $total_no_of_pages - 1;

            $produk = $koneksi->query("SELECT * FROM produk WHERE id_kategori = '$linkct' AND nama_produk LIKE '%".$dataPencarian."%' AND stok > 0 ORDER BY harga DESC LIMIT $offset, $total_records_per_page");
        }
        
    }
    // $arrayId = array();
    // while ($dProduk = $produk->fetch_assoc()) {
    //     $idProdukLink = encrypt_decrypt('encrypt', $dProduk['id_produk']);
    // echo "
    // <div class='col-6 col-md-6 col-lg-4 p-b-50'>
    //     <div class='block2'>
    //         <div class='block2-img wrap-pic-w of-hidden pos-relative'>
    //             <img src='images/produk/produk_barang/".$dProduk['foto_produk1']."?nocache=".time()."' class='' alt='IMG-PRODUCT'>

    //             <div class='block2-overlay trans-0-4'>
    //                 <div class='block2-btn-addcart w-size1 trans-0-4'>
    //                     <input type='hidden' value=".$dProduk['stok']." name='stoknya'>
                        
    //                     <button name='produk_id' class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4' value='".$dProduk['id_produk']."'>
    //                         LANJUTKAN
    //                     </button>
    //                 </div>
    //             </div>
    //         </div>

    //         <div class='block2-txt p-t-20'>
    //             <a href='product-detail?did=".$idProdukLink."' class='block2-name dis-block s-text3 p-b-5' name='tmbh_nama_produk'>
    //                 ".$dProduk['nama_produk']."
    //             </a>

    //             <span class='block2-price m-text6 p-r-5' name='tmbh_harga_produk'>
    //                 Rp ".number_format($dProduk['harga'])."
    //             </span>
    //             <div class='w-size1 m-t-15 t-center'>
    //                 <a href='product-detail?did=".$idProdukLink."><button name='' class='flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4' value=".$dProduk['id_produk'].">
    //                     Lanjutkan
    //                 </button></a>
    //             </div>
    //         </div>
    //     </div>
    // </div>";
    
 ?>