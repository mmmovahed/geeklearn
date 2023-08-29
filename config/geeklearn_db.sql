-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2023 at 08:39 PM
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
-- Table structure for table `tbl_blogs_comments_details`
--

CREATE TABLE `tbl_blogs_comments_details` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `title`, `description`, `thumbnail`, `teacher_id`, `advantages`, `category_id`, `created_at`, `last_update`, `cost`, `time`, `episode`, `discount`, `in_advance`, `level`, `status`) VALUES
(2, 'آموزش مدلسازی پایه و ماشین لرنینگ با پایتون\r\n', 'آموزش مدلسازی پایه و ماشین لرنینگ با پایتون\r\nسلام دوستان \r\nدوره آموزش مدل سازی پایه و ماشین لرنینگ، یک دوره آموزشی جامع است که به شما کمک می کند تا با اصول و روش های مدل سازی پایه و مفاهیم اساسی ماشین لرنینگ آشنا شوید. در این دوره، شما با الگوریتم های مختلف مانند رگرسیون خطی، رگرسیون لجستیک، درخت تصمیم و الگوریتم های ذکر شده در سرفصل ها آشنا می‌شود.\r\n\r\n با پایان این دوره، شما قادر خواهید بود تا به صورت حرفه ای و با استفاده از الگوریتم های مناسب، مسائل پیچیده را حل کنید.\r\n\r\n \r\n\r\n توجه کنید که سرفصل های ذکر شده کلی میباشید در هر قسمت و هر سرفصل ما پروژه عملی و کاربردی و تکنیک های کد زنی داریم.\r\n\r\n \r\n\r\nسرفصل های دوره : \r\n\r\nفصل اول ) پیش پردازش داده‌ها\r\n ۱.۱) مباحث تکمیلی pandas و numpy\r\n۱.۲) آشنایی با کتابخانه‌های مرتبط(scikit-learn)\r\n۱.۳) پردازش داده\r\n۱.۴) ارتباط داده همبستگی میان آن‌ها\r\nفصل دوم) الگوریتم های طبقه بندی و رگرسیون\r\n۲.۰) آشنایی و مقدمات طبقه بندی\r\n۲.۱) معرفی الگوریتم svm و استفاده از آن\r\n۲.۲) آموزش معیار های مختلف ارزیابی\r\n۲.۳) معرفی و الگوریتم nkn و استفاده از آن\r\n۲.۴) الگوریتم درخت تصمیم\r\n۲.۵) مفاهیم ریاضی در طبقه بندی ( variance, bias , …)\r\n۲.۶) الگوریتم random forest\r\n۲.۷) الگوریتم AdaBoost\r\n۲.۸) fine tune کردن الگوریتم ها با نگاه دقیق به پارامتر هایش\r\n۲.۹) پردازش متن و زبان طبیغی NLP\r\n۲.۱۰) آشنایی و مقدمات رگرسیون\r\n۲.۱۱ ) الگوریتم های XG boost\r\n۲.۱۲) الگوریتم cat boost\r\n۲.۱۳) خلاصه فصل و جمع بندی\r\nفصل سوم) الگوریتم های خوشه بندی\r\n۳.۱) آشنایی با clustering\r\n۳.۲) الگوریتم Kmeans\r\n۳.۲) اگوریتم DBSCAN\r\n۳.۳) تکنیک RFM\r\n۳.۴)بررسی ریاضیات الگوریتمها و روش کار آن‌ها\r\n۳.۵)متن کاوی و خوشه بندی در متن\r\n۳.۵) Outer detection تشخیص داده‌های نویز\r\n۳.۵) خلاصه فصل و جمع بندی\r\nفصل چهارم) تکنیک های ماشین لرنینگ\r\n۴.۱)کاهش اابعاد\r\n۴.۲)الگوریتم PCA و KERNEL PCA برای کاهش ابعاد\r\n۴.۴) الگوریتم Factor Analysis\r\n۴.۵) الگوریتم های پیشرفته‌تر\r\n۴.۶) داده‌های غیر متوازن و کارکردن با آن‌ها\r\nفصل پنچم) مباحث تکمیلی\r\n۵.۱) طبقه بندی تصویر\r\n۵.۲) طبقه بندی سری های زمانی\r\n۵.۳ الگوریتم های پیشرفته‌تر\r\n', 'https://toplearn.com/img/course/%D8%A2%D9%85%D9%88%D8%B2%D8%B4_%D9%85%D8%AF%D9%84%D8%B3%D8%A7%D8%B2%DB%8C_%D9%BE%D8%A7%DB%8C%D9%87_%D9%88_%D9%85%D8%A7%D8%B4%DB%8C%D9%86_%D9%84%D8%B1%D9%86%DB%8C%D9%86%DA%AF_%D8%A8%D8%A7_%D9%BE%D8%A7%DB%8C%D8%AA%D9%88%D9%86.jpg', 13546, ' مباحث تکمیلی pandas و numpy.\r\nfine tune کردن الگوریتم ها با نگاه دقیق به پارامتر هایش.', 1, '10:24', '', 200000, '00:00:00', 0, 0, '.زبان برنامه نویسی پایتون\n.دوره مبانی و مقدمات هوش مصنوعی', '3', 5),
(3, 'دوره آموزشی php (مقدماتی)', 'دوره آموزشی php (مقدماتی)\r\nPHP یک زبان قدرتمند برای ساخت وب سایت های پویا است. این زبان اسکریپتی میتواند با HTML ادغام شود. php یک زبان در سمت سرور است, بدین معنا که کدهای php روی سرور تفسیر میشوند و خروجی html و یا خروجی های دیگری تولید میکند که توسط کاربر قابل مشاهده است.\r\n\r\n <br>\r\n\r\nسرفصل ها در بخش اول دوره موجود می باشد .', 'https://toplearn.com/img/course/%D8%AF%D9%88%D8%B1%D9%87_%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C_php_(%D9%85%D9%82%D8%AF%D9%85%D8%A7%D8%AA%DB%8C).jpg', 13547, 'خلاصه و مفید\r\nکاربردی', 3, '1400/11/07', '1401/3/07', 0, '09:49:30', 34, 0, '--', 'مقدماتی', 4),
(4, 'آموزش سی شارپ پیشرفته\r\n', 'آموزش سی شارپ پیشرفته\r\nدوره آموزش سی شارپ پیشرفته در قالب پروژه عملی ( حسابداری )\r\n<br>\r\n <br>\r\n<br>\r\nپیش نیاز های این دوره :\r\n<br>\r\nدوره آموزش سی شارپ مقدماتی به همراه پروژه عملی\r\n<br>\r\n <br>\r\n<br>\r\nاین دوره در ادامه دوره شارپ مقدماتی ارائه شده است .\r\n<br>\r\nدر این دوره با امکانات پیشرفته زبان قدرتمند سی شارپ در قالب یک پروژه عملی با عنوان حسابداری آشنا خواهید شد .\r\n<br>\r\nجهت آشنایی بیشتر با این دوره پیشنهاد میکنیم قسمت اول با عنوان معرفی دوره را مشاهده فرمائید .\r\n<br>\r\nدوره های بعدی که میتوانید مشاهده کنید : \r\n<br>\r\nدوره جامع شی گرایی در سی شارپ<br>\r\nآموزش اصول SOLID در سی شارپ\r\n <br>\r\n<br>\r\n(( این دوره به اتمام رسیده است ))', 'https://toplearn.com/img/course/%D8%A2%D9%85%D9%88%D8%B2%D8%B4_%D8%B3%DB%8C_%D8%B4%D8%A7%D8%B1%D9%BE_%D9%BE%DB%8C%D8%B4%D8%B1%D9%81%D8%AA%D9%87.jpg', 13548, ' پــروژه مــحور بودن دوره هــــا <br>   پشتیبـــانی دائــــمی محصولات  <br>  تضمین کیــفیت کلیـه محصولات', 5, '1402/06/01', '1402/06/01', 0, '14:20:22', 44, 0, 'سی شارپ مقدماتی', 'مقدماتی', 4);

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
(1, 0, 'هوش مصنوعی', NULL),
(2, 7, 'php', NULL),
(5, 7, 'c#', NULL),
(6, 0, 'امنیت', 'https://momtazserver.com/wp-content/uploads/2019/08/7-5.jpg'),
(7, 0, 'برنامه نویسی تحت وب', 'https://blog.faradars.org/wp-content/uploads/2021/09/What-is-Web-Programming-or-Development.jpg'),
(8, 0, 'سیستم عامل', 'https://cdn.hswstatic.com/gif/computer-operating-sytem.jpg'),
(9, 0, 'طراحی سایت', 'https://poshtibanam.com/wp-content/uploads/2021/04/%D8%B7%D8%B1%D8%A7%D8%AD%DB%8C-%D8%B3%D8%A7%DB%8C%D8%AA-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses_comments`
--

CREATE TABLE `tbl_courses_comments` (
  `id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `comment` text NOT NULL,
  `likes` int(4) NOT NULL DEFAULT 0,
  `dislikes` int(4) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses_comments_details`
--

CREATE TABLE `tbl_courses_comments_details` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `likes` int(4) DEFAULT 0,
  `dislikes` int(4) DEFAULT 0,
  `date` varchar(20) NOT NULL,
  `status` tinyint(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

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
(80, 4, NULL, 22, 21, 'https://toplearn.com/courses/DownloadFreeVideoFile/1289', '2023-08-25--00:59:10', 1);

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
(10, 4, 'c# advance');

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
(4, 0, 'عضویت کاربر با ایمیل dfoha410@gmail.com', '127.0.0.1', '2023-08-28--03:46:15');

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
  `content_id` int(11) NOT NULL,
  `is_blog` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teachers`
--

CREATE TABLE `tbl_teachers` (
  `id` int(11) NOT NULL,
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

INSERT INTO `tbl_teachers` (`id`, `name`, `family`, `email`, `telegram-id`, `picture`, `description`, `status`) VALUES
(13546, ' امیرحسین ', 'ساوه دربندسری', 'save@gmail.com', 'save_amirhossein', 'https://toplearn.com/img/user/250x259/5842b2a5-fc7b-4dd0-b4f3-b0815af9422b_amirhossein_darbandsary.jpeg', 'سلام من امیرحسین دربندسری مدرس و برنامه نویس هوش مصنوعی هستم خیلی خوشحالم که میتونم در راه هوش مصنوعی کمکی به شما باشم.\r\nرزومه من رو میتونین از طریق لینک زیر مشاهده کنید.\r\n\r\nhttps://www.linkedin.com/in/amirhossein-darbandsari-505803207/', 1),
(13547, 'حسن ', 'خسروجردی', 'hasan@ymail.com', 'hasan', 'https://toplearn.com/img/user/250x259/268_2b05b90b-7a78-4e35-058f-39e6b8cf2ac1_%D8%AD%D8%B3%D9%86%20_%D8%AE%D8%B3%D8%B1%D9%88%D8%AC%D8%B1%D8%AF%DB%8C.jpeg', 'رزومه کامل من رو در این <a href=\'https://hassankhosrojerdi.ir/\'>لینک</a>میتوانید مشاهده کنید\r\n\r\n', 1),
(13548, 'ایمان ', 'مدائنی', 'iman@mail.com', 'iman', 'https://toplearn.com/img/user/250x259/2402cc6d-1d17-6a22-e6cc-39e3248f13a4_%D8%A7%DB%8C%D9%85%D8%A7%D9%86_%D9%85%D8%AF%D8%A7%D8%A6%D9%86%DB%8C9.jpg', 'ایمان مدائنی هستم ، مدرس بین المللی و رسمی مایکروسافت .رزومه کامل من رو در این <a href=\'https://www.madaeny.com/\'>لینک</a>میتوانید مشاهده کنید ', 1);

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
  `privillage-id` int(3) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `family`, `age`, `email`, `phone`, `password`, `created-at`, `last-login`, `wallet-id`, `privillage-id`, `status`) VALUES
(1, 'mohammad ', 'movahed', 21, 'oha410@gmail.com', '123', '123', '123', '123', 2, 5, 1),
(1752, NULL, NULL, NULL, 'dfoha410@gmail.com', '09191382656', '@Mmohammad123', '2023-08-28 03:46:15', '2023-08-28 03:46:15', NULL, 1, 0);

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
-- Indexes for table `tbl_blogs_comments_details`
--
ALTER TABLE `tbl_blogs_comments_details`
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
-- Indexes for table `tbl_courses_comments_details`
--
ALTER TABLE `tbl_courses_comments_details`
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
-- AUTO_INCREMENT for table `tbl_blogs_comments_details`
--
ALTER TABLE `tbl_blogs_comments_details`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1254;

--
-- AUTO_INCREMENT for table `tbl_courses_booklets`
--
ALTER TABLE `tbl_courses_booklets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_courses_categories`
--
ALTER TABLE `tbl_courses_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_courses_comments`
--
ALTER TABLE `tbl_courses_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_courses_comments_details`
--
ALTER TABLE `tbl_courses_comments_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_courses_scores`
--
ALTER TABLE `tbl_courses_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_courses_videos`
--
ALTER TABLE `tbl_courses_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_teachers`
--
ALTER TABLE `tbl_teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13549;

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
