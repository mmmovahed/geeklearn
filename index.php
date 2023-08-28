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
        <?php
        $result = $main->showTheLatestCourses();
        if ($result->num_rows > 0)
            while($row = $result->fetch_assoc()) {
            $cost=$row["cost"];
                echo "<course-cart courseId='./course-page.php?id=$row[id]' course-title='".$row["title"]."' image=$row[thumbnail] price=".$cost." teacher='".$row["teacher_name"]."' duration='".$row["time"]."' teacherId='./teacher-page.php?id=".$row["teacher_id"]."' ></course-cart>";
            }

        ?>

    </div>

    <footer id="footer">
      <site-footer></site-footer>
    </footer>
  </div>
  <script type="module" src="./assets/js/app.js" defer></script>
</body>

</html>
