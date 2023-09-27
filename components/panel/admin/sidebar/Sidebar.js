let template = document.createElement("template");
template.innerHTML = `  
<link rel="stylesheet" href="../../assets/tailwindCss/css/main.css" />
<link rel="stylesheet" href="../../assets/font/font-awesome/all.min.css" />
    <div
        class="w-full rounded-sm bg-white flex items-start flex-col gap-y-2"
      >
        <div class="w-full flex flex-col justify-center items-center py-2">
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
            <li class="text-sm itemMenu py-3 px-1 cursor-pointer">
              <a
                href=""
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
                class="list-none flex-col w-full gap-y-3 pt-5 subMenuList text-sm hidden"
              >
                <li class="flex">
                <a  href="http://geeklearn.ir/panel/admin/coursesList.html" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1"> لیست دوره ها</a>
                </li>
                <li class="flex">
                <a href="http://geeklearn.ir/panel/admin/addNewCourse.html" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1">افزودن دوره جدید</a>
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
              class="list-none flex-col w-full gap-y-3 pt-5 subMenuList text-sm hidden"
            >
              <li class="flex">
              <a  href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1"> لیست دوره ها</a>
              </li>
              <li class="flex">
              <a href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1">افزودن دوره جدید</a>
              </li>
              
            </ul>
            </li>
            <li class="text-sm itemMenu py-3 px-1 cursor-pointer">
              <a
                href="javascript:void(0)"
                class="text-[#144273] flex items-center"
              >
              <i class="fa-solid fa-user text-[#144273] ml-2"></i>
           هنرجویان    

                <i class="fa-solid fa-angle-left mr-auto text-gray-500"></i>
              </a>
              <ul
              class="list-none flex-col w-full gap-y-3 pt-5 subMenuList text-sm hidden"
            >
              <li class="flex">
              <a  href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1"> لیست دوره ها</a>
              </li>
              <li class="flex">
              <a href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1">افزودن دوره جدید</a>
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
              class="list-none flex-col w-full gap-y-3 pt-5 subMenuList text-sm hidden"
            >
              <li class="flex">
              <a  href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1"> لیست دوره ها</a>
              </li>
              <li class="flex">
              <a href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1">افزودن دوره جدید</a>
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
              class="list-none flex-col w-full gap-y-3 pt-5 subMenuList text-sm hidden"
            >
              <li class="flex">
              <a  href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1"> لیست دوره ها</a>
              </li>
              <li class="flex">
              <a href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1">افزودن دوره جدید</a>
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
              class="list-none flex-col w-full gap-y-3 pt-5 subMenuList text-sm hidden"
            >
              <li class="flex">
              <a  href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1"> لیست دوره ها</a>
              </li>
              <li class="flex">
              <a href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1">افزودن دوره جدید</a>
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
              class="list-none flex-col w-full gap-y-3 pt-5 subMenuList text-sm hidden"
            >
              <li class="flex">
              <a  href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1"> لیست دوره ها</a>
              </li>
              <li class="flex">
              <a href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1">افزودن دوره جدید</a>
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
              class="list-none flex-col w-full gap-y-3 pt-5 subMenuList text-sm hidden"
            >
              <li class="flex">
              <a  href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1"> لیست دوره ها</a>
              </li>
              <li class="flex">
              <a href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1">افزودن دوره جدید</a>
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
                <i class="fa-solid fa-angle-left mr-auto text-gray-500"></i>
              </a>
              <ul
              class="list-none flex-col w-full gap-y-3 pt-5 subMenuList text-sm hidden"
            >
              <li class="flex">
              <a  href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1"> لیست دوره ها</a>
              </li>
              <li class="flex">
              <a href="javascript:void(0);" class=" w-full py-2 hover:bg-[#E0F6EF] text-gray-500 rounded-sm px-1">افزودن دوره جدید</a>
              </li>
              
            </ul>
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
        let subMenuList = item.lastElementChild;
        let angleIcon = item.firstElementChild.lastElementChild;
        console.log(subMenuList);
        if (subMenuList.className.includes("subMenuList")) {
          subMenuList.classList.toggle("flex");
          subMenuList.classList.toggle("hidden");
          if (subMenuList.className.includes("hidden")) {
            angleIcon.className =
              "fa-solid fa-angle-left mr-auto text-gray-500";
          } else {
            angleIcon.className =
              "fa-solid fa-angle-down mr-auto text-gray-500";
          }
        }
      });
    });
  }
}

export { Sidebar };
