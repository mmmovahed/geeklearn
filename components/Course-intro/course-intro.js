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
    <div class="details-container">
      <div class="price-container">
       <i class="fa-solid fa-dollar-sign"></i>
       <p>قیمت دوره :</p>
       <span id="price">20,000</span>
       <span id="unit">تومان</span>
      </div>
      <div class="details">
        <ul>
         <li class="details-item">
          <i class="fa-solid fa-user"></i>
          <span class="item-title">مدرس دوره:</span>
          <span class="item-value">ایمان مدائنی</span>
         </li>
         <li class="details-item">
         <i class="fa-solid fa-video"></i>
         <span class="item-title">تعداد ویدیو ها:</span>
         <span class="item-value">89</span>
         </li>
         <li class="details-item">
         <i class="fa-regular fa-clock"></i>
         <span class="item-title">مدت زمان دوره:</span>
         <span class="item-value">18:12:00</span>
         </li>
         <li class="details-item">
         <i class="fa-solid fa-layer-group"></i>
         <span class="item-title"> سطح دوره:</span>
         <span class="item-value">متوسط</span>
         </li>
         <li class="details-item">
         <i class="fa-solid fa-circle-info"></i>
         <span class="item-title"> وضعیت دوره:</span>
         <span class="item-value">در حال برگزاری</span>
         </li>
         <li class="details-item">
         <i class="fa-solid fa-calendar-days"></i>
         <span class="item-title">تاریخ آخرین بروزرسانی:</span>
         <span class="item-value">1402/05/15</span>
         </li>
        </ul>
        <button class="register">ثبت نام در این دوره</button>
      </div>
    </div>
  </div>
  <div class="left-side">
    <div class="course-info">
      <div class="course-image">
        <img src="./assets/image/course-img/js-course-img.jpg" alt="" />
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
