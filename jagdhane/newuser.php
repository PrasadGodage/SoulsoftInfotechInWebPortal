<?php
include 'DB_config.php';

if(isset($_GET['Uname']) && isset($_GET['pwd']) && ($_GET['ShopName']) && isset($_GET['Contact']) && isset($_GET['Address']))
{
$Uname= $_GET['Uname'];
$pwd= $_GET['pwd'];
$Contact= $_GET['Contact'];
$Address= $_GET['Address'];
$ShopName= $_GET['ShopName'];

$sql= "SELECT * FROM user_login WHERE Uname ='$Uname'";
$result = mysqli_query($con,$sql);

  if ($result->num_rows > 0)
  {
  echo '<script>alert("User Already Exist.......!");</script>';
  }
  else
  {
        $sql = "INSERT INTO `user_login`(`pwd`, `Uname`, `Contact`, `Address`, `ShopName`) VALUES ('$pwd', '$Uname', '$Contact', '$Address', '$ShopName')";
      
      if (mysqli_query($con, $sql)) 
      {
      //   echo "New record created successfully";
      $last_id = mysqli_insert_id($con);
      echo $last_id;
      } 
      else 
      {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
      }
  }
}
else
{
    echo "Waiting for input";
}

?>