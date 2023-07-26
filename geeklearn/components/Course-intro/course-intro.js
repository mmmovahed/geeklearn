let template = document.createElement("template");
template.innerHTML = ` 
<link rel="stylesheet" href="./components/Course-intro/course-intro.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">
<div id="refer-box">
<ul>
    <li class="refer-item"><a href="">معرفی دوره</a></li>
    <li class="refer-item"><a href="">مشاهده دروس</a></li>
    <li class="refer-item"><a href="">نظرات</a></li>
</ul>
</div>
<div id="course-title">
<h3>خانه/ فرانت اند</h3>
<h2>آموزش کتابخانه ری اکت</h2>
</div>
<div class="course-info">
<div class="video-container paused">
    <div class="video-controls-container">
    <div class="timeline-container"></div>
    <div class="controls">
    <button class="play-pause-btn">
    <i class="fa-solid fa-play play-icon"></i>
    <i class="fa-solid fa-pause pause-icon"></i>
    </button>
    </div>
    </div>
    <video id="intro">
        <source type="video/mp4" src="./assets/image/ab.mp4">
        </source>
    </video>
</div>
<div class="course-details">
    <div class="score-category">
        <div>
            <span class="lable-cat">دسته:</span>
            <a href="" id="category">آموزش فرانت اند</a>
        </div>
        <div id="score">
            <p>score</p>
        </div>
    </div>
    <div class="price-container">
        <h3>تومان</h3>
        <h3 id="price">250,000</h3>
    </div>
    <div class="course-features">
        <h4>پشتیبانی کلیه محصولات</h4>
        <h4>پروژه ها محور بودن دوره </h4>
        <h4>برگزاری آزمون </h4>
    </div>
    <div class="btn-container">
        <button id="favorite">افزودن به علاقه مندی ها</button>
        <button id="buy">خرید دوره</button>
    </div>
</div>

</div>
<div class="cart-container">
<div class="cart">
    <i class="fa-solid fa-user-graduate"></i>
</div>
<div class="cart">
    <i class="fa-solid fa-book-open"></i>
</div>
<div class="cart">
    <i class="fa-regular fa-clock"></i>
</div>
<div class="cart">
    <i class="fa-solid fa-user-tie"></i>
</div>

</div>
<div class="course-desc">
<p>‌کتابخانه‌ها باعث افزایش سرعت کدنویسی میشن. در حدی که تو بازار کار هم از کتابخانه های مختلفی برای توسعه پروژه‌ها استفاده میشه. تو این دوره 20 کتابخانه پرکاربرد و پراستفاده ری‌اکت که تو بازار کار برای توسعه پروژه های مختلفی استفاده میشه رو بصورت پروژه محور یاد میگیری. این موضوع هم سرعت کدنویسی شما رو افزایش میده، هم دستتون تو کدنویسی بازتره و هم شانس استخدامیتون رو بالا می‌بره.</p>
</div>`;

class CourseIntro extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    const playPauseBtn = this.shadowRoot.querySelector(".play-pause-btn");
    const video = this.shadowRoot.querySelector("video");
    const videoContainer = this.shadowRoot.querySelector(".video-container");
    document.addEventListener("keydown", (e) => {
      e.key === " " ? e.preventDefault() : true;
      switch (e.key.toLowerCase()) {
        case " ":
        case "k":
          togglePlay();
          break;
      }
    });

    video.addEventListener("click", togglePlay);
    playPauseBtn.addEventListener("click", togglePlay);
    video.addEventListener("play", () => {
      videoContainer.classList.remove("paused");
    });

    video.addEventListener("pause", () => {
      videoContainer.classList.add("paused");
    });

    function togglePlay() {
      video.paused ? video.play() : video.pause();
    }
  }
}

export { CourseIntro };
