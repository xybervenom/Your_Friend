<?php  

include "connection.php";

$message = $_POST['message'];
$time = date("Y-m-d h:m:s");

$sql2 = "INSERT INTO messages(message, logs) VALUES ('$message', '$time')";
if (mysqli_query($db, $sql2)){
	header('location: volunteer.php');
}
else{
	echo "ERROR: Could not able to execute $sql2. " . mysqli_error($db);
}