<?php
require_once "../../init.php";
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../../assets/css/login.css" />
    <link rel="stylesheet" href="../../assets/font/font-awesome/all.min.css" />
    <title>ورود</title>
  </head>
  <body>
    <section class="main">
      <!-- Login container -->
      <div class="container">
        <!-- image -->
        <div class="img-box">
          <img class="img" src="../../assets/image/photo-Login.jpg" alt="pic" />
        </div>
        <!-- form -->
        <div class="login-box">
          <h2 class="">ورود</h2>
            <?php
            $main=new helper\Frontend();
            if($main->post())
                $main->login(post("email"),post("password"));
            ?>
          <form id="form" method="post">

            <input id="email" type="email" name="email" placeholder="ایمیل" />
            <span class="modal"></span>
            <div class="pass-container">
              <i id="eye" class="fa-solid fa-eye"></i>
              <input
                id="password"
                type="password"
                name="password"
                placeholder="رمز"
              />
              <span class="modal modal-pass"></span>
            </div>
            <button id="submit" class="btn" type="submit" value="1">ورود</button>
          </form>

          <div class="line">
            <hr />
            <p class="">OR</p>
            <hr />
          </div>

          <button class="btn google-login">ورود با حساب گوگل</button>
          <p class="forget-pass">رمزتان را فراموش کردید؟</p>

          <div class="reg-container">
            <button class="btn">
              <a href="../register/Register.html"> ثبت نام</a>
            </button>
            <p>حساب کاربری دارید؟</p>
          </div>
        </div>
      </div>
    </section>
    <script src="../../assets/js/login.js"></script>
  </body>
</html>