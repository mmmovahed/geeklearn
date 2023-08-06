let template = document.createElement("template");
template.innerHTML = `    
<link rel="stylesheet" href="./components/Course/course.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css" />
<div class="course">
            <div>
              <a href="./course-page.php">
                <img
                  src=""
                  alt=""
                  class="img-course"
                />
              </a>
            </div>
            <div class="info">
            <a href="./course-page.php" class="course-title"></a>
            <div class="teacher-container">
            <i class="fa-solid fa-user"></i>
            <a href="./course-page.php" class="course-teacher"></a>
            </div>
            <div class="details">
                <div class="duration-container">
                <i class="fa-regular fa-clock"></i>
                <span id="course-duration"></span>
                </div>
                  <div class="price-container">
                    <span id="price"></span>
                    <span >تومان</span>
                  </div>
              </div>
            </div>
</div>`;

class Course extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }

  connectedCallback() {
    this.shadowRoot.querySelector("#price").innerHTML =
      this.getAttribute("price");
    this.shadowRoot.querySelector(".course-teacher").innerHTML =
      this.getAttribute("teacher");
    this.shadowRoot.querySelector(".course-title").innerHTML =
      this.getAttribute("course-title");
    this.shadowRoot
      .querySelector(".img-course")
      .setAttribute("src", this.getAttribute("image"));
      
      this.shadowRoot.querySelector("#course-duration").innerHTML =
      this.getAttribute("duration");
  }
  

  static observedAttributes() {
    return ["course-title", "image", "price", "teacher","duration"];
  }
}

export { Course };
