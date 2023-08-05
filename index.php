<?php
require_once "init.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="./assets/css/style.css" />
  <link rel="stylesheet" href="./assets/font/font-awesome/all.min.css" />
  <title>GeekLearn</title>
</head>

<body>

  <div class="main">
    <site-header></site-header>

    <main id="main">
      <course-container></course-container>
    </main>
    <footer id="footer">
      <site-footer></site-footer>
    </footer>
  </div>
  <script type="module" src="./assets/js/app.js" defer></script>
</body>

</html>