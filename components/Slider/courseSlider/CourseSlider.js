let template = document.createElement("template");
template.innerHTML = `  
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css" />
<link
rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"
/>
<link rel="stylesheet" href="./components/Slider/courseSlider/CourseSlider.css" />
<div class="container">
<swiper-container class="mySwiper" autoplay-delay="2500" autoplay-disable-on-interaction="false" pagination="true" pagination-type="progressbar" loop="true" rewind="true">
<swiper-slide><course-cart/></swiper-slide>
<swiper-slide><course-cart/></swiper-slide>
<swiper-slide><course-cart/></swiper-slide>
<swiper-slide><course-cart/></swiper-slide>
<swiper-slide><course-cart/></swiper-slide>
<swiper-slide><course-cart/></swiper-slide>
<swiper-slide><course-cart/></swiper-slide>
<swiper-slide><course-cart/></swiper-slide>

</swiper-container>
</div>

<script type="module" src="./assets/js/app.js" defer></script>
`;

class CourseSlider extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    const swiperEl = this.shadowRoot.querySelector(".mySwiper");
    Object.assign(swiperEl, {
      slidesPerView: 5,
      spaceBetween: 0,

      breakpoints: {
        300: {
          slidesPerView: 1,
          spaceBetween: 17,
        },
        475: {
          slidesPerView: 2,
          spaceBetween: 17,
        },
        850: {
          slidesPerView: 3,
          spaceBetween: 17,
        },
        1130: {
          slidesPerView: 4,
          spaceBetween: 17,
        },
      },
    });
    swiperEl.initialize();
  }
}

export { CourseSlider };
