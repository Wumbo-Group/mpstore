<?php

if (isset($_GET['mem'])) {
    $lmem = $_GET['mem'];
    $ambiluser = $conn->query("SELECT * FROM user WHERE username = '$lmem'");
    $akunmember = $ambiluser->num_rows;
    if ($akunmember == 1) {
        $datamember = $ambiluser->fetch_assoc();
        $id_member = $datamember['id_user'];
        $_SESSION['hakmember'] = $id_member;
    }
    else {
        $ambiluser = $conn->query("SELECT * FROM user WHERE lvl = '0' LIMIT 1");
        $datamember = $ambiluser->fetch_assoc();
        $id_member = $datamember['id_user'];
        $_SESSION['hakmember'] = $id_member;
    }
}

else {
    if (isset($_SESSION['hakmember'])) {
        $datauser = $_SESSION['hakmember'];
        $ambiluser = $conn->query("SELECT * FROM user WHERE id_user = '$datauser'");
        $akunmember = $ambiluser->num_rows;
        if ($akunmember == 1) {
            $datamember = $ambiluser->fetch_assoc();
            $id_member = $datamember['id_user'];
            $_SESSION['hakmember'] = $id_member;
        }
        else {
            $ambiluser = $conn->query("SELECT * FROM user WHERE lvl = '0' LIMIT 1");
            $datamember = $ambiluser->fetch_assoc();
            $id_member = $datamember['id_user'];
            $_SESSION['hakmember'] = $id_member;
        }
        
    }
    
    else {
        $ambiluser = $conn->query("SELECT * FROM user WHERE lvl = '0' LIMIT 1");
        $datamember = $ambiluser->fetch_assoc();
        $id_member = $datamember['id_user'];
        $_SESSION['hakmember'] = $id_member;
    }
}

?>