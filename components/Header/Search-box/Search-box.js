let template = document.createElement("template");
template.innerHTML = ` <link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">
<link rel="stylesheet" href="./components/Header/Search-box/Search-box.css">
<div calss="container">
  <div class="search-box">
    <div class="slogan">
      <p>با آکادمی گیک لرن برنامه نویسی رو با خیال راحت یاد بگیر و پیشرفت کن</p>
    </div>
    <div class="search-container">
      <form class="main-search">
        <input type="search" name="" id="search" placeholder="جستجو..." autocomplete="off">
        <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
        <div class="serachResultContainer">
          <div class="searchResult">
            <div class="searchResultItemContainer">
              <h4>آموزش پایتون</h4>
            </div>
            <div class="searchResultItemContainer">
              <h4>آموزش پایتون</h4>
            </div>
          </div>
        </div>
      </form>
    </div>
    <div class="information">
      <div class="details">
        <img src="./assets/image/video-library.png">
        <span class="count">1000</span>
        <span>دقیقه آموزش</span>
      </div>
      <div class="details">
        <img src="./assets/image/teacher-3.png">
        <span class="count">200</span>
        <span>مدرس مجرب</span>
      </div>
      <div class="details">
        <img src="./assets/image/student.png">
        <span class="count">500</span>
        <span>دانشجو</span>
      </div>
    </div>
  </div>
</div>`;

class SearchBox extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.shadowRoot.querySelector("#search").addEventListener("focus", (e) => {
      e.target.parentElement.classList.add("active");
    });
    this.shadowRoot.querySelector("#search").addEventListener("blur", (e) => {
      e.target.parentElement.classList.remove("active");
    });
    if (window.location.href !== "http://geeklearn.ir/") {
      this.shadowRoot.querySelector(".search-box").style.display = "none";
    }
  }
}

export { SearchBox };
