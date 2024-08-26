<?php
$name = $_POST ['name'];
$email = $_POST['emailaddress'];
$phone = $_POST['contactnumber'];
$message = $_POST ['body'];

$conn = new mysqli('localhost', '_VaroonK', 'c1jbat0KDLIyQ19B', 'VaroonK_13DIT_php_forms');
if($conn->connect_error){
	die("Error Connecting to Database: " . $conn->connect_error);
}else{
$result = $conn->prepare("insert into contact(name, email, phone, message)
values(?, ?, ?, ?)");
$result->bind_param("ssss", $name, $email, $phone, $message);
$result->execute();
echo "Submission successful, thank you we will be in contact with you soon.";
$result->close();
$conn->close();
}
?>