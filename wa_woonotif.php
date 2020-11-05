<?php

$tokenmp = '60cfc8f966ff9505e4c89fd72a272ecbef3bba6572a46b6a'; //081317100235
$tokenaogas = '2fca6939c802e95b73c9533535c34042ec4cd2c5535f07f7'; //081317100245
$tokensamara = 'e4ea7527a5b8ad43f29de7a9db54a8701e0e83e73d1b5c5a'; //081388346272 - samara
$tokenppa = 'fc290006c97b13b40f3ce77474550ad26967901c52c58eeb'; //081317100234
$tokenumroh = 'a4818d4745d7ba0f1d647bd271efbbe3aca08d69343574f1'; //081314656726
$tokenmpstore = '760d01a009c2241431b3aa28e174d569142512a972a8ca20'; //081932760904
$tokenseminar = 'a4818d4745d7ba0f1d647bd271efbbe3aca08d69343574f1'; //081314656726

function wa_mp($nohp, $pesan){
    global $tokenmp;
    $token = $tokenmp;
    $data = array(
        'phone_no' => $nohp, 
        'key' => $token, 
        'message' => $pesan
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

function wa_agoas($nohp, $pesan){
    global $tokenagoas;
    $token = $tokenaogas;
    $data = array(
        'phone_no' => $nohp, 
        'key' => $token, 
        'message' => $pesan
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

function wa_samara($nohp, $pesan){
    global $tokensamara;
    $token = $tokensamara;
    $data = array(
        'phone_no' => $nohp, 
        'key' => $token, 
        'message' => $pesan
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

function wa_ppa($nohp, $pesan){
    global $tokenppa;
    $token = $tokenppa;
    $data = array(
        'phone_no' => $nohp, 
        'key' => $token, 
        'message' => $pesan
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

function wa_umroh($nohp, $pesan){
    global $tokenumroh;
    $token = $tokenumroh;
    $data = array(
        'phone_no' => $nohp, 
        'key' => $token, 
        'message' => $pesan
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

function wa_mpstore($nohp, $pesan){
    global $tokenmpstore;
    $token = $tokenmpstore;
    $data = array(
        'phone_no' => $nohp, 
        'key' => $token, 
        'message' => $pesan
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

function wa_seminar($nohp, $pesan){
    global $tokenseminar;
    $token = $tokenseminar;
    $data = array(
        'phone_no' => $nohp, 
        'key' => $token, 
        'message' => $pesan
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

//wa_umroh('082210388103', 'tes');

?>