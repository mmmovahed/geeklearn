<?php
require_once "init.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/course-page.css" />
    <link rel="stylesheet" href="./assets/font/font-awesome/all.min.css" />

    <title>title</title>
</head>

<body>
    <div class="container">
        <site-header></site-header>
        <quick-access-nav></quick-access-nav>
        <div class="grid">
            <div class="right-side">
                <course-details></course-details>
                <course-labels></course-labels>
            </div>
            <div class="left-side">
                <course-intro></course-intro>
                <course-video></course-video>
                <course-comments>
            </div>


        </div>

        <footer id="footer">
            <site-footer></site-footer>
        </footer>
    </div>
    <script type="module" src="./assets/js/app.js"></script>
</body>

</html>