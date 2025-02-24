-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 24, 2025 at 03:33 AM
-- Server version: 5.7.44
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blitxpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_keys`
--

CREATE TABLE `access_keys` (
  `id` int(11) NOT NULL,
  `access_key` varchar(130) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` int(11) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_keys`
--

INSERT INTO `access_keys` (`id`, `access_key`, `user`, `date_added`) VALUES
(150, '2f04e24a6844b746e54efcda3ed1b37f', 59, '2022-10-04'),
(151, '1063238a57fbd54dc6bb72e844e47ba1', 60, '2022-10-05'),
(152, '6c7d3bfd2d3b9a174ba0dc31e08aa75f', 61, '2022-10-05'),
(153, '74f37f1a3a27c5626c8c8fbffa03da0d', 62, '2022-10-05'),
(154, '82be70165c40da4815a53187151fe809', 62, '2022-10-05'),
(155, '47d228833ee2a5f8167e97e6a3ee54ed', 62, '2022-10-05'),
(156, 'bb26b40efc9259de2d6b1c0767c0c35e', 62, '2022-10-05'),
(157, '0c74f0ed55132a6d7e5a6210f5b896c3', 62, '2022-10-05'),
(158, 'b24747d9fd17134985da64674baf4bfd', 62, '2022-10-05'),
(159, '8a547c37b285a051d54b9cef580db7d4', 62, '2022-10-05'),
(160, 'a935aded047248488d896d1f9c804561', 62, '2022-10-05'),
(161, '579850c70c48e35162f0386d338755ed', 62, '2022-10-05'),
(162, 'eee8f18180db3ab320394905bf241c4e', 62, '2022-10-05'),
(163, 'f49b3888f10251a1a589893bbc84f35b', 59, '2022-10-05'),
(164, 'd554e03d59ed34f37e87ee0bbd11f905', 63, '2022-10-08'),
(165, '7ccdb9d5c5f0db8cee60e90b969bf180', 64, '2022-10-08'),
(166, 'd96e740de47f3611c8667d8e0ae6c203', 65, '2022-10-08'),
(167, '41fa2033174ac4e8697c57fc275ceb27', 63, '2022-10-09'),
(168, '97048604e9896968a0f55c0c220f583f', 62, '2022-10-10'),
(169, '8cf53f634b7bcc585df88d5ad2a82fce', 65, '2022-11-06'),
(170, '984243e69abc43d5f902cc89d20d2a4b', 65, '2022-11-06'),
(171, 'be84a66515d53dfc24ab290e6b9c7a27', 65, '2022-11-06'),
(172, '950aae7ebead36a2aff0932b28bb6403', 65, '2022-11-06'),
(173, 'cf08ae7d778624542122e3902f9eeef3', 63, '2022-11-06'),
(174, '67a180b6633a1455f361880db802655f', 66, '2022-11-08'),
(175, 'c9e2511bb550506f26c47fb13ed33b5a', 63, '2022-11-08'),
(176, 'ca58e989bccdc3fc1397a330b322e3b8', 63, '2022-11-08'),
(177, '22b3bcb3995792d048da3977318afda5', 63, '2022-11-08'),
(178, 'af3d69262d88a5fed539430d69cd534d', 63, '2022-11-08'),
(179, 'b181f9f8819f4af5500b3833ae04da58', 67, '2023-03-20'),
(180, 'a525af9ee6050a630bde8559be4ebd71', 67, '2023-03-20'),
(181, '2651d96a3f50715a0a9af08033c9aa8a', 67, '2023-03-20'),
(182, 'd5013fb8938d4411d5ac348d9182c002', 67, '2023-03-20'),
(183, '3e7055fcf010822ea92ccf80560f9803', 67, '2023-03-27'),
(184, 'd3ba5eef032e57d27f4648da7be8a3e8', 67, '2023-03-28'),
(185, '778a976ca53f866dc30f73fad6259e48', 67, '2023-03-28'),
(186, 'c2ab674bf69ff2a3d22b623c9676842d', 67, '2023-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `district` mediumint(9) DEFAULT NULL,
  `village` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` mediumint(9) DEFAULT NULL,
  `phone_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `box_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temporary_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user`, `district`, `village`, `country`, `phone_no`, `box_no`, `company`, `email`, `street`, `temporary_id`) VALUES
(29, 59, 9, 'Kampala, Central Region, Uganda', 1, '+256759800742', '', 'Boosted Technologies LTD', 'developer@boostedtechs.com', 'Buziga - kampala U', NULL),
(30, 62, 26, 'Kampala', 1, '0705098174', '', 'Boosted technologies LTD', 'boosted_api@boostedtechs.com', 'Buziga - Kampala Uganda', NULL),
(31, 63, 57, 'Kampala', 1, '+256784565201', 'kasubi-namungoona', 'Boosted technologies Uganda', 'ashrikan@gmail.com', 'kasubi-namungoona', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2023-04-15 14:24:57'),
(3, 0, 4, 'System users', 'fa-users', 'auth/users', NULL, NULL, '2023-05-17 19:05:51'),
(19, 0, 5, 'Edit my profile', 'fa-edit', 'auth/setting', NULL, '2023-01-02 09:32:35', '2023-05-17 19:05:41'),
(55, 0, 3, 'Product categories', 'fa-adjust', 'product-categories', NULL, '2023-05-17 19:05:36', '2023-05-17 19:05:41'),
(56, 0, 2, 'Delivery Addresses', 'fa-map-pin', 'delivery-addresses', NULL, '2024-03-14 03:51:35', '2024-03-14 03:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'products', 'GET', '127.0.0.1', '[]', '2023-04-22 09:06:40', '2023-04-22 09:06:40'),
(2, 1, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-22 09:06:41', '2023-04-22 09:06:41'),
(3, 1, 'quotations', 'GET', '127.0.0.1', '[]', '2023-04-22 09:42:36', '2023-04-22 09:42:36'),
(4, 1, '/', 'GET', '127.0.0.1', '[]', '2023-04-24 03:49:00', '2023-04-24 03:49:00'),
(5, 1, 'auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-24 03:49:05', '2023-04-24 03:49:05'),
(6, 1, 'auth/setting', 'GET', '127.0.0.1', '[]', '2023-04-24 03:51:45', '2023-04-24 03:51:45'),
(7, 1, '/', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-24 04:03:21', '2023-04-24 04:03:21'),
(8, 1, '/', 'GET', '127.0.0.1', '[]', '2023-04-24 04:28:46', '2023-04-24 04:28:46'),
(9, 1, '/', 'GET', '::1', '[]', '2023-04-24 06:23:46', '2023-04-24 06:23:46'),
(10, 1, '/', 'GET', '41.210.146.31', '[]', '2023-04-24 06:47:52', '2023-04-24 06:47:52'),
(11, 1, 'products', 'GET', '41.210.146.31', '{\"_pjax\":\"#pjax-container\"}', '2023-04-24 06:47:57', '2023-04-24 06:47:57'),
(12, 1, 'products', 'GET', '41.210.146.31', '[]', '2023-04-24 06:47:58', '2023-04-24 06:47:58'),
(13, 1, '/', 'GET', '41.75.170.179', '[]', '2023-04-30 11:21:54', '2023-04-30 11:21:54'),
(14, 1, 'auth/login', 'GET', '41.75.171.14', '[]', '2023-05-17 17:40:44', '2023-05-17 17:40:44'),
(15, 1, '/', 'GET', '41.75.171.14', '[]', '2023-05-17 17:40:44', '2023-05-17 17:40:44'),
(16, 1, 'product-categories/28/edit', 'GET', '41.75.171.14', '[]', '2023-05-17 17:41:22', '2023-05-17 17:41:22'),
(17, 1, 'product-categories', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 17:42:00', '2023-05-17 17:42:00'),
(18, 1, 'product-categories/34/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 17:42:16', '2023-05-17 17:42:16'),
(19, 1, 'product-categories/34', 'PUT', '41.75.171.14', '{\"category\":\"Women\",\"status\":\"off\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-03-28 09:59:19\",\"url\":\"https:\\/\\/women-039-s-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"banner_image\":null,\"show_in_banner\":null,\"show_in_categories\":null,\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 17:42:51', '2023-05-17 17:42:51'),
(20, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 17:42:51', '2023-05-17 17:42:51'),
(21, 1, 'product-categories/34/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 17:42:58', '2023-05-17 17:42:58'),
(22, 1, 'product-categories/34', 'PUT', '41.75.171.14', '{\"category\":\"Women\",\"status\":\"off\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-05-18 05:42:51\",\"url\":\"https:\\/\\/women-039-s-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"banner_image\":null,\"show_in_banner\":null,\"show_in_categories\":null,\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 17:59:47', '2023-05-17 17:59:47'),
(23, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 17:59:47', '2023-05-17 17:59:47'),
(24, 1, 'product-categories/33/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 18:00:24', '2023-05-17 18:00:24'),
(25, 1, 'product-categories/33', 'PUT', '41.75.171.14', '{\"category\":\"Men\",\"status\":\"off\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-03-28 09:59:19\",\"url\":\"https:\\/\\/men-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"banner_image\":null,\"show_in_banner\":\"No\",\"show_in_categories\":null,\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 18:04:45', '2023-05-17 18:04:45'),
(26, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 18:04:45', '2023-05-17 18:04:45'),
(27, 1, 'product-categories/32/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 18:08:40', '2023-05-17 18:08:40'),
(28, 1, 'product-categories/32', 'PUT', '41.75.171.14', '{\"category\":\"KIDS\",\"status\":\"on\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-03-19 15:43:41\",\"url\":\"https:\\/\\/as\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"banner_image\":null,\"show_in_banner\":\"No\",\"show_in_categories\":null,\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 18:09:07', '2023-05-17 18:09:07'),
(29, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 18:09:08', '2023-05-17 18:09:08'),
(30, 1, 'product-categories/31/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 18:10:59', '2023-05-17 18:10:59'),
(31, 1, 'product-categories/31', 'PUT', '41.75.171.14', '{\"category\":\"ACCESORIES\",\"status\":\"on\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-03-19 15:42:55\",\"url\":\"https:\\/\\/laptops\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"banner_image\":null,\"show_in_banner\":\"No\",\"show_in_categories\":null,\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 18:11:43', '2023-05-17 18:11:43'),
(32, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 18:11:44', '2023-05-17 18:11:44'),
(33, 1, 'product-categories/30/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 18:12:12', '2023-05-17 18:12:12'),
(34, 1, 'product-categories/30', 'PUT', '41.75.171.14', '{\"category\":\"Phones\",\"status\":\"on\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-03-19 15:42:10\",\"url\":\"https:\\/\\/Accessories\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"banner_image\":null,\"show_in_banner\":\"No\",\"show_in_categories\":null,\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 18:15:06', '2023-05-17 18:15:06'),
(35, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 18:15:07', '2023-05-17 18:15:07'),
(36, 1, 'product-categories/29/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 18:20:41', '2023-05-17 18:20:41'),
(37, 1, 'product-categories/29', 'PUT', '41.75.171.14', '{\"category\":\"Computers\",\"status\":\"on\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-03-19 15:41:29\",\"url\":\"https:\\/\\/computers\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"banner_image\":null,\"show_in_banner\":null,\"show_in_categories\":null,\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 18:20:58', '2023-05-17 18:20:58'),
(38, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 18:20:59', '2023-05-17 18:20:59'),
(39, 1, 'product-categories/29/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 18:21:11', '2023-05-17 18:21:11'),
(40, 1, 'product-categories', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 18:21:16', '2023-05-17 18:21:16'),
(41, 1, 'product-categories/28/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 18:23:53', '2023-05-17 18:23:53'),
(42, 1, 'product-categories/28', 'PUT', '41.75.171.14', '{\"category\":\"Electronics\",\"status\":\"on\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-03-19 15:39:54\",\"url\":\"http:\\/\\/phone\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"banner_image\":null,\"show_in_banner\":null,\"show_in_categories\":null,\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 18:24:09', '2023-05-17 18:24:09'),
(43, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 18:24:10', '2023-05-17 18:24:10'),
(44, 1, 'product-categories/create', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 18:24:13', '2023-05-17 18:24:13'),
(45, 1, 'product-categories', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 18:27:55', '2023-05-17 18:27:55'),
(46, 1, 'product-categories/create', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 18:27:58', '2023-05-17 18:27:58'),
(47, 1, 'product-categories', 'POST', '41.75.171.14', '{\"category\":\"Others\",\"status\":\"on\",\"user\":\"1\",\"date_created\":\"2023-05-18\",\"date_updated\":\"2023-05-18 00:27:58\",\"url\":\"https:\\/\\/phone\",\"default_amount\":\"6000\",\"image_origin\":\"1\",\"banner_image\":null,\"show_in_banner\":\"No\",\"show_in_categories\":null,\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 18:28:39', '2023-05-17 18:28:39'),
(48, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 18:28:40', '2023-05-17 18:28:40'),
(49, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 19:02:45', '2023-05-17 19:02:45'),
(50, 1, 'auth/menu', 'GET', '41.75.171.14', '[]', '2023-05-17 19:03:06', '2023-05-17 19:03:06'),
(51, 1, 'auth/menu/46', 'DELETE', '41.75.171.14', '{\"_method\":\"delete\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\"}', '2023-05-17 19:03:36', '2023-05-17 19:03:36'),
(52, 1, 'auth/menu', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:03:37', '2023-05-17 19:03:37'),
(53, 1, 'auth/menu/50', 'DELETE', '41.75.171.14', '{\"_method\":\"delete\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\"}', '2023-05-17 19:03:51', '2023-05-17 19:03:51'),
(54, 1, 'auth/menu', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:03:52', '2023-05-17 19:03:52'),
(55, 1, 'auth/menu/53', 'DELETE', '41.75.171.14', '{\"_method\":\"delete\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\"}', '2023-05-17 19:04:08', '2023-05-17 19:04:08'),
(56, 1, 'auth/menu', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:04:08', '2023-05-17 19:04:08'),
(57, 1, 'auth/menu/51', 'DELETE', '41.75.171.14', '{\"_method\":\"delete\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\"}', '2023-05-17 19:04:15', '2023-05-17 19:04:15'),
(58, 1, 'auth/menu', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:04:15', '2023-05-17 19:04:15'),
(59, 1, 'auth/menu/54', 'DELETE', '41.75.171.14', '{\"_method\":\"delete\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\"}', '2023-05-17 19:04:23', '2023-05-17 19:04:23'),
(60, 1, 'auth/menu', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:04:23', '2023-05-17 19:04:23'),
(61, 1, 'auth/menu/49', 'DELETE', '41.75.171.14', '{\"_method\":\"delete\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\"}', '2023-05-17 19:04:27', '2023-05-17 19:04:27'),
(62, 1, 'auth/menu', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:04:28', '2023-05-17 19:04:28'),
(63, 1, 'auth/menu/52', 'DELETE', '41.75.171.14', '{\"_method\":\"delete\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\"}', '2023-05-17 19:04:36', '2023-05-17 19:04:36'),
(64, 1, 'auth/menu', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:04:36', '2023-05-17 19:04:36'),
(65, 1, 'auth/menu', 'POST', '41.75.171.14', '{\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":48},{\\\"id\\\":3},{\\\"id\\\":19}]\"}', '2023-05-17 19:04:47', '2023-05-17 19:04:47'),
(66, 1, 'auth/menu', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:04:47', '2023-05-17 19:04:47'),
(67, 1, 'auth/menu', 'GET', '41.75.171.14', '[]', '2023-05-17 19:04:48', '2023-05-17 19:04:48'),
(68, 1, '/', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:04:50', '2023-05-17 19:04:50'),
(69, 1, 'products', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:04:56', '2023-05-17 19:04:56'),
(70, 1, 'auth/menu', 'GET', '41.75.171.14', '[]', '2023-05-17 19:05:20', '2023-05-17 19:05:20'),
(71, 1, 'auth/menu', 'POST', '41.75.171.14', '{\"parent_id\":\"0\",\"title\":\"Product categories\",\"icon\":\"fa-adjust\",\"uri\":\"product-categories\",\"roles\":[null],\"permission\":null,\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\"}', '2023-05-17 19:05:36', '2023-05-17 19:05:36'),
(72, 1, 'auth/menu', 'GET', '41.75.171.14', '[]', '2023-05-17 19:05:36', '2023-05-17 19:05:36'),
(73, 1, 'auth/menu', 'POST', '41.75.171.14', '{\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":48},{\\\"id\\\":55},{\\\"id\\\":3},{\\\"id\\\":19}]\"}', '2023-05-17 19:05:41', '2023-05-17 19:05:41'),
(74, 1, 'auth/menu', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:05:42', '2023-05-17 19:05:42'),
(75, 1, 'auth/menu/3/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:05:43', '2023-05-17 19:05:43'),
(76, 1, 'auth/menu/3', 'PUT', '41.75.171.14', '{\"parent_id\":\"0\",\"title\":\"System users\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/auth\\/menu\"}', '2023-05-17 19:05:51', '2023-05-17 19:05:51'),
(77, 1, 'auth/menu', 'GET', '41.75.171.14', '[]', '2023-05-17 19:05:52', '2023-05-17 19:05:52'),
(78, 1, 'auth/menu', 'GET', '41.75.171.14', '[]', '2023-05-17 19:05:57', '2023-05-17 19:05:57'),
(79, 1, 'product-categories', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:06:02', '2023-05-17 19:06:02'),
(80, 1, 'product-categories/28/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:06:08', '2023-05-17 19:06:08'),
(81, 1, 'product-categories/28', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 06:24:09\",\"url\":\"http:\\/\\/phone\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Electronics\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"after-save\":\"2\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 19:06:23', '2023-05-17 19:06:23'),
(82, 1, 'product-categories/create', 'GET', '41.75.171.14', '[]', '2023-05-17 19:06:24', '2023-05-17 19:06:24'),
(83, 1, 'product-categories', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:06:26', '2023-05-17 19:06:26'),
(84, 1, 'product-categories/29/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:06:29', '2023-05-17 19:06:29'),
(85, 1, 'product-categories/29', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 06:20:58\",\"url\":\"https:\\/\\/computers\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Computers\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"after-save\":\"2\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 19:06:40', '2023-05-17 19:06:40'),
(86, 1, 'product-categories/create', 'GET', '41.75.171.14', '[]', '2023-05-17 19:06:41', '2023-05-17 19:06:41'),
(87, 1, 'product-categories', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:06:42', '2023-05-17 19:06:42'),
(88, 1, 'product-categories/35/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:06:46', '2023-05-17 19:06:46'),
(89, 1, 'product-categories/35', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"1\",\"date_created\":\"2023-05-18\",\"date_updated\":\"2023-05-18 00:27:58\",\"url\":\"https:\\/\\/phone\",\"default_amount\":\"6000\",\"image_origin\":\"1\",\"category\":\"Others\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 19:06:53', '2023-05-17 19:06:53'),
(90, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 19:06:54', '2023-05-17 19:06:54'),
(91, 1, 'product-categories/34/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:06:57', '2023-05-17 19:06:57'),
(92, 1, 'product-categories/34', 'PUT', '41.75.171.14', '{\"status\":\"0\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-05-18 05:59:47\",\"url\":\"https:\\/\\/women-039-s-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Women\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 19:07:03', '2023-05-17 19:07:03'),
(93, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 19:07:04', '2023-05-17 19:07:04'),
(94, 1, 'product-categories/33/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:07:08', '2023-05-17 19:07:08'),
(95, 1, 'product-categories/33', 'PUT', '41.75.171.14', '{\"status\":\"0\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-05-18 06:04:45\",\"url\":\"https:\\/\\/men-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Men\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 19:07:20', '2023-05-17 19:07:20'),
(96, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 19:07:20', '2023-05-17 19:07:20'),
(97, 1, 'product-categories/32/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:07:24', '2023-05-17 19:07:24'),
(98, 1, 'product-categories/32', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 06:09:07\",\"url\":\"https:\\/\\/as\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"KIDS\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 19:07:32', '2023-05-17 19:07:32'),
(99, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 19:07:32', '2023-05-17 19:07:32'),
(100, 1, 'product-categories/31/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:07:38', '2023-05-17 19:07:38'),
(101, 1, 'product-categories/31', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 06:11:43\",\"url\":\"https:\\/\\/laptops\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"ACCESORIES\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 19:07:42', '2023-05-17 19:07:42'),
(102, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 19:07:43', '2023-05-17 19:07:43'),
(103, 1, 'product-categories/30/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:07:46', '2023-05-17 19:07:46'),
(104, 1, 'product-categories/30', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 06:15:06\",\"url\":\"https:\\/\\/Accessories\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Phones\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 19:07:52', '2023-05-17 19:07:52'),
(105, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 19:07:52', '2023-05-17 19:07:52'),
(106, 1, 'product-categories/28/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:07:58', '2023-05-17 19:07:58'),
(107, 1, 'product-categories/28/edit', 'GET', '41.75.171.14', '[]', '2023-05-17 19:08:34', '2023-05-17 19:08:34'),
(108, 1, 'product-categories/28/edit', 'GET', '41.75.171.14', '[]', '2023-05-17 19:08:53', '2023-05-17 19:08:53'),
(109, 1, 'product-categories/28', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 07:06:23\",\"url\":\"http:\\/\\/phone\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Electronics\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-05-17 19:09:08', '2023-05-17 19:09:08'),
(110, 1, 'product-categories/28/edit', 'GET', '41.75.171.14', '[]', '2023-05-17 19:09:09', '2023-05-17 19:09:09'),
(111, 1, 'product-categories/29/edit', 'GET', '41.75.171.14', '[]', '2023-05-17 19:09:13', '2023-05-17 19:09:13'),
(112, 1, 'product-categories/29', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 07:06:40\",\"url\":\"https:\\/\\/computers\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Computers\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\\/28\\/edit\"}', '2023-05-17 19:09:22', '2023-05-17 19:09:22'),
(113, 1, 'product-categories/29/edit', 'GET', '41.75.171.14', '[]', '2023-05-17 19:09:23', '2023-05-17 19:09:23'),
(114, 1, 'product-categories/30/edit', 'GET', '41.75.171.14', '[]', '2023-05-17 19:09:27', '2023-05-17 19:09:27'),
(115, 1, 'product-categories/30', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 07:07:52\",\"url\":\"https:\\/\\/Accessories\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Phones\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\\/29\\/edit\"}', '2023-05-17 19:09:40', '2023-05-17 19:09:40'),
(116, 1, 'product-categories/30/edit', 'GET', '41.75.171.14', '[]', '2023-05-17 19:09:41', '2023-05-17 19:09:41'),
(117, 1, 'product-categories/31/edit', 'GET', '41.75.171.14', '[]', '2023-05-17 19:09:46', '2023-05-17 19:09:46'),
(118, 1, 'product-categories/31', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 07:07:42\",\"url\":\"https:\\/\\/laptops\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"ACCESORIES\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\\/30\\/edit\"}', '2023-05-17 19:09:53', '2023-05-17 19:09:53'),
(119, 1, 'product-categories/31/edit', 'GET', '41.75.171.14', '[]', '2023-05-17 19:09:54', '2023-05-17 19:09:54'),
(120, 1, 'product-categories', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:09:56', '2023-05-17 19:09:56'),
(121, 1, 'product-categories/28/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:10:04', '2023-05-17 19:10:04'),
(122, 1, 'product-categories/28', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 07:09:08\",\"url\":\"http:\\/\\/phone\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Electronics\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 19:10:09', '2023-05-17 19:10:09'),
(123, 1, 'product-categories/28/edit', 'GET', '41.75.171.14', '[]', '2023-05-17 19:10:10', '2023-05-17 19:10:10'),
(124, 1, 'product-categories/28', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 07:09:08\",\"url\":\"http:\\/\\/phone\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Electronics\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\"}', '2023-05-17 19:10:13', '2023-05-17 19:10:13'),
(125, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 19:10:13', '2023-05-17 19:10:13'),
(126, 1, 'product-categories/29/edit', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:10:16', '2023-05-17 19:10:16'),
(127, 1, 'product-categories/29', 'PUT', '41.75.171.14', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 07:09:22\",\"url\":\"https:\\/\\/computers\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Computers\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"Z8frGh9fDaimXQpOf5FIOR01wv6upfYtwgMiP8i3\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-17 19:10:20', '2023-05-17 19:10:20'),
(128, 1, 'product-categories', 'GET', '41.75.171.14', '[]', '2023-05-17 19:10:20', '2023-05-17 19:10:20'),
(129, 1, '/', 'GET', '41.75.171.14', '[]', '2023-05-17 19:15:55', '2023-05-17 19:15:55'),
(130, 1, 'products', 'GET', '41.75.171.14', '{\"_pjax\":\"#pjax-container\"}', '2023-05-17 19:16:04', '2023-05-17 19:16:04'),
(131, 1, '/', 'GET', '41.191.78.161', '[]', '2023-05-18 03:28:49', '2023-05-18 03:28:49'),
(132, 1, 'product-categories', 'GET', '41.191.78.161', '[]', '2023-05-18 03:30:05', '2023-05-18 03:30:05'),
(133, 1, 'product-categories/28/edit', 'GET', '41.191.78.161', '{\"_pjax\":\"#pjax-container\"}', '2023-05-18 03:31:51', '2023-05-18 03:31:51'),
(134, 1, '/', 'GET', '41.75.172.161', '[]', '2023-05-19 22:52:33', '2023-05-19 22:52:33'),
(135, 1, '/', 'GET', '41.75.172.161', '[]', '2023-05-19 23:10:50', '2023-05-19 23:10:50'),
(136, 1, 'product-categories', 'GET', '41.75.172.161', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 23:10:54', '2023-05-19 23:10:54'),
(137, 1, 'auth/users', 'GET', '41.75.172.161', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 23:10:59', '2023-05-19 23:10:59'),
(138, 1, 'auth/setting', 'GET', '41.75.172.161', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 23:11:11', '2023-05-19 23:11:11'),
(139, 1, 'auth/users', 'GET', '41.75.172.161', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 23:11:14', '2023-05-19 23:11:14'),
(140, 1, 'products', 'GET', '41.75.172.161', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 23:11:15', '2023-05-19 23:11:15'),
(141, 1, 'products/181/edit', 'GET', '41.75.172.161', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 23:11:20', '2023-05-19 23:11:20'),
(142, 1, 'product-categories', 'GET', '41.75.172.161', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 23:11:23', '2023-05-19 23:11:23'),
(143, 1, 'product-categories/28/edit', 'GET', '41.75.172.161', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 23:11:28', '2023-05-19 23:11:28'),
(144, 1, 'auth/setting', 'GET', '41.75.172.161', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 23:11:38', '2023-05-19 23:11:38'),
(145, 1, 'auth/logout', 'GET', '41.75.172.161', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 23:11:50', '2023-05-19 23:11:50'),
(146, 1, '/', 'GET', '41.75.172.161', '[]', '2023-05-19 23:11:59', '2023-05-19 23:11:59'),
(147, 1, '/', 'GET', '41.75.172.161', '[]', '2023-05-20 00:11:59', '2023-05-20 00:11:59'),
(148, 1, 'product-categories', 'GET', '41.75.172.161', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 00:12:03', '2023-05-20 00:12:03'),
(149, 1, '/', 'GET', '41.75.172.161', '[]', '2023-05-20 00:25:38', '2023-05-20 00:25:38'),
(150, 1, '/', 'GET', '197.239.7.134', '[]', '2023-05-20 00:39:25', '2023-05-20 00:39:25'),
(151, 1, '/', 'GET', '198.16.74.44', '[]', '2023-05-20 12:38:41', '2023-05-20 12:38:41'),
(152, 1, 'products', 'GET', '198.16.74.205', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 12:39:07', '2023-05-20 12:39:07'),
(153, 1, 'products/create', 'GET', '198.16.66.139', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 12:39:24', '2023-05-20 12:39:24'),
(154, 1, 'products', 'POST', '198.16.66.139', '{\"administrator_id\":\"1\",\"name\":\"Travel Mug\",\"price\":null,\"details\":\"<p><br><\\/p>\",\"_token\":\"ATRwdIJHoFQxrocY3Dz0moPfxelItncVh7m5lekL\",\"after-save\":\"3\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/products\"}', '2023-05-20 12:39:45', '2023-05-20 12:39:45'),
(155, 1, 'products/create', 'GET', '198.16.66.139', '[]', '2023-05-20 12:39:46', '2023-05-20 12:39:46'),
(156, 1, 'products', 'POST', '62.212.64.17', '{\"administrator_id\":\"1\",\"name\":\"MEN Suits\",\"price\":\"45\",\"details\":\"<p>MEN Suits<\\/p>\",\"_token\":\"ATRwdIJHoFQxrocY3Dz0moPfxelItncVh7m5lekL\"}', '2023-05-20 12:40:52', '2023-05-20 12:40:52'),
(157, 1, 'products', 'GET', '62.212.64.17', '[]', '2023-05-20 12:40:52', '2023-05-20 12:40:52'),
(158, 1, 'products/create', 'GET', '62.212.64.17', '[]', '2023-05-20 12:40:52', '2023-05-20 12:40:52'),
(159, 1, 'auth/users', 'GET', '62.212.64.17', '[]', '2023-05-20 12:40:53', '2023-05-20 12:40:53'),
(160, 1, 'products', 'GET', '62.212.64.17', '[]', '2023-05-20 12:41:10', '2023-05-20 12:41:10'),
(161, 1, 'products/create', 'GET', '198.16.74.45', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 12:41:50', '2023-05-20 12:41:50'),
(162, 1, 'products', 'POST', '198.16.74.45', '{\"administrator_id\":\"1\",\"name\":\"MEN Suits\",\"price\":\"30000\",\"details\":\"<p>MEN Suits<\\/p>\",\"_token\":\"ATRwdIJHoFQxrocY3Dz0moPfxelItncVh7m5lekL\",\"after-save\":\"1\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/products\"}', '2023-05-20 12:42:26', '2023-05-20 12:42:26'),
(163, 1, 'products/create', 'GET', '198.16.74.45', '[]', '2023-05-20 12:42:27', '2023-05-20 12:42:27'),
(164, 1, 'products', 'POST', '50.7.93.84', '{\"administrator_id\":\"1\",\"name\":\"MEN Suits\",\"price\":\"30000\",\"details\":\"<p>MEN Suits<\\/p>\",\"_token\":\"ATRwdIJHoFQxrocY3Dz0moPfxelItncVh7m5lekL\",\"after-save\":\"3\"}', '2023-05-20 12:42:50', '2023-05-20 12:42:50'),
(165, 1, 'products/create', 'GET', '50.7.93.84', '[]', '2023-05-20 12:42:51', '2023-05-20 12:42:51'),
(166, 1, 'auth/setting', 'GET', '198.16.66.196', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 12:43:23', '2023-05-20 12:43:23'),
(167, 1, '/', 'GET', '198.16.66.196', '[]', '2023-05-20 12:43:46', '2023-05-20 12:43:46'),
(168, 1, 'auth/setting', 'GET', '198.16.74.44', '[]', '2023-05-20 12:43:50', '2023-05-20 12:43:50'),
(169, 1, '/', 'GET', '198.16.74.44', '[]', '2023-05-20 12:44:12', '2023-05-20 12:44:12'),
(170, 1, 'product-categories', 'GET', '198.16.66.196', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 12:44:32', '2023-05-20 12:44:32'),
(171, 1, 'auth/users', 'GET', '198.16.66.196', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 12:44:42', '2023-05-20 12:44:42'),
(172, 1, 'auth/setting', 'GET', '198.16.66.139', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 12:46:31', '2023-05-20 12:46:31'),
(173, 1, 'products', 'GET', '198.16.66.139', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 12:46:32', '2023-05-20 12:46:32'),
(174, 1, '/', 'GET', '62.212.64.18', '[]', '2023-05-21 11:17:03', '2023-05-21 11:17:03'),
(175, 1, 'product-categories', 'GET', '50.7.142.180', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 11:17:11', '2023-05-21 11:17:11'),
(176, 1, 'products', 'GET', '50.7.142.180', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 11:17:40', '2023-05-21 11:17:40'),
(177, 1, '/', 'GET', '50.7.142.180', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 11:18:16', '2023-05-21 11:18:16'),
(178, 1, 'auth/users', 'GET', '198.16.70.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 11:20:50', '2023-05-21 11:20:50'),
(179, 1, 'product-categories', 'GET', '198.16.70.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 11:20:57', '2023-05-21 11:20:57'),
(180, 1, 'product-categories/28/edit', 'GET', '198.16.70.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 11:21:07', '2023-05-21 11:21:07'),
(181, 1, 'product-categories', 'GET', '198.16.70.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 11:21:56', '2023-05-21 11:21:56'),
(182, 1, 'product-categories/29/edit', 'GET', '198.16.70.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 11:22:02', '2023-05-21 11:22:02'),
(183, 1, 'auth/users', 'GET', '198.16.70.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 11:22:44', '2023-05-21 11:22:44'),
(184, 1, 'auth/users/12/edit', 'GET', '198.16.70.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 11:22:48', '2023-05-21 11:22:48'),
(185, 1, 'auth/users/12', 'PUT', '198.16.70.29', '{\"username\":\"walusansa@gmail.com\",\"name\":\"Yahaya\",\"password\":\"$2y$10$ouzfOWY6dFDUQenu9IDzDOz.rmPmpDk7haVFqp3SsFJErgXjkielO\",\"password_confirmation\":\"$2y$10$ouzfOWY6dFDUQenu9IDzDOz.rmPmpDk7haVFqp3SsFJErgXjkielO\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"PffZ81gywlu4EWFdwxsRKQyzbqjGckRZk4ADKYha\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/auth\\/users\"}', '2023-05-21 11:23:03', '2023-05-21 11:23:03'),
(186, 1, 'auth/users', 'GET', '198.16.70.29', '[]', '2023-05-21 11:23:04', '2023-05-21 11:23:04'),
(187, 1, 'auth/users', 'GET', '198.16.70.29', '{\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2023-05-21 11:23:22', '2023-05-21 11:23:22'),
(188, 1, 'auth/users', 'GET', '198.16.70.29', '{\"_pjax\":\"#pjax-container\",\"page\":\"5\"}', '2023-05-21 11:23:32', '2023-05-21 11:23:32'),
(189, 1, 'auth/users', 'GET', '198.16.70.29', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2023-05-21 11:23:43', '2023-05-21 11:23:43'),
(190, 1, 'auth/users/12/edit', 'GET', '198.16.70.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 11:23:49', '2023-05-21 11:23:49'),
(191, 1, 'auth/users/12', 'PUT', '198.16.70.29', '{\"username\":\"walusansa@gmail.com\",\"name\":\"Yahaya\",\"password\":\"$2y$10$ouzfOWY6dFDUQenu9IDzDOz.rmPmpDk7haVFqp3SsFJErgXjkielO\",\"password_confirmation\":\"$2y$10$ouzfOWY6dFDUQenu9IDzDOz.rmPmpDk7haVFqp3SsFJErgXjkielO\",\"roles\":[null],\"permissions\":[null],\"_token\":\"PffZ81gywlu4EWFdwxsRKQyzbqjGckRZk4ADKYha\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/auth\\/users?&page=1\"}', '2023-05-21 11:24:01', '2023-05-21 11:24:01'),
(192, 1, 'auth/users', 'GET', '198.16.70.29', '{\"page\":\"1\"}', '2023-05-21 11:24:02', '2023-05-21 11:24:02'),
(193, 1, '/', 'GET', '198.16.74.44', '[]', '2023-05-21 12:37:01', '2023-05-21 12:37:01'),
(194, 1, 'products', 'GET', '198.16.76.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 12:39:20', '2023-05-21 12:39:20'),
(195, 1, 'products', 'GET', '198.16.74.43', '[]', '2023-05-21 12:39:32', '2023-05-21 12:39:32'),
(196, 1, 'products', 'GET', '198.16.76.29', '[]', '2023-05-21 12:44:11', '2023-05-21 12:44:11'),
(197, 1, 'product-categories', 'GET', '198.16.76.29', '[]', '2023-05-21 12:44:50', '2023-05-21 12:44:50'),
(198, 1, 'product-categories/32/edit', 'GET', '198.16.76.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 12:45:05', '2023-05-21 12:45:05'),
(199, 1, 'products/create', 'GET', '198.16.74.43', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 12:47:18', '2023-05-21 12:47:18'),
(200, 1, 'products', 'POST', '198.16.76.29', '{\"administrator_id\":\"1\",\"name\":\"MEN Suits\",\"price\":\"30000\",\"details\":\"<p>MEN Suits<\\/p>\",\"_token\":\"PffZ81gywlu4EWFdwxsRKQyzbqjGckRZk4ADKYha\"}', '2023-05-21 12:48:20', '2023-05-21 12:48:20'),
(201, 1, 'products/create', 'GET', '198.16.76.29', '[]', '2023-05-21 12:48:21', '2023-05-21 12:48:21'),
(202, 1, '/', 'GET', '50.7.142.180', '[]', '2023-05-21 13:09:48', '2023-05-21 13:09:48'),
(203, 1, 'products', 'GET', '198.16.76.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 14:57:04', '2023-05-21 14:57:04'),
(204, 1, 'product-categories', 'GET', '198.16.76.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 14:57:08', '2023-05-21 14:57:08'),
(205, 1, 'products', 'GET', '198.16.76.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 14:57:10', '2023-05-21 14:57:10'),
(206, 1, 'products/create', 'GET', '198.16.76.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 14:57:15', '2023-05-21 14:57:15'),
(207, 1, 'products', 'POST', '198.16.76.29', '{\"administrator_id\":\"1\",\"name\":\"MEN Suits\",\"price\":null,\"details\":\"<p><br><\\/p>\",\"_token\":\"PffZ81gywlu4EWFdwxsRKQyzbqjGckRZk4ADKYha\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/products\"}', '2023-05-21 14:57:35', '2023-05-21 14:57:35'),
(208, 1, 'products/create', 'GET', '198.16.76.29', '[]', '2023-05-21 14:57:36', '2023-05-21 14:57:36'),
(209, 1, 'products', 'POST', '198.16.76.29', '{\"administrator_id\":\"1\",\"name\":\"MEN Suits\",\"price\":\"56\",\"details\":\"<p>MEN Suits<\\/p>\",\"_token\":\"PffZ81gywlu4EWFdwxsRKQyzbqjGckRZk4ADKYha\",\"after-save\":\"1\"}', '2023-05-21 14:57:51', '2023-05-21 14:57:51'),
(210, 1, 'products/create', 'GET', '198.16.76.29', '[]', '2023-05-21 14:57:51', '2023-05-21 14:57:51'),
(211, 1, 'products', 'POST', '198.16.76.29', '{\"administrator_id\":\"1\",\"name\":\"MEN Suits\",\"price\":\"56\",\"details\":\"<p>MEN Suits<\\/p>\",\"_token\":\"PffZ81gywlu4EWFdwxsRKQyzbqjGckRZk4ADKYha\",\"after-save\":\"1\"}', '2023-05-21 14:58:09', '2023-05-21 14:58:09'),
(212, 1, 'products/create', 'GET', '198.16.76.29', '[]', '2023-05-21 14:58:09', '2023-05-21 14:58:09'),
(213, 1, 'products/create', 'GET', '198.16.76.29', '{\"_pjax\":\"#pjax-container\"}', '2023-05-21 15:15:07', '2023-05-21 15:15:07'),
(214, 1, '/', 'GET', '41.75.171.97', '[]', '2023-05-23 03:16:47', '2023-05-23 03:16:47'),
(215, 1, 'product-categories', 'GET', '41.75.171.97', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 03:16:58', '2023-05-23 03:16:58'),
(216, 1, 'product-categories/28/edit', 'GET', '41.75.171.97', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 03:17:02', '2023-05-23 03:17:02'),
(217, 1, 'product-categories/28', 'PUT', '41.75.171.97', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 07:10:13\",\"url\":\"http:\\/\\/phone\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Electronic\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"Pc4bVwRL7y9izhtg5xIx2bNnmX7poMcgmWBDRuzh\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-23 03:17:08', '2023-05-23 03:17:08'),
(218, 1, 'product-categories', 'GET', '41.75.171.97', '[]', '2023-05-23 03:17:09', '2023-05-23 03:17:09'),
(219, 1, 'product-categories/28/edit', 'GET', '41.75.171.97', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 03:17:19', '2023-05-23 03:17:19'),
(220, 1, 'product-categories/28', 'PUT', '41.75.171.97', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-23 15:17:08\",\"url\":\"http:\\/\\/phone\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Electronics\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"Pc4bVwRL7y9izhtg5xIx2bNnmX7poMcgmWBDRuzh\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-23 03:17:21', '2023-05-23 03:17:21'),
(221, 1, 'product-categories', 'GET', '41.75.171.97', '[]', '2023-05-23 03:17:22', '2023-05-23 03:17:22'),
(222, 1, 'auth/menu', 'GET', '41.75.171.97', '[]', '2023-05-23 03:17:29', '2023-05-23 03:17:29'),
(223, 1, 'products', 'GET', '41.75.171.97', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 03:17:37', '2023-05-23 03:17:37'),
(224, 1, 'products/182/edit', 'GET', '41.75.171.97', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 03:17:40', '2023-05-23 03:17:40'),
(225, 1, 'products/182', 'PUT', '41.75.171.97', '{\"administrator_id\":\"1\",\"name\":\"Wireless Microphone Mobile Live Broadcast Camera Radio Interview Recording Mini\",\"price\":null,\"details\":\"<p>Some details<\\/p>\",\"_token\":\"Pc4bVwRL7y9izhtg5xIx2bNnmX7poMcgmWBDRuzh\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/products\"}', '2023-05-23 03:17:55', '2023-05-23 03:17:55'),
(226, 1, 'products/182/edit', 'GET', '41.75.171.97', '[]', '2023-05-23 03:17:55', '2023-05-23 03:17:55'),
(227, 1, 'products/182', 'PUT', '41.75.171.97', '{\"administrator_id\":\"1\",\"name\":\"Wireless Microphone Mobile Live Broadcast Camera Radio Interview Recording Mini\",\"price\":null,\"details\":\"<p>Some details<\\/p>\",\"_token\":\"Pc4bVwRL7y9izhtg5xIx2bNnmX7poMcgmWBDRuzh\",\"_method\":\"PUT\"}', '2023-05-23 03:18:05', '2023-05-23 03:18:05'),
(228, 1, 'products/182/edit', 'GET', '41.75.171.97', '[]', '2023-05-23 03:18:05', '2023-05-23 03:18:05'),
(229, 1, 'products/182', 'PUT', '41.75.171.97', '{\"administrator_id\":\"1\",\"name\":\"Wireless Microphone Mobile Live Broadcast Camera Radio Interview Recording Mini\",\"price\":\"100000\",\"details\":\"<p>Some details<\\/p>\",\"_token\":\"Pc4bVwRL7y9izhtg5xIx2bNnmX7poMcgmWBDRuzh\",\"_method\":\"PUT\"}', '2023-05-23 03:18:15', '2023-05-23 03:18:15'),
(230, 1, 'products/182/edit', 'GET', '41.75.171.97', '[]', '2023-05-23 03:18:16', '2023-05-23 03:18:16'),
(231, 1, 'products', 'GET', '41.75.171.97', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 03:18:19', '2023-05-23 03:18:19'),
(232, 1, 'auth/menu', 'GET', '41.75.171.97', '[]', '2023-05-23 03:18:23', '2023-05-23 03:18:23'),
(233, 1, 'auth/menu/48', 'DELETE', '41.75.171.97', '{\"_method\":\"delete\",\"_token\":\"Pc4bVwRL7y9izhtg5xIx2bNnmX7poMcgmWBDRuzh\"}', '2023-05-23 03:18:31', '2023-05-23 03:18:31'),
(234, 1, 'auth/menu', 'GET', '41.75.171.97', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 03:18:31', '2023-05-23 03:18:31'),
(235, 1, '/', 'GET', '41.75.171.97', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 03:18:35', '2023-05-23 03:18:35'),
(236, 1, '/', 'GET', '41.75.171.97', '[]', '2023-05-23 03:21:29', '2023-05-23 03:21:29'),
(237, 1, 'product-categories', 'GET', '41.75.171.97', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 03:21:30', '2023-05-23 03:21:30'),
(238, 1, 'product-categories/31/edit', 'GET', '41.75.171.97', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 03:21:43', '2023-05-23 03:21:43'),
(239, 1, '/', 'GET', '41.75.179.196', '[]', '2023-05-23 10:12:14', '2023-05-23 10:12:14'),
(240, 1, 'product-categories', 'GET', '41.75.179.196', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 10:12:50', '2023-05-23 10:12:50'),
(241, 1, 'product-categories/create', 'GET', '41.75.179.196', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 10:13:40', '2023-05-23 10:13:40'),
(242, 1, 'product-categories', 'POST', '41.75.179.196', '{\"status\":\"1\",\"user\":\"1\",\"date_created\":\"2023-05-23\",\"date_updated\":\"2023-05-23 16:13:40\",\"url\":\"https:\\/\\/\",\"default_amount\":\"6000\",\"image_origin\":\"1\",\"category\":\"mens suits\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"j9dCGOZoOmL97wzkzYRJVrMt7itlerHdgSuWE2KK\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-23 10:15:00', '2023-05-23 10:15:00'),
(243, 1, 'product-categories', 'GET', '41.75.179.196', '[]', '2023-05-23 10:15:00', '2023-05-23 10:15:00'),
(244, 1, 'product-categories', 'GET', '41.75.179.196', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 10:15:27', '2023-05-23 10:15:27'),
(245, 1, '/', 'GET', '41.75.179.196', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 10:15:45', '2023-05-23 10:15:45'),
(246, 1, 'auth/users', 'GET', '41.75.179.196', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 10:15:49', '2023-05-23 10:15:49'),
(247, 1, 'product-categories', 'GET', '41.75.179.196', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 10:15:52', '2023-05-23 10:15:52'),
(248, 1, 'auth/users', 'GET', '41.75.179.196', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 10:16:09', '2023-05-23 10:16:09'),
(249, 1, 'auth/setting', 'GET', '41.75.179.196', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 10:16:12', '2023-05-23 10:16:12'),
(250, 1, '/', 'GET', '198.16.70.52', '[]', '2023-05-24 00:59:30', '2023-05-24 00:59:30'),
(251, 1, 'auth/users', 'GET', '198.16.70.52', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:01:26', '2023-05-24 01:01:26'),
(252, 1, 'product-categories', 'GET', '198.16.70.52', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:01:29', '2023-05-24 01:01:29'),
(253, 1, '/', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:01:39', '2023-05-24 01:01:39'),
(254, 1, 'product-categories', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:10:42', '2023-05-24 01:10:42'),
(255, 1, 'product-categories/33/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:10:47', '2023-05-24 01:10:47'),
(256, 1, 'product-categories/33', 'PUT', '62.212.64.18', '{\"status\":\"0\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-05-18 07:07:20\",\"url\":\"https:\\/\\/men-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Men\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 01:11:12', '2023-05-24 01:11:12'),
(257, 1, 'product-categories/33/edit', 'GET', '62.212.64.18', '[]', '2023-05-24 01:11:13', '2023-05-24 01:11:13'),
(258, 1, 'product-categories/33', 'PUT', '62.212.64.18', '{\"status\":\"0\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-05-24 13:11:12\",\"url\":\"https:\\/\\/men-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Men\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_method\":\"PUT\"}', '2023-05-24 01:11:18', '2023-05-24 01:11:18'),
(259, 1, 'product-categories', 'GET', '62.212.64.18', '[]', '2023-05-24 01:11:19', '2023-05-24 01:11:19'),
(260, 1, 'product-categories/33/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:16:42', '2023-05-24 01:16:42'),
(261, 1, 'product-categories', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:16:50', '2023-05-24 01:16:50'),
(262, 1, 'product-categories/36/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:16:58', '2023-05-24 01:16:58'),
(263, 1, 'product-categories/36', 'PUT', '62.212.64.18', '{\"status\":\"1\",\"user\":\"1\",\"date_created\":\"2023-05-23\",\"date_updated\":\"2023-05-23 16:13:40\",\"url\":\"https:\\/\\/\",\"default_amount\":\"6000\",\"image_origin\":\"1\",\"category\":\"mens suits\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 01:17:46', '2023-05-24 01:17:46'),
(264, 1, 'product-categories', 'GET', '62.212.64.18', '[]', '2023-05-24 01:17:47', '2023-05-24 01:17:47'),
(265, 1, 'product-categories/33/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:20:01', '2023-05-24 01:20:01'),
(266, 1, 'product-categories', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:20:06', '2023-05-24 01:20:06'),
(267, 1, 'product-categories/36/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:20:10', '2023-05-24 01:20:10'),
(268, 1, 'product-categories/36', 'PUT', '62.212.64.18', '{\"status\":\"1\",\"user\":\"1\",\"date_created\":\"2023-05-23\",\"date_updated\":\"2023-05-24 13:17:46\",\"url\":\"https:\\/\\/\",\"default_amount\":\"6000\",\"image_origin\":\"1\",\"category\":\"mens suits\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 01:20:39', '2023-05-24 01:20:39'),
(269, 1, 'product-categories', 'GET', '62.212.64.18', '[]', '2023-05-24 01:20:39', '2023-05-24 01:20:39'),
(270, 1, '_handle_action_', 'POST', '62.212.64.18', '{\"_key\":\"35\",\"_model\":\"App_Models_ProductCategory\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-24 01:21:21', '2023-05-24 01:21:21'),
(271, 1, 'product-categories', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:21:22', '2023-05-24 01:21:22'),
(272, 1, '/', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:21:46', '2023-05-24 01:21:46'),
(273, 1, 'product-categories', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:22:29', '2023-05-24 01:22:29'),
(274, 1, 'product-categories/28/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:22:40', '2023-05-24 01:22:40'),
(275, 1, 'product-categories/28', 'PUT', '62.212.64.18', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-23 15:17:21\",\"url\":\"http:\\/\\/phone\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Electronics\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"after-save\":\"2\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 01:22:50', '2023-05-24 01:22:50'),
(276, 1, 'product-categories/create', 'GET', '62.212.64.18', '[]', '2023-05-24 01:22:51', '2023-05-24 01:22:51');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(277, 1, 'auth/users', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:23:05', '2023-05-24 01:23:05'),
(278, 1, 'product-categories', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:23:27', '2023-05-24 01:23:27'),
(279, 1, 'product-categories/34/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:23:33', '2023-05-24 01:23:33'),
(280, 1, 'product-categories', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:23:42', '2023-05-24 01:23:42'),
(281, 1, 'product-categories/33/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:23:52', '2023-05-24 01:23:52'),
(282, 1, 'product-categories/33', 'PUT', '62.212.64.18', '{\"status\":\"0\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-05-24 13:11:12\",\"url\":\"https:\\/\\/men-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Men\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 01:24:59', '2023-05-24 01:24:59'),
(283, 1, 'product-categories', 'GET', '62.212.64.18', '[]', '2023-05-24 01:24:59', '2023-05-24 01:24:59'),
(284, 1, 'product-categories/33/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:26:16', '2023-05-24 01:26:16'),
(285, 1, 'product-categories/33', 'PUT', '62.212.64.18', '{\"status\":\"0\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-05-24 13:24:59\",\"url\":\"https:\\/\\/men-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Men\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 01:26:48', '2023-05-24 01:26:48'),
(286, 1, 'product-categories', 'GET', '62.212.64.18', '[]', '2023-05-24 01:26:48', '2023-05-24 01:26:48'),
(287, 1, 'product-categories/33/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:27:20', '2023-05-24 01:27:20'),
(288, 1, 'product-categories/33', 'PUT', '62.212.64.18', '{\"status\":\"0\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-05-24 13:26:48\",\"url\":\"https:\\/\\/men-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Men\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 01:27:39', '2023-05-24 01:27:39'),
(289, 1, 'product-categories', 'GET', '62.212.64.18', '[]', '2023-05-24 01:27:39', '2023-05-24 01:27:39'),
(290, 1, 'product-categories/33/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:31:58', '2023-05-24 01:31:58'),
(291, 1, 'product-categories/33', 'PUT', '62.212.64.18', '{\"status\":\"0\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-05-24 13:27:39\",\"url\":\"https:\\/\\/men-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Men\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 01:35:12', '2023-05-24 01:35:12'),
(292, 1, 'product-categories', 'GET', '62.212.64.18', '[]', '2023-05-24 01:35:13', '2023-05-24 01:35:13'),
(293, 1, 'product-categories/36/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:35:44', '2023-05-24 01:35:44'),
(294, 1, 'product-categories/36', 'PUT', '62.212.64.18', '{\"status\":\"1\",\"user\":\"1\",\"date_created\":\"2023-05-23\",\"date_updated\":\"2023-05-24 13:20:39\",\"url\":\"https:\\/\\/\",\"default_amount\":\"6000\",\"image_origin\":\"1\",\"category\":\"mens suits\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 01:36:25', '2023-05-24 01:36:25'),
(295, 1, 'product-categories', 'GET', '62.212.64.18', '[]', '2023-05-24 01:36:25', '2023-05-24 01:36:25'),
(296, 1, 'product-categories/33/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:38:29', '2023-05-24 01:38:29'),
(297, 1, 'product-categories/33', 'PUT', '62.212.64.18', '{\"status\":\"0\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-05-24 13:35:12\",\"url\":\"https:\\/\\/men-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Men\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 01:39:20', '2023-05-24 01:39:20'),
(298, 1, 'product-categories', 'GET', '62.212.64.18', '[]', '2023-05-24 01:39:21', '2023-05-24 01:39:21'),
(299, 1, 'product-categories/33/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:41:10', '2023-05-24 01:41:10'),
(300, 1, 'product-categories/33', 'PUT', '62.212.64.18', '{\"status\":\"0\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-05-24 13:39:20\",\"url\":\"https:\\/\\/men-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Men\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 01:41:38', '2023-05-24 01:41:38'),
(301, 1, 'product-categories', 'GET', '62.212.64.18', '[]', '2023-05-24 01:41:39', '2023-05-24 01:41:39'),
(302, 1, 'product-categories/29/edit', 'GET', '198.16.76.67', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:45:56', '2023-05-24 01:45:56'),
(303, 1, 'product-categories', 'GET', '198.16.76.67', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:46:07', '2023-05-24 01:46:07'),
(304, 1, 'product-categories/32/edit', 'GET', '198.16.76.67', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:46:17', '2023-05-24 01:46:17'),
(305, 1, 'product-categories', 'GET', '198.16.76.67', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:46:32', '2023-05-24 01:46:32'),
(306, 1, 'product-categories/34/edit', 'GET', '198.16.66.100', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:49:11', '2023-05-24 01:49:11'),
(307, 1, 'product-categories/34/edit', 'GET', '62.212.64.18', '[]', '2023-05-24 01:55:40', '2023-05-24 01:55:40'),
(308, 1, 'product-categories/34', 'PUT', '62.212.64.18', '{\"status\":\"0\",\"user\":\"67\",\"date_created\":\"2023-03-28\",\"date_updated\":\"2023-05-18 07:07:03\",\"url\":\"https:\\/\\/women-039-s-shoes\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"Women\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_method\":\"PUT\"}', '2023-05-24 01:56:14', '2023-05-24 01:56:14'),
(309, 1, 'product-categories', 'GET', '62.212.64.18', '[]', '2023-05-24 01:56:14', '2023-05-24 01:56:14'),
(310, 1, 'product-categories', 'GET', '62.212.64.18', '[]', '2023-05-24 01:56:15', '2023-05-24 01:56:15'),
(311, 1, 'product-categories/32/edit', 'GET', '198.16.76.67', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 01:56:38', '2023-05-24 01:56:38'),
(312, 1, 'product-categories/32', 'PUT', '198.16.76.67', '{\"status\":\"1\",\"user\":\"59\",\"date_created\":\"2023-02-19\",\"date_updated\":\"2023-05-18 07:07:32\",\"url\":\"https:\\/\\/as\",\"default_amount\":\"0\",\"image_origin\":\"1\",\"category\":\"KIDS\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 01:57:05', '2023-05-24 01:57:05'),
(313, 1, 'product-categories', 'GET', '198.16.76.67', '[]', '2023-05-24 01:57:06', '2023-05-24 01:57:06'),
(314, 1, 'product-categories', 'GET', '198.16.66.100', '[]', '2023-05-24 02:08:50', '2023-05-24 02:08:50'),
(315, 1, 'product-categories', 'GET', '198.16.66.100', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:15:30', '2023-05-24 02:15:30'),
(316, 1, 'product-categories/create', 'GET', '198.16.66.100', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:15:49', '2023-05-24 02:15:49'),
(317, 1, 'product-categories', 'POST', '62.212.64.18', '{\"status\":\"1\",\"user\":\"1\",\"date_created\":\"2023-05-24\",\"date_updated\":\"2023-05-24 08:15:49\",\"url\":\"https:\\/\\/\",\"default_amount\":\"6000\",\"image_origin\":\"1\",\"category\":\"Toys & Games\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 02:20:56', '2023-05-24 02:20:56'),
(318, 1, 'product-categories/create', 'GET', '62.212.64.18', '[]', '2023-05-24 02:20:56', '2023-05-24 02:20:56'),
(319, 1, 'product-categories', 'POST', '62.212.64.18', '{\"status\":\"1\",\"user\":\"1\",\"date_created\":\"2023-05-24\",\"date_updated\":\"2023-05-24 08:20:56\",\"url\":\"https:\\/\\/\",\"default_amount\":\"6000\",\"image_origin\":\"1\",\"category\":\"Toys & Games\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"after-save\":\"1\"}', '2023-05-24 02:24:35', '2023-05-24 02:24:35'),
(320, 1, 'product-categories/create', 'GET', '198.16.76.67', '[]', '2023-05-24 02:24:37', '2023-05-24 02:24:37'),
(321, 1, 'products/create', 'GET', '198.16.76.67', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:24:42', '2023-05-24 02:24:42'),
(322, 1, 'products', 'POST', '198.16.76.67', '{\"administrator_id\":\"1\",\"name\":\"Travel Mug\",\"price\":\"30000\",\"details\":\"<p>TTTTTT<\\/p>\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\"}', '2023-05-24 02:25:03', '2023-05-24 02:25:03'),
(323, 1, 'products/create', 'GET', '198.16.76.67', '[]', '2023-05-24 02:25:03', '2023-05-24 02:25:03'),
(324, 1, 'product-categories', 'GET', '198.16.76.67', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:25:08', '2023-05-24 02:25:08'),
(325, 1, 'product-categories/create', 'GET', '198.16.76.67', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:25:13', '2023-05-24 02:25:13'),
(326, 1, 'product-categories', 'POST', '198.16.76.67', '{\"status\":\"1\",\"user\":\"1\",\"date_created\":\"2023-05-24\",\"date_updated\":\"2023-05-24 08:25:13\",\"url\":\"https:\\/\\/\",\"default_amount\":\"6000\",\"image_origin\":\"1\",\"category\":\"TWO\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 02:25:53', '2023-05-24 02:25:53'),
(327, 1, 'product-categories/create', 'GET', '198.16.76.67', '[]', '2023-05-24 02:25:53', '2023-05-24 02:25:53'),
(328, 1, 'auth/users', 'GET', '198.16.76.67', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:26:02', '2023-05-24 02:26:02'),
(329, 1, 'product-categories', 'GET', '198.16.76.67', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:26:07', '2023-05-24 02:26:07'),
(330, 1, 'product-categories/36/edit', 'GET', '198.16.76.67', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:27:15', '2023-05-24 02:27:15'),
(331, 1, 'auth/users', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:27:51', '2023-05-24 02:27:51'),
(332, 1, 'auth/users/12/edit', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:28:19', '2023-05-24 02:28:19'),
(333, 1, 'auth/setting', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:28:45', '2023-05-24 02:28:45'),
(334, 1, 'product-categories', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:28:49', '2023-05-24 02:28:49'),
(335, 1, 'product-categories/create', 'GET', '62.212.64.18', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 02:28:52', '2023-05-24 02:28:52'),
(336, 1, 'product-categories', 'POST', '62.212.64.18', '{\"status\":\"1\",\"user\":\"1\",\"date_created\":\"2023-05-24\",\"date_updated\":\"2023-05-24 08:28:52\",\"url\":\"https:\\/\\/\",\"default_amount\":\"6000\",\"image_origin\":\"1\",\"category\":\"Men Shoes\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"No\",\"_token\":\"i0TUkNtK7wHNYZoDZKNSaNlst96w6rX58gVRjWuU\",\"after-save\":\"2\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-24 02:29:36', '2023-05-24 02:29:36'),
(337, 1, 'product-categories/create', 'GET', '62.212.64.18', '[]', '2023-05-24 02:29:37', '2023-05-24 02:29:37'),
(338, 1, 'auth/users', 'GET', '62.212.64.18', '[]', '2023-05-24 02:34:38', '2023-05-24 02:34:38'),
(339, 1, '/', 'GET', '102.85.228.132', '[]', '2023-05-25 05:31:14', '2023-05-25 05:31:14'),
(340, 1, 'product-categories', 'GET', '102.85.228.132', '[]', '2023-05-25 05:31:40', '2023-05-25 05:31:40'),
(341, 1, 'product-categories', 'GET', '102.85.228.132', '{\"_pjax\":\"#pjax-container\"}', '2023-05-25 05:31:54', '2023-05-25 05:31:54'),
(342, 1, 'product-categories/create', 'GET', '102.85.228.132', '{\"_pjax\":\"#pjax-container\"}', '2023-05-25 05:31:58', '2023-05-25 05:31:58'),
(343, 1, 'product-categories', 'POST', '102.85.228.132', '{\"status\":\"1\",\"user\":\"1\",\"date_created\":\"2023-05-25\",\"date_updated\":\"2023-05-25 11:31:58\",\"url\":\"https:\\/\\/\",\"default_amount\":\"6000\",\"image_origin\":\"1\",\"category\":\"suma\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"kVlS568rdRHWerl2NK3zSsjPHfViKScbhuAYaG4Y\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-05-25 05:32:40', '2023-05-25 05:32:40'),
(344, 1, 'product-categories/create', 'GET', '102.85.228.132', '[]', '2023-05-25 05:32:41', '2023-05-25 05:32:41'),
(345, 1, '/', 'GET', '41.75.181.104', '[]', '2023-06-05 12:13:04', '2023-06-05 12:13:04'),
(346, 1, '/', 'GET', '41.75.170.26', '[]', '2023-06-06 02:31:01', '2023-06-06 02:31:01'),
(347, 1, '/', 'GET', '41.75.177.251', '[]', '2023-06-06 20:40:03', '2023-06-06 20:40:03'),
(348, 1, '/', 'GET', '41.75.177.251', '[]', '2023-06-06 20:40:17', '2023-06-06 20:40:17'),
(349, 1, 'product-categories', 'GET', '41.75.177.251', '{\"_pjax\":\"#pjax-container\"}', '2023-06-06 20:40:22', '2023-06-06 20:40:22'),
(350, 1, 'product-categories/create', 'GET', '41.75.177.251', '{\"_pjax\":\"#pjax-container\"}', '2023-06-06 20:40:26', '2023-06-06 20:40:26'),
(351, 1, 'product-categories', 'POST', '41.75.177.251', '{\"status\":\"1\",\"user\":\"1\",\"date_created\":\"2023-06-07\",\"date_updated\":\"2023-06-07 02:40:26\",\"url\":\"https:\\/\\/\",\"default_amount\":\"6000\",\"image_origin\":\"1\",\"category\":\"Jeans\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"IklT5WUCl4g4xPW2a9aWd2XHZNBnnhyhIFmEK2WN\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-06-06 20:41:11', '2023-06-06 20:41:11'),
(352, 1, 'product-categories/create', 'GET', '41.75.177.251', '[]', '2023-06-06 20:41:12', '2023-06-06 20:41:12'),
(353, 1, 'product-categories/create', 'GET', '41.75.177.251', '[]', '2023-06-06 21:23:48', '2023-06-06 21:23:48'),
(354, 1, '/', 'GET', '197.239.13.59', '[]', '2023-06-08 09:14:16', '2023-06-08 09:14:16'),
(355, 1, '/', 'GET', '41.75.182.208', '[]', '2023-06-25 20:22:31', '2023-06-25 20:22:31'),
(356, 1, '/', 'GET', '50.7.93.84', '[]', '2023-07-25 11:01:16', '2023-07-25 11:01:16'),
(357, 1, 'product-categories', 'GET', '50.7.93.84', '{\"_pjax\":\"#pjax-container\"}', '2023-07-25 11:28:45', '2023-07-25 11:28:45'),
(358, 1, 'product-categories/create', 'GET', '50.7.93.84', '{\"_pjax\":\"#pjax-container\"}', '2023-07-25 11:28:48', '2023-07-25 11:28:48'),
(359, 1, 'auth/users', 'GET', '50.7.93.84', '{\"_pjax\":\"#pjax-container\"}', '2023-07-25 11:29:04', '2023-07-25 11:29:04'),
(360, 1, 'product-categories', 'GET', '50.7.93.84', '{\"_pjax\":\"#pjax-container\"}', '2023-07-25 11:29:10', '2023-07-25 11:29:10'),
(361, 1, 'auth/setting', 'GET', '50.7.93.84', '{\"_pjax\":\"#pjax-container\"}', '2023-07-25 11:29:12', '2023-07-25 11:29:12'),
(362, 1, 'product-categories', 'GET', '::1', '[]', '2023-08-05 08:09:32', '2023-08-05 08:09:32'),
(363, 1, 'product-categories/28/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-05 08:10:30', '2023-08-05 08:10:30'),
(364, 1, 'product-categories/28/edit', 'GET', '::1', '[]', '2023-08-05 08:15:39', '2023-08-05 08:15:39'),
(365, 1, 'product-categories/28/edit', 'GET', '::1', '[]', '2023-08-05 08:16:14', '2023-08-05 08:16:14'),
(366, 1, 'product-categories/28', 'PUT', '::1', '{\"category\":\"Electronics\",\"attributes\":{\"values\":[null]},\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"PsSYNpjfLqQ0sKTA0ys52atdByx5d5UblszZIDCz\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-08-05 08:16:34', '2023-08-05 08:16:34'),
(367, 1, 'product-categories/28/edit', 'GET', '::1', '[]', '2023-08-05 08:16:34', '2023-08-05 08:16:34'),
(368, 1, 'product-categories/28', 'PUT', '::1', '{\"category\":\"Electronics\",\"attributes\":{\"values\":[\"Brand\",null]},\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"PsSYNpjfLqQ0sKTA0ys52atdByx5d5UblszZIDCz\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-08-05 08:20:34', '2023-08-05 08:20:34'),
(369, 1, 'product-categories/28/edit', 'GET', '::1', '[]', '2023-08-05 08:20:35', '2023-08-05 08:20:35'),
(370, 1, 'product-categories/28', 'PUT', '::1', '{\"category\":\"Electronics\",\"attributes\":{\"values\":[\"Brand\",\"Model Number\",\"Warranty\",\"Shipping Information\"]},\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"PsSYNpjfLqQ0sKTA0ys52atdByx5d5UblszZIDCz\",\"_method\":\"PUT\"}', '2023-08-05 08:23:24', '2023-08-05 08:23:24'),
(371, 1, 'product-categories', 'GET', '::1', '[]', '2023-08-05 08:23:24', '2023-08-05 08:23:24'),
(372, 1, 'product-categories/28/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-05 08:23:27', '2023-08-05 08:23:27'),
(373, 1, 'product-categories/28', 'PUT', '::1', '{\"category\":\"Electronics\",\"attributes\":{\"values\":[\"Brand\",\"Model Number\",\"Warranty\",\"Shipping Information\",\"Weight\",\"Warranty\",\"Dimensions\"]},\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"PsSYNpjfLqQ0sKTA0ys52atdByx5d5UblszZIDCz\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost\\/ham\\/product-categories\"}', '2023-08-05 08:25:16', '2023-08-05 08:25:16'),
(374, 1, 'product-categories', 'GET', '::1', '[]', '2023-08-05 08:25:16', '2023-08-05 08:25:16'),
(375, 1, 'product-categories/28/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-05 08:25:20', '2023-08-05 08:25:20'),
(376, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-08-05 08:25:23', '2023-08-05 08:25:23'),
(377, 1, '/', 'GET', '41.210.155.115', '[]', '2023-08-05 15:01:37', '2023-08-05 15:01:37'),
(378, 1, 'product-categories', 'GET', '41.210.155.115', '{\"_pjax\":\"#pjax-container\"}', '2023-08-05 15:01:44', '2023-08-05 15:01:44'),
(379, 1, 'auth/users', 'GET', '41.210.155.115', '{\"_pjax\":\"#pjax-container\"}', '2023-08-05 15:01:55', '2023-08-05 15:01:55'),
(380, 1, '/', 'GET', '41.210.155.115', '{\"_pjax\":\"#pjax-container\"}', '2023-08-05 15:02:01', '2023-08-05 15:02:01'),
(381, 1, 'products', 'GET', '41.210.155.115', '[]', '2023-08-05 15:02:09', '2023-08-05 15:02:09'),
(382, 1, 'products/193/edit', 'GET', '41.210.155.115', '{\"_pjax\":\"#pjax-container\"}', '2023-08-05 15:02:12', '2023-08-05 15:02:12'),
(383, 1, 'products/193', 'PUT', '41.210.155.115', '{\"administrator_id\":\"1\",\"name\":\"Men& # 039 fitting tshirts\",\"price\":null,\"details\":\"<p>Some details about this product<\\/p>\",\"_token\":\"YxU9fhFhsfHMchYyaDrlaA6OKmdAt7SWk00MpXY9\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/products\"}', '2023-08-05 15:02:34', '2023-08-05 15:02:34'),
(384, 1, 'products/193/edit', 'GET', '41.210.155.115', '[]', '2023-08-05 15:02:34', '2023-08-05 15:02:34'),
(385, 1, 'products/193', 'PUT', '41.210.155.115', '{\"administrator_id\":\"1\",\"name\":\"Men& # 039 fitting tshirts\",\"price\":\"100000\",\"details\":\"<p>Some details about this product<\\/p>\",\"_token\":\"YxU9fhFhsfHMchYyaDrlaA6OKmdAt7SWk00MpXY9\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-08-05 15:02:39', '2023-08-05 15:02:39'),
(386, 1, 'products/193/edit', 'GET', '41.210.155.115', '[]', '2023-08-05 15:02:40', '2023-08-05 15:02:40'),
(387, 1, 'products/193', 'PUT', '41.210.155.115', '{\"administrator_id\":\"1\",\"name\":\"Men& # 039 fitting tshirts\",\"price\":\"100000\",\"details\":\"<p>Some details about this product<\\/p>\",\"_token\":\"YxU9fhFhsfHMchYyaDrlaA6OKmdAt7SWk00MpXY9\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-08-05 15:02:49', '2023-08-05 15:02:49'),
(388, 1, 'products/193/edit', 'GET', '41.210.155.115', '[]', '2023-08-05 15:02:49', '2023-08-05 15:02:49'),
(389, 1, '/', 'GET', '65.109.23.122', '[]', '2023-08-06 14:05:01', '2023-08-06 14:05:01'),
(390, 1, 'product-categories', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-06 14:05:11', '2023-08-06 14:05:11'),
(391, 1, 'product-categories', 'GET', '41.210.155.110', '[]', '2023-08-08 06:49:33', '2023-08-08 06:49:33'),
(392, 1, '/', 'GET', '41.210.155.110', '[]', '2023-08-08 06:49:35', '2023-08-08 06:49:35'),
(393, 1, 'product-categories', 'GET', '41.210.155.110', '[]', '2023-08-09 12:57:44', '2023-08-09 12:57:44'),
(394, 1, 'product-categories', 'GET', '41.210.155.110', '[]', '2023-08-10 00:38:30', '2023-08-10 00:38:30'),
(395, 1, '/', 'GET', '41.210.155.110', '[]', '2023-08-10 05:09:05', '2023-08-10 05:09:05'),
(396, 1, '/', 'GET', '41.210.155.110', '[]', '2023-08-10 05:09:44', '2023-08-10 05:09:44'),
(397, 1, '/', 'GET', '41.210.155.110', '[]', '2023-08-10 05:13:47', '2023-08-10 05:13:47'),
(398, 1, '/', 'GET', '41.210.155.110', '[]', '2023-08-11 10:45:55', '2023-08-11 10:45:55'),
(399, 1, 'product-categories', 'GET', '41.210.155.110', '{\"_pjax\":\"#pjax-container\"}', '2023-08-11 10:46:02', '2023-08-11 10:46:02'),
(400, 1, 'product-categories/create', 'GET', '41.210.155.110', '{\"_pjax\":\"#pjax-container\"}', '2023-08-11 10:46:04', '2023-08-11 10:46:04'),
(401, 1, 'product-categories', 'GET', '41.210.155.110', '[]', '2023-08-11 10:46:05', '2023-08-11 10:46:05'),
(402, 1, 'product-categories', 'GET', '41.210.155.110', '{\"_pjax\":\"#pjax-container\"}', '2023-08-11 13:04:40', '2023-08-11 13:04:40'),
(403, 1, '/', 'GET', '41.210.145.173', '[]', '2023-08-14 12:19:08', '2023-08-14 12:19:08'),
(404, 1, '/', 'GET', '65.109.23.122', '[]', '2023-08-16 15:01:21', '2023-08-16 15:01:21'),
(405, 1, 'product-categories', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:01:25', '2023-08-16 15:01:25'),
(406, 1, '/', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:01:43', '2023-08-16 15:01:43'),
(407, 1, 'product-categories', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:01:45', '2023-08-16 15:01:45'),
(408, 1, '/', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:01:48', '2023-08-16 15:01:48'),
(409, 1, 'product-categories', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:01:50', '2023-08-16 15:01:50'),
(410, 1, 'product-categories', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:01:59', '2023-08-16 15:01:59'),
(411, 1, 'product-categories/28/edit', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:03:34', '2023-08-16 15:03:34'),
(412, 1, 'product-categories', 'GET', '65.109.23.122', '[]', '2023-08-16 15:03:35', '2023-08-16 15:03:35'),
(413, 1, 'product-categories/28/edit', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:05:20', '2023-08-16 15:05:20'),
(414, 1, 'product-categories', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:05:23', '2023-08-16 15:05:23'),
(415, 1, 'product-categories/28/edit', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:05:38', '2023-08-16 15:05:38'),
(416, 1, 'product-categories/28', 'PUT', '65.109.23.122', '{\"category\":\"Electronics\",\"is_parent\":\"No\",\"attributes\":{\"values\":[\"Brand\",\"Model Number\",\"Warranty\",\"Shipping Information\",\"Weight\",\"Dimensions\",\"Year\"]},\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"1vIPmlVvGo6jimIU91YZ140xFpoj0NJXy4eVdEwX\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-08-16 15:07:22', '2023-08-16 15:07:22'),
(417, 1, 'product-categories/28/edit', 'GET', '65.109.23.122', '[]', '2023-08-16 15:07:23', '2023-08-16 15:07:23'),
(418, 1, 'product-categories', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:07:33', '2023-08-16 15:07:33'),
(419, 1, 'product-categories/29/edit', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:07:36', '2023-08-16 15:07:36'),
(420, 1, 'product-categories/29', 'PUT', '65.109.23.122', '{\"category\":\"Computers\",\"is_parent\":\"No\",\"attributes\":{\"values\":[\"RAM\",\"CPU\",\"STORAGE TYPE\",\"STORAGE SIZE\",\"BRAND\"]},\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"1vIPmlVvGo6jimIU91YZ140xFpoj0NJXy4eVdEwX\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-08-16 15:08:35', '2023-08-16 15:08:35'),
(421, 1, 'product-categories/29/edit', 'GET', '65.109.23.122', '[]', '2023-08-16 15:08:35', '2023-08-16 15:08:35'),
(422, 1, 'product-categories/29', 'PUT', '65.109.23.122', '{\"category\":\"Computers\",\"is_parent\":\"No\",\"attributes\":{\"values\":[\"RAM\",\"CPU\",\"STORAGE TYPE\",\"STORAGE SIZE\",\"BRAND\"]},\"show_in_banner\":\"No\",\"show_in_categories\":\"No\",\"_token\":\"1vIPmlVvGo6jimIU91YZ140xFpoj0NJXy4eVdEwX\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-08-16 15:10:53', '2023-08-16 15:10:53'),
(423, 1, 'product-categories/29/edit', 'GET', '65.109.23.122', '[]', '2023-08-16 15:10:53', '2023-08-16 15:10:53'),
(424, 1, 'product-categories/29', 'PUT', '65.109.23.122', '{\"category\":\"Computers\",\"is_parent\":\"No\",\"attributes\":{\"values\":[\"RAM\",\"CPU\",\"STORAGE TYPE\",\"STORAGE SIZE\",\"BRAND\"]},\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"1vIPmlVvGo6jimIU91YZ140xFpoj0NJXy4eVdEwX\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-08-16 15:16:20', '2023-08-16 15:16:20'),
(425, 1, 'product-categories/29/edit', 'GET', '65.109.23.122', '[]', '2023-08-16 15:16:21', '2023-08-16 15:16:21'),
(426, 1, 'auth/users', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:16:23', '2023-08-16 15:16:23'),
(427, 1, 'product-categories', 'GET', '65.109.23.122', '{\"_pjax\":\"#pjax-container\"}', '2023-08-16 15:16:44', '2023-08-16 15:16:44'),
(428, 1, '/', 'GET', '41.75.180.217', '[]', '2023-08-28 22:53:26', '2023-08-28 22:53:26'),
(429, 1, 'product-categories', 'GET', '41.75.180.217', '{\"_pjax\":\"#pjax-container\"}', '2023-08-28 22:53:34', '2023-08-28 22:53:34'),
(430, 1, 'product-categories/create', 'GET', '41.75.180.217', '{\"_pjax\":\"#pjax-container\"}', '2023-08-28 22:53:41', '2023-08-28 22:53:41'),
(431, 1, 'product-categories', 'POST', '41.75.180.217', '{\"category\":\"Cups\",\"is_parent\":\"No\",\"attributes\":{\"values\":[\"BLUE\",\"bid size\",\"short\",\"empyty\"]},\"show_in_banner\":\"No\",\"show_in_categories\":\"No\",\"_token\":\"YChlALXVxMqxlpjMuxJHNrjr7Tx1bG7LKUwHABk5\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-08-28 22:55:38', '2023-08-28 22:55:38'),
(432, 1, 'product-categories', 'GET', '41.75.180.217', '[]', '2023-08-28 22:55:38', '2023-08-28 22:55:38'),
(433, 1, 'auth/users', 'GET', '41.75.180.217', '{\"_pjax\":\"#pjax-container\"}', '2023-08-28 22:55:50', '2023-08-28 22:55:50'),
(434, 1, 'product-categories', 'GET', '41.75.180.217', '{\"_pjax\":\"#pjax-container\"}', '2023-08-28 22:55:56', '2023-08-28 22:55:56'),
(435, 1, '_handle_action_', 'POST', '41.75.180.217', '{\"_key\":\"43\",\"_model\":\"App_Models_ProductCategory\",\"_token\":\"YChlALXVxMqxlpjMuxJHNrjr7Tx1bG7LKUwHABk5\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-08-28 22:56:02', '2023-08-28 22:56:02'),
(436, 1, 'product-categories', 'GET', '41.75.180.217', '{\"_pjax\":\"#pjax-container\"}', '2023-08-28 22:56:02', '2023-08-28 22:56:02'),
(437, 1, '/', 'GET', '41.75.170.212', '[]', '2023-08-29 02:03:52', '2023-08-29 02:03:52'),
(438, 1, 'product-categories', 'GET', '41.75.170.212', '{\"_pjax\":\"#pjax-container\"}', '2023-08-29 02:03:57', '2023-08-29 02:03:57'),
(439, 1, 'product-categories/create', 'GET', '41.75.170.212', '{\"_pjax\":\"#pjax-container\"}', '2023-08-29 02:04:03', '2023-08-29 02:04:03'),
(440, 1, 'product-categories/create', 'GET', '41.75.170.212', '[]', '2023-08-29 02:43:44', '2023-08-29 02:43:44'),
(441, 1, 'product-categories', 'GET', '50.7.142.180', '[]', '2023-08-29 03:11:14', '2023-08-29 03:11:14'),
(442, 1, 'product-categories', 'GET', '50.7.142.180', '{\"_pjax\":\"#pjax-container\"}', '2023-08-29 03:34:54', '2023-08-29 03:34:54'),
(443, 1, 'product-categories/create', 'GET', '50.7.142.180', '{\"_pjax\":\"#pjax-container\"}', '2023-08-29 03:35:18', '2023-08-29 03:35:18'),
(444, 1, '/', 'GET', '102.85.181.113', '[]', '2023-09-06 12:11:51', '2023-09-06 12:11:51'),
(445, 1, 'auth/logout', 'GET', '102.85.181.113', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 12:13:56', '2023-09-06 12:13:56'),
(446, 1, '/', 'GET', '102.85.181.113', '[]', '2023-09-06 12:14:08', '2023-09-06 12:14:08'),
(447, 1, 'product-categories', 'GET', '102.85.181.113', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 12:20:22', '2023-09-06 12:20:22'),
(448, 1, 'product-categories/create', 'GET', '102.85.181.113', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 12:20:28', '2023-09-06 12:20:28'),
(449, 1, 'product-categories', 'GET', '102.85.181.113', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 12:42:05', '2023-09-06 12:42:05'),
(450, 1, 'product-categories/create', 'GET', '102.85.181.113', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 12:42:13', '2023-09-06 12:42:13'),
(451, 1, '/', 'GET', '206.47.86.203', '[]', '2023-09-06 18:42:09', '2023-09-06 18:42:09'),
(452, 1, 'product-categories', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:44:04', '2023-09-06 18:44:04'),
(453, 1, 'auth/users', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:44:34', '2023-09-06 18:44:34'),
(454, 1, '/', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:44:52', '2023-09-06 18:44:52'),
(455, 1, 'product-categories', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:44:55', '2023-09-06 18:44:55'),
(456, 1, 'product-categories', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"category\",\"type\":\"desc\"}}', '2023-09-06 18:44:58', '2023-09-06 18:44:58'),
(457, 1, 'product-categories', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"category\",\"type\":\"asc\"}}', '2023-09-06 18:45:01', '2023-09-06 18:45:01'),
(458, 1, 'product-categories/create', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:45:53', '2023-09-06 18:45:53'),
(459, 1, 'product-categories', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:47:07', '2023-09-06 18:47:07'),
(460, 1, 'product-categories', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:47:07', '2023-09-06 18:47:07'),
(461, 1, 'product-categories', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"category\",\"type\":\"desc\"}}', '2023-09-06 18:47:27', '2023-09-06 18:47:27'),
(462, 1, 'product-categories', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"category\",\"type\":\"asc\"}}', '2023-09-06 18:47:29', '2023-09-06 18:47:29'),
(463, 1, 'product-categories', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"category\",\"type\":\"desc\"}}', '2023-09-06 18:47:31', '2023-09-06 18:47:31'),
(464, 1, 'product-categories', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"category\",\"type\":\"asc\"}}', '2023-09-06 18:47:35', '2023-09-06 18:47:35'),
(465, 1, 'product-categories/create', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:47:53', '2023-09-06 18:47:53'),
(466, 1, '/', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:50:10', '2023-09-06 18:50:10'),
(467, 1, 'auth/setting', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:50:22', '2023-09-06 18:50:22'),
(468, 1, '/', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:50:51', '2023-09-06 18:50:51'),
(469, 1, 'product-categories', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:50:54', '2023-09-06 18:50:54'),
(470, 1, 'product-categories/create', 'GET', '206.47.86.203', '{\"_pjax\":\"#pjax-container\"}', '2023-09-06 18:51:01', '2023-09-06 18:51:01'),
(471, 1, 'product-categories', 'POST', '206.47.86.203', '{\"category\":\"women\",\"is_parent\":\"No\",\"attributes\":{\"values\":[\"black\",\"blue\",\"yellow\",\"green\"]},\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"noF14DYSS3maqNWrnZ5S6BVIdapqCKHA8BuirN6l\",\"_previous_\":\"https:\\/\\/app.hambren.com\\/product-categories\"}', '2023-09-06 18:58:19', '2023-09-06 18:58:19'),
(472, 1, 'product-categories', 'GET', '206.47.86.203', '[]', '2023-09-06 18:58:19', '2023-09-06 18:58:19'),
(473, 1, '/', 'GET', '::1', '[]', '2023-11-04 11:42:49', '2023-11-04 11:42:49'),
(474, 1, 'gens', 'GET', '::1', '[]', '2023-11-04 11:42:53', '2023-11-04 11:42:53'),
(475, 1, 'gens', 'GET', '::1', '[]', '2023-11-04 11:44:04', '2023-11-04 11:44:04'),
(476, 1, 'gens/create', 'GET', '::1', '[]', '2023-11-04 11:44:13', '2023-11-04 11:44:13'),
(477, 1, 'gens', 'POST', '::1', '{\"class_name\":\"OrderOnline\",\"table_name\":\"orders\",\"end_point\":\"orders\",\"fields\":null,\"use_db_table\":\"Yes\",\"file_id\":null,\"_token\":\"TCq4G15yHmUa0JVXhS70ZvAF7eydUz57T3rXhlcH\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/gens\"}', '2023-11-04 11:44:50', '2023-11-04 11:44:50'),
(478, 1, 'gens', 'GET', '::1', '[]', '2023-11-04 11:44:50', '2023-11-04 11:44:50'),
(479, 1, '/', 'GET', '::1', '[]', '2023-11-05 05:02:56', '2023-11-05 05:02:56'),
(480, 1, 'gens', 'GET', '::1', '[]', '2023-11-10 07:50:30', '2023-11-10 07:50:30'),
(481, 1, 'gens/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 07:50:38', '2023-11-10 07:50:38'),
(482, 1, 'gens', 'POST', '::1', '{\"class_name\":\"UserModel\",\"table_name\":\"users\",\"end_point\":\"users\\/me\",\"fields\":null,\"use_db_table\":\"Yes\",\"file_id\":null,\"_token\":\"Bde95PT1AbDfOdJappgTW1V5sTihLahbkH3bVj0v\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/gens\"}', '2023-11-10 07:50:54', '2023-11-10 07:50:54'),
(483, 1, 'gens', 'GET', '::1', '[]', '2023-11-10 07:50:54', '2023-11-10 07:50:54'),
(484, 1, 'gens/8/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 07:51:44', '2023-11-10 07:51:44'),
(485, 1, 'gens/8', 'PUT', '::1', '{\"class_name\":\"LoggedInUserModel\",\"table_name\":\"users\",\"end_point\":\"users\\/me\",\"fields\":null,\"use_db_table\":\"Yes\",\"file_id\":null,\"_token\":\"Bde95PT1AbDfOdJappgTW1V5sTihLahbkH3bVj0v\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/gens\"}', '2023-11-10 07:51:46', '2023-11-10 07:51:46'),
(486, 1, 'gens', 'GET', '::1', '[]', '2023-11-10 07:51:46', '2023-11-10 07:51:46'),
(487, 1, '/', 'GET', '::1', '[]', '2023-11-10 20:34:47', '2023-11-10 20:34:47'),
(488, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 20:34:50', '2023-11-10 20:34:50'),
(489, 1, 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 20:34:54', '2023-11-10 20:34:54'),
(490, 1, 'users', 'GET', '::1', '[]', '2023-11-10 20:50:59', '2023-11-10 20:50:59'),
(491, 1, 'users', 'GET', '::1', '[]', '2023-11-10 20:51:58', '2023-11-10 20:51:58'),
(492, 1, 'users', 'GET', '::1', '[]', '2023-11-10 20:55:03', '2023-11-10 20:55:03'),
(493, 1, 'users', 'GET', '::1', '[]', '2023-11-10 20:55:44', '2023-11-10 20:55:44'),
(494, 1, 'users', 'GET', '::1', '[]', '2023-11-10 20:56:10', '2023-11-10 20:56:10'),
(495, 1, 'users', 'GET', '::1', '[]', '2023-11-10 20:58:02', '2023-11-10 20:58:02'),
(496, 1, 'users', 'GET', '::1', '[]', '2023-11-10 20:59:23', '2023-11-10 20:59:23'),
(497, 1, 'users', 'GET', '::1', '[]', '2023-11-10 20:59:51', '2023-11-10 20:59:51'),
(498, 1, 'users', 'GET', '::1', '[]', '2023-11-10 21:01:31', '2023-11-10 21:01:31'),
(499, 1, 'users', 'GET', '::1', '[]', '2023-11-10 21:03:48', '2023-11-10 21:03:48'),
(500, 1, 'users', 'GET', '::1', '[]', '2023-11-10 21:04:21', '2023-11-10 21:04:21'),
(501, 1, 'users', 'GET', '::1', '[]', '2023-11-10 21:08:07', '2023-11-10 21:08:07'),
(502, 1, 'users', 'GET', '::1', '[]', '2023-11-10 21:09:41', '2023-11-10 21:09:41'),
(503, 1, 'users', 'GET', '::1', '{\"status\":[\"Pending\"],\"_pjax\":\"#pjax-container\"}', '2023-11-10 21:09:47', '2023-11-10 21:09:47'),
(504, 1, 'users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 21:09:49', '2023-11-10 21:09:49'),
(505, 1, 'users/116/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 21:10:13', '2023-11-10 21:10:13'),
(506, 1, 'users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 21:11:48', '2023-11-10 21:11:48'),
(507, 1, 'users/116/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 21:11:51', '2023-11-10 21:11:51'),
(508, 1, 'users/116/edit', 'GET', '::1', '[]', '2023-11-10 21:14:48', '2023-11-10 21:14:48'),
(509, 1, 'users/116/edit', 'GET', '::1', '[]', '2023-11-10 21:14:58', '2023-11-10 21:14:58'),
(510, 1, 'users/116/edit', 'GET', '::1', '[]', '2023-11-10 21:15:30', '2023-11-10 21:15:30'),
(511, 1, 'users/116', 'PUT', '::1', '{\"first_name\":\"Yoshio\",\"last_name\":\"Cohen\",\"campus_id\":\"96\",\"business_name\":\"Reese Alexander\",\"business_license_number\":\"208\",\"business_license_issue_authority\":\"Quidem officia conse\",\"business_license_issue_date\":\"12-Jun-2000\",\"business_license_validity\":\"Ipsam obcaecati adip\",\"business_address\":\"Cupidatat deserunt u\",\"business_phone_number\":\"+1 (545) 623-8602\",\"business_whatsapp\":\"Rerum praesentium qu\",\"business_email\":\"zisud@mailinator.com\",\"business_cover_photo\":\"Consequuntur dolorem\",\"business_cover_details\":\"Totam est quia modi\",\"_token\":\"a48C1RLZTAdKPbjqbYYgyk6i1NbEVyBZluslibAx\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-11-10 21:16:04', '2023-11-10 21:16:04'),
(512, 1, 'users/116/edit', 'GET', '::1', '[]', '2023-11-10 21:16:05', '2023-11-10 21:16:05'),
(513, 1, 'auth/setting', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 21:16:23', '2023-11-10 21:16:23'),
(514, 1, 'auth/setting', 'PUT', '::1', '{\"first_name\":\"Muhindo\",\"last_name\":\"Mubaraka\",\"whatsapp\":\"+256 7832 04665\",\"change_password\":\"No\",\"_token\":\"a48C1RLZTAdKPbjqbYYgyk6i1NbEVyBZluslibAx\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/users\\/116\\/edit\"}', '2023-11-10 21:16:30', '2023-11-10 21:16:30'),
(515, 1, 'auth/setting', 'GET', '::1', '[]', '2023-11-10 21:16:30', '2023-11-10 21:16:30'),
(516, 1, 'auth/setting', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 21:16:32', '2023-11-10 21:16:32'),
(517, 1, 'auth/setting', 'GET', '::1', '[]', '2023-11-10 21:16:34', '2023-11-10 21:16:34'),
(518, 1, 'users/116/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 21:16:47', '2023-11-10 21:16:47'),
(519, 1, 'users/116/edit', 'GET', '::1', '[]', '2023-11-10 21:17:46', '2023-11-10 21:17:46'),
(520, 1, 'users/116/edit', 'GET', '::1', '[]', '2023-11-10 21:18:44', '2023-11-10 21:18:44'),
(521, 1, 'users/116/edit', 'GET', '::1', '[]', '2023-11-10 21:19:23', '2023-11-10 21:19:23'),
(522, 1, 'users/116/edit', 'GET', '::1', '[]', '2023-11-10 21:20:25', '2023-11-10 21:20:25'),
(523, 1, 'users/116/edit', 'GET', '::1', '[]', '2023-11-10 21:20:40', '2023-11-10 21:20:40'),
(524, 1, 'users/116/edit', 'GET', '::1', '[]', '2023-11-10 21:21:35', '2023-11-10 21:21:35'),
(525, 1, 'users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 21:21:39', '2023-11-10 21:21:39'),
(526, 1, 'users', 'GET', '::1', '[]', '2023-11-10 21:22:10', '2023-11-10 21:22:10'),
(527, 1, 'users', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2023-11-10 21:38:59', '2023-11-10 21:38:59'),
(528, 1, 'users', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2023-11-10 21:39:02', '2023-11-10 21:39:02'),
(529, 1, 'requests', 'GET', '::1', '[]', '2023-11-10 21:39:22', '2023-11-10 21:39:22'),
(530, 1, 'requests', 'GET', '::1', '{\"status\":[\"Pending\"],\"_pjax\":\"#pjax-container\"}', '2023-11-10 21:39:33', '2023-11-10 21:39:33'),
(531, 1, 'requests/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-10 21:39:37', '2023-11-10 21:39:37'),
(532, 1, 'requests/1', 'PUT', '::1', '{\"first_name\":\"Muhindo\",\"last_name\":\"Mubaraka\",\"campus_id\":\"1\",\"business_name\":\"Muhindo and Sons\",\"business_license_number\":\"CM122321\",\"business_license_issue_authority\":\"KCC\",\"business_license_issue_date\":\"2023-11-11 00:00:00.000\",\"business_license_validity\":\"2023-11-11 00:00:00.000\",\"business_address\":\"Bwera, Kasese\",\"business_phone_number\":\"0783204665\",\"business_whatsapp\":\"07832037774\",\"business_email\":\"mubahood@gmail.com\",\"business_cover_photo\":null,\"business_cover_details\":null,\"user_type\":\"Vendor\",\"status\":\"Active\",\"_token\":\"a48C1RLZTAdKPbjqbYYgyk6i1NbEVyBZluslibAx\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/requests?status%5B%5D=Pending\"}', '2023-11-10 21:39:49', '2023-11-10 21:39:49'),
(533, 1, 'requests/1/edit', 'GET', '::1', '[]', '2023-11-10 21:39:49', '2023-11-10 21:39:49'),
(534, 1, '/', 'GET', '::1', '[]', '2023-11-11 07:23:30', '2023-11-11 07:23:30'),
(535, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:23:34', '2023-11-11 07:23:34'),
(536, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:24:11', '2023-11-11 07:24:11'),
(537, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:24:23', '2023-11-11 07:24:23'),
(538, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:25:02', '2023-11-11 07:25:02'),
(539, 1, 'products', 'GET', '::1', '{\"__search__\":\"tes\",\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:25:06', '2023-11-11 07:25:06'),
(540, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"h\"}', '2023-11-11 07:25:10', '2023-11-11 07:25:10'),
(541, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"__search__\":null}', '2023-11-11 07:25:12', '2023-11-11 07:25:12'),
(542, 1, 'products', 'GET', '::1', '{\"__search__\":null}', '2023-11-11 07:25:43', '2023-11-11 07:25:43'),
(543, 1, 'products', 'GET', '::1', '{\"__search__\":null}', '2023-11-11 07:25:45', '2023-11-11 07:25:45'),
(544, 1, 'products', 'GET', '::1', '{\"name\":\"as\",\"category\":null,\"sub_category\":null,\"supplier\":null,\"status\":null,\"in_stock\":null,\"p_type\":null,\"local_id\":null,\"date_added\":{\"start\":null,\"end\":null},\"date_updated\":{\"start\":null,\"end\":null},\"price_1\":{\"start\":null,\"end\":null},\"price_2\":{\"start\":null,\"end\":null},\"metric\":{\"start\":null,\"end\":null},\"currency\":{\"start\":null,\"end\":null},\"rates\":{\"start\":null,\"end\":null},\"updated_at\":{\"start\":null,\"end\":null},\"created_at\":{\"start\":null,\"end\":null},\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:25:48', '2023-11-11 07:25:48'),
(545, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"name\":null,\"category\":null,\"sub_category\":null,\"supplier\":null,\"status\":null,\"in_stock\":null,\"p_type\":null,\"local_id\":null,\"date_added\":{\"start\":null,\"end\":null},\"date_updated\":{\"start\":null,\"end\":null},\"price_1\":{\"start\":null,\"end\":null},\"price_2\":{\"start\":null,\"end\":null},\"metric\":{\"start\":null,\"end\":null},\"currency\":{\"start\":null,\"end\":null},\"rates\":{\"start\":null,\"end\":null},\"updated_at\":{\"start\":null,\"end\":null},\"created_at\":{\"start\":null,\"end\":null}}', '2023-11-11 07:25:52', '2023-11-11 07:25:52'),
(546, 1, 'products', 'GET', '::1', '{\"name\":null,\"category\":null,\"sub_category\":null,\"supplier\":null,\"status\":null,\"in_stock\":null,\"p_type\":null,\"local_id\":null,\"date_added\":{\"start\":null,\"end\":null},\"date_updated\":{\"start\":null,\"end\":null},\"price_1\":{\"start\":null,\"end\":null},\"price_2\":{\"start\":null,\"end\":null},\"metric\":{\"start\":null,\"end\":null},\"currency\":{\"start\":null,\"end\":null},\"rates\":{\"start\":null,\"end\":null},\"updated_at\":{\"start\":null,\"end\":null},\"created_at\":{\"start\":null,\"end\":null}}', '2023-11-11 07:26:37', '2023-11-11 07:26:37'),
(547, 1, 'products', 'GET', '::1', '{\"name\":null,\"category\":null,\"sub_category\":null,\"supplier\":null,\"status\":null,\"in_stock\":null,\"p_type\":null,\"local_id\":null,\"date_added\":{\"start\":null,\"end\":null},\"date_updated\":{\"start\":null,\"end\":null},\"price_1\":{\"start\":null,\"end\":null},\"price_2\":{\"start\":null,\"end\":null},\"metric\":{\"start\":null,\"end\":null},\"currency\":{\"start\":null,\"end\":null},\"rates\":{\"start\":null,\"end\":null},\"updated_at\":{\"start\":null,\"end\":null},\"created_at\":{\"start\":null,\"end\":null}}', '2023-11-11 07:26:48', '2023-11-11 07:26:48'),
(548, 1, 'products', 'GET', '::1', '{\"name\":null,\"category\":\"29\",\"sub_category\":null,\"supplier\":null,\"status\":null,\"in_stock\":null,\"p_type\":null,\"local_id\":null,\"date_added\":{\"start\":null,\"end\":null},\"date_updated\":{\"start\":null,\"end\":null},\"price_1\":{\"start\":null,\"end\":null},\"price_2\":{\"start\":null,\"end\":null},\"metric\":{\"start\":null,\"end\":null},\"currency\":{\"start\":null,\"end\":null},\"rates\":{\"start\":null,\"end\":null},\"updated_at\":{\"start\":null,\"end\":null},\"created_at\":{\"start\":null,\"end\":null},\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:26:57', '2023-11-11 07:26:57'),
(549, 1, 'products', 'GET', '::1', '{\"name\":null,\"category\":\"29\",\"sub_category\":null,\"supplier\":null,\"status\":null,\"in_stock\":null,\"p_type\":null,\"local_id\":null,\"date_added\":{\"start\":null,\"end\":null},\"date_updated\":{\"start\":null,\"end\":null},\"price_1\":{\"start\":null,\"end\":null},\"price_2\":{\"start\":null,\"end\":null},\"metric\":{\"start\":null,\"end\":null},\"currency\":{\"start\":null,\"end\":null},\"rates\":{\"start\":null,\"end\":null},\"updated_at\":{\"start\":null,\"end\":null},\"created_at\":{\"start\":null,\"end\":null}}', '2023-11-11 07:27:36', '2023-11-11 07:27:36'),
(550, 1, 'products', 'GET', '::1', '{\"name\":null,\"category\":\"29\",\"sub_category\":null,\"supplier\":null,\"status\":null,\"in_stock\":null,\"p_type\":null,\"local_id\":null,\"date_added\":{\"start\":null,\"end\":null},\"date_updated\":{\"start\":null,\"end\":null},\"price_1\":{\"start\":null,\"end\":null},\"price_2\":{\"start\":null,\"end\":null},\"metric\":{\"start\":null,\"end\":null},\"currency\":{\"start\":null,\"end\":null},\"rates\":{\"start\":null,\"end\":null},\"updated_at\":{\"start\":null,\"end\":null},\"created_at\":{\"start\":null,\"end\":null}}', '2023-11-11 07:28:25', '2023-11-11 07:28:25'),
(551, 1, 'products', 'GET', '::1', '{\"name\":null,\"category\":\"29\",\"sub_category\":null,\"supplier\":null,\"status\":null,\"in_stock\":null,\"p_type\":null,\"local_id\":null,\"date_added\":{\"start\":null,\"end\":null},\"date_updated\":{\"start\":null,\"end\":null},\"price_1\":{\"start\":null,\"end\":null},\"price_2\":{\"start\":null,\"end\":null},\"metric\":{\"start\":null,\"end\":null},\"currency\":{\"start\":null,\"end\":null},\"rates\":{\"start\":null,\"end\":null},\"updated_at\":{\"start\":null,\"end\":null},\"created_at\":{\"start\":null,\"end\":null}}', '2023-11-11 07:29:05', '2023-11-11 07:29:05'),
(552, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:29:07', '2023-11-11 07:29:07'),
(553, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"name\":null,\"category\":null,\"user\":null,\"price_1\":{\"start\":null,\"end\":null},\"created_at\":{\"start\":\"2023-11-11 00:00:00\",\"end\":\"2023-12-02 00:00:00\"}}', '2023-11-11 07:29:19', '2023-11-11 07:29:19'),
(554, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:29:21', '2023-11-11 07:29:21'),
(555, 1, 'invoices/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:29:35', '2023-11-11 07:29:35'),
(556, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:29:37', '2023-11-11 07:29:37'),
(557, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:31:37', '2023-11-11 07:31:37'),
(558, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:32:07', '2023-11-11 07:32:07'),
(559, 1, 'products', 'GET', '::1', '{\"price_1\":\"80\",\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:32:10', '2023-11-11 07:32:10'),
(560, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:32:11', '2023-11-11 07:32:11'),
(561, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:32:12', '2023-11-11 07:32:12'),
(562, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:32:25', '2023-11-11 07:32:25'),
(563, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:33:05', '2023-11-11 07:33:05'),
(564, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:34:20', '2023-11-11 07:34:20'),
(565, 1, 'products', 'GET', '::1', '{\"_sort\":{\"column\":\"name\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:34:47', '2023-11-11 07:34:47');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(566, 1, 'products', 'GET', '::1', '{\"_sort\":{\"column\":\"name\",\"type\":\"desc\"}}', '2023-11-11 07:35:37', '2023-11-11 07:35:37'),
(567, 1, 'products', 'GET', '::1', '{\"_sort\":{\"column\":\"name\",\"type\":\"desc\"}}', '2023-11-11 07:37:03', '2023-11-11 07:37:03'),
(568, 1, 'products', 'GET', '::1', '{\"_sort\":{\"column\":\"category\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:37:06', '2023-11-11 07:37:06'),
(569, 1, 'products', 'GET', '::1', '{\"_sort\":{\"column\":\"category\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:37:09', '2023-11-11 07:37:09'),
(570, 1, 'products', 'GET', '::1', '{\"_sort\":{\"column\":\"category\",\"type\":\"asc\"}}', '2023-11-11 07:37:54', '2023-11-11 07:37:54'),
(571, 1, 'products', 'GET', '::1', '{\"_sort\":{\"column\":\"category\",\"type\":\"asc\"}}', '2023-11-11 07:38:34', '2023-11-11 07:38:34'),
(572, 1, 'products', 'GET', '::1', '{\"_sort\":{\"column\":\"category\",\"type\":\"asc\"}}', '2023-11-11 07:38:56', '2023-11-11 07:38:56'),
(573, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:39:02', '2023-11-11 07:39:02'),
(574, 1, 'product-categories', 'GET', '::1', '[]', '2023-11-11 07:39:03', '2023-11-11 07:39:03'),
(575, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:39:10', '2023-11-11 07:39:10'),
(576, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:39:30', '2023-11-11 07:39:30'),
(577, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:39:48', '2023-11-11 07:39:48'),
(578, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:40:09', '2023-11-11 07:40:09'),
(579, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:40:15', '2023-11-11 07:40:15'),
(580, 1, 'products', 'GET', '::1', '[]', '2023-11-11 07:40:41', '2023-11-11 07:40:41'),
(581, 1, 'products/807/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 07:49:46', '2023-11-11 07:49:46'),
(582, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:50:08', '2023-11-11 07:50:08'),
(583, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:51:18', '2023-11-11 07:51:18'),
(584, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:52:26', '2023-11-11 07:52:26'),
(585, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:53:36', '2023-11-11 07:53:36'),
(586, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:54:02', '2023-11-11 07:54:02'),
(587, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:54:27', '2023-11-11 07:54:27'),
(588, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:55:16', '2023-11-11 07:55:16'),
(589, 1, 'products/807', 'PUT', '::1', '{\"name\":\"H\",\"price_2\":null,\"price_1\":\"80\",\"description\":\"<p>H<\\/p>\",\"category\":null,\"_token\":\"dlSVI7nqBy4WmuW3owuoEzkNxF6zpZXJt8DzcYBI\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-11-11 07:55:32', '2023-11-11 07:55:32'),
(590, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:55:32', '2023-11-11 07:55:32'),
(591, 1, 'products/807', 'PUT', '::1', '{\"name\":\"H\",\"price_2\":\"100\",\"price_1\":\"80\",\"description\":\"<p>H<\\/p>\",\"category\":\"28\",\"data\":{\"keys\":[\"Test\"],\"values\":[\"Value\"]},\"_token\":\"dlSVI7nqBy4WmuW3owuoEzkNxF6zpZXJt8DzcYBI\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-11-11 07:55:49', '2023-11-11 07:55:49'),
(592, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:55:49', '2023-11-11 07:55:49'),
(593, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:56:42', '2023-11-11 07:56:42'),
(594, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:56:49', '2023-11-11 07:56:49'),
(595, 1, 'products/807', 'PUT', '::1', '{\"name\":\"Lucian Harrison\",\"price_2\":\"291\",\"price_1\":\"490\",\"description\":\"<p>Neque architecto neq.<\\/p>\",\"category\":\"33\",\"_token\":\"dlSVI7nqBy4WmuW3owuoEzkNxF6zpZXJt8DzcYBI\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-11-11 07:57:02', '2023-11-11 07:57:02'),
(596, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:57:02', '2023-11-11 07:57:02'),
(597, 1, 'products/807', 'PUT', '::1', '{\"name\":\"Lucian Harrison\",\"price_2\":\"291\",\"price_1\":\"490\",\"description\":\"<p>Neque architecto neq.<\\/p>\",\"category\":\"33\",\"_token\":\"dlSVI7nqBy4WmuW3owuoEzkNxF6zpZXJt8DzcYBI\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-11-11 07:57:13', '2023-11-11 07:57:13'),
(598, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 07:57:14', '2023-11-11 07:57:14'),
(599, 1, 'products/807/edit', 'GET', '::1', '[]', '2023-11-11 08:01:11', '2023-11-11 08:01:11'),
(600, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 08:03:59', '2023-11-11 08:03:59'),
(601, 1, 'products/899/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 08:04:03', '2023-11-11 08:04:03'),
(602, 1, 'products/899/edit', 'GET', '::1', '[]', '2023-11-11 08:04:29', '2023-11-11 08:04:29'),
(603, 1, 'products/899', 'PUT', '::1', '{\"name\":\"Test product\",\"price_2\":\"1300\",\"price_1\":\"900\",\"description\":\"<p>Some details about this priduct will come here<\\/p>\",\"category\":null,\"summary\":{\"keys\":[\"Brand\",\"Model Number\",\"Warranty\",\"Shipping Information\",\"Weight\",\"Dimensions\",\"Year\"],\"values\":[\"Nokai\",\"3310\",\"3 Years\",\"$30\",\"16 kg\",\"2X3cm\",\"1990\"]},\"_token\":\"dlSVI7nqBy4WmuW3owuoEzkNxF6zpZXJt8DzcYBI\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/products\\/807\\/edit\"}', '2023-11-11 08:04:40', '2023-11-11 08:04:40'),
(604, 1, 'products/899/edit', 'GET', '::1', '[]', '2023-11-11 08:04:40', '2023-11-11 08:04:40'),
(605, 1, 'products/899', 'PUT', '::1', '{\"name\":\"Test product\",\"price_2\":\"1300\",\"price_1\":\"900\",\"description\":\"<p>Some details about this product will come here<\\/p>\",\"category\":null,\"summary\":{\"keys\":[\"Brand\",\"Model Number\",\"Warranty\",\"Shipping Information\",\"Weight\",\"Dimensions\",\"Year\"],\"values\":[\"Nokai\",\"3310\",\"3 Years\",\"$30\",\"16 kg\",\"2X3cm\",\"1990\"]},\"_token\":\"dlSVI7nqBy4WmuW3owuoEzkNxF6zpZXJt8DzcYBI\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-11-11 08:04:55', '2023-11-11 08:04:55'),
(606, 1, 'products/899/edit', 'GET', '::1', '[]', '2023-11-11 08:04:55', '2023-11-11 08:04:55'),
(607, 1, 'products/899', 'PUT', '::1', '{\"name\":\"Test product\",\"price_2\":\"1300\",\"price_1\":\"900\",\"description\":\"<p>Some details about this product will come here<\\/p>\",\"category\":\"28\",\"summary\":{\"keys\":[\"Brand\",\"Model Number\",\"Warranty\",\"Shipping Information\",\"Weight\",\"Dimensions\",\"Year\"],\"values\":[\"Nokai\",\"3310\",\"3 Years\",\"$30\",\"16 kg\",\"2X3cm\",\"1990\"]},\"_token\":\"dlSVI7nqBy4WmuW3owuoEzkNxF6zpZXJt8DzcYBI\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2023-11-11 08:05:02', '2023-11-11 08:05:02'),
(608, 1, 'products/899/edit', 'GET', '::1', '[]', '2023-11-11 08:05:02', '2023-11-11 08:05:02'),
(609, 1, 'products/899/edit', 'GET', '::1', '[]', '2023-11-11 08:09:29', '2023-11-11 08:09:29'),
(610, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 08:09:31', '2023-11-11 08:09:31'),
(611, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:10:00', '2023-11-11 08:10:00'),
(612, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:10:18', '2023-11-11 08:10:18'),
(613, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:11:17', '2023-11-11 08:11:17'),
(614, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:11:48', '2023-11-11 08:11:48'),
(615, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:14:23', '2023-11-11 08:14:23'),
(616, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:14:26', '2023-11-11 08:14:26'),
(617, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:14:32', '2023-11-11 08:14:32'),
(618, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:16:25', '2023-11-11 08:16:25'),
(619, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:16:27', '2023-11-11 08:16:27'),
(620, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:17:49', '2023-11-11 08:17:49'),
(621, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:17:51', '2023-11-11 08:17:51'),
(622, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:17:52', '2023-11-11 08:17:52'),
(623, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:18:03', '2023-11-11 08:18:03'),
(624, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:18:04', '2023-11-11 08:18:04'),
(625, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:18:05', '2023-11-11 08:18:05'),
(626, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:18:10', '2023-11-11 08:18:10'),
(627, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:18:42', '2023-11-11 08:18:42'),
(628, 1, 'products', 'GET', '::1', '[]', '2023-11-11 08:19:56', '2023-11-11 08:19:56'),
(629, 1, '/', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 08:20:03', '2023-11-11 08:20:03'),
(630, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 08:20:04', '2023-11-11 08:20:04'),
(631, 1, 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 08:20:07', '2023-11-11 08:20:07'),
(632, 1, 'auth/setting', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 08:20:08', '2023-11-11 08:20:08'),
(633, 1, '/', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 08:20:08', '2023-11-11 08:20:08'),
(634, 1, '/', 'GET', '::1', '[]', '2023-11-11 08:48:26', '2023-11-11 08:48:26'),
(635, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-11-11 08:48:27', '2023-11-11 08:48:27'),
(636, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:03:39', '2023-11-29 04:03:39'),
(637, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:04:31', '2023-11-29 04:04:31'),
(638, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:07:30', '2023-11-29 04:07:30'),
(639, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:07:40', '2023-11-29 04:07:40'),
(640, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:08:02', '2023-11-29 04:08:02'),
(641, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:08:12', '2023-11-29 04:08:12'),
(642, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:08:18', '2023-11-29 04:08:18'),
(643, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:08:33', '2023-11-29 04:08:33'),
(644, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:08:42', '2023-11-29 04:08:42'),
(645, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:08:48', '2023-11-29 04:08:48'),
(646, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:14:17', '2023-11-29 04:14:17'),
(647, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:15:16', '2023-11-29 04:15:16'),
(648, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:15:27', '2023-11-29 04:15:27'),
(649, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:15:58', '2023-11-29 04:15:58'),
(650, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:17:31', '2023-11-29 04:17:31'),
(651, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:18:40', '2023-11-29 04:18:40'),
(652, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:18:51', '2023-11-29 04:18:51'),
(653, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:19:20', '2023-11-29 04:19:20'),
(654, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:21:03', '2023-11-29 04:21:03'),
(655, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:21:56', '2023-11-29 04:21:56'),
(656, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:23:47', '2023-11-29 04:23:47'),
(657, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:25:00', '2023-11-29 04:25:00'),
(658, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:25:44', '2023-11-29 04:25:44'),
(659, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:25:56', '2023-11-29 04:25:56'),
(660, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:27:04', '2023-11-29 04:27:04'),
(661, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:27:40', '2023-11-29 04:27:40'),
(662, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:27:49', '2023-11-29 04:27:49'),
(663, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:28:03', '2023-11-29 04:28:03'),
(664, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:28:16', '2023-11-29 04:28:16'),
(665, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:28:39', '2023-11-29 04:28:39'),
(666, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:28:59', '2023-11-29 04:28:59'),
(667, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:29:19', '2023-11-29 04:29:19'),
(668, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:31:32', '2023-11-29 04:31:32'),
(669, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:32:33', '2023-11-29 04:32:33'),
(670, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:33:08', '2023-11-29 04:33:08'),
(671, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:33:20', '2023-11-29 04:33:20'),
(672, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:34:03', '2023-11-29 04:34:03'),
(673, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:34:37', '2023-11-29 04:34:37'),
(674, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:36:05', '2023-11-29 04:36:05'),
(675, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:36:33', '2023-11-29 04:36:33'),
(676, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:37:25', '2023-11-29 04:37:25'),
(677, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:39:30', '2023-11-29 04:39:30'),
(678, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:39:45', '2023-11-29 04:39:45'),
(679, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:40:29', '2023-11-29 04:40:29'),
(680, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:40:51', '2023-11-29 04:40:51'),
(681, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:41:02', '2023-11-29 04:41:02'),
(682, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:41:08', '2023-11-29 04:41:08'),
(683, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:41:52', '2023-11-29 04:41:52'),
(684, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:42:19', '2023-11-29 04:42:19'),
(685, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:42:49', '2023-11-29 04:42:49'),
(686, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:44:07', '2023-11-29 04:44:07'),
(687, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:44:58', '2023-11-29 04:44:58'),
(688, 1, '/', 'GET', '::1', '[]', '2023-11-29 04:45:27', '2023-11-29 04:45:27'),
(689, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:03:06', '2023-11-29 07:03:06'),
(690, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:04:40', '2023-11-29 07:04:40'),
(691, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:05:21', '2023-11-29 07:05:21'),
(692, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:05:49', '2023-11-29 07:05:49'),
(693, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:06:15', '2023-11-29 07:06:15'),
(694, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:07:18', '2023-11-29 07:07:18'),
(695, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:08:06', '2023-11-29 07:08:06'),
(696, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:09:05', '2023-11-29 07:09:05'),
(697, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:09:25', '2023-11-29 07:09:25'),
(698, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:09:50', '2023-11-29 07:09:50'),
(699, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:12:45', '2023-11-29 07:12:45'),
(700, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:12:58', '2023-11-29 07:12:58'),
(701, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:13:19', '2023-11-29 07:13:19'),
(702, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:14:47', '2023-11-29 07:14:47'),
(703, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:14:55', '2023-11-29 07:14:55'),
(704, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:15:15', '2023-11-29 07:15:15'),
(705, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:15:48', '2023-11-29 07:15:48'),
(706, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:33:37', '2023-11-29 07:33:37'),
(707, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:33:56', '2023-11-29 07:33:56'),
(708, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:34:07', '2023-11-29 07:34:07'),
(709, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:34:17', '2023-11-29 07:34:17'),
(710, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:35:23', '2023-11-29 07:35:23'),
(711, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:35:47', '2023-11-29 07:35:47'),
(712, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:36:47', '2023-11-29 07:36:47'),
(713, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:54:51', '2023-11-29 07:54:51'),
(714, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:57:34', '2023-11-29 07:57:34'),
(715, 1, '/', 'GET', '::1', '[]', '2023-11-29 07:57:36', '2023-11-29 07:57:36'),
(716, 1, 'auth/users', 'GET', '::1', '[]', '2023-11-29 07:58:04', '2023-11-29 07:58:04'),
(717, 1, 'auth/users', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2023-11-29 07:58:12', '2023-11-29 07:58:12'),
(718, 1, 'auth/users', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2023-11-29 07:58:18', '2023-11-29 07:58:18'),
(719, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:25:42', '2023-11-29 09:25:42'),
(720, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:25:51', '2023-11-29 09:25:51'),
(721, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:26:09', '2023-11-29 09:26:09'),
(722, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:26:27', '2023-11-29 09:26:27'),
(723, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:26:35', '2023-11-29 09:26:35'),
(724, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:27:09', '2023-11-29 09:27:09'),
(725, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:30:14', '2023-11-29 09:30:14'),
(726, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:30:52', '2023-11-29 09:30:52'),
(727, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:34:08', '2023-11-29 09:34:08'),
(728, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:34:48', '2023-11-29 09:34:48'),
(729, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:39:01', '2023-11-29 09:39:01'),
(730, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:40:52', '2023-11-29 09:40:52'),
(731, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:42:29', '2023-11-29 09:42:29'),
(732, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:44:36', '2023-11-29 09:44:36'),
(733, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:45:05', '2023-11-29 09:45:05'),
(734, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:45:32', '2023-11-29 09:45:32'),
(735, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:46:15', '2023-11-29 09:46:15'),
(736, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:47:26', '2023-11-29 09:47:26'),
(737, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:48:54', '2023-11-29 09:48:54'),
(738, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:49:19', '2023-11-29 09:49:19'),
(739, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:49:51', '2023-11-29 09:49:51'),
(740, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:50:06', '2023-11-29 09:50:06'),
(741, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:50:57', '2023-11-29 09:50:57'),
(742, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:51:06', '2023-11-29 09:51:06'),
(743, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:54:27', '2023-11-29 09:54:27'),
(744, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:56:15', '2023-11-29 09:56:15'),
(745, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:56:23', '2023-11-29 09:56:23'),
(746, 1, '/', 'GET', '::1', '[]', '2023-11-29 09:57:09', '2023-11-29 09:57:09'),
(747, 1, '/', 'GET', '::1', '[]', '2023-11-29 10:03:20', '2023-11-29 10:03:20'),
(748, 1, '/', 'GET', '::1', '[]', '2023-11-29 10:04:18', '2023-11-29 10:04:18'),
(749, 1, '/', 'GET', '::1', '[]', '2023-11-29 10:05:52', '2023-11-29 10:05:52'),
(750, 1, '/', 'GET', '::1', '[]', '2023-11-29 10:06:37', '2023-11-29 10:06:37'),
(751, 1, '/', 'GET', '::1', '[]', '2023-11-29 10:06:49', '2023-11-29 10:06:49'),
(752, 1, '/', 'GET', '::1', '[]', '2023-11-29 10:52:38', '2023-11-29 10:52:38'),
(753, 1, '/', 'GET', '::1', '[]', '2023-12-06 12:14:07', '2023-12-06 12:14:07'),
(754, 1, '/', 'GET', '::1', '[]', '2023-12-28 07:05:15', '2023-12-28 07:05:15'),
(755, 1, 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-28 07:05:17', '2023-12-28 07:05:17'),
(756, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-28 07:05:18', '2023-12-28 07:05:18'),
(757, 1, 'products', 'GET', '::1', '[]', '2023-12-28 07:05:27', '2023-12-28 07:05:27'),
(758, 1, 'products/899', 'PUT', '::1', '{\"name\":\"name\",\"value\":\"Special testing product\",\"pk\":\"899\",\"_token\":\"5jzzHrt7rL03c2a9MmstCBnMSzYzMi6U3eLwwcPo\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-28 07:05:40', '2023-12-28 07:05:40'),
(759, 1, 'products/899', 'PUT', '::1', '{\"name\":\"price_1\",\"value\":\"1\",\"pk\":\"899\",\"_token\":\"5jzzHrt7rL03c2a9MmstCBnMSzYzMi6U3eLwwcPo\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2023-12-28 07:05:48', '2023-12-28 07:05:48'),
(760, 1, 'products', 'GET', '::1', '[]', '2023-12-28 07:05:52', '2023-12-28 07:05:52'),
(761, 1, '/', 'GET', '::1', '[]', '2023-12-28 07:15:13', '2023-12-28 07:15:13'),
(762, 1, 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-28 07:15:15', '2023-12-28 07:15:15'),
(763, 1, 'users', 'GET', '::1', '[]', '2023-12-28 07:15:23', '2023-12-28 07:15:23'),
(764, 1, 'users', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2023-12-28 07:15:27', '2023-12-28 07:15:27'),
(765, 1, 'users', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2023-12-28 07:15:28', '2023-12-28 07:15:28'),
(766, 1, 'users', 'GET', '::1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2023-12-28 07:15:29', '2023-12-28 07:15:29'),
(767, 1, 'users/117/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2023-12-28 07:15:31', '2023-12-28 07:15:31'),
(768, 1, 'users/117', 'PUT', '::1', '{\"first_name\":\"Kiiza\",\"last_name\":\"Kiiza\",\"campus_id\":\"1\",\"business_name\":\"ascasasxa\",\"business_license_number\":\"ascasa\",\"business_license_issue_authority\":\"ascsx\",\"business_license_issue_date\":\"2023-12-19 00:00:00.000\",\"business_license_validity\":\"2023-12-29 00:00:00.000\",\"business_address\":\"sasascas\",\"business_phone_number\":\"ascasx\",\"business_whatsapp\":\"ascasadscas\",\"business_email\":\"ascxas\",\"business_cover_photo\":null,\"business_cover_details\":null,\"user_type\":\"Vendor\",\"status\":\"Active\",\"_token\":\"5jzzHrt7rL03c2a9MmstCBnMSzYzMi6U3eLwwcPo\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/users?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2023-12-28 07:15:36', '2023-12-28 07:15:36'),
(769, 1, 'users/117/edit', 'GET', '::1', '[]', '2023-12-28 07:15:36', '2023-12-28 07:15:36'),
(770, 1, 'products', 'GET', '::1', '[]', '2023-12-28 17:40:59', '2023-12-28 17:40:59'),
(771, 1, '/', 'GET', '::1', '[]', '2024-01-18 08:17:33', '2024-01-18 08:17:33'),
(772, 1, '/', 'GET', '::1', '[]', '2024-01-18 08:17:37', '2024-01-18 08:17:37'),
(773, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-01-18 08:17:44', '2024-01-18 08:17:44'),
(774, 1, 'products', 'GET', '::1', '[]', '2024-01-18 08:17:52', '2024-01-18 08:17:52'),
(775, 1, 'products', 'GET', '::1', '[]', '2024-01-18 08:21:00', '2024-01-18 08:21:00'),
(776, 1, 'products/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-01-18 08:21:02', '2024-01-18 08:21:02'),
(777, 1, 'products', 'POST', '::1', '{\"user\":\"1\",\"name\":\"Test\",\"price_2\":\"400\",\"price_1\":\"500\",\"description\":\"<p>Some details<\\/p>\",\"category\":\"29\",\"summary\":{\"keys\":[\"as\"],\"values\":[\"as\"]},\"_token\":\"Rug3MpnR3jjROeSHdQgBGC1AUKLY4loWdVrBCvRq\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/products\"}', '2024-01-18 08:38:11', '2024-01-18 08:38:11'),
(778, 1, 'products/902/edit', 'GET', '::1', '[]', '2024-01-18 08:38:13', '2024-01-18 08:38:13'),
(779, 1, '/', 'GET', '::1', '[]', '2024-01-18 08:38:58', '2024-01-18 08:38:58'),
(780, 1, 'products/902/edit', 'GET', '::1', '[]', '2024-01-18 08:54:40', '2024-01-18 08:54:40'),
(781, 1, 'products/902/edit', 'GET', '::1', '[]', '2024-01-18 08:55:23', '2024-01-18 08:55:23'),
(782, 1, 'products/902/edit', 'GET', '::1', '[]', '2024-01-18 09:00:07', '2024-01-18 09:00:07'),
(783, 1, 'products/902/edit', 'GET', '::1', '[]', '2024-01-18 09:00:13', '2024-01-18 09:00:13'),
(784, 1, 'products/902/edit', 'GET', '::1', '[]', '2024-01-18 09:00:52', '2024-01-18 09:00:52'),
(785, 1, 'products/902', 'PUT', '::1', '{\"name\":\"Test\",\"price_2\":\"400\",\"price_1\":\"500\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Orange\",\"Purple\",null],\"description\":\"<p>Some details<\\/p>\",\"category\":\"29\",\"summary\":{\"keys\":[\"as\"],\"values\":[\"as\"]},\"_token\":\"Rug3MpnR3jjROeSHdQgBGC1AUKLY4loWdVrBCvRq\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-01-18 09:08:15', '2024-01-18 09:08:15'),
(786, 1, 'products/902/edit', 'GET', '::1', '[]', '2024-01-18 09:08:16', '2024-01-18 09:08:16'),
(787, 1, 'products/902/edit', 'GET', '::1', '[]', '2024-01-18 09:08:20', '2024-01-18 09:08:20'),
(788, 1, 'products/902/edit', 'GET', '::1', '[]', '2024-01-18 09:10:27', '2024-01-18 09:10:27'),
(789, 1, 'products/902', 'PUT', '::1', '{\"name\":\"Test\",\"price_2\":\"400\",\"price_1\":\"500\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Orange\",\"Purple\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"S\",\"36\",null],\"description\":\"<p>Some details<\\/p>\",\"category\":\"29\",\"summary\":{\"keys\":[\"as\"],\"values\":[\"as\"]},\"_token\":\"Rug3MpnR3jjROeSHdQgBGC1AUKLY4loWdVrBCvRq\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-01-18 09:10:42', '2024-01-18 09:10:42'),
(790, 1, 'products/902/edit', 'GET', '::1', '[]', '2024-01-18 09:10:43', '2024-01-18 09:10:43'),
(791, 1, 'products/902/edit', 'GET', '::1', '[]', '2024-01-18 09:10:47', '2024-01-18 09:10:47'),
(792, 1, 'products/902/edit', 'GET', '::1', '[]', '2024-01-18 09:12:11', '2024-01-18 09:12:11'),
(793, 1, '/', 'GET', '::1', '[]', '2024-01-20 13:57:47', '2024-01-20 13:57:47'),
(794, 1, '/', 'GET', '::1', '[]', '2024-01-20 13:58:11', '2024-01-20 13:58:11'),
(795, 1, '/', 'GET', '::1', '[]', '2024-01-20 13:58:23', '2024-01-20 13:58:23'),
(796, 1, '/', 'GET', '::1', '[]', '2024-01-20 13:58:24', '2024-01-20 13:58:24'),
(797, 1, '/', 'GET', '::1', '[]', '2024-01-20 13:59:06', '2024-01-20 13:59:06'),
(798, 1, '/', 'GET', '::1', '[]', '2024-03-14 03:51:01', '2024-03-14 03:51:01'),
(799, 1, 'delivery-addresses', 'GET', '::1', '[]', '2024-03-14 03:51:05', '2024-03-14 03:51:05'),
(800, 1, 'auth/menu', 'GET', '::1', '[]', '2024-03-14 03:51:13', '2024-03-14 03:51:13'),
(801, 1, 'auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"Delivery Addresses\",\"icon\":\"fa-map-pin\",\"uri\":\"delivery-addresses\",\"roles\":[null],\"permission\":null,\"_token\":\"Izq0Ej6dmed8OK9e1COCgUsLvlbgoGOOXFX1u2un\"}', '2024-03-14 03:51:35', '2024-03-14 03:51:35'),
(802, 1, 'auth/menu', 'GET', '::1', '[]', '2024-03-14 03:51:35', '2024-03-14 03:51:35'),
(803, 1, 'auth/menu', 'POST', '::1', '{\"_token\":\"Izq0Ej6dmed8OK9e1COCgUsLvlbgoGOOXFX1u2un\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":56},{\\\"id\\\":55},{\\\"id\\\":3},{\\\"id\\\":19}]\"}', '2024-03-14 03:51:39', '2024-03-14 03:51:39'),
(804, 1, 'auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 03:51:40', '2024-03-14 03:51:40'),
(805, 1, 'auth/menu', 'GET', '::1', '[]', '2024-03-14 03:51:41', '2024-03-14 03:51:41'),
(806, 1, 'delivery-addresses', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 03:51:43', '2024-03-14 03:51:43'),
(807, 1, 'delivery-addresses', 'GET', '::1', '[]', '2024-03-14 03:53:18', '2024-03-14 03:53:18'),
(808, 1, 'delivery-addresses', 'GET', '::1', '[]', '2024-03-14 03:53:21', '2024-03-14 03:53:21'),
(809, 1, 'delivery-addresses', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 03:53:24', '2024-03-14 03:53:24'),
(810, 1, 'delivery-addresses', 'GET', '::1', '[]', '2024-03-14 03:54:03', '2024-03-14 03:54:03'),
(811, 1, 'delivery-addresses', 'GET', '::1', '[]', '2024-03-14 03:54:27', '2024-03-14 03:54:27'),
(812, 1, 'delivery-addresses/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 03:54:30', '2024-03-14 03:54:30'),
(813, 1, 'delivery-addresses/create', 'GET', '::1', '[]', '2024-03-14 03:54:46', '2024-03-14 03:54:46'),
(814, 1, 'delivery-addresses', 'POST', '::1', '{\"address\":\"Kampala Region\",\"latitude\":\"0.23\",\"longitude\":\"0.01\",\"shipping_cost\":\"900000\",\"_token\":\"Izq0Ej6dmed8OK9e1COCgUsLvlbgoGOOXFX1u2un\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/delivery-addresses\"}', '2024-03-14 03:55:23', '2024-03-14 03:55:23'),
(815, 1, 'delivery-addresses', 'GET', '::1', '[]', '2024-03-14 03:55:24', '2024-03-14 03:55:24'),
(816, 1, 'delivery-addresses', 'GET', '::1', '[]', '2024-03-14 03:55:43', '2024-03-14 03:55:43'),
(817, 1, 'delivery-addresses', 'GET', '::1', '[]', '2024-03-14 03:56:13', '2024-03-14 03:56:13'),
(818, 1, 'delivery-addresses', 'GET', '::1', '[]', '2024-03-14 03:56:28', '2024-03-14 03:56:28'),
(819, 1, 'delivery-addresses/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 03:56:32', '2024-03-14 03:56:32'),
(820, 1, 'delivery-addresses', 'POST', '::1', '{\"address\":\"Kasese Region\",\"latitude\":null,\"longitude\":null,\"shipping_cost\":null,\"_token\":\"Izq0Ej6dmed8OK9e1COCgUsLvlbgoGOOXFX1u2un\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/delivery-addresses\"}', '2024-03-14 03:56:38', '2024-03-14 03:56:38'),
(821, 1, 'delivery-addresses', 'GET', '::1', '[]', '2024-03-14 03:56:38', '2024-03-14 03:56:38'),
(822, 1, 'delivery-addresses', 'GET', '::1', '[]', '2024-03-14 03:57:07', '2024-03-14 03:57:07'),
(823, 1, 'delivery-addresses', 'GET', '::1', '{\"__search__\":\"mak\",\"_pjax\":\"#pjax-container\"}', '2024-03-14 03:57:13', '2024-03-14 03:57:13'),
(824, 1, 'delivery-addresses', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"__search__\":null}', '2024-03-14 03:57:15', '2024-03-14 03:57:15'),
(825, 1, 'delivery-addresses/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 03:57:19', '2024-03-14 03:57:19'),
(826, 1, 'delivery-addresses/2', 'PUT', '::1', '{\"address\":\"Kasese Region\",\"latitude\":null,\"longitude\":null,\"shipping_cost\":\"58000\",\"_token\":\"Izq0Ej6dmed8OK9e1COCgUsLvlbgoGOOXFX1u2un\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/delivery-addresses?&__search__=\"}', '2024-03-14 03:57:28', '2024-03-14 03:57:28'),
(827, 1, 'delivery-addresses', 'GET', '::1', '{\"__search__\":null}', '2024-03-14 03:57:28', '2024-03-14 03:57:28'),
(828, 1, 'delivery-addresses/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 03:57:40', '2024-03-14 03:57:40'),
(829, 1, 'delivery-addresses', 'POST', '::1', '{\"address\":\"Western Region\",\"latitude\":null,\"longitude\":null,\"shipping_cost\":\"80000\",\"_token\":\"Izq0Ej6dmed8OK9e1COCgUsLvlbgoGOOXFX1u2un\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/delivery-addresses?&__search__=\"}', '2024-03-14 03:57:58', '2024-03-14 03:57:58'),
(830, 1, 'delivery-addresses', 'GET', '::1', '{\"__search__\":null}', '2024-03-14 03:57:58', '2024-03-14 03:57:58'),
(831, 1, 'delivery-addresses', 'GET', '::1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2024-03-14 03:58:02', '2024-03-14 03:58:02'),
(832, 1, 'delivery-addresses', 'GET', '::1', '{\"_sort\":{\"column\":\"address\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2024-03-14 03:58:03', '2024-03-14 03:58:03'),
(833, 1, 'delivery-addresses', 'GET', '::1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2024-03-14 03:58:46', '2024-03-14 03:58:46'),
(834, 1, 'delivery-addresses', 'GET', '::1', '{\"_sort\":{\"column\":\"address\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2024-03-14 03:59:09', '2024-03-14 03:59:09'),
(835, 1, 'delivery-addresses', 'GET', '::1', '{\"_sort\":{\"column\":\"address\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2024-03-14 04:00:15', '2024-03-14 04:00:15'),
(836, 1, 'gens', 'GET', '::1', '[]', '2024-03-14 04:04:19', '2024-03-14 04:04:19'),
(837, 1, 'gens/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 04:04:22', '2024-03-14 04:04:22'),
(838, 1, 'gens', 'POST', '::1', '{\"class_name\":\"DeliveryAddress\",\"table_name\":\"delivery_addresses\",\"end_point\":\"delivery-addresses\",\"fields\":null,\"use_db_table\":\"Yes\",\"file_id\":null,\"_token\":\"Izq0Ej6dmed8OK9e1COCgUsLvlbgoGOOXFX1u2un\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/gens\"}', '2024-03-14 04:04:49', '2024-03-14 04:04:49'),
(839, 1, 'gens', 'GET', '::1', '[]', '2024-03-14 04:04:49', '2024-03-14 04:04:49'),
(840, 1, '/', 'GET', '::1', '[]', '2024-05-03 19:25:12', '2024-05-03 19:25:12'),
(841, 1, 'gens', 'GET', '::1', '[]', '2024-05-03 19:25:17', '2024-05-03 19:25:17'),
(842, 1, 'gens/7/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-03 19:25:24', '2024-05-03 19:25:24'),
(843, 1, 'gens/7', 'PUT', '::1', '{\"class_name\":\"OrderLocal\",\"table_name\":\"orders\",\"end_point\":\"orders\",\"fields\":null,\"use_db_table\":\"Yes\",\"file_id\":null,\"_token\":\"H0zkNPlIYlMwa0nSAnV5TRJKCyyE6ryxNLbzOZn0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/gens\"}', '2024-05-03 19:25:30', '2024-05-03 19:25:30'),
(844, 1, 'gens', 'GET', '::1', '[]', '2024-05-03 19:25:30', '2024-05-03 19:25:30'),
(845, 1, '/', 'GET', '::1', '[]', '2024-05-04 04:41:37', '2024-05-04 04:41:37'),
(846, 1, '/', 'GET', '::1', '[]', '2024-05-05 02:22:10', '2024-05-05 02:22:10'),
(847, 1, '/', 'GET', '::1', '[]', '2024-05-05 02:22:27', '2024-05-05 02:22:27'),
(848, 1, '/', 'GET', '::1', '[]', '2024-05-29 05:13:00', '2024-05-29 05:13:00'),
(849, 1, 'delivery-addresses', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-29 05:13:21', '2024-05-29 05:13:21'),
(850, 1, 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-29 05:13:22', '2024-05-29 05:13:22'),
(851, 1, 'products', 'GET', '::1', '[]', '2024-05-29 05:13:27', '2024-05-29 05:13:27'),
(852, 1, 'products/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-29 05:13:34', '2024-05-29 05:13:34'),
(853, 1, 'products', 'POST', '::1', '{\"user\":\"1\",\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as<\\/p>\",\"category\":null,\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/products\"}', '2024-05-29 05:14:04', '2024-05-29 05:14:04'),
(854, 1, 'products/create', 'GET', '::1', '[]', '2024-05-29 05:14:04', '2024-05-29 05:14:04'),
(855, 1, 'products', 'POST', '::1', '{\"user\":\"1\",\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as<\\/p>\",\"category\":\"29\",\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\"}', '2024-05-29 05:14:11', '2024-05-29 05:14:11'),
(856, 1, 'products/create', 'GET', '::1', '[]', '2024-05-29 05:14:11', '2024-05-29 05:14:11'),
(857, 1, 'products', 'POST', '::1', '{\"user\":\"1\",\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as<\\/p>\",\"category\":\"29\",\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\"}', '2024-05-29 05:14:18', '2024-05-29 05:14:18'),
(858, 1, 'products/create', 'GET', '::1', '[]', '2024-05-29 05:14:21', '2024-05-29 05:14:21'),
(859, 1, 'products', 'POST', '::1', '{\"user\":\"1\",\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as<\\/p>\",\"category\":\"29\",\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\"}', '2024-05-29 05:30:38', '2024-05-29 05:30:38'),
(860, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:30:38', '2024-05-29 05:30:38'),
(861, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:30:41', '2024-05-29 05:30:41'),
(862, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:38:53', '2024-05-29 05:38:53'),
(863, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as<\\/p>\",\"category\":\"29\",\"images\":{\"new_1\":{\"administrator_id\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:39:01', '2024-05-29 05:39:01'),
(864, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:39:01', '2024-05-29 05:39:01'),
(865, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:39:06', '2024-05-29 05:39:06'),
(866, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:40:22', '2024-05-29 05:40:22'),
(867, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as<\\/p>\",\"category\":\"29\",\"images\":{\"new_1\":{\"administrator_id\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:40:46', '2024-05-29 05:40:46'),
(868, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:40:46', '2024-05-29 05:40:46'),
(869, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as<\\/p>\",\"category\":\"29\",\"images\":{\"new_1\":{\"administrator_id\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:41:51', '2024-05-29 05:41:51'),
(870, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:41:51', '2024-05-29 05:41:51'),
(871, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:43:01', '2024-05-29 05:43:01'),
(872, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:43:10', '2024-05-29 05:43:10'),
(873, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:43:22', '2024-05-29 05:43:22'),
(874, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as<\\/p>\",\"category\":\"29\",\"images\":{\"new_1\":{\"administrator_id\":\"1\",\"src\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:43:29', '2024-05-29 05:43:29'),
(875, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:43:29', '2024-05-29 05:43:29'),
(876, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as<\\/p>\",\"category\":\"29\",\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:45:07', '2024-05-29 05:45:07'),
(877, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:45:07', '2024-05-29 05:45:07'),
(878, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as<\\/p>\",\"category\":\"29\",\"images\":{\"new_1\":{\"administrator_id\":\"1\",\"src\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:45:21', '2024-05-29 05:45:21'),
(879, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:45:21', '2024-05-29 05:45:21'),
(880, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:46:01', '2024-05-29 05:46:01'),
(881, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:46:06', '2024-05-29 05:46:06'),
(882, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:47:35', '2024-05-29 05:47:35'),
(883, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as<\\/p>\",\"category\":\"29\",\"pics\":{\"new_1\":{\"administrator_id\":\"1\",\"src\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:47:40', '2024-05-29 05:47:40'),
(884, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:47:40', '2024-05-29 05:47:40'),
(885, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:47:48', '2024-05-29 05:47:48'),
(886, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:48:26', '2024-05-29 05:48:26'),
(887, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:48:39', '2024-05-29 05:48:39'),
(888, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:48:45', '2024-05-29 05:48:45'),
(889, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:49:04', '2024-05-29 05:49:04'),
(890, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:50:14', '2024-05-29 05:50:14'),
(891, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:50:44', '2024-05-29 05:50:44'),
(892, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:50:56', '2024-05-29 05:50:56'),
(893, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:51:21', '2024-05-29 05:51:21'),
(894, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as<\\/p>\",\"category\":\"29\",\"pics\":{\"new_1\":{\"administrator_id\":\"1\",\"src\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:51:29', '2024-05-29 05:51:29'),
(895, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:51:29', '2024-05-29 05:51:29'),
(896, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as...<\\/p>\",\"category\":\"29\",\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:51:37', '2024-05-29 05:51:37'),
(897, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:51:39', '2024-05-29 05:51:39'),
(898, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>as...as<\\/p>\",\"category\":\"29\",\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:52:13', '2024-05-29 05:52:13'),
(899, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:52:15', '2024-05-29 05:52:15'),
(900, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:52:19', '2024-05-29 05:52:19'),
(901, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:52:48', '2024-05-29 05:52:48'),
(902, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>asas<\\/p>\",\"category\":\"29\",\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:52:52', '2024-05-29 05:52:52'),
(903, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:52:52', '2024-05-29 05:52:52'),
(904, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>asas<\\/p>\",\"category\":\"29\",\"pics\":{\"new_1\":{\"administrator_id\":\"1\",\"src\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:53:01', '2024-05-29 05:53:01'),
(905, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:53:01', '2024-05-29 05:53:01'),
(906, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:54:27', '2024-05-29 05:54:27'),
(907, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>asasa..<\\/p>\",\"category\":\"29\",\"pics\":{\"new_1\":{\"administrator_id\":\"1\",\"src\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:54:36', '2024-05-29 05:54:36'),
(908, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:54:36', '2024-05-29 05:54:36'),
(909, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:56:25', '2024-05-29 05:56:25'),
(910, 1, 'products/904', 'PUT', '::1', '{\"pics\":{\"new_1\":{\"administrator_id\":\"1\",\"src\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:56:28', '2024-05-29 05:56:28'),
(911, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:56:29', '2024-05-29 05:56:29'),
(912, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:56:31', '2024-05-29 05:56:31'),
(913, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:58:06', '2024-05-29 05:58:06'),
(914, 1, 'products/904', 'PUT', '::1', '{\"pics\":{\"new_1\":{\"administrator_id\":\"1\",\"src\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:58:10', '2024-05-29 05:58:10'),
(915, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:58:10', '2024-05-29 05:58:10'),
(916, 1, 'products/904', 'PUT', '::1', '{\"pics\":{\"2757\":{\"administrator_id\":\"1\",\"src\":\"logo.png\",\"id\":\"2757\",\"_remove_\":\"1\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:59:05', '2024-05-29 05:59:05'),
(917, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:59:05', '2024-05-29 05:59:05'),
(918, 1, 'products/904', 'PUT', '::1', '{\"pics\":{\"new_1\":{\"administrator_id\":\"1\",\"src\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:59:09', '2024-05-29 05:59:09'),
(919, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:59:10', '2024-05-29 05:59:10'),
(920, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:59:37', '2024-05-29 05:59:37'),
(921, 1, 'products/904', 'PUT', '::1', '{\"pics\":{\"new_1\":{\"administrator_id\":\"1\",\"src\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 05:59:41', '2024-05-29 05:59:41'),
(922, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 05:59:41', '2024-05-29 05:59:41'),
(923, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 06:00:13', '2024-05-29 06:00:13'),
(924, 1, 'products/904', 'PUT', '::1', '{\"pics\":{\"2759\":{\"administrator_id\":\"1\",\"src\":\"logo.png\",\"id\":\"2759\",\"_remove_\":\"1\"},\"new_1\":{\"administrator_id\":\"1\",\"src\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 06:00:19', '2024-05-29 06:00:19'),
(925, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 06:00:20', '2024-05-29 06:00:20'),
(926, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 06:15:20', '2024-05-29 06:15:20'),
(927, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>asasa..<\\/p>\",\"category\":\"29\",\"pics\":{\"2760\":{\"administrator_id\":\"1\",\"is_processed\":\"No\",\"id\":\"2760\",\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 06:15:29', '2024-05-29 06:15:29'),
(928, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 06:15:29', '2024-05-29 06:15:29'),
(929, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 06:36:06', '2024-05-29 06:36:06'),
(930, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 06:42:49', '2024-05-29 06:42:49'),
(931, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>asasa..<\\/p>\",\"category\":\"29\",\"pics\":{\"2760\":{\"administrator_id\":\"1\",\"is_processed\":\"No\",\"id\":\"2760\",\"_remove_\":\"0\"},\"new_1\":{\"administrator_id\":\"1\",\"is_processed\":\"No\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 06:43:15', '2024-05-29 06:43:15'),
(932, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 06:43:16', '2024-05-29 06:43:16'),
(933, 1, 'products/904', 'PUT', '::1', '{\"name\":\"Kampla, Uganda\",\"price_2\":\"100\",\"price_1\":\"110000\",\"has_colors\":\"No\",\"has_sizes\":\"No\",\"description\":\"<p>asasa..<\\/p>\",\"category\":\"29\",\"pics\":{\"2760\":{\"administrator_id\":\"1\",\"is_processed\":\"No\",\"id\":\"2760\",\"_remove_\":\"0\"},\"new___LA_KEY__\":{\"administrator_id\":\"1\",\"is_processed\":\"No\",\"id\":null,\"_remove_\":\"1\"}},\"_token\":\"lTavEEs9vivgwdBVCSFsB71NcyMPYma2AFdpco01\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-05-29 06:43:26', '2024-05-29 06:43:26'),
(934, 1, 'products/904/edit', 'GET', '::1', '[]', '2024-05-29 06:43:26', '2024-05-29 06:43:26'),
(935, 1, '/', 'GET', '::1', '[]', '2024-08-27 05:42:55', '2024-08-27 05:42:55'),
(936, 1, 'delivery-addresses', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-27 05:42:59', '2024-08-27 05:42:59'),
(937, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-27 05:43:01', '2024-08-27 05:43:01'),
(938, 1, 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-27 05:43:03', '2024-08-27 05:43:03'),
(939, 1, 'product-orders', 'GET', '::1', '[]', '2024-08-27 05:43:25', '2024-08-27 05:43:25'),
(940, 1, 'product-orders', 'GET', '::1', '[]', '2024-08-27 05:43:29', '2024-08-27 05:43:29'),
(941, 1, '/', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-27 05:43:30', '2024-08-27 05:43:30'),
(942, 1, 'delivery-addresses', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-27 05:44:29', '2024-08-27 05:44:29'),
(943, 1, '/', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-27 06:30:49', '2024-08-27 06:30:49'),
(944, 1, '/', 'GET', '::1', '[]', '2024-08-27 06:30:49', '2024-08-27 06:30:49'),
(945, 1, '/', 'GET', '::1', '[]', '2024-08-27 07:04:00', '2024-08-27 07:04:00'),
(946, 1, '/', 'GET', '::1', '[]', '2024-08-27 07:04:39', '2024-08-27 07:04:39');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(947, 1, '/', 'GET', '::1', '[]', '2024-08-27 07:41:26', '2024-08-27 07:41:26'),
(948, 1, '/', 'GET', '::1', '[]', '2024-08-27 07:41:44', '2024-08-27 07:41:44'),
(949, 1, '/', 'GET', '::1', '[]', '2024-08-27 07:42:15', '2024-08-27 07:42:15'),
(950, 1, '/', 'GET', '::1', '[]', '2024-08-27 07:42:16', '2024-08-27 07:42:16'),
(951, 1, '/', 'GET', '::1', '[]', '2024-08-27 07:42:31', '2024-08-27 07:42:31'),
(952, 1, '/', 'GET', '::1', '[]', '2024-08-27 07:43:11', '2024-08-27 07:43:11'),
(953, 1, '/', 'GET', '::1', '[]', '2024-08-27 10:21:01', '2024-08-27 10:21:01'),
(954, 1, '/', 'GET', '::1', '[]', '2024-08-27 10:22:28', '2024-08-27 10:22:28'),
(955, 1, '/', 'GET', '::1', '[]', '2024-08-28 13:01:20', '2024-08-28 13:01:20'),
(956, 1, '/', 'GET', '::1', '[]', '2024-08-28 13:02:52', '2024-08-28 13:02:52'),
(957, 1, '/', 'GET', '::1', '[]', '2024-08-28 13:03:43', '2024-08-28 13:03:43'),
(958, 1, '/', 'GET', '::1', '[]', '2024-08-28 13:03:46', '2024-08-28 13:03:46'),
(959, 1, '/', 'GET', '::1', '[]', '2024-08-28 13:03:57', '2024-08-28 13:03:57'),
(960, 1, '/', 'GET', '::1', '[]', '2024-08-28 13:04:59', '2024-08-28 13:04:59'),
(961, 1, '/', 'GET', '::1', '[]', '2024-08-28 18:05:28', '2024-08-28 18:05:28'),
(962, 1, '/', 'GET', '::1', '[]', '2024-08-28 20:09:12', '2024-08-28 20:09:12'),
(963, 1, '/', 'GET', '::1', '[]', '2024-08-28 20:09:52', '2024-08-28 20:09:52'),
(964, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-28 20:10:32', '2024-08-28 20:10:32'),
(965, 1, 'product-orders', 'GET', '::1', '[]', '2024-08-28 20:11:22', '2024-08-28 20:11:22'),
(966, 1, 'orders', 'GET', '::1', '[]', '2024-08-28 20:12:39', '2024-08-28 20:12:39'),
(967, 1, 'orders/75', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-28 20:12:48', '2024-08-28 20:12:48'),
(968, 1, 'orders', 'GET', '::1', '[]', '2024-08-28 20:12:48', '2024-08-28 20:12:48'),
(969, 1, 'orders/75', 'GET', '::1', '[]', '2024-08-28 20:12:57', '2024-08-28 20:12:57'),
(970, 1, 'orders/67', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-28 20:13:03', '2024-08-28 20:13:03'),
(971, 1, 'orders', 'GET', '::1', '[]', '2024-08-28 20:13:04', '2024-08-28 20:13:04'),
(972, 1, 'orders/72', 'GET', '::1', '[]', '2024-08-28 20:13:09', '2024-08-28 20:13:09'),
(973, 1, 'orders/72', 'GET', '::1', '[]', '2024-08-28 20:13:58', '2024-08-28 20:13:58'),
(974, 1, 'orders/72', 'GET', '::1', '[]', '2024-08-28 20:14:14', '2024-08-28 20:14:14'),
(975, 1, 'orders/72/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-28 20:14:17', '2024-08-28 20:14:17'),
(976, 1, 'orders/72', 'PUT', '::1', '{\"order_state\":\"1\",\"_token\":\"ejOQlkXdgNWhpXmoADL23fhLRukPnRIKibhCenfr\",\"after-save\":\"2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/orders\\/72\"}', '2024-08-28 20:14:21', '2024-08-28 20:14:21'),
(977, 1, 'orders/create', 'GET', '::1', '[]', '2024-08-28 20:14:21', '2024-08-28 20:14:21'),
(978, 1, 'orders', 'POST', '::1', '{\"order_state\":\"2\",\"_token\":\"ejOQlkXdgNWhpXmoADL23fhLRukPnRIKibhCenfr\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/orders\\/72\\/edit\"}', '2024-08-28 20:14:25', '2024-08-28 20:14:25'),
(979, 1, 'orders/72/edit', 'GET', '::1', '[]', '2024-08-28 20:14:25', '2024-08-28 20:14:25'),
(980, 1, 'orders', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-28 20:14:26', '2024-08-28 20:14:26'),
(981, 1, 'orders', 'GET', '::1', '[]', '2024-08-28 20:15:21', '2024-08-28 20:15:21'),
(982, 1, '/', 'GET', '::1', '[]', '2024-09-04 17:54:50', '2024-09-04 17:54:50'),
(983, 1, 'auth/setting', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-04 17:54:55', '2024-09-04 17:54:55'),
(984, 1, 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-04 17:55:24', '2024-09-04 17:55:24'),
(985, 1, '/', 'GET', '::1', '[]', '2024-09-30 20:12:08', '2024-09-30 20:12:08'),
(986, 1, '/', 'GET', '::1', '[]', '2024-10-03 09:36:37', '2024-10-03 09:36:37'),
(987, 1, 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 09:36:41', '2024-10-03 09:36:41'),
(988, 1, 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 09:38:12', '2024-10-03 09:38:12'),
(989, 1, 'auth/users/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 09:38:15', '2024-10-03 09:38:15'),
(990, 1, 'requests', 'GET', '::1', '[]', '2024-10-03 09:38:39', '2024-10-03 09:38:39'),
(991, 1, 'requests/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 09:38:43', '2024-10-03 09:38:43'),
(992, 1, 'requests', 'POST', '::1', '{\"first_name\":\"Shelly\",\"last_name\":\"Stevenson\",\"campus_id\":\"94\",\"business_name\":\"Marsden Beck\",\"business_license_number\":\"930\",\"business_license_issue_authority\":\"Est similique natus\",\"business_license_issue_date\":\"06-Aug-1999\",\"business_license_validity\":\"Aut quisquam asperna\",\"business_address\":\"Autem aut corporis i\",\"business_phone_number\":\"+1 (769) 273-4876\",\"business_whatsapp\":\"Harum non sapiente r\",\"business_email\":\"gyrize@mailinator.com\",\"business_cover_photo\":\"Occaecat veniam qui\",\"business_cover_details\":\"Ex architecto ut qui\",\"user_type\":\"admin\",\"status\":\"Active\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/localhost:8888\\/ham\\/requests\"}', '2024-10-03 09:39:05', '2024-10-03 09:39:05'),
(993, 1, 'requests/create', 'GET', '::1', '[]', '2024-10-03 09:39:05', '2024-10-03 09:39:05'),
(994, 1, 'requests', 'POST', '::1', '{\"first_name\":\"Shelly\",\"last_name\":\"Stevenson\",\"campus_id\":\"94\",\"business_name\":\"Marsden Beck\",\"business_license_number\":\"930\",\"business_license_issue_authority\":\"Est similique natus\",\"business_license_issue_date\":\"06-Aug-1999\",\"business_license_validity\":\"Aut quisquam asperna\",\"business_address\":\"Autem aut corporis i\",\"business_phone_number\":\"+1 (769) 273-4876\",\"business_whatsapp\":\"Harum non sapiente r\",\"business_email\":\"gyrize@mailinator.com\",\"business_cover_photo\":\"Occaecat veniam qui\",\"business_cover_details\":\"Ex architecto ut qui\",\"user_type\":\"admin\",\"status\":\"Active\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"after-save\":\"1\"}', '2024-10-03 09:44:05', '2024-10-03 09:44:05'),
(995, 1, 'requests/create', 'GET', '::1', '[]', '2024-10-03 09:44:05', '2024-10-03 09:44:05'),
(996, 1, 'requests', 'POST', '::1', '{\"first_name\":\"Shelly\",\"last_name\":\"Stevenson\",\"campus_id\":\"94\",\"business_name\":\"Marsden Beck\",\"business_license_number\":\"930\",\"business_license_issue_authority\":\"Est similique natus\",\"business_license_issue_date\":\"06-Aug-1999\",\"business_license_validity\":\"Aut quisquam asperna\",\"business_address\":\"Autem aut corporis i\",\"business_phone_number\":\"+1 (769) 273-4876\",\"business_whatsapp\":\"Harum non sapiente r\",\"business_email\":\"gyrize@mailinator.com\",\"business_cover_photo\":\"Occaecat veniam qui\",\"business_cover_details\":\"Ex architecto ut qui\",\"user_type\":\"admin\",\"status\":\"Active\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"after-save\":\"1\"}', '2024-10-03 10:00:03', '2024-10-03 10:00:03'),
(997, 1, 'requests/120/edit', 'GET', '::1', '[]', '2024-10-03 10:00:03', '2024-10-03 10:00:03'),
(998, 1, 'requests', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 10:00:11', '2024-10-03 10:00:11'),
(999, 1, 'requests/120/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 10:00:15', '2024-10-03 10:00:15'),
(1000, 1, '/', 'GET', '::1', '[]', '2024-10-03 10:16:25', '2024-10-03 10:16:25'),
(1001, 1, 'products', 'GET', '::1', '[]', '2024-10-03 10:16:56', '2024-10-03 10:16:56'),
(1002, 1, 'products/909', 'PUT', '::1', '{\"name\":\"name\",\"value\":\"some test product\",\"pk\":\"909\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 10:17:39', '2024-10-03 10:17:39'),
(1003, 1, 'products/909/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 10:17:43', '2024-10-03 10:17:43'),
(1004, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:18:53', '2024-10-03 10:18:53'),
(1005, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:19:37', '2024-10-03 10:19:37'),
(1006, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:19:52', '2024-10-03 10:19:52'),
(1007, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:20:07', '2024-10-03 10:20:07'),
(1008, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:20:14', '2024-10-03 10:20:14'),
(1009, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:20:44', '2024-10-03 10:20:44'),
(1010, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:22:26', '2024-10-03 10:22:26'),
(1011, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:22:46', '2024-10-03 10:22:46'),
(1012, 1, 'products/909/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 10:22:55', '2024-10-03 10:22:55'),
(1013, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"21000\",\"price_1\":\"20000\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"[\\\"12\\\"\",\"\\\"14\\\"\",\"\\\"18\\\"]\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 10:23:06', '2024-10-03 10:23:06'),
(1014, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:23:07', '2024-10-03 10:23:07'),
(1015, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:25:35', '2024-10-03 10:25:35'),
(1016, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:25:46', '2024-10-03 10:25:46'),
(1017, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"21000\",\"price_1\":\"20000\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 10:25:53', '2024-10-03 10:25:53'),
(1018, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:25:54', '2024-10-03 10:25:54'),
(1019, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"21000\",\"price_1\":\"20000\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",\"DarkBlue\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 10:26:01', '2024-10-03 10:26:01'),
(1020, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 10:26:02', '2024-10-03 10:26:02'),
(1021, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"21000.01\",\"price_1\":\"20000\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",\"DarkBlue\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_method\":\"PUT\"}', '2024-10-03 11:05:53', '2024-10-03 11:05:53'),
(1022, 1, 'products', 'GET', '::1', '[]', '2024-10-03 11:05:55', '2024-10-03 11:05:55'),
(1023, 1, 'products/909/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 11:05:57', '2024-10-03 11:05:57'),
(1024, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 11:05:59', '2024-10-03 11:05:59'),
(1025, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 11:06:27', '2024-10-03 11:06:27'),
(1026, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"21000.21\",\"price_1\":\"20000\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",\"DarkBlue\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:06:35', '2024-10-03 11:06:35'),
(1027, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 11:06:36', '2024-10-03 11:06:36'),
(1028, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"21000\",\"price_1\":\"20000.22\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",\"DarkBlue\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:07:46', '2024-10-03 11:07:46'),
(1029, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 11:07:48', '2024-10-03 11:07:48'),
(1030, 1, 'products/909/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 11:08:03', '2024-10-03 11:08:03'),
(1031, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"21000.01\",\"price_1\":\"21000.01\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",\"DarkBlue\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:08:10', '2024-10-03 11:08:10'),
(1032, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 11:08:11', '2024-10-03 11:08:11'),
(1033, 1, 'products/909/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 11:12:02', '2024-10-03 11:12:02'),
(1034, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 11:12:16', '2024-10-03 11:12:16'),
(1035, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 11:12:24', '2024-10-03 11:12:24'),
(1036, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"21000.00\",\"price_1\":\"21000.01\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",\"DarkBlue\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:12:32', '2024-10-03 11:12:32'),
(1037, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 11:12:34', '2024-10-03 11:12:34'),
(1038, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"21000.0012\",\"price_1\":\"21000.01\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",\"DarkBlue\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:12:40', '2024-10-03 11:12:40'),
(1039, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 11:12:41', '2024-10-03 11:12:41'),
(1040, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"21000.0084\",\"price_1\":\"21000.01\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",\"DarkBlue\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:12:47', '2024-10-03 11:12:47'),
(1041, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-03 11:12:48', '2024-10-03 11:12:48'),
(1042, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 11:12:58', '2024-10-03 11:12:58'),
(1043, 1, 'products/909', 'PUT', '::1', '{\"name\":\"price_1\",\"value\":\"10\",\"pk\":\"909\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:19:06', '2024-10-03 11:19:06'),
(1044, 1, 'products/908', 'PUT', '::1', '{\"name\":\"price_1\",\"value\":\"52.1\",\"pk\":\"908\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:19:11', '2024-10-03 11:19:11'),
(1045, 1, 'products/907', 'PUT', '::1', '{\"name\":\"price_1\",\"value\":\"32.4\",\"pk\":\"907\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:19:16', '2024-10-03 11:19:16'),
(1046, 1, 'products/906', 'PUT', '::1', '{\"name\":\"price_1\",\"value\":\"56.2\",\"pk\":\"906\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:19:23', '2024-10-03 11:19:23'),
(1047, 1, 'products/905', 'PUT', '::1', '{\"name\":\"price_1\",\"value\":\"120.31\",\"pk\":\"905\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:19:29', '2024-10-03 11:19:29'),
(1048, 1, 'products/904', 'PUT', '::1', '{\"name\":\"price_1\",\"value\":\"22.2\",\"pk\":\"904\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:28:47', '2024-10-03 11:28:47'),
(1049, 1, 'products/909', 'PUT', '::1', '{\"name\":\"price_2\",\"value\":\"21.2\",\"pk\":\"909\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:28:52', '2024-10-03 11:28:52'),
(1050, 1, 'products/908', 'PUT', '::1', '{\"name\":\"price_2\",\"value\":\"21.4\",\"pk\":\"908\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:28:57', '2024-10-03 11:28:57'),
(1051, 1, 'products/907', 'PUT', '::1', '{\"name\":\"price_2\",\"value\":\"100.22\",\"pk\":\"907\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:29:02', '2024-10-03 11:29:02'),
(1052, 1, 'products/906', 'PUT', '::1', '{\"name\":\"price_2\",\"value\":\"19\",\"pk\":\"906\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:29:07', '2024-10-03 11:29:07'),
(1053, 1, 'products/905', 'PUT', '::1', '{\"name\":\"price_2\",\"value\":\"17\",\"pk\":\"905\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:29:13', '2024-10-03 11:29:13'),
(1054, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-03 11:29:14', '2024-10-03 11:29:14'),
(1055, 1, 'products/899', 'PUT', '::1', '{\"name\":\"price_2\",\"value\":\"43.2\",\"pk\":\"899\",\"_token\":\"zeywSjRP3eWlZVJ8c5KztL5RDDIasXHgg6yp7UwJ\",\"_editable\":\"1\",\"_method\":\"PUT\"}', '2024-10-03 11:29:21', '2024-10-03 11:29:21'),
(1056, 1, 'products', 'GET', '::1', '{\"_pjax\":\"#pjax-container\",\"__search__\":\"y\"}', '2024-10-03 15:40:07', '2024-10-03 15:40:07'),
(1057, 1, '/', 'GET', '::1', '[]', '2024-10-24 14:18:17', '2024-10-24 14:18:17'),
(1058, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-24 14:18:19', '2024-10-24 14:18:19'),
(1059, 1, 'delivery-addresses', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-24 14:18:20', '2024-10-24 14:18:20'),
(1060, 1, 'delivery-addresses/1/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-24 14:18:22', '2024-10-24 14:18:22'),
(1061, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-24 14:18:27', '2024-10-24 14:18:27'),
(1062, 1, 'auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-24 14:18:28', '2024-10-24 14:18:28'),
(1063, 1, '/', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-24 14:18:29', '2024-10-24 14:18:29'),
(1064, 1, 'products', 'GET', '::1', '[]', '2024-10-24 14:18:37', '2024-10-24 14:18:37'),
(1065, 1, 'products/909/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-24 14:18:41', '2024-10-24 14:18:41'),
(1066, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:24:48', '2024-10-24 14:24:48'),
(1067, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:54:21', '2024-10-24 14:54:21'),
(1068, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"70.00\",\"price_1\":\"80.00\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",\"DarkBlue\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"user\":\"1\",\"images\":{\"2762\":{\"administrator_id\":\"1\",\"id\":\"2762\",\"_remove_\":\"0\"}},\"_token\":\"dZtXLL5G3uIStgj9jdi6kEYjQ6MFxYumQRr8OyOs\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-24 14:54:31', '2024-10-24 14:54:31'),
(1069, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:54:31', '2024-10-24 14:54:31'),
(1070, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"70.00\",\"price_1\":\"80.00\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",\"DarkBlue\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"user\":\"1\",\"images\":{\"2762\":{\"administrator_id\":\"1\",\"id\":\"2762\",\"_remove_\":\"0\"},\"new_1\":{\"administrator_id\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"dZtXLL5G3uIStgj9jdi6kEYjQ6MFxYumQRr8OyOs\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-24 14:54:46', '2024-10-24 14:54:46'),
(1071, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:54:46', '2024-10-24 14:54:46'),
(1072, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:55:23', '2024-10-24 14:55:23'),
(1073, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"70.00\",\"price_1\":\"80.00\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",\"DarkBlue\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"user\":\"1\",\"images\":{\"2762\":{\"administrator_id\":\"1\",\"id\":\"2762\",\"_remove_\":\"0\"},\"new_1\":{\"administrator_id\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"dZtXLL5G3uIStgj9jdi6kEYjQ6MFxYumQRr8OyOs\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-24 14:55:34', '2024-10-24 14:55:34'),
(1074, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:55:34', '2024-10-24 14:55:34'),
(1075, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:56:41', '2024-10-24 14:56:41'),
(1076, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:57:21', '2024-10-24 14:57:21'),
(1077, 1, 'products/909', 'PUT', '::1', '{\"name\":\"some test product\",\"price_2\":\"70.00\",\"price_1\":\"80.00\",\"has_colors\":\"Yes\",\"colors\":[\"Blue\",\"Brown\",\"Yellow\",\"DarkBlue\",null],\"has_sizes\":\"Yes\",\"sizes\":[\"12\",\"14\",\"18\",\"XXXL\",null],\"description\":\"<p>aisvjh has ja shajs ash gasfkjabgekjajh agujskabskjba sbasknjabshj a skjnakjsgjhbjknasjhgvhasmasc<\\/p>\",\"category\":\"31\",\"user\":\"1\",\"images\":{\"2762\":{\"administrator_id\":\"1\",\"id\":\"2762\",\"_remove_\":\"0\"},\"2764\":{\"administrator_id\":\"1\",\"id\":\"2764\",\"_remove_\":\"0\"},\"new_1\":{\"administrator_id\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"dZtXLL5G3uIStgj9jdi6kEYjQ6MFxYumQRr8OyOs\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2024-10-24 14:57:38', '2024-10-24 14:57:38'),
(1078, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:57:38', '2024-10-24 14:57:38'),
(1079, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:58:48', '2024-10-24 14:58:48'),
(1080, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:58:53', '2024-10-24 14:58:53'),
(1081, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:59:05', '2024-10-24 14:59:05'),
(1082, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:59:27', '2024-10-24 14:59:27'),
(1083, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:59:35', '2024-10-24 14:59:35'),
(1084, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:59:44', '2024-10-24 14:59:44'),
(1085, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 14:59:56', '2024-10-24 14:59:56'),
(1086, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 15:00:02', '2024-10-24 15:00:02'),
(1087, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 15:00:30', '2024-10-24 15:00:30'),
(1088, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 15:01:09', '2024-10-24 15:01:09'),
(1089, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 15:01:49', '2024-10-24 15:01:49'),
(1090, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 15:02:08', '2024-10-24 15:02:08'),
(1091, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 15:02:15', '2024-10-24 15:02:15'),
(1092, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 15:03:11', '2024-10-24 15:03:11'),
(1093, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 15:03:29', '2024-10-24 15:03:29'),
(1094, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 15:03:38', '2024-10-24 15:03:38'),
(1095, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 15:03:55', '2024-10-24 15:03:55'),
(1096, 1, 'products/909/edit', 'GET', '::1', '[]', '2024-10-24 15:04:33', '2024-10-24 15:04:33'),
(1097, 1, '/', 'GET', '::1', '[]', '2025-02-22 07:24:44', '2025-02-22 07:24:44'),
(1098, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 16:46:55', '2025-02-22 16:46:55'),
(1099, 1, 'product-categories/28/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 16:47:06', '2025-02-22 16:47:06'),
(1100, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 16:47:53', '2025-02-22 16:47:53'),
(1101, 1, 'product-categories/29/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 16:48:06', '2025-02-22 16:48:06'),
(1102, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 16:49:21', '2025-02-22 16:49:21'),
(1103, 1, 'product-categories', 'GET', '::1', '[]', '2025-02-22 16:50:45', '2025-02-22 16:50:45'),
(1104, 1, 'product-categories/28/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:14:16', '2025-02-22 18:14:16'),
(1105, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:14:23', '2025-02-22 18:14:23'),
(1106, 1, 'product-categories/28/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:14:28', '2025-02-22 18:14:28'),
(1107, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:14:31', '2025-02-22 18:14:31'),
(1108, 1, 'product-categories/28/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:14:33', '2025-02-22 18:14:33'),
(1109, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:14:35', '2025-02-22 18:14:35'),
(1110, 1, 'product-categories/28/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:14:46', '2025-02-22 18:14:46'),
(1111, 1, 'product-categories/28/edit', 'GET', '::1', '[]', '2025-02-22 18:14:54', '2025-02-22 18:14:54'),
(1112, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:15:01', '2025-02-22 18:15:01'),
(1113, 1, 'product-categories/create', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:15:04', '2025-02-22 18:15:04'),
(1114, 1, 'product-categories', 'POST', '::1', '{\"category\":\"MAIN CATEGORY\",\"is_parent\":\"Yes\",\"show_in_banner\":\"No\",\"show_in_categories\":\"No\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\"}', '2025-02-22 18:16:28', '2025-02-22 18:16:28'),
(1115, 1, 'product-categories', 'GET', '::1', '[]', '2025-02-22 18:16:28', '2025-02-22 18:16:28'),
(1116, 1, 'product-categories', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:17:38', '2025-02-22 18:17:38'),
(1117, 1, 'product-categories/2/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:17:42', '2025-02-22 18:17:42'),
(1118, 1, 'product-categories/2', 'PUT', '::1', '{\"category\":\"Phones\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\"}', '2025-02-22 18:19:25', '2025-02-22 18:19:25'),
(1119, 1, 'product-categories/2/edit', 'GET', '::1', '[]', '2025-02-22 18:19:25', '2025-02-22 18:19:25'),
(1120, 1, 'product-categories/2', 'PUT', '::1', '{\"category\":\"Phones\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"attributes\":{\"values\":[\"black\",\"blue\",\"yellow\",\"green\"]},\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2025-02-22 18:20:27', '2025-02-22 18:20:27'),
(1121, 1, 'product-categories/2/edit', 'GET', '::1', '[]', '2025-02-22 18:20:27', '2025-02-22 18:20:27'),
(1122, 1, 'product-categories/2', 'PUT', '::1', '{\"category\":\"Phones\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"attributes\":{\"values\":[\"black\",\"blue\",\"yellow\",\"green\"]},\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2025-02-22 18:20:38', '2025-02-22 18:20:38'),
(1123, 1, 'product-categories/2/edit', 'GET', '::1', '[]', '2025-02-22 18:20:38', '2025-02-22 18:20:38'),
(1124, 1, 'product-categories/2', 'PUT', '::1', '{\"category\":\"Phones\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"attributes\":{\"values\":[\"black\",\"blue\",\"yellow\",\"green\"]},\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2025-02-22 18:21:57', '2025-02-22 18:21:57'),
(1125, 1, 'product-categories/2/edit', 'GET', '::1', '[]', '2025-02-22 18:21:57', '2025-02-22 18:21:57'),
(1126, 1, 'product-categories/3/edit', 'GET', '::1', '[]', '2025-02-22 18:22:06', '2025-02-22 18:22:06'),
(1127, 1, 'product-categories/3', 'PUT', '::1', '{\"category\":\"Audio & Headphones\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\\/28\\/edit\"}', '2025-02-22 18:29:08', '2025-02-22 18:29:08'),
(1128, 1, 'product-categories/3/edit', 'GET', '::1', '[]', '2025-02-22 18:29:09', '2025-02-22 18:29:09'),
(1129, 1, 'product-categories/4/edit', 'GET', '::1', '[]', '2025-02-22 18:29:13', '2025-02-22 18:29:13'),
(1130, 1, 'product-categories/4', 'PUT', '::1', '{\"category\":\"Computers & Laptops\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\\/3\\/edit\"}', '2025-02-22 18:30:45', '2025-02-22 18:30:45'),
(1131, 1, 'product-categories/4/edit', 'GET', '::1', '[]', '2025-02-22 18:30:45', '2025-02-22 18:30:45'),
(1132, 1, 'product-categories/5/edit', 'GET', '::1', '[]', '2025-02-22 18:30:52', '2025-02-22 18:30:52'),
(1133, 1, 'product-categories/5', 'PUT', '::1', '{\"category\":\"Notebooks\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\\/4\\/edit\"}', '2025-02-22 18:31:53', '2025-02-22 18:31:53'),
(1134, 1, 'product-categories/create', 'GET', '::1', '[]', '2025-02-22 18:31:53', '2025-02-22 18:31:53'),
(1135, 1, 'product-categories/5/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:31:59', '2025-02-22 18:31:59'),
(1136, 1, 'product-categories/6/edit', 'GET', '::1', '[]', '2025-02-22 18:32:03', '2025-02-22 18:32:03'),
(1137, 1, 'product-categories/6', 'PUT', '::1', '{\"category\":\"Security & Surveillance\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\\/5\\/edit\"}', '2025-02-22 18:32:54', '2025-02-22 18:32:54'),
(1138, 1, 'product-categories/6/edit', 'GET', '::1', '[]', '2025-02-22 18:32:54', '2025-02-22 18:32:54'),
(1139, 1, 'product-categories/7/edit', 'GET', '::1', '[]', '2025-02-22 18:32:59', '2025-02-22 18:32:59'),
(1140, 1, 'product-categories/7', 'PUT', '::1', '{\"category\":\"Cameras & Photography\",\"is_parent\":\"Yes\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\\/6\\/edit\"}', '2025-02-22 18:34:04', '2025-02-22 18:34:04'),
(1141, 1, 'product-categories/7/edit', 'GET', '::1', '[]', '2025-02-22 18:34:05', '2025-02-22 18:34:05'),
(1142, 1, 'product-categories/8/edit', 'GET', '::1', '[]', '2025-02-22 18:34:09', '2025-02-22 18:34:09'),
(1143, 1, 'product-categories/8', 'PUT', '::1', '{\"category\":\"Printers & Scanners\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\\/7\\/edit\"}', '2025-02-22 18:34:56', '2025-02-22 18:34:56'),
(1144, 1, 'product-categories/8/edit', 'GET', '::1', '[]', '2025-02-22 18:34:56', '2025-02-22 18:34:56'),
(1145, 1, 'product-categories/8', 'PUT', '::1', '{\"category\":\"Printers & Scanners\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2025-02-22 18:35:08', '2025-02-22 18:35:08'),
(1146, 1, 'product-categories/8/edit', 'GET', '::1', '[]', '2025-02-22 18:35:09', '2025-02-22 18:35:09'),
(1147, 1, 'product-categories/8', 'PUT', '::1', '{\"category\":\"Printers & Scanners\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"attributes\":{\"values\":[\"Expiry Date\"]},\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2025-02-22 18:35:20', '2025-02-22 18:35:20'),
(1148, 1, 'product-categories/8/edit', 'GET', '::1', '[]', '2025-02-22 18:35:20', '2025-02-22 18:35:20'),
(1149, 1, 'product-categories/9/edit', 'GET', '::1', '[]', '2025-02-22 18:35:31', '2025-02-22 18:35:31'),
(1150, 1, 'product-categories/9', 'PUT', '::1', '{\"category\":\"Monitors & Screens\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\\/8\\/edit\"}', '2025-02-22 18:36:06', '2025-02-22 18:36:06'),
(1151, 1, 'product-categories/9/edit', 'GET', '::1', '[]', '2025-02-22 18:36:07', '2025-02-22 18:36:07'),
(1152, 1, 'product-categories/10/edit', 'GET', '::1', '[]', '2025-02-22 18:36:20', '2025-02-22 18:36:20'),
(1153, 1, 'product-categories/10', 'PUT', '::1', '{\"category\":\"VR & Headsets\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"attributes\":{\"values\":[\"Brand\",\"Model Number\",\"Warranty\",\"Shipping Information\",\"Weight\",\"Dimensions\",\"Year\"]},\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\\/9\\/edit\"}', '2025-02-22 18:36:53', '2025-02-22 18:36:53'),
(1154, 1, 'product-categories/create', 'GET', '::1', '[]', '2025-02-22 18:36:53', '2025-02-22 18:36:53'),
(1155, 1, 'product-categories/10/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:37:10', '2025-02-22 18:37:10'),
(1156, 1, 'product-categories/11/edit', 'GET', '::1', '[]', '2025-02-22 18:37:12', '2025-02-22 18:37:12'),
(1157, 1, 'product-categories/10/edit', 'GET', '::1', '[]', '2025-02-22 18:37:45', '2025-02-22 18:37:45'),
(1158, 1, 'product-categories/10', 'PUT', '::1', '{\"category\":\"VR & Headsets\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"attributes\":{\"values\":[\"Brand\",\"Model Number\",\"Warranty\",\"Shipping Information\",\"Weight\",\"Dimensions\",\"Year\"]},\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\\/11\\/edit\"}', '2025-02-22 18:37:49', '2025-02-22 18:37:49'),
(1159, 1, 'product-categories/create', 'GET', '::1', '[]', '2025-02-22 18:37:49', '2025-02-22 18:37:49'),
(1160, 1, 'product-categories', 'POST', '::1', '{\"category\":\"Electronics & Gadgets\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\\/10\\/edit\"}', '2025-02-22 18:38:18', '2025-02-22 18:38:18'),
(1161, 1, 'product-categories/create', 'GET', '::1', '[]', '2025-02-22 18:38:18', '2025-02-22 18:38:18'),
(1162, 1, 'product-categories', 'POST', '::1', '{\"category\":\"Speakers & Soundbars\",\"is_parent\":\"No\",\"parent_id\":\"7\",\"attributes\":{\"values\":[null]},\"show_in_banner\":\"No\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\"}', '2025-02-22 18:38:41', '2025-02-22 18:38:41'),
(1163, 1, 'product-categories', 'GET', '::1', '[]', '2025-02-22 18:38:42', '2025-02-22 18:38:42'),
(1164, 1, 'product-categories/7/edit', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2025-02-22 18:38:44', '2025-02-22 18:38:44'),
(1165, 1, 'product-categories/7', 'PUT', '::1', '{\"category\":\"Cameras & Photography\",\"is_parent\":\"No\",\"parent_id\":\"1\",\"show_in_banner\":\"Yes\",\"show_in_categories\":\"Yes\",\"_token\":\"LX2e5mFWq29PlmnbW1D81jQiYvI6Rk5JUSj4TyOf\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8888\\/blitxpress\\/product-categories\"}', '2025-02-22 18:38:52', '2025-02-22 18:38:52'),
(1166, 1, 'product-categories', 'GET', '::1', '[]', '2025-02-22 18:38:52', '2025-02-22 18:38:52');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '2022-08-25 07:26:35', '2023-04-15 15:27:04'),
(2, 'Receptionist', 'receptionist', '2022-08-25 08:43:46', '2023-04-15 15:27:16'),
(3, 'Manager', 'manager', '2023-04-15 15:27:39', '2023-04-15 15:27:39'),
(4, 'Accountant', 'accountant', '2023-04-15 15:28:04', '2023-04-15 15:28:04'),
(5, 'CEO', 'ceo', '2023-04-15 15:28:19', '2023-04-15 15:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 13, NULL, NULL),
(1, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 1, NULL, NULL),
(2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_commissions`
--

CREATE TABLE `affiliate_commissions` (
  `id` int(11) NOT NULL,
  `commission` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'comission in percentage',
  `date_added` date NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_transactions`
--

CREATE TABLE `affiliate_transactions` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `affiliate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `temporary_id` int(11) DEFAULT NULL,
  `date_added` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='affiliate_transactions';

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_withdraws`
--

CREATE TABLE `affiliate_withdraws` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date_of_request` datetime NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT '0 is pending, 1 is approved, 3 is paid',
  `comment` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_version`
--

CREATE TABLE `app_version` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `date_added` date NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_version`
--

INSERT INTO `app_version` (`id`, `version`, `date_added`, `user`) VALUES
(1, 0, '2022-10-05', 59),
(2, 0, '2022-10-05', 59),
(3, 50, '2022-10-05', 59),
(4, 51, '2022-10-06', 59),
(5, 52, '2022-10-08', 59),
(6, 53, '2022-10-08', 59),
(7, 53, '2023-03-28', 67),
(8, 53, '2023-03-28', 67);

-- --------------------------------------------------------

--
-- Table structure for table `basic_info`
--

CREATE TABLE `basic_info` (
  `names` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date NOT NULL,
  `theme` tinyint(1) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `continent` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 is admin, 0 is client',
  `mail` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 is when welcome mail is not sent. 1 is sent welcome mail',
  `boo_cash` tinyint(1) NOT NULL DEFAULT '0',
  `affiliate_discount` tinyint(4) NOT NULL DEFAULT '0',
  `supplier` tinyint(1) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL,
  `password` char(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` char(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_timstamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_info`
--

INSERT INTO `basic_info` (`names`, `image`, `country`, `dob`, `theme`, `gender`, `continent`, `city`, `email`, `timezone`, `username`, `role`, `mail`, `boo_cash`, `affiliate_discount`, `supplier`, `user`, `password`, `verified`, `_timstamp`) VALUES
('Ashiraff Tumusiime', 'blank.png', '0', '1995-09-09', 1, 1, '0', '0', 'jaslac@jaslac.com', NULL, 'ashiraff-tumusiime', 1, 0, 0, 0, 0, 59, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, '2022-10-05 10:59:08'),
('Jacenta K', 'blank.png', '0', '1995-09-09', 1, 2, '0', '0', 'jacentah@jaslac.com', NULL, 'jacenta-k', 1, 0, 0, 0, 0, 62, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, '2022-10-05 10:59:08'),
('Ashiraff', 'blank.png', '0', '1995-09-09', 1, 1, '0', '0', 'ashan@boostedtechs.com', NULL, 'ashiraff', 0, 0, 0, 0, 0, 63, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, '2022-10-08 10:05:42'),
('Ashiraff', 'blank.png', '0', '1995-09-09', 1, 1, '0', '0', 'office@boostedtechs.com', NULL, NULL, 0, 0, 0, 0, 0, 64, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, '2022-10-08 10:08:38'),
('developer@boostedtechs.com', 'blank.png', '0', '1995-09-09', 1, 1, '0', '0', 'developer@boostedtechs.com', NULL, 'developer-boostedtechs.com', 0, 0, 0, 0, 0, 65, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, '2022-10-08 10:13:58'),
('as', 'blank.png', '0', '1998-09-09', 1, 1, '0', '0', 'ashrikan@gmail.com', NULL, NULL, 0, 0, 0, 0, 0, 66, '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', NULL, '2022-11-08 05:16:52'),
('Luther Kings', 'blank.png', '0', '2023-09-09', 1, 1, '0', '0', 'king@gmail.com', NULL, 'luther-kings', 1, 0, 0, 0, 0, 67, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, '2023-03-20 14:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `chat_heads`
--

CREATE TABLE `chat_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci,
  `product_photo` text COLLATE utf8mb4_unicode_ci,
  `product_owner_id` int(11) DEFAULT NULL,
  `product_owner_name` text COLLATE utf8mb4_unicode_ci,
  `product_owner_photo` text COLLATE utf8mb4_unicode_ci,
  `product_owner_last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` text COLLATE utf8mb4_unicode_ci,
  `customer_photo` text COLLATE utf8mb4_unicode_ci,
  `customer_last_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_message_body` text COLLATE utf8mb4_unicode_ci,
  `last_message_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_message_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_heads`
--

INSERT INTO `chat_heads` (`id`, `created_at`, `updated_at`, `product_id`, `product_name`, `product_photo`, `product_owner_id`, `product_owner_name`, `product_owner_photo`, `product_owner_last_seen`, `customer_id`, `customer_name`, `customer_photo`, `customer_last_seen`, `last_message_body`, `last_message_time`, `last_message_status`) VALUES
(1, '2023-08-06 13:21:00', '2023-08-10 07:42:00', 2, 'Yellow Bananas (Bogoya)', 'a182d806bc8c78328cd69cdee760733d_boo_store.jpeg', 1, 'Sumayya Swaib', NULL, NULL, 2, 'Yahaya', NULL, NULL, 'I onownif to al.. just say no more', '2023-08-10 13:42:00', 'sent'),
(2, '2023-08-06 13:49:06', '2023-08-06 13:49:50', 192, 'gucci', '1688699829-144332.jpg', 114, 'Hamza Hamza', NULL, NULL, 1, 'Sumayya Swaib', NULL, NULL, 'How', '2023-08-06 19:49:50', 'sent'),
(3, '2023-08-10 07:17:11', '2023-08-11 05:42:05', 2, 'Yellow Bananas (Bogoya)', 'a182d806bc8c78328cd69cdee760733d_boo_store.jpeg', 62, 'Dembo Saddam', NULL, NULL, 1, 'Sumayya Swaib', NULL, NULL, 'Hello', '2023-08-11 11:42:05', 'sent'),
(4, '2023-08-11 05:49:37', '2023-08-11 05:49:37', 186, 'men suit', '1687115361-924760.jpg', 114, 'Hamza Hamza', NULL, NULL, 1, 'Sumayya Swaib', NULL, NULL, '', '2023-08-11 11:49:37', 'sent'),
(5, '2023-08-11 07:08:31', '2023-08-11 07:08:31', 193, 'Men& # 039 fitting tshirts', '1689686832-462625.jpg', 114, 'Hamza Hamza', NULL, NULL, 1, 'Sumayya Swaib', NULL, NULL, '', '2023-08-11 13:08:31', 'sent'),
(6, '2023-08-11 07:09:10', '2023-08-11 16:04:35', 178, 'Men&#039;s Slim Fit Trend Long Sleeve T-Shirt Sweatshirt', '8c909a0d09a0227ed56de64c6584f770_boo_store.jpg', 67, 'Kinobe Abdussalaam Ali', NULL, NULL, 1, 'Sumayya Swaib', NULL, NULL, 'Hy', '2023-08-11 22:04:35', 'sent'),
(7, '2023-08-11 07:09:25', '2023-08-11 14:18:10', 187, 'women\'s summer shoes with multiple coloures', '1687117177-275582.jpg', 114, 'Hamza Hamza', NULL, NULL, 1, 'Sumayya Swaib', NULL, NULL, 'How much', '2023-08-11 20:18:10', 'sent'),
(8, '2023-08-11 14:20:46', '2023-08-11 14:20:46', 170, 'Boys and Girls Suits Hooded', 'd9a9a01130ccfe7f4e16d016af5b3254_boo_store.jpg', 67, 'Kinobe Abdussalaam Ali', NULL, NULL, 1, 'Sumayya Swaib', NULL, NULL, '', '2023-08-11 20:20:46', 'sent'),
(9, '2023-08-11 16:49:06', '2023-08-11 16:49:06', 175, 'Infant Sleeve Top Bread Pants Baby Girl Suit', 'bf56b57ece0aedcf104c8d0df613c1c0_boo_store.jpg', 67, 'Kinobe Abdussalaam Ali', NULL, NULL, 1, 'Sumayya Swaib', NULL, NULL, '', '2023-08-11 22:49:06', 'sent'),
(10, '2023-08-12 00:44:41', '2023-09-29 22:16:18', 179, 'Men&#039;s T Shirt T Shirt T Shirt Boyfriend', '4e029ac5f29607bdea0262ac05dbd6f6_boo_store.jpg', 67, 'Kinobe Abdussalaam Ali', NULL, NULL, 115, 'Kibunga Kibunga', NULL, NULL, 'Hullo kasujja where are de goods?', '2023-09-30 04:16:18', 'sent'),
(11, '2023-08-16 14:47:57', '2023-08-16 14:48:40', 177, 'Men&#039;s High Top Breathable Versatile Casual Sporty Fashion', 'ef845a7ec5eae8734253b0d606d7dd4a_boo_store.jpg', 67, 'Kinobe Abdussalaam Ali', NULL, NULL, 1, 'Sumayya Swaib', NULL, NULL, 'Im interested in this product', '2023-08-16 20:48:40', 'sent');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `chat_head_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `sender_name` text COLLATE utf8mb4_unicode_ci,
  `sender_photo` text COLLATE utf8mb4_unicode_ci,
  `receiver_name` text COLLATE utf8mb4_unicode_ci,
  `receiver_photo` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` text COLLATE utf8mb4_unicode_ci,
  `video` text COLLATE utf8mb4_unicode_ci,
  `document` text COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `created_at`, `updated_at`, `chat_head_id`, `sender_id`, `receiver_id`, `sender_name`, `sender_photo`, `receiver_name`, `receiver_photo`, `body`, `type`, `status`, `audio`, `video`, `document`, `photo`, `longitude`, `latitude`) VALUES
(1, '2023-08-06 13:21:00', '2023-08-06 13:41:01', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'See you tomorrow', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2023-08-06 13:21:24', '2023-08-06 13:21:24', 1, 1, 2, 'Sumayya Swaib', NULL, 'Yahaya', NULL, 'Hi', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2023-08-06 13:23:23', '2023-08-06 13:41:01', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'From postman', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2023-08-06 13:23:42', '2023-08-06 13:41:01', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'From postman again', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2023-08-06 13:24:00', '2023-08-06 13:24:00', 1, 1, 2, 'Sumayya Swaib', NULL, 'Yahaya', NULL, 'Test product is not available 😞', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2023-08-06 13:24:11', '2023-08-06 13:24:11', 1, 1, 2, 'Sumayya Swaib', NULL, 'Yahaya', NULL, 'Hi', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2023-08-06 13:27:57', '2023-08-06 13:27:57', 1, 1, 2, 'Sumayya Swaib', NULL, 'Yahaya', NULL, 'Alright that\'s what I have a great 👍 I\'m not 🚭', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2023-08-06 13:28:05', '2023-08-06 13:41:01', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'From postman again.', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2023-08-06 13:28:28', '2023-08-06 13:41:01', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'Simple start', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2023-08-06 13:28:50', '2023-08-06 13:28:50', 1, 1, 2, 'Sumayya Swaib', NULL, 'Yahaya', NULL, 'I have a great day and I will be so kind to me and 😚😚😚 you are not the intended recipient you are alright with you', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2023-08-06 13:28:59', '2023-08-06 13:41:01', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'Simple start.... asas', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2023-08-06 13:42:20', '2023-08-06 13:43:39', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'This is a simple message.', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2023-08-06 13:43:26', '2023-08-06 13:43:39', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'Another simple test message.', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2023-08-06 13:43:54', '2023-08-06 13:43:54', 1, 1, 2, 'Sumayya Swaib', NULL, 'Yahaya', NULL, 'I just wanted to check in with the', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2023-08-06 13:49:06', '2023-08-06 13:49:06', 2, 1, 114, 'Sumayya Swaib', NULL, 'Hamza Hamza', NULL, 'Hi', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2023-08-06 13:49:13', '2023-08-06 13:49:13', 2, 1, 114, 'Sumayya Swaib', NULL, 'Hamza Hamza', NULL, 'I\'m interested in the system', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2023-08-06 13:49:25', '2023-08-06 13:49:25', 2, 1, 114, 'Sumayya Swaib', NULL, 'Hamza Hamza', NULL, 'Hi 👋', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2023-08-06 13:49:50', '2023-08-06 13:49:50', 2, 1, 114, 'Sumayya Swaib', NULL, 'Hamza Hamza', NULL, 'How', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2023-08-10 05:36:52', '2023-08-10 06:00:26', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'Another simple test message.', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2023-08-10 05:43:16', '2023-08-10 06:00:26', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'Another simple test message.', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2023-08-10 05:43:34', '2023-08-10 06:00:26', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'Another simple test message.', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2023-08-10 05:55:05', '2023-08-10 06:00:26', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'Another simple test message.', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2023-08-10 05:58:31', '2023-08-10 06:00:26', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'Another simple test message.', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2023-08-10 05:59:45', '2023-08-10 06:00:26', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'Another simple test message.', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2023-08-10 06:03:17', '2023-08-10 06:03:33', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'This is a simple message for you.', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2023-08-10 06:03:53', '2023-08-10 06:03:53', 1, 1, 2, 'Sumayya Swaib', NULL, 'Yahaya', NULL, 'Thanks', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2023-08-10 07:17:11', '2023-08-10 07:17:11', 3, 1, 62, 'Sumayya Swaib', NULL, 'Dembo Saddam', NULL, NULL, 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2023-08-10 07:18:01', '2023-08-10 07:18:01', 3, 1, 62, 'Sumayya Swaib', NULL, 'Dembo Saddam', NULL, NULL, 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2023-08-10 07:18:39', '2023-08-10 07:18:39', 3, 1, 62, 'Sumayya Swaib', NULL, 'Dembo Saddam', NULL, NULL, 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2023-08-10 07:29:56', '2023-08-10 07:29:56', 3, 1, 62, 'Sumayya Swaib', NULL, 'Dembo Saddam', NULL, 'Hi', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2023-08-10 07:31:09', '2023-08-10 07:31:09', 3, 1, 62, 'Sumayya Swaib', NULL, 'Dembo Saddam', NULL, 'This is a very long time ago then can you please send me a call from the meeting is over and over again and forget to 😔 you', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2023-08-10 07:34:29', '2023-08-10 07:41:44', 1, 2, 1, 'Yahaya', NULL, 'Sumayya Swaib', NULL, 'There is a trending story about you dude! Have you heard it?', 'text', 'read', NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2023-08-10 07:41:59', '2023-08-10 07:41:59', 1, 1, 2, 'Sumayya Swaib', NULL, 'Yahaya', NULL, 'I onownif to al.. just say no more', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2023-08-11 05:41:56', '2023-08-11 05:41:56', 3, 1, 62, 'Sumayya Swaib', NULL, 'Dembo Saddam', NULL, 'Hello', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2023-08-11 05:42:05', '2023-08-11 05:42:05', 3, 1, 62, 'Sumayya Swaib', NULL, 'Dembo Saddam', NULL, 'Hello', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2023-08-11 14:18:10', '2023-08-11 14:18:10', 7, 1, 114, 'Sumayya Swaib', NULL, 'Hamza Hamza', NULL, 'How much', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2023-08-11 16:04:35', '2023-08-11 16:04:35', 6, 1, 67, 'Sumayya Swaib', NULL, 'Kinobe Abdussalaam Ali', NULL, 'Hy', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2023-08-16 14:47:57', '2023-08-16 14:47:57', 11, 1, 67, 'Sumayya Swaib', NULL, 'Kinobe Abdussalaam Ali', NULL, 'Hello', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2023-08-16 14:48:40', '2023-08-16 14:48:40', 11, 1, 67, 'Sumayya Swaib', NULL, 'Kinobe Abdussalaam Ali', NULL, 'Im interested in this product', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2023-09-29 22:16:17', '2023-09-29 22:16:17', 10, 115, 67, 'Kibunga Kibunga', NULL, 'Kinobe Abdussalaam Ali', NULL, 'Hullo kasujja where are de goods?', 'text', 'sent', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `status`) VALUES
(1, 'Uganda', 1),
(2, 'Kenya', 0),
(3, 'Rwanda', 0),
(4, 'South Sudan', 0),
(5, 'Tanzania', 0),
(6, 'Democratic Republic of Congo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `shipping_cost` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `created_at`, `updated_at`, `address`, `latitude`, `longitude`, `shipping_cost`) VALUES
(1, '2024-03-14 03:55:23', '2024-03-14 03:55:23', 'Kampala Region', 0.23000000, 0.01000000, 900000.00),
(2, '2024-03-14 03:56:38', '2024-03-14 03:57:28', 'Kasese Region', NULL, NULL, 1.00),
(3, '2024-03-14 03:57:58', '2024-03-14 03:57:58', 'Western Region', NULL, NULL, 80000.00);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `country` int(11) NOT NULL DEFAULT '1',
  `district` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `region` tinyint(4) NOT NULL DEFAULT '4',
  `delivery_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `country`, `district`, `status`, `region`, `delivery_amount`) VALUES
(1, 1, 'Buikwe', 0, 1, 0),
(2, 1, 'Bukomansimbi	', 0, 1, 0),
(3, 1, 'Butambala', 0, 1, 0),
(4, 1, 'Buvuma', 0, 1, 0),
(5, 1, 'Gomba', 0, 1, 0),
(6, 1, 'Kalangala', 0, 1, 0),
(7, 1, 'Kalungu', 0, 1, 0),
(8, 1, 'Kampala', 1, 1, 0),
(9, 1, 'Kampala', 0, 1, 0),
(10, 1, 'Kiboga', 0, 1, 0),
(11, 1, 'Kyankwanzi', 0, 1, 0),
(12, 1, 'Luweero', 0, 1, 0),
(13, 1, 'Lwengo', 0, 1, 0),
(14, 1, 'Lyantonde', 0, 1, 0),
(15, 1, 'Masaka', 0, 1, 0),
(16, 1, 'Mityana', 0, 1, 0),
(17, 1, 'Mpigi', 0, 1, 0),
(18, 1, 'Mubende', 0, 1, 0),
(19, 1, 'Mukono', 0, 1, 0),
(20, 1, 'Nakaseke', 0, 1, 0),
(21, 1, 'Nakasongola', 0, 1, 0),
(22, 1, 'Rakai', 0, 1, 0),
(23, 1, 'Sembabule', 0, 1, 0),
(24, 1, 'Wakiso', 0, 1, 0),
(25, 1, 'Amuria', 0, 2, 0),
(26, 1, 'Budaka', 0, 2, 0),
(27, 1, 'Bududa', 0, 2, 0),
(28, 1, 'Bugiri', 0, 2, 0),
(29, 1, 'Bukedea', 0, 2, 0),
(30, 1, 'Bukwa', 0, 2, 0),
(31, 1, 'Bulambuli', 0, 2, 0),
(32, 1, 'Busia', 0, 2, 0),
(33, 1, 'Butaleja', 0, 2, 0),
(34, 1, 'Buyende', 0, 2, 0),
(35, 1, 'Iganga', 0, 2, 0),
(36, 1, 'Jinja', 0, 2, 0),
(37, 1, 'Kaberamaido', 0, 2, 0),
(38, 1, 'Kaliro', 0, 2, 0),
(39, 1, 'Kamuli', 0, 2, 0),
(40, 1, 'Kapchorwa', 0, 2, 0),
(41, 1, 'Katakwi', 0, 2, 0),
(42, 1, 'Kibuku', 0, 2, 0),
(43, 1, 'Kumi', 0, 2, 0),
(44, 1, 'Kween', 0, 2, 0),
(45, 1, 'Luuka', 0, 2, 0),
(46, 1, 'Manafwa', 0, 2, 0),
(47, 1, 'Mayuge', 0, 2, 0),
(48, 1, 'Mbale', 0, 2, 0),
(49, 1, 'Namayingo', 0, 2, 0),
(50, 1, 'Namutumba', 0, 2, 0),
(51, 1, 'Ngora', 0, 2, 0),
(52, 1, 'Pallisa', 0, 2, 0),
(53, 1, 'Serere', 0, 2, 0),
(54, 1, 'Sironko', 0, 2, 0),
(55, 1, 'Soroti', 0, 2, 0),
(56, 1, 'Tororo', 0, 2, 0),
(57, 1, 'Abim', 0, 3, 0),
(58, 1, 'Adjumani', 0, 3, 0),
(59, 1, 'Agago', 0, 3, 0),
(60, 1, 'Alebtong', 0, 3, 0),
(61, 1, 'Amolatar', 0, 3, 0),
(62, 1, 'Amudat', 0, 3, 0),
(63, 1, 'Amuru', 0, 3, 0),
(64, 1, 'Apac', 0, 3, 0),
(65, 1, 'Arua', 0, 3, 0),
(66, 1, 'Dokolo', 0, 3, 0),
(67, 1, 'Gulu', 0, 3, 0),
(68, 1, 'Kaabong', 0, 3, 0),
(69, 1, 'Kitgum', 0, 3, 0),
(70, 1, 'Koboko', 0, 3, 0),
(71, 1, 'Kole', 0, 3, 0),
(72, 1, 'Kotido', 0, 3, 0),
(73, 1, 'Lamwo', 0, 3, 0),
(74, 1, 'Lira', 0, 3, 0),
(75, 1, 'Maracha', 0, 3, 0),
(76, 1, 'Moroto', 0, 3, 0),
(77, 1, 'Moyo', 0, 3, 0),
(78, 1, 'Nakapiripirit', 0, 3, 0),
(79, 1, 'Napak', 0, 3, 0),
(80, 1, 'Nebbi', 0, 3, 0),
(81, 1, 'Nwoya', 0, 3, 0),
(82, 1, 'Otuke', 0, 3, 0),
(83, 1, 'Oyam', 0, 3, 0),
(84, 1, 'Pader', 0, 3, 0),
(85, 1, 'Yumbe', 0, 3, 0),
(86, 1, 'Zombo', 0, 3, 0),
(87, 1, 'Buhweju', 0, 4, 0),
(88, 1, 'Buliisa', 0, 4, 0),
(89, 1, 'Bundibugyo', 0, 4, 0),
(90, 1, 'Bushenyi', 0, 4, 0),
(91, 1, 'Hoima', 0, 4, 0),
(92, 1, 'Ibanda', 0, 4, 0),
(93, 1, 'Isingiro', 0, 4, 0),
(94, 1, 'Kabale', 0, 4, 0),
(95, 1, 'Kabarole', 0, 4, 0),
(96, 1, 'Kamwenge', 0, 4, 0),
(97, 1, 'Kanungu', 0, 4, 0),
(98, 1, 'Kasese', 0, 4, 0),
(99, 1, 'Kibaale', 0, 4, 0),
(100, 1, 'Kiruhura', 0, 4, 0),
(101, 1, 'Kiryandongo', 0, 4, 0),
(102, 1, 'Kisoro', 0, 4, 0),
(103, 1, 'Kyegegwa', 0, 4, 0),
(104, 1, 'Kyenjojo', 0, 4, 0),
(105, 1, 'Masindi', 0, 4, 0),
(106, 1, 'Mbarara', 0, 4, 0),
(107, 1, 'Mitooma', 0, 4, 0),
(108, 1, 'Ntoroko', 0, 4, 0),
(109, 1, 'Ntungamo', 0, 4, 0),
(110, 1, 'Rubirizi', 0, 4, 0),
(111, 1, 'Rukungiri', 0, 4, 0),
(112, 1, 'Sheema', 0, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fcm_tokens`
--

CREATE TABLE `fcm_tokens` (
  `id` int(11) NOT NULL,
  `token` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` date NOT NULL,
  `device` mediumtext COLLATE utf8mb4_unicode_ci,
  `user` int(11) DEFAULT NULL,
  `auth_token` char(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcm_tokens`
--

INSERT INTO `fcm_tokens` (`id`, `token`, `date_added`, `device`, `user`, `auth_token`) VALUES
(8, '1234445', '2022-11-17', '1.3.4', 1234, '5555');

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password`
--

CREATE TABLE `forgot_password` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `password` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forgot_password`
--

INSERT INTO `forgot_password` (`id`, `user`, `password`, `_timestamp`, `deleted`) VALUES
(4, 63, '0577f907763c7387bdd2824743d2d0a7af2251c26c4493bcf472c72f23c6c91f', '2022-10-24 13:49:30', 0),
(5, 65, '759a96a7c6db7cfa99a4af52302ce91674feb2246a6e14d71c876fefc95380bd', '2022-11-06 14:27:42', 1),
(6, 65, '66b2f04cbaaa43081dd029076a97ed0d12b3c61fc86b27d664e19fd4559b4630', '2023-03-20 14:23:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gens`
--

CREATE TABLE `gens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_db_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci,
  `file_id` text COLLATE utf8mb4_unicode_ci,
  `end_point` varchar(355) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gens`
--

INSERT INTO `gens` (`id`, `created_at`, `updated_at`, `class_name`, `use_db_table`, `table_name`, `fields`, `file_id`, `end_point`) VALUES
(1, '2023-04-21 15:02:27', '2023-04-21 16:16:33', 'SuspectModel', 'Yes', 'case_suspects', NULL, '11', 'suspects'),
(2, '2023-04-21 18:25:34', '2023-04-21 18:25:34', 'CaseModel', 'Yes', 'case_models', NULL, '12', 'cases'),
(3, '2023-04-24 20:55:33', '2023-04-24 20:55:33', 'ExhibitModel', 'Yes', 'exhibits', NULL, '13', 'exhibits'),
(4, '2023-10-01 16:46:45', '2023-10-01 16:46:45', 'GroupModel', 'Yes', 'groups', NULL, NULL, 'groups'),
(5, '2023-10-02 07:20:01', '2023-10-02 07:21:49', 'OnlineSession', 'Yes', 'batch_sessions', NULL, NULL, 'roll-calls'),
(6, '2023-10-02 10:49:33', '2023-10-02 10:49:33', 'ArchivedAnimal', 'Yes', 'archived_animals', NULL, NULL, 'archived-animals'),
(7, '2023-11-04 11:44:50', '2024-05-03 19:25:30', 'OrderLocal', 'Yes', 'orders', NULL, NULL, 'orders'),
(8, '2023-11-10 07:50:54', '2023-11-10 07:51:46', 'LoggedInUserModel', 'Yes', 'users', NULL, NULL, 'users/me'),
(9, '2024-03-14 04:04:49', '2024-03-14 04:04:49', 'DeliveryAddress', 'Yes', 'delivery_addresses', NULL, NULL, 'delivery-addresses');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `administrator_id` bigint(20) UNSIGNED DEFAULT NULL,
  `src` text COLLATE utf8mb4_unicode_ci,
  `thumbnail` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `parent_endpoint` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_processed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'No',
  `parent_local_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `created_at`, `updated_at`, `administrator_id`, `src`, `thumbnail`, `parent_id`, `size`, `deleted_at`, `type`, `product_id`, `parent_endpoint`, `note`, `is_processed`, `parent_local_id`) VALUES
(1, '2025-02-22 20:16:18', '2025-02-22 20:16:18', NULL, 'images/101.jpg', 'thumb_images/101.jpg', 0, 0, NULL, 'product', 1, 'products', 'Product image', '1', '100'),
(2, '2025-02-22 20:16:18', '2025-02-22 20:16:18', NULL, 'images/102.jpg', 'thumb_images/102.jpg', 0, 0, NULL, 'product', 1, 'products', 'Product image', '1', '100'),
(3, '2025-02-22 20:16:18', '2025-02-22 20:16:18', NULL, 'images/103.jpg', 'thumb_images/103.jpg', 0, 0, NULL, 'product', 1, 'products', 'Product image', '1', '100'),
(4, '2025-02-22 20:16:18', '2025-02-22 20:16:18', NULL, 'images/104.jpg', 'thumb_images/104.jpg', 0, 0, NULL, 'product', 1, 'products', 'Product image', '1', '100'),
(5, '2025-02-22 20:16:18', '2025-02-22 20:16:18', NULL, 'images/105.jpg', 'thumb_images/105.jpg', 0, 0, NULL, 'product', 1, 'products', 'Product image', '1', '100'),
(6, '2025-02-22 20:17:17', '2025-02-22 20:17:17', NULL, 'images/102.jpg', 'thumb_images/102.jpg', 0, 0, NULL, 'product', 2, 'products', 'Product image', '1', '101'),
(7, '2025-02-22 20:17:17', '2025-02-22 20:17:17', NULL, 'images/103.jpg', 'thumb_images/103.jpg', 0, 0, NULL, 'product', 2, 'products', 'Product image', '1', '101'),
(8, '2025-02-22 20:17:17', '2025-02-22 20:17:17', NULL, 'images/104.jpg', 'thumb_images/104.jpg', 0, 0, NULL, 'product', 2, 'products', 'Product image', '1', '101'),
(9, '2025-02-22 20:17:17', '2025-02-22 20:17:17', NULL, 'images/105.jpg', 'thumb_images/105.jpg', 0, 0, NULL, 'product', 2, 'products', 'Product image', '1', '101'),
(10, '2025-02-22 20:17:17', '2025-02-22 20:17:17', NULL, 'images/106.jpg', 'thumb_images/106.jpg', 0, 0, NULL, 'product', 2, 'products', 'Product image', '1', '101'),
(11, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/102.jpg', 'thumb_images/102.jpg', 0, 0, NULL, 'product', 3, 'products', 'Product image', '1', '102'),
(12, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/103.jpg', 'thumb_images/103.jpg', 0, 0, NULL, 'product', 3, 'products', 'Product image', '1', '102'),
(13, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/104.jpg', 'thumb_images/104.jpg', 0, 0, NULL, 'product', 3, 'products', 'Product image', '1', '102'),
(14, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/105.jpg', 'thumb_images/105.jpg', 0, 0, NULL, 'product', 3, 'products', 'Product image', '1', '102'),
(15, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/106.jpg', 'thumb_images/106.jpg', 0, 0, NULL, 'product', 3, 'products', 'Product image', '1', '102'),
(16, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/103.jpg', 'thumb_images/103.jpg', 0, 0, NULL, 'product', 4, 'products', 'Product image', '1', '103'),
(17, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/104.jpg', 'thumb_images/104.jpg', 0, 0, NULL, 'product', 4, 'products', 'Product image', '1', '103'),
(18, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/105.jpg', 'thumb_images/105.jpg', 0, 0, NULL, 'product', 4, 'products', 'Product image', '1', '103'),
(19, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/106.jpg', 'thumb_images/106.jpg', 0, 0, NULL, 'product', 4, 'products', 'Product image', '1', '103'),
(20, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/107.jpg', 'thumb_images/107.jpg', 0, 0, NULL, 'product', 4, 'products', 'Product image', '1', '103'),
(21, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/104.jpg', 'thumb_images/104.jpg', 0, 0, NULL, 'product', 5, 'products', 'Product image', '1', '104'),
(22, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/105.jpg', 'thumb_images/105.jpg', 0, 0, NULL, 'product', 5, 'products', 'Product image', '1', '104'),
(23, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/106.jpg', 'thumb_images/106.jpg', 0, 0, NULL, 'product', 5, 'products', 'Product image', '1', '104'),
(24, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/107.jpg', 'thumb_images/107.jpg', 0, 0, NULL, 'product', 5, 'products', 'Product image', '1', '104'),
(25, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/108.jpg', 'thumb_images/108.jpg', 0, 0, NULL, 'product', 5, 'products', 'Product image', '1', '104'),
(26, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/105.jpg', 'thumb_images/105.jpg', 0, 0, NULL, 'product', 6, 'products', 'Product image', '1', '105'),
(27, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/106.jpg', 'thumb_images/106.jpg', 0, 0, NULL, 'product', 6, 'products', 'Product image', '1', '105'),
(28, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/107.jpg', 'thumb_images/107.jpg', 0, 0, NULL, 'product', 6, 'products', 'Product image', '1', '105'),
(29, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/108.jpg', 'thumb_images/108.jpg', 0, 0, NULL, 'product', 6, 'products', 'Product image', '1', '105'),
(30, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/109.jpg', 'thumb_images/109.jpg', 0, 0, NULL, 'product', 6, 'products', 'Product image', '1', '105'),
(31, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/106.jpg', 'thumb_images/106.jpg', 0, 0, NULL, 'product', 7, 'products', 'Product image', '1', '106'),
(32, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/107.jpg', 'thumb_images/107.jpg', 0, 0, NULL, 'product', 7, 'products', 'Product image', '1', '106'),
(33, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/108.jpg', 'thumb_images/108.jpg', 0, 0, NULL, 'product', 7, 'products', 'Product image', '1', '106'),
(34, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/109.jpg', 'thumb_images/109.jpg', 0, 0, NULL, 'product', 7, 'products', 'Product image', '1', '106'),
(35, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/110.jpg', 'thumb_images/110.jpg', 0, 0, NULL, 'product', 7, 'products', 'Product image', '1', '106'),
(36, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/107.jpg', 'thumb_images/107.jpg', 0, 0, NULL, 'product', 8, 'products', 'Product image', '1', '107'),
(37, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/108.jpg', 'thumb_images/108.jpg', 0, 0, NULL, 'product', 8, 'products', 'Product image', '1', '107'),
(38, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/109.jpg', 'thumb_images/109.jpg', 0, 0, NULL, 'product', 8, 'products', 'Product image', '1', '107'),
(39, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/110.jpg', 'thumb_images/110.jpg', 0, 0, NULL, 'product', 8, 'products', 'Product image', '1', '107'),
(40, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/111.jpg', 'thumb_images/111.jpg', 0, 0, NULL, 'product', 8, 'products', 'Product image', '1', '107'),
(41, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/108.jpg', 'thumb_images/108.jpg', 0, 0, NULL, 'product', 9, 'products', 'Product image', '1', '108'),
(42, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/109.jpg', 'thumb_images/109.jpg', 0, 0, NULL, 'product', 9, 'products', 'Product image', '1', '108'),
(43, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/110.jpg', 'thumb_images/110.jpg', 0, 0, NULL, 'product', 9, 'products', 'Product image', '1', '108'),
(44, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/111.jpg', 'thumb_images/111.jpg', 0, 0, NULL, 'product', 9, 'products', 'Product image', '1', '108'),
(45, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/112.jpg', 'thumb_images/112.jpg', 0, 0, NULL, 'product', 9, 'products', 'Product image', '1', '108'),
(46, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/109.jpg', 'thumb_images/109.jpg', 0, 0, NULL, 'product', 10, 'products', 'Product image', '1', '109'),
(47, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/110.jpg', 'thumb_images/110.jpg', 0, 0, NULL, 'product', 10, 'products', 'Product image', '1', '109'),
(48, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/111.jpg', 'thumb_images/111.jpg', 0, 0, NULL, 'product', 10, 'products', 'Product image', '1', '109'),
(49, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/112.jpg', 'thumb_images/112.jpg', 0, 0, NULL, 'product', 10, 'products', 'Product image', '1', '109'),
(50, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/113.jpg', 'thumb_images/113.jpg', 0, 0, NULL, 'product', 10, 'products', 'Product image', '1', '109'),
(51, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/110.jpg', 'thumb_images/110.jpg', 0, 0, NULL, 'product', 11, 'products', 'Product image', '1', '110'),
(52, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/111.jpg', 'thumb_images/111.jpg', 0, 0, NULL, 'product', 11, 'products', 'Product image', '1', '110'),
(53, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/112.jpg', 'thumb_images/112.jpg', 0, 0, NULL, 'product', 11, 'products', 'Product image', '1', '110'),
(54, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/113.jpg', 'thumb_images/113.jpg', 0, 0, NULL, 'product', 11, 'products', 'Product image', '1', '110'),
(55, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/114.jpg', 'thumb_images/114.jpg', 0, 0, NULL, 'product', 11, 'products', 'Product image', '1', '110'),
(56, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/111.jpg', 'thumb_images/111.jpg', 0, 0, NULL, 'product', 12, 'products', 'Product image', '1', '111'),
(57, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/112.jpg', 'thumb_images/112.jpg', 0, 0, NULL, 'product', 12, 'products', 'Product image', '1', '111'),
(58, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/113.jpg', 'thumb_images/113.jpg', 0, 0, NULL, 'product', 12, 'products', 'Product image', '1', '111'),
(59, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/114.jpg', 'thumb_images/114.jpg', 0, 0, NULL, 'product', 12, 'products', 'Product image', '1', '111'),
(60, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/115.jpg', 'thumb_images/115.jpg', 0, 0, NULL, 'product', 12, 'products', 'Product image', '1', '111'),
(61, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/112.jpg', 'thumb_images/112.jpg', 0, 0, NULL, 'product', 13, 'products', 'Product image', '1', '112'),
(62, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/113.jpg', 'thumb_images/113.jpg', 0, 0, NULL, 'product', 13, 'products', 'Product image', '1', '112'),
(63, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/114.jpg', 'thumb_images/114.jpg', 0, 0, NULL, 'product', 13, 'products', 'Product image', '1', '112'),
(64, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/115.jpg', 'thumb_images/115.jpg', 0, 0, NULL, 'product', 13, 'products', 'Product image', '1', '112'),
(65, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/116.jpg', 'thumb_images/116.jpg', 0, 0, NULL, 'product', 13, 'products', 'Product image', '1', '112'),
(66, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/113.jpg', 'thumb_images/113.jpg', 0, 0, NULL, 'product', 14, 'products', 'Product image', '1', '113'),
(67, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/114.jpg', 'thumb_images/114.jpg', 0, 0, NULL, 'product', 14, 'products', 'Product image', '1', '113'),
(68, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/115.jpg', 'thumb_images/115.jpg', 0, 0, NULL, 'product', 14, 'products', 'Product image', '1', '113'),
(69, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/116.jpg', 'thumb_images/116.jpg', 0, 0, NULL, 'product', 14, 'products', 'Product image', '1', '113'),
(70, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/117.jpg', 'thumb_images/117.jpg', 0, 0, NULL, 'product', 14, 'products', 'Product image', '1', '113'),
(71, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/114.jpg', 'thumb_images/114.jpg', 0, 0, NULL, 'product', 15, 'products', 'Product image', '1', '114'),
(72, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/115.jpg', 'thumb_images/115.jpg', 0, 0, NULL, 'product', 15, 'products', 'Product image', '1', '114'),
(73, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/116.jpg', 'thumb_images/116.jpg', 0, 0, NULL, 'product', 15, 'products', 'Product image', '1', '114'),
(74, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/117.jpg', 'thumb_images/117.jpg', 0, 0, NULL, 'product', 15, 'products', 'Product image', '1', '114'),
(75, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/118.jpg', 'thumb_images/118.jpg', 0, 0, NULL, 'product', 15, 'products', 'Product image', '1', '114'),
(76, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/115.jpg', 'thumb_images/115.jpg', 0, 0, NULL, 'product', 16, 'products', 'Product image', '1', '115'),
(77, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/116.jpg', 'thumb_images/116.jpg', 0, 0, NULL, 'product', 16, 'products', 'Product image', '1', '115'),
(78, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/117.jpg', 'thumb_images/117.jpg', 0, 0, NULL, 'product', 16, 'products', 'Product image', '1', '115'),
(79, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/118.jpg', 'thumb_images/118.jpg', 0, 0, NULL, 'product', 16, 'products', 'Product image', '1', '115'),
(80, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/119.jpg', 'thumb_images/119.jpg', 0, 0, NULL, 'product', 16, 'products', 'Product image', '1', '115'),
(81, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/116.jpg', 'thumb_images/116.jpg', 0, 0, NULL, 'product', 17, 'products', 'Product image', '1', '116'),
(82, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/117.jpg', 'thumb_images/117.jpg', 0, 0, NULL, 'product', 17, 'products', 'Product image', '1', '116'),
(83, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/118.jpg', 'thumb_images/118.jpg', 0, 0, NULL, 'product', 17, 'products', 'Product image', '1', '116'),
(84, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/119.jpg', 'thumb_images/119.jpg', 0, 0, NULL, 'product', 17, 'products', 'Product image', '1', '116'),
(85, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/120.jpg', 'thumb_images/120.jpg', 0, 0, NULL, 'product', 17, 'products', 'Product image', '1', '116'),
(86, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/117.jpg', 'thumb_images/117.jpg', 0, 0, NULL, 'product', 18, 'products', 'Product image', '1', '117'),
(87, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/118.jpg', 'thumb_images/118.jpg', 0, 0, NULL, 'product', 18, 'products', 'Product image', '1', '117'),
(88, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/119.jpg', 'thumb_images/119.jpg', 0, 0, NULL, 'product', 18, 'products', 'Product image', '1', '117'),
(89, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/120.jpg', 'thumb_images/120.jpg', 0, 0, NULL, 'product', 18, 'products', 'Product image', '1', '117'),
(90, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/121.jpg', 'thumb_images/121.jpg', 0, 0, NULL, 'product', 18, 'products', 'Product image', '1', '117'),
(91, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/118.jpg', 'thumb_images/118.jpg', 0, 0, NULL, 'product', 19, 'products', 'Product image', '1', '118'),
(92, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/119.jpg', 'thumb_images/119.jpg', 0, 0, NULL, 'product', 19, 'products', 'Product image', '1', '118'),
(93, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/120.jpg', 'thumb_images/120.jpg', 0, 0, NULL, 'product', 19, 'products', 'Product image', '1', '118'),
(94, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/121.jpg', 'thumb_images/121.jpg', 0, 0, NULL, 'product', 19, 'products', 'Product image', '1', '118'),
(95, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/122.jpg', 'thumb_images/122.jpg', 0, 0, NULL, 'product', 19, 'products', 'Product image', '1', '118'),
(96, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/119.jpg', 'thumb_images/119.jpg', 0, 0, NULL, 'product', 20, 'products', 'Product image', '1', '119'),
(97, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/120.jpg', 'thumb_images/120.jpg', 0, 0, NULL, 'product', 20, 'products', 'Product image', '1', '119'),
(98, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/121.jpg', 'thumb_images/121.jpg', 0, 0, NULL, 'product', 20, 'products', 'Product image', '1', '119'),
(99, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/122.jpg', 'thumb_images/122.jpg', 0, 0, NULL, 'product', 20, 'products', 'Product image', '1', '119'),
(100, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/123.jpg', 'thumb_images/123.jpg', 0, 0, NULL, 'product', 20, 'products', 'Product image', '1', '119'),
(101, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/12.jpg', 'thumb_images/12.jpg', 0, 0, NULL, 'product', 21, 'products', 'Product image', '1', '12'),
(102, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/13.jpg', 'thumb_images/13.jpg', 0, 0, NULL, 'product', 21, 'products', 'Product image', '1', '12'),
(103, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/14.jpg', 'thumb_images/14.jpg', 0, 0, NULL, 'product', 21, 'products', 'Product image', '1', '12'),
(104, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/15.jpg', 'thumb_images/15.jpg', 0, 0, NULL, 'product', 21, 'products', 'Product image', '1', '12'),
(105, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/16.jpg', 'thumb_images/16.jpg', 0, 0, NULL, 'product', 21, 'products', 'Product image', '1', '12'),
(106, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/120.jpg', 'thumb_images/120.jpg', 0, 0, NULL, 'product', 22, 'products', 'Product image', '1', '120'),
(107, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/121.jpg', 'thumb_images/121.jpg', 0, 0, NULL, 'product', 22, 'products', 'Product image', '1', '120'),
(108, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/122.jpg', 'thumb_images/122.jpg', 0, 0, NULL, 'product', 22, 'products', 'Product image', '1', '120'),
(109, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/123.jpg', 'thumb_images/123.jpg', 0, 0, NULL, 'product', 22, 'products', 'Product image', '1', '120'),
(110, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/124.jpg', 'thumb_images/124.jpg', 0, 0, NULL, 'product', 22, 'products', 'Product image', '1', '120'),
(111, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/121.jpg', 'thumb_images/121.jpg', 0, 0, NULL, 'product', 23, 'products', 'Product image', '1', '121'),
(112, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/122.jpg', 'thumb_images/122.jpg', 0, 0, NULL, 'product', 23, 'products', 'Product image', '1', '121'),
(113, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/123.jpg', 'thumb_images/123.jpg', 0, 0, NULL, 'product', 23, 'products', 'Product image', '1', '121'),
(114, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/124.jpg', 'thumb_images/124.jpg', 0, 0, NULL, 'product', 23, 'products', 'Product image', '1', '121'),
(115, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/125.jpg', 'thumb_images/125.jpg', 0, 0, NULL, 'product', 23, 'products', 'Product image', '1', '121'),
(116, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/122.jpg', 'thumb_images/122.jpg', 0, 0, NULL, 'product', 24, 'products', 'Product image', '1', '122'),
(117, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/123.jpg', 'thumb_images/123.jpg', 0, 0, NULL, 'product', 24, 'products', 'Product image', '1', '122'),
(118, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/124.jpg', 'thumb_images/124.jpg', 0, 0, NULL, 'product', 24, 'products', 'Product image', '1', '122'),
(119, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/125.jpg', 'thumb_images/125.jpg', 0, 0, NULL, 'product', 24, 'products', 'Product image', '1', '122'),
(120, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/126.jpg', 'thumb_images/126.jpg', 0, 0, NULL, 'product', 24, 'products', 'Product image', '1', '122'),
(121, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/123.jpg', 'thumb_images/123.jpg', 0, 0, NULL, 'product', 25, 'products', 'Product image', '1', '123'),
(122, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/124.jpg', 'thumb_images/124.jpg', 0, 0, NULL, 'product', 25, 'products', 'Product image', '1', '123'),
(123, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/125.jpg', 'thumb_images/125.jpg', 0, 0, NULL, 'product', 25, 'products', 'Product image', '1', '123'),
(124, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/126.jpg', 'thumb_images/126.jpg', 0, 0, NULL, 'product', 25, 'products', 'Product image', '1', '123'),
(125, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/127.jpg', 'thumb_images/127.jpg', 0, 0, NULL, 'product', 25, 'products', 'Product image', '1', '123'),
(126, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/124.jpg', 'thumb_images/124.jpg', 0, 0, NULL, 'product', 26, 'products', 'Product image', '1', '124'),
(127, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/125.jpg', 'thumb_images/125.jpg', 0, 0, NULL, 'product', 26, 'products', 'Product image', '1', '124'),
(128, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/126.jpg', 'thumb_images/126.jpg', 0, 0, NULL, 'product', 26, 'products', 'Product image', '1', '124'),
(129, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/127.jpg', 'thumb_images/127.jpg', 0, 0, NULL, 'product', 26, 'products', 'Product image', '1', '124'),
(130, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/128.jpg', 'thumb_images/128.jpg', 0, 0, NULL, 'product', 26, 'products', 'Product image', '1', '124'),
(131, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/125.jpg', 'thumb_images/125.jpg', 0, 0, NULL, 'product', 27, 'products', 'Product image', '1', '125'),
(132, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/126.jpg', 'thumb_images/126.jpg', 0, 0, NULL, 'product', 27, 'products', 'Product image', '1', '125'),
(133, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/127.jpg', 'thumb_images/127.jpg', 0, 0, NULL, 'product', 27, 'products', 'Product image', '1', '125'),
(134, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/128.jpg', 'thumb_images/128.jpg', 0, 0, NULL, 'product', 27, 'products', 'Product image', '1', '125'),
(135, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/129.jpg', 'thumb_images/129.jpg', 0, 0, NULL, 'product', 27, 'products', 'Product image', '1', '125'),
(136, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/126.jpg', 'thumb_images/126.jpg', 0, 0, NULL, 'product', 28, 'products', 'Product image', '1', '126'),
(137, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/127.jpg', 'thumb_images/127.jpg', 0, 0, NULL, 'product', 28, 'products', 'Product image', '1', '126'),
(138, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/128.jpg', 'thumb_images/128.jpg', 0, 0, NULL, 'product', 28, 'products', 'Product image', '1', '126'),
(139, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/129.jpg', 'thumb_images/129.jpg', 0, 0, NULL, 'product', 28, 'products', 'Product image', '1', '126'),
(140, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/130.jpg', 'thumb_images/130.jpg', 0, 0, NULL, 'product', 28, 'products', 'Product image', '1', '126'),
(141, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/127.jpg', 'thumb_images/127.jpg', 0, 0, NULL, 'product', 29, 'products', 'Product image', '1', '127'),
(142, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/128.jpg', 'thumb_images/128.jpg', 0, 0, NULL, 'product', 29, 'products', 'Product image', '1', '127'),
(143, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/129.jpg', 'thumb_images/129.jpg', 0, 0, NULL, 'product', 29, 'products', 'Product image', '1', '127'),
(144, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/130.jpg', 'thumb_images/130.jpg', 0, 0, NULL, 'product', 29, 'products', 'Product image', '1', '127'),
(145, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/131.jpg', 'thumb_images/131.jpg', 0, 0, NULL, 'product', 29, 'products', 'Product image', '1', '127'),
(146, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/128.jpg', 'thumb_images/128.jpg', 0, 0, NULL, 'product', 30, 'products', 'Product image', '1', '128'),
(147, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/129.jpg', 'thumb_images/129.jpg', 0, 0, NULL, 'product', 30, 'products', 'Product image', '1', '128'),
(148, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/130.jpg', 'thumb_images/130.jpg', 0, 0, NULL, 'product', 30, 'products', 'Product image', '1', '128'),
(149, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/131.jpg', 'thumb_images/131.jpg', 0, 0, NULL, 'product', 30, 'products', 'Product image', '1', '128'),
(150, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/132.jpg', 'thumb_images/132.jpg', 0, 0, NULL, 'product', 30, 'products', 'Product image', '1', '128'),
(151, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/129.jpg', 'thumb_images/129.jpg', 0, 0, NULL, 'product', 31, 'products', 'Product image', '1', '129'),
(152, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/130.jpg', 'thumb_images/130.jpg', 0, 0, NULL, 'product', 31, 'products', 'Product image', '1', '129'),
(153, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/131.jpg', 'thumb_images/131.jpg', 0, 0, NULL, 'product', 31, 'products', 'Product image', '1', '129'),
(154, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/132.jpg', 'thumb_images/132.jpg', 0, 0, NULL, 'product', 31, 'products', 'Product image', '1', '129'),
(155, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/133.jpg', 'thumb_images/133.jpg', 0, 0, NULL, 'product', 31, 'products', 'Product image', '1', '129'),
(156, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/13.jpg', 'thumb_images/13.jpg', 0, 0, NULL, 'product', 32, 'products', 'Product image', '1', '13'),
(157, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/14.jpg', 'thumb_images/14.jpg', 0, 0, NULL, 'product', 32, 'products', 'Product image', '1', '13'),
(158, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/15.jpg', 'thumb_images/15.jpg', 0, 0, NULL, 'product', 32, 'products', 'Product image', '1', '13'),
(159, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/16.jpg', 'thumb_images/16.jpg', 0, 0, NULL, 'product', 32, 'products', 'Product image', '1', '13'),
(160, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/17.jpg', 'thumb_images/17.jpg', 0, 0, NULL, 'product', 32, 'products', 'Product image', '1', '13'),
(161, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/130.jpg', 'thumb_images/130.jpg', 0, 0, NULL, 'product', 33, 'products', 'Product image', '1', '130'),
(162, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/131.jpg', 'thumb_images/131.jpg', 0, 0, NULL, 'product', 33, 'products', 'Product image', '1', '130'),
(163, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/132.jpg', 'thumb_images/132.jpg', 0, 0, NULL, 'product', 33, 'products', 'Product image', '1', '130'),
(164, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/133.jpg', 'thumb_images/133.jpg', 0, 0, NULL, 'product', 33, 'products', 'Product image', '1', '130'),
(165, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/134.jpg', 'thumb_images/134.jpg', 0, 0, NULL, 'product', 33, 'products', 'Product image', '1', '130'),
(166, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/131.jpg', 'thumb_images/131.jpg', 0, 0, NULL, 'product', 34, 'products', 'Product image', '1', '131'),
(167, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/132.jpg', 'thumb_images/132.jpg', 0, 0, NULL, 'product', 34, 'products', 'Product image', '1', '131'),
(168, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/133.jpg', 'thumb_images/133.jpg', 0, 0, NULL, 'product', 34, 'products', 'Product image', '1', '131'),
(169, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/134.jpg', 'thumb_images/134.jpg', 0, 0, NULL, 'product', 34, 'products', 'Product image', '1', '131'),
(170, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/135.jpg', 'thumb_images/135.jpg', 0, 0, NULL, 'product', 34, 'products', 'Product image', '1', '131'),
(171, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/132.jpg', 'thumb_images/132.jpg', 0, 0, NULL, 'product', 35, 'products', 'Product image', '1', '132'),
(172, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/133.jpg', 'thumb_images/133.jpg', 0, 0, NULL, 'product', 35, 'products', 'Product image', '1', '132'),
(173, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/134.jpg', 'thumb_images/134.jpg', 0, 0, NULL, 'product', 35, 'products', 'Product image', '1', '132'),
(174, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/135.jpg', 'thumb_images/135.jpg', 0, 0, NULL, 'product', 35, 'products', 'Product image', '1', '132'),
(175, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/136.jpg', 'thumb_images/136.jpg', 0, 0, NULL, 'product', 35, 'products', 'Product image', '1', '132'),
(176, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/133.jpg', 'thumb_images/133.jpg', 0, 0, NULL, 'product', 36, 'products', 'Product image', '1', '133'),
(177, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/134.jpg', 'thumb_images/134.jpg', 0, 0, NULL, 'product', 36, 'products', 'Product image', '1', '133'),
(178, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/135.jpg', 'thumb_images/135.jpg', 0, 0, NULL, 'product', 36, 'products', 'Product image', '1', '133'),
(179, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/136.jpg', 'thumb_images/136.jpg', 0, 0, NULL, 'product', 36, 'products', 'Product image', '1', '133'),
(180, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/137.jpg', 'thumb_images/137.jpg', 0, 0, NULL, 'product', 36, 'products', 'Product image', '1', '133'),
(181, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/134.jpg', 'thumb_images/134.jpg', 0, 0, NULL, 'product', 37, 'products', 'Product image', '1', '134'),
(182, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/135.jpg', 'thumb_images/135.jpg', 0, 0, NULL, 'product', 37, 'products', 'Product image', '1', '134'),
(183, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/136.jpg', 'thumb_images/136.jpg', 0, 0, NULL, 'product', 37, 'products', 'Product image', '1', '134'),
(184, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/137.jpg', 'thumb_images/137.jpg', 0, 0, NULL, 'product', 37, 'products', 'Product image', '1', '134'),
(185, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/138.jpg', 'thumb_images/138.jpg', 0, 0, NULL, 'product', 37, 'products', 'Product image', '1', '134'),
(186, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/135.jpg', 'thumb_images/135.jpg', 0, 0, NULL, 'product', 38, 'products', 'Product image', '1', '135'),
(187, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/136.jpg', 'thumb_images/136.jpg', 0, 0, NULL, 'product', 38, 'products', 'Product image', '1', '135'),
(188, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/137.jpg', 'thumb_images/137.jpg', 0, 0, NULL, 'product', 38, 'products', 'Product image', '1', '135'),
(189, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/138.jpg', 'thumb_images/138.jpg', 0, 0, NULL, 'product', 38, 'products', 'Product image', '1', '135'),
(190, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/139.jpg', 'thumb_images/139.jpg', 0, 0, NULL, 'product', 38, 'products', 'Product image', '1', '135'),
(191, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/136.jpg', 'thumb_images/136.jpg', 0, 0, NULL, 'product', 39, 'products', 'Product image', '1', '136'),
(192, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/137.jpg', 'thumb_images/137.jpg', 0, 0, NULL, 'product', 39, 'products', 'Product image', '1', '136'),
(193, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/138.jpg', 'thumb_images/138.jpg', 0, 0, NULL, 'product', 39, 'products', 'Product image', '1', '136'),
(194, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/139.jpg', 'thumb_images/139.jpg', 0, 0, NULL, 'product', 39, 'products', 'Product image', '1', '136'),
(195, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/140.jpg', 'thumb_images/140.jpg', 0, 0, NULL, 'product', 39, 'products', 'Product image', '1', '136'),
(196, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/137.jpg', 'thumb_images/137.jpg', 0, 0, NULL, 'product', 40, 'products', 'Product image', '1', '137'),
(197, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/138.jpg', 'thumb_images/138.jpg', 0, 0, NULL, 'product', 40, 'products', 'Product image', '1', '137'),
(198, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/139.jpg', 'thumb_images/139.jpg', 0, 0, NULL, 'product', 40, 'products', 'Product image', '1', '137'),
(199, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/140.jpg', 'thumb_images/140.jpg', 0, 0, NULL, 'product', 40, 'products', 'Product image', '1', '137'),
(200, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/141.jpg', 'thumb_images/141.jpg', 0, 0, NULL, 'product', 40, 'products', 'Product image', '1', '137'),
(201, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/138.jpg', 'thumb_images/138.jpg', 0, 0, NULL, 'product', 41, 'products', 'Product image', '1', '138'),
(202, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/139.jpg', 'thumb_images/139.jpg', 0, 0, NULL, 'product', 41, 'products', 'Product image', '1', '138'),
(203, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/140.jpg', 'thumb_images/140.jpg', 0, 0, NULL, 'product', 41, 'products', 'Product image', '1', '138'),
(204, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/141.jpg', 'thumb_images/141.jpg', 0, 0, NULL, 'product', 41, 'products', 'Product image', '1', '138'),
(205, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/142.jpg', 'thumb_images/142.jpg', 0, 0, NULL, 'product', 41, 'products', 'Product image', '1', '138'),
(206, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/139.jpg', 'thumb_images/139.jpg', 0, 0, NULL, 'product', 42, 'products', 'Product image', '1', '139'),
(207, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/140.jpg', 'thumb_images/140.jpg', 0, 0, NULL, 'product', 42, 'products', 'Product image', '1', '139'),
(208, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/141.jpg', 'thumb_images/141.jpg', 0, 0, NULL, 'product', 42, 'products', 'Product image', '1', '139'),
(209, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/142.jpg', 'thumb_images/142.jpg', 0, 0, NULL, 'product', 42, 'products', 'Product image', '1', '139'),
(210, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/143.jpg', 'thumb_images/143.jpg', 0, 0, NULL, 'product', 42, 'products', 'Product image', '1', '139'),
(211, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/14.jpg', 'thumb_images/14.jpg', 0, 0, NULL, 'product', 43, 'products', 'Product image', '1', '14'),
(212, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/15.jpg', 'thumb_images/15.jpg', 0, 0, NULL, 'product', 43, 'products', 'Product image', '1', '14'),
(213, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/16.jpg', 'thumb_images/16.jpg', 0, 0, NULL, 'product', 43, 'products', 'Product image', '1', '14'),
(214, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/17.jpg', 'thumb_images/17.jpg', 0, 0, NULL, 'product', 43, 'products', 'Product image', '1', '14'),
(215, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/18.jpg', 'thumb_images/18.jpg', 0, 0, NULL, 'product', 43, 'products', 'Product image', '1', '14'),
(216, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/140.jpg', 'thumb_images/140.jpg', 0, 0, NULL, 'product', 44, 'products', 'Product image', '1', '140'),
(217, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/141.jpg', 'thumb_images/141.jpg', 0, 0, NULL, 'product', 44, 'products', 'Product image', '1', '140'),
(218, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/142.jpg', 'thumb_images/142.jpg', 0, 0, NULL, 'product', 44, 'products', 'Product image', '1', '140'),
(219, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/143.jpg', 'thumb_images/143.jpg', 0, 0, NULL, 'product', 44, 'products', 'Product image', '1', '140'),
(220, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/144.jpg', 'thumb_images/144.jpg', 0, 0, NULL, 'product', 44, 'products', 'Product image', '1', '140'),
(221, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/141.jpg', 'thumb_images/141.jpg', 0, 0, NULL, 'product', 45, 'products', 'Product image', '1', '141'),
(222, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/142.jpg', 'thumb_images/142.jpg', 0, 0, NULL, 'product', 45, 'products', 'Product image', '1', '141'),
(223, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/143.jpg', 'thumb_images/143.jpg', 0, 0, NULL, 'product', 45, 'products', 'Product image', '1', '141'),
(224, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/144.jpg', 'thumb_images/144.jpg', 0, 0, NULL, 'product', 45, 'products', 'Product image', '1', '141'),
(225, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/145.jpg', 'thumb_images/145.jpg', 0, 0, NULL, 'product', 45, 'products', 'Product image', '1', '141'),
(226, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/142.jpg', 'thumb_images/142.jpg', 0, 0, NULL, 'product', 46, 'products', 'Product image', '1', '142'),
(227, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/143.jpg', 'thumb_images/143.jpg', 0, 0, NULL, 'product', 46, 'products', 'Product image', '1', '142'),
(228, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/144.jpg', 'thumb_images/144.jpg', 0, 0, NULL, 'product', 46, 'products', 'Product image', '1', '142'),
(229, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/145.jpg', 'thumb_images/145.jpg', 0, 0, NULL, 'product', 46, 'products', 'Product image', '1', '142'),
(230, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/146.jpg', 'thumb_images/146.jpg', 0, 0, NULL, 'product', 46, 'products', 'Product image', '1', '142'),
(231, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/143.jpg', 'thumb_images/143.jpg', 0, 0, NULL, 'product', 47, 'products', 'Product image', '1', '143'),
(232, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/144.jpg', 'thumb_images/144.jpg', 0, 0, NULL, 'product', 47, 'products', 'Product image', '1', '143'),
(233, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/145.jpg', 'thumb_images/145.jpg', 0, 0, NULL, 'product', 47, 'products', 'Product image', '1', '143'),
(234, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/146.jpg', 'thumb_images/146.jpg', 0, 0, NULL, 'product', 47, 'products', 'Product image', '1', '143'),
(235, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/147.jpg', 'thumb_images/147.jpg', 0, 0, NULL, 'product', 47, 'products', 'Product image', '1', '143'),
(236, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/144.jpg', 'thumb_images/144.jpg', 0, 0, NULL, 'product', 48, 'products', 'Product image', '1', '144'),
(237, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/145.jpg', 'thumb_images/145.jpg', 0, 0, NULL, 'product', 48, 'products', 'Product image', '1', '144'),
(238, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/146.jpg', 'thumb_images/146.jpg', 0, 0, NULL, 'product', 48, 'products', 'Product image', '1', '144'),
(239, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/147.jpg', 'thumb_images/147.jpg', 0, 0, NULL, 'product', 48, 'products', 'Product image', '1', '144'),
(241, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/145.jpg', 'thumb_images/145.jpg', 0, 0, NULL, 'product', 49, 'products', 'Product image', '1', '145'),
(242, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/146.jpg', 'thumb_images/146.jpg', 0, 0, NULL, 'product', 49, 'products', 'Product image', '1', '145'),
(243, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/147.jpg', 'thumb_images/147.jpg', 0, 0, NULL, 'product', 49, 'products', 'Product image', '1', '145'),
(246, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/15.jpg', 'thumb_images/15.jpg', 0, 0, NULL, 'product', 50, 'products', 'Product image', '1', '15'),
(247, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/16.jpg', 'thumb_images/16.jpg', 0, 0, NULL, 'product', 50, 'products', 'Product image', '1', '15'),
(248, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/17.jpg', 'thumb_images/17.jpg', 0, 0, NULL, 'product', 50, 'products', 'Product image', '1', '15'),
(249, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/18.jpg', 'thumb_images/18.jpg', 0, 0, NULL, 'product', 50, 'products', 'Product image', '1', '15'),
(250, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/19.jpg', 'thumb_images/19.jpg', 0, 0, NULL, 'product', 50, 'products', 'Product image', '1', '15'),
(251, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/16.jpg', 'thumb_images/16.jpg', 0, 0, NULL, 'product', 51, 'products', 'Product image', '1', '16'),
(252, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/17.jpg', 'thumb_images/17.jpg', 0, 0, NULL, 'product', 51, 'products', 'Product image', '1', '16'),
(253, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/18.jpg', 'thumb_images/18.jpg', 0, 0, NULL, 'product', 51, 'products', 'Product image', '1', '16'),
(254, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/19.jpg', 'thumb_images/19.jpg', 0, 0, NULL, 'product', 51, 'products', 'Product image', '1', '16'),
(255, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/20.jpg', 'thumb_images/20.jpg', 0, 0, NULL, 'product', 51, 'products', 'Product image', '1', '16'),
(256, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/17.jpg', 'thumb_images/17.jpg', 0, 0, NULL, 'product', 52, 'products', 'Product image', '1', '17'),
(257, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/18.jpg', 'thumb_images/18.jpg', 0, 0, NULL, 'product', 52, 'products', 'Product image', '1', '17'),
(258, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/19.jpg', 'thumb_images/19.jpg', 0, 0, NULL, 'product', 52, 'products', 'Product image', '1', '17'),
(259, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/20.jpg', 'thumb_images/20.jpg', 0, 0, NULL, 'product', 52, 'products', 'Product image', '1', '17'),
(260, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/21.jpg', 'thumb_images/21.jpg', 0, 0, NULL, 'product', 52, 'products', 'Product image', '1', '17'),
(261, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/18.jpg', 'thumb_images/18.jpg', 0, 0, NULL, 'product', 53, 'products', 'Product image', '1', '18'),
(262, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/19.jpg', 'thumb_images/19.jpg', 0, 0, NULL, 'product', 53, 'products', 'Product image', '1', '18'),
(263, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/20.jpg', 'thumb_images/20.jpg', 0, 0, NULL, 'product', 53, 'products', 'Product image', '1', '18'),
(264, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/21.jpg', 'thumb_images/21.jpg', 0, 0, NULL, 'product', 53, 'products', 'Product image', '1', '18'),
(265, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/22.jpg', 'thumb_images/22.jpg', 0, 0, NULL, 'product', 53, 'products', 'Product image', '1', '18'),
(266, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/19.jpg', 'thumb_images/19.jpg', 0, 0, NULL, 'product', 54, 'products', 'Product image', '1', '19'),
(267, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/20.jpg', 'thumb_images/20.jpg', 0, 0, NULL, 'product', 54, 'products', 'Product image', '1', '19'),
(268, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/21.jpg', 'thumb_images/21.jpg', 0, 0, NULL, 'product', 54, 'products', 'Product image', '1', '19'),
(269, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/22.jpg', 'thumb_images/22.jpg', 0, 0, NULL, 'product', 54, 'products', 'Product image', '1', '19'),
(270, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/23.jpg', 'thumb_images/23.jpg', 0, 0, NULL, 'product', 54, 'products', 'Product image', '1', '19'),
(271, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/20.jpg', 'thumb_images/20.jpg', 0, 0, NULL, 'product', 55, 'products', 'Product image', '1', '20'),
(272, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/21.jpg', 'thumb_images/21.jpg', 0, 0, NULL, 'product', 55, 'products', 'Product image', '1', '20'),
(273, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/22.jpg', 'thumb_images/22.jpg', 0, 0, NULL, 'product', 55, 'products', 'Product image', '1', '20'),
(274, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/23.jpg', 'thumb_images/23.jpg', 0, 0, NULL, 'product', 55, 'products', 'Product image', '1', '20'),
(275, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/24.jpg', 'thumb_images/24.jpg', 0, 0, NULL, 'product', 55, 'products', 'Product image', '1', '20'),
(276, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/21.jpg', 'thumb_images/21.jpg', 0, 0, NULL, 'product', 56, 'products', 'Product image', '1', '21'),
(277, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/22.jpg', 'thumb_images/22.jpg', 0, 0, NULL, 'product', 56, 'products', 'Product image', '1', '21'),
(278, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/23.jpg', 'thumb_images/23.jpg', 0, 0, NULL, 'product', 56, 'products', 'Product image', '1', '21'),
(279, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/24.jpg', 'thumb_images/24.jpg', 0, 0, NULL, 'product', 56, 'products', 'Product image', '1', '21'),
(280, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/25.jpg', 'thumb_images/25.jpg', 0, 0, NULL, 'product', 56, 'products', 'Product image', '1', '21'),
(281, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/22.jpg', 'thumb_images/22.jpg', 0, 0, NULL, 'product', 57, 'products', 'Product image', '1', '22'),
(282, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/23.jpg', 'thumb_images/23.jpg', 0, 0, NULL, 'product', 57, 'products', 'Product image', '1', '22'),
(283, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/24.jpg', 'thumb_images/24.jpg', 0, 0, NULL, 'product', 57, 'products', 'Product image', '1', '22'),
(284, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/25.jpg', 'thumb_images/25.jpg', 0, 0, NULL, 'product', 57, 'products', 'Product image', '1', '22'),
(285, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/26.jpg', 'thumb_images/26.jpg', 0, 0, NULL, 'product', 57, 'products', 'Product image', '1', '22'),
(286, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/23.jpg', 'thumb_images/23.jpg', 0, 0, NULL, 'product', 58, 'products', 'Product image', '1', '23'),
(287, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/24.jpg', 'thumb_images/24.jpg', 0, 0, NULL, 'product', 58, 'products', 'Product image', '1', '23'),
(288, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/25.jpg', 'thumb_images/25.jpg', 0, 0, NULL, 'product', 58, 'products', 'Product image', '1', '23'),
(289, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/26.jpg', 'thumb_images/26.jpg', 0, 0, NULL, 'product', 58, 'products', 'Product image', '1', '23'),
(290, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/27.jpg', 'thumb_images/27.jpg', 0, 0, NULL, 'product', 58, 'products', 'Product image', '1', '23'),
(291, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/24.jpg', 'thumb_images/24.jpg', 0, 0, NULL, 'product', 59, 'products', 'Product image', '1', '24'),
(292, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/25.jpg', 'thumb_images/25.jpg', 0, 0, NULL, 'product', 59, 'products', 'Product image', '1', '24'),
(293, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/26.jpg', 'thumb_images/26.jpg', 0, 0, NULL, 'product', 59, 'products', 'Product image', '1', '24'),
(294, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/27.jpg', 'thumb_images/27.jpg', 0, 0, NULL, 'product', 59, 'products', 'Product image', '1', '24'),
(295, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/28.jpg', 'thumb_images/28.jpg', 0, 0, NULL, 'product', 59, 'products', 'Product image', '1', '24'),
(296, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/25.jpg', 'thumb_images/25.jpg', 0, 0, NULL, 'product', 60, 'products', 'Product image', '1', '25'),
(297, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/26.jpg', 'thumb_images/26.jpg', 0, 0, NULL, 'product', 60, 'products', 'Product image', '1', '25'),
(298, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/27.jpg', 'thumb_images/27.jpg', 0, 0, NULL, 'product', 60, 'products', 'Product image', '1', '25'),
(299, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/28.jpg', 'thumb_images/28.jpg', 0, 0, NULL, 'product', 60, 'products', 'Product image', '1', '25'),
(300, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/29.jpg', 'thumb_images/29.jpg', 0, 0, NULL, 'product', 60, 'products', 'Product image', '1', '25'),
(301, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/26.jpg', 'thumb_images/26.jpg', 0, 0, NULL, 'product', 61, 'products', 'Product image', '1', '26'),
(302, '2025-02-22 20:20:25', '2025-02-22 20:20:25', 1, 'images/27.jpg', 'thumb_images/27.jpg', 0, 0, NULL, 'product', 61, 'products', 'Product image', '1', '26'),
(303, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/28.jpg', 'thumb_images/28.jpg', 0, 0, NULL, 'product', 61, 'products', 'Product image', '1', '26'),
(304, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/29.jpg', 'thumb_images/29.jpg', 0, 0, NULL, 'product', 61, 'products', 'Product image', '1', '26'),
(305, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/30.jpg', 'thumb_images/30.jpg', 0, 0, NULL, 'product', 61, 'products', 'Product image', '1', '26'),
(306, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/27.jpg', 'thumb_images/27.jpg', 0, 0, NULL, 'product', 62, 'products', 'Product image', '1', '27'),
(307, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/28.jpg', 'thumb_images/28.jpg', 0, 0, NULL, 'product', 62, 'products', 'Product image', '1', '27'),
(308, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/29.jpg', 'thumb_images/29.jpg', 0, 0, NULL, 'product', 62, 'products', 'Product image', '1', '27');
INSERT INTO `images` (`id`, `created_at`, `updated_at`, `administrator_id`, `src`, `thumbnail`, `parent_id`, `size`, `deleted_at`, `type`, `product_id`, `parent_endpoint`, `note`, `is_processed`, `parent_local_id`) VALUES
(309, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/30.jpg', 'thumb_images/30.jpg', 0, 0, NULL, 'product', 62, 'products', 'Product image', '1', '27'),
(310, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/31.jpg', 'thumb_images/31.jpg', 0, 0, NULL, 'product', 62, 'products', 'Product image', '1', '27'),
(311, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/28.jpg', 'thumb_images/28.jpg', 0, 0, NULL, 'product', 63, 'products', 'Product image', '1', '28'),
(312, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/29.jpg', 'thumb_images/29.jpg', 0, 0, NULL, 'product', 63, 'products', 'Product image', '1', '28'),
(313, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/30.jpg', 'thumb_images/30.jpg', 0, 0, NULL, 'product', 63, 'products', 'Product image', '1', '28'),
(314, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/31.jpg', 'thumb_images/31.jpg', 0, 0, NULL, 'product', 63, 'products', 'Product image', '1', '28'),
(315, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/32.jpg', 'thumb_images/32.jpg', 0, 0, NULL, 'product', 63, 'products', 'Product image', '1', '28'),
(316, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/29.jpg', 'thumb_images/29.jpg', 0, 0, NULL, 'product', 64, 'products', 'Product image', '1', '29'),
(317, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/30.jpg', 'thumb_images/30.jpg', 0, 0, NULL, 'product', 64, 'products', 'Product image', '1', '29'),
(318, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/31.jpg', 'thumb_images/31.jpg', 0, 0, NULL, 'product', 64, 'products', 'Product image', '1', '29'),
(319, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/32.jpg', 'thumb_images/32.jpg', 0, 0, NULL, 'product', 64, 'products', 'Product image', '1', '29'),
(320, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/33.jpg', 'thumb_images/33.jpg', 0, 0, NULL, 'product', 64, 'products', 'Product image', '1', '29'),
(321, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/30.jpg', 'thumb_images/30.jpg', 0, 0, NULL, 'product', 65, 'products', 'Product image', '1', '30'),
(322, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/31.jpg', 'thumb_images/31.jpg', 0, 0, NULL, 'product', 65, 'products', 'Product image', '1', '30'),
(323, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/32.jpg', 'thumb_images/32.jpg', 0, 0, NULL, 'product', 65, 'products', 'Product image', '1', '30'),
(324, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/33.jpg', 'thumb_images/33.jpg', 0, 0, NULL, 'product', 65, 'products', 'Product image', '1', '30'),
(325, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/34.jpg', 'thumb_images/34.jpg', 0, 0, NULL, 'product', 65, 'products', 'Product image', '1', '30'),
(326, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/31.jpg', 'thumb_images/31.jpg', 0, 0, NULL, 'product', 66, 'products', 'Product image', '1', '31'),
(327, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/32.jpg', 'thumb_images/32.jpg', 0, 0, NULL, 'product', 66, 'products', 'Product image', '1', '31'),
(328, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/33.jpg', 'thumb_images/33.jpg', 0, 0, NULL, 'product', 66, 'products', 'Product image', '1', '31'),
(329, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/34.jpg', 'thumb_images/34.jpg', 0, 0, NULL, 'product', 66, 'products', 'Product image', '1', '31'),
(330, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/35.jpg', 'thumb_images/35.jpg', 0, 0, NULL, 'product', 66, 'products', 'Product image', '1', '31'),
(331, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/32.jpg', 'thumb_images/32.jpg', 0, 0, NULL, 'product', 67, 'products', 'Product image', '1', '32'),
(332, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/33.jpg', 'thumb_images/33.jpg', 0, 0, NULL, 'product', 67, 'products', 'Product image', '1', '32'),
(333, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/34.jpg', 'thumb_images/34.jpg', 0, 0, NULL, 'product', 67, 'products', 'Product image', '1', '32'),
(334, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/35.jpg', 'thumb_images/35.jpg', 0, 0, NULL, 'product', 67, 'products', 'Product image', '1', '32'),
(335, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/36.jpg', 'thumb_images/36.jpg', 0, 0, NULL, 'product', 67, 'products', 'Product image', '1', '32'),
(336, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/33.jpg', 'thumb_images/33.jpg', 0, 0, NULL, 'product', 68, 'products', 'Product image', '1', '33'),
(337, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/34.jpg', 'thumb_images/34.jpg', 0, 0, NULL, 'product', 68, 'products', 'Product image', '1', '33'),
(338, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/35.jpg', 'thumb_images/35.jpg', 0, 0, NULL, 'product', 68, 'products', 'Product image', '1', '33'),
(339, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/36.jpg', 'thumb_images/36.jpg', 0, 0, NULL, 'product', 68, 'products', 'Product image', '1', '33'),
(340, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/37.jpg', 'thumb_images/37.jpg', 0, 0, NULL, 'product', 68, 'products', 'Product image', '1', '33'),
(341, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/34.jpg', 'thumb_images/34.jpg', 0, 0, NULL, 'product', 69, 'products', 'Product image', '1', '34'),
(342, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/35.jpg', 'thumb_images/35.jpg', 0, 0, NULL, 'product', 69, 'products', 'Product image', '1', '34'),
(343, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/36.jpg', 'thumb_images/36.jpg', 0, 0, NULL, 'product', 69, 'products', 'Product image', '1', '34'),
(344, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/37.jpg', 'thumb_images/37.jpg', 0, 0, NULL, 'product', 69, 'products', 'Product image', '1', '34'),
(345, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/38.jpg', 'thumb_images/38.jpg', 0, 0, NULL, 'product', 69, 'products', 'Product image', '1', '34'),
(346, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/35.jpg', 'thumb_images/35.jpg', 0, 0, NULL, 'product', 70, 'products', 'Product image', '1', '35'),
(347, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/36.jpg', 'thumb_images/36.jpg', 0, 0, NULL, 'product', 70, 'products', 'Product image', '1', '35'),
(348, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/37.jpg', 'thumb_images/37.jpg', 0, 0, NULL, 'product', 70, 'products', 'Product image', '1', '35'),
(349, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/38.jpg', 'thumb_images/38.jpg', 0, 0, NULL, 'product', 70, 'products', 'Product image', '1', '35'),
(350, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/39.jpg', 'thumb_images/39.jpg', 0, 0, NULL, 'product', 70, 'products', 'Product image', '1', '35'),
(351, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/36.jpg', 'thumb_images/36.jpg', 0, 0, NULL, 'product', 71, 'products', 'Product image', '1', '36'),
(352, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/37.jpg', 'thumb_images/37.jpg', 0, 0, NULL, 'product', 71, 'products', 'Product image', '1', '36'),
(353, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/38.jpg', 'thumb_images/38.jpg', 0, 0, NULL, 'product', 71, 'products', 'Product image', '1', '36'),
(354, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/39.jpg', 'thumb_images/39.jpg', 0, 0, NULL, 'product', 71, 'products', 'Product image', '1', '36'),
(355, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/40.jpg', 'thumb_images/40.jpg', 0, 0, NULL, 'product', 71, 'products', 'Product image', '1', '36'),
(356, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/37.jpg', 'thumb_images/37.jpg', 0, 0, NULL, 'product', 72, 'products', 'Product image', '1', '37'),
(357, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/38.jpg', 'thumb_images/38.jpg', 0, 0, NULL, 'product', 72, 'products', 'Product image', '1', '37'),
(358, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/39.jpg', 'thumb_images/39.jpg', 0, 0, NULL, 'product', 72, 'products', 'Product image', '1', '37'),
(359, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/40.jpg', 'thumb_images/40.jpg', 0, 0, NULL, 'product', 72, 'products', 'Product image', '1', '37'),
(360, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/41.jpg', 'thumb_images/41.jpg', 0, 0, NULL, 'product', 72, 'products', 'Product image', '1', '37'),
(361, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/38.jpg', 'thumb_images/38.jpg', 0, 0, NULL, 'product', 73, 'products', 'Product image', '1', '38'),
(362, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/39.jpg', 'thumb_images/39.jpg', 0, 0, NULL, 'product', 73, 'products', 'Product image', '1', '38'),
(363, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/40.jpg', 'thumb_images/40.jpg', 0, 0, NULL, 'product', 73, 'products', 'Product image', '1', '38'),
(364, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/41.jpg', 'thumb_images/41.jpg', 0, 0, NULL, 'product', 73, 'products', 'Product image', '1', '38'),
(365, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/42.jpg', 'thumb_images/42.jpg', 0, 0, NULL, 'product', 73, 'products', 'Product image', '1', '38'),
(366, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/39.jpg', 'thumb_images/39.jpg', 0, 0, NULL, 'product', 74, 'products', 'Product image', '1', '39'),
(367, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/40.jpg', 'thumb_images/40.jpg', 0, 0, NULL, 'product', 74, 'products', 'Product image', '1', '39'),
(368, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/41.jpg', 'thumb_images/41.jpg', 0, 0, NULL, 'product', 74, 'products', 'Product image', '1', '39'),
(369, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/42.jpg', 'thumb_images/42.jpg', 0, 0, NULL, 'product', 74, 'products', 'Product image', '1', '39'),
(370, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/43.jpg', 'thumb_images/43.jpg', 0, 0, NULL, 'product', 74, 'products', 'Product image', '1', '39'),
(371, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/40.jpg', 'thumb_images/40.jpg', 0, 0, NULL, 'product', 75, 'products', 'Product image', '1', '40'),
(372, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/41.jpg', 'thumb_images/41.jpg', 0, 0, NULL, 'product', 75, 'products', 'Product image', '1', '40'),
(373, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/42.jpg', 'thumb_images/42.jpg', 0, 0, NULL, 'product', 75, 'products', 'Product image', '1', '40'),
(374, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/43.jpg', 'thumb_images/43.jpg', 0, 0, NULL, 'product', 75, 'products', 'Product image', '1', '40'),
(375, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/44.jpg', 'thumb_images/44.jpg', 0, 0, NULL, 'product', 75, 'products', 'Product image', '1', '40'),
(376, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/41.jpg', 'thumb_images/41.jpg', 0, 0, NULL, 'product', 76, 'products', 'Product image', '1', '41'),
(377, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/42.jpg', 'thumb_images/42.jpg', 0, 0, NULL, 'product', 76, 'products', 'Product image', '1', '41'),
(378, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/43.jpg', 'thumb_images/43.jpg', 0, 0, NULL, 'product', 76, 'products', 'Product image', '1', '41'),
(379, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/44.jpg', 'thumb_images/44.jpg', 0, 0, NULL, 'product', 76, 'products', 'Product image', '1', '41'),
(380, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/45.jpg', 'thumb_images/45.jpg', 0, 0, NULL, 'product', 76, 'products', 'Product image', '1', '41'),
(381, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/42.jpg', 'thumb_images/42.jpg', 0, 0, NULL, 'product', 77, 'products', 'Product image', '1', '42'),
(382, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/43.jpg', 'thumb_images/43.jpg', 0, 0, NULL, 'product', 77, 'products', 'Product image', '1', '42'),
(383, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/44.jpg', 'thumb_images/44.jpg', 0, 0, NULL, 'product', 77, 'products', 'Product image', '1', '42'),
(384, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/45.jpg', 'thumb_images/45.jpg', 0, 0, NULL, 'product', 77, 'products', 'Product image', '1', '42'),
(385, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/46.jpg', 'thumb_images/46.jpg', 0, 0, NULL, 'product', 77, 'products', 'Product image', '1', '42'),
(386, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/43.jpg', 'thumb_images/43.jpg', 0, 0, NULL, 'product', 78, 'products', 'Product image', '1', '43'),
(387, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/44.jpg', 'thumb_images/44.jpg', 0, 0, NULL, 'product', 78, 'products', 'Product image', '1', '43'),
(388, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/45.jpg', 'thumb_images/45.jpg', 0, 0, NULL, 'product', 78, 'products', 'Product image', '1', '43'),
(389, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/46.jpg', 'thumb_images/46.jpg', 0, 0, NULL, 'product', 78, 'products', 'Product image', '1', '43'),
(390, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/47.jpg', 'thumb_images/47.jpg', 0, 0, NULL, 'product', 78, 'products', 'Product image', '1', '43'),
(391, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/44.jpg', 'thumb_images/44.jpg', 0, 0, NULL, 'product', 79, 'products', 'Product image', '1', '44'),
(392, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/45.jpg', 'thumb_images/45.jpg', 0, 0, NULL, 'product', 79, 'products', 'Product image', '1', '44'),
(393, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/46.jpg', 'thumb_images/46.jpg', 0, 0, NULL, 'product', 79, 'products', 'Product image', '1', '44'),
(394, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/47.jpg', 'thumb_images/47.jpg', 0, 0, NULL, 'product', 79, 'products', 'Product image', '1', '44'),
(395, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/48.jpg', 'thumb_images/48.jpg', 0, 0, NULL, 'product', 79, 'products', 'Product image', '1', '44'),
(396, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/45.jpg', 'thumb_images/45.jpg', 0, 0, NULL, 'product', 80, 'products', 'Product image', '1', '45'),
(397, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/46.jpg', 'thumb_images/46.jpg', 0, 0, NULL, 'product', 80, 'products', 'Product image', '1', '45'),
(398, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/47.jpg', 'thumb_images/47.jpg', 0, 0, NULL, 'product', 80, 'products', 'Product image', '1', '45'),
(399, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/48.jpg', 'thumb_images/48.jpg', 0, 0, NULL, 'product', 80, 'products', 'Product image', '1', '45'),
(400, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/49.jpg', 'thumb_images/49.jpg', 0, 0, NULL, 'product', 80, 'products', 'Product image', '1', '45'),
(401, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/46.jpg', 'thumb_images/46.jpg', 0, 0, NULL, 'product', 81, 'products', 'Product image', '1', '46'),
(402, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/47.jpg', 'thumb_images/47.jpg', 0, 0, NULL, 'product', 81, 'products', 'Product image', '1', '46'),
(403, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/48.jpg', 'thumb_images/48.jpg', 0, 0, NULL, 'product', 81, 'products', 'Product image', '1', '46'),
(404, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/49.jpg', 'thumb_images/49.jpg', 0, 0, NULL, 'product', 81, 'products', 'Product image', '1', '46'),
(405, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/50.jpg', 'thumb_images/50.jpg', 0, 0, NULL, 'product', 81, 'products', 'Product image', '1', '46'),
(406, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/47.jpg', 'thumb_images/47.jpg', 0, 0, NULL, 'product', 82, 'products', 'Product image', '1', '47'),
(407, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/48.jpg', 'thumb_images/48.jpg', 0, 0, NULL, 'product', 82, 'products', 'Product image', '1', '47'),
(408, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/49.jpg', 'thumb_images/49.jpg', 0, 0, NULL, 'product', 82, 'products', 'Product image', '1', '47'),
(409, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/50.jpg', 'thumb_images/50.jpg', 0, 0, NULL, 'product', 82, 'products', 'Product image', '1', '47'),
(410, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/51.jpg', 'thumb_images/51.jpg', 0, 0, NULL, 'product', 82, 'products', 'Product image', '1', '47'),
(411, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/48.jpg', 'thumb_images/48.jpg', 0, 0, NULL, 'product', 83, 'products', 'Product image', '1', '48'),
(412, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/49.jpg', 'thumb_images/49.jpg', 0, 0, NULL, 'product', 83, 'products', 'Product image', '1', '48'),
(413, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/50.jpg', 'thumb_images/50.jpg', 0, 0, NULL, 'product', 83, 'products', 'Product image', '1', '48'),
(414, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/51.jpg', 'thumb_images/51.jpg', 0, 0, NULL, 'product', 83, 'products', 'Product image', '1', '48'),
(415, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/52.jpg', 'thumb_images/52.jpg', 0, 0, NULL, 'product', 83, 'products', 'Product image', '1', '48'),
(416, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/49.jpg', 'thumb_images/49.jpg', 0, 0, NULL, 'product', 84, 'products', 'Product image', '1', '49'),
(417, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/50.jpg', 'thumb_images/50.jpg', 0, 0, NULL, 'product', 84, 'products', 'Product image', '1', '49'),
(418, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/51.jpg', 'thumb_images/51.jpg', 0, 0, NULL, 'product', 84, 'products', 'Product image', '1', '49'),
(419, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/52.jpg', 'thumb_images/52.jpg', 0, 0, NULL, 'product', 84, 'products', 'Product image', '1', '49'),
(420, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/53.jpg', 'thumb_images/53.jpg', 0, 0, NULL, 'product', 84, 'products', 'Product image', '1', '49'),
(421, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/50.jpg', 'thumb_images/50.jpg', 0, 0, NULL, 'product', 85, 'products', 'Product image', '1', '50'),
(422, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/51.jpg', 'thumb_images/51.jpg', 0, 0, NULL, 'product', 85, 'products', 'Product image', '1', '50'),
(423, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/52.jpg', 'thumb_images/52.jpg', 0, 0, NULL, 'product', 85, 'products', 'Product image', '1', '50'),
(424, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/53.jpg', 'thumb_images/53.jpg', 0, 0, NULL, 'product', 85, 'products', 'Product image', '1', '50'),
(425, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/54.jpg', 'thumb_images/54.jpg', 0, 0, NULL, 'product', 85, 'products', 'Product image', '1', '50'),
(426, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/51.jpg', 'thumb_images/51.jpg', 0, 0, NULL, 'product', 86, 'products', 'Product image', '1', '51'),
(427, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/52.jpg', 'thumb_images/52.jpg', 0, 0, NULL, 'product', 86, 'products', 'Product image', '1', '51'),
(428, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/53.jpg', 'thumb_images/53.jpg', 0, 0, NULL, 'product', 86, 'products', 'Product image', '1', '51'),
(429, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/54.jpg', 'thumb_images/54.jpg', 0, 0, NULL, 'product', 86, 'products', 'Product image', '1', '51'),
(430, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/55.jpg', 'thumb_images/55.jpg', 0, 0, NULL, 'product', 86, 'products', 'Product image', '1', '51'),
(431, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/52.jpg', 'thumb_images/52.jpg', 0, 0, NULL, 'product', 87, 'products', 'Product image', '1', '52'),
(432, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/53.jpg', 'thumb_images/53.jpg', 0, 0, NULL, 'product', 87, 'products', 'Product image', '1', '52'),
(433, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/54.jpg', 'thumb_images/54.jpg', 0, 0, NULL, 'product', 87, 'products', 'Product image', '1', '52'),
(434, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/55.jpg', 'thumb_images/55.jpg', 0, 0, NULL, 'product', 87, 'products', 'Product image', '1', '52'),
(435, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/56.jpg', 'thumb_images/56.jpg', 0, 0, NULL, 'product', 87, 'products', 'Product image', '1', '52'),
(436, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/53.jpg', 'thumb_images/53.jpg', 0, 0, NULL, 'product', 88, 'products', 'Product image', '1', '53'),
(437, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/54.jpg', 'thumb_images/54.jpg', 0, 0, NULL, 'product', 88, 'products', 'Product image', '1', '53'),
(438, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/55.jpg', 'thumb_images/55.jpg', 0, 0, NULL, 'product', 88, 'products', 'Product image', '1', '53'),
(439, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/56.jpg', 'thumb_images/56.jpg', 0, 0, NULL, 'product', 88, 'products', 'Product image', '1', '53'),
(440, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/57.jpg', 'thumb_images/57.jpg', 0, 0, NULL, 'product', 88, 'products', 'Product image', '1', '53'),
(441, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/54.jpg', 'thumb_images/54.jpg', 0, 0, NULL, 'product', 89, 'products', 'Product image', '1', '54'),
(442, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/55.jpg', 'thumb_images/55.jpg', 0, 0, NULL, 'product', 89, 'products', 'Product image', '1', '54'),
(443, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/56.jpg', 'thumb_images/56.jpg', 0, 0, NULL, 'product', 89, 'products', 'Product image', '1', '54'),
(444, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/57.jpg', 'thumb_images/57.jpg', 0, 0, NULL, 'product', 89, 'products', 'Product image', '1', '54'),
(445, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/58.jpg', 'thumb_images/58.jpg', 0, 0, NULL, 'product', 89, 'products', 'Product image', '1', '54'),
(446, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/55.jpg', 'thumb_images/55.jpg', 0, 0, NULL, 'product', 90, 'products', 'Product image', '1', '55'),
(447, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/56.jpg', 'thumb_images/56.jpg', 0, 0, NULL, 'product', 90, 'products', 'Product image', '1', '55'),
(448, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/57.jpg', 'thumb_images/57.jpg', 0, 0, NULL, 'product', 90, 'products', 'Product image', '1', '55'),
(449, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/58.jpg', 'thumb_images/58.jpg', 0, 0, NULL, 'product', 90, 'products', 'Product image', '1', '55'),
(450, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/59.jpg', 'thumb_images/59.jpg', 0, 0, NULL, 'product', 90, 'products', 'Product image', '1', '55'),
(451, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/56.jpg', 'thumb_images/56.jpg', 0, 0, NULL, 'product', 91, 'products', 'Product image', '1', '56'),
(452, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/57.jpg', 'thumb_images/57.jpg', 0, 0, NULL, 'product', 91, 'products', 'Product image', '1', '56'),
(453, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/58.jpg', 'thumb_images/58.jpg', 0, 0, NULL, 'product', 91, 'products', 'Product image', '1', '56'),
(454, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/59.jpg', 'thumb_images/59.jpg', 0, 0, NULL, 'product', 91, 'products', 'Product image', '1', '56'),
(455, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/60.jpg', 'thumb_images/60.jpg', 0, 0, NULL, 'product', 91, 'products', 'Product image', '1', '56'),
(456, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/57.jpg', 'thumb_images/57.jpg', 0, 0, NULL, 'product', 92, 'products', 'Product image', '1', '57'),
(457, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/58.jpg', 'thumb_images/58.jpg', 0, 0, NULL, 'product', 92, 'products', 'Product image', '1', '57'),
(458, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/59.jpg', 'thumb_images/59.jpg', 0, 0, NULL, 'product', 92, 'products', 'Product image', '1', '57'),
(459, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/60.jpg', 'thumb_images/60.jpg', 0, 0, NULL, 'product', 92, 'products', 'Product image', '1', '57'),
(460, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/61.jpg', 'thumb_images/61.jpg', 0, 0, NULL, 'product', 92, 'products', 'Product image', '1', '57'),
(461, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/58.jpg', 'thumb_images/58.jpg', 0, 0, NULL, 'product', 93, 'products', 'Product image', '1', '58'),
(462, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/59.jpg', 'thumb_images/59.jpg', 0, 0, NULL, 'product', 93, 'products', 'Product image', '1', '58'),
(463, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/60.jpg', 'thumb_images/60.jpg', 0, 0, NULL, 'product', 93, 'products', 'Product image', '1', '58'),
(464, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/61.jpg', 'thumb_images/61.jpg', 0, 0, NULL, 'product', 93, 'products', 'Product image', '1', '58'),
(465, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/62.jpg', 'thumb_images/62.jpg', 0, 0, NULL, 'product', 93, 'products', 'Product image', '1', '58'),
(466, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/59.jpg', 'thumb_images/59.jpg', 0, 0, NULL, 'product', 94, 'products', 'Product image', '1', '59'),
(467, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/60.jpg', 'thumb_images/60.jpg', 0, 0, NULL, 'product', 94, 'products', 'Product image', '1', '59'),
(468, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/61.jpg', 'thumb_images/61.jpg', 0, 0, NULL, 'product', 94, 'products', 'Product image', '1', '59'),
(469, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/62.jpg', 'thumb_images/62.jpg', 0, 0, NULL, 'product', 94, 'products', 'Product image', '1', '59'),
(470, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/63.jpg', 'thumb_images/63.jpg', 0, 0, NULL, 'product', 94, 'products', 'Product image', '1', '59'),
(471, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/60.jpg', 'thumb_images/60.jpg', 0, 0, NULL, 'product', 95, 'products', 'Product image', '1', '60'),
(472, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/61.jpg', 'thumb_images/61.jpg', 0, 0, NULL, 'product', 95, 'products', 'Product image', '1', '60'),
(473, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/62.jpg', 'thumb_images/62.jpg', 0, 0, NULL, 'product', 95, 'products', 'Product image', '1', '60'),
(474, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/63.jpg', 'thumb_images/63.jpg', 0, 0, NULL, 'product', 95, 'products', 'Product image', '1', '60'),
(475, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/64.jpg', 'thumb_images/64.jpg', 0, 0, NULL, 'product', 95, 'products', 'Product image', '1', '60'),
(476, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/61.jpg', 'thumb_images/61.jpg', 0, 0, NULL, 'product', 96, 'products', 'Product image', '1', '61'),
(477, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/62.jpg', 'thumb_images/62.jpg', 0, 0, NULL, 'product', 96, 'products', 'Product image', '1', '61'),
(478, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/63.jpg', 'thumb_images/63.jpg', 0, 0, NULL, 'product', 96, 'products', 'Product image', '1', '61'),
(479, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/64.jpg', 'thumb_images/64.jpg', 0, 0, NULL, 'product', 96, 'products', 'Product image', '1', '61'),
(480, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/65.jpg', 'thumb_images/65.jpg', 0, 0, NULL, 'product', 96, 'products', 'Product image', '1', '61'),
(481, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/62.jpg', 'thumb_images/62.jpg', 0, 0, NULL, 'product', 97, 'products', 'Product image', '1', '62'),
(482, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/63.jpg', 'thumb_images/63.jpg', 0, 0, NULL, 'product', 97, 'products', 'Product image', '1', '62'),
(483, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/64.jpg', 'thumb_images/64.jpg', 0, 0, NULL, 'product', 97, 'products', 'Product image', '1', '62'),
(484, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/65.jpg', 'thumb_images/65.jpg', 0, 0, NULL, 'product', 97, 'products', 'Product image', '1', '62'),
(485, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/66.jpg', 'thumb_images/66.jpg', 0, 0, NULL, 'product', 97, 'products', 'Product image', '1', '62'),
(486, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/63.jpg', 'thumb_images/63.jpg', 0, 0, NULL, 'product', 98, 'products', 'Product image', '1', '63'),
(487, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/64.jpg', 'thumb_images/64.jpg', 0, 0, NULL, 'product', 98, 'products', 'Product image', '1', '63'),
(488, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/65.jpg', 'thumb_images/65.jpg', 0, 0, NULL, 'product', 98, 'products', 'Product image', '1', '63'),
(489, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/66.jpg', 'thumb_images/66.jpg', 0, 0, NULL, 'product', 98, 'products', 'Product image', '1', '63'),
(490, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/67.jpg', 'thumb_images/67.jpg', 0, 0, NULL, 'product', 98, 'products', 'Product image', '1', '63'),
(491, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/64.jpg', 'thumb_images/64.jpg', 0, 0, NULL, 'product', 99, 'products', 'Product image', '1', '64'),
(492, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/65.jpg', 'thumb_images/65.jpg', 0, 0, NULL, 'product', 99, 'products', 'Product image', '1', '64'),
(493, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/66.jpg', 'thumb_images/66.jpg', 0, 0, NULL, 'product', 99, 'products', 'Product image', '1', '64'),
(494, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/67.jpg', 'thumb_images/67.jpg', 0, 0, NULL, 'product', 99, 'products', 'Product image', '1', '64'),
(495, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/68.jpg', 'thumb_images/68.jpg', 0, 0, NULL, 'product', 99, 'products', 'Product image', '1', '64'),
(496, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/65.jpg', 'thumb_images/65.jpg', 0, 0, NULL, 'product', 100, 'products', 'Product image', '1', '65'),
(497, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/66.jpg', 'thumb_images/66.jpg', 0, 0, NULL, 'product', 100, 'products', 'Product image', '1', '65'),
(498, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/67.jpg', 'thumb_images/67.jpg', 0, 0, NULL, 'product', 100, 'products', 'Product image', '1', '65'),
(499, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/68.jpg', 'thumb_images/68.jpg', 0, 0, NULL, 'product', 100, 'products', 'Product image', '1', '65'),
(500, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/69.jpg', 'thumb_images/69.jpg', 0, 0, NULL, 'product', 100, 'products', 'Product image', '1', '65'),
(501, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/66.jpg', 'thumb_images/66.jpg', 0, 0, NULL, 'product', 101, 'products', 'Product image', '1', '66'),
(502, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/67.jpg', 'thumb_images/67.jpg', 0, 0, NULL, 'product', 101, 'products', 'Product image', '1', '66'),
(503, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/68.jpg', 'thumb_images/68.jpg', 0, 0, NULL, 'product', 101, 'products', 'Product image', '1', '66'),
(504, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/69.jpg', 'thumb_images/69.jpg', 0, 0, NULL, 'product', 101, 'products', 'Product image', '1', '66'),
(505, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/70.jpg', 'thumb_images/70.jpg', 0, 0, NULL, 'product', 101, 'products', 'Product image', '1', '66'),
(506, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/67.jpg', 'thumb_images/67.jpg', 0, 0, NULL, 'product', 102, 'products', 'Product image', '1', '67'),
(507, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/68.jpg', 'thumb_images/68.jpg', 0, 0, NULL, 'product', 102, 'products', 'Product image', '1', '67'),
(508, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/69.jpg', 'thumb_images/69.jpg', 0, 0, NULL, 'product', 102, 'products', 'Product image', '1', '67'),
(509, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/70.jpg', 'thumb_images/70.jpg', 0, 0, NULL, 'product', 102, 'products', 'Product image', '1', '67'),
(510, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/71.jpg', 'thumb_images/71.jpg', 0, 0, NULL, 'product', 102, 'products', 'Product image', '1', '67'),
(511, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/68.jpg', 'thumb_images/68.jpg', 0, 0, NULL, 'product', 103, 'products', 'Product image', '1', '68'),
(512, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/69.jpg', 'thumb_images/69.jpg', 0, 0, NULL, 'product', 103, 'products', 'Product image', '1', '68'),
(513, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/70.jpg', 'thumb_images/70.jpg', 0, 0, NULL, 'product', 103, 'products', 'Product image', '1', '68'),
(514, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/71.jpg', 'thumb_images/71.jpg', 0, 0, NULL, 'product', 103, 'products', 'Product image', '1', '68'),
(515, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/72.jpg', 'thumb_images/72.jpg', 0, 0, NULL, 'product', 103, 'products', 'Product image', '1', '68'),
(516, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/69.jpg', 'thumb_images/69.jpg', 0, 0, NULL, 'product', 104, 'products', 'Product image', '1', '69'),
(517, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/70.jpg', 'thumb_images/70.jpg', 0, 0, NULL, 'product', 104, 'products', 'Product image', '1', '69'),
(518, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/71.jpg', 'thumb_images/71.jpg', 0, 0, NULL, 'product', 104, 'products', 'Product image', '1', '69'),
(519, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/72.jpg', 'thumb_images/72.jpg', 0, 0, NULL, 'product', 104, 'products', 'Product image', '1', '69'),
(520, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/73.jpg', 'thumb_images/73.jpg', 0, 0, NULL, 'product', 104, 'products', 'Product image', '1', '69'),
(521, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/70.jpg', 'thumb_images/70.jpg', 0, 0, NULL, 'product', 105, 'products', 'Product image', '1', '70'),
(522, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/71.jpg', 'thumb_images/71.jpg', 0, 0, NULL, 'product', 105, 'products', 'Product image', '1', '70'),
(523, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/72.jpg', 'thumb_images/72.jpg', 0, 0, NULL, 'product', 105, 'products', 'Product image', '1', '70'),
(524, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/73.jpg', 'thumb_images/73.jpg', 0, 0, NULL, 'product', 105, 'products', 'Product image', '1', '70'),
(525, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/74.jpg', 'thumb_images/74.jpg', 0, 0, NULL, 'product', 105, 'products', 'Product image', '1', '70'),
(526, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/71.jpg', 'thumb_images/71.jpg', 0, 0, NULL, 'product', 106, 'products', 'Product image', '1', '71'),
(527, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/72.jpg', 'thumb_images/72.jpg', 0, 0, NULL, 'product', 106, 'products', 'Product image', '1', '71'),
(528, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/73.jpg', 'thumb_images/73.jpg', 0, 0, NULL, 'product', 106, 'products', 'Product image', '1', '71'),
(529, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/74.jpg', 'thumb_images/74.jpg', 0, 0, NULL, 'product', 106, 'products', 'Product image', '1', '71'),
(530, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/75.jpg', 'thumb_images/75.jpg', 0, 0, NULL, 'product', 106, 'products', 'Product image', '1', '71'),
(531, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/72.jpg', 'thumb_images/72.jpg', 0, 0, NULL, 'product', 107, 'products', 'Product image', '1', '72'),
(532, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/73.jpg', 'thumb_images/73.jpg', 0, 0, NULL, 'product', 107, 'products', 'Product image', '1', '72'),
(533, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/74.jpg', 'thumb_images/74.jpg', 0, 0, NULL, 'product', 107, 'products', 'Product image', '1', '72'),
(534, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/75.jpg', 'thumb_images/75.jpg', 0, 0, NULL, 'product', 107, 'products', 'Product image', '1', '72'),
(535, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/76.jpg', 'thumb_images/76.jpg', 0, 0, NULL, 'product', 107, 'products', 'Product image', '1', '72'),
(536, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/73.jpg', 'thumb_images/73.jpg', 0, 0, NULL, 'product', 108, 'products', 'Product image', '1', '73'),
(537, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/74.jpg', 'thumb_images/74.jpg', 0, 0, NULL, 'product', 108, 'products', 'Product image', '1', '73'),
(538, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/75.jpg', 'thumb_images/75.jpg', 0, 0, NULL, 'product', 108, 'products', 'Product image', '1', '73'),
(539, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/76.jpg', 'thumb_images/76.jpg', 0, 0, NULL, 'product', 108, 'products', 'Product image', '1', '73'),
(540, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/77.jpg', 'thumb_images/77.jpg', 0, 0, NULL, 'product', 108, 'products', 'Product image', '1', '73'),
(541, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/74.jpg', 'thumb_images/74.jpg', 0, 0, NULL, 'product', 109, 'products', 'Product image', '1', '74'),
(542, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/75.jpg', 'thumb_images/75.jpg', 0, 0, NULL, 'product', 109, 'products', 'Product image', '1', '74'),
(543, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/76.jpg', 'thumb_images/76.jpg', 0, 0, NULL, 'product', 109, 'products', 'Product image', '1', '74'),
(544, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/77.jpg', 'thumb_images/77.jpg', 0, 0, NULL, 'product', 109, 'products', 'Product image', '1', '74'),
(545, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/78.jpg', 'thumb_images/78.jpg', 0, 0, NULL, 'product', 109, 'products', 'Product image', '1', '74'),
(546, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/75.jpg', 'thumb_images/75.jpg', 0, 0, NULL, 'product', 110, 'products', 'Product image', '1', '75'),
(547, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/76.jpg', 'thumb_images/76.jpg', 0, 0, NULL, 'product', 110, 'products', 'Product image', '1', '75'),
(548, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/77.jpg', 'thumb_images/77.jpg', 0, 0, NULL, 'product', 110, 'products', 'Product image', '1', '75'),
(549, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/78.jpg', 'thumb_images/78.jpg', 0, 0, NULL, 'product', 110, 'products', 'Product image', '1', '75'),
(550, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/79.jpg', 'thumb_images/79.jpg', 0, 0, NULL, 'product', 110, 'products', 'Product image', '1', '75'),
(551, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/76.jpg', 'thumb_images/76.jpg', 0, 0, NULL, 'product', 111, 'products', 'Product image', '1', '76'),
(552, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/77.jpg', 'thumb_images/77.jpg', 0, 0, NULL, 'product', 111, 'products', 'Product image', '1', '76'),
(553, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/78.jpg', 'thumb_images/78.jpg', 0, 0, NULL, 'product', 111, 'products', 'Product image', '1', '76'),
(554, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/79.jpg', 'thumb_images/79.jpg', 0, 0, NULL, 'product', 111, 'products', 'Product image', '1', '76'),
(555, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/80.jpg', 'thumb_images/80.jpg', 0, 0, NULL, 'product', 111, 'products', 'Product image', '1', '76'),
(556, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/77.jpg', 'thumb_images/77.jpg', 0, 0, NULL, 'product', 112, 'products', 'Product image', '1', '77'),
(557, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/78.jpg', 'thumb_images/78.jpg', 0, 0, NULL, 'product', 112, 'products', 'Product image', '1', '77'),
(558, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/79.jpg', 'thumb_images/79.jpg', 0, 0, NULL, 'product', 112, 'products', 'Product image', '1', '77'),
(559, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/80.jpg', 'thumb_images/80.jpg', 0, 0, NULL, 'product', 112, 'products', 'Product image', '1', '77'),
(560, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/81.jpg', 'thumb_images/81.jpg', 0, 0, NULL, 'product', 112, 'products', 'Product image', '1', '77'),
(561, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/78.jpg', 'thumb_images/78.jpg', 0, 0, NULL, 'product', 113, 'products', 'Product image', '1', '78'),
(562, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/79.jpg', 'thumb_images/79.jpg', 0, 0, NULL, 'product', 113, 'products', 'Product image', '1', '78'),
(563, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/80.jpg', 'thumb_images/80.jpg', 0, 0, NULL, 'product', 113, 'products', 'Product image', '1', '78'),
(564, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/81.jpg', 'thumb_images/81.jpg', 0, 0, NULL, 'product', 113, 'products', 'Product image', '1', '78'),
(565, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/82.jpg', 'thumb_images/82.jpg', 0, 0, NULL, 'product', 113, 'products', 'Product image', '1', '78'),
(566, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/79.jpg', 'thumb_images/79.jpg', 0, 0, NULL, 'product', 114, 'products', 'Product image', '1', '79'),
(567, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/80.jpg', 'thumb_images/80.jpg', 0, 0, NULL, 'product', 114, 'products', 'Product image', '1', '79'),
(568, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/81.jpg', 'thumb_images/81.jpg', 0, 0, NULL, 'product', 114, 'products', 'Product image', '1', '79'),
(569, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/82.jpg', 'thumb_images/82.jpg', 0, 0, NULL, 'product', 114, 'products', 'Product image', '1', '79'),
(570, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/83.jpg', 'thumb_images/83.jpg', 0, 0, NULL, 'product', 114, 'products', 'Product image', '1', '79'),
(571, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/80.jpg', 'thumb_images/80.jpg', 0, 0, NULL, 'product', 115, 'products', 'Product image', '1', '80'),
(572, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/81.jpg', 'thumb_images/81.jpg', 0, 0, NULL, 'product', 115, 'products', 'Product image', '1', '80'),
(573, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/82.jpg', 'thumb_images/82.jpg', 0, 0, NULL, 'product', 115, 'products', 'Product image', '1', '80'),
(574, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/83.jpg', 'thumb_images/83.jpg', 0, 0, NULL, 'product', 115, 'products', 'Product image', '1', '80'),
(575, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/84.jpg', 'thumb_images/84.jpg', 0, 0, NULL, 'product', 115, 'products', 'Product image', '1', '80'),
(576, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/81.jpg', 'thumb_images/81.jpg', 0, 0, NULL, 'product', 116, 'products', 'Product image', '1', '81'),
(577, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/82.jpg', 'thumb_images/82.jpg', 0, 0, NULL, 'product', 116, 'products', 'Product image', '1', '81'),
(578, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/83.jpg', 'thumb_images/83.jpg', 0, 0, NULL, 'product', 116, 'products', 'Product image', '1', '81'),
(579, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/84.jpg', 'thumb_images/84.jpg', 0, 0, NULL, 'product', 116, 'products', 'Product image', '1', '81'),
(580, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/85.jpg', 'thumb_images/85.jpg', 0, 0, NULL, 'product', 116, 'products', 'Product image', '1', '81'),
(581, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/82.jpg', 'thumb_images/82.jpg', 0, 0, NULL, 'product', 117, 'products', 'Product image', '1', '82'),
(582, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/83.jpg', 'thumb_images/83.jpg', 0, 0, NULL, 'product', 117, 'products', 'Product image', '1', '82'),
(583, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/84.jpg', 'thumb_images/84.jpg', 0, 0, NULL, 'product', 117, 'products', 'Product image', '1', '82'),
(584, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/85.jpg', 'thumb_images/85.jpg', 0, 0, NULL, 'product', 117, 'products', 'Product image', '1', '82'),
(585, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/86.jpg', 'thumb_images/86.jpg', 0, 0, NULL, 'product', 117, 'products', 'Product image', '1', '82'),
(586, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/83.jpg', 'thumb_images/83.jpg', 0, 0, NULL, 'product', 118, 'products', 'Product image', '1', '83'),
(587, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/84.jpg', 'thumb_images/84.jpg', 0, 0, NULL, 'product', 118, 'products', 'Product image', '1', '83'),
(588, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/85.jpg', 'thumb_images/85.jpg', 0, 0, NULL, 'product', 118, 'products', 'Product image', '1', '83'),
(589, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/86.jpg', 'thumb_images/86.jpg', 0, 0, NULL, 'product', 118, 'products', 'Product image', '1', '83'),
(590, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/87.jpg', 'thumb_images/87.jpg', 0, 0, NULL, 'product', 118, 'products', 'Product image', '1', '83'),
(591, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/84.jpg', 'thumb_images/84.jpg', 0, 0, NULL, 'product', 119, 'products', 'Product image', '1', '84'),
(592, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/85.jpg', 'thumb_images/85.jpg', 0, 0, NULL, 'product', 119, 'products', 'Product image', '1', '84'),
(593, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/86.jpg', 'thumb_images/86.jpg', 0, 0, NULL, 'product', 119, 'products', 'Product image', '1', '84'),
(594, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/87.jpg', 'thumb_images/87.jpg', 0, 0, NULL, 'product', 119, 'products', 'Product image', '1', '84'),
(595, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/88.jpg', 'thumb_images/88.jpg', 0, 0, NULL, 'product', 119, 'products', 'Product image', '1', '84'),
(596, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/85.jpg', 'thumb_images/85.jpg', 0, 0, NULL, 'product', 120, 'products', 'Product image', '1', '85'),
(597, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/86.jpg', 'thumb_images/86.jpg', 0, 0, NULL, 'product', 120, 'products', 'Product image', '1', '85'),
(598, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/87.jpg', 'thumb_images/87.jpg', 0, 0, NULL, 'product', 120, 'products', 'Product image', '1', '85'),
(599, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/88.jpg', 'thumb_images/88.jpg', 0, 0, NULL, 'product', 120, 'products', 'Product image', '1', '85'),
(600, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/89.jpg', 'thumb_images/89.jpg', 0, 0, NULL, 'product', 120, 'products', 'Product image', '1', '85'),
(601, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/86.jpg', 'thumb_images/86.jpg', 0, 0, NULL, 'product', 121, 'products', 'Product image', '1', '86'),
(602, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/87.jpg', 'thumb_images/87.jpg', 0, 0, NULL, 'product', 121, 'products', 'Product image', '1', '86'),
(603, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/88.jpg', 'thumb_images/88.jpg', 0, 0, NULL, 'product', 121, 'products', 'Product image', '1', '86'),
(604, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/89.jpg', 'thumb_images/89.jpg', 0, 0, NULL, 'product', 121, 'products', 'Product image', '1', '86'),
(605, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/90.jpg', 'thumb_images/90.jpg', 0, 0, NULL, 'product', 121, 'products', 'Product image', '1', '86'),
(606, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/87.jpg', 'thumb_images/87.jpg', 0, 0, NULL, 'product', 122, 'products', 'Product image', '1', '87'),
(607, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/88.jpg', 'thumb_images/88.jpg', 0, 0, NULL, 'product', 122, 'products', 'Product image', '1', '87'),
(608, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/89.jpg', 'thumb_images/89.jpg', 0, 0, NULL, 'product', 122, 'products', 'Product image', '1', '87'),
(609, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/90.jpg', 'thumb_images/90.jpg', 0, 0, NULL, 'product', 122, 'products', 'Product image', '1', '87'),
(610, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/91.jpg', 'thumb_images/91.jpg', 0, 0, NULL, 'product', 122, 'products', 'Product image', '1', '87'),
(611, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/88.jpg', 'thumb_images/88.jpg', 0, 0, NULL, 'product', 123, 'products', 'Product image', '1', '88'),
(612, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/89.jpg', 'thumb_images/89.jpg', 0, 0, NULL, 'product', 123, 'products', 'Product image', '1', '88'),
(613, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/90.jpg', 'thumb_images/90.jpg', 0, 0, NULL, 'product', 123, 'products', 'Product image', '1', '88'),
(614, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/91.jpg', 'thumb_images/91.jpg', 0, 0, NULL, 'product', 123, 'products', 'Product image', '1', '88'),
(615, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/92.jpg', 'thumb_images/92.jpg', 0, 0, NULL, 'product', 123, 'products', 'Product image', '1', '88'),
(616, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/89.jpg', 'thumb_images/89.jpg', 0, 0, NULL, 'product', 124, 'products', 'Product image', '1', '89');
INSERT INTO `images` (`id`, `created_at`, `updated_at`, `administrator_id`, `src`, `thumbnail`, `parent_id`, `size`, `deleted_at`, `type`, `product_id`, `parent_endpoint`, `note`, `is_processed`, `parent_local_id`) VALUES
(617, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/90.jpg', 'thumb_images/90.jpg', 0, 0, NULL, 'product', 124, 'products', 'Product image', '1', '89'),
(618, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/91.jpg', 'thumb_images/91.jpg', 0, 0, NULL, 'product', 124, 'products', 'Product image', '1', '89'),
(619, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/92.jpg', 'thumb_images/92.jpg', 0, 0, NULL, 'product', 124, 'products', 'Product image', '1', '89'),
(620, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/93.jpg', 'thumb_images/93.jpg', 0, 0, NULL, 'product', 124, 'products', 'Product image', '1', '89'),
(621, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/90.jpg', 'thumb_images/90.jpg', 0, 0, NULL, 'product', 125, 'products', 'Product image', '1', '90'),
(622, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/91.jpg', 'thumb_images/91.jpg', 0, 0, NULL, 'product', 125, 'products', 'Product image', '1', '90'),
(623, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/92.jpg', 'thumb_images/92.jpg', 0, 0, NULL, 'product', 125, 'products', 'Product image', '1', '90'),
(624, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/93.jpg', 'thumb_images/93.jpg', 0, 0, NULL, 'product', 125, 'products', 'Product image', '1', '90'),
(625, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/94.jpg', 'thumb_images/94.jpg', 0, 0, NULL, 'product', 125, 'products', 'Product image', '1', '90'),
(626, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/91.jpg', 'thumb_images/91.jpg', 0, 0, NULL, 'product', 126, 'products', 'Product image', '1', '91'),
(627, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/92.jpg', 'thumb_images/92.jpg', 0, 0, NULL, 'product', 126, 'products', 'Product image', '1', '91'),
(628, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/93.jpg', 'thumb_images/93.jpg', 0, 0, NULL, 'product', 126, 'products', 'Product image', '1', '91'),
(629, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/94.jpg', 'thumb_images/94.jpg', 0, 0, NULL, 'product', 126, 'products', 'Product image', '1', '91'),
(630, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/95.jpg', 'thumb_images/95.jpg', 0, 0, NULL, 'product', 126, 'products', 'Product image', '1', '91'),
(631, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/92.jpg', 'thumb_images/92.jpg', 0, 0, NULL, 'product', 127, 'products', 'Product image', '1', '92'),
(632, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/93.jpg', 'thumb_images/93.jpg', 0, 0, NULL, 'product', 127, 'products', 'Product image', '1', '92'),
(633, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/94.jpg', 'thumb_images/94.jpg', 0, 0, NULL, 'product', 127, 'products', 'Product image', '1', '92'),
(634, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/95.jpg', 'thumb_images/95.jpg', 0, 0, NULL, 'product', 127, 'products', 'Product image', '1', '92'),
(635, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/96.jpg', 'thumb_images/96.jpg', 0, 0, NULL, 'product', 127, 'products', 'Product image', '1', '92'),
(636, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/93.jpg', 'thumb_images/93.jpg', 0, 0, NULL, 'product', 128, 'products', 'Product image', '1', '93'),
(637, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/94.jpg', 'thumb_images/94.jpg', 0, 0, NULL, 'product', 128, 'products', 'Product image', '1', '93'),
(638, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/95.jpg', 'thumb_images/95.jpg', 0, 0, NULL, 'product', 128, 'products', 'Product image', '1', '93'),
(639, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/96.jpg', 'thumb_images/96.jpg', 0, 0, NULL, 'product', 128, 'products', 'Product image', '1', '93'),
(640, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/97.jpg', 'thumb_images/97.jpg', 0, 0, NULL, 'product', 128, 'products', 'Product image', '1', '93'),
(641, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/94.jpg', 'thumb_images/94.jpg', 0, 0, NULL, 'product', 129, 'products', 'Product image', '1', '94'),
(642, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/95.jpg', 'thumb_images/95.jpg', 0, 0, NULL, 'product', 129, 'products', 'Product image', '1', '94'),
(643, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/96.jpg', 'thumb_images/96.jpg', 0, 0, NULL, 'product', 129, 'products', 'Product image', '1', '94'),
(644, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/97.jpg', 'thumb_images/97.jpg', 0, 0, NULL, 'product', 129, 'products', 'Product image', '1', '94'),
(645, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/98.jpg', 'thumb_images/98.jpg', 0, 0, NULL, 'product', 129, 'products', 'Product image', '1', '94'),
(646, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/95.jpg', 'thumb_images/95.jpg', 0, 0, NULL, 'product', 130, 'products', 'Product image', '1', '95'),
(647, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/96.jpg', 'thumb_images/96.jpg', 0, 0, NULL, 'product', 130, 'products', 'Product image', '1', '95'),
(648, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/97.jpg', 'thumb_images/97.jpg', 0, 0, NULL, 'product', 130, 'products', 'Product image', '1', '95'),
(649, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/98.jpg', 'thumb_images/98.jpg', 0, 0, NULL, 'product', 130, 'products', 'Product image', '1', '95'),
(650, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/99.jpg', 'thumb_images/99.jpg', 0, 0, NULL, 'product', 130, 'products', 'Product image', '1', '95'),
(651, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/96.jpg', 'thumb_images/96.jpg', 0, 0, NULL, 'product', 131, 'products', 'Product image', '1', '96'),
(652, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/97.jpg', 'thumb_images/97.jpg', 0, 0, NULL, 'product', 131, 'products', 'Product image', '1', '96'),
(653, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/98.jpg', 'thumb_images/98.jpg', 0, 0, NULL, 'product', 131, 'products', 'Product image', '1', '96'),
(654, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/99.jpg', 'thumb_images/99.jpg', 0, 0, NULL, 'product', 131, 'products', 'Product image', '1', '96'),
(655, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/100.jpg', 'thumb_images/100.jpg', 0, 0, NULL, 'product', 131, 'products', 'Product image', '1', '96'),
(656, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/97.jpg', 'thumb_images/97.jpg', 0, 0, NULL, 'product', 132, 'products', 'Product image', '1', '97'),
(657, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/98.jpg', 'thumb_images/98.jpg', 0, 0, NULL, 'product', 132, 'products', 'Product image', '1', '97'),
(658, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/99.jpg', 'thumb_images/99.jpg', 0, 0, NULL, 'product', 132, 'products', 'Product image', '1', '97'),
(659, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/100.jpg', 'thumb_images/100.jpg', 0, 0, NULL, 'product', 132, 'products', 'Product image', '1', '97'),
(660, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/101.jpg', 'thumb_images/101.jpg', 0, 0, NULL, 'product', 132, 'products', 'Product image', '1', '97'),
(661, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/98.jpg', 'thumb_images/98.jpg', 0, 0, NULL, 'product', 133, 'products', 'Product image', '1', '98'),
(662, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/99.jpg', 'thumb_images/99.jpg', 0, 0, NULL, 'product', 133, 'products', 'Product image', '1', '98'),
(663, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/100.jpg', 'thumb_images/100.jpg', 0, 0, NULL, 'product', 133, 'products', 'Product image', '1', '98'),
(664, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/101.jpg', 'thumb_images/101.jpg', 0, 0, NULL, 'product', 133, 'products', 'Product image', '1', '98'),
(665, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/102.jpg', 'thumb_images/102.jpg', 0, 0, NULL, 'product', 133, 'products', 'Product image', '1', '98'),
(666, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/99.jpg', 'thumb_images/99.jpg', 0, 0, NULL, 'product', 134, 'products', 'Product image', '1', '99'),
(667, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/100.jpg', 'thumb_images/100.jpg', 0, 0, NULL, 'product', 134, 'products', 'Product image', '1', '99'),
(668, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/101.jpg', 'thumb_images/101.jpg', 0, 0, NULL, 'product', 134, 'products', 'Product image', '1', '99'),
(669, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/102.jpg', 'thumb_images/102.jpg', 0, 0, NULL, 'product', 134, 'products', 'Product image', '1', '99'),
(670, '2025-02-22 20:20:26', '2025-02-22 20:20:26', 1, 'images/103.jpg', 'thumb_images/103.jpg', 0, 0, NULL, 'product', 134, 'products', 'Product image', '1', '99');

-- --------------------------------------------------------

--
-- Table structure for table `mail_subscription`
--

CREATE TABLE `mail_subscription` (
  `id` int(11) NOT NULL,
  `email` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_11_17_194240_create_courses_table', 1),
(7, '2021_11_17_202523_create_course_categories_table', 1),
(8, '2021_11_17_213921_create_course_chapters_table', 1),
(9, '2021_11_17_215028_create_course_topics_table', 1),
(10, '2021_11_18_223927_create_traffic_records_table', 1),
(11, '2021_11_18_225343_create_participants_table', 1),
(12, '2023_01_01_173551_create_post_categories_table', 2),
(13, '2023_01_01_190344_create_news_posts_table', 3),
(14, '2023_01_01_225808_create_eevnts_table', 4),
(15, '2023_01_01_234118_create_event_bookings_table', 5),
(16, '2023_01_01_235005_create_event_tickets_table', 5),
(17, '2023_01_02_013939_create_event_speakers_table', 6),
(18, '2023_01_02_123806_create_jobs_table', 7),
(19, '2023_02_24_195813_create_associations_table', 8),
(20, '2023_02_24_202642_create_groups_table', 9),
(21, '2023_02_24_211018_create_people_table', 10),
(22, '2023_02_24_212609_create_disabilities_table', 11),
(23, '2023_02_24_222515_create_institutions_table', 12),
(24, '2023_02_24_225942_create_counselling_centres_table', 13),
(25, '2023_02_26_001531_create_jobs_table', 14),
(26, '2023_02_26_005329_create_job_applications_table', 15),
(27, '2023_02_26_005851_create_products_table', 16),
(28, '2023_02_26_012005_create_product_orders_table', 17),
(29, '2023_04_13_103959_create_crop_categories_table', 18),
(30, '2023_04_13_105848_create_crop_protocols_table', 19),
(31, '2023_04_13_120242_create_gardens_table', 20),
(32, '2023_04_13_191025_create_garden_activities_table', 21),
(33, '2023_04_15_151249_create_candidates_table', 22),
(34, '2023_04_19_114339_create_invoices_table', 23),
(35, '2023_04_19_115400_create_invoice_items_table', 24),
(36, '2023_04_22_094032_create_quotations_table', 25),
(37, '2023_04_22_100121_create_quotation_items_table', 26),
(38, '2023_04_22_104503_create_deliveries_table', 27),
(39, '2023_04_22_105223_create_delivery_items_table', 28),
(40, '2023_08_06_090640_create_chat_heads_table', 29),
(41, '2023_08_06_091638_create_chat_messages_table', 29),
(42, '2024_01_18_114322_add_variations_to_products', 29),
(43, '2024_03_14_064543_create_delivery_addresses_table', 30),
(44, '2024_05_29_090400_add_processed_logic_to_images', 31),
(45, '2024_10_03_141036_change_price_types_products', 32),
(46, '2025_02_22_143152_add_price_types_products', 33);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_items`
--

CREATE TABLE `ordered_items` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order` int(11) DEFAULT NULL,
  `product` mediumtext COLLATE utf8mb4_unicode_ci,
  `qty` mediumtext COLLATE utf8mb4_unicode_ci,
  `amount` mediumtext COLLATE utf8mb4_unicode_ci,
  `color` mediumtext COLLATE utf8mb4_unicode_ci,
  `size` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordered_items`
--

INSERT INTO `ordered_items` (`id`, `created_at`, `updated_at`, `order`, `product`, `qty`, `amount`, `color`, `size`) VALUES
(34, '2023-05-02 17:48:49', '2023-05-02 17:48:49', 27, '168', '1', '200000', '17', '27'),
(35, '2023-05-02 17:48:49', '2023-05-02 17:48:49', 28, '168', '1', '200000', '17', '27'),
(36, '2023-05-02 17:48:49', '2023-05-02 17:48:49', 29, '168', '1', '200000', '17', '27'),
(37, '2023-05-02 17:48:49', '2023-05-02 17:48:49', 30, '168', '1', '200000', '17', '27'),
(38, '2023-05-02 17:48:49', '2023-05-02 17:48:49', 31, '168', '1', '200000', '17', '27'),
(39, '2023-05-02 17:48:49', '2023-05-02 17:48:49', 32, '168', '1', '200000', '17', '27'),
(40, '2023-05-02 17:48:49', '2023-05-02 17:48:49', 33, '168', '1', '200000', '17', '27'),
(41, '2023-05-02 17:48:49', '2023-05-02 17:48:49', 34, '168', '1', '200000', '17', '27'),
(42, '2023-05-02 17:48:49', '2023-05-02 17:48:49', 35, '169', '1', '500', '17', '27'),
(43, '2023-05-02 17:48:49', '2023-05-02 17:48:49', 36, '169', '1', '500', '17', '27'),
(44, '2023-05-02 17:48:49', '2023-05-02 17:48:49', 37, '169', '1', '500', '17', '27'),
(45, '2023-05-02 17:48:49', '2023-05-02 17:48:49', 38, '168', '1', '200000', '17', '27'),
(46, '2023-05-04 14:49:30', '2023-05-04 14:49:30', 39, '177', '3', '60', '', ''),
(47, '2023-05-04 14:49:30', '2023-05-04 14:49:30', 39, '172', '1', '89', '', ''),
(48, '2023-05-04 16:34:38', '2023-05-04 16:34:38', 40, '177', '3', '60', '', ''),
(49, '2023-05-04 16:34:38', '2023-05-04 16:34:38', 40, '172', '1', '89', '', ''),
(50, '2023-05-04 18:40:56', '2023-05-04 18:40:56', 43, '182', '1', '90', '', ''),
(51, '2023-05-04 18:40:56', '2023-05-04 18:40:56', 43, '181', '1', '90', '', ''),
(52, '2023-05-04 18:40:56', '2023-05-04 18:40:56', 43, '176', '1', '10', '', ''),
(53, '2023-05-04 18:40:56', '2023-05-04 18:40:56', 43, '175', '1', '10', '', ''),
(54, '2023-05-04 18:40:56', '2023-05-04 18:40:56', 43, '169', '1', '500', '', ''),
(55, '2023-05-05 03:29:42', '2023-05-05 03:29:42', 44, '168', '1', '200000', '', ''),
(56, '2023-05-05 03:32:06', '2023-05-05 03:32:06', 45, '182', '4', '90', '', ''),
(57, '2023-05-05 03:32:06', '2023-05-05 03:32:06', 45, '181', '4', '90', '', ''),
(58, '2023-05-05 03:32:06', '2023-05-05 03:32:06', 45, '179', '3', '60', '', ''),
(59, '2023-05-20 00:42:43', '2023-05-20 00:42:43', 46, '176', '1', '10', '', ''),
(60, '2023-05-23 05:46:24', '2023-05-23 05:46:24', 47, '180', '1', '90', '', ''),
(61, '2023-06-10 16:47:28', '2023-06-10 16:47:28', 48, '185', '3', '2000', '', ''),
(62, '2023-07-04 09:35:50', '2023-07-04 09:35:50', 49, '172', '4', '89', '', ''),
(63, '2023-07-04 09:37:49', '2023-07-04 09:37:49', 50, '170', '1', '20', '', ''),
(64, '2023-07-04 09:38:44', '2023-07-04 09:38:44', 51, '170', '1', '20', '', ''),
(66, '2023-07-04 09:54:53', '2023-07-04 09:54:53', 53, '179', '3', '60', '', ''),
(67, '2023-09-15 08:22:34', '2023-09-15 08:22:34', 54, '177', '3', '60', '', ''),
(68, '2023-09-15 08:22:34', '2023-09-15 08:22:34', 54, '172', '1', '89', '', ''),
(69, '2023-09-15 08:30:36', '2023-09-15 08:30:36', 55, '187', '1', '50', '', ''),
(70, '2023-09-15 08:30:36', '2023-09-15 08:30:36', 55, '178', '3', '59', '', ''),
(73, '2023-09-18 11:52:17', '2023-09-18 11:52:17', 57, '182', '2', '90', '', ''),
(74, '2023-11-29 09:24:50', '2023-11-29 09:24:50', 58, '902', '1', '1', '', ''),
(75, '2023-11-29 09:28:52', '2023-11-29 09:28:52', 59, '902', '1', '1', '', ''),
(76, '2023-11-29 09:28:54', '2023-11-29 09:28:54', 60, '902', '1', '1', '', ''),
(83, '2023-12-28 07:10:42', '2023-12-28 07:10:42', 65, '899', '1', '1', '', ''),
(84, '2024-05-04 02:52:32', '2024-05-04 02:52:32', 66, '901', '1', '50', '', ''),
(85, '2024-05-04 02:52:32', '2024-05-04 02:52:32', 66, '826', '4', '1', '', ''),
(86, '2024-05-04 02:55:12', '2024-05-04 02:55:12', 67, '901', '1', '50', '', ''),
(87, '2024-05-04 02:55:12', '2024-05-04 02:55:12', 67, '826', '4', '1', '', ''),
(88, '2024-05-04 02:56:13', '2024-05-04 02:56:13', 68, '901', '1', '50', '', ''),
(89, '2024-05-04 02:56:13', '2024-05-04 02:56:13', 68, '826', '4', '1', '', ''),
(90, '2024-05-04 02:57:40', '2024-05-04 02:57:40', 69, '901', '1', '50', '', ''),
(91, '2024-05-04 02:57:40', '2024-05-04 02:57:40', 69, '826', '4', '1', '', ''),
(92, '2024-05-04 03:13:54', '2024-05-04 03:13:54', 70, '894', '1', '1', '', ''),
(93, '2024-05-04 03:42:17', '2024-05-04 03:42:17', 71, '466', '1', '1', '', ''),
(94, '2024-08-27 05:48:22', '2024-08-27 05:48:22', 72, '904', '1', '110000', '', ''),
(95, '2024-08-27 05:48:22', '2024-08-27 05:48:22', 72, '886', '1', '1', '', ''),
(96, '2024-08-27 05:48:22', '2024-08-27 05:48:22', 72, '757', '2', '1', '', ''),
(97, '2024-08-27 05:48:22', '2024-08-27 05:48:22', 72, '260', '3', '1', '', ''),
(98, '2024-08-27 05:54:28', '2024-08-27 05:54:28', 73, '904', '1', '110000', '', ''),
(99, '2024-08-27 05:54:28', '2024-08-27 05:54:28', 73, '886', '1', '1', '', ''),
(100, '2024-08-27 05:54:28', '2024-08-27 05:54:28', 73, '757', '2', '1', '', ''),
(101, '2024-08-27 05:54:28', '2024-08-27 05:54:28', 73, '260', '3', '1', '', ''),
(102, '2024-08-27 05:55:58', '2024-08-27 05:55:58', 74, '904', '1', '110000', '', ''),
(103, '2024-08-27 05:55:58', '2024-08-27 05:55:58', 74, '886', '1', '1', '', ''),
(104, '2024-08-27 05:55:58', '2024-08-27 05:55:58', 74, '757', '2', '1', '', ''),
(105, '2024-08-27 05:55:58', '2024-08-27 05:55:58', 74, '260', '3', '1', '', ''),
(106, '2024-08-27 06:03:40', '2024-08-27 06:03:40', 75, '901', '1', '50', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) DEFAULT NULL,
  `order_state` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '0 is pending, 1 is submited, 2 pending_delivery, 3 is delivered, 4 is returned',
  `amount` mediumtext COLLATE utf8mb4_unicode_ci,
  `date_created` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_confirmation` mediumtext COLLATE utf8mb4_unicode_ci,
  `date_updated` mediumtext COLLATE utf8mb4_unicode_ci,
  `mail` mediumtext COLLATE utf8mb4_unicode_ci,
  `delivery_district` mediumtext COLLATE utf8mb4_unicode_ci,
  `temporary_id` int(11) DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `customer_name` mediumtext COLLATE utf8mb4_unicode_ci,
  `customer_phone_number_1` mediumtext COLLATE utf8mb4_unicode_ci,
  `customer_phone_number_2` mediumtext COLLATE utf8mb4_unicode_ci,
  `customer_address` mediumtext COLLATE utf8mb4_unicode_ci,
  `order_total` mediumtext COLLATE utf8mb4_unicode_ci,
  `order_details` mediumtext COLLATE utf8mb4_unicode_ci,
  `stripe_id` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_url` text COLLATE utf8mb4_unicode_ci,
  `stripe_paid` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user`, `order_state`, `amount`, `date_created`, `payment_confirmation`, `date_updated`, `mail`, `delivery_district`, `temporary_id`, `description`, `customer_name`, `customer_phone_number_1`, `customer_phone_number_2`, `customer_address`, `order_total`, `order_details`, `stripe_id`, `stripe_url`, `stripe_paid`) VALUES
(27, '2023-05-02 17:15:01', '2024-03-13 15:44:46', 59, '0', '206000', '2022-10-08 09:30:06', '1', '2022-10-08 15:30:06', '0', '9', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(28, '2023-05-02 17:15:01', '2023-05-02 17:15:01', 59, '0', '206000', '2022-10-08 09:37:43', '0', '2022-10-08 15:37:43', '0', '9', 0, 'Ne worder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(29, '2023-05-02 17:15:01', '2023-05-02 17:15:01', 59, '0', '206000', '2022-10-08 09:37:44', '0', '2022-10-08 15:37:44', '0', '9', 0, 'Ne worder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(30, '2023-05-02 17:15:01', '2023-05-02 17:15:01', 59, '0', '206000', '2022-10-08 09:39:25', '0', '2022-10-08 15:39:25', '0', '9', 0, 'kkk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(31, '2023-05-02 17:15:01', '2023-05-02 17:15:01', 59, '0', '206000', '2022-10-08 09:42:03', '0', '2022-10-08 15:42:03', '0', '9', 0, 'kkk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(32, '2023-05-02 17:15:01', '2023-05-02 17:15:01', 59, '0', '206000', '2022-10-08 09:45:04', '0', '2022-10-08 15:45:04', '0', '9', 0, 'Roooow', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(33, '2023-05-02 17:15:01', '2023-05-02 17:15:01', 62, '0', '212000', '2022-10-10 12:28:10', '0', '2022-10-10 18:28:10', '0', '26', 0, 'New order', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(34, '2023-05-02 17:15:01', '2023-05-02 17:15:01', 62, '0', '212000', '2022-10-11 08:00:41', '0', '2022-10-11 14:00:41', '0', '26', 0, 'More of this is needed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(35, '2023-05-02 17:15:01', '2023-05-02 17:15:01', 62, '0', '12500', '2022-10-11 09:02:42', '0', '2022-10-11 15:02:42', '0', '26', 0, 'New order', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(36, '2023-05-02 17:15:01', '2023-05-02 17:15:01', 62, '1', '500', '2022-10-11 10:04:53', '1', '2022-10-11 20:31:28', '0', '26', 0, 'ggg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(37, '2023-05-02 17:15:01', '2023-05-02 17:15:01', 62, '0', '500', '2022-10-13 12:23:06', '0', '2022-10-13 18:23:06', '0', '26', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(38, '2023-05-02 17:15:01', '2023-05-02 17:15:01', 63, '0', '200000', '2022-11-15 13:15:29', '0', '2022-11-15 19:15:29', '0', '57', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No'),
(39, '2023-05-04 14:49:30', '2023-05-04 14:49:30', 1, '0', '0', '2023-05-04 20:49:30', '', '2023-05-04 20:49:30', 'mubs0x@gmail.com', '', 0, '', 'Sumayya Swaib', '07783204665', '0706635288', '', '0', '{\"id\":1,\"username\":\"mubs0x@gmail.com\",\"name\":\"Sumayya Swaib\",\"avatar\":\"images\\/Angie.JPG\",\"enterprise_id\":\"\",\"first_name\":\"Sumayya\",\"last_name\":\"Swaib\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"Female\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"07783204665\",\"phone_number_2\":\"0706635288\",\"email\":\"mubs0x@gmail.com\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\"}', NULL, NULL, 'No'),
(40, '2023-05-04 16:34:38', '2023-05-04 16:34:38', 1, '0', '0', '2023-05-04 22:34:38', '', '2023-05-04 22:34:38', 'mubs0x@gmail.com', '', 0, '', 'Sumayya Swaib', '07783204665', '0706635288', '', '0', '{\"id\":1,\"username\":\"mubs0x@gmail.com\",\"name\":\"Sumayya Swaib\",\"avatar\":\"images\\/Angie.JPG\",\"enterprise_id\":\"\",\"first_name\":\"Sumayya\",\"last_name\":\"Swaib\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"Female\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"07783204665\",\"phone_number_2\":\"0706635288\",\"email\":\"mubs0x@gmail.com\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\"}', NULL, NULL, 'No'),
(41, '2023-05-04 18:37:18', '2023-05-04 18:37:18', 111, '0', '0', '2023-05-05 00:37:18', '', '2023-05-05 00:37:18', NULL, NULL, 0, '', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 'No'),
(42, '2023-05-04 18:37:51', '2023-05-04 18:37:51', 111, '0', '0', '2023-05-05 00:37:51', '', '2023-05-05 00:37:51', NULL, NULL, 0, '', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 'No'),
(43, '2023-05-04 18:40:56', '2023-05-04 18:40:56', 111, '0', '0', '2023-05-05 00:40:56', '', '2023-05-05 00:40:56', NULL, '', 0, '', 'Muhindo Muhindo', '', '', '', '0', '{\"id\":111,\"username\":\"+256783204661\",\"password\":\"$2y$10$ResPTv2jkWuVer1uJZXrOusuOZBxIL9\\/ynwbTNCXb6O1nGbv3gz6W\",\"name\":\"Muhindo Muhindo\",\"avatar\":\"https:\\/\\/app.hambren.com\\/https:\\/\\/app.hambren.com\\/https:\\/\\/app.hambren.com\\/assets\\/images\\/user.jpg\",\"remember_token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcC5oYW1icmVuLmNvbS9hcGkvdXNlcnMvcmVnaXN0ZXIiLCJpYXQiOjE2ODMyNDY1NjcsImV4cCI6MjYyOTMyNjU2NywibmJmIjoxNjgzMjQ2NTY3LCJqdGkiOiJnOWUxVldHc1lYV3BsRUhZIiwic3ViIjoiMTExIiwicHJ2IjoiM2Q2MDVhYjQ5MjgyNTU2NjFhN2FkYjU0YzU5MGFjYmJjMTljZmY3ZSJ9.PqlrFOKCHo7fYQllyfCWhQx5HmQKfyqixjn_XLvAX6A\",\"created_at\":\"2023-05-05 00:29:27\",\"updated_at\":\"2023-05-05 00:29:27\",\"enterprise_id\":\"\",\"first_name\":\"Muhindo\",\"last_name\":\"Muhindo\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"\",\"phone_number_2\":\"\",\"email\":\"\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\",\"emergency_person_phone\":\"\",\"national_id_number\":\"\",\"passport_number\":\"\",\"tin\":\"\",\"nssf_number\":\"\",\"bank_name\":\"\",\"bank_account_number\":\"\",\"primary_school_name\":\"\",\"primary_school_year_graduated\":\"\",\"seconday_school_name\":\"\",\"seconday_school_year_graduated\":\"\",\"high_school_name\":\"\",\"high_school_year_graduated\":\"\",\"degree_university_name\":\"\",\"degree_university_year_graduated\":\"\",\"masters_university_name\":\"\",\"masters_university_year_graduated\":\"\",\"phd_university_name\":\"\",\"phd_university_year_graduated\":\"\",\"user_type\":\"\",\"demo_id\":\"\",\"user_id\":\"\",\"user_batch_importer_id\":\"\",\"school_pay_account_id\":\"\",\"school_pay_payment_code\":\"\",\"given_name\":\"\",\"residential_type\":\"\",\"transportation\":\"\",\"swimming\":\"\",\"outstanding\":\"\",\"guardian_relation\":\"\",\"referral\":\"\",\"previous_school\":\"\",\"deleted_at\":\"\",\"marital_status\":\"\",\"verification\":\"\",\"current_class_id\":\"\",\"current_theology_class_id\":\"\",\"status\":\"\"}', NULL, NULL, 'No'),
(44, '2023-05-05 03:29:42', '2023-05-05 03:29:42', 1, '0', '0', '2023-05-05 09:29:42', '', '2023-05-05 09:29:42', 'mubs0x@gmail.com', '', 0, '', 'Sumayya Swaib', '', '', '', '0', '{\"id\":1,\"username\":\"mubs0x@gmail.com\",\"password\":\"$2y$10$7y2ePx9gYeN.eeT2h.\\/MEOJmtwgQbAohz4NZgh47hIMESbIOMXAku\",\"name\":\"Sumayya Swaib\",\"avatar\":\"images\\/Angie.JPG\",\"remember_token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcC5oYW1icmVuLmNvbS9hcGkvdXNlcnMvbG9naW4iLCJpYXQiOjE2ODIzNjA2NDUsImV4cCI6MjYyODQ0MDY0NSwibmJmIjoxNjgyMzYwNjQ1LCJqdGkiOiJzQlRsMXBZQjlOaWl2Qlo3Iiwic3ViIjoiMSIsInBydiI6IjNkNjA1YWI0OTI4MjU1NjYxYTdhZGI1NGM1OTBhY2JiYzE5Y2ZmN2UifQ.8qU773rA4uMuKOxuYDq9PQinl99LpJ1lC9zyboDs91Q\",\"created_at\":\"2020-07-30T21:56:55.000000Z\",\"updated_at\":\"2023-04-19T17:28:18.000000Z\",\"enterprise_id\":\"\",\"first_name\":\"Sumayya\",\"last_name\":\"Swaib\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"Female\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"\",\"phone_number_2\":\"\",\"email\":\"mubs0x@gmail.com\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\",\"emergency_person_phone\":\"\",\"national_id_number\":\"\",\"passport_number\":\"\",\"tin\":\"\",\"nssf_number\":\"\",\"bank_name\":\"\",\"bank_account_number\":\"\",\"primary_school_name\":\"\",\"primary_school_year_graduated\":\"\",\"seconday_school_name\":\"\",\"seconday_school_year_graduated\":\"\",\"high_school_name\":\"\",\"high_school_year_graduated\":\"\",\"degree_university_name\":\"\",\"degree_university_year_graduated\":\"\",\"masters_university_name\":\"\",\"masters_university_year_graduated\":\"\",\"phd_university_name\":\"\",\"phd_university_year_graduated\":\"\",\"user_type\":\"admin\",\"demo_id\":\"\",\"user_id\":\"\",\"user_batch_importer_id\":\"\",\"school_pay_account_id\":\"\",\"school_pay_payment_code\":\"\",\"given_name\":\"\",\"residential_type\":\"\",\"transportation\":\"\",\"swimming\":\"\",\"outstanding\":\"\",\"guardian_relation\":\"\",\"referral\":\"\",\"previous_school\":\"\",\"deleted_at\":\"\",\"marital_status\":\"\",\"verification\":\"\",\"current_class_id\":\"\",\"current_theology_class_id\":\"\",\"status\":\"\"}', NULL, NULL, 'No'),
(45, '2023-05-05 03:32:06', '2023-05-05 03:32:06', 1, '0', '0', '2023-05-05 09:32:06', '', '2023-05-05 09:32:06', 'mubs0x@gmail.com', '', 0, '', 'Sumayya Swaib', '', '', '', '0', '{\"id\":1,\"username\":\"mubs0x@gmail.com\",\"password\":\"$2y$10$7y2ePx9gYeN.eeT2h.\\/MEOJmtwgQbAohz4NZgh47hIMESbIOMXAku\",\"name\":\"Sumayya Swaib\",\"avatar\":\"images\\/Angie.JPG\",\"remember_token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcC5oYW1icmVuLmNvbS9hcGkvdXNlcnMvbG9naW4iLCJpYXQiOjE2ODIzNjA2NDUsImV4cCI6MjYyODQ0MDY0NSwibmJmIjoxNjgyMzYwNjQ1LCJqdGkiOiJzQlRsMXBZQjlOaWl2Qlo3Iiwic3ViIjoiMSIsInBydiI6IjNkNjA1YWI0OTI4MjU1NjYxYTdhZGI1NGM1OTBhY2JiYzE5Y2ZmN2UifQ.8qU773rA4uMuKOxuYDq9PQinl99LpJ1lC9zyboDs91Q\",\"created_at\":\"2020-07-30T21:56:55.000000Z\",\"updated_at\":\"2023-04-19T17:28:18.000000Z\",\"enterprise_id\":\"\",\"first_name\":\"Sumayya\",\"last_name\":\"Swaib\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"Female\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"\",\"phone_number_2\":\"\",\"email\":\"mubs0x@gmail.com\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\",\"emergency_person_phone\":\"\",\"national_id_number\":\"\",\"passport_number\":\"\",\"tin\":\"\",\"nssf_number\":\"\",\"bank_name\":\"\",\"bank_account_number\":\"\",\"primary_school_name\":\"\",\"primary_school_year_graduated\":\"\",\"seconday_school_name\":\"\",\"seconday_school_year_graduated\":\"\",\"high_school_name\":\"\",\"high_school_year_graduated\":\"\",\"degree_university_name\":\"\",\"degree_university_year_graduated\":\"\",\"masters_university_name\":\"\",\"masters_university_year_graduated\":\"\",\"phd_university_name\":\"\",\"phd_university_year_graduated\":\"\",\"user_type\":\"admin\",\"demo_id\":\"\",\"user_id\":\"\",\"user_batch_importer_id\":\"\",\"school_pay_account_id\":\"\",\"school_pay_payment_code\":\"\",\"given_name\":\"\",\"residential_type\":\"\",\"transportation\":\"\",\"swimming\":\"\",\"outstanding\":\"\",\"guardian_relation\":\"\",\"referral\":\"\",\"previous_school\":\"\",\"deleted_at\":\"\",\"marital_status\":\"\",\"verification\":\"\",\"current_class_id\":\"\",\"current_theology_class_id\":\"\",\"status\":\"\"}', NULL, NULL, 'No'),
(46, '2023-05-20 00:42:43', '2023-05-20 00:42:43', 112, '0', '0', '2023-05-20 06:42:43', '', '2023-05-20 06:42:43', NULL, '', 0, '', 'Sumayah ', '', '', '', '0', '{\"id\":112,\"username\":\"+256755906818\",\"password\":\"$2y$10$TGyVYOYnxR810d3EyiQCpul8Xmp41JFazjwJcEvvcRgtH6pzTwLXm\",\"name\":\"Sumayah\",\"avatar\":\"https:\\/\\/app.hambren.com\\/https:\\/\\/app.hambren.com\\/https:\\/\\/app.hambren.com\\/assets\\/images\\/user.jpg\",\"remember_token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcC5oYW1icmVuLmNvbS9hcGkvdXNlcnMvcmVnaXN0ZXIiLCJpYXQiOjE2ODMyNzkxNzcsImV4cCI6MjYyOTM1OTE3NywibmJmIjoxNjgzMjc5MTc3LCJqdGkiOiI5NHdaVFFFQ2hLdkFlMWxGIiwic3ViIjoiMTEyIiwicHJ2IjoiM2Q2MDVhYjQ5MjgyNTU2NjFhN2FkYjU0YzU5MGFjYmJjMTljZmY3ZSJ9.IW_A43z1ihRUqIidghdHuiH1KiCiJwpf4Hv2zZve5mw\",\"created_at\":\"2023-05-05 09:32:57\",\"updated_at\":\"2023-05-05 09:32:57\",\"enterprise_id\":\"\",\"first_name\":\"Sumayah\",\"last_name\":\"\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"\",\"phone_number_2\":\"\",\"email\":\"\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\",\"emergency_person_phone\":\"\",\"national_id_number\":\"\",\"passport_number\":\"\",\"tin\":\"\",\"nssf_number\":\"\",\"bank_name\":\"\",\"bank_account_number\":\"\",\"primary_school_name\":\"\",\"primary_school_year_graduated\":\"\",\"seconday_school_name\":\"\",\"seconday_school_year_graduated\":\"\",\"high_school_name\":\"\",\"high_school_year_graduated\":\"\",\"degree_university_name\":\"\",\"degree_university_year_graduated\":\"\",\"masters_university_name\":\"\",\"masters_university_year_graduated\":\"\",\"phd_university_name\":\"\",\"phd_university_year_graduated\":\"\",\"user_type\":\"\",\"demo_id\":\"\",\"user_id\":\"\",\"user_batch_importer_id\":\"\",\"school_pay_account_id\":\"\",\"school_pay_payment_code\":\"\",\"given_name\":\"\",\"residential_type\":\"\",\"transportation\":\"\",\"swimming\":\"\",\"outstanding\":\"\",\"guardian_relation\":\"\",\"referral\":\"\",\"previous_school\":\"\",\"deleted_at\":\"\",\"marital_status\":\"\",\"verification\":\"\",\"current_class_id\":\"\",\"current_theology_class_id\":\"\",\"status\":\"\"}', NULL, NULL, 'No'),
(47, '2023-05-23 05:46:24', '2023-05-23 05:46:24', 113, '0', '0', '2023-05-23 11:46:24', '', '2023-05-23 11:46:24', NULL, '', 0, '', 'Tudeeka Tudeeka', '', '', '', '0', '{\"id\":113,\"username\":\"+256705832190\",\"password\":\"$2y$10$9689CO2MiZGt11v0KzA8WuBnKdV.qHqCnJq5fmZPN3NmDx2vHJwnm\",\"name\":\"Tudeeka Tudeeka\",\"avatar\":\"https:\\/\\/app.hambren.com\\/https:\\/\\/app.hambren.com\\/https:\\/\\/app.hambren.com\\/assets\\/images\\/user.jpg\",\"remember_token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcC5oYW1icmVuLmNvbS9hcGkvdXNlcnMvcmVnaXN0ZXIiLCJpYXQiOjE2ODQ4NDIzMjIsImV4cCI6MjYzMDkyMjMyMiwibmJmIjoxNjg0ODQyMzIyLCJqdGkiOiJuOGp1Y3lpa3I2c2ZYelU5Iiwic3ViIjoiMTEzIiwicHJ2IjoiM2Q2MDVhYjQ5MjgyNTU2NjFhN2FkYjU0YzU5MGFjYmJjMTljZmY3ZSJ9.FXVil1fuQWSfiZlNn1JwDn4jsxCjkf9j0WuRw_Z85P8\",\"created_at\":\"2023-05-23 11:45:22\",\"updated_at\":\"2023-05-23 11:45:22\",\"enterprise_id\":\"\",\"first_name\":\"Tudeeka\",\"last_name\":\"Tudeeka\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"\",\"phone_number_2\":\"\",\"email\":\"\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\",\"emergency_person_phone\":\"\",\"national_id_number\":\"\",\"passport_number\":\"\",\"tin\":\"\",\"nssf_number\":\"\",\"bank_name\":\"\",\"bank_account_number\":\"\",\"primary_school_name\":\"\",\"primary_school_year_graduated\":\"\",\"seconday_school_name\":\"\",\"seconday_school_year_graduated\":\"\",\"high_school_name\":\"\",\"high_school_year_graduated\":\"\",\"degree_university_name\":\"\",\"degree_university_year_graduated\":\"\",\"masters_university_name\":\"\",\"masters_university_year_graduated\":\"\",\"phd_university_name\":\"\",\"phd_university_year_graduated\":\"\",\"user_type\":\"\",\"demo_id\":\"\",\"user_id\":\"\",\"user_batch_importer_id\":\"\",\"school_pay_account_id\":\"\",\"school_pay_payment_code\":\"\",\"given_name\":\"\",\"residential_type\":\"\",\"transportation\":\"\",\"swimming\":\"\",\"outstanding\":\"\",\"guardian_relation\":\"\",\"referral\":\"\",\"previous_school\":\"\",\"deleted_at\":\"\",\"marital_status\":\"\",\"verification\":\"\",\"current_class_id\":\"\",\"current_theology_class_id\":\"\",\"status\":\"\"}', NULL, NULL, 'No'),
(48, '2023-06-10 16:47:28', '2023-06-10 16:47:28', 1, '0', '0', '2023-06-10 22:47:28', '', '2023-06-10 22:47:28', 'mubs0x@gmail.com', '', 0, '', 'Sumayya Swaib', '', '', '', '0', '{\"id\":1,\"username\":\"mubs0x@gmail.com\",\"password\":\"$2y$10$7y2ePx9gYeN.eeT2h.\\/MEOJmtwgQbAohz4NZgh47hIMESbIOMXAku\",\"name\":\"Sumayya Swaib\",\"avatar\":\"images\\/Angie.JPG\",\"remember_token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcC5oYW1icmVuLmNvbS9hcGkvdXNlcnMvbG9naW4iLCJpYXQiOjE2ODU3MTI3NDIsImV4cCI6MjYzMTc5Mjc0MiwibmJmIjoxNjg1NzEyNzQyLCJqdGkiOiJlVGxZSk5mNGd2TkRxTE1qIiwic3ViIjoiMSIsInBydiI6IjNkNjA1YWI0OTI4MjU1NjYxYTdhZGI1NGM1OTBhY2JiYzE5Y2ZmN2UifQ.nHTdJKUZAWMRXWVrpWoZv7kbJNO4FBVvzPYOVZiaYBk\",\"created_at\":\"2020-07-30T21:56:55.000000Z\",\"updated_at\":\"2023-04-19T17:28:18.000000Z\",\"enterprise_id\":\"\",\"first_name\":\"Sumayya\",\"last_name\":\"Swaib\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"Female\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"\",\"phone_number_2\":\"\",\"email\":\"mubs0x@gmail.com\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\",\"emergency_person_phone\":\"\",\"national_id_number\":\"\",\"passport_number\":\"\",\"tin\":\"\",\"nssf_number\":\"\",\"bank_name\":\"\",\"bank_account_number\":\"\",\"primary_school_name\":\"\",\"primary_school_year_graduated\":\"\",\"seconday_school_name\":\"\",\"seconday_school_year_graduated\":\"\",\"high_school_name\":\"\",\"high_school_year_graduated\":\"\",\"degree_university_name\":\"\",\"degree_university_year_graduated\":\"\",\"masters_university_name\":\"\",\"masters_university_year_graduated\":\"\",\"phd_university_name\":\"\",\"phd_university_year_graduated\":\"\",\"user_type\":\"admin\",\"demo_id\":\"\",\"user_id\":\"\",\"user_batch_importer_id\":\"\",\"school_pay_account_id\":\"\",\"school_pay_payment_code\":\"\",\"given_name\":\"\",\"residential_type\":\"\",\"transportation\":\"\",\"swimming\":\"\",\"outstanding\":\"\",\"guardian_relation\":\"\",\"referral\":\"\",\"previous_school\":\"\",\"deleted_at\":\"\",\"marital_status\":\"\",\"verification\":\"\",\"current_class_id\":\"\",\"current_theology_class_id\":\"\",\"status\":\"\"}', NULL, NULL, 'No'),
(49, '2023-07-04 09:35:50', '2023-07-04 09:35:50', 1, '0', '0', '2023-07-04 15:35:50', '', '2023-07-04 15:35:50', 'mubs0x@gmail.com', '', 0, '', 'Sumayya Swaib', '', '', '', '0', '{\"id\":1,\"username\":\"mubs0x@gmail.com\",\"password\":\"$2y$10$7y2ePx9gYeN.eeT2h.\\/MEOJmtwgQbAohz4NZgh47hIMESbIOMXAku\",\"name\":\"Sumayya Swaib\",\"avatar\":\"images\\/Angie.JPG\",\"remember_token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcC5oYW1icmVuLmNvbS9hcGkvdXNlcnMvbG9naW4iLCJpYXQiOjE2ODc0NTczOTcsImV4cCI6MjYzMzUzNzM5NywibmJmIjoxNjg3NDU3Mzk3LCJqdGkiOiJTc3lObVh1SXN4RElqbmNRIiwic3ViIjoiMSIsInBydiI6IjNkNjA1YWI0OTI4MjU1NjYxYTdhZGI1NGM1OTBhY2JiYzE5Y2ZmN2UifQ.In7x9pptCfFvTcQ0hIWnvPUJV5Nfd17H9mt0GnEREUs\",\"created_at\":\"2020-07-30T21:56:55.000000Z\",\"updated_at\":\"2023-04-19T17:28:18.000000Z\",\"enterprise_id\":\"\",\"first_name\":\"Sumayya\",\"last_name\":\"Swaib\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"Female\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"\",\"phone_number_2\":\"\",\"email\":\"mubs0x@gmail.com\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\",\"emergency_person_phone\":\"\",\"national_id_number\":\"\",\"passport_number\":\"\",\"tin\":\"\",\"nssf_number\":\"\",\"bank_name\":\"\",\"bank_account_number\":\"\",\"primary_school_name\":\"\",\"primary_school_year_graduated\":\"\",\"seconday_school_name\":\"\",\"seconday_school_year_graduated\":\"\",\"high_school_name\":\"\",\"high_school_year_graduated\":\"\",\"degree_university_name\":\"\",\"degree_university_year_graduated\":\"\",\"masters_university_name\":\"\",\"masters_university_year_graduated\":\"\",\"phd_university_name\":\"\",\"phd_university_year_graduated\":\"\",\"user_type\":\"admin\",\"demo_id\":\"\",\"user_id\":\"\",\"user_batch_importer_id\":\"\",\"school_pay_account_id\":\"\",\"school_pay_payment_code\":\"\",\"given_name\":\"\",\"residential_type\":\"\",\"transportation\":\"\",\"swimming\":\"\",\"outstanding\":\"\",\"guardian_relation\":\"\",\"referral\":\"\",\"previous_school\":\"\",\"deleted_at\":\"\",\"marital_status\":\"\",\"verification\":\"\",\"current_class_id\":\"\",\"current_theology_class_id\":\"\",\"status\":\"\"}', NULL, NULL, 'No'),
(50, '2023-07-04 09:37:49', '2023-07-04 09:37:49', 1, '0', '0', '2023-07-04 15:37:49', '', '2023-07-04 15:37:49', 'mubs0x@gmail.com', '', 0, '', 'Sumayya Swaib', '', '', '', '0', '{\"id\":1,\"username\":\"mubs0x@gmail.com\",\"password\":\"$2y$10$7y2ePx9gYeN.eeT2h.\\/MEOJmtwgQbAohz4NZgh47hIMESbIOMXAku\",\"name\":\"Sumayya Swaib\",\"avatar\":\"images\\/Angie.JPG\",\"remember_token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcC5oYW1icmVuLmNvbS9hcGkvdXNlcnMvbG9naW4iLCJpYXQiOjE2ODc0NTczOTcsImV4cCI6MjYzMzUzNzM5NywibmJmIjoxNjg3NDU3Mzk3LCJqdGkiOiJTc3lObVh1SXN4RElqbmNRIiwic3ViIjoiMSIsInBydiI6IjNkNjA1YWI0OTI4MjU1NjYxYTdhZGI1NGM1OTBhY2JiYzE5Y2ZmN2UifQ.In7x9pptCfFvTcQ0hIWnvPUJV5Nfd17H9mt0GnEREUs\",\"created_at\":\"2020-07-30T21:56:55.000000Z\",\"updated_at\":\"2023-04-19T17:28:18.000000Z\",\"enterprise_id\":\"\",\"first_name\":\"Sumayya\",\"last_name\":\"Swaib\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"Female\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"\",\"phone_number_2\":\"\",\"email\":\"mubs0x@gmail.com\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\",\"emergency_person_phone\":\"\",\"national_id_number\":\"\",\"passport_number\":\"\",\"tin\":\"\",\"nssf_number\":\"\",\"bank_name\":\"\",\"bank_account_number\":\"\",\"primary_school_name\":\"\",\"primary_school_year_graduated\":\"\",\"seconday_school_name\":\"\",\"seconday_school_year_graduated\":\"\",\"high_school_name\":\"\",\"high_school_year_graduated\":\"\",\"degree_university_name\":\"\",\"degree_university_year_graduated\":\"\",\"masters_university_name\":\"\",\"masters_university_year_graduated\":\"\",\"phd_university_name\":\"\",\"phd_university_year_graduated\":\"\",\"user_type\":\"admin\",\"demo_id\":\"\",\"user_id\":\"\",\"user_batch_importer_id\":\"\",\"school_pay_account_id\":\"\",\"school_pay_payment_code\":\"\",\"given_name\":\"\",\"residential_type\":\"\",\"transportation\":\"\",\"swimming\":\"\",\"outstanding\":\"\",\"guardian_relation\":\"\",\"referral\":\"\",\"previous_school\":\"\",\"deleted_at\":\"\",\"marital_status\":\"\",\"verification\":\"\",\"current_class_id\":\"\",\"current_theology_class_id\":\"\",\"status\":\"\"}', NULL, NULL, 'No'),
(51, '2023-07-04 09:38:44', '2023-07-04 09:38:44', 1, '0', '0', '2023-07-04 15:38:44', '', '2023-07-04 15:38:44', 'mubs0x@gmail.com', '', 0, '', 'Sumayya Swaib', '', '', '', '0', '{\"id\":1,\"username\":\"mubs0x@gmail.com\",\"password\":\"$2y$10$7y2ePx9gYeN.eeT2h.\\/MEOJmtwgQbAohz4NZgh47hIMESbIOMXAku\",\"name\":\"Sumayya Swaib\",\"avatar\":\"images\\/Angie.JPG\",\"remember_token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcC5oYW1icmVuLmNvbS9hcGkvdXNlcnMvbG9naW4iLCJpYXQiOjE2ODc0NTczOTcsImV4cCI6MjYzMzUzNzM5NywibmJmIjoxNjg3NDU3Mzk3LCJqdGkiOiJTc3lObVh1SXN4RElqbmNRIiwic3ViIjoiMSIsInBydiI6IjNkNjA1YWI0OTI4MjU1NjYxYTdhZGI1NGM1OTBhY2JiYzE5Y2ZmN2UifQ.In7x9pptCfFvTcQ0hIWnvPUJV5Nfd17H9mt0GnEREUs\",\"created_at\":\"2020-07-30T21:56:55.000000Z\",\"updated_at\":\"2023-04-19T17:28:18.000000Z\",\"enterprise_id\":\"\",\"first_name\":\"Sumayya\",\"last_name\":\"Swaib\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"Female\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"\",\"phone_number_2\":\"\",\"email\":\"mubs0x@gmail.com\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\",\"emergency_person_phone\":\"\",\"national_id_number\":\"\",\"passport_number\":\"\",\"tin\":\"\",\"nssf_number\":\"\",\"bank_name\":\"\",\"bank_account_number\":\"\",\"primary_school_name\":\"\",\"primary_school_year_graduated\":\"\",\"seconday_school_name\":\"\",\"seconday_school_year_graduated\":\"\",\"high_school_name\":\"\",\"high_school_year_graduated\":\"\",\"degree_university_name\":\"\",\"degree_university_year_graduated\":\"\",\"masters_university_name\":\"\",\"masters_university_year_graduated\":\"\",\"phd_university_name\":\"\",\"phd_university_year_graduated\":\"\",\"user_type\":\"admin\",\"demo_id\":\"\",\"user_id\":\"\",\"user_batch_importer_id\":\"\",\"school_pay_account_id\":\"\",\"school_pay_payment_code\":\"\",\"given_name\":\"\",\"residential_type\":\"\",\"transportation\":\"\",\"swimming\":\"\",\"outstanding\":\"\",\"guardian_relation\":\"\",\"referral\":\"\",\"previous_school\":\"\",\"deleted_at\":\"\",\"marital_status\":\"\",\"verification\":\"\",\"current_class_id\":\"\",\"current_theology_class_id\":\"\",\"status\":\"\"}', NULL, NULL, 'No'),
(53, '2023-07-04 09:54:53', '2023-07-04 09:54:53', 1, '0', '0', '2023-07-04 15:54:53', '', '2023-07-04 15:54:53', 'mubs0x@gmail.com', '', 0, '', 'Sumayya Swaib', '', '', '', '0', '{\"id\":1,\"username\":\"mubs0x@gmail.com\",\"password\":\"$2y$10$7y2ePx9gYeN.eeT2h.\\/MEOJmtwgQbAohz4NZgh47hIMESbIOMXAku\",\"name\":\"Sumayya Swaib\",\"avatar\":\"images\\/Angie.JPG\",\"remember_token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcC5oYW1icmVuLmNvbS9hcGkvdXNlcnMvbG9naW4iLCJpYXQiOjE2ODc0NTczOTcsImV4cCI6MjYzMzUzNzM5NywibmJmIjoxNjg3NDU3Mzk3LCJqdGkiOiJTc3lObVh1SXN4RElqbmNRIiwic3ViIjoiMSIsInBydiI6IjNkNjA1YWI0OTI4MjU1NjYxYTdhZGI1NGM1OTBhY2JiYzE5Y2ZmN2UifQ.In7x9pptCfFvTcQ0hIWnvPUJV5Nfd17H9mt0GnEREUs\",\"created_at\":\"2020-07-30T21:56:55.000000Z\",\"updated_at\":\"2023-04-19T17:28:18.000000Z\",\"enterprise_id\":\"\",\"first_name\":\"Sumayya\",\"last_name\":\"Swaib\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"Female\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"\",\"phone_number_2\":\"\",\"email\":\"mubs0x@gmail.com\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\",\"emergency_person_phone\":\"\",\"national_id_number\":\"\",\"passport_number\":\"\",\"tin\":\"\",\"nssf_number\":\"\",\"bank_name\":\"\",\"bank_account_number\":\"\",\"primary_school_name\":\"\",\"primary_school_year_graduated\":\"\",\"seconday_school_name\":\"\",\"seconday_school_year_graduated\":\"\",\"high_school_name\":\"\",\"high_school_year_graduated\":\"\",\"degree_university_name\":\"\",\"degree_university_year_graduated\":\"\",\"masters_university_name\":\"\",\"masters_university_year_graduated\":\"\",\"phd_university_name\":\"\",\"phd_university_year_graduated\":\"\",\"user_type\":\"admin\",\"demo_id\":\"\",\"user_id\":\"\",\"user_batch_importer_id\":\"\",\"school_pay_account_id\":\"\",\"school_pay_payment_code\":\"\",\"given_name\":\"\",\"residential_type\":\"\",\"transportation\":\"\",\"swimming\":\"\",\"outstanding\":\"\",\"guardian_relation\":\"\",\"referral\":\"\",\"previous_school\":\"\",\"deleted_at\":\"\",\"marital_status\":\"\",\"verification\":\"\",\"current_class_id\":\"\",\"current_theology_class_id\":\"\",\"status\":\"\"}', NULL, NULL, 'No'),
(54, '2023-09-15 08:22:34', '2023-09-15 08:22:34', 2, '0', '0', '2023-09-15 14:22:34', '', '2023-09-15 14:22:34', 'walusansa@gmail.com', '', 0, '', 'Sumayya Swaib', '07783204665', '0706635288', '', '0', '{\"id\":1,\"username\":\"mubs0x@gmail.com\",\"name\":\"Sumayya Swaib\",\"avatar\":\"images\\/Angie.JPG\",\"enterprise_id\":\"\",\"first_name\":\"Sumayya\",\"last_name\":\"Swaib\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"Female\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"07783204665\",\"phone_number_2\":\"0706635288\",\"email\":\"mubs0x@gmail.com\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\"}', NULL, NULL, 'No'),
(55, '2023-09-15 08:30:36', '2023-09-15 08:30:36', 1, '0', '0', '2023-09-15 14:30:36', '', '2023-09-15 14:30:36', 'mubs0x@gmail.com', '', 0, '', 'Sumayya Swaib', '', '', '', '0', '{\"id\":1,\"username\":\"mubs0x@gmail.com\",\"password\":\"$2y$10$7y2ePx9gYeN.eeT2h.\\/MEOJmtwgQbAohz4NZgh47hIMESbIOMXAku\",\"name\":\"Sumayya Swaib\",\"avatar\":\"images\\/Angie.JPG\",\"remember_token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcC5oYW1icmVuLmNvbS9hcGkvdXNlcnMvbG9naW4iLCJpYXQiOjE2OTQ3Nzg1MzgsImV4cCI6MjY0MDg1ODUzOCwibmJmIjoxNjk0Nzc4NTM4LCJqdGkiOiIzTVFjNVh6MHRxQzVzQmZKIiwic3ViIjoiMSIsInBydiI6IjNkNjA1YWI0OTI4MjU1NjYxYTdhZGI1NGM1OTBhY2JiYzE5Y2ZmN2UifQ.4jueMqCmT-DPOEgGpAu7VtayxWQJP5jaB21KbLk4zUg\",\"created_at\":\"2020-07-30T21:56:55.000000Z\",\"updated_at\":\"2023-04-19T17:28:18.000000Z\",\"enterprise_id\":\"\",\"first_name\":\"Sumayya\",\"last_name\":\"Swaib\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"Female\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"\",\"phone_number_2\":\"\",\"email\":\"mubs0x@gmail.com\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\",\"emergency_person_phone\":\"\",\"national_id_number\":\"\",\"passport_number\":\"\",\"tin\":\"\",\"nssf_number\":\"\",\"bank_name\":\"\",\"bank_account_number\":\"\",\"primary_school_name\":\"\",\"primary_school_year_graduated\":\"\",\"seconday_school_name\":\"\",\"seconday_school_year_graduated\":\"\",\"high_school_name\":\"\",\"high_school_year_graduated\":\"\",\"degree_university_name\":\"\",\"degree_university_year_graduated\":\"\",\"masters_university_name\":\"\",\"masters_university_year_graduated\":\"\",\"phd_university_name\":\"\",\"phd_university_year_graduated\":\"\",\"user_type\":\"admin\",\"demo_id\":\"\",\"user_id\":\"\",\"user_batch_importer_id\":\"\",\"school_pay_account_id\":\"\",\"school_pay_payment_code\":\"\",\"given_name\":\"\",\"residential_type\":\"\",\"transportation\":\"\",\"swimming\":\"\",\"outstanding\":\"\",\"guardian_relation\":\"\",\"referral\":\"\",\"previous_school\":\"\",\"deleted_at\":\"\",\"marital_status\":\"\",\"verification\":\"\",\"current_class_id\":\"\",\"current_theology_class_id\":\"\",\"status\":\"\"}', NULL, NULL, 'No'),
(57, '2023-09-18 11:52:17', '2023-09-18 11:52:17', 1, '0', '0', '2023-09-18 17:52:17', '', '2023-09-18 17:52:17', 'mubs0x@gmail.com', '', 0, '', 'Sumayya Swaib', '', '', '', '0', '{\"id\":1,\"username\":\"mubs0x@gmail.com\",\"password\":\"$2y$10$7y2ePx9gYeN.eeT2h.\\/MEOJmtwgQbAohz4NZgh47hIMESbIOMXAku\",\"name\":\"Sumayya Swaib\",\"avatar\":\"images\\/Angie.JPG\",\"remember_token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcC5oYW1icmVuLmNvbS9hcGkvdXNlcnMvbG9naW4iLCJpYXQiOjE2OTUwNDk5MDgsImV4cCI6MjY0MTEyOTkwOCwibmJmIjoxNjk1MDQ5OTA4LCJqdGkiOiIzZGZpOVI2TDFFemExTzZwIiwic3ViIjoiMSIsInBydiI6IjNkNjA1YWI0OTI4MjU1NjYxYTdhZGI1NGM1OTBhY2JiYzE5Y2ZmN2UifQ.ryVUvuo2UNrL0Cf1S_FCeori6gkhtBUeIZSJ3ZniwM4\",\"created_at\":\"2020-07-30T21:56:55.000000Z\",\"updated_at\":\"2023-04-19T17:28:18.000000Z\",\"enterprise_id\":\"\",\"first_name\":\"Sumayya\",\"last_name\":\"Swaib\",\"date_of_birth\":\"\",\"place_of_birth\":\"\",\"sex\":\"Female\",\"home_address\":\"\",\"current_address\":\"\",\"phone_number_1\":\"\",\"phone_number_2\":\"\",\"email\":\"mubs0x@gmail.com\",\"nationality\":\"\",\"religion\":\"\",\"spouse_name\":\"\",\"spouse_phone\":\"\",\"father_name\":\"\",\"father_phone\":\"\",\"mother_name\":\"\",\"mother_phone\":\"\",\"languages\":\"\",\"emergency_person_name\":\"\",\"emergency_person_phone\":\"\",\"national_id_number\":\"\",\"passport_number\":\"\",\"tin\":\"\",\"nssf_number\":\"\",\"bank_name\":\"\",\"bank_account_number\":\"\",\"primary_school_name\":\"\",\"primary_school_year_graduated\":\"\",\"seconday_school_name\":\"\",\"seconday_school_year_graduated\":\"\",\"high_school_name\":\"\",\"high_school_year_graduated\":\"\",\"degree_university_name\":\"\",\"degree_university_year_graduated\":\"\",\"masters_university_name\":\"\",\"masters_university_year_graduated\":\"\",\"phd_university_name\":\"\",\"phd_university_year_graduated\":\"\",\"user_type\":\"admin\",\"demo_id\":\"\",\"user_id\":\"\",\"user_batch_importer_id\":\"\",\"school_pay_account_id\":\"\",\"school_pay_payment_code\":\"\",\"given_name\":\"\",\"residential_type\":\"\",\"transportation\":\"\",\"swimming\":\"\",\"outstanding\":\"\",\"guardian_relation\":\"\",\"referral\":\"\",\"previous_school\":\"\",\"deleted_at\":\"\",\"marital_status\":\"\",\"verification\":\"\",\"current_class_id\":\"\",\"current_theology_class_id\":\"\",\"status\":\"\"}', NULL, NULL, 'No'),
(58, '2023-11-29 09:24:50', '2023-11-29 09:24:50', 1, '0', '0', '2023-11-29 12:24:50', '', '2023-11-29 12:24:50', 'mubs0x@gmail.com', NULL, 0, '', NULL, '07832909', '', NULL, '0', NULL, NULL, NULL, 'No'),
(59, '2023-11-29 09:28:52', '2023-11-29 09:28:52', 1, '0', '0', '2023-11-29 12:28:52', '', '2023-11-29 12:28:52', 'mubs0x@gmail.com', NULL, 0, '', NULL, '07832909', '', NULL, '0', NULL, NULL, NULL, 'No'),
(60, '2023-11-29 09:28:54', '2023-11-29 09:28:54', 1, '0', '0', '2023-11-29 12:28:54', '', '2023-11-29 12:28:54', 'mubs0x@gmail.com', NULL, 0, '', NULL, '07832909', '', NULL, '0', NULL, NULL, NULL, 'No'),
(65, '2023-12-28 07:10:40', '2023-12-28 07:10:42', 117, '0', '1', '2023-12-28 10:10:40', '', '2023-12-28 10:10:40', NULL, NULL, 0, '', 'Kiiza Kiiza', '0783204665', '078302382', NULL, '1', NULL, NULL, NULL, 'No'),
(66, '2024-05-04 02:52:32', '2024-05-04 02:52:32', 1, '0', '0', 'Kasese Region (CA$ 58,000)', '', '58000.00', 'mubs0x@gmail.com', '2', 0, 'Please do it very fast! Thanks.', ' Muhindo Mubaraka', '070638494', '', 'Kasese, Uganda', '0', '{\"id\":1,\"created_at\":\"\",\"updated_at\":\"\",\"user\":\"0\",\"order_state\":\"CM192938\",\"amount\":\"\",\"date_created\":\"Kasese Region (CA$ 58,000)\",\"payment_confirmation\":\"\",\"date_updated\":\"58000.00\",\"mail\":\"mubs0x@gmail.com\",\"delivery_district\":\"2\",\"temporary_id\":\"\",\"temporary_text\":\"\",\"description\":\"Please do it very fast! Thanks.\",\"customer_name\":\" Muhindo Mubaraka\",\"customer_phone_number_1\":\"070638494\",\"customer_phone_number_2\":\"\",\"customer_address\":\"Kasese, Uganda\",\"order_total\":\"\",\"order_details\":\"\",\"stripe_id\":\"\",\"stripe_text\":\"\",\"stripe_url\":\"\",\"stripe_paid\":\"\"}', NULL, NULL, 'No'),
(67, '2024-05-04 02:55:12', '2024-05-04 02:55:12', 1, '0', '58054', 'Kasese Region (CA$ 58,000)', '', '58000.00', 'mubs0x@gmail.com', '2', 0, 'Please do it very fast! Thanks.', ' Muhindo Mubaraka', '070638494', '', 'Kasese, Uganda', '58054', '{\"id\":1,\"created_at\":\"\",\"updated_at\":\"\",\"user\":\"0\",\"order_state\":\"CM192938\",\"amount\":\"\",\"date_created\":\"Kasese Region (CA$ 58,000)\",\"payment_confirmation\":\"\",\"date_updated\":\"58000.00\",\"mail\":\"mubs0x@gmail.com\",\"delivery_district\":\"2\",\"temporary_id\":\"\",\"temporary_text\":\"\",\"description\":\"Please do it very fast! Thanks.\",\"customer_name\":\" Muhindo Mubaraka\",\"customer_phone_number_1\":\"070638494\",\"customer_phone_number_2\":\"\",\"customer_address\":\"Kasese, Uganda\",\"order_total\":\"\",\"order_details\":\"\",\"stripe_id\":\"\",\"stripe_text\":\"\",\"stripe_url\":\"\",\"stripe_paid\":\"\"}', NULL, NULL, 'No'),
(68, '2024-05-04 02:56:13', '2024-05-04 02:56:13', 1, '0', '58054', 'Kasese Region (CA$ 58,000)', '', '58000.00', 'mubs0x@gmail.com', '2', 0, 'Please do it very fast! Thanks.', ' Muhindo Mubaraka', '070638494', '', 'Kasese, Uganda', '58054', '{\"id\":1,\"created_at\":\"\",\"updated_at\":\"\",\"user\":\"0\",\"order_state\":\"CM192938\",\"amount\":\"\",\"date_created\":\"Kasese Region (CA$ 58,000)\",\"payment_confirmation\":\"\",\"date_updated\":\"58000.00\",\"mail\":\"mubs0x@gmail.com\",\"delivery_district\":\"2\",\"temporary_id\":\"\",\"temporary_text\":\"\",\"description\":\"Please do it very fast! Thanks.\",\"customer_name\":\" Muhindo Mubaraka\",\"customer_phone_number_1\":\"070638494\",\"customer_phone_number_2\":\"\",\"customer_address\":\"Kasese, Uganda\",\"order_total\":\"\",\"order_details\":\"\",\"stripe_id\":\"\",\"stripe_text\":\"\",\"stripe_url\":\"\",\"stripe_paid\":\"\"}', NULL, NULL, 'No'),
(69, '2024-05-04 02:57:40', '2024-05-04 02:57:40', 1, '0', '58054', 'Kasese Region (CA$ 58,000)', '', '58000.00', 'mubs0x@gmail.com', '2', 0, 'Please do it very fast! Thanks.', ' Muhindo Mubaraka', '070638494', '', 'Kasese, Uganda', '58054', '{\"id\":1,\"created_at\":\"\",\"updated_at\":\"\",\"user\":\"0\",\"order_state\":\"CM192938\",\"amount\":\"\",\"date_created\":\"Kasese Region (CA$ 58,000)\",\"payment_confirmation\":\"\",\"date_updated\":\"58000.00\",\"mail\":\"mubs0x@gmail.com\",\"delivery_district\":\"2\",\"temporary_id\":\"\",\"temporary_text\":\"\",\"description\":\"Please do it very fast! Thanks.\",\"customer_name\":\" Muhindo Mubaraka\",\"customer_phone_number_1\":\"070638494\",\"customer_phone_number_2\":\"\",\"customer_address\":\"Kasese, Uganda\",\"order_total\":\"\",\"order_details\":\"\",\"stripe_id\":\"\",\"stripe_text\":\"\",\"stripe_url\":\"\",\"stripe_paid\":\"\"}', NULL, NULL, 'No'),
(70, '2024-05-04 03:13:54', '2024-05-04 03:13:54', 1, '0', '2', 'Kasese Region (CA$ 1)', '', '1.00', 'mubs0x@gmail.com', '2', 0, 'Please do it very fast! Thanks.', ' Muhindo Mubaraka', '070638494', '', 'Kasese, Uganda', '2', '{\"id\":1,\"created_at\":\"\",\"updated_at\":\"\",\"user\":\"0\",\"order_state\":\"CM192938\",\"amount\":\"\",\"date_created\":\"Kasese Region (CA$ 1)\",\"payment_confirmation\":\"\",\"date_updated\":\"1.00\",\"mail\":\"mubs0x@gmail.com\",\"delivery_district\":\"2\",\"temporary_id\":\"\",\"temporary_text\":\"\",\"description\":\"Please do it very fast! Thanks.\",\"customer_name\":\" Muhindo Mubaraka\",\"customer_phone_number_1\":\"070638494\",\"customer_phone_number_2\":\"\",\"customer_address\":\"Kasese, Uganda\",\"order_total\":\"\",\"order_details\":\"\",\"stripe_id\":\"\",\"stripe_text\":\"\",\"stripe_url\":\"\",\"stripe_paid\":\"\"}', NULL, NULL, 'No'),
(71, '2024-05-04 03:42:12', '2024-05-04 03:42:17', 1, '0', '2', 'Kasese Region (CA$ 1)', '', '1.00', 'mubs0x@gmail.com', '2', 0, 'Please do it very fast! Thanks.', ' Muhindo Mubaraka', '070638494', '', 'Kasese, Uganda', '2', '{\"id\":1,\"created_at\":\"\",\"updated_at\":\"\",\"user\":\"0\",\"order_state\":\"CM192938\",\"amount\":\"\",\"date_created\":\"Kasese Region (CA$ 1)\",\"payment_confirmation\":\"\",\"date_updated\":\"1.00\",\"mail\":\"mubs0x@gmail.com\",\"delivery_district\":\"2\",\"temporary_id\":\"\",\"temporary_text\":\"\",\"description\":\"Please do it very fast! Thanks.\",\"customer_name\":\" Muhindo Mubaraka\",\"customer_phone_number_1\":\"070638494\",\"customer_phone_number_2\":\"\",\"customer_address\":\"Kasese, Uganda\",\"order_total\":\"\",\"order_details\":\"\",\"stripe_id\":\"\",\"stripe_text\":\"\",\"stripe_url\":\"\",\"stripe_paid\":\"\"}', NULL, NULL, 'No'),
(72, '2024-08-27 05:48:18', '2024-08-28 20:14:21', 2, '1', '110006', '2024-08-27 08:48:18', '', '2024-08-27 08:48:18', 'walusansa@gmail.com', NULL, 0, '', NULL, '0706638494', '0706638494', NULL, '110006', NULL, NULL, NULL, 'No'),
(73, '2024-08-27 05:54:22', '2024-08-27 05:54:28', 2, '0', '110006', NULL, '', NULL, 'walusansa@gmail.com', NULL, 0, '', NULL, NULL, NULL, NULL, '110006', '{\"id\":0,\"created_at\":\"\",\"updated_at\":\"\",\"user\":\"\",\"order_state\":\"\",\"amount\":\"\",\"date_created\":\"\",\"payment_confirmation\":\"\",\"date_updated\":\"\",\"mail\":\"\",\"delivery_district\":\"\",\"temporary_id\":\"\",\"temporary_text\":\"\",\"description\":\"\",\"customer_name\":\"\",\"customer_phone_number_1\":\"\",\"customer_phone_number_2\":\"\",\"customer_address\":\"\",\"order_total\":\"\",\"order_details\":\"\",\"stripe_id\":\"\",\"stripe_text\":\"\",\"stripe_url\":\"\",\"stripe_paid\":\"\",\"delivery_method\":\"\",\"delivery_address_id\":\"\",\"delivery_address_text\":\"\",\"delivery_address_details\":\"\",\"delivery_amount\":\"\",\"payable_amount\":\"\",\"phone_number_2\":\"\",\"phone_number_1\":\"\",\"phone_number\":\"\"}', NULL, NULL, 'No'),
(74, '2024-08-27 05:55:52', '2024-08-27 05:55:58', 2, '0', '110006', NULL, '', NULL, 'walusansa@gmail.com', NULL, 0, '', NULL, NULL, NULL, NULL, '110006', '{\"id\":73,\"created_at\":\"2024-08-27T08:54:22.000000Z\",\"updated_at\":\"2024-08-27T08:54:28.000000Z\",\"user\":\"2\",\"order_state\":\"0\",\"amount\":\"110006\",\"date_created\":\"\",\"payment_confirmation\":\"\",\"date_updated\":\"\",\"mail\":\"walusansa@gmail.com\",\"delivery_district\":\"\",\"temporary_id\":\"0\",\"temporary_text\":\"\",\"description\":\"\",\"customer_name\":\"\",\"customer_phone_number_1\":\"\",\"customer_phone_number_2\":\"\",\"customer_address\":\"\",\"order_total\":\"110006\",\"order_details\":\"{\\\"id\\\":0,\\\"created_at\\\":\\\"\\\",\\\"updated_at\\\":\\\"\\\",\\\"user\\\":\\\"\\\",\\\"order_state\\\":\\\"\\\",\\\"amount\\\":\\\"\\\",\\\"date_created\\\":\\\"\\\",\\\"payment_confirmation\\\":\\\"\\\",\\\"date_updated\\\":\\\"\\\",\\\"mail\\\":\\\"\\\",\\\"delivery_district\\\":\\\"\\\",\\\"temporary_id\\\":\\\"\\\",\\\"temporary_text\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"customer_name\\\":\\\"\\\",\\\"customer_phone_number_1\\\":\\\"\\\",\\\"customer_phone_number_2\\\":\\\"\\\",\\\"customer_address\\\":\\\"\\\",\\\"order_total\\\":\\\"\\\",\\\"order_details\\\":\\\"\\\",\\\"stripe_id\\\":\\\"\\\",\\\"stripe_text\\\":\\\"\\\",\\\"stripe_url\\\":\\\"\\\",\\\"stripe_paid\\\":\\\"\\\",\\\"delivery_method\\\":\\\"\\\",\\\"delivery_address_id\\\":\\\"\\\",\\\"delivery_address_text\\\":\\\"\\\",\\\"delivery_address_details\\\":\\\"\\\",\\\"delivery_amount\\\":\\\"\\\",\\\"payable_amount\\\":\\\"\\\",\\\"phone_number_2\\\":\\\"\\\",\\\"phone_number_1\\\":\\\"\\\",\\\"phone_number\\\":\\\"\\\"}\",\"stripe_id\":\"\",\"stripe_text\":\"\",\"stripe_url\":\"\",\"stripe_paid\":\"No\",\"delivery_method\":\"\",\"delivery_address_id\":\"\",\"delivery_address_text\":\"\",\"delivery_address_details\":\"\",\"delivery_amount\":\"\",\"payable_amount\":\"\",\"phone_number_2\":\"\",\"phone_number_1\":\"\",\"phone_number\":\"\"}', NULL, NULL, 'No'),
(75, '2024-08-27 06:03:30', '2024-08-28 13:05:00', 2, '0', '50', NULL, '', NULL, 'walusansa@gmail.com', NULL, 0, '', NULL, NULL, NULL, NULL, '50', '{\"id\":0,\"created_at\":\"\",\"updated_at\":\"\",\"user\":\"\",\"order_state\":\"\",\"amount\":\"\",\"date_created\":\"\",\"payment_confirmation\":\"\",\"date_updated\":\"\",\"mail\":\"mubahood360@gmail.com\",\"delivery_district\":\"\",\"temporary_id\":\"\",\"temporary_text\":\"\",\"description\":\"\",\"customer_name\":\"Shukuru Chebukwa\",\"customer_phone_number_1\":\"0706638494\",\"customer_phone_number_2\":\"\",\"customer_address\":\"\",\"order_total\":\"\",\"order_details\":\"\",\"stripe_id\":\"\",\"stripe_text\":\"\",\"stripe_url\":\"\",\"stripe_paid\":\"\",\"delivery_method\":\"pickup\",\"delivery_address_id\":\"\",\"delivery_address_text\":\"\",\"delivery_address_details\":\"\",\"delivery_amount\":\"\",\"payable_amount\":\"0\",\"phone_number_2\":\"0706638494\",\"phone_number_1\":\"0706638494\",\"phone_number\":\"0706638494\"}', 'plink_1PsoMiD6XvmPLQKHYx7bVNVD', 'https://buy.stripe.com/aEU5ll13peysh2weVI', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `order_keys`
--

CREATE TABLE `order_keys` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `order_ref` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `response_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `temporary_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_keys`
--

INSERT INTO `order_keys` (`id`, `order`, `order_ref`, `user`, `date_created`, `response_data`, `temporary_id`) VALUES
(20, 32, 'dff71c433b246e8b051c5663a6073beb_ref_32_59_', 59, '2022-10-08', NULL, 0),
(21, 33, 'fbcb8c53ce9dbac4e9c4bb1db1f46310_ref_33_62_', 62, '2022-10-10', NULL, 0),
(22, 34, 'f8d20a40364a64fd6c5a6022f27b24da_ref_34_62_', 62, '2022-10-11', NULL, 0),
(23, 35, '947db1c5cc5f2c83fc0e1f17da70f15d_ref_35_62_', 62, '2022-10-11', NULL, 0),
(24, 36, 'a41a389801b221f6a02efcfed6232bcb_ref_36_62_', 62, '2022-10-11', NULL, 0),
(25, 36, 'e2f02249ecab3712a2a6c25653468282_ref_36_62', 62, '2022-10-11', NULL, NULL),
(26, 36, 'aff4610990f80b9a1a82fbc9e5162a35_ref_36_62', 62, '2022-10-11', ' {\"request\":\"MobileMoney\",\n    \"status\":\"Successful\",\n    \"tx_ref\":\"aff4610990f80b9a1a82fbc9e5162a35_ref_36_62\",\n    \"amount\":\"515\",\n    \"currency\":\"UGX\",\n    \"_timestamp\":\"2022-02-01 20:07:03\",\n    \"message\":\"Thank you for choosing Boosted Payment Solutions for your collections needs.\"}', NULL),
(27, 37, '5935e1dc93d245bd0b1f91899534b288_ref_37_62_', 62, '2022-10-13', NULL, 0),
(28, 37, '37a461107d00bd898c4a1eae95a0d101_ref_37_62', 62, '2022-10-18', NULL, NULL),
(29, 38, 'ceb862d6021e4d083643b08377e7e69e-ref-38-63-', 63, '2022-11-15', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `uak` char(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `psid` char(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `uak`, `psid`, `code`) VALUES
(1, 'b659c2e0dcd39d4042cf4c9aa51d7a4508049611229760e14bc3c35c9085e0c9', '552151c96e0ece5b36fecc40b99269b3bef18d37cdeb1811910b0e126a991153', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_keys`
--

CREATE TABLE `payment_keys` (
  `id` int(11) NOT NULL,
  `production` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testing` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testing_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metric` smallint(6) DEFAULT NULL,
  `currency` smallint(6) DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `price_1` decimal(10,2) DEFAULT NULL,
  `price_2` decimal(10,2) DEFAULT NULL,
  `feature_photo` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rates` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `sub_category` int(11) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `in_stock` tinyint(1) DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `p_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_id` text COLLATE utf8mb4_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `stripe_id` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_price` varchar(550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_colors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors` text COLLATE utf8mb4_unicode_ci,
  `has_sizes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `metric`, `currency`, `description`, `summary`, `price_1`, `price_2`, `feature_photo`, `rates`, `date_added`, `date_updated`, `user`, `category`, `sub_category`, `supplier`, `url`, `status`, `in_stock`, `keywords`, `p_type`, `local_id`, `updated_at`, `created_at`, `stripe_id`, `stripe_price`, `has_colors`, `colors`, `has_sizes`, `sizes`) VALUES
(1, 'Canon EOS R5 Mirrorless Camera', 100, 1, NULL, NULL, 50000.00, 1400000.00, 'images/100.jpg', 1, '2026-04-27', '2026-04-27 20:16:18', 1, 12, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266178-548835-478146', '2026-04-27 23:16:18', '2026-04-27 23:16:18', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(2, 'Canon EOS 5D Mark IV', 101, 1, NULL, NULL, 600000.00, 1500000.00, 'images/101.jpg', 1, '2025-03-31', '2025-03-31 20:17:17', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266237-334195-743892', '2025-03-31 23:17:17', '2025-03-31 23:17:17', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(3, 'Belkin BoostCharge Wireless Charger', 102, 1, NULL, NULL, 3300000.00, 600000.00, 'images/102.jpg', 1, '2025-09-28', '2025-09-28 20:20:25', 1, 7, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-513762-472272', '2025-09-28 23:20:25', '2025-09-28 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(4, 'Anker Soundcore Life Q30', 103, 1, NULL, NULL, 2000000.00, 3300000.00, 'images/103.jpg', 1, '2025-01-23', '2025-01-23 20:20:25', 1, 2, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-326467-466146', '2025-01-23 23:20:25', '2025-01-23 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(5, 'Linksys Velop Mesh WiFi System', 104, 1, NULL, NULL, 150000.00, 50000.00, 'images/104.jpg', 1, '2024-06-26', '2024-06-26 20:20:25', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-760642-506377', '2024-06-26 23:20:25', '2024-06-26 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(6, 'Amazfit Bip U Pro', 105, 1, NULL, NULL, 200000.00, 2000000.00, 'images/105.jpg', 1, '2025-06-13', '2025-06-13 20:20:25', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-995069-376079', '2025-06-13 23:20:25', '2025-06-13 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(7, 'Samsung Galaxy S21 Ultra 5G', 106, 1, NULL, NULL, 1000000.00, 150000.00, 'images/106.jpg', 1, '2025-11-13', '2025-11-13 20:20:25', 1, 2, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-867148-667306', '2025-11-13 23:20:25', '2025-11-13 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(8, 'Xiaomi Redmi Note 11 Pro', 107, 1, NULL, NULL, 3000000.00, 10000.00, 'images/107.jpg', 1, '2024-04-06', '2024-04-06 20:20:25', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-691728-872313', '2024-04-06 23:20:25', '2024-04-06 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(9, 'Dell XPS 13 Ultrabook', 108, 1, NULL, NULL, 40000.00, 1400000.00, 'images/108.jpg', 1, '2024-07-02', '2024-07-02 20:20:25', 1, 9, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-694884-158928', '2024-07-02 23:20:25', '2024-07-02 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(10, 'Moto 360 Smartwatch', 109, 1, NULL, NULL, 5000.00, 100000.00, 'images/109.jpg', 1, '2025-04-27', '2025-04-27 20:20:25', 1, 6, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-755576-507194', '2025-04-27 23:20:25', '2025-04-27 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(11, 'ZTE Axon 30 Ultra', 110, 1, NULL, NULL, 10000.00, 1500000.00, 'images/110.jpg', 1, '2024-01-25', '2024-01-25 20:20:25', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-904129-554349', '2024-01-25 23:20:25', '2024-01-25 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(12, 'MSI GS66 Stealth', 111, 1, NULL, NULL, 500000.00, 1500000.00, 'images/111.jpg', 1, '2024-03-25', '2024-03-25 20:20:25', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-966283-804932', '2024-03-25 23:20:25', '2024-03-25 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(13, 'Sony PlayStation 5 Console', 112, 1, NULL, NULL, 600000.00, 300000.00, 'images/112.jpg', 1, '2025-02-01', '2025-02-01 20:20:25', 1, 9, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-306541-866204', '2025-02-01 23:20:25', '2025-02-01 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(14, 'HP Spectre x360 Convertible', 113, 1, NULL, NULL, 100000.00, 2500000.00, 'images/113.jpg', 1, '2025-11-10', '2025-11-10 20:20:25', 1, 6, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-488223-129893', '2025-11-10 23:20:25', '2025-11-10 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(15, 'HyperX Cloud II Gaming Headset', 114, 1, NULL, NULL, 1500000.00, 1400000.00, 'images/114.jpg', 1, '2024-10-24', '2024-10-24 20:20:25', 1, 2, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-648418-760536', '2024-10-24 23:20:25', '2024-10-24 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(16, 'Acer Predator Helios 300', 115, 1, NULL, NULL, 3300000.00, 500000.00, 'images/115.jpg', 1, '2026-09-02', '2026-09-02 20:20:25', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-439976-326394', '2026-09-02 23:20:25', '2026-09-02 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(17, 'Razer Tomahawk Gaming Desktop', 116, 1, NULL, NULL, 2000000.00, 40000.00, 'images/116.jpg', 1, '2025-04-03', '2025-04-03 20:20:25', 1, 9, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-845113-718241', '2025-04-03 23:20:25', '2025-04-03 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(18, 'Asus ROG Zephyrus G14', 117, 1, NULL, NULL, 2500000.00, 1000000.00, 'images/117.jpg', 1, '2024-04-24', '2024-04-24 20:20:25', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-362158-872418', '2024-04-24 23:20:25', '2024-04-24 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(19, 'Belkin WeMo Insight Switch', 118, 1, NULL, NULL, 3400000.00, 3200000.00, 'images/118.jpg', 1, '2025-08-14', '2025-08-14 20:20:25', 1, 12, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-161019-336081', '2025-08-14 23:20:25', '2025-08-14 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(20, 'Huawei FreeBuds Pro', 119, 1, NULL, NULL, 600000.00, 1500000.00, 'images/119.jpg', 1, '2024-11-15', '2024-11-15 20:20:25', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-892135-516171', '2024-11-15 23:20:25', '2024-11-15 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(21, 'Asus ROG Zephyrus G14', 12, 1, NULL, NULL, 1500000.00, 1000000.00, 'images/12.jpg', 1, '2024-05-13', '2024-05-13 20:20:25', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-743354-306448', '2024-05-13 23:20:25', '2024-05-13 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(22, 'Google Pixel 6 Pro', 120, 1, NULL, NULL, 90000.00, 80000.00, 'images/120.jpg', 1, '2026-09-06', '2026-09-06 20:20:25', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-496023-353991', '2026-09-06 23:20:25', '2026-09-06 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(23, 'LIFX Wi-Fi Smart LED Bulb', 121, 1, NULL, NULL, 200000.00, 1000000.00, 'images/121.jpg', 1, '2024-12-31', '2024-12-31 20:20:25', 1, 12, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-819613-523813', '2024-12-31 23:20:25', '2024-12-31 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(24, 'Sony FE 24-70mm f/2.8 GM Lens', 122, 1, NULL, NULL, 1500000.00, 3400000.00, 'images/122.jpg', 1, '2025-06-04', '2025-06-04 20:20:25', 1, 12, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-205819-173098', '2025-06-04 23:20:25', '2025-06-04 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(25, 'Nikon D850 DSLR', 123, 1, NULL, NULL, 1400000.00, 3200000.00, 'images/123.jpg', 1, '2026-02-03', '2026-02-03 20:20:25', 1, 9, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-289911-446084', '2026-02-03 23:20:25', '2026-02-03 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(26, 'Sony WH-1000XM4 Wireless Headphones', 124, 1, NULL, NULL, 5000.00, 80000.00, 'images/124.jpg', 1, '2024-11-13', '2024-11-13 20:20:25', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-879200-373088', '2024-11-13 23:20:25', '2024-11-13 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(27, 'Bang & Olufsen Beoplay H9', 125, 1, NULL, NULL, 80000.00, 600000.00, 'images/125.jpg', 1, '2025-05-01', '2025-05-01 20:20:25', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-117239-948815', '2025-05-01 23:20:25', '2025-05-01 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(28, 'Google Nest Mini', 126, 1, NULL, NULL, 3500000.00, 3200000.00, 'images/126.jpg', 1, '2024-04-01', '2024-04-01 20:20:25', 1, 6, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-512090-778623', '2024-04-01 23:20:25', '2024-04-01 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(29, 'Belkin WeMo Insight Switch', 127, 1, NULL, NULL, 300000.00, 3200000.00, 'images/127.jpg', 1, '2025-05-19', '2025-05-19 20:20:25', 1, 7, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-688884-775990', '2025-05-19 23:20:25', '2025-05-19 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(30, 'Arlo Pro 3 Wireless Security Camera', 128, 1, NULL, NULL, 100000.00, 90000.00, 'images/128.jpg', 1, '2025-07-08', '2025-07-08 20:20:25', 1, 5, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-309906-576757', '2025-07-08 23:20:25', '2025-07-08 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(31, 'SimpliSafe Home Security System', 129, 1, NULL, NULL, 40000.00, 750000.00, 'images/129.jpg', 1, '2025-05-08', '2025-05-08 20:20:25', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-240755-572637', '2025-05-08 23:20:25', '2025-05-08 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(32, 'Fossil Gen 5 Smartwatch', 13, 1, NULL, NULL, 1400000.00, 500000.00, 'images/13.jpg', 1, '2025-02-23', '2025-02-23 20:20:25', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-843742-865624', '2025-02-23 23:20:25', '2025-02-23 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(33, 'HP ZBook Fury 15 G7', 130, 1, NULL, NULL, 3200000.00, 10000.00, 'images/130.jpg', 1, '2025-12-11', '2025-12-11 20:20:25', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-769009-500947', '2025-12-11 23:20:25', '2025-12-11 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(34, 'Corsair K95 RGB Platinum Keyboard', 131, 1, NULL, NULL, 2500000.00, 600000.00, 'images/131.jpg', 1, '2024-12-22', '2024-12-22 20:20:25', 1, 4, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-601913-434687', '2024-12-22 23:20:25', '2024-12-22 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(35, 'JBL Live 650BTNC', 132, 1, NULL, NULL, 2500000.00, 90000.00, 'images/132.jpg', 1, '2025-08-09', '2025-08-09 20:20:25', 1, 5, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-328027-604790', '2025-08-09 23:20:25', '2025-08-09 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(36, 'Sony Xperia 5 III', 133, 1, NULL, NULL, 500000.00, 3300000.00, 'images/133.jpg', 1, '2025-04-02', '2025-04-02 20:20:25', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-307023-716353', '2025-04-02 23:20:25', '2025-04-02 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(37, 'Vivo X60 Pro', 134, 1, NULL, NULL, 1000000.00, 50000.00, 'images/134.jpg', 1, '2024-12-15', '2024-12-15 20:20:25', 1, 7, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-818521-991602', '2024-12-15 23:20:25', '2024-12-15 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(38, 'Moto 360 Smartwatch', 135, 1, NULL, NULL, 100000.00, 1400000.00, 'images/135.jpg', 1, '2024-07-22', '2024-07-22 20:20:25', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-493387-215366', '2024-07-22 23:20:25', '2024-07-22 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(39, 'Samsung Galaxy S21 Ultra 5G', 136, 1, NULL, NULL, 10000.00, 2000000.00, 'images/136.jpg', 1, '2025-03-22', '2025-03-22 20:20:25', 1, 12, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-896965-661851', '2025-03-22 23:20:25', '2025-03-22 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(40, 'Microsoft Surface Pro 7', 137, 1, NULL, NULL, 50000.00, 3000000.00, 'images/137.jpg', 1, '2025-01-13', '2025-01-13 20:20:25', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-725888-599176', '2025-01-13 23:20:25', '2025-01-13 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(41, 'Huawei Watch GT 2 Pro', 138, 1, NULL, NULL, 300000.00, 600000.00, 'images/138.jpg', 1, '2025-06-27', '2025-06-27 20:20:25', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-809915-985943', '2025-06-27 23:20:25', '2025-06-27 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(42, 'Garmin Forerunner 245', 139, 1, NULL, NULL, 40000.00, 1000000.00, 'images/139.jpg', 1, '2025-09-07', '2025-09-07 20:20:25', 1, 9, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-593672-180981', '2025-09-07 23:20:25', '2025-09-07 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(43, 'Fujifilm X100V', 14, 1, NULL, NULL, 100000.00, 600000.00, 'images/14.jpg', 1, '2025-01-23', '2025-01-23 20:20:25', 1, 5, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-501310-238779', '2025-01-23 23:20:25', '2025-01-23 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(44, 'Samsung Galaxy Book Pro 360', 140, 1, NULL, NULL, 3200000.00, 300000.00, 'images/140.jpg', 1, '2024-03-30', '2024-03-30 20:20:25', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-177238-969235', '2024-03-30 23:20:25', '2024-03-30 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(45, 'Lenovo Yoga Slim 7', 141, 1, NULL, NULL, 40000.00, 1000000.00, 'images/141.jpg', 1, '2025-03-06', '2025-03-06 20:20:25', 1, 9, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-549324-319219', '2025-03-06 23:20:25', '2025-03-06 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(46, 'Gigabyte Aero 15', 142, 1, NULL, NULL, 50000.00, 3200000.00, 'images/142.jpg', 1, '2025-11-14', '2025-11-14 20:20:25', 1, 5, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-933502-444321', '2025-11-14 23:20:25', '2025-11-14 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(47, 'Apple MacBook Air M1', 143, 1, NULL, NULL, 100000.00, 1000000.00, 'images/143.jpg', 1, '2025-01-24', '2025-01-24 20:20:25', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-499283-262173', '2025-01-24 23:20:25', '2025-01-24 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(48, 'Google Pixel Buds A-Series', 144, 1, NULL, NULL, 80000.00, 5000.00, 'images/144.jpg', 1, '2024-11-07', '2024-11-07 20:20:25', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-101059-119445', '2024-11-07 23:20:25', '2024-11-07 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(49, 'Fujifilm X100V', 145, 1, NULL, NULL, 3400000.00, 150000.00, 'images/145.jpg', 1, '2024-06-24', '2024-06-24 20:20:25', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-754628-331765', '2024-06-24 23:20:25', '2024-06-24 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(50, 'DJI Osmo Action', 15, 1, NULL, NULL, 500000.00, 100000.00, 'images/15.jpg', 1, '2024-11-07', '2024-11-07 20:20:25', 1, 9, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-336394-883708', '2024-11-07 23:20:25', '2024-11-07 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(51, 'Xiaomi Mi 11 Ultra', 16, 1, NULL, NULL, 1500000.00, 100000.00, 'images/16.jpg', 1, '2025-03-03', '2025-03-03 20:20:25', 1, 4, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-465768-916361', '2025-03-03 23:20:25', '2025-03-03 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(52, 'LG XBOOM Go PL7', 17, 1, NULL, NULL, 40000.00, 90000.00, 'images/17.jpg', 1, '2024-07-27', '2024-07-27 20:20:25', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-659825-432202', '2024-07-27 23:20:25', '2024-07-27 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(53, 'Bowers & Wilkins Formation Wedge', 18, 1, NULL, NULL, 100000.00, 3000000.00, 'images/18.jpg', 1, '2025-01-21', '2025-01-21 20:20:25', 1, 12, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-254103-465632', '2025-01-21 23:20:25', '2025-01-21 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(54, 'Canon EOS R5 Mirrorless Camera', 19, 1, NULL, NULL, 2000000.00, 40000.00, 'images/19.jpg', 1, '2024-12-09', '2024-12-09 20:20:25', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-743531-479756', '2024-12-09 23:20:25', '2024-12-09 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(55, 'HP OMEN 25L Gaming Desktop', 20, 1, NULL, NULL, 3400000.00, 40000.00, 'images/20.jpg', 1, '2026-01-12', '2026-01-12 20:20:25', 1, 9, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-191372-516085', '2026-01-12 23:20:25', '2026-01-12 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(56, 'Google Pixel 6 Pro', 21, 1, NULL, NULL, 2000000.00, 600000.00, 'images/21.jpg', 1, '2024-03-20', '2024-03-20 20:20:25', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-924777-584004', '2024-03-20 23:20:25', '2024-03-20 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(57, 'Apple iPhone 13 Pro', 22, 1, NULL, NULL, 3500000.00, 600000.00, 'images/22.jpg', 1, '2025-03-05', '2025-03-05 20:20:25', 1, 4, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-262603-187434', '2025-03-05 23:20:25', '2025-03-05 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(58, 'Nikon D850 DSLR', 23, 1, NULL, NULL, 1200000.00, 400000.00, 'images/23.jpg', 1, '2025-01-19', '2025-01-19 20:20:25', 1, 2, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-568887-497743', '2025-01-19 23:20:25', '2025-01-19 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(59, 'Sony Alpha A7 III', 24, 1, NULL, NULL, 150000.00, 100000.00, 'images/24.jpg', 1, '2025-05-20', '2025-05-20 20:20:25', 1, 6, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266425-740497-170711', '2025-05-20 23:20:25', '2025-05-20 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(60, 'Epson EcoTank ET-4760 Printer', 25, 1, NULL, NULL, 1000000.00, 1400000.00, 'images/25.jpg', 1, '2024-09-25', '2024-09-25 20:20:25', 1, 9, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-143640-248795', '2024-09-25 23:20:25', '2024-09-25 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(61, 'Apple Watch Series 7', 26, 1, NULL, NULL, 2000000.00, 5000.00, 'images/26.jpg', 1, '2024-11-12', '2024-11-12 20:20:25', 1, 7, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266425-505088-828470', '2024-11-12 23:20:25', '2024-11-12 23:20:25', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(62, 'Apple AirPods Pro', 27, 1, NULL, NULL, 10000.00, 750000.00, 'images/27.jpg', 1, '2026-02-14', '2026-02-14 20:20:26', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-544561-646385', '2026-02-14 23:20:26', '2026-02-14 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(63, 'Motorola Moto G Power', 28, 1, NULL, NULL, 1500000.00, 3000000.00, 'images/28.jpg', 1, '2025-06-02', '2025-06-02 20:20:26', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-629314-331404', '2025-06-02 23:20:26', '2025-06-02 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(64, 'Bose SoundLink Revolve+', 29, 1, NULL, NULL, 100000.00, 3000000.00, 'images/29.jpg', 1, '2025-11-15', '2025-11-15 20:20:26', 1, 5, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-888903-824204', '2025-11-15 23:20:26', '2025-11-15 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(65, 'Marshall Stanmore II', 30, 1, NULL, NULL, 2000000.00, 1400000.00, 'images/30.jpg', 1, '2026-04-04', '2026-04-04 20:20:26', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-439653-650745', '2026-04-04 23:20:26', '2026-04-04 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(66, 'Bowers & Wilkins PX7', 31, 1, NULL, NULL, 500000.00, 300000.00, 'images/31.jpg', 1, '2025-07-07', '2025-07-07 20:20:26', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-529735-721899', '2025-07-07 23:20:26', '2025-07-07 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(67, 'Dell UltraSharp U2720Q 4K Monitor', 32, 1, NULL, NULL, 1000000.00, 1500000.00, 'images/32.jpg', 1, '2025-04-16', '2025-04-16 20:20:26', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-980536-951265', '2025-04-16 23:20:26', '2025-04-16 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(68, 'Microsoft Xbox Series X', 33, 1, NULL, NULL, 1500000.00, 2000000.00, 'images/33.jpg', 1, '2025-10-11', '2025-10-11 20:20:26', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-281747-728948', '2025-10-11 23:20:26', '2025-10-11 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(69, 'Amazon Echo Dot (4th Gen)', 34, 1, NULL, NULL, 3500000.00, 2000000.00, 'images/34.jpg', 1, '2025-10-15', '2025-10-15 20:20:26', 1, 12, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-598031-568005', '2025-10-15 23:20:26', '2025-10-15 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(70, 'Western Digital 2TB Portable HDD', 35, 1, NULL, NULL, 1400000.00, 1000000.00, 'images/35.jpg', 1, '2024-01-23', '2024-01-23 20:20:26', 1, 5, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-600248-142216', '2024-01-23 23:20:26', '2024-01-23 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(71, 'HP ZBook Fury 15 G7', 36, 1, NULL, NULL, 1000000.00, 1200000.00, 'images/36.jpg', 1, '2024-09-03', '2024-09-03 20:20:26', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-758182-778482', '2024-09-03 23:20:26', '2024-09-03 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(72, 'Moto 360 Smartwatch', 37, 1, NULL, NULL, 80000.00, 2500000.00, 'images/37.jpg', 1, '2023-10-16', '2023-10-16 20:20:26', 1, 7, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-742013-785125', '2023-10-16 23:20:26', '2023-10-16 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(73, 'HP OMEN 25L Gaming Desktop', 38, 1, NULL, NULL, 3000000.00, 1400000.00, 'images/38.jpg', 1, '2025-07-23', '2025-07-23 20:20:26', 1, 7, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-350069-640582', '2025-07-23 23:20:26', '2025-07-23 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(74, 'Apple MacBook Pro 16-inch', 39, 1, NULL, NULL, 1500000.00, 3400000.00, 'images/39.jpg', 1, '2025-08-13', '2025-08-13 20:20:26', 1, 9, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-870322-278472', '2025-08-13 23:20:26', '2025-08-13 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(75, 'Western Digital 2TB Portable HDD', 40, 1, NULL, NULL, 5000.00, 1000000.00, 'images/40.jpg', 1, '2025-05-30', '2025-05-30 20:20:26', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-686375-226298', '2025-05-30 23:20:26', '2025-05-30 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(76, 'Lenovo ThinkStation P340', 41, 1, NULL, NULL, 1500000.00, 3000000.00, 'images/41.jpg', 1, '2024-07-13', '2024-07-13 20:20:26', 1, 2, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-959294-908693', '2024-07-13 23:20:26', '2024-07-13 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(77, 'OnePlus 9 Pro 5G', 42, 1, NULL, NULL, 2000000.00, 80000.00, 'images/42.jpg', 1, '2025-10-09', '2025-10-09 20:20:26', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-387999-893359', '2025-10-09 23:20:26', '2025-10-09 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(78, 'Belkin BoostCharge Wireless Charger', 43, 1, NULL, NULL, 3400000.00, 3500000.00, 'images/43.jpg', 1, '2024-05-16', '2024-05-16 20:20:26', 1, 12, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-506658-608503', '2024-05-16 23:20:26', '2024-05-16 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(79, 'Samsung Galaxy S21+ 5G', 44, 1, NULL, NULL, 3400000.00, 10000.00, 'images/44.jpg', 1, '2025-04-11', '2025-04-11 20:20:26', 1, 9, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-185377-138643', '2025-04-11 23:20:26', '2025-04-11 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(80, 'Sony Xperia 5 III', 45, 1, NULL, NULL, 750000.00, 90000.00, 'images/45.jpg', 1, '2023-10-26', '2023-10-26 20:20:26', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-455335-984650', '2023-10-26 23:20:26', '2023-10-26 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(81, 'Bowers & Wilkins PX7', 46, 1, NULL, NULL, 3300000.00, 1500000.00, 'images/46.jpg', 1, '2025-06-15', '2025-06-15 20:20:26', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-918050-474232', '2025-06-15 23:20:26', '2025-06-15 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(82, 'Apple iPhone 13 Pro Max', 47, 1, NULL, NULL, 90000.00, 150000.00, 'images/47.jpg', 1, '2025-04-18', '2025-04-18 20:20:26', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-449942-272115', '2025-04-18 23:20:26', '2025-04-18 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(83, 'Moto 360 Smartwatch', 48, 1, NULL, NULL, 400000.00, 2000000.00, 'images/48.jpg', 1, '2024-12-05', '2024-12-05 20:20:26', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-178490-399724', '2024-12-05 23:20:26', '2024-12-05 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(84, 'Motorola Moto G Power', 49, 1, NULL, NULL, 300000.00, 1500000.00, 'images/49.jpg', 1, '2025-05-21', '2025-05-21 20:20:26', 1, 2, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-422206-890347', '2025-05-21 23:20:26', '2025-05-21 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(85, 'Nokia 8.3 5G', 50, 1, NULL, NULL, 1000000.00, 3000000.00, 'images/50.jpg', 1, '2023-09-07', '2023-09-07 20:20:26', 1, 12, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-977642-529020', '2023-09-07 23:20:26', '2023-09-07 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(86, 'Sigma 35mm f/1.4 Art Lens', 51, 1, NULL, NULL, 400000.00, 2000000.00, 'images/51.jpg', 1, '2025-08-20', '2025-08-20 20:20:26', 1, 4, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-205855-831973', '2025-08-20 23:20:26', '2025-08-20 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(87, 'Epson EcoTank ET-4760 Printer', 52, 1, NULL, NULL, 80000.00, 150000.00, 'images/52.jpg', 1, '2024-04-18', '2024-04-18 20:20:26', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-537788-915459', '2024-04-18 23:20:26', '2024-04-18 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(88, 'Google Pixel 6 Pro', 53, 1, NULL, NULL, 3400000.00, 750000.00, 'images/53.jpg', 1, '2025-03-12', '2025-03-12 20:20:26', 1, 6, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-264888-211944', '2025-03-12 23:20:26', '2025-03-12 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(89, 'Motorola Edge 20 Pro', 54, 1, NULL, NULL, 1400000.00, 300000.00, 'images/54.jpg', 1, '2024-01-08', '2024-01-08 20:20:26', 1, 6, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-524029-798439', '2024-01-08 23:20:26', '2024-01-08 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(90, 'Xiaomi Mi Band 6', 55, 1, NULL, NULL, 50000.00, 3500000.00, 'images/55.jpg', 1, '2024-09-10', '2024-09-10 20:20:26', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-560575-691780', '2024-09-10 23:20:26', '2024-09-10 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(91, 'Corsair iCUE 4000X RGB Case', 56, 1, NULL, NULL, 3000000.00, 500000.00, 'images/56.jpg', 1, '2024-03-02', '2024-03-02 20:20:26', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-256616-694824', '2024-03-02 23:20:26', '2024-03-02 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(92, 'Nikon Z7 II', 57, 1, NULL, NULL, 200000.00, 2500000.00, 'images/57.jpg', 1, '2024-11-29', '2024-11-29 20:20:26', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-741894-800242', '2024-11-29 23:20:26', '2024-11-29 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(93, 'Sony PlayStation 5 Console', 58, 1, NULL, NULL, 5000.00, 3500000.00, 'images/58.jpg', 1, '2025-01-18', '2025-01-18 20:20:26', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-854046-945579', '2025-01-18 23:20:26', '2025-01-18 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(94, 'Google Nest Mini', 59, 1, NULL, NULL, 1000000.00, 1500000.00, 'images/59.jpg', 1, '2024-03-12', '2024-03-12 20:20:26', 1, 2, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-342511-550977', '2024-03-12 23:20:26', '2024-03-12 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(95, 'MSI Optix MAG272C Gaming Monitor', 60, 1, NULL, NULL, 1400000.00, 600000.00, 'images/60.jpg', 1, '2023-11-03', '2023-11-03 20:20:26', 1, 7, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-147187-750529', '2023-11-03 23:20:26', '2023-11-03 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(96, 'Jabra Elite 85h', 61, 1, NULL, NULL, 500000.00, 600000.00, 'images/61.jpg', 1, '2024-11-08', '2024-11-08 20:20:26', 1, 7, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-495435-469035', '2024-11-08 23:20:26', '2024-11-08 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(97, 'Wyze Cam v3', 62, 1, NULL, NULL, 5000.00, 3400000.00, 'images/62.jpg', 1, '2025-09-21', '2025-09-21 20:20:26', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-902455-421081', '2025-09-21 23:20:26', '2025-09-21 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"');
INSERT INTO `products` (`id`, `name`, `metric`, `currency`, `description`, `summary`, `price_1`, `price_2`, `feature_photo`, `rates`, `date_added`, `date_updated`, `user`, `category`, `sub_category`, `supplier`, `url`, `status`, `in_stock`, `keywords`, `p_type`, `local_id`, `updated_at`, `created_at`, `stripe_id`, `stripe_price`, `has_colors`, `colors`, `has_sizes`, `sizes`) VALUES
(98, 'BenQ PD2700U Designer Monitor', 63, 1, NULL, NULL, 200000.00, 150000.00, 'images/63.jpg', 1, '2026-01-24', '2026-01-24 20:20:26', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-640690-221036', '2026-01-24 23:20:26', '2026-01-24 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(99, 'Anker Soundcore Life Q30', 64, 1, NULL, NULL, 3200000.00, 3400000.00, 'images/64.jpg', 1, '2025-03-17', '2025-03-17 20:20:26', 1, 7, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-924439-755717', '2025-03-17 23:20:26', '2025-03-17 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(100, 'Google Nest Mini', 65, 1, NULL, NULL, 1200000.00, 300000.00, 'images/65.jpg', 1, '2025-01-01', '2025-01-01 20:20:26', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-377283-167473', '2025-01-01 23:20:26', '2025-01-01 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(101, 'Sony WF-1000XM4', 66, 1, NULL, NULL, 750000.00, 1200000.00, 'images/66.jpg', 1, '2025-04-18', '2025-04-18 20:20:26', 1, 6, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-752305-383307', '2025-04-18 23:20:26', '2025-04-18 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(102, 'HP OMEN 25L Gaming Desktop', 67, 1, NULL, NULL, 40000.00, 3200000.00, 'images/67.jpg', 1, '2025-06-05', '2025-06-05 20:20:26', 1, 4, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-321893-416864', '2025-06-05 23:20:26', '2025-06-05 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(103, 'HP ZBook Fury 15 G7', 68, 1, NULL, NULL, 750000.00, 1500000.00, 'images/68.jpg', 1, '2026-07-27', '2026-07-27 20:20:26', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-615894-162352', '2026-07-27 23:20:26', '2026-07-27 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(104, 'Seagate 4TB External Hard Drive', 69, 1, NULL, NULL, 100000.00, 600000.00, 'images/69.jpg', 1, '2025-06-26', '2025-06-26 20:20:26', 1, 4, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-999363-825148', '2025-06-26 23:20:26', '2025-06-26 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(105, 'JBL Tune 130TWS', 70, 1, NULL, NULL, 200000.00, 2500000.00, 'images/70.jpg', 1, '2026-05-13', '2026-05-13 20:20:26', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-615807-635439', '2026-05-13 23:20:26', '2026-05-13 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(106, 'Xiaomi Mi True Wireless Earphones', 71, 1, NULL, NULL, 1400000.00, 2000000.00, 'images/71.jpg', 1, '2026-03-07', '2026-03-07 20:20:26', 1, 12, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-134895-340787', '2026-03-07 23:20:26', '2026-03-07 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(107, 'Bose Sport Earbuds', 72, 1, NULL, NULL, 5000.00, 1000000.00, 'images/72.jpg', 1, '2024-10-09', '2024-10-09 20:20:26', 1, 9, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-548968-501801', '2024-10-09 23:20:26', '2024-10-09 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(108, 'Apple iMac 24-inch', 73, 1, NULL, NULL, 3000000.00, 40000.00, 'images/73.jpg', 1, '2025-02-16', '2025-02-16 20:20:26', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-112379-740107', '2025-02-16 23:20:26', '2025-02-16 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(109, 'Leica Q2 Full-Frame Compact', 74, 1, NULL, NULL, 3400000.00, 1500000.00, 'images/74.jpg', 1, '2025-12-19', '2025-12-19 20:20:26', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-942131-392432', '2025-12-19 23:20:26', '2025-12-19 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(110, 'Tamron 28-75mm f/2.8 Di III VC Lens', 75, 1, NULL, NULL, 3400000.00, 150000.00, 'images/75.jpg', 1, '2025-03-13', '2025-03-13 20:20:26', 1, 4, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-155526-754714', '2025-03-13 23:20:26', '2025-03-13 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(111, 'Pioneer DJ DM-40', 76, 1, NULL, NULL, 400000.00, 500000.00, 'images/76.jpg', 1, '2024-04-18', '2024-04-18 20:20:26', 1, 5, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-684446-756675', '2024-04-18 23:20:26', '2024-04-18 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(112, 'Bowers & Wilkins PX7', 77, 1, NULL, NULL, 200000.00, 2000000.00, 'images/77.jpg', 1, '2026-05-06', '2026-05-06 20:20:26', 1, 12, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-657519-473534', '2026-05-06 23:20:26', '2026-05-06 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(113, 'Oppo Enco X', 78, 1, NULL, NULL, 1000000.00, 1500000.00, 'images/78.jpg', 1, '2024-12-08', '2024-12-08 20:20:26', 1, 4, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-977182-925662', '2024-12-08 23:20:26', '2024-12-08 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(114, 'Logitech MX Master 3 Wireless Mouse', 79, 1, NULL, NULL, 300000.00, 500000.00, 'images/79.jpg', 1, '2024-10-02', '2024-10-02 20:20:26', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-831554-322516', '2024-10-02 23:20:26', '2024-10-02 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(115, 'Samsung Galaxy S21+ 5G', 80, 1, NULL, NULL, 40000.00, 1500000.00, 'images/80.jpg', 1, '2026-06-03', '2026-06-03 20:20:26', 1, 6, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-281002-600649', '2026-06-03 23:20:26', '2026-06-03 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(116, 'Belkin WeMo Insight Switch', 81, 1, NULL, NULL, 3000000.00, 3400000.00, 'images/81.jpg', 1, '2024-11-30', '2024-11-30 20:20:26', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-610557-347452', '2024-11-30 23:20:26', '2024-11-30 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(117, 'Google Nest Mini', 82, 1, NULL, NULL, 90000.00, 3500000.00, 'images/82.jpg', 1, '2026-06-08', '2026-06-08 20:20:26', 1, 6, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-555510-551653', '2026-06-08 23:20:26', '2026-06-08 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(118, 'Nikon Z7 II', 83, 1, NULL, NULL, 40000.00, 50000.00, 'images/83.jpg', 1, '2025-10-12', '2025-10-12 20:20:26', 1, 6, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-875657-256272', '2025-10-12 23:20:26', '2025-10-12 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(119, 'Anker PowerCore 20000mAh', 84, 1, NULL, NULL, 1000000.00, 90000.00, 'images/84.jpg', 1, '2025-01-10', '2025-01-10 20:20:26', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-501852-661477', '2025-01-10 23:20:26', '2025-01-10 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(120, 'Samsung Galaxy S21 Ultra 5G', 85, 1, NULL, NULL, 150000.00, 1000000.00, 'images/85.jpg', 1, '2024-10-21', '2024-10-21 20:20:26', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-699261-264694', '2024-10-21 23:20:26', '2024-10-21 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(121, 'Fujifilm X-T4', 86, 1, NULL, NULL, 600000.00, 3500000.00, 'images/86.jpg', 1, '2024-11-06', '2024-11-06 20:20:26', 1, 7, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-254286-398117', '2024-11-06 23:20:26', '2024-11-06 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(122, 'Sony Xperia 1 III', 87, 1, NULL, NULL, 300000.00, 200000.00, 'images/87.jpg', 1, '2025-01-09', '2025-01-09 20:20:26', 1, 6, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-259708-139461', '2025-01-09 23:20:26', '2025-01-09 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(123, 'Brother HL-L2350DW Laser Printer', 88, 1, NULL, NULL, 80000.00, 1200000.00, 'images/88.jpg', 1, '2024-09-06', '2024-09-06 20:20:26', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-168704-631934', '2024-09-06 23:20:26', '2024-09-06 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(124, 'Apple AirPods Pro', 89, 1, NULL, NULL, 1500000.00, 150000.00, 'images/89.jpg', 1, '2024-09-18', '2024-09-18 20:20:26', 1, 10, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-569851-341921', '2024-09-18 23:20:26', '2024-09-18 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(125, 'Brother HL-L2350DW Laser Printer', 90, 1, NULL, NULL, 1500000.00, 750000.00, 'images/90.jpg', 1, '2023-09-09', '2023-09-09 20:20:26', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-595273-599563', '2023-09-09 23:20:26', '2023-09-09 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(126, 'Amazon Echo Dot (4th Gen)', 91, 1, NULL, NULL, 200000.00, 3500000.00, 'images/91.jpg', 1, '2024-05-04', '2024-05-04 20:20:26', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-761567-825916', '2024-05-04 23:20:26', '2024-05-04 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(127, 'Corsair K95 RGB Platinum Keyboard', 92, 1, NULL, NULL, 3500000.00, 150000.00, 'images/92.jpg', 1, '2024-10-08', '2024-10-08 20:20:26', 1, 5, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-638254-187931', '2024-10-08 23:20:26', '2024-10-08 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(128, 'Sigma 35mm f/1.4 Art Lens', 93, 1, NULL, NULL, 40000.00, 50000.00, 'images/93.jpg', 1, '2026-09-08', '2026-09-08 20:20:26', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-604432-621778', '2026-09-08 23:20:26', '2026-09-08 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(129, 'Sony SRS-XB43', 94, 1, NULL, NULL, 3400000.00, 600000.00, 'images/94.jpg', 1, '2024-10-14', '2024-10-14 20:20:26', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-724869-593059', '2024-10-14 23:20:26', '2024-10-14 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(130, 'LG Velvet 5G', 95, 1, NULL, NULL, 1400000.00, 5000.00, 'images/95.jpg', 1, '2024-08-03', '2024-08-03 20:20:26', 1, 11, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-892162-502388', '2024-08-03 23:20:26', '2024-08-03 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(131, 'Netatmo Weather Station', 96, 1, NULL, NULL, 3300000.00, 3400000.00, 'images/96.jpg', 1, '2024-09-24', '2024-09-24 20:20:26', 1, 8, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'Yes', '1740266426-799315-298861', '2024-09-24 23:20:26', '2024-09-24 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(132, 'Sony Xperia 5 III', 97, 1, NULL, NULL, 1400000.00, 2000000.00, 'images/97.jpg', 1, '2024-12-21', '2024-12-21 20:20:26', 1, 3, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-565786-361767', '2024-12-21 23:20:26', '2024-12-21 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(133, 'Alienware m15 R6', 98, 1, NULL, NULL, 200000.00, 3400000.00, 'images/98.jpg', 1, '2023-07-19', '2023-07-19 20:20:26', 1, 6, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-378469-304455', '2023-07-19 23:20:26', '2023-07-19 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"'),
(134, 'Motorola Moto G Power', 99, 1, NULL, NULL, 3200000.00, 300000.00, 'images/99.jpg', 1, '2025-04-15', '2025-04-15 20:20:26', 1, 7, NULL, 1, NULL, 1, 1, '\"[{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":1,\\\"max_qty\\\":5,\\\"price\\\":\\\"800\\\"},{\\\"id\\\":\\\"\\\",\\\"min_qty\\\":6,\\\"max_qty\\\":10,\\\"price\\\":\\\"900\\\"}]\"', 'No', '1740266426-702015-319041', '2025-04-15 23:20:26', '2025-04-15 23:20:26', NULL, NULL, 'Yes', '\"[\\\"Black\\\",\\\"Blue\\\"]\"', 'Yes', '\"[\\\"12\\\",\\\"43\\\"]\"');

-- --------------------------------------------------------

--
-- Table structure for table `products_best_deals`
--

CREATE TABLE `products_best_deals` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_best_deals`
--

INSERT INTO `products_best_deals` (`id`, `product`, `date_updated`, `user`) VALUES
(23, 168, '2022-10-07 08:01:24', 59);

-- --------------------------------------------------------

--
-- Table structure for table `products_featured`
--

CREATE TABLE `products_featured` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_featured`
--

INSERT INTO `products_featured` (`id`, `product`, `date_updated`, `user`) VALUES
(19, 168, '2022-10-07 08:01:20', 59),
(20, 169, '2022-10-11 08:46:03', 62);

-- --------------------------------------------------------

--
-- Table structure for table `products_searched`
--

CREATE TABLE `products_searched` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `product` int(11) NOT NULL,
  `search_query` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_searched`
--

INSERT INTO `products_searched` (`id`, `user`, `product`, `search_query`) VALUES
(752, 59, 168, 185),
(753, 59, 168, 186),
(754, 59, 168, 187),
(755, 59, 168, 188),
(756, 59, 168, 191),
(757, 59, 168, 194),
(758, 59, 168, 197),
(759, 59, 168, 200),
(760, 59, 168, 201),
(761, 59, 168, 202),
(762, 59, 168, 203),
(763, 59, 168, 204),
(764, 59, 168, 205),
(765, 59, 168, 206),
(766, 59, 168, 207),
(767, 59, 168, 208),
(768, 59, 168, 209),
(769, 59, 168, 210),
(770, 59, 168, 211),
(771, 59, 168, 213),
(772, 59, 168, 212),
(773, 59, 168, 214),
(774, 59, 168, 215),
(775, 59, 168, 216),
(776, 59, 168, 217),
(777, 59, 168, 218),
(778, 59, 168, 219),
(779, 59, 168, 220),
(780, 59, 168, 221),
(781, 59, 168, 222),
(782, 59, 168, 223),
(783, 59, 168, 224),
(784, 59, 168, 225),
(785, 59, 168, 226),
(786, 59, 168, 227),
(787, 59, 168, 228),
(788, 59, 168, 229),
(789, 59, 168, 230),
(790, 59, 168, 231),
(791, 59, 168, 232),
(792, 59, 168, 233),
(793, 59, 168, 234),
(794, 59, 168, 235),
(795, 59, 168, 236),
(796, 59, 168, 237),
(797, 59, 168, 238),
(798, 59, 168, 239),
(799, 59, 168, 240),
(800, 59, 168, 241),
(801, 59, 168, 242),
(802, 59, 168, 243),
(803, 59, 168, 244),
(804, 59, 168, 245),
(805, 59, 168, 246),
(806, 59, 168, 247),
(807, 59, 168, 248),
(808, 59, 168, 249),
(809, 59, 168, 250),
(810, 59, 168, 251),
(811, 59, 168, 252),
(812, 59, 168, 253),
(813, 59, 168, 254),
(814, 59, 168, 255),
(815, 59, 168, 256),
(816, 59, 168, 257),
(817, 59, 168, 258),
(818, 59, 168, 259),
(819, 59, 168, 260),
(820, 59, 168, 261),
(821, 59, 168, 262),
(822, 59, 168, 263),
(823, 59, 168, 264),
(824, 59, 168, 265),
(825, 59, 168, 266),
(826, 59, 168, 267),
(827, 59, 168, 268),
(828, 59, 168, 269),
(829, 59, 168, 270),
(830, 59, 168, 271),
(831, 59, 168, 272),
(832, 59, 168, 273),
(833, 62, 169, 274),
(834, 62, 169, 275),
(835, 62, 169, 276),
(836, 62, 169, 277),
(837, 62, 169, 278),
(838, 62, 169, 279),
(839, 62, 169, 280),
(840, 62, 169, 281),
(841, 62, 169, 282),
(842, 62, 169, 283),
(843, 62, 169, 284),
(844, 62, 169, 285),
(845, 62, 169, 286),
(846, 62, 169, 287),
(847, 62, 169, 288),
(848, 62, 169, 289),
(849, 62, 169, 290),
(850, 62, 168, 291),
(851, 62, 168, 292),
(852, 62, 168, 293),
(853, 62, 168, 294),
(854, 62, 168, 295),
(855, 62, 168, 296),
(856, 62, 168, 297),
(857, 62, 168, 298),
(858, 62, 168, 299),
(859, 62, 168, 300),
(860, 62, 168, 301),
(861, 62, 168, 302),
(862, 62, 168, 303),
(863, 62, 168, 304),
(864, NULL, 168, 305),
(865, NULL, 168, 306),
(866, NULL, 168, 307),
(867, NULL, 168, 308),
(868, NULL, 168, 309),
(869, NULL, 168, 310),
(870, NULL, 168, 311),
(871, NULL, 168, 312),
(872, NULL, 168, 313),
(873, NULL, 168, 314),
(874, NULL, 168, 315),
(875, NULL, 168, 316),
(876, NULL, 168, 317);

-- --------------------------------------------------------

--
-- Table structure for table `products_search_base`
--

CREATE TABLE `products_search_base` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `search_term` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_search_base`
--

INSERT INTO `products_search_base` (`id`, `user`, `search_term`, `date_added`) VALUES
(176, 59, 'asha', '2022-10-07 06:23:46'),
(177, 59, 'asha', '2022-10-07 06:58:45'),
(178, 59, 'fff', '2022-10-07 07:04:07'),
(179, 59, 'fff', '2022-10-07 07:04:50'),
(180, 59, 'fff', '2022-10-07 07:06:09'),
(181, 59, 'fff', '2022-10-07 07:11:48'),
(182, 59, 'ff', '2022-10-07 07:11:53'),
(183, 59, 'fff', '2022-10-07 12:01:02'),
(184, 59, 'ff', '2022-10-07 12:01:10'),
(185, 59, 'ka', '2022-10-07 12:01:12'),
(186, 59, 'kab', '2022-10-07 12:01:15'),
(187, 59, 'kaba', '2022-10-07 12:01:15'),
(188, 59, 'kab', '2022-10-07 12:06:45'),
(189, 59, 'fff', '2022-10-07 12:08:35'),
(190, 59, 'ff', '2022-10-07 12:08:46'),
(191, 59, 'ka', '2022-10-07 12:08:49'),
(192, 59, 'fff', '2022-10-07 12:10:08'),
(193, 59, 'ff', '2022-10-07 12:10:15'),
(194, 59, 'ka', '2022-10-07 12:10:17'),
(195, 59, 'fff', '2022-10-07 12:11:16'),
(196, 59, 'ff', '2022-10-07 12:11:20'),
(197, 59, 'ka', '2022-10-07 12:11:21'),
(198, 59, 'fff', '2022-10-07 12:11:35'),
(199, 59, 'ff', '2022-10-07 12:11:39'),
(200, 59, 'ka', '2022-10-07 12:11:40'),
(201, 59, 'kab', '2022-10-07 12:11:42'),
(202, 59, 'kaba', '2022-10-07 12:13:48'),
(203, 59, 'kab', '2022-10-07 12:15:15'),
(204, 59, 'kaba', '2022-10-07 12:15:52'),
(205, 59, 'kabal', '2022-10-07 12:16:15'),
(206, 59, 'kabale', '2022-10-07 12:16:43'),
(207, 59, 'kabal', '2022-10-07 12:16:56'),
(208, 59, 'kabale', '2022-10-07 12:17:29'),
(209, 59, 'kabal', '2022-10-07 12:17:31'),
(210, 59, 'kabale', '2022-10-07 12:18:10'),
(211, 59, 'kabal', '2022-10-07 12:18:17'),
(212, 59, 'kaba', '2022-10-08 07:17:43'),
(213, 59, 'kab', '2022-10-08 07:17:43'),
(214, 59, 'ka', '2022-10-08 07:17:44'),
(215, 59, 'ka', '2022-10-08 07:17:51'),
(216, 59, 'ka', '2022-10-08 07:20:04'),
(217, 59, 'ka', '2022-10-08 07:24:25'),
(218, 59, 'kab', '2022-10-08 07:24:25'),
(219, 59, 'ka', '2022-10-08 07:24:25'),
(220, 59, 'ka', '2022-10-08 07:25:07'),
(221, 59, 'kab', '2022-10-08 07:25:07'),
(222, 59, 'kaba', '2022-10-08 07:25:08'),
(223, 59, 'kaba', '2022-10-08 07:25:09'),
(224, 59, 'kaba', '2022-10-08 07:25:09'),
(225, 59, 'kaba', '2022-10-08 07:25:22'),
(226, 59, 'kabal', '2022-10-08 07:25:22'),
(227, 59, 'kabale', '2022-10-08 07:31:31'),
(228, 59, 'kabal', '2022-10-08 07:32:48'),
(229, 59, 'kaba', '2022-10-08 07:32:48'),
(230, 59, 'ka', '2022-10-08 08:08:45'),
(231, 59, 'ka', '2022-10-08 08:08:47'),
(232, 59, 'ka', '2022-10-08 08:08:49'),
(233, 59, 'ka', '2022-10-08 08:08:49'),
(234, 59, 'kab', '2022-10-08 08:08:49'),
(235, 59, 'kab', '2022-10-08 08:08:50'),
(236, 59, 'ka', '2022-10-08 08:08:50'),
(237, 59, 'ka', '2022-10-08 08:08:51'),
(238, 59, 'ka', '2022-10-08 08:08:58'),
(239, 59, 'ka', '2022-10-08 08:08:59'),
(240, 59, 'kab', '2022-10-08 08:08:59'),
(241, 59, 'kab', '2022-10-08 08:09:33'),
(242, 59, 'ka', '2022-10-08 08:09:33'),
(243, 59, 'ka', '2022-10-08 08:09:33'),
(244, 59, 'ka', '2022-10-08 08:09:35'),
(245, 59, 'ka', '2022-10-08 08:09:35'),
(246, 59, 'kab', '2022-10-08 08:09:35'),
(247, 59, 'ka', '2022-10-08 08:12:36'),
(248, 59, 'ka', '2022-10-08 08:12:37'),
(249, 59, 'kab', '2022-10-08 08:12:37'),
(250, 59, 'ka', '2022-10-08 08:15:24'),
(251, 59, 'ka', '2022-10-08 08:15:25'),
(252, 59, 'ka', '2022-10-08 08:15:26'),
(253, 59, 'ka', '2022-10-08 08:15:33'),
(254, 59, 'ka', '2022-10-08 08:15:35'),
(255, 59, 'ka', '2022-10-08 08:15:35'),
(256, 59, 'kab', '2022-10-08 08:15:35'),
(257, 59, 'ka', '2022-10-08 08:16:14'),
(258, 59, 'ka', '2022-10-08 08:16:14'),
(259, 59, 'kab', '2022-10-08 08:16:15'),
(260, 59, 'ka', '2022-10-08 08:16:43'),
(261, 59, 'ka', '2022-10-08 08:16:44'),
(262, 59, 'kab', '2022-10-08 08:16:44'),
(263, 59, 'ka', '2022-10-08 08:17:16'),
(264, 59, 'kab', '2022-10-08 08:17:16'),
(265, 59, 'ka', '2022-10-08 08:17:16'),
(266, 59, 'kab', '2022-10-08 08:17:17'),
(267, 59, 'kaba', '2022-10-08 08:17:17'),
(268, 59, 'ka', '2022-10-08 08:17:29'),
(269, 59, 'ka', '2022-10-08 08:17:29'),
(270, 59, 'kab', '2022-10-08 08:17:29'),
(271, 59, 'kab', '2022-10-08 08:17:51'),
(272, 59, 'ka', '2022-10-08 08:17:51'),
(273, 59, 'ka', '2022-10-08 08:17:51'),
(274, 62, 'ye', '2022-10-11 08:58:38'),
(275, 62, 'yel', '2022-10-11 08:58:38'),
(276, 62, 'ye', '2022-10-11 08:58:38'),
(277, 62, 'yel', '2022-10-11 08:58:41'),
(278, 62, 'yell', '2022-10-11 08:58:41'),
(279, 62, 'yello', '2022-10-11 08:58:41'),
(280, 62, 'yellow', '2022-10-11 08:58:42'),
(281, 62, 'yell', '2022-10-11 08:58:43'),
(282, 62, 'yello', '2022-10-11 08:58:43'),
(283, 62, 'yellow', '2022-10-11 08:59:20'),
(284, 62, 'yellow', '2022-10-11 08:59:20'),
(285, 62, 'yellow', '2022-10-11 08:59:20'),
(286, 62, 'yellow', '2022-10-11 08:59:20'),
(287, 62, 'yellow', '2022-10-11 09:01:37'),
(288, 62, 'yellow', '2022-10-11 09:01:37'),
(289, 62, 'yellow', '2022-10-11 09:01:38'),
(290, 62, 'yellow', '2022-10-11 09:02:08'),
(291, 62, 'ma', '2022-10-12 19:28:45'),
(292, 62, 'ma', '2022-10-13 12:31:31'),
(293, 62, 'ma', '2022-10-13 12:31:31'),
(294, 62, 'ma', '2022-10-13 12:31:31'),
(295, 62, 'mat', '2022-10-13 12:31:32'),
(296, 62, 'ma', '2022-10-13 12:31:41'),
(297, 62, 'ma', '2022-10-13 12:31:41'),
(298, 62, 'mat', '2022-10-13 12:31:41'),
(299, 62, 'mat', '2022-10-13 12:31:42'),
(300, 62, 'mato', '2022-10-13 12:31:42'),
(301, 62, 'mato', '2022-10-13 12:31:43'),
(302, 62, 'mato', '2022-10-13 12:31:43'),
(303, 62, 'mato', '2022-10-13 12:31:43'),
(304, 62, 'mato', '2022-10-13 12:32:06'),
(305, NULL, 'ma', '2022-10-24 11:35:09'),
(306, NULL, 'ma', '2022-10-24 11:35:09'),
(307, NULL, 'mat', '2022-10-24 11:35:09'),
(308, NULL, 'mat', '2022-10-24 11:35:10'),
(309, NULL, 'mat', '2022-10-24 11:35:11'),
(310, NULL, 'mat', '2022-10-24 11:35:11'),
(311, NULL, 'mat', '2022-10-24 11:36:10'),
(312, NULL, 'mat', '2022-10-24 11:36:23'),
(313, NULL, 'mat', '2022-10-24 11:36:52'),
(314, NULL, 'mat', '2022-10-24 11:37:01'),
(315, NULL, 'mat', '2022-10-24 11:37:52'),
(316, NULL, 'mat', '2022-10-24 11:38:06'),
(317, NULL, 'mat', '2022-10-24 11:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `products_special_offers`
--

CREATE TABLE `products_special_offers` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_special_offers`
--

INSERT INTO `products_special_offers` (`id`, `product`, `date_updated`, `user`) VALUES
(25, 168, '2022-10-07 08:01:13', 59),
(26, 169, '2022-10-11 08:46:51', 62);

-- --------------------------------------------------------

--
-- Table structure for table `products_viewed`
--

CREATE TABLE `products_viewed` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_viewed`
--

INSERT INTO `products_viewed` (`id`, `product`, `user`, `date_added`) VALUES
(21711, 168, 59, '2022-10-08 07:31:42'),
(21712, 168, 59, '2022-10-08 07:32:56'),
(21713, 168, 59, '2022-10-08 07:37:33'),
(21714, 168, 59, '2022-10-08 07:39:45'),
(21715, 168, 59, '2022-10-08 07:40:58'),
(21716, 168, 59, '2022-10-08 08:13:28'),
(21717, 168, 59, '2022-10-08 08:17:13'),
(21718, 168, 59, '2022-10-08 08:17:26'),
(21719, 168, 0, '2022-10-10 06:26:10'),
(21720, 168, 0, '2022-10-10 06:27:00'),
(21721, 168, 0, '2022-10-10 06:27:55'),
(21722, 168, 0, '2022-10-10 06:28:14'),
(21723, 168, 0, '2022-10-10 06:28:36'),
(21724, 168, 0, '2022-10-10 06:30:52'),
(21725, 168, 62, '2022-10-10 10:46:05'),
(21726, 168, 62, '2022-10-11 07:08:47'),
(21727, 168, 62, '2022-10-11 07:09:58'),
(21728, 168, 62, '2022-10-11 07:11:32'),
(21729, 168, 62, '2022-10-11 07:11:35'),
(21730, 168, 62, '2022-10-11 07:11:48'),
(21731, 168, 62, '2022-10-11 07:12:04'),
(21732, 168, 62, '2022-10-11 07:12:49'),
(21733, 168, 62, '2022-10-11 07:13:04'),
(21734, 168, 62, '2022-10-11 07:13:14'),
(21735, 168, 62, '2022-10-11 07:13:50'),
(21736, 168, 62, '2022-10-11 07:14:15'),
(21737, 168, 62, '2022-10-11 07:16:22'),
(21738, 168, 62, '2022-10-11 07:18:51'),
(21739, 168, 62, '2022-10-11 07:19:14'),
(21740, 168, 62, '2022-10-11 07:19:29'),
(21741, 168, 62, '2022-10-11 07:19:45'),
(21742, 168, 62, '2022-10-11 07:20:29'),
(21743, 168, 62, '2022-10-11 07:20:55'),
(21744, 168, 62, '2022-10-11 07:21:42'),
(21745, 168, 62, '2022-10-11 07:22:05'),
(21746, 168, 62, '2022-10-11 07:22:35'),
(21747, 168, 62, '2022-10-11 07:22:55'),
(21748, 168, 62, '2022-10-11 07:23:22'),
(21749, 168, 62, '2022-10-11 07:24:32'),
(21750, 168, 62, '2022-10-11 07:25:27'),
(21751, 168, 62, '2022-10-11 07:27:37'),
(21752, 168, 62, '2022-10-11 08:42:06'),
(21753, 169, 62, '2022-10-11 09:18:39'),
(21754, 168, 62, '2022-10-11 09:19:15'),
(21755, 168, 62, '2022-10-11 09:20:47'),
(21756, 168, 62, '2022-10-11 09:21:15'),
(21757, 168, 62, '2022-10-11 09:21:27'),
(21758, 168, 62, '2022-10-11 09:21:31'),
(21759, 168, 62, '2022-10-11 09:21:37'),
(21760, 168, 62, '2022-10-11 09:21:42'),
(21761, 168, 62, '2022-10-11 09:23:35'),
(21762, 168, 62, '2022-10-11 09:23:41'),
(21763, 168, 62, '2022-10-11 09:24:20'),
(21764, 168, 62, '2022-10-11 09:25:29'),
(21765, 168, 62, '2022-10-11 09:26:10'),
(21766, 168, 62, '2022-10-11 09:26:54'),
(21767, 168, 62, '2022-10-11 09:27:29'),
(21768, 168, 62, '2022-10-11 09:27:53'),
(21769, 168, 62, '2022-10-11 09:28:29'),
(21770, 168, 62, '2022-10-11 09:29:11'),
(21771, 168, 62, '2022-10-11 09:29:55'),
(21772, 168, 62, '2022-10-11 09:30:27'),
(21773, 168, 62, '2022-10-11 09:31:04'),
(21774, 168, 62, '2022-10-11 09:31:40'),
(21775, 168, 62, '2022-10-11 09:32:25'),
(21776, 168, 62, '2022-10-11 09:32:34'),
(21777, 168, 62, '2022-10-11 09:33:09'),
(21778, 168, 62, '2022-10-11 09:37:08'),
(21779, 168, 62, '2022-10-11 09:37:19'),
(21780, 168, 62, '2022-10-11 09:37:57'),
(21781, 168, 62, '2022-10-11 09:38:44'),
(21782, 168, 62, '2022-10-11 09:39:16'),
(21783, 168, 62, '2022-10-11 09:39:36'),
(21784, 168, 62, '2022-10-11 09:41:03'),
(21785, 168, 62, '2022-10-11 09:41:19'),
(21786, 168, 62, '2022-10-11 09:41:50'),
(21787, 168, 62, '2022-10-11 09:42:13'),
(21788, 168, 62, '2022-10-11 09:43:54'),
(21789, 168, 62, '2022-10-11 09:44:46'),
(21790, 169, 62, '2022-10-11 09:45:11'),
(21791, 168, 62, '2022-10-11 09:47:38'),
(21792, 168, 62, '2022-10-11 09:47:58'),
(21793, 168, 62, '2022-10-11 09:48:03'),
(21794, 168, 62, '2022-10-11 09:48:06'),
(21795, 168, 62, '2022-10-11 09:48:14'),
(21796, 168, 62, '2022-10-11 09:48:21'),
(21797, 168, 62, '2022-10-11 09:48:26'),
(21798, 168, 62, '2022-10-11 09:48:45'),
(21799, 168, 62, '2022-10-11 09:50:19'),
(21800, 168, 62, '2022-10-11 09:50:31'),
(21801, 168, 62, '2022-10-11 09:50:37'),
(21802, 168, 62, '2022-10-11 09:50:49'),
(21803, 169, 62, '2022-10-11 09:51:05'),
(21804, 169, 62, '2022-10-11 09:51:56'),
(21805, 169, 62, '2022-10-11 09:57:33'),
(21806, 169, 62, '2022-10-11 10:00:42'),
(21807, 169, 62, '2022-10-13 10:13:03'),
(21808, 169, 62, '2022-10-13 10:14:30'),
(21809, 169, 62, '2022-10-13 10:18:05'),
(21810, 169, 62, '2022-10-13 10:20:09'),
(21811, 169, 62, '2022-10-13 12:09:17'),
(21812, 169, 62, '2022-10-13 12:10:14'),
(21813, 169, 62, '2022-10-13 12:10:32'),
(21814, 169, 62, '2022-10-13 12:10:40'),
(21815, 169, 62, '2022-10-13 12:10:51'),
(21816, 169, 62, '2022-10-13 12:11:17'),
(21817, 168, 62, '2022-10-13 12:31:34'),
(21818, 168, 62, '2022-10-18 10:28:14'),
(21819, 169, 62, '2022-10-19 11:28:09'),
(21820, 169, 62, '2022-10-19 11:29:31'),
(21821, 169, 0, '2022-10-24 09:33:05'),
(21822, 169, 0, '2022-10-24 10:54:10'),
(21823, 168, 0, '2022-11-06 10:38:58'),
(21824, 168, 63, '2022-11-08 12:09:43'),
(21825, 168, 63, '2022-11-08 13:41:06'),
(21826, 168, 63, '2022-11-12 08:40:20'),
(21827, 168, 63, '2022-11-12 08:41:41'),
(21828, 168, 63, '2022-11-12 08:42:27'),
(21829, 168, 63, '2022-11-12 08:43:42'),
(21830, 168, 63, '2022-11-12 08:44:01'),
(21831, 168, 63, '2022-11-12 08:45:02'),
(21832, 168, 63, '2022-11-12 08:45:20'),
(21833, 169, 63, '2022-11-12 10:13:05'),
(21834, 169, 63, '2022-11-12 10:13:13'),
(21835, 169, 63, '2022-11-12 10:14:31'),
(21836, 169, 63, '2022-11-12 10:14:37'),
(21837, 169, 63, '2022-11-12 10:15:15'),
(21838, 169, 63, '2022-11-12 10:15:39'),
(21839, 169, 63, '2022-11-12 10:15:49'),
(21840, 169, 63, '2022-11-12 10:16:45'),
(21841, 169, 63, '2022-11-12 10:16:53'),
(21842, 169, 63, '2022-11-12 10:17:39'),
(21843, 169, 63, '2022-11-12 10:17:42'),
(21844, 169, 63, '2022-11-12 10:19:38'),
(21845, 169, 63, '2022-11-12 10:19:43'),
(21846, 169, 63, '2022-11-12 10:20:05'),
(21847, 169, 63, '2022-11-15 16:53:54'),
(21848, 168, 0, '2023-03-20 12:04:09'),
(21849, 168, 0, '2023-03-20 12:04:14'),
(21850, 168, 0, '2023-03-20 12:14:26'),
(21851, 168, 0, '2023-03-20 12:14:31'),
(21852, 168, 0, '2023-03-20 12:17:19'),
(21853, 168, 0, '2023-03-20 12:17:23'),
(21854, 168, 0, '2023-03-20 12:17:38'),
(21855, 168, 0, '2023-03-20 12:17:40'),
(21856, 168, 0, '2023-03-20 12:17:54'),
(21857, 168, 0, '2023-03-20 12:17:55'),
(21858, 168, 0, '2023-03-20 12:18:05'),
(21859, 168, 0, '2023-03-20 12:18:06'),
(21860, 168, 0, '2023-03-20 12:18:19'),
(21861, 168, 0, '2023-03-20 12:18:22'),
(21862, 168, 0, '2023-03-20 12:29:30'),
(21863, 168, 0, '2023-03-20 12:29:32'),
(21864, 168, 0, '2023-03-20 12:29:50'),
(21865, 168, 0, '2023-03-20 12:29:55'),
(21866, 168, 0, '2023-03-20 12:30:09'),
(21867, 168, 0, '2023-03-20 12:30:11'),
(21868, 168, 0, '2023-03-20 12:31:14'),
(21869, 168, 0, '2023-03-20 12:31:15'),
(21870, 168, 0, '2023-03-20 12:34:48'),
(21871, 168, 0, '2023-03-20 12:34:50'),
(21872, 168, 0, '2023-03-20 12:36:32'),
(21873, 168, 0, '2023-03-20 12:36:36'),
(21874, 168, 0, '2023-03-20 12:38:07'),
(21875, 168, 0, '2023-03-20 12:38:10'),
(21876, 168, 0, '2023-03-20 12:38:34'),
(21877, 168, 0, '2023-03-20 12:38:38'),
(21878, 168, 0, '2023-03-20 12:39:16'),
(21879, 168, 0, '2023-03-20 12:41:16'),
(21880, 168, 0, '2023-03-20 12:41:39'),
(21881, 168, 0, '2023-03-20 12:43:30'),
(21882, 168, 0, '2023-03-20 12:43:33'),
(21883, 169, 0, '2023-03-20 12:44:18'),
(21884, 169, 0, '2023-03-20 12:44:21'),
(21885, 169, 0, '2023-03-20 12:50:16'),
(21886, 169, 0, '2023-03-20 12:50:19'),
(21887, 168, 0, '2023-03-20 12:51:31'),
(21888, 169, 0, '2023-03-20 12:53:07'),
(21889, 169, 0, '2023-03-20 12:54:08'),
(21890, 169, 0, '2023-03-20 12:54:10'),
(21891, 169, 0, '2023-03-20 12:56:26'),
(21892, 169, 0, '2023-03-20 12:56:31'),
(21893, 168, 0, '2023-03-20 12:57:06'),
(21894, 169, 0, '2023-03-20 12:58:44'),
(21895, 169, 0, '2023-03-20 12:58:51'),
(21896, 169, 0, '2023-03-20 12:59:30'),
(21897, 169, 0, '2023-03-20 12:59:35'),
(21898, 169, 0, '2023-03-20 13:00:59'),
(21899, 169, 0, '2023-03-20 13:01:02'),
(21900, 169, 0, '2023-03-20 13:01:28'),
(21901, 169, 0, '2023-03-20 13:01:39'),
(21902, 169, 0, '2023-03-20 13:03:16'),
(21903, 169, 0, '2023-03-20 13:03:25'),
(21904, 169, 0, '2023-03-20 13:03:29'),
(21905, 169, 0, '2023-03-20 13:03:31'),
(21906, 169, 0, '2023-03-20 13:05:29'),
(21907, 169, 0, '2023-03-20 13:05:31'),
(21908, 169, 0, '2023-03-20 13:06:51'),
(21909, 169, 0, '2023-03-20 13:07:04'),
(21910, 169, 0, '2023-03-20 13:08:00'),
(21911, 169, 0, '2023-03-20 13:08:03'),
(21912, 169, 0, '2023-03-20 13:12:32'),
(21913, 169, 0, '2023-03-20 13:12:35'),
(21914, 169, 0, '2023-03-20 13:13:00'),
(21915, 169, 0, '2023-03-20 13:13:03'),
(21916, 169, 0, '2023-03-20 13:13:40'),
(21917, 169, 0, '2023-03-20 13:13:42'),
(21918, 169, 0, '2023-03-20 13:20:56'),
(21919, 169, 0, '2023-03-20 13:20:59'),
(21920, 169, 0, '2023-03-20 13:26:47'),
(21921, 169, 0, '2023-03-20 13:26:50'),
(21922, 169, 0, '2023-03-20 13:27:02'),
(21923, 169, 0, '2023-03-20 13:27:03'),
(21924, 169, 0, '2023-03-20 13:36:34'),
(21925, 169, 0, '2023-03-20 13:36:37'),
(21926, 176, 0, '2023-03-26 10:55:33'),
(21927, 176, 0, '2023-03-26 10:56:02'),
(21928, 176, 0, '2023-03-26 11:13:00'),
(21929, 175, 0, '2023-03-26 12:27:32'),
(21930, 175, 0, '2023-03-26 12:27:36'),
(21931, 175, 0, '2023-03-26 12:27:36'),
(21932, 175, 0, '2023-03-26 12:28:48'),
(21933, 180, 0, '2023-03-26 12:29:42'),
(21934, 180, 0, '2023-03-26 12:29:46'),
(21935, 180, 0, '2023-03-26 13:00:09'),
(21936, 176, 0, '2023-03-26 14:33:17'),
(21937, 172, 0, '2023-03-26 14:33:17'),
(21938, 176, 0, '2023-03-26 14:33:17'),
(21939, 176, 0, '2023-03-26 14:33:18'),
(21940, 176, 0, '2023-03-26 14:33:18'),
(21941, 176, 0, '2023-03-26 14:33:19'),
(21942, 177, 0, '2023-03-26 14:41:57'),
(21943, 173, 0, '2023-03-26 14:55:43'),
(21944, 177, 0, '2023-03-26 15:02:47'),
(21945, 179, 0, '2023-03-26 16:15:46'),
(21946, 180, 0, '2023-03-26 18:12:45'),
(21947, 180, 0, '2023-03-26 18:12:45'),
(21948, 175, 0, '2023-03-26 19:15:50'),
(21949, 175, 0, '2023-03-26 19:15:50'),
(21950, 175, 0, '2023-03-26 19:15:50'),
(21951, 175, 0, '2023-03-26 19:15:51'),
(21952, 176, 0, '2023-03-26 19:51:14'),
(21953, 173, 0, '2023-03-26 20:17:36'),
(21954, 173, 0, '2023-03-26 21:35:05'),
(21955, 176, 0, '2023-03-26 21:35:07'),
(21956, 180, 0, '2023-03-26 21:54:15'),
(21957, 180, 0, '2023-03-27 00:35:46'),
(21958, 180, 0, '2023-03-27 03:15:04'),
(21959, 180, 0, '2023-03-27 03:15:04'),
(21960, 173, 0, '2023-03-27 06:50:53'),
(21961, 172, 0, '2023-03-27 06:50:54'),
(21962, 180, 0, '2023-03-27 06:50:54'),
(21963, 172, 0, '2023-03-27 06:50:54'),
(21964, 173, 0, '2023-03-27 06:50:54'),
(21965, 173, 0, '2023-03-27 06:50:54'),
(21966, 172, 0, '2023-03-27 06:50:54'),
(21967, 180, 0, '2023-03-27 06:50:54'),
(21968, 180, 0, '2023-03-27 06:50:54'),
(21969, 179, 0, '2023-03-27 06:51:54'),
(21970, 173, 0, '2023-03-27 11:49:11'),
(21971, 172, 0, '2023-03-27 21:12:41'),
(21972, 176, 0, '2023-03-28 02:21:33'),
(21973, 176, 0, '2023-03-28 02:21:33'),
(21974, 180, 0, '2023-03-28 03:19:10'),
(21975, 170, 0, '2023-03-29 09:09:33'),
(21976, 176, 0, '2023-03-29 16:29:04'),
(21977, 176, 0, '2023-03-29 16:29:04'),
(21978, 176, 0, '2023-03-29 16:29:04'),
(21979, 176, 0, '2023-03-29 16:29:04'),
(21980, 176, 0, '2023-03-29 16:29:04'),
(21981, 178, 0, '2023-03-29 18:04:50'),
(21982, 180, 0, '2023-03-29 19:58:45'),
(21983, 179, 0, '2023-03-29 20:05:52'),
(21984, 180, 0, '2023-03-30 01:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `products_view_location`
--

CREATE TABLE `products_view_location` (
  `id` int(11) NOT NULL,
  `product_view_id` int(11) NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_view_location`
--

INSERT INTO `products_view_location` (`id`, `product_view_id`, `country`, `city`, `region`) VALUES
(21711, 21711, 'Unknown', 'Unknown', 'Unknown'),
(21712, 21712, 'Unknown', 'Unknown', 'Unknown'),
(21713, 21713, 'Unknown', 'Unknown', 'Unknown'),
(21714, 21714, 'Unknown', 'Unknown', 'Unknown'),
(21715, 21715, 'Unknown', 'Unknown', 'Unknown'),
(21716, 21716, 'Unknown', 'Unknown', 'Unknown'),
(21717, 21717, 'Unknown', 'Unknown', 'Unknown'),
(21718, 21718, 'Unknown', 'Unknown', 'Unknown'),
(21719, 21719, 'Unknown', 'Unknown', 'Unknown'),
(21720, 21720, 'Unknown', 'Unknown', 'Unknown'),
(21721, 21721, 'Unknown', 'Unknown', 'Unknown'),
(21722, 21722, 'Unknown', 'Unknown', 'Unknown'),
(21723, 21723, 'Unknown', 'Unknown', 'Unknown'),
(21724, 21724, 'Unknown', 'Unknown', 'Unknown'),
(21725, 21725, 'Unknown', 'Unknown', 'Unknown'),
(21726, 21726, 'Unknown', 'Unknown', 'Unknown'),
(21727, 21727, 'Unknown', 'Unknown', 'Unknown'),
(21728, 21728, 'Unknown', 'Unknown', 'Unknown'),
(21729, 21729, 'Unknown', 'Unknown', 'Unknown'),
(21730, 21730, 'Unknown', 'Unknown', 'Unknown'),
(21731, 21731, 'Unknown', 'Unknown', 'Unknown'),
(21732, 21732, 'Unknown', 'Unknown', 'Unknown'),
(21733, 21733, 'Unknown', 'Unknown', 'Unknown'),
(21734, 21734, 'Unknown', 'Unknown', 'Unknown'),
(21735, 21735, 'Unknown', 'Unknown', 'Unknown'),
(21736, 21736, 'Unknown', 'Unknown', 'Unknown'),
(21737, 21737, 'Unknown', 'Unknown', 'Unknown'),
(21738, 21738, 'Unknown', 'Unknown', 'Unknown'),
(21739, 21739, 'Unknown', 'Unknown', 'Unknown'),
(21740, 21740, 'Unknown', 'Unknown', 'Unknown'),
(21741, 21741, 'Unknown', 'Unknown', 'Unknown'),
(21742, 21742, 'Unknown', 'Unknown', 'Unknown'),
(21743, 21743, 'Unknown', 'Unknown', 'Unknown'),
(21744, 21744, 'Unknown', 'Unknown', 'Unknown'),
(21745, 21745, 'Unknown', 'Unknown', 'Unknown'),
(21746, 21746, 'Unknown', 'Unknown', 'Unknown'),
(21747, 21747, 'Unknown', 'Unknown', 'Unknown'),
(21748, 21748, 'Unknown', 'Unknown', 'Unknown'),
(21749, 21749, 'Unknown', 'Unknown', 'Unknown'),
(21750, 21750, 'Unknown', 'Unknown', 'Unknown'),
(21751, 21751, 'Unknown', 'Unknown', 'Unknown'),
(21752, 21752, 'Unknown', 'Unknown', 'Unknown'),
(21753, 21753, 'Unknown', 'Unknown', 'Unknown'),
(21754, 21754, 'Unknown', 'Unknown', 'Unknown'),
(21755, 21755, 'Unknown', 'Unknown', 'Unknown'),
(21756, 21756, 'Unknown', 'Unknown', 'Unknown'),
(21757, 21757, 'Unknown', 'Unknown', 'Unknown'),
(21758, 21758, 'Unknown', 'Unknown', 'Unknown'),
(21759, 21759, 'Unknown', 'Unknown', 'Unknown'),
(21760, 21760, 'Unknown', 'Unknown', 'Unknown'),
(21761, 21761, 'Unknown', 'Unknown', 'Unknown'),
(21762, 21762, 'Unknown', 'Unknown', 'Unknown'),
(21763, 21763, 'Unknown', 'Unknown', 'Unknown'),
(21764, 21764, 'Unknown', 'Unknown', 'Unknown'),
(21765, 21765, 'Unknown', 'Unknown', 'Unknown'),
(21766, 21766, 'Unknown', 'Unknown', 'Unknown'),
(21767, 21767, 'Unknown', 'Unknown', 'Unknown'),
(21768, 21768, 'Unknown', 'Unknown', 'Unknown'),
(21769, 21769, 'Unknown', 'Unknown', 'Unknown'),
(21770, 21770, 'Unknown', 'Unknown', 'Unknown'),
(21771, 21771, 'Unknown', 'Unknown', 'Unknown'),
(21772, 21772, 'Unknown', 'Unknown', 'Unknown'),
(21773, 21773, 'Unknown', 'Unknown', 'Unknown'),
(21774, 21774, 'Unknown', 'Unknown', 'Unknown'),
(21775, 21775, 'Unknown', 'Unknown', 'Unknown'),
(21776, 21776, 'Unknown', 'Unknown', 'Unknown'),
(21777, 21777, 'Unknown', 'Unknown', 'Unknown'),
(21778, 21778, 'Unknown', 'Unknown', 'Unknown'),
(21779, 21779, 'Unknown', 'Unknown', 'Unknown'),
(21780, 21780, 'Unknown', 'Unknown', 'Unknown'),
(21781, 21781, 'Unknown', 'Unknown', 'Unknown'),
(21782, 21782, 'Unknown', 'Unknown', 'Unknown'),
(21783, 21783, 'Unknown', 'Unknown', 'Unknown'),
(21784, 21784, 'Unknown', 'Unknown', 'Unknown'),
(21785, 21785, 'Unknown', 'Unknown', 'Unknown'),
(21786, 21786, 'Unknown', 'Unknown', 'Unknown'),
(21787, 21787, 'Unknown', 'Unknown', 'Unknown'),
(21788, 21788, 'Unknown', 'Unknown', 'Unknown'),
(21789, 21789, 'Unknown', 'Unknown', 'Unknown'),
(21790, 21790, 'Unknown', 'Unknown', 'Unknown'),
(21791, 21791, 'Unknown', 'Unknown', 'Unknown'),
(21792, 21792, 'Unknown', 'Unknown', 'Unknown'),
(21793, 21793, 'Unknown', 'Unknown', 'Unknown'),
(21794, 21794, 'Unknown', 'Unknown', 'Unknown'),
(21795, 21795, 'Unknown', 'Unknown', 'Unknown'),
(21796, 21796, 'Unknown', 'Unknown', 'Unknown'),
(21797, 21797, 'Unknown', 'Unknown', 'Unknown'),
(21798, 21798, 'Unknown', 'Unknown', 'Unknown'),
(21799, 21799, 'Unknown', 'Unknown', 'Unknown'),
(21800, 21800, 'Unknown', 'Unknown', 'Unknown'),
(21801, 21801, 'Unknown', 'Unknown', 'Unknown'),
(21802, 21802, 'Unknown', 'Unknown', 'Unknown'),
(21803, 21803, 'Unknown', 'Unknown', 'Unknown'),
(21804, 21804, 'Unknown', 'Unknown', 'Unknown'),
(21805, 21805, 'Unknown', 'Unknown', 'Unknown'),
(21806, 21806, 'Unknown', 'Unknown', 'Unknown'),
(21807, 21807, 'Unknown', 'Unknown', 'Unknown'),
(21808, 21808, 'Unknown', 'Unknown', 'Unknown'),
(21809, 21809, 'Unknown', 'Unknown', 'Unknown'),
(21810, 21810, 'Unknown', 'Unknown', 'Unknown'),
(21811, 21811, 'Unknown', 'Unknown', 'Unknown'),
(21812, 21812, 'Unknown', 'Unknown', 'Unknown'),
(21813, 21813, 'Unknown', 'Unknown', 'Unknown'),
(21814, 21814, 'Unknown', 'Unknown', 'Unknown'),
(21815, 21815, 'Unknown', 'Unknown', 'Unknown'),
(21816, 21816, 'Unknown', 'Unknown', 'Unknown'),
(21817, 21817, 'Unknown', 'Unknown', 'Unknown'),
(21818, 21818, 'Unknown', 'Unknown', 'Unknown'),
(21819, 21819, 'Unknown', 'Unknown', 'Unknown'),
(21820, 21820, 'Unknown', 'Unknown', 'Unknown'),
(21821, 21821, 'Unknown', 'Unknown', 'Unknown'),
(21822, 21822, 'Unknown', 'Unknown', 'Unknown'),
(21823, 21823, 'Unknown', 'Unknown', 'Unknown'),
(21824, 21824, 'Unknown', 'Unknown', 'Unknown'),
(21825, 21825, 'Unknown', 'Unknown', 'Unknown'),
(21826, 21826, 'Unknown', 'Unknown', 'Unknown'),
(21827, 21827, 'Unknown', 'Unknown', 'Unknown'),
(21828, 21828, 'Unknown', 'Unknown', 'Unknown'),
(21829, 21829, 'Unknown', 'Unknown', 'Unknown'),
(21830, 21830, 'Unknown', 'Unknown', 'Unknown'),
(21831, 21831, 'Unknown', 'Unknown', 'Unknown'),
(21832, 21832, 'Unknown', 'Unknown', 'Unknown'),
(21833, 21833, 'Unknown', 'Unknown', 'Unknown'),
(21834, 21834, 'Unknown', 'Unknown', 'Unknown'),
(21835, 21835, 'Unknown', 'Unknown', 'Unknown'),
(21836, 21836, 'Unknown', 'Unknown', 'Unknown'),
(21837, 21837, 'Unknown', 'Unknown', 'Unknown'),
(21838, 21838, 'Unknown', 'Unknown', 'Unknown'),
(21839, 21839, 'Unknown', 'Unknown', 'Unknown'),
(21840, 21840, 'Unknown', 'Unknown', 'Unknown'),
(21841, 21841, 'Unknown', 'Unknown', 'Unknown'),
(21842, 21842, 'Unknown', 'Unknown', 'Unknown'),
(21843, 21843, 'Unknown', 'Unknown', 'Unknown'),
(21844, 21844, 'Unknown', 'Unknown', 'Unknown'),
(21845, 21845, 'Unknown', 'Unknown', 'Unknown'),
(21846, 21846, 'Unknown', 'Unknown', 'Unknown'),
(21847, 21847, 'Unknown', 'Unknown', 'Unknown'),
(21848, 21848, 'Unknown', 'Unknown', 'Unknown'),
(21849, 21849, 'Unknown', 'Unknown', 'Unknown'),
(21850, 21850, 'Unknown', 'Unknown', 'Unknown'),
(21851, 21851, 'Unknown', 'Unknown', 'Unknown'),
(21852, 21852, 'Unknown', 'Unknown', 'Unknown'),
(21853, 21853, 'Unknown', 'Unknown', 'Unknown'),
(21854, 21854, 'Unknown', 'Unknown', 'Unknown'),
(21855, 21855, 'Unknown', 'Unknown', 'Unknown'),
(21856, 21856, 'Unknown', 'Unknown', 'Unknown'),
(21857, 21857, 'Unknown', 'Unknown', 'Unknown'),
(21858, 21858, 'Unknown', 'Unknown', 'Unknown'),
(21859, 21859, 'Unknown', 'Unknown', 'Unknown'),
(21860, 21860, 'Unknown', 'Unknown', 'Unknown'),
(21861, 21861, 'Unknown', 'Unknown', 'Unknown'),
(21862, 21862, 'Unknown', 'Unknown', 'Unknown'),
(21863, 21863, 'Unknown', 'Unknown', 'Unknown'),
(21864, 21864, 'Unknown', 'Unknown', 'Unknown'),
(21865, 21865, 'Unknown', 'Unknown', 'Unknown'),
(21866, 21866, 'Unknown', 'Unknown', 'Unknown'),
(21867, 21867, 'Unknown', 'Unknown', 'Unknown'),
(21868, 21868, 'Unknown', 'Unknown', 'Unknown'),
(21869, 21869, 'Unknown', 'Unknown', 'Unknown'),
(21870, 21870, 'Unknown', 'Unknown', 'Unknown'),
(21871, 21871, 'Unknown', 'Unknown', 'Unknown'),
(21872, 21872, 'Unknown', 'Unknown', 'Unknown'),
(21873, 21873, 'Unknown', 'Unknown', 'Unknown'),
(21874, 21874, 'Unknown', 'Unknown', 'Unknown'),
(21875, 21875, 'Unknown', 'Unknown', 'Unknown'),
(21876, 21876, 'Unknown', 'Unknown', 'Unknown'),
(21877, 21877, 'Unknown', 'Unknown', 'Unknown'),
(21878, 21878, 'Unknown', 'Unknown', 'Unknown'),
(21879, 21879, 'Unknown', 'Unknown', 'Unknown'),
(21880, 21880, 'Unknown', 'Unknown', 'Unknown'),
(21881, 21881, 'Unknown', 'Unknown', 'Unknown'),
(21882, 21882, 'Unknown', 'Unknown', 'Unknown'),
(21883, 21883, 'Unknown', 'Unknown', 'Unknown'),
(21884, 21884, 'Unknown', 'Unknown', 'Unknown'),
(21885, 21885, 'Unknown', 'Unknown', 'Unknown'),
(21886, 21886, 'Unknown', 'Unknown', 'Unknown'),
(21887, 21887, 'Unknown', 'Unknown', 'Unknown'),
(21888, 21888, 'Unknown', 'Unknown', 'Unknown'),
(21889, 21889, 'Unknown', 'Unknown', 'Unknown'),
(21890, 21890, 'Unknown', 'Unknown', 'Unknown'),
(21891, 21891, 'Unknown', 'Unknown', 'Unknown'),
(21892, 21892, 'Unknown', 'Unknown', 'Unknown'),
(21893, 21893, 'Unknown', 'Unknown', 'Unknown'),
(21894, 21894, 'Unknown', 'Unknown', 'Unknown'),
(21895, 21895, 'Unknown', 'Unknown', 'Unknown'),
(21896, 21896, 'Unknown', 'Unknown', 'Unknown'),
(21897, 21897, 'Unknown', 'Unknown', 'Unknown'),
(21898, 21898, 'Unknown', 'Unknown', 'Unknown'),
(21899, 21899, 'Unknown', 'Unknown', 'Unknown'),
(21900, 21900, 'Unknown', 'Unknown', 'Unknown'),
(21901, 21901, 'Unknown', 'Unknown', 'Unknown'),
(21902, 21902, 'Unknown', 'Unknown', 'Unknown'),
(21903, 21903, 'Unknown', 'Unknown', 'Unknown'),
(21904, 21904, 'Unknown', 'Unknown', 'Unknown'),
(21905, 21905, 'Unknown', 'Unknown', 'Unknown'),
(21906, 21906, 'Unknown', 'Unknown', 'Unknown'),
(21907, 21907, 'Unknown', 'Unknown', 'Unknown'),
(21908, 21908, 'Unknown', 'Unknown', 'Unknown'),
(21909, 21909, 'Unknown', 'Unknown', 'Unknown'),
(21910, 21910, 'Unknown', 'Unknown', 'Unknown'),
(21911, 21911, 'Unknown', 'Unknown', 'Unknown'),
(21912, 21912, 'Unknown', 'Unknown', 'Unknown'),
(21913, 21913, 'Unknown', 'Unknown', 'Unknown'),
(21914, 21914, 'Unknown', 'Unknown', 'Unknown'),
(21915, 21915, 'Unknown', 'Unknown', 'Unknown'),
(21916, 21916, 'Unknown', 'Unknown', 'Unknown'),
(21917, 21917, 'Unknown', 'Unknown', 'Unknown'),
(21918, 21918, 'Unknown', 'Unknown', 'Unknown'),
(21919, 21919, 'Unknown', 'Unknown', 'Unknown'),
(21920, 21920, 'Unknown', 'Unknown', 'Unknown'),
(21921, 21921, 'Unknown', 'Unknown', 'Unknown'),
(21922, 21922, 'Unknown', 'Unknown', 'Unknown'),
(21923, 21923, 'Unknown', 'Unknown', 'Unknown'),
(21924, 21924, 'Unknown', 'Unknown', 'Unknown'),
(21925, 21925, 'Unknown', 'Unknown', 'Unknown'),
(21926, 21926, 'Unknown', 'Unknown', 'Unknown'),
(21927, 21927, 'Unknown', 'Unknown', 'Unknown'),
(21928, 21928, 'Unknown', 'Unknown', 'Unknown'),
(21929, 21929, 'Unknown', 'Unknown', 'Unknown'),
(21930, 21930, 'Unknown', 'Unknown', 'Unknown'),
(21931, 21931, 'Unknown', 'Unknown', 'Unknown'),
(21932, 21932, 'Unknown', 'Unknown', 'Unknown'),
(21933, 21933, 'Unknown', 'Unknown', 'Unknown'),
(21934, 21934, 'Unknown', 'Unknown', 'Unknown'),
(21935, 21935, 'Unknown', 'Unknown', 'Unknown'),
(21936, 21936, 'Unknown', 'Unknown', 'Unknown'),
(21937, 21937, 'Unknown', 'Unknown', 'Unknown'),
(21938, 21938, 'Unknown', 'Unknown', 'Unknown'),
(21939, 21939, 'Unknown', 'Unknown', 'Unknown'),
(21940, 21940, 'Unknown', 'Unknown', 'Unknown'),
(21941, 21941, 'Unknown', 'Unknown', 'Unknown'),
(21942, 21942, 'Unknown', 'Unknown', 'Unknown'),
(21943, 21943, 'Unknown', 'Unknown', 'Unknown'),
(21944, 21944, 'Unknown', 'Unknown', 'Unknown'),
(21945, 21945, 'Unknown', 'Unknown', 'Unknown'),
(21946, 21946, 'Unknown', 'Unknown', 'Unknown'),
(21947, 21947, 'Unknown', 'Unknown', 'Unknown'),
(21948, 21948, 'Unknown', 'Unknown', 'Unknown'),
(21949, 21949, 'Unknown', 'Unknown', 'Unknown'),
(21950, 21950, 'Unknown', 'Unknown', 'Unknown'),
(21951, 21951, 'Unknown', 'Unknown', 'Unknown'),
(21952, 21952, 'Unknown', 'Unknown', 'Unknown'),
(21953, 21953, 'Unknown', 'Unknown', 'Unknown'),
(21954, 21954, 'Unknown', 'Unknown', 'Unknown'),
(21955, 21955, 'Unknown', 'Unknown', 'Unknown'),
(21956, 21956, 'Unknown', 'Unknown', 'Unknown'),
(21957, 21957, 'Unknown', 'Unknown', 'Unknown'),
(21958, 21958, 'Unknown', 'Unknown', 'Unknown'),
(21959, 21959, 'Unknown', 'Unknown', 'Unknown'),
(21960, 21960, 'Unknown', 'Unknown', 'Unknown'),
(21961, 21961, 'Unknown', 'Unknown', 'Unknown'),
(21962, 21962, 'Unknown', 'Unknown', 'Unknown'),
(21963, 21963, 'Unknown', 'Unknown', 'Unknown'),
(21964, 21964, 'Unknown', 'Unknown', 'Unknown'),
(21965, 21965, 'Unknown', 'Unknown', 'Unknown'),
(21966, 21966, 'Unknown', 'Unknown', 'Unknown'),
(21967, 21967, 'Unknown', 'Unknown', 'Unknown'),
(21968, 21968, 'Unknown', 'Unknown', 'Unknown'),
(21969, 21969, 'Unknown', 'Unknown', 'Unknown'),
(21970, 21970, 'Unknown', 'Unknown', 'Unknown'),
(21971, 21971, 'Unknown', 'Unknown', 'Unknown'),
(21972, 21972, 'Unknown', 'Unknown', 'Unknown'),
(21973, 21973, 'Unknown', 'Unknown', 'Unknown'),
(21974, 21974, 'Unknown', 'Unknown', 'Unknown'),
(21975, 21975, 'Unknown', 'Unknown', 'Unknown'),
(21976, 21976, 'Unknown', 'Unknown', 'Unknown'),
(21977, 21977, 'Unknown', 'Unknown', 'Unknown'),
(21978, 21978, 'Unknown', 'Unknown', 'Unknown'),
(21979, 21979, 'Unknown', 'Unknown', 'Unknown'),
(21980, 21980, 'Unknown', 'Unknown', 'Unknown'),
(21981, 21981, 'Unknown', 'Unknown', 'Unknown'),
(21982, 21982, 'Unknown', 'Unknown', 'Unknown'),
(21983, 21983, 'Unknown', 'Unknown', 'Unknown'),
(21984, 21984, 'Unknown', 'Unknown', 'Unknown');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blank.png',
  `banner_image` mediumtext COLLATE utf8mb4_unicode_ci,
  `show_in_banner` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_categories` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributes` longtext COLLATE utf8mb4_unicode_ci,
  `is_parent` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT 'No',
  `parent_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `created_at`, `updated_at`, `category`, `image`, `banner_image`, `show_in_banner`, `show_in_categories`, `attributes`, `is_parent`, `parent_id`) VALUES
(1, '2025-02-22 18:16:28', '2025-02-22 18:16:28', 'MAIN CATEGORY', 'images/12.png', NULL, 'No', 'No', NULL, 'Yes', 1),
(2, '2023-09-06 18:58:19', '2025-02-22 18:21:57', 'Phones', 'images/f87744d2ed7f19b10ea263261d48cae7.png', 'images/4.jpg', 'No', 'Yes', '[\"black\",\"blue\",\"yellow\",\"green\"]', 'No', 1),
(3, '2023-05-23 10:15:00', '2025-02-22 18:29:08', 'Audio & Headphones', 'images/11.png', 'images/2.jpg', 'Yes', 'Yes', NULL, 'No', 1),
(4, '2023-05-17 22:46:02', '2025-02-22 18:30:45', 'Computers & Laptops', 'images/10.png', 'images/6.jpg', 'No', 'Yes', NULL, 'No', 1),
(5, '2023-05-17 22:46:02', '2025-02-22 18:31:53', 'Notebooks', 'images/9.png', 'images/5.jpg', 'No', 'Yes', NULL, 'No', 1),
(6, '2023-05-17 22:46:02', '2025-02-22 18:32:54', 'Security & Surveillance', 'images/6.png', 'images/1.jpg', 'Yes', 'Yes', NULL, 'No', 1),
(7, '2023-05-17 22:46:02', '2025-02-22 18:38:52', 'Cameras & Photography', 'images/8.png', 'images/3.jpg', 'Yes', 'Yes', NULL, 'No', 1),
(8, '2023-05-17 22:46:02', '2025-02-22 18:35:20', 'Printers & Scanners', 'images/5.png', 'images/55eda48ade58d131de396c28bd215c5e.jpg', 'No', 'Yes', '[\"Expiry Date\"]', 'No', 1),
(9, '2023-05-17 22:46:02', '2025-02-22 18:36:06', 'Monitors & Screens', 'images/4.png', 'images/hero-2.png', 'No', 'Yes', '[\"RAM\",\"CPU\",\"STORAGE TYPE\",\"STORAGE SIZE\",\"BRAND\"]', 'No', 1),
(10, '2023-05-17 22:46:02', '2025-02-22 18:36:53', 'VR & Headsets', 'images/1.png', 'images/hero-1.png', 'No', 'Yes', '[\"Brand\",\"Model Number\",\"Warranty\",\"Shipping Information\",\"Weight\",\"Dimensions\",\"Year\"]', 'No', 1),
(11, '2025-02-22 18:38:18', '2025-02-22 18:38:18', 'Electronics & Gadgets', 'images/3.png', NULL, 'No', 'Yes', NULL, 'No', 1),
(12, '2025-02-22 18:38:42', '2025-02-22 18:38:42', 'Speakers & Soundbars', 'images/2.png', NULL, 'No', 'Yes', '[null]', 'No', 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` int(11) NOT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `color`, `date_created`, `date_updated`, `user`, `status`) VALUES
(17, 'None', '2022-10-05', '2022-10-05 08:56:13', 59, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_currency`
--

CREATE TABLE `product_currency` (
  `id` int(11) NOT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_currency`
--

INSERT INTO `product_currency` (`id`, `currency`, `status`, `user`, `date_created`, `date_updated`, `url`) VALUES
(10, 'UGX', 1, 59, '2022-10-05', '2022-10-05 08:53:13', 'ugx'),
(11, 'USD', 1, 67, '2023-03-28', '2023-03-28 03:24:45', 'usd');

-- --------------------------------------------------------

--
-- Table structure for table `product_general_sizes`
--

CREATE TABLE `product_general_sizes` (
  `id` int(11) NOT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` date NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_general_sizes`
--

INSERT INTO `product_general_sizes` (`id`, `size`, `date_created`, `status`, `user`) VALUES
(27, 'None', '2022-10-05', 1, 59);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `photo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `feature_photo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `photo`, `product`, `user`, `date_created`, `status`, `feature_photo`) VALUES
(221, '7a6e1611d251cc219de294afaf14701a_boo_store.png', 168, 59, '2022-10-07', 0, 0),
(222, 'a182d806bc8c78328cd69cdee760733d_boo_store.jpeg', 169, 62, '2022-10-11', 1, 1),
(223, '13e852d83dff2bb8b2a12386a6e6e34f_boo_store.jpeg', 168, 62, '2022-10-11', 1, 1),
(224, 'e02de0afa99fea3630f61c6935c3fed6_boo_store.jpg', 170, 67, '2023-03-20', 1, 0),
(225, 'd9a9a01130ccfe7f4e16d016af5b3254_boo_store.jpg', 170, 67, '2023-03-20', 1, 1),
(226, 'd6e403606aadf5e7638a56a3e91fc12f_boo_store.jpg', 170, 67, '2023-03-20', 1, 0),
(227, '024d672186feee25cab1a3ea983debca_boo_store.jpg', 170, 67, '2023-03-20', 1, 0),
(228, '5a747b0b6d58bc1109c45f85b15ad4b7_boo_store.jpg', 171, 67, '2023-03-20', 1, 1),
(229, '60cba480a5066b13477419acc051bedb_boo_store.jpg', 171, 67, '2023-03-20', 1, 0),
(230, '5fc3b5ee1c2a283bed120334e4e84b52_boo_store.jpg', 171, 67, '2023-03-20', 1, 0),
(231, '46e6b9f10ddef14e6c6bde66e7e8f708_boo_store.jpg', 171, 67, '2023-03-20', 1, 0),
(232, 'bc28a28ff9420a6e19c292ae03467366_boo_store.jpg', 172, 67, '2023-03-20', 1, 1),
(233, '1c628e9a606af3306e560ba3330555a4_boo_store.jpg', 172, 67, '2023-03-20', 1, 0),
(234, '0c7aa5714e278f48d35e378397a0610d_boo_store.jpg', 172, 67, '2023-03-20', 1, 0),
(235, '0a6d928005f60d3f357a1238645e69af_boo_store.jpg', 173, 67, '2023-03-20', 1, 1),
(236, 'd56b179a8aaedd2b3e4012df7c45dd30_boo_store.jpg', 173, 67, '2023-03-20', 1, 0),
(237, '7f998ff5620ad1ac82281fdd37896e95_boo_store.jpg', 173, 67, '2023-03-20', 1, 0),
(238, '9eda4dc794c89805ee9ab5ad866aeab3_boo_store.jpg', 173, 67, '2023-03-20', 1, 0),
(239, '3733d24d3967d9f5398e8a027e7e59ed_boo_store.jpg', 174, 67, '2023-03-20', 1, 0),
(240, 'c405bfde797681dbac784b18ea85059a_boo_store.jpg', 174, 67, '2023-03-20', 1, 1),
(241, '24d4272b81c81b316839e1e64be2adaf_boo_store.jpg', 175, 67, '2023-03-20', 1, 0),
(242, 'f4df6555d795185065359857fc7c3d14_boo_store.jpg', 175, 67, '2023-03-20', 1, 0),
(243, 'bf56b57ece0aedcf104c8d0df613c1c0_boo_store.jpg', 175, 67, '2023-03-20', 1, 1),
(244, 'b04cc928b8b91afa198bf1a817155ed9_boo_store.jpg', 175, 67, '2023-03-20', 1, 0),
(245, '214e10ecbf4f2ab3626dc83757db691f_boo_store.jpg', 175, 67, '2023-03-20', 1, 0),
(246, '1fe0235867b3a6c4595f9f7a39045164_boo_store.jpg', 176, 67, '2023-03-20', 1, 0),
(247, 'cce222a9f95ee12936562256f1c195d2_boo_store.jpg', 176, 67, '2023-03-20', 1, 1),
(248, '0293270d57ef41697d2a957a7b0d4dba_boo_store.jpg', 176, 67, '2023-03-20', 1, 0),
(249, '2041b1badb96d74a84560ca2d7cd89bb_boo_store.jpg', 176, 67, '2023-03-20', 1, 0),
(250, 'ef845a7ec5eae8734253b0d606d7dd4a_boo_store.jpg', 177, 67, '2023-03-20', 1, 1),
(251, 'bf0a93e408d2449c85e9fbb7111812ca_boo_store.jpg', 177, 67, '2023-03-20', 1, 0),
(252, '5e499431e98893e3e6501d831d4548cd_boo_store.jpg', 177, 67, '2023-03-20', 1, 0),
(253, '722407928696865b84475743f38dc3d1_boo_store.jpg', 177, 67, '2023-03-20', 1, 0),
(254, '29cca4a6cdac2e823449086c1537ce4a_boo_store.jpg', 177, 67, '2023-03-20', 1, 0),
(255, '8c909a0d09a0227ed56de64c6584f770_boo_store.jpg', 178, 67, '2023-03-20', 1, 1),
(256, '3753c8cf83b0ff8f4c41dc25a26f105f_boo_store.jpg', 178, 67, '2023-03-20', 1, 0),
(257, 'f6bca23b0aa207a57ddc02a3d8ecf36e_boo_store.jpg', 178, 67, '2023-03-20', 1, 0),
(258, 'ca60065b1f8253c606a9680eb3a893e2_boo_store.jpg', 178, 67, '2023-03-20', 1, 0),
(259, '12b2452785785ba70ab81b567e4f58a0_boo_store.jpg', 178, 67, '2023-03-20', 1, 0),
(260, 'c258849c21e3914362c8b637e3258619_boo_store.jpg', 178, 67, '2023-03-20', 1, 0),
(261, '4e029ac5f29607bdea0262ac05dbd6f6_boo_store.jpg', 179, 67, '2023-03-20', 1, 1),
(262, 'b9249f21e6f8fa33af62ee9b78defd05_boo_store.jpg', 179, 67, '2023-03-20', 1, 0),
(263, '36d6240a8048b171debbd0c6ef74f672_boo_store.jpg', 179, 67, '2023-03-20', 1, 0),
(264, '7655df0770f1275f9616364b1b60d45d_boo_store.jpg', 179, 67, '2023-03-20', 1, 0),
(265, '09c63368b7c774bbdd4899d047d7af56_boo_store.jpg', 179, 67, '2023-03-20', 1, 0),
(266, '9ad245a2f6f1bf7a02ecaaaccf19aca9_boo_store.jpg', 180, 67, '2023-03-20', 1, 1),
(267, 'b7492be2f283c3d2cae795f083fdd2b5_boo_store.jpg', 180, 67, '2023-03-20', 1, 0),
(268, '022f6c93dcbcd508b1b69704ad9bacdb_boo_store.jpg', 181, 67, '2023-03-20', 1, 0),
(269, '3f70b1749f28ac276a3a265d755a55ef_boo_store.jpg', 181, 67, '2023-03-20', 1, 1),
(270, 'c9c18c0083e7af5c690a8634633eb5b8_boo_store.jpg', 181, 67, '2023-03-20', 1, 0),
(271, '155a32d4dd37550c890f60ec0fd8f4e9_boo_store.jpg', 181, 67, '2023-03-20', 1, 0),
(272, '367815b18af4feb0d5799ab3c13571cc_boo_store.jpg', 181, 67, '2023-03-20', 1, 0),
(273, '268019634a66c7d601798b437e9a3246_boo_store.jpg', 181, 67, '2023-03-20', 1, 0),
(274, '3e0e7cc3f09a2c8705970a4799cb5b3e_boo_store.jpg', 182, 67, '2023-03-20', 1, 0),
(275, 'b81a8d85330db724c8b33c5796f7d3ab_boo_store.jpg', 182, 67, '2023-03-20', 1, 0),
(276, '7f59c72c0ed3e0a9f1bbd04c24ea7fe2_boo_store.jpg', 182, 67, '2023-03-20', 1, 0),
(277, '5ed435f8d263ff4c6098b96a392035bc_boo_store.jpg', 182, 67, '2023-03-20', 1, 1),
(278, '027587e6b1ac0f88078f836b208e660f_boo_store.jpg', 182, 67, '2023-03-20', 1, 0),
(279, '53f4fc414d72959652e6266c6d24c096_boo_store.jpg', 182, 67, '2023-03-20', 1, 0),
(280, '9fa297db16087ee4e0bc72fd30afbf40_boo_store.jpg', 182, 67, '2023-03-20', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_metrics`
--

CREATE TABLE `product_metrics` (
  `id` int(11) NOT NULL,
  `metric` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_metrics`
--

INSERT INTO `product_metrics` (`id`, `metric`, `status`, `user`, `date_created`, `date_updated`, `url`) VALUES
(20, 'SACK', 1, 59, '2022-10-05', '2022-10-05 08:54:03', 'sack'),
(21, 'BASIN', 1, 59, '2022-10-05', '2022-10-05 08:54:11', 'basin'),
(22, 'Kgs', 1, 59, '2022-10-05', '2022-10-05 08:54:25', 'kgs');

-- --------------------------------------------------------

--
-- Table structure for table `product_rate`
--

CREATE TABLE `product_rate` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `rate` tinyint(4) NOT NULL DEFAULT '0',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_rate`
--

INSERT INTO `product_rate` (`id`, `product`, `user`, `rate`, `date_added`) VALUES
(8, 169, 62, 3, '2022-10-18 10:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_set_colors`
--

CREATE TABLE `product_set_colors` (
  `id` int(11) NOT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_set_colors`
--

INSERT INTO `product_set_colors` (`id`, `color`, `date_created`, `date_updated`, `user`, `product`) VALUES
(62, '17', '2022-10-07', '2022-10-07 07:15:02', 59, 159),
(63, '17', '2022-10-07', '2022-10-07 07:37:33', 59, 160),
(64, '17', '2022-10-07', '2022-10-07 07:40:51', 59, 161),
(65, '17', '2022-10-07', '2022-10-07 07:42:03', 59, 162),
(66, '17', '2022-10-07', '2022-10-07 07:43:00', 59, 163),
(67, '17', '2022-10-07', '2022-10-07 07:44:00', 59, 164),
(68, '17', '2022-10-07', '2022-10-07 07:44:24', 59, 165),
(69, '17', '2022-10-07', '2022-10-07 07:45:00', 59, 166),
(70, '17', '2022-10-07', '2022-10-07 07:45:40', 59, 167),
(71, '17', '2022-10-07', '2022-10-07 07:46:26', 59, 168),
(72, '17', '2022-10-11', '2022-10-11 08:45:14', 62, 169),
(73, '17', '2023-03-20', '2023-03-20 14:49:23', 67, 170),
(74, '17', '2023-03-20', '2023-03-20 14:55:05', 67, 171),
(75, '17', '2023-03-20', '2023-03-20 14:57:47', 67, 172),
(76, '17', '2023-03-20', '2023-03-20 15:00:01', 67, 173),
(77, '17', '2023-03-20', '2023-03-20 15:02:12', 67, 174),
(78, '17', '2023-03-20', '2023-03-20 15:04:48', 67, 175),
(79, '17', '2023-03-20', '2023-03-20 15:07:24', 67, 176),
(80, '17', '2023-03-20', '2023-03-20 15:09:31', 67, 177),
(81, '17', '2023-03-20', '2023-03-20 15:12:03', 67, 178),
(82, '17', '2023-03-20', '2023-03-20 15:14:28', 67, 179),
(83, '17', '2023-03-20', '2023-03-20 15:17:21', 67, 180),
(84, '17', '2023-03-20', '2023-03-20 15:19:28', 67, 181),
(85, '17', '2023-03-20', '2023-03-20 15:23:11', 67, 182);

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `size`, `date_created`, `date_updated`, `product`, `user`) VALUES
(143, 27, '2022-10-07', '2022-10-07 07:15:02', 159, 59),
(144, 27, '2022-10-07', '2022-10-07 07:37:33', 160, 59),
(145, 27, '2022-10-07', '2022-10-07 07:40:51', 161, 59),
(146, 27, '2022-10-07', '2022-10-07 07:42:03', 162, 59),
(147, 27, '2022-10-07', '2022-10-07 07:43:00', 163, 59),
(148, 27, '2022-10-07', '2022-10-07 07:44:00', 164, 59),
(149, 27, '2022-10-07', '2022-10-07 07:44:24', 165, 59),
(150, 27, '2022-10-07', '2022-10-07 07:45:00', 166, 59),
(151, 27, '2022-10-07', '2022-10-07 07:45:40', 167, 59),
(152, 27, '2022-10-07', '2022-10-07 07:46:26', 168, 59),
(153, 27, '2022-10-11', '2022-10-11 08:45:14', 169, 62),
(154, 27, '2023-03-20', '2023-03-20 14:49:23', 170, 67),
(155, 27, '2023-03-20', '2023-03-20 14:55:05', 171, 67),
(156, 27, '2023-03-20', '2023-03-20 14:57:47', 172, 67),
(157, 27, '2023-03-20', '2023-03-20 15:00:01', 173, 67),
(158, 27, '2023-03-20', '2023-03-20 15:02:12', 174, 67),
(159, 27, '2023-03-20', '2023-03-20 15:04:48', 175, 67),
(160, 27, '2023-03-20', '2023-03-20 15:07:24', 176, 67),
(161, 27, '2023-03-20', '2023-03-20 15:09:31', 177, 67),
(162, 27, '2023-03-20', '2023-03-20 15:12:03', 178, 67),
(163, 27, '2023-03-20', '2023-03-20 15:14:28', 179, 67),
(164, 27, '2023-03-20', '2023-03-20 15:17:21', 180, 67),
(165, 27, '2023-03-20', '2023-03-20 15:19:28', 181, 67),
(166, 27, '2023-03-20', '2023-03-20 15:23:11', 182, 67);

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_categories`
--

CREATE TABLE `product_sub_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_categories`
--

INSERT INTO `product_sub_categories` (`id`, `category`, `status`, `user`, `date_created`, `date_updated`, `url`, `display`, `priority`) VALUES
(29, 'None', 1, 59, '2022-10-05', '2022-10-05 08:27:29', 'none', 0, 1),
(30, 'Kabale', 1, 59, '2022-10-07', '2022-10-07 07:13:37', 'kabale', 0, 1),
(31, 'Masaka', 1, 59, '2022-10-07', '2022-10-07 07:13:45', 'masaka', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_suppliers`
--

CREATE TABLE `product_suppliers` (
  `id` int(11) NOT NULL,
  `supplier` char(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacts` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_suppliers`
--

INSERT INTO `product_suppliers` (`id`, `supplier`, `contacts`, `email`, `description`, `user`, `date_created`, `date_updated`, `status`, `url`, `supplier_id`) VALUES
(18, 'Jaslac Digital Store', '+256755942584', 'info@jaslac.com', 'Jaslac Digital Store', 59, '2022-10-05', '2022-10-05 08:55:45', 1, 'jaslac-digital-store', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_supplier_images`
--

CREATE TABLE `product_supplier_images` (
  `id` int(11) NOT NULL,
  `photo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `feature_photo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_views`
--

CREATE TABLE `product_views` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_views`
--

INSERT INTO `product_views` (`id`, `product`, `user`, `comment`, `date_added`) VALUES
(8, 169, 62, 'Loving', '2022-10-18 10:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_requests`
--

CREATE TABLE `supplier_requests` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `date_requested` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `business_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_sold` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` tinyint(4) NOT NULL,
  `country` tinyint(4) NOT NULL,
  `business_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Whole sale',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tx_charge`
--

CREATE TABLE `tx_charge` (
  `id` int(11) NOT NULL,
  `charge` float NOT NULL,
  `_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tx_charge`
--

INSERT INTO `tx_charge` (`id`, `charge`, `_timestamp`) VALUES
(1, 3, '2022-10-11 08:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci,
  `first_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_date` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` tinyint(4) DEFAULT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo_large` text COLLATE utf8mb4_unicode_ci,
  `phone_number` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_lat` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_long` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_link` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(325) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(355) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campus_id` bigint(20) NOT NULL DEFAULT '1',
  `complete_profile` tinyint(4) DEFAULT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` timestamp NULL DEFAULT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci,
  `business_name` text COLLATE utf8mb4_unicode_ci,
  `business_license_number` text COLLATE utf8mb4_unicode_ci,
  `business_license_issue_authority` text COLLATE utf8mb4_unicode_ci,
  `business_license_issue_date` text COLLATE utf8mb4_unicode_ci,
  `business_license_validity` text COLLATE utf8mb4_unicode_ci,
  `business_address` text COLLATE utf8mb4_unicode_ci,
  `business_phone_number` text COLLATE utf8mb4_unicode_ci,
  `business_whatsapp` text COLLATE utf8mb4_unicode_ci,
  `business_email` text COLLATE utf8mb4_unicode_ci,
  `business_logo` text COLLATE utf8mb4_unicode_ci,
  `business_cover_photo` text COLLATE utf8mb4_unicode_ci,
  `business_cover_details` text COLLATE utf8mb4_unicode_ci,
  `nin` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `reg_date`, `last_seen`, `email`, `approved`, `profile_photo`, `user_type`, `sex`, `reg_number`, `country`, `occupation`, `profile_photo_large`, `phone_number`, `location_lat`, `location_long`, `facebook`, `twitter`, `whatsapp`, `linkedin`, `website`, `other_link`, `cv`, `language`, `about`, `address`, `created_at`, `updated_at`, `remember_token`, `avatar`, `name`, `campus_id`, `complete_profile`, `title`, `dob`, `intro`, `business_name`, `business_license_number`, `business_license_issue_authority`, `business_license_issue_date`, `business_license_validity`, `business_address`, `business_phone_number`, `business_whatsapp`, `business_email`, `business_logo`, `business_cover_photo`, `business_cover_details`, `nin`, `status`) VALUES
(1, 'mubs0x@gmail.com', '$2y$10$7y2ePx9gYeN.eeT2h./MEOJmtwgQbAohz4NZgh47hIMESbIOMXAku', 'Muhindo', 'Mubaraka', '1596135415', '1672508491', 'mubs0x@gmail.com', 1, 'uploads/2020/09/small/1600649206_585129.png', 'Vendor', 'Female', '160040009', 'Uganda', 'Computer Science &amp; Engineering student at Islamic university of technology', 'uploads/2020/09/1600649206_585129.png', '+880 6322 57609', '', '', 'https://facebook.com/ugnews24', 'https://twitter.com/ugnews24', '+256 7832 04665', 'https://youtube.com/ugnews24', 'https://ugnews24.info', '', 'files/Chairman\'s welcome rev. 1.pdf', 'English', '<p>Muhindo Mubarak is currently a commuter <strong>science</strong> and engineering <strong>student </strong>at Islamic universe of Technology - Daka</p>', 'Bwera, Kasese, Uganda', '2020-07-30 15:56:55', '2025-02-22 12:29:33', 'O5kRKqyRSSmZ6k4YsxUTsaNlgkipsu9kykhFIrXjvCTp1fVDUQeflDSjQz5b', 'images/b82e321820a05d056ff78b31acddbd17.png', 'Muhindo Mubaraka', 1, 1, 'Mr', '1994-04-16 21:00:00', '163388', 'Muhindo and Sons', 'CM122321', 'KCC', '2023-11-11 00:00:00.000', '2023-11-11 00:00:00.000', 'Bwera, Kasese', '0783204665', '07832037774', 'mubahood@gmail.com', 'images/1699654531-806784.jpg', NULL, NULL, '1', 'Active'),
(2, 'mubs1x@gmail.com', '$2y$10$7y2ePx9gYeN.eeT2h./MEOJmtwgQbAohz4NZgh47hIMESbIOMXAku', 'Yahaya', NULL, '1600019849', '1628537316', 'walusansa@gmail.com', 1, '', 'regular', '', '96/115', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-09-13 14:57:29', '2023-02-26 21:14:16', NULL, 'images/u-6.png', 'Yahaya', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(21, 'omulongo2@gmail.com', '$2y$10$7JymTHkjwOqET1S3PlTlGuoAUqTcBuBC4/Ijj0hQPIn2tiMegQCh.', 'Mousa Ali', 'Senkubuge', '1601485078', '1627052612', 'omulongo2@gmail.com', 1, 'uploads/2020/09/small/1601485575_266078.jpeg', 'admin', 'Male', '93/76', 'Uganda', 'Teacher', 'uploads/2020/09/1601485575_266078.jpeg', '', '', '', '', '', '', '', '', '', '', '', 'Mousa Senkubuge (BA Educ Literature/ELS) 1993-96, Secretary Genneral Students&rsquo; Guild. Currently in London, working with the Alumni Association as Interim Executive Secretary \r\n', 'London, UK', '2020-09-30 13:57:58', '2023-02-26 21:14:16', NULL, 'images/u-8.png', 'Mousa Ali Senkubuge', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(22, 'faizahnoordinfizzy@gmail.com', '$2y$10$h2iiZB9wEp2P4ZAaiUNfB.FqeAruYuFqHrvsq05unmWtLWHkG5CWG', 'Faizah Noordin', 'Ayikoru', '1601492404', '1602063241', 'faizahnoordinfizzy@gmail.com', 1, 'uploads/2020/10/small/1601664345_373223.jpeg', 'regular', 'Female', '116-033021-14446', 'Uganda', 'Assistant lecturer, project coordinator ', 'uploads/2020/10/1601664345_373223.jpeg', '', '', '', '', '', '', '', '', '', '', 'English', 'Faizah Noordin Ayikoru is a former Guild president of IUIU(females campus) 2018-2019.She graduated in 2019 with a First class degree hence winning the Alumni award as the second best student overall. She is a young and motivated lady with ambitious goals. Her most outstanding value is kindness and caring for others. She wishes that everyone could be nice to the other, spread love, laugh together and ofcourse make money together. May Allah bless the work of our hands. ', 'Kisaasi', '2020-09-30 16:00:04', '2023-02-26 21:14:16', NULL, 'images/u-8.png', 'Faizah Noordin Ayikoru', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(23, 'aishanur05@googlemail.com', '$2y$10$l5mXpccmZAk336JvSYdrA.etAAgBmS2OoJDoEPfbgyjaI9.gLQKwW', 'Aisha', 'Nambooze', '1601495803', '1603273630', 'aishanur05@googlemail.com', 1, '', 'regular', '', '93/142', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-09-30 16:56:43', '2023-02-26 21:14:16', NULL, 'images/u-6.png', 'Aisha Nambooze', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(24, 'shukuruchebukwa@gmail.com', '$2y$10$5vzO875AgMcwQYBgVo9ZRurYaosngnK5N9BdXKVQtAXRNDWP/VlHS', 'Shukuru', 'Chebukwa', '1601503416', '1612862260', 'shukuruchebukwa@gmail.com', 1, '', 'regular', '', '115-033141-13013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-09-30 19:03:36', '2023-02-26 21:14:16', NULL, 'images/u-5.png', 'Shukuru Chebukwa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(25, 'kayiira2003@yahoo.co.uk', '$2y$10$JN4.Q/dlkxcDWZJ/xUx4f.IEv6PwpStuqcOUHfJGg/uu0h.me3.AC', 'Rashid', 'kayiira', '1601581336', '1602788407', 'kayiira2003@yahoo.co.uk', 1, '', 'regular', '', 'BM/99/282', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-01 16:42:16', '2023-02-26 21:14:16', NULL, 'images/u-8.png', 'Rashid kayiira', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(26, 'hjtmariambintu@gmail.com', '$2y$10$uES7f3rX4/EV2dY.8jEbKOqlCyNoaGffXEJHO3A8HFutDbC6u0Kwq', 'muwanga', 'mariam', '1601581718', '1601806084', 'hjtmariambintu@gmail.com', 1, '', 'regular', 'Female', '92/24', 'Uganda', 'Am a teacher', '', '0772554960', '', '', '', '', '', '', '', '', '', 'English', 'Am Muwanga Mariam completed BA/ED and MED at IUIU.Working at Bwikya MSSS as a Deputy Headteacher. Married with children. I like reading and Sharing with friends. Am self motivated and hard working woman.\r\n', 'Hoima District', '2020-10-01 16:48:38', '2023-02-26 21:14:16', NULL, 'images/u-1.png', 'muwanga mariam', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(29, 'asekindi06@gmail.com', '$2y$10$okLLlptVs7.CXbHinapb3.jc7vrT9HMh.Fwi8AQVbe/utOVKA.2G2', 'Abdunur M', 'Sekindi', '1601654626', '1616921567', 'asekindi06@gmail.com', 1, 'uploads/2020/10/small/1601667291_140295.jpg', 'regular', 'Male', '93/41', 'Uganda', 'Foreign Service Officer (FSO) ', 'uploads/2020/10/1601667291_140295.jpg', '966553125385', '', '', '', '', '', '', '', '', '', 'English', 'Abdunur M Sekindi is a Ugandan Diplomat currently serving at the General Secretariat of the Organisation of Islamic Cooperation (OIC) in Jeddah, Kingdom of Saudi Arabia. ', 'P. O. Box 178 Jeddah 21411 Kingdom of Saudi Arabia ', '2020-10-02 13:03:46', '2023-02-26 21:14:16', NULL, 'images/u-6.png', 'Abdunur M Sekindi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(31, 'ntwaha94@gmail.com', '$2y$10$4DdU7VQg2vwDiapWRPEyrOWuvRSwLPiK7.ip0K0GaUhC76toWvC/K', 'Nabirere', 'Twaha', '1601754206', '1641586451', 'ntwaha94@gmail.com', 1, '', 'regular', '', '97/FAS/149', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-03 16:43:26', '2023-02-26 21:14:16', NULL, 'images/u-7.png', 'Nabirere Twaha', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(32, 'mwebesaumar@gmail.com', '$2y$10$ye3UflG112oYkfhfYQeHfOVwbPB2Dhtoows4gcf4X7rs3vO4otaJm', 'Dr. Mwebesa', 'Umar', '1601801228', '1637416584', 'mwebesaumar@gmail.com', 1, 'uploads/2020/10/small/1601807673_470670.jpg', 'admin', 'Male', '87/26', 'Uganda', 'Currently, I work as Registrar of the Islamic University of Technology (IUT), Board Bazar, Gazipur-1704, Dhaka Bangladesh. ', 'uploads/2020/10/1601807673_470670.jpg', '8801833339000', '', '', 'https://www.facebook.com/mwebesa.umar.5', 'https://twitter.com/dr_mwebesa', '', '', 'http://www.iutoic-dhaka.edu/registrar_office', '', '', 'English', 'Dr. Mwebesa Umar. I am the Vice Chairman, IUIU-AA Interim Committee [Taskforce Team]. I am the 3rd Pioneer Guild President [1990-91]. Our enrolment date was 10.02.1988. Am married with one wife and four children; with a PhD in Education [Curriculum and Instruction] from the International Islamic University Malaysia (IIUM); 2010-2014. \r\n\r\n', 'Islamic University of Technology (IUT), Board Bazar, Gazipur-1704, Dhaka Bangladesh', '2020-10-04 05:47:08', '2023-02-26 21:14:16', NULL, 'images/u-9.png', 'Dr. Mwebesa Umar', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(33, 'nazziwaaisha948@gmail.com', '$2y$10$TaJNztR1EWxkrkygSMokGOvazLD9EhvdMHBS7nei622GBwgF4A/tW', 'Aisha', 'Nazziwa', '1601829427', '1601937327', 'nazziwaaisha948@gmail.com', 1, '', 'regular', '', 'IU509', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-04 13:37:07', '2023-02-26 21:14:16', NULL, 'images/u-9.png', 'Aisha Nazziwa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(34, 'abdirahmanka1@gmail.com', '$2y$10$uFEfLiuGBVKn6h5F8uEFqeoGUxtwu3wtNm6xr29YnFTMcJdPhhXtO', 'Abdirahman', 'Mohamed', '1601837706', '1642564338', 'abdirahmanka1@gmail.com', 1, '', 'regular', '', '116-013021-14458', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-04 15:55:06', '2023-02-26 21:14:16', NULL, 'images/u-3.png', 'Abdirahman Mohamed', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(35, 'sulemanwaziri@gmail.com', '$2y$10$UFeiuUyYEUWF7jaW5AOC/OV4w5llS81c9Em5aggAVmTZWOtXQYHfG', 'Suleiman Umar', 'Waziri', '1601845901', '1601877255', 'sulemanwaziri@gmail.com', 0, '', 'regular', '', '5054', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-04 18:11:41', '2023-02-26 21:14:16', NULL, 'images/u-6.png', 'Suleiman Umar Waziri', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(36, 'kasumbaamiiru@gmail.com', '$2y$10$VOonpRndHXe67tTWfxyFm.Xl9eYwx8bSthp6abp0yOsKK8odzCzpG', 'Kasumba', 'Amiiru Ibrahim', '1601875982', '1602101905', 'kasumbaamiiru@gmail.com', 1, '', 'regular', '', '116-043011-15217', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-05 02:33:02', '2023-02-26 21:14:16', NULL, 'images/u-8.png', 'Kasumba Amiiru Ibrahim', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(37, 'stevogeral@gmail.com', '$2y$10$sbMG2UYphjFoYWKKo3c36eVCgnDR7o9SVsFo9Azj31iSveinLEzCq', 'WASUKIRA', 'GERALD', '1601899651', '1601899938', 'stevogeral@gmail.com', 1, '', 'regular', '', '110-033021-03952', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-05 09:07:31', '2023-02-26 21:14:16', NULL, 'images/u-10.png', 'WASUKIRA GERALD', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(38, 'imranaahmad1990@yahoo.com', '$2y$10$TWDvcBCICmNgilNDzsob4OLRpi3NbPCYCSqLUgJpknb/wdNBEa2fC', 'Imrana', 'Ahmad', '1601903613', '1601903666', 'imranaahmad1990@yahoo.com', 1, '', 'regular', '', '115-033071-12828', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-05 10:13:33', '2023-02-26 21:14:16', NULL, 'images/u-3.png', 'Imrana Ahmad', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(39, 'Iliyasibrahimiliyas@gmail.com', '$2y$10$zKaB2dhELElWMteP9p.VS.M7NoPIz/VYgh07qvK6Dwq95./.fiaPS', 'Iliyas', 'Ibrahim', '1601904634', '1601925053', 'Iliyasibrahimiliyas@gmail.com', 1, '', 'regular', '', '113-063061-09486', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-05 10:30:34', '2023-02-26 21:14:16', NULL, 'images/u-4.png', 'Iliyas Ibrahim', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(40, 'Bilalmusak@gmail.com', '$2y$10$yDcelKcvLyprg/rrNxL/1eW7Pb8yoQaPS2kEcRYmXc2g9enhj.b.W', 'Bilal', 'Musa', '1601906775', '1601906795', 'Bilalmusak@gmail.com', 1, '', 'regular', '', '113-063111-10118', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-05 11:06:15', '2023-02-26 21:14:16', NULL, 'images/u-1.png', 'Bilal Musa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(41, 'nshalidu@gmail.com', '$2y$10$xdqv2.lQTsUp7NPkd9CDA.GCgYJ8sS0gnoWEW80eB.cORuAFlzgJC', 'Nasir', 'Salisu Halidu', '1601909056', '1601974361', 'nshalidu@gmail.com', 0, '', 'regular', '', '113-063061-09928', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-05 11:44:16', '2023-02-26 21:14:16', NULL, 'images/u-7.png', 'Nasir Salisu Halidu', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(42, 'abusadiq303@gmail.com', '$2y$10$lB0BH74xaJWJYEzTFmDhJOeREUZC73Hgjr1xEPgtdsXU8MqhyqJAO', 'Abubakar', 'Sadiq', '1601911724', '1601911755', 'abusadiq303@gmail.com', 0, '', 'regular', '', '115-063111-13893', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-05 12:28:44', '2023-02-26 21:14:16', NULL, 'images/u-5.png', 'Abubakar Sadiq', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(43, 'Mukhtarbarade@gmail.com', '$2y$10$yej.Bembh8b.zNiO0sM8Ye3ROVMnG1VNxRGlITTgvzWQugqgkPzLa', 'Mukhtar', 'Danbarade', '1602148958', '1602149573', 'Mukhtarbarade@gmail.com', 0, '', 'regular', '', '11404501111303', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-08 06:22:38', '2023-02-26 21:14:16', NULL, 'images/u-1.png', 'Mukhtar Danbarade', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(44, 'usmanlemah1554@gmail.com', '$2y$10$g70Uf9bSqLIYVShdV4xaPOL4aiYYsr.n8l9GaFKWQNsJ0etmKbgp6', 'Usman', 'Mohammed', '1602149278', '1602189292', 'usmanlemah1554@gmail.com', 0, '', 'regular', '', '114-045011-10441', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-08 06:27:58', '2023-02-26 21:14:16', NULL, 'images/u-8.png', 'Usman Mohammed', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(45, 'aliyudange@gmail.com', '$2y$10$PzTpB2wSXGC35oRX556vEeAtHLRnOy.1Hr2g90wWmHwnf.KxFwFxu', 'Aliyu', 'Dange', '1602149546', '1602149605', 'aliyudange@gmail.com', 0, '', 'regular', '', '114-045011-10545', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-08 06:32:26', '2023-02-26 21:14:16', NULL, 'images/u-10.png', 'Aliyu Dange', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(46, 'ishaqshuni@gmail.com', '$2y$10$AurD8PRL1S5tdw4gMRCruOWzkxtQIJtKg/QEzb/nwQMwS1qzicr7y', 'Ishaq', 'Muhammad', '1602150356', '1602153819', 'ishaqshuni@gmail.com', 0, '', 'regular', '', '11404501110443', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-08 06:45:56', '2023-02-26 21:14:16', NULL, 'images/u-7.png', 'Ishaq Muhammad', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(47, 'mansurharuna7@gmail.com', '$2y$10$4IRmk.60B1sPg1wOP094ReH38MiS.CfZBw9AANiz33D23YT/twxTC', 'Mansur', 'Haruna', '1602150644', '1602166069', 'mansurharuna7@gmail.com', 0, '', 'regular', '', '114-065181-10392', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-08 06:50:44', '2023-02-26 21:14:16', NULL, 'images/u-7.png', 'Mansur Haruna', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(48, 'lukwagorajab@gmail.com', '$2y$10$01TaFydQBLpVuiZH4p9KzOd4THtgKFGz/2a8HRBF43hjg89gl8lAy', 'Rajab', 'Lukwago', '1602155754', '1602155755', 'lukwagorajab@gmail.com', 0, '', 'regular', '', '208-055011-01085', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-08 08:15:54', '2023-02-26 21:14:16', NULL, 'images/u-3.png', 'Rajab Lukwago', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(49, 'abubakarsahabi4@gmail.com', '$2y$10$TQ02nvIg.ipRtbmVUmvBSeBYoDHMusEC9nAquQdJ6jlEw6gtMGvbq', 'Abubakar', 'Sahabi', '1602159661', '1602159781', 'abubakarsahabi4@gmail.com', 0, '', 'regular', '', '114-045011-10844', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-08 09:21:01', '2023-02-26 21:14:16', NULL, 'images/u-3.png', 'Abubakar Sahabi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(50, 'Sbkaroga@gmail.com', '$2y$10$ejjAoaCeGUwsAaOzi2QgzedULwxteeM8FszM4cDSZ/uo.21kRSCAS', 'Sani', 'Bello karoga', '1602168271', '1602759881', 'Sbkaroga@gmail.com', 0, '', 'regular', '', '11404501110420', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-08 11:44:31', '2023-02-26 21:14:16', NULL, 'images/u-6.png', 'Sani Bello karoga', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(51, 'mohammedumardogondaji@gmail.com', '$2y$10$DpuK6/fBrqY8yxzon3/kQO/IYwcA9g/EGcv2JRaho5U2uc0ktnj7O', 'Mohammed', 'Umar Dogondaji', '1602172212', '1602172393', 'mohammedumardogondaji@gmail.com', 0, '', 'regular', '', '114-045011-10465', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-08 12:50:12', '2023-02-26 21:14:16', NULL, 'images/u-10.png', 'Mohammed Umar Dogondaji', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(52, 'nafiuumar127@gmail.com', '$2y$10$/UQhg2cSPbcQF29XFlG.Suxgzw/IA3MO.TDIA2/YpQ4PYJkKTOqPW', 'Nafiu', 'Umar', '1602192182', '1602676124', 'nafiuumar127@gmail.com', 0, '', 'regular', '', '114-063111-12178', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-08 18:23:02', '2023-02-26 21:14:16', NULL, 'images/u-2.png', 'Nafiu Umar', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(53, 'abubakarjjabo@gmail.com', '$2y$10$tJvmZCMp8o0R5x2vIF2hZ.gmCu3BA1nzYQ6vl.973zu.NMiKUL5/e', 'Abubakar', 'Junaidu Jabo', '1602251597', '1602520178', 'abubakarjjabo@gmail.com', 0, '', 'regular', '', '114-045011-10571', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-09 10:53:17', '2023-02-26 21:14:16', NULL, 'images/u-7.png', 'Abubakar Junaidu Jabo', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(54, 'faridilwasa@gmail.com', '$2y$10$JSYJEgoqQObFJ2jic/nN4.vAEH/Yi77mOULVMask7WR2UnGHVaVEW', 'Faridi', 'Lwasa', '1602325381', '1602786491', 'faridilwasa@gmail.com', 0, '', 'regular', '', '111/043011/196', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-10 07:23:01', '2023-02-26 21:14:16', NULL, 'images/u-4.png', 'Faridi Lwasa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(55, 'ibrabu99@gmail.com', '$2y$10$8cTRaoeSMll0y2hqEbhm/eelQnad.kBwoRWgcq2Ipf/PmvDh.ahAu', 'Abubaker', 'Ibrahim', '1602824163', '1602824164', 'ibrabu99@gmail.com', 0, '', 'regular', '', '114-053011-10701', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-16 01:56:03', '2023-02-26 21:14:16', NULL, 'images/u-7.png', 'Abubaker Ibrahim', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(56, 'nimulola@gmail.com', '$2y$10$uCgqIfZW10sr9Dhx1C16OuaxRCltTxUgFjWQHH5.AF1.gkLy/Jr7a', 'Maimuna', 'Nimulola', '1602846087', '1603261551', 'nimulola@gmail.com', 1, '', 'regular', 'Female', '88/30', 'Uganda', 'Senior Lecturer - Faculty of Education, Department of Educational Psychology; and Director Research, Publications and Innovation at Islamic University in Uganda', '', '256393512100', '', '', '', '', '', '', 'https://www.iuiu.ac.ug', '', '', 'English', 'I am a pioneer student IUIU', 'Islamic University in Uganda ', '2020-10-16 08:01:27', '2023-02-26 21:14:16', NULL, 'images/u-9.png', 'Maimuna Nimulola', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(57, 'halimkas@gmail.com', '$2y$10$Qvqmtfyor.NyJLvQGGML9.hz.VcVqMIpw6avAz8x7CguQV92Uf6zO', 'Chongomweru', 'Halimu', '1603437222', '1603437587', 'halimkas@gmail.com', 1, '', 'regular', '', '04/BIT/KC/011', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-23 04:13:42', '2023-02-26 21:14:16', NULL, 'images/u-8.png', 'Chongomweru Halimu', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(58, 'bwayopeter@gmail.com', '$2y$10$0.2CO3.IgLMlv4SNLOPzpON0hPbiam1QNXldf3l.bsVi3gla1B.yS', 'Bwayo', 'Peter', '1603460389', '1603460445', 'bwayopeter@gmail.com', 0, '', 'regular', '', '113-023032-08798', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-23 10:39:49', '2023-02-26 21:14:16', NULL, 'images/u-4.png', 'Bwayo Peter', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(59, 'rasnassa@gmail.com', '$2y$10$Z9ZMZeMV342oruLPpkccrO8.Z7yVzK/I11Nti9ULGpO4WgJPnW8.W', 'KAKEEMBO', 'NASIIFU', '1603468645', '1603468728', 'rasnassa@gmail.com', 0, '', 'regular', '', '05/FEA/839', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-23 12:57:25', '2023-02-26 21:14:16', NULL, 'images/u-2.png', 'KAKEEMBO NASIIFU', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(60, 'akakaire@gmail.com', '$2y$10$9Qms6XXhIF9hqdFUutA.je12/6/c0aGHkSMBaZ1beAOKI1ApK63Dy', 'Kakaire Ayub', 'Kirunda', '1603484801', '1603485207', 'akakaire@gmail.com', 1, '', 'regular', '', '98/FAM/103', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-23 17:26:41', '2023-02-26 21:14:16', NULL, 'images/u-10.png', 'Kakaire Ayub Kirunda', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(61, 'yumarabdullahi@gmail.com', '$2y$10$GfrJNX7aYTAxos34sxe3JelpefNfKsRZjNW962HSGlo6oHI6cpLce', 'Yusuf', 'Umar Abdullahi', '1603556659', '1603556731', 'yumarabdullahi@gmail.com', 0, '', 'regular', '', '114-045011-10559', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-24 13:24:19', '2023-02-26 21:14:16', NULL, 'images/u-9.png', 'Yusuf Umar Abdullahi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(62, 'dembosaddam@gmail.com', '$2y$10$rvr3Jw7C8wDw3SNnx015/OJIoVpxLZMMl5VapEcQfZewWLVija1qS', 'Dembo', 'Saddam', '1603564455', '1603564571', 'dembosaddam@gmail.com', 0, '', 'regular', '', '114-043011-11831', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-24 15:34:15', '2023-02-26 21:14:16', NULL, 'images/u-1.png', 'Dembo Saddam', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(63, 'ibralwembawo@gmail.com', '$2y$10$g5QyInw0iD4f0FEBXmmDuO7kyZ2Pyac2TWFCAVxvgc3B0l0qLGx3.', 'Lwembawo', 'Ibrahim', '1603737071', '1603737162', 'ibralwembawo@gmail.com', 0, '', 'regular', '', '115-063012-12918', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-26 15:31:11', '2023-02-26 21:14:16', NULL, 'images/u-3.png', 'Lwembawo Ibrahim', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(64, 'ugnewz24@gmail.com', '$2y$10$kCFg7gTKE22aEOvkDz92Ouv6F8AG9gswQNMXCrfLp9PEiLOFTu0M6', 'Bwambale', 'Muhidin', '1604112889', '1621582650', 'ugnewz24@gmail.com', 0, '', 'regular', '', '150029000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-30 23:54:49', '2023-02-26 21:14:16', NULL, 'images/u-2.png', 'Bwambale Muhidin', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(65, 'karimasagazi@gmail.com', '$2y$10$Z838KahBmsQmX5z12WABnO132kNTD.bvCojhHb8yfLLlIujrCm3L6', 'Ssegawa', 'Abdulkarim', '1604125782', '1604125784', 'karimasagazi@gmail.com', 0, '', 'regular', '', '216-063011-08615', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-31 03:29:42', '2023-02-26 21:14:16', NULL, 'images/u-10.png', 'Ssegawa Abdulkarim', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(66, 'habiibmusa@gmail.com', '$2y$10$1ji7b95gyujtbNajVJEdwuerzDM0VQrbqPCaHYb1uWKad5ulSRGBy', 'Ssemakula', 'Habiib Musa', '1604128885', '1642610091', 'habiibmusa@gmail.com', 0, '', 'regular', '', '97/FAM/44', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-31 04:21:25', '2023-02-26 21:14:16', NULL, 'images/u-3.png', 'Ssemakula Habiib Musa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(67, 'abdjourn@gmail.com', '$2y$10$fYEeldnceg.w46nOgNTWnumE86D5p8Eng9K7X4GxkqAIBfgJ9psKy', 'Kinobe', 'Abdussalaam Ali', '1604137491', '1604137636', 'abdjourn@gmail.com', 0, '', 'regular', '', '05/FAM/049', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-31 06:44:51', '2023-02-26 21:14:16', NULL, 'images/u-5.png', 'Kinobe Abdussalaam Ali', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(68, 'Dericnamakajo@gmail.com', '$2y$10$5b7I6SASBpaYrGcbDK2wde6j3mWJoLS2yIJ2NyWiXKx8dQMM6axVW', 'Namakajo', 'Deric', '1604141235', '1604141237', 'Dericnamakajo@gmail.com', 0, '', 'regular', '', '215-053012-07356', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-10-31 07:47:15', '2023-02-26 21:14:16', NULL, 'images/u-7.png', 'Namakajo Deric', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(69, 'balunywabaker@yahoo.com', '$2y$10$mGiIGfK968CaPHwxj3uyTuk7xNv/8/RxedcmBjMA8JiMEPlHwTj1O', 'Baker', 'Balunywa Nantawuna', '1604996032', '1604996876', 'balunywabaker@yahoo.com', 1, '', 'regular', '', '87/63', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-11-10 05:13:52', '2023-02-26 21:14:16', NULL, 'images/u-8.png', 'Baker Balunywa Nantawuna', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(70, 'kmarzwyze@gmail.com', '$2y$10$YawX.hfLAv5zIy1V.omwhumtp1vJh3ajaZC2lyDpXG5u26CMAcBsa', 'Kayinja', 'Mutwalibi', '1605337056', '1605337606', 'kmarzwyze@gmail.com', 0, '', 'regular', '', '115-043011-12734', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-11-14 03:57:36', '2023-02-26 21:14:16', NULL, 'images/u-9.png', 'Kayinja Mutwalibi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(71, 'nmpira@yahoo.com', '$2y$10$Z5ILClQxcivTdtfEZRgRS.XdcnXMzdph21Vl77qVD7cLucfvYI5yS', 'Naima', 'Mpiira Kayira', '1605981249', '1605981781', 'nmpira@yahoo.com', 1, '', 'regular', '', '95/089', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-11-21 14:54:09', '2023-02-26 21:14:16', NULL, 'images/u-4.png', 'Naima Mpiira Kayira', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(72, 'kayira2000@yahoo.fr', '$2y$10$eKKNSfFjJUxit/F6VzttVuFHB6zjSd6rxMT4kTKFFQ5oMOjh1VdMq', 'Kassim', 'Kayiira Ibrahim', '1605982139', '1605982140', 'kayira2000@yahoo.fr', 1, '', 'regular', '', '93/SS/24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-11-21 15:08:59', '2023-02-26 21:14:16', NULL, 'images/u-3.png', 'Kassim Kayiira Ibrahim', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(73, 'zouffedd@gmail.com', '$2y$10$HHSw3OjSpABG7nhYEuzuBekaC9BsP7GfMh5WbQtA2Ef0mvJQqb38.', 'Yousoff', 'Abdul Qader edd', '1606226552', '1608784991', 'zouffedd@gmail.com', 0, '', 'regular', '', '115-063012-13739', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-11-24 11:02:32', '2023-02-26 21:14:16', NULL, 'images/u-6.png', 'Yousoff Abdul Qader edd', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(74, 'masturahnannono@gmail.com', '$2y$10$sEtDX2Sb0kAC7ouXUPMPOusxJlT.7tKfQxK7CrTBezTJjeqDiYURC', 'Masturah', 'Nannono', '1606556380', '1606556468', 'masturahnannono@gmail.com', 1, '', 'regular', '', '92/96', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-11-28 06:39:40', '2023-02-26 21:14:16', NULL, 'images/u-9.png', 'Masturah Nannono', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(81, 'Kayizziahmed72@gmail.com', '$2y$10$DuermTcfRRiXgExBW9MBJObSbBPJQD1Drxkwy2tTzqTKJRpZRPq1O', 'kayizzi', 'ahmed', '1608460117', '1608460241', 'Kayizziahmed72@gmail.com', 0, '', 'regular', '', '93/148', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-12-20 07:28:37', '2023-02-26 21:14:16', NULL, 'images/u-5.png', 'kayizzi ahmed', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(82, 'jamilusaid@gmail.com', '$2y$10$vPw7wo8gjwf6OvNTY1MfNu.gDH7ftFt5QOfPE3PPSG5x9zqUimQJW', 'Jamilu', 'Hilal Said', '1609564356', '1620636442', 'jamilusaid@gmail.com', 1, '', 'regular', '', '210-033142-02992', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-01-02 02:12:36', '2023-02-26 21:14:16', NULL, 'images/u-8.png', 'Jamilu Hilal Said', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(83, 'jmsewanyana@gmail.com', '$2y$10$DUxhk9gwCURU4S2sgbtiE.scRQkcaLp0mLgZt0cKOLAnbEYcuXOx2', 'Jamil', 'Sewanyana', '1615218185', '1615218186', 'jmsewanyana@gmail.com', 1, '', 'regular', '', '90/67', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-08 12:43:05', '2023-02-26 21:14:16', NULL, 'images/u-4.png', 'Jamil Sewanyana', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(84, 'husseinghana@yahoo.com', '$2y$10$mfHT.cci2FdpYHqCs2nea.iJElabaFAfK8NIm4qUE0CWOQ0zFHWi.', 'Abdul Hussein', 'Ishaq', '1615309673', '1615310375', 'husseinghana@yahoo.com', 1, '', 'regular', '', '90/101', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-09 14:07:53', '2023-02-26 21:14:16', NULL, 'images/u-1.png', 'Abdul Hussein Ishaq', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(85, 'kateregga69@gmail.com', '$2y$10$.ZXgYf78m9o4qCTVyC69Weqa3QY90Qb2opKzVwNT4co1Ye//nR6QG', 'Kateregga', 'Mahmood', '1615399070', '1615399152', 'kateregga69@gmail.com', 0, '', 'regular', '', '91/28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-10 14:57:50', '2023-02-26 21:14:16', NULL, 'images/u-7.png', 'Kateregga Mahmood', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(86, 'kadnan555@gmail.com', '$2y$10$dRiqU.rzJN3nOCCM5MO/PO.0orS82n26M7el1bFG93BmqgoHexsqG', 'Adnan', 'Kawooya', '1615885374', '1615885375', 'kadnan555@gmail.com', 0, '', 'regular', '', '97/FEA/010', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-03-16 06:02:54', '2023-02-26 21:14:16', NULL, 'images/u-6.png', 'Adnan Kawooya', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(87, 'mariamkiiza508@gmail.com', '$2y$10$8jpwFzOr/kfFHUWe6EzfneT3D8y/0tupEll3itxhmlXkwWgNleg/i', 'Kiiza', 'Violet Maryam', '1619155276', '1619155463', 'mariamkiiza508@gmail.com', 0, '', 'regular', '', '118-082131-17727', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-04-23 02:21:16', '2023-02-26 21:14:16', NULL, 'images/u-6.png', 'Kiiza Violet Maryam', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(88, 'aliconauf@gmail.com', '$2y$10$Gea4KTloBEu7nhZtmi7jxeYlvouFp5uPhFZZF4AWCnbCEAHcPEfwC', 'Tumwebaze', 'Alicon Auf', '1619175125', '1619175203', 'aliconauf@gmail.com', 0, '', 'regular', '', '03/FEA/035', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-04-23 07:52:05', '2023-02-26 21:14:16', NULL, 'images/u-8.png', 'Tumwebaze Alicon Auf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(89, 'dafhas@gmail.com', '$2y$10$khfjo6NKXDSOHN.kAimIz.OE2/DZbL.5qSeqqs0/u45NbWboGUMyu', 'Dafala', 'Ibrahim', '1619175186', '1619242330', 'dafhas@gmail.com', 0, '', 'regular', '', '04/Sea/153', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-04-23 07:53:06', '2023-02-26 21:14:16', NULL, 'images/u-8.png', 'Dafala Ibrahim', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(90, 'lusibab@gmail.com', '$2y$10$McsxXmEak7eSU6sg0LYVEOQPh7nR/k/vLpD4NZ40B8e3UvqZfS.cC', 'LUSIBA', 'Badru', '1625943428', '1625943812', 'lusibab@gmail.com', 0, '', 'regular', '', 'Bsc001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-07-10 15:57:08', '2023-02-26 21:14:16', NULL, 'images/u-2.png', 'LUSIBA Badru', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(91, 'yakoubmasereka@gmail.com', '$2y$10$NYwbWjGA7MgJnR7lNtJx5OotSaFsJjiFp5gJipu/g/DSW5OkC0VTy', 'Masereka', 'Yakoub Ismail', '1626604261', '1626604339', 'yakoubmasereka@gmail.com', 0, '', 'regular', '', '05/FEA/949', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-07-18 07:31:01', '2023-02-26 21:14:16', NULL, 'images/u-3.png', 'Masereka Yakoub Ismail', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(92, 'hnurudeen@gmail.com', '$2y$10$.fszma8fTzN/MHRRzZ4tceos/7SHcl0tf8fabf0SdKZ3waN9ZmqUy', 'Nurudeen', 'Hamidu', '1626624497', '1626624498', 'hnurudeen@gmail.com', 0, '', 'regular', '', '93/150', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-07-18 13:08:17', '2023-02-26 21:14:16', NULL, 'images/u-8.png', 'Nurudeen Hamidu', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(93, 'lwangyus@gmail.com', '$2y$10$S7sc9A071yGG4wr3Xz13d.S/FZI/kmgA.HTqo1OhVz2NiHc3iwMf.', 'LWANGA', 'YUSUFU', '1626681687', '1626681722', 'lwangyus@gmail.com', 0, '', 'regular', '', '218-043024-12065', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-07-19 05:01:27', '2023-02-26 21:14:16', NULL, 'images/u-6.png', 'LWANGA YUSUFU', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(94, 'tabubakar.isl@buk.edu.ng', '$2y$10$A9PKi6SNAyKw0Mt5ffgrMerVFjs8IquKVAsB/IPsgprMqP0uRMUOK', 'Taufiq Abubakar', 'Hussaini', '1626853846', '1626958491', 'tabubakar.isl@buk.edu.ng', 0, '', 'regular', '', '91/21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-07-21 04:50:46', '2023-02-26 21:14:16', NULL, 'images/u-9.png', 'Taufiq Abubakar Hussaini', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(95, 'aziidah.n2017@gmail.com', '$2y$10$cg4MLFV42Mr2t9.eyJSmAOk3.FbeitQCHyzhdElYAqiXnPUpM5P0e', 'Nanyonga', 'Aziida', '1626959321', '1626959322', 'aziidah.n2017@gmail.com', 0, '', 'regular', '', '213-063011-05291', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-07-22 10:08:41', '2023-02-26 21:14:16', NULL, 'images/u-9.png', 'Nanyonga Aziida', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(96, 'Fauziahmugalu@gmail.com', '$2y$10$DT/nB3lhh.E//aDLl/.huuaERVGK2yDmmHYKbRnlneC0ZKfeycrLS', 'Aminah', 'Nakibuule', '1628131621', '1628131712', 'Fauziahmugalu@gmail.com', 0, '', 'regular', '', '214-033023-07265', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-04 23:47:01', '2023-02-26 21:14:16', NULL, 'images/u-9.png', 'Aminah Nakibuule', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(97, 'sserebe@gmail.com', '$2y$10$sM3i84.M8jrh4N5lGsR0GehvWfAvJ9gKMv593wOhaHC2ZTp0fhRtC', 'Ibrah', 'Sserebe', '1629283051', '1629283246', 'sserebe@gmail.com', 0, '', 'regular', '', '208-063012-00877', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-18 07:37:31', '2023-02-26 21:14:16', NULL, 'images/u-4.png', 'Ibrah Sserebe', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(98, 'aliah.asiimwe.km@gmail.com', '$2y$10$obmd32AFlJwNHdg/PQ83mumOu9H6FEhTdJp/eZuW/ofP55vUZ49YC', 'Aliah', 'Asiimwe', '1630143336', '1630143435', 'aliah.asiimwe.km@gmail.com', 0, '', 'regular', '', '97/FAS/370', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-08-28 06:35:36', '2023-02-26 21:14:16', NULL, 'images/u-10.png', 'Aliah Asiimwe', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(99, 'amina.kye.sula@gma', '$2y$10$piLJLVXC3FDzGkZ8QjOjZOUFbTUAu7jn6H3ACRyrNyyglyKVOy2Ui', 'Amina', 'Nangonzi', '1630494453', '1630494538', 'amina.kye.sula@gma', 0, '', 'regular', '', '408-063011-00151', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-09-01 08:07:33', '2023-02-26 21:14:16', NULL, 'images/u-9.png', 'Amina Nangonzi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(100, 'makhoebe.lebohang@gmail.com', '$2y$10$1wAguRMVuvtGa4nTNWXvAeYaHc1kevHNpDwzaG7kgusLMJq3hwl8a', 'Lebohang', 'Makhoebe', '1637423155', '1637423180', 'makhoebe.lebohang@gmail.com', 0, '', 'regular', '', '1120330217179', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-11-20 12:45:55', '2023-02-26 21:14:16', NULL, 'images/u-8.png', 'Lebohang Makhoebe', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(101, 'zoaline0@gmail.com', '$2y$10$uksWeCyKkmUFIA.LVVSIDeGcpu1eHj2E2xVPeq/d0eOHgbfyOd8I6', 'Zuhura', 'Ali', '1637425017', '1637425065', 'zoaline0@gmail.com', 0, '', 'regular', '', '123', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-11-20 13:16:57', '2023-02-26 21:14:16', NULL, 'images/u-5.png', 'Zuhura Ali', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(102, 'kizitoshafik2@gmail.com', '$2y$10$UPuEH3eJr62S3hRfRs9j4eUOdQNDRGS3F1cxBvX3JCKrYorfSyLOi', 'Kizito', 'Shafik', '1637431418', '1637431425', 'kizitoshafik2@gmail.com', 0, '', 'regular', '', '215-063011-08159', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-11-20 15:03:38', '2023-02-26 21:14:16', NULL, 'images/u-3.png', 'Kizito Shafik', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(103, 'imranahmad.ahmad667@gmail.com', '$2y$10$smDkYRzciWB7Byg1KC2lPO6.P8cMZUNQXCeNQLZXoB3hagtBR0SES', 'Imrana', 'Ahmad', '1637477441', '1637494174', 'imranahmad.ahmad667@gmail.com', 0, '', 'regular', '', '115-0331071-12828', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-11-21 03:50:41', '2023-02-26 21:14:16', NULL, 'images/u-2.png', 'Imrana Ahmad', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(104, 'hadeist@live.com', '$2y$10$1/0kbtEVHhJNYN6MEOLOVua5AkOAvNLLRmUpr/c3l2lycN5nCMgyG', 'Hussein', 'Mustafa', '1637524514', '1637524541', 'hadeist@live.com', 0, '', 'regular', '', '112-053011-07993', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-11-21 16:55:14', '2023-02-26 21:14:16', NULL, 'images/u-4.png', 'Hussein Mustafa', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(105, 'hishamy8@gmail.com', '$2y$10$TjXopSOVUHTvek4OGUDkkuNo.stwwuYBSc1CExwDb4P/PekR8fDAO', 'SHABANI', 'Haruna', '1637584277', '1637584326', 'hishamy8@gmail.com', 0, '', 'regular', '', '111-023051-05956', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-11-22 09:31:17', '2023-02-26 21:14:16', NULL, 'images/u-2.png', 'SHABANI Haruna', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(106, 'maqim@gmail', '$2y$10$N0PDY9icR.JikzbRjXGX3Oo1WOVtmieVAsMJnXcTtFo8NcBYhwXG6', 'Muyingo', 'Makki Ibrahim', '1637606059', '1637606167', 'maqim@gmail', 0, '', 'regular', '', '93/141', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-11-22 15:34:19', '2023-02-26 21:14:16', NULL, 'images/u-6.png', 'Muyingo Makki Ibrahim', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(107, 'abdoulshar@gmail.com', '$2y$10$.2BZ7sWKbSox3.GS3unC2eD7pdA9TQFcl.9QLpI4HhWpbG8gkfNbu', 'Nalubega', 'Hadijah', '1637647437', '1637765599', 'abdoulshar@gmail.com', 0, '', 'regular', '', '413-053011-01641', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2021-11-23 03:03:57', '2023-02-26 21:14:16', NULL, 'images/u-1.png', 'Nalubega Hadijah', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(108, 'damasusmillinga@gmail.com', '$2y$10$so5pQe5A4liePtdAhe1PEOZDqhnpbMH0LemkEKna2DkwHWHaWaTYC', 'Damasus', 'Millinga', '1643207180', '1643207243', 'damasusmillinga@gmail.com', 0, '', 'regular', '', '98/FAS/313', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-01-26 11:26:20', '2023-02-26 21:14:16', NULL, 'images/u-10.png', 'Damasus Millinga', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(109, 'mmmondera@gmail.com', '$2y$10$ZAFD3wmCyhenxCSejcIrquTTxl2kZiWJrQ7xd.VTOH/5cVD3RkESS', 'Mondera', 'Muhammed Musiho', '1645372968', '1645373000', 'mmmondera@gmail.com', 0, '', 'regular', '', '88/27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2022-02-20 13:02:48', '2023-02-26 21:14:16', NULL, 'images/u-1.png', 'Mondera Muhammed Musiho', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(110, '+256783204665', '$2y$10$ud2.xLgio4d5gUz1.QdtIOuKLpj9yi0QNSnJOZtEW.4fyHJvVjwnW', 'Muhindo', 'Muhindo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256783204665', '+256783204665', '+256783204665', '', '+256783204665', '', '', '', '', NULL, '', '', '', '', '', '', '', '2023-05-04 18:26:16', '2023-05-04 18:26:16', NULL, NULL, 'Muhindo Muhindo', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(111, '+256783204661', '$2y$10$ResPTv2jkWuVer1uJZXrOusuOZBxIL9/ynwbTNCXb6O1nGbv3gz6W', 'Muhindo', 'Muhindo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256783204661', '+256783204661', '+256783204661', '', '+256783204661', '', '', '', '', NULL, '', '', '', '', '', '', '', '2023-05-04 18:29:27', '2023-05-04 18:29:27', NULL, NULL, 'Muhindo Muhindo', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(112, '+256755906818', '$2y$10$TGyVYOYnxR810d3EyiQCpul8Xmp41JFazjwJcEvvcRgtH6pzTwLXm', 'Sumayah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256755906818', '+256755906818', '+256755906818', '', '+256755906818', '', '', '', '', NULL, '', '', '', '', '', '', '', '2023-05-05 03:32:57', '2023-05-05 03:32:57', NULL, NULL, 'Sumayah', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(113, '+256705832190', '$2y$10$9689CO2MiZGt11v0KzA8WuBnKdV.qHqCnJq5fmZPN3NmDx2vHJwnm', 'Tudeeka', 'Tudeeka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256705832190', '+256705832190', '+256705832190', '', '+256705832190', '', '', '', '', NULL, '', '', '', '', '', '', '', '2023-05-23 05:45:22', '2023-05-23 05:45:22', NULL, NULL, 'Tudeeka Tudeeka', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(114, '+256705832180', '$2y$10$E6yYlVWVS4QM/LTQ9cxD6ONxQOsfWE505uRM/0B9EHKF7wp5jc7lq', 'Hamza', 'Hamza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256705832180', '+256705832180', '+256705832180', '', '+256705832180', '', '', '', '', NULL, '', '', '', '', '', '', '', '2023-06-11 09:47:15', '2023-06-11 09:47:15', NULL, NULL, 'Hamza Hamza', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(115, '+256753627640', '$2y$10$m.pxn6iBomMQBU4l7cUrIOrIuu8pMkaZgpqAcDw7j7Z7cXVDcvX/m', 'Kibunga', 'Kibunga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256753627640', '+256753627640', '+256753627640', '', '+256753627640', '', '', '', '', NULL, '', '', '', '', '', '', '', '2023-08-12 00:39:30', '2023-08-12 00:39:30', NULL, NULL, 'Kibunga Kibunga', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(116, '+256775679505', '$2y$10$Hxrmm1qPj2lpTBW/8wxI3eI8mT8PC4wXbb37jJJzCZm0ghl7iQMyK', 'Yoshio', 'Cohen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+256775679505', '+256775679505', '+256775679505', '', '+256775679505', '', '', '', '', NULL, '', '', '', '', '', '', '', '2023-09-08 02:39:15', '2023-11-10 21:16:04', NULL, NULL, 'Samuel Samuel', 96, NULL, NULL, NULL, NULL, 'Reese Alexander', '208', 'Quidem officia conse', '12-Jun-2000', 'Ipsam obcaecati adip', 'Cupidatat deserunt u', '+1 (545) 623-8602', 'Rerum praesentium qu', 'zisud@mailinator.com', 'images/car_1.png', 'Consequuntur dolorem', 'Totam est quia modi', NULL, 'Active'),
(117, '0783204665', '$2y$10$aGbJXf/C9taLNfpyQEiFk.uXJBuKeww0FjXEGPN7eFXTBHhrVWV1O', 'Kiiza', 'Kiiza', NULL, NULL, NULL, NULL, NULL, 'Vendor', NULL, '0783204665', '0783204665', '0783204665', '', '0783204665', '', '', '', '', NULL, '', '', '', '', '', '', '', '2023-12-28 04:50:00', '2023-12-28 07:15:36', NULL, NULL, 'Kiiza Kiiza', 1, NULL, NULL, NULL, NULL, 'ascasasxa', 'ascasa', 'ascsx', '2023-12-19 00:00:00.000', '2023-12-29 00:00:00.000', 'sasascas', 'ascasx', 'ascasadscas', 'ascxas', 'images/1703758394-251019.jpg', NULL, NULL, '1casascsa', 'Active'),
(118, 'mubahood360@gmail.com', '$2y$10$ZfaplDrM8kGSKHTCrkqaU.XXI.IFfOwrmOSLOBETTZzZga5jJOasq', 'Muhindo', 'Muhindo', NULL, NULL, 'mubahood360@gmail.com', NULL, NULL, NULL, NULL, 'mubahood360@gmail.com', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '2024-08-28 17:49:24', '2024-08-28 17:52:23', NULL, NULL, 'Muhindo Muhindo', 1, NULL, NULL, NULL, '227527', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(119, 'muhindo@8technologies.net', '$2y$10$lg89ZXPkQbLa6KRRq91UOOhT6nnNjI6zIfaJP2wQeYfK6TfW9Zt62', 'Aminah', 'Aminah', NULL, NULL, 'muhindo@8technologies.net', NULL, NULL, NULL, NULL, 'muhindo@8technologies.net', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '2024-10-03 09:21:15', '2024-10-03 09:27:04', NULL, NULL, 'Aminah Aminah', 1, NULL, NULL, NULL, '468450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
(120, NULL, NULL, 'Shelly', 'Stevenson', NULL, NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-03 10:00:03', '2024-10-03 10:00:03', NULL, NULL, NULL, 94, NULL, NULL, NULL, NULL, 'Marsden Beck', '930', 'Est similique natus', '06-Aug-1999', 'Aut quisquam asperna', 'Autem aut corporis i', '+1 (769) 273-4876', 'Harum non sapiente r', 'gyrize@mailinator.com', NULL, 'Occaecat veniam qui', 'Ex architecto ut qui', NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `date_added` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`id`, `product`, `user`, `date_added`, `status`) VALUES
(51, 168, 59, '2022-10-08', 1),
(52, 168, 62, '2022-10-13', 1),
(53, 169, 62, '2022-10-13', 1),
(58, 169, 63, '2022-11-08', 1),
(59, 168, 63, '2022-11-08', 1),
(60, 58, 63, '2022-11-08', 1),
(61, 59, 63, '2022-11-08', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_keys`
--
ALTER TABLE `access_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `affiliate_commissions`
--
ALTER TABLE `affiliate_commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_transactions`
--
ALTER TABLE `affiliate_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_version`
--
ALTER TABLE `app_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_info`
--
ALTER TABLE `basic_info`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `chat_heads`
--
ALTER TABLE `chat_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `gens`
--
ALTER TABLE `gens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_subscription`
--
ALTER TABLE `mail_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_items`
--
ALTER TABLE `ordered_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_keys`
--
ALTER TABLE `order_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_keys`
--
ALTER TABLE `payment_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `products_best_deals`
--
ALTER TABLE `products_best_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_featured`
--
ALTER TABLE `products_featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_searched`
--
ALTER TABLE `products_searched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_search_base`
--
ALTER TABLE `products_search_base`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_special_offers`
--
ALTER TABLE `products_special_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_viewed`
--
ALTER TABLE `products_viewed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_view_location`
--
ALTER TABLE `products_view_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_currency`
--
ALTER TABLE `product_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `product_general_sizes`
--
ALTER TABLE `product_general_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_metrics`
--
ALTER TABLE `product_metrics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `product_rate`
--
ALTER TABLE `product_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_set_colors`
--
ALTER TABLE `product_set_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_categories`
--
ALTER TABLE `product_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `product_suppliers`
--
ALTER TABLE `product_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `URL` (`url`);

--
-- Indexes for table `product_supplier_images`
--
ALTER TABLE `product_supplier_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_views`
--
ALTER TABLE `product_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_requests`
--
ALTER TABLE `supplier_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tx_charge`
--
ALTER TABLE `tx_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_keys`
--
ALTER TABLE `access_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1167;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `affiliate_commissions`
--
ALTER TABLE `affiliate_commissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `affiliate_transactions`
--
ALTER TABLE `affiliate_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_version`
--
ALTER TABLE `app_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `basic_info`
--
ALTER TABLE `basic_info`
  MODIFY `user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `chat_heads`
--
ALTER TABLE `chat_heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `forgot_password`
--
ALTER TABLE `forgot_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gens`
--
ALTER TABLE `gens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=671;

--
-- AUTO_INCREMENT for table `mail_subscription`
--
ALTER TABLE `mail_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ordered_items`
--
ALTER TABLE `ordered_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `order_keys`
--
ALTER TABLE `order_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_keys`
--
ALTER TABLE `payment_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `products_best_deals`
--
ALTER TABLE `products_best_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products_featured`
--
ALTER TABLE `products_featured`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products_searched`
--
ALTER TABLE `products_searched`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=877;

--
-- AUTO_INCREMENT for table `products_search_base`
--
ALTER TABLE `products_search_base`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `products_special_offers`
--
ALTER TABLE `products_special_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products_viewed`
--
ALTER TABLE `products_viewed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21985;

--
-- AUTO_INCREMENT for table `products_view_location`
--
ALTER TABLE `products_view_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21985;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_currency`
--
ALTER TABLE `product_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_general_sizes`
--
ALTER TABLE `product_general_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `product_metrics`
--
ALTER TABLE `product_metrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_rate`
--
ALTER TABLE `product_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_set_colors`
--
ALTER TABLE `product_set_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `product_sub_categories`
--
ALTER TABLE `product_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_suppliers`
--
ALTER TABLE `product_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_supplier_images`
--
ALTER TABLE `product_supplier_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_views`
--
ALTER TABLE `product_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `supplier_requests`
--
ALTER TABLE `supplier_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tx_charge`
--
ALTER TABLE `tx_charge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
