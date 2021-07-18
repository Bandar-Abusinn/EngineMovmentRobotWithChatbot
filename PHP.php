<?php 
    $dbServerName = "localhost";
    $dbUsername = "root";
    $dbPassword = "";
    $dbName = "directionpanel";
    $conn = mysqli_connect($dbServerName, $dbUsername, $dbPassword, $dbName);

if(mysqli_connect_errno()):
printf("connect error: %s \n", mysqli_connect_errno());
exit();
endif;

 ?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">

</head>

<body>

    <?php
    if(mysqli_connect_errno()){ 
    die('Connection Failed : '.mysqli_connect_errno());
}else {
   
    if(isset($_POST['Forward'])){
        $Query = "INSERT INTO directions VALUES ('F') ";
        $direction = "FORWARD";
    }
    elseif (isset($_POST['Backward'])){
        $Query = "INSERT INTO directions VALUES ('B') ";
        $direction = "BACKWARD";
    }
    elseif (isset($_POST['Left'])){
        $Query = "INSERT INTO directions VALUES ('L') ";
        $direction = "LEFT";
    }
    elseif (isset($_POST['Stop'])){
        $Query = "INSERT INTO directions VALUES ('S') ";
        $direction = "Stop";
    }
    elseif (isset($_POST['Right'])){
        $Query = "INSERT INTO directions VALUES ('R') ";
        $direction = "RIGHT";
    }
    
    $result = mysqli_query($conn, $Query);
     
        echo "The Robot is ";
        if($direction != "Stop"){
            echo " moving to $direction";
        }else {
            echo "Stopped";
        }
}
    
    ?>

</body>

</html>

<?php
mysqli_close($conn);
?>
