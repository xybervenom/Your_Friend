<?php
include "connection.php";

$username = mysqli_real_escape_string($db,$_POST['username']);
$password = mysqli_real_escape_string($db,$_POST['password']);


$sql = "SELECT id FROM users WHERE username = '$username' and password = '$password'";
$result = mysqli_query($db,$sql);
$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
$count = mysqli_num_rows($result);

if ($count == 1){
	header("location: volunteer.php");
}
else{
	echo "<script>alert('Incorrect username or password')</script>";
}
