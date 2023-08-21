let template = document.createElement("template");
template.innerHTML = ` 
<link rel="stylesheet" href="../components/Course/Course-labels/Label/label.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">


  <a class="label" href="#"></a>

`;

class Label extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
  connectedCallback() {
    const lableElement = this.shadowRoot.querySelector(".label");
    lableElement.innerHTML = this.getAttribute("title");
  }
  static observedAttributes() {
    return ["title"];
  }
}

export { Label };
