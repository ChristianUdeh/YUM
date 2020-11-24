<?php
ob_start();//turns on  output buffering
session_start();

$timezone = date_default_timezone_set("Europe/Warsaw");


$con = mysqli_connect(NULL,"root","","yum");// connection variable
//echo "Error: " . mysqli_error($con);


$query = mysqli_query($con,"INSERT INTO test VALUES('','Chris')");

if(mysqli_connect_errno()){
	echo "failed to connect: " . mysqli_connect_errno();
}

?>
