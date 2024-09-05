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

    <section id="albums" class="album-covers">
        <div class="container">
            <h2>Trending</h2>
            <div class="album-grid">
                <div class="album-item">
                    <img src="images/albums/album1.png" alt="Album 1 Cover">
                    <p>Album 1</p>
                </div>
                <div class="album-item">
                    <img src="images/albums/album2.png" alt="Album 2 Cover">
                    <p>Album 2</p>
                </div>
                <div class="album-item">
                    <img src="images/albums/album3.png" alt="Album 3 Cover">
                    <p>Album 3</p>
                </div>
                <div class="album-item">
                    <img src="images/albums/album4.png" alt="Album 4 Cover">
                    <p>Album 4</p>
                </div>
                <div class="album-item">
                    <img src="images/albums/album5.png" alt="Album 5 Cover">
                    <p>Album 5</p>
                </div>
                <div class="album-item">
                    <img src="images/albums/album6.png" alt="Album 6 Cover">
                    <p>Album 6</p>
                </div>
                <div class="album-item">
                    <img src="images/albums/album7.png" alt="Album 7 Cover">
                    <p>Album 7</p>
                </div>
                <div class="album-item">
                    <img src="images/albums/album8.png" alt="Album 8 Cover">
                    <p>Album 8</p>
                </div>
            </div>
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
        <p>&copy; Varoon Kumar 2024, Figma, Craiyon (Ai Images). All rights reserved.</p>
    </div>
</footer>

</html>