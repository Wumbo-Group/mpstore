<?php

require("../secure.php");

$x = $_POST['x'];
$way = $_POST['way'];

if ($way == 1) {
	$x = encrypt_decrypt('encrypt', $x);
}
echo $x;

?>