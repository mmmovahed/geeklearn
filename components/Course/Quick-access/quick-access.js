
let template = document.createElement("template");
template.innerHTML = `
<link rel="stylesheet" href="../components/Course/Quick-access/quick-access.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">
<div id="refer-box">
<ul>
  <li class="refer-item"><a href="#refer-box">معرفی دوره</a></li>
  <li class="refer-item"><a href="">مشاهده دروس</a></li>
  <li class="refer-item"><a href="">نظرات</a></li>
</ul>
</div> 
`;

class QuickAccess extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
}

export { QuickAccess };