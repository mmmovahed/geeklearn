let template = document.createElement("template");
template.innerHTML = `  
<link rel="stylesheet" href="../components/Alert/alert.css">
<link rel="stylesheet" href="../assets/font/font-awesome/all.min.css">
<div class="container">
<div class="status"><i class="fa-solid "></i></i></div>
<p class="title-notif">این یک پیغام آزمایشی است.</p>
<button class="ss"><i class="fa-solid fa-xmark"></i></button>
<div class="prograss-bar"></div>
</div>


`;

class Alert extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));

    // let style = getComputedStyle(alertContainer);
    // if (style.getPropertyValue("flex"))
  }

  connectedCallback() {
    const alertContainer = this.shadowRoot.querySelector(".container");
    const iconElem = this.shadowRoot.querySelector(".fa-solid");
    alertContainer.style.display = "flex";

    this.shadowRoot.querySelector(".title-notif").innerHTML =
      this.getAttribute("title");
    iconElem.className += this.getAttribute("icon");

    if (iconElem.classList.contains("fa-xmark")) {
      this.shadowRoot.querySelector(".status").style.backgroundColor =
        "rgb(204, 62, 62)";
    }

    this.shadowRoot.querySelector("button").addEventListener("click", () => {
      alertContainer.style.display = "none";
    });
    setTimeout(() => {
      alertContainer.style.display = "none";
    }, 5000);
  }

  static observedAttributes() {
    return ["title", "icon"];
  }
}

export { Alert };
