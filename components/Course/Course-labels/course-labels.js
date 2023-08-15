let template = document.createElement("template");
template.innerHTML = ` 
<link rel="stylesheet" href="../components/Course/Course-labels/course-labels.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">

<div class="labels">
<div class="title">
  <i class="fa-solid fa-tags"></i>
  <span>برچسب ها :</span>
</div>
<div class="labels-container">
  <a class="label" href="#">آموزش فلاتر</a>
  <a class="label" href="#">آموزش فلاتر</a>
  <a class="label" href="#">آموزش فلاتر</a>
</div>
</div>
`;

class CourseLabels extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
}

export { CourseLabels };