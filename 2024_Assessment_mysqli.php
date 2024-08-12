<?php
//This is your Database connection file. You may use this file or create your own.
//Never code your normal user name and password into your database connection file.
//Keep the password contained in this file private.

$conn = new mysqli('localhost', '_VaroonK', 'c1jbat0KDLIyQ19B', 'VaroonK_2024_Assessment');
if($conn->connect_error){
	die("Error Connecting to Database: " . $conn->connect_error);
}
?>