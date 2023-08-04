import { Header } from "../../components/Header/Header.js";
import { HeaderTop } from "../../components/Header/Header-top/Header-top.js";
import { Navbar } from "../../components/Header/Navbar/Navbar.js";
import { SearchBox } from "../../components/Header/Search-box/Search-box.js";
import { CourseIntro } from "../../components/Course-intro/course-intro.js";
import { Course } from "../../components/Course/course.js";
import { Footer } from "../../components/Footer/footer.js";
import { Alert } from "../../components/Alert/alert.js";

window.customElements.define("site-header", Header);
window.customElements.define("site-header-top", HeaderTop);
window.customElements.define("site-navbar", Navbar);
window.customElements.define("site-search-box", SearchBox);
window.customElements.define("site-course", Course);
window.customElements.define("site-footer", Footer);
window.customElements.define("course-intro", CourseIntro);
window.customElements.define("my-alert", Alert);
