<?php 
    $dbServerName = "localhost";
    $dbUsername = "root";
    $dbPassword = "";
    $dbName = "robot_database";
    $conn = mysqli_connect($dbServerName, $dbUsername, $dbPassword, $dbName);
 ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>test</title>
</head>
<body>
    <?php
   $motor1=$_POST["motor1"];
   $motor2=$_POST["motor2"];
   $motor3=$_POST["motor3"];
   $motor4=$_POST["motor4"];
   $motor5=$_POST["motor5"];
   $motor6=$_POST["motor6"];
   

   
    if (in_array ("Save", $_POST)){
        $Status = 0;
        
    }else if (in_array("Play", $_POST)){
        $Status = 1;
    }
          
   $query="insert into 	robot_database(motor1,motor2,motor3,motor4,motor5,motor6,Status)values({$motor1},{$motor2},{$motor3},{$motor4},{$motor5},{$motor6},{$Status})";
    
   $result=mysqli_query($conn,$query);

   if ($result){
       echo "Data added sucessfully";
   }else{
       die("Can't connect to the database".mysqli_connect_error());
   }
  
    ?>
    
</body>
</html>

<?php
mysqli_close($conn);
?>