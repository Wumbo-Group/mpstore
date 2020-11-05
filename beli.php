<?php 
session_start();
//mendapatkan id produk dari url
$id_produk = $_GET['bid'];

//jika sudah ada produk itu di keranjang, maka produk itu jumlahnya di +1
if (isset($_SESSION['pembelian'][$id_produk]))
{
	$_SESSION['pembelian'][$id_produk]+=1;
}
//selain itu (blm ada di keranjang), maka produk itu dianggap dibeli 1
else
{
	$_SESSION['pembelian'][$id_produk] = 1;
}

//link ke halaman keranjang
echo "<script type='text/javascript' src='vendor/sweetalert/sweetalert.min.js'></script>";
echo "<script type='text/javascript'>
		$('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
                swal(nameProduct, 'Berhasil ditambahkan !', 'sukses');
			});
		});
	</script>";
echo "<script>location='product';</script>";

 ?>
