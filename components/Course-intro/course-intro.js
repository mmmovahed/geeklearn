let template = document.createElement("template");
template.innerHTML = ` 
<link rel="stylesheet" href="./components/Course-intro/course-intro.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">

<div id="refer-box">
<ul>
    <li class="refer-item"><a href="">معرفی دوره</a></li>
    <li class="refer-item"><a href="">مشاهده دروس</a></li>
    <li class="refer-item"><a href="">نظرات</a></li>
</ul>
</div>

<div class="main">
  <div class="right-side">
    <h2>sds</h2>
  </div>
  <div class="left-side">
    <div class="course-info">
      <div class="course-image">
        <img src="./assets/image/course-img/js-course-img.png" alt="" />
      </div>
      <div class="title">
        <h2>آموزش جاوا اسکریپت مقدماتی</h2>
        <p>‌کتابخانه‌ها باعث افزایش سرعت کدنویسی میشن. در حدی که تو بازار کار هم از کتابخانه های مختلفی برای توسعه پروژه‌ها استفاده میشه. تو این دوره 20 کتابخانه پرکاربرد و پراستفاده ری‌اکت که تو بازار کار برای توسعه پروژه های مختلفی استفاده میشه رو بصورت پروژه محور یاد میگیری. این موضوع هم سرعت کدنویسی شما رو افزایش میده، هم دستتون تو کدنویسی بازتره و هم شانس استخدامیتون رو بالا می‌بره.</p>
      </div>
      <div class="prerequisite">
      <h4>پیش نیاز های دوره :</h4>
        <ul>
             <li>سی شارپ</li>
        </ul>
      </div>
    </div>
    <div class="cart-container">
      <div class="cart">
        <i class="fa-solid fa-user-graduate"></i>
      </div>
      <div class="cart">
        <i class="fa-solid fa-book-open"></i>
      </div>
      <div class="cart">
        <i class="fa-regular fa-clock"></i>
      </div>
      <div class="cart">
        <i class="fa-solid fa-user-tie"></i>
      </div>
    </div>
  </div>
</div>
`;

class CourseIntro extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
}

export { CourseIntro };
