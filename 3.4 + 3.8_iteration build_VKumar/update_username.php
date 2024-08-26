<?php
session_start();
if (!isset($_SESSION['login_user'])) {
    header("location:login.php");
    exit();
} else {
    $User = $_SESSION['login_user'];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beatbank Studio - Update Username</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="login-body">
    <div class="login-container">
        <img src="images/logo.png" alt="Beatbank Logo" class="logo">
        <h2>Update Beatbank Username</h2>
        <form action="update_username.php" method="post">
            <div class="input-group">
                <label for="ExistingUserName">Existing User Name:</label>
                <input type="text" id="ExistingUserName" name="ExistingUserName" placeholder="Enter existing user name" required>
            </div>
            <div class="input-group">
                <label for="NewUserName">New User Name:</label>
                <input type="text" id="NewUserName" name="NewUserName" placeholder="Enter new user name" required>
            </div>
            <button type="submit" class="btn">Update Username</button>
            <a href="profile.php" class="btn">Back</a>
        </form>
        <?php
        require "2024_Assessment_mysqli.php";

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $ExistingUserID = $_POST['ExistingUserName'] ?? '';
            $NewUserID = $_POST['NewUserName'] ?? '';

            if (!empty($ExistingUserID) && !empty($NewUserID)) {
                // Prepare and bind
                $stmt = $conn->prepare("UPDATE users SET User_ID = ? WHERE User_ID = ?");
                $stmt->bind_param("ss", $NewUserID, $ExistingUserID);

                if ($stmt->execute()) {
                    echo "<p class='grey'>Record updated</p>";
                } else {
                    echo "<p class='grey'>Error updating record: " . $stmt->error . "</p>";
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
