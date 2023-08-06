
let template = document.createElement("template");
template.innerHTML = `  
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css" />
<link rel="stylesheet" href="./components/Header/Header.css">
<div class="header">

  <site-header-top></site-header-top>
  <site-navbar></site-navbar>
  <site-search-box></site-search-box>

</div>
<script type="module" src="./assets/js/app.js" defer></script>
`;

class Header extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    if(window.location.href !== "http://geeklearn.ir/" )
    {
      this.shadowRoot.querySelector(".header").className += "-course"
      
    }
  }
}

export { Header };
