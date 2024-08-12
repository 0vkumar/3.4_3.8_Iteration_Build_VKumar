<?php
session_start();
if (!isset($_SESSION['login_user'])) {
    header("location:login.php");
    exit();
} else {
    $User = $_SESSION['login_user'];
}
if ($User == "Graeme" or $User == "graeme") {
    // User is allowed
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
    <title>Profile - Beatbank Studio</title>
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
<body class="fade-in">
    <header>
        <div class="container">
            <img src="images/logo.png" alt="Beatbank Logo" class="logo">
            <div class="user-actions">
                <a href="index_admin.php" class="button">Home</a>
                <a href="login.php" class="button">Sign Out</a>
            </div>
        </div>
    </header>

    <section id="about" class="about">
        <div class="container">
            <h2>Admin</h2>
            <p>Add & Edit Users</p>
            <button type="button" class="btn signup" onclick="window.location.href='show_user.php';">Show User</button>
            <button type="button" class="btn signup" onclick="window.location.href='add_user.php';">Add User</button>
            <button type="button" class="btn signup" onclick="window.location.href='update_username.php';">Update Username</button>
            <button type="button" class="btn signup" onclick="window.location.href='update_userpassword.php';">Update User Password</button>
            <button type="button" class="btn signup" onclick="window.location.href='delete_user.php';">Delete User</button>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 Beatbank. All rights reserved.</p>
        </div>
    </footer>

    <script>
        // Ensures fade-in animation triggers after the page is fully loaded
        document.addEventListener("DOMContentLoaded", function() {
            document.body.classList.add("fade-in");
        });
    </script>
</body>
</html>
