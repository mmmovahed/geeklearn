let template = document.createElement("template");
template.innerHTML = `  
<link rel="stylesheet" href="./components/Header/Header-top/Header-top.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">
<div class="header-top-container">
  <div id="header-top">
    <div class="quick-acc">
      <ul>
        <li><a href="" class="item">همه دوره ها</a></li>
        <li><a href="" class="item">همکاری با گیک لرن</a></li>
      </ul>
    </div>
    <div class="social-media">
      <span>Geeklearn@gmail.com</span>
      <a href=""><i class="fa-brands fa-telegram icon"></i></a>
      <a href=""><i class="fa-brands fa-instagram icon"></i></a>
      <a href=""><i class="fa-brands fa-youtube icon"></i></a>
    </div>
  </div>
</div>

`;

class HeaderTop extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
}

export  { HeaderTop };


{/* <div class="mobile-head">
<div>
    <a href=""><i class="fa-solid fa-cart-shopping icon"></i></a>
    <a href=""><i class="fa-solid fa-user icon"></i></a>
</div>
<img src="./assets/image/logo.png" alt="" id="logo">
<a href=""><i class="fa-solid fa-bars icon"></i></a>
</div> */}