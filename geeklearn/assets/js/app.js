import { Course } from "../../components/Course/course.js";
import { Header } from "../../components/Header/header.js";
import { Menu } from "../../components/Menu/menu.js";
import { Searchbox } from "../../components/Searchbox/searchbox.js";


window.customElements.define('site-header', Header)
window.customElements.define('site-menu', Menu)
window.customElements.define('site-search-box', Searchbox)
window.customElements.define('site-course', Course)
