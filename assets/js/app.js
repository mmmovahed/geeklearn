import { Header } from "../../components/Header/Header.js";
import { HeaderTop } from "../../components/Header/Header-top/Header-top.js";
import { Navbar } from "../../components/Header/Navbar/Navbar.js";
import { SearchBox } from "../../components/Header/Search-box/Search-box.js";
import { Footer } from "../../components/Footer/footer.js";
import { Alert } from "../../components/Alert/alert.js";
import { CourseCart } from "../../components/Course/Course-cart/course-cart.js";
import { CourseIntro } from "../../components/Course/Course-intro/course-intro.js";
import { CourseVideo } from "../../components/Course/Course-video/course-video.js";
import { QuickAccess } from "../../components/Course/Quick-access/quick-access.js";
import { CourseDetails } from "../../components/Course/Course-details/course-details.js";
import { CourseLabels } from "../../components/Course/Course-labels/course-labels.js";
import { CourseComments } from "../../components/Course/Comments/comments.js";



window.customElements.define("site-header", Header);
window.customElements.define("site-header-top", HeaderTop);
window.customElements.define("site-navbar", Navbar);
window.customElements.define("site-search-box", SearchBox);
window.customElements.define("course-cart",CourseCart);
window.customElements.define("site-footer", Footer);
window.customElements.define("course-intro",CourseIntro)
window.customElements.define("my-alert", Alert);
window.customElements.define("course-video", CourseVideo);
window.customElements.define("quick-access-nav", QuickAccess);
window.customElements.define("course-details", CourseDetails);
window.customElements.define("course-labels", CourseLabels);
window.customElements.define("course-comments", CourseComments);


