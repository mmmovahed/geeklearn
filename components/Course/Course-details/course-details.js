let template = document.createElement("template");
template.innerHTML = ` 
<link rel="stylesheet" href="../components/Course/Course-details/course-details.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">

<div class="details-container">
<div class="price-container">
  <i class="fa-solid fa-dollar-sign"></i>
  <p>قیمت دوره :</p>
  <span id="price"></span>
  <span id="unit">تومان</span>
</div>
<div class="details">
  <ul>
    <li class="details-item">
      <i class="fa-solid fa-user"></i>
      <span class="item-title">مدرس دوره:</span>
      <span class="item-value" id="teacher"></span>
    </li>
    <li class="details-item">
      <i class="fa-solid fa-video"></i>
      <span class="item-title">تعداد ویدیو ها:</span>
      <span class="item-value" id="numVideo"></span>
    </li>
    <li class="details-item">
      <i class="fa-regular fa-clock"></i>
      <span class="item-title">مدت زمان دوره:</span>
      <span class="item-value" id="duration"></span>
    </li>
    <li class="details-item">
      <i class="fa-solid fa-layer-group"></i>
      <span class="item-title"> سطح دوره:</span>
      <span class="item-value" id="level"></span>
    </li>
    <li class="details-item">
      <i class="fa-solid fa-circle-info"></i>
      <span class="item-title"> وضعیت دوره:</span>
      <span class="item-value" id="status"></span>
    </li>
    <li class="details-item">
      <i class="fa-solid fa-calendar-days"></i>
      <span class="item-title"> آخرین بروزرسانی:</span>
      <span class="item-value" id="last-update"></span>
    </li>
  </ul>
  <div class="btn-container">
  <button id="my-favorite"><i class="fa-regular fa-bookmark"></i></button>
  <button class="register">ثبت نام در این دوره</button>
</div>
</div>
</div>

`;

class CourseDetails extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    const bookMarkBtn = this.shadowRoot.querySelector("#my-favorite");
    const iconElem = this.shadowRoot.querySelector(".fa-bookmark");
    let flag = true;
    bookMarkBtn.addEventListener("click", () => {
      if (flag) {
        iconElem.className = "fa-solid fa-bookmark";
        flag = false;
      } else {
        iconElem.className = "fa-regular fa-bookmark";
        flag = true;
      }
    });
  }
  connectedCallback() {
    this.shadowRoot.querySelector('#price').innerHTML = this.getAttribute("price")
    this.shadowRoot.querySelector('#teacher').innerHTML = this.getAttribute("teacher")
    this.shadowRoot.querySelector('#numVideo').innerHTML = this.getAttribute("numVideo")
    this.shadowRoot.querySelector('#duration').innerHTML = this.getAttribute("duration")
    this.shadowRoot.querySelector('#level').innerHTML = this.getAttribute("level")
    this.shadowRoot.querySelector('#status').innerHTML = this.getAttribute("status")
    this.shadowRoot.querySelector('#last-update').innerHTML = this.getAttribute("lastUpdate")
  }
  static observedAttributes() {
    return ["price","teacher","numVideo","duration","level","status","lastUpdate"];
  }
}

export { CourseDetails };
