-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2025 at 12:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rsmleather`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_processes`
--

CREATE TABLE `about_processes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `step_number` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `about_sections`
--

CREATE TABLE `about_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hero_title` varchar(255) NOT NULL,
  `hero_description` text NOT NULL,
  `story_image` varchar(255) DEFAULT NULL,
  `story_title` varchar(255) NOT NULL,
  `story_description` text NOT NULL,
  `years_experience` varchar(255) NOT NULL,
  `happy_customers` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `about_values`
--

CREATE TABLE `about_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'president', 'president', 1, '2025-01-01 02:28:11', '2025-01-05 04:02:42'),
(2, 'rich man', 'rich-man', 1, '2025-01-01 02:28:24', '2025-01-05 04:02:44'),
(3, 'RsmLeather', 'rsmleather', 1, '2025-01-16 06:44:02', '2025-01-16 06:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `varient_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Arrival', 'new-arrival', 'category-thumbnail/1737461014.jpg', 1, '2025-01-01 01:44:39', '2025-01-21 06:03:34'),
(2, 'RSM Backpack', 'rsm-backpack', 'category-thumbnail/1737460551.jpg', 1, '2025-01-01 01:45:31', '2025-01-21 05:55:51'),
(3, 'Ladies Purse', 'ladies-purse', 'category-thumbnail/1737460766.jpg', 1, '2025-01-01 01:45:41', '2025-01-21 23:49:51'),
(4, 'Ladies Hand Bag', 'ladies-hand-bag', 'category-thumbnail/1737460836.jpg', 1, '2025-01-01 01:46:40', '2025-01-21 23:50:02'),
(5, 'Best Selling', 'best-selling', 'category-thumbnail/1737461036.jpg', 1, '2025-01-01 01:47:03', '2025-01-21 06:03:56'),
(6, 'Leather/PU/Jacron/Patch', 'leatherpujacronpatch', 'category-thumbnail/1737460911.jpg', 1, '2025-01-01 01:47:18', '2025-01-21 06:01:51'),
(7, 'RSM Belt', 'rsm-belt', 'category-thumbnail/1737460993.jpg', 0, '2025-01-05 04:22:19', '2025-01-21 06:03:13'),
(9, 'Gift item', 'gift-item', 'category-thumbnail/1736072592.jpg', 0, '2025-01-05 04:23:12', '2025-01-05 04:23:12'),
(13, 'Pahela Boishakh', 'pahela-boishakh', 'category-thumbnail/1737028801.jpg', 1, '2025-01-16 06:00:01', '2025-01-16 06:00:59'),
(14, 'Falguni sale', 'falguni-sale', 'category-thumbnail/1737028847.jpg', 0, '2025-01-16 06:00:47', '2025-01-16 06:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `slug`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Red', 'red', '#FF0000', 1, '2025-01-01 02:30:07', '2025-01-05 04:02:50'),
(2, 'Blue', 'blue', '#0000FF', 0, '2025-01-01 02:30:30', '2025-01-01 02:30:30'),
(3, 'Green', 'green', '#008000', 0, '2025-01-01 02:30:47', '2025-01-01 02:30:47'),
(4, 'Yellow', 'yellow', '#FFFF00', 0, '2025-01-01 02:31:06', '2025-01-01 02:31:06'),
(5, 'Cyan', 'cyan', '#00FFFF', 0, '2025-01-01 02:31:25', '2025-01-01 02:31:25'),
(6, 'Magenta', 'magenta', '#FF00FF', 0, '2025-01-01 02:31:42', '2025-01-01 02:31:42'),
(7, 'Black', 'black', '#000000', 1, '2025-01-01 02:32:01', '2025-01-16 06:46:49'),
(8, 'White', 'white', '#FFFFFF', 1, '2025-01-01 02:32:21', '2025-01-16 06:46:48'),
(9, 'Mustard Yellow', 'mustard-yellow', '#FFDB58', 1, '2025-01-01 02:32:55', '2025-01-16 06:46:47'),
(10, 'Tan Leather', 'tan-leather', '#D2B48C', 1, '2025-01-16 06:46:12', '2025-01-16 06:46:46'),
(11, 'Dark Brown Leather', 'dark-brown-leather', '#654321', 0, '2025-01-16 06:46:24', '2025-01-16 06:46:24'),
(12, 'Chestnut Leather', 'chestnut-leather', '#B94E48', 0, '2025-01-16 06:46:34', '2025-01-16 06:46:34'),
(13, 'Copper', 'copper', '#B87333', 0, '2025-01-16 06:48:40', '2025-01-16 06:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(255) NOT NULL,
  `charge` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_charges`
--

INSERT INTO `delivery_charges` (`id`, `location_type`, `charge`, `status`, `created_at`, `updated_at`) VALUES
(1, 'inside_dhaka', 70.00, 1, '2025-01-23 02:46:58', '2025-01-23 03:30:14'),
(2, 'outside_dhaka', 120.00, 1, '2025-01-23 02:47:27', '2025-01-23 02:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(64, 7, '1736151559_677b92076cf29.png', '2025-01-06 02:19:19', '2025-01-06 02:19:19'),
(65, 7, '1736151559_677b92076e9a4.jpg', '2025-01-06 02:19:19', '2025-01-06 02:19:19'),
(66, 7, '1736151559_677b92077055e.jpg', '2025-01-06 02:19:19', '2025-01-06 02:19:19'),
(67, 12, '1736152135_677b9447b5e86.png', '2025-01-06 02:28:55', '2025-01-06 02:28:55'),
(68, 12, '1736152135_677b9447b6bea.jpg', '2025-01-06 02:28:55', '2025-01-06 02:28:55'),
(69, 12, '1736152135_677b9447b785c.jpg', '2025-01-06 02:28:55', '2025-01-06 02:28:55'),
(70, 13, '1736152143_677b944fb8fcd.png', '2025-01-06 02:29:03', '2025-01-06 02:29:03'),
(71, 13, '1736152143_677b944fb9e02.jpg', '2025-01-06 02:29:03', '2025-01-06 02:29:03'),
(72, 13, '1736152143_677b944fbaacb.jpg', '2025-01-06 02:29:03', '2025-01-06 02:29:03'),
(73, 14, '1736152147_677b9453328b2.png', '2025-01-06 02:29:07', '2025-01-06 02:29:07'),
(74, 14, '1736152147_677b945333c9e.jpg', '2025-01-06 02:29:07', '2025-01-06 02:29:07'),
(75, 14, '1736152147_677b945334930.jpg', '2025-01-06 02:29:07', '2025-01-06 02:29:07'),
(96, 19, '1737023850_6788e16a73567.jpg', '2025-01-16 04:37:30', '2025-01-16 04:37:30'),
(97, 19, '1737023850_6788e16a7443e.jpg', '2025-01-16 04:37:30', '2025-01-16 04:37:30'),
(98, 19, '1737023850_6788e16a75792.jpg', '2025-01-16 04:37:30', '2025-01-16 04:37:30'),
(99, 19, '1737023850_6788e16a76314.jpg', '2025-01-16 04:37:30', '2025-01-16 04:37:30'),
(100, 18, '1737024083_6788e25335b6a.jpg', '2025-01-16 04:41:23', '2025-01-16 04:41:23'),
(101, 18, '1737024083_6788e253372c4.jpg', '2025-01-16 04:41:23', '2025-01-16 04:41:23'),
(102, 17, '1737024161_6788e2a188701.jpg', '2025-01-16 04:42:41', '2025-01-16 04:42:41'),
(103, 17, '1737024161_6788e2a18a890.jpg', '2025-01-16 04:42:41', '2025-01-16 04:42:41'),
(104, 16, '1737024226_6788e2e252369.jpg', '2025-01-16 04:43:46', '2025-01-16 04:43:46'),
(105, 16, '1737024226_6788e2e2538c6.jpg', '2025-01-16 04:43:46', '2025-01-16 04:43:46'),
(106, 16, '1737024226_6788e2e254db1.jpg', '2025-01-16 04:43:46', '2025-01-16 04:43:46'),
(107, 16, '1737024226_6788e2e255a73.jpg', '2025-01-16 04:43:46', '2025-01-16 04:43:46'),
(111, 15, '1737028303_6788f2cf1821a.jpg', '2025-01-16 05:51:43', '2025-01-16 05:51:43'),
(112, 15, '1737028303_6788f2cf1972f.jpg', '2025-01-16 05:51:43', '2025-01-16 05:51:43'),
(113, 15, '1737028303_6788f2cf1a7bd.jpg', '2025-01-16 05:51:43', '2025-01-16 05:51:43'),
(114, 15, '1737028303_6788f2cf1b9eb.jpg', '2025-01-16 05:51:43', '2025-01-16 05:51:43'),
(115, 23, '1737028644_6788f42448cab.jpg', '2025-01-16 05:57:24', '2025-01-16 05:57:24'),
(116, 23, '1737028644_6788f4244a3cb.jpg', '2025-01-16 05:57:24', '2025-01-16 05:57:24'),
(117, 23, '1737028644_6788f4244b43d.jpg', '2025-01-16 05:57:24', '2025-01-16 05:57:24'),
(118, 23, '1737028644_6788f4244c129.jpg', '2025-01-16 05:57:24', '2025-01-16 05:57:24'),
(119, 20, '1737028679_6788f447b3c0c.jpg', '2025-01-16 05:57:59', '2025-01-16 05:57:59'),
(120, 20, '1737028679_6788f447b51e7.jpg', '2025-01-16 05:57:59', '2025-01-16 05:57:59'),
(121, 20, '1737028679_6788f447b618b.jpg', '2025-01-16 05:57:59', '2025-01-16 05:57:59'),
(122, 26, '1737032395_678902cb89c37.jpg', '2025-01-16 06:59:55', '2025-01-16 06:59:55'),
(123, 26, '1737032395_678902cb8b44d.jpg', '2025-01-16 06:59:55', '2025-01-16 06:59:55'),
(124, 27, '1737032413_678902dd6703c.jpg', '2025-01-16 07:00:13', '2025-01-16 07:00:13'),
(125, 27, '1737032413_678902dd6815c.jpg', '2025-01-16 07:00:13', '2025-01-16 07:00:13'),
(152, 41, '1737284107_678cda0b0bdac.jpg', '2025-01-19 04:55:07', '2025-01-19 04:55:07'),
(153, 41, '1737284107_678cda0b0d23d.jpg', '2025-01-19 04:55:07', '2025-01-19 04:55:07'),
(154, 41, '1737284107_678cda0b0e150.jpg', '2025-01-19 04:55:07', '2025-01-19 04:55:07'),
(155, 42, '1737574487_67914857ca0c1.jpg', '2025-01-22 13:34:47', '2025-01-22 13:34:47'),
(156, 42, '1737574487_67914857cae54.jpg', '2025-01-22 13:34:47', '2025-01-22 13:34:47'),
(157, 42, '1737574487_67914857cb99b.jpg', '2025-01-22 13:34:47', '2025-01-22 13:34:47'),
(158, 43, '1737576723_67915113e810b.jpg', '2025-01-22 14:12:03', '2025-01-22 14:12:03'),
(159, 43, '1737576723_67915113e909c.jpg', '2025-01-22 14:12:03', '2025-01-22 14:12:03'),
(160, 43, '1737576723_67915113e9f08.jpg', '2025-01-22 14:12:03', '2025-01-22 14:12:03'),
(164, 45, '1737577139_679152b38011f.jpg', '2025-01-22 14:18:59', '2025-01-22 14:18:59'),
(165, 45, '1737577139_679152b380e45.jpg', '2025-01-22 14:18:59', '2025-01-22 14:18:59'),
(166, 45, '1737577139_679152b381a46.jpg', '2025-01-22 14:18:59', '2025-01-22 14:18:59'),
(167, 39, '1737577316_67915364b76a9.jpg', '2025-01-22 14:21:56', '2025-01-22 14:21:56'),
(168, 40, '1737577390_679153aea790c.jpg', '2025-01-22 14:23:10', '2025-01-22 14:23:10'),
(169, 44, '1737577511_67915427a56fc.jpg', '2025-01-22 14:25:11', '2025-01-22 14:25:11'),
(170, 44, '1737577511_67915427a6ddf.jpg', '2025-01-22 14:25:11', '2025-01-22 14:25:11'),
(171, 46, '1737577561_67915459e7900.jpg', '2025-01-22 14:26:01', '2025-01-22 14:26:01'),
(172, 46, '1737577561_67915459e94d8.jpg', '2025-01-22 14:26:01', '2025-01-22 14:26:01'),
(173, 46, '1737577561_67915459ea1ac.jpg', '2025-01-22 14:26:01', '2025-01-22 14:26:01'),
(174, 47, '1737577569_67915461b2776.jpg', '2025-01-22 14:26:09', '2025-01-22 14:26:09'),
(175, 47, '1737577569_67915461b342e.jpg', '2025-01-22 14:26:09', '2025-01-22 14:26:09'),
(176, 47, '1737577569_67915461b4393.jpg', '2025-01-22 14:26:09', '2025-01-22 14:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'Rezuan Ahmmed', 'rezuanahmmeds@gmail.com', '01768261278', 'Website', 'gnbmnbmnb', 1, '2025-01-13 04:07:38', '2025-01-13 04:39:24'),
(2, 'Rezuan Ahmmed', 'rezuanahmmeds@gmail.com', '01768261278', 'Website', 'gnbmnbmnb', 1, '2025-01-13 04:07:38', '2025-01-13 04:46:06'),
(3, 'rezuan', 'rezuan@gmail.com', '0147856325', 'fgfdg', 'rfgerg', 1, '2025-01-14 05:01:40', '2025-01-14 05:01:57'),
(4, 'rezuan', 'rezuan@gmail.com', '0147856325', 'fgfdg', 'rfgerg', 1, '2025-01-14 05:01:40', '2025-01-14 05:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_23_041914_create_categories_table', 1),
(6, '2024_12_24_044217_create_subcategories_table', 1),
(7, '2024_12_24_080149_create_colors_table', 1),
(8, '2024_12_24_080204_create_sizes_table', 1),
(9, '2024_12_24_084056_create_brands_table', 1),
(10, '2024_12_24_084111_create_units_table', 1),
(11, '2024_12_26_094422_create_products_table', 1),
(12, '2024_12_26_094606_create_gallery_images_table', 1),
(13, '2024_12_28_081227_create_product__varients_table', 1),
(14, '2024_12_30_051329_create_orders_table', 1),
(15, '2024_12_31_071424_create_wish_lists_table', 1),
(16, '2024_12_31_154703_create_carts_table', 1),
(17, '2025_01_04_064427_create_orders_table', 2),
(18, '2025_01_04_064610_create_order_items_table', 2),
(19, '2025_01_13_083558_create_special_banners_table', 3),
(20, '2025_01_13_094618_create_messages_table', 4),
(22, '2025_01_13_105524_create_secondery_banners_table', 5),
(23, '2025_01_13_123931_create_sliders_table', 6),
(24, '2025_01_14_064936_create_about_sections_table', 7),
(25, '2025_01_14_085331_create_site_settings_table', 8),
(26, '2025_01_23_074456_create_delivery_charges_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `shipping_charge` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `payment_method` enum('cod') NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `order_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `session_id`, `subtotal`, `shipping_charge`, `tax`, `total`, `payment_method`, `transaction_id`, `payment_status`, `order_status`, `name`, `email`, `phone`, `address`, `city`, `postal_code`, `order_notes`, `created_at`, `updated_at`) VALUES
(1, 'ORD250104E977', 2, NULL, 2000.00, 110.00, 200.00, 2310.00, 'cod', NULL, 'pending', 'pending', 'Rezuan Ahmmed', 'admin@example.com', '01768261278', 'gazipur road', 'inside', '2030', 'iggh', '2025-01-04 04:31:28', '2025-01-04 04:31:28'),
(4, 'ORD2501043528', NULL, 'b7w89r3GimlJRzPcBfWkko9l0mj1hnr4h2HBSjTs', 4760.00, 110.00, 476.00, 5346.00, 'cod', NULL, 'pending', 'pending', 'mahbub', 'mahbub@gmail.com', '01768261278', 'gazipur road', 'inside', '2030', 'gffnbfgnfhgnfg', '2025-01-04 05:50:40', '2025-01-04 05:50:40'),
(5, 'ORD2501041179', NULL, 'b7w89r3GimlJRzPcBfWkko9l0mj1hnr4h2HBSjTs', 1140.00, 110.00, 114.00, 1364.00, 'cod', NULL, 'pending', 'pending', 'Rezuan Ahmmed', 'rezuanahmmeds@gmail.com', '01768261278', 'gazipur road', 'inside', '2030', 'yjghm', '2025-01-04 05:52:12', '2025-01-04 05:52:12'),
(6, 'ORD2501041201371BFE', NULL, 'guest_677923215b9d41.31217876', 1520.00, 110.00, 152.00, 1782.00, 'cod', NULL, 'pending', 'pending', 'saiful islam', 'saifullanju@gmail.com', '01768261278', 'gazipur road', 'inside', '2030', 'frgdg', '2025-01-04 06:01:37', '2025-01-04 06:01:37'),
(7, 'ORD25010412041196BD', NULL, 'guest_677923bbc47ad3.50494146', 760.00, 110.00, 76.00, 946.00, 'cod', NULL, 'pending', 'pending', 'arefin', 'arefin@gmail.com', '01768261278', 'gazipur road', 'outside', '2030', 'dffghfh', '2025-01-04 06:04:11', '2025-01-04 06:04:11'),
(8, 'ORD2501041209438DFD', NULL, 'guest_67792507b35651.82880907', 380.00, 110.00, 38.00, 528.00, 'cod', NULL, 'pending', 'delivered', 'Rezuan Ahmmed', 'rezuanahmmeds@gmail.com', '01768261278', 'gazipur road', 'inside', '2030', 'regfdgdb', '2025-01-04 06:09:43', '2025-01-05 00:30:32'),
(9, 'ORD2501050824529FFF', 3, NULL, 2000.00, 110.00, 200.00, 2310.00, 'cod', NULL, 'pending', 'pending', 'nasim', 'nasim@gmail.com', '01768261278', 'dewanganj,jamalpur.', 'outside', '2030', 'jute is jute', '2025-01-05 02:24:52', '2025-01-05 02:24:52'),
(10, 'ORD250105131817377C', 2, NULL, 380.00, 110.00, 38.00, 528.00, 'cod', NULL, 'failed', 'shipped', 'Rezuan Ahmmed', 'admin@example.com', '01768261278', 'gazipur road', 'outside', '2030', 'o', '2025-01-05 07:18:17', '2025-01-09 04:50:06'),
(11, 'ORD250109103426F4F7', 2, NULL, 64400.00, 110.00, 6440.00, 70950.00, 'cod', NULL, 'paid', 'delivered', 'Rezuan Ahmmed', 'admin@example.com', '01768261278', 'gazipur road', 'inside', '2030', 'fghj', '2025-01-09 04:34:26', '2025-01-12 22:13:33'),
(12, 'ORD2501110824210577', NULL, 'guest_67822ab56c4352.59586953', 380.00, 110.00, 38.00, 528.00, 'cod', NULL, 'paid', 'delivered', 'Rezuan Ahmmed', 'rezuanahmmeds@gmail.com', '01768261278', 'gazipur road', 'inside', '2030', 'khjfjgh', '2025-01-11 02:24:21', '2025-01-12 22:13:16'),
(13, 'ORD250113060047820D', 2, NULL, 760.00, 110.00, 76.00, 946.00, 'cod', NULL, 'pending', 'pending', 'Rezuan Ahmmed', 'admin@example.com', '01768261278', 'gazipur road', 'inside', '2030', 'frreeek', '2025-01-13 00:00:47', '2025-01-13 00:00:47'),
(14, 'ORD250113060129E9CC', 2, NULL, 1000.00, 110.00, 100.00, 1210.00, 'cod', NULL, 'pending', 'pending', 'Rezuan Ahmmed', 'admin@example.com', '01768261278', 'gazipur road', 'inside', '2030', 'lugk', '2025-01-13 00:01:29', '2025-01-13 00:01:29'),
(15, 'ORD250114041938DC6D', NULL, 'guest_6785e5da7c36f6.46111625', 380.00, 110.00, 38.00, 528.00, 'cod', NULL, 'pending', 'pending', 'Rezuan Ahmmed', 'rezuanahmmeds@gmail.com', '01768261278', 'gazipur road', 'inside', '2030', 'llll', '2025-01-13 22:19:38', '2025-01-13 22:19:38'),
(16, 'ORD250114120424634B', 2, NULL, 760.00, 110.00, 76.00, 946.00, 'cod', NULL, 'pending', 'pending', 'Rezuan Ahmmed', 'admin@example.com', '01768261278', 'gazipur road', 'inside', '2030', 'rgrdgjh', '2025-01-14 06:04:24', '2025-01-14 06:04:24'),
(17, 'ORD25011811283082B6', NULL, 'guest_678b905eb31da4.87646460', 2375.00, 110.00, 237.50, 2722.50, 'cod', NULL, 'pending', 'pending', 'Rezuan Ahmmed', 'rezuanahmmeds@gmail.com', '01768261278', 'gazipur road', 'inside', '2030', ',jhkf', '2025-01-18 05:28:30', '2025-01-18 05:28:30'),
(18, 'ORD2501210856111C31', NULL, 'guest_678f612af13b52.09318371', 2880.00, 110.00, 288.00, 3278.00, 'cod', NULL, 'pending', 'pending', 'abu kahar', 'rsmleatherbd@gmail.com', '017586935', 'tyjyukuik', 'inside', '76utyuk', 'jyukyuik', '2025-01-21 02:56:11', '2025-01-21 02:56:11'),
(19, 'ORD250123104621F3A3', 5, NULL, 900.00, 110.00, 90.00, 1100.00, 'cod', NULL, 'pending', 'pending', 'newadmin@gmail.com', 'newadmin@gmail.com', '01768261278', 'Tb Gate,Mohakhali,DhakaMohakhali', '120.00', '2030', 'p;iook', '2025-01-23 04:46:21', '2025-01-23 04:46:21'),
(20, 'ORD2501231049121649', 5, NULL, 720.00, 110.00, 72.00, 902.00, 'cod', NULL, 'pending', 'pending', 'newadmin@gmail.com', 'newadmin@gmail.com', '01768261278', 'Tb Gate,Mohakhali,DhakaMohakhali', '70.00', 'yuiyio', 't7it7yui', '2025-01-23 04:49:12', '2025-01-23 04:49:12'),
(21, 'ORD25012310580305E9', 5, NULL, 2375.00, 70.00, 0.00, 2445.00, 'cod', NULL, 'pending', 'pending', 'newadmin@gmail.com', 'newadmin@gmail.com', '01768261278', 'Tb Gate,Mohakhali,DhakaMohakhali', '70.00', '2030', 'fghj', '2025-01-23 04:58:03', '2025-01-23 04:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `variant_color` varchar(255) DEFAULT NULL,
  `variant_size` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `variant_id`, `quantity`, `price`, `subtotal`, `variant_color`, `variant_size`, `created_at`, `updated_at`) VALUES
(19, 9, 7, 21, 2, 1000.00, 2000.00, 'Red', '11X24X4 Inch', '2025-01-05 02:24:52', '2025-01-05 02:24:52'),
(21, 11, 12, 28, 1, 64400.00, 64400.00, 'Red', '11X24X4 Inch', '2025-01-09 04:34:26', '2025-01-09 04:34:26'),
(24, 14, 13, 29, 1, 1000.00, 1000.00, 'Red', '11X24X4 Inch', '2025-01-13 00:01:29', '2025-01-13 00:01:29'),
(27, 17, 39, 68, 1, 2375.00, 2375.00, 'Chestnut Leather', 'Standard', '2025-01-18 05:28:30', '2025-01-18 05:28:30'),
(28, 18, 41, 70, 4, 720.00, 2880.00, 'Copper', 'Standard', '2025-01-21 02:56:11', '2025-01-21 02:56:11'),
(29, 19, 19, 47, 1, 900.00, 900.00, 'Red', '11X24X4 Inch', '2025-01-23 04:46:21', '2025-01-23 04:46:21'),
(30, 20, 44, 73, 1, 720.00, 720.00, 'Copper', 'Standard', '2025-01-23 04:49:12', '2025-01-23 04:49:12'),
(31, 21, 40, 69, 1, 2375.00, 2375.00, 'Chestnut Leather', 'Standard', '2025-01-23 04:58:03', '2025-01-23 04:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount_type` enum('fixed','percentage') DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `slug`, `product_image`, `product_code`, `category_id`, `subcategory_id`, `brand_id`, `unit_id`, `discount_type`, `discount_amount`, `tags`, `sale_price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(7, 'leather belt for men', 'new-juteleather-bag-copy', 'product_1737355719_678df1c7a8ff7.jpg', 'P173572068423619', 1, 1, 1, 1, 'percentage', 20.00, NULL, 1250.00, NULL, 1, '2025-01-01 02:38:04', '2025-01-20 00:48:39'),
(12, 'elegent belt', 'leather-belt-for-men-copy', 'product_1737028408_6788f338a1eaf.jpg', 'P173615213541576', 1, 1, 1, 1, 'percentage', 0.00, NULL, 500.00, 'Jute is used in the manufacture of fabrics, such as Hessian cloth, sacking, scrim, carpet backing cloth (CBC), and canvas. Hessian is lighter than sacking, and it is used for bags, wrappers, wall-coverings, upholstery, and home furnishings. Sacking, which is a fabric made of heavy jute fibers, has its use in the name.', 1, '2025-01-06 02:28:55', '2025-01-16 05:53:28'),
(13, 'leather belt for men', 'leather-belt-for-men-copy', 'product_1737028377_6788f31984dc6.jpg', 'P173615214322467', 1, 1, 1, 1, 'percentage', 20.00, NULL, 1250.00, 'Jute is used in the manufacture of fabrics, such as Hessian cloth, sacking, scrim, carpet backing cloth (CBC), and canvas. Hessian is lighter than sacking, and it is used for bags, wrappers, wall-coverings, upholstery, and home furnishings. Sacking, which is a fabric made of heavy jute fibers, has its use in the name.', 1, '2025-01-06 02:29:03', '2025-01-16 05:52:57'),
(14, 'leather belt for men', 'leather-belt-for-men-copy', 'product_1737028340_6788f2f4a9e03.jpg', 'P173615214727345', 1, 1, 1, 1, 'percentage', 20.00, NULL, 950.00, 'Jute is used in the manufacture of fabrics, such as Hessian cloth, sacking, scrim, carpet backing cloth (CBC), and canvas. Hessian is lighter than sacking, and it is used for bags, wrappers, wall-coverings, upholstery, and home furnishings. Sacking, which is a fabric made of heavy jute fibers, has its use in the name.', 1, '2025-01-06 02:29:07', '2025-01-20 06:12:34'),
(15, 'red color lether bag', 'leather-belt-for-men-copy', 'product_1737028303_6788f2cf14da6.jpg', 'P173615215234550', 1, 1, 1, 1, 'percentage', 20.00, NULL, 500.00, 'Jute is used in the manufacture of fabrics, such as Hessian cloth, sacking, scrim, carpet backing cloth (CBC), and canvas. Hessian is lighter than sacking, and it is used for bags, wrappers, wall-coverings, upholstery, and home furnishings. Sacking, which is a fabric made of heavy jute fibers, has its use in the name.', 1, '2025-01-06 02:29:12', '2025-01-16 05:51:43'),
(16, 'big size stylish wallet for men', 'leather-belt-for-men-copy', 'product_1737024226_6788e2e24f0d0.jpg', 'P173615215689886', 1, 1, 1, 1, 'percentage', 20.00, NULL, 700.00, 'Jute is used in the manufacture of fabrics, such as Hessian cloth, sacking, scrim, carpet backing cloth (CBC), and canvas. Hessian is lighter than sacking, and it is used for bags, wrappers, wall-coverings, upholstery, and home furnishings. Sacking, which is a fabric made of heavy jute fibers, has its use in the name.', 1, '2025-01-06 02:29:16', '2025-01-16 04:43:46'),
(17, 'dynamic card holder wallet for men', 'leather-belt-for-men-copy', 'product_1737024161_6788e2a1841f3.jpg', 'P173615217071654', 1, 2, 1, 1, 'percentage', 20.00, NULL, 2000.00, 'Jute is used in the manufacture of fabrics, such as Hessian cloth, sacking, scrim, carpet backing cloth (CBC), and canvas. Hessian is lighter than sacking, and it is used for bags, wrappers, wall-coverings, upholstery, and home furnishings. Sacking, which is a fabric made of heavy jute fibers, has its use in the name.', 1, '2025-01-06 02:29:30', '2025-01-20 06:12:04'),
(18, 'new product', 'leather-belt-for-men-copy', 'product_1737024083_6788e25332b5b.jpg', 'P173615217460930', 1, 1, 1, 1, NULL, 0.00, NULL, 250.00, 'Jute is used in the manufacture of fabrics, such as Hessian cloth, sacking, scrim, carpet backing cloth (CBC), and canvas. Hessian is lighter than sacking, and it is used for bags, wrappers, wall-coverings, upholstery, and home furnishings. Sacking, which is a fabric made of heavy jute fibers, has its use in the name.', 1, '2025-01-06 02:29:34', '2025-01-16 04:41:23'),
(19, 'Men\'s Cotton T-Shirt', 'mens-cotton-tshirt', 'product_1737023850_6788e16a70d3a.jpg', 'P173702312938608', 1, 1, 1, 1, 'percentage', 10.00, NULL, 1000.00, '100% cotton t-shirt with round neck', 1, '2025-01-16 04:25:29', '2025-01-16 04:37:30'),
(20, 'Men\'s Cotton T-Shirt', 'mens-cotton-tshirt', 'product_1737028679_6788f447af696.jpg', 'P173702359172240', 1, 1, 1, 1, 'percentage', 10.00, NULL, 1000.00, 'Premium cotton t-shirt with comfortable fit', 1, '2025-01-16 04:33:11', '2025-01-16 05:57:59'),
(23, 'Men\'s Cotton T-Shirt', 'mens-cotton-tshirt', '1737024655_6788e48f6dbdc.jpg', 'P173702465550174', 1, 1, 1, 1, 'percentage', 10.00, NULL, 1000.00, 'Premium cotton t-shirt with comfortable fit', 1, '2025-01-16 04:50:55', '2025-01-16 04:50:55'),
(26, 'new natural belt', 'new-natural-belt', '1737032395_678902cb86ad6.jpg', 'P173703239558297', 14, 5, 3, 1, 'percentage', 10.00, NULL, 500.00, 'retyjukj', 1, '2025-01-16 06:59:55', '2025-01-16 06:59:55'),
(27, 'new natural belt (Copy)', 'new-natural-belt-copy', '1737032413_678902dd65588.jpg', 'P173703241327202', 14, 5, 3, 1, 'percentage', 10.00, NULL, 500.00, 'retyjukj', 1, '2025-01-16 07:00:13', '2025-01-16 07:00:13'),
(39, 'Premium Leather Wallet for Men । MW-05 (Copy)', 'premium-leather-wallet-for-men-mw-05-copy', 'product_1737577316_67915364b5b0a.jpg', 'P173719673121072', 5, 3, 1, 1, 'percentage', 5.00, NULL, 1600.00, 'tyikuill', 1, '2025-01-18 04:38:51', '2025-01-22 14:21:56'),
(40, 'Premium Leather Wallet for Men । MW-05 (Copy) (Copy)', 'premium-leather-wallet-for-men-mw-05-copy-copy', 'product_1737577390_679153aea5a35.jpg', 'P173719673623399', 5, 3, 1, 1, 'percentage', 5.00, NULL, 2500.00, 'tyikuill', 1, '2025-01-18 04:38:56', '2025-01-22 14:23:10'),
(41, 'New Short Wallet For Man', 'new-short-wallet-for-man', '1737284107_678cda0b07f0c.jpg', 'P173728410765547', 5, 3, 3, 1, 'percentage', 20.00, NULL, 900.00, '<h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"></h3><table class=\"table table-bordered\"><tbody><tr><td><h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">About the Category</span></h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Introducing RSMLeather\'s collection of premium leather wallets, designed for the \r\nmodern man. Made from 100% genuine cowhide leather and expertly crafted \r\nwith export quality finishing, these wallets are built to last for at \r\nleast five years.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Choose\r\n between the Short and Long wallet types, both of which offer a stylish \r\nand functional design to cater to your needs. The wallets come in \r\npremium packaging, making them an ideal gift for someone special or a \r\ntreat for yourself.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">RSMLeather\'s\r\n commitment to quality is reflected in every detail of the wallet\'s \r\ndesign and construction, resulting in a durable and fashionable \r\naccessory that can complement any outfit. Proudly made in Bangladesh, \r\nthese wallets are a genuine branded product that you can trust.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Invest in&nbsp;RSMLeather\'s leather wallets today and experience the perfect blend of style, durability, and functionality.</p></td><td><h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">Product Specifications:</span></h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●&nbsp;&nbsp;&nbsp;&nbsp;100% Genuine Leather: Each wallet is made from 100% genuine cowhide leather, ensuring the highest quality and durability.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●&nbsp;&nbsp;&nbsp;&nbsp;Material:\r\n Premium Cowhide Leather: The leather used in the wallets is of premium \r\nquality, providing a soft and comfortable feel while also being \r\nresistant to wear and tear.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●&nbsp;&nbsp;&nbsp;&nbsp;Genuine\r\n Branded Product: Manfare\'s wallets are a genuine branded product, \r\nreflecting the brand\'s commitment to quality and style.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●&nbsp;&nbsp;&nbsp;&nbsp;Export Quality Finishing: The wallets feature export quality finishing, ensuring a superior finish and attention to detail.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●&nbsp;&nbsp;&nbsp;&nbsp;Type:\r\n Short Wallet / Long Wallet: The collection offers two types of wallets -\r\n Short and Long - to cater to your individual preferences and needs.</p><br></td><td><h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">About the Category</span></h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Introducing RSMLeather collection of premium leather wallets, designed for the \r\nmodern man. Made from 100% genuine cowhide leather and expertly crafted \r\nwith export quality finishing, these wallets are built to last for at \r\nleast five years.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Choose\r\n between the Short and Long wallet types, both of which offer a stylish \r\nand functional design to cater to your needs. The wallets come in \r\npremium packaging, making them an ideal gift for someone special or a \r\ntreat for yourself.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">RSMLeather\'s\r\n commitment to quality is reflected in every detail of the wallet\'s \r\ndesign and construction, resulting in a durable and fashionable \r\naccessory that can complement any outfit. Proudly made in Bangladesh, \r\nthese wallets are a genuine branded product that you can trust.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Invest in Manfare\'s leather wallets today and experience the perfect blend of style, durability, and functionality.</p></td><td><h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">About the Brand</span></h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">RSMLeatheris a premium men\'s fashion brand that embodies style, quality, and \r\ncraftsmanship. Established in 2017, Manfare has become synonymous with \r\nhigh-end fashion and exceptional accessories that complement the modern \r\nman\'s lifestyle. From the office to the weekend, Manfare offers a range \r\nof products that cater to every occasion and style.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">The\r\n brand\'s collection of leather wallets is no exception. Each wallet is \r\nmade from 100% genuine cowhide leather and features export quality \r\nfinishing, ensuring durability and superior quality. The collection \r\noffers two types of wallets - Short and Long - to cater to your \r\nindividual preferences and needs.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">With RSMLeather, you can elevate your style and make a statement that\'s out of \r\nthe ordinary. Whether you\'re dressing up for a formal event or keeping \r\nit casual, Manfare\'s collection of leather wallets will complement your \r\nlook and provide a reliable accessory for years to come.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Carry your Style with&nbsp;<span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">Confidence</span>&nbsp;- Manfare\'s Premium Leather Wallets.</p></td></tr></tbody></table>', 1, '2025-01-19 04:55:07', '2025-01-20 01:38:56'),
(42, 'Long Wallet Chocolate', 'long-wallet-chocolate', '1737574487_67914857c697d.jpg', 'P173757448780675', 5, NULL, 3, 1, 'fixed', 200.00, NULL, 2100.00, '<p><span style=\"color: rgba(0, 0, 0, 0.72); font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif;\">ure cow leather wallet for men</span><br style=\"color: rgba(0, 0, 0, 0.72); font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif;\"><span style=\"color: rgba(0, 0, 0, 0.72); font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif;\">• 7 card slots, 1 cash slot, 1 mobile slot</span><br style=\"color: rgba(0, 0, 0, 0.72); font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif;\"><span style=\"color: rgba(0, 0, 0, 0.72); font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif;\">• 1 Id card pocket, 1 zipper slot</span><br style=\"color: rgba(0, 0, 0, 0.72); font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif;\"><span style=\"color: rgba(0, 0, 0, 0.72); font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif;\">• 100% full grain dye leather</span><br style=\"color: rgba(0, 0, 0, 0.72); font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif;\"><span style=\"color: rgba(0, 0, 0, 0.72); font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif;\">• 12 month warranty for stich and color issues</span><br style=\"color: rgba(0, 0, 0, 0.72); font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif;\"><span style=\"color: rgba(0, 0, 0, 0.72); font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif;\">• Size: 3.9 inch(W) * 7.5 inch(L)</span></p>', 1, '2025-01-22 13:34:47', '2025-01-22 13:34:47');
INSERT INTO `products` (`id`, `product_name`, `slug`, `product_image`, `product_code`, `category_id`, `subcategory_id`, `brand_id`, `unit_id`, `discount_type`, `discount_amount`, `tags`, `sale_price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(43, 'RSM Leather Magnetic Semi Long Wallet Chocolate', 'rsm-leather-magnetic-semi-long-wallet-chocolate', '1737576723_67915113e5210.jpg', 'P173757672378885', 5, NULL, 3, 1, 'fixed', 50.00, NULL, 1200.00, '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgba(0, 0, 0, 0.72);\">Meet the Mason Magnetic Semi Long Wallet with the same functionality as that long wallet.</p><ul data-slate-fragment=\"JTdCJTIyb2JqZWN0JTIyJTNBJTIyZG9jdW1lbnQlMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJkaXYlMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyTWVldCUyMCdBc3RvbiUyMEJpRm9sZCUyMFdhbGxldCclMjAlMkMlMjBhJTIwY29tcGFjdCUyMGFuZCUyMGhhbmR5JTIwd2FsbGV0JTIwbmV3bHklMjBsYXVuY2hlZCUyMHdpdGglMjB0aGUlMjBtaW5pbWFsaXN0JTIwZnVuY3Rpb25zJTIwYW5kJTIwc3BhY2VzJTIwZm9yJTIweW91ciUyMGRhaWx5JTIwdXNhZ2VzLiUyMEl0JTIwY29tZXMlMjB3aXRoJTIwJTNBNCUyMENhcmQlMjBTbG90MSUyMENvaW4lMjBTbG90MSUyMENhc2glMjBTbG90MTAwJTI1JTIwUHVyZSVDMiVBMGNvd2hpZGUlMjBmdWxsJTIwZ3JhaW4lMjBkeWUlQzIlQTBsZWF0aGVyNiUyMG1vbnRoJTIwd2FycmFudHklMjAoc3RpY2glMjBhbmQlMjBjb2xvciUyMGlzc3VlJTIwb24lMjByZWd1bGFyJTIwdXNlcylTaXplJUMyJUEwMy41NCUyMGluY2goVyklMjAqJTIwNC4zMyUyMGluY2goTCklMjIlMkMlMjJzdHlsZSUyMiUzQSUyMm1hcmdpbiUzQTAlM0JwYWRkaW5nJTNBOHB4JTIwMCUzQndoaXRlLXNwYWNlJTNBcHJlLXdyYXAlMjIlN0QlMkMlMjJub2RlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmJsb2NrJTIyJTJDJTIydHlwZSUyMiUzQSUyMnNwYW4lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyTWVldCUyMCdBc3RvbiUyMEJpRm9sZCUyMFdhbGxldCclMjAlMkMlMjBhJTIwY29tcGFjdCUyMGFuZCUyMGhhbmR5JTIwd2FsbGV0JTIwbmV3bHklMjBsYXVuY2hlZCUyMHdpdGglMjB0aGUlMjBtaW5pbWFsaXN0JTIwZnVuY3Rpb25zJTIwYW5kJTIwc3BhY2VzJTIwZm9yJTIweW91ciUyMGRhaWx5JTIwdXNhZ2VzLiUyMEl0JTIwY29tZXMlMjB3aXRoJTIwJTNBJTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJ0ZXh0JTIyJTJDJTIybGVhdmVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIybGVhZiUyMiUyQyUyMnRleHQlMjIlM0ElMjJNZWV0JTIwJ0FzdG9uJTIwQmlGb2xkJTIwV2FsbGV0JyUyMCUyQyUyMGElMjBjb21wYWN0JTIwYW5kJTIwaGFuZHklMjB3YWxsZXQlMjBuZXdseSUyMGxhdW5jaGVkJTIwd2l0aCUyMHRoZSUyMG1pbmltYWxpc3QlMjBmdW5jdGlvbnMlMjBhbmQlMjBzcGFjZXMlMjBmb3IlMjB5b3VyJTIwZGFpbHklMjB1c2FnZXMuJTIwSXQlMjBjb21lcyUyMHdpdGglMjAlM0ElMjIlMkMlMjJtYXJrcyUyMiUzQSU1QiU1RCU3RCU1RCU3RCU1RCU3RCUyQyU3QiUyMm9iamVjdCUyMiUzQSUyMmJsb2NrJTIyJTJDJTIydHlwZSUyMiUzQSUyMmJ1bGxldGVkLWxpc3QlMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyNCUyMENhcmQlMjBTbG90MSUyMENvaW4lMjBTbG90MSUyMENhc2glMjBTbG90MTAwJTI1JTIwUHVyZSVDMiVBMGNvd2hpZGUlMjBmdWxsJTIwZ3JhaW4lMjBkeWUlQzIlQTBsZWF0aGVyNiUyMG1vbnRoJTIwd2FycmFudHklMjAoc3RpY2glMjBhbmQlMjBjb2xvciUyMGlzc3VlJTIwb24lMjByZWd1bGFyJTIwdXNlcylTaXplJUMyJUEwMy41NCUyMGluY2goVyklMjAqJTIwNC4zMyUyMGluY2goTCklMjIlMkMlMjJzdHlsZSUyMiUzQSUyMmxpc3Qtc3R5bGUlM0FkaXNjJTNCbWFyZ2luLWxlZnQlM0ExMHB4JTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyNCUyMENhcmQlMjBTbG90JTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMjQlMjBDYXJkJTIwU2xvdCUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyNCUyMENhcmQlMjBTbG90JTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyMSUyMENvaW4lMjBTbG90JTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMjElMjBDb2luJTIwU2xvdCUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyMSUyMENvaW4lMjBTbG90JTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyMSUyMENhc2glMjBTbG90JTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMjElMjBDYXNoJTIwU2xvdCUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyMSUyMENhc2glMjBTbG90JTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyMTAwJTI1JTIwUHVyZSVDMiVBMGNvd2hpZGUlMjBmdWxsJTIwZ3JhaW4lMjBkeWUlQzIlQTBsZWF0aGVyJTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMjEwMCUyNSUyMFB1cmUlQzIlQTBjb3doaWRlJTIwZnVsbCUyMGdyYWluJTIwZHllJUMyJUEwbGVhdGhlciUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyMTAwJTI1JTIwUHVyZSVDMiVBMGNvd2hpZGUlMjBmdWxsJTIwZ3JhaW4lMjBkeWUlQzIlQTBsZWF0aGVyJTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyNiUyMG1vbnRoJTIwd2FycmFudHklMjAoc3RpY2glMjBhbmQlMjBjb2xvciUyMGlzc3VlJTIwb24lMjByZWd1bGFyJTIwdXNlcyklMjIlN0QlMkMlMjJub2RlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmJsb2NrJTIyJTJDJTIydHlwZSUyMiUzQSUyMnNwYW4lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyNiUyMG1vbnRoJTIwd2FycmFudHklMjAoc3RpY2glMjBhbmQlMjBjb2xvciUyMGlzc3VlJTIwb24lMjByZWd1bGFyJTIwdXNlcyklMjIlN0QlMkMlMjJub2RlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMnRleHQlMjIlMkMlMjJsZWF2ZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJsZWFmJTIyJTJDJTIydGV4dCUyMiUzQSUyMjYlMjBtb250aCUyMHdhcnJhbnR5JTIwKHN0aWNoJTIwYW5kJTIwY29sb3IlMjBpc3N1ZSUyMG9uJTIwcmVndWxhciUyMHVzZXMpJTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyU2l6ZSVDMiVBMDMuNTQlMjBpbmNoKFcpJTIwKiUyMDQuMzMlMjBpbmNoKEwpJTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMlNpemUlQzIlQTAzLjU0JTIwaW5jaChXKSUyMColMjA0LjMzJTIwaW5jaChMKSUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyU2l6ZSVDMiVBMDMuNTQlMjBpbmNoKFcpJTIwKiUyMDQuMzMlMjBpbmNoKEwpJTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0Q=\" style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; color: rgba(0, 0, 0, 0.72);\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">3-6 Card Slot</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">2 Cash Slot</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">1 mobile slot</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">1 id card holder</li></ul><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgba(0, 0, 0, 0.72);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Material</span>: 100% Pure cowhide full grain dye leather</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgba(0, 0, 0, 0.72);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Size&nbsp;</span>:&nbsp; 7 inch(L) *&nbsp;<span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;3.9 inch * 7.75 inch&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:6273,&quot;3&quot;:{&quot;1&quot;:0,&quot;3&quot;:1},&quot;10&quot;:2,&quot;14&quot;:{&quot;1&quot;:3,&quot;3&quot;:1},&quot;15&quot;:&quot;Arial&quot;}\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">4</span>&nbsp;inch(W)</p>', 1, '2025-01-22 14:12:03', '2025-01-22 14:12:03');
INSERT INTO `products` (`id`, `product_name`, `slug`, `product_image`, `product_code`, `category_id`, `subcategory_id`, `brand_id`, `unit_id`, `discount_type`, `discount_amount`, `tags`, `sale_price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(44, 'New Short Wallet For Man (Copy)', 'new-short-wallet-for-man-copy', 'product_1737577511_67915427a0054.jpg', 'P173757712144594', 5, 3, 3, 1, 'percentage', 20.00, NULL, 900.00, '<h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"></h3><table class=\"table table-bordered\"><tbody><tr><td><h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">About the Category</span></h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Introducing RSMLeather\'s collection of premium leather wallets, designed for the \r\nmodern man. Made from 100% genuine cowhide leather and expertly crafted \r\nwith export quality finishing, these wallets are built to last for at \r\nleast five years.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Choose\r\n between the Short and Long wallet types, both of which offer a stylish \r\nand functional design to cater to your needs. The wallets come in \r\npremium packaging, making them an ideal gift for someone special or a \r\ntreat for yourself.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">RSMLeather\'s\r\n commitment to quality is reflected in every detail of the wallet\'s \r\ndesign and construction, resulting in a durable and fashionable \r\naccessory that can complement any outfit. Proudly made in Bangladesh, \r\nthese wallets are a genuine branded product that you can trust.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Invest in RSMLeather\'s leather wallets today and experience the perfect blend of style, durability, and functionality.</p></td><td><h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">Product Specifications:</span></h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●    100% Genuine Leather: Each wallet is made from 100% genuine cowhide leather, ensuring the highest quality and durability.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●    Material:\r\n Premium Cowhide Leather: The leather used in the wallets is of premium \r\nquality, providing a soft and comfortable feel while also being \r\nresistant to wear and tear.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●    Genuine\r\n Branded Product: Manfare\'s wallets are a genuine branded product, \r\nreflecting the brand\'s commitment to quality and style.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●    Export Quality Finishing: The wallets feature export quality finishing, ensuring a superior finish and attention to detail.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●    Type:\r\n Short Wallet / Long Wallet: The collection offers two types of wallets -\r\n Short and Long - to cater to your individual preferences and needs.</p><br></td><td><h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">About the Category</span></h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Introducing RSMLeather collection of premium leather wallets, designed for the \r\nmodern man. Made from 100% genuine cowhide leather and expertly crafted \r\nwith export quality finishing, these wallets are built to last for at \r\nleast five years.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Choose\r\n between the Short and Long wallet types, both of which offer a stylish \r\nand functional design to cater to your needs. The wallets come in \r\npremium packaging, making them an ideal gift for someone special or a \r\ntreat for yourself.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">RSMLeather\'s\r\n commitment to quality is reflected in every detail of the wallet\'s \r\ndesign and construction, resulting in a durable and fashionable \r\naccessory that can complement any outfit. Proudly made in Bangladesh, \r\nthese wallets are a genuine branded product that you can trust.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Invest in Manfare\'s leather wallets today and experience the perfect blend of style, durability, and functionality.</p></td><td><h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">About the Brand</span></h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">RSMLeatheris a premium men\'s fashion brand that embodies style, quality, and \r\ncraftsmanship. Established in 2017, Manfare has become synonymous with \r\nhigh-end fashion and exceptional accessories that complement the modern \r\nman\'s lifestyle. From the office to the weekend, Manfare offers a range \r\nof products that cater to every occasion and style.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">The\r\n brand\'s collection of leather wallets is no exception. Each wallet is \r\nmade from 100% genuine cowhide leather and features export quality \r\nfinishing, ensuring durability and superior quality. The collection \r\noffers two types of wallets - Short and Long - to cater to your \r\nindividual preferences and needs.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">With RSMLeather, you can elevate your style and make a statement that\'s out of \r\nthe ordinary. Whether you\'re dressing up for a formal event or keeping \r\nit casual, Manfare\'s collection of leather wallets will complement your \r\nlook and provide a reliable accessory for years to come.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Carry your Style with <span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">Confidence</span> - Manfare\'s Premium Leather Wallets.</p></td></tr></tbody></table>', 1, '2025-01-22 14:18:41', '2025-01-22 14:25:11');
INSERT INTO `products` (`id`, `product_name`, `slug`, `product_image`, `product_code`, `category_id`, `subcategory_id`, `brand_id`, `unit_id`, `discount_type`, `discount_amount`, `tags`, `sale_price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(45, 'New Short Wallet For Man (Copy)', 'new-short-wallet-for-man-copy', '1737577139_679152b37c9cd.jpg', 'P173757713917190', 5, 3, 3, 1, 'percentage', 20.00, NULL, 900.00, '<h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"></h3><table class=\"table table-bordered\"><tbody><tr><td><h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">About the Category</span></h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Introducing RSMLeather\'s collection of premium leather wallets, designed for the \r\nmodern man. Made from 100% genuine cowhide leather and expertly crafted \r\nwith export quality finishing, these wallets are built to last for at \r\nleast five years.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Choose\r\n between the Short and Long wallet types, both of which offer a stylish \r\nand functional design to cater to your needs. The wallets come in \r\npremium packaging, making them an ideal gift for someone special or a \r\ntreat for yourself.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">RSMLeather\'s\r\n commitment to quality is reflected in every detail of the wallet\'s \r\ndesign and construction, resulting in a durable and fashionable \r\naccessory that can complement any outfit. Proudly made in Bangladesh, \r\nthese wallets are a genuine branded product that you can trust.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Invest in&nbsp;RSMLeather\'s leather wallets today and experience the perfect blend of style, durability, and functionality.</p></td><td><h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">Product Specifications:</span></h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●&nbsp;&nbsp;&nbsp;&nbsp;100% Genuine Leather: Each wallet is made from 100% genuine cowhide leather, ensuring the highest quality and durability.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●&nbsp;&nbsp;&nbsp;&nbsp;Material:\r\n Premium Cowhide Leather: The leather used in the wallets is of premium \r\nquality, providing a soft and comfortable feel while also being \r\nresistant to wear and tear.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●&nbsp;&nbsp;&nbsp;&nbsp;Genuine\r\n Branded Product: Manfare\'s wallets are a genuine branded product, \r\nreflecting the brand\'s commitment to quality and style.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●&nbsp;&nbsp;&nbsp;&nbsp;Export Quality Finishing: The wallets feature export quality finishing, ensuring a superior finish and attention to detail.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">●&nbsp;&nbsp;&nbsp;&nbsp;Type:\r\n Short Wallet / Long Wallet: The collection offers two types of wallets -\r\n Short and Long - to cater to your individual preferences and needs.</p><br></td><td><h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">About the Category</span></h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Introducing RSMLeather collection of premium leather wallets, designed for the \r\nmodern man. Made from 100% genuine cowhide leather and expertly crafted \r\nwith export quality finishing, these wallets are built to last for at \r\nleast five years.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Choose\r\n between the Short and Long wallet types, both of which offer a stylish \r\nand functional design to cater to your needs. The wallets come in \r\npremium packaging, making them an ideal gift for someone special or a \r\ntreat for yourself.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">RSMLeather\'s\r\n commitment to quality is reflected in every detail of the wallet\'s \r\ndesign and construction, resulting in a durable and fashionable \r\naccessory that can complement any outfit. Proudly made in Bangladesh, \r\nthese wallets are a genuine branded product that you can trust.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Invest in Manfare\'s leather wallets today and experience the perfect blend of style, durability, and functionality.</p></td><td><h3 style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1.75rem; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\"><span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">About the Brand</span></h3><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">RSMLeatheris a premium men\'s fashion brand that embodies style, quality, and \r\ncraftsmanship. Established in 2017, Manfare has become synonymous with \r\nhigh-end fashion and exceptional accessories that complement the modern \r\nman\'s lifestyle. From the office to the weekend, Manfare offers a range \r\nof products that cater to every occasion and style.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">The\r\n brand\'s collection of leather wallets is no exception. Each wallet is \r\nmade from 100% genuine cowhide leather and features export quality \r\nfinishing, ensuring durability and superior quality. The collection \r\noffers two types of wallets - Short and Long - to cater to your \r\nindividual preferences and needs.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">With RSMLeather, you can elevate your style and make a statement that\'s out of \r\nthe ordinary. Whether you\'re dressing up for a formal event or keeping \r\nit casual, Manfare\'s collection of leather wallets will complement your \r\nlook and provide a reliable accessory for years to come.</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 0.75rem; margin-left: 0px; line-height: 1; color: rgb(26, 26, 26); font-family: Bahnschrift, sans-serif;\">Carry your Style with&nbsp;<span style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder;\">Confidence</span>&nbsp;- Manfare\'s Premium Leather Wallets.</p></td></tr></tbody></table>', 1, '2025-01-22 14:18:59', '2025-01-22 14:18:59');
INSERT INTO `products` (`id`, `product_name`, `slug`, `product_image`, `product_code`, `category_id`, `subcategory_id`, `brand_id`, `unit_id`, `discount_type`, `discount_amount`, `tags`, `sale_price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(46, 'RSM Leather Magnetic Semi Long Wallet Chocolate (Copy)', 'rsm-leather-magnetic-semi-long-wallet-chocolate-copy', '1737577561_67915459e451d.jpg', 'P173757756162703', 5, NULL, 3, 1, 'fixed', 50.00, NULL, 1200.00, '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgba(0, 0, 0, 0.72);\">Meet the Mason Magnetic Semi Long Wallet with the same functionality as that long wallet.</p><ul data-slate-fragment=\"JTdCJTIyb2JqZWN0JTIyJTNBJTIyZG9jdW1lbnQlMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJkaXYlMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyTWVldCUyMCdBc3RvbiUyMEJpRm9sZCUyMFdhbGxldCclMjAlMkMlMjBhJTIwY29tcGFjdCUyMGFuZCUyMGhhbmR5JTIwd2FsbGV0JTIwbmV3bHklMjBsYXVuY2hlZCUyMHdpdGglMjB0aGUlMjBtaW5pbWFsaXN0JTIwZnVuY3Rpb25zJTIwYW5kJTIwc3BhY2VzJTIwZm9yJTIweW91ciUyMGRhaWx5JTIwdXNhZ2VzLiUyMEl0JTIwY29tZXMlMjB3aXRoJTIwJTNBNCUyMENhcmQlMjBTbG90MSUyMENvaW4lMjBTbG90MSUyMENhc2glMjBTbG90MTAwJTI1JTIwUHVyZSVDMiVBMGNvd2hpZGUlMjBmdWxsJTIwZ3JhaW4lMjBkeWUlQzIlQTBsZWF0aGVyNiUyMG1vbnRoJTIwd2FycmFudHklMjAoc3RpY2glMjBhbmQlMjBjb2xvciUyMGlzc3VlJTIwb24lMjByZWd1bGFyJTIwdXNlcylTaXplJUMyJUEwMy41NCUyMGluY2goVyklMjAqJTIwNC4zMyUyMGluY2goTCklMjIlMkMlMjJzdHlsZSUyMiUzQSUyMm1hcmdpbiUzQTAlM0JwYWRkaW5nJTNBOHB4JTIwMCUzQndoaXRlLXNwYWNlJTNBcHJlLXdyYXAlMjIlN0QlMkMlMjJub2RlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmJsb2NrJTIyJTJDJTIydHlwZSUyMiUzQSUyMnNwYW4lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyTWVldCUyMCdBc3RvbiUyMEJpRm9sZCUyMFdhbGxldCclMjAlMkMlMjBhJTIwY29tcGFjdCUyMGFuZCUyMGhhbmR5JTIwd2FsbGV0JTIwbmV3bHklMjBsYXVuY2hlZCUyMHdpdGglMjB0aGUlMjBtaW5pbWFsaXN0JTIwZnVuY3Rpb25zJTIwYW5kJTIwc3BhY2VzJTIwZm9yJTIweW91ciUyMGRhaWx5JTIwdXNhZ2VzLiUyMEl0JTIwY29tZXMlMjB3aXRoJTIwJTNBJTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJ0ZXh0JTIyJTJDJTIybGVhdmVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIybGVhZiUyMiUyQyUyMnRleHQlMjIlM0ElMjJNZWV0JTIwJ0FzdG9uJTIwQmlGb2xkJTIwV2FsbGV0JyUyMCUyQyUyMGElMjBjb21wYWN0JTIwYW5kJTIwaGFuZHklMjB3YWxsZXQlMjBuZXdseSUyMGxhdW5jaGVkJTIwd2l0aCUyMHRoZSUyMG1pbmltYWxpc3QlMjBmdW5jdGlvbnMlMjBhbmQlMjBzcGFjZXMlMjBmb3IlMjB5b3VyJTIwZGFpbHklMjB1c2FnZXMuJTIwSXQlMjBjb21lcyUyMHdpdGglMjAlM0ElMjIlMkMlMjJtYXJrcyUyMiUzQSU1QiU1RCU3RCU1RCU3RCU1RCU3RCUyQyU3QiUyMm9iamVjdCUyMiUzQSUyMmJsb2NrJTIyJTJDJTIydHlwZSUyMiUzQSUyMmJ1bGxldGVkLWxpc3QlMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyNCUyMENhcmQlMjBTbG90MSUyMENvaW4lMjBTbG90MSUyMENhc2glMjBTbG90MTAwJTI1JTIwUHVyZSVDMiVBMGNvd2hpZGUlMjBmdWxsJTIwZ3JhaW4lMjBkeWUlQzIlQTBsZWF0aGVyNiUyMG1vbnRoJTIwd2FycmFudHklMjAoc3RpY2glMjBhbmQlMjBjb2xvciUyMGlzc3VlJTIwb24lMjByZWd1bGFyJTIwdXNlcylTaXplJUMyJUEwMy41NCUyMGluY2goVyklMjAqJTIwNC4zMyUyMGluY2goTCklMjIlMkMlMjJzdHlsZSUyMiUzQSUyMmxpc3Qtc3R5bGUlM0FkaXNjJTNCbWFyZ2luLWxlZnQlM0ExMHB4JTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyNCUyMENhcmQlMjBTbG90JTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMjQlMjBDYXJkJTIwU2xvdCUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyNCUyMENhcmQlMjBTbG90JTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyMSUyMENvaW4lMjBTbG90JTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMjElMjBDb2luJTIwU2xvdCUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyMSUyMENvaW4lMjBTbG90JTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyMSUyMENhc2glMjBTbG90JTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMjElMjBDYXNoJTIwU2xvdCUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyMSUyMENhc2glMjBTbG90JTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyMTAwJTI1JTIwUHVyZSVDMiVBMGNvd2hpZGUlMjBmdWxsJTIwZ3JhaW4lMjBkeWUlQzIlQTBsZWF0aGVyJTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMjEwMCUyNSUyMFB1cmUlQzIlQTBjb3doaWRlJTIwZnVsbCUyMGdyYWluJTIwZHllJUMyJUEwbGVhdGhlciUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyMTAwJTI1JTIwUHVyZSVDMiVBMGNvd2hpZGUlMjBmdWxsJTIwZ3JhaW4lMjBkeWUlQzIlQTBsZWF0aGVyJTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyNiUyMG1vbnRoJTIwd2FycmFudHklMjAoc3RpY2glMjBhbmQlMjBjb2xvciUyMGlzc3VlJTIwb24lMjByZWd1bGFyJTIwdXNlcyklMjIlN0QlMkMlMjJub2RlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmJsb2NrJTIyJTJDJTIydHlwZSUyMiUzQSUyMnNwYW4lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyNiUyMG1vbnRoJTIwd2FycmFudHklMjAoc3RpY2glMjBhbmQlMjBjb2xvciUyMGlzc3VlJTIwb24lMjByZWd1bGFyJTIwdXNlcyklMjIlN0QlMkMlMjJub2RlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMnRleHQlMjIlMkMlMjJsZWF2ZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJsZWFmJTIyJTJDJTIydGV4dCUyMiUzQSUyMjYlMjBtb250aCUyMHdhcnJhbnR5JTIwKHN0aWNoJTIwYW5kJTIwY29sb3IlMjBpc3N1ZSUyMG9uJTIwcmVndWxhciUyMHVzZXMpJTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyU2l6ZSVDMiVBMDMuNTQlMjBpbmNoKFcpJTIwKiUyMDQuMzMlMjBpbmNoKEwpJTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMlNpemUlQzIlQTAzLjU0JTIwaW5jaChXKSUyMColMjA0LjMzJTIwaW5jaChMKSUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyU2l6ZSVDMiVBMDMuNTQlMjBpbmNoKFcpJTIwKiUyMDQuMzMlMjBpbmNoKEwpJTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0Q=\" style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; color: rgba(0, 0, 0, 0.72);\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">3-6 Card Slot</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">2 Cash Slot</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">1 mobile slot</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">1 id card holder</li></ul><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgba(0, 0, 0, 0.72);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Material</span>: 100% Pure cowhide full grain dye leather</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgba(0, 0, 0, 0.72);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Size&nbsp;</span>:&nbsp; 7 inch(L) *&nbsp;<span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;3.9 inch * 7.75 inch&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:6273,&quot;3&quot;:{&quot;1&quot;:0,&quot;3&quot;:1},&quot;10&quot;:2,&quot;14&quot;:{&quot;1&quot;:3,&quot;3&quot;:1},&quot;15&quot;:&quot;Arial&quot;}\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">4</span>&nbsp;inch(W)</p>', 1, '2025-01-22 14:26:01', '2025-01-22 14:26:01'),
(47, 'RSM Leather Magnetic Semi Long Wallet Chocolate (Copy)', 'rsm-leather-magnetic-semi-long-wallet-chocolate-copy', '1737577569_67915461b0d39.jpg', 'P173757756931128', 5, NULL, 3, 1, 'fixed', 50.00, NULL, 1200.00, '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgba(0, 0, 0, 0.72);\">Meet the Mason Magnetic Semi Long Wallet with the same functionality as that long wallet.</p><ul data-slate-fragment=\"JTdCJTIyb2JqZWN0JTIyJTNBJTIyZG9jdW1lbnQlMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJkaXYlMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyTWVldCUyMCdBc3RvbiUyMEJpRm9sZCUyMFdhbGxldCclMjAlMkMlMjBhJTIwY29tcGFjdCUyMGFuZCUyMGhhbmR5JTIwd2FsbGV0JTIwbmV3bHklMjBsYXVuY2hlZCUyMHdpdGglMjB0aGUlMjBtaW5pbWFsaXN0JTIwZnVuY3Rpb25zJTIwYW5kJTIwc3BhY2VzJTIwZm9yJTIweW91ciUyMGRhaWx5JTIwdXNhZ2VzLiUyMEl0JTIwY29tZXMlMjB3aXRoJTIwJTNBNCUyMENhcmQlMjBTbG90MSUyMENvaW4lMjBTbG90MSUyMENhc2glMjBTbG90MTAwJTI1JTIwUHVyZSVDMiVBMGNvd2hpZGUlMjBmdWxsJTIwZ3JhaW4lMjBkeWUlQzIlQTBsZWF0aGVyNiUyMG1vbnRoJTIwd2FycmFudHklMjAoc3RpY2glMjBhbmQlMjBjb2xvciUyMGlzc3VlJTIwb24lMjByZWd1bGFyJTIwdXNlcylTaXplJUMyJUEwMy41NCUyMGluY2goVyklMjAqJTIwNC4zMyUyMGluY2goTCklMjIlMkMlMjJzdHlsZSUyMiUzQSUyMm1hcmdpbiUzQTAlM0JwYWRkaW5nJTNBOHB4JTIwMCUzQndoaXRlLXNwYWNlJTNBcHJlLXdyYXAlMjIlN0QlMkMlMjJub2RlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmJsb2NrJTIyJTJDJTIydHlwZSUyMiUzQSUyMnNwYW4lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyTWVldCUyMCdBc3RvbiUyMEJpRm9sZCUyMFdhbGxldCclMjAlMkMlMjBhJTIwY29tcGFjdCUyMGFuZCUyMGhhbmR5JTIwd2FsbGV0JTIwbmV3bHklMjBsYXVuY2hlZCUyMHdpdGglMjB0aGUlMjBtaW5pbWFsaXN0JTIwZnVuY3Rpb25zJTIwYW5kJTIwc3BhY2VzJTIwZm9yJTIweW91ciUyMGRhaWx5JTIwdXNhZ2VzLiUyMEl0JTIwY29tZXMlMjB3aXRoJTIwJTNBJTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJ0ZXh0JTIyJTJDJTIybGVhdmVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIybGVhZiUyMiUyQyUyMnRleHQlMjIlM0ElMjJNZWV0JTIwJ0FzdG9uJTIwQmlGb2xkJTIwV2FsbGV0JyUyMCUyQyUyMGElMjBjb21wYWN0JTIwYW5kJTIwaGFuZHklMjB3YWxsZXQlMjBuZXdseSUyMGxhdW5jaGVkJTIwd2l0aCUyMHRoZSUyMG1pbmltYWxpc3QlMjBmdW5jdGlvbnMlMjBhbmQlMjBzcGFjZXMlMjBmb3IlMjB5b3VyJTIwZGFpbHklMjB1c2FnZXMuJTIwSXQlMjBjb21lcyUyMHdpdGglMjAlM0ElMjIlMkMlMjJtYXJrcyUyMiUzQSU1QiU1RCU3RCU1RCU3RCU1RCU3RCUyQyU3QiUyMm9iamVjdCUyMiUzQSUyMmJsb2NrJTIyJTJDJTIydHlwZSUyMiUzQSUyMmJ1bGxldGVkLWxpc3QlMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyNCUyMENhcmQlMjBTbG90MSUyMENvaW4lMjBTbG90MSUyMENhc2glMjBTbG90MTAwJTI1JTIwUHVyZSVDMiVBMGNvd2hpZGUlMjBmdWxsJTIwZ3JhaW4lMjBkeWUlQzIlQTBsZWF0aGVyNiUyMG1vbnRoJTIwd2FycmFudHklMjAoc3RpY2glMjBhbmQlMjBjb2xvciUyMGlzc3VlJTIwb24lMjByZWd1bGFyJTIwdXNlcylTaXplJUMyJUEwMy41NCUyMGluY2goVyklMjAqJTIwNC4zMyUyMGluY2goTCklMjIlMkMlMjJzdHlsZSUyMiUzQSUyMmxpc3Qtc3R5bGUlM0FkaXNjJTNCbWFyZ2luLWxlZnQlM0ExMHB4JTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyNCUyMENhcmQlMjBTbG90JTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMjQlMjBDYXJkJTIwU2xvdCUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyNCUyMENhcmQlMjBTbG90JTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyMSUyMENvaW4lMjBTbG90JTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMjElMjBDb2luJTIwU2xvdCUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyMSUyMENvaW4lMjBTbG90JTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyMSUyMENhc2glMjBTbG90JTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMjElMjBDYXNoJTIwU2xvdCUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyMSUyMENhc2glMjBTbG90JTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyMTAwJTI1JTIwUHVyZSVDMiVBMGNvd2hpZGUlMjBmdWxsJTIwZ3JhaW4lMjBkeWUlQzIlQTBsZWF0aGVyJTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMjEwMCUyNSUyMFB1cmUlQzIlQTBjb3doaWRlJTIwZnVsbCUyMGdyYWluJTIwZHllJUMyJUEwbGVhdGhlciUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyMTAwJTI1JTIwUHVyZSVDMiVBMGNvd2hpZGUlMjBmdWxsJTIwZ3JhaW4lMjBkeWUlQzIlQTBsZWF0aGVyJTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyNiUyMG1vbnRoJTIwd2FycmFudHklMjAoc3RpY2glMjBhbmQlMjBjb2xvciUyMGlzc3VlJTIwb24lMjByZWd1bGFyJTIwdXNlcyklMjIlN0QlMkMlMjJub2RlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmJsb2NrJTIyJTJDJTIydHlwZSUyMiUzQSUyMnNwYW4lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyNiUyMG1vbnRoJTIwd2FycmFudHklMjAoc3RpY2glMjBhbmQlMjBjb2xvciUyMGlzc3VlJTIwb24lMjByZWd1bGFyJTIwdXNlcyklMjIlN0QlMkMlMjJub2RlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMnRleHQlMjIlMkMlMjJsZWF2ZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJsZWFmJTIyJTJDJTIydGV4dCUyMiUzQSUyMjYlMjBtb250aCUyMHdhcnJhbnR5JTIwKHN0aWNoJTIwYW5kJTIwY29sb3IlMjBpc3N1ZSUyMG9uJTIwcmVndWxhciUyMHVzZXMpJTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlMkMlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJsaXN0LWl0ZW0lMjIlMkMlMjJkYXRhJTIyJTNBJTdCJTIyaW5uZXJUZXh0JTIyJTNBJTIyU2l6ZSVDMiVBMDMuNTQlMjBpbmNoKFcpJTIwKiUyMDQuMzMlMjBpbmNoKEwpJTIyJTdEJTJDJTIybm9kZXMlMjIlM0ElNUIlN0IlMjJvYmplY3QlMjIlM0ElMjJibG9jayUyMiUyQyUyMnR5cGUlMjIlM0ElMjJzcGFuJTIyJTJDJTIyZGF0YSUyMiUzQSU3QiUyMmlubmVyVGV4dCUyMiUzQSUyMlNpemUlQzIlQTAzLjU0JTIwaW5jaChXKSUyMColMjA0LjMzJTIwaW5jaChMKSUyMiU3RCUyQyUyMm5vZGVzJTIyJTNBJTVCJTdCJTIyb2JqZWN0JTIyJTNBJTIydGV4dCUyMiUyQyUyMmxlYXZlcyUyMiUzQSU1QiU3QiUyMm9iamVjdCUyMiUzQSUyMmxlYWYlMjIlMkMlMjJ0ZXh0JTIyJTNBJTIyU2l6ZSVDMiVBMDMuNTQlMjBpbmNoKFcpJTIwKiUyMDQuMzMlMjBpbmNoKEwpJTIyJTJDJTIybWFya3MlMjIlM0ElNUIlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0QlNUQlN0Q=\" style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; color: rgba(0, 0, 0, 0.72);\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">3-6 Card Slot</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">2 Cash Slot</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">1 mobile slot</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">1 id card holder</li></ul><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgba(0, 0, 0, 0.72);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Material</span>: 100% Pure cowhide full grain dye leather</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: &quot;Merriweather Sans&quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgba(0, 0, 0, 0.72);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Size&nbsp;</span>:&nbsp; 7 inch(L) *&nbsp;<span data-sheets-value=\"{&quot;1&quot;:2,&quot;2&quot;:&quot;3.9 inch * 7.75 inch&quot;}\" data-sheets-userformat=\"{&quot;2&quot;:6273,&quot;3&quot;:{&quot;1&quot;:0,&quot;3&quot;:1},&quot;10&quot;:2,&quot;14&quot;:{&quot;1&quot;:3,&quot;3&quot;:1},&quot;15&quot;:&quot;Arial&quot;}\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">4</span>&nbsp;inch(W)</p>', 1, '2025-01-22 14:26:09', '2025-01-22 14:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_varients`
--

CREATE TABLE `product_varients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0,
  `variant_price` decimal(10,2) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_varients`
--

INSERT INTO `product_varients` (`id`, `product_id`, `color_id`, `size_id`, `stock_quantity`, `variant_price`, `sku`, `status`, `created_at`, `updated_at`) VALUES
(19, 7, 3, 3, 9, 1250.00, 'P173572068423619-3-1', 1, '2025-01-01 02:38:04', '2025-01-20 00:48:39'),
(20, 7, 6, 2, 6, 1250.00, 'P173572068423619-6-1', 1, '2025-01-01 02:38:04', '2025-01-20 00:48:39'),
(21, 7, 1, 1, 8, 1250.00, 'P173572068423619-9-1', 1, '2025-01-01 02:38:04', '2025-01-20 00:48:39'),
(26, 12, 3, 3, 9, 1250.00, 'P173615213541576-3-3', 1, '2025-01-06 02:28:55', '2025-01-16 05:53:28'),
(27, 12, 6, 2, 6, 1250.00, 'P173615213541576-6-2', 1, '2025-01-06 02:28:55', '2025-01-16 05:53:28'),
(28, 12, 1, 1, 7, 1250.00, 'P173615213541576-1-1', 1, '2025-01-06 02:28:55', '2025-01-16 05:53:28'),
(29, 13, 1, 1, 7, 1250.00, 'P173615214322467-1-1', 1, '2025-01-06 02:29:03', '2025-01-16 05:52:57'),
(30, 13, 3, 3, 9, 1250.00, 'P173615214322467-3-3', 1, '2025-01-06 02:29:03', '2025-01-16 05:52:57'),
(31, 13, 6, 2, 6, 1250.00, 'P173615214322467-6-2', 1, '2025-01-06 02:29:03', '2025-01-16 05:52:57'),
(32, 14, 1, 1, 8, 1250.00, 'P173615214727345-1-1', 1, '2025-01-06 02:29:07', '2025-01-20 06:12:34'),
(33, 14, 3, 3, 9, 1250.00, 'P173615214727345-3-3', 1, '2025-01-06 02:29:07', '2025-01-20 06:12:34'),
(34, 14, 6, 2, 6, 1250.00, 'P173615214727345-6-2', 1, '2025-01-06 02:29:07', '2025-01-20 06:12:34'),
(35, 15, 1, 1, 8, 1250.00, 'P173615215234550-1-1', 1, '2025-01-06 02:29:12', '2025-01-16 05:51:43'),
(36, 15, 3, 3, 9, 1250.00, 'P173615215234550-3-3', 1, '2025-01-06 02:29:12', '2025-01-16 05:51:43'),
(37, 15, 6, 2, 6, 1250.00, 'P173615215234550-6-2', 1, '2025-01-06 02:29:12', '2025-01-16 05:51:43'),
(38, 16, 1, 1, 8, 1250.00, 'P173615215689886-1-1', 1, '2025-01-06 02:29:16', '2025-01-16 04:43:46'),
(39, 16, 3, 3, 9, 1250.00, 'P173615215689886-3-3', 1, '2025-01-06 02:29:16', '2025-01-16 04:43:46'),
(40, 16, 6, 2, 6, 1250.00, 'P173615215689886-6-2', 1, '2025-01-06 02:29:16', '2025-01-16 04:43:46'),
(41, 17, 1, 1, 8, 1250.00, 'P173615217071654-1-1', 1, '2025-01-06 02:29:30', '2025-01-20 06:12:04'),
(42, 17, 3, 3, 9, 1250.00, 'P173615217071654-3-3', 1, '2025-01-06 02:29:30', '2025-01-20 06:12:04'),
(43, 17, 6, 2, 6, 1250.00, 'P173615217071654-6-2', 1, '2025-01-06 02:29:30', '2025-01-20 06:12:04'),
(44, 18, 1, 1, 8, 1250.00, 'P173615217460930-1-1', 1, '2025-01-06 02:29:34', '2025-01-16 04:41:23'),
(45, 18, 3, 3, 9, 1250.00, 'P173615217460930-3-3', 1, '2025-01-06 02:29:34', '2025-01-16 04:41:23'),
(46, 18, 6, 2, 6, 1250.00, 'P173615217460930-6-2', 1, '2025-01-06 02:29:34', '2025-01-16 04:41:23'),
(47, 19, 1, 1, 49, 950.00, 'P173702312938608-1-1', 1, '2025-01-16 04:25:29', '2025-01-23 04:46:21'),
(48, 19, 2, 2, 30, 950.00, 'P173702312938608-2-2', 1, '2025-01-16 04:25:29', '2025-01-16 04:37:30'),
(49, 20, 1, 1, 50, 950.00, 'P173702359172240-1-1', 1, '2025-01-16 04:33:11', '2025-01-16 05:57:59'),
(50, 20, 1, 2, 30, 950.00, 'P173702359172240-1-2', 1, '2025-01-16 04:33:11', '2025-01-16 05:57:59'),
(51, 20, 1, 3, 40, 950.00, 'P173702359172240-1-3', 1, '2025-01-16 04:33:11', '2025-01-16 05:57:59'),
(52, 23, 1, 1, 50, 950.00, 'P173702465550174-1-1', 1, '2025-01-16 04:50:55', '2025-01-16 05:57:24'),
(53, 23, 1, 2, 30, 950.00, 'P173702465550174-1-2', 1, '2025-01-16 04:50:55', '2025-01-16 05:57:24'),
(54, 23, 1, 3, 40, 950.00, 'P173702465550174-1-3', 1, '2025-01-16 04:50:55', '2025-01-16 05:57:24'),
(55, 26, 10, 5, 40, 500.00, 'P173703239558297-10-5', 1, '2025-01-16 06:59:55', '2025-01-16 06:59:55'),
(56, 27, 10, 5, 40, 500.00, 'P173703241327202-10-5', 1, '2025-01-16 07:00:13', '2025-01-16 07:00:13'),
(68, 39, 12, 4, 49, 2500.00, 'P173719673121072-12-4', 1, '2025-01-18 04:38:51', '2025-01-22 14:21:56'),
(69, 40, 12, 4, 49, 2500.00, 'P173719673623399-12-4', 1, '2025-01-18 04:38:56', '2025-01-23 04:58:03'),
(70, 41, 13, 4, 46, 900.00, 'P173728410765547-13-4', 1, '2025-01-19 04:55:07', '2025-01-21 02:56:11'),
(71, 42, 12, 4, 20, 1900.00, 'P173757448780675-12-4', 1, '2025-01-22 13:34:47', '2025-01-22 13:34:47'),
(72, 43, 10, 5, 10, 1150.00, 'P173757672378885-10-5', 1, '2025-01-22 14:12:03', '2025-01-22 14:12:03'),
(73, 44, 13, 4, 45, 900.00, 'P173757712144594-13-4', 1, '2025-01-22 14:18:41', '2025-01-23 04:49:12'),
(74, 45, 13, 4, 46, 900.00, 'P173757713917190-13-4', 1, '2025-01-22 14:18:59', '2025-01-22 14:18:59'),
(75, 46, 10, 5, 10, 1150.00, 'P173757756162703-10-5', 1, '2025-01-22 14:26:01', '2025-01-22 14:26:01'),
(76, 47, 10, 5, 10, 1150.00, 'P173757756931128-10-5', 1, '2025-01-22 14:26:09', '2025-01-22 14:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `secondery_banners`
--

CREATE TABLE `secondery_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `secondery_banners`
--

INSERT INTO `secondery_banners` (`id`, `title`, `image`, `link`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Men', '1736854925_67864d8dd75e9.jpg', 'http://127.0.0.1:8000/contact/us', 0, 1, '2025-01-13 05:28:31', '2025-01-14 05:42:05'),
(2, 'Women', '1736767742_6784f8fe7a78e.png', 'http://127.0.0.1:8000/contact/us', 1, 0, '2025-01-13 05:29:02', '2025-01-13 06:06:12'),
(3, 'new', '1736854937_67864d993e440.jpg', 'http://127.0.0.1:8000/contact/us', 1, 1, '2025-01-13 06:06:57', '2025-01-14 05:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `footer_description` text DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `site_name`, `logo`, `favicon`, `phone`, `email`, `address`, `footer_description`, `facebook_url`, `instagram_url`, `youtube_url`, `created_at`, `updated_at`) VALUES
(1, 'rsmleather', 'settings/logo_1738747758.jpg', 'settings/favicon_1737374011.jpg', '01768261278', 'rsmleatherbd@gmail.com', 'Baridhara,dhaka,bangladesh', 'reh', 'https://www.facebook.com/rsmleather/photos_by', 'https://www.facebook.com/rsmleather/photos_by', 'https://www.facebook.com/rsmleather/photos_by', '2025-01-14 03:21:17', '2025-02-05 03:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '11X24X4 Inch', '11x24x4-inch', 1, '2025-01-01 02:33:16', '2025-01-05 04:02:55'),
(2, '22X18X6 Inch', '22x18x6-inch', 1, '2025-01-01 02:33:32', '2025-01-05 04:03:31'),
(3, 'child size', 'child-size', 1, '2025-01-01 02:58:19', '2025-01-05 04:03:32'),
(4, 'Standard', 'standard', 0, '2025-01-16 06:48:59', '2025-01-16 06:48:59'),
(5, 'big', 'big', 0, '2025-01-16 06:49:30', '2025-01-16 06:49:30'),
(6, 'small', 'small', 0, '2025-01-16 06:49:34', '2025-01-16 06:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `image`, `link`, `order`, `status`, `created_at`, `updated_at`) VALUES
(3, 'df', 'dfsdf', '1737378665_678e4b69576a8.jpg', NULL, 2, 1, '2025-01-13 12:06:55', '2025-01-20 07:11:05'),
(6, 'iu', 'hhjhgjn', '1737378675_678e4b732b9f5.jpg', NULL, 3, 1, '2025-01-13 15:09:20', '2025-01-20 07:11:15'),
(7, NULL, NULL, '1737378653_678e4b5de31b1.jpg', NULL, 0, 1, '2025-01-13 15:10:19', '2025-01-20 07:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `special_banners`
--

CREATE TABLE `special_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `special_banners`
--

INSERT INTO `special_banners` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Year sale', '🎉 Celebrate the New Year with our Mega Sale! 🎉 Kickstart 2025 with incredible savings as we bring you up to 70% OFF on a wide range of your favorite products. Whether you\'re looking to refresh your wardrobe with the latest fashion trends, upgrade to cutting-edge electronics, or redefine your home with stylish essentials, we’ve got you covered. Enjoy exclusive discounts across all categories, plus free shipping on orders over $50 to make your shopping experience even better. But hurry—this limited-time offer is only available until January 15th! Don’t miss the chance to shop, save, and start the new year in style. 🛍️✨', '1737197253_678b86c55e429.jpg', 1, '2025-01-13 03:09:19', '2025-01-18 04:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'belt', 'belt', 'subcategory_images/1737006559.jpg', 1, '2025-01-01 02:26:53', '2025-01-15 23:49:19'),
(2, 1, 'wallet', 'wallet', 'subcategory_images/1737006805.jpg', 1, '2025-01-01 02:27:19', '2025-01-15 23:53:25'),
(3, 5, 'wallet for women', 'wallet-for-women', 'subcategory_images/1736152513.jpg', 1, '2025-01-01 02:27:37', '2025-01-14 02:34:40'),
(5, 14, 'new belt', 'new-belt', 'subcategory-thumbnail/1737030711.jpg', 1, '2025-01-16 06:31:52', '2025-01-16 06:31:59'),
(6, 14, 'new wallet', 'new-wallet', 'subcategory-thumbnail/1737030740.jpg', 1, '2025-01-16 06:32:20', '2025-01-16 06:33:29'),
(7, 13, 'new bag', 'new-bag', 'subcategory-thumbnail/1737030776.jpg', 1, '2025-01-16 06:32:56', '2025-01-16 06:33:28'),
(8, 13, 'new rubber belt', 'new-rubber-belt', 'subcategory-thumbnail/1737030796.jpg', 1, '2025-01-16 06:33:16', '2025-01-16 06:33:28'),
(9, 2, 'Men', 'men', 'subcategory-thumbnail/1737461107.jpg', 0, '2025-01-21 06:05:07', '2025-01-21 06:05:07'),
(10, 3, 'Leather', 'leather', 'subcategory-thumbnail/1737461161.jpg', 0, '2025-01-21 06:06:01', '2025-01-21 06:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'pc', 'pc', 0, '2025-01-01 02:34:05', '2025-01-01 02:34:05'),
(2, 'kg', 'kg', 0, '2025-01-01 02:34:23', '2025-01-01 02:34:23'),
(3, 'dozen', 'dozen', 0, '2025-01-01 02:34:40', '2025-01-01 02:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `image`, `address`, `role`, `email`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rezuan Ahmmed', '01768261278', 'profile-images/cFB2D2ftyZn50XbVjJQisYVGHrH9itpRq7M90u8f.jpg', 'gazipur road', 0, 'rezuanahmmeds@gmail.com', '$2y$12$PY8s.pHcgnUg4kWNs.1HuODMmsvo3dH1CLzPrIjQLMAtBp9TADdFa', NULL, NULL, '2025-01-01 01:18:26', '2025-01-01 01:41:26'),
(2, 'Rezuan Ahmmed', '01768261278', 'userimages/YjDWja0bBLnDPMm8YHnAOwnvRlFXGJhK6FLuAAYW.png', 'gazipur road', 1, 'admin@example.com', '$2y$12$AHEyBg7jtidAnrWVQglL2.GlqzoxpyxPOvEipybTTsPIDRgV0w32O', NULL, NULL, '2025-01-01 01:34:14', '2025-01-01 01:34:14'),
(3, 'nasim', '01768261278', 'userimages/HH0nog0Gryq5FG8R09J3DnpePyoB7foLOsRa1nje.jpg', 'gazipur road', 0, 'nasim@gmail.com', '$2y$12$MVcfol5nxKYFLLs4KfvFV.m2S6klgyC1KAVbrq2YbKZjpc2AlCgYO', NULL, NULL, '2025-01-02 10:46:31', '2025-01-02 10:46:31'),
(4, 'Admin', '01234567890', 'default.jpg', 'Admin Address', 1, 'admin@admin.com', '$2y$12$P5wRVVc99zdcDbqvmyeVmeLyUc9k5EUiCeteo13PTQEui1XNsDJUK', NULL, NULL, '2025-01-05 02:20:44', '2025-01-05 02:20:44'),
(5, 'newadmin@gmail.com', '01768261278', 'userimages/n2fmBcARKPLX3IQ8yGyAvYGIhIJc0HIlLYzuRMWZ.jpg', 'Tb Gate,Mohakhali,Dhaka\r\nMohakhali', 1, 'newadmin@gmail.com', '$2y$12$GyaHVYZdR.iXwcqAXuAeY.W3OzIAwMeUe0Ta6TKPX5q2fLOajQ7bu', NULL, NULL, '2025-01-06 01:35:25', '2025-01-19 03:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_processes`
--
ALTER TABLE `about_processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_sections`
--
ALTER TABLE `about_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_values`
--
ALTER TABLE `about_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_varient_id_foreign` (`varient_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_images_product_id_foreign` (`product_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_code_unique` (`product_code`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `product_varients`
--
ALTER TABLE `product_varients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_variant_combination` (`product_id`,`color_id`,`size_id`),
  ADD UNIQUE KEY `product_varients_sku_unique` (`sku`),
  ADD KEY `product_varients_color_id_foreign` (`color_id`),
  ADD KEY `product_varients_size_id_foreign` (`size_id`);

--
-- Indexes for table `secondery_banners`
--
ALTER TABLE `secondery_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
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
-- Indexes for table `special_banners`
--
ALTER TABLE `special_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wish_lists_user_id_foreign` (`user_id`),
  ADD KEY `wish_lists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_processes`
--
ALTER TABLE `about_processes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `about_sections`
--
ALTER TABLE `about_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `about_values`
--
ALTER TABLE `about_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_varients`
--
ALTER TABLE `product_varients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `secondery_banners`
--
ALTER TABLE `secondery_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `special_banners`
--
ALTER TABLE `special_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_varient_id_foreign` FOREIGN KEY (`varient_id`) REFERENCES `product_varients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD CONSTRAINT `gallery_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `product_varients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_varients`
--
ALTER TABLE `product_varients`
  ADD CONSTRAINT `product_varients_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_varients_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_varients_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wish_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
