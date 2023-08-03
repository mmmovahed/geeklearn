let template = document.createElement("template");
template.innerHTML = `  
<link rel="stylesheet" href="./components/Header/header.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">
<div class="mobile-head">
<div>
    <a href=""><i class="fa-solid fa-cart-shopping icon"></i></a>
    <a href=""><i class="fa-solid fa-user icon"></i></a>
</div>
<img src="./assets/image/logo.png" alt="" id="logo">
<a href=""><i class="fa-solid fa-bars icon"></i></a>
</div>
<div class="top-bar">
<div class="social-media">
    <a href=""><i class="fa-brands fa-telegram icon"></i></a>     
    <a href=""><i class="fa-brands fa-instagram icon"></i></a>     
    <a href=""><i class="fa-brands fa-youtube icon"></i></a>          
    <span style="margin-left: .5em;">Geeklearn@gmail.com</span>
</div>
<div class="quick-acc">
    <ul>
    <li><a href="" class="item">همه دوره ها</a></li>
    <li><a href="" class="item">همکاری با گیک لرن</a></li>
    </ul>
</div>
</div>
`;

class Header extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
}

export { Header };
