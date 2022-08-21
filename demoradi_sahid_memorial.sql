-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2022 at 04:57 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoradi_sahid_memorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$163vkGFvNIHRMofvqOAzSupCREHiI2qBH6LuJS0zbgOXhwC1v2SCi', NULL, '2020-09-16 03:15:20', '2020-09-16 03:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `page_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `number`, `email`, `job_id`, `message`, `file`, `created_at`, `updated_at`) VALUES
(21, 'Electronics', '234234', 'manojdas.py@gmail.com', 'job12', NULL, '/contact_image/1658477601_laravel.pdf', '2022-07-22 18:58:21', '2022-07-22 18:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_nepali_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_ne` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_full_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ne` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` int(255) DEFAULT NULL,
  `linkedin` int(255) DEFAULT NULL,
  `other` int(255) DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` text COLLATE utf8mb4_unicode_ci,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `site_name`, `site_nepali_name`, `site_email`, `phone`, `phone_ne`, `website_full_address`, `address_ne`, `facebook`, `twitter`, `linkedin`, `other`, `page_title`, `page_keyword`, `page_description`, `favicon`, `site_logo`, `site_logo_nepali`, `site_status`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(1, 'Sahid Memorial  Hospital', NULL, 'info@sahidhospitalkalanki.com', '977-1-5224501', NULL, 'www.sahidhospitalkalanki.com', NULL, NULL, NULL, NULL, NULL, 'Sahid Memorial  Hospital', 'Sahid Memorial Hospital', 'Sahid Memorial  Hospital', '1658309500_download (6).jfif', '1659588696_logo.png', '1604479502_footer-logo.jpg', '1', '', '', '2020-09-16 03:15:20', '2022-08-04 15:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(100) NOT NULL,
  `company_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_time` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation_id` bigint(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_06_040112_create_admins_table', 1),
(4, '2020_08_06_040148_create_navigations_table', 1),
(5, '2020_08_06_040229_create_navigation_items_table', 1),
(6, '2020_08_06_040251_create_page_types', 1),
(7, '2020_08_06_040325_create_subscribers_table', 1),
(8, '2020_08_06_040351_create_global_settings_table', 1),
(9, '2020_08_06_040430_create_navigation_video_items_table', 1),
(10, '2020_08_06_040522_create_comments_table', 1),
(11, '2022_07_12_231308_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nav_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `short_content` text COLLATE utf8mb4_unicode_ci,
  `short_content_nepali` text COLLATE utf8mb4_unicode_ci,
  `long_content` text COLLATE utf8mb4_unicode_ci,
  `long_content_nepali` text COLLATE utf8mb4_unicode_ci,
  `parent_page_id` int(11) NOT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nav_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `nav_name`, `alias`, `caption`, `caption_nepali`, `nav_category`, `page_type`, `page_template`, `position`, `short_content`, `short_content_nepali`, `long_content`, `long_content_nepali`, `parent_page_id`, `icon_image`, `featured_image`, `icon_image_caption`, `banner_image`, `link`, `main_attachment`, `attachment`, `page_title`, `page_keyword`, `page_description`, `page_status`, `nav_status`, `extra_one`, `extra_two`, `extra_three`, `created_at`, `updated_at`) VALUES
(2256, 'ourservices', 'ourservices', 'Our Services', NULL, 'Home', 'Group', NULL, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ourservices', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:13:13', '2022-08-04 18:08:03'),
(2260, 'Services', 'services', 'Services', '.', 'Main', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Services', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:52:36', '2022-08-07 22:35:05'),
(2263, 'gallary', 'gallary', 'Gallary', NULL, 'Main', 'Group', NULL, 8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gallary', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:57:18', '2022-08-04 18:27:09'),
(2268, 'misson', 'misson', 'Our Mission', '.', 'Home', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'misson', NULL, '0', '0', NULL, NULL, NULL, '2022-07-20 17:34:55', '2022-08-04 17:00:58'),
(2269, 'Mission1', 'mission1', 'Our Mission', '.', 'Home', 'Normal', NULL, 1, '\"To support client organizations in strategically managing human capital to achieve business excellence.\"', NULL, NULL, NULL, 2268, NULL, NULL, NULL, '/uploads/banner_image/1658300228_mission01.png', NULL, NULL, NULL, NULL, 'Mission1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 17:35:56', '2022-07-20 17:42:08'),
(2270, 'missoin2', 'missoin2', 'Our Vision', '.', 'Home', 'Normal', NULL, 2, '\"We aim higher to make people successful.\"', NULL, '<h3>Our Vision</h3>\r\n\r\n<p>Our Vision is to lead in the creation and delivery of innovative workforce solutions and services that enable our clients to win in the changing world of work.</p>\r\n\r\n<h2>People</h2>\r\n\r\n<p>We care about people and the role of work in their lives. We respect people as individuals, trusting them, supporting them, enabling them to achieve their aims in work and in life.<br />\r\n<br />\r\nWe help people develop their careers through planning, work, coaching and training.<br />\r\n<br />\r\nWe recognize everyone’s contribution to our success - our staff, our clients and our candidates. We encourage and reward achievement.</p>\r\n\r\n<h2>Knowledge</h2>\r\n\r\n<p>We share our knowledge, our expertise and our resources, so that everyone understands what is important now and what’s happening next in the world of work - and knows how best to respond.</p>\r\n\r\n<p>We actively listen and act upon this information to improve our relationships, solutions and services.</p>\r\n\r\n<h2>Innovation</h2>\r\n\r\n<p>Based on our understanding of the world of work, we actively pursue the development and adoption of the best practices worldwide. We lead in the world of work. We dare to innovate, to pioneer and to evolve.</p>\r\n\r\n<p>We never accept the status quo. We constantly challenge the norm to find new and better ways of doing things.<br />\r\n<br />\r\nWe thrive on our entrepreneurial spirit and speed of response; taking risks, knowing that we will not always succeed, but never exposing our clients to risk.</p>', NULL, 2268, NULL, NULL, NULL, '/uploads/banner_image/1658300248_vision01.png', NULL, NULL, NULL, NULL, 'missoin2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 17:38:43', '2022-07-22 20:04:08'),
(2271, 'mission2', 'mission2', 'Core Values', NULL, 'Home', 'Normal', NULL, 3, '\"Committed towards integrity, respect, appreciation &amp; trust among each other and readiness for team work to establish professional relationship with clients and candidates.\"', NULL, NULL, NULL, 2268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mission2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 17:44:59', '2022-07-22 20:05:02'),
(2295, 'slider', 'slider', 'slider', NULL, 'Home', 'Group', NULL, 6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'slider', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:58:10', '2022-07-20 19:58:10'),
(2296, 'slider1', 'slider1', 'WE CARE ABOUT PEOPLE AND THE ROLE OF WORK IN THEIR LIFE', '.', 'Home', 'Normal', NULL, 1, 'abc', NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1659592733_performance-articipated-expressed-expressing-performed-chandimandir-gratitude_7b6a00ee-947d-11ea-84fe-62f09e00e282_1652335510938.jpg', NULL, NULL, NULL, NULL, 'slider1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:59:07', '2022-08-04 16:43:53'),
(2297, 'slider2', 'slider2', 'WE HELP PEOPLE THEIR CARRERS THROUGH PLANNING, WORK, COACHING & TRAINING.', '.', 'Home', 'Normal', NULL, 2, 'as', NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1659593011_10.jpg', NULL, NULL, NULL, NULL, 'slider2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 20:02:21', '2022-08-04 16:48:31'),
(2298, 'slider3', 'slider3', 'WE DARE TO INNOVATE, TO POINEER AND TO EVOLVE.', '.', 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1659592931_92.jpg', NULL, NULL, NULL, NULL, 'slider3', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 20:03:20', '2022-08-04 16:47:11'),
(2324, 'Services1', 'services1', '24 hours Emergency', NULL, 'Main', 'Service', NULL, 1, 'Well equipped 24/7 Emergency for anyone that needs immediate medical attention.', NULL, NULL, NULL, 2260, NULL, NULL, NULL, '/uploads/banner_image/1659866547_icon-1.png', NULL, NULL, NULL, NULL, 'Services1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 01:30:21', '2022-08-07 21:01:15'),
(2327, 'about', 'about', 'About Us', NULL, 'Main', 'Normal', NULL, 2, NULL, NULL, '<h2 id=\"introduction\">Introduction</h2>\r\n\r\n<p>Making a nation prosperous is possible only through its healthy citizens. The primary responsibilities of any state include the extension of affordable, reliable and modern technology based quality health service to the public. In the context of Nepal, the health service in the government level hasn’t be reasonable, qualitative, sufficient and effective due to the geographical diversity, uncontrolled population growth and the lack of proper management. On the other hand we shouldn’t forget the bitter fact that the health service provided by the private health institutions like hospital, nursing homes and polyclinics is very expensive and unreachable to the Nepali people suffering from price hikes and poverty. High child and mother death rates are its burning examples. Affordable, reliable and quality health service has become an essential demand of all the Nepalese, especially of the middle and low class people. With high evaluation of known and unknown martyrs who sacrificed their precious lives for the end of the feudal cultures and autocracy, practiced for ages and for democracy leading to republic and institutionalized sustainable peace, to shoe deep reverence for them and get inspired by them, “Martyr Memorial Public Health Cooperative Society Limited” has been founded in the campaign of cooperatives, with collections of small amounts of money from different individuals, aiming at extending affordable, reliable, modern technology-based quality health service to the Nepalese people, especially those who are poor and deprived, and under its investments and directions. “Martyr Memorial Hospital,” located near kalanki chowk, a capital in-out crossroads, Kathmandu Metropolis-14, has come into operation.</p>', NULL, 0, NULL, NULL, NULL, '/uploads/banner_image/1659865427_Untitled design (9).jpg', NULL, NULL, NULL, NULL, 'about', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 01:33:50', '2022-08-07 22:34:49'),
(2361, 'sahid-gallary', 'sahidgallary', 'Gallery', NULL, 'Main', 'Photo Gallery', NULL, 9, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1659867723_banner-1.png', NULL, NULL, NULL, NULL, 'sahid-gallary', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 19:50:17', '2022-08-17 19:13:18'),
(2366, 'Contact', 'contact', 'Contact', NULL, 'Main', 'Normal', NULL, 10, NULL, NULL, '<h2>Sahid Memorial Hospital</h2>\r\n\r\n<h2>Kalanki–14, Kathmandu, Nepal</h2>\r\n\r\n<h2>Telephone No. 977-01-5218921, 5219934, 5219935</h2>\r\n\r\n<h2>Post Box No. 11366</h2>\r\n\r\n<h2>Website:- www.sahidhospitalkalanki.com</h2>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Contact', NULL, '0', '0', NULL, NULL, NULL, '2022-08-04 17:48:17', '2022-08-07 20:45:43'),
(2368, 'statistic', 'statistic', 'Our Statistics', NULL, 'Home', 'Group', NULL, 9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'statistic', NULL, '1', '0', NULL, NULL, NULL, '2022-08-04 18:04:57', '2022-08-07 15:49:04'),
(2369, 'news', 'news', 'Latest News', NULL, 'Home', 'Group', NULL, 10, NULL, NULL, 'Latest News', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news', NULL, '1', '0', NULL, NULL, NULL, '2022-08-04 18:05:22', '2022-08-07 16:57:13'),
(2374, 'statistic1', 'statistic1', '5,379', NULL, 'Home', 'Normal', NULL, 2, 'Treated Patients', NULL, NULL, NULL, 2368, NULL, NULL, NULL, '/uploads/banner_image/1659851526_counter-1.png', NULL, NULL, NULL, NULL, 'statistic1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 15:57:02', '2022-08-07 16:41:22'),
(2375, 'service1', 'service1', '24 hr Emergency', NULL, 'Home', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849324_icon-1.png', NULL, NULL, NULL, NULL, 'service1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:00:24', '2022-08-07 16:00:44'),
(2376, 'servic2', 'servic2', 'Intense Care Unit', NULL, 'Home', 'Normal', NULL, 2, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849384_icon-2.png', NULL, NULL, NULL, NULL, 'servic2', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:01:24', '2022-08-07 16:01:24'),
(2377, 'service3', 'service3', 'Operation Theater', NULL, 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849422_icon-3.png', NULL, NULL, NULL, NULL, 'service3', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:02:02', '2022-08-07 16:08:07'),
(2378, 'service4', 'service4', 'Operation Theater', NULL, 'Home', 'Normal', NULL, 4, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849453_icon-4.png', NULL, NULL, NULL, NULL, 'service4', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:02:33', '2022-08-07 16:02:33'),
(2379, 'service5', 'service5', 'Medical Counselling', NULL, 'Home', 'Normal', NULL, 5, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849481_icon-5.png', NULL, NULL, NULL, NULL, 'service5', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:03:01', '2022-08-07 16:03:01'),
(2380, 'service6', 'service6', 'Mental Disease', NULL, 'Home', 'Normal', NULL, 6, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849743_icon-6.png', NULL, NULL, NULL, NULL, 'service6', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:03:51', '2022-08-07 16:07:23'),
(2381, 'service7', 'service7', 'Physiotherapy', NULL, 'Home', 'Normal', NULL, 7, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849562_icon-7.png', NULL, NULL, NULL, NULL, 'service7', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:04:22', '2022-08-07 16:04:22'),
(2382, 'service', 'service', '24 hr Radiology', NULL, 'Home', 'Normal', NULL, 8, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849592_icon-8.png', NULL, NULL, NULL, NULL, 'service', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:04:52', '2022-08-07 16:04:52'),
(2383, 'testimonial', 'testimonial', 'Testimonial', NULL, 'Home', 'Group', NULL, 11, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '/uploads/banner_image/1659849937_about.png', NULL, NULL, NULL, NULL, 'testimonial', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:10:37', '2022-08-07 16:11:14'),
(2384, 'Nancy Wise', 'nancy-wise', 'Web Developer', NULL, 'Home', 'Normal', NULL, 1, 'The Kindness and Consideration i received from every member of staff who treated me was exceptional. It helps very difficult time be more bearable', NULL, NULL, NULL, 2383, NULL, NULL, NULL, '/uploads/banner_image/1659853466_testimonial-1.jpg', NULL, NULL, NULL, NULL, 'Nancy Wise', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:11:50', '2022-08-07 17:29:01'),
(2385, 'about', 'about', 'About', NULL, 'Home', 'Group', NULL, 12, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'about', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:21:26', '2022-08-07 16:22:27'),
(2386, 'about1', 'about1', 'SAHID MEMORIAL HOSPITAL', NULL, 'Home', 'Normal', NULL, 1, 'Making a nation prosperous is possible only through its healthy citizens. The primary responsibilities of any state include the extension of affordable, reliable and modern technology based quality health service to the public. In the context of Nepal, the health service in the government level hasn’t be reasonable, qualitative, sufficient and effective due to the geographical diversity, uncontrolled population growth and the lack of proper management. On the other hand we shouldn’t forget the bitter fact that the health service provided by the private health institutions like hospital, nursing homes and polyclinics is very expensive and unreachable to the Nepali people suffering from price hikes and poverty.', NULL, NULL, NULL, 2385, NULL, NULL, NULL, '/uploads/banner_image/1659850687_about.png', NULL, NULL, NULL, NULL, 'about1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:23:07', '2022-08-07 16:23:07'),
(2387, 'specilist', 'specilist', 'Our Specilists', NULL, 'Home', 'Group', NULL, 13, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'specilist', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:30:19', '2022-08-07 16:35:09'),
(2388, 'specilist', 'specilist', 'Ram Babu Adhikari', NULL, 'Home', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 2387, NULL, NULL, NULL, '/uploads/banner_image/1659851443_team-1.png', NULL, NULL, NULL, NULL, 'specilist', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:31:05', '2022-08-07 16:49:57'),
(2389, 'statistic2', 'statistic2', '5,379', NULL, 'Home', 'Normal', NULL, 3, 'IPD', NULL, NULL, NULL, 2368, NULL, NULL, NULL, '/uploads/banner_image/1659851648_counter-2.png', NULL, NULL, NULL, NULL, 'statistic2', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:39:08', '2022-08-07 16:41:40'),
(2390, 'statistic3', 'statistic3', '5,379', NULL, 'Home', 'Normal', NULL, 4, 'OPD Consultation', NULL, NULL, NULL, 2368, NULL, NULL, NULL, '/uploads/banner_image/1659851696_counter-3.png', NULL, NULL, NULL, NULL, 'statistic3', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:39:56', '2022-08-07 16:42:17'),
(2391, 'statistic4', 'statistic4', '5,379', NULL, 'Home', 'Normal', NULL, 5, 'Total Surgeries', NULL, NULL, NULL, 2368, NULL, NULL, NULL, '/uploads/banner_image/1659851940_counter-4.png', NULL, NULL, NULL, NULL, 'statistic4', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:44:00', '2022-08-07 16:44:00'),
(2392, 'specilist2', 'specilist2', 'Rita Yadav', NULL, 'Home', 'Normal', NULL, 2, NULL, NULL, NULL, NULL, 2387, NULL, NULL, NULL, '/uploads/banner_image/1659852237_team-2.png', NULL, NULL, NULL, NULL, 'specilist2', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:48:57', '2022-08-07 16:49:45'),
(2393, 'specilist4', 'specilist4', 'Nabin Yadav', NULL, 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 2387, NULL, NULL, NULL, '/uploads/banner_image/1659852376_team-4.png', NULL, NULL, NULL, NULL, 'specilist4', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:51:16', '2022-08-07 16:51:16'),
(2394, 'specilist5', 'specilist5', 'Amita Adhikari', NULL, 'Home', 'Normal', NULL, 4, NULL, NULL, NULL, NULL, 2387, NULL, NULL, NULL, '/uploads/banner_image/1659852459_team-3.png', NULL, NULL, NULL, NULL, 'specilist5', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:52:39', '2022-08-07 16:52:39'),
(2395, 'specilist6', 'specilist6', 'Ram Babu Adhikari', NULL, 'Home', 'Normal', NULL, 5, NULL, NULL, NULL, NULL, 2387, NULL, NULL, NULL, '/uploads/banner_image/1659852514_team-1.png', NULL, NULL, NULL, NULL, 'specilist6', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:53:34', '2022-08-07 16:53:34'),
(2396, 'specilist7', 'specilist7', 'Ram Babu Adhikari ICU Expert', NULL, 'Home', 'Normal', NULL, 6, NULL, NULL, NULL, NULL, 2387, NULL, NULL, NULL, '/uploads/banner_image/1659852545_team-4.png', NULL, NULL, NULL, NULL, 'specilist7', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:54:05', '2022-08-07 16:54:05'),
(2397, 'specilist8', 'specilist8', 'Ram Babu Adhikari', NULL, 'Home', 'Normal', NULL, 7, NULL, NULL, NULL, NULL, 2387, NULL, NULL, NULL, '/uploads/banner_image/1659852626_team-3.png', NULL, NULL, NULL, NULL, 'specilist8', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:54:56', '2022-08-07 16:55:26'),
(2398, 'specilist9', 'specilist9', 'Ram Babu Adhikari', NULL, 'Home', 'Normal', NULL, 8, NULL, NULL, NULL, NULL, 2387, NULL, NULL, NULL, '/uploads/banner_image/1659852702_team-2.png', NULL, NULL, NULL, NULL, 'specilist9', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:56:18', '2022-08-07 16:56:42'),
(2399, 'news1', 'news1', 'Problems as we grow older.', NULL, 'Home', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 2369, NULL, NULL, NULL, '/uploads/banner_image/1659852868_news-1.png', NULL, NULL, NULL, NULL, 'news1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:59:28', '2022-08-07 16:59:28'),
(2400, 'news2', 'news2', 'Covid Vaccination', NULL, 'Home', 'Normal', NULL, 2, NULL, NULL, NULL, NULL, 2369, NULL, NULL, NULL, '/uploads/banner_image/1659852930_news-2.png', NULL, NULL, NULL, NULL, 'news2', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 17:00:30', '2022-08-07 17:00:30'),
(2401, 'news3', 'news3', 'World Health Day', NULL, 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 2369, NULL, NULL, NULL, '/uploads/banner_image/1659852980_news-3.png', NULL, NULL, NULL, NULL, 'news3', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 17:01:20', '2022-08-07 17:01:20'),
(2402, 'news4', 'news4', 'Health Issues of Nepal', NULL, 'Home', 'Normal', NULL, 4, NULL, NULL, NULL, NULL, 2369, NULL, NULL, NULL, '/uploads/banner_image/1659853025_news-4.png', NULL, NULL, NULL, NULL, 'news4', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 17:02:05', '2022-08-07 17:02:05'),
(2403, 'news5', 'news5', 'Mens Mental Health', NULL, 'Home', 'Normal', NULL, 5, NULL, NULL, NULL, NULL, 2369, NULL, NULL, NULL, '/uploads/banner_image/1659853073_news-5.png', NULL, NULL, NULL, NULL, 'news5', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 17:02:53', '2022-08-07 21:43:34'),
(2404, 'news6', 'news6', 'Women Health', NULL, 'Home', 'Normal', NULL, 6, NULL, NULL, NULL, NULL, 2369, NULL, NULL, NULL, '/uploads/banner_image/1659853126_news-6.png', NULL, NULL, NULL, NULL, 'news6', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 17:03:46', '2022-08-07 17:03:46'),
(2406, 'service2', 'service2', 'Intense Care Unit', NULL, 'Main', 'Service', NULL, 2, 'Some neurologists receive subspecialty training focusing on a particular area', NULL, NULL, NULL, 2260, NULL, NULL, NULL, '/uploads/banner_image/1659867112_icon-2.png', NULL, NULL, NULL, NULL, 'service2', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 20:56:52', '2022-08-07 21:01:07'),
(2407, 'slider4', 'slider4', 'Operation Theater', NULL, 'Main', 'Service', NULL, 3, 'Well equipped Operation Theater for critical medical cases.', NULL, NULL, NULL, 2260, NULL, NULL, NULL, '/uploads/banner_image/1659867395_icon-3.png', NULL, NULL, NULL, NULL, 'slider4', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 20:57:32', '2022-08-07 21:01:35'),
(2408, 'service11', 'service11', 'Operation Theater', NULL, 'Main', 'Service', NULL, 4, 'Well equipped Operation Theater for critical medical cases.', NULL, NULL, NULL, 2260, NULL, NULL, NULL, '/uploads/banner_image/1659867278_icon-4.png', NULL, NULL, NULL, NULL, 'service11', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 20:59:38', '2022-08-07 20:59:38'),
(2409, 'slider12', 'slider12', 'Medical Counselling', NULL, 'Main', 'Service', NULL, 5, 'Some neurologists receive subspecialty training focusing on a particular area', NULL, NULL, NULL, 2260, NULL, NULL, NULL, '/uploads/banner_image/1659868106_icon-5.png', NULL, NULL, NULL, NULL, 'slider12', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:13:07', '2022-08-07 21:13:26'),
(2410, 'service13', 'service13', 'Mental Disease', NULL, 'Main', 'Service', NULL, 6, 'Some neurologists receive subspecialty training focusing on a particular area', NULL, NULL, NULL, 2260, NULL, NULL, NULL, '/uploads/banner_image/1659868158_icon-6.png', NULL, NULL, NULL, NULL, 'service13', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:14:18', '2022-08-07 21:14:18'),
(2411, 'service14', 'service14', 'Physiotherapy', NULL, 'Main', 'Service', NULL, 7, 'Highly trained and experienced medical staffs for your physical well-being.', NULL, NULL, NULL, 2260, NULL, NULL, NULL, '/uploads/banner_image/1659868206_icon-7.png', NULL, NULL, NULL, NULL, 'service14', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:15:06', '2022-08-07 21:15:06'),
(2412, 'service15', 'service15', '24hr Radiology', NULL, 'Main', 'Service', NULL, 8, 'Some neurologists receive subspecialty training focusing on a particular area', NULL, NULL, NULL, 2260, NULL, NULL, NULL, '/uploads/banner_image/1659868267_icon-8.png', NULL, NULL, NULL, NULL, 'service15', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:16:07', '2022-08-07 21:16:07'),
(2413, 'department', 'department', 'Department', NULL, 'Main', 'Group', NULL, 4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'department', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:18:15', '2022-08-07 22:35:29'),
(2414, 'depart1', 'depaert1', 'Neurology Department', NULL, 'Main', 'Service', NULL, 6, 'The Neurology department specialises in the diagnosis and treatment of disorders of the nervous system – including the brain, spinal cord, peripheral nerves and muscles.', NULL, '<p>Department of Neurology has aim of providing the best medical care in the evaluation and management of patients with various neurological disorders. It also aims to uplift the academic excellence in the field of Neurology.<br />\r\n<img alt=\"banner\" src=\"http://127.0.0.1:8000/images/2.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>Computed tomography (CT) or (CAT) scans</li>\r\n	<li>Seizure disorders, such as epilepsy</li>\r\n	<li>Magnetic resonance imaging (MRI)</li>\r\n	<li>Speech and language disorders</li>\r\n	<li>Electroencephalography (EEG)</li>\r\n	<li>Spinal cord disorders</li>\r\n	<li>Nerve conduction studies</li>\r\n</ul>\r\n\r\n<p>Department of Neurology has aim of providing the best medical care in the evaluation and management of patients with various neurological disorders. It also aims to uplift the academic excellence in the field of Neurology.</p>\r\n\r\n<aside>&nbsp;</aside>', NULL, 2413, NULL, NULL, NULL, '/uploads/banner_image/1659868540_icon-8.png', NULL, NULL, NULL, NULL, 'depaert1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:20:40', '2022-08-09 17:24:47'),
(2415, 'depart11', 'depart11', 'Cardiology Department', NULL, 'Main', 'Service', NULL, 5, 'The Neurology department specialises in the diagnosis and treatment of disorders of the nervous system – including the brain, spinal cord, peripheral nerves and muscles.', NULL, '<p>Department of Neurology has aim of providing the best medical care in the evaluation and management of patients with various neurological disorders. It also aims to uplift the academic excellence in the field of Neurology.<br />\r\n<img alt=\"banner\" src=\"http://127.0.0.1:8000/images/2.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>Computed tomography (CT) or (CAT) scans</li>\r\n	<li>Seizure disorders, such as epilepsy</li>\r\n	<li>Magnetic resonance imaging (MRI)</li>\r\n	<li>Speech and language disorders</li>\r\n	<li>Electroencephalography (EEG)</li>\r\n	<li>Spinal cord disorders</li>\r\n	<li>Nerve conduction studies</li>\r\n</ul>\r\n\r\n<p>Department of Neurology has aim of providing the best medical care in the evaluation and management of patients with various neurological disorders. It also aims to uplift the academic excellence in the field of Neurology.</p>\r\n\r\n<aside>&nbsp;</aside>', NULL, 2413, NULL, NULL, NULL, '/uploads/banner_image/1659869006_icon-8.png', NULL, NULL, NULL, NULL, 'depart11', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:28:26', '2022-08-09 17:25:01'),
(2416, 'depart111', 'depart111', 'Pathology Department', NULL, 'Main', 'Service', NULL, 4, 'The Neurology department specialises in the diagnosis and treatment of disorders of the nervous system – including the brain, spinal cord, peripheral nerves and muscles.', NULL, '<p>Department of Neurology has aim of providing the best medical care in the evaluation and management of patients with various neurological disorders. It also aims to uplift the academic excellence in the field of Neurology.<br />\r\n<img alt=\"banner\" src=\"http://127.0.0.1:8000/images/2.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>Computed tomography (CT) or (CAT) scans</li>\r\n	<li>Seizure disorders, such as epilepsy</li>\r\n	<li>Magnetic resonance imaging (MRI)</li>\r\n	<li>Speech and language disorders</li>\r\n	<li>Electroencephalography (EEG)</li>\r\n	<li>Spinal cord disorders</li>\r\n	<li>Nerve conduction studies</li>\r\n</ul>\r\n\r\n<p>Department of Neurology has aim of providing the best medical care in the evaluation and management of patients with various neurological disorders. It also aims to uplift the academic excellence in the field of Neurology.</p>\r\n\r\n<aside>&nbsp;</aside>\r\n\r\n<aside>&nbsp;</aside>', NULL, 2413, NULL, NULL, NULL, '/uploads/banner_image/1659869035_icon-8.png', NULL, NULL, NULL, NULL, 'depart111', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:28:55', '2022-08-09 17:25:13'),
(2417, 'depart1111', 'depart1111', 'Laboratory Department', NULL, 'Main', 'Service', NULL, 3, 'The Neurology department specialises in the diagnosis and treatment of disorders of the nervous system – including the brain, spinal cord, peripheral nerves and muscles.', NULL, '<p>Department of Neurology has aim of providing the best medical care in the evaluation and management of patients with various neurological disorders. It also aims to uplift the academic excellence in the field of Neurology.<br />\r\n<img alt=\"banner\" src=\"http://127.0.0.1:8000/images/2.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>Computed tomography (CT) or (CAT) scans</li>\r\n	<li>Seizure disorders, such as epilepsy</li>\r\n	<li>Magnetic resonance imaging (MRI)</li>\r\n	<li>Speech and language disorders</li>\r\n	<li>Electroencephalography (EEG)</li>\r\n	<li>Spinal cord disorders</li>\r\n	<li>Nerve conduction studies</li>\r\n</ul>\r\n\r\n<p>Department of Neurology has aim of providing the best medical care in the evaluation and management of patients with various neurological disorders. It also aims to uplift the academic excellence in the field of Neurology.</p>\r\n\r\n<aside>&nbsp;</aside>\r\n\r\n<aside>&nbsp;</aside>', NULL, 2413, NULL, NULL, NULL, '/uploads/banner_image/1659869062_icon-8.png', NULL, NULL, NULL, NULL, 'depart1111', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:29:22', '2022-08-09 17:25:22'),
(2418, 'depart11111', 'depart11111', 'Pediatric Department', NULL, 'Main', 'Service', NULL, 2, 'The Neurology department specialises in the diagnosis and treatment of disorders of the nervous system – including the brain, spinal cord, peripheral nerves and muscles.', NULL, '<p>Department of Neurology has aim of providing the best medical care in the evaluation and management of patients with various neurological disorders. It also aims to uplift the academic excellence in the field of Neurology.<br />\r\n<img alt=\"banner\" src=\"http://127.0.0.1:8000/images/2.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>Computed tomography (CT) or (CAT) scans</li>\r\n	<li>Seizure disorders, such as epilepsy</li>\r\n	<li>Magnetic resonance imaging (MRI)</li>\r\n	<li>Speech and language disorders</li>\r\n	<li>Electroencephalography (EEG)</li>\r\n	<li>Spinal cord disorders</li>\r\n	<li>Nerve conduction studies</li>\r\n</ul>\r\n\r\n<p>Department of Neurology has aim of providing the best medical care in the evaluation and management of patients with various neurological disorders. It also aims to uplift the academic excellence in the field of Neurology.</p>\r\n\r\n<aside>&nbsp;</aside>\r\n\r\n<aside>&nbsp;</aside>', NULL, 2413, NULL, NULL, NULL, '/uploads/banner_image/1659869086_icon-8.png', NULL, NULL, NULL, NULL, 'depart11111', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:29:46', '2022-08-09 17:25:32'),
(2419, 'depart111111', 'depart111111', 'Cardiac Department', NULL, 'Main', 'Service', NULL, 1, 'The Neurology department specialises in the diagnosis and treatment of disorders of the nervous system – including the brain, spinal cord, peripheral nerves and muscles.', NULL, '<p>Department of Neurology has aim of providing the best medical care in the evaluation and management of patients with various neurological disorders. It also aims to uplift the academic excellence in the field of Neurology.<br />\r\n<img alt=\"banner\" src=\"http://127.0.0.1:8000/images/2.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>Computed tomography (CT) or (CAT) scans</li>\r\n	<li>Seizure disorders, such as epilepsy</li>\r\n	<li>Magnetic resonance imaging (MRI)</li>\r\n	<li>Speech and language disorders</li>\r\n	<li>Electroencephalography (EEG)</li>\r\n	<li>Spinal cord disorders</li>\r\n	<li>Nerve conduction studies</li>\r\n</ul>\r\n\r\n<p>Department of Neurology has aim of providing the best medical care in the evaluation and management of patients with various neurological disorders. It also aims to uplift the academic excellence in the field of Neurology.</p>\r\n\r\n<aside>&nbsp;</aside>\r\n\r\n<aside>&nbsp;</aside>', NULL, 2413, NULL, NULL, NULL, '/uploads/banner_image/1659869123_icon-8.png', NULL, NULL, NULL, NULL, 'depart111111', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:30:23', '2022-08-09 17:25:43'),
(2420, 'News & Event', 'news-event', 'News & Events', NULL, 'Main', 'Group', NULL, 7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'News & Event', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:35:00', '2022-08-07 22:36:04'),
(2421, 'news1', 'news1', 'Problems as we grow older.', NULL, 'Main', 'News & Events', NULL, 1, NULL, NULL, NULL, NULL, 2420, NULL, NULL, NULL, '/uploads/banner_image/1659869538_news-1.png', NULL, NULL, NULL, NULL, 'news1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:37:18', '2022-08-07 21:38:12'),
(2422, 'news22', 'news22', 'Covid  Vaccination', NULL, 'Main', 'News & Events', NULL, 2, NULL, NULL, NULL, NULL, 2420, NULL, NULL, NULL, '/uploads/banner_image/1659869702_news-2.png', NULL, NULL, NULL, NULL, 'news22', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:39:37', '2022-08-07 21:40:02'),
(2423, 'news112', 'news112', 'World Health Day', NULL, 'Main', 'News & Events', NULL, 3, NULL, NULL, NULL, NULL, 2420, NULL, NULL, NULL, '/uploads/banner_image/1659869766_news-3.png', NULL, NULL, NULL, NULL, 'news112', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:41:06', '2022-08-07 21:41:06'),
(2424, 'news1123', 'news1123', 'Health Issues of Nepal', NULL, 'Main', 'News & Events', NULL, 4, NULL, NULL, NULL, NULL, 2420, NULL, NULL, NULL, '/uploads/banner_image/1659869799_news-4.png', NULL, NULL, NULL, NULL, 'news1123', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:41:39', '2022-08-07 21:41:39'),
(2425, 'news11234', 'news11234', 'Mens Mental Health', NULL, 'Main', 'News & Events', NULL, 5, NULL, NULL, NULL, NULL, 2420, NULL, NULL, NULL, '/uploads/banner_image/1659869849_news-5.png', NULL, NULL, NULL, NULL, 'news11234', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:42:29', '2022-08-07 21:42:29'),
(2426, 'news112345', 'news112345', 'Women Health', NULL, 'Main', 'News & Events', NULL, 6, NULL, NULL, NULL, NULL, 2420, NULL, NULL, NULL, '/uploads/banner_image/1659869898_news-6.png', NULL, NULL, NULL, NULL, 'news112345', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:43:18', '2022-08-07 21:43:18'),
(2427, 'doctor', 'doctor', 'Doctors', NULL, 'Main', 'Group', NULL, 6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'doctor', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:44:34', '2022-08-07 22:35:46'),
(2429, 'mdnews1', 'mdnews1', 'mdnews1', NULL, 'Main', 'News & Events', NULL, 1, NULL, NULL, NULL, NULL, 2428, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mdnews1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:52:17', '2022-08-07 21:52:17'),
(2433, 'aa', 'aa', 'Ram Babu Adhikari', NULL, 'Main', 'News & Events', NULL, 1, NULL, NULL, NULL, NULL, 2427, NULL, NULL, NULL, '/uploads/banner_image/1659871522_team-2.png', NULL, NULL, NULL, NULL, 'aa', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 22:10:22', '2022-08-07 22:10:22'),
(2434, 'bb', 'bb', 'Ram Babu Adhikari', NULL, 'Main', 'News & Events', NULL, 2, NULL, NULL, NULL, NULL, 2427, NULL, NULL, NULL, '/uploads/banner_image/1659871553_team-4.png', NULL, NULL, NULL, NULL, 'bb', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 22:10:53', '2022-08-07 22:10:53'),
(2435, 'cc', 'cc', 'Ram Babu Adhikari', NULL, 'Main', 'News & Events', NULL, 3, NULL, NULL, NULL, NULL, 2427, NULL, NULL, NULL, '/uploads/banner_image/1659871576_team-1.png', NULL, NULL, NULL, NULL, 'cc', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 22:11:16', '2022-08-07 22:11:16'),
(2436, 'dd', 'dd', 'Ram Babu Adhikari', NULL, 'Main', 'News & Events', NULL, 4, NULL, NULL, NULL, NULL, 2427, NULL, NULL, NULL, '/uploads/banner_image/1659871610_team-3.png', NULL, NULL, NULL, NULL, 'dd', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 22:11:50', '2022-08-07 22:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_items`
--

CREATE TABLE `navigation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `navigation_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation_items`
--

INSERT INTO `navigation_items` (`id`, `sort`, `navigation_id`, `name`, `name_nepali`, `file`, `content`, `content_nepali`, `link`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(19, 1, 2322, NULL, NULL, '1658466642_thumb_fodefeen1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:55:42', '2022-07-22 15:58:47'),
(20, 1, 2322, NULL, NULL, '1658466658_thumb_22.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:55:58', '2022-07-22 15:58:47'),
(21, 1, 2322, NULL, NULL, '1658466669_thumb_20.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:09', '2022-07-22 15:58:47'),
(22, 1, 2322, NULL, NULL, '1658466678_thumb_19.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:18', '2022-07-22 15:58:47'),
(23, 1, 2322, NULL, NULL, '1658466688_thumb_17.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:28', '2022-07-22 15:58:47'),
(24, 1, 2322, NULL, NULL, '1658466697_thumb_16.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:37', '2022-07-22 15:58:47'),
(25, 1, 2265, NULL, NULL, '1659867521_5.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-07 21:03:41', '2022-08-07 21:10:59'),
(26, 1, 2361, NULL, NULL, '1660724963_constructor.jpeg', NULL, NULL, NULL, NULL, NULL, '2022-08-17 19:14:23', '2022-08-17 19:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_video_items`
--

CREATE TABLE `navigation_video_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vlink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_types`
--

CREATE TABLE `page_types` (
  `sort` int(10) UNSIGNED NOT NULL,
  `page_type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_types`
--

INSERT INTO `page_types` (`sort`, `page_type_title`, `created_at`, `updated_at`) VALUES
(2, 'Group', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(3, 'Photo Gallery', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(9, 'News & Events', NULL, NULL),
(11, 'Normal', NULL, NULL),
(12, 'Service', NULL, NULL),
(13, 'Video Gallery', NULL, NULL),
(14, 'Doctor', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_items`
--
ALTER TABLE `navigation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_types`
--
ALTER TABLE `page_types`
  ADD PRIMARY KEY (`sort`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2437;

--
-- AUTO_INCREMENT for table `navigation_items`
--
ALTER TABLE `navigation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_types`
--
ALTER TABLE `page_types`
  MODIFY `sort` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2483;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
