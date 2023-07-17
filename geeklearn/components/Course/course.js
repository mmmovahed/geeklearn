let template = document.createElement("template");
template.innerHTML = `    
<link rel="stylesheet" href="./components/Course/course.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css" />
<div class="course">
            <div>
              <a href="">
                <img
                  src=""
                  alt=""
                  class="img-course"
                />
              </a>
            </div>
            <div class="info">
              <span class="category"></span>
              <a href="" class="title-course"></a>
              <div class="details">
                <div class="student-container">
                  <span id="count-students"></span>
                  <span>دانشجو</span>
                </div>
                <div class="price-container">
                  <span>تومان</span>
                  <span id="price"></span>
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

  connectedCallback (){
    this.shadowRoot.querySelector('#price').innerHTML = this.getAttribute('price')
    this.shadowRoot.querySelector('.category').innerHTML = this.getAttribute('category')
    this.shadowRoot.querySelector('#count-students').innerHTML = this.getAttribute('studentNum')
    this.shadowRoot.querySelector('.title-course').innerHTML = this.getAttribute('title')
    this.shadowRoot.querySelector('.img-course').setAttribute('src', this.getAttribute('image'))

  }

  static observedAttributes() {
     return ['title','image','price','studentNum']
  }
}

export { Course };
