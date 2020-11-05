<?php
use PHPMailer\PHPMailer\PHPMailer;
require '../../vendor/autoload.php';
$mail = new PHPMailer;
$mail->isSMTP();
$mail->SMTPDebug = 2;
$mail->Host = 'smtp.hostinger.com';
$mail->Port = 587;
$mail->SMTPAuth = true;
$mail->Username = 'customerservice@mpstore.net';
$mail->Password = 'muslimpr';
$mail->setFrom('customerservice@mpstore.net', 'CS MP Store');
$mail->addReplyTo('customerservice@mpstore.net', 'CS MP Store');
$mail->addAddress('bagas_naufal96@yahoo.co.id', 'Customer yang Terhormat');
$mail->Subject = 'CS MP Store | Email';
$mail->msgHTML(file_get_contents('message.html'), __DIR__);
$mail->Body = 'This is a plain text message body';
//$mail->addAttachment('test.txt');
if (!$mail->send()) {
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    echo 'The email message was sent.';
}
?>