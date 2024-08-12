<?php
session_start();
if (!isset($_SESSION['login_user'])) {
    header("location:login.php");
    exit();
} else {
    $User = $_SESSION['login_user'];
}
if ($User == "Graeme" or $User == "graeme") {
} else {
	header("location: index.php");
    exit();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beatbank Studio - Add User</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="login-body">
    <div class="login-container">
        <img src="images/logo.png" alt="Beatbank Logo" class="logo">
        <h2>Add user to Beatbank</h2>
        <form action="add_user.php" method="post">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter user name" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter user password" required>
            </div>
            <button type="submit" class="btn">Add User</button>
            <a href="profile.php" class="btn">Back</a>
        </form>
        <?php
        //connect.php (tells where to connect servername, username, password, dbaseName)
        require "2024_Assessment_mysqli.php";

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $UserID = $_POST['username'] ?? '';
            $PW = $_POST['password'] ?? '';

            if (!empty($UserID) && !empty($PW)) {
                // Prepare and bind
                $stmt = $conn->prepare("INSERT INTO users (User_ID, Password) VALUES (?, ?)");
                $stmt->bind_param("ss", $UserID, $PW);

                if ($stmt->execute()) {
                    echo "<p class='grey'>Record inserted:</p>";
                } else {
                    echo "<p class='grey'>Error inserting record: " . $stmt->error . "</p>";
                }
                $stmt->close();
            } else {
                echo "<p class='grey'>Please fill in both fields.</p>";
            }
        }

        $conn->close();
        ?>
    </div>
</body>
</html>
