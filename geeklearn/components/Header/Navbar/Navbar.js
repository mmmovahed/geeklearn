let template = document.createElement("template");
template.innerHTML = `   
<link rel="stylesheet" href="./components/Header/Navbar/Navbar.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">
<div id="navbar">
  <div id="masthead">
   <div class="logo-img">
      <a href="https://sabzlearn.ir"><img src="./assets/image/logo.png" alt=""></a>
    </div>
    <div id="menu">
      <ul>
        <li class="item-menu"><a href="">فرانت اند</a></li>
        <li class="item-menu"><a href="">پایتون</a></li>
        <li class="item-menu"><a href="">امنیت</a></li>
        <li class="item-menu"><a href="">مقالات</a></li>
      </ul>
    </div>
    <div class="left-menu">
      <ul>
      <li>
      <form class="search-menu">
      <input type="search" name="" id="search-input" placeholder="جستجو..." autocomplete="off">
        <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
      </form>
    </li>
        <li>
          <a href=""><i class="fa-solid fa-user"></i></a>
        </li>
        <li>
          <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
        </li>
      </ul>
    </div>
    
  </div>
</div>`;

class Navbar extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.shadowRoot
      .querySelector("#search-input")
      .addEventListener("focus", (e) => {
        e.target.parentElement.style.outline = "1px solid gray";
      });
    this.shadowRoot
      .querySelector("#search-input")
      .addEventListener("blur", (e) => {
        e.target.parentElement.style.outline = "none";
      });
  }
}

export { Navbar };
