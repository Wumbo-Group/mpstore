<div class="header-cart header-dropdown">
    <ul class="header-cart-wrapitem">
    <?php 
    
    if (empty($_SESSION["pembelian"]) OR !isset($_SESSION["pembelian"]))
    { ?>
        <div class="header-cart-total text-center">
            Kosong
        </div>
    <?php }
    else {
    ?>
    <?php
    $subHargaTotal = 0;
    foreach ($_SESSION["pembelian"] as $id_produk => $jumlah): ?>
    <?php
        $ambilPembelian = $koneksi->query("SELECT * FROM produk WHERE id_produk = '$id_produk'");
        $aPembelian = $ambilPembelian->fetch_assoc();
        $subHarga = $aPembelian["harga"] * $jumlah;
        $idDetil = encrypt_decrypt('encrypt', $aPembelian['id_produk']);
        
    ?>
        <li class="header-cart-item">
            <div class="header-cart-item-img">
                <a href="hapus_produk?hid=<?php echo $id_produk; ?>"><img src="images/produk/produk_barang/<?php echo $aPembelian["foto_produk1"]; ?>?nocache=<?php echo time(); ?>" alt="IMG"></a>
            </div>

            <div class="header-cart-item-txt">
                <a href="product-detail?did=<?php echo $idDetil ?>" class="header-cart-item-name">
                    <?php echo $aPembelian["nama_produk"]; ?>
                </a>

                <span class="header-cart-item-info">
                    <?php echo $jumlah." x ".number_format($aPembelian["harga"]); ?>
                </span>
            </div>
        </li>
        <?php
        $subHargaTotal += $subHarga; ?>
        <?php
        endforeach
        ?>

    </ul>

    <div class="header-cart-total" style="text-align:center;">
        <?php echo "Total : Rp ". number_format($subHargaTotal); ?>
    </div>
    <?php } ?>

    <div class="header-cart-buttons">
        <div class="col-lg-12">
            <a href="cart" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4" style="text-align:center;">
                Lihat Detil
            </a>
        </div>
    </div>
</div>