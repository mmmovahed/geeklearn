let template = document.createElement('template')
template.innerHTML = ` <link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">
<link rel="stylesheet" href="./components/Searchbox/searchbox.css">
<div class="search-box">
<div class="slogan">
    <p>با آکادمی گیک لرن برنامه نویسی رو با خیال راحت یاد بگیر و پیشرفت کن</p>
</div>
<div class="search-container">
    <form class="main-search">
        <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
        <input type="search" name="" id="search" placeholder="جستجو...">
        </form>
</div>
</div>`


class Searchbox extends HTMLElement {
    constructor(){
        super()
        this.attachShadow({mode: 'open'})
        this.shadowRoot.appendChild(template.content.cloneNode(true))
    }
}

export {Searchbox}