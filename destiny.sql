-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2020 at 11:20 AM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `destiny`
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
(1, 'admin', 'admin@gmail.com', '$2y$10$fAoh1xMKcf8JOEw8Yu6FROaXcLdVd2eAr/ktjJTNYFrXdB2Q3wiDC', NULL, '2020-08-06 23:15:10', '2020-08-06 23:15:10');

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
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_nepali_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_full_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `global_settings` (`id`, `site_name`, `site_nepali_name`, `site_email`, `phone`, `website_full_address`, `page_title`, `page_keyword`, `page_description`, `favicon`, `site_logo`, `site_logo_nepali`, `site_status`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(1, 'Destiny', NULL, 'yogendra@nepaliworker.com', '977-1-4104597', '2nd Floor E-Block, Kathmandu Business Park, Teku, Kathmandu, Nepal', NULL, NULL, NULL, '1596776473_logo-1.png', '1596776474_logo-1.png', '1596776474_logo-1.png', '1', '', '', '2020-08-06 23:15:10', '2020-08-07 00:24:34');

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
(10, '2020_08_06_040522_create_comments_table', 1);

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
(1, 'ABOUT US', 'about-us', 'ABOUT US', 'ABOUT US', 'Main', 'Group', NULL, 1, 'Foreign Employment Consultant', NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ABOUT US', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:18:50', '2020-08-07 01:37:28'),
(2, 'SERVICES', 'services', 'SERVICES', 'SERVICES', 'Main', 'Normal', NULL, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SERVICES', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:19:07', '2020-08-06 23:19:07'),
(3, 'VACANCIES', 'vacancies', 'VACANCIES', 'VACANCIES', 'Main', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VACANCIES', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:19:24', '2020-08-06 23:26:22'),
(4, 'MEDIA CENTER', 'media-center', 'MEDIA CENTER', 'MEDIA CENTER', 'Main', 'Group', NULL, 4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MEDIA CENTER', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:19:41', '2020-08-06 23:24:30'),
(5, 'CONTACT US', 'contact-us', 'CONTACT US', 'CONTACT US', 'Main', 'Normal', NULL, 5, NULL, NULL, 'Don\'t have time to fill up form, don\'t worry here are the contact details, have a quick chit chat with a cup of tea call us or mail us.', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CONTACT US', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:20:06', '2020-08-07 00:15:59'),
(6, 'INTRODUCTION', 'introduction', 'INTRODUCTION', 'INTRODUCTION', 'Main', 'About', NULL, 1, 'HOW THE COMPANY STARTED', NULL, 'We are a registered and authorized organization by the Government of Nepal, established as a Foreign Employment Consultant as well as Nepali Manpower supply company with the motto “To Choose the Right Person for the Right Job at the Right Time”. Our Destiny Employment Services Pvt. Ltd. is managed by a workforce consisting of energetic professionals from different sectors such as Bureaucrats, Engineers, Hospitality professionals, Bankers, Army and young entrepreneurs. We are always honored by good relations with Government of Nepal, associations related to foreign employment agencies and social workers who have networks all over Nepal.<br />\r\n<strong>GENERAL INFORMATION</strong>\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Company Name</strong></td>\r\n			<td>Our Destiny Employment Services Pvt Ltd</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>License No</strong></td>\r\n			<td>742/064-65</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Saudi Arab Entry Code No</strong></td>\r\n			<td>361, Kathmandu</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Company Pan No</strong></td>\r\n			<td>302495337</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Company Registration No</strong></td>\r\n			<td>44386/063-64</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Contact Person</strong></td>\r\n			<td>Yogendra Ghimire<br />\r\n			<strong>Cell:</strong>&nbsp;+977-98510-51403<br />\r\n			<strong>E-mail:</strong>yghimire@gmail.com</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, 1, NULL, NULL, NULL, '1596788580_hemraj.png', NULL, NULL, NULL, NULL, 'INTRODUCTION', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:21:45', '2020-08-07 02:40:39'),
(8, 'BOARD OF DIRECTORS', 'board-of-directors', 'BOARD OF DIRECTORS', 'BOARD OF DIRECTORS', 'Main', 'About', NULL, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BOARD OF DIRECTORS', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:22:22', '2020-08-07 02:34:24'),
(9, 'VISION & MISSION', 'vision-mission', 'VISION & MISSION', 'VISION & MISSION', 'Main', 'About', NULL, 4, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VISION & MISSION', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:22:38', '2020-08-07 02:34:17'),
(10, 'LEGAL DOCUMENTS', 'legal-documents', 'LEGAL DOCUMENTS', 'LEGAL DOCUMENTS', 'Main', 'About', NULL, 5, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEGAL DOCUMENTS', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:23:04', '2020-08-07 02:34:11'),
(11, 'MEDIA 1', 'media-1', 'MEDIA 1', 'MEDIA 1', 'Main', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MEDIA 1', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:25:04', '2020-08-09 21:55:37'),
(12, 'MEDIA 2', 'media-2', 'MEDIA 2', 'MEDIA 2', 'Main', 'Group', NULL, 2, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MEDIA 2', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:25:16', '2020-08-09 21:55:43'),
(13, 'UAE', 'uae', 'UAE', 'UAE', 'Main', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'UAE', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:26:43', '2020-08-09 22:35:27'),
(14, 'DUBAI', 'dubai', 'DUBAI', 'DUBAI', 'Main', 'Group', NULL, 2, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DUBAI', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:26:56', '2020-08-09 22:35:35'),
(15, 'GERMANY', 'germany', 'GERMANY', 'GERMANY', 'Main', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GERMANY', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:27:12', '2020-08-09 22:35:40'),
(16, 'Top Header', 'top-header', 'Top Header', 'Top Header', 'Home', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Top Header', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:29:08', '2020-08-06 23:29:08'),
(17, 'Home Slider', 'home-slider', 'Home Slider', 'Home Slider', 'Home', 'Slider', NULL, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Home Slider', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:29:42', '2020-08-06 23:29:42'),
(18, 'OUR DESTINY', 'our-destiny', 'OUR DESTINY', 'OUR DESTINY', 'Home', 'Link', NULL, 3, NULL, NULL, '<div style=\"text-align: justify;\">We are a registered and authorized organization by the Government of Nepal, established as a Foreign Employment Consultant as well as Nepali Manpower supply company with the motto “To Choose the Right Person for the Right Job at the Right Time”.&nbsp;Our Destiny Employment Services Pvt. Ltd. is managed by a workforce consisting of energetic professionals from different sectors such as Bureaucrats, Engineers, Hospitality professionals, Bankers, Army and young entrepreneurs. We are always honored by good relations with Government of Nepal, associations related to foreign employment agencies and social workers who have networks all over Nepal.</div>', NULL, 0, NULL, NULL, NULL, NULL, 'https://www.youtube.com/embed/ZpJeLTRcGYU', NULL, NULL, NULL, 'OUR DESTINY', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:32:16', '2020-08-06 23:35:42'),
(19, 'BROWSE BY COUNTRY', 'browse-by-country', 'BROWSE BY COUNTRY', 'BROWSE BY COUNTRY', 'Home', 'Photo Gallery', NULL, 4, 'Find the latest job that match your skills.', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BROWSE BY COUNTRY', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:37:21', '2020-08-06 23:48:14'),
(21, 'RECRUITMENT', 'recruitment', 'RECRUITMENT', 'RECRUITMENT', 'Home', 'Group', NULL, 5, 'We don\'t want to push our ideas on to customers, we simply want to make what they want.', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RECRUITMENT', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:50:13', '2020-08-06 23:58:34'),
(22, 'Nepal', 'nepal', 'Nepal', 'Nepal', 'Home', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, '1596786943_skill.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:53:10', '2020-08-07 02:10:43'),
(23, 'Middle East', 'middle-east', 'Middle East', 'Middle East', 'Home', 'Normal', NULL, 2, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, '1596786979_securtiy.png', NULL, NULL, NULL, NULL, 'Middle East', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:53:53', '2020-08-07 02:11:19'),
(24, 'Europe', 'europe', 'Europe', 'Europe', 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, '1596786992_bamay.jpg', NULL, NULL, NULL, NULL, 'Europe', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:54:05', '2020-08-07 02:11:32'),
(25, 'India', 'india', 'India', 'India', 'Home', 'Normal', NULL, 4, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, '1596787035_overseas.png', NULL, NULL, NULL, NULL, 'India', NULL, '1', '0', NULL, NULL, NULL, '2020-08-06 23:54:21', '2020-08-07 02:12:15'),
(26, 'OUR SERVICES', 'our-services', 'OUR SERVICES', 'OUR SERVICES', 'Home', 'Group', NULL, 6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OUR SERVICES', NULL, '1', '0', NULL, NULL, NULL, '2020-08-07 00:40:05', '2020-08-07 01:53:35'),
(27, 'Footer', 'footer', 'Footer', 'Footer', 'Home', 'Group', NULL, 7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Footer', NULL, '1', '0', NULL, NULL, NULL, '2020-08-07 00:40:22', '2020-08-07 00:41:04'),
(28, 'Useful Links', 'useful-links', 'Useful Links', 'Useful Links', 'Home', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Useful Links', NULL, '1', '0', NULL, NULL, NULL, '2020-08-07 00:42:08', '2020-08-07 00:42:08'),
(29, 'Home', 'home', 'Home', 'Home', 'Home', 'Link', NULL, 1, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, '/', NULL, NULL, NULL, 'Home', NULL, '1', '0', NULL, NULL, NULL, '2020-08-07 00:42:39', '2020-08-07 00:42:39'),
(30, 'Powerbase Gym', 'powerbase-gym', 'Powerbase Gym', 'Powerbase Gym', 'Home', 'Link', NULL, 2, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, '/powerbase-gym', NULL, NULL, NULL, 'Powerbase Gym', NULL, '1', '0', NULL, NULL, NULL, '2020-08-07 00:43:10', '2020-08-07 00:43:10'),
(31, 'Personal Trainer', 'personal-trainer', 'Personal Trainer', 'Personal Trainer', 'Home', 'Link', NULL, 3, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, '/personal -trainer', NULL, NULL, NULL, 'Personal Trainer', NULL, '1', '0', NULL, NULL, NULL, '2020-08-07 00:43:41', '2020-08-07 00:43:41'),
(32, 'Build your body', 'build-your-body', 'Build your body', 'Build your body', 'Home', 'Link', NULL, 4, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, '/build-your-body', NULL, NULL, NULL, 'Build your body', NULL, '1', '0', NULL, NULL, NULL, '2020-08-07 00:44:07', '2020-08-07 00:44:07'),
(34, 'Overseas Recruitment', 'overseas-recruitment', 'Overseas Recruitment', 'Overseas Recruitment', 'Home', 'Normal', NULL, 1, 'Our Destiny Pvt. Ltd is one of the leading HR Professional Management Companies in Nepal', NULL, '<p>Kailash International Manpower is one of the leading HR Professional Management Companies in Nepal and has been providing overseas recruitment services to its valuable clients in Malaysia, Saudi Arabia, Qatar, United Arab Emirates, Bahrain, Oman, Kuwait, Israel, Cyprus, Japan and Portugal.</p>\r\n\r\n<h6>OUR SECTORS OF OVERSEAS RECRUITMENT SERVICES ARE AS FOLLOWS:</h6>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Administration</p>\r\n	</li>\r\n	<li>\r\n	<p>Banking/Finance</p>\r\n	</li>\r\n	<li>\r\n	<p>Cleaning &amp; Security Services</p>\r\n	</li>\r\n	<li>\r\n	<p>Engineering/Construction</p>\r\n	</li>\r\n	<li>\r\n	<p>Garment &amp; Textiles</p>\r\n	</li>\r\n	<li>\r\n	<p>Healthcare</p>\r\n	</li>\r\n	<li>\r\n	<p>Hospitality &amp; Catering</p>\r\n	</li>\r\n	<li>\r\n	<p>Information Technology</p>\r\n	</li>\r\n	<li>\r\n	<p>Logistics &amp; Transportation</p>\r\n	</li>\r\n	<li>\r\n	<p>Manufacturing</p>\r\n	</li>\r\n	<li>\r\n	<p>MEP</p>\r\n	</li>\r\n	<li>\r\n	<p>Retails</p>\r\n	</li>\r\n	<li>\r\n	<p>Sales &amp; Marketing</p>\r\n	</li>\r\n</ul>\r\n\r\n<h6>THE RECRUITMENT FIELD AND AREAS ARE:</h6>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Unskilled</p>\r\n	</li>\r\n	<li>\r\n	<p>Semi-Skilled</p>\r\n	</li>\r\n	<li>\r\n	<p>Skilled</p>\r\n	</li>\r\n	<li>\r\n	<p>Professional</p>\r\n	</li>\r\n</ul>', NULL, 26, NULL, NULL, NULL, '1596785982_overseas.png', NULL, NULL, NULL, NULL, 'Overseas Recruitment', NULL, '1', '0', NULL, NULL, NULL, '2020-08-07 01:54:42', '2020-08-07 01:54:42'),
(35, 'Skill Development Training', 'skill-development-training', 'Skill Development Training', 'Skill Development Training', 'Home', 'Normal', NULL, 2, 'We believe that the training will broaden candidate’s opportunities', NULL, '<p>Kailash International Manpower is one of the leading HR Professional Management Companies in Nepal and has been providing overseas recruitment services to its valuable clients in Malaysia, Saudi Arabia, Qatar, United Arab Emirates, Bahrain, Oman, Kuwait, Israel, Cyprus, Japan and Portugal.</p>\r\n\r\n<h6>OUR SECTORS OF OVERSEAS RECRUITMENT SERVICES ARE AS FOLLOWS:</h6>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Administration</p>\r\n	</li>\r\n	<li>\r\n	<p>Banking/Finance</p>\r\n	</li>\r\n	<li>\r\n	<p>Cleaning &amp; Security Services</p>\r\n	</li>\r\n	<li>\r\n	<p>Engineering/Construction</p>\r\n	</li>\r\n	<li>\r\n	<p>Garment &amp; Textiles</p>\r\n	</li>\r\n	<li>\r\n	<p>Healthcare</p>\r\n	</li>\r\n	<li>\r\n	<p>Hospitality &amp; Catering</p>\r\n	</li>\r\n	<li>\r\n	<p>Information Technology</p>\r\n	</li>\r\n	<li>\r\n	<p>Logistics &amp; Transportation</p>\r\n	</li>\r\n	<li>\r\n	<p>Manufacturing</p>\r\n	</li>\r\n	<li>\r\n	<p>MEP</p>\r\n	</li>\r\n	<li>\r\n	<p>Retails</p>\r\n	</li>\r\n	<li>\r\n	<p>Sales &amp; Marketing</p>\r\n	</li>\r\n</ul>\r\n\r\n<h6>THE RECRUITMENT FIELD AND AREAS ARE:</h6>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Unskilled</p>\r\n	</li>\r\n	<li>\r\n	<p>Semi-Skilled</p>\r\n	</li>\r\n	<li>\r\n	<p>Skilled</p>\r\n	</li>\r\n	<li>\r\n	<p>Professional</p>\r\n	</li>\r\n</ul>', NULL, 26, NULL, NULL, NULL, '1596786028_skill.png', NULL, NULL, NULL, NULL, 'Skill Development Training', NULL, '1', '0', NULL, NULL, NULL, '2020-08-07 01:55:28', '2020-08-07 01:55:28'),
(36, 'Security Guard Training', 'security-guard-training', 'Security Guard Training', 'Security Guard Training', 'Home', 'Normal', NULL, 3, 'The security training is done by Ex -British Army Gurkhas Officers', NULL, '<p>Kailash International Manpower is one of the leading HR Professional Management Companies in Nepal and has been providing overseas recruitment services to its valuable clients in Malaysia, Saudi Arabia, Qatar, United Arab Emirates, Bahrain, Oman, Kuwait, Israel, Cyprus, Japan and Portugal.</p>\r\n\r\n<h6>OUR SECTORS OF OVERSEAS RECRUITMENT SERVICES ARE AS FOLLOWS:</h6>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Administration</p>\r\n	</li>\r\n	<li>\r\n	<p>Banking/Finance</p>\r\n	</li>\r\n	<li>\r\n	<p>Cleaning &amp; Security Services</p>\r\n	</li>\r\n	<li>\r\n	<p>Engineering/Construction</p>\r\n	</li>\r\n	<li>\r\n	<p>Garment &amp; Textiles</p>\r\n	</li>\r\n	<li>\r\n	<p>Healthcare</p>\r\n	</li>\r\n	<li>\r\n	<p>Hospitality &amp; Catering</p>\r\n	</li>\r\n	<li>\r\n	<p>Information Technology</p>\r\n	</li>\r\n	<li>\r\n	<p>Logistics &amp; Transportation</p>\r\n	</li>\r\n	<li>\r\n	<p>Manufacturing</p>\r\n	</li>\r\n	<li>\r\n	<p>MEP</p>\r\n	</li>\r\n	<li>\r\n	<p>Retails</p>\r\n	</li>\r\n	<li>\r\n	<p>Sales &amp; Marketing</p>\r\n	</li>\r\n</ul>\r\n\r\n<h6>THE RECRUITMENT FIELD AND AREAS ARE:</h6>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Unskilled</p>\r\n	</li>\r\n	<li>\r\n	<p>Semi-Skilled</p>\r\n	</li>\r\n	<li>\r\n	<p>Skilled</p>\r\n	</li>\r\n	<li>\r\n	<p>Professional</p>\r\n	</li>\r\n</ul>', NULL, 26, NULL, NULL, NULL, '1596786088_securtiy.png', NULL, NULL, NULL, NULL, 'Security Guard Training', NULL, '1', '0', NULL, NULL, NULL, '2020-08-07 01:56:28', '2020-08-07 01:56:28'),
(37, 'Photo Gallery One', 'photo-gallery-one', 'Photo Gallery One', 'Photo Gallery One', 'Main', 'Slider', NULL, 1, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Photo Gallery One', NULL, '1', '0', NULL, NULL, NULL, '2020-08-09 21:56:05', '2020-08-09 21:56:05'),
(38, 'Photo Gallery Two', 'photo-gallery-two', 'Photo Gallery Two', 'Photo Gallery Two', 'Main', 'Slider', NULL, 2, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Photo Gallery Two', NULL, '1', '0', NULL, NULL, NULL, '2020-08-09 21:56:27', '2020-08-09 21:56:27'),
(39, 'Photo Gallery Three', 'photo-gallery-three', 'Photo Gallery Three', 'Photo Gallery Three', 'Main', 'Slider', NULL, 3, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Photo Gallery Three', NULL, '1', '0', NULL, NULL, NULL, '2020-08-09 21:56:44', '2020-08-09 21:56:44'),
(40, 'kailash Technology Pvt. Ltd.', 'kailash-technology-pvt-ltd', 'kailash Technology Pvt. Ltd.', 'kailash Technology Pvt. Ltd.', 'Main', 'Vacancy Detail', NULL, 1, '<pre>\r\nProduction Manager</pre>', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong><span style=\"background-color:#FF8C00;\">Description</span></strong></td>\r\n			<td><strong><span style=\"background-color:#FF8C00;\">Details</span></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><b>Company Name</b></td>\r\n			<td>GULF STAR COOLLING SERVICES L.L.C.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><b>Country</b></td>\r\n			<td>UAE</td>\r\n		</tr>\r\n		<tr>\r\n			<td><b>No. of Recruits</b></td>\r\n			<td>420</td>\r\n		</tr>\r\n		<tr>\r\n			<td><b>Salary</b></td>\r\n			<td>2000 AED</td>\r\n		</tr>\r\n		<tr>\r\n			<td><b>Overtime</b></td>\r\n			<td>As per the Company regulations</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<pre>\r\n\r\n<strong>Responsibilities</strong>\r\n</pre>\r\n\r\n<pre>\r\nThere are many variations of passages of Lorem Ipsum available\r\nThere are many variations of passages of Lorem Ipsum available\r\n</pre>', NULL, 13, '1597033313_test-logo1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kailash Technology Pvt. Ltd.', NULL, '1', '0', NULL, NULL, NULL, '2020-08-09 22:36:53', '2020-08-09 23:10:54'),
(41, 'kailash Technology Pvt. Ltd. two', 'kailash-technology-pvt-ltd-two', 'kailash Technology Pvt. Ltd. two', 'kailash Technology Pvt. Ltd. two', 'Main', 'Vacancy Detail', NULL, 2, 'General Manager', NULL, NULL, NULL, 13, '1597033364_test-logo2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kailash Technology Pvt. Ltd. two', NULL, '1', '0', NULL, NULL, NULL, '2020-08-09 22:37:44', '2020-08-09 22:47:40');

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
(1, 1, 17, 'Slider one', NULL, '1596777347_slide1.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, NULL, NULL, NULL, '2020-08-06 23:30:47', '2020-08-06 23:30:47'),
(2, 2, 17, 'Slider two', NULL, '1596777347_slide2.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL, NULL, NULL, NULL, '2020-08-06 23:30:47', '2020-08-06 23:30:47'),
(3, 1, 20, 'Japan', NULL, '1596778104_japan.jpg', '13 jobs', NULL, NULL, NULL, NULL, '2020-08-06 23:43:24', '2020-08-06 23:43:24'),
(4, 2, 20, 'Nepal', NULL, '1596778104_nepal.jpg', '34', NULL, NULL, NULL, NULL, '2020-08-06 23:43:24', '2020-08-06 23:43:24'),
(5, 3, 20, 'Malaysia', NULL, '1596778104_malaysia.jpg', '34', NULL, NULL, NULL, NULL, '2020-08-06 23:43:24', '2020-08-06 23:43:24'),
(6, 4, 20, 'Poland', NULL, '1596778104_poland.jpg', '22', NULL, NULL, NULL, NULL, '2020-08-06 23:43:24', '2020-08-06 23:43:24'),
(7, 1, 19, 'Nepal', NULL, '1596778429_nepal.jpg', '48 jobs', NULL, NULL, NULL, NULL, '2020-08-06 23:48:49', '2020-08-06 23:48:49'),
(8, 2, 19, 'Japan', NULL, '1596778429_japan.jpg', '12', NULL, NULL, NULL, NULL, '2020-08-06 23:48:49', '2020-08-06 23:48:49'),
(9, 1, 19, 'Malaysia', NULL, '1596778481_malaysia.jpg', '24', NULL, NULL, NULL, NULL, '2020-08-06 23:49:41', '2020-08-06 23:49:41'),
(10, 2, 19, 'Poland', NULL, '1596778481_poland.jpg', '12', NULL, NULL, NULL, NULL, '2020-08-06 23:49:41', '2020-08-06 23:49:41'),
(11, 1, 37, 'Slide One', NULL, '1597030953_slide1.jpg', 'fwafe', NULL, NULL, NULL, NULL, '2020-08-09 21:57:33', '2020-08-09 21:57:33'),
(12, 2, 37, 'Slide two', NULL, '1597030953_slide2.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-09 21:57:33', '2020-08-09 21:57:33'),
(13, 1, 38, NULL, NULL, '1597030991_slide1.png', NULL, NULL, NULL, NULL, NULL, '2020-08-09 21:58:11', '2020-08-09 21:58:11'),
(14, 2, 38, NULL, NULL, '1597030991_slide2.png', NULL, NULL, NULL, NULL, NULL, '2020-08-09 21:58:11', '2020-08-09 21:58:11'),
(15, 1, 39, NULL, NULL, '1597031020_slide1.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-09 21:58:40', '2020-08-09 21:58:40'),
(16, 2, 39, NULL, NULL, '1597031020_slide2.jpg', NULL, NULL, NULL, NULL, NULL, '2020-08-09 21:58:40', '2020-08-09 21:58:40');

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
(1, 'Normal', '2020-08-06 23:16:34', '2020-08-06 23:16:34'),
(2, 'Group', '2020-08-06 23:17:16', '2020-08-06 23:17:16'),
(3, 'Photo Gallery', '2020-08-06 23:17:24', '2020-08-06 23:17:24'),
(4, 'Video Gallery', '2020-08-06 23:17:30', '2020-08-06 23:17:30'),
(5, 'Link', '2020-08-06 23:17:36', '2020-08-06 23:17:36'),
(6, 'Slider', '2020-08-06 23:17:41', '2020-08-06 23:17:41'),
(7, 'Attachment', '2020-08-06 23:17:46', '2020-08-06 23:17:46'),
(8, 'Audio Gallery', '2020-08-06 23:17:53', '2020-08-06 23:17:53'),
(9, 'About', '2020-08-07 02:32:35', '2020-08-07 02:32:35'),
(10, 'Media', '2020-08-09 22:03:19', '2020-08-09 22:03:19'),
(11, 'VACANCIES', '2020-08-09 22:31:28', '2020-08-09 22:31:28'),
(12, 'Vacancy Detail', '2020-08-09 22:47:22', '2020-08-09 22:47:22');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `navigation_items`
--
ALTER TABLE `navigation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_types`
--
ALTER TABLE `page_types`
  MODIFY `sort` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
