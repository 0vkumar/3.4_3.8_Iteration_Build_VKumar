<?php
session_start();
if (!isset($_SESSION['login_user'])) {
    header("location:login.php");
} else {
    $User = $_SESSION['login_user'];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beatbank Studio - Delete User</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="login-body">
    <div class="login-container">
        <img src="images/logo.png" alt="Beatbank Logo" class="logo">
        <h2>Enter Username to Delete User</h2>
        <form method="post" action="delete_user.php">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="UserName" required>
            </div>
            <button type="submit" class="btn">Delete User</button>
            <a href="profile.php" class="btn">Back</a>
        </form>

        <?php
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            require "2024_Assessment_mysqli.php";
            echo "<p class='grey'>Connected to server</p>";

            $UserID = $_POST['UserName'];

            // Create a variable to store SQL code for the 'Delete Users' query
            $deletequery = "DELETE FROM users WHERE User_ID = '$UserID'";

            if (mysqli_query($conn, $deletequery)) {
                echo "<h3>Record deleted</h3>";
            } else {
                echo "<h3>Error deleting record:</h3>";
            }
        }
        ?>
    </div>
</body>
</html>
