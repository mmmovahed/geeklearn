let template = document.createElement("template");
template.innerHTML = `   
<link rel="stylesheet" href="./components/Header/Navbar/Navbar.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">
<div id="navbar-container">
  <div id="navbar">
    <div class="logo-img">
      <a href="https://sabzlearn.ir"><img src="./assets/image/logo.png" alt=""></a>
    </div>
    <div class="menu-container">
      <ul id="menu">
        <li class="item-menu">
         <a href="">فرانت اند<i class="fa-solid fa-caret-down"></i></a>
         <div class="subMenuContainer">
            <ul>
            <li>ری اکت </li>
             <li><a>ری اکت</a></li>
             <li><a>ری اکت</a></li>
             <li><a>ری اکت</a></li>
             <li><a>ری اکت</a></li>
             </ul>
             </div>
             </li>
             <li class="item-menu"><a href="">پایتون <i class="fa-solid fa-caret-down"></i></a>
             <div class="subMenuContainer">
             <ul>
             <li><a>ری اکت</a></li>
             <li><a>ری اکت</a></li>
             <li><a>ری اکت</a></li>
             <li><a>ری اکت</a></li>
             <li><a>ری اکت</a></li>
             <li><a>ری اکت</a></li>
            </ul>
         </div>
        </li>
        <li class="item-menu"><a href="">امنیت<i class="fa-solid fa-caret-down"></i></a>
        <div class="subMenuContainer">
        <ul>
        <li><a>ری اکت</a></li>
        <li><a>ری اکت</a></li>
        <li><a>ری اکت</a></li>
        <li><a>ری اکت</a></li>
        <li><a>ری اکت</a></li>
        <li><a>ری اکت</a></li>
       </ul>
    </div>
        </li>
        <li class="item-menu"><a href="">مقالات</a></li>
      </ul>
    </div>
    <div class="left-navbar">
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
  <div class="resp-menu">
  <div class="bar-icon-container">
  <i class="fa-solid fa-bars" id="toggle-btn"></i>
  <div class="dropdown-menu">
  <ul>
        <li><a href="">فرانت اند</a></li>
        <li><a href="">پایتون</a></li>
        <li><a href="">امنیت</a></li>
        <li><a href="">مقالات</a></li>
      </ul>
  </div>
  </div>
  <div class="logo-img-resp">
      <a href="https://sabzlearn.ir"><img src="./assets/image/logo.png" alt=""></a>
    </div>
    <div class="left-navbar-resp">
      <ul>
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

    // Responsive Menu
    const toggleBtn = this.shadowRoot.querySelector("#toggle-btn");
    const dropDownMenu = this.shadowRoot.querySelector(".dropdown-menu");
    toggleBtn.addEventListener("click", () => {
      dropDownMenu.classList.toggle("open");
      const isOpen = dropDownMenu.classList.contains("open");
      toggleBtn.classList = isOpen ? "fa-solid fa-xmark" : "fa-solid fa-bars";
    });
  }
}

export { Navbar };
