<?php

/* Namespace alias. */
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

//  Include the Composer generated autoload.php file. 
// require 'C:\xampp\composer\vendor\autoload.php';

/* If you installed PHPMailer without Composer do this instead: */

require 'PHPMailer\src\Exception.php';
require 'PHPMailer\src\PHPMailer.php';
require 'PHPMailer\src\SMTP.php';



/* Create a new PHPMailer object. Passing TRUE to the constructor enables exceptions. */
$mail = new PHPMailer(TRUE);

/* Open the try/catch block. */
try {
   $mail->setFrom('customerservice@mpstore.net', 'CS MP Store');
   $mail->addAddress('bagas_naufal96@yahoo.co.id', 'Customer yang Terhormat');
   $mail->Subject = 'CS MP Store | Email';
   $mail->Body = 
   'There is a great disturbance in the Force.';

   /* SMTP parameters. */
   
   /* Tells PHPMailer to use SMTP. */
   $mail->isSMTP();
   
   /* SMTP server address. */
   $mail->Host = 'smtp.hostinger.co.id ';

   /* Use SMTP authentication. */
   $mail->SMTPAuth = TRUE;
   
   /* Set the encryption system. */
   $mail->SMTPSecure = 'tls';
   
   /* SMTP authentication username. */
   $mail->Username = 'customerservice@mpstore.net';
   
   /* SMTP authentication password. */
   $mail->Password = 'muslimpr';
   
   /* Set the SMTP port. */
   $mail->Port = 587;

   $mail->send();
}
catch (Exception $e)
{
   /* PHPMailer exception. */
   echo $e->errorMessage();
}
catch (\Exception $e)
{
   /* PHP exception (note the backslash to select the global namespace Exception class). */
   echo $e->getMessage();
}