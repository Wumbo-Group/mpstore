<?php

    function woonotif($no_tujuan, $no_pengirim, $pesan) {
        $data = array(
            'phone_no' => $no_tujuan, 
            'key' => $no_pengirim, 
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

    $tokenAll = array(  'agoas'     => '2fca6939c802e95b73c9533535c34042ec4cd2c5535f07f7', 
                        'mp'        => '60cfc8f966ff9505e4c89fd72a272ecbef3bba6572a46b6a',
                        'seminar'   => 'a4818d4745d7ba0f1d647bd271efbbe3aca08d69343574f1',
                        'ppa'       => 'fc290006c97b13b40f3ce77474550ad26967901c52c58eeb');

?>