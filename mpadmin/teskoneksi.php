   <?php
    require 'koneksi.php';

    $sql = "SELECT * FROM user";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo "id: " . $row["id_user"]. " - Name: " . $row["nama_user"]. " " . $row["email_user"]. "<br>";
        }
    } else {
        echo "0 results";
    }
    $conn->close();
    ?>