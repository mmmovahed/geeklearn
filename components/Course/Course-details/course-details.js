


let template = document.createElement("template");
template.innerHTML = ` 
<link rel="stylesheet" href="../components/Course/Course-details/course-details.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">

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
  <div class="btn-container">
  <button class="register">ثبت نام در این دوره</button>
  <button id="my-favorite">افزودن به علاقه مندی ها</button>
</div>
</div>
</div>

`;

class CourseDetails extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
}

export { CourseDetails };
