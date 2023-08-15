let template = document.createElement("template");
template.innerHTML = ` 
<link rel="stylesheet" href="../components/Course/Course-intro/course-intro.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">

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
          <li>سی شارپ</li>
        </ul>
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
