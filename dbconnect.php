<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "uts_prak_pemweb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    echo $conn->connect_error;
}


?>