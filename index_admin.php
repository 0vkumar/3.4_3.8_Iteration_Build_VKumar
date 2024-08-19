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
    <meta name="viewport" content="width=device-width, initial-scale=2.0">
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
            <h1>Welcome to Beatbank Studio</h1>
            <p>Explore the latest music trends and artists.</p>
        </div>
    </section>

    <section id="songs" class="songs_table">
        <div class="container">
            <h2>Songs List</h2>
            <?php
            require "2024_Assessment_mysqli.php";
            $query = "SELECT * FROM `main`";
            $result = mysqli_query($conn, $query);

            if ($result) {
                echo '<table>
                        <thead>
                            <tr>
                                <th>Song_ID</th>
                                <th>Filename</th>
                                <th>Title</th>
                                <th>Track#</th>
                                <th>Duration</th>
                                <th>Size (Kb)</th>
                                <th>Album_ID</th>
                                <th>Artist_ID</th>
                                <th>Genre_ID</th>
                            </tr>
                        </thead>
                        <tbody>';
                while ($output = mysqli_fetch_assoc($result)) {
                    echo '<tr>
                            <td>' . $output['Song_ID'] . '</td>
                            <td>' . $output['Filename'] . '</td>
                            <td>' . $output['Title'] . '</td>
                            <td>' . $output['Track#'] . '</td>
                            <td>' . $output['Duration'] . '</td>
                            <td>' . $output['Size'] . '</td>
                            <td>' . $output['Album_ID'] . '</td>
                            <td>' . $output['Artist_ID'] . '</td>
                            <td>' . $output['Genre_ID'] . '</td>
                          </tr>';
                }
                echo '</tbody></table>';
            } else {
                echo '<p>Error: ' . mysqli_error($conn) . '</p>';
            }

            mysqli_close($conn);
            ?>
        </div>
    </section>

    <script>
        // Ensures fade-in animation triggers after the page is fully loaded
        document.addEventListener("DOMContentLoaded", function() {
            document.body.classList.add("fade-in");
        });
    </script>
</body>
<footer>
        <div class="container">
            <p>&copy; 2024 Beatbank. All rights reserved.</p>
        </div>
    </footer>

</html>
