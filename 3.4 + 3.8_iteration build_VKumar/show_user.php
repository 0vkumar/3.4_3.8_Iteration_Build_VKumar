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
    <title>Beatbank Studio - Show User</title>
    <link rel="stylesheet" href="css/styles.css">
    <style>
        .login-container {
            width: 80%;
            margin: 0 auto;
            padding: 50px;
            text-align: center;
        }
        .logo {
            width: 100px; /* Adjust the width as needed */
            height: auto; /* Maintain aspect ratio */
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
		.users_table{
			max-height: 200px;
			overflow-y: scroll;
		}
    </style>
</head>
<body class="login-body">
    <div class="login-container">
        <img src="images/logo.png" alt="Beatbank Logo" class="logo">
        <h2>Beatbank Users</h2>
        <form action="show_user.php" method="post">
            <a href="profile.php" class="btn">Back</a>
        </form>
		<div class='users_table'>
        <?php
            //connect.php (tells where to connect servername, username, password, dbaseName)
            require "2024_Assessment_mysqli.php";
                
            //create a variable to store sql code for the 'display all users' query
            $query = "SELECT * FROM users";
                                                
            //run the query
            $result = mysqli_query($conn, $query);

            if ($result) {
                echo '<table>
                        <tr>
                            <th>User</th>
                            <th>Password</th>
                        </tr>';
                while ($output = mysqli_fetch_assoc($result)) {
                    echo '<tr>
                            <td>' . $output['User_ID'] . '</td>
                            <td>' . $output['Password'] . '</td>
                          </tr>';
                }
                echo '</table>';
				
            } else {
                echo 'Error: ' . mysqli_error($conn);
            }

            // Close the connection
            mysqli_close($conn);
        ?>
		</div>
    </div>
</body>
</html>
