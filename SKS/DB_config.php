<?php
session_start();

$servername = "localhost";

$username = "soulsoftin_root";

$password = "soulshiv@1987#Soul";

//$dbname = "soulsoftin_Web_SksCustomer";
// // $dbname = "soulsoftin_shopcare";

$con = mysqli_connect($servername, $username, $password);

// $con = mysqli_connect("localhost", "soulsoftin_root", "Prasad@321", "soulsoftin_SKS");

// Check connection

if ($con) {
//echo "Connected successfully";

}else{

  die("Connection failed: " . mysqli_connect_error());

}

?>