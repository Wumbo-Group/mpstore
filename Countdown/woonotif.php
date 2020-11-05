<?php
    $token = '60cfc8f966ff9505e4c89fd72a272ecbef3bba6572a46b6a';
    $nohp = array('082210388103', '089507229772');
    foreach($nohp as $no) {        
        $data = array(
            'phone_no' => $no, 
            'key' => $token, 
            'message' => 'Hello World'
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