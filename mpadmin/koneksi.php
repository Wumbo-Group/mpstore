   <?php
    // $servername = "localhost";
    // $username = "root";
    // $password = "";
    // $dbname = "mpstore";

    $servername = "localhost";
    $username = "u982728152_adminmp";
    $password = "ZqFEcQnz";
    $dbname = "u982728152_mpstore";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    ?>