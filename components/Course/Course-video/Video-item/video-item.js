let template = document.createElement("template");
template.innerHTML = ` 
<link rel="stylesheet" href="../components/Course/Course-video/Video-item/video-item.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">

<li>
 <span class="count"></span>
 <span class="title"></span> 
 <span class="duration"></span>
</li>

`;

class VideoItem extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
  connectedCallback() {
    this.shadowRoot.querySelector('.count').innerHTML = this.getAttribute('number')
    this.shadowRoot.querySelector('.title').innerHTML = this.getAttribute('title')
    this.shadowRoot.querySelector('.duration').innerHTML = this.getAttribute('duration')
   
  }
  static observedAttributes() {
    return ["number","title","duration"];
  }
}

export { VideoItem };
