<?php

function unicode($nominal) {
    $sub = substr($nominal,-3);
    $sub2 = substr($nominal,-2);
    $sub3 = substr($nominal,-1);

    $total =  rand(100, 999);
    $total2 =  rand(10, 99);
    $total3 =  rand(0, 9);

    if($sub==0){
        $hasil =  $nominal + substr($total,0);
        $result = (int)$hasil;
    } else if($sub2 == 0){
        $hasil = $nominal + substr($total2,0); 
        $no = substr($hasil,-3);
        $result = (int)$hasil;
    } else if($sub3 == 0){
        $hasil = $nominal + substr($total3,0); 
        $no = substr($hasil,-3);
        $result = (int)$hasil;
    }else{
        $result = $nominal;
    }
    return $result;
}