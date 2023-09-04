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
      </ul>
    </div>
    <div class="left-navbar">
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

    // Responsive Menu
    const toggleBtn = this.shadowRoot.querySelector("#toggle-btn");
    const dropDownMenu = this.shadowRoot.querySelector(".dropdown-menu");
    toggleBtn.addEventListener("click", () => {
      dropDownMenu.classList.toggle("open");
      const isOpen = dropDownMenu.classList.contains("open");
      toggleBtn.classList = isOpen ? "fa-solid fa-xmark" : "fa-solid fa-bars";
    });

    //Get menu items
    const menuList = this.shadowRoot.querySelector("#menu");

    let menuItems;
    fetch("http://geeklearn.ir/api/categories.php")
      .then((respons) => respons.json())

      .then((data) => {
        menuItems = Object.entries(data);

        menuItems.map((item) => {
          menuList.insertAdjacentHTML(
            "afterbegin",
            `<li class="item-menu">
                <a href="">${
                  item[1].name
                }<i class="fa-solid fa-caret-down"></i></a>
               <div class="subMenuContainer">
                <ul class="subMenuList"> 
                ${item[1].submenus
                  .map(
                    (item) => `<li class="subMenuListItem">${item.name}</li>`
                  )
                  .join("")}
                </ul>
               </div>
              </li>`
          );
        });
      });
  }
}

export { Navbar };
