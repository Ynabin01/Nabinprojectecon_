-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2022 at 08:56 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khabri`
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
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `phone_ne` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_full_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ne` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `global_settings` (`id`, `site_name`, `site_nepali_name`, `site_email`, `phone`, `phone_ne`, `website_full_address`, `address_ne`, `page_title`, `page_keyword`, `page_description`, `favicon`, `site_logo`, `site_logo_nepali`, `site_status`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(1, 'Khabari Nepal (wings of fourcube entertainment) md', NULL, 'khabarinepal555@gmail.com', '+977-9843048210', NULL, 'www.khabarinepal.com', NULL, 'Khabari Nepal', 'Khabari Nepal', 'Khabari Nepal', '1657020987_WhatsApp Image 2022-05-29 at 5.48.03 PM.jpeg', '1657257513_logo.png', '1604479502_footer-logo.jpg', '1', '', '', '2020-09-16 03:15:20', '2022-07-08 05:18:33');

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
  `short_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_content_nepali` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_content_nepali` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(2210, 'News', 'news', 'news', 'समाचार', 'Main', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'News', NULL, '1', '0', NULL, NULL, NULL, '2022-07-07 19:49:46', '2022-07-07 19:49:46'),
(2211, 'news 1', 'news-1', 'माओवादीको बैठक तीन दिन चल्यो, पदाधिकारीको टुंगोचाहिँ दाहालले लगाउने', 'माओवादीको बैठक तीन दिन चल्यो, पदाधिकारीको टुंगोचाहिँ दाहालले लगाउने', 'Main', 'Normal', NULL, 1, '<h1>माओवादीको बैठक तीन दिन चल्यो, पदाधिकारीको टुंगोचाहिँ दाहालले लगाउने</h1>', '<h1>माओवादीको बैठक तीन दिन चल्यो, पदाधिकारीको टुंगोचाहिँ दाहालले लगाउने</h1>', 'काठमाडौँ — नेकपा माओवादी केन्द्रको पदाधिकारीको टुंगो लगाउने जिम्मा अध्यक्ष पुष्पकमल दाहाललाई दिइएको छ&nbsp;। काठमाडौंमा बिहीबार बसेको केन्द्रीय समिति बैठकमा सहमति नजुटेपछि दाहाललाई पदाधिकारी चयनको जिम्मा दाहाललाई दिइएको हो&nbsp;। बैठकमा सम्बोधन गर्दै दाहालले पदाधिकारी चयन गर्नका लागि आफूलाई २-४ दिन समय मागेका थिए&nbsp;।', 'काठमाडौँ — नेकपा माओवादी केन्द्रको पदाधिकारीको टुंगो लगाउने जिम्मा अध्यक्ष पुष्पकमल दाहाललाई दिइएको छ&nbsp;। काठमाडौंमा बिहीबार बसेको केन्द्रीय समिति बैठकमा सहमति नजुटेपछि दाहाललाई पदाधिकारी चयनको जिम्मा दाहाललाई दिइएको हो&nbsp;। बैठकमा सम्बोधन गर्दै दाहालले पदाधिकारी चयन गर्नका लागि आफूलाई २-४ दिन समय मागेका थिए&nbsp;।', 2210, NULL, NULL, NULL, '/uploads/banner_image/1657223578_thumb.jpeg', NULL, NULL, NULL, NULL, 'news 1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-07 19:52:58', '2022-07-07 19:53:56'),
(2212, 'Top News', 'top-news', 'Top News', 'Top News', 'Home', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Top News', NULL, '1', '0', NULL, NULL, NULL, '2022-07-07 19:55:26', '2022-07-07 19:55:38'),
(2213, 'entertainment news', '-entertainment-news', 'बजेट निर्माणमा अनधिकृत व्यक्ति संलग्नता विषयमा पूर्वाग्रह राखेर काम गर्दैनौं : अधिकारी', 'बजेट निर्माणमा अनधिकृत व्यक्ति संलग्नता विषयमा पूर्वाग्रह राखेर काम गर्दैनौं : अधिकारी', 'Home', 'Normal', NULL, 1, '<h1>बजेट निर्माणमा अनधिकृत व्यक्ति संलग्नता विषयमा पूर्वाग्रह राखेर काम गर्दैनौं : अधिकारी</h1>', '<h1>बजेट निर्माणमा अनधिकृत व्यक्ति संलग्नता विषयमा पूर्वाग्रह राखेर काम गर्दैनौं : अधिकारी</h1>', 'काठमाडौँ — बजेट निर्माणका क्रममा तत्कालीन अर्थमन्त्री जनार्दन शर्माले अनधिकृत व्यक्तिलाई संलग्न गराएको आरोपमाथि छानबिन गर्न गठित संसदीय विशेष समितिका सदस्य तथा एमाले सांसद खगराज अधिकारीले पूर्वाग्रह राखेर काम नगर्ने बताएका छन्&nbsp;। संवैधानिक सर्वोच्चता कायम गरेर अनुसन्धान गर्ने भन्दै उनले छानबिन आरोपितप्रति पूर्वाग्रह राखेर नगरिने बताए&nbsp;।', 'काठमाडौँ — बजेट निर्माणका क्रममा तत्कालीन अर्थमन्त्री जनार्दन शर्माले अनधिकृत व्यक्तिलाई संलग्न गराएको आरोपमाथि छानबिन गर्न गठित संसदीय विशेष समितिका सदस्य तथा एमाले सांसद खगराज अधिकारीले पूर्वाग्रह राखेर काम नगर्ने बताएका छन्&nbsp;। संवैधानिक सर्वोच्चता कायम गरेर अनुसन्धान गर्ने भन्दै उनले छानबिन आरोपितप्रति पूर्वाग्रह राखेर नगरिने बताए&nbsp;।', 2212, NULL, NULL, NULL, '/uploads/banner_image/1657224140_thumb (1).jpeg', NULL, NULL, NULL, NULL, 'entertainment news', NULL, '1', '0', NULL, NULL, NULL, '2022-07-07 20:00:46', '2022-07-07 20:02:20'),
(2214, 'news1', 'news1', 'बर्सेनि तुइनले लान्छ ज्यान', 'बर्सेनि तुइनले लान्छ ज्यान', 'Home', 'Normal', NULL, 2, 'बर्सेनि तुइनले लान्छ ज्यान', 'बर्सेनि तुइनले लान्छ ज्यान', 'बुधबारको घटनासहित २५ वर्षको अवधि महाकाली नदीका तुइनबाट खसेर मात्र २६ जनाले ज्यान गुमाइसकेका छन् भने अन्य नदी तथा खोलाका तुइनले पनि यो अवधिमा धेरैको ज्यान लिइसकेको छ । तुइन विस्थापनको नीति पूर्ण कार्यान्वयन हुनु त कता हो कता तुइनबाट मृत्यु हुनेको एकीकृत अभिलेखसमेत सरकारसँग छैन ।', 'बुधबारको घटनासहित २५ वर्षको अवधि महाकाली नदीका तुइनबाट खसेर मात्र २६ जनाले ज्यान गुमाइसकेका छन् भने अन्य नदी तथा खोलाका तुइनले पनि यो अवधिमा धेरैको ज्यान लिइसकेको छ । तुइन विस्थापनको नीति पूर्ण कार्यान्वयन हुनु त कता हो कता तुइनबाट मृत्यु हुनेको एकीकृत अभिलेखसमेत सरकारसँग छैन ।', 0, NULL, NULL, NULL, '/uploads/banner_image/1657224393_thumb.jpeg', NULL, NULL, NULL, NULL, 'news1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-07 20:04:47', '2022-07-07 20:06:33'),
(2215, 'breaking news', 'breaking-news', 'Breaking news', 'breaking news', 'Home', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'breaking news', NULL, '1', '0', NULL, NULL, NULL, '2022-07-07 20:08:22', '2022-07-07 20:08:22'),
(2216, 'news3', 'news3', 'माओवादी केन्द्रको १ सय ५६ सदस्यीय पोलिटब्युरो [नामावलीसहित]', 'माओवादी केन्द्रको १ सय ५६ सदस्यीय पोलिटब्युरो [नामावलीसहित]', 'Home', 'Normal', NULL, 1, '<h1>माओवादी केन्द्रको १ सय ५६ सदस्यीय पोलिटब्युरो [नामावलीसहित]</h1>', '<h1>माओवादी केन्द्रको १ सय ५६ सदस्यीय पोलिटब्युरो [नामावलीसहित]</h1>', '<p>ठमाडौँ — नेकपा माओवादी केन्द्रले १ सय ५६ सदस्यीय पोलिटब्युरो गठन गरेको छ&nbsp;।&nbsp;काठमाडौंको कमलादीस्थित प्रज्ञा भवनमा बसेको केन्द्रीय समिति बैठकले पोलिटब्युरो सदस्यहरुको टुंगो लगाएको हो&nbsp;। जसमा १२५ पूर्ण र ३१ वैकल्पिक सदस्य रहेका छन्&nbsp;। अध्यक्ष पुष्पकमल दाहालले बैठकमा १२५ सदस्यीय पोलिटब्युरो प्रस्ताव गरे पनि विवाद भएपछि बिहीबार दिउँसो १ घण्टा बैठक स्थगित भएको थियो&nbsp;।</p>', '<p>ठमाडौँ — नेकपा माओवादी केन्द्रले १ सय ५६ सदस्यीय पोलिटब्युरो गठन गरेको छ&nbsp;।&nbsp;काठमाडौंको कमलादीस्थित प्रज्ञा भवनमा बसेको केन्द्रीय समिति बैठकले पोलिटब्युरो सदस्यहरुको टुंगो लगाएको हो&nbsp;। जसमा १२५ पूर्ण र ३१ वैकल्पिक सदस्य रहेका छन्&nbsp;। अध्यक्ष पुष्पकमल दाहालले बैठकमा १२५ सदस्यीय पोलिटब्युरो प्रस्ताव गरे पनि विवाद भएपछि बिहीबार दिउँसो १ घण्टा बैठक स्थगित भएको थियो&nbsp;।</p>', 2215, NULL, NULL, NULL, '/uploads/banner_image/1657224564_thumb.jpeg', NULL, NULL, NULL, NULL, 'news3', NULL, '1', '0', NULL, NULL, NULL, '2022-07-07 20:09:24', '2022-07-07 20:10:00'),
(2217, 'news2', 'news2', 'संसदीय छानबिन समितिको अग्निपरीक्षा', 'संसदीय छानबिन समितिको अग्निपरीक्षा', 'Main', 'Normal', NULL, 2, '<p>आर्थिक वर्ष २०७९/८० को बजेट निर्माणमा अनधिकृत व्यक्तिहरूलाई करका दरहरू हेरफेर गर्न अख्तियारी दिएको आरोप लागेका अर्थमन्त्री जनार्दन शर्माले राजीनामा दिएपछि अब सबैका आँखा यस प्रकरणमाथि अनुसन्धान गर्न गठित संसदीय छानबिन विशेष समितितर्फ सोझिएका छन् ।</p>', 'आर्थिक वर्ष २०७९/८० को बजेट निर्माणमा अनधिकृत व्यक्तिहरूलाई करका दरहरू हेरफेर गर्न अख्तियारी दिएको आरोप लागेका अर्थमन्त्री जनार्दन शर्माले राजीनामा दिएपछि अब सबैका आँखा यस प्रकरणमाथि अनुसन्धान गर्न गठित संसदीय छानबिन विशेष समितितर्फ सोझिएका छन् ।', 'संसदीय समितिको प्रभावकारितामा सधैंजसो प्रश्न उठ्ने गरेकाले पनि सत्ता गठबन्धनकै बहुमत अर्थात् ६ सांसदहरू भएको यस ११ सदस्यीय छानबिन समितिले साँच्चिकै छानबिन गर्छ कि गर्दैन भन्ने आम कौतूहल छ । समितिले छानबिनै नगरी, प्रतिवेदन नै नबुझाई त्यत्तिकै टीकाटिप्पणी गर्नु खासै उचित नहुने भए पनि कतै यसले अनुसन्धानका नाममा शर्मा लगायतलाई त्यसै चोख्याउने प्रपञ्च त गर्दैन भन्ने कतिपय कोणबाट उठेका आशंकालाई त्यत्तिकै खारेज गरिहाल्न मिल्दैन । समितिले यसलाई निष्पक्ष अनुसन्धान गर्नका निम्ति आफूलाई मिलेको बलका रूपमा लिनुपर्छ । र, आम रूपमा उठेका शंका–उपशंकालाई चिर्ने गरी सत्य–तथ्य पत्ता लगाउन विश्वसनीय तथा वास्तविक अनुसन्धान गर्नुपर्छ ।', 'संसदीय समितिको प्रभावकारितामा सधैंजसो प्रश्न उठ्ने गरेकाले पनि सत्ता गठबन्धनकै बहुमत अर्थात् ६ सांसदहरू भएको यस ११ सदस्यीय छानबिन समितिले साँच्चिकै छानबिन गर्छ कि गर्दैन भन्ने आम कौतूहल छ । समितिले छानबिनै नगरी, प्रतिवेदन नै नबुझाई त्यत्तिकै टीकाटिप्पणी गर्नु खासै उचित नहुने भए पनि कतै यसले अनुसन्धानका नाममा शर्मा लगायतलाई त्यसै चोख्याउने प्रपञ्च त गर्दैन भन्ने कतिपय कोणबाट उठेका आशंकालाई त्यत्तिकै खारेज गरिहाल्न मिल्दैन । समितिले यसलाई निष्पक्ष अनुसन्धान गर्नका निम्ति आफूलाई मिलेको बलका रूपमा लिनुपर्छ । र, आम रूपमा उठेका शंका–उपशंकालाई चिर्ने गरी सत्य–तथ्य पत्ता लगाउन विश्वसनीय तथा वास्तविक अनुसन्धान गर्नुपर्छ ।', 2210, NULL, NULL, NULL, '/uploads/banner_image/1657247994_thumb.jpeg', NULL, NULL, NULL, NULL, 'news2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-08 02:38:29', '2022-07-08 02:39:54'),
(2218, 'news4', 'news4', 'संसदीय छानबिन समितिको अग्निपरीक्षा', 'संसदीय छानबिन समितिको अग्निपरीक्षा', 'Main', 'Normal', NULL, 3, '<p>आर्थिक वर्ष २०७९/८० को बजेट निर्माणमा अनधिकृत व्यक्तिहरूलाई करका दरहरू हेरफेर गर्न अख्तियारी दिएको आरोप लागेका अर्थमन्त्री जनार्दन शर्माले राजीनामा दिएपछि अब सबैका आँखा यस प्रकरणमाथि अनुसन्धान गर्न गठित संसदीय छानबिन विशेष समितितर्फ सोझिएका छन् ।</p>', 'आर्थिक वर्ष २०७९/८० को बजेट निर्माणमा अनधिकृत व्यक्तिहरूलाई करका दरहरू हेरफेर गर्न अख्तियारी दिएको आरोप लागेका अर्थमन्त्री जनार्दन शर्माले राजीनामा दिएपछि अब सबैका आँखा यस प्रकरणमाथि अनुसन्धान गर्न गठित संसदीय छानबिन विशेष समितितर्फ सोझिएका छन् ।', 'संसदीय समितिको प्रभावकारितामा सधैंजसो प्रश्न उठ्ने गरेकाले पनि सत्ता गठबन्धनकै बहुमत अर्थात् ६ सांसदहरू भएको यस ११ सदस्यीय छानबिन समितिले साँच्चिकै छानबिन गर्छ कि गर्दैन भन्ने आम कौतूहल छ । समितिले छानबिनै नगरी, प्रतिवेदन नै नबुझाई त्यत्तिकै टीकाटिप्पणी गर्नु खासै उचित नहुने भए पनि कतै यसले अनुसन्धानका नाममा शर्मा लगायतलाई त्यसै चोख्याउने प्रपञ्च त गर्दैन भन्ने कतिपय कोणबाट उठेका आशंकालाई त्यत्तिकै खारेज गरिहाल्न मिल्दैन । समितिले यसलाई निष्पक्ष अनुसन्धान गर्नका निम्ति आफूलाई मिलेको बलका रूपमा लिनुपर्छ । र, आम रूपमा उठेका शंका–उपशंकालाई चिर्ने गरी सत्य–तथ्य पत्ता लगाउन विश्वसनीय तथा वास्तविक अनुसन्धान गर्नुपर्छ ।', 'संसदीय समितिको प्रभावकारितामा सधैंजसो प्रश्न उठ्ने गरेकाले पनि सत्ता गठबन्धनकै बहुमत अर्थात् ६ सांसदहरू भएको यस ११ सदस्यीय छानबिन समितिले साँच्चिकै छानबिन गर्छ कि गर्दैन भन्ने आम कौतूहल छ । समितिले छानबिनै नगरी, प्रतिवेदन नै नबुझाई त्यत्तिकै टीकाटिप्पणी गर्नु खासै उचित नहुने भए पनि कतै यसले अनुसन्धानका नाममा शर्मा लगायतलाई त्यसै चोख्याउने प्रपञ्च त गर्दैन भन्ने कतिपय कोणबाट उठेका आशंकालाई त्यत्तिकै खारेज गरिहाल्न मिल्दैन । समितिले यसलाई निष्पक्ष अनुसन्धान गर्नका निम्ति आफूलाई मिलेको बलका रूपमा लिनुपर्छ । र, आम रूपमा उठेका शंका–उपशंकालाई चिर्ने गरी सत्य–तथ्य पत्ता लगाउन विश्वसनीय तथा वास्तविक अनुसन्धान गर्नुपर्छ ।', 2210, NULL, NULL, NULL, '/uploads/banner_image/1657248011_thumb (1).jpeg', NULL, NULL, NULL, NULL, 'news4', NULL, '1', '0', NULL, NULL, NULL, '2022-07-08 02:38:50', '2022-07-08 02:40:11'),
(2219, 'news5', 'news5', 'संसदीय छानबिन समितिको अग्निपरीक्षा', 'संसदीय छानबिन समितिको अग्निपरीक्षा', 'Main', 'Normal', NULL, 3, '<p>आर्थिक वर्ष २०७९/८० को बजेट निर्माणमा अनधिकृत व्यक्तिहरूलाई करका दरहरू हेरफेर गर्न अख्तियारी दिएको आरोप लागेका अर्थमन्त्री जनार्दन शर्माले राजीनामा दिएपछि अब सबैका आँखा यस प्रकरणमाथि अनुसन्धान गर्न गठित संसदीय छानबिन विशेष समितितर्फ सोझिएका छन् ।</p>', 'आर्थिक वर्ष २०७९/८० को बजेट निर्माणमा अनधिकृत व्यक्तिहरूलाई करका दरहरू हेरफेर गर्न अख्तियारी दिएको आरोप लागेका अर्थमन्त्री जनार्दन शर्माले राजीनामा दिएपछि अब सबैका आँखा यस प्रकरणमाथि अनुसन्धान गर्न गठित संसदीय छानबिन विशेष समितितर्फ सोझिएका छन् ।', 'संसदीय समितिको प्रभावकारितामा सधैंजसो प्रश्न उठ्ने गरेकाले पनि सत्ता गठबन्धनकै बहुमत अर्थात् ६ सांसदहरू भएको यस ११ सदस्यीय छानबिन समितिले साँच्चिकै छानबिन गर्छ कि गर्दैन भन्ने आम कौतूहल छ । समितिले छानबिनै नगरी, प्रतिवेदन नै नबुझाई त्यत्तिकै टीकाटिप्पणी गर्नु खासै उचित नहुने भए पनि कतै यसले अनुसन्धानका नाममा शर्मा लगायतलाई त्यसै चोख्याउने प्रपञ्च त गर्दैन भन्ने कतिपय कोणबाट उठेका आशंकालाई त्यत्तिकै खारेज गरिहाल्न मिल्दैन । समितिले यसलाई निष्पक्ष अनुसन्धान गर्नका निम्ति आफूलाई मिलेको बलका रूपमा लिनुपर्छ । र, आम रूपमा उठेका शंका–उपशंकालाई चिर्ने गरी सत्य–तथ्य पत्ता लगाउन विश्वसनीय तथा वास्तविक अनुसन्धान गर्नुपर्छ ।', 'संसदीय समितिको प्रभावकारितामा सधैंजसो प्रश्न उठ्ने गरेकाले पनि सत्ता गठबन्धनकै बहुमत अर्थात् ६ सांसदहरू भएको यस ११ सदस्यीय छानबिन समितिले साँच्चिकै छानबिन गर्छ कि गर्दैन भन्ने आम कौतूहल छ । समितिले छानबिनै नगरी, प्रतिवेदन नै नबुझाई त्यत्तिकै टीकाटिप्पणी गर्नु खासै उचित नहुने भए पनि कतै यसले अनुसन्धानका नाममा शर्मा लगायतलाई त्यसै चोख्याउने प्रपञ्च त गर्दैन भन्ने कतिपय कोणबाट उठेका आशंकालाई त्यत्तिकै खारेज गरिहाल्न मिल्दैन । समितिले यसलाई निष्पक्ष अनुसन्धान गर्नका निम्ति आफूलाई मिलेको बलका रूपमा लिनुपर्छ । र, आम रूपमा उठेका शंका–उपशंकालाई चिर्ने गरी सत्य–तथ्य पत्ता लगाउन विश्वसनीय तथा वास्तविक अनुसन्धान गर्नुपर्छ ।', 2210, NULL, NULL, NULL, '/uploads/banner_image/1657248026_thumb (1).jpeg', NULL, NULL, NULL, NULL, 'news5', NULL, '1', '0', NULL, NULL, NULL, '2022-07-08 02:39:05', '2022-07-08 02:40:26'),
(2220, 'news6', 'news6', 'संसदीय छानबिन समितिको अग्निपरीक्षा', 'संसदीय छानबिन समितिको अग्निपरीक्षा', 'Main', 'Normal', NULL, 3, '<p>आर्थिक वर्ष २०७९/८० को बजेट निर्माणमा अनधिकृत व्यक्तिहरूलाई करका दरहरू हेरफेर गर्न अख्तियारी दिएको आरोप लागेका अर्थमन्त्री जनार्दन शर्माले राजीनामा दिएपछि अब सबैका आँखा यस प्रकरणमाथि अनुसन्धान गर्न गठित संसदीय छानबिन विशेष समितितर्फ सोझिएका छन् ।</p>', 'आर्थिक वर्ष २०७९/८० को बजेट निर्माणमा अनधिकृत व्यक्तिहरूलाई करका दरहरू हेरफेर गर्न अख्तियारी दिएको आरोप लागेका अर्थमन्त्री जनार्दन शर्माले राजीनामा दिएपछि अब सबैका आँखा यस प्रकरणमाथि अनुसन्धान गर्न गठित संसदीय छानबिन विशेष समितितर्फ सोझिएका छन् ।', 'संसदीय समितिको प्रभावकारितामा सधैंजसो प्रश्न उठ्ने गरेकाले पनि सत्ता गठबन्धनकै बहुमत अर्थात् ६ सांसदहरू भएको यस ११ सदस्यीय छानबिन समितिले साँच्चिकै छानबिन गर्छ कि गर्दैन भन्ने आम कौतूहल छ । समितिले छानबिनै नगरी, प्रतिवेदन नै नबुझाई त्यत्तिकै टीकाटिप्पणी गर्नु खासै उचित नहुने भए पनि कतै यसले अनुसन्धानका नाममा शर्मा लगायतलाई त्यसै चोख्याउने प्रपञ्च त गर्दैन भन्ने कतिपय कोणबाट उठेका आशंकालाई त्यत्तिकै खारेज गरिहाल्न मिल्दैन । समितिले यसलाई निष्पक्ष अनुसन्धान गर्नका निम्ति आफूलाई मिलेको बलका रूपमा लिनुपर्छ । र, आम रूपमा उठेका शंका–उपशंकालाई चिर्ने गरी सत्य–तथ्य पत्ता लगाउन विश्वसनीय तथा वास्तविक अनुसन्धान गर्नुपर्छ ।', 'संसदीय समितिको प्रभावकारितामा सधैंजसो प्रश्न उठ्ने गरेकाले पनि सत्ता गठबन्धनकै बहुमत अर्थात् ६ सांसदहरू भएको यस ११ सदस्यीय छानबिन समितिले साँच्चिकै छानबिन गर्छ कि गर्दैन भन्ने आम कौतूहल छ । समितिले छानबिनै नगरी, प्रतिवेदन नै नबुझाई त्यत्तिकै टीकाटिप्पणी गर्नु खासै उचित नहुने भए पनि कतै यसले अनुसन्धानका नाममा शर्मा लगायतलाई त्यसै चोख्याउने प्रपञ्च त गर्दैन भन्ने कतिपय कोणबाट उठेका आशंकालाई त्यत्तिकै खारेज गरिहाल्न मिल्दैन । समितिले यसलाई निष्पक्ष अनुसन्धान गर्नका निम्ति आफूलाई मिलेको बलका रूपमा लिनुपर्छ । र, आम रूपमा उठेका शंका–उपशंकालाई चिर्ने गरी सत्य–तथ्य पत्ता लगाउन विश्वसनीय तथा वास्तविक अनुसन्धान गर्नुपर्छ ।', 2210, NULL, NULL, NULL, '/uploads/banner_image/1657248039_thumb.jpeg', NULL, NULL, NULL, NULL, 'news6', NULL, '1', '0', NULL, NULL, NULL, '2022-07-08 02:39:17', '2022-07-08 02:40:39'),
(2221, 'news7', 'news7', 'संसदीय छानबिन समितिको अग्निपरीक्षा', 'संसदीय छानबिन समितिको अग्निपरीक्षा', 'Main', 'Normal', NULL, 3, '<p>आर्थिक वर्ष २०७९/८० को बजेट निर्माणमा अनधिकृत व्यक्तिहरूलाई करका दरहरू हेरफेर गर्न अख्तियारी दिएको आरोप लागेका अर्थमन्त्री जनार्दन शर्माले राजीनामा दिएपछि अब सबैका आँखा यस प्रकरणमाथि अनुसन्धान गर्न गठित संसदीय छानबिन विशेष समितितर्फ सोझिएका छन् ।</p>', 'आर्थिक वर्ष २०७९/८० को बजेट निर्माणमा अनधिकृत व्यक्तिहरूलाई करका दरहरू हेरफेर गर्न अख्तियारी दिएको आरोप लागेका अर्थमन्त्री जनार्दन शर्माले राजीनामा दिएपछि अब सबैका आँखा यस प्रकरणमाथि अनुसन्धान गर्न गठित संसदीय छानबिन विशेष समितितर्फ सोझिएका छन् ।', 'संसदीय समितिको प्रभावकारितामा सधैंजसो प्रश्न उठ्ने गरेकाले पनि सत्ता गठबन्धनकै बहुमत अर्थात् ६ सांसदहरू भएको यस ११ सदस्यीय छानबिन समितिले साँच्चिकै छानबिन गर्छ कि गर्दैन भन्ने आम कौतूहल छ । समितिले छानबिनै नगरी, प्रतिवेदन नै नबुझाई त्यत्तिकै टीकाटिप्पणी गर्नु खासै उचित नहुने भए पनि कतै यसले अनुसन्धानका नाममा शर्मा लगायतलाई त्यसै चोख्याउने प्रपञ्च त गर्दैन भन्ने कतिपय कोणबाट उठेका आशंकालाई त्यत्तिकै खारेज गरिहाल्न मिल्दैन । समितिले यसलाई निष्पक्ष अनुसन्धान गर्नका निम्ति आफूलाई मिलेको बलका रूपमा लिनुपर्छ । र, आम रूपमा उठेका शंका–उपशंकालाई चिर्ने गरी सत्य–तथ्य पत्ता लगाउन विश्वसनीय तथा वास्तविक अनुसन्धान गर्नुपर्छ ।', 'संसदीय समितिको प्रभावकारितामा सधैंजसो प्रश्न उठ्ने गरेकाले पनि सत्ता गठबन्धनकै बहुमत अर्थात् ६ सांसदहरू भएको यस ११ सदस्यीय छानबिन समितिले साँच्चिकै छानबिन गर्छ कि गर्दैन भन्ने आम कौतूहल छ । समितिले छानबिनै नगरी, प्रतिवेदन नै नबुझाई त्यत्तिकै टीकाटिप्पणी गर्नु खासै उचित नहुने भए पनि कतै यसले अनुसन्धानका नाममा शर्मा लगायतलाई त्यसै चोख्याउने प्रपञ्च त गर्दैन भन्ने कतिपय कोणबाट उठेका आशंकालाई त्यत्तिकै खारेज गरिहाल्न मिल्दैन । समितिले यसलाई निष्पक्ष अनुसन्धान गर्नका निम्ति आफूलाई मिलेको बलका रूपमा लिनुपर्छ । र, आम रूपमा उठेका शंका–उपशंकालाई चिर्ने गरी सत्य–तथ्य पत्ता लगाउन विश्वसनीय तथा वास्तविक अनुसन्धान गर्नुपर्छ ।', 2210, NULL, NULL, NULL, '/uploads/banner_image/1657248051_thumb.jpeg', NULL, NULL, NULL, NULL, 'news7', NULL, '1', '0', NULL, NULL, NULL, '2022-07-08 02:39:26', '2022-07-08 02:40:51'),
(2222, 'Social', 'social', 'social', 'Social', 'Main', 'Group', NULL, 4, NULL, NULL, NULL, NULL, 2210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Social', NULL, '1', '0', NULL, NULL, NULL, '2022-07-08 05:32:09', '2022-07-08 05:33:45');

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
(1, 'Normal', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(2, 'Group', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(3, 'Photo Gallery', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(4, 'Video Gallery', '2020-09-16 03:15:20', '2020-09-16 03:15:21'),
(5, 'Link', '2020-09-16 03:15:20', '2020-09-16 03:15:21'),
(6, 'Slider', '2020-09-16 03:15:20', '2020-09-16 03:15:21'),
(7, 'Attachment', '2020-09-16 03:15:20', '2020-09-16 03:15:21'),
(8, 'Audio Gallery', '2020-09-16 03:15:20', '2020-09-16 03:15:21');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2224;

--
-- AUTO_INCREMENT for table `navigation_items`
--
ALTER TABLE `navigation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_types`
--
ALTER TABLE `page_types`
  MODIFY `sort` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2483;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
