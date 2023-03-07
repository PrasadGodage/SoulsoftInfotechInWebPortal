<?php
  session_start(); 
  session_destroy(); 
  header("location:../SKS/index.php"); 
  exit();
?>