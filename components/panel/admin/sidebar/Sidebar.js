let template = document.createElement("template");
const domainName = "http://geeklearn.ir";
template.innerHTML = `  
<link rel="stylesheet" href="../../assets/tailwindCss/css/main.css" />
<link rel="stylesheet" href="../../assets/font/font-awesome/all.min.css" />
    <div
        class="sidebar-container md:h-auto h-screen rounded-sm bg-white md:flex items-start flex-col gap-y-2  md:overflow-hidden overflow-auto transition-[right] duration-500  md:static fixed md:z-0 z-30  top-0 right-[-400px]  md:w-full w-1/2"
      >
        <div class="w-full flex flex-col justify-center items-center py-2">
           <button class="self-end ml-3 sidebar-close md:hidden block">
             <svg width="20px" height="20px" viewBox="-0.5 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M3 21.32L21 3.32001" stroke="#bababa" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M3 3.32001L21 21.32" stroke="#bababa" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
           </button>
          <img
            class="rounded-full h-28 w-28 object-cover mt-7"
            src="../../assets/image/panel/profile.jpg"
            alt="profile"
          />
          <span class="font-bold mt-2"> سعید رمضانی</span>
          <span class="text-gray-700">ادمین</span>
        </div>
        <div
          class="w-full flex justify-around py-1 border-solid border-b-2 border-gray-100"
        >
          <div class="flex flex-col items-center gap-y-1 p-2 text-gray-600">
            <div
              class="rounded-full bg-[#fff8ec] w-10 h-10 flex items-center justify-center"
            >
              <i class="fa-solid fa-star text-[#ff9b20]"></i>
            </div>
            <span class="text-xs">امتیازات</span>
          </div>
          <div class="flex flex-col items-center gap-y-1 p-2 text-gray-600">
            <div
              class="rounded-full bg-[#e8fdeb] w-10 h-10 flex items-center justify-center"
            >
              <i class="fa-solid fa-file text-[#27B737]"></i>
            </div>
            <span class="text-xs">دوره ها</span>
          </div>
          <div class="flex flex-col items-center gap-y-1 p-2 text-gray-600">
            <div
              class="rounded-full bg-[#F1EFFF] w-10 h-10 flex items-center justify-center"
            >
              <i class="fa-solid fa-user text-[#7460EE]"></i>
            </div>
            <span class="text-xs">هنرجویان</span>
          </div>
        </div>
        <div class="mt-2 p-3 w-full">
          <ul class="list-none flex flex-col gap-y-0.5 w-full p-1">
            <li class="text-sm  py-3 px-1 cursor-pointer">
              <a
                href="javascript:void(0)"
                class="text-[#144273] flex items-center cursor-pointer"
              >
                <i class="fa-solid fa-bag-shopping text-[#144273] ml-2"></i>

                پیشخوان
              </a>
            </li>

            <li class="text-sm itemMenu py-3 px-1 cursor-pointer">
              <a
                href="javascript:void(0)"
                class="text-[#144273] flex items-center"
              >
              <i class="fa-solid fa-basket-shopping text-[#144273] ml-2"></i>

                دوره ها
                <i class="fa-solid fa-angle-left mr-auto text-gray-500"></i>
              </a>
              <ul
                class="list-none flex flex-col w-full gap-y-3 subMenuList text-sm "
              >
                <li class="flex">
                <a  href="${domainName}/panel/admin/coursesList.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1"> لیست دوره ها</a>
                </li>
                <li class="flex">
                <a href="${domainName}/panel/admin/addNewCourse.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1">افزودن دوره جدید</a>
                </li>
              </ul>
            </li>
            <li class="text-sm itemMenu py-3 px-1 cursor-pointer">
              <a
                href="javascript:void(0)"
                class="text-[#144273] flex items-center"
              >
              <i class="fa-solid fa-user-tie text-[#144273] ml-2"></i>
              مدرسین
                <i class="fa-solid fa-angle-left mr-auto text-gray-500"></i>
              </a>
              <ul
              class="list-none flex flex-col w-full gap-y-3 subMenuList text-sm"
            >
              <li class="flex">
              <a  href="${domainName}/panel/admin/teachersList.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1"> لیست  مدرسین</a>
              </li>
              <li class="flex">
              <a href="${domainName}/panel/admin/addNewTeacher.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1">افزودن مدرس جدید</a>
              </li>
              
            </ul>
            </li>
            <li class="text-sm itemMenu py-3 px-1 cursor-pointer">
              <a
                href="javascript:void(0)"
                class="text-[#144273] flex items-center"
              >
              <i class="fa-solid fa-user text-[#144273] ml-2"></i>
           دانشجویان    

                <i class="fa-solid fa-angle-left mr-auto text-gray-500"></i>
              </a>
              <ul
              class="list-none flex flex-col w-full gap-y-3 subMenuList text-sm"
            >
              <li class="flex">
              <a  href="${domainName}/panel/admin/studentsList.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1"> لیست  دانشجویان</a>
              </li>
              <li class="flex">
              <a href="${domainName}/panel/admin/addNewStudent.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1">افزودن دانشجو جدید</a>
              </li>
              
            </ul>
            </li>
            <li class="text-sm itemMenu py-3 px-1 cursor-pointer">
              <a
                href="javascript:void(0)"
                class="text-[#144273] flex items-center"
              >
              <i class="fa-solid fa-list text-[#144273] ml-2"></i>        
                      سفارشات
                <i class="fa-solid fa-angle-left mr-auto text-gray-500"></i>
              </a>
              <ul
              class="list-none flex flex-col w-full gap-y-3 subMenuList text-sm"
            >
              <li class="flex">
              <a  href="${domainName}/panel/admin/ordersList.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1"> لیست سفارشات</a>
              </li>   
            </ul>
            </li>
            <li class="text-sm itemMenu py-3 px-1 cursor-pointer">
              <a
                href="javascript:void(0)"
                class="text-[#144273] flex items-center"
              >
              <i class="fa-brands fa-blogger-b text-[#144273] ml-2"></i>    
                      بلاگ ها
                <i class="fa-solid fa-angle-left mr-auto text-gray-500"></i>
              </a>
              <ul
              class="list-none flex flex-col w-full gap-y-3 subMenuList text-sm"
            >
              <li class="flex">
              <a  href="${domainName}/panel/admin/blogsList.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1"> لیست بلاگ ها</a>
              </li>
              <li class="flex">
              <a href="${domainName}/panel/admin/addNewBlog.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1">افزودن بلاگ جدید</a>
              </li>
              
            </ul>
            </li>
            <li class="text-sm itemMenu py-3 px-1 cursor-pointer">
              <a
                href="javascript:void(0)"
                class="text-[#144273] flex items-center"
              >
              <i class="fas fa-comments text-[#144273] ml-2"></i>             
                 نظرات
                <i class="fa-solid fa-angle-left mr-auto text-gray-500"></i>
              </a>
              <ul
              class="list-none flex flex-col w-full gap-y-3 subMenuList text-sm"
            >
              <li class="flex">
              <a  href="${domainName}/panel/admin/commentsList.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1"> لیست نظرات </a>
              </li>     
            </ul>
            </li>
            <li class="text-sm itemMenu py-3 px-1 cursor-pointer">
              <a
                href="javascript:void(0)"
                class="text-[#144273] flex items-center"
              >
                <i class="fa-solid fa-ticket text-[#144273] ml-2"></i>

                تیکت ها
                <i class="fa-solid fa-angle-left mr-auto text-gray-500"></i>
              </a>
              <ul
              class="list-none flex flex-col w-full gap-y-3 subMenuList text-sm"
            >
              <li class="flex">
              <a  href="${domainName}/panel/admin/ticketsList.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1"> لیست تیکت ها</a>
              </li>
            </ul>
            </li>
            <li class="text-sm itemMenu py-3 px-1 cursor-pointer">
              <a
                href="javascript:void(0)"
                class="text-[#144273] flex items-center"
              >
                <i class="fa-solid fa-layer-group text-[#144273] ml-2"></i>

                دسته بندی ها
                <i class="fa-solid fa-angle-left mr-auto text-gray-500"></i>
              </a>
              <ul
              class="list-none flex flex-col w-full gap-y-3 subMenuList text-sm"
            >
              <li class="flex">
              <a  href="${domainName}/panel/admin/categoriesList.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1"> لیست عنوان ها</a>
              </li>
              <li class="flex">
              <a href="${domainName}/panel/admin/addNewCategory.html" class=" w-full py-2 hover:bg-[#E0F6EF] transition-all text-gray-500 rounded-sm px-1">افزودن عنوان جدید</a>
              </li>
              
            </ul>
            </li>
            <li class="text-sm itemMenu py-3 px-1 cursor-pointer">
              <a
                href="javascript:void(0);"
                class="text-[#144273] flex items-center"
              >
                <i class="fa-solid fa-gear text-[#144273] ml-2"></i>

                تنظیمات
              </a>
            </li>
          </ul>
        </div>
    </div> 

`;

class Sidebar extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    const listItemsMenu = this.shadowRoot.querySelectorAll(".itemMenu");
    listItemsMenu.forEach((item) => {
      item.addEventListener("click", () => {
        item.classList.toggle("open");
        let subMenuList = item.lastElementChild;
        console.log(subMenuList);
        let angleIcon = item.firstElementChild.lastElementChild;
        console.log(subMenuList);

        if (item.className.includes("open")) {
          angleIcon.className = "fa-solid fa-angle-down mr-auto text-gray-500";
        } else {
          angleIcon.className = "fa-solid fa-angle-left mr-auto text-gray-500";
        }
      });
    });

    // Close & open sidebar in mobile

    const sidebarOpenBtn = document.querySelector(".sidebar-open");
    const sidebarCloseBtn = this.shadowRoot.querySelector(".sidebar-close");
    const sidebarContainer =
      this.shadowRoot.querySelector(".sidebar-container");

    sidebarOpenBtn.addEventListener("click", () => {
      sidebarContainer.classList.remove("right-[-400px]");
      sidebarContainer.classList.add("right-0");
    });
    sidebarCloseBtn.addEventListener("click", () => {
      sidebarContainer.classList.add("right-[-400px]");
      sidebarContainer.classList.remove("right-0");
    });
  }
}

export { Sidebar };
