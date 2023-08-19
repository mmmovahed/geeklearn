let template = document.createElement("template");
template.innerHTML = `
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css" />
<link rel="stylesheet" href="./components/Footer/footer.css">
<div>
<h5>کلیه حقوق برای گیک لرن محفوظ است</h5>
</div>
`;

class Footer extends HTMLElement {
  constructor() {
    super();

    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
}

export { Footer };
