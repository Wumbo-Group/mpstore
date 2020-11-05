<?php

use PHPMailer\PHPMailer\PHPMailer;
require 'vendor/autoload.php';

require("mpadmin/koneksidb.php");

function getRandomString($length = 11) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $string = '';

    for ($i = 0; $i < $length; $i++) {
        $string .= $characters[mt_rand(0, strlen($characters) - 1)];
    }

    return $string;
}

function resetPassword($email_user) {
	$email = $email_user;
    global $db;

    $sql = "SELECT * FROM user WHERE email_user=:email";
    $stmt = $db->prepare($sql);
    
    // bind parameter ke query
    $params = array(
        ":email" => $email
    );

    $stmt->execute($params);

    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user) {

      try {
        $random_password = getRandomString();
        $hashed_password = password_hash($random_password, PASSWORD_DEFAULT);

        $sql = "UPDATE user SET password=:password WHERE email_user=:email";
        $stmt = $db->prepare($sql);
        $params = array(
          ":email" => $email,
          ":password" => $hashed_password
        );

        $saved = $stmt->execute($params);

        $mail = new PHPMailer(TRUE);

        try {
             $mail->setFrom('customerservice@mpstore.net', 'CS MP Store');
             $mail->addAddress($user['email_user'], $user['nama_user']);
             $mail->Subject = 'CS MP Store | Informasi Akun MP Store';
             $mail->Body = 
"Assalamualaikum Warohmatullahi Wabarokatuh

Dear Bapak/Ibu ".$user['nama_user'].",

Berikut kata sandi akun MP Store anda:
Email: ".$user['email_user']."
Kata Sandi: ".$random_password."

Anda dapat login dengan akun anda pada link berikut:
https://mpstore.net/mpadmin/login/

SALAM BERKAH MULIA
CS MP Store
";

             /* SMTP parameters. */
             
             /* Tells PHPMailer to use SMTP. */
             $mail->isSMTP();
             
             /* SMTP server address. */
             $mail->Host = 'smtp.hostinger.co.id';

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

        
        //echo '<script type="text/javascript"> alert("Silahkan cek email anda untuk melihat password anda!"); //not showing an alert box.</script>';
        

      } catch (Exception $e){
        echo $e->errorMessage();
      }
    }

}
// $tes = 'bagas_naufal96@yahoo.co.id';
// resetPassword($tes);
// echo 'sukses';

?>