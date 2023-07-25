<?php
include "init.php";
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
    <div class="container">
      <div id="top-page">
        <div id="header">
          <site-header></site-header>
        </div>
        <div id="navbar">
          <site-menu></site-menu>
        </div>
        <div id="search-box">
          <site-search-box></site-search-box>
        </div>
      </div>
      <main id="main">
        <div class="courses-container">
          <site-course title="JS Course" image="./assets/image/header-img.jpg" category="امنیت" price="25,000" studentNum="17"></site-course>
          <site-course title="JS Course" image="./assets/image/header-img.jpg" category="امنیت" price="25,000" studentNum="17"></site-course>
          <site-course title="JS Course" image="./assets/image/header-img.jpg" category="امنیت" price="25,000" studentNum="17"></site-course>
         </div>
      </main>
      <footer id="footer">
       <site-footer></site-footer>
      </footer>
    </div>
    <script type="module" src="./assets/js/app.js"></script>
  </body>
</html>
