-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2023 at 12:05 AM
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
-- Table structure for table `tbl-carts`
--

CREATE TABLE `tbl-carts` (
  `id` int(11) NOT NULL,
  `course-id` int(7) NOT NULL,
  `user-id` int(7) NOT NULL,
  `count` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl-teachers`
--

CREATE TABLE `tbl-teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `family` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telegram-id` varchar(25) NOT NULL,
  `picture` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL
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
  `intro-vid-id` int(11) NOT NULL,
  `teacher-id` int(11) NOT NULL,
  `advantages` text NOT NULL,
  `category-id` int(11) NOT NULL,
  `created-at` varchar(20) NOT NULL,
  `last-update` varchar(20) NOT NULL,
  `cost` int(8) NOT NULL,
  `discount` tinyint(4) NOT NULL,
  `in-advance` text NOT NULL,
  `time` tinyint(4) NOT NULL,
  `level` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(7) NOT NULL,
  `name` varchar(15) NOT NULL,
  `family` varchar(30) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created-at` varchar(20) NOT NULL,
  `last-login` int(20) NOT NULL,
  `wallet-id` int(7) NOT NULL,
  `privillage-id` int(3) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl-carts`
--
ALTER TABLE `tbl-carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl-teachers`
--
ALTER TABLE `tbl-teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl-carts`
--
ALTER TABLE `tbl-carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl-teachers`
--
ALTER TABLE `tbl-teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
