import { CourseIntro } from "../../components/Course-intro/course-intro.js";
import { Course } from "../../components/Course/course.js";
import { Footer } from "../../components/Footer/footer.js";
import { Header } from "../../components/Header/header.js";
import { Menu } from "../../components/Menu/menu.js";
import { Searchbox } from "../../components/Searchbox/searchbox.js";
import { Alert } from "../../components/Alert/alert.js";



window.customElements.define('site-header', Header)
window.customElements.define('site-menu', Menu)
window.customElements.define('site-search-box', Searchbox)
window.customElements.define('site-course', Course)
window.customElements.define('site-footer', Footer)
window.customElements.define('course-intro',CourseIntro)
window.customElements.define('my-alert', Alert)
