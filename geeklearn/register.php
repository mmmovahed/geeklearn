<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./assets/css/register.css" />
    <link rel="stylesheet" href="./assets/font/font-awesome/all.min.css" />
    <title>ثبت نام</title>
  </head>
  <body>
    <section class="main">
      <!-- Login container -->
      <div class="container">
        <!-- image -->
        <div class="img-box">
          <img class="img" src="./assets/image/photo-Login.jpg" alt="" />
        </div>
        <!-- form -->
        <div class="register-box">
          <h2 class="">ثبت نام</h2>
          <form id="form" action="" method="post" class="">
            <input
              class="first-name"
              id="username"
              type="text"
              name="fname"
              placeholder="نام کاربری"
            />
            <span class="modal"></span>
            <input
              class=""
              id="phone"
              type="text"
              name="phone"
              placeholder="شماره موبایل"
            />
            <span class="modal"></span>
            <input
              class=""
              id="email"
              type="text"
              name="email"
              placeholder="ایمیل"
            />
            <span class="modal"></span>
            <div class="pass-container">
              <i class="fa-solid fa-eye" id="eye"></i>
              <input
                class=""
                id="password"
                type="password"
                name="password"
                placeholder="رمز"
              />
              <span class="modal modal-pass"></span>
            </div>
            

            <input
              class=""
              id="password2"
              type="password"
              name="password"
              placeholder="تکرار رمز"
            />
            <span class="modal"></span>

            <button id="submit" class="btn" type="submit">ثبت نام</button>
          </form>

          <div class="line">
            <hr class="" />
            <p class="">OR</p>
            <hr class="" />
          </div>
          <div class="log-container">
            <button class="btn"><a href="login.php">ورود</a></button>
            <p>حساب کاربری دارید؟</p>
          </div>
        </div>
      </div>
    </section>
    <script src="./assets/js/register.js"></script>
  </body>
</html>
