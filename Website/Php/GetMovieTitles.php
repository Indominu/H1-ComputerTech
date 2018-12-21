<?php

include 'Connect.php';

$array = array();

$sql = "SELECT movieTitle FROM movies";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {

    // output data of each row
    while ($row = mysqli_fetch_assoc($result)) {

        // add each row returned into an array
        $array[] = $row["movieTitle"];
    }
} else {
    echo "0 results";
}

mysqli_close($conn);

// Sends result back to Ajax response
echo json_encode($array);

?>