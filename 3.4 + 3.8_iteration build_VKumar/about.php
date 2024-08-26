<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - Beatbank Studio</title>
    <link rel="stylesheet" href="css/styles.css">
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
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
            <nav>
                <div class="user-actions">
                    <a onclick="goBack()" class="button">Back</a>
                </div>
            </nav>
        </div>
    </header>

    <section id="about" class="about">
        <div class="container">
            <h2>About Us</h2>
			<h3>Welcome to Beatbank Studio!</h3>
			<p>Your ultimate destination for discovering and streaming the freshest music.</p>
            <p>Established in 2024, we bring the world’s best beats to your fingertips, offering a curated collection of tracks from emerging artists and established stars.</p> 
            <p>Whether you’re into chart-toppers or hidden gems, Beatbank Studio delivers a seamless listening experience tailored to your unique taste.</p>
			<p>Dive into a world of sound where every track is a new adventure.</p>
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
