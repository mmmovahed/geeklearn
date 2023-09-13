let template = document.createElement("template");
template.innerHTML = `  
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css" />
<link
rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"
/>
<link rel="stylesheet" href="./components/Slider/photoSlider/PhotoSlider.css" />
<div class="container">
<swiper-container class="mySwiper"  navigation="true" space-between="30"
centered-slides="true" autoplay-delay="3000" autoplay-disable-on-interaction="false" loop="true">
<swiper-slide><img src="./assets/image/slider/img1.jpg" /></swiper-slide>
<swiper-slide><img src="./assets/image/slider/img2.jpg" /></swiper-slide>
</swiper-container>
</div>

`;

class PhotoSlider extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
}

export { PhotoSlider };
