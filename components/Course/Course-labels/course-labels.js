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
<slot name="label"/>
</div>
</div>
<script type="module" src="./assets/js/app.js" defer></script>
`;

class CourseLabels extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
}

export { CourseLabels };
