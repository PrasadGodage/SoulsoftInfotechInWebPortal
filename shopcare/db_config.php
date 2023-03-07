<?php
$servername = "localhost";
$username = "soulsoftin_root";
$password = "Prasad@321";
$dbname = "soulsoftin_shopcare";

// Create connection
$con = mysqli_connect($servername, $username, $password,$dbname);

// Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
// echo "Connected successfully";
?>