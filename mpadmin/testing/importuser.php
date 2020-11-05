<?php

/* Namespace alias. */
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

/* If you installed PHPMailer without Composer do this instead: */
require 'PHPMailer\src\Exception.php';
require 'PHPMailer\src\PHPMailer.php';
require 'PHPMailer\src\SMTP.php';

require_once("../koneksidb.php");

function getRandomString($length = 11) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $string = '';

    for ($i = 0; $i < $length; $i++) {
        $string .= $characters[mt_rand(0, strlen($characters) - 1)];
    }

    return $string;
}

$sql = "SELECT * FROM user_import_test";
$stmt = $db->prepare($sql);
$stmt -> execute();
$no = 0;
while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
	$nama = $row['Name'];
	$nama = str_replace("'", "\'", $nama);
	$email = $row['Email'];
	if ($email == '') {
		$email = $no;
	}
	$no_hp = $row['Phone'];
	$alamat = $row['Address'];
	$jenis_kelamin = $row['Jenis_Kelamin'];

	$random_password = getRandomString();
    $hashed_password = password_hash($random_password, PASSWORD_DEFAULT);

    $sql = "SELECT * FROM user_copy ORDER BY id_user DESC";
	$cariKodeMember = $db->prepare($sql);
	$cariKodeMember->execute();
	$cariKMem       = $cariKodeMember->fetch(PDO::FETCH_ASSOC);
	if ($cariKMem) {
		$dataKMem       = $cariKMem['id_user'];
		$nilaiKMem      = substr($dataKMem, 8, 3);
	} else {
		$nilaiKMem = 0;
	}



	$tgl            = date("d");
	$bln            = date("m");
	$thn            = date("y");

	if($no >= 999) {$tgl = sprintf("%02d", ($tgl+1));}

	if (empty($dataKMem)) {
		$IDMember = "MB".$thn.$bln.$tgl."001";

	}
	if ($nilaiKMem == '999'){
		$IDMember = "MB".$thn.$bln.$tgl."001";
	} else {
		$KodeMem        = (int)$nilaiKMem + 1;
	if (strlen($KodeMem) == 1) {
	    $IDMember = "MB".$thn.$bln.$tgl."00".$KodeMem;
	}
	elseif (strlen($KodeMem) == 2) {
	    $IDMember = "MB".$thn.$bln.$tgl."0".$KodeMem;
	}
	else {
	    $IDMember = "MB".$thn.$bln.$tgl.$KodeMem;
	}
	}

	$sql2 = "INSERT INTO user_copy (id_user, nama_user, email_user, username, no_hp, jenis_kelamin, password)
			VALUES ('$IDMember', '$nama', '$email', '$email', '$no_hp', '$jenis_kelamin', '$hashed_password')";
	$stmt2 = $db->prepare($sql2);
	
	$saved = $stmt2 -> execute() or die(print_r($stmt2->errorInfo(), true));

	

	if ($saved) {

		$no++;
		echo ' '.$no;

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
             $mail->addAddress($email, $nama);
             $mail->Subject = 'CS MP Store | Informasi Akun Member MP Store';
             $mail->Body = 
"Assalamualaikum Warohmatullahi Wabarokatuh

Berikut informasi akun member anda pada MP Store:
Email			:	".$email."
Kata sandi	:	".$random_password."

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
        
      }
		

	} else {
		//echo '<script type="text/javascript"> alert("Gagal!"); //not showing an alert box.</script>';
	}



}

?>