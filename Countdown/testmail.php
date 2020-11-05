<?php

ini_set('display_errors', 1 );

error_reporting( E_ALL );

$from = "zordawm.stretwear@gmail.com";

$to = "sahid_pratomo@yahoo.com";

$subject = "Checking PHP mail";

$message = "PHP mail works just fine";

$headers = "From:" . $from;

mail($to,$subject,$message, $headers);

echo "The email message was sent.";
?>