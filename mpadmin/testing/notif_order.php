<?php

require '../koneksidb.php';

//$query = "SELECT * FROM `order` WHERE status_pembayaran='Pending'"; 
$query = "  SELECT *
            FROM `order` AS o LEFT JOIN `user` AS u ON o.id_member = u.id_user
            WHERE status_pembayaran='Pending' AND level='0'";
$stmt = $db->prepare($query);
$stmt->execute();

while($row = $stmt->fetch(PDO::FETCH_ASSOC)){

    setlocale(LC_ALL, 'IND');
    $tgl_beli = date("d-m-Y", strtotime($row['tgl_beli']));  
    $tgl_deadline = date_create($row['tgl_beli']);
    date_add($tgl_deadline,date_interval_create_from_date_string("10 days"));
    $tgl_deadline = $tgl_deadline->format('d-m-Y');


    $token = '60cfc8f966ff9505e4c89fd72a272ecbef3bba6572a46b6a';
    $data = array(
        'phone_no' => $row['nohp_pembeli'], 
        'key' => $token, 
        'message' => 
'Assalamu\'alaikum Warohmatullahi Wabarokatuh

Bagaimana kabar Bapak/Ibu ' . $row['nama_pembeli'] . ' hari ini? 
Semoga diberikan kesehatan dan kemudahan dalam beraktivitas ya. 

Izin mengingatkan, bahwa batas akhir pembayaran transaksi anda nomor #'. $row['id_order'] .' adalah '. $tgl_deadline .'. 🙏

Untuk detail dan instruksi pembayaran, silahkan cek email dari kami pada tanggal '. $tgl_beli .'.

*SALAM BERKAH MULIA*
CS MP Store'
    );
    $data_string = json_encode($data);
    $ch = curl_init('http://send.woonotif.com/api/send_message');
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_VERBOSE, 0);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0);
    curl_setopt($ch, CURLOPT_TIMEOUT, 15);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/json',
        'Content-Length: ' . strlen($data_string)
        )
    );
    $result = curl_exec($ch);    
}

//$query = "SELECT * FROM `order` WHERE status_pembayaran='Pending'"; 
$query = "  SELECT *
            FROM `order` AS o LEFT JOIN `user` AS u ON o.id_member = u.id_user
            WHERE status_pembayaran='Pending' AND level!='0'";
$stmt = $db->prepare($query);
$stmt->execute();

while($row = $stmt->fetch(PDO::FETCH_ASSOC)){

    setlocale(LC_ALL, 'IND');
    $tgl_beli = date("d-m-Y", strtotime($row['tgl_beli']));  
    $tgl_deadline = date_create($row['tgl_beli']);
    date_add($tgl_deadline,date_interval_create_from_date_string("10 days"));
    $tgl_deadline = $tgl_deadline->format('d-m-Y');

    $token = '60cfc8f966ff9505e4c89fd72a272ecbef3bba6572a46b6a';
    $data = array(
        'phone_no' => $row['no_hp'], 
        'key' => $token, 
        'message' => 
'Assalamu\'alaikum Warohmatullahi Wabarokatuh

Bagaimana kabar Bapak/Ibu ' . $row['nama_user'] . ' hari ini? 
Semoga diberikan kesehatan dan kemudahan dalam beraktivitas ya. 

Izin mengingatkan, bahwa batas akhir pembayaran transaksi nomor #'. $row['id_order'] .'pada toko anda adalah '. $tgl_deadline .'. 🙏

Berikut data dari pesanan tersebut:
Nama Lengkap Pembeli : '. $row['nama_pembeli'] .'
No. WhatsApp Pembeli : '. $row['nohp_pembeli'] .'
Email Pembeli : '. $row['email_pembeli'] .'
Alamat Pembeli : '. $row['alamat'] .'
Total Pembelian : Rp. '. number_format($row['total_bayar'],0,',','.') .'

Apabila transaksi tersebut berhasil, anda akan mendapatkan reward sebesar Rp. '. number_format($row['total_reward_member'],0,',','.') .'

Untuk detail dan instruksi pembayaran, pembeli dapat memeriksa email dari MP Store pada tanggal '. $tgl_beli .'.

*SALAM BERKAH MULIA*
CS MP Store'
    );
    $data_string = json_encode($data);
    $ch = curl_init('http://send.woonotif.com/api/send_message');
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
    curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_VERBOSE, 0);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0);
    curl_setopt($ch, CURLOPT_TIMEOUT, 15);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/json',
        'Content-Length: ' . strlen($data_string)
        )
    );
    $result = curl_exec($ch);    
}

?>