let template = document.createElement("template");
template.innerHTML = `  
<link rel="stylesheet" href="../../assets/tailwindCss/css/main.css" />
<nav class="bg-white sticky top-0 left-0 right-0 z-20">
<div class="mx-auto max-w-7xl px-2 md:px-6 lg:px-8">
  <div class="relative flex h-16 items-center justify-between">
    <div class="absolute inset-y-0 right-0 flex items-center md:hidden">
      <!-- Mobile menu button-->
     <slot name="sidebarButton">
     </slot>
    </div>
    <div
      class="flex flex-1 items-center justify-center md:items-stretch md:justify-start"
    >
      <div class="flex flex-shrink-0 items-center">
        <img
          class="h-8 w-auto"
          src="../../assets/image/logo.png"
          alt="Your Company"
        />
      </div>
      <div class="hidden md:ml-6 md:block">
        <div class="flex space-x-4">
          <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
          <a
            href="#"
            class="text-black rounded-md px-3 py-2 text-md font-medium"
            >صفحه اصلی</a
          >
          <a
            href="#"
            class="rounded-md px-3 py-2 text-md font-medium"
            aria-current="page"
            >داشبورد</a
          >
          <a href="#" class="rounded-md px-3 py-2 text-md font-medium"
            >دوره ها</a
          >
          <a href="#" class="rounded-md px-3 py-2 text-md font-medium"
            >مقالات</a
          >
        </div>
      </div>
    </div>
    <div
      class="absolute inset-y-0 left-0 flex items-center pr-2 md:static md:inset-auto md:ml-6 md:pr-0"
    >
      <button
        type="button"
        class="relative ml-0.5 rounded-full bg-gray-800 p-1 text-gray-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800"
      >
        <span class="absolute -inset-1.5"></span>
        <span class="sr-only">View notifications</span>
        <svg
          class="h-6 w-6"
          fill="none"
          viewBox="0 0 24 24"
          stroke-width="1.5"
          stroke="currentColor"
          aria-hidden="true"
        >
          <path
            stroke-linecap="round"
            stroke-linejoin="round"
            d="M14.857 17.082a23.848 23.848 0 005.454-1.31A8.967 8.967 0 0118 9.75v-.7V9A6 6 0 006 9v.75a8.967 8.967 0 01-2.312 6.022c1.733.64 3.56 1.085 5.455 1.31m5.714 0a24.255 24.255 0 01-5.714 0m5.714 0a3 3 0 11-5.714 0"
          />
        </svg>
      </button>

      <!-- Profile dropdown -->
      <div class="relative ml-3">
        <div>
          <button
            type="button"
            class="relative flex rounded-full bg-gray-800 text-md focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800"
            id="user-menu-button"
            aria-expanded="false"
            aria-haspopup="true"
          >
            <span class="absolute -inset-1.5"></span>
            <span class="sr-only">Open user menu</span>
            <img
              class="h-10 w-10 rounded-full object-cover"
              src="../../assets/image/panel/profile.jpg"
              alt=""
            />
          </button>
        </div>

        <!--
          Dropdown menu, show/hide based on menu state.

          Entering: "transition ease-out duration-100"
            From: "transform opacity-0 scale-95"
            To: "transform opacity-100 scale-100"
          Leaving: "transition ease-in duration-75"
            From: "transform opacity-100 scale-100"
            To: "transform opacity-0 scale-95"
        -->
        <div
          class="absolute right-0 z-10 mt-2 w-48 origin-top-right rounded-md bg-white py-1 shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none hidden"
          role="menu"
          aria-orientation="vertical"
          aria-labelledby="user-menu-button"
          tabindex="-1"
        >
          <!-- Active: "bg-gray-100", Not Active: "" -->
          <a
            href="#"
            class="block px-4 py-2 text-md text-gray-700"
            role="menuitem"
            tabindex="-1"
            id="user-menu-item-0"
            >Your Profile</a
          >
          <a
            href="#"
            class="block px-4 py-2 text-md text-gray-700"
            role="menuitem"
            tabindex="-1"
            id="user-menu-item-1"
            >Settings</a
          >
          <a
            href="#"
            class="block px-4 py-2 text-md text-gray-700"
            role="menuitem"
            tabindex="-1"
            id="user-menu-item-2"
            >Sign out</a
          >
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Mobile menu, show/hide based on menu state. -->
<div class="md:hidden hidden" id="mobile-menu">
  <div class="space-y-1 px-2 pb-3 pt-2">
    <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
    <a
      href="#"
      class="bg-gray-900 text-white block rounded-md px-3 py-2 text-base font-medium"
      aria-current="page"
      >Dashboard</a
    >
    <a
      href="#"
      class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium"
      >Team</a
    >
    <a
      href="#"
      class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium"
      >Projects</a
    >
    <a
      href="#"
      class="text-gray-300 hover:bg-gray-700 hover:text-white block rounded-md px-3 py-2 text-base font-medium"
      >Calendar</a
    >
  </div>
</div>
</nav>
`;

class HeaderPanel extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
}

export { HeaderPanel };
