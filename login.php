<?php
ob_start();
session_start();
$error = NULL;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Connect to the database
    require "2024_Assessment_mysqli.php";

    // Username and password sent from form
    $myusername = mysqli_real_escape_string($conn, $_POST['username']);
    $mypassword = mysqli_real_escape_string($conn, $_POST['password']);

    // Query to check for normal user
    $query = "SELECT User_ID FROM users WHERE User_ID = '$myusername' and Password = '$mypassword'";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    $count = mysqli_num_rows($result);

    // Special check for admin user "Graeme"
    if (($myusername == "Graeme" or $myusername == "graeme") && $mypassword == "Dojustly") {
        $_SESSION['login_user'] = $myusername;
        header("location: ./index_admin.php");
    } elseif ($count == 1) {
        $_SESSION['login_user'] = $myusername;
        header("location: ./index.php");
    } else {
        $error = "ERROR! Your Login Name or Password is invalid";
    }
}

ob_end_flush();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Beatbank</title>
    <link rel="stylesheet" href="css/styles.css">
    <style>
        /* Fade-in effect */
        .fade-in {
            opacity: 0;
            animation: fadeInAnimation ease 1.5s;
            animation-fill-mode: forwards;
        }

        @keyframes fadeInAnimation {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
    </style>
</head>
<body class="login-body fade-in">
    <div class="login-container">
        <img src="images/logo.png" alt="Beatbank Logo" class="logo">
        <h2>Welcome back.</h2>
        <form method="post">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="btn">Login</button>
        </form>
        <?php
        if ($error) {
            echo "<p style='color: red;'>$error</p>";
        }
        ?>
    </div>
</body>
</html>
