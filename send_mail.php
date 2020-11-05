<?php

include 'secure.php';

$plain_txt = "012000001";
echo "Plain Text =" .$plain_txt;

$encrypted_txt = encrypt_decrypt('encrypt', $plain_txt);
echo "Encrypted Text = " .$encrypted_txt;

$decrypted_txt = encrypt_decrypt('decrypt', $encrypted_txt);
echo "Decrypted Text =" .$decrypted_txt;

if ( $plain_txt === $decrypted_txt ) echo "SUCCESS";
else echo "FAILED";



// $to = 'somebody@example.com, somebodyelse@example.com';
// $subject = 'HTML email';

// $message = '
// <html>
// <head>
// <title>HTML email</title>
// </head>
// <body>
// <p>This email contains HTML Tags!</p>
// <table>
// <tr>
// <th>Firstname</th>
// <th>Lastname</th>
// </tr>
// <tr>
// <td>John</td>
// <td>Doe</td>
// </tr>
// </table>
// </body>
// </html>
// ';

// // Always set content-type when sending HTML email
// $headers = 'MIME-Version: 1.0' . '\r\n';
// $headers .= 'Content-type:text/html;charset=UTF-8' . '\r\n';

// // More headers
// $headers .= 'From: <webmaster@example.com>' . '\r\n';
// $headers .= 'Cc: myboss@example.com' . '\r\n';

// mail($to,$subject,$message,$headers);

?>