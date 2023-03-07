<?php
include 'DB_config.php';
// require_once 'footer.php'


if(isset($_POST['username']))
{
    // echo "Done";

$user = $_POST['username'];

$pwd = $_POST['password'];

// echo $user."--".$pwd;

$sql= "SELECT * FROM SKS_CustLogin WHERE CUSTNAME ='$user' AND PASSWORD ='$pwd'";
// $sql= "INSERT INTO `user_login`(`Uname`, `pwd`) VALUES ('x','x')";

 $result = mysqli_query($con,$sql);
 $rows = mysqli_fetch_assoc($result);

if (mysqli_num_rows($result) == 1) {

    $_SESSION['username'] =$user;
    $_SESSION['id'] =$rows['CUSTID'];
    $_SESSION['ShopName'] =$rows['SHOPNAME'];
    $Subdomain=$rows['Subdomain'];

//header('Location:dashboard.php');
header(Location:$Subdomain);
echo $Subdomain."--".$Subdomain;
}else{

    echo '<script>alert("Please check the login details");window.location.replace("https://soulsoftinfotech.in/SKS/index.php");</script>';
    // echo '<script>window.location.replace("https://soulsoftinfotech.in/SKS/index.php")</script>';
    // header('Location:../SKS/index.php');
// echo 'failure'.mysqli_error($con);

}



}

















// require_once('db_config.php');
// //  echo "test";


// if (isset($_POST["username"])){

// $user = $_POST['username'];

// $pwd = $_POST['password'];



// echo $user;



// //DB connection File

// $sql= "SELECT * FROM user_login WHERE Uname = '$user' AND pwd = '$pwd' ";

//  echo $sql;

// $result = mysqli_query($con,$sql);

// $check = mysqli_fetch_array($result);

// if(isset($check)){

// // echo 'success';

// header('Location:dashboard.php');

// }else{

// echo 'failure';

// }

// }

?>