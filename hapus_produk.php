<?php
session_start();
if (isset($_GET['hid'])) {
    unset($_SESSION['pembelian'][$_GET['hid']]);
}
echo "<script>location='product';</script>";

?>