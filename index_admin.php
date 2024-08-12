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
    <title>Beatbank Studio</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body class="fade-in">
    <header>
        <div class="container">
            <img src="images/logo.png" alt="Beatbank Logo" class="logo">
            <nav>
                <ul>
                    <li><a href="index_admin.php">Home</a></li>
                    <li><a href="songtoartists.php">Song to Artists</a></li>
                    <li><a href="songtogenre.php">Song to Genre</a></li>
                    <li><a href="about.php">About</a></li>
                </ul>
                <div class="user-actions">
					<a href="profile.php" class="button">Profile</a>
                    <a href="login.php" class="button">Sign Out</a>
                </div>
            </nav>
        </div>
    </header>

    <section id="home" class="hero">
        <div class="container">
            <h2>Welcome to Beatbank Studio</h2>
            <p>Explore the latest music trends and artists.</p>
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

