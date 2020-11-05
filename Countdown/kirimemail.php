<?php
ini_set('display_errors', 1 );
error_reporting( E_ALL );
$from = "mpstore.net@gmail.com";
$to = "bagas_naufal96@yahoo.co.id";
$subject = "Invoice Mpstore";
$message = "Terimakasih telah berbelanja di MPSTORE
Berikut terlampir link invoce digital.
Silahkan Kunjungi URL berikut : https://www.mpstore.net/invoice_mpstore?ki=";
$headers = "From:" . $from;
mail($to,$subject,$message, $headers);
?>