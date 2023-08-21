-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 10:20 PM
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
  `advantages` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` varchar(20) NOT NULL,
  `last_update` varchar(20) NOT NULL,
  `cost` int(8) NOT NULL,
  `discount` tinyint(4) NOT NULL,
  `in_advance` text NOT NULL,
  `time` tinyint(4) NOT NULL,
  `level` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `title`, `description`, `thumbnail`, `teacher_id`, `advantages`, `category_id`, `created_at`, `last_update`, `cost`, `discount`, `in_advance`, `time`, `level`, `status`) VALUES
(2, 'آموزش مدلسازی پایه و ماشین لرنینگ با پایتون\r\n', 'آموزش مدلسازی پایه و ماشین لرنینگ با پایتون\r\nسلام دوستان \r\nدوره آموزش مدل سازی پایه و ماشین لرنینگ، یک دوره آموزشی جامع است که به شما کمک می کند تا با اصول و روش های مدل سازی پایه و مفاهیم اساسی ماشین لرنینگ آشنا شوید. در این دوره، شما با الگوریتم های مختلف مانند رگرسیون خطی، رگرسیون لجستیک، درخت تصمیم و الگوریتم های ذکر شده در سرفصل ها آشنا می‌شود.\r\n\r\n با پایان این دوره، شما قادر خواهید بود تا به صورت حرفه ای و با استفاده از الگوریتم های مناسب، مسائل پیچیده را حل کنید.\r\n\r\n \r\n\r\n توجه کنید که سرفصل های ذکر شده کلی میباشید در هر قسمت و هر سرفصل ما پروژه عملی و کاربردی و تکنیک های کد زنی داریم.\r\n\r\n \r\n\r\nسرفصل های دوره : \r\n\r\nفصل اول ) پیش پردازش داده‌ها\r\n ۱.۱) مباحث تکمیلی pandas و numpy\r\n۱.۲) آشنایی با کتابخانه‌های مرتبط(scikit-learn)\r\n۱.۳) پردازش داده\r\n۱.۴) ارتباط داده همبستگی میان آن‌ها\r\nفصل دوم) الگوریتم های طبقه بندی و رگرسیون\r\n۲.۰) آشنایی و مقدمات طبقه بندی\r\n۲.۱) معرفی الگوریتم svm و استفاده از آن\r\n۲.۲) آموزش معیار های مختلف ارزیابی\r\n۲.۳) معرفی و الگوریتم nkn و استفاده از آن\r\n۲.۴) الگوریتم درخت تصمیم\r\n۲.۵) مفاهیم ریاضی در طبقه بندی ( variance, bias , …)\r\n۲.۶) الگوریتم random forest\r\n۲.۷) الگوریتم AdaBoost\r\n۲.۸) fine tune کردن الگوریتم ها با نگاه دقیق به پارامتر هایش\r\n۲.۹) پردازش متن و زبان طبیغی NLP\r\n۲.۱۰) آشنایی و مقدمات رگرسیون\r\n۲.۱۱ ) الگوریتم های XG boost\r\n۲.۱۲) الگوریتم cat boost\r\n۲.۱۳) خلاصه فصل و جمع بندی\r\nفصل سوم) الگوریتم های خوشه بندی\r\n۳.۱) آشنایی با clustering\r\n۳.۲) الگوریتم Kmeans\r\n۳.۲) اگوریتم DBSCAN\r\n۳.۳) تکنیک RFM\r\n۳.۴)بررسی ریاضیات الگوریتمها و روش کار آن‌ها\r\n۳.۵)متن کاوی و خوشه بندی در متن\r\n۳.۵) Outer detection تشخیص داده‌های نویز\r\n۳.۵) خلاصه فصل و جمع بندی\r\nفصل چهارم) تکنیک های ماشین لرنینگ\r\n۴.۱)کاهش اابعاد\r\n۴.۲)الگوریتم PCA و KERNEL PCA برای کاهش ابعاد\r\n۴.۴) الگوریتم Factor Analysis\r\n۴.۵) الگوریتم های پیشرفته‌تر\r\n۴.۶) داده‌های غیر متوازن و کارکردن با آن‌ها\r\nفصل پنچم) مباحث تکمیلی\r\n۵.۱) طبقه بندی تصویر\r\n۵.۲) طبقه بندی سری های زمانی\r\n۵.۳ الگوریتم های پیشرفته‌تر\r\n', 'https://toplearn.com/img/course/%D8%A2%D9%85%D9%88%D8%B2%D8%B4_%D9%85%D8%AF%D9%84%D8%B3%D8%A7%D8%B2%DB%8C_%D9%BE%D8%A7%DB%8C%D9%87_%D9%88_%D9%85%D8%A7%D8%B4%DB%8C%D9%86_%D9%84%D8%B1%D9%86%DB%8C%D9%86%DA%AF_%D8%A8%D8%A7_%D9%BE%D8%A7%DB%8C%D8%AA%D9%88%D9%86.jpg', 1, ' مباحث تکمیلی pandas و numpy.\r\nfine tune کردن الگوریتم ها با نگاه دقیق به پارامتر هایش.', 1, '10:24', '', 200000, 0, '.زبان برنامه نویسی پایتون\r\n.دوره مبانی و مقدمات هوش مصنوعی', 127, '3', 1);

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
  `name` varchar(100) NOT NULL,
  `thumbnail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_courses_categories`
--

INSERT INTO `tbl_courses_categories` (`id`, `name`, `thumbnail`) VALUES
(1, 'هوش مصنوعی', NULL);

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
  `episode` int(3) NOT NULL,
  `link` text NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

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
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

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
(1, ' امیرحسین ', 'ساوه دربندسری', 'save@gmail.com', 'save_amirhossein', 'https://toplearn.com/img/user/250x259/5842b2a5-fc7b-4dd0-b4f3-b0815af9422b_amirhossein_darbandsary.jpeg', 'سلام من امیرحسین دربندسری مدرس و برنامه نویس هوش مصنوعی هستم خیلی خوشحالم که میتونم در راه هوش مصنوعی کمکی به شما باشم.\r\nرزومه من رو میتونین از طریق لینک زیر مشاهده کنید.\r\n\r\nhttps://www.linkedin.com/in/amirhossein-darbandsari-505803207/', 1);

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
(2, NULL, NULL, NULL, 'oha410@gmail.com', '09191382656', '123M@123m', '2023-08-02 07:54:32', '2023', NULL, 1, 0),
(7, NULL, NULL, NULL, '$_POST[\"email\"]', '$_POST[\"pho', '$_POST[\"password\"]', '2023-08-03 18:44:10', '2023-08-03 18:44:10', NULL, 1, 0),
(26, NULL, NULL, NULL, 'fghgf@sd.asd', '09191382657', '@Mm123456', '2023-08-04 05:35:24', '2023-08-04 05:35:24', NULL, 1, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_courses_booklets`
--
ALTER TABLE `tbl_courses_booklets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_courses_categories`
--
ALTER TABLE `tbl_courses_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
