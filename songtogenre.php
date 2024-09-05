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
    <title>Beatbank Studio - Song to Genre</title>
    <link rel="stylesheet" href="css/styles.css">
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
    <style>
        .login-container {
            width: 80%;
            margin: 0 auto;
            padding: 50px;
            text-align: center;
        }
        .logo {
            width: 100px;
            height: auto;
            margin-bottom: 20px;
        }
        h2 {
            margin-bottom: 70px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: transparent;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
            background-color: transparent;
        }
        th {
            background-color: transparent;
        }
        tr:nth-child(even) {
            background-color: transparent;
        }
        tr:nth-child(odd) {
            background-color: transparent;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
        }
        .songs_table {
            max-height: 200px;
            overflow-y: scroll;
        }

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
    <div class="login-container">
        <img src="images/logo.png" alt="Beatbank Logo" class="logo">
        <h2>Song to Genre</h2>
        <form action="show_user.php" method="post">
            <a onclick="goBack()" class="btn">Back</a>
        </form>
        <div class="songs_table">
        <?php
            require "2024_Assessment_mysqli.php";
                
            $query = "SELECT main.Song_ID AS Song_ID, main.Title AS Title, genre.Genre AS Genre, artist.Artist AS Artist
                      FROM main
                      JOIN genre ON main.Genre_ID = genre.ID
                      JOIN songtoartist ON main.Song_ID = songtoartist.Song_ID
                      JOIN artist ON songtoartist.Artist_ID = artist.ID
                      ORDER BY genre.Genre ASC, artist.Artist ASC;";
                                                              
            $result = mysqli_query($conn, $query);

            if ($result) {
                echo '<table>
                        <tr>
                            <th>Song_ID</th>
                            <th>Title</th>
                            <th>Genre</th>
                            <th>Artist</th>
                        </tr>';
                while ($output = mysqli_fetch_assoc($result)) {
                    echo '<tr>
                            <td>' . $output['Song_ID'] . '</td>
                            <td>' . $output['Title'] . '</td>
                            <td>' . $output['Genre'] . '</td>
                            <td>' . $output['Artist'] . '</td>
                          </tr>';
                }
                echo '</table>';
            } else {
                echo 'Error: ' . mysqli_error($conn);
            }

            mysqli_close($conn);
        ?>
        </div>
    </div>

    <script>
        // Ensures fade-in animation triggers after the page is fully loaded
        document.addEventListener("DOMContentLoaded", function() {
            document.body.classList.add("fade-in");
        });
    </script>
</body>
</html>
