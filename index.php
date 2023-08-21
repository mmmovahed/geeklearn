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

  <div class="container">
    <site-header></site-header>
    <div class="courses-container">
      <course-cart courseId="./course-page.php?id=1" course-title="آموزش جاوا اسکریپت مقدماتی" image="./assets/image/header-img.jpg" price="3000" teacher="رضا درویش" duration="12:20"></course-cart>
      <course-cart courseId="./course-page.php?id=2" course-title="آموزش جاوا اسکریپت مقدماتی" image="./assets/image/header-img.jpg" price="3000" teacher="رضا درویش" duration="12:20"></course-cart>
      <course-cart courseId="./course-page.php?id=3" course-title="آموزش جاوا اسکریپت مقدماتی" image="./assets/image/header-img.jpg" price="3000" teacher="رضا درویش" duration="12:20"></course-cart>
      <course-cart courseId="./course-page.php?id=4" course-title="آموزش جاوا اسکریپت مقدماتی" image="./assets/image/header-img.jpg" price="2000" teacher="رضا درویش" duration="12:20"></course-cart>
    </div>

    <footer id="footer">
      <site-footer></site-footer>
    </footer>
  </div>
  <script type="module" src="./assets/js/app.js" defer></script>
</body>

</html>
