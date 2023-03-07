<?php
session_start();

$servername = "localhost";

$username = "soulsoftin_root";

$password = "Prasad@321";

$dbname = "soulsoftin_SKS_Jagdhane";
// // $dbname = "soulsoftin_shopcare";

$con = mysqli_connect($servername, $username, $password,$dbname);

// $con = mysqli_connect("localhost", "soulsoftin_root", "Prasad@321", "soulsoftin_SKS");

// Check connection

if ($con) {
//  echo "Connected successfully";

}else{

  die("Connection failed: " . mysqli_connect_error());

}



?>