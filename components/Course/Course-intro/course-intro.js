let template = document.createElement("template");
template.innerHTML = ` 
<link rel="stylesheet" href="../components/Course/Course-intro/course-intro.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">

    <div class="course-info">
      <div class="course-image">
        <img src="" alt="" id="image" />
      </div>
      <div class="title">
        <h2 id="title">آموزش جاوا اسکریپت مقدماتی</h2>
        <p id="description"></p>
      </div>
      <div class="prerequisite">
        <h4>پیش نیاز های دوره :</h4>
        <p id=requirements></p>
      </div>
    </div>
`;

class CourseIntro extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
  connectedCallback() {
    this.shadowRoot.querySelector('#image').setAttribute('src',this.getAttribute('img'))
    this.shadowRoot.querySelector('#title').innerHTML = this.getAttribute('title')
    this.shadowRoot.querySelector('#description').innerHTML = this.getAttribute('description')
    this.shadowRoot.querySelector('#requirements').innerHTML = this.getAttribute('requirements')
    
  }
  static observedAttributes() {
    return ["img","title","description","requirements"];
  }
}

export { CourseIntro };
