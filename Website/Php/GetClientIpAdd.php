<?php

include 'Connect.php';

// Gets the ip-address
if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
    $ip_address = $_SERVER['HTTP_CLIENT_IP'];
} 
elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
   $ip_address = $_SERVER['HTTP_X_FORWARDED_FOR'];
} 
else {
    $ip_address = $_SERVER['REMOTE_ADDR'];
}

// Sends ip-address of clients to database unless it's the host
if ($ip_address != "::1" && $ip_address != "127.0.0.1") { 
    $sql = "INSERT INTO usersonsite (ipAdd) VALUES ('$ip_address')";
    $result = mysqli_query($conn, $sql);
}

mysqli_close($conn);

// Sends result back to Ajax response
echo $ip_address;

?>