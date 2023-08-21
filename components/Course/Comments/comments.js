let template = document.createElement("template");
template.innerHTML = ` 
<link rel="stylesheet" href="../components/Course/Comments/comments.css">
<link rel="stylesheet" href="./assets/font/font-awesome/all.min.css">
  <div class="container">
    <div class="header" id="comment">
     <svg height="50px" width="50px" version="1.1" id="_x34_" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 512 512" xml:space="preserve" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <g> <g> <circle style="fill:#FFFFFF;" cx="255.693" cy="134.136" r="134.136"></circle> <path style="fill:#D1E9D9;" d="M257.535,79.113H182.64c-6.078,0-11.05-4.973-11.05-11.05l0,0c0-6.077,4.973-11.05,11.05-11.05 h74.895c6.078,0,11.05,4.973,11.05,11.05l0,0C268.585,74.14,263.612,79.113,257.535,79.113z"></path> <path style="fill:#D1E9D9;" d="M244.643,126.076h-74.895c-6.077,0-11.05-4.973-11.05-11.05l0,0c0-6.077,4.973-11.05,11.05-11.05 h74.895c6.077,0,11.05,4.973,11.05,11.05l0,0C255.693,121.103,250.72,126.076,244.643,126.076z"></path> <path style="fill:#D1E9D9;" d="M351.461,176.722H169.748c-6.077,0-11.05-4.973-11.05-11.05l0,0c0-6.078,4.973-11.05,11.05-11.05 h181.713c6.077,0,11.05,4.973,11.05,11.05l0,0C362.511,171.749,357.538,176.722,351.461,176.722z"></path> <path style="fill:#D1E9D9;" d="M270.887,212.635h-86.866c-6.078,0-11.05-4.973-11.05-11.05l0,0c0-6.078,4.973-11.05,11.05-11.05 h86.866c6.078,0,11.05,4.973,11.05,11.05l0,0C281.937,207.662,276.965,212.635,270.887,212.635z"></path> <path style="fill:#D1E9D9;" d="M349.619,126.076h-74.895c-6.078,0-11.05-4.973-11.05-11.05l0,0c0-6.077,4.972-11.05,11.05-11.05 h74.895c6.077,0,11.05,4.973,11.05,11.05l0,0C360.669,121.103,355.696,126.076,349.619,126.076z"></path> <polygon style="fill:#FFFFFF;" points="209.185,252.621 282.019,241.572 284.185,311.096 "></polygon> </g> <path style="fill:#D1E9D9;" d="M186.636,272.351c-14.07,14.07-31.953,24.347-51.991,29.117l-48.584,37.883l1.16-37.11 C37.441,292.039,0,247.986,0,195.203C0,134.851,48.933,85.918,109.285,85.918h0.055c-4.199,14.328-6.446,29.485-6.446,45.177 C102.895,191.999,136.727,245.021,186.636,272.351z"></path> <path style="fill:#D1E9D9;" d="M325.364,272.351c14.07,14.07,31.953,24.347,51.991,29.117l48.584,37.883l-1.16-37.11 C474.559,292.039,512,247.986,512,195.203c0-60.352-48.934-109.285-109.285-109.285h-0.055 c4.199,14.328,6.446,29.485,6.446,45.177C409.105,191.999,375.273,245.021,325.364,272.351z"></path> </g> <g style="opacity:0.04;"> <path style="fill:#070405;" d="M389.829,134.136c0-27.879-8.515-53.763-23.072-75.216L180.623,245.053 c13.122,8.877,27.842,15.574,43.714,19.382l59.847,46.661l-1.419-45.56C343.869,253.013,389.829,198.943,389.829,134.136z"></path> <path style="fill:#070405;" d="M87.256,338.42l47.389-36.952c20.037-4.77,37.92-15.046,51.991-29.117 c-7.07-3.871-13.774-8.311-20.148-13.163L87.256,338.42z"></path> <path style="fill:#070405;" d="M512,195.203c0-60.352-48.934-109.286-109.286-109.286h-0.055 c4.199,14.328,6.446,29.485,6.446,45.177c0,60.904-33.832,113.926-83.741,141.257c14.07,14.07,31.953,24.347,51.991,29.117 l48.584,37.884l-1.16-37.11C474.559,292.039,512,247.986,512,195.203z"></path> </g> </g> </g></svg>
     <span>نظرات کاربران در رابطه با این دروه</span>
    </div>
    <div class="comment-input">
     <p>نظر خود را وارد کنید!</p>
     <textarea id="textarea" placeholder="نظر خود را وارد نمایید..."></textarea>
     <button id="comment-submit">ثبت دیدگاه شما</button>
    </div>
    <div class="comment-box">
     <div class="comment-header">
       <span id="name">علی رضایی</span>
       <span id="date">1402/02/17</span>
       <button id="reply">ثبت پاسخ</button>
     </div>
      <div class="desc-container">
        <p>این یک پیام تستی است.</p>
      </div>
    </div>
    <div class="comment-box">
     <div class="comment-header">
       <span id="name">علی رضایی</span>
       <span id="date">1402/02/17</span>
       <button id="reply">ثبت پاسخ</button>
     </div>
      <div class="desc-container">
        <p>این یک پیام تستی است.</p>
      </div>
    </div>
  </div>
`;

class CourseComments extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));

    // Register a comment
    const regCommentbtn = this.shadowRoot.querySelector("#comment-submit");
     const textareaElem = this.shadowRoot.querySelector('#textarea')
    
    regCommentbtn.addEventListener("click", () => {
      const commentBox = document.createElement("div");
      commentBox.classList.add("comment-box");
      commentBox.insertAdjacentHTML("afterbegin",
        `<div class="comment-header">
           <span id="name">علی رضایی</span>
           <span id="date">1402/02/17</span>
            <button id="reply">ثبت پاسخ</button>
          </div>
           <div class="desc-container">
             <p>${textareaElem.value}</p>
           </div>`
      );
      this.shadowRoot.querySelector('.comment-input').insertAdjacentElement('afterend',commentBox)
      textareaElem.value = ''
    });

    
    // Reply to comment
    const replyBtn = this.shadowRoot.querySelectorAll("#reply");
    replyBtn.forEach((btn) => {
      btn.addEventListener("click", () => {
        const popupElem = document.createElement("div");
        const textareaElem = document.createElement("textarea");
        const submitBtn = document.createElement("button");
        const cancleBtn = document.createElement("button");
        submitBtn.innerHTML = "ثبت";
        cancleBtn.innerHTML = "لغو";
        submitBtn.className = "modal-submit";
        cancleBtn.className = "modal-cancle";
        popupElem.className = "popup";

        popupElem.append(textareaElem, submitBtn, cancleBtn);
        btn.parentElement.parentElement.append(popupElem);
        textareaElem.focus();
        btn.setAttribute("disabled", "");
        btn.className = "deactive";

        cancleBtn.addEventListener("click", () => {
          popupElem.style.display = "none";
          btn.className = "";
        });

        submitBtn.addEventListener("click", () => {
          popupElem.style.display = "none";
          if (textareaElem.value.length) {
            const pElem = document.createElement("p");
            pElem.innerHTML = textareaElem.value;
            btn.parentElement.parentElement.append(pElem);
          } else {
            popupElem.parentElement.lastElementChild.remove();
          }
          btn.removeAttribute("disabled");
          btn.className = "";
        });
      });
    });

    
  }
}

export { CourseComments };
