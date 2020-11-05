<?php
$to      = 'nobody@example.com';
$subject = 'the subject';
$message = 'hello';
$headers = 'From: webmaster@example.com' . "\r\n" .
    'Reply-To: webmaster@example.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $message, $headers);
?> 

['rajaongkir']['results'][0]['code'][1]

array(1) { 
    ["rajaongkir"]=> array(5) { 
        ["query"]=> array(4) { 
            ["origin"]=> string(2) "22" ["destination"]=> string(3) "151" ["weight"]=> int(5000) ["courier"]=> string(3) "jne" 
        } 
        ["status"]=> array(2) { 
            ["code"]=> int(200) ["description"]=> string(2) "OK" 
        } 
        ["origin_details"]=> array(6) { 
            ["city_id"]=> string(2) "22" ["province_id"]=> string(1) "9" ["province"]=> string(10) "Jawa Barat" ["type"]=> string(9) "Kabupaten" ["city_name"]=> string(7) "Bandung" ["postal_code"]=> string(5) "40311" 
        } 
        ["destination_details"]=> array(6) { ["city_id"]=> string(3) "151" ["province_id"]=> string(1) "6" ["province"]=> string(11) "DKI Jakarta" ["type"]=> string(4) "Kota" ["city_name"]=> string(13) "Jakarta Barat" ["postal_code"]=> string(5) "11220" 
        } 
        ["results"]=> array(1) { 
            [0]=> array(3) { 
                ["code"]=> string(3) "jne" ["name"]=> string(28) "Jalur Nugraha Ekakurir (JNE)" ["costs"]=> array(3) { 
                    [0]=> array(3) { 
                        ["service"]=> string(3) "OKE" ["description"]=> string(21) "Ongkos Kirim Ekonomis" ["cost"]=> array(1) { 
                            [0]=> array(3) { 
                                ["value"]=> int(50000) ["etd"]=> string(3) "2-3" ["note"]=> string(0) "" 
                            } 
                        } 
                    } 
                    [1]=> array(3) { 
                        ["service"]=> string(3) "REG" ["description"]=> string(15) "Layanan Reguler" ["cost"]=> array(1) { 
                            [0]=> array(3) { 
                                ["value"]=> int(55000) ["etd"]=> string(3) "1-2" ["note"]=> string(0) "" 
                            } 
                        } 
                    } 
                    [2]=> array(3) { 
                        ["service"]=> string(3) "YES" ["description"]=> string(17) "Yakin Esok Sampai" ["cost"]=> array(1) { 
                            [0]=> array(3) {
                                ["value"]=> int(75000) ["etd"]=> string(3) "1-1" ["note"]=> string(0) "" 
                            } 
                        } 
                    } 
                } 
            } 
        } 
    } 
}