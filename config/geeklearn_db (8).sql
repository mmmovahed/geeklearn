-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2023 at 01:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geeklearn_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `content` longtext NOT NULL,
  `views` int(5) NOT NULL DEFAULT 0,
  `thumbnail` text NOT NULL,
  `writer` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs_categories`
--

CREATE TABLE `tbl_blogs_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `status` tinyblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs_comments`
--

CREATE TABLE `tbl_blogs_comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `likes` int(4) NOT NULL DEFAULT 0,
  `dislikes` int(4) NOT NULL DEFAULT 0,
  `date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs_contents`
--

CREATE TABLE `tbl_blogs_contents` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `format` varchar(10) NOT NULL,
  `link` text NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs_scores`
--

CREATE TABLE `tbl_blogs_scores` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `score` tinyint(1) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `factor_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`id`, `course_id`, `user_id`, `factor_id`, `count`, `status`) VALUES
(1, 2, 1, 1, 1, 2),
(2, 3, 1, 1, 1, 2),
(3, 3, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `id` int(7) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `thumbnail` text NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `advantages` text DEFAULT ' پــروژه مــحور بودن دوره هــــا <br>   پشتیبـــانی دائــــمی محصولات  <br>  تضمین کیــفیت کلیـه محصولات',
  `category_id` int(11) NOT NULL,
  `created_at` varchar(20) NOT NULL,
  `last_update` varchar(20) NOT NULL,
  `cost` int(8) NOT NULL,
  `time` varchar(10) DEFAULT '00:00:00',
  `episode` int(11) DEFAULT 0,
  `discount` tinyint(4) NOT NULL DEFAULT 0,
  `in_advance` text NOT NULL DEFAULT 'موردی وجود ندارد',
  `level` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 6
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `title`, `description`, `thumbnail`, `teacher_id`, `advantages`, `category_id`, `created_at`, `last_update`, `cost`, `time`, `episode`, `discount`, `in_advance`, `level`, `status`) VALUES
(2, 'آموزش مدلسازی پایه و ماشین لرنینگ با پایتون\r\n', 'آموزش مدلسازی پایه و ماشین لرنینگ با پایتون\r\nسلام دوستان \r\nدوره آموزش مدل سازی پایه و ماشین لرنینگ، یک دوره آموزشی جامع است که به شما کمک می کند تا با اصول و روش های مدل سازی پایه و مفاهیم اساسی ماشین لرنینگ آشنا شوید. در این دوره، شما با الگوریتم های مختلف مانند رگرسیون خطی، رگرسیون لجستیک، درخت تصمیم و الگوریتم های ذکر شده در سرفصل ها آشنا می‌شود.\r\n\r\n با پایان این دوره، شما قادر خواهید بود تا به صورت حرفه ای و با استفاده از الگوریتم های مناسب، مسائل پیچیده را حل کنید.\r\n\r\n \r\n\r\n توجه کنید که سرفصل های ذکر شده کلی میباشید در هر قسمت و هر سرفصل ما پروژه عملی و کاربردی و تکنیک های کد زنی داریم.\r\n\r\n \r\n\r\nسرفصل های دوره : \r\n\r\nفصل اول ) پیش پردازش داده‌ها\r\n ۱.۱) مباحث تکمیلی pandas و numpy\r\n۱.۲) آشنایی با کتابخانه‌های مرتبط(scikit-learn)\r\n۱.۳) پردازش داده\r\n۱.۴) ارتباط داده همبستگی میان آن‌ها\r\nفصل دوم) الگوریتم های طبقه بندی و رگرسیون\r\n۲.۰) آشنایی و مقدمات طبقه بندی\r\n۲.۱) معرفی الگوریتم svm و استفاده از آن\r\n۲.۲) آموزش معیار های مختلف ارزیابی\r\n۲.۳) معرفی و الگوریتم nkn و استفاده از آن\r\n۲.۴) الگوریتم درخت تصمیم\r\n۲.۵) مفاهیم ریاضی در طبقه بندی ( variance, bias , …)\r\n۲.۶) الگوریتم random forest\r\n۲.۷) الگوریتم AdaBoost\r\n۲.۸) fine tune کردن الگوریتم ها با نگاه دقیق به پارامتر هایش\r\n۲.۹) پردازش متن و زبان طبیغی NLP\r\n۲.۱۰) آشنایی و مقدمات رگرسیون\r\n۲.۱۱ ) الگوریتم های XG boost\r\n۲.۱۲) الگوریتم cat boost\r\n۲.۱۳) خلاصه فصل و جمع بندی\r\nفصل سوم) الگوریتم های خوشه بندی\r\n۳.۱) آشنایی با clustering\r\n۳.۲) الگوریتم Kmeans\r\n۳.۲) اگوریتم DBSCAN\r\n۳.۳) تکنیک RFM\r\n۳.۴)بررسی ریاضیات الگوریتمها و روش کار آن‌ها\r\n۳.۵)متن کاوی و خوشه بندی در متن\r\n۳.۵) Outer detection تشخیص داده‌های نویز\r\n۳.۵) خلاصه فصل و جمع بندی\r\nفصل چهارم) تکنیک های ماشین لرنینگ\r\n۴.۱)کاهش اابعاد\r\n۴.۲)الگوریتم PCA و KERNEL PCA برای کاهش ابعاد\r\n۴.۴) الگوریتم Factor Analysis\r\n۴.۵) الگوریتم های پیشرفته‌تر\r\n۴.۶) داده‌های غیر متوازن و کارکردن با آن‌ها\r\nفصل پنچم) مباحث تکمیلی\r\n۵.۱) طبقه بندی تصویر\r\n۵.۲) طبقه بندی سری های زمانی\r\n۵.۳ الگوریتم های پیشرفته‌تر\r\n', 'https://toplearn.com/img/course/%D8%A2%D9%85%D9%88%D8%B2%D8%B4_%D9%85%D8%AF%D9%84%D8%B3%D8%A7%D8%B2%DB%8C_%D9%BE%D8%A7%DB%8C%D9%87_%D9%88_%D9%85%D8%A7%D8%B4%DB%8C%D9%86_%D9%84%D8%B1%D9%86%DB%8C%D9%86%DA%AF_%D8%A8%D8%A7_%D9%BE%D8%A7%DB%8C%D8%AA%D9%88%D9%86.jpg', 13546, ' مباحث تکمیلی pandas و numpy.\r\nfine tune کردن الگوریتم ها با نگاه دقیق به پارامتر هایش.', 1, '10:24', '', 200000, '00:00:00', 0, 0, '.زبان برنامه نویسی پایتون\n.دوره مبانی و مقدمات هوش مصنوعی', '3', 5),
(3, 'دوره آموزشی php (مقدماتی)', 'دوره آموزشی php (مقدماتی)\r\nPHP یک زبان قدرتمند برای ساخت وب سایت های پویا است. این زبان اسکریپتی میتواند با HTML ادغام شود. php یک زبان در سمت سرور است, بدین معنا که کدهای php روی سرور تفسیر میشوند و خروجی html و یا خروجی های دیگری تولید میکند که توسط کاربر قابل مشاهده است.\r\n\r\n <br>\r\n\r\nسرفصل ها در بخش اول دوره موجود می باشد .', 'https://toplearn.com/img/course/%D8%AF%D9%88%D8%B1%D9%87_%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C_php_(%D9%85%D9%82%D8%AF%D9%85%D8%A7%D8%AA%DB%8C).jpg', 13547, 'خلاصه و مفید\r\nکاربردی', 3, '1400/11/07', '1401/3/07', 0, '09:49:36', 34, 0, '--', 'مقدماتی', 4),
(4, 'آموزش سی شارپ پیشرفته\r\n', 'آموزش سی شارپ پیشرفته\r\nدوره آموزش سی شارپ پیشرفته در قالب پروژه عملی ( حسابداری )\r\n<br>\r\n <br>\r\n<br>\r\nپیش نیاز های این دوره :\r\n<br>\r\nدوره آموزش سی شارپ مقدماتی به همراه پروژه عملی\r\n<br>\r\n <br>\r\n<br>\r\nاین دوره در ادامه دوره شارپ مقدماتی ارائه شده است .\r\n<br>\r\nدر این دوره با امکانات پیشرفته زبان قدرتمند سی شارپ در قالب یک پروژه عملی با عنوان حسابداری آشنا خواهید شد .\r\n<br>\r\nجهت آشنایی بیشتر با این دوره پیشنهاد میکنیم قسمت اول با عنوان معرفی دوره را مشاهده فرمائید .\r\n<br>\r\nدوره های بعدی که میتوانید مشاهده کنید : \r\n<br>\r\nدوره جامع شی گرایی در سی شارپ<br>\r\nآموزش اصول SOLID در سی شارپ\r\n <br>\r\n<br>\r\n(( این دوره به اتمام رسیده است ))', 'https://toplearn.com/img/course/%D8%A2%D9%85%D9%88%D8%B2%D8%B4_%D8%B3%DB%8C_%D8%B4%D8%A7%D8%B1%D9%BE_%D9%BE%DB%8C%D8%B4%D8%B1%D9%81%D8%AA%D9%87.jpg', 13548, ' پــروژه مــحور بودن دوره هــــا <br>   پشتیبـــانی دائــــمی محصولات  <br>  تضمین کیــفیت کلیـه محصولات', 5, '1402/06/01', '1402/06/01', 0, '14:20:44', 44, 0, 'سی شارپ مقدماتی', 'مقدماتی', 4),
(1254, 'دوره آموزش سی شارپ از مقدماتی تا پیشرفته', '<br>دوره آموزش سی شارپ از مقدماتی تا پیشرفته\r\nدر این دوره شما زبان برنامه نویسی سی شارپ، که یکی از قدرتمند ترین زبان های برنامه نویسی شیء گرا می باشد را از 0 تا 100 آموزش خواهید دید و پس از یادگیری با کمک این زبان می توانید تکنولوژی مورد علاقه خود را (وب، ویندوز و موبایل) انتخاب کرده و هرچه سریع تر در آن حرفه ای شوید', 'https://toplearn.com/img/course/%D8%AF%D9%88%D8%B1%D9%87_%D8%A2%D9%85%D9%88%D8%B2%D8%B4_%D8%B3%DB%8C_%D8%B4%D8%A7%D8%B1%D9%BE_%D8%A7%D8%B2_%D9%85%D9%82%D8%AF%D9%85%D8%A7%D8%AA%DB%8C_%D8%AA%D8%A7_%D9%BE%DB%8C%D8%B4%D8%B1%D9%81%D8%AA%D9%87.jpg', 13548, ' پــروژه مــحور بودن دوره هــــا <br>   پشتیبـــانی دائــــمی محصولات  <br>  تضمین کیــفیت کلیـه محصولات', 7, '1402/06/05', '1402/06/05', 0, '07:18:15', 21, 0, 'موردی وجود ندارد', 'مقدماتی', 4),
(1255, 'آموزش رایگان پایتون ( Python )', 'آموزش رایگان پایتون ( Python )<br>\r\nدوره آموزش رایگان زبان پایتون ( Python ) از مقدماتی تا پیشرفته\r\n<br><br>\r\n \r\n\r\nپایتون یک زبان برنامه نویسی عمومی و Open Source است که می تواند برای بسیاری از برنامه های کاربردی مورد استفاده قرار گیرد.<br>\r\n\r\nاین زبان به دلیل قابلیت خوانایی بسیار بالا و طراحی ساختاری سایر عناصرش انتخاب بسیار مناسبی برای شروع و ورود به دنیای برنامه نویسی میباشد .<br>\r\n<br>\r\nاما اشتباه نکنید!!!\r\n<br>\r\nPython محدود به استفاده های پایه نمیشود و در اصل ، در عین سادگی ، یکی از قدرتمندترین زبان های برنامه نویسی دنیا محسوب و در بسیاری از نرم افزارهای بزرگ و پیچیده استفاده شده که در نهایت باعث افزایش قدرت و تسریع عملکرد آنها شده است.\r\n<br>\r\nاز این زبان به دلیل قدرت بالا و سادگی کار با آن ، در زمینه های بسیاری استفاده میشود. سایت های بزرگی همچون YouTube ، Instagram ، Reddit و ... برای افزایش قدرت در Back-End از این زبان استفاده میکنند. از Python میتوانید در تمام زمینه هایی همچون Desktop ، هوش مصنوعی ، Data Science ،  script نویسی و ... استفاده کنید.\r\n<br>\r\nپایتون یک زبان تفسیری است، به این معنی که برنامه های نوشته شده در پایتون نیازی به Compile  برای اجرا ندارند و همین موضوع باعث افزایش قدرت و عملکرد نرم افزارهای نوشته شده با این زبان می شود.\r\n<br>\r\nدر این آموزش قصد داریم یک مسیر آموزشی مناسب برای یادگیری این زبان قدرتمند را در اختیار شما دوستان قرار دهیم\r\n<br>\r\nسطح دوره \r\n<br><br>\r\nمقدماتی\r\n<br>\r\n<br>متوسط \r\n<br>\r\nپیشرفته', 'https://toplearn.com/img/course/%D8%A2%D9%85%D9%88%D8%B2%D8%B4_%D8%B1%D8%A7%DB%8C%DA%AF%D8%A7%D9%86_%D9%BE%D8%A7%DB%8C%D8%AA%D9%88%D9%86_(_Python_).jpg', 13546, ' پــروژه مــحور بودن دوره هــــا <br>   پشتیبـــانی دائــــمی محصولات  <br>  تضمین کیــفیت کلیـه محصولات', 7, '1402/06/05', '1402/06/05', 0, '31:47:31', 97, 0, 'موردی وجود ندارد', 'مقدماتی', 4),
(1256, 'آموزش مقدماتی تا پیشرفته JS', 'آموزش مقدماتی تا پیشرفته جاوا  اسکریپت \nدوره آموزش جامع JavaScript از 0 تا 100\n<br>\n <br>\n<br>\nجاوا اسکریپت یکی از مهم‌ترین زبان‌های برنامه‌نویسی حوزه‌ی وب محسوب می‌شود. جاوا اسکریپت اولین بار با اسم LiveScript و توسط شرکت نت اسکیپ معرفی شد و بعدها به جاوا اسکریپت تغییر نام داد. البته جالب است بدانید جاوا اسکریپت نه از نظر ساختار و نه از نظر مفاهیم، شباهتی به زبان جاوا ندارد و این تشابه اسمی، در حد همان کلمات و نام و نشان باقی مانده است. \n<br><br>\n به‌طور طبیعی بعد از یادگیری HTML و CSS نوبت یادگیری جاوا اسکریپت می‌رسد. یادگیری جاوا اسکریپت چندان کار سختی نیست؛ ولی نکته مهم در رابطه با یادگیری این زبان، آن است که بر خلاف اچ‌تی‌ام‌ال یا سی‌اس‌اس که زبان‌های نشانه‌گذاری محسوب می‌شوند، جاوا اسکریپت یک زبان «برنامه نویسی» است. پس انتظار یادگیری سریع و بدون دردسر نداشته باشید و خود را برای چالش‌های جدید و درگیری‌های ذهنی بیشتر آماده کنید.', 'https://toplearn.com/img/course/%D8%A2%D9%85%D9%88%D8%B2%D8%B4_%D9%85%D9%82%D8%AF%D9%85%D8%A7%D8%AA%DB%8C_%D8%AA%D8%A7_%D9%BE%DB%8C%D8%B4%D8%B1%D9%81%D8%AA%D9%87_%D8%AC%D8%A7%D9%88%D8%A7_%D8%A7%D8%B3%DA%A9%D8%B1%DB%8C%D9%BE%D8%AA.jpg', 13548, ' پــروژه مــحور بودن دوره هــــا <br>   پشتیبـــانی دائــــمی محصولات  <br>  تضمین کیــفیت کلیـه محصولات', 9, '1402/06/05', '1402/06/05', 0, '24:14:26', 75, 0, 'موردی وجود ندارد', 'مقدماتی', 4),
(1268, 'test', 'description', 'thumbnail', 5, 'advantages', 8, '2023-10-03--22:03:51', '2023-10-03--23:07:34', 0, '00:00:00', 0, 1, 'in_advance', 'level', 7),
(1269, 'test', 'description', 'thumbnail', 5, 'advantages', 8, '2023-10-03--22:04:59', '2023-10-03--22:04:59', 0, '00:00:00', 0, 0, '', 'level', 1),
(1270, 'test', 'description', 'thumbnail', 5, 'advantages', 8, '2023-10-03--22:06:32', '2023-10-03--22:06:32', 0, '00:00:00', 0, 0, '', 'level', 1),
(1271, 'test', 'description', 'thumbnail', 5, 'advantages', 8, '2023-10-04--23:18:33', '2023-10-04--23:18:33', 0, '00:00:00', 0, 0, '', 'level', 1),
(1272, 'test', 'description', 'thumbnail', 5, 'advantages', 8, '2023-10-06--05:45:23', '2023-10-06--05:45:23', 0, '00:00:00', 0, 0, '', 'level', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses_booklets`
--

CREATE TABLE `tbl_courses_booklets` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `link` text NOT NULL,
  `format` varchar(5) NOT NULL,
  `episode` int(3) NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses_categories`
--

CREATE TABLE `tbl_courses_categories` (
  `id` int(11) NOT NULL,
  `parents_id` int(11) DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `thumbnail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_courses_categories`
--

INSERT INTO `tbl_courses_categories` (`id`, `parents_id`, `name`, `thumbnail`) VALUES
(2, 7, 'php', NULL),
(5, 7, 'c#', NULL),
(6, 0, 'امنیت', 'https://momtazserver.com/wp-content/uploads/2019/08/7-5.jpg'),
(7, 0, 'برنامه نویسی تحت وب', 'https://blog.faradars.org/wp-content/uploads/2021/09/What-is-Web-Programming-or-Development.jpg'),
(8, 0, 'سیستم عامل', 'https://cdn.hswstatic.com/gif/computer-operating-sytem.jpg'),
(9, 0, 'طراحی سایت', 'https://poshtibanam.com/wp-content/uploads/2021/04/%D8%B7%D8%B1%D8%A7%D8%AD%DB%8C-%D8%B3%D8%A7%DB%8C%D8%AA-1.png'),
(10, 6, 'مفاهیم امنیت', NULL),
(11, 6, 'CEH v10', NULL),
(12, 6, 'تست نفوذ', NULL),
(13, 6, 'لینوکس برای هک', NULL),
(14, 7, 'ASP.Net', NULL),
(15, 7, 'Node.js', NULL),
(16, 8, 'لینوکس', NULL),
(17, 8, 'ویندوز سرور', NULL),
(18, 9, 'HTML & CSS', NULL),
(19, 9, 'JavaScript', NULL),
(20, 9, 'TailWind', NULL),
(21, 9, 'React', NULL),
(22, 9, 'Angular', NULL),
(23, 9, 'Bootstrap', NULL),
(24, 9, 'Vue.js', NULL),
(25, 9, 'JQuery', NULL),
(26, 9, 'Popper.js', NULL),
(27, 9, 'Sass', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses_comments`
--

CREATE TABLE `tbl_courses_comments` (
  `id` int(11) NOT NULL,
  `parents_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(150) DEFAULT NULL,
  `comment` text NOT NULL,
  `likes` int(4) NOT NULL DEFAULT 0,
  `dislikes` int(4) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_courses_comments`
--

INSERT INTO `tbl_courses_comments` (`id`, `parents_id`, `title`, `comment`, `likes`, `dislikes`, `user_id`, `course_id`, `date`, `status`) VALUES
(1, 0, 'سوال', 'من نمیتونم فایل هارو دانلود کنم', 0, 0, 1, 3, '2023-09-10 20:55:11', '1'),
(2, 0, 'همینجوری', 'من نمیتونم فایل هارو ببینم', 0, 0, 1, 3, '2023-09-10 20:55:11', '1'),
(3, 1, 'ریپلای', 'ریپلای شماره 1', 0, 0, 1, 3, '2023-09-11 01:52:58', '1'),
(4, 1, 'ریپلای', 'ریپلای شماره 2', 0, 0, 1, 3, '2023-09-11 01:52:58', '1'),
(5, 1, 'ریپلای', 'ریپلای شماره 3', 0, 0, 1, 3, '2023-09-11 01:52:58', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses_scores`
--

CREATE TABLE `tbl_courses_scores` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses_videos`
--

CREATE TABLE `tbl_courses_videos` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `episode` int(3) NOT NULL,
  `time` int(11) NOT NULL,
  `link` text NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_courses_videos`
--

INSERT INTO `tbl_courses_videos` (`id`, `course_id`, `title`, `episode`, `time`, `link`, `date`, `status`) VALUES
(1, 3, NULL, 1, 12, 'https://toplearn.com/courses/DownloadFreeVideoFile/1365\n', '2023-08-23--02:50:13', 1),
(2, 3, NULL, 2, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/1389\r', '2023-08-23--02:50:13', 1),
(3, 3, NULL, 3, 15, 'https://toplearn.com/courses/DownloadFreeVideoFile/1435\r', '2023-08-23--02:50:13', 1),
(4, 3, NULL, 4, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/1456\r', '2023-08-23--02:50:13', 1),
(5, 3, NULL, 5, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/1459\r', '2023-08-23--02:50:13', 1),
(6, 3, NULL, 6, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/1489\r', '2023-08-23--02:50:13', 1),
(7, 3, NULL, 7, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/1503\r', '2023-08-23--02:50:13', 1),
(8, 3, NULL, 8, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/1513\r', '2023-08-23--02:50:13', 1),
(9, 3, NULL, 9, 17, 'https://toplearn.com/courses/DownloadFreeVideoFile/1529\r', '2023-08-23--02:50:13', 1),
(10, 3, NULL, 10, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/10427\r', '2023-08-23--02:50:13', 1),
(11, 3, NULL, 11, 17, 'https://toplearn.com/courses/DownloadFreeVideoFile/10462\r', '2023-08-23--02:50:13', 1),
(12, 3, NULL, 12, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/10563\r', '2023-08-23--02:50:13', 1),
(13, 3, NULL, 13, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/10604\r', '2023-08-23--02:50:13', 1),
(14, 3, NULL, 14, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/19725\r', '2023-08-23--02:50:13', 1),
(15, 3, NULL, 15, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/19873\r', '2023-08-23--02:50:13', 1),
(16, 3, NULL, 16, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/20001\r', '2023-08-23--02:50:13', 1),
(17, 3, NULL, 17, 27, 'https://toplearn.com/courses/DownloadFreeVideoFile/20177\r', '2023-08-23--02:50:13', 1),
(18, 3, NULL, 18, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/20366\r', '2023-08-23--02:50:13', 1),
(19, 3, NULL, 19, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/20640\r', '2023-08-23--02:50:13', 1),
(20, 3, NULL, 20, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/20733\r', '2023-08-23--02:50:13', 1),
(21, 3, NULL, 21, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/20886\r', '2023-08-23--02:50:13', 1),
(22, 3, NULL, 22, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/21130\r', '2023-08-23--02:50:13', 1),
(23, 3, NULL, 23, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/21345\r', '2023-08-23--02:50:13', 1),
(24, 3, NULL, 24, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/21469\r', '2023-08-23--02:50:13', 1),
(25, 3, NULL, 25, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/21714\r', '2023-08-23--02:50:13', 1),
(26, 3, NULL, 26, 21, 'https://toplearn.com/courses/DownloadFreeVideoFile/21962\r', '2023-08-23--02:50:13', 1),
(27, 3, NULL, 27, 28, 'https://toplearn.com/courses/DownloadFreeVideoFile/22038\r', '2023-08-23--02:50:13', 1),
(28, 3, NULL, 28, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/22134\r', '2023-08-23--02:50:13', 1),
(29, 3, NULL, 29, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/22191\r', '2023-08-23--02:50:13', 1),
(30, 3, NULL, 30, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/22344\r', '2023-08-23--02:50:13', 1),
(31, 3, NULL, 31, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/22394\r', '2023-08-23--02:50:13', 1),
(32, 3, NULL, 32, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/30983\r', '2023-08-23--02:50:13', 1),
(33, 3, NULL, 33, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/42216\r', '2023-08-23--02:50:13', 1),
(34, 3, NULL, 34, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/42217', '2023-08-23--02:50:13', 1),
(36, 4, NULL, 1, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/1208\n', '2023-08-24--21:29:35', 1),
(37, 4, NULL, 2, 28, 'https://toplearn.com/courses/DownloadFreeVideoFile/1209\r', '2023-08-24--21:29:36', 1),
(38, 4, NULL, 3, 27, 'https://toplearn.com/courses/DownloadFreeVideoFile/1210\r', '2023-08-24--21:29:37', 1),
(39, 4, NULL, 4, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/1212\r', '2023-08-24--21:29:38', 1),
(40, 4, NULL, 5, 17, 'https://toplearn.com/courses/DownloadFreeVideoFile/1213\r', '2023-08-24--21:29:39', 1),
(41, 4, NULL, 6, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/1216\r', '2023-08-24--21:29:40', 1),
(42, 4, NULL, 7, 13, 'https://toplearn.com/courses/DownloadFreeVideoFile/1217\r', '2023-08-24--21:29:41', 1),
(43, 4, NULL, 8, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/1223\r', '2023-08-24--21:29:42', 1),
(44, 4, NULL, 9, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/1226\r', '2023-08-24--21:29:43', 1),
(45, 4, NULL, 10, 21, 'https://toplearn.com/courses/DownloadFreeVideoFile/1228\r', '2023-08-24--21:29:44', 1),
(46, 4, NULL, 11, 28, 'https://toplearn.com/courses/DownloadFreeVideoFile/1230\r', '2023-08-24--21:29:45', 1),
(47, 4, NULL, 12, 23, 'https://toplearn.com/courses/DownloadFreeVideoFile/1231\r', '2023-08-24--21:29:46', 1),
(48, 4, NULL, 13, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/1232\r', '2023-08-24--21:29:47', 1),
(49, 4, NULL, 14, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/1236\r', '2023-08-24--21:29:48', 1),
(50, 4, NULL, 15, 25, 'https://toplearn.com/courses/DownloadFreeVideoFile/1243\r', '2023-08-24--21:29:49', 1),
(51, 4, NULL, 16, 17, 'https://toplearn.com/courses/DownloadFreeVideoFile/1250\r', '2023-08-24--21:29:50', 1),
(52, 4, NULL, 17, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/1256\r', '2023-08-24--21:29:51', 1),
(53, 4, NULL, 18, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/1257\r', '2023-08-24--21:29:52', 1),
(54, 4, NULL, 19, 21, 'https://toplearn.com/courses/DownloadFreeVideoFile/1274\r', '2023-08-24--21:29:53', 1),
(55, 4, NULL, 20, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/1281\r', '2023-08-24--21:29:54', 1),
(56, 4, NULL, 21, 13, 'https://toplearn.com/courses/DownloadFreeVideoFile/1283\r', '2023-08-24--21:29:55', 1),
(57, 4, NULL, 22, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/1289', '2023-08-24--21:29:56', 1),
(59, 4, NULL, 1, 28, 'https://toplearn.com/courses/DownloadFreeVideoFile/1208\r', '2023-08-25--00:58:49', 1),
(60, 4, NULL, 2, 13, 'https://toplearn.com/courses/DownloadFreeVideoFile/1209\r', '2023-08-25--00:58:50', 1),
(61, 4, NULL, 3, 13, 'https://toplearn.com/courses/DownloadFreeVideoFile/1210\r', '2023-08-25--00:58:51', 1),
(62, 4, NULL, 4, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/1212\r', '2023-08-25--00:58:52', 1),
(63, 4, NULL, 5, 23, 'https://toplearn.com/courses/DownloadFreeVideoFile/1213\r', '2023-08-25--00:58:53', 1),
(64, 4, NULL, 6, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/1216\r', '2023-08-25--00:58:54', 1),
(65, 4, NULL, 7, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/1217\r', '2023-08-25--00:58:55', 1),
(66, 4, NULL, 8, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/1223\r', '2023-08-25--00:58:56', 1),
(67, 4, NULL, 9, 25, 'https://toplearn.com/courses/DownloadFreeVideoFile/1226\r', '2023-08-25--00:58:57', 1),
(68, 4, NULL, 10, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/1228\r', '2023-08-25--00:58:58', 1),
(69, 4, NULL, 11, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/1230\r', '2023-08-25--00:58:59', 1),
(70, 4, NULL, 12, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/1231\r', '2023-08-25--00:59:00', 1),
(71, 4, NULL, 13, 12, 'https://toplearn.com/courses/DownloadFreeVideoFile/1232\r', '2023-08-25--00:59:01', 1),
(72, 4, NULL, 14, 12, 'https://toplearn.com/courses/DownloadFreeVideoFile/1236\r', '2023-08-25--00:59:02', 1),
(73, 4, NULL, 15, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/1243\r', '2023-08-25--00:59:03', 1),
(74, 4, NULL, 16, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/1250\r', '2023-08-25--00:59:04', 1),
(75, 4, NULL, 17, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/1256\r', '2023-08-25--00:59:05', 1),
(76, 4, NULL, 18, 26, 'https://toplearn.com/courses/DownloadFreeVideoFile/1257\r', '2023-08-25--00:59:06', 1),
(77, 4, NULL, 19, 28, 'https://toplearn.com/courses/DownloadFreeVideoFile/1274\r', '2023-08-25--00:59:07', 1),
(78, 4, NULL, 20, 23, 'https://toplearn.com/courses/DownloadFreeVideoFile/1281\r', '2023-08-25--00:59:08', 1),
(79, 4, NULL, 21, 13, 'https://toplearn.com/courses/DownloadFreeVideoFile/1283\r', '2023-08-25--00:59:09', 1),
(80, 4, NULL, 22, 21, 'https://toplearn.com/courses/DownloadFreeVideoFile/1289', '2023-08-25--00:59:10', 1),
(81, 1254, NULL, 1, 23, 'https://toplearn.com/courses/DownloadFreeVideoFile/173\r', '2023-08-29--23:12:19', 1),
(82, 1254, NULL, 2, 25, 'https://toplearn.com/courses/DownloadFreeVideoFile/175\r', '2023-08-29--23:12:20', 1),
(83, 1254, NULL, 3, 17, 'https://toplearn.com/courses/DownloadFreeVideoFile/177\r', '2023-08-29--23:12:21', 1),
(84, 1254, NULL, 4, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/179\r', '2023-08-29--23:12:22', 1),
(85, 1254, NULL, 5, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/181\r', '2023-08-29--23:12:23', 1),
(86, 1254, NULL, 6, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/182\r', '2023-08-29--23:12:24', 1),
(87, 1254, NULL, 7, 15, 'https://toplearn.com/courses/DownloadFreeVideoFile/187\r', '2023-08-29--23:12:25', 1),
(88, 1254, NULL, 8, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/189\r', '2023-08-29--23:12:26', 1),
(89, 1254, NULL, 9, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/192\r', '2023-08-29--23:12:27', 1),
(90, 1254, NULL, 10, 25, 'https://toplearn.com/courses/DownloadFreeVideoFile/194\r', '2023-08-29--23:12:28', 1),
(91, 1254, NULL, 11, 17, 'https://toplearn.com/courses/DownloadFreeVideoFile/195\r', '2023-08-29--23:12:30', 1),
(92, 1254, NULL, 12, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/197\r', '2023-08-29--23:12:31', 1),
(93, 1254, NULL, 13, 12, 'https://toplearn.com/courses/DownloadFreeVideoFile/200\r', '2023-08-29--23:12:32', 1),
(94, 1254, NULL, 14, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/202\r', '2023-08-29--23:12:33', 1),
(95, 1254, NULL, 15, 17, 'https://toplearn.com/courses/DownloadFreeVideoFile/203\r', '2023-08-29--23:12:34', 1),
(96, 1254, NULL, 16, 25, 'https://toplearn.com/courses/DownloadFreeVideoFile/204\r', '2023-08-29--23:12:35', 1),
(97, 1254, NULL, 17, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/205\r', '2023-08-29--23:12:36', 1),
(98, 1254, NULL, 18, 28, 'https://toplearn.com/courses/DownloadFreeVideoFile/1203\r', '2023-08-29--23:12:37', 1),
(99, 1254, NULL, 19, 23, 'https://toplearn.com/courses/DownloadFreeVideoFile/1204\r', '2023-08-29--23:12:38', 1),
(100, 1254, NULL, 20, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/1205\r', '2023-08-29--23:12:39', 1),
(101, 1254, NULL, 21, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/1206', '2023-08-29--23:12:40', 1),
(104, 1255, NULL, 1, 15, 'https://toplearn.com/courses/DownloadFreeVideoFile/10096\r', '2023-08-29--23:48:48', 1),
(105, 1255, NULL, 2, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/10105\r', '2023-08-29--23:48:48', 1),
(106, 1255, NULL, 3, 17, 'https://toplearn.com/courses/DownloadFreeVideoFile/10180\r', '2023-08-29--23:48:48', 1),
(107, 1255, NULL, 4, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/10181\r', '2023-08-29--23:48:48', 1),
(108, 1255, NULL, 5, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/10218\r', '2023-08-29--23:48:48', 1),
(109, 1255, NULL, 6, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/10232\r', '2023-08-29--23:48:48', 1),
(110, 1255, NULL, 7, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/10246\r', '2023-08-29--23:48:48', 1),
(111, 1255, NULL, 8, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/10271\r', '2023-08-29--23:48:48', 1),
(112, 1255, NULL, 9, 13, 'https://toplearn.com/courses/DownloadFreeVideoFile/10315\r', '2023-08-29--23:48:48', 1),
(113, 1255, NULL, 10, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/10330\r', '2023-08-29--23:48:48', 1),
(114, 1255, NULL, 11, 28, 'https://toplearn.com/courses/DownloadFreeVideoFile/10368\r', '2023-08-29--23:48:48', 1),
(115, 1255, NULL, 12, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/10388\r', '2023-08-29--23:48:48', 1),
(116, 1255, NULL, 13, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/10404\r', '2023-08-29--23:48:48', 1),
(117, 1255, NULL, 14, 21, 'https://toplearn.com/courses/DownloadFreeVideoFile/10439\r', '2023-08-29--23:48:48', 1),
(118, 1255, NULL, 15, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/10472\r', '2023-08-29--23:48:48', 1),
(119, 1255, NULL, 16, 26, 'https://toplearn.com/courses/DownloadFreeVideoFile/10497\r', '2023-08-29--23:48:48', 1),
(120, 1255, NULL, 17, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/10513\r', '2023-08-29--23:48:48', 1),
(121, 1255, NULL, 18, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/10536\r', '2023-08-29--23:48:48', 1),
(122, 1255, NULL, 19, 15, 'https://toplearn.com/courses/DownloadFreeVideoFile/10553\r', '2023-08-29--23:48:48', 1),
(123, 1255, NULL, 20, 26, 'https://toplearn.com/courses/DownloadFreeVideoFile/10602\r', '2023-08-29--23:48:48', 1),
(124, 1255, NULL, 21, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/10607\r', '2023-08-29--23:48:48', 1),
(125, 1255, NULL, 22, 15, 'https://toplearn.com/courses/DownloadFreeVideoFile/10617\r', '2023-08-29--23:48:48', 1),
(126, 1255, NULL, 23, 25, 'https://toplearn.com/courses/DownloadFreeVideoFile/10642\r', '2023-08-29--23:48:48', 1),
(127, 1255, NULL, 24, 13, 'https://toplearn.com/courses/DownloadFreeVideoFile/10711\r', '2023-08-29--23:48:48', 1),
(128, 1255, NULL, 25, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/10712\r', '2023-08-29--23:48:48', 1),
(129, 1255, NULL, 26, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/10713\r', '2023-08-29--23:48:48', 1),
(130, 1255, NULL, 27, 25, 'https://toplearn.com/courses/DownloadFreeVideoFile/10736\r', '2023-08-29--23:48:48', 1),
(131, 1255, NULL, 28, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/10760\r', '2023-08-29--23:48:48', 1),
(132, 1255, NULL, 29, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/11793\r', '2023-08-29--23:48:48', 1),
(133, 1255, NULL, 30, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/11806\r', '2023-08-29--23:48:48', 1),
(134, 1255, NULL, 31, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/11829\r', '2023-08-29--23:48:48', 1),
(135, 1255, NULL, 32, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/11842\r', '2023-08-29--23:48:48', 1),
(136, 1255, NULL, 33, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/11867\r', '2023-08-29--23:48:48', 1),
(137, 1255, NULL, 34, 17, 'https://toplearn.com/courses/DownloadFreeVideoFile/11896\r', '2023-08-29--23:48:48', 1),
(138, 1255, NULL, 35, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/11914\r', '2023-08-29--23:48:48', 1),
(139, 1255, NULL, 36, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/11923\r', '2023-08-29--23:48:48', 1),
(140, 1255, NULL, 37, 26, 'https://toplearn.com/courses/DownloadFreeVideoFile/11924\r', '2023-08-29--23:48:48', 1),
(141, 1255, NULL, 38, 27, 'https://toplearn.com/courses/DownloadFreeVideoFile/11940\r', '2023-08-29--23:48:48', 1),
(142, 1255, NULL, 39, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/11941\r', '2023-08-29--23:48:48', 1),
(143, 1255, NULL, 40, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/11949\r', '2023-08-29--23:48:48', 1),
(144, 1255, NULL, 41, 15, 'https://toplearn.com/courses/DownloadFreeVideoFile/11963\r', '2023-08-29--23:48:48', 1),
(145, 1255, NULL, 42, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/11986\r', '2023-08-29--23:48:48', 1),
(146, 1255, NULL, 43, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/12011\r', '2023-08-29--23:48:48', 1),
(147, 1255, NULL, 44, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/12031\r', '2023-08-29--23:48:48', 1),
(148, 1255, NULL, 45, 23, 'https://toplearn.com/courses/DownloadFreeVideoFile/12046\r', '2023-08-29--23:48:48', 1),
(149, 1255, NULL, 46, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/12088\r', '2023-08-29--23:48:48', 1),
(150, 1255, NULL, 47, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/12089\r', '2023-08-29--23:48:48', 1),
(151, 1255, NULL, 48, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/13105\r', '2023-08-29--23:48:48', 1),
(152, 1255, NULL, 49, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/13145\r', '2023-08-29--23:48:48', 1),
(153, 1255, NULL, 50, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/13150\r', '2023-08-29--23:48:48', 1),
(154, 1255, NULL, 51, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/13151\r', '2023-08-29--23:48:48', 1),
(155, 1255, NULL, 52, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/13167\r', '2023-08-29--23:48:48', 1),
(156, 1255, NULL, 53, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/13192\r', '2023-08-29--23:48:48', 1),
(157, 1255, NULL, 54, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/13214\r', '2023-08-29--23:48:48', 1),
(158, 1255, NULL, 55, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/13229\r', '2023-08-29--23:48:48', 1),
(159, 1255, NULL, 56, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/13250\r', '2023-08-29--23:48:48', 1),
(160, 1255, NULL, 57, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/13280\r', '2023-08-29--23:48:48', 1),
(161, 1255, NULL, 58, 17, 'https://toplearn.com/courses/DownloadFreeVideoFile/14313\r', '2023-08-29--23:48:48', 1),
(162, 1255, NULL, 59, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/14337\r', '2023-08-29--23:48:48', 1),
(163, 1255, NULL, 60, 21, 'https://toplearn.com/courses/DownloadFreeVideoFile/14347\r', '2023-08-29--23:48:48', 1),
(164, 1255, NULL, 61, 21, 'https://toplearn.com/courses/DownloadFreeVideoFile/14359\r', '2023-08-29--23:48:48', 1),
(165, 1255, NULL, 62, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/14375\r', '2023-08-29--23:48:48', 1),
(166, 1255, NULL, 63, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/14392\r', '2023-08-29--23:48:48', 1),
(167, 1255, NULL, 64, 23, 'https://toplearn.com/courses/DownloadFreeVideoFile/14404\r', '2023-08-29--23:48:48', 1),
(168, 1255, NULL, 65, 27, 'https://toplearn.com/courses/DownloadFreeVideoFile/14412\r', '2023-08-29--23:48:48', 1),
(169, 1255, NULL, 66, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/14413\r', '2023-08-29--23:48:48', 1),
(170, 1255, NULL, 67, 26, 'https://toplearn.com/courses/DownloadFreeVideoFile/14422\r', '2023-08-29--23:48:48', 1),
(171, 1255, NULL, 68, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/14423\r', '2023-08-29--23:48:48', 1),
(172, 1255, NULL, 69, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/14463\r', '2023-08-29--23:48:48', 1),
(173, 1255, NULL, 70, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/14470\r', '2023-08-29--23:48:48', 1),
(174, 1255, NULL, 71, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/14479\r', '2023-08-29--23:48:48', 1),
(175, 1255, NULL, 72, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/14486\r', '2023-08-29--23:48:48', 1),
(176, 1255, NULL, 73, 12, 'https://toplearn.com/courses/DownloadFreeVideoFile/14523\r', '2023-08-29--23:48:48', 1),
(177, 1255, NULL, 74, 23, 'https://toplearn.com/courses/DownloadFreeVideoFile/14533\r', '2023-08-29--23:48:48', 1),
(178, 1255, NULL, 75, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/14550\r', '2023-08-29--23:48:48', 1),
(179, 1255, NULL, 76, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/14566\r', '2023-08-29--23:48:48', 1),
(180, 1255, NULL, 77, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/14607\r', '2023-08-29--23:48:48', 1),
(181, 1255, NULL, 78, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/14652\r', '2023-08-29--23:48:48', 1),
(182, 1255, NULL, 79, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/14673\r', '2023-08-29--23:48:48', 1),
(183, 1255, NULL, 80, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/14680\r', '2023-08-29--23:48:48', 1),
(184, 1255, NULL, 81, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/14695\r', '2023-08-29--23:48:48', 1),
(185, 1255, NULL, 82, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/14720\r', '2023-08-29--23:48:48', 1),
(186, 1255, NULL, 83, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/15722\r', '2023-08-29--23:48:48', 1),
(187, 1255, NULL, 84, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/15744\r', '2023-08-29--23:48:48', 1),
(188, 1255, NULL, 85, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/16838\r', '2023-08-29--23:48:48', 1),
(189, 1255, NULL, 86, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/16876\r', '2023-08-29--23:48:48', 1),
(190, 1255, NULL, 87, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/16915\r', '2023-08-29--23:48:48', 1),
(191, 1255, NULL, 88, 13, 'https://toplearn.com/courses/DownloadFreeVideoFile/16972\r', '2023-08-29--23:48:48', 1),
(192, 1255, NULL, 89, 17, 'https://toplearn.com/courses/DownloadFreeVideoFile/16999\r', '2023-08-29--23:48:48', 1),
(193, 1255, NULL, 90, 27, 'https://toplearn.com/courses/DownloadFreeVideoFile/17104\r', '2023-08-29--23:48:48', 1),
(194, 1255, NULL, 91, 23, 'https://toplearn.com/courses/DownloadFreeVideoFile/17203\r', '2023-08-29--23:48:48', 1),
(195, 1255, NULL, 92, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/17237\r', '2023-08-29--23:48:48', 1),
(196, 1255, NULL, 93, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/18405\r', '2023-08-29--23:48:48', 1),
(197, 1255, NULL, 94, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/18406\r', '2023-08-29--23:48:48', 1),
(198, 1255, NULL, 95, 17, 'https://toplearn.com/courses/DownloadFreeVideoFile/18407\r', '2023-08-29--23:48:48', 1),
(199, 1255, NULL, 96, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/18408\r', '2023-08-29--23:48:48', 1),
(200, 1255, NULL, 97, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/19512', '2023-08-29--23:48:48', 1),
(201, 1256, NULL, 1, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/3779\r', '2023-08-29--23:53:58', 1),
(202, 1256, NULL, 2, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/3786\r', '2023-08-29--23:53:58', 1),
(203, 1256, NULL, 3, 28, 'https://toplearn.com/courses/DownloadFreeVideoFile/3789\r', '2023-08-29--23:53:58', 1),
(204, 1256, NULL, 4, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/3800\r', '2023-08-29--23:53:58', 1),
(205, 1256, NULL, 5, 27, 'https://toplearn.com/courses/DownloadFreeVideoFile/3801\r', '2023-08-29--23:53:58', 1),
(206, 1256, NULL, 6, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/3804\r', '2023-08-29--23:53:58', 1),
(207, 1256, NULL, 7, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/3805\r', '2023-08-29--23:53:58', 1),
(208, 1256, NULL, 8, 27, 'https://toplearn.com/courses/DownloadFreeVideoFile/3806\r', '2023-08-29--23:53:58', 1),
(209, 1256, NULL, 9, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/3821\r', '2023-08-29--23:53:58', 1),
(210, 1256, NULL, 10, 15, 'https://toplearn.com/courses/DownloadFreeVideoFile/3845\r', '2023-08-29--23:53:58', 1),
(211, 1256, NULL, 11, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/3852\r', '2023-08-29--23:53:58', 1),
(212, 1256, NULL, 12, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/3858\r', '2023-08-29--23:53:58', 1),
(213, 1256, NULL, 13, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/3865\r', '2023-08-29--23:53:58', 1),
(214, 1256, NULL, 14, 26, 'https://toplearn.com/courses/DownloadFreeVideoFile/3866\r', '2023-08-29--23:53:58', 1),
(215, 1256, NULL, 15, 28, 'https://toplearn.com/courses/DownloadFreeVideoFile/3872\r', '2023-08-29--23:53:58', 1),
(216, 1256, NULL, 16, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/3880\r', '2023-08-29--23:53:58', 1),
(217, 1256, NULL, 17, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/3887\r', '2023-08-29--23:53:58', 1),
(218, 1256, NULL, 18, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/3891\r', '2023-08-29--23:53:58', 1),
(219, 1256, NULL, 19, 26, 'https://toplearn.com/courses/DownloadFreeVideoFile/3899\r', '2023-08-29--23:53:58', 1),
(220, 1256, NULL, 20, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/3905\r', '2023-08-29--23:53:58', 1),
(221, 1256, NULL, 21, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/3920\r', '2023-08-29--23:53:58', 1),
(222, 1256, NULL, 22, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/3926\r', '2023-08-29--23:53:58', 1),
(223, 1256, NULL, 23, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/3937\r', '2023-08-29--23:53:58', 1),
(224, 1256, NULL, 24, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/3939\r', '2023-08-29--23:53:58', 1),
(225, 1256, NULL, 25, 15, 'https://toplearn.com/courses/DownloadFreeVideoFile/3950\r', '2023-08-29--23:53:58', 1),
(226, 1256, NULL, 26, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/3957\r', '2023-08-29--23:53:58', 1),
(227, 1256, NULL, 27, 26, 'https://toplearn.com/courses/DownloadFreeVideoFile/3965\r', '2023-08-29--23:53:58', 1),
(228, 1256, NULL, 28, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/3969\r', '2023-08-29--23:53:58', 1),
(229, 1256, NULL, 29, 23, 'https://toplearn.com/courses/DownloadFreeVideoFile/3982\r', '2023-08-29--23:53:58', 1),
(230, 1256, NULL, 30, 15, 'https://toplearn.com/courses/DownloadFreeVideoFile/3986\r', '2023-08-29--23:53:58', 1),
(231, 1256, NULL, 31, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/3987\r', '2023-08-29--23:53:58', 1),
(232, 1256, NULL, 32, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/4000\r', '2023-08-29--23:53:58', 1),
(233, 1256, NULL, 33, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/4017\r', '2023-08-29--23:53:58', 1),
(234, 1256, NULL, 34, 12, 'https://toplearn.com/courses/DownloadFreeVideoFile/6466\r', '2023-08-29--23:53:58', 1),
(235, 1256, NULL, 35, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/7472\r', '2023-08-29--23:53:58', 1),
(236, 1256, NULL, 36, 13, 'https://toplearn.com/courses/DownloadFreeVideoFile/7473\r', '2023-08-29--23:53:58', 1),
(237, 1256, NULL, 37, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/7475\r', '2023-08-29--23:53:58', 1),
(238, 1256, NULL, 38, 27, 'https://toplearn.com/courses/DownloadFreeVideoFile/7488\r', '2023-08-29--23:53:58', 1),
(239, 1256, NULL, 39, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/7494\r', '2023-08-29--23:53:58', 1),
(240, 1256, NULL, 40, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/7499\r', '2023-08-29--23:53:58', 1),
(241, 1256, NULL, 41, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/7501\r', '2023-08-29--23:53:58', 1),
(242, 1256, NULL, 42, 12, 'https://toplearn.com/courses/DownloadFreeVideoFile/10467\r', '2023-08-29--23:53:58', 1),
(243, 1256, NULL, 43, 12, 'https://toplearn.com/courses/DownloadFreeVideoFile/10482\r', '2023-08-29--23:53:58', 1),
(244, 1256, NULL, 44, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/10493\r', '2023-08-29--23:53:58', 1),
(245, 1256, NULL, 45, 15, 'https://toplearn.com/courses/DownloadFreeVideoFile/10586\r', '2023-08-29--23:53:58', 1),
(246, 1256, NULL, 46, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/10611\r', '2023-08-29--23:53:58', 1),
(247, 1256, NULL, 47, 11, 'https://toplearn.com/courses/DownloadFreeVideoFile/10612\r', '2023-08-29--23:53:58', 1),
(248, 1256, NULL, 48, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/10619\r', '2023-08-29--23:53:58', 1),
(249, 1256, NULL, 49, 13, 'https://toplearn.com/courses/DownloadFreeVideoFile/10637\r', '2023-08-29--23:53:58', 1),
(250, 1256, NULL, 50, 15, 'https://toplearn.com/courses/DownloadFreeVideoFile/10716\r', '2023-08-29--23:53:58', 1),
(251, 1256, NULL, 51, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/10717\r', '2023-08-29--23:53:58', 1),
(252, 1256, NULL, 52, 24, 'https://toplearn.com/courses/DownloadFreeVideoFile/10740\r', '2023-08-29--23:53:58', 1),
(253, 1256, NULL, 53, 21, 'https://toplearn.com/courses/DownloadFreeVideoFile/11835\r', '2023-08-29--23:53:58', 1),
(254, 1256, NULL, 54, 29, 'https://toplearn.com/courses/DownloadFreeVideoFile/11837\r', '2023-08-29--23:53:58', 1),
(255, 1256, NULL, 55, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/11839\r', '2023-08-29--23:53:58', 1),
(256, 1256, NULL, 56, 21, 'https://toplearn.com/courses/DownloadFreeVideoFile/11841\r', '2023-08-29--23:53:58', 1),
(257, 1256, NULL, 57, 27, 'https://toplearn.com/courses/DownloadFreeVideoFile/11881\r', '2023-08-29--23:53:58', 1),
(258, 1256, NULL, 58, 21, 'https://toplearn.com/courses/DownloadFreeVideoFile/20470\r', '2023-08-29--23:53:58', 1),
(259, 1256, NULL, 59, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/20507\r', '2023-08-29--23:53:58', 1),
(260, 1256, NULL, 60, 13, 'https://toplearn.com/courses/DownloadFreeVideoFile/20564\r', '2023-08-29--23:53:58', 1),
(261, 1256, NULL, 61, 14, 'https://toplearn.com/courses/DownloadFreeVideoFile/20652\r', '2023-08-29--23:53:58', 1),
(262, 1256, NULL, 62, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/20689\r', '2023-08-29--23:53:58', 1),
(263, 1256, NULL, 63, 12, 'https://toplearn.com/courses/DownloadFreeVideoFile/20718\r', '2023-08-29--23:53:58', 1),
(264, 1256, NULL, 64, 20, 'https://toplearn.com/courses/DownloadFreeVideoFile/20730\r', '2023-08-29--23:53:58', 1),
(265, 1256, NULL, 65, 12, 'https://toplearn.com/courses/DownloadFreeVideoFile/20786\r', '2023-08-29--23:53:58', 1),
(266, 1256, NULL, 66, 16, 'https://toplearn.com/courses/DownloadFreeVideoFile/20845\r', '2023-08-29--23:53:58', 1),
(267, 1256, NULL, 67, 18, 'https://toplearn.com/courses/DownloadFreeVideoFile/20847\r', '2023-08-29--23:53:58', 1),
(268, 1256, NULL, 68, 27, 'https://toplearn.com/courses/DownloadFreeVideoFile/20848\r', '2023-08-29--23:53:58', 1),
(269, 1256, NULL, 69, 26, 'https://toplearn.com/courses/DownloadFreeVideoFile/22861\r', '2023-08-29--23:53:58', 1),
(270, 1256, NULL, 70, 22, 'https://toplearn.com/courses/DownloadFreeVideoFile/22888\r', '2023-08-29--23:53:58', 1),
(271, 1256, NULL, 71, 30, 'https://toplearn.com/courses/DownloadFreeVideoFile/22922\r', '2023-08-29--23:53:58', 1),
(272, 1256, NULL, 72, 13, 'https://toplearn.com/courses/DownloadFreeVideoFile/22923\r', '2023-08-29--23:53:58', 1),
(273, 1256, NULL, 73, 10, 'https://toplearn.com/courses/DownloadFreeVideoFile/23046\r', '2023-08-29--23:53:58', 1),
(274, 1256, NULL, 74, 28, 'https://toplearn.com/courses/DownloadFreeVideoFile/23382\r', '2023-08-29--23:53:58', 1),
(275, 1256, NULL, 75, 19, 'https://toplearn.com/courses/DownloadFreeVideoFile/29596', '2023-08-29--23:53:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount_code`
--

CREATE TABLE `tbl_discount_code` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `start_date` varchar(20) NOT NULL,
  `expire_date` varchar(20) DEFAULT NULL,
  `discount` int(3) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `is_single_user` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_factors`
--

CREATE TABLE `tbl_factors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created-date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `edit_date` varchar(20) DEFAULT NULL,
  `paid_date` varchar(20) DEFAULT NULL,
  `discount_code` varchar(25) DEFAULT NULL,
  `follow_up_code` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_factors`
--

INSERT INTO `tbl_factors` (`id`, `user_id`, `created-date`, `status`, `edit_date`, `paid_date`, `discount_code`, `follow_up_code`) VALUES
(1, 1, '254', 1, NULL, NULL, NULL, ''),
(2, 1, '254``', 1, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favourites`
--

CREATE TABLE `tbl_favourites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `is_blog` tinyblob NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `status` tinyblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_followup_code`
--

CREATE TABLE `tbl_followup_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_followup_code`
--

INSERT INTO `tbl_followup_code` (`id`, `date`, `status`) VALUES
(132648, '4545', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_labels`
--

CREATE TABLE `tbl_labels` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_labels`
--

INSERT INTO `tbl_labels` (`id`, `course_id`, `name`) VALUES
(1, 2, 'پایتون'),
(2, 2, 'هوش مصنوعی'),
(3, 2, 'python'),
(4, 2, 'AI'),
(5, 2, 'یادگیری'),
(6, 2, 'برنامه نویسی'),
(8, 3, 'php'),
(9, 4, 'c#'),
(10, 4, 'c# advance'),
(11, 1254, 'C#'),
(12, 1254, 'C# مقدماتی'),
(14, 1255, ''),
(15, 1255, 'پابتون'),
(16, 1255, 'python'),
(17, 1256, ''),
(18, 1256, 'js'),
(19, 1256, 'java script'),
(190064, 1268, '5'),
(190065, 1269, '5'),
(190066, 1270, '5'),
(190067, 1271, '5'),
(190068, 1272, '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `user_id`, `title`, `ip`, `date`) VALUES
(3, 1, 'ورود کاربر', '127.0.0.1', '2023-08-28--03:41:07'),
(4, 0, 'عضویت کاربر با ایمیل dfoha410@gmail.com', '127.0.0.1', '2023-08-28--03:46:15'),
(5, 1, 'ورود کاربر', '127.0.0.1', '2023-09-25--03:10:06'),
(6, 1, 'ورود کاربر', '127.0.0.1', '2023-09-25--06:02:18'),
(7, 1, 'ورود کاربر', '127.0.0.1', '2023-09-25--06:02:29'),
(8, 1, 'ورود کاربر', '127.0.0.1', '2023-09-25--06:02:59'),
(9, 1, 'ورود کاربر', '127.0.0.1', '2023-09-25--06:03:23'),
(10, 1, 'ورود کاربر', '127.0.0.1', '2023-09-25--06:12:15'),
(11, 1, 'ورود کاربر', '127.0.0.1', '2023-09-25--06:17:31'),
(12, 1, 'ورود کاربر', '127.0.0.1', '2023-09-25--06:20:49'),
(13, 1, 'ورود کاربر', '127.0.0.1', '2023-09-25--06:22:58'),
(14, 1, 'ورود کاربر', '127.0.0.1', '2023-09-25--06:24:46'),
(15, 1, 'ورود کاربر', '127.0.0.1', '2023-09-26--21:48:51'),
(16, 1, 'ورود کاربر', '127.0.0.1', '2023-09-26--21:50:04'),
(17, 1, 'ورود کاربر', '127.0.0.1', '2023-09-27--04:10:19'),
(18, 5, '5', '5', '5'),
(19, 5, '5', '5', '5'),
(20, 5, '1', 'ali', '5'),
(21, 5, '1', 'ali', '5'),
(22, 5, '1', 'ali', '5'),
(23, 5, '', '', '5'),
(24, 5, '1', 'ali', '5'),
(25, 5, '', '', '5'),
(26, 5, '', '', '5'),
(27, 5, '', '', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_passwords`
--

CREATE TABLE `tbl_passwords` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `password` varchar(64) NOT NULL,
  `created_date` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE `tbl_questions` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `is_answered` tinyint(1) NOT NULL DEFAULT 0,
  `date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions_details`
--

CREATE TABLE `tbl_questions_details` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_statistics`
--

CREATE TABLE `tbl_statistics` (
  `id` int(11) NOT NULL,
  `type_code` int(11) NOT NULL,
  `hint` text DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_statistics`
--

INSERT INTO `tbl_statistics` (`id`, `type_code`, `hint`, `name`, `value`, `date`, `status`) VALUES
(22, 1111, 'آموزش مدلسازی پایه و ماشین لرنینگ با پایتون\r\n', '2', '1', '2023-09-16--06:23:45', 1),
(23, 1111, 'دوره آموزشی php (مقدماتی)', '3', '1', '2023-09-16--06:23:45', 1),
(24, 1111, 'آموزش سی شارپ پیشرفته\r\n', '4', '0', '2023-09-16--06:23:45', 1),
(25, 1111, 'دوره آموزش سی شارپ از مقدماتی تا پیشرفته', '1254', '0', '2023-09-16--06:23:45', 1),
(26, 1111, 'آموزش رایگان پایتون ( Python )', '1255', '0', '2023-09-16--06:23:45', 1),
(27, 1111, 'آموزش مقدماتی تا پیشرفته JS', '1256', '0', '2023-09-16--06:23:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teachers`
--

CREATE TABLE `tbl_teachers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `family` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telegram-id` varchar(25) NOT NULL,
  `picture` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_teachers`
--

INSERT INTO `tbl_teachers` (`id`, `user_id`, `name`, `family`, `email`, `telegram-id`, `picture`, `description`, `status`) VALUES
(13546, 0, ' امیرحسین ', 'ساوه دربندسری', 'save@gmail.com', 'save_amirhossein', 'https://toplearn.com/img/user/250x259/5842b2a5-fc7b-4dd0-b4f3-b0815af9422b_amirhossein_darbandsary.jpeg', 'سلام من امیرحسین دربندسری مدرس و برنامه نویس هوش مصنوعی هستم خیلی خوشحالم که میتونم در راه هوش مصنوعی کمکی به شما باشم.\r\nرزومه من رو میتونین از طریق لینک زیر مشاهده کنید.\r\n\r\nhttps://www.linkedin.com/in/amirhossein-darbandsari-505803207/', 1),
(13547, 0, 'حسن ', 'خسروجردی', 'hasan@ymail.com', 'hasan', 'https://toplearn.com/img/user/250x259/268_2b05b90b-7a78-4e35-058f-39e6b8cf2ac1_%D8%AD%D8%B3%D9%86%20_%D8%AE%D8%B3%D8%B1%D9%88%D8%AC%D8%B1%D8%AF%DB%8C.jpeg', 'رزومه کامل من رو در این <a href=\'https://hassankhosrojerdi.ir/\'>لینک</a>میتوانید مشاهده کنید\r\n\r\n', 1),
(13548, 0, 'ایمان ', 'مدائنی', 'iman@mail.com', 'iman', 'https://toplearn.com/img/user/250x259/2402cc6d-1d17-6a22-e6cc-39e3248f13a4_%D8%A7%DB%8C%D9%85%D8%A7%D9%86_%D9%85%D8%AF%D8%A7%D8%A6%D9%86%DB%8C9.jpg', 'ایمان مدائنی هستم ، مدرس بین المللی و رسمی مایکروسافت .رزومه کامل من رو در این <a href=\'https://www.madaeny.com/\'>لینک</a>میتوانید مشاهده کنید ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tickets`
--

CREATE TABLE `tbl_tickets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tickets_details`
--

CREATE TABLE `tbl_tickets_details` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `sender` varchar(7) NOT NULL,
  `description` longtext NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(7) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `family` varchar(30) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created-at` varchar(20) NOT NULL,
  `last-login` varchar(20) NOT NULL,
  `wallet-id` int(7) DEFAULT NULL,
  `privillege_id` int(3) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `family`, `age`, `email`, `phone`, `password`, `created-at`, `last-login`, `wallet-id`, `privillege_id`, `status`) VALUES
(1, 'mohammad ', 'movahed', 21, 'oha410@gmail.com', '123', '123', '123', '123', 2, 5, 5),
(1752, NULL, NULL, NULL, 'dfoha410@gmail.com', '09191382656', '@Mmohammad123', '2023-08-28 03:46:15', '2023-08-28 03:46:15', NULL, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet`
--

CREATE TABLE `tbl_wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `last_update` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet_datails`
--

CREATE TABLE `tbl_wallet_datails` (
  `id` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `kind_of_transaction` tinyint(1) NOT NULL,
  `amount` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blogs_categories`
--
ALTER TABLE `tbl_blogs_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blogs_comments`
--
ALTER TABLE `tbl_blogs_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blogs_contents`
--
ALTER TABLE `tbl_blogs_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blogs_scores`
--
ALTER TABLE `tbl_blogs_scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courses_booklets`
--
ALTER TABLE `tbl_courses_booklets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courses_categories`
--
ALTER TABLE `tbl_courses_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courses_comments`
--
ALTER TABLE `tbl_courses_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courses_scores`
--
ALTER TABLE `tbl_courses_scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courses_videos`
--
ALTER TABLE `tbl_courses_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_discount_code`
--
ALTER TABLE `tbl_discount_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_factors`
--
ALTER TABLE `tbl_factors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_favourites`
--
ALTER TABLE `tbl_favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_followup_code`
--
ALTER TABLE `tbl_followup_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_labels`
--
ALTER TABLE `tbl_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_passwords`
--
ALTER TABLE `tbl_passwords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_questions_details`
--
ALTER TABLE `tbl_questions_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_statistics`
--
ALTER TABLE `tbl_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teachers`
--
ALTER TABLE `tbl_teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tickets`
--
ALTER TABLE `tbl_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tickets_details`
--
ALTER TABLE `tbl_tickets_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wallet_datails`
--
ALTER TABLE `tbl_wallet_datails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1254;

--
-- AUTO_INCREMENT for table `tbl_blogs_categories`
--
ALTER TABLE `tbl_blogs_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_blogs_comments`
--
ALTER TABLE `tbl_blogs_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_blogs_contents`
--
ALTER TABLE `tbl_blogs_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_blogs_scores`
--
ALTER TABLE `tbl_blogs_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1273;

--
-- AUTO_INCREMENT for table `tbl_courses_booklets`
--
ALTER TABLE `tbl_courses_booklets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_courses_categories`
--
ALTER TABLE `tbl_courses_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_courses_comments`
--
ALTER TABLE `tbl_courses_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_courses_scores`
--
ALTER TABLE `tbl_courses_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_courses_videos`
--
ALTER TABLE `tbl_courses_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `tbl_discount_code`
--
ALTER TABLE `tbl_discount_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_factors`
--
ALTER TABLE `tbl_factors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_favourites`
--
ALTER TABLE `tbl_favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_followup_code`
--
ALTER TABLE `tbl_followup_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132649;

--
-- AUTO_INCREMENT for table `tbl_labels`
--
ALTER TABLE `tbl_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190069;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_passwords`
--
ALTER TABLE `tbl_passwords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_questions_details`
--
ALTER TABLE `tbl_questions_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_statistics`
--
ALTER TABLE `tbl_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_teachers`
--
ALTER TABLE `tbl_teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13567;

--
-- AUTO_INCREMENT for table `tbl_tickets`
--
ALTER TABLE `tbl_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tickets_details`
--
ALTER TABLE `tbl_tickets_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1753;

--
-- AUTO_INCREMENT for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_wallet_datails`
--
ALTER TABLE `tbl_wallet_datails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
