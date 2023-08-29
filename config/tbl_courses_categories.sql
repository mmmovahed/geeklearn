-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2023 at 08:34 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_courses_categories`
--
ALTER TABLE `tbl_courses_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_courses_categories`
--
ALTER TABLE `tbl_courses_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
