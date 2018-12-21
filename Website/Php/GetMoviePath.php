<?php

if (isset($_GET['moviePath']))
{
    include 'Connect.php';
    
    $chosenMovie = $_GET['moviePath'];

    $sql = "SELECT moviePath FROM movies WHERE movieTitle = '$chosenMovie'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {

        while ($row = mysqli_fetch_assoc($result)) {
    
            // Sends result back to Ajax response
            echo $row["moviePath"];
        }
    } else {
        echo "0 results";
    }
    
    mysqli_close($conn);
}

?>