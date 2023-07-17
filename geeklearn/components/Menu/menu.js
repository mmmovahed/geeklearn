let template = document.createElement('template')
template.innerHTML = `   
<link rel="stylesheet" href="./components/Menu/menu.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">
<div id="masthead">
<div class="left-menu">
    <ul>
        <li>
            <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
        </li>
        <li>
            <a href=""><i class="fa-solid fa-user"></i></a>
            <li>
            <form class="search-menu">
            <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
            <input type="search" name="" id="search-input" placeholder="جستجو...">
            </form>
            </li>
        </li>
    </ul>
</div>
<div id="menu">
    <ul>
        <li class="item-menu"><a href="">مقالات</a></li>
        <li class="item-menu"><a href="">امنیت</a></li>
        <li class="item-menu"><a href="">پایتون</a></li>
        <li class="item-menu"><a href="">فرانت اند</a></li>
    </ul>
</div>
<div class="logo-img">
   <a href="https://sabzlearn.ir"><img src="./assets/image/logo.png" alt=""></a>
</div>
</div>`


class Menu extends HTMLElement {
    constructor(){
        super()
        this.attachShadow({mode: 'open'})
        this.shadowRoot.appendChild(template.content.cloneNode(true))
    }
}

export {Menu}