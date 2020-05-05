-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 23, 2019 at 11:48 AM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `offpacks`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `description`, `created_at`, `updated_at`) VALUES
(7, '<p><strong>Offtica.com &nbsp;started with its innovative idea to give a professional test of corporate needs and Supply for their users via e-Commerce Portal access.</strong></p>\n\n<p><strong>Offtica.com will bring different and easy ideas for effective and fast process of a Companies logistics requirements and best process.</strong></p>\n\n<p><strong>Offtica.com is an ecommerce shop from JARA eCommerce.</strong></p>', '2018-12-22 04:10:47', '2018-12-22 04:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_one`, `banner_two`, `created_at`, `updated_at`) VALUES
(27, 'Untitled-4n1547010906.jpg', '01011010011547010906.jpg', '2019-01-09 05:15:06', '2019-01-09 05:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `billingaddrs`
--

CREATE TABLE `billingaddrs` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billingaddrs`
--

INSERT INTO `billingaddrs` (`id`, `country`, `address`, `town`, `division`, `zipCode`, `phone`, `email`, `client_id`, `created_at`, `updated_at`) VALUES
(2, 'Bangladesh', 'Panthapath', 'Dhaka', 'Dhaka', '1207', '018254678755', 'jge.bdm3@gmail.com', 3, '2018-12-09 08:59:28', '2018-12-09 09:00:10'),
(3, 'Bangladesh', '89/2, Haque Chamber, West Panthapath, Dhaka', 'Dhaka', 'Dhaka', '1202', '451514', 'contact@jarashopping.com', 4, '2019-01-09 12:04:14', '2019-01-09 12:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billings`
--

INSERT INTO `billings` (`id`, `address`, `city`, `country`, `division`, `zipCode`, `phone`, `email`, `order_id`, `created_at`, `updated_at`) VALUES
(3, 'Panthapath', 'Dhaka', 'Bangladesh', 'Dhaka', '1207', '018254678755', 'jge.bdm3@gmail.com', 8, '2018-12-18 07:42:51', '2018-12-18 07:42:51'),
(4, '89/2, Haque Chamber, West Panthapath, Dhaka', 'Dhaka', 'Bangladesh', 'Dhaka', '1202', '451514', 'contact@jarashopping.com', 9, '2019-01-09 12:04:14', '2019-01-09 12:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brandName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brandName`, `created_at`, `updated_at`) VALUES
(6, 'Econo', '2019-01-03 10:18:04', '2019-01-03 10:18:04'),
(7, 'Matador', '2019-01-03 10:18:16', '2019-01-03 10:18:16'),
(8, 'Pilot', '2019-01-03 10:18:28', '2019-01-03 10:18:28'),
(9, 'GQ', '2019-01-03 10:18:37', '2019-01-03 10:18:37'),
(10, 'Cello', '2019-01-03 10:18:49', '2019-01-03 10:18:49'),
(11, 'Montex', '2019-01-03 10:19:00', '2019-01-03 10:19:00'),
(12, 'Roller', '2019-01-03 10:19:06', '2019-01-03 10:19:06'),
(13, 'Faber Castle', '2019-01-03 10:19:20', '2019-01-03 10:19:20'),
(14, 'APSARA', '2019-01-03 10:19:29', '2019-01-03 10:19:29'),
(15, 'Artline', '2019-01-03 10:19:38', '2019-01-03 10:19:38'),
(16, 'Doller', '2019-01-03 10:19:43', '2019-01-03 10:19:43'),
(17, 'NIshat', '2019-01-03 10:19:50', '2019-01-03 10:19:50'),
(18, 'Read leaf', '2019-01-03 10:20:01', '2019-01-03 10:20:01'),
(19, 'Monami', '2019-01-03 10:20:07', '2019-01-09 11:28:37'),
(20, 'HUA JIE', '2019-01-03 10:20:14', '2019-01-03 10:20:14'),
(21, 'Deli', '2019-01-03 10:20:20', '2019-01-03 10:20:20'),
(22, 'UNI', '2019-01-03 10:20:27', '2019-01-03 10:20:27'),
(23, 'Goodluck', '2019-01-03 10:20:39', '2019-01-03 10:20:39'),
(24, 'NATARAJ', '2019-01-03 10:20:53', '2019-01-03 10:20:53'),
(25, 'Magic', '2019-01-12 06:36:49', '2019-01-12 06:36:49'),
(26, 'SDI', '2019-01-12 06:37:08', '2019-01-12 06:37:08'),
(27, 'Osaka', '2019-01-12 06:37:14', '2019-01-12 06:37:14'),
(28, 'Diamond', '2019-01-12 06:37:57', '2019-01-12 06:37:57'),
(29, 'Rm', '2019-01-12 06:38:09', '2019-01-12 06:38:09'),
(30, 'Kitty', '2019-01-12 06:38:15', '2019-01-12 06:38:15'),
(31, 'Shishmark', '2019-01-12 06:38:24', '2019-01-12 06:38:24'),
(32, 'Kangaro', '2019-01-12 06:38:30', '2019-01-12 06:38:30'),
(33, 'Trodat', '2019-01-12 06:38:48', '2019-01-12 06:38:48'),
(34, 'Shiny', '2019-01-12 06:38:53', '2019-01-12 06:38:53'),
(35, 'Nissan', '2019-01-12 06:39:06', '2019-01-12 06:39:06'),
(36, 'Staedtler', '2019-01-12 06:39:14', '2019-01-12 06:39:14'),
(37, 'Honda', '2019-01-12 06:39:24', '2019-01-12 06:39:24'),
(38, 'Mitsubishi', '2019-01-12 06:39:33', '2019-01-12 06:39:33'),
(39, 'Others', '2019-01-13 06:43:02', '2019-01-13 06:43:02'),
(40, 'Fevicol', '2019-01-13 11:57:01', '2019-01-13 11:57:01'),
(41, 'Good luck', '2019-01-21 08:13:37', '2019-01-21 08:13:37'),
(42, 'Nataraj', '2019-01-21 08:13:43', '2019-01-21 08:13:43'),
(43, 'Trodat', '2019-01-22 09:42:37', '2019-01-22 09:42:37'),
(44, 'Shiny', '2019-01-22 09:42:44', '2019-01-22 09:42:44'),
(45, 'Nissan', '2019-01-22 09:43:02', '2019-01-22 09:43:02'),
(46, 'Staedtler', '2019-01-22 09:43:10', '2019-01-22 09:43:10'),
(47, 'Honda', '2019-01-22 09:43:17', '2019-01-22 09:43:17'),
(48, 'Nissan', '2019-01-22 09:43:33', '2019-01-22 09:43:33'),
(49, 'Mitsubishi', '2019-01-22 09:43:42', '2019-01-22 09:43:42'),
(50, 'Anglers', '2019-01-23 10:46:23', '2019-01-23 10:46:23'),
(51, 'Safco', '2019-01-23 10:46:25', '2019-01-23 10:46:25'),
(52, 'Staedtler', '2019-01-23 10:46:32', '2019-01-23 10:46:32'),
(53, 'Chartpak', '2019-01-23 10:46:38', '2019-01-23 10:46:38'),
(54, 'CLI', '2019-01-23 10:46:43', '2019-01-23 10:46:43'),
(55, 'Helix', '2019-01-23 10:46:48', '2019-01-23 10:46:48'),
(56, 'Learning', '2019-01-23 10:46:54', '2019-01-23 10:46:54'),
(57, 'Sparco', '2019-01-23 10:47:08', '2019-01-23 10:47:08'),
(58, 'Westcott', '2019-01-23 10:47:15', '2019-01-23 10:47:15'),
(59, 'Helix', '2019-01-23 10:47:20', '2019-01-23 10:47:20'),
(60, 'Learning Resources', '2019-01-23 10:47:27', '2019-01-23 10:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `created_at`, `updated_at`) VALUES
(17, 'OFFICE SUPPLIES', '2019-01-03 10:02:40', '2019-01-03 10:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `clientpayments`
--

CREATE TABLE `clientpayments` (
  `id` int(10) UNSIGNED NOT NULL,
  `paymentMethod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clientpayments`
--

INSERT INTO `clientpayments` (`id`, `paymentMethod`, `accNo`, `acc_name`, `bank_name`, `client_id`, `created_at`, `updated_at`) VALUES
(2, '1', '01734528741', NULL, 'Dutch-Bangla Bank', 3, '2018-12-09 09:01:28', '2018-12-18 07:42:51'),
(3, '0', '01971424221', NULL, 'BRAC Bank', 4, '2019-01-09 12:04:14', '2019-01-09 12:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `clientName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` tinyint(4) DEFAULT NULL,
  `country` tinyint(4) DEFAULT NULL,
  `division` tinyint(4) DEFAULT NULL,
  `zipCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `promotional_reward_points` int(10) UNSIGNED DEFAULT '0',
  `non_promotional_reward_points` int(10) UNSIGNED DEFAULT '0',
  `membership_type_id` int(10) UNSIGNED NOT NULL,
  `salesman_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `clientName`, `address`, `city`, `country`, `division`, `zipCode`, `phone`, `office_phone`, `company`, `email`, `office_email`, `password`, `token`, `status`, `promotional_reward_points`, `non_promotional_reward_points`, `membership_type_id`, `salesman_id`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JARA eCommerce', 'jara.ecommerce@gmail.com', NULL, '78c45fe38cc1f22836278750b522aba5', 'GKy4wsoJJbL63Xa3OAfkqVMpDrHYArBaVuK4roAj', 1, 0, 0, 1, NULL, '2018-12-06 12:25:47', '2018-12-06 12:26:59'),
(3, 'Sanchita Sarkar', 'Panthapath', 0, 0, 0, '1207', '01737724443', NULL, 'Ngen IT', 'jge.bdm3@gmail.com', 'jge.bdm3@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 'DpNy0LMnzNLRclCzqKSogWQTaAsMM6NI0d8O1HwH', 1, 0, 0, 1, NULL, '2018-12-09 03:56:31', '2018-12-09 04:17:12'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ngenit', 'abduljabbar.ngenit@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', 'p0lo6dzIYo9LPlnCpEEJ7PxXd6rJ7HQh4hnW3I4y', 1, 0, 0, 1, NULL, '2018-12-09 11:46:12', '2018-12-10 10:06:18'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NGen IT', 'jge.bdm5@gmail.com', NULL, '3b4add17eb4cb3a70280dbf801048668', 'mXr0VH9rkqVaq4yqmrZP1aUIEUDdB9Ikqzq51fNb', 0, 0, 0, 1, NULL, '2018-12-18 06:24:55', '2018-12-18 06:24:55'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JARA eCommerce', 'offtica@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', '2d1gxDTqbJzOiTU1zfsBO1qQ2TasQjPHEOCOkBWt', 1, 0, 0, 1, NULL, '2019-01-13 12:12:32', '2019-01-13 12:17:00'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ngenit', 'sadad.ngenit@gmail.com', NULL, 'ff1096af9f443df480b64af3d1603bf6', 'DipXKgt7U0urDI1fSWJ9PWUypufFUJRpFwL4ZGJ8', 1, 0, 0, 1, NULL, '2019-01-17 07:24:24', '2019-01-17 07:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `client_discount`
--

CREATE TABLE `client_discount` (
  `client_id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `created_at`, `updated_at`) VALUES
(1, 'White', '2018-12-08 10:37:15', '2018-12-13 10:52:02'),
(2, 'Black', '2018-12-08 10:37:22', '2018-12-13 10:49:07'),
(3, 'Yellow', '2018-12-08 10:37:33', '2018-12-08 10:37:43'),
(4, 'Blue', '2018-12-13 10:49:18', '2018-12-13 10:51:12'),
(5, 'Green', '2018-12-13 10:49:23', '2018-12-13 10:51:18'),
(6, 'Red', '2018-12-13 10:49:37', '2018-12-13 10:51:55'),
(7, 'Pink', '2018-12-13 10:49:45', '2018-12-13 10:51:47'),
(8, 'Lemon', '2018-12-13 10:49:54', '2018-12-13 10:51:35'),
(9, 'Violets', '2019-01-09 11:29:49', '2019-01-09 11:29:49'),
(10, 'Clear', '2019-01-09 11:30:30', '2019-01-09 11:30:30'),
(11, 'Multi color', '2019-01-15 05:28:29', '2019-01-15 05:28:29'),
(12, 'Silver', '2019-01-15 05:28:41', '2019-01-15 05:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `color_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(33, 2, NULL, NULL),
(34, 2, NULL, NULL),
(31, 2, NULL, NULL),
(30, 2, NULL, NULL),
(32, 2, NULL, NULL),
(39, 2, NULL, NULL),
(41, 2, NULL, NULL),
(42, 2, NULL, NULL),
(43, 2, NULL, NULL),
(40, 2, NULL, NULL),
(44, 2, NULL, NULL),
(52, 2, NULL, NULL),
(52, 4, NULL, NULL),
(48, 4, NULL, NULL),
(51, 2, NULL, NULL),
(51, 4, NULL, NULL),
(50, 2, NULL, NULL),
(49, 2, NULL, NULL),
(46, 2, NULL, NULL),
(53, 6, NULL, NULL),
(54, 6, NULL, NULL),
(35, 2, NULL, NULL),
(45, 2, NULL, NULL),
(59, 2, NULL, NULL),
(59, 4, NULL, NULL),
(59, 6, NULL, NULL),
(60, 1, NULL, NULL),
(60, 2, NULL, NULL),
(60, 6, NULL, NULL),
(61, 2, NULL, NULL),
(62, 2, NULL, NULL),
(63, 2, NULL, NULL),
(65, 2, NULL, NULL),
(65, 4, NULL, NULL),
(65, 6, NULL, NULL),
(64, 2, NULL, NULL),
(64, 4, NULL, NULL),
(64, 6, NULL, NULL),
(68, 1, NULL, NULL),
(68, 10, NULL, NULL),
(66, 1, NULL, NULL),
(66, 10, NULL, NULL),
(70, 1, NULL, NULL),
(70, 10, NULL, NULL),
(73, 1, NULL, NULL),
(72, 1, NULL, NULL),
(76, 1, NULL, NULL),
(76, 10, NULL, NULL),
(78, 2, NULL, NULL),
(77, 2, NULL, NULL),
(79, 2, NULL, NULL),
(80, 2, NULL, NULL),
(84, 1, NULL, NULL),
(83, 1, NULL, NULL),
(82, 1, NULL, NULL),
(81, 1, NULL, NULL),
(81, 2, NULL, NULL),
(81, 12, NULL, NULL),
(74, 3, NULL, NULL),
(87, 1, NULL, NULL),
(87, 2, NULL, NULL),
(86, 1, NULL, NULL),
(86, 2, NULL, NULL),
(86, 4, NULL, NULL),
(86, 5, NULL, NULL),
(86, 6, NULL, NULL),
(89, 1, NULL, NULL),
(89, 2, NULL, NULL),
(90, 1, NULL, NULL),
(90, 2, NULL, NULL),
(91, 1, NULL, NULL),
(91, 2, NULL, NULL),
(91, 12, NULL, NULL),
(92, 1, NULL, NULL),
(92, 2, NULL, NULL),
(93, 10, NULL, NULL),
(85, 1, NULL, NULL),
(85, 2, NULL, NULL),
(85, 3, NULL, NULL),
(85, 4, NULL, NULL),
(85, 5, NULL, NULL),
(85, 6, NULL, NULL),
(69, 1, NULL, NULL),
(69, 10, NULL, NULL),
(94, 2, NULL, NULL),
(94, 6, NULL, NULL),
(95, 4, NULL, NULL),
(95, 6, NULL, NULL),
(96, 3, NULL, NULL),
(96, 12, NULL, NULL),
(97, 12, NULL, NULL),
(98, 3, NULL, NULL),
(99, 1, NULL, NULL),
(102, 1, NULL, NULL),
(103, 7, NULL, NULL),
(104, 2, NULL, NULL),
(106, 2, NULL, NULL),
(106, 3, NULL, NULL),
(106, 4, NULL, NULL),
(106, 5, NULL, NULL),
(106, 6, NULL, NULL),
(107, 2, NULL, NULL),
(107, 4, NULL, NULL),
(107, 5, NULL, NULL),
(107, 6, NULL, NULL),
(108, 4, NULL, NULL),
(110, 2, NULL, NULL),
(110, 4, NULL, NULL),
(109, 2, NULL, NULL),
(109, 4, NULL, NULL),
(109, 6, NULL, NULL),
(111, 6, NULL, NULL),
(112, 2, NULL, NULL),
(114, 5, NULL, NULL),
(113, 5, NULL, NULL),
(115, 5, NULL, NULL),
(116, 5, NULL, NULL),
(121, 2, NULL, NULL),
(121, 12, NULL, NULL),
(120, 12, NULL, NULL),
(119, 10, NULL, NULL),
(117, 11, NULL, NULL),
(122, 2, NULL, NULL),
(125, 12, NULL, NULL),
(126, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `phone1`, `phone2`, `email`, `created_at`, `updated_at`) VALUES
(1, '89/2, Panthapath, Dhaka-1215', '+88029110348', '+8801971424220', 'Offtica@gmail.com', '2018-12-22 03:45:16', '2018-12-22 03:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_value` tinyint(4) NOT NULL,
  `valid_until` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `discount_value`, `valid_until`, `created_at`, `updated_at`) VALUES
(8, 2, '2019-01-25', '2019-01-10 08:10:16', '2019-01-10 08:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `deal_product`
--

CREATE TABLE `deal_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `deal_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deal_product`
--

INSERT INTO `deal_product` (`product_id`, `deal_id`, `created_at`, `updated_at`) VALUES
(22, 6, NULL, NULL),
(21, 7, NULL, NULL),
(20, 7, NULL, NULL),
(2, 7, NULL, NULL),
(64, 8, NULL, NULL),
(50, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude_product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit_per_coupon` int(10) UNSIGNED DEFAULT NULL,
  `limit_per_client` int(10) UNSIGNED DEFAULT NULL,
  `discount_value` int(11) NOT NULL,
  `discount_unit` tinyint(4) NOT NULL,
  `valid_from` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `valid_until` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_order_value` int(10) UNSIGNED DEFAULT NULL,
  `maximum_order_value` int(10) UNSIGNED DEFAULT NULL,
  `is_free_shipping_active` tinyint(1) DEFAULT '0',
  `maximum_discount_amount` int(11) DEFAULT NULL,
  `is_redeem_allowed` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `product_id`, `exclude_product_id`, `category_id`, `exclude_category_id`, `limit_per_coupon`, `limit_per_client`, `discount_value`, `discount_unit`, `valid_from`, `valid_until`, `coupon_code`, `minimum_order_value`, `maximum_order_value`, `is_free_shipping_active`, `maximum_discount_amount`, `is_redeem_allowed`, `created_at`, `updated_at`) VALUES
(2, '["30","32"]', NULL, NULL, NULL, NULL, NULL, 10, 0, '2018-12-23 00:00:00', '2018-12-31 00:00:00', '100', NULL, NULL, 0, NULL, 0, '2018-12-25 11:18:41', '2019-01-06 09:37:56'),
(4, NULL, NULL, NULL, NULL, NULL, 5, 50, 0, '2019-01-10 00:00:00', '2019-01-31 00:00:00', 'BPL2019', 1000, NULL, 0, NULL, 0, '2019-01-10 09:46:57', '2019-01-10 09:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image1`, `image2`, `image3`, `image4`, `image5`, `product_id`, `created_at`, `updated_at`) VALUES
(30, 'econo_soft_grip_1_11546669659.png', '0000243_econo-soft-grip_3701546689510.jpeg', 'econo_soft_grip_2_11546669995.png', NULL, NULL, 30, '2019-01-05 06:27:39', '2019-01-05 11:58:30'),
(31, 'econo_ocean_11546669879.png', 'econo_ocean_21546669879.png', 'econo_ocean_41546669879.png', NULL, NULL, 31, '2019-01-05 06:31:19', '2019-01-05 06:31:19'),
(32, 'econo_zebra_11546670542.png', 'econo_zebra_21546670542.png', 'econo_zebra_31546670542.png', 'econo_zebra_41546670542.png', NULL, 32, '2019-01-05 06:42:22', '2019-01-05 06:42:22'),
(33, 'econo_castle_black_11546671165.png', 'econo_castle_black_21546671165.png', 'econo_castle_multi_color_41546671165.png', 'econo_castle_multi_color_21546671165.png', 'econo_castle_multi_color_31546671165.png', 33, '2019-01-05 06:52:45', '2019-01-05 06:52:45'),
(34, 'gq2790_-_copy1546674322.jpg', 'econo-dx1546671904.jpg', NULL, NULL, NULL, 34, '2019-01-05 07:05:04', '2019-01-05 07:45:22'),
(35, 'econo_trendy_1_11546672030.png', 'econo_trendy_2_11546672030.png', NULL, NULL, NULL, 35, '2019-01-05 07:07:10', '2019-01-05 07:07:10'),
(37, 'gq27941548064183.jpg', NULL, NULL, NULL, NULL, 37, '2019-01-05 07:26:24', '2019-01-21 09:49:43'),
(38, 'gq_excel1548063895.jpg', '0000248_gq-excel-pen_3701546677094.jpeg', NULL, NULL, NULL, 38, '2019-01-05 07:31:22', '2019-01-21 09:44:55'),
(39, 'gq2766_-_copy1546674125.jpg', NULL, NULL, NULL, NULL, 39, '2019-01-05 07:42:05', '2019-01-05 07:42:05'),
(40, '28_1_21546676587.jpg', '02_2_141546676587.jpg', '2_331546676587.jpg', NULL, NULL, 40, '2019-01-05 08:23:07', '2019-01-05 08:23:07'),
(41, '0071214_matador-envoy-pen-10-pcs1546684011.jpg', NULL, NULL, NULL, NULL, 41, '2019-01-05 10:26:51', '2019-01-05 10:26:51'),
(42, 'untitled-1_191546684880.jpg', NULL, NULL, NULL, NULL, 42, '2019-01-05 10:41:20', '2019-01-05 10:41:20'),
(43, '2675780698-1_11546690197.jpg', '2675780698-3_11546690197.jpg', '2675780698-4_11546690197.jpg', '2675780698_1_1_1546690197.png', NULL, 43, '2019-01-05 11:15:50', '2019-01-05 12:09:57'),
(44, '81546689128.jpg', '0071208_matador-radiant-pen-12-pcs1546689128.jpg', NULL, NULL, NULL, 44, '2019-01-05 11:52:08', '2019-01-05 11:52:08'),
(45, 'Untitled-11546768637.jpg', 'Untitled-31546768637.jpg', 'Untitled-21546768637.jpg', 'Untitled-21546768680.jpg', NULL, 45, '2019-01-06 09:43:08', '2019-01-06 09:58:00'),
(46, 'Pilot-Capless-White-Carbonesque-Fountain-Pen-1-548x5481546769471.png', NULL, NULL, NULL, NULL, 46, '2019-01-06 10:11:11', '2019-01-06 10:11:11'),
(47, '8cbb0ef729146ea083f486041627fcd11548063775.jpg', '776791546769825.jpg', '776811546769825.jpg', '776821546769825.jpg', NULL, 47, '2019-01-06 10:17:05', '2019-01-21 09:42:55'),
(48, 'PL00046-LB-ZZZ_Pilot-G-Tec-C4-Rollerball-Pen-BLGC4-Light-Blue_P21546770602.jpg', NULL, NULL, NULL, NULL, 48, '2019-01-06 10:30:02', '2019-01-06 10:30:02'),
(49, '4902505085680-4902505085680_master1546771016.jpg', 'BXC-V5-B1546771016.jpg', 'PL00100-BK-ZZZ_Pilot-V5-Hi-Tecpoint-Rollerball-Pen-Extra-Fine-Black_P11546771016.jpg', '61OLDyFaYqL._SY450_1546771016.jpg', NULL, 49, '2019-01-06 10:36:56', '2019-01-06 10:36:56'),
(50, 'H-325 - MECHANICAL PENCIL - BLACK 11546775845.jpg', '96144958751021546775845.jpg', '0130154_pilot-h-325-mechanical-pencil-05-mm-clear1546775845.jpeg', 'PI700051BK_pilot_h_325_mechanical_pencil_0_5mm_black1546775845.jpg', NULL, 50, '2019-01-06 11:02:29', '2019-01-06 11:57:25'),
(51, 'BP-1RT-F - PEN - BLACK1546775658.jpg', 'BP-1RT-F - PEN - BLACK1546775658.jpeg', 'BP-1RT-F - PEN - BLACK 21546775658.webp', NULL, NULL, 51, '2019-01-06 11:17:03', '2019-01-06 11:54:18'),
(52, 'sp40286009_sc71546775095.jpg', 'BL-G2 G-2 - [0.7] - Pen - Black1546775095.jpg', 'MIN_335106001_EAA1546774802.jpg', '317t+DVpn4L1546774802.jpg', NULL, 52, '2019-01-06 11:40:02', '2019-01-06 11:44:55'),
(53, 'PL01384-RD-ZZZ_Pilot-V7-Grip-Rollerball-Pen-BXGPN-V7-Red_P21546853082.jpg', '55261-03_f1546853082.jpg', 'Pilot-Hi-Tecpoint-Grip-BXGPN-V5-0-5mm-Extra-Fine-Rollerball-Pen-Gel-Pen-test-special.jpg_640x6401546853082.jpg', NULL, NULL, 53, '2019-01-07 09:24:42', '2019-01-07 09:24:42'),
(54, 'GTEC_C4_red__60475.1531899732.500.7501546854330.jpg', 'Pilot-G-TEC-C4-red1546854330.jpg', '4902505139321-4902505139321_master1546854330.jpg', '618NVpADukL._SX355_1546854330.jpg', NULL, 54, '2019-01-07 09:32:14', '2019-01-07 09:45:30'),
(55, '$_101546854731.jpg', '0130090_pilot-mechanical-pencil-h-105-rex-grip-violet1546856191.jpeg', 's-l3001546856191.jpg', '0130090_pilot-mechanical-pencil-h-105-rex-grip-violet1546854731.jpeg', NULL, 55, '2019-01-07 09:52:11', '2019-01-07 10:16:31'),
(56, 'faber-castell-polychromos-single-pencil-big1546858851.jpg', 'faber_goldfaber_1222_hb_pencil_image1546861011.jpg', 'faber-castell-polychromos-single-pencil-big1546861011.jpg', '41wbYF27mfL._SX355_ (1)1546861169.jpg', NULL, 56, '2019-01-07 11:00:51', '2019-01-07 11:39:29'),
(57, 'nataraj-pencil-500x5001546861764.jpg', 'student-pencil-500x500 (1)1546861764.jpg', 'nataraj-checking-pencils-red-5-packs-of-10-pencils-each-201241002-medium_3257cfee82f1c0e2763b1d5eb1c3ba111546861764.jpg', 'natraj-pencil-500x5001546861764.jpeg', 'natraj-pencil-500x5001546861764.jpg', 57, '2019-01-07 11:49:24', '2019-01-07 11:49:24'),
(58, 'apsplt1-500x500h1546862339.jpg', 'apsara-pencil1 (1)1546862339.jpg', '51S2-K7vIPL._SX425_1546862339.jpg', 'apsplt1-500x5001546862339.jpg', 's-l3001546862339.jpg', 58, '2019-01-07 11:58:59', '2019-01-07 11:58:59'),
(59, 'Artline-90-Chisel-Tip-Permanent-Marker-Black-Pack-1547014763.jpg', 'Artline-90-Permanent-Marker-25mm-BLACK-BOX-OF-12-PCS_10831677_66ddf18cc147bf72aa83227e3b2e996e1547014763.jpg', 'resize (1)1547014763.jpg', 'Permanent-Marker-Chisel-Orange-1090051547014763.jpg', '1_125531547014763.jpg', 59, '2019-01-09 06:19:23', '2019-01-09 06:19:23'),
(60, 'untitled-126_11547021966.jpg', 'Onboard-Sealed-700-x-300-21547019303.png', 'images1547019303.jpg', '0001398_dollar-white-board-marker_3701547021966.jpeg', NULL, 60, '2019-01-09 07:35:03', '2019-01-09 08:19:26'),
(61, '05_1_11547023344.jpg', '11_1_71547023344.jpg', NULL, NULL, NULL, 61, '2019-01-09 08:42:24', '2019-01-09 08:42:24'),
(62, 'White-Board-Marker-Sigmaflo_ (1)1547024519.jpg', 'Sigmaflo_white_board_marker-black_grande1547024519.jpg', '0001401_sigmaflo-white-board-marker_3701547024519.jpeg', NULL, NULL, 62, '2019-01-09 09:01:59', '2019-01-09 09:01:59'),
(63, '2070001206_file6_1510650783yy0ndxmyr91547025227.jpg', '0001400_monami-cd-dvd-marker-pen_3701547025227.jpeg', NULL, NULL, NULL, 63, '2019-01-09 09:13:47', '2019-01-09 09:13:47'),
(64, '707-Permanent-Marker-12pcs (1)1547034550.jpeg', '941547034550.jpg', 'Red_Leaf_707_Blue_grande1547034550.jpeg', '13_c__21547034550.jpg', NULL, 64, '2019-01-09 11:49:10', '2019-01-09 11:49:10'),
(65, '15__21547035550.jpg', '15_-_11547035550.jpg', '201403141612332ITQKUSA5SDIC_full1547035550.jpg', '0000105_white-board-meaker-red-leaf_3701547035550.jpeg', NULL, 65, '2019-01-09 12:05:50', '2019-01-09 12:05:50'),
(66, 'c3dfabb1a98b6edff23dec20e0e6f445.jpg_720x720q751547361769.jpg', NULL, NULL, NULL, NULL, 66, '2019-01-13 06:42:49', '2019-01-13 06:42:49'),
(67, '61UOzmWQ0NL._SX425_1547363356.jpg', '51eq0ZeWUhL._SX425_1547363356.jpg', 'scotch-magic-tape-18mm-x-33m-3708-p1547363356.jpg', 'bangkeodantien1547363356.jpg', '51eq0ZeWUhL._SX425_ (1)1547363356.jpg', 67, '2019-01-13 07:09:16', '2019-01-13 07:09:16'),
(68, 'S-10216_txt_USEng1547366397.jpg', '371c_21547365607.jpg', 'sp22896777_sc71547365607.jpg', NULL, NULL, 68, '2019-01-13 07:44:16', '2019-01-13 07:59:57'),
(69, 'Untitled-11547979533.jpg', '371c_21547375353.jpg', '3M-373-Scotch-Clear-Box-Sealing-Tape-2inchx55yards15476405871547883010.jpg', '3M-373-Scotch-Clear-Box-Sealing-Tape-2inchx55yards15476405871547883042.jpg', NULL, 69, '2019-01-13 10:29:13', '2019-01-20 10:18:53'),
(70, 'S-78451547377561.jpg', NULL, NULL, NULL, NULL, 70, '2019-01-13 11:03:55', '2019-01-13 11:06:01'),
(71, 'fce35637e3eeae7fe01f0b74a2b34de3_11547640878.jpg', 'Osaka-PVC-Tape-Black-18-mm1547378373.jpg', 'pvc-osaka-electrical-tape-for-Pakistan-Afghanistan1547378373.jpg', 'Hot-sale-osaka-pvc-tape-for-electric1547378373.jpg', NULL, 71, '2019-01-13 11:19:33', '2019-01-16 12:14:38'),
(72, 'Untitled-21547527611.jpg', '61q5JQiN3JL._SY550_1547379741.jpg', '616eTjSU3cL._SL1500_1547379741.jpg', 'fevicol_synthetic_resin_adhesive_aica-50g_tk351547379741.jpg', 'synthetic-resin-adhesive-500x5001547379741.jpg', 72, '2019-01-13 11:42:21', '2019-01-15 04:46:51'),
(73, '11_inch_glue_stick_11547380332.jpg', 'glue_gun_sticks_in_bd_620x620_11547380332.jpg', 'Glue-Gun-Glue-Sticks1547380332.jpg', 'Image-16_51547380332.jpg', NULL, 73, '2019-01-13 11:52:12', '2019-01-13 11:52:12'),
(74, '32001001547639696.jpg', '32001101547639696.jpg', '5381d6402faaf73b1db0e82a2dcb7f5e1547639696.jpg', '1547639696.png', NULL, 74, '2019-01-15 04:35:47', '2019-01-16 11:54:56'),
(75, 'Paper-Clip-Bookmark1547640361.jpg', 'gem-clip-500x5001547528979.jpg', 'meSZnNw1547528979.jpg', 'WS306011547640361.jpg', '440161_pink_l1547528979.jpg', 75, '2019-01-15 05:09:39', '2019-01-16 12:06:01'),
(76, '60559481_973837_ED1547529598.jpg', '2170197_large1547529598.jpg', '0001357_delli-gems-clips-plastic-box-100-pcs_3701547529598.jpeg', NULL, NULL, 76, '2019-01-15 05:19:58', '2019-01-15 05:19:58'),
(77, '560394_p1547532194.jpg', '64597702_A1 (1)1547530657.jpg', '0000152_binder-clip-small_3701547530657.jpeg', '35d2ecd1-816a-4179-b625-3ea5b234ce8e_1.c8690c56146acdeab83f125b493506bd1547530657.jpeg', 'Black-Binder-Clips1547530657.jpg', 77, '2019-01-15 05:37:37', '2019-01-15 06:03:14'),
(78, 'binder-clip-32mm1547531378.jpg', '5-Star-Office-Foldback-Clips-19mm-Black-Pack-of-121547531378.jpg', 'Binder_clip_32mm__31721.14715693861547531378.jpg', '1491001547531378.jpg', 'Oddy-Binder-Clip-19mm-set-SDL037236479-4-291251547531378.jpg', 78, '2019-01-15 05:49:38', '2019-01-15 05:49:38'),
(79, 'Binder-Clip1547535386.jpg', '5-Star-Office-Foldback-Clips-19mm-Black-Pack-of-121547535386.jpg', 'office-binder-clips-black-3-3cm-x-19mm-2-boxes-approx-40-pcs-box-2015-new1547535386.jpg', NULL, NULL, 79, '2019-01-15 06:56:26', '2019-01-15 06:56:26'),
(80, '5-Star-Office-Foldback-Clips-19mm-Black-Pack-of-121547535619.jpg', 'Binder-Clip1547535619.jpg', '1491001547535619.jpg', NULL, NULL, 80, '2019-01-15 07:00:19', '2019-01-15 07:00:19'),
(81, '61cXQsPf9QL._SX425_1547541095.jpg', '31RzK2if1LL1547541095.jpg', 'pt20793545-hot_factory_sales100pcs_box_triangular_shaped_nickel_metal_paper_clips1547541095.jpg', '61r72fbcb0L._SY463_1547541095.jpg', '16912251547541095.jpeg', 81, '2019-01-15 08:31:35', '2019-01-15 08:31:35'),
(82, '51tUe3UtsbL._SX425_1547541718.jpg', '61ePlD6eCLL._SY606_1547541718.jpg', 'nail-cable-clip-250x2501547541718.jpg', '6151vHFX5-L._SY741_1547541718.jpg', '418idwUHVzL._SX522_1547541718.jpg', 82, '2019-01-15 08:41:58', '2019-01-15 08:41:58'),
(83, 'qualgear-desk-cable-management-cc10-w-100-p-64_10001547542686.jpg', '610BcRn3xcL._SY606_ (1)1547542136.jpg', '10-14mm-round-cable-clip_l1547542136.jpg', 'white-ge-electrical-staples-33614-64_10001547542136.jpg', NULL, 83, '2019-01-15 08:48:56', '2019-01-15 08:58:06'),
(84, 'thinksfo-products-1.5-inch-shirt-clip-with-teeth-colors1547638767.jpg', 'Shirt-clips1547638767.jpg', NULL, NULL, NULL, 84, '2019-01-16 11:39:27', '2019-01-16 11:39:27'),
(85, 'kangaro-telbod-trendy-35-zln1547877481.jpg', 'stapler-25-sh-trendy-35-kangaro1547872855.jpg', '71OFJ1CyIeL._SL1500_1547872855.jpg', 'Capsator-Kangaro-Trendy-35_1000x10001547872855.jpg', '50103_11547978980.jpg', 85, '2019-01-19 04:40:55', '2019-01-20 10:09:40'),
(86, 'kangaro-stapler-hd-45-500x500 (1)1547877468.jpg', 'kangaro-stapler-hd-45-500x5001547874443.jpg', 'item_XL_24092878_35194889 (1)1547874443.jpg', 'HD-451547874443.jpg', NULL, 86, '2019-01-19 05:07:23', '2019-01-19 05:57:48'),
(87, 'ST331547877455.jpg', 'ds451547876086.png', '11547875853.jpg', 'ST331547875853.jpg', NULL, 87, '2019-01-19 05:30:53', '2019-01-19 05:57:35'),
(88, '83706-25266-zszywacz_kangaro_ds_23_s_13_ql_zszywa_do_100_k-org1547883899.jpg', '52f844fa8eb4cb8a5696fd79028b1fab1547883899.jpg', 'item_XL_28333241_735828861547883899.jpg', 'item_XL_23344043_332166741547883899.jpg', NULL, 88, '2019-01-19 07:44:59', '2019-01-19 07:44:59'),
(89, '71TBRQOGXcL._SX425_1547885404.jpg', 'KANGARO-HD-23L17-B1547885404.JPG', 'Prod551547885404.jpg', 'steel-heavy-duty-stapler-500x5001547885404.jpg', NULL, 89, '2019-01-19 08:10:04', '2019-01-19 08:10:04'),
(90, '31wJS0sZ0LL1547886464.jpg', 'Prod541547886464.jpg', 'SDL376861519_1386237145_image1-e2af91547886464.jpg', NULL, NULL, 90, '2019-01-19 08:27:44', '2019-01-19 08:27:44'),
(91, '21547887398.jpg', '81nMw4WjLGL._SX355_1547887398.jpg', '21547887448.jpg', NULL, NULL, 91, '2019-01-19 08:36:12', '2019-01-19 08:44:08'),
(92, '41Jdmxqa6NL1547888290.jpg', 'stapler-pin-big-500x5001547888290.jpg', 'stapler-pin-500x5001547888290.jpeg', NULL, NULL, 92, '2019-01-19 08:58:10', '2019-01-19 08:58:10'),
(93, 'ruler_faber_castell1547893538.jpg', '3121HHVrVlL1547893538.jpg', NULL, NULL, NULL, 93, '2019-01-19 10:25:38', '2019-01-19 10:25:38'),
(94, '0092886_deli-6009-office-scissors-black1547981094.jpeg', '0092887_deli-6009-office-scissors-red1547894612.jpeg', 'TB2IsNCcXXXXXXTXpXXXXXXXXXX_!!6783094521547894612.jpg', '0001372_deli-scissors-6009-8-inch_3701547894612.jpeg', NULL, 94, '2019-01-19 10:43:32', '2019-01-20 10:44:54'),
(95, '86b09e8f40039008b06b5a058f84372a1547980982.jpg', 'sdi_anti_cutter_big_any_color_sdi-0433_pic1_tk70_11547980982.jpg', NULL, NULL, NULL, 95, '2019-01-20 10:43:02', '2019-01-20 10:43:02'),
(96, '2018-10-231547982011.jpg', '6a0eecf358d3ad632861a4a8025f809c1547982011.jpg', NULL, NULL, NULL, 96, '2019-01-20 10:54:11', '2019-01-20 11:00:11'),
(97, '868045aa71b2dee6c11a1ab89ee0b7a31508492946-lg1547983209.jpg', 'sakdanp0011547983209.jpg', NULL, NULL, NULL, 97, '2019-01-20 11:20:09', '2019-01-20 11:20:09'),
(98, 'highlighter-pen-500x500 (1)1548053087.jpg', 'markeryellow (1)1548053087.png', 'yellow-highlighter-pen-500x500 (1)1548053087.jpg', NULL, NULL, 98, '2019-01-21 06:44:47', '2019-01-21 06:44:47'),
(99, 'stb22222_edit1548054351.jpg', NULL, NULL, NULL, NULL, 99, '2019-01-21 07:05:51', '2019-01-21 07:05:51'),
(100, 'Deli_Correction_Pen_No.7286-11548055360.jpg', '0001391_deli-correction-pen_3701548055061.jpeg', 'Deli_Correction_Pen_No.7286-21548055360.jpg', NULL, NULL, 100, '2019-01-21 07:17:41', '2019-01-21 07:22:40'),
(101, '187120_60_PX_9999989899_26371548057036.jpg', 'faber-7086-500x5001548057036.jpg', 'faber-7086-500x5001548056957.jpg', NULL, NULL, 101, '2019-01-21 07:49:17', '2019-01-21 07:50:36'),
(102, 'dust-eraser-500x5001548057794.jpg', '55173a1548057794.jpg', 'Apsara-Non-Dust-Erasers1548057794.jpg', 'SP.B2.15760671548057794.jpg', '372886-500x5001548057794.jpg', 102, '2019-01-21 08:03:14', '2019-01-21 08:03:14'),
(103, '_mg_40281548058886.jpg', '_mg_4029_edit1548058886.jpg', '_mg_4030_edit1548058886.jpg', NULL, NULL, 103, '2019-01-21 08:21:26', '2019-01-21 08:21:26'),
(104, 'a4_file_double1548060987.jpg', NULL, NULL, NULL, NULL, 104, '2019-01-21 08:56:27', '2019-01-21 08:56:27'),
(105, '6bc4f6df-1e99-58a8-3907-863b11930f211548063274.jpg', '6ecc2d2c82b263793374ae0e2068a5ded180c0811548061937.jpg', '61548062388.jpg', '51548062388.jpg', 'Manual-Pencil-Sharpener-Office-School-Sharpening-Stationery-with1548062388.jpg', 105, '2019-01-21 09:12:17', '2019-01-21 09:34:34'),
(106, 'sharpner_71548063108.jpg', 'natraj-sharpener-500x5001548063108.jpg', 'natraj-11548063108.jpg', NULL, NULL, 106, '2019-01-21 09:31:48', '2019-01-21 09:31:48'),
(107, 'artline-stamp-pad-ink-refill-55cc-copy-1pc---violet1548149520.jpg', 'ink_11548149520.jpg', NULL, NULL, NULL, 107, '2019-01-22 09:31:20', '2019-01-22 09:32:00'),
(108, 'full1548151788.jpg', '27504271548150129.jpeg', NULL, NULL, NULL, 108, '2019-01-22 09:42:09', '2019-01-22 10:09:48'),
(109, 's0264594_sc71548151690.jpg', '61oiIflGeBL._SY355_1548153053.jpg', '20035771548151690.jpg', 's0588366_sc71548151274.jpg', NULL, 109, '2019-01-22 10:01:14', '2019-01-22 10:30:53'),
(110, 'Trodat-Printy-4918-Self-Inking-Rubber-Stamp-75-x-15mm-Grey_Angle-By-www.StampLab.com_.au_1548152856.jpg', NULL, NULL, NULL, NULL, 110, '2019-01-22 10:27:36', '2019-01-22 10:27:36'),
(111, '04-red1548155179.jpg', 'shiny_stamp_ink_28ml_copy_31548155179.jpg', NULL, NULL, NULL, 111, '2019-01-22 11:06:19', '2019-01-22 11:06:19'),
(112, 'PR_49171548155811.jpg', 'Trodat-Printy-4917-Personalised-Self-Inking-Rubber-Stamp-50-x-10mm-Super-Hero-By-www.StampLab.com_.au_1548155811.jpg', 'Trodat-Printy-4917-Personalised-Self-Inking-Rubber-Stamp-50-x-10mm-Drop-Shadow-By-www.StampLab.com_.au_1548155811.jpg', NULL, NULL, 112, '2019-01-22 11:16:51', '2019-01-22 11:16:51'),
(113, '41YJkx5CytL._SX450_1548222901.jpg', NULL, NULL, NULL, NULL, 113, '2019-01-23 05:31:31', '2019-01-23 05:55:01'),
(114, 'Untitled-11548222005.jpg', NULL, NULL, NULL, NULL, 114, '2019-01-23 05:40:05', '2019-01-23 05:40:05'),
(115, 'Untitled-11548225968.jpg', '51riNUBNwDL._UY395_1548225879.jpg', NULL, NULL, NULL, 115, '2019-01-23 06:44:39', '2019-01-23 06:46:08'),
(116, 'd8331006-c544-4cdc-a82f-e38ad6698645_1.318fcb4885ba45faad09f275ba14ca861548226419.jpeg', 'f2e2f210-269b-4a1c-9756-1ff768e9dde8_1.09af4b9ba873c8ec529da68801f49c391548226447.jpeg', NULL, NULL, NULL, 116, '2019-01-23 06:53:39', '2019-01-23 06:54:07'),
(117, 'Untitled-31548238048.jpg', '41a2K6YzixL._SX466_1548227524.jpg', '1.Personalized-Office-Name-Plate-With-Wall-or-Desk-Holder-2x8-CUSTOMIZE-e15454496224701548227524.jpg', '81GdK4xwvdL._SL1500_1548227524.jpg', NULL, 117, '2019-01-23 07:12:04', '2019-01-23 10:07:28'),
(118, '1-teak-float-name-plate-classic-525x525-500x50015482323201548238726.jpg', 'bd225d0392e64e2bde5e9cd1e910aa971548232320.jpg', NULL, NULL, NULL, 118, '2019-01-23 08:32:00', '2019-01-23 10:18:46'),
(119, 'copper-metal-sign-for-wall-or-door-2x91548238806.jpg', 'flush-mount-office-sign-real-copper1548235504.jpg', 'cool-door-sign1548235504.jpg', NULL, NULL, 119, '2019-01-23 09:25:04', '2019-01-23 10:20:06'),
(120, 'Untitled-21548237498.jpg', NULL, NULL, NULL, NULL, 120, '2019-01-23 09:58:18', '2019-01-23 09:58:18'),
(121, 'pull-door-sign-engraved-detail1548239342.jpg', 'push-pull-acrylic-door-signs-thumb1548239342.jpg', NULL, NULL, NULL, 121, '2019-01-23 10:26:56', '2019-01-23 10:29:02'),
(122, 'eb9b611b-f615-4972-b321-5aabc323cf4b_1.1c4b08a79eadbede420c45e2e0323b641548240592.jpeg', '119585861548240914.jpg', 'eb9b611b-f615-4972-b321-5aabc323cf4b_1.1c4b08a79eadbede420c45e2e0323b641548240914.jpeg', NULL, NULL, 122, '2019-01-23 10:45:20', '2019-01-23 10:55:14'),
(123, '119585871548240810.jpg', NULL, NULL, NULL, NULL, 123, '2019-01-23 10:53:30', '2019-01-23 10:53:30'),
(124, '119689021548241679.jpg', '81D7WvuA5tL._SX425_1548241679.jpg', NULL, NULL, NULL, 124, '2019-01-23 11:07:59', '2019-01-23 11:07:59'),
(125, '276172_p_110302341548243291.jpg', '276217_p_ordhist_11030243i_011548243291.jpg', '31iNS9-eIhL._SL500_AC_SS350_1548243291.jpg', NULL, NULL, 125, '2019-01-23 11:34:51', '2019-01-23 11:34:51'),
(126, '56207-1006-1-2ww-m1548243765.jpg', NULL, NULL, NULL, NULL, 126, '2019-01-23 11:42:45', '2019-01-23 11:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `incentives`
--

CREATE TABLE `incentives` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_incentive` int(10) UNSIGNED NOT NULL,
  `first_order_incentive` int(10) UNSIGNED NOT NULL,
  `order_incentive` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` int(10) UNSIGNED NOT NULL,
  `industryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `industryName`, `created_at`, `updated_at`) VALUES
(5, 'Education industry', '2019-01-03 10:32:48', '2019-01-03 10:32:48'),
(6, 'News media', '2019-01-03 10:33:24', '2019-01-03 10:33:24'),
(7, 'Information industry', '2019-01-03 10:33:48', '2019-01-03 10:33:48'),
(8, 'Corporate Office', '2019-01-12 06:35:09', '2019-01-12 06:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `membership_types`
--

CREATE TABLE `membership_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `membership_type` tinyint(4) NOT NULL,
  `discount_value` int(11) NOT NULL,
  `discount_unit` tinyint(4) NOT NULL,
  `is_free_shipping_active` tinyint(1) NOT NULL,
  `valid_until` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `membership_types`
--

INSERT INTO `membership_types` (`id`, `membership_type`, `discount_value`, `discount_unit`, `is_free_shipping_active`, `valid_until`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 2, 1, '2018-12-31 00:00:00', '2018-12-05 05:05:11', '2018-12-05 05:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `confirmed`, `created_at`, `updated_at`) VALUES
(5, 'Sanchita Sarkar', 'jge.bdm3@gmail.com', 'Testing', '12132', 1, '2018-12-20 06:32:33', '2018-12-20 06:34:44'),
(6, 'Sanchita Sarkar', 'jge.bdm3@gmail.com', 'Testing', 'abcdefghijklmnopqrstuvwxyz 123456789101112131415161718192021222324252627282930313233334353637383940414243454647484950jhsajgakjfhjkaghabcdefghijklmnopqrstuvwxyz', 1, '2018-12-20 06:34:31', '2018-12-20 06:34:48'),
(7, 'Sanchita Sarkar', 'jge.bdm3@gmail.com', 'Testing', 'b) While we try and ensure that all prices on our website are accurate, errors may occur. If we discover an error in the price of goods you have ordered, we will inform you as soon as possible and give you the option of re-confirming your order at the correct price or cancelling it. If we are unable to contact, you we will treat the order as cancelled. If you cancel and you have already paid for the goods, you will receive a full refund.\r\nPayment can be made by any method specified in How to use this website. For information about secure online ordering see Security. Title to any products you order on this website shall pass to you on delivery of the products provided that we have processed and received payment in full for the products.', 1, '2018-12-24 07:46:13', '2018-12-24 08:51:25'),
(8, 'Sanchita Sarkar', 'jge.bdm3@gmail.com', 'Testing', '3. Are the Products Genuine?\r\nOfftica.com, loyal customer base, trust and prefer to shop from Offtica.com, whenever they need any product Offtica.com, offers a guarantee of original and genuine products.\r\nOfftica.com, Partner affiliations include the most reputed international brands and manufacturers, providing only authentic products, as we have ZERO tolerance for duplicates or fakes. Furthermore, our accompanying warranty facilities also help our customers get the best out of their original products.', 1, '2019-01-10 10:13:29', '2019-01-10 10:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(415, '2014_10_12_000000_create_users_table', 1),
(416, '2014_10_12_100000_create_password_resets_table', 1),
(417, '2018_08_25_105129_create_membership_types_table', 1),
(418, '2018_08_26_032146_create_salesmen_table', 1),
(419, '2018_08_26_032726_create_industries_table', 1),
(420, '2018_08_26_034307_create_payments_table', 1),
(421, '2018_08_26_035845_create_clients_table', 1),
(422, '2018_08_26_073624_create_brands_table', 1),
(423, '2018_08_26_073703_create_categories_table', 1),
(424, '2018_08_26_083030_create_subcategories_table', 1),
(425, '2018_08_26_091502_create_minicategories_table', 1),
(426, '2018_08_27_040714_create_products_table', 1),
(427, '2018_08_27_083821_create_discounts_table', 1),
(428, '2018_08_28_073821_create_orders_table', 1),
(429, '2018_08_28_074235_create_wishlists_table', 1),
(430, '2018_08_28_074334_create_shippings_table', 1),
(431, '2018_08_28_093717_create_orderdetails_table', 1),
(432, '2018_09_20_043007_create_images_table', 1),
(433, '2018_09_20_053149_create_siteinfos_table', 1),
(434, '2018_09_20_061450_create_contacts_table', 1),
(435, '2018_09_20_061518_create_messages_table', 1),
(436, '2018_09_20_061548_create_partners_table', 1),
(437, '2018_09_20_061725_create_abouts_table', 1),
(438, '2018_09_27_041643_create_subscriptions_table', 1),
(439, '2018_10_08_033430_create_tags_table', 1),
(440, '2018_10_08_102234_create_productreviews_table', 1),
(441, '2018_10_08_104431_create_colors_table', 1),
(442, '2018_10_08_104443_create_sizes_table', 1),
(443, '2018_10_08_110430_create_color_product_table', 1),
(444, '2018_10_08_115420_create_product_size_table', 1),
(445, '2018_10_08_115420_create_product_tag_table', 1),
(446, '2018_11_12_110022_create_rewardpoints_table', 1),
(447, '2018_11_14_042837_create_client_discount_table', 1),
(448, '2018_11_22_090430_create_billings_table', 1),
(449, '2018_11_22_100413_create_salesmantargets_table', 1),
(450, '2018_11_22_100707_create_incentives_table', 1),
(451, '2018_11_22_111020_create_sippingaddrs_table', 1),
(452, '2018_11_24_090009_create_billingaddrs_table', 1),
(453, '2018_11_26_100540_create_clientpayments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `minicategories`
--

CREATE TABLE `minicategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `miniCategoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `minicategories`
--

INSERT INTO `minicategories` (`id`, `miniCategoryName`, `subcategory_id`, `created_at`, `updated_at`) VALUES
(23, 'PENS & PENCILS', 36, '2019-01-03 10:15:22', '2019-01-03 10:15:22'),
(24, 'MARKERS & HIGHLITERS', 36, '2019-01-03 10:15:29', '2019-01-09 07:36:46'),
(25, 'CORRECTION & ERASERS', 36, '2019-01-03 10:15:38', '2019-01-09 08:14:37'),
(28, 'PENCIL SHARPENERS', 36, '2019-01-03 10:16:06', '2019-01-03 10:16:06'),
(29, 'WRITING ACCESSORIES', 36, '2019-01-03 10:16:47', '2019-01-03 10:16:47'),
(30, 'TAPE, GLUE & ADHESIVES', 35, '2019-01-12 06:31:43', '2019-01-12 06:31:43'),
(31, 'CLIPS, TACKS & RUBBER BANDS', 35, '2019-01-12 06:31:59', '2019-01-12 06:31:59'),
(32, 'STAPLER & ACCESSORIES', 35, '2019-01-12 06:32:20', '2019-01-12 06:32:20'),
(33, 'SCISSORS, RULERS & TRIMMERS', 35, '2019-01-12 06:32:33', '2019-01-12 06:32:33'),
(34, 'STAMPS, PADS & ACCESSORIES', 35, '2019-01-12 06:32:46', '2019-01-12 06:32:46'),
(35, 'BADGES & HOLDERS', 35, '2019-01-12 06:32:59', '2019-01-12 06:32:59'),
(36, 'SIGNS & NAMEPLATES', 35, '2019-01-12 06:33:09', '2019-01-12 06:33:09'),
(37, 'ART & DRAFTING SUPPLIES', 35, '2019-01-12 06:33:27', '2019-01-12 06:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_value` tinyint(4) NOT NULL,
  `valid_until` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `discount_value`, `valid_until`, `created_at`, `updated_at`) VALUES
(4, 5, '2019-01-31', '2019-01-10 08:14:37', '2019-01-10 08:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `offer_product`
--

CREATE TABLE `offer_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offer_product`
--

INSERT INTO `offer_product` (`product_id`, `offer_id`, `created_at`, `updated_at`) VALUES
(56, 4, NULL, NULL),
(41, 4, NULL, NULL),
(31, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `quantity`, `product_id`, `order_id`, `created_at`, `updated_at`) VALUES
(9, 1, 63, 9, '2019-01-09 12:04:14', '2019-01-09 12:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `paymentStatus` tinyint(4) DEFAULT '0',
  `client_id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `discount_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `paymentStatus`, `client_id`, `payment_id`, `discount_id`, `created_at`, `updated_at`) VALUES
(8, 0, 0, 3, 8, NULL, '2018-12-18 07:42:51', '2018-12-18 07:42:51'),
(9, 0, 0, 4, 9, NULL, '2019-01-09 12:04:14', '2019-01-09 12:04:14'),
(10, 0, 0, 4, 10, NULL, '2019-01-09 12:17:59', '2019-01-09 12:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `companyUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandLogo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `companyUrl`, `brandLogo`, `created_at`, `updated_at`) VALUES
(1, 'http://www.jaragroups.com/', 'Untitled-31547636264.jpg', '2019-01-03 10:45:56', '2019-01-16 10:57:44'),
(8, 'http://www.ngenitltd.com/', 'Untitled-21547636418.jpg', '2019-01-09 04:52:18', '2019-01-16 11:00:19'),
(9, 'http://www.consultant-house.com/chdirtmp/about.html', 'Untitled-41547636317.jpg', '2019-01-13 05:11:11', '2019-01-16 10:58:37'),
(11, 'http://techfocusltd.com/', 'Untitled-61547636937.jpg', '2019-01-13 05:22:09', '2019-01-16 11:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`, `updated_at`) VALUES
('abduljabbar.ngenit@gmail.com', 'hhJsUjs9jDVKFS9BLIjf5Zm8obtBc3h8jvgNkdbJ', '2018-12-10 10:03:20', '2018-12-10 10:03:20'),
('smsadhin123@gmail.com', '$2y$10$G8rc7tkqznEvhPcilPee8u7W0V6GZfSjWXJ5DRAxBo1qvQojEO8Ly', '2018-12-26 04:50:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `paymentMethod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accNo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tranId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `paymentMethod`, `accNo`, `tranId`, `acc_name`, `bank_name`, `deposit`, `created_at`, `updated_at`) VALUES
(1, '0', '01971424221', '01971424221', NULL, 'BRAC Bank', NULL, '2018-12-06 11:51:16', '2018-12-06 11:51:16'),
(2, '0', '01971424221', '01971424221', NULL, 'BRAC Bank', NULL, '2018-12-06 11:51:58', '2018-12-06 11:51:58'),
(3, '0', '01971424221', '01971424221', NULL, 'BRAC Bank', NULL, '2018-12-06 11:54:04', '2018-12-06 11:54:04'),
(4, '0', '01971424221', '01971424221', NULL, 'BRAC Bank', NULL, '2018-12-06 11:55:24', '2018-12-06 11:55:24'),
(5, '0', '01971424221', '01971424221', NULL, 'BRAC Bank', NULL, '2018-12-06 12:02:20', '2018-12-06 12:02:20'),
(6, '0', '01971424221', '01971424221', NULL, 'BRAC Bank', NULL, '2018-12-06 12:04:36', '2018-12-06 12:04:36'),
(7, '0', '01737724443', 'gfhgfhgfkjhkjh', NULL, 'BRAC Bank', NULL, '2018-12-09 09:01:28', '2018-12-09 09:01:28'),
(8, '1', '01734528741', '2132465656', NULL, 'Dutch-Bangla Bank', NULL, '2018-12-18 07:42:51', '2018-12-18 07:42:51'),
(9, '0', '01971424221', '01971424221', NULL, 'BRAC Bank', NULL, '2019-01-09 12:04:14', '2019-01-09 12:04:14'),
(10, '0', '01971424221', '01971424221', NULL, 'BRAC Bank', NULL, '2019-01-09 12:17:59', '2019-01-09 12:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `authorName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `salePrice` double(10,3) DEFAULT NULL,
  `regularPrice` double(10,3) DEFAULT NULL,
  `view` int(11) DEFAULT '0',
  `type` tinyint(4) NOT NULL,
  `availablity` tinyint(4) NOT NULL,
  `specification` longtext COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(10) UNSIGNED NOT NULL,
  `minicategory_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `industry_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `sku`, `description`, `salePrice`, `regularPrice`, `view`, `type`, `availablity`, `specification`, `category_id`, `subcategory_id`, `minicategory_id`, `brand_id`, `industry_id`, `created_at`, `updated_at`) VALUES
(30, 'Econo Soft Grip Ballpen, Black, Pack of 10', 'OWC-PP-ESGBP-0B', '<p>Econo Soft Grip Ball Pen is made of high quality material. This black ball pen contains 10pcs in a single package. Both adults and children can use this pen. Price is reasonable, and quality is ensured with superior concentration.</p>', 76.000, 84.000, 14, 1, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-ESGBP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Ball Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Econo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 17, 36, 23, 6, 5, '2019-01-05 06:27:39', '2019-01-10 15:43:53'),
(31, 'Econo Ocean Ballpen - Pack of 10', 'OWC-PP-EOBP-0B', '<p>This ball pen is made of high quality material. This black ball pen contains 10pcs in a single package. For adults and children&rsquo;s both can use this pen. Price is reasonable, and quality is ensured with superior concentration.</p>', 99.000, 102.000, 10, 1, 0, '<p>&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>&nbsp;&nbsp;&nbsp;&nbsp; SKU</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>OWC-PP-EOBP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>&nbsp;Product Type</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Ball Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>&nbsp;&nbsp;&nbsp; Brand</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Econo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>&nbsp;&nbsp;&nbsp; INK Color</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>&nbsp;Pack of </strong></p>\r\n			</td>\r\n			<td>\r\n			<p>10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 6, 5, '2019-01-05 06:31:19', '2019-01-12 22:02:43'),
(32, 'Econo Zebra Ballpen- Pack of 20', 'OWC-PP-EZBP-0B', '<p>Econo Zebra Black Ball Pen is made of high quality material. This black ball pen contains 20pcs in a single package. Both adults and children can use this pen. Price is reasonable, and quality is ensured with superior concentration.</p>', 105.000, NULL, 10, 1, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-EZBP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Ball Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Econo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>20</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table>\r\n	<caption>\r\n	<p>&nbsp;</p>\r\n	</caption>\r\n</table>', 17, 36, 23, 6, 5, '2019-01-05 06:42:22', '2019-01-10 03:09:21'),
(33, 'Econo Castle Pen Ballpen  - Pack of 20', 'OWC-PP-ECSBP-0B', '<p>DF pen, gives impression of a pencil.It has Shiny black color body.&nbsp;Popular as &ldquo;Pencil Pen&rdquo; in Bangladesh among the shop owners</p>', 102.000, NULL, 6, 1, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-ECSBP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Ball Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Econo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>20&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 6, 5, '2019-01-05 06:52:45', '2019-01-10 03:02:02'),
(34, 'Econo Dx Ball Pen -Pack of 10', 'OWC-PP-EDBP-0B', '<p>Econo Dx Ball Pen Available in Multi color &amp; &nbsp;Most popular Pen in Bangladesh&nbsp;</p>', 53.000, NULL, 4, 1, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">OWC-PP-EDBP-0B</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Ball Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Econo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>10&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 6, 5, '2019-01-05 07:05:04', '2019-01-10 03:26:56'),
(35, 'Econo Trandy Ballpen- Pack of 10', 'OWC-PP-ETBP-0B', '<p>​​​​​Econo Trendy Ball Pen is made of high quality material. This black ball pen contains 10pcs in a single package. Both adults and children can use this pen. Price is reasonable, and quality is ensured with superior</p>', 51.000, NULL, 6, 1, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>&nbsp;&nbsp;&nbsp;&nbsp; SKU</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>OWC-PP-ETBP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>&nbsp;Product Type</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Ball Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>&nbsp;&nbsp;&nbsp; Brand</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Econo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>&nbsp;&nbsp;&nbsp; INK Color</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Comforable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>&nbsp;Pack of </strong></p>\r\n			</td>\r\n			<td>\r\n			<p>10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 6, 5, '2019-01-05 07:07:10', '2019-01-10 15:44:18'),
(37, 'Econo 786 Pen- 1 pc', 'OWC-PP-E7BP-0B', '<p>&nbsp;</p>\r\n\r\n<p>Refill pen with&nbsp;transparent&nbsp;front nozzle, Suitable for screen printing of brand names &amp;</p>\r\n\r\n<p>attractive coloring cap &amp; body.</p>\r\n\r\n<p>For a better tomorrow pen.</p>', 26.000, NULL, 8, 1, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-E7BP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>&nbsp;Ball Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Econo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>&nbsp;Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>&nbsp;Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>&nbsp; Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>&nbsp;Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>&nbsp;Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>&nbsp;1 piece</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>&nbsp;0.5mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Body Shape</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Attractive</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 6, 5, '2019-01-05 07:26:24', '2019-01-21 09:49:46'),
(38, 'Gq Excel Pen - 1pc', 'OWC-PP-GQEBP-0B', '<ul>\r\n	<li>Econo GQ Excel Black Ball Pen is Pocket size refill ball pen &amp; It is Metal front nozzle.</li>\r\n</ul>', 153.000, NULL, 7, 1, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-GQEBP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Ball Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Econo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Body Shape</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Attractive</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 6, 5, '2019-01-05 07:31:22', '2019-01-10 03:09:47'),
(39, 'Gq Superme Pen - 1pc', 'OWC-PP-GQSBP-0B', '<p>Gq Superme Ball Pen has&nbsp;attractive coloring cap &amp; body.Metal front nozzle, Pocket size refill pen with gripper.<br />\r\nPharmaceutical companies and banks use this as promotional pens.</p>\r\n\r\n<p>&nbsp;</p>', 123.000, NULL, 5, 1, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-GQSBP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Ball Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Econo</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>1 pc</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 9, 5, '2019-01-05 07:42:05', '2019-01-17 05:59:07'),
(40, 'Matador I-Teen - Pack of 12', 'OWC-PP-MIT-0B', '<p>Matador I-Teen&nbsp;is made of high quality material. This black ball pen contains 12pcs in a single package. Both adults and children can use this pen. Price is reasonable, and quality is ensured with superior concentration. &nbsp;&nbsp;</p>', 123.000, NULL, 4, 0, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">OWC-PP-MIT-0B</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Ball Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Matador</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>12</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.6mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 7, 5, '2019-01-05 08:23:07', '2019-01-10 03:07:09'),
(41, 'MATADOR Envoy Pen – 10 pcs', 'OWC-PP-MEPBP-0B', '<p>Attractive foiled body &amp; Extra griping &amp; refill advantage.</p>\r\n\r\n<p>Matador pen normally is used high quality raw materials imported from Germany, Belgium, Korea, China and India. It is highly precise moulds, imported from Korea, ensures dimensional accuracy and flawless finishing of every part of pen.</p>', 123.000, NULL, 5, 1, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-MEPBP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Oil Based Gel Ink Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Matador</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.7 mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 7, 5, '2019-01-05 10:26:51', '2019-01-10 09:14:00'),
(42, 'Matador Glory Ball Pen – 10 pcs', 'OWC-PP-MGBP-0B', '<p>Matador Glory Pen is made of high quality material. This black ball pen contains 10pcs in a single package. Both adults and children can use this pen. Price is reasonable, and quality is ensured with superior concentration.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Matador pen normally is used high quality raw materials imported from Germany, Belgium, Korea, China and India. It is highly precise moulds, imported from Korea, ensures dimensional accuracy and flawless finishing of every part of pen.</p>\r\n\r\n<p>&nbsp;</p>', 57.000, NULL, 3, 1, 0, '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-MGBP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Matador</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>10</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.6mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 7, 5, '2019-01-05 10:41:20', '2019-01-10 03:27:27'),
(43, 'Matador Hi-School -Pack of 12', 'OWC-PP-MHSBP-0B', '<p>Matador Hi-School is made of high quality material. This black ball pen contains 10pcs in a single package. Both adults and children can use this pen. Price is reasonable, and quality is ensured with superior concentration. &nbsp;&nbsp; &nbsp; &nbsp;</p>', 62.000, NULL, 6, 1, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-MHSBP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Ball Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Matador</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>12</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.6mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 7, 5, '2019-01-05 11:15:50', '2019-01-12 13:40:24'),
(44, 'MATADOR Radiant Pen - Pack of 12', 'OWC-PP-MRBP-0B', '<p>MATADOR Radiant Pen&nbsp;is made of high quality material. This black ball pen contains 12pcs in a single package. Both adults and children can use this pen. Price is reasonable, and quality is ensured with superior concentration. &nbsp;&nbsp;</p>', 123.000, NULL, 6, 1, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-MRBP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Ball Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Matador</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>12</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.6mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 7, 5, '2019-01-05 11:52:08', '2019-01-22 06:12:46'),
(45, 'Matador Aqua Gel- Pack Of 12', 'OWC-PP-MAQGP-0B', '<p>Matador Aqua Gel&nbsp; with Japanese waterproof ink,0.55 mm SS tips with TC ball &amp; transparent body. It has Extra refilling opportunity &amp; 4 attractive body. Shelf life: 2 years</p>\r\n\r\n<p>Matador pen normally is used high quality raw materials imported from Germany, Belgium, Korea, China and India. It is highly precise moulds, imported from Korea, ensures dimensional accuracy and flawless finishing of every part of pen.</p>', 172.000, NULL, 7, 1, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">OWC-PP-MAQGP-0B</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">Oil Based Gel Pen&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">Matador</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">172</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.55mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt"><strong>Body Shape</strong></td>\r\n			<td style="height:10.0pt; width:141.75pt">Attractive</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 7, 5, '2019-01-06 09:43:08', '2019-01-09 05:43:36'),
(46, 'Pilot Pen', 'OWC-PP-PBP-0B', '<p>Standard Quality with cost effective &amp; environmental friendly pen. Very comfortable &amp; integrated grip.</p>', 184.000, NULL, 8, 0, 0, '<p>&nbsp;</p>\r\n\r\n<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-PBP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pilot</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.6mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 8, 5, '2019-01-06 10:11:11', '2019-01-08 21:39:00'),
(47, 'Pilot G-Tec-C Gel Pen - 0.4 mm - Black', 'OWC-PP-PGTGP0.40B', '<p>The pen that introduced many students and artists to the pleasures of fine Japanese gel pens, the G-Tec-C is the international version of the&nbsp;<a href="http://www.jetpens.com/Pilot-Hi-Tec-C-Gel-Pens-Standard/ct/284">standard Hi-Tec-C</a>&mdash;popular in Japan and sought-after around the world for its smooth ink and precise needle-point tip. Designed for razor-sharp precision, it features a consistent, feather-free writing experience and a textured plastic grip for improved control. Its water-resistant ink protects important notes while also allowing artists to create interesting shading effects with a brush.</p>', 178.000, NULL, 6, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Model Number</td>\r\n			<td>OWC-PP-PGTGP0.40B</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Manufacturer</td>\r\n			<td><a href="https://www.jetpens.com/Pilot-Pens">Pilot</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Body Color</td>\r\n			<td>Clear</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Body Material</td>\r\n			<td>Plastic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Capped or Retractable</td>\r\n			<td>Capped - Snap On</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Clip Material</td>\r\n			<td>Plastic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Clippable</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Diameter - Grip</td>\r\n			<td>9.0 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Diameter - Max</td>\r\n			<td>9.1 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Grip Color</td>\r\n			<td>Clear</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Grip Material</td>\r\n			<td>Plastic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ink Characteristics</td>\r\n			<td>Acid-Free, Archival Quality, Smear-Resistant</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ink Refillable</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Length - Capped</td>\r\n			<td>13.6 cm / 5.4 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Length - Posted</td>\r\n			<td>15.6 cm / 6.1 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Length - Uncapped</td>\r\n			<td>12.6 cm / 5.0 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pre-Installed Ink Color</td>\r\n			<td>Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tip Material</td>\r\n			<td>Metal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tip Size</td>\r\n			<td>0.4 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tip Type</td>\r\n			<td>Needle Point</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight - Barrel (with Ink)</td>\r\n			<td>0.25 oz / 7 grams</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight - Cap</td>\r\n			<td>0.11 oz / 3 grams</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight - Whole Pen (with Ink)</td>\r\n			<td>0.36 oz / 10 grams</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 8, 5, '2019-01-06 10:17:05', '2019-01-22 06:14:02'),
(48, 'Pilot BL-GC4 G-Tec-C4 - Blue', 'OWC-PP-PGTGP-40BL', '<p>With its new generation ink providing unprecedented writing pleasure, and its comfortable integrated grip, Pilot Pen really does have everything going for it. And despite all these qualities, this pen is still quite simple, with a streamlined design and very affordable price.&nbsp;An ergonomic pen with a rubber grip to ensure better control and a better writing comfort! Hard-wearing tungsten-carbide ball combined with advanced oil-based ink provides a soft and fluid writing experience.</p>', 97.000, NULL, 4, 0, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-PGTGP-40BL</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Gel Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pilot</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Blue</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable integrated</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 8, 5, '2019-01-06 10:30:02', '2019-01-10 03:27:55'),
(49, 'Pilot Hi Tecpoint V5 Black', 'OWC-PP-PHTV5GP-0B', '<p>V5 is the range&rsquo;s best seller since 1984! The V5 is a liquid ink rollerball equipped with an ink regulator for perfect ink flow. Its highly resistant tungsten carbide ball retains its shape and is extremely hardwearing. You will be delighted by the precision and the finesse of the V5 stroke.</p>\r\n\r\n<p>Hi-Tecpoint V5 &ndash; Liquid Ink Rollerball &ndash; Black &ndash; Fine Tip</p>\r\n\r\n<p><strong>Features:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Excellent writing comfort and precise lines thanks to the free-flowing and vibrant coloured liquid ink.</li>\r\n	<li>Pen with cap.</li>\r\n	<li>Hitec point for ultra-precise lines, fine or extra fine with an awesome writing comfort.</li>\r\n	<li>Tip size : 0.50 mm</li>\r\n	<li>Writing width : 0.30 mm</li>\r\n	<li>Ink color : Black</li>\r\n</ul>', 102.000, NULL, 8, 0, 1, '<p>&nbsp;</p>\r\n\r\n<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-PHTV5GP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Gel Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pilot</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Piece</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable integrated</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 8, 5, '2019-01-06 10:36:56', '2019-01-22 06:12:59');
INSERT INTO `products` (`id`, `productName`, `sku`, `description`, `salePrice`, `regularPrice`, `view`, `type`, `availablity`, `specification`, `category_id`, `subcategory_id`, `minicategory_id`, `brand_id`, `industry_id`, `created_at`, `updated_at`) VALUES
(50, 'Pilot H-325 Mechanical Pencil - Black', 'OWC-PP-H325PM', '<p>When it comes to precise, smooth and uniform writing a mechanical pencil is the best choice. Comfortable and ergonomic grip zones provide a pleasant but yet exact result. Mechanical pencils are ideal for sketching, drawing and writing.&nbsp;<br />\r\nThe comfortable rubber grip zone makes writing a pleasure. Each equipped with a twist-out eraser in the end cap. The lead can of course be fully retracted so it can be carried in pockets.</p>\r\n\r\n<p><strong>Pilot-H-325 - Mechanical Pencil - Black</strong></p>\r\n\r\n<ul>\r\n	<li>Top press mechanical pencil</li>\r\n	<li>Push Pencil</li>\r\n	<li>Quality:&nbsp; Standard</li>\r\n	<li>More economical</li>\r\n	<li>Environment Friendly</li>\r\n	<li>Comfortable integrated grip</li>\r\n</ul>', 179.000, NULL, 11, 0, 0, '<p>&nbsp;</p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Model Number</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;OWC-PP-H325PM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Manufacturer</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Pilot</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Body Color</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Clear</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Body Material</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Plastic</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Capped or Retractable</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Capped - Snap On</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Clip Material</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Plastic</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Clippable</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Yes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Diameter - Grip</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;9.0 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Diameter - Max</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;9.1 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Grip Color</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Clear</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Grip Material</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Plastic</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ink Characteristics</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Acid-Free, Archival Quality, Smear-Resistant</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ink Refillable</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Yes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Length - Capped</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;13.6 cm / 5.4 inches</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Pre-Installed Ink Color</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Clear</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tip Material</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Metal</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tip Type</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Needle Point</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 8, 5, '2019-01-06 11:02:29', '2019-01-10 08:11:35'),
(51, 'Pilot BP-1RT-F - Pen - Black', 'OWC-PP-PBPRTGP-0B', '<p>The Pilot BP-1RT retractable ball point pen with its rubber grip and stainless steel nib offers you smooth writing and clean lines at a great value.</p>\r\n\r\n<p>With its new generation ink providing unprecedented writing pleasure, and its comfortable integrated grip, Pilot Pen really does have everything going for it. And despite all these qualities, this pen is still quite simple, with a streamlined design and very affordable price.An ergonomic pen with a rubber grip to ensure better control and a better writing comfort! Hard-wearing tungsten-carbide ball combined with advanced oil-based ink provides a soft and fluid writing experience.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p><strong>Product details of&nbsp;BP-1RT-F - Pen - Black</strong></p>\r\n\r\n<p>RT-F - Pen - Black</p>\r\n\r\n<ul>\r\n	<li>Product Type: Pen</li>\r\n	<li>Brand: Pilot</li>\r\n	<li>Quality: Standard</li>\r\n	<li>More economical</li>\r\n	<li>Environment Friendly</li>\r\n	<li>Comfortable integrated grip</li>\r\n</ul>', 62.000, NULL, 16, 0, 0, '<ul>\r\n	<li>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n				<p>Model Number</p>\r\n				</td>\r\n				<td>\r\n				<p>OWC-PP-PBPRTGP-0B</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Manufacturer</p>\r\n				</td>\r\n				<td>\r\n				<p><a href="https://www.jetpens.com/Pilot-Pens">Pilot</a></p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Body Color</p>\r\n				</td>\r\n				<td>\r\n				<p>Black</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Body Material</p>\r\n				</td>\r\n				<td>\r\n				<p>Plastic</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Capped or Retractable</p>\r\n				</td>\r\n				<td>\r\n				<p>Capped - Snap On</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Clip Material</p>\r\n				</td>\r\n				<td>\r\n				<p>Plastic</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Clippable</p>\r\n				</td>\r\n				<td>\r\n				<p>Yes</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Diameter - Grip</p>\r\n				</td>\r\n				<td>\r\n				<p>9.0 mm</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Diameter - Max</p>\r\n				</td>\r\n				<td>\r\n				<p>9.1 mm</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Grip Color</p>\r\n				</td>\r\n				<td>\r\n				<p>Clear</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Grip Material</p>\r\n				</td>\r\n				<td>\r\n				<p>Plastic</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Ink Characteristics</p>\r\n				</td>\r\n				<td>\r\n				<p>Acid-Free, Archival Quality, Smear-Resistant</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Ink Refillable</p>\r\n				</td>\r\n				<td>\r\n				<p>Yes</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Length - Capped</p>\r\n				</td>\r\n				<td>\r\n				<p>13.6 cm / 5.4 inches</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Length - Posted</p>\r\n				</td>\r\n				<td>\r\n				<p>15.6 cm / 6.1 inches</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Length - Uncapped</p>\r\n				</td>\r\n				<td>\r\n				<p>12.6 cm / 5.0 inches</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Pre-Installed Ink Color</p>\r\n				</td>\r\n				<td>\r\n				<p>Black</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Tip Material</p>\r\n				</td>\r\n				<td>\r\n				<p>Metal</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Tip Size</p>\r\n				</td>\r\n				<td>\r\n				<p>0.4 mm</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Tip Type</p>\r\n				</td>\r\n				<td>\r\n				<p>Needle Point</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>', 17, 36, 23, 8, 5, '2019-01-06 11:17:03', '2019-01-09 10:02:08'),
(52, 'Pilot BL-G2 G-2 - [0.7] - Black', 'OWC-PP-PBLGP-0B', '<p>With its new generation ink providing unprecedented writing pleasure, and its comfortable integrated grip, Pilot Pen really does have everything going for it. And despite all these qualities, this pen is still quite simple, with a streamlined design and very affordable price.&nbsp;An ergonomic pen with a rubber grip to ensure better control and a better writing comfort! Hard-wearing tungsten-carbide ball combined with advanced oil-based ink provides a soft and fluid writing experience.</p>\r\n\r\n<p><strong>Product details of Pilot Pen-BL-G2 G-2 - [0.7] &nbsp;- Black</strong></p>\r\n\r\n<ul>\r\n	<li>Product Type: Pen</li>\r\n	<li>Brand: Pilot</li>\r\n	<li>Quality: Standard</li>\r\n	<li>More economical</li>\r\n	<li>Environment Friendly</li>\r\n	<li>Comfortable integrated grip</li>\r\n</ul>', 87.000, NULL, 13, 0, 0, '<p><strong>Pilot pen BL-G2 G-2 - [0.7] - Black</strong></p>\r\n\r\n<ul>\r\n	<li>Product Type: Pen</li>\r\n	<li>Brand: Pilot</li>\r\n	<li>Quality: Standard</li>\r\n	<li>More economical</li>\r\n	<li>Environment Friendly</li>\r\n	<li>Comfortable integrated grip</li>\r\n	<li>\r\n	<p>The G-2 is a gel ink pen combining technological performance and design. Its ergonomic grip makes it really easy to hold while its highly resistant tungsten carbide ball retains its shape and is extremely hardwearing. You will be delighted by the fluidity of its ink and the intensity of its colours.&nbsp;</p>\r\n	</li>\r\n	<li>Super smooth writing</li>\r\n	<li>Longest writing gel ink pen</li>\r\n	<li>Comfortable rubber grip</li>\r\n	<li>Retractable &amp; refillable</li>\r\n	<li>\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n				<p>Model Number</p>\r\n				</td>\r\n				<td>\r\n				<p>&nbsp;OWC-PP-PBLGP-0B</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Manufacturer</p>\r\n				</td>\r\n				<td>\r\n				<p>&nbsp;<a href="https://www.jetpens.com/Pilot-Pens">Pilot</a></p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Body Color</p>\r\n				</td>\r\n				<td>\r\n				<p>&nbsp;Black</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Body Material</p>\r\n				</td>\r\n				<td>\r\n				<p>&nbsp;Plastic</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Capped or Retractable</p>\r\n				</td>\r\n				<td>\r\n				<p>&nbsp;Capped - Snap On</p>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Clip Material</p>\r\n				</td>\r\n				<td>\r\n				<p>&nbsp;Plastic</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>', 17, 36, 23, 8, 5, '2019-01-06 11:40:02', '2019-01-09 10:01:58'),
(53, 'Pilot BXGPN Hi-Tecpoint V5 Grip - Pen - Red', 'OWC-PP-PBHTV5GP-0R', '<p>Pilot BXGPN Hi-Tecpoint V5&nbsp;pen&nbsp;with its new generation ink providing unprecedented writing pleasure, and its comfortable integrated grip, Pilot Pen really does have everything going for it. And despite all these qualities, this pen is still quite simple, with a streamlined design and very affordable price.&nbsp;An ergonomic pen with a rubber grip to ensure better control and a better writing comfort! Hard-wearing tungsten-carbide ball combined with advanced oil-based ink provides a soft and fluid writing experience.</p>', 87.000, NULL, 3, 0, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-PBHTV5GP-0R</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pilot</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Red</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt"><strong>Body Shape</strong></td>\r\n			<td style="height:10.0pt; width:141.75pt">Attractive&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 8, 5, '2019-01-07 09:24:42', '2019-01-10 03:28:14'),
(54, 'Pilot BL-GC4 G-Tec-C4 - Pen - Red', 'OWC-PP-PBGTGP-0R', '<p>With its new generation ink providing unprecedented writing pleasure, and its comfortable integrated grip, Pilot Pen really does have everything going for it. And despite all these qualities, this pen is still quite simple, with a streamlined design and very affordable price.&nbsp;An ergonomic pen with a rubber grip to ensure better control and a better writing comfort! Hard-wearing tungsten-carbide ball combined with advanced oil-based ink provides a soft and fluid writing experience.</p>', 97.000, NULL, 17, 1, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-PBGTGP-0R</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pilot</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Red</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Piece</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 8, 5, '2019-01-07 09:32:14', '2019-01-10 02:58:50'),
(55, 'Pilot H-105 Rex Grip - Mechanical Pencil - Violet', 'OWC-PP-H105PM', '<p>When it comes to precise, smooth and uniform writing a mechanical pencil is the best choice. Comfortable and ergonomic grip zones provide a pleasant but yet exact result. Mechanical pencils are ideal for sketching, drawing and writing.&nbsp;<br />\r\nThe comfortable rubber grip zone makes writing a pleasure. Each equipped with a twist-out eraser in the end cap. The lead can of course be fully retracted so it can be carried in pockets.</p>', 82.000, NULL, 7, 1, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">OWC-PP-H105PM</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Pencil</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pilot</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Clear</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Piece</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Grip</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Comfortable</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.5mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 8, 5, '2019-01-07 09:52:11', '2019-01-10 03:10:40'),
(56, 'Faber Castle Pencil- Pack of 12', 'OWC-PP-FCP-2B', '<p>Faber-Castell Hexagonal black lead pencils Without eraser tip. pencils are the key to enjoying your writing or draw experience.</p>\r\n\r\n<p>Faber-Castell is the world&#39;s oldest pencil manufacturer. Select from the best quality graphite pencils,watercolor pencils and mechanical pencils. Draw, sketch, write or doodle.Faber-Castell Hexagonal black lead pencils&nbsp;is&nbsp;the key to enjoying your writing experience.</p>', 184.000, NULL, 18, 0, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-FCP-2B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Pencil</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Faber-Castell</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Lead</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Hexagonal black Lead Pencils.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Piece</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Pencil Grip Shape</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Hexagonal</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>12</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 13, 5, '2019-01-07 11:00:51', '2019-01-17 05:16:20'),
(57, 'Nataraj 621  Pencil-PACK OF 12', 'OWC-PP-NWP-2B', '<p><br />\r\nThe 621 is the flagship pencil for the Nataraj brand and one of their oldest pencils.The stripes on the 621 are awesome. Of the 6 sides, only one is full black; that&#39;s the side with the gold foil imprint. On the other 5 sides it&#39;s red with a thin black stripe down the middle. It looks like the thin stripes of the Joi, but instead of on the hex edge, they go right down the center. The black end dip is separated from the rest of the pencil with a white stripe. The lacquer is nice and even, though the white may be a little thin, as you can see the black stripes underneath it when you look closely. The imprint says &quot;Nataraj 621&quot;, then has a star, a parallelogram pill that says &quot;HB&quot;, another star, then the words &quot;Lasts Longer&quot;. This is very light with no eraser, so in the hand it is balanced.</p>', 86.000, NULL, 5, 0, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-NWP-2B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Pencil</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Natraj</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Lead</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Hexagonal black Lead Pencils.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Piece</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Pencil Grip Shape</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Hexagonal</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>12</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 24, 5, '2019-01-07 11:49:24', '2019-01-10 03:28:56'),
(58, 'Apsara Platinum Extra Dark Pencils-PACK OF 10', 'OWC-PP-APEP-4B', '<p>The Platinums say &quot;Extra Dark&quot; in a reverse pill and &quot;for good handwriting&quot; towards the top. These are well painted and put together pencils for the price,They seemed to get better after subsequent sharpenings. Point retention is good; you&#39;ll get best results on smoother paper. These look great on toothy paper.</p>', 102.000, NULL, 5, 0, 0, '<table align="left">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-PP-NWP-2B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Pencil</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Apsara</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Lead</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Hexagonal black Lead Pencils.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Piece</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Easy to Grip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Pencil Grip Shape</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Hexagonal</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>10</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 23, 14, 5, '2019-01-07 11:58:59', '2019-01-12 13:48:44'),
(59, 'Artline Permanent Marker Pen- Pack of 12', 'OWC-MDE-APMP-0B', '<p>The&nbsp;<strong>Artline 90 Permanent Marker</strong>&nbsp;is ideal for marking a variety of porous and non-porous surfaces including steel, glass, cardboard and wood. It has a chisel tip so you can attain broad and fine strokes easily. The&nbsp;<strong>markers</strong>&nbsp;have a chisel nib so you can attain a 2-5 mm line width.</p>', 612.000, NULL, 19, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-MDE-APMP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Permanent Marker</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Artline</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Water proof</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>&nbsp;Pack of 12</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack/Carton Quantity</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">1</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Units Per Pack/Carton</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">12</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Surfaces Writable On</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Paper, Wood, Glass, Steel</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Refillable</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Yes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Non Toxic</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Xylene free</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Shape</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Chisel</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>2.0 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Size Description</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Broad</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Quick Dry</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">Yes</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 24, 15, 5, '2019-01-09 06:19:23', '2019-01-13 05:31:13'),
(60, 'Dollar White Board Marker', 'OWC-MDE-DWBMP-0B', '<p>DOLLAR&#39;s superior ink, tip and design technology, finally there is Board Marker that gives you a peace of mind in the area of performance so that you can focus on making effective presentations Superior technical design prevents premature colour fading and ink drain-back, even if accidentally kept in a vertical (nose-up) position. Brilliant high-intensity inks for vivid, clear and crisp presentations. Soft-feel yet wear-resistant acrylic fibre tip that lasts longer. Markings can be left un-erased on White Boards for several days without the fear of leaving stains behind. On-board markers can be used conveniently on White Boards and Flip Charts.</p>', 36.000, NULL, 8, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-MKH-DWBMP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Marker pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Dollar</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack of 12</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>yes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Pack of </strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>12</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>5.00 mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 24, 16, 5, '2019-01-09 07:35:03', '2019-01-12 13:39:54'),
(61, 'Nishat Marker', 'OWC-MKH-NIMP-0B', '<p>The<strong> Nishat&nbsp;Marker</strong>&nbsp;is ideal for marking a variety of porous and non-porous surfaces including steel, glass, cardboard and wood. It has a chisel tip so you can attain broad and fine strokes easily.&nbsp;Nishat Marker Refill - Black It&nbsp;Can refill 8 markers by a bottle.</p>', 41.000, NULL, 2, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td>OWC-MKH-NIMP-0B</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>White Board</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Nishat</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>INK Type</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Water proof</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Pack of 12</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Pack/Carton Quantity</strong></p>\r\n			</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Units Per Pack/Carton</strong></p>\r\n			</td>\r\n			<td>12</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Surfaces Writable On</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Paper, Wood, Glass, Steel</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Refillable</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Yes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Non Toxic</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Xylene free</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Shape</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Chisel</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>2.0 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Size Description</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Broad</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Quick Dry</strong></p>\r\n			</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 24, 17, 5, '2019-01-09 08:42:24', '2019-01-12 14:11:43'),
(62, 'Monami Sigmaflo White Board Marker', 'OWC-MKH-SWBMP-0B', '<p>Monami SigmaFlo White Board Marker is Alcohol-based ink &amp; direct ink delivery system. Marks clearly and evenly till the last drop of ink. Monami SigmaFlo White Board Marker is&nbsp;Direct ink delivery system enables longer marking than the filter type. It has Longer cap-off time.</p>', 54.000, NULL, 1, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-MKH-SWBMP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Whiteboard Markers</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Monami</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:114.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:19.5pt; width:114.75pt">\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td style="height:19.5pt; width:141.75pt">\r\n			<p>Good</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Shape</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Chisel</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:114.75pt">\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>0.5</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 24, 19, 5, '2019-01-09 09:01:59', '2019-01-16 14:32:44'),
(63, 'Monami Cd & Dvd Marker Pen', 'OWC-MKH-MCDMP-0B', '<p>he&nbsp;Artline Marker&nbsp;is ideal for marking a variety of porous and non-porous surfaces including steel, glass, cardboard and wood. It has a chisel tip so you can attain broad and fine strokes easily. The&nbsp;markers&nbsp;have a chisel nib so you can attain a 2-5 mm line width....</p>', 21.000, NULL, 3, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>OWC-MKH-DWBMP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Marker pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Monami</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>piece</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Flexibility</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>yes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Pack of</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tip size</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>5.00 mm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 24, 19, 5, '2019-01-09 09:13:47', '2019-01-16 15:01:42'),
(64, 'Red Leaf 707 Permanent Marker', 'OWC-MKH-RLMP-0B', '<p>Industrial and office marker choice is Red Leaf 707 Permanent Marker. It has Bullet shaped nib, Aluminum barrel of diameter 15mm &amp; Xylene/Toluene free. Red Leaf 707 Permanent Marker Marks permanently on most surfaces. It Allows for smooth writing, Instant drying and odorless &amp; Water-Proof.</p>', 62.000, NULL, 9, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:9.45pt; width:123.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>OWC-MKH-RLMP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:123.75pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Handy permanent marker</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:123.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Red Leaf</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:123.75pt">\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:123.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:9.45pt; width:123.75pt">\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td style="height:9.45pt; width:141.75pt">\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:10.0pt; width:123.75pt">\r\n			<p><strong>Body Shape</strong></p>\r\n			</td>\r\n			<td style="height:10.0pt; width:141.75pt">\r\n			<p>Plastic</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 24, 18, 5, '2019-01-09 11:49:10', '2019-01-15 11:42:34'),
(65, 'Red Leaf White Board Marker', 'OWC-MKH-RLWBMP-0B', '<p>Industrial and office marker choice is Red Leaf White Board Marker. It has Bullet shaped nib, Aluminum barrel of diameter 15mm &amp; Xylene/Toluene free. Red Leaf&nbsp;White Board Marker&nbsp;Marks permanently on most surfaces. It Allows for smooth writing, Instant drying and odorless &amp; Water-Proof.</p>', 97.000, NULL, 3, 1, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>OWC-MKH-RLWBMP-0B</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>White Board&nbsp;marker</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Red Leaf</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>INK Color</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Pack</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Writing Attribute</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Smooth</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Body Shape</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Plastic</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 24, 18, 5, '2019-01-09 12:05:50', '2019-01-13 07:14:48'),
(66, 'Scotch Tape Both Side (27 X 24 X 8 Cm)-Bundle Of 5', 'OG -TGA-BSCTP', '<p>This high-quality Scotch tape of both side packaging material will help to wrap your product. It will also ensure safety&nbsp;to your product from being damaged. This packaging material makes your product&nbsp;more attractive to the customers. This bundle of Scotch Tape contains with (27x 24x 8cm) size.<br />\r\nFailure to comply with the packaging guidelines may result in damage&nbsp;of your products which will not be compensated by Offtica.com</p>', 85.000, NULL, 5, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:92.25pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="width:105.75pt">\r\n			<p>OG -TGA-BSCTP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:92.25pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="width:105.75pt">\r\n			<p>Others</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:92.25pt">\r\n			<p><strong>Color</strong></p>\r\n			</td>\r\n			<td style="width:105.75pt">\r\n			<p>White</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:92.25pt">\r\n			<p><strong>Type</strong></p>\r\n			</td>\r\n			<td style="width:105.75pt">\r\n			<p>Scotch Tape Both Side (Packaging Material)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:92.25pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="width:105.75pt">\r\n			<p>&nbsp;Bundle of 5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:92.25pt">\r\n			<p><strong>Product Types</strong></p>\r\n			</td>\r\n			<td style="width:105.75pt">\r\n			<p>Non-Toxic</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:92.25pt">\r\n			<p><strong>Dimension</strong></p>\r\n			</td>\r\n			<td style="width:105.75pt">\r\n			<p>27 x 24 x 8 cm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 17, 35, 30, 39, 8, '2019-01-13 06:42:49', '2019-01-17 16:43:12'),
(67, 'Magic Scotch Tape 810, 3/4 In X 1296', 'OG -TGA-MSCTP', '<p>Magic Scotch Tape is the original matte finish, invisible tape. It is the preferred tape for offices, home offices, and schools. Write on it with pen, pencil or marker. Scotch Magic Tape. Keep the productivity on a roll with Scotch Tapes. Mend it, seal it and secure it with this permanent transparent tape. Non-yellowing tape disappears when applied, and stays invisible over time. Can be written on. No. 810: 1 inch core comes in 36 yd. rolls in 1/2 inch and 3/4 inch widths; 3 inch core comes in 72 yd. rolls in 1/2 inch, 3/4 inch and 1inch widths. No. 104: 1/2 inch x 450 inch; No. 105: 3/4 inch x 300 inch - in refillable dispensers. Related Products: Scotch Designer Tape Dispenser C-4210, Scotch Desk Dispenser C-38 and Scotch Desk Dispenser C-40.</p>', 110.000, NULL, 9, 0, 0, '<p><strong>Sku&nbsp; : </strong>OG -TGA-MSCTP<br />\r\n<strong>Adhesive Material :&nbsp;</strong>Acrylic<br />\r\n<strong>Applications :&nbsp;</strong>Ideal for permanent paper mending<br />\r\n<strong>Color :&nbsp;</strong>Transparent<br />\r\n<strong>Core Size :&nbsp;</strong>1 Inch<br />\r\n<strong>Country of Origin :&nbsp;</strong>Made in USA with globally sourced materials<br />\r\n<strong>Dispenser :&nbsp;</strong>No<br />\r\n<strong>Length :&nbsp;</strong>1296 Inch<br />\r\n<strong>Package Configurations :&nbsp;</strong>1 Roll<br />\r\n<strong>Percent Recycled :&nbsp;</strong>0<br />\r\n<strong>Photo Safe :&nbsp;</strong>Photo safe<br />\r\n<strong>Product Grouping :&nbsp;</strong>Office Tapes<br />\r\n<strong>Product Type :&nbsp;</strong>Office Tape<br />\r\n<strong>Recycled :&nbsp;</strong>No<br />\r\n<strong>Surface Finish :&nbsp;</strong>Matte Finish<br />\r\n<strong>Tape Length :&nbsp;</strong>1296 in.<br />\r\n<strong>Tape Type :&nbsp;</strong>Household<br />\r\n<strong>Tape Width :&nbsp;</strong>3/4 in.<br />\r\n<strong>Trademark Name 1 :&nbsp;</strong>Scotch(R)<br />\r\n<strong>Trademark Name 2 :&nbsp;</strong>Magic(TM)<br />\r\n<strong>Value Pack :&nbsp;</strong>No<br />\r\n<strong>Width :&nbsp;</strong>3/4 Inch</p>', 17, 35, 30, 25, 8, '2019-01-13 07:09:16', '2019-01-17 16:43:49'),
(68, 'Transparent Scotch Tape  – 2″ X 72 Yds  – 1 Pcs', 'OG -TGA-TSCTP', '<p>Clear Paklon film tape with acrylic adhesive.&nbsp;<strong>Transparent Scotch&nbsp;Tape&nbsp;2&quot; </strong>&nbsp;is highly&nbsp;<strong>Transparent&nbsp;</strong>and long aging without yellowing. Excellent for various inner-pack applications. Removes cleanly from fabric without leaving residue. This&nbsp;Transparent Scotch Tape &nbsp;&ndash; 2&Prime; X 72 Yds&nbsp;has good dispensing properties.</p>', 80.000, NULL, 4, 0, 0, '<table border="0" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Sku</strong></td>\r\n			<td>OG -TGA-TSCTP</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Adhesion to Steel oz/in (N/100 mm)</strong></td>\r\n			<td>&nbsp;40 (44)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Adhesive Material</strong></td>\r\n			<td>Acrylic</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Adhesive Strength</strong></td>\r\n			<td>28 (490)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Backed</strong></td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Backing Material</strong></td>\r\n			<td>Paklon Film / UPVC Film</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Breaking Strength</strong></td>\r\n			<td>45 Percent</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Color</strong></td>\r\n			<td>Clear</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Elongation</strong></td>\r\n			<td>45 Percent</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Length</strong></td>\r\n			<td>72 Linear Yard</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Liner Color</strong></td>\r\n			<td>Kraft</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Material</strong></td>\r\n			<td>Paklon UPVC</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Product Form</strong></td>\r\n			<td>Roll</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Roll Length</strong></td>\r\n			<td>72 Linear Yards</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Roll Width</strong></td>\r\n			<td>2 Inch</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Size</strong></td>\r\n			<td>2 in x 72 yd</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tape Color</strong></td>\r\n			<td>Clear</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tape Construction</strong></td>\r\n			<td>Single Coat</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tape Type</strong></td>\r\n			<td>Packaging</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tensile Strength lb/in (N/100 mm)</strong></td>\r\n			<td>28 (490)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Thickness</strong></td>\r\n			<td>2.3 Milli-inch (mil)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Units Per Case</strong></td>\r\n			<td>24 Rolls</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Width</strong></td>\r\n			<td>2 Inch</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 30, 39, 8, '2019-01-13 07:44:16', '2019-01-20 03:36:04');
INSERT INTO `products` (`id`, `productName`, `sku`, `description`, `salePrice`, `regularPrice`, `view`, `type`, `availablity`, `specification`, `category_id`, `subcategory_id`, `minicategory_id`, `brand_id`, `industry_id`, `created_at`, `updated_at`) VALUES
(69, 'Bundle Of 3 Scotch Tape - (27 X 22 X 5.5 Cm)', 'OG -TGA-SCTP', '<p>This high-quality scotch packaging material will help to wrap your product. It will also ensure safety to your product from being damaged. This packaging material makes your product more attractive to the customers. This bundle of Scotch tape contains with (27 x 22 x 5.5 cm) size.</p>\r\n\r\n<p>Failure to comply with the packaging guidelines may result in damageof your products which will not be compensated by Oftica.com</p>', 52.000, NULL, 10, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:12.0pt; width:69.75pt">\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td style="height:12.0pt; width:140.6pt">\r\n			<p>&nbsp;OG -TGA-SCTP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:12.7pt; width:69.75pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:12.7pt; width:140.6pt">\r\n			<p>&nbsp;Others</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:12.0pt; width:69.75pt">\r\n			<p><strong>Color</strong></p>\r\n			</td>\r\n			<td style="height:12.0pt; width:140.6pt">\r\n			<p>&nbsp;White</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:24.75pt; width:69.75pt">\r\n			<p><strong>Type</strong></p>\r\n			</td>\r\n			<td style="height:24.75pt; width:140.6pt">\r\n			<p>Scotch Tape Both Side (Packaging Material)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:12.0pt; width:69.75pt">\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td style="height:12.0pt; width:140.6pt">\r\n			<p>Bundle of 5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:12.7pt; width:69.75pt">\r\n			<p><strong>Product Types</strong></p>\r\n			</td>\r\n			<td style="height:12.7pt; width:140.6pt">\r\n			<p>&nbsp;Non-Toxic</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:12.0pt; width:69.75pt">\r\n			<p><strong>Dimension</strong></p>\r\n			</td>\r\n			<td style="height:12.0pt; width:140.6pt">\r\n			<p>&nbsp;27 x 24 x 8 cm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 30, 39, 8, '2019-01-13 10:29:13', '2019-01-19 07:30:44'),
(70, 'Clear 72mm X 100m 2.5 Inch Scotch Sealing Tape – 1pcs', 'OG -TGA-CSCTP', '<p>Tartan 313 72mm x 100M Box Sealing Tape works well on a variety of boxes and materials, including recycled liner paper and fiberboard, weighing up to 70 lbs.</p>', 132.000, NULL, 3, 0, 0, '<table cellspacing="0" style="width:289pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:289pt"><strong>Sku</strong>:&nbsp;OG -TGA-CSCTP</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border-color:black; height:15.0pt; vertical-align:middle; white-space:normal; width:289pt"><strong>Series: </strong>3M 313</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border-color:black; height:15.0pt; vertical-align:middle; white-space:normal; width:289pt"><strong>Type: </strong>Acrylic Tape</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border-color:black; height:15.0pt; vertical-align:middle; white-space:normal; width:289pt"><strong>Material:</strong> BOPP Film, Acrylic Adhesive</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border-color:black; height:15.0pt; vertical-align:middle; white-space:normal; width:289pt"><strong>Color: </strong>Clear</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border-color:black; height:15.0pt; vertical-align:middle; white-space:normal; width:289pt"><strong>Width (metric): </strong>72 millimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border-color:black; height:15.0pt; vertical-align:middle; white-space:normal; width:289pt"><strong>Height (metric): </strong>100 meters</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border-color:black; height:15.0pt; vertical-align:middle; white-space:normal; width:289pt"><strong>Width: </strong>2.83inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border-color:black; height:15.0pt; vertical-align:middle; white-space:normal; width:289pt"><strong>Length: </strong>109.36 yards</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border-color:black; height:15.0pt; vertical-align:middle; white-space:normal; width:289pt"><strong>Thickness: </strong>2.5 mil</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border-color:black; height:15.0pt; vertical-align:middle; white-space:normal; width:289pt"><strong>Uses: </strong>Carton and Box Sealing</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border-color:black; height:15.0pt; vertical-align:middle; white-space:normal; width:289pt"><strong>Recyclable:</strong> Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="border-color:black; height:15.0pt; vertical-align:middle; white-space:normal; width:289pt">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 30, 39, 8, '2019-01-13 11:03:55', '2019-01-16 15:02:03'),
(71, 'Osaka Pvc Tape, Black (18 Mm)', 'OG -TGA-OPTP', '<p>China Osaka PVC Tape For Pakistan and Bangladesh Market &amp; China Osaka PVC Tape&nbsp;is the original matte finish, invisible tape. It is the preferred tape for offices, home offices and schools.&nbsp;</p>', 50.000, NULL, 8, 0, 0, '<p>Sku:&nbsp;OG -TGA-OPTP</p>\r\n\r\n<p>Material: PVC</p>\r\n\r\n<p>Use: Masking</p>\r\n\r\n<p>Adhesive Side: Single Sided</p>\r\n\r\n<p>Adhesive: Rubber</p>\r\n\r\n<p>Adhesive Type: Pressure Sensitive</p>\r\n\r\n<p>Feature: Heat-Resistant</p>\r\n\r\n<p>Design Printing: Offer Printing</p>\r\n\r\n<p>Place of Origin: Shanghai, China (Mainland)</p>\r\n\r\n<p>Brand Name: osaka</p>\r\n\r\n<p>Model Number: 001</p>\r\n\r\n<p>Name: China Osaka PVC Tape For Pakistan and Bangladesh Market</p>\r\n\r\n<p>Brand: Osaka</p>\r\n\r\n<p>Size: 8mil*18mm*10Yds</p>\r\n\r\n<p>Color: black.red.white.blue.yellow.green.customzied</p>\r\n\r\n<p>Width: 18mm</p>\r\n\r\n<p>Length: 7M,8M,9M</p>\r\n\r\n<p>Product form: Roll</p>\r\n\r\n<p>Temperature: -18&deg;~+105&deg;</p>\r\n\r\n<p>Application: Electrical Insulating Tape</p>', 17, 35, 30, 27, 8, '2019-01-13 11:19:33', '2019-01-20 03:35:10'),
(72, 'Synthetic Resin Adhesive - 50gm', 'OG -TGA-SRA-50', '<p>Backed by our adroit team of professionals, we are able to provide our clients with an assorted gamut of&nbsp;<strong>Fevicol Synthetic Resin Adhesive.</strong></p>', 30.000, NULL, 2, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>SKU</td>\r\n			<td>OG -TGA-SRA-50</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Fevicol</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Features</td>\r\n			<td>Impact Resistant, Moisture Resistant, Heat Resistant, Water Resistant</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Temp. Resistance</td>\r\n			<td>Upto 170 Degree Celsius</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Packaging Size</td>\r\n			<td>1000.0 grams</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material Type</td>\r\n			<td>Adhesives, Sealants</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 30, 39, 8, '2019-01-13 11:42:21', '2019-01-16 15:02:09'),
(73, 'Glue Stick', 'OG -TGA-GST', '<p>Repair holes in window screens Reattach the float for a tank after its mount corroded away Repair broken tail light covers on cars Reattach trim on cars Reattach the side view mirror on a car Reattach the heel of a shoe Repair the cracked housing of an electric appliance Make an impromptu Model for your kids school project Reattach plastic kitchen cabinet drawers to wooden face plates Repair of Toys, Furniture, TV, Radio, Or any Plastic of blow moulded body cracks, etc. Reattaching Book Binding / Covers without stitching. Repair umbrellas whose spines have separated from the material</p>', 45.000, NULL, 3, 0, 0, '<ul>\r\n	<li>For use with Hot Glue Guns.</li>\r\n	<li>11 inch Long.</li>\r\n	<li>37pc Pack</li>\r\n	<li>Quick drying and strong bonding.</li>\r\n	<li>Ideal for wood, plastics, ceramics and some metals.</li>\r\n	<li>For craft, hobbies and general repairs.</li>\r\n	<li>Apply in either low, high or dual temperature glue guns.</li>\r\n	<li>All purpose glue stick is capable of bonding many plastics, toys, ornaments, wood, metal, fabric etc.</li>\r\n</ul>', 17, 35, 30, 39, 8, '2019-01-13 11:52:12', '2019-01-20 03:35:44'),
(74, 'Rubber Bands 250 Grams', 'OG-CTRB-RBND', '<p>Premium Quality Rubber Bands made of Natural Rubber. Fluorescent and assorted colors. Long lasting and highly elastic.</p>', 94.000, NULL, 3, 1, 0, '<p>&nbsp;</p>\r\n\r\n<p>Sku:&nbsp;OG-CTRB-RBND</p>\r\n\r\n<p>Rubands Rubber Bands</p>\r\n\r\n<p>RuBands Premium - 250 grams</p>\r\n\r\n<p>Assorted Dimensions - Multi Color Rubber Bands</p>\r\n\r\n<p>&nbsp;RuBands Premium - 250 grams</p>\r\n\r\n<p>&nbsp;Assorted Dimensions - &nbsp;Rubber Band&nbsp;&nbsp;(Pack of 1)</p>', 17, 35, 31, 39, 8, '2019-01-15 04:35:47', '2019-01-18 02:10:09'),
(75, 'Abel Mini Gems Clip Plastic', 'OG-CTRB-GMC-PL', '<p>Abel Mini Gems Clip Plastic is Standard wire construction &amp; Zinc galvanized plating resists corrosion It is Jumbo size clip has 20 sheet capacity It has Smooth &amp;&nbsp;silver finish</p>', 72.000, NULL, 7, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>SKU</strong></td>\r\n			<td>OG-CTRB-GMC-PL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Abel</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Color</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Multy</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Type</strong></p>\r\n			</td>\r\n			<td>Clip</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Box</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 31, 39, 8, '2019-01-15 05:09:39', '2019-01-18 01:29:29'),
(76, 'Delli Gems Clips Plastic Box 100 Pcs', 'OG-CTRB-DGMC-PL', '<p>deli Gems Clips Steel with Standard wire construction and Zinc galvanized plating resists corrosion and Jumbo size clip, 20 sheet capacity.&nbsp;Smooth &amp;&nbsp;silver finish</p>', 109.000, NULL, 4, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>SKU</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>OG-CTRB-DGMC-PL</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Deli</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Color</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Silver</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Type</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Paper Clip</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Unit of Measure</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Piece</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 31, 21, 8, '2019-01-15 05:19:58', '2019-01-18 01:38:47'),
(77, 'Binder Clip Small- Pack Of 12', 'OG-CTRB-BIC', '<p>Ultra-efficient binder clips feature handles that can be hung, folded flat against clipped material, or removed for permanent binding. Efficient triangular design provides optimum strength and compression.</p>', 110.000, NULL, 6, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Sku</td>\r\n			<td>OG-CTRB-BIC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Global Product Type</td>\r\n			<td>Clips/Clamps-Binder Clips</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Clip/Clamp Type</td>\r\n			<td>Binder Clips</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color(s)</td>\r\n			<td>Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material(s)</td>\r\n			<td>Metal Clip; Steel Wire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Capacity (text)</td>\r\n			<td>3/8&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Small</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Width</td>\r\n			<td>3/4&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Clip Capacity</td>\r\n			<td>3/8&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pre-Consumer Recycled Content Percent</td>\r\n			<td>0%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Post-Consumer Recycled Content Percent</td>\r\n			<td>0%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Total Recycled Content Percent</td>\r\n			<td>0%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Features</td>\r\n			<td>Box</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 31, 39, 8, '2019-01-15 05:37:37', '2019-01-18 01:23:50'),
(78, '32mm Binder Clip- Pack Of 12', 'OG-CTRB-BIC-32MM', '<p>Ultra-efficient binder clips feature handles that can be hung, folded flat against clipped material, or removed for permanent binding. Efficient triangular design provides optimum strength and compression.</p>', 149.000, NULL, 6, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Sku</td>\r\n			<td>OG-CTRB-BIC-32MM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Global Product Type</td>\r\n			<td>Clips/Clamps-Binder Clips</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Clip/Clamp Type</td>\r\n			<td>Binder Clips</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color(s)</td>\r\n			<td>Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material(s)</td>\r\n			<td>Metal Clip; Steel Wire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Capacity (text)</td>\r\n			<td>3/8&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>32mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Width</td>\r\n			<td>3/4&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Clip Capacity</td>\r\n			<td>3/8&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pre-Consumer Recycled Content Percent</td>\r\n			<td>0%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Post-Consumer Recycled Content Percent</td>\r\n			<td>0%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Total Recycled Content Percent</td>\r\n			<td>0%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Features</td>\r\n			<td>Box</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 31, 39, 8, '2019-01-15 05:49:38', '2019-01-18 01:23:40'),
(79, 'Diamond Binder Clip, 19 Mm,Black, (Pack Of 12)', 'OG-CTRB-DIBC-19MM', '<p>Ultra-efficient binder clips feature handles that can be hung, folded flat against clipped material, or removed for permanent binding. Efficient triangular design provides optimum strength and compression.</p>', 28.000, NULL, 1, 1, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Sku</td>\r\n			<td>OG-CTRB-BIC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Global Product Type</td>\r\n			<td>Clips/Clamps-Binder Clips</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Clip/Clamp Type</td>\r\n			<td>Binder Clips</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color(s)</td>\r\n			<td>Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material(s)</td>\r\n			<td>Metal Clip; Steel Wire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Capacity (text)</td>\r\n			<td>3/8&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>\r\n			<p>19Mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Width</td>\r\n			<td>3/4&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Clip Capacity</td>\r\n			<td>3/8&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pre-Consumer Recycled Content Percent</td>\r\n			<td>0%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Post-Consumer Recycled Content Percent</td>\r\n			<td>0%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Total Recycled Content Percent</td>\r\n			<td>0%</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 31, 28, 8, '2019-01-15 06:56:26', '2019-01-18 12:42:44'),
(80, 'Diamond Binder Clip,25 Mm, Black, -Pack Of 12', 'OG-CTRB-DIBC-25MM', '<p>Ultra-efficient binder clips feature handles that can be hung, folded flat against clipped material, or removed for permanent binding. Efficient triangular design provides optimum strength and compression.</p>', 46.000, NULL, 1, 1, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Sku</td>\r\n			<td>OG-CTRB-DIBC-25MM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Global Product Type</td>\r\n			<td>Clips/Clamps-Binder Clips</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Clip/Clamp Type</td>\r\n			<td>Binder Clips</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color(s)</td>\r\n			<td>Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material(s)</td>\r\n			<td>Metal Clip; Steel Wire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Capacity (text)</td>\r\n			<td>3/8&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>25mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Width</td>\r\n			<td>3/4&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Clip Capacity</td>\r\n			<td>3/8&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pre-Consumer Recycled Content Percent</td>\r\n			<td>0%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Post-Consumer Recycled Content Percent</td>\r\n			<td>0%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Total Recycled Content Percent</td>\r\n			<td>0%</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Features</td>\r\n			<td>Box</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 31, 28, 8, '2019-01-15 07:00:19', '2019-01-20 11:09:36'),
(81, 'Square Paper Clip, 625, 25mm, Triangle Shape, (Pack Of 100)', 'OG-CTRB-SPC-25MM', '<p>Triangle Shape Paper Clip With&nbsp; staninless steel&nbsp;&nbsp;Material ,Standard styles with printing logo &amp;&nbsp;Best quality with lower price.<br />\r\n&nbsp;</p>', 24.000, NULL, 7, 0, 0, '<p><strong>Type:</strong>&nbsp; Paper Clip</p>\r\n\r\n<p><strong>Shaped Paper Clip:</strong>&nbsp; Yes</p>\r\n\r\n<p><strong>Material:</strong>&nbsp; Metal</p>\r\n\r\n<p><strong>Magnetic:</strong>&nbsp; No</p>\r\n\r\n<p><strong>Brand Name:</strong>&nbsp; Square Paper Clip, 625, 25mm, Triangle Shape,</p>\r\n\r\n<p><strong>Model Number:</strong>&nbsp; 25mm Triangular Paper Clips</p>\r\n\r\n<p><strong>Item Type:</strong>&nbsp; 25mm Triangular Paper Clips</p>\r\n\r\n<p><strong>Item Name:</strong>&nbsp; 25mm Metal Nickel Triangular Paper Clips</p>\r\n\r\n<p><strong>Size:</strong>&nbsp; 25mm (or as your request )&nbsp;(Pack Of 100)</p>\r\n\r\n<p><strong>Color:&nbsp;&nbsp;</strong>Raw material color or various coating colors</p>\r\n\r\n<p><strong>Usage:</strong>&nbsp; School &amp;Office Supplies, Promotion Gifts</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 17, 35, 31, 39, 8, '2019-01-15 08:31:35', '2019-01-18 02:10:45'),
(82, 'Rm Cable Clip, 4mm To 10mm - 100 pcs box', 'OG-CTRB-RMCC-4M-10MM', '<p>Circle cable clips allow you to secure runs of round cables like coax to walls and floorboards for a cleaner look and prevent tripping over loose cables. Easy installation. Just use a hammer to nail then to your mounting surface. Great for retrofitting cables to rooms where in-wall installations are not an option.</p>', 37.000, NULL, 6, 1, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>\r\n			<p>SKU</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<td>\r\n			<p>OG-CTRB-RMCC-4M-10MM</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>\r\n			<p>Product Dimensions</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<td>\r\n			<p>&nbsp; 3.9 x 2.7 x 1.6 inches</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>\r\n			<p>Item Weight</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<td>\r\n			<p>&nbsp;0.16 ounces</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>\r\n			<p>Color</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<td>\r\n			<p>&nbsp;White</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>\r\n			<p>Pack</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<td>\r\n			<p>100 pcs box</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 31, 29, 8, '2019-01-15 08:41:58', '2019-01-18 01:24:10'),
(83, 'Rm Cable Clip, 12mm To 22mm- 100 pcs box', 'OG-CTRB-RMCC-12M-22MM', '<p>Circle cable clips allow you to secure runs of round cables like coax to walls and floorboards for a cleaner look and prevent tripping over loose cables. Easy installation. Just use a hammer to nail then to your mounting surface. Great for retrofitting cables to rooms where in-wall installations are not an option....</p>', 95.000, NULL, 4, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>\r\n			<p>SKU</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<td>\r\n			<p>OG-CTRB-RMCC-12M-22MM</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>\r\n			<p>Product Dimensions</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<td>\r\n			<p>&nbsp;3.9 x 2.7 x 1.6 inches</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>\r\n			<p>Item Weight</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<td>\r\n			<p>&nbsp;0.16 ounces</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>\r\n			<p>Color</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<td>\r\n			<p>&nbsp;White</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>\r\n			<p>Pack</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</th>\r\n			<td>\r\n			<p>100 pcs box</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 31, 29, 8, '2019-01-15 08:48:56', '2019-01-18 01:39:24'),
(84, 'Shirt Clip, 3.5 Mm - Pack Of 100 pcs', 'OG-CTRB-SC-3.5MM', '<p>This CD003 shirt clip is made of raw PP material, high quality, very easy to use. It is designed for fix garment, especially for shirts. It can make the collar point straight and flat, and create an image of elegant appearance of the collar point. It can not only be used to neaten clothes, also to fasten bag opening. With the teeth, it can effectively avoid to slip.</p>', 121.000, NULL, 10, 1, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>SKU&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp; OG-CTRB-SC-3.5MM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Material</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp; PS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Size</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;3.5 inches</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Color</p>\r\n			</td>\r\n			<td>\r\n			<p>White, Clear or customized</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Packing</p>\r\n			</td>\r\n			<td>\r\n			<p>100pcs box</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 31, 39, 8, '2019-01-16 11:39:27', '2019-01-20 11:54:39'),
(85, 'Kangaroo Stapler Trendy-35', 'OG-STPA-KST-35', '<p>The Kangaro Stapler is a high quality, strip stapler perfect for use in the home, office, school or for the study. This stapler has a sturdy body making it a comfortable and reliable stapler.</p>', 165.000, NULL, 24, 0, 0, '<p>&nbsp;</p>\r\n\r\n<table border="0" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>SKU</p>\r\n			</td>\r\n			<td>\r\n			<p>OG-STPA-KST-35</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Brand</p>\r\n			</td>\r\n			<td>\r\n			<p>Kangaro</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Model Number</p>\r\n			</td>\r\n			<td>\r\n			<p>TRENDY-35</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Manufacturer Part Number&nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;TRENDY 35</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Color</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Black, Red, Green, Lemon, Blue</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Body</p>\r\n			</td>\r\n			<td>\r\n			<p>Half strip Plastic&nbsp;with quality steel components</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 32, 39, 8, '2019-01-19 04:40:55', '2019-01-22 14:18:44'),
(86, 'Kangaro Stapler Hd-45', 'OG-STPA-KST-Hd45', '<p>Kangaro Stapler Hd-45 is&nbsp;Metal body, half strip stapler with Plastics case. It has Quick loading mechanism,&nbsp;Built in staple remover &amp; reload indicator.</p>', 132.000, NULL, 5, 1, 1, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:nowrap; width:105pt">\r\n			<p>Sku</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">\r\n			<p>OG-STPA-KST-Hd45</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:nowrap">\r\n			<p>Loading capacity:&nbsp;</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>50 staples(24/6) &amp; 100 staples (26/6)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:nowrap">\r\n			<p>Stapling capacity:</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp;30 sheets</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Remark:</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp;all pictures are shot base on practicality&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Color</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;Black, Red, Green, Lemon, Blue</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:nowrap">\r\n			<p>Brand :</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp;Kangaro</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:nowrap">\r\n			<p>Type :</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp;Staplers</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 32, 32, 8, '2019-01-19 05:07:23', '2019-01-22 14:52:34'),
(87, 'Kangaroo Stapler Ds-45', 'OG-STPA-KST- Ds-45', '<p>Kangaro DS 45 Stapler.&nbsp;Metal body half strip stapler.&nbsp;Quick loading mechanism.&nbsp;Rubber base&nbsp;to avoid desk top from scratches.&nbsp;Rotating anvil &amp; reload indicator.</p>', 160.000, NULL, 9, 0, 0, '<table border="0" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sku</p>\r\n			</td>\r\n			<td>\r\n			<p>OG-STPA-KST- Ds-45&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Brand</p>\r\n			</td>\r\n			<td>\r\n			<p>Kangaro</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Model Number</p>\r\n			</td>\r\n			<td>\r\n			<p>DS-45</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Colour</p>\r\n			</td>\r\n			<td>Multi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Material</p>\r\n			</td>\r\n			<td>Steel and Plastic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Manufacturer Part Number&nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>DS-45</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 32, 32, 8, '2019-01-19 05:30:53', '2019-01-22 14:18:11'),
(88, 'Kangaroo Stapler Ds 23s13ql Heavy Duty', 'OG-STPA-KST-Ds 23s13qlHD', '<p>Heavy duty stapler to staple upto 100 sheets. Can use staple size upto 23/13</p>', 1650.000, NULL, 5, 0, 0, '<table border="0" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sku</p>\r\n			</td>\r\n			<td>OG-STPA-KST-Ds 23s13qlHD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Brand Name</p>\r\n			</td>\r\n			<td>Kangaro</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Model number</p>\r\n			</td>\r\n			<td>KADS23S13QL-99</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Color</p>\r\n			</td>\r\n			<td>Grey</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Manufacturer Part Number&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>KADS23S13QL-99</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Shipping Weight</p>\r\n			</td>\r\n			<td>871 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 17, 35, 32, 32, 8, '2019-01-19 07:44:59', '2019-01-22 14:54:12'),
(89, 'Kangaroo Stapler Hd 23l17 Heavy Duty', 'OG-STPA-KST-Hd 23l17 HD', '<p><br />\r\nKangaroo Stapler Hd 23l17 Heavy Duty is Long throat stapler.It hasAdjustable paper guide with lock<br />\r\nAnti skid feet to avoid desk top from scratches.</p>', 2850.000, NULL, 2, 0, 0, '<table border="0" cellpadding="2" cellspacing="1" style="width:95%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="vertical-align:top">Sku</td>\r\n			<td>OG-STPA-KST- Ds12s 17HD</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="vertical-align:top">Staple use&nbsp;:</td>\r\n			<td>23/6 ~ 23/17</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="vertical-align:top">Loading&nbsp;Capacity:</td>\r\n			<td>200 Staples</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="vertical-align:top">Stapling&nbsp;Capacity:</td>\r\n			<td>140 Sheets</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 32, 32, 8, '2019-01-19 08:10:04', '2019-01-23 02:32:23'),
(90, 'Kangaroo Stapler Ds12s 17 Heavy Duty', 'OG-STPA-KST- Ds12s 17HD', '<p>Kangaroo Stapler Ds12s 17 Heavy Duty is Aluminum die casted base with metal handle makes this machine all time favorite &amp; Anti skid feet to avoid desk top from scratches<br />\r\n&nbsp;</p>', 1550.000, NULL, 8, 0, 0, '<table border="0" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sku</p>\r\n			</td>\r\n			<td>OG-STPA-KST- Ds12s 17HD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Brand</p>\r\n			</td>\r\n			<td>Kangaro</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Model Number</p>\r\n			</td>\r\n			<td>Ds-12S/17</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Color</p>\r\n			</td>\r\n			<td>Golden</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Size</p>\r\n			</td>\r\n			<td>Medium</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Manufacturer Part Number&nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>kangaro DS-12S/17</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 32, 32, 8, '2019-01-19 08:27:44', '2019-01-22 14:18:49'),
(91, 'Kangaroo Stapler Hd-23s17 Heavy Duty', 'OG-STPA-KST-Hd23s17HD', '<p><strong>HD 23S17 Heavy Duty Stapler - Black/Silver</strong>&nbsp;&nbsp; &nbsp; All metal construction, adjustable paper guide that can be used for jam clearing. Rubber base to avoid desk top from scratches, rear loading rotating anvil for different staple sizes.</p>', 1750.000, NULL, 7, 0, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.75pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt"><strong>Sku</strong></td>\r\n			<td style="height:15.75pt; text-align:left; vertical-align:middle; white-space:normal; width:257pt">OG-STPA-KST-Hd23s17HD</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.75pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">\r\n			<p><strong>Weight (kg)</strong></p>\r\n			</td>\r\n			<td style="height:15.75pt; text-align:left; vertical-align:middle; white-space:normal; width:257pt">\r\n			<p>0.003</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">\r\n			<p><strong>Color</strong></p>\r\n			</td>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:257pt">\r\n			<p>Black/Silver</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Brand</p>\r\n			</td>\r\n			<td>Kangaro</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Size</p>\r\n			</td>\r\n			<td>Large</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 32, 32, 8, '2019-01-19 08:36:12', '2019-01-23 09:36:30'),
(92, 'Stapler Pin Big', 'OG-STPA-STP', '<p>Reckoned as leaders in the market, we are highly appreciated in rendering&nbsp;<strong>Stapler Pins.</strong></p>', 23.000, NULL, 3, 0, 0, '<table border="0" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>Sku</td>\r\n			<td>OG-STPA-STP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n			<td>&nbsp;Kangaro&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>&nbsp;Large</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>&nbsp;Silver</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 32, 32, 8, '2019-01-19 08:58:10', '2019-01-23 09:36:50'),
(93, 'Faber-Castell Plastic Ruler', 'OG-SRT-FCPR', '<p>Faber-Castell has High Transparency for ease of marking,Perfect Calibration for Accuracy &amp; Heavier in weight therefore it is steadier and long lasting.Good flexibility so less chances of breaking when used roughly &amp; Bold Marking that do not fade.</p>', 28.000, NULL, 2, 0, 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Sku</p>\r\n			</td>\r\n			<td>&nbsp;OG-SRT-FCPR&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Brand</p>\r\n			</td>\r\n			<td>Faber-Castell</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Product Type&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>Slim Scale</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Size</p>\r\n			</td>\r\n			<td>30cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Colour</p>\r\n			</td>\r\n			<td>Transparent</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 33, 13, 5, '2019-01-19 10:25:38', '2019-01-23 02:32:28'),
(94, 'Deli Scissors 6009, 8 Inch', 'OG-SRT-DSC-6009', '<p>The Deli office scissor 6009 is made of high-quality material. This Scissor contain 1 Pcs in a single box. For adults and children both can use this Scissor. Price are reasonable and High-quality product and Deli products are non-toxic and safe.</p>', 154.000, NULL, 2, 0, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">\r\n			<p>Sku</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">\r\n			<p>OG-SRT-DSC-6009</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">Product type:</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">\r\n			<p>&nbsp;Scissors.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">Brand Name:&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Deli.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">Color:&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Black.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">Size:</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp;180mm (7&quot;).</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">Quantity:</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp;1pc.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">Material:&nbsp;&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Stainless steel.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">Special Feature:&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Sharper and durable.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">Body Shape:&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Attractive body shape.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">Quality:</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp;Standard.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">Weight:</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp;0.02.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 33, 21, 8, '2019-01-19 10:43:32', '2019-01-23 02:33:25'),
(95, 'Sdi Anti Cutter, Big', 'OG-SRT-AC-L', '<p>Sdi Anti Cutter&nbsp;is Heavy Duty Cutter &amp; It has 2 Spare Blade.It looks very beautiful &amp; It has Auto locks for convenient one-hand operation &amp; Snap off dulled blade segment by applying force along the groove...</p>', 44.000, NULL, 4, 1, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt"><strong>Sku&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">OG-SRT-AC-L</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">\r\n			<p><strong>Product type:</strong></p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Anti Cutter</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">\r\n			<p><strong>Brand Name:&nbsp;</strong></p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>SDI</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt">\r\n			<p><strong>Color:&nbsp;</strong></p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Red, Blue</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt"><strong>Quantity:</strong></td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp;1pc.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt"><strong>Material:&nbsp;&nbsp;</strong></td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Stainless steel.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt"><strong>Special Feature:&nbsp;</strong></td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Sharper and durable.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt"><strong>Body Shape:&nbsp;</strong></td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Attractive body shape.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:left; vertical-align:middle; white-space:normal; width:105pt"><strong>Quality:</strong></td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp;Standard.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 33, 26, 8, '2019-01-20 10:43:02', '2019-01-23 01:59:24'),
(96, 'Deli Anti Cutter, Small', 'OG-SRT-DAC-S', '<p>Deli Anti Cutter has Auto locks for convenient one-hand operation &amp; Snap off dulled blade segment by applying force along the groove</p>', 44.000, NULL, 8, 0, 0, '<table>\r\n	<caption>&nbsp;</caption>\r\n	<tbody>\r\n		<tr>\r\n			<th scope="row">\r\n			<p>SKU</p>\r\n			</th>\r\n			<td>\r\n			<p>OG-SRT-DSC-6010</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope="row">\r\n			<p>Brand</p>\r\n			</th>\r\n			<td>\r\n			<p>Deli</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope="row">\r\n			<p>Color</p>\r\n			</th>\r\n			<td>\r\n			<p>Baltic</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope="row">\r\n			<p>Size</p>\r\n			</th>\r\n			<td>\r\n			<p>Small</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope="row">\r\n			<p>Delivery Options&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</th>\r\n			<td>\r\n			<p>Regular Item</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope="row">\r\n			<p>Unit of Measure</p>\r\n			</th>\r\n			<td>\r\n			<p>Piece</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 33, 21, 8, '2019-01-20 10:54:11', '2019-01-23 02:14:14'),
(97, 'Sdi Anti Cutter Blade, Big', 'OG-SRT-SDI ACB-L', '<p>SDI Anti Cutter Blade Big 18mm - 1pc.</p>', 10.000, NULL, 3, 0, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:105pt">Sku&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">&nbsp;&nbsp;OG-SRT-SDI ACB-L</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Brand Name</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;SDI&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Type&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Sliding Blade Knife</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Blade Material&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Stainless Steel</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Application</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Utility Knife</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 33, 26, 8, '2019-01-20 11:20:09', '2019-01-23 02:20:17'),
(98, 'High Lighter Pen- Pack of 10pcs', 'OWC-MKH-GLHP', '<p>A&nbsp;<strong>highlighter</strong>&nbsp;is a type of writing device used to draw attention to sections of text by marking them with a vivid, translucent colour. A typical&nbsp;<strong>highlighter</strong>&nbsp;is fluorescent black, coloured with pyranine.</p>', 440.000, NULL, 2, 1, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:105pt">Sku</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">OWC-MKH-GLHP</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Body Color</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Yellow</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Body Material</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Plastic</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Capped or Retractable</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Capped - Snap On</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Clippable</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">No</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Diameter - Grip</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">27.0 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Diameter - Max</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">27.0 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Grip Color</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Yellow</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Grip Material</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Plastic</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Ink Characteristics</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Fluorescent</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Ink Refillable</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Length - Capped</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">10.5 cm / 4.1 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Length - Posted</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">12.3 cm / 4.8 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Length - Uncapped</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">10.1 cm / 4.0 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Pre-Installed Ink Color</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Yellow</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Tip Material</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Felt</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Tip Type</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Chisel</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Weight - Barrel (with Ink)</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">0.55 oz / 16 grams</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Weight - Cap</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">0.11 oz / 3 grams</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Weight - Whole Pen (with Ink)</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">0.66 oz / 19 grams</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 24, 39, 8, '2019-01-21 06:44:47', '2019-01-21 07:06:41'),
(99, 'Hua Jie Correction Pen', 'OWC-CE-HCP', '<p>Offer precise corrections, Make correction on all kinds of paper including photo-copies and non-carbon duplicates</p>', 50.000, NULL, 1, 1, 0, '<table cellspacing="0" style="width:96pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:48pt">\r\n			<p>SKU</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:48pt">\r\n			<p>&nbsp; &nbsp;103981</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Brand</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp; &nbsp; &nbsp;No</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Product Code</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp; &nbsp; N/A</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:center; vertical-align:middle; white-space:normal; width:48pt">\r\n			<p><strong>Size&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp; &nbsp; No</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Color</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>&nbsp; &nbsp; No</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 25, 20, 8, '2019-01-21 07:05:51', '2019-01-21 07:06:11');
INSERT INTO `products` (`id`, `productName`, `sku`, `description`, `salePrice`, `regularPrice`, `view`, `type`, `availablity`, `specification`, `category_id`, `subcategory_id`, `minicategory_id`, `brand_id`, `industry_id`, `created_at`, `updated_at`) VALUES
(100, 'Deli Correction Pen', 'OWC-CE-DCP', '<p>Deli Correction Pen 7ml. Long lasting and quick drying. Use to correct any typing, laser copies, faxes or hand written mistakes. For use on ink, pen and pencils.</p>', 77.000, NULL, 2, 1, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:105pt">\r\n			<p>SKU</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">\r\n			<p>OWC-CE-DCP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Type</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Correction Pen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Size</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>12 ml</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Manufacturer</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Deli</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 25, 21, 5, '2019-01-21 07:17:41', '2019-01-21 07:22:51'),
(101, 'Faber Castell Dust Free Eraser', 'OWC-CE-FCDFE', '<p>Faber-Castell DUST-Free eraser series for lead and color pencils cause less dust and do not contain harmful phthalate plasticizer. Phthalates have been reported to cause several undesirable effects when exposed to the human body. To date, phthalates are still commonly used to produce erasers around the world. The balanced plastic mixture guarantees soft and smear-free erasing.</p>\r\n\r\n<ul>\r\n	<li>Plastic eraser for clean and soft erasing</li>\r\n	<li>Dust-free: less eraser waste as the residue rolls together</li>\r\n	<li>Color: white</li>\r\n</ul>', NULL, NULL, 3, 0, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:105pt">\r\n			<p>Sku</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">\r\n			<p>OWC-CE-FCDFE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Product Dimensions</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>1 x 2.5 x 0.6 inches</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Weight</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>1.44 ounces</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Brand</p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">\r\n			<p>Faber Castell&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 25, 13, 5, '2019-01-21 07:49:17', '2019-01-21 08:03:52'),
(102, 'Apsara Non Dust Eraser', 'OWC-CE-APSE', '<p>Apsara Non Dust Eraser dust-free erasers excel at removing graphite and the small amount of dust generated by these erasers rolls together in one piece for easy clean-up.&nbsp;These products are made from high quality components.&nbsp;</p>', NULL, NULL, 1, 1, 0, '<table border="0" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td>Sku</td>\r\n			<td>OWC-CE-APSE</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Apsara</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model Number</td>\r\n			<td>102300012</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>rubber</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Items&nbsp;&nbsp;</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size</td>\r\n			<td>Apsara non dust eraser</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 25, 14, 8, '2019-01-21 08:03:14', '2019-01-21 08:03:28'),
(103, 'Good Luck Clip Board, A4, Plastic, Assorted Color', 'OWC-WA-GLCP0A4', '<p>Good Luck Clip Board looks&nbsp;Attractive for It&#39;s Design &amp; Color. It has&nbsp;&nbsp;Affordable Price. Plastic&nbsp;Material use for&nbsp; Made it. Good Luck Clip Board is very Easy To Use</p>', NULL, NULL, 2, 0, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:105pt">SKU</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">OWC-WA-GLCP0A4</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Brand</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Good Luck</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Size</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">A4</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Type</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Clip Pad</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Unit of Measure</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Piece</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 29, 23, 5, '2019-01-21 08:21:26', '2019-01-21 12:32:22'),
(104, 'Double Clip Board, 8.5 x11.75 Inch', 'OWC-WA-DCL08.5*11.75', '<p>Good Luck Clip Board looks&nbsp;Attractive for It&#39;s Design &amp; Color. It has&nbsp;&nbsp;Affordable Price. Plastic&nbsp;Material use for&nbsp; Made it. Good Luck Clip Board is very Easy To Use</p>', NULL, NULL, 1, 0, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:105pt">Sku</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">OWC-WA-DCL08.5*11.75</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">model</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Double Clip Board</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Size&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">8.5x11.75 Inch&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Unit of Measure</td>\r\n			<td>Piece</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 29, 39, 5, '2019-01-21 08:56:27', '2019-01-21 12:32:38'),
(105, 'Deli Manual Pencil Sharpener', 'OWC-PSH-DPCSH', '<p>Accommodates standard-size round, triangular and hexagonal graphite pencils. Excellent for hard core colored leads when a sharp point is required. Not suitable for standard soft core colored pencils because more wood support at sharpened tip is needed to prevent breaking.</p>\r\n\r\n<p>Cutter assembly may be removed to take out broken leads.</p>\r\n\r\n<p><strong>WARNING!</strong>&nbsp;- This pencil sharpener is not a toy. It is a tool to sharpen woodcased pencils. It is unsuitable for children under age 5 because it has a sharp rotary cutter inside the housing. Oftentimes, very young children are as curious as older, more careful children about how things work. They may figure out how to open this sharpener thereby exposing themselves to injury.</p>', NULL, NULL, 3, 0, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:105pt">Sku</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">OWC-PSH-DPCSH</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Brand Name</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Deli</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Item Weight</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">8.8 ounces</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Package Dimensions</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">6.3 x 4.1 x 2.6 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Color</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">White, black</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 28, 21, 8, '2019-01-21 09:12:17', '2019-01-22 06:15:19'),
(106, 'Nataraj Sharpener', 'OWC-PSH-NATSH', '<p>&nbsp;Nataraj Sharpener is a mechanical gadget used for&nbsp;<em>sharpening pencils</em>.&nbsp;<em>Pencils</em>&nbsp;get dull while they are used and its core shortens, so a&nbsp;&nbsp;Nataraj Sharpener&nbsp;shaves the casing and the core of the wooden<em>pencil</em>&nbsp;until it shapes the point.</p>', NULL, NULL, 0, 0, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:105pt">\r\n			<p><strong>Sku</strong></p>\r\n			</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">\r\n			<p>OWC-PSH-NATSH</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:105pt">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Brand Name</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Nataraj</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Item Weight</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">2.88 ounces</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Product Dimensions</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">11 x 5.9 x 2 inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Item model number</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">203430010</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Manufacturer Part Number</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">NTJ_203430010</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 36, 28, 42, 5, '2019-01-21 09:31:48', '2019-01-21 09:31:48'),
(107, 'Artline Stamp Pad Ink Refill 55cc - 1pc', 'OG-STMPA-ARTIN-55CC', '<p>Artline Stamp Pad Ink Refill 55cc is Non-spill stamp pad ink bottle. It is Smooth re-inking with no mess.This Product Belongs To The Family Of Stamps &amp; Personal Id And Stamp Pads And Ink. Specifically, The Stamp Pads Range.</p>\r\n\r\n<p>This Product Has Been Flagged As RoHS Compliant.&amp; It is Xylene Free.</p>', 17.000, NULL, 0, 1, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:105pt">Sku</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">OG-STMPA-ARTIN-55CC</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:justify; vertical-align:middle; white-space:normal; width:105pt">Ink Color:&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Blue</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:justify; vertical-align:middle; white-space:normal; width:105pt">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:justify; vertical-align:middle; white-space:normal; width:105pt">Brand:&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Artline</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:justify; vertical-align:middle; white-space:normal; width:105pt">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:justify; vertical-align:middle; white-space:normal; width:105pt">Unit of Measure:</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Piece</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 34, 15, 8, '2019-01-22 09:31:20', '2019-01-22 09:31:20'),
(108, 'Stamp Pad Artline', 'OG-STMPA-ARTPD01', '<p>Artline Stamp Pad that won&#39;t dry out when left open for a prolonged period of time. No blur - No fade water based dye stuff ink is in finely textured cotton pad for long-lasting clear impressions. Full range of the highest quality stamp pads.</p>\r\n\r\n<p>It is Quality stamp pads with metal and plastic casing and a fabric ink mat.This Stamp pad surface will not dry out when left open for extended time &amp; Water based ink is instant drying and blur proof.</p>', NULL, NULL, 2, 1, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:105pt">Sku</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap; width:257pt">OG-STMPA-ARTPD01</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:justify; vertical-align:middle; white-space:normal; width:105pt">Ink Color:&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Blue</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:justify; vertical-align:middle; white-space:normal; width:105pt">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; text-align:justify; vertical-align:middle; white-space:normal; width:105pt">Brand:&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Artline</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">Pad size:</td>\r\n			<td style="height:15.0pt; vertical-align:bottom; white-space:nowrap">67 X 106mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 34, 15, 8, '2019-01-22 09:42:09', '2019-01-22 10:28:59'),
(109, 'Trodat Color Ink,  7011-28ml Bottle', 'OG-STMPA-TROIN-BLA01', '<p>Trodat Stamp Pad ink is a water based 28ml ink designed to reink your stamp pad. Available in a variety of colours.</p>', NULL, NULL, 6, 1, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap; width:105pt">Sku</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap; width:257pt">OG-STMPA-ARTPD01</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Ink Color:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Black, Blue, Red</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Brand:</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Trodrat</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Ink</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Water Based Ink</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 34, 43, 8, '2019-01-22 10:01:14', '2019-01-22 10:30:56'),
(110, 'Trodat Printy Customized Stamp, 4918', 'OG-STMPA-TROP-4918', '<p>Choose the Trodat Printy&nbsp;4918 to create wide stamps at 75 x 15mm (3 x 5/8 inch) it is best suited to 1 to 2 line of fairly large text or a wide logo, this stamp is often chosen for legal stamps, names, ABNs, or phone numbers.</p>', NULL, NULL, 1, 1, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap; width:105pt">Sku</td>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap; width:257pt">OG-STMPA-TROP-4918</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap">Ink Color:</td>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap">Black,</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap">Brand:</td>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap">Trodrat</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap">Size</td>\r\n			<td style="height:28.5pt; vertical-align:bottom; white-space:nowrap">75 x 15 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 34, 33, 8, '2019-01-22 10:27:36', '2019-01-22 10:31:05'),
(111, 'Shiny Stamp Ink, Copy, 28ml, Red', 'OG-STMPA-SHIN-RE01', '<p>This Shiny stamp pad ink 28ML is&nbsp;Color of red, Stamp pad ink shiny 28ml red for felt normal stamp pads.The non porous ink can be stamped on any smooth surface and it works on any self inking stamp aswell as stamp pads. The special ingredient requires good match with felt type material.</p>', NULL, NULL, 0, 0, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap; width:105pt">Sku</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap; width:257pt">OG-STMPA-SHIN-RE01</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Ink Color:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Red</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Brand:</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Shiny</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Ink</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Water Based Ink</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 34, 34, 8, '2019-01-22 11:06:19', '2019-01-22 11:06:19'),
(112, 'Trodat Printy Customized Stamp, 4917', 'OG-STMPA-TROP-4917', '<p>This is the very popular&nbsp;Trodat Printy Self Inking Rubber Stamp &amp;&nbsp;Manufactured from high impact plastic with a long lasting replaceable ink pad included.</p>\r\n\r\n<p>The Trodat Printy 4917 for its convenient&nbsp;50 x 10mm text plate, flat easy to carry housing make this stamp great for on the go, use to produce your own custom self-inking stamp for anything you find yourself writing repeatedly every day.</p>', NULL, NULL, 3, 0, 0, '<table cellspacing="0" style="width:362pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap; width:105pt">Sku</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap; width:257pt">OG-STMPA-TROP-4917</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Color &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Black</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Brand</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Trodrat</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">Size</td>\r\n			<td style="height:23.25pt; vertical-align:bottom; white-space:nowrap">&nbsp;50 x 10mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 34, 43, 8, '2019-01-22 11:16:51', '2019-01-23 06:44:49'),
(113, 'Bangladesh flag badge pin lapel pin- 100pcs', 'OG-BADGHO-0001', '<p>Bangladesh&nbsp;flag badge pin 100pcs a lot Brooch Icons. It looks Very beautifull &amp; Stylish badges Pin.The Body of&nbsp;Bangladesh&nbsp;flag badge pin is&nbsp;Iron Material &amp; It has Brass Plating .Backing Side Butterfly button. &amp; Size is 19*16mm.</p>', NULL, NULL, 6, 1, 0, '<table cellspacing="0" style="width:314pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:100pt">Sku&nbsp; &nbsp;</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:214pt">OG-BADGHO-0004</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Shape</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">KSPIN</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Size</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">19*16mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Main Material</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Metal</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Metal Type</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Iron</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Badge Type</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Pin On</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Decoration</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">None</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Technics</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Plating</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Shape</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Country Flag Lapel Pin Badge Brooch Icons</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Model Number</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Country Flag Lapel Pin Badge Brooch Icons</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Product Type</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Badges</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Name</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Country Flag Lapel Pin Badge Brooch Icons</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Material</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Iron</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Plating</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Broze</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Color</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Various</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Style</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Flag Badge</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Buttom</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Butterfly Buttom</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Package</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Opp Bag</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Size</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">About 19*16MM</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Original</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">China</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 35, 39, 8, '2019-01-23 05:31:31', '2019-01-23 05:55:48'),
(114, 'Bangladesh Flag Lapel Pin Badge/Tie Pin', 'OG-BADGHO-0004', '<p>Bangladesh Flag Lapel Pin Badge/Tie Pin&nbsp;Brooch Icons. It looks Very beautifull &amp; Stylish badges Pin.</p>', NULL, NULL, 3, 0, 0, '<table cellspacing="0" style="width:290pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:28.5pt; vertical-align:middle; white-space:nowrap; width:100pt">Sku</td>\r\n			<td style="height:28.5pt; vertical-align:middle; white-space:nowrap; width:190pt">&nbsp;OG-BADGHO-0004</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:21.75pt; vertical-align:middle; white-space:nowrap">Theme:</td>\r\n			<td style="height:21.75pt; vertical-align:middle; white-space:normal; width:190pt">National</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:21.75pt; vertical-align:middle; white-space:nowrap">Type:</td>\r\n			<td style="height:21.75pt; vertical-align:middle; white-space:normal; width:190pt">Badges/ Pins</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:21.75pt; vertical-align:middle; white-space:nowrap">Material:</td>\r\n			<td style="height:21.75pt; vertical-align:middle; white-space:normal; width:190pt">Nickle plate &amp; resin dome</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:21.75pt; vertical-align:middle; white-space:nowrap">Fastening:</td>\r\n			<td style="height:21.75pt; vertical-align:middle; white-space:normal; width:190pt">Butterfly Clasp</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:29.25pt; vertical-align:middle; white-space:nowrap">Size:</td>\r\n			<td style="height:29.25pt; vertical-align:middle; white-space:normal; width:190pt">23mm x 13mm (approx. 7/8 inch x 1/2 inch)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 35, 39, 8, '2019-01-23 05:40:05', '2019-01-23 06:03:52'),
(115, 'Bangladesh Flag Lapel Pin', 'OG-BADGHO-0006', '<p>Affix these customizable sterling silver plated lapel pins onto shirts, ties, hats, or bags for a versatile accessory for any occasion.</p>', NULL, NULL, 2, 0, 0, '<table cellspacing="0" style="width:314pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:100pt">Sku&nbsp; &nbsp;</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:214pt">OG-BADGHO-0006</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Dimensions:&nbsp;</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">0.875&quot; diameter, 0.5&quot; height</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Design:</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Sterling silver plated</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Protction:</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">UV resistant and waterproof</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Badge Type</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Pin On</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Main Material</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Metal</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 35, 39, 8, '2019-01-23 06:44:39', '2019-01-23 06:46:33'),
(116, 'NEONBLOND', 'OG-BADGHO-0011', '<p>Porcelein Pin Bangladesh Flag Lapel Badge &ndash; NEONBLOND</p>\r\n\r\n<p>These unique NEONBLOND Pins / Brooches are carefully handmade and printed. Made from parian porcelain and will make an unique and unforgettable gift. Porcelain is a traditional and memorable gift option to celebrate a wedding anniversary. Our pins can also make the perfect gift for a groom, groomsmen, father of the bride or groom and best men. They will also make perfect Father&#39;s Day gift, Mothers day gift, anniversary gift, Birthday gift or Christmas present. Handcrafted from white porcelain ceramic and fired at a very high temperature to ensure they are robust and made to last. Pins are made from parian porcelain clay and silver plated fixings. Dimensions: Width aprox 4cm, Length aprox 2.5cm</p>\r\n\r\n<ul>\r\n	<li>Porcelain buttons and badges are carefully handmade and printed</li>\r\n	<li>Suitable for any occasion from casual to formal affairs.</li>\r\n	<li>Made in Atlanta ,GA</li>\r\n</ul>', NULL, NULL, 2, 0, 0, '<table cellspacing="0" style="width:314pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:100pt">Sku&nbsp; &nbsp;</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap; width:214pt">OG-BADGHO-0011</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Dimensions:&nbsp;</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">&nbsp;Width aprox 4cm, Length aprox 2.5cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Design:</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Sterling silver plated</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Protction:</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">UV resistant and waterproof</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">\r\n			<p>Badge Type</p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Porcelain buttons and handmade printed</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Main Material</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">silver plated</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 35, 39, 8, '2019-01-23 06:53:39', '2019-01-23 06:54:12'),
(117, 'Personalized Office Name Plate With Wall or Desk Holder - 2x8 - CUSTOMIZE', 'OG-SIGNMP-0001', '<p>Beautiful laser engraved name plate with you choice of color and font. Includes holder of your choice, either desk or wall mount holder.</p>', NULL, NULL, 6, 0, 0, '<table cellspacing="0" style="width:332pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:118pt">Sku</td>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:214pt">OG-SIGNMP-0001</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:118pt">Brand Name</td>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:214pt">Others</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:118pt">Template Name</td>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:214pt">Customizable</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:118pt">EAN</td>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:214pt">7.11149E+11</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:118pt">Part Number</td>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:214pt">2x8 Satin Silver Sign Wall OR Desk</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">Item Weight</td>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:214pt">2.56 ounces</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">Shipping Weight</td>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:214pt">2.6 ounces</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 36, 39, 8, '2019-01-23 07:12:04', '2019-01-23 10:31:39'),
(118, 'WOODEN NAME PLATE', 'OG-SIGNMP-0002', '<p>Beautiful laser engraved name plate with you choice of color and font. Includes holder of your choice, either desk or wall mount holder.</p>', NULL, NULL, 7, 0, 0, '<table cellspacing="0" style="width:332pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:118pt">Sku</td>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:214pt">OG-SIGNMP-0002</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:118pt">Brand Name</td>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:214pt">Others</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:118pt">&nbsp;Template Name</td>\r\n			<td style="background-color:white; height:30.0pt; text-align:left; vertical-align:bottom; white-space:normal; width:214pt">Customizable</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 36, 39, 8, '2019-01-23 08:32:00', '2019-01-23 10:32:21'),
(119, 'Customizable Office Signs & Name Plates', 'OG-SIGNMP-0003', '<p>A clean look for any office, cubicle or interior wall. Custom office sign includes permanent custom lettering and brushed metal color choices for both the sign plate and the frame.&nbsp;Easy to hang, easy to wipe clean. Add any text you desire for your room name signs, conference room sign or exam room signage.</p>', NULL, NULL, 6, 1, 0, '<table cellspacing="0" style="width:332pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:118pt">Sku</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:214pt">OG-SIGNMP-0003</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Brand Name</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Others</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Template Name</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Customizable</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">EAN</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">7.11E+11</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Part Number</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">2x8 Satin Silver Sign Wall OR Desk</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Item Weight</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">2.56 ounces</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Shipping Weight</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">2.6 ounces</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 36, 39, 8, '2019-01-23 09:25:04', '2019-01-23 10:31:21'),
(120, 'Lobby and Reception Signs - Interchangeable Insert Curved Office Signs', 'OG-SIGNMP-0009', '<p>Create your own contemporary&nbsp;<strong>curved lobby signs</strong>&nbsp;or reception area and office sign. The 17&quot;W x 11.19&quot;H aluminum frame is available in an anodized satin silver or a black powder coated option with your choice of corresponding grey or black plastic end caps.</p>', NULL, NULL, 0, 0, 0, '<table cellspacing="0" style="width:332pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:118pt">Sku</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:214pt">OG-SIGNMP-0009</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Brand Name</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Others</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Template Name</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Customizable</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Size</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">&nbsp;17&quot;W x 11.19&quot;H</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Item Weight</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">2.56 ounces</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Shipping Weight</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">2.6 ounces</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 36, 39, 8, '2019-01-23 09:58:18', '2019-01-23 10:30:55'),
(121, 'Round Engraved Push Pull Door Signs', 'OG-SIGNMP-0015', '<p>Low profile, round, push pull door signs made for indoor or outdoor durability. Include them on doors to the entrance of your building as well as on interior doors for ease of use. This product comes as a set of two (one PUSH and one PULL) in standard Helvetica font.<br />\r\n<br />\r\nThese 1/16&quot; thick signs are available in multiple color combinations and standard sizes, featuring crisp, laser-engraved text&mdash;the perfect solution for medical facilities, corporate offices, restaurants, or any other high traffic areas.</p>', NULL, NULL, 5, 0, 0, '<table cellspacing="0" style="width:332pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:118pt">Sku</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap; width:214pt">OG-SIGNMP-0015</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Brand Name</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Others</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Item Weight</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">2.5 &nbsp;ounces</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Size</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">&nbsp;1/16&quot; thick</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">Shipping Weight</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap">2.6 ounces</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 36, 39, 8, '2019-01-23 10:26:56', '2019-01-23 10:31:56');
INSERT INTO `products` (`id`, `productName`, `sku`, `description`, `salePrice`, `regularPrice`, `view`, `type`, `availablity`, `specification`, `category_id`, `subcategory_id`, `minicategory_id`, `brand_id`, `industry_id`, `created_at`, `updated_at`) VALUES
(122, 'Anglers Main Street Art Portfolio', 'OG-ARTDS-0001', '<p>Scuff-proof and virtually indestructible, archival art portfolio is made of leather-grain vinyl laminated to heavyweight board. Interior is fully lined with polypropylene and includes two full-size, clear polypropylene pockets. Art caddy holds supplies such as markers and brushes (sold separately). Reinforced bottom corner edges feature multiple steel cleats to add more protection. Easily carry with padded handles on the top of the portfolio.</p>', NULL, NULL, 3, 0, 0, '<table cellspacing="0" style="width:332pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt"><strong>Sku</strong></td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">OG-ARTDS-0001</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Manufacturer</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Anglers Company, Ltd</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Manufacturer Part Number</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>AP-92-L3X-BK</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Anglers</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Product Name</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Main Street Art Portfolio</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Portfolio</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Pocket Location</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Internal</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Features</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Scuff Resistant</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Color</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Material</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Polypropylene</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Height</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>25&quot;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Width</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>38&quot;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Weight (Approximate)</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>9.06 lb</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Recycled</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>No</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Recycled Content</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>0%</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Environmentally Friendly</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Yes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Country of Origin</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>China</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 37, 50, 8, '2019-01-23 10:45:20', '2019-01-23 10:55:14'),
(123, 'Anglers Main Street Art Portfolio with Shlder Strap', 'OG-ARTDS-0002', '<p>Scuff-proof and virtually indestructible, archival art portfolio is made of leather-grain vinyl laminated to heavyweight board. Interior is fully lined with polypropylene and includes two full-size, clear polypropylene pockets on the inside. Art caddy holds supplies such as markers and brushes (sold separately). Reinforced bottom corner edges feature multiple steel cleats. Carry with the single handle on the side or the convenient, adjustable shoulder strap.</p>', NULL, NULL, 2, 0, 0, '<table cellspacing="0" style="width:332pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:bottom; white-space:nowrap; width:118pt"><strong>Sku</strong></td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap; width:214pt">&nbsp; OG-ARTDS-0002</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Manufacturer</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Anglers Company, Ltd</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Manufacturer Part Number</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>AP-92-L3X-BK</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Brand</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Anglers</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Product Name</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Main Street Art Portfolio</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Portfolio</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Pocket Location</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Internal</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Features</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Scuff Resistant</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Color</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Black</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Material</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Polypropylene</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Height</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>25&quot;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Width</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>38&quot;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Weight (Approximate)</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>9.06 lb</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Recycled</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>No</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Recycled Content</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>0%</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Environmentally Friendly</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Yes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Country of Origin</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>China</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 37, 50, 8, '2019-01-23 10:53:30', '2019-01-23 11:08:01'),
(124, 'Safco Portable Art and Drawing Portfolios - Tropic Sand - 5 / Carton', 'OG-ARTDS-0003', '<p>Don&#39;t worry about your work. You can keep it safe with the Art and Drawing Portfolio. Keep your work free of dents, wrinkles, folds, and tears. Don&trade;t lose your work. Two metal turnbuckle closures secure the top and bottom of the portfolio. Transport your portfolio easily with reinforced plastic handles. Units are also stackable, so you can create an archival storage system.</p>', NULL, NULL, 1, 0, 0, '<table cellspacing="0" style="width:332pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p>Sku</p>\r\n			</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap; width:214pt">\r\n			<p>OG-ARTDS-0003</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Color:</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;Tropic Sand</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Height:</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;30 3/4&quot;&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Width:&nbsp;</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">44 1/8&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Depth:</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;1 1/2&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Brand:</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Safco&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Manufacturer:</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Safco Products</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Packaged Quantity:</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">&nbsp;5 / Carton</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Accessibility:</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Top Load</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Features:&nbsp;</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap">Handle</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 37, 51, 8, '2019-01-23 11:07:59', '2019-01-23 11:08:25'),
(125, 'Helix Aluminum T-Square', 'OG-ARTDS-0022', '<p>36 Inches aluminum T Square is Really good for drafting things, especially for larger works. I have no problem working with them. Made drawing a lot of things really easy.</p>\r\n\r\n<p>Helix Aluminum T-Square - Aluminum T-Square features an aluminum head for better accuracy and durability. 24 (60 cm) ruler on either side offers Imperial (1/16&quot; beyond an inch) and metric (mm) graduations for easy measuring. Use T-Square for drawing or cutting. Hang hole at the opposite end from the head makes the T-Square easy to store and access.&quot;&nbsp;</p>\r\n\r\n<p><img alt="" src="https://www.google.com/search?biw=1242&amp;bih=597&amp;tbm=isch&amp;sa=1&amp;ei=8UhIXIiRC4_erQGO2K-gDQ&amp;q=Helix+Aluminum+T-Square&amp;oq=Helix+Aluminum+T-Square&amp;gs_l=img.12...1357147.1357717..1359229...0.0..1.213.213.2-1......2....1j2..gws-wiz-img.....0.j9kHugy-uuk#imgrc=zakSIKJmCqJ2TM:" /></p>\r\n\r\n<p>Professional Aluminum T-Square 24&quot; / 60cm</p>\r\n\r\n<p>Made of professional aircraft grade aluminum that will not rust or tarnish. Heavy-duty build quality will stay true after years of use. Perfect use with pens, pencils, and knives and features Inch and metric graduations.</p>', NULL, NULL, 0, 1, 0, '<table cellspacing="0" style="width:332pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap; width:118pt"><strong>Sku</strong></td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap; width:214pt">OG-ARTDS-0022</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Assembly Required</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>No</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Brand Name</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Helix</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Color</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Silver</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Country of Origin</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Taiwan</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Manufacturer Part Number</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>22402</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Material</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Aluminum Metal</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Post-consumer-waste%</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>0%</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Product Name</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Aluminum T-Square</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Product Type</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Geometrical T-square</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Recycled</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>No</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Recycled Content</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>0%</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">\r\n			<p><strong>Size</strong></p>\r\n			</td>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>24&quot; Length</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 37, 59, 8, '2019-01-23 11:34:51', '2019-01-23 11:34:51'),
(126, 'Helix Swing Arm Protractor', 'OG-ARTDS-0014', '<p>The swinging arm of this protractor rotates 180&deg;, making it easy to measure and draw accurate angles. You can measure from left to right or right to left. The protractor also includes a 6&quot; ruler along the bottom edge with inch and centimeter markings.</p>\r\n\r\n<p>Made of transparent, shatter-resistant plastic with beveled edges, the Helix Swing Arm Protractor comes in assorted colors</p>', NULL, NULL, 0, 0, 0, '<table cellspacing="0" style="width:332pt">\r\n	<tbody>\r\n		<tr>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap; width:118pt">Sku</td>\r\n			<td style="height:30.0pt; vertical-align:bottom; white-space:nowrap; width:214pt">OG-ARTDS-0014</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:41.25pt; vertical-align:bottom; white-space:nowrap">Brand</td>\r\n			<td style="height:41.25pt; vertical-align:bottom; white-space:nowrap">Helix</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:left; vertical-align:middle; white-space:normal; width:118pt">Features</td>\r\n			<td style="background-color:rgba(158, 160, 163, 0.1); height:30.0pt; text-align:inherit; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>Shatter Resistant</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:30.0pt; text-align:inherit; vertical-align:middle; white-space:normal; width:118pt">Assembled Product Dimensions (L x W x H)</td>\r\n			<td style="height:30.0pt; text-align:inherit; vertical-align:middle; white-space:normal; width:214pt">\r\n			<p>0.30 x 5.80 x 8.50 Inches</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 17, 35, 37, 55, 8, '2019-01-23 11:42:45', '2019-01-23 11:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `size_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(76, 6, NULL, NULL),
(77, 5, NULL, NULL),
(79, 9, NULL, NULL),
(80, 10, NULL, NULL),
(84, 5, NULL, NULL),
(83, 5, NULL, NULL),
(82, 5, NULL, NULL),
(81, 5, NULL, NULL),
(74, 6, NULL, NULL),
(75, 5, NULL, NULL),
(87, 7, NULL, NULL),
(86, 7, NULL, NULL),
(89, 7, NULL, NULL),
(91, 7, NULL, NULL),
(92, 7, NULL, NULL),
(93, 6, NULL, NULL),
(85, 6, NULL, NULL),
(85, 7, NULL, NULL),
(69, 5, NULL, NULL),
(94, 6, NULL, NULL),
(95, 7, NULL, NULL),
(96, 5, NULL, NULL),
(98, 6, NULL, NULL),
(99, 6, NULL, NULL),
(102, 6, NULL, NULL),
(103, 6, NULL, NULL),
(104, 6, NULL, NULL),
(106, 5, NULL, NULL),
(107, 6, NULL, NULL),
(108, 6, NULL, NULL),
(110, 7, NULL, NULL),
(109, 6, NULL, NULL),
(111, 6, NULL, NULL),
(112, 6, NULL, NULL),
(114, 6, NULL, NULL),
(113, 6, NULL, NULL),
(115, 6, NULL, NULL),
(116, 6, NULL, NULL),
(118, 5, NULL, NULL),
(118, 6, NULL, NULL),
(118, 7, NULL, NULL),
(121, 6, NULL, NULL),
(121, 7, NULL, NULL),
(120, 6, NULL, NULL),
(120, 7, NULL, NULL),
(119, 6, NULL, NULL),
(119, 7, NULL, NULL),
(117, 5, NULL, NULL),
(117, 6, NULL, NULL),
(117, 7, NULL, NULL),
(122, 6, NULL, NULL),
(122, 7, NULL, NULL),
(125, 6, NULL, NULL),
(125, 7, NULL, NULL),
(126, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rewardpoints`
--

CREATE TABLE `rewardpoints` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `reward_points` int(10) UNSIGNED NOT NULL,
  `reward_type` tinyint(1) NOT NULL,
  `operation_type` tinyint(1) NOT NULL,
  `valid_until` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salesmantargets`
--

CREATE TABLE `salesmantargets` (
  `id` int(10) UNSIGNED NOT NULL,
  `sales_target` int(10) UNSIGNED NOT NULL,
  `client_target` int(10) UNSIGNED NOT NULL,
  `month` int(10) UNSIGNED NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `salesman_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salesmen`
--

CREATE TABLE `salesmen` (
  `id` int(10) UNSIGNED NOT NULL,
  `salesmanName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salesmen`
--

INSERT INTO `salesmen` (`id`, `salesmanName`, `address`, `city`, `country`, `division`, `zipCode`, `phone`, `email`, `designation`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Razia akter sarna', 'Mohammadpur', 'Dhaka', 'Bangladesh', 'Dhaka', '1207', '01914524200', 'jge#1bdm5@gmail.com', 'Sales & Marketting', 'e80b5017098950fc58aad83c8c14978e', '2018-12-13 08:15:21', '2018-12-13 08:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `country`, `address`, `town`, `division`, `zipCode`, `phone`, `email`, `order_id`, `created_at`, `updated_at`) VALUES
(3, 'Bangladesh', 'Panthapath', 'Dhaka', 'Dhaka', '1207', '01737724443', 'jge.bdm3@gmail.com', 8, '2018-12-18 07:42:51', '2018-12-18 07:42:51'),
(4, 'Bangladesh', '89/2, Haque Chamber, West Panthapath, Dhaka', 'Dhaka', 'Dhaka', '1202', '451514', 'contact@jarashopping.com', 9, '2019-01-09 12:04:14', '2019-01-09 12:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `sippingaddrs`
--

CREATE TABLE `sippingaddrs` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sippingaddrs`
--

INSERT INTO `sippingaddrs` (`id`, `country`, `address`, `town`, `division`, `zipCode`, `phone`, `email`, `client_id`, `created_at`, `updated_at`) VALUES
(2, 'Bangladesh', 'Panthapath', 'Dhaka', 'Dhaka', '1207', '01737724443', 'jge.bdm3@gmail.com', 3, '2018-12-09 08:57:12', '2018-12-09 08:57:12'),
(3, 'Bangladesh', '89/2, Haque Chamber, West Panthapath, Dhaka', 'Dhaka', 'Dhaka', '1202', '451514', 'contact@jarashopping.com', 4, '2019-01-09 12:04:14', '2019-01-09 12:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `siteinfos`
--

CREATE TABLE `siteinfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleplus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siteinfos`
--

INSERT INTO `siteinfos` (`id`, `title`, `facebook`, `twitter`, `linkedin`, `googleplus`, `copyright`, `created_at`, `updated_at`) VALUES
(2, 'Offtica', 'https://www.facebook.com/offtica/', 'https://www.twitter.com/offtica/', 'https://www.linkedin.com/company/offtica/', 'https://plus.google.com/u/2/111690100067428877257', 'Offtica', '2018-12-24 04:45:03', '2018-12-24 04:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `created_at`, `updated_at`) VALUES
(5, 'Small', '2019-01-12 06:41:31', '2019-01-12 06:41:31'),
(6, 'Medium', '2019-01-12 06:41:55', '2019-01-12 06:42:54'),
(7, 'Large', '2019-01-12 06:42:02', '2019-01-12 06:42:02'),
(8, 'Extra Large', '2019-01-12 06:42:15', '2019-01-12 06:42:15'),
(9, '19 Mm', '2019-01-15 05:51:56', '2019-01-15 05:51:56'),
(10, '25 Mm', '2019-01-15 05:52:05', '2019-01-15 05:52:05'),
(11, '32 Mm', '2019-01-15 05:52:12', '2019-01-15 05:52:12'),
(12, '51 Mm', '2019-01-15 05:52:22', '2019-01-15 05:52:22'),
(13, '41 Mm', '2019-01-15 05:52:47', '2019-01-15 05:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `created_at`, `updated_at`) VALUES
(38, 'Untitled-11546665243.jpg', '2019-01-05 05:14:03', '2019-01-05 05:14:03'),
(40, 'Untitled-21546666736.jpg', '2019-01-05 05:38:56', '2019-01-05 05:38:56'),
(41, 'Untitled-31546666737.jpg', '2019-01-05 05:38:57', '2019-01-05 05:38:57'),
(47, 'Untitled-41546667368.jpg', '2019-01-05 05:49:28', '2019-01-05 05:49:28'),
(48, '11546667484.jpg', '2019-01-05 05:51:24', '2019-01-05 05:51:24'),
(54, 'bbbbbUntitled-11547359764.jpg', '2019-01-13 06:09:24', '2019-01-13 06:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `subCategoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subCategoryName`, `category_id`, `created_at`, `updated_at`) VALUES
(35, 'GENERAL SUPPLIES', 17, '2019-01-03 10:14:28', '2019-01-03 10:14:28'),
(36, 'WRITING & CORRECTION', 17, '2019-01-03 10:14:36', '2019-01-03 10:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'habiburh188@gmail.com', '2019-01-06 07:31:24', '2019-01-06 07:31:24'),
(2, 'jge.bdm3@gmail.com', '2019-01-10 10:09:11', '2019-01-10 10:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sadhin Rana', 'smsadhin123@gmail.com', '$2y$10$Xx7JqETbwIElfqi.WQGYOO06eWRyaZtjjxi9YvMAdHjazMlMaHE.i', 'hN7s068SwPMIumTSlwmaElpVVD8b9XmlPAJVayHCrUhOSPfjLILjFdIT5mxx', '2018-12-05 04:51:00', '2018-12-05 04:51:00'),
(2, 'Sanchita sarkar', 'jge.bdm3@gmail.com', '$2y$10$VzDwY62Sgb2B0zmApkqv2.cRKNm6SCMSsyM2Xon9h6LlwPx3/MVCC', 'DD4R0H7gsQQQ7qRypWtd5ufh0NATnscjYLxY2yCQBnJlnMUMuVKJvi2sV0Zb', '2018-12-05 04:51:46', '2018-12-05 04:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `client_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 74, '2019-01-17 06:18:58', '2019-01-17 06:18:58'),
(2, 3, 75, '2019-01-17 06:19:01', '2019-01-17 06:19:01'),
(3, 3, 73, '2019-01-17 06:19:08', '2019-01-17 06:19:08'),
(4, 7, 84, '2019-01-17 09:28:04', '2019-01-17 09:28:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billingaddrs`
--
ALTER TABLE `billingaddrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billingaddrs_client_id_foreign` (`client_id`);

--
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billings_order_id_foreign` (`order_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientpayments`
--
ALTER TABLE `clientpayments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientpayments_client_id_foreign` (`client_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_membership_type_id_foreign` (`membership_type_id`),
  ADD KEY `clients_salesman_id_foreign` (`salesman_id`);

--
-- Indexes for table `client_discount`
--
ALTER TABLE `client_discount`
  ADD KEY `client_discount_client_id_foreign` (`client_id`),
  ADD KEY `client_discount_discount_id_foreign` (`discount_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD KEY `color_product_product_id_foreign` (`product_id`),
  ADD KEY `color_product_color_id_foreign` (`color_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_product`
--
ALTER TABLE `deal_product`
  ADD KEY `deal_product_product_id_foreign` (`product_id`),
  ADD KEY `deal_product_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `incentives`
--
ALTER TABLE `incentives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_types`
--
ALTER TABLE `membership_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minicategories`
--
ALTER TABLE `minicategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `minicategories_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer_product`
--
ALTER TABLE `offer_product`
  ADD KEY `offer_product_product_id_foreign` (`product_id`),
  ADD KEY `offer_product_offer_id_foreign` (`offer_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderdetails_product_id_foreign` (`product_id`),
  ADD KEY `orderdetails_order_id_foreign` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`),
  ADD KEY `orders_discount_id_foreign` (`discount_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productreviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `products_minicategory_id_foreign` (`minicategory_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_industry_id_foreign` (`industry_id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD KEY `product_size_product_id_foreign` (`product_id`),
  ADD KEY `product_size_size_id_foreign` (`size_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `rewardpoints`
--
ALTER TABLE `rewardpoints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rewardpoints_client_id_foreign` (`client_id`);

--
-- Indexes for table `salesmantargets`
--
ALTER TABLE `salesmantargets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salesmantargets_salesman_id_foreign` (`salesman_id`);

--
-- Indexes for table `salesmen`
--
ALTER TABLE `salesmen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `sippingaddrs`
--
ALTER TABLE `sippingaddrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sippingaddrs_client_id_foreign` (`client_id`);

--
-- Indexes for table `siteinfos`
--
ALTER TABLE `siteinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_client_id_foreign` (`client_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `billingaddrs`
--
ALTER TABLE `billingaddrs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `clientpayments`
--
ALTER TABLE `clientpayments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `incentives`
--
ALTER TABLE `incentives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `membership_types`
--
ALTER TABLE `membership_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;
--
-- AUTO_INCREMENT for table `minicategories`
--
ALTER TABLE `minicategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `rewardpoints`
--
ALTER TABLE `rewardpoints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salesmantargets`
--
ALTER TABLE `salesmantargets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salesmen`
--
ALTER TABLE `salesmen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sippingaddrs`
--
ALTER TABLE `sippingaddrs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `siteinfos`
--
ALTER TABLE `siteinfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `billingaddrs`
--
ALTER TABLE `billingaddrs`
  ADD CONSTRAINT `billingaddrs_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `billings`
--
ALTER TABLE `billings`
  ADD CONSTRAINT `billings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clientpayments`
--
ALTER TABLE `clientpayments`
  ADD CONSTRAINT `clientpayments_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_membership_type_id_foreign` FOREIGN KEY (`membership_type_id`) REFERENCES `membership_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `clients_salesman_id_foreign` FOREIGN KEY (`salesman_id`) REFERENCES `salesmen` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_discount`
--
ALTER TABLE `client_discount`
  ADD CONSTRAINT `client_discount_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_discount_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `color_product`
--
ALTER TABLE `color_product`
  ADD CONSTRAINT `color_product_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `color_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `minicategories`
--
ALTER TABLE `minicategories`
  ADD CONSTRAINT `minicategories_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offer_product`
--
ALTER TABLE `offer_product`
  ADD CONSTRAINT `offer_product_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offer_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orderdetails_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD CONSTRAINT `productreviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_industry_id_foreign` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_minicategory_id_foreign` FOREIGN KEY (`minicategory_id`) REFERENCES `minicategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rewardpoints`
--
ALTER TABLE `rewardpoints`
  ADD CONSTRAINT `rewardpoints_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salesmantargets`
--
ALTER TABLE `salesmantargets`
  ADD CONSTRAINT `salesmantargets_salesman_id_foreign` FOREIGN KEY (`salesman_id`) REFERENCES `salesmen` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sippingaddrs`
--
ALTER TABLE `sippingaddrs`
  ADD CONSTRAINT `sippingaddrs_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
