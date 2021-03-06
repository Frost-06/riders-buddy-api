-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 09:01 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riders-buddy-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `add_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `house_number` varchar(255) DEFAULT NULL,
  `barangay` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  `zip` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`add_id`, `user_id`, `street`, `house_number`, `barangay`, `city`, `province`, `country`, `zip`, `name`, `contact`, `is_default`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(53, 127, NULL, NULL, 'Bakagay', 'Tayud', 'Ce', NULL, 6001, 'Mark Joseph', '09164723454', 0, NULL, NULL, '2020-11-23 07:03:44', '2020-11-23 07:03:44'),
(54, 127, 'asdasda', NULL, 'asasd', 'aaaasda', 'assd', NULL, 22, 'Fas', '22', 0, NULL, NULL, '2020-11-23 07:05:24', '2020-11-23 07:05:24'),
(55, 0, 'B. Ceniza', NULL, 'Mantuyong', 'Mandaue', 'Cebu', NULL, 6014, 'ANDRE', '09054588487', 0, NULL, NULL, '2022-03-24 21:34:49', '2022-03-24 21:34:49'),
(56, 91, 'Lapu', NULL, 'Lapu', 'Lapu-Lapu', 'Cebu', NULL, 6013, 'ANGELO MIJARES', '092342345', 0, NULL, NULL, '2022-03-30 07:54:39', '2022-03-30 07:54:39'),
(58, 1, 'B. Ceniza St.', NULL, 'Mantuyong', 'Mandaue', 'Cebu', NULL, 6014, 'ANDRE GUINITA', '09054588487', 1, NULL, NULL, '2022-03-31 15:47:13', '2022-03-31 15:47:13'),
(59, 94, 'B. Ceniza St.', NULL, 'Mantuyong', 'Mandaue', 'Cebu', NULL, 6014, 'KAYE ANN CANDO', '09054588487', 1, NULL, NULL, '2022-04-02 00:49:10', '2022-04-02 00:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `total_items` double NOT NULL,
  `total_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `meta`, `total_items`, `total_amount`, `created_at`, `updated_at`) VALUES
(0, 94, '{\"products\":[{\"quantity\":1,\"product\":{\"id\":14,\"store\":{\"vendor_id\":2,\"vendor_display_name\":\"GL Bike Center\",\"vendor_shop_name\":\"GL Bike Center\",\"formatted_display_name\":\"GL Bike Center - GL Bike Center (#2 - gl)\",\"store_hide_email\":\"no\",\"store_hide_phone\":\"no\",\"store_hide_address\":\"no\",\"store_hide_description\":\"no\",\"store_hide_policy\":\"no\",\"store_products_per_page\":10,\"vendor_email\":\"aeartixenter@gmail.com\",\"disable_vendor\":\"no\",\"is_store_offline\":\"no\",\"vendor_shop_logo\":\"http://localhost:3002/wp-content/plugins/wc-frontend-manager/assets/images/wcfmmp-blue.png\",\"vendor_banner_type\":\"image\",\"vendor_banner\":\"http://localhost:3002/wp-content/uploads/2022/03/11951212_10208002090308782_3426315675261784658_n.jpg\",\"mobile_banner\":\"http://localhost:3002/wp-content/uploads/2022/03/11951212_10208002090308782_3426315675261784658_n.jpg\",\"vendor_list_banner_type\":\"image\",\"vendor_list_banner\":\"http://localhost:3002/wp-content/uploads/2022/03/11951212_10208002090308782_3426315675261784658_n.jpg\",\"store_rating\":\"\",\"email_verified\":\"\",\"vendor_additional_info\":[],\"vendor_description\":\"<p></p>\\n\",\"vendor_policies\":{\"shipping_policy_heading\":\"Shipping Policy\",\"shipping_policy\":\"\",\"refund_policy_heading\":\"Refund Policy\",\"refund_policy\":\"\",\"cancellation_policy_heading\":\"Cancellation / Return / Exchange Policy\",\"cancellation_policy\":\"\"},\"store_tab_headings\":{\"products\":\"Products\",\"about\":\"About\",\"policies\":\"Policies\",\"reviews\":\"Reviews (<span class=\\\"wcfm_reviews_count\\\">0</span>)\"}},\"categories\":[{\"id\":45,\"name\":\"Bar\",\"slug\":\"bar\"}],\"images\":[{\"id\":50,\"date_created\":\"2022-03-25T06:58:19\",\"date_created_gmt\":\"2022-03-25T06:58:19\",\"date_modified\":\"2022-03-25T06:58:34\",\"date_modified_gmt\":\"2022-03-25T06:58:34\",\"src\":\"http://localhost:3002/wp-content/uploads/2022/03/5-min.png\",\"name\":\"5-min\",\"alt\":\"\"}],\"price\":\"1300\",\"regular_price\":\"1500\",\"sale_price\":\"1300\",\"name\":\"THE PROJECT MTB TOURING BAR\",\"merchant\":{\"merch_id\":1,\"merch_wp_id\":2,\"user_id\":90,\"merch_name\":\"\\r\\nGL Bike Center\",\"merch_lat\":\"10.303859477437657\",\"merch_long\":\"123.96224328480687\",\"merch_info\":\"Free\",\"merch_banner\":\"jollibee.jpg\",\"merch_logo\":\"\",\"created_at\":null,\"updated_at\":null}},\"id\":0},{\"quantity\":3,\"product\":{\"id\":16,\"store\":{\"vendor_id\":2,\"vendor_display_name\":\"GL Bike Center\",\"vendor_shop_name\":\"GL Bike Center\",\"formatted_display_name\":\"GL Bike Center - GL Bike Center (#2 - gl)\",\"store_hide_email\":\"no\",\"store_hide_phone\":\"no\",\"store_hide_address\":\"no\",\"store_hide_description\":\"no\",\"store_hide_policy\":\"no\",\"store_products_per_page\":10,\"vendor_email\":\"aeartixenter@gmail.com\",\"disable_vendor\":\"no\",\"is_store_offline\":\"no\",\"vendor_shop_logo\":\"http://localhost:3002/wp-content/plugins/wc-frontend-manager/assets/images/wcfmmp-blue.png\",\"vendor_banner_type\":\"image\",\"vendor_banner\":\"http://localhost:3002/wp-content/uploads/2022/03/11951212_10208002090308782_3426315675261784658_n.jpg\",\"mobile_banner\":\"http://localhost:3002/wp-content/uploads/2022/03/11951212_10208002090308782_3426315675261784658_n.jpg\",\"vendor_list_banner_type\":\"image\",\"vendor_list_banner\":\"http://localhost:3002/wp-content/uploads/2022/03/11951212_10208002090308782_3426315675261784658_n.jpg\",\"store_rating\":\"\",\"email_verified\":\"\",\"vendor_additional_info\":[],\"vendor_description\":\"<p></p>\\n\",\"vendor_policies\":{\"shipping_policy_heading\":\"Shipping Policy\",\"shipping_policy\":\"\",\"refund_policy_heading\":\"Refund Policy\",\"refund_policy\":\"\",\"cancellation_policy_heading\":\"Cancellation / Return / Exchange Policy\",\"cancellation_policy\":\"\"},\"store_tab_headings\":{\"products\":\"Products\",\"about\":\"About\",\"policies\":\"Policies\",\"reviews\":\"Reviews (<span class=\\\"wcfm_reviews_count\\\">0</span>)\"}},\"categories\":[{\"id\":46,\"name\":\"Bearing\",\"slug\":\"bearing\"},{\"id\":44,\"name\":\"Pedals\",\"slug\":\"pedals\"}],\"images\":[{\"id\":51,\"date_created\":\"2022-03-25T07:00:53\",\"date_created_gmt\":\"2022-03-25T07:00:53\",\"date_modified\":\"2022-03-25T07:02:08\",\"date_modified_gmt\":\"2022-03-25T07:02:08\",\"src\":\"http://localhost:3002/wp-content/uploads/2022/03/6-min.png\",\"name\":\"6-min\",\"alt\":\"\"}],\"price\":\"622\",\"regular_price\":\"622\",\"sale_price\":\"\",\"name\":\"MTB bicycle pedals TANKE TP-10 TP20 aluminum alloy oil slick colorful Sealed bearing road bike parts\",\"merchant\":{\"merch_id\":1,\"merch_wp_id\":2,\"user_id\":90,\"merch_name\":\"\\r\\nGL Bike Center\",\"merch_lat\":\"10.303859477437657\",\"merch_long\":\"123.96224328480687\",\"merch_info\":\"Free\",\"merch_banner\":\"jollibee.jpg\",\"merch_logo\":\"\",\"created_at\":null,\"updated_at\":null}},\"id\":1}],\"total\":3166,\"isFetched\":true}', 2, 3166, '2022-04-02 00:54:29', '2022-04-02 00:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `chat_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `chat_meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`chat_id`, `order_id`, `sender_id`, `receiver_id`, `chat_meta`, `created_at`, `updated_at`) VALUES
(129, 19, 160, 159, '{\"message\":\"Hi Mark Joseph Judaya. I am ESGO Driver, your driver for today for your order #19 - BFF Fries \'N McFloat Combo x 4, . Total of PHP 854.029.\",\"type\":\"text\"}', '2020-12-17 08:45:35', '2020-12-17 08:45:35'),
(130, 19, 159, 160, '{\"message\":\"thanks\",\"type\":\"text\"}', '2020-12-17 08:45:47', '2020-12-17 08:45:47'),
(131, 19, 160, 159, '{\"message\":\"wel;come sir\",\"type\":\"text\"}', '2020-12-17 08:45:57', '2020-12-17 08:45:57'),
(132, 19, 160, 159, '{\"message\":\"Thank you for waiting, your order is on the way! Please prepare an amount of PHP 854.029.\",\"type\":\"text\"}', '2020-12-17 08:46:34', '2020-12-17 08:46:34'),
(133, 19, 160, 159, '{\"message\":\"Your order #19 is now complete. Thank you.\",\"type\":\"text\"}', '2020-12-17 08:46:57', '2020-12-17 08:46:57'),
(134, 23, 160, 159, '{\"message\":\"Hi Mark Joseph Judaya. I am ESGO Driver, your driver for today for your order #23 - Chickenjoy Bucket w\\/ Jolly Spaghetti Family Pan x 3, . Total of PHP 1990.801.\",\"type\":\"text\"}', '2020-12-18 15:53:22', '2020-12-18 15:53:22'),
(136, 24, 161, 160, '{\"address\":{\"id\":\"poi.687194824412\",\"type\":\"Feature\",\"place_type\":[\"poi\"],\"relevance\":1,\"properties\":{\"foursquare\":\"4e952e66b634ee03e617a1fd\",\"landmark\":true,\"category\":\"marina, port, ferry, leisure\"},\"text\":\"Santiago Shipyard\",\"place_name\":\"Santiago Shipyard, Consolacion, Cebu 6001, Philippines\",\"center\":[123.980046,10.351341],\"geometry\":{\"coordinates\":[123.980046,10.351341],\"type\":\"Point\"},\"context\":[{\"id\":\"postcode.12122294926804590\",\"text\":\"6001\"},{\"id\":\"locality.13847740236099360\",\"text\":\"Tayud\"},{\"id\":\"place.10293112793284520\",\"wikidata\":\"Q315945\",\"text\":\"Consolacion\"},{\"id\":\"region.12607257693863500\",\"wikidata\":\"Q13786\",\"short_code\":\"PH-CEB\",\"text\":\"Cebu\"},{\"id\":\"country.13684120028213680\",\"wikidata\":\"Q928\",\"short_code\":\"ph\",\"text\":\"Philippines\"}]},\"type\":\"map\"}', '2020-12-19 03:47:40', '2020-12-19 03:47:40'),
(137, 24, 160, 161, '{\"message\":\"asd\",\"type\":\"text\"}', '2020-12-19 03:48:19', '2020-12-19 03:48:19'),
(138, 24, 160, 161, '{\"message\":\"asd\",\"type\":\"text\"}', '2020-12-19 03:48:20', '2020-12-19 03:48:20'),
(139, 24, 160, 161, '{\"message\":\"asd\",\"type\":\"text\"}', '2020-12-19 03:48:20', '2020-12-19 03:48:20'),
(140, 24, 160, 161, '{\"message\":\"fdg\",\"type\":\"text\"}', '2020-12-19 03:48:20', '2020-12-19 03:48:20'),
(141, 24, 160, 161, '{\"message\":\"vdfg\",\"type\":\"text\"}', '2020-12-19 03:48:21', '2020-12-19 03:48:21'),
(142, 24, 161, 160, '{\"message\":\"afd\",\"type\":\"text\"}', '2020-12-19 03:48:26', '2020-12-19 03:48:26'),
(143, 24, 161, 160, '{\"message\":\"dsf\",\"type\":\"text\"}', '2020-12-19 03:48:27', '2020-12-19 03:48:27'),
(144, 24, 161, 160, '{\"message\":\"sdf\",\"type\":\"text\"}', '2020-12-19 03:48:27', '2020-12-19 03:48:27'),
(145, 24, 161, 160, '{\"message\":\"dsf\",\"type\":\"text\"}', '2020-12-19 03:48:28', '2020-12-19 03:48:28'),
(146, 24, 161, 160, '{\"message\":\"dsf\",\"type\":\"text\"}', '2020-12-19 03:48:28', '2020-12-19 03:48:28'),
(147, 24, 161, 160, '{\"message\":\"sdf\",\"type\":\"text\"}', '2020-12-19 03:48:28', '2020-12-19 03:48:28'),
(148, 24, 161, 160, '{\"message\":\"sdf\",\"type\":\"text\"}', '2020-12-19 03:48:29', '2020-12-19 03:48:29'),
(149, 24, 161, 160, '{\"message\":\"sdf\",\"type\":\"text\"}', '2020-12-19 03:48:29', '2020-12-19 03:48:29'),
(150, 24, 161, 160, '{\"message\":\"dfs\",\"type\":\"text\"}', '2020-12-19 03:48:29', '2020-12-19 03:48:29'),
(151, 24, 160, 161, '{\"message\":\"asd\",\"type\":\"text\"}', '2020-12-19 03:48:36', '2020-12-19 03:48:36'),
(152, 24, 160, 161, '{\"message\":\"\",\"type\":\"text\"}', '2020-12-19 03:48:36', '2020-12-19 03:48:36'),
(153, 24, 160, 161, '{\"message\":\"asd\",\"type\":\"text\"}', '2020-12-19 03:48:36', '2020-12-19 03:48:36'),
(154, 24, 160, 161, '{\"message\":\"asd\",\"type\":\"text\"}', '2020-12-19 03:48:36', '2020-12-19 03:48:36'),
(155, 24, 160, 161, '{\"message\":\"asd\",\"type\":\"text\"}', '2020-12-19 03:48:37', '2020-12-19 03:48:37'),
(156, 24, 160, 161, '{\"message\":\"Thank you for waiting, your order is on the way! Please prepare an amount of PHP 1090.13.\",\"type\":\"text\"}', '2020-12-19 03:49:08', '2020-12-19 03:49:08'),
(157, 24, 160, 161, '{\"message\":\"Your order #24 is now complete. Thank you.\",\"type\":\"text\"}', '2020-12-19 03:49:53', '2020-12-19 03:49:53'),
(158, 25, 160, 161, '{\"message\":\"Hi Suzzette Baluarte. I am ESGO Driver, your driver for today for your order #25 - . Total of ~ PHP 500.\",\"type\":\"text\"}', '2020-12-19 03:54:50', '2020-12-19 03:54:50'),
(159, 26, 160, 159, '{\"message\":\"Hi Mark Joseph Judaya. I am ESGO Driver, your driver for today for your order #26 - BFF Fries \'N McFloat Combo x 5, . Total of PHP 900.\",\"type\":\"text\"}', '2021-05-11 06:08:13', '2021-05-11 06:08:13'),
(160, 26, 159, 160, '{\"message\":\"ok\",\"type\":\"text\"}', '2021-05-11 06:08:54', '2021-05-11 06:08:54'),
(161, 23, 159, 160, '{\"message\":\"dfsd\",\"type\":\"text\"}', '2022-03-23 22:45:09', '2022-03-23 22:45:09'),
(162, 23, 1, 159, '{\"message\":\"test\",\"type\":\"text\"}', '2022-03-23 22:45:34', '2022-03-23 22:45:34'),
(166, 27, 160, 159, '{\"message\":\"Hi Mark Joseph Judaya. I am ESGO Driver, your driver for today for your order #27 - BFF Fries \'N McFloat Combo x 1, . Total of PHP 180.\",\"type\":\"text\"}', '2022-03-24 21:00:05', '2022-03-24 21:00:05'),
(167, 4, 91, 1, '{\"message\":\"Thank you for waiting, your order is on the way! Please prepare an amount of PHP 584.881152.\",\"type\":\"text\"}', '2022-03-31 17:22:11', '2022-03-31 17:22:11'),
(168, 29, 91, 1, '{\"message\":\"Hi ANDRE GUINITA. I am angelo mijares, your driver for today for your order #29 - THE PROJECT MTB TOURING BAR x 1, . Total of PHP 1445.881.\",\"type\":\"text\"}', '2022-03-31 17:26:32', '2022-03-31 17:26:32'),
(169, 29, 91, 1, '{\"message\":\"Thank you for waiting, your order is on the way! Please prepare an amount of PHP 1445.881.\",\"type\":\"text\"}', '2022-03-31 17:31:38', '2022-03-31 17:31:38'),
(170, 29, 1, 91, '{\"message\":\"Hello\",\"type\":\"text\"}', '2022-03-31 17:32:02', '2022-03-31 17:32:02'),
(171, 29, 1, 91, '{\"message\":\"Hello\",\"type\":\"text\"}', '2022-03-31 17:32:13', '2022-03-31 17:32:13'),
(172, 29, 1, 91, '{\"address\":{\"id\":\"poi.103079287500\",\"type\":\"Feature\",\"place_type\":[\"poi\"],\"relevance\":0.538148,\"properties\":{\"foursquare\":\"513ea241e4b09926e926d359\",\"landmark\":true,\"category\":\"elementary school, primary school, elementary, school\"},\"text\":\"Mandaue City Central School\",\"place_name\":\"Mandaue City Central School, Mandaue City, Mandaue 6014, Philippines\",\"center\":[123.944424,10.326088],\"geometry\":{\"coordinates\":[123.944424,10.326088],\"type\":\"Point\"},\"context\":[{\"id\":\"postcode.8906400812178700\",\"text\":\"6014\"},{\"id\":\"locality.15957193752181610\",\"text\":\"Mantuyong\"},{\"id\":\"place.12036205226931470\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue City\"},{\"id\":\"region.9818316878281520\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue\"},{\"id\":\"country.13684120028213680\",\"wikidata\":\"Q928\",\"short_code\":\"ph\",\"text\":\"Philippines\"}]},\"type\":\"map\"}', '2022-03-31 17:35:33', '2022-03-31 17:35:33'),
(173, 29, 1, 91, '{\"message\":\"asa ka\",\"type\":\"text\"}', '2022-03-31 17:35:40', '2022-03-31 17:35:40'),
(174, 29, 91, 1, '{\"message\":\"Your order #29 is now complete. Thank you.\",\"type\":\"text\"}', '2022-03-31 17:37:27', '2022-03-31 17:37:27'),
(175, 30, 91, 92, '{\"message\":\"Hi JAYMARK MONTERONA. I am angelo mijares, your driver for today for your order #30 - SNAIL 96BCD 32-38T MTB Bike Bicycle Chainring Chain Wheel Circular Disc Single speed positive and negative plate Bike Parts x 1, . Total of PHP 584.881.\",\"type\":\"text\"}', '2022-04-01 19:44:53', '2022-04-01 19:44:53'),
(176, 30, 91, 92, '{\"message\":\"Order received please wait while we prepare your product\",\"type\":\"text\"}', '2022-04-01 19:45:42', '2022-04-01 19:45:42'),
(177, 30, 92, 91, '{\"message\":\"Thank you!\",\"type\":\"text\"}', '2022-04-01 19:45:48', '2022-04-01 19:45:48'),
(178, 30, 91, 92, '{\"message\":\"Thank you for waiting, your order is on the way! Please prepare an amount of PHP 584.881.\",\"type\":\"text\"}', '2022-04-01 19:46:22', '2022-04-01 19:46:22'),
(179, 30, 91, 92, '{\"message\":\"Your order #30 is now complete. Thank you.\",\"type\":\"text\"}', '2022-04-01 19:47:58', '2022-04-01 19:47:58'),
(180, 31, 91, 1, '{\"message\":\"Hi ANDRE GUINITA. I am angelo mijares, your driver for today for your order #31 - SNAIL 96BCD 32-38T MTB Bike Bicycle Chainring Chain Wheel Circular Disc Single speed positive and negative plate Bike Parts x 1, . Total of PHP 584.881.\",\"type\":\"text\"}', '2022-04-01 20:16:01', '2022-04-01 20:16:01'),
(181, 31, 1, 91, '{\"message\":\"wrong pin of location let me, pin it again\",\"type\":\"text\"}', '2022-04-01 20:17:34', '2022-04-01 20:17:34'),
(182, 31, 1, 91, '{\"address\":{\"id\":\"locality.15957193752181610\",\"type\":\"Feature\",\"place_type\":[\"locality\"],\"relevance\":0.558148,\"properties\":{},\"text\":\"Mantuyong\",\"place_name\":\"Mantuyong, Mandaue City, Mandaue, Philippines\",\"matching_place_name\":\"Mantuyong, Mandaue, Mandaue, Philippines\",\"bbox\":[123.937957764,10.322719574,123.947128296,10.329380035],\"center\":[123.942807,10.32684],\"geometry\":{\"type\":\"Point\",\"coordinates\":[123.942807,10.32684]},\"context\":[{\"id\":\"place.12036205226931470\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue City\"},{\"id\":\"region.9818316878281520\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue\"},{\"id\":\"country.13684120028213680\",\"wikidata\":\"Q928\",\"short_code\":\"ph\",\"text\":\"Philippines\"}]},\"type\":\"map\"}', '2022-04-01 20:17:45', '2022-04-01 20:17:45'),
(183, 31, 91, 1, '{\"message\":\"location received\",\"type\":\"text\"}', '2022-04-01 20:17:50', '2022-04-01 20:17:50'),
(184, 31, 1, 91, '{\"message\":\"\",\"type\":\"text\"}', '2022-04-01 20:17:59', '2022-04-01 20:17:59'),
(185, 31, 91, 1, '{\"message\":\"Thank you for waiting, your order is on the way! Please prepare an amount of PHP 584.881.\",\"type\":\"text\"}', '2022-04-01 20:18:13', '2022-04-01 20:18:13'),
(186, 31, 91, 1, '{\"message\":\"I\'m here\",\"type\":\"text\"}', '2022-04-01 20:18:44', '2022-04-01 20:18:44'),
(187, 31, 1, 91, '{\"message\":\"Okay wait\",\"type\":\"text\"}', '2022-04-01 20:18:51', '2022-04-01 20:18:51'),
(188, 31, 91, 1, '{\"message\":\"Your order #31 is now complete. Thank you.\",\"type\":\"text\"}', '2022-04-01 20:19:15', '2022-04-01 20:19:15'),
(189, 34, 91, 1, '{\"message\":\"Hi ANDRE GUINITA. I am angelo mijares, your driver for today for your order #34 - Outdoor Bike Parts Accessories 3D Soft Bike Saddle Saddle Cover x 1, . Total of PHP 1567.881.\",\"type\":\"text\"}', '2022-04-02 00:43:04', '2022-04-02 00:43:04'),
(190, 34, 91, 1, '{\"message\":\"Okay\",\"type\":\"text\"}', '2022-04-02 00:43:39', '2022-04-02 00:43:39'),
(191, 34, 1, 91, '{\"message\":\"Hello\",\"type\":\"text\"}', '2022-04-02 00:43:42', '2022-04-02 00:43:42'),
(192, 34, 1, 91, '{\"address\":{\"id\":\"locality.15957193752181610\",\"type\":\"Feature\",\"place_type\":[\"locality\"],\"relevance\":0.558148,\"properties\":{},\"text\":\"Mantuyong\",\"place_name\":\"Mantuyong, Mandaue City, Mandaue, Philippines\",\"matching_place_name\":\"Mantuyong, Mandaue, Mandaue, Philippines\",\"bbox\":[123.937957764,10.322719574,123.947128296,10.329380035],\"center\":[123.942807,10.32684],\"geometry\":{\"type\":\"Point\",\"coordinates\":[123.942807,10.32684]},\"context\":[{\"id\":\"place.12036205226931470\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue City\"},{\"id\":\"region.9818316878281520\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue\"},{\"id\":\"country.13684120028213680\",\"wikidata\":\"Q928\",\"short_code\":\"ph\",\"text\":\"Philippines\"}]},\"type\":\"map\"}', '2022-04-02 00:44:05', '2022-04-02 00:44:05'),
(193, 34, 91, 1, '{\"message\":\"Thank you for waiting, your order is on the way! Please prepare an amount of PHP 1567.881.\",\"type\":\"text\"}', '2022-04-02 00:44:50', '2022-04-02 00:44:50'),
(194, 34, 91, 1, '{\"message\":\"Your order #34 is now complete. Thank you.\",\"type\":\"text\"}', '2022-04-02 00:45:33', '2022-04-02 00:45:33'),
(195, 35, 91, 1, '{\"message\":\"Hi ANDRE GUINITA. I am angelo mijares, your driver for today for your order #35 - SNAIL 96BCD 32-38T MTB Bike Bicycle Chainring Chain Wheel Circular Disc Single speed positive and negative plate Bike Parts x 1, . Total of PHP 584.881.\",\"type\":\"text\"}', '2022-04-02 01:09:23', '2022-04-02 01:09:23'),
(196, 35, 91, 1, '{\"message\":\"Hi\",\"type\":\"text\"}', '2022-04-02 01:28:11', '2022-04-02 01:28:11'),
(197, 35, 91, 1, '{\"message\":\"Thank you for waiting, your order is on the way! Please prepare an amount of PHP 584.881.\",\"type\":\"text\"}', '2022-04-02 01:28:27', '2022-04-02 01:28:27'),
(198, 36, 91, 1, '{\"message\":\"Hi ANDRE GUINITA. I am angelo mijares, your driver for today for your order #36 - SNAIL 96BCD 32-38T MTB Bike Bicycle Chainring Chain Wheel Circular Disc Single speed positive and negative plate Bike Parts x 1, . Total of PHP 584.881.\",\"type\":\"text\"}', '2022-04-02 01:28:47', '2022-04-02 01:28:47'),
(199, 36, 91, 1, '{\"message\":\"Thank you for waiting, your order is on the way! Please prepare an amount of PHP 584.881.\",\"type\":\"text\"}', '2022-04-02 01:30:22', '2022-04-02 01:30:22'),
(200, 38, 91, 1, '{\"message\":\"Hi ANDRE GUINITA. I am angelo mijares, your driver for today for your order #38 - Sweet Cycling:1 Pair Bike Part Brake Handle Cover Bike Brakes Silicone Sleeve Brake Lever x 1, . Total of PHP 495.881.\",\"type\":\"text\"}', '2022-04-06 16:07:48', '2022-04-06 16:07:48'),
(201, 39, 91, 1, '{\"message\":\"Hi ANDRE GUINITA. I am angelo mijares, your driver for today for your order #39 - SNAIL 96BCD 32-38T MTB Bike Bicycle Chainring Chain Wheel Circular Disc Single speed positive and negative plate Bike Parts x 1, . Total of PHP 584.881.\",\"type\":\"text\"}', '2022-04-07 16:44:41', '2022-04-07 16:44:41'),
(202, 39, 91, 1, '{\"message\":\"Thank you for waiting, your order is on the way! Please prepare an amount of PHP 584.881.\",\"type\":\"text\"}', '2022-04-07 16:45:24', '2022-04-07 16:45:24'),
(203, 39, 91, 1, '{\"message\":\"Your order #39 is now complete. Thank you.\",\"type\":\"text\"}', '2022-04-07 16:51:51', '2022-04-07 16:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_fee`
--

CREATE TABLE `delivery_fee` (
  `id` int(11) NOT NULL,
  `date_from` timestamp NULL DEFAULT NULL,
  `date_to` timestamp NULL DEFAULT NULL,
  `days` varchar(100) CHARACTER SET latin1 NOT NULL,
  `per_km` float NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_fee`
--

INSERT INTO `delivery_fee` (`id`, `date_from`, `date_to`, `days`, `per_km`, `fee`) VALUES
(1, '2021-03-20 16:00:00', '2030-03-30 16:00:00', 'Mon,Tue,Wed,Thur,Fri,Sat,Sun', 8, 100);

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `merch_id` int(11) NOT NULL,
  `merch_wp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `merch_name` varchar(50) NOT NULL,
  `merch_lat` varchar(20) NOT NULL,
  `merch_long` varchar(20) NOT NULL,
  `merch_info` text NOT NULL,
  `merch_banner` varchar(255) NOT NULL,
  `merch_logo` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`merch_id`, `merch_wp_id`, `user_id`, `merch_name`, `merch_lat`, `merch_long`, `merch_info`, `merch_banner`, `merch_logo`, `created_at`, `updated_at`) VALUES
(1, 2, 90, '\r\nGL Bike Center', '10.303859477437657', '123.96224328480687', 'Free', 'jollibee.jpg', '', NULL, NULL),
(4, 3, 88, 'WOX Motorcycle Parts & Accessories', '10.303859477437657', '123.96224328480687', '', 'macdonalds.jpg', 'macdonalds-logo.png', '2020-10-28 17:35:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `merchant_services`
--

CREATE TABLE `merchant_services` (
  `merch_service_id` int(11) NOT NULL,
  `merch_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchant_services`
--

INSERT INTO `merchant_services` (`merch_service_id`, `merch_id`, `service_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 4, 1),
(4, 5, 2),
(5, 5, 1),
(6, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `noti_id` int(11) NOT NULL,
  `consumer_user_id` int(11) DEFAULT -1,
  `provider_user_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT -1,
  `notif_action` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `notif_meta` longtext NOT NULL,
  `notif_type` longtext NOT NULL,
  `viewed` varchar(10) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`noti_id`, `consumer_user_id`, `provider_user_id`, `order_id`, `notif_action`, `notif_meta`, `notif_type`, `viewed`, `created_at`, `updated_at`) VALUES
(1, 1, 91, 39, '{\"pathname\":\"\\/chat\\/39\"}', '{\"title\":\"Message for order #39\",\"body\":\"Hi ANDRE GUINITA. I am angelo mijares, your driver for today for your order #39 - SNAIL 96BCD 32-38T MTB Bike Bicycle Chainring Chain Wheel Circular Disc Single speed positive and negative plate Bike Parts x 1, . Total of PHP 584.881.\"}', 'chat', '1', '2022-04-07 16:44:42', '2022-04-07 16:46:14'),
(2, 1, 91, 39, '{\"pathname\":\"\\/chat\\/39\"}', '{\"title\":\"Message for order #39\",\"body\":\"Thank you for waiting, your order is on the way! Please prepare an amount of PHP 584.881.\"}', 'chat', '1', '2022-04-07 16:45:25', '2022-04-07 16:46:14'),
(3, 1, 91, 39, '{\"pathname\":\"\\/chat\\/39\"}', '{\"title\":\"Message for order #39\",\"body\":\"Your order #39 is now complete. Thank you.\"}', 'chat', '0', '2022-04-07 16:51:52', '2022-04-07 16:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `consumer_user_id` int(11) NOT NULL,
  `provider_user_id` int(11) DEFAULT NULL,
  `service_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_issued` timestamp NULL DEFAULT current_timestamp(),
  `total` decimal(11,2) NOT NULL,
  `amount_paid` float DEFAULT NULL,
  `delivery_fee` float NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `status_text` varchar(255) DEFAULT NULL,
  `delivery_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `est_total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `consumer_user_id`, `provider_user_id`, `service_id`, `payment_id`, `note`, `order_date`, `date_issued`, `total`, `amount_paid`, `delivery_fee`, `status`, `status_text`, `delivery_info`, `est_total`, `created_at`, `updated_at`) VALUES
(29, 1, 91, 1, 1, NULL, '2022-03-31 17:26:04', '2022-03-31 17:26:04', '1300.00', 2000, 145.881, 'received', 'Order Complete', '{\"address\":{\"id\":\"locality.15957193752181610\",\"type\":\"Feature\",\"place_type\":[\"locality\"],\"relevance\":0.558148,\"properties\":{},\"text\":\"Mantuyong\",\"place_name\":\"Mantuyong, Mandaue City, Mandaue, Philippines\",\"matching_place_name\":\"Mantuyong, Mandaue, Mandaue, Philippines\",\"bbox\":[123.937957764,10.322719574,123.947128296,10.329380035],\"center\":[123.942807,10.32684],\"geometry\":{\"type\":\"Point\",\"coordinates\":[123.942807,10.32684]},\"context\":[{\"id\":\"place.12036205226931470\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue City\"},{\"id\":\"region.9818316878281520\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue\"},{\"id\":\"country.13684120028213680\",\"wikidata\":\"Q928\",\"short_code\":\"ph\",\"text\":\"Philippines\"}]},\"contact\":{\"name\":\"ANDRE GUINITA\",\"contact\":\"09054588487\"}}', NULL, '2022-03-31 17:26:04', '2022-03-31 17:37:22'),
(37, 1, NULL, 1, 1, 'Hello', '2022-04-06 14:32:06', '2022-04-06 14:32:06', '622.00', NULL, 145.881, 'pending', 'Finding you a rider', '{\"address\":{\"id\":\"locality.15957193752181610\",\"type\":\"Feature\",\"place_type\":[\"locality\"],\"relevance\":0.558148,\"properties\":{},\"text\":\"Mantuyong\",\"place_name\":\"Mantuyong, Mandaue City, Mandaue, Philippines\",\"matching_place_name\":\"Mantuyong, Mandaue, Mandaue, Philippines\",\"bbox\":[123.937957764,10.322719574,123.947128296,10.329380035],\"center\":[123.942807,10.32684],\"geometry\":{\"type\":\"Point\",\"coordinates\":[123.942807,10.32684]},\"context\":[{\"id\":\"place.12036205226931470\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue City\"},{\"id\":\"region.9818316878281520\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue\"},{\"id\":\"country.14303315890213680\",\"wikidata\":\"Q928\",\"short_code\":\"ph\",\"text\":\"Philippines\"}]},\"contact\":{\"name\":\"ANDRE GUINITA\",\"contact\":\"09054588487\"}}', NULL, '2022-04-06 14:32:06', '2022-04-06 14:32:06'),
(38, 1, 91, 1, 1, NULL, '2022-04-06 15:27:29', '2022-04-06 15:27:29', '350.00', NULL, 145.881, 'processing', 'Purchasing your order', '{\"address\":{\"id\":\"locality.15957193752181610\",\"type\":\"Feature\",\"place_type\":[\"locality\"],\"relevance\":0.558148,\"properties\":{},\"text\":\"Mantuyong\",\"place_name\":\"Mantuyong, Mandaue City, Mandaue, Philippines\",\"matching_place_name\":\"Mantuyong, Mandaue, Mandaue, Philippines\",\"bbox\":[123.937957764,10.322719574,123.947128296,10.329380035],\"center\":[123.942807,10.32684],\"geometry\":{\"type\":\"Point\",\"coordinates\":[123.942807,10.32684]},\"context\":[{\"id\":\"place.12036205226931470\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue City\"},{\"id\":\"region.9818316878281520\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue\"},{\"id\":\"country.14303315890213680\",\"wikidata\":\"Q928\",\"short_code\":\"ph\",\"text\":\"Philippines\"}]},\"contact\":{\"name\":\"ANDRE GUINITA\",\"contact\":\"09054588487\"}}', NULL, '2022-04-06 07:27:29', '2022-04-06 08:07:42'),
(39, 1, 91, 1, 1, NULL, '2022-04-07 16:43:25', '2022-04-07 16:43:25', '439.00', 1000, 145.881, 'received', 'Order Complete', '{\"address\":{\"id\":\"locality.15957193752181610\",\"type\":\"Feature\",\"place_type\":[\"locality\"],\"relevance\":0.558148,\"properties\":{},\"text\":\"Mantuyong\",\"place_name\":\"Mantuyong, Mandaue City, Mandaue, Philippines\",\"matching_place_name\":\"Mantuyong, Mandaue, Mandaue, Philippines\",\"bbox\":[123.937957764,10.322719574,123.947128296,10.329380035],\"center\":[123.942807,10.32684],\"geometry\":{\"type\":\"Point\",\"coordinates\":[123.942807,10.32684]},\"context\":[{\"id\":\"place.12036205226931470\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue City\"},{\"id\":\"region.9818316878281520\",\"wikidata\":\"Q1889017\",\"text\":\"Mandaue\"},{\"id\":\"country.14303315890213680\",\"wikidata\":\"Q928\",\"short_code\":\"ph\",\"text\":\"Philippines\"}]},\"contact\":{\"name\":\"ANDRE GUINITA\",\"contact\":\"09054588487\"}}', NULL, '2022-04-07 16:43:25', '2022-04-07 16:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `order_total` decimal(11,2) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `product_meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `prod_id`, `order_id`, `order_qty`, `order_total`, `merchant_id`, `product_meta`, `created_at`, `update_at`) VALUES
(25, 44, 38, 1, '350.00', 3, '{\"id\":44,\"store\":{\"vendor_id\":3,\"vendor_display_name\":\"WOX Motorcycle Parts &amp; Accessories\",\"vendor_shop_name\":\"WOX Motorcycle Parts & Accessories\",\"formatted_display_name\":\"WOX Motorcycle Parts & Accessories - WOX Motorcycle Parts &amp; Accessories (#3 - wox)\",\"store_hide_email\":\"no\",\"store_hide_phone\":\"no\",\"store_hide_address\":\"no\",\"store_hide_description\":\"no\",\"store_hide_policy\":\"no\",\"store_products_per_page\":10,\"vendor_email\":\"andredulaguinita@gmail.com\",\"disable_vendor\":\"no\",\"is_store_offline\":\"no\",\"vendor_shop_logo\":\"http://localhost:3002/wp-content/plugins/wc-frontend-manager/assets/images/wcfmmp-blue.png\",\"vendor_banner_type\":\"image\",\"vendor_banner\":\"http://localhost:3002/wp-content/uploads/2022/03/macdonalds.jpg\",\"mobile_banner\":\"http://localhost:3002/wp-content/uploads/2022/03/macdonalds.jpg\",\"vendor_list_banner_type\":\"image\",\"vendor_list_banner\":\"http://localhost:3002/wp-content/uploads/2022/03/macdonalds.jpg\",\"store_rating\":\"\",\"email_verified\":\"\",\"vendor_additional_info\":[],\"vendor_description\":\"<p></p>\\n\",\"vendor_policies\":{\"shipping_policy_heading\":\"Shipping Policy\",\"shipping_policy\":\"\",\"refund_policy_heading\":\"Refund Policy\",\"refund_policy\":\"\",\"cancellation_policy_heading\":\"Cancellation / Return / Exchange Policy\",\"cancellation_policy\":\"\"},\"store_tab_headings\":{\"products\":\"Products\",\"about\":\"About\",\"policies\":\"Policies\",\"reviews\":\"Reviews (<span class=\\\"wcfm_reviews_count\\\">0</span>)\"}},\"categories\":[{\"id\":51,\"name\":\"Bike Parts\",\"slug\":\"bike-parts\"}],\"images\":[{\"id\":52,\"date_created\":\"2022-03-25T07:03:14\",\"date_created_gmt\":\"2022-03-25T07:03:14\",\"date_modified\":\"2022-04-02T00:51:10\",\"date_modified_gmt\":\"2022-04-02T00:51:10\",\"src\":\"http://localhost:3002/wp-content/uploads/2022/03/7.png\",\"name\":\"7\",\"alt\":\"\",\"position\":0}],\"price\":\"350\",\"regular_price\":\"450\",\"sale_price\":\"350\",\"name\":\"Sweet Cycling:1 Pair Bike Part Brake Handle Cover Bike Brakes Silicone Sleeve Brake Lever\",\"merchant\":{\"merch_id\":4,\"merch_wp_id\":3,\"user_id\":88,\"merch_name\":\"WOX Motorcycle Parts & Accessories\",\"merch_lat\":\"10.303859477437657\",\"merch_long\":\"123.96224328480687\",\"merch_info\":\"\",\"merch_banner\":\"macdonalds.jpg\",\"merch_logo\":\"macdonalds-logo.png\",\"created_at\":\"2020-10-28T09:35:27.000000Z\",\"updated_at\":null}}', '2022-04-06 15:27:29', NULL),
(26, 12, 39, 1, '439.00', 2, '{\"id\":12,\"store\":{\"vendor_id\":2,\"vendor_display_name\":\"GL Bike Center\",\"vendor_shop_name\":\"GL Bike Center\",\"formatted_display_name\":\"GL Bike Center - GL Bike Center (#2 - gl)\",\"store_hide_email\":\"no\",\"store_hide_phone\":\"no\",\"store_hide_address\":\"no\",\"store_hide_description\":\"no\",\"store_hide_policy\":\"no\",\"store_products_per_page\":10,\"vendor_email\":\"aeartixenter@gmail.com\",\"disable_vendor\":\"no\",\"is_store_offline\":\"no\",\"vendor_shop_logo\":\"http://localhost:3002/wp-content/plugins/wc-frontend-manager/assets/images/wcfmmp-blue.png\",\"vendor_banner_type\":\"image\",\"vendor_banner\":\"http://localhost:3002/wp-content/uploads/2022/03/11951212_10208002090308782_3426315675261784658_n.jpg\",\"mobile_banner\":\"http://localhost:3002/wp-content/uploads/2022/03/11951212_10208002090308782_3426315675261784658_n.jpg\",\"vendor_list_banner_type\":\"image\",\"vendor_list_banner\":\"http://localhost:3002/wp-content/uploads/2022/03/11951212_10208002090308782_3426315675261784658_n.jpg\",\"store_rating\":\"\",\"email_verified\":\"\",\"vendor_additional_info\":[],\"vendor_description\":\"<p></p>\\n\",\"vendor_policies\":{\"shipping_policy_heading\":\"Shipping Policy\",\"shipping_policy\":\"\",\"refund_policy_heading\":\"Refund Policy\",\"refund_policy\":\"\",\"cancellation_policy_heading\":\"Cancellation / Return / Exchange Policy\",\"cancellation_policy\":\"\"},\"store_tab_headings\":{\"products\":\"Products\",\"about\":\"About\",\"policies\":\"Policies\",\"reviews\":\"Reviews (<span class=\\\"wcfm_reviews_count\\\">0</span>)\"}},\"categories\":[{\"id\":44,\"name\":\"Pedals\",\"slug\":\"pedals\"}],\"images\":[{\"id\":49,\"date_created\":\"2022-03-25T06:53:50\",\"date_created_gmt\":\"2022-03-25T06:53:50\",\"date_modified\":\"2022-03-25T06:54:00\",\"date_modified_gmt\":\"2022-03-25T06:54:00\",\"src\":\"http://localhost:3002/wp-content/uploads/2022/03/4.png\",\"name\":\"4\",\"alt\":\"\"}],\"price\":\"439\",\"regular_price\":\"439\",\"sale_price\":\"\",\"name\":\"SNAIL 96BCD 32-38T MTB Bike Bicycle Chainring Chain Wheel Circular Disc Single speed positive and negative plate Bike Parts\",\"merchant\":{\"merch_id\":1,\"merch_wp_id\":2,\"user_id\":90,\"merch_name\":\"\\r\\nGL Bike Center\",\"merch_lat\":\"10.303859477437657\",\"merch_long\":\"123.96224328480687\",\"merch_info\":\"Free\",\"merch_banner\":\"jollibee.jpg\",\"merch_logo\":\"\",\"created_at\":null,\"updated_at\":null}}', '2022-04-07 16:43:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_msg_templates`
--

CREATE TABLE `order_msg_templates` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `order_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_msg_templates`
--

INSERT INTO `order_msg_templates` (`id`, `message`, `order_status`) VALUES
(1, 'Thank you for waiting, your order is on the way! Please prepare an amount of $order_total.', 'receiving'),
(2, 'Hi $customer. I am $driver, your driver for today for your order #$order_num - $order. Total of $order_total.', 'processing'),
(3, 'Hi $customer. Thank you for choosing Riders Buddy your order #$order_num - $order. Total of $order_total is now in queue.', 'created'),
(4, 'Your order #$order_num is now complete. Thank you.', 'received'),
(5, 'Your order #$order_num was cancelled.', 'cancelled'),
(6, 'Finding you a new driver for your order #$order_num', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `pay_id` int(11) NOT NULL,
  `pay_name` varchar(50) NOT NULL,
  `pay_icon_b` varchar(255) NOT NULL,
  `pay_icon_s` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`pay_id`, `pay_name`, `pay_icon_b`, `pay_icon_s`, `created_at`, `updated_at`) VALUES
(3, 'COD', 'icon.jpg', 'icon.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_price` decimal(11,2) NOT NULL,
  `prod_ifno` text NOT NULL,
  `prod_stocks` int(11) NOT NULL,
  `prod_sale` int(11) NOT NULL,
  `prod_image` varchar(255) NOT NULL,
  `prod_category` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rate_id` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `rate_number` int(1) NOT NULL,
  `rate_message` text NOT NULL,
  `rate_date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `route_id` int(11) NOT NULL,
  `route_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `subname` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `service_icon_b` varchar(255) NOT NULL,
  `service_icon_s` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `slug`, `service_name`, `subname`, `description`, `service_icon_b`, `service_icon_s`, `created_at`, `updated_at`) VALUES
(1, 'pagkain', 'Discover new products', 'Find products from our large list of varities', '', '/static/images/services/discover-products.svg', '/static/images/services/discover-products.svg', NULL, NULL),
(2, 'pabili', 'Easy Checkout and Safe Payments', 'Worry free, with our trusted merchants and drivers', '', '/static/images/services/easy-checkout.svg', '/static/images/services/easy-checkout.svg', NULL, NULL),
(3, 'pasuyo', 'On the day delivery', 'Your product is deliver to your home safely and securely', '', '/static/images/services/day-delivery.svg', '/static/images/services/day-delivery.svg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_fname` varchar(50) NOT NULL,
  `user_lname` varchar(50) NOT NULL,
  `user_bday` date DEFAULT NULL,
  `user_gender` varchar(20) DEFAULT NULL,
  `user_mobile` int(11) DEFAULT NULL,
  `user_avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_token` varchar(255) DEFAULT NULL,
  `user_status` varchar(255) NOT NULL,
  `is_first_logon` int(11) NOT NULL,
  `user_type` int(50) DEFAULT 1,
  `user_agree` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_fname`, `user_lname`, `user_bday`, `user_gender`, `user_mobile`, `user_avatar`, `created_at`, `updated_at`, `user_token`, `user_status`, `is_first_logon`, `user_type`, `user_agree`) VALUES
(1, 'andredulaguinita@gmail.com', '$2y$10$NP/UU7hX/B.wCs9KOWmBCOGRkRp8VtW.IX.5DYSBdaGO3.JDoM4dW', 'ANDRE', 'GUINITA', NULL, NULL, NULL, NULL, '2022-04-07 09:17:45', '2022-04-07 09:17:45', '1649323065_X2Zh7nFjqsrT4JD0MyPRHgKOYI98ftlbNaEAo1cwdpzxS5vBiG_1', 'Verified', 0, 1, 1),
(87, 'wox@gmail.com', '$2y$10$NP/UU7hX/B.wCs9KOWmBCOGRkRp8VtW.IX.5DYSBdaGO3.JDoM4dW', 'WOX', '', NULL, NULL, NULL, NULL, '2022-04-06 16:03:16', '2022-04-06 16:03:16', '1649260996_x3Zl1AoriEywvLYOSzWHRnP5Bqt2khuDaXVdUje8GfT97m64FI_87', 'Verified', 0, 3, 1),
(90, 'gl@gmail.com', '$2y$10$coWAx4soG1QY8ENM8p5XAuIj3kzgA8RC0I8WVicr4KTFgbZzWP5x.', 'GL', '', NULL, NULL, NULL, NULL, '2022-03-25 10:44:41', '2022-03-25 10:44:41', '1606207838_EJDm7N9sXAWZYdbUn5xIhKBLVMcRrPQqF2i3tapeflS1zTykHu_90', 'Verified', 0, 3, 1),
(91, 'mijares@gmail.com', '$2y$10$pJTOF5xcOB3wxmPWYB087uWyRYoVDZm.DDigdyjShyF..s4ROiuC2', 'angelo', 'mijares', NULL, NULL, NULL, NULL, '2022-04-07 16:43:58', '2022-04-07 16:43:58', '1649349838_emg0fiAOdxsv8EhuPGr253FY7pMZBjRlDVIUJczT1SaXQtwy4H_91', 'Verified', 0, 2, 1),
(92, 'jaymark@gmail.com', '$2y$10$3n6LmaYfXHtYY6ABDiP.5e4HbdPHxQqMyFTQ22DNr1u.7srRvC8pK', 'JAYMARK', 'MONTERONA', NULL, NULL, NULL, NULL, '2022-04-01 19:37:22', '2022-04-01 19:37:22', '1648839261_pZk4EYhz5TdxWNOnSVGILXofa9qJuMmr2yc0F6stiwBUK3AHQe_92', 'Verified', 0, 1, 1),
(95, 'ridersbuddy.ph@gmail.com', '$2y$10$NP/UU7hX/B.wCs9KOWmBCOGRkRp8VtW.IX.5DYSBdaGO3.JDoM4dW', 'ADMIN', 'ADMIN', NULL, NULL, NULL, NULL, '2022-04-06 15:26:50', '2022-04-06 15:26:50', '1649258810_w3HBULkSVG2K71tmMRQdTyXi8pJ40AeZsN5luncPvbgCfqaFDo_95', 'Verified', 0, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `user_type_id`, `name`) VALUES
(1, 1, 'customer'),
(2, 2, 'driver'),
(3, 3, 'merchant'),
(4, 4, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`add_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `delivery_fee`
--
ALTER TABLE `delivery_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`merch_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `merchant_services`
--
ALTER TABLE `merchant_services`
  ADD PRIMARY KEY (`merch_service_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `order_msg_templates`
--
ALTER TABLE `order_msg_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `trans_id` (`trans_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `delivery_fee`
--
ALTER TABLE `delivery_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `merch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `merchant_services`
--
ALTER TABLE `merchant_services`
  MODIFY `merch_service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `noti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_msg_templates`
--
ALTER TABLE `order_msg_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
