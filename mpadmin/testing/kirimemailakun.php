<?php

function getRandomString($length = 11) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $string = '';

    for ($i = 0; $i < $length; $i++) {
        $string .= $characters[mt_rand(0, strlen($characters) - 1)];
    }

    return $string;
}

ini_set('display_errors', 1 );
error_reporting( E_ALL );
$random_password = getRandomString();
$hashed_password = password_hash($random_password, PASSWORD_DEFAULT);
$from = "customerservice@mpstore.net";
$to = "bagas_naufal96@yahoo.co.id";
$subject = "MP Store | Reset Kata Sandi";
$message = "Assalamualaikum Warohmatullahi Wabarokatuh

Berikut kata sandi anda yang baru:
".$random_password."
".$hashed_password."

Anda dapat login dengan akun anda pada link berikut:
https://mpstore.net/mpadmin/login/

SALAM BERKAH MULIA
CS MP Store
";
$headers = "From:" . $from;
mail($to,$subject,$message, $headers);
?>