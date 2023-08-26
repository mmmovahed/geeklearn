<?php
require_once "init.php";
# $x=(isset($_GET["id"]) AND !empty($_GET["id"])) ? ("HI"):($main->redirect("index.php"));
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
        <div class="grid">
            <div class="right-side">
                <course-details price="200,000" teacher="ایمان مدائنی" numVideo=50 duration="12:30:00" level="Elementry" status="درحال برگزاری" lastUpdate="1402/01/02"></course-details>
                <course-labels>
                    <label-element slot="label" title="آموزش فلاتر"></label-element>
                    <label-element slot="label" title="آموزش فلاتر"></label-element>
                    <label-element slot="label" title="آموزش فلاتر"></label-element>
                   
                </course-labels>

            </div>
            <div class="left-side">
                <course-intro img="./assets/image/course-img/js-course-img.jpg" title="آموزش جاوا اسکریپت -مقدماتی" requirements="1-HTML" description="‌کتابخانه‌ها باعث افزایش سرعت کدنویسی میشن. در حدی که تو بازار کار هم از کتابخانه های مختلفی برای توسعه پروژه‌ها استفاده میشه. تو این دوره 20 کتابخانه پرکاربرد و پراستفاده ری‌اکت که تو بازار کار برای توسعه پروژه های مختلفی استفاده میشه رو بصورت پروژه محور یاد میگیری. این موضوع هم سرعت کدنویسی شما رو افزایش میده، هم دستتون تو کدنویسی بازتره و هم شانس استخدامیتون رو بالا می‌بر">
                </course-intro>
                <course-video duration="12:30:00" thumbnail="">
                    <video-item slot="item" number="1" title="شروع دوره" duration="12:50"></video-item>
                </course-video>
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
