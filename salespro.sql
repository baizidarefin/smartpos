-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2024 at 01:07 AM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dccket_salespro`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '10010', 'Sales Account', 0, 0, NULL, 1, 1, '2023-09-17 00:09:16', '2023-09-17 00:09:16'),
(2, '20010', 'Expense Account', 0, 0, NULL, NULL, 1, '2023-09-17 00:09:34', '2023-09-17 00:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Niketon', NULL, 'Smart Shop', NULL, 'razen.jazzy@gmail.com', '01787671962', 'Niketon, Mohakhali, Gulshan, Dhaka-1212', 'Dhaka', 'Dhaka', '1212', 'Bangladesh', 1, '2020-11-18 09:05:27', '2020-11-18 09:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `page_title`, `short_description`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Pran', '20240501111532.png', NULL, NULL, NULL, 1, '2020-11-18 07:13:22', '2024-05-01 16:15:32'),
(2, 'Pepsi', '20240501113433.png', NULL, NULL, NULL, 1, '2020-11-18 07:42:50', '2024-05-01 16:34:33'),
(3, 'Teer', '20240501114530.png', NULL, NULL, NULL, 1, '2020-11-18 07:43:02', '2024-05-01 16:45:30'),
(4, 'ACI', '20240501112909.png', NULL, NULL, NULL, 1, '2020-11-18 07:43:13', '2024-05-01 16:29:09'),
(5, 'Bashundhara', '20240501113420.png', NULL, NULL, NULL, 1, '2020-11-18 07:43:26', '2024-05-01 16:34:20'),
(6, 'Danish', '20240501114332.png', NULL, NULL, NULL, 1, '2020-11-18 07:43:43', '2024-05-01 16:43:32'),
(7, 'Fresh', '20240501114350.png', NULL, NULL, NULL, 1, '2020-11-18 07:43:54', '2024-05-01 16:43:50'),
(8, 'Bombay Sweets', '20240501114403.jpg', NULL, NULL, NULL, 1, '2020-11-18 07:44:09', '2024-05-01 16:44:03'),
(9, 'Coke', '20240501114431.jpg', NULL, NULL, NULL, 1, '2020-11-18 07:44:26', '2024-05-01 16:44:31'),
(10, 'Olympic', '20240501114446.png', NULL, NULL, NULL, 1, '2020-11-18 07:45:01', '2024-05-01 16:44:46'),
(11, 'Unilever', '20240501114907.png', NULL, NULL, NULL, 1, '2020-11-18 07:45:22', '2024-05-01 16:49:07'),
(12, 'Milk Vita', NULL, NULL, NULL, NULL, 1, '2020-11-18 07:45:35', '2020-11-18 07:45:35'),
(13, 'Dano', '20240501114925.png', NULL, NULL, NULL, 1, '2020-11-18 07:47:10', '2024-05-01 16:49:25'),
(14, 'Polar', '20240501114943.png', NULL, NULL, NULL, 1, '2020-11-18 07:47:26', '2024-05-01 16:49:43'),
(15, 'Nabisco', '20240501115016.png', NULL, NULL, NULL, 1, '2020-11-18 07:47:40', '2024-05-01 16:50:16'),
(16, 'Igloo', '20240501115125.jpg', NULL, NULL, NULL, 1, '2020-11-18 07:47:51', '2024-05-01 16:51:25'),
(17, 'Square', '20240501115047.jpg', NULL, NULL, NULL, 1, '2020-11-19 22:52:42', '2024-05-01 16:50:47'),
(18, 'Radhuni', '20240501114639.png', NULL, NULL, NULL, 1, '2020-11-21 02:30:13', '2024-05-01 16:46:39'),
(19, 'Dekko', NULL, NULL, NULL, NULL, 1, '2020-11-28 06:47:57', '2020-11-28 06:47:57'),
(20, 'Harpic', NULL, NULL, NULL, NULL, 1, '2020-11-28 06:48:15', '2020-11-28 06:48:15'),
(21, 'Cocola', NULL, NULL, NULL, NULL, 1, '2020-11-28 06:53:24', '2020-11-28 06:53:24'),
(22, 'Diploma', NULL, NULL, NULL, NULL, 1, '2020-11-28 06:53:54', '2020-11-28 06:53:54'),
(23, 'Dove', NULL, NULL, NULL, NULL, 1, '2020-11-28 06:54:56', '2020-11-28 06:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `cash_registers`
--

CREATE TABLE `cash_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_registers`
--

INSERT INTO `cash_registers` (`id`, `cash_in_hand`, `user_id`, `warehouse_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, 1, '2024-04-17 03:32:54', '2024-04-17 03:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) DEFAULT NULL,
  `woocommerce_category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `page_title`, `short_description`, `slug`, `icon`, `featured`, `is_active`, `woocommerce_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Beverages', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2020-11-18 07:29:25', '2020-11-18 07:30:23'),
(2, 'Home and Cleaning', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2020-11-18 07:29:36', '2020-11-18 07:30:31'),
(3, 'Beverages', '20240501033703.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:31:15', '2020-11-18 07:31:15'),
(4, 'Home and Cleaning', '20240430105921.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:31:24', '2020-11-18 07:31:24'),
(5, 'Stationaries', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2020-11-18 07:31:35', '2020-11-19 23:46:31'),
(6, 'Beauty Products', '20240501120642.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:31:45', '2020-11-18 07:31:45'),
(7, 'Baby Care', '20240430114656.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:32:01', '2020-11-18 07:32:01'),
(8, 'Health Products', '20240501105458.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:32:12', '2020-11-18 07:32:12'),
(9, 'Frozen Food', '20240501105220.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:32:21', '2020-11-18 07:32:21'),
(10, 'Cooking', '20240501104702.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:32:36', '2020-11-18 07:32:36'),
(11, 'Pest Control', '20240501110733.jpg', 4, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:32:42', '2020-11-18 07:52:22'),
(12, 'Other', '20240501110623.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:32:51', '2020-11-18 07:32:51'),
(13, 'Cleaning Supplies', '20240501104103.jpg', 4, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:48:36', '2020-11-18 07:48:36'),
(14, 'Air Fresheners', '20240430111344.jpg', 4, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:49:07', '2020-11-18 07:49:07'),
(15, 'Dish Detergents', '20240501104921.jpg', 4, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:49:24', '2020-11-18 07:49:24'),
(16, 'Kitchen Accessories', '20240501105856.jpg', 4, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:49:54', '2020-11-18 07:49:54'),
(17, 'Laundry', '20240501110046.jpg', 4, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:50:15', '2020-11-18 07:50:15'),
(18, 'Napkins & Paper Products', '20240501110301.jpg', 4, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:50:31', '2020-11-18 07:50:31'),
(19, 'Cleaning Accessories', '20240501101947.jpg', 4, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-18 07:51:15', '2020-11-18 07:51:15'),
(20, 'Stationery', '20240501110952.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2020-11-19 23:46:12', '2020-11-19 23:46:12'),
(21, 'Chocolates', '20240501101409.jpg', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2021-02-24 09:00:37', '2021-02-24 09:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `phone_number`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Default Courier', '000', 'Local', 1, '2023-09-17 00:12:42', '2023-09-17 00:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` double NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `exchange_rate`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'BDT', '৳', NULL, 1, 1, '2023-06-21 13:34:32', '2024-04-30 15:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `wishlist` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `user_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `points`, `is_active`, `created_at`, `updated_at`, `deposit`, `expense`, `wishlist`) VALUES
(1, 1, NULL, 'Walk-in Customer', NULL, NULL, '###', NULL, '@@@', 'Local', NULL, NULL, NULL, NULL, 1, '2023-09-17 00:08:07', '2023-09-17 00:08:07', NULL, NULL, NULL),
(2, 3, NULL, 'Tonmoy Cruze', 'Golpo Communications', 'tonmoy@golpocom.com', '01720950565', NULL, '116/9, South Mohakhali, Gulshan, Dhaka-1212', 'Dhaka', 'Dhaka', '1212', 'Bangladesh', NULL, 0, '2020-11-18 09:06:28', '2020-12-06 12:22:14', NULL, NULL, NULL),
(3, 1, NULL, 'Dibbaw Cruze', NULL, 'lukecruze07@gmail.com', '01701863222', NULL, '116/9, South Mohakhali', 'Dhaka', NULL, NULL, NULL, NULL, 0, '2020-11-21 03:01:01', '2020-12-06 12:22:14', NULL, NULL, NULL),
(4, 1, NULL, 'Anonymous', NULL, NULL, '01XXXXXXXXX', NULL, 'Mohakhali', 'Dhaka', NULL, NULL, NULL, NULL, 1, '2020-12-06 12:21:55', '2020-12-06 12:21:55', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'General Customers', '0', 1, '2023-09-17 00:06:59', '2023-09-17 00:06:59'),
(2, 'Wholesale Customers', '5', 1, '2023-09-17 00:07:22', '2023-09-17 00:07:22'),
(3, 'Silver', '0', 1, '2020-11-18 07:12:30', '2020-11-18 07:12:30'),
(4, 'Gold', '0', 1, '2020-11-18 07:12:39', '2020-11-18 07:12:39'),
(5, 'Platinum', '0', 1, '2020-11-18 07:12:49', '2020-11-18 07:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `belongs_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` text COLLATE utf8mb4_unicode_ci,
  `option_value` text COLLATE utf8mb4_unicode_ci,
  `grid_value` int(11) NOT NULL,
  `is_table` tinyint(1) NOT NULL,
  `is_invoice` tinyint(1) NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_disable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `courier_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Administration', 1, '2023-09-16 23:47:21', '2023-09-16 23:47:21'),
(2, 'Sales and Marketing', 1, '2023-09-16 23:47:33', '2023-09-16 23:47:33'),
(3, 'Huma Resource', 1, '2023-09-16 23:47:44', '2023-09-16 23:47:44'),
(4, 'Finance', 1, '2023-09-16 23:47:51', '2023-09-16 23:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicable_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_list` longtext COLLATE utf8mb4_unicode_ci,
  `valid_from` date NOT NULL,
  `valid_till` date NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `minimum_qty` double NOT NULL,
  `maximum_qty` double NOT NULL,
  `days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_plans`
--

CREATE TABLE `discount_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_plan_customers`
--

CREATE TABLE `discount_plan_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_plan_discounts`
--

CREATE TABLE `discount_plan_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` int(11) NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dso_alerts`
--

CREATE TABLE `dso_alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_info` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_settings`
--

CREATE TABLE `ecommerce_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_page` bigint(20) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `contact_form_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_shipping_from` double DEFAULT NULL,
  `flat_rate_shipping` double DEFAULT NULL,
  `checkout_pages` json DEFAULT NULL,
  `custom_css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_js` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `analytics_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_pixel_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell_without_stock` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `staff_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '20010', 'General Expense', 1, '2023-09-17 00:10:59', '2023-09-17 00:10:59'),
(2, '20020', 'Utility Bills', 1, '2023-09-17 00:11:21', '2023-09-17 00:11:21'),
(3, '20030', 'Payroll Expense', 1, '2023-09-17 00:11:37', '2023-09-17 00:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `external_services`
--

CREATE TABLE `external_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `subscription_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_access` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `without_stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `date_format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal` int(11) DEFAULT '2',
  `state` int(11) DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modules` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `currency_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_zatca` tinyint(1) DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `is_rtl`, `created_at`, `updated_at`, `currency`, `package_id`, `subscription_type`, `staff_access`, `without_stock`, `date_format`, `developed_by`, `invoice_format`, `decimal`, `state`, `theme`, `modules`, `currency_position`, `expiry_date`, `is_zatca`, `company_name`, `vat_registration_number`) VALUES
(1, 'POS', '20240430041728.png', 0, '2023-06-20 23:30:00', '2024-04-30 09:17:28', '1', NULL, NULL, 'own', 'no', 'Y-m-d', 'Golpo Communications', 'standard', 2, 1, 'default.css', NULL, 'prefix', NULL, 0, NULL, NULL),
(2, 'Smart POS', '20240430041728.png', NULL, '2018-07-06 11:13:11', '2020-11-21 02:56:34', 'BDT', NULL, NULL, 'own', 'no', 'd/m/Y', NULL, NULL, 2, NULL, 'default.css', NULL, 'prefix', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_recharges`
--

CREATE TABLE `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_settings`
--

CREATE TABLE `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_settings`
--

INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
(1, '10:00am', '6:00pm', '2019-01-02 08:20:08', '2019-01-02 10:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en', '2018-07-07 22:29:17', '2019-12-24 17:04:20');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_settings`
--

CREATE TABLE `mail_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
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
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 1),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 1),
(27, '2018_05_20_054532_create_adjustments_table', 1),
(28, '2018_05_20_054859_create_product_adjustments_table', 1),
(29, '2018_05_21_163419_create_returns_table', 1),
(30, '2018_05_21_163443_create_product_returns_table', 1),
(31, '2018_06_02_050905_create_roles_table', 1),
(32, '2018_06_02_073430_add_columns_to_users_table', 1),
(33, '2018_06_03_053738_create_permission_tables', 1),
(34, '2018_06_21_063736_create_pos_setting_table', 1),
(35, '2018_06_21_094155_add_user_id_to_sales_table', 1),
(36, '2018_06_21_101529_add_user_id_to_purchases_table', 1),
(37, '2018_06_21_103512_add_user_id_to_transfers_table', 1),
(38, '2018_06_23_061058_add_user_id_to_quotations_table', 1),
(39, '2018_06_23_082427_add_is_deleted_to_users_table', 1),
(40, '2018_06_25_043308_change_email_to_users_table', 1),
(41, '2018_07_06_115449_create_general_settings_table', 1),
(42, '2018_07_08_043944_create_languages_table', 1),
(43, '2018_07_11_102144_add_user_id_to_returns_table', 1),
(44, '2018_07_11_102334_add_user_id_to_payments_table', 1),
(45, '2018_07_22_130541_add_digital_to_products_table', 1),
(46, '2018_07_24_154250_create_deliveries_table', 1),
(47, '2018_08_16_053336_create_expense_categories_table', 1),
(48, '2018_08_17_115415_create_expenses_table', 1),
(49, '2018_08_18_050418_create_gift_cards_table', 1),
(50, '2018_08_19_063119_create_payment_with_gift_card_table', 1),
(51, '2018_08_25_042333_create_gift_card_recharges_table', 1),
(52, '2018_08_25_101354_add_deposit_expense_to_customers_table', 1),
(53, '2018_08_26_043801_create_deposits_table', 1),
(54, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 1),
(55, '2018_09_09_092713_create_payment_with_paypal_table', 1),
(56, '2018_09_10_051254_add_currency_to_general_settings_table', 1),
(57, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 1),
(58, '2018_10_26_034927_create_coupons_table', 1),
(59, '2018_10_27_090857_add_coupon_to_sales_table', 1),
(60, '2018_11_07_070155_add_currency_position_to_general_settings_table', 1),
(61, '2018_11_19_094650_add_combo_to_products_table', 1),
(62, '2018_12_09_043712_create_accounts_table', 1),
(63, '2018_12_17_112253_add_is_default_to_accounts_table', 1),
(64, '2018_12_19_103941_add_account_id_to_payments_table', 1),
(65, '2018_12_20_065900_add_account_id_to_expenses_table', 1),
(66, '2018_12_20_082753_add_account_id_to_returns_table', 1),
(67, '2018_12_26_064330_create_return_purchases_table', 1),
(68, '2018_12_26_144708_create_purchase_product_return_table', 1),
(69, '2018_12_27_110018_create_departments_table', 1),
(70, '2018_12_30_054844_create_employees_table', 1),
(71, '2018_12_31_125210_create_payrolls_table', 1),
(72, '2018_12_31_150446_add_department_id_to_employees_table', 1),
(73, '2019_01_01_062708_add_user_id_to_expenses_table', 1),
(74, '2019_01_02_075644_create_hrm_settings_table', 1),
(75, '2019_01_02_090334_create_attendances_table', 1),
(76, '2019_01_27_160956_add_three_columns_to_general_settings_table', 1),
(77, '2019_02_15_183303_create_stock_counts_table', 1),
(78, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 1),
(79, '2019_04_13_101707_add_tax_no_to_customers_table', 1),
(80, '2019_08_19_000000_create_failed_jobs_table', 1),
(81, '2019_10_14_111455_create_holidays_table', 1),
(82, '2019_11_13_145619_add_is_variant_to_products_table', 1),
(83, '2019_11_13_150206_create_product_variants_table', 1),
(84, '2019_11_13_153828_create_variants_table', 1),
(85, '2019_11_25_134041_add_qty_to_product_variants_table', 1),
(86, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 1),
(87, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 1),
(88, '2019_11_29_182201_add_variant_id_to_product_sales_table', 1),
(89, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 1),
(90, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 1),
(91, '2019_12_08_114954_add_variant_id_to_product_returns_table', 1),
(92, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 1),
(93, '2020_02_28_103340_create_money_transfers_table', 1),
(94, '2020_07_01_193151_add_image_to_categories_table', 1),
(95, '2020_09_26_130426_add_user_id_to_deliveries_table', 1),
(96, '2020_10_11_125457_create_cash_registers_table', 1),
(97, '2020_10_13_155019_add_cash_register_id_to_sales_table', 1),
(98, '2020_10_13_172624_add_cash_register_id_to_returns_table', 1),
(99, '2020_10_17_212338_add_cash_register_id_to_payments_table', 1),
(100, '2020_10_18_124200_add_cash_register_id_to_expenses_table', 1),
(101, '2020_10_21_121632_add_developed_by_to_general_settings_table', 1),
(102, '2020_10_30_135557_create_notifications_table', 1),
(103, '2020_11_01_044954_create_currencies_table', 1),
(104, '2020_11_01_140736_add_price_to_product_warehouse_table', 1),
(105, '2020_11_02_050633_add_is_diff_price_to_products_table', 1),
(106, '2020_11_09_055222_add_user_id_to_customers_table', 1),
(107, '2020_11_17_054806_add_invoice_format_to_general_settings_table', 1),
(108, '2021_02_10_074859_add_variant_id_to_product_adjustments_table', 1),
(109, '2021_03_07_093606_create_product_batches_table', 1),
(110, '2021_03_07_093759_add_product_batch_id_to_product_warehouse_table', 1),
(111, '2021_03_07_093900_add_product_batch_id_to_product_purchases_table', 1),
(112, '2021_03_11_132603_add_product_batch_id_to_product_sales_table', 1),
(113, '2021_03_25_125421_add_is_batch_to_products_table', 1),
(114, '2021_05_19_120127_add_product_batch_id_to_product_returns_table', 1),
(115, '2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table', 1),
(116, '2021_05_23_124848_add_product_batch_id_to_product_transfer_table', 1),
(117, '2021_05_26_153106_add_product_batch_id_to_product_quotation_table', 1),
(118, '2021_06_08_213007_create_reward_point_settings_table', 1),
(119, '2021_06_16_104155_add_points_to_customers_table', 1),
(120, '2021_06_17_101057_add_used_points_to_payments_table', 1),
(121, '2021_07_06_132716_add_variant_list_to_products_table', 1),
(122, '2021_09_27_161141_add_is_imei_to_products_table', 1),
(123, '2021_09_28_170052_add_imei_number_to_product_warehouse_table', 1),
(124, '2021_09_28_170126_add_imei_number_to_product_purchases_table', 1),
(125, '2021_10_03_170652_add_imei_number_to_product_sales_table', 1),
(126, '2021_10_10_145214_add_imei_number_to_product_returns_table', 1),
(127, '2021_10_11_104504_add_imei_number_to_product_transfer_table', 1),
(128, '2021_10_12_160107_add_imei_number_to_purchase_product_return_table', 1),
(129, '2021_10_12_205146_add_is_rtl_to_general_settings_table', 1),
(130, '2022_01_13_191242_create_discount_plans_table', 1),
(131, '2022_01_14_174318_create_discount_plan_customers_table', 1),
(132, '2022_01_14_202439_create_discounts_table', 1),
(133, '2022_01_16_153506_create_discount_plan_discounts_table', 1),
(134, '2022_02_05_174210_add_order_discount_type_and_value_to_sales_table', 1),
(135, '2022_05_26_195506_add_daily_sale_objective_to_products_table', 1),
(136, '2022_05_28_104209_create_dso_alerts_table', 1),
(137, '2022_06_01_112100_add_is_embeded_to_products_table', 1),
(138, '2022_06_14_130505_add_sale_id_to_returns_table', 1),
(139, '2022_07_19_115504_add_variant_data_to_products_table', 1),
(140, '2022_07_25_194300_add_additional_cost_to_product_variants_table', 1),
(141, '2022_09_04_195610_add_purchase_id_to_return_purchases_table', 1),
(142, '2023_01_18_125040_alter_table_general_settings', 1),
(143, '2023_01_18_133701_alter_table_pos_setting', 1),
(144, '2023_01_25_145309_add_expiry_date_to_general_settings_table', 1),
(145, '2023_02_23_125656_alter_table_sales', 1),
(146, '2023_02_26_124100_add_package_id_to_general_settings_table', 1),
(147, '2023_03_04_120325_create_custom_fields_table', 1),
(148, '2023_03_22_174352_add_currency_id_and_exchange_rate_to_returns_table', 1),
(149, '2023_03_27_114320_add_currency_id_and_exchange_rate_to_purchases_table', 1),
(150, '2023_03_27_132747_add_currency_id_and_exchange_rate_to_return_purchases_table', 1),
(151, '2023_04_25_150236_create_mail_settings_table', 1),
(152, '2023_05_13_125424_add_zatca_to_general_settings_table', 1),
(153, '2023_05_28_155540_create_tables_table', 1),
(154, '2023_05_29_115039_add_is_table_to_pos_setting_table', 1),
(155, '2023_05_29_115301_add_table_id_to_sales_table', 1),
(156, '2023_05_31_165049_add_queue_no_to_sales_table', 1),
(157, '2023_07_23_160254_create_couriers_table', 1),
(158, '2023_07_23_174343_add_courier_id_to_deliveries_table', 1),
(159, '2023_08_12_124016_add_staff_id_to_employees_table', 1),
(160, '2023_08_14_142608_add_is_active_to_currencies_table', 1),
(161, '2023_08_24_130203_change_columns_to_attendances_table', 1),
(162, '2023_09_10_134503_add_without_stock_to_general_settings_table', 1),
(163, '2023_03_14_174658_add_subscription_type_to_general_setting_table', 2),
(164, '2023_09_26_211542_add_modules_to_general_settings_table', 2),
(165, '2023_10_15_124306_add_return_qty_to_product_sales_table', 2),
(166, '2023_12_03_235606_crete_external_services_table', 2),
(167, '2024_02_04_131826_add_unit_cost_to_product_adjustments_table', 2),
(168, '2024_02_13_173126_change_modules_to_general_settings_table', 2),
(169, '2022_09_05_213845_create_sliders_table', 3),
(170, '2022_09_05_214402_create_pages_table', 3),
(171, '2022_09_05_235844_add_multiple_column_to_categories_table', 3),
(172, '2022_09_06_215257_add_symbol_to_currencies_table', 3),
(173, '2022_09_13_194813_create_links_table', 3),
(174, '2022_09_14_151339_add_widget_title_to_links_table', 3),
(175, '2022_09_14_151904_add_multiple_column_to_products_table', 3),
(176, '2023_10_05_190729_create_ecommerce_settings_table', 3),
(177, '2023_10_05_201640_create_social_links_table', 3),
(178, '2023_10_08_211633_crete_menus_table', 3),
(179, '2023_10_08_211806_crete_menu_items_table', 3),
(180, '2023_10_12_101855_crete_widgets_table', 3),
(181, '2023_10_19_211003_crete_page_widgets_table', 3),
(182, '2023_11_09_110943_crete_collections_table', 3),
(183, '2023_11_09_113224_crete_customer_addresses_table', 3),
(184, '2023_11_09_113237_crete_faqs_table', 3),
(185, '2023_11_09_114154_add_multiple_columns_to_brands_table', 3),
(186, '2023_11_09_125124_crete_faq_categories_table', 3),
(187, '2023_11_14_155545_crete_newsletter_table', 3),
(188, '2023_12_01_110636_add_multiple_columns_to_sales_table', 3),
(189, '2024_01_27_185652_add_multiple_columns_to_ecommerce_settings_table', 3),
(190, '2024_02_03_183124_add_multiple_columns_to_products_table', 3),
(191, '2024_02_06_133230_edi_sales_table', 3),
(192, '2024_02_12_235611_change_page_widgets_table', 3),
(193, '2024_02_18_175556_add_columns_to_customers_table', 3),
(194, '2023_03_09_114030_create_woocommerce_sync_logs_table', 4),
(195, '2023_03_14_114324_create_woocommerce_settings_table', 4),
(196, '2023_03_18_141537_add_woocommerce_category_id_to_categories_table', 4),
(197, '2023_03_20_214553_add_column_for_woocommerce_to_products_table', 4),
(198, '2023_03_20_214563_add_woocommerce_tax_id_to_taxes_table', 4),
(199, '2023_03_20_214565_add_woocommerce_order_id_to_sales_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `money_transfers`
--

CREATE TABLE `money_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` text COLLATE utf8mb4_unicode_ci,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Default',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_widgets`
--

CREATE TABLE `page_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category_slider_loop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category_slider_autoplay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tab_product_collection_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tab_product_collection_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tab_product_collection_slider_loop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tab_product_collection_slider_autoplay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tab_product_collection_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_collection_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_collection_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_collection_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_collection_slider_loop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_collection_slider_autoplay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_collection_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_slider_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_slider_loop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_slider_autoplay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_slider_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_slider_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_slider_loop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_slider_autoplay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_slider_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3c_banner_link1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3c_banner_image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3c_banner_link2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3c_banner_image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3c_banner_link3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `3c_banner_image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2c_banner_link1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2c_banner_image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2c_banner_link2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2c_banner_image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1c_banner_link1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1c_banner_image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_cheque`
--

CREATE TABLE `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_gift_card`
--

CREATE TABLE `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_paypal`
--

CREATE TABLE `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 00:30:09', '2018-06-03 00:30:09'),
(5, 'products-delete', 'web', '2018-06-03 22:24:22', '2018-06-03 22:24:22'),
(6, 'products-add', 'web', '2018-06-04 00:04:14', '2018-06-04 00:04:14'),
(7, 'products-index', 'web', '2018-06-04 03:04:27', '2018-06-04 03:04:27'),
(8, 'purchases-index', 'web', '2018-06-04 07:33:19', '2018-06-04 07:33:19'),
(9, 'purchases-add', 'web', '2018-06-04 07:42:25', '2018-06-04 07:42:25'),
(10, 'purchases-edit', 'web', '2018-06-04 09:17:36', '2018-06-04 09:17:36'),
(11, 'purchases-delete', 'web', '2018-06-04 09:17:36', '2018-06-04 09:17:36'),
(12, 'sales-index', 'web', '2018-06-04 10:19:08', '2018-06-04 10:19:08'),
(13, 'sales-add', 'web', '2018-06-04 10:19:52', '2018-06-04 10:19:52'),
(14, 'sales-edit', 'web', '2018-06-04 10:19:52', '2018-06-04 10:19:52'),
(15, 'sales-delete', 'web', '2018-06-04 10:19:53', '2018-06-04 10:19:53'),
(16, 'quotes-index', 'web', '2018-06-04 21:35:10', '2018-06-04 21:35:10'),
(17, 'quotes-add', 'web', '2018-06-04 21:35:10', '2018-06-04 21:35:10'),
(18, 'quotes-edit', 'web', '2018-06-04 21:35:10', '2018-06-04 21:35:10'),
(19, 'quotes-delete', 'web', '2018-06-04 21:35:10', '2018-06-04 21:35:10'),
(20, 'transfers-index', 'web', '2018-06-04 22:00:03', '2018-06-04 22:00:03'),
(21, 'transfers-add', 'web', '2018-06-04 22:00:03', '2018-06-04 22:00:03'),
(22, 'transfers-edit', 'web', '2018-06-04 22:00:03', '2018-06-04 22:00:03'),
(23, 'transfers-delete', 'web', '2018-06-04 22:00:03', '2018-06-04 22:00:03'),
(24, 'returns-index', 'web', '2018-06-04 22:20:24', '2018-06-04 22:20:24'),
(25, 'returns-add', 'web', '2018-06-04 22:20:24', '2018-06-04 22:20:24'),
(26, 'returns-edit', 'web', '2018-06-04 22:20:25', '2018-06-04 22:20:25'),
(27, 'returns-delete', 'web', '2018-06-04 22:20:25', '2018-06-04 22:20:25'),
(28, 'customers-index', 'web', '2018-06-04 22:45:54', '2018-06-04 22:45:54'),
(29, 'customers-add', 'web', '2018-06-04 22:45:55', '2018-06-04 22:45:55'),
(30, 'customers-edit', 'web', '2018-06-04 22:45:55', '2018-06-04 22:45:55'),
(31, 'customers-delete', 'web', '2018-06-04 22:45:55', '2018-06-04 22:45:55'),
(32, 'suppliers-index', 'web', '2018-06-04 23:10:12', '2018-06-04 23:10:12'),
(33, 'suppliers-add', 'web', '2018-06-04 23:10:12', '2018-06-04 23:10:12'),
(34, 'suppliers-edit', 'web', '2018-06-04 23:10:12', '2018-06-04 23:10:12'),
(35, 'suppliers-delete', 'web', '2018-06-04 23:10:12', '2018-06-04 23:10:12'),
(36, 'product-report', 'web', '2018-06-24 22:35:33', '2018-06-24 22:35:33'),
(37, 'purchase-report', 'web', '2018-06-24 22:54:56', '2018-06-24 22:54:56'),
(38, 'sale-report', 'web', '2018-06-24 23:03:13', '2018-06-24 23:03:13'),
(39, 'customer-report', 'web', '2018-06-24 23:06:51', '2018-06-24 23:06:51'),
(40, 'due-report', 'web', '2018-06-24 23:09:52', '2018-06-24 23:09:52'),
(41, 'users-index', 'web', '2018-06-24 23:30:10', '2018-06-24 23:30:10'),
(42, 'users-add', 'web', '2018-06-24 23:30:10', '2018-06-24 23:30:10'),
(43, 'users-edit', 'web', '2018-06-24 23:31:30', '2018-06-24 23:31:30'),
(44, 'users-delete', 'web', '2018-06-24 23:31:30', '2018-06-24 23:31:30'),
(45, 'profit-loss', 'web', '2018-07-14 21:20:05', '2018-07-14 21:20:05'),
(46, 'best-seller', 'web', '2018-07-14 21:31:38', '2018-07-14 21:31:38'),
(47, 'daily-sale', 'web', '2018-07-14 21:54:21', '2018-07-14 21:54:21'),
(48, 'monthly-sale', 'web', '2018-07-14 22:00:41', '2018-07-14 22:00:41'),
(49, 'daily-purchase', 'web', '2018-07-14 22:06:46', '2018-07-14 22:06:46'),
(50, 'monthly-purchase', 'web', '2018-07-14 22:18:17', '2018-07-14 22:18:17'),
(51, 'payment-report', 'web', '2018-07-14 22:40:41', '2018-07-14 22:40:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-14 22:46:55', '2018-07-14 22:46:55'),
(53, 'product-qty-alert', 'web', '2018-07-14 23:03:21', '2018-07-14 23:03:21'),
(54, 'supplier-report', 'web', '2018-07-30 02:30:01', '2018-07-30 02:30:01'),
(55, 'expenses-index', 'web', '2018-09-05 00:37:10', '2018-09-05 00:37:10'),
(56, 'expenses-add', 'web', '2018-09-05 00:37:10', '2018-09-05 00:37:10'),
(57, 'expenses-edit', 'web', '2018-09-05 00:37:10', '2018-09-05 00:37:10'),
(58, 'expenses-delete', 'web', '2018-09-05 00:37:11', '2018-09-05 00:37:11'),
(59, 'general_setting', 'web', '2018-10-19 22:40:04', '2018-10-19 22:40:04'),
(60, 'mail_setting', 'web', '2018-10-19 22:40:04', '2018-10-19 22:40:04'),
(61, 'pos_setting', 'web', '2018-10-19 22:40:04', '2018-10-19 22:40:04'),
(62, 'hrm_setting', 'web', '2019-01-02 10:00:23', '2019-01-02 10:00:23'),
(63, 'purchase-return-index', 'web', '2019-01-02 21:15:14', '2019-01-02 21:15:14'),
(64, 'purchase-return-add', 'web', '2019-01-02 21:15:14', '2019-01-02 21:15:14'),
(65, 'purchase-return-edit', 'web', '2019-01-02 21:15:14', '2019-01-02 21:15:14'),
(66, 'purchase-return-delete', 'web', '2019-01-02 21:15:14', '2019-01-02 21:15:14'),
(67, 'account-index', 'web', '2019-01-02 21:36:13', '2019-01-02 21:36:13'),
(68, 'balance-sheet', 'web', '2019-01-02 21:36:14', '2019-01-02 21:36:14'),
(69, 'account-statement', 'web', '2019-01-02 21:36:14', '2019-01-02 21:36:14'),
(70, 'department', 'web', '2019-01-02 22:00:01', '2019-01-02 22:00:01'),
(71, 'attendance', 'web', '2019-01-02 22:00:01', '2019-01-02 22:00:01'),
(72, 'payroll', 'web', '2019-01-02 22:00:01', '2019-01-02 22:00:01'),
(73, 'employees-index', 'web', '2019-01-02 22:22:19', '2019-01-02 22:22:19'),
(74, 'employees-add', 'web', '2019-01-02 22:22:19', '2019-01-02 22:22:19'),
(75, 'employees-edit', 'web', '2019-01-02 22:22:19', '2019-01-02 22:22:19'),
(76, 'employees-delete', 'web', '2019-01-02 22:22:19', '2019-01-02 22:22:19'),
(77, 'user-report', 'web', '2019-01-16 06:18:18', '2019-01-16 06:18:18'),
(78, 'stock_count', 'web', '2019-02-17 10:02:01', '2019-02-17 10:02:01'),
(79, 'adjustment', 'web', '2019-02-17 10:02:02', '2019-02-17 10:02:02'),
(80, 'sms_setting', 'web', '2019-02-22 04:48:03', '2019-02-22 04:48:03'),
(81, 'create_sms', 'web', '2019-02-22 04:48:03', '2019-02-22 04:48:03'),
(82, 'print_barcode', 'web', '2019-03-07 04:32:19', '2019-03-07 04:32:19'),
(83, 'empty_database', 'web', '2019-03-07 04:32:19', '2019-03-07 04:32:19'),
(84, 'customer_group', 'web', '2019-03-07 05:07:15', '2019-03-07 05:07:15'),
(85, 'unit', 'web', '2019-03-07 05:07:15', '2019-03-07 05:07:15'),
(86, 'tax', 'web', '2019-03-07 05:07:15', '2019-03-07 05:07:15'),
(87, 'gift_card', 'web', '2019-03-07 05:59:38', '2019-03-07 05:59:38'),
(88, 'coupon', 'web', '2019-03-07 05:59:38', '2019-03-07 05:59:38'),
(89, 'holiday', 'web', '2019-10-19 08:27:15', '2019-10-19 08:27:15'),
(90, 'warehouse-report', 'web', '2019-10-22 05:30:23', '2019-10-22 05:30:23'),
(91, 'warehouse', 'web', '2020-02-26 06:17:32', '2020-02-26 06:17:32'),
(92, 'brand', 'web', '2020-02-26 06:29:59', '2020-02-26 06:29:59'),
(93, 'billers-index', 'web', '2020-02-26 06:41:15', '2020-02-26 06:41:15'),
(94, 'billers-add', 'web', '2020-02-26 06:41:15', '2020-02-26 06:41:15'),
(95, 'billers-edit', 'web', '2020-02-26 06:41:15', '2020-02-26 06:41:15'),
(96, 'billers-delete', 'web', '2020-02-26 06:41:15', '2020-02-26 06:41:15'),
(97, 'money-transfer', 'web', '2020-03-02 05:11:48', '2020-03-02 05:11:48'),
(98, 'category', 'web', '2020-07-13 11:43:16', '2020-07-13 11:43:16'),
(99, 'delivery', 'web', '2020-07-13 11:43:16', '2020-07-13 11:43:16'),
(100, 'send_notification', 'web', '2020-10-31 05:51:31', '2020-10-31 05:51:31'),
(101, 'today_sale', 'web', '2020-10-31 06:27:04', '2020-10-31 06:27:04'),
(102, 'today_profit', 'web', '2020-10-31 06:27:04', '2020-10-31 06:27:04'),
(103, 'currency', 'web', '2020-11-08 23:53:11', '2020-11-08 23:53:11'),
(104, 'backup_database', 'web', '2020-11-14 23:46:55', '2020-11-14 23:46:55'),
(105, 'reward_point_setting', 'web', '2021-06-27 04:04:42', '2021-06-27 04:04:42'),
(106, 'revenue_profit_summary', 'web', '2022-02-08 13:27:21', '2022-02-08 13:27:21'),
(107, 'cash_flow', 'web', '2022-02-08 13:27:22', '2022-02-08 13:27:22'),
(108, 'monthly_summary', 'web', '2022-02-08 13:27:22', '2022-02-08 13:27:22'),
(109, 'yearly_report', 'web', '2022-02-08 13:27:22', '2022-02-08 13:27:22'),
(110, 'discount_plan', 'web', '2022-02-16 08:42:26', '2022-02-16 08:42:26'),
(111, 'discount', 'web', '2022-02-16 08:42:38', '2022-02-16 08:42:38'),
(112, 'product-expiry-report', 'web', '2022-03-30 05:09:20', '2022-03-30 05:09:20'),
(113, 'purchase-payment-index', 'web', '2022-06-05 13:42:27', '2022-06-05 13:42:27'),
(114, 'purchase-payment-add', 'web', '2022-06-05 13:42:28', '2022-06-05 13:42:28'),
(115, 'purchase-payment-edit', 'web', '2022-06-05 13:42:28', '2022-06-05 13:42:28'),
(116, 'purchase-payment-delete', 'web', '2022-06-05 13:42:28', '2022-06-05 13:42:28'),
(117, 'sale-payment-index', 'web', '2022-06-05 13:42:28', '2022-06-05 13:42:28'),
(118, 'sale-payment-add', 'web', '2022-06-05 13:42:28', '2022-06-05 13:42:28'),
(119, 'sale-payment-edit', 'web', '2022-06-05 13:42:28', '2022-06-05 13:42:28'),
(120, 'sale-payment-delete', 'web', '2022-06-05 13:42:28', '2022-06-05 13:42:28'),
(121, 'all_notification', 'web', '2022-06-05 13:42:29', '2022-06-05 13:42:29'),
(122, 'sale-report-chart', 'web', '2022-06-05 13:42:29', '2022-06-05 13:42:29'),
(123, 'dso-report', 'web', '2022-06-05 13:42:29', '2022-06-05 13:42:29'),
(124, 'product_history', 'web', '2022-08-25 13:34:05', '2022-08-25 13:34:05'),
(125, 'supplier-due-report', 'web', '2022-08-31 09:16:33', '2022-08-31 09:16:33'),
(126, 'custom_field', 'web', '2023-05-02 07:11:35', '2023-05-02 07:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `pos_setting`
--

CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `is_table` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_live_api_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_live_api_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_live_api_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_options` text COLLATE utf8mb4_unicode_ci,
  `invoice_option` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `is_table`, `stripe_public_key`, `stripe_secret_key`, `paypal_live_api_username`, `paypal_live_api_password`, `paypal_live_api_secret`, `payment_options`, `invoice_option`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 50, 1, 0, NULL, NULL, 'admin', 'admin', NULL, 'cash,card,gift_card,deposit', 'thermal', '2023-06-21 13:50:02', '2024-04-30 15:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `daily_sale_objective` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_embeded` tinyint(1) DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `is_online` tinyint(4) DEFAULT NULL,
  `in_stock` tinyint(4) DEFAULT NULL,
  `track_inventory` tinyint(4) NOT NULL DEFAULT '0',
  `product_list` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_list` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `specification` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `related_products` longtext COLLATE utf8mb4_unicode_ci,
  `variant_option` text COLLATE utf8mb4_unicode_ci,
  `variant_value` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT NULL,
  `is_sync_disable` tinyint(4) DEFAULT NULL,
  `woocommerce_product_id` int(11) DEFAULT NULL,
  `woocommerce_media_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `tags`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `daily_sale_objective`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_embeded`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `is_online`, `in_stock`, `track_inventory`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `short_description`, `specification`, `meta_title`, `meta_description`, `related_products`, `variant_option`, `variant_value`, `is_active`, `is_sync_disable`, `woocommerce_product_id`, `woocommerce_media_id`, `created_at`, `updated_at`) VALUES
(1, 'Wheel Washing Powder 130gm', NULL, NULL, '25042385', 'standard', 'UPCA', 11, 17, 3, 3, 3, 18, 20, 0, 10, NULL, NULL, NULL, NULL, NULL, 2, 2, '1605621479175ff4162e1e9d7-18.png,1605621702173ff4162e1e9d7-18.png', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-18 07:59:11', '2020-11-19 23:39:31'),
(2, 'Wheel Washing Powder 500gm', NULL, NULL, '95261370', 'standard', 'UPCA', 11, 17, 7, 7, 7, 42, 45, 0, 10, NULL, NULL, NULL, NULL, NULL, 2, 2, '1605622370778ff4162e1e9d7-18.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-18 08:13:10', '2020-12-08 09:22:50'),
(3, 'Wheel Washing Powder 1kg', NULL, NULL, '59078605', 'standard', 'UPCA', 11, 17, 7, 7, 7, 80, 85, 0, 10, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1605622454347ff4162e1e9d7-18.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-18 08:14:34', '2020-11-28 12:02:06'),
(4, 'Rice Najir', NULL, NULL, '20148491', 'standard', 'UPCA', NULL, 12, 3, 5, 5, 40, 45, -49.95, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-18 08:31:40', '2020-11-28 12:02:06'),
(5, 'Surf Excel 1kg', NULL, NULL, '06509217', 'standard', 'UPCA', NULL, 17, 5, 5, 5, 160, 170, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1605624746745surf-excel-bdmew-1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-18 08:52:30', '2020-11-19 23:39:31'),
(6, 'Jafran', NULL, NULL, '27696211', 'standard', 'UPCA', NULL, 10, 3, 6, 3, 100000, 102000, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-18 09:01:51', '2020-11-28 12:02:06'),
(7, 'Rice Najir', NULL, NULL, '46090312', 'standard', 'UPCA', NULL, 12, 11, 12, 11, 40, 45, 0, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-18 09:31:09', '2020-11-28 12:02:06'),
(8, 'Radhuni Radhuni Chilli Powder - 200gm', NULL, NULL, '1', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 90, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:09', '2020-12-08 09:22:50'),
(9, 'Radhuni Radhuni Turmeric Powder - 200gm', NULL, NULL, '2', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 82, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:09', '2020-11-19 23:39:31'),
(10, 'Radhuni Radhuni Coriander Powder - 200gm', NULL, NULL, '3', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 60, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(11, 'Radhuni Tehari Masala - 40gm', NULL, NULL, '4', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 40, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(12, 'Radhuni Radhuni Turmeric Powder - 1000gm', NULL, NULL, '5', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 330, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(13, 'Radhuni Borhani Masala - 50gm', NULL, NULL, '6', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 33, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:02'),
(14, 'Radhuni Roast Masala - 35gm', NULL, NULL, '7', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 54, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(15, 'Radhuni Kasundi - 285 ml', NULL, NULL, '8', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 41, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(16, 'Radhuni Chicken Masala - 100gm', NULL, NULL, '9', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 58, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:02'),
(17, 'Radhuni Radhuni Chilli Powder - 500gm', NULL, NULL, '10', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 215, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(18, 'Radhuni Cumin Powder - 200gm', NULL, NULL, '11', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 142, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:02'),
(19, 'Radhuni Radhuni Chilli Powder - 1000gm', NULL, NULL, '12', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 425, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(20, 'Radhuni Turmeric Powder - 200gm', NULL, NULL, '13', 'standard', 'UPCA', 17, 10, 7, 7, 7, 10, 79, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png,1605763531985Radhuni Radhuni Turmeric Powder - 1000gm.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(21, 'Radhuni Mustard Oil - 1L', NULL, NULL, '14', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 221, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(22, 'Radhuni Chicken Tandoori Masala 50gm', NULL, NULL, '15', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 64, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:02'),
(23, 'Radhuni Radhuni Cumin Powder - 100gm', NULL, NULL, '16', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 72, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(24, 'Radhuni Falooda Mix - 250gm', NULL, NULL, '17', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 58, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(25, 'Radhuni Jira Powder - 100gm', NULL, NULL, '18', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 70, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(26, 'Radhuni Fish Curry Masala - 100gm', NULL, NULL, '19', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 48, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(27, 'Radhuni Khichuri Mix - 500gm', NULL, NULL, '20', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(28, 'Radhuni Mustard Oil - 500ml', NULL, NULL, '21', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 116, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(29, 'Radhuni Korma Masala 30gm', NULL, NULL, '22', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 31, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(30, 'Radhuni Dhoniya Powder - 200gm', NULL, NULL, '23', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 56, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:02'),
(31, 'Beef Curry Masala - 100gm', NULL, NULL, '24', 'standard', 'UPCA', 17, 10, 7, 7, 7, 10, 55, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png,1605763630097Beef Curry Masala - 100gm.png,1605763682027Beef Curry Masala - 100gm.png,1605764058834Beef Curry Masala - 100gm.png,1605764142492Beef Curry Masala - 100gm.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:02'),
(32, 'Radhuni Butter Chicken Masala 45gm', NULL, NULL, '25', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 45, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:02'),
(33, 'Radhuni Dhoniya Powder - 500gm', NULL, NULL, '26', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 127, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(34, 'Radhuni Radhuni Chilli Powder - 100gm', NULL, NULL, '27', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 45, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(35, 'Radhuni Jira Powder - 500gm', NULL, NULL, '28', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 344, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(36, 'Radhuni Meat Curry Masala - 100gm', NULL, NULL, '29', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 58, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(37, 'Radhuni Radhuni Chilli Powder Jar - 200gm', NULL, NULL, '30', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 97, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(38, 'Radhuni Radhuni Turmeric Powdered -100gm', NULL, NULL, '30', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 48, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(39, 'Radhuni Sunflower Oil 1 Ltr', NULL, NULL, '30', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 199, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(40, 'Radhuni Kabab Masala - 50gm', NULL, NULL, '30', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 81, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(41, 'Radhuni Jorda Mix - 400gm', NULL, NULL, '30', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 99, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(42, 'Radhuni Chilli Powder - 200gm', NULL, NULL, '30', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 85, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:02'),
(43, 'Panchforan- Powder - 50gm', NULL, NULL, '30', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:02'),
(44, 'Radhuni Pure Mustard Oil 250ml', NULL, NULL, '30', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 62, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:31'),
(45, 'Radhuni Coriander Powdered - 200gm (Pet Jar)', NULL, NULL, '30', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 70, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 22:55:10', '2020-11-19 23:39:02'),
(46, 'Radhuni Radhuni Chilli Powder - 200gm', NULL, NULL, '1', 'standard', 'UPCA', 17, 10, 7, 7, 7, 10, 90, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png,1605764513037Radhuni Radhuni Turmeric Powdered -100gm.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(47, 'Radhuni Radhuni Turmeric Powder - 200gm', NULL, NULL, '2', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 82, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(48, 'Radhuni Radhuni Coriander Powder - 200gm', NULL, NULL, '3', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 60, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(49, 'Radhuni Tehari Masala - 40gm', NULL, NULL, '4', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 40, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(50, 'Radhuni Radhuni Turmeric Powder - 1000gm', NULL, NULL, '5', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 330, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(51, 'Radhuni Borhani Masala - 50gm', NULL, NULL, '6', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 33, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:50:42'),
(52, 'Radhuni Roast Masala - 35gm', NULL, NULL, '7', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 54, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(53, 'Radhuni Kasundi - 285 ml', NULL, NULL, '8', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 41, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(54, 'Radhuni Chicken Masala - 100gm', NULL, NULL, '9', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 58, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:50:42'),
(55, 'Radhuni Radhuni Chilli Powder - 500gm', NULL, NULL, '10', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 215, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(56, 'Radhuni Cumin Powder - 200gm', NULL, NULL, '11', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 142, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:50:42'),
(57, 'Radhuni Radhuni Chilli Powder - 1000gm', NULL, NULL, '12', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 425, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(58, 'Radhuni Turmeric Powder - 200gm', NULL, NULL, '13', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 79, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(59, 'Radhuni Mustard Oil - 1L', NULL, NULL, '14', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 221, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(60, 'Radhuni Chicken Tandoori Masala 50gm', NULL, NULL, '15', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 64, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:50:42'),
(61, 'Radhuni Radhuni Cumin Powder - 100gm', NULL, NULL, '16', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 72, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(62, 'Radhuni Falooda Mix - 250gm', NULL, NULL, '17', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 58, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(63, 'Radhuni Jira Powder - 100gm', NULL, NULL, '18', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 70, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(64, 'Radhuni Fish Curry Masala - 100gm', NULL, NULL, '19', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 48, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(65, 'Radhuni Khichuri Mix - 500gm', NULL, NULL, '20', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(66, 'Radhuni Mustard Oil - 500ml', NULL, NULL, '21', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 116, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(67, 'Radhuni Korma Masala 30gm', NULL, NULL, '22', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 31, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(68, 'Radhuni Dhoniya Powder - 200gm', NULL, NULL, '23', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 56, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(69, 'Beef Curry Masala - 100gm', NULL, NULL, '24', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 55, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:50:42'),
(70, 'Radhuni Butter Chicken Masala 45gm', NULL, NULL, '25', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 45, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:50:42'),
(71, 'Radhuni Dhoniya Powder - 500gm', NULL, NULL, '26', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 127, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(72, 'Radhuni Radhuni Chilli Powder - 100gm', NULL, NULL, '27', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 45, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(73, 'Radhuni Jira Powder - 500gm', NULL, NULL, '28', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 344, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(74, 'Radhuni Meat Curry Masala - 100gm', NULL, NULL, '29', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 58, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(75, 'Radhuni Radhuni Chilli Powder Jar - 200gm', NULL, NULL, '30', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 97, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(76, 'Radhuni Radhuni Turmeric Powdered -100gm', NULL, NULL, '31', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 48, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(77, 'Radhuni Sunflower Oil 1 Ltr', NULL, NULL, '32', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 199, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(78, 'Radhuni Kabab Masala - 50gm', NULL, NULL, '33', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 81, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(79, 'Radhuni Jorda Mix - 400gm', NULL, NULL, '34', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 99, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(80, 'Radhuni Chilli Powder - 200gm', NULL, NULL, '35', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 85, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:50:42'),
(81, 'Panchforan- Powder - 50gm', NULL, NULL, '36', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:50:42'),
(82, 'Radhuni Pure Mustard Oil 250ml', NULL, NULL, '37', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 62, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:52:53'),
(83, 'Radhuni Coriander Powdered - 200gm (Pet Jar)', NULL, NULL, '38', 'standard', 'C128', 17, 10, 7, 7, 7, 10, 70, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'test.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-19 23:40:22', '2020-11-26 08:50:42'),
(84, 'Maggi Noodles 12 Pac', NULL, NULL, '33255739', 'standard', 'UPCA', NULL, 10, 7, 7, 7, 110, 120, 0, 12, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-11-23 02:57:34', '2020-11-26 08:50:42'),
(85, 'Mama Instant Noodles 62gm', NULL, NULL, '8941181000354', 'standard', 'C128', NULL, 12, 7, 7, 7, 52.5, 60, 10, 3, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 08:57:44', '2020-12-08 09:22:50'),
(86, 'Fay Air Fresheners 300ml', NULL, NULL, '8941183005142', 'standard', 'C128', NULL, 14, 7, 7, 7, 190, 220, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:00:00', '2020-12-04 03:40:36'),
(87, 'Mr. Twist Chips', NULL, NULL, '909790009685', 'standard', 'C128', NULL, 12, 7, 7, 7, 10.42, 15, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:04:02', '2020-12-09 06:59:43'),
(88, 'Mangaldeep Agarbati', NULL, NULL, '8901184102493', 'standard', 'C128', NULL, 12, 7, 7, 7, 5.5, 10, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:07:37', '2020-11-29 10:32:43'),
(89, 'Gurudeb Aroma Agarbati', NULL, NULL, '8901184110313', 'standard', 'C128', NULL, 12, 7, 7, 7, 6.6, 10, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:11:01', '2020-11-29 10:32:44'),
(90, 'Lal Chini 1kg', NULL, NULL, '1000000000001', 'standard', 'C128', NULL, 10, 7, 7, 7, 68, 70, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:15:36', '2020-12-06 06:19:03'),
(91, 'Teer Chini 1kg', NULL, NULL, '820466533108', 'standard', 'C128', NULL, 10, 7, 7, 7, 68, 72, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:17:11', '2020-12-04 04:58:23'),
(92, 'Bashundhara Toilet Tissue', NULL, NULL, '8941193067024', 'standard', 'C128', NULL, 4, 7, 7, 7, 13.75, 17, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:21:09', '2021-01-08 00:40:18'),
(93, 'ACI Ata 2kg', NULL, NULL, '8153003000361', 'standard', 'C128', 4, 10, 7, 7, 7, 62, 70, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:23:51', '2020-12-08 07:40:59'),
(94, 'Radhuni Jira 100gm', NULL, NULL, '8941100510261', 'standard', 'C128', 18, 10, 7, 7, 7, 78, 80, 6, 2, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:28:38', '2020-12-04 04:58:22'),
(95, 'Radhuni Morich 100gm', NULL, NULL, '8941100510100', 'standard', 'C128', 18, 10, 7, 7, 7, 9.33, 53, 12, 2, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:30:08', '2020-12-04 04:58:22'),
(96, 'Radhuni Morich 200gm', NULL, NULL, '8941100510117', 'standard', 'C128', 18, 10, 7, 7, 7, 88, 95, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:31:32', '2020-12-04 04:58:22'),
(97, 'Radhuni Holud 50gm', NULL, NULL, '8941100510018', 'standard', 'C128', 18, 10, 7, 7, 7, 24, 26, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:32:24', '2020-12-04 04:58:22'),
(98, 'Radhuni Holud 100gm', NULL, NULL, '8941100510025', 'standard', 'C128', 18, 10, 7, 7, 7, 43, 48, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:33:19', '2020-12-04 04:58:22'),
(99, 'Radhuni Holud 200gm', NULL, NULL, '8941100510032', 'standard', 'C128', 18, 10, 7, 7, 7, 80, 90, 12, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:34:52', '2020-12-04 04:58:22'),
(100, 'Teer Ata 1kg', NULL, NULL, '814216221100', 'standard', 'C128', 3, 10, 7, 7, 7, 32, 36, 12, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:37:17', '2020-11-29 10:38:50'),
(101, 'Teer Moyda 2kg', NULL, NULL, '814336236121', 'standard', 'C128', 3, 10, 7, 7, 7, 84.5, 92, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:38:05', '2020-12-16 00:24:55'),
(102, 'Ring Chips 20mg', NULL, NULL, '890975001016', 'standard', 'C128', NULL, 12, 7, 7, 7, 7.1, 10, 24, 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:39:34', '2020-12-04 04:58:25'),
(103, 'Rupchada Oil 1 L', NULL, NULL, '8941052011045', 'standard', 'C128', NULL, 10, 7, 7, 7, 107, 118, 12, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:44:56', '2020-12-04 04:58:23'),
(104, 'Rupchada Oil 1L Pack', NULL, NULL, '8941052011441', 'standard', 'C128', NULL, 12, 7, 7, 7, 100, 111, 8, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:46:43', '2020-11-29 11:48:54'),
(105, 'Rupchada Oil 2L', NULL, NULL, '8941052011052', 'standard', 'C128', NULL, 10, 7, 7, 7, 214, 234, 13, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:49:57', '2020-12-04 04:58:23'),
(106, 'Rupchada Oil 5L', NULL, NULL, '8941052011083', 'standard', 'C128', NULL, 10, 7, 7, 7, 525, 570, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:52:31', '2020-12-10 00:02:32'),
(107, 'Teer Oil 5L', NULL, NULL, '812546159230', 'standard', 'C128', NULL, 10, 7, 7, 7, 520, 555, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:56:25', '2020-12-04 04:58:22'),
(108, 'Teer Oil 1L', NULL, NULL, '812546159100', 'standard', 'C128', 3, 10, 7, 7, 7, 110, 115, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 09:59:38', '2021-01-08 00:40:18'),
(109, 'Teer Oil 2L', NULL, NULL, '812546159124', 'standard', 'C128', 3, 10, 7, 7, 7, 215, 228, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:01:19', '2021-01-08 00:40:18'),
(110, 'Wheel 500gm', NULL, NULL, '8941100657188', 'standard', 'C128', NULL, 4, 7, 7, 7, 43, 45, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:02:16', '2020-12-07 12:49:50'),
(111, 'Wheel 1kg', NULL, NULL, '8941100657171', 'standard', 'C128', 11, 4, 7, 7, 7, 79, 85, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:02:57', '2020-12-07 12:49:49'),
(112, 'Mr. Cookie 55gm', NULL, NULL, '8941194002550', 'standard', 'C128', NULL, 12, 7, 7, 7, 8.32, 10, 12, -28, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:06:03', '2020-12-04 23:24:35'),
(113, 'Bombay Sweets Chanachur', NULL, NULL, '890979000046', 'standard', 'C128', NULL, 12, 7, 7, 7, 25.5, 30, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:07:01', '2020-12-08 01:08:33'),
(114, 'Ruchi Jhal Chanachur 350gm', NULL, NULL, '8941100513224', 'standard', 'C128', NULL, 12, 7, 7, 7, 59, 65, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:08:03', '2020-12-05 01:29:46'),
(115, 'Ruchi Bar-B-Q Chanachur 300gm', NULL, NULL, '8941100513217', 'standard', 'C128', NULL, 12, 7, 7, 7, 59, 65, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:09:07', '2020-12-05 01:29:46'),
(116, 'Digestive Chocolate Biscuit 145gm', NULL, NULL, '8941194003717', 'standard', 'C128', NULL, 12, 7, 7, 7, 29, 35, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:09:54', '2020-12-07 23:52:39'),
(117, 'Pran Toast 350gm', NULL, NULL, '831730006907', 'standard', 'C128', 1, 12, 7, 7, 7, 43.33, 50, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:11:05', '2020-12-09 07:52:56'),
(118, 'Deko Horlics Cookies 330gm', NULL, NULL, '8946565147007', 'standard', 'C128', NULL, 12, 7, 7, 7, 42.85, 60, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:12:12', '2020-12-09 06:59:43'),
(119, 'Goldmark Special Toast 315gm', NULL, NULL, '8941165012533', 'standard', 'C128', NULL, 12, 7, 7, 7, 37, 50, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:13:01', '2020-12-04 03:44:15'),
(120, 'Deko Salt Biscuit', NULL, NULL, '8946565136735', 'standard', 'C128', NULL, 12, 7, 7, 7, 37, 50, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:14:53', '2020-12-04 04:08:26'),
(121, 'Fit Crackers 70gm', NULL, NULL, '846656019665', 'standard', 'C128', NULL, 12, 7, 7, 7, 12.5, 15, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:18:21', '2020-12-04 04:58:24'),
(122, 'Bisk Klub Potata Biscuit 100gm', NULL, NULL, '841165116751', 'standard', 'C128', NULL, 12, 7, 7, 7, 20, 25, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:22:30', '2020-12-09 06:59:43'),
(123, 'Bisk Klub Cookies Butter Biscuit 300gm', NULL, NULL, '841165144525', 'standard', 'C128', NULL, 12, 7, 7, 7, 45, 60, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:24:07', '2020-11-29 10:02:44'),
(124, 'Bisk Klub Champion Biscuit', NULL, NULL, '846656000571', 'standard', 'C128', NULL, 12, 7, 7, 7, 8.5, 10, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:25:00', '2020-12-09 06:59:43'),
(125, 'Lifebuoy Handwash Refill Pack 170ml', NULL, NULL, '8941102310289', 'standard', 'C128', NULL, 4, 7, 7, 7, 54, 60, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:28:45', '2020-12-15 08:29:12'),
(126, 'The Chef Vinegar 650ml', NULL, NULL, '841165123308', 'standard', 'C128', NULL, 12, 7, 7, 7, 50, 55, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:30:03', '2020-12-04 04:58:24'),
(127, 'BD Vinegar 650ml', NULL, NULL, '8940356162132', 'standard', 'C128', NULL, 10, 7, 7, 7, 50, 55, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:30:53', '2020-12-04 04:58:24'),
(128, 'Pran Hot Tomato Sauce 340gm', NULL, NULL, '831730002268', 'standard', 'C128', NULL, 12, 7, 7, 7, 70, 90, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:32:36', '2020-12-04 04:58:24'),
(129, 'Mushroom', NULL, NULL, '6935789225334', 'standard', 'C128', NULL, 12, 7, 7, 7, 425, 90, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:33:36', '2020-11-26 10:33:36'),
(130, 'Ponds Lotion 100ml', NULL, NULL, '8941100656020', 'standard', 'C128', NULL, 6, 7, 7, 7, 88, 100, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:34:32', '2020-12-04 04:58:25'),
(131, 'Vaseline Lotion 100ml', NULL, NULL, '8941100656587', 'standard', 'C128', NULL, 6, 7, 7, 7, 100, 115, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:35:47', '2020-12-04 04:58:25'),
(132, 'Parachut 120ml', NULL, NULL, '1000000000002', 'standard', 'C128', NULL, 6, 7, 7, 7, 65, 70, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:43:18', '2020-12-06 06:19:03'),
(133, 'Parachut Oil 240ml', NULL, NULL, '1000000000003', 'standard', 'C128', NULL, 6, 7, 7, 7, 120, 130, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:44:13', '2020-12-06 06:19:03'),
(134, 'Sunsilk Keratin Yoghurt Shampoo 375ml', NULL, NULL, '8941102310562', 'standard', 'C128', NULL, 6, 7, 7, 7, 290, 320, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:47:03', '2020-12-04 04:58:25'),
(135, 'Sunsilk Soya Vitamin Complex Shampoo 375ml', NULL, NULL, '8941100659601', 'standard', 'C128', NULL, 6, 7, 7, 7, 290, 320, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:48:25', '2020-12-04 04:58:25');
INSERT INTO `products` (`id`, `name`, `slug`, `tags`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `daily_sale_objective`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_embeded`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `is_online`, `in_stock`, `track_inventory`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `short_description`, `specification`, `meta_title`, `meta_description`, `related_products`, `variant_option`, `variant_value`, `is_active`, `is_sync_disable`, `woocommerce_product_id`, `woocommerce_media_id`, `created_at`, `updated_at`) VALUES
(136, 'Sunsilk Natural Oil Shampoo 375ml', NULL, NULL, '8941100659595', 'standard', 'C128', NULL, 6, 7, 7, 7, 290, 320, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:49:28', '2020-12-04 04:58:25'),
(137, 'Trix Lemon 500ml', NULL, NULL, '8941100280607', 'standard', 'C128', NULL, 4, 7, 7, 7, 98, 105, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:51:09', '2020-12-04 04:58:22'),
(138, 'Vim Dish wash Liquid 500ml', NULL, NULL, '8941100659670', 'standard', 'C128', NULL, 4, 7, 7, 7, 88.33, 100, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:54:27', '2020-12-10 00:02:32'),
(139, 'Lexus Biscuit 240gm', NULL, NULL, '745114130037', 'standard', 'C128', NULL, 12, 7, 7, 7, 52.92, 100, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 10:59:37', '2020-12-04 04:58:25'),
(140, 'Bashundhara Facial Tissue', NULL, NULL, '8941193073162', 'standard', 'C128', NULL, 12, 7, 7, 7, 55, 62, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 11:00:55', '2020-12-18 06:45:17'),
(141, 'Maggi Noodles 4Pack', NULL, NULL, '8941100294413', 'standard', 'C128', NULL, 12, 7, 7, 7, 63.33, 66, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 11:06:16', '2020-12-05 02:24:20'),
(142, 'Maggi Noodles 8Pack', NULL, NULL, '8941100294420', 'standard', 'C128', NULL, 12, 7, 7, 7, 125, 135, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 11:07:30', '2020-12-16 02:12:04'),
(143, 'Maggi Noodles 12Pack', NULL, NULL, '8941100295168', 'standard', 'C128', NULL, 12, 7, 7, 7, 185, 200, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 11:08:25', '2020-12-05 02:24:20'),
(144, 'Mama Chicken Flavour Noodles 8Pack', NULL, NULL, '8941181000132', 'standard', 'C128', NULL, 12, 7, 7, 7, 120, 135, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 11:13:01', '2020-12-04 03:40:35'),
(145, 'Mama Hot Spicy Noodles 8pack', NULL, NULL, '8941181000163', 'standard', 'C128', NULL, 12, 7, 7, 7, 120, 135, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 11:14:58', '2020-12-04 03:40:35'),
(146, 'Mama Shrimp Noodles 8Pack', NULL, NULL, '8941181000149', 'standard', 'C128', NULL, 12, 7, 7, 7, 120, 135, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 11:17:24', '2020-12-04 03:40:35'),
(147, 'Cocola Egg Noodles', NULL, NULL, '8941155013502', 'standard', 'C128', NULL, 12, 7, 7, 7, 16.67, 18, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-26 11:20:38', '2021-02-21 10:12:58'),
(148, 'Sandalina Soap 125gm', NULL, NULL, '8513692165404', 'standard', 'C128', NULL, 6, 7, 7, 7, 38, 44, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 22:17:47', '2020-11-29 10:30:14'),
(149, 'Dove Soap 135gm', NULL, NULL, '067238891190', 'standard', 'C128', NULL, 6, 7, 7, 7, 86, 99, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 22:29:14', '2020-12-11 01:39:52'),
(150, 'Surf Excel 25gm', NULL, NULL, '8941102311477', 'standard', 'C128', NULL, 4, 7, 7, 7, 4.48, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:05:03', '2020-11-27 23:05:03'),
(151, 'Surf Excel 500gm', NULL, NULL, '8941102310159', 'standard', 'C128', NULL, 4, 7, 7, 7, 80, 85, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:08:42', '2020-12-07 12:49:50'),
(152, 'Ujala Neel 50ml', NULL, NULL, '8941183002318', 'standard', 'C128', NULL, 4, 7, 7, 7, 15.5, 18, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:14:20', '2020-12-04 03:40:36'),
(153, 'Jet 200gm', NULL, NULL, '8941183001045', 'standard', 'C128', NULL, 4, 7, 7, 7, 43.5, 50, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:16:30', '2020-12-04 03:40:35'),
(154, 'Jet 400gm', NULL, NULL, '8941183001052', 'standard', 'C128', NULL, 4, 7, 7, 7, 84.5, 95, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:19:25', '2020-12-04 03:40:36'),
(155, 'Vim Bar 100gm', NULL, NULL, '8941100619445', 'standard', 'C128', NULL, 4, 7, 7, 7, 12, 12, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:25:49', '2020-12-07 12:49:50'),
(156, 'Vim Bar 300gm', NULL, NULL, '8941100619452', 'standard', 'C128', NULL, 4, 7, 7, 7, 30, 32, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:27:18', '2021-01-07 23:55:41'),
(157, 'Meril Milk & Pogment Soap 100gm', NULL, NULL, '8941100500149', 'standard', 'C128', NULL, 6, 7, 7, 7, 32, 34, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:28:37', '2020-12-05 00:46:57'),
(158, 'Meril Milk Bar Soap', NULL, NULL, '8941100501726', 'standard', 'C128', NULL, 6, 7, 7, 7, 32, 34, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:29:54', '2020-12-05 00:46:57'),
(159, 'Dettol Original 75 gm', NULL, NULL, '8941100283165', 'standard', 'C128', NULL, 6, 7, 7, 7, 37, 40, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:30:57', '2020-12-04 11:45:11'),
(160, 'Dettol Skincare 75gm', NULL, NULL, '8941100283172', 'standard', 'C128', NULL, 6, 7, 7, 7, 37, 40, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:37:09', '2020-12-04 11:45:11'),
(161, 'Lifebuoy 100gm Soap', NULL, NULL, '8941100657799', 'standard', 'C128', NULL, 6, 7, 7, 7, 30, 32, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:39:10', '2020-12-05 02:17:18'),
(162, 'Lux Rose Soap 100gm', NULL, NULL, '8941102310357', 'standard', 'C128', NULL, 6, 7, 7, 7, 32, 35, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:40:18', '2020-12-04 04:58:23'),
(163, 'Lux Jasmin Soap 100gm', NULL, NULL, '8941102310364', 'standard', 'C128', NULL, 6, 7, 7, 7, 32, 35, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:42:29', '2020-12-11 01:39:52'),
(164, 'Macaroni Pasta', NULL, NULL, '6291047073193', 'standard', 'C128', NULL, 10, 7, 7, 7, 120, 130, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:43:45', '2020-12-04 04:58:24'),
(165, 'Classic Pasta', NULL, NULL, '6291047073179', 'standard', 'C128', NULL, 10, 7, 7, 7, 120, 130, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:46:38', '2020-12-10 00:02:31'),
(166, 'Screw Pasta', NULL, NULL, '6291047073209', 'standard', 'C128', NULL, 10, 7, 7, 7, 120, 130, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:48:13', '2020-12-10 00:02:31'),
(167, 'Rani Chinigura Rice 1kg', NULL, NULL, '8941165013035', 'standard', 'C128', NULL, 10, 7, 7, 7, 105, 130, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:51:14', '2020-11-29 10:08:25'),
(168, 'Chashi Chinigura Chal 1kg', NULL, NULL, '8941100512104', 'standard', 'C128', NULL, 10, 7, 7, 7, 110, 130, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-27 23:53:03', '2020-12-16 09:45:22'),
(169, 'Bashundhara Ata 2kg', NULL, NULL, '8941193000526', 'standard', 'C128', NULL, 10, 7, 7, 7, 56, 70, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:02:08', '2021-01-08 00:40:18'),
(170, 'Ispahani Mirzapur Tea 400gm', NULL, NULL, '8941193314555', 'standard', 'C128', NULL, 10, 7, 7, 7, 185, 210, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:12:48', '2020-12-04 04:58:23'),
(171, 'Brooke Bond Taaza Tea 200gm', NULL, NULL, '8941100610312', 'standard', 'C128', NULL, 10, 7, 7, 7, 92, 100, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:16:40', '2020-12-04 04:58:23'),
(172, 'Ispahani Mirzapur Tea 100gm', NULL, NULL, '8941193314531', 'standard', 'C128', NULL, 10, 7, 7, 7, 46.5, 57, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:19:00', '2020-12-16 00:44:34'),
(173, 'Pran Hot Tomato Sauce 215gm', NULL, NULL, '846656001790', 'standard', 'C128', NULL, 12, 7, 7, 7, 48, 60, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:23:45', '2020-11-28 00:23:45'),
(174, 'Pran Hot Tomato Sauce 750gm', NULL, NULL, '841165138418', 'standard', 'C128', NULL, 12, 7, 7, 7, 115, 145, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:28:02', '2020-11-29 08:57:47'),
(175, 'Diploma Full Cream Milk Powder 200gm', NULL, NULL, '9415007843542', 'standard', 'C128', NULL, 12, 7, 7, 7, 132, 145, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:34:06', '2020-11-29 10:41:52'),
(176, 'Diploma Full Cream Milk Powder 500gm', NULL, NULL, '9415007013402', 'standard', 'C128', NULL, 12, 7, 7, 7, 304, 330, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:37:03', '2021-01-08 00:40:18'),
(177, 'Diploma Full Cream Milk Powder 50gm', NULL, NULL, '9415007828419', 'standard', 'C128', NULL, 12, 7, 7, 7, 35, 40, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:40:26', '2020-11-29 10:41:53'),
(178, 'Diploma Full Cream Milk Powder 400gm', NULL, NULL, '9415007013390', 'standard', 'C128', NULL, 12, 7, 7, 7, 249, 275, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:43:02', '2020-11-29 10:41:53'),
(179, 'Diploma Full Cream Milk Powder 100gm', NULL, NULL, '9415007972662', 'standard', 'C128', NULL, 12, 7, 7, 7, 66, 75, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:45:26', '2020-11-29 10:41:53'),
(180, 'Diploma Full Cream Milk Powder 1kg', NULL, NULL, '9415007013396', 'standard', 'C128', NULL, 12, 7, 7, 7, 602, 650, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:47:04', '2020-11-29 10:41:52'),
(181, 'Colgate  Blue Gel Max Fresh Toothpaste 150g', NULL, NULL, '8901314309921', 'standard', 'C128', NULL, 8, 7, 7, 7, 125, 140, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:51:32', '2021-02-21 10:09:35'),
(182, 'Colgate Active Salt Toothpaste 2000g', NULL, NULL, '8901314009081', 'standard', 'C128', NULL, 8, 7, 7, 7, 135, 150, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:55:00', '2020-12-04 04:58:24'),
(183, 'Colgate Classic 200g', NULL, NULL, '8901314305602', 'standard', 'C128', NULL, 8, 7, 7, 7, 118, 120, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:57:20', '2020-12-04 04:58:24'),
(184, 'Closeup Gel 100gm', NULL, NULL, '8941102310470', 'standard', 'C128', NULL, 8, 7, 7, 7, 78, 85, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 00:58:55', '2020-12-04 04:58:24'),
(185, 'Closeup Red Gel 145gm', NULL, NULL, '8941100658888', 'standard', 'C128', NULL, 8, 7, 7, 7, 106.66, 110, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 01:08:19', '2020-12-04 04:58:24'),
(186, 'Pepsodent 100g', NULL, NULL, '8941100652503', 'standard', 'C128', NULL, 8, 7, 7, 7, 68, 75, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 01:18:59', '2020-12-04 11:37:52'),
(187, 'Pepsodent 45g', NULL, NULL, '8941100659106', 'standard', 'C128', NULL, 8, 7, 7, 7, 37, 40, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 01:22:11', '2020-12-04 11:37:52'),
(188, 'Closeup Gel 160gm', NULL, NULL, '8941102310487', 'standard', 'C128', NULL, 8, 7, 7, 7, 106.66667, 120, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 01:23:58', '2020-12-04 04:58:24'),
(189, 'Closeup Gel 45gm', NULL, NULL, '8941102310494', 'standard', 'C128', NULL, 8, 7, 7, 7, 36.66, 40, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 01:28:09', '2020-12-04 04:58:24'),
(190, 'Pran Choko Bin', NULL, NULL, '831730008260', 'standard', 'C128', 1, 12, 7, 7, 7, 4, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 01:33:54', '2020-11-28 01:33:54'),
(191, 'Pran Love Jello', NULL, NULL, '841165153619', 'standard', 'C128', 1, 12, 7, 7, 7, 3.7, 5, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 01:39:35', '2020-11-29 08:57:48'),
(192, 'ACI Salt 1kg', NULL, NULL, '8941196220037', 'standard', 'C128', 4, 10, 7, 7, 7, 28, 35, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 01:49:59', '2021-01-08 00:40:18'),
(193, 'Radhuni Biriyani Masala 40gm', NULL, NULL, '8941100511374', 'standard', 'C128', 18, 10, 7, 7, 7, 50, 55, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 01:51:05', '2020-11-29 10:30:14'),
(194, 'Garden Fresh Fruit Drinks 200ml', NULL, NULL, '8941152000741', 'standard', 'C128', NULL, 3, 7, 7, 7, 11.5, 16, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:00:53', '2020-11-29 09:00:44'),
(195, 'Harpic 750ml', NULL, NULL, '8901396175025', 'standard', 'C128', NULL, 4, 7, 7, 7, 116.15, 130, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:15:53', '2020-12-10 00:02:32'),
(196, 'Harpic 500ml', NULL, NULL, '8941100282212', 'standard', 'C128', NULL, 4, 7, 7, 7, 94.59, 105, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:18:10', '2020-11-29 11:46:36'),
(197, 'Lizol Lemon 500ml', NULL, NULL, '8941100289112', 'standard', 'C128', NULL, 4, 7, 7, 7, 126, 140, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:21:37', '2020-11-29 11:46:35'),
(198, 'Lizol Floral 500ml', NULL, NULL, '8941100289211', 'standard', 'C128', NULL, 4, 7, 7, 7, 126, 140, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:22:54', '2020-11-29 11:46:36'),
(199, 'Harpic Cleaning Power 400gm', NULL, NULL, '8941100282120', 'standard', 'C128', NULL, 4, 7, 7, 7, 64.08, 75, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:26:07', '2021-09-02 09:15:06'),
(200, 'Trix Lemon 250ml', NULL, NULL, '8941100280621', 'standard', 'C128', NULL, 4, 7, 7, 7, 45.33, 55, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:28:02', '2020-11-29 11:46:36'),
(201, 'Harpic 1l', NULL, NULL, '8941102833337', 'standard', 'C128', NULL, 4, 7, 7, 7, 142.92, 160, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:30:35', '2021-02-11 04:38:13'),
(202, 'Bashundhara Napkin', NULL, NULL, '8941193041116', 'standard', 'C128', 5, 12, 7, 7, 7, 40, 48, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:36:41', '2021-01-08 00:40:18'),
(203, 'Sensodyne Toothbrush', NULL, NULL, '6805699533082', 'standard', 'C128', NULL, 8, 7, 7, 7, 20, 40, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:39:40', '2020-11-28 02:39:40'),
(204, 'Haque Milk Marie Biscuit', NULL, NULL, '8941194002888', 'standard', 'C128', NULL, 12, 7, 7, 7, 42, 50, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:43:19', '2020-12-08 00:50:55'),
(205, 'Danish Dry Cake 350gm', NULL, NULL, '8941152010290', 'standard', 'C128', NULL, 12, 7, 7, 7, 95, 120, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:46:22', '2020-11-29 09:00:44'),
(206, 'Danish Lexus 65gm', NULL, NULL, '8941152010566', 'standard', 'C128', NULL, 12, 7, 7, 7, 16.66, 20, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:46:55', '2020-11-29 09:00:44'),
(207, 'Digestive Regular Biscuit 145gm', NULL, NULL, '8941194003816', 'standard', 'C128', NULL, 12, 7, 7, 7, 16.5, 20, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 02:54:40', '2020-12-04 23:24:35'),
(208, 'Bashundhara Oil 1L', NULL, NULL, '8941193004524', 'standard', 'C128', 5, 10, 7, 7, 7, 102, 115, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 03:03:37', '2020-12-04 03:58:58'),
(209, 'Bashundhara Oil 2L', NULL, NULL, '8941193004531', 'standard', 'C128', NULL, 10, 7, 7, 7, 202, 228, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 03:04:23', '2020-12-04 03:58:58'),
(210, 'Himalaya Neem Facewash 100ml', NULL, NULL, '8908008142000', 'standard', 'C128', NULL, 6, 7, 7, 7, 134, 185, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 03:05:46', '2020-12-04 03:51:19'),
(211, 'Himalaya Aloe Vera Facewash 100ml', NULL, NULL, '8908008142062', 'standard', 'C128', NULL, 6, 7, 7, 7, 140, 190, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 03:06:35', '2020-12-04 03:51:19'),
(212, 'Himalaya Strawberry Facewash 100ml', NULL, NULL, '8908008142130', 'standard', 'C128', NULL, 6, 7, 7, 7, 130, 185, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 03:07:38', '2020-12-04 03:51:19'),
(213, 'Gillette Razor Blue II', NULL, NULL, '8901358702443', 'standard', 'C128', NULL, 6, 7, 7, 7, 25, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 03:10:10', '2020-11-28 03:10:10'),
(214, 'Gillette Blade', NULL, NULL, '4902430786652', 'standard', 'C128', NULL, 6, 7, 7, 7, 14, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 03:12:43', '2020-12-06 10:29:46'),
(215, 'Savlon Mild Soap 35gm', NULL, NULL, '8941196243234', 'standard', 'C128', NULL, 4, 7, 7, 7, 8.52, 10, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 09:45:05', '2020-12-16 08:25:43'),
(216, 'Pran Choco Choco Mega', NULL, NULL, '846656010044', 'standard', 'C128', 1, 12, 7, 7, 7, 3.5, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 09:49:24', '2020-11-28 09:49:24'),
(217, 'Pran Lolli Pop Fluty', NULL, NULL, '841165143160', 'standard', 'C128', 1, 12, 7, 7, 7, 3.5, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 09:51:15', '2020-11-28 09:51:15'),
(218, 'Pran Coco Candy', NULL, NULL, '841165123476', 'standard', 'C128', 1, 12, 7, 7, 7, 0.8, 1, 580, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 09:55:53', '2020-12-06 04:26:50'),
(219, 'Olympic Chokito', NULL, NULL, '745114131263', 'standard', 'C128', NULL, 12, 7, 7, 7, 4, 5, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 09:57:10', '2020-12-06 04:26:50'),
(220, 'Olympic Green Mango Candy', NULL, NULL, '745114130174', 'standard', 'C128', NULL, 12, 7, 7, 7, 0.8, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 09:58:50', '2020-11-28 09:58:50'),
(221, 'Fruitfill', NULL, NULL, '841165116492', 'standard', 'C128', NULL, 12, 7, 7, 7, 1.33, 2, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:01:17', '2020-11-29 11:57:04'),
(222, 'Center Fresh Gum', NULL, NULL, '8944000195064', 'standard', 'C128', NULL, 12, 7, 7, 7, 1.5, 2, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:06:40', '2020-12-04 04:58:25'),
(223, 'Olympic Pulse Masala', NULL, NULL, '745114130303', 'standard', 'C128', NULL, 12, 7, 7, 7, 1.5, 2, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:13:03', '2020-12-06 04:26:50'),
(224, 'Olympic Pulse Pineapple Candy', NULL, NULL, '812140856023', 'standard', 'C128', NULL, 12, 7, 7, 7, 1.5, 2, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:14:39', '2020-12-06 04:26:50'),
(225, 'Elson Peanut Butter Bar', NULL, NULL, '8941132000389', 'standard', 'C128', NULL, 12, 7, 7, 7, 4, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:17:13', '2020-11-28 10:17:13'),
(226, 'Alooz Potato Chips', NULL, NULL, '890405001258', 'standard', 'C128', NULL, 12, 7, 7, 7, 10.41, 15, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:19:58', '2020-12-04 04:58:25'),
(227, 'Bombay Potato Crackers', NULL, NULL, '890979000053', 'standard', 'C128', NULL, 12, 7, 7, 7, 7.083, 10, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:24:10', '2020-12-04 04:58:25'),
(228, 'Meridian Chips(Real Thai Shrimp)', NULL, NULL, '8850155011022', 'standard', 'C128', NULL, 12, 7, 7, 7, 12, 15, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:31:44', '2020-12-03 23:14:47'),
(229, 'Bombay Sweets Jhaal Chanachur 35gm', NULL, NULL, '890979000244', 'standard', 'C128', NULL, 12, 7, 7, 7, 8.1, 10, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:36:10', '2020-12-04 03:07:54'),
(230, 'Dekko Fried Peas', NULL, NULL, '8510120010015', 'standard', 'C128', NULL, 12, 7, 7, 7, 4.16, 5, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:36:51', '2020-12-04 04:08:26'),
(231, 'Bombay Sweets Dalmoot 35gm', NULL, NULL, '890979000503', 'standard', 'C128', NULL, 12, 7, 7, 7, 8.1, 10, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:37:59', '2020-12-04 03:07:54'),
(232, 'Bombay Sweets Jhalmuri 30gm', NULL, NULL, '890974501036', 'standard', 'C128', NULL, 12, 7, 7, 7, 8.1, 10, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:41:54', '2020-12-04 03:07:54'),
(233, 'Elson Niknut Chocolate', NULL, NULL, '1860020001604', 'standard', 'C128', NULL, 12, 7, 7, 7, 4, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:49:59', '2020-11-28 10:49:59'),
(234, 'Vasline Pure Petrolium Jelly 9ml', NULL, NULL, '8941100615621', 'standard', 'C128', NULL, 8, 7, 7, 7, 12.5, 15, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:53:28', '2020-12-04 04:58:25'),
(235, 'Pran Hot Tomato Sauce 10gm', NULL, NULL, '831730009472', 'standard', 'C128', NULL, 10, 7, 7, 7, 2, 3, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 10:57:40', '2020-11-29 08:57:47'),
(236, 'Clear Men 6ml', NULL, NULL, '8941100614242', 'standard', 'C128', NULL, 6, 7, 7, 7, 3.46, 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 11:01:38', '2020-11-28 11:01:38'),
(237, 'Pran Mama Strawberry Wafer', NULL, NULL, '841165162680', 'standard', 'C128', NULL, 12, 7, 7, 7, 4, 5, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-28 11:24:32', '2020-11-29 10:02:44'),
(238, 'Dano Milk Minipack 18gm', NULL, NULL, '1000000000005', 'standard', 'C128', NULL, 12, 7, 7, 7, 8.33, 10, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-29 08:11:06', '2020-12-08 09:22:04'),
(239, 'Dano Milk 200gm', NULL, NULL, '5760466987233', 'standard', 'C128', NULL, 12, 7, 7, 7, 132, 145, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-29 08:12:59', '2020-12-08 09:22:49'),
(240, 'Dano Milk 500gm', NULL, NULL, '5760466984201', 'standard', 'C128', NULL, 12, 7, 7, 7, 295, 330, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-29 08:17:54', '2020-12-04 23:26:01'),
(241, 'Dano Milk 1kg', NULL, NULL, '5711953091308', 'standard', 'C128', NULL, 12, 7, 7, 7, 590, 650, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-29 08:19:44', '2020-12-08 09:22:50'),
(242, 'Dano Milk 400gm', NULL, NULL, '5760466984164', 'standard', 'C128', NULL, 12, 7, 7, 7, 255, 280, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-29 08:21:55', '2020-12-04 23:26:01'),
(243, 'Olympic Nice Biscuit 60gm', NULL, NULL, '745114131324', 'standard', 'C128', 10, 12, 7, 7, 7, 8, 10, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-29 09:11:54', '2021-02-21 08:13:03'),
(244, 'Olympic Regular AA', NULL, NULL, '1000000000006', 'standard', 'C128', 10, 12, 7, 7, 7, 10, 12, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-29 09:20:24', '2020-12-06 06:19:03'),
(245, 'Olympic Regular AAA', NULL, NULL, '1000000000007', 'standard', 'C128', 10, 12, 7, 7, 7, 10, 12, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-29 09:22:16', '2020-12-06 06:19:03'),
(246, 'Olympic Metalic AAA', NULL, NULL, '1000000000008', 'standard', 'C128', 10, 12, 7, 7, 7, 10, 12, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-29 09:25:37', '2020-12-06 06:19:03'),
(247, 'Rin Detergent 500gm', NULL, NULL, '8941102310203', 'standard', 'C128', NULL, 4, 7, 7, 7, 55, 60, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-29 10:15:15', '2020-11-29 10:30:14'),
(248, 'Rin Detergent 1kg', NULL, NULL, '8941102310180', 'standard', 'C128', NULL, 4, 7, 7, 7, 100, 120, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-29 10:16:33', '2021-01-08 00:40:18'),
(249, 'Teer Ata 2kg', NULL, NULL, '814216221124', 'standard', 'C128', 3, 10, 7, 7, 7, 62.5, 70, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-11-29 10:35:36', '2020-12-09 06:55:12'),
(250, 'Perk', NULL, NULL, '8901233024042', 'standard', 'C128', NULL, 12, 7, 7, 7, 7.8, 10, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:01:41', '2020-12-04 11:13:25'),
(251, 'Kitkat 27.5gm', NULL, NULL, '8901058144345', 'standard', 'C128', NULL, 12, 7, 7, 7, 34.3, 40, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:05:12', '2020-12-04 11:13:25'),
(252, 'Dairy Milk bd 32gm', NULL, NULL, '1000000000009', 'standard', 'C128', NULL, 12, 7, 7, 7, 12.09, 15, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:09:49', '2020-12-06 06:19:03'),
(253, 'Snikers 20g', NULL, NULL, '40111308', 'standard', 'C128', NULL, 12, 7, 7, 7, -1.25, 20, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:11:47', '2020-12-04 11:13:25'),
(254, 'Cadbury Dairy Milk 13gm', NULL, NULL, '8901233030548', 'standard', 'C128', NULL, 12, 7, 7, 7, 15.45, 20, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:13:47', '2020-12-04 11:13:25'),
(255, 'Pringles Hot & Spicy 147gm', NULL, NULL, '8886467100116', 'standard', 'C128', NULL, 12, 7, 7, 7, 165, 220, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:16:10', '2020-12-04 11:13:25'),
(256, 'Pringles Sour Cream & Onion 147gm', NULL, NULL, '8886467100086', 'standard', 'C128', NULL, 12, 7, 7, 7, 165, 220, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:20:22', '2020-12-04 11:13:25'),
(257, 'Pringles Original 147gm', NULL, NULL, '8886467100079', 'standard', 'C128', NULL, 12, 7, 7, 7, 165, 220, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:21:42', '2020-12-04 11:13:25'),
(258, 'Pringles Saucy BBQ 147gm', NULL, NULL, '8886467100109', 'standard', 'C128', NULL, 12, 7, 7, 7, 165, 220, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:23:11', '2020-12-04 11:13:25'),
(259, 'Pringles Sour Cream & Onion 37gm', NULL, NULL, '038000845529', 'standard', 'C128', NULL, 12, 7, 7, 7, 70, 90, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:25:18', '2020-12-04 11:13:25'),
(260, 'Pringles Original 37gm', NULL, NULL, '038000845512', 'standard', 'C128', NULL, 12, 7, 7, 7, 70, 90, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:26:21', '2020-12-04 11:13:25'),
(261, 'Saudi Arabia Joy', NULL, NULL, '831730003562', 'standard', 'C128', NULL, 12, 7, 7, 7, 22, 30, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:28:31', '2020-12-04 11:49:52'),
(262, 'Dan Cake Fruit Cake', NULL, NULL, '745125253503', 'standard', 'C128', NULL, 12, 7, 7, 7, 83, 100, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:29:44', '2020-12-04 11:02:21'),
(263, 'Dan Cake Marble Cake', NULL, NULL, '8946000009020', 'standard', 'C128', NULL, 12, 7, 7, 7, 83, 100, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:31:01', '2020-12-04 11:02:22'),
(264, 'Dan Cake Vanilla Plain Cake', NULL, NULL, '8946000009860', 'standard', 'C128', NULL, 12, 7, 7, 7, 83, 100, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:31:57', '2020-12-04 11:02:22'),
(265, 'Dan Cake Chocolate Plain Cake', NULL, NULL, '8946000009891', 'standard', 'C128', NULL, 12, 7, 7, 7, 84, 100, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-03 11:36:00', '2021-02-13 08:57:58'),
(266, 'Bombay Sweets BBQ Chanachur 35gm', NULL, NULL, '890979000398', 'standard', 'C128', 8, 12, 7, 7, 7, 6.75, 10, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 02:54:21', '2020-12-04 03:07:54'),
(267, 'Mama Instant Cup Chicken Flavor 62gm', NULL, NULL, '8941181000330', 'standard', 'C128', NULL, 10, 7, 7, 7, 52.5, 60, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 03:18:09', '2020-12-04 03:40:35'),
(268, 'Mama Instant Cup Shrimp Flavor 62gm', NULL, NULL, '8941181000347', 'standard', 'C128', NULL, 12, 7, 7, 7, 52.5, 60, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 03:20:06', '2020-12-10 00:02:32');
INSERT INTO `products` (`id`, `name`, `slug`, `tags`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `daily_sale_objective`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_embeded`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `is_online`, `in_stock`, `track_inventory`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `short_description`, `specification`, `meta_title`, `meta_description`, `related_products`, `variant_option`, `variant_value`, `is_active`, `is_sync_disable`, `woocommerce_product_id`, `woocommerce_media_id`, `created_at`, `updated_at`) VALUES
(269, 'Radhuni Shorishar Tel 1L', NULL, NULL, '8941100512661', 'standard', 'C128', 18, 10, 7, 7, 7, 220, 235, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 05:11:35', '2020-12-04 23:31:25'),
(270, 'Radhuni Shorishar Tel 500ml', NULL, NULL, '8941100512654', 'standard', 'C128', 18, 10, 7, 7, 7, 113, 125, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 05:14:11', '2020-12-04 23:31:25'),
(271, 'Radhuni Shorishar Tel 250ml', NULL, NULL, '8941100512647', 'standard', 'C128', 18, 10, 7, 7, 7, 58, 65, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 05:16:25', '2020-12-04 23:31:25'),
(272, 'Fresh Full Cream 75gm', NULL, NULL, '8301100701029', 'standard', 'C128', 7, 12, 7, 7, 7, 43, 48, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 05:25:09', '2020-12-04 23:40:58'),
(273, 'Fresh Full Cream 500gm', NULL, NULL, '8301100701050', 'standard', 'C128', 7, 12, 7, 7, 7, 275, 330, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 05:43:55', '2020-12-04 23:40:58'),
(274, 'Fresh Mineral Water 500ml', NULL, NULL, '8941161115030', 'standard', 'C128', 7, 12, 7, 7, 7, 9, 15, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 05:48:29', '2020-12-22 09:15:33'),
(275, 'Fresh Sugar 1kg', NULL, NULL, '8941161103273', 'standard', 'C128', 7, 12, 7, 7, 7, 66, 70, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 05:51:07', '2020-12-16 00:24:55'),
(276, 'Little Fruitika 125ml', NULL, NULL, '8941189605766', 'standard', 'C128', NULL, 12, 7, 7, 7, 7.92, 12, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 05:54:39', '2020-12-05 00:00:21'),
(277, 'Fuitika 200ml', NULL, NULL, '8941189605773', 'standard', 'C128', NULL, 12, 7, 7, 7, 13.38, 15, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 05:57:44', '2020-12-05 00:00:21'),
(278, 'Aarong Dairy Milk 1L', NULL, NULL, '8941159000591', 'standard', 'C128', NULL, 9, 7, 7, 7, 63, 68, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:00:10', '2020-12-05 00:02:02'),
(279, 'Aarong Dairy Milk 500ml', NULL, NULL, '8941159000522', 'standard', 'C128', NULL, 9, 7, 7, 7, 33, 36, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:01:07', '2020-12-08 23:33:07'),
(280, 'Aarong Tok Doi 500gm', NULL, NULL, '8941101010722', 'standard', 'C128', NULL, 12, 7, 7, 7, 72, 80, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:02:10', '2020-12-05 00:02:02'),
(281, 'Aarong Butter 100gm', NULL, NULL, '8941101010609', 'standard', 'C128', NULL, 9, 7, 7, 7, 91, 100, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:04:29', '2020-12-05 02:26:59'),
(282, 'Aarong Butter 200gm', NULL, NULL, '8941101010616', 'standard', 'C128', NULL, 9, 7, 7, 7, 171, 185, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:06:36', '2020-12-05 00:02:02'),
(283, 'Bashundhara Hand Towel', NULL, NULL, '8941193078518', 'standard', 'C128', NULL, 12, 7, 7, 7, 64, 78, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:12:13', '2020-12-05 00:11:43'),
(284, 'Bashundhara Kitchen Towel', NULL, NULL, '8941193078020', 'standard', 'C128', 5, 12, 7, 7, 7, 53, 57, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:22:40', '2020-12-05 00:46:57'),
(285, 'Olympic Nutty Biscuit 100gm', NULL, NULL, '811106134144', 'standard', 'C128', 10, 12, 7, 7, 7, 12, 15, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:24:22', '2020-12-05 02:25:39'),
(286, 'Foody Spicy Chicken Noodles 8 Pack', NULL, NULL, '0745114130426', 'standard', 'C128', NULL, 12, 7, 7, 7, 107, 130, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:26:08', '2020-12-05 02:25:39'),
(287, 'Chuchu Pant Style Diaper M 5 pc', NULL, NULL, '8944000294927', 'standard', 'C128', NULL, 12, 7, 7, 7, 110, 140, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:30:51', '2020-12-04 10:59:08'),
(288, 'Pepsodent 200g', NULL, NULL, '8941100652497', 'standard', 'C128', 11, 12, 7, 7, 7, 107.33, 125, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:36:03', '2020-12-04 11:37:52'),
(289, 'Ponds Cold Cream', NULL, NULL, '8941100656440', 'standard', 'C128', NULL, 6, 7, 7, 7, 70.86, 80, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:40:41', '2020-12-04 11:37:52'),
(290, 'Ponds White Beauty Cream', NULL, NULL, '8941100610695', 'standard', 'C128', 11, 6, 7, 7, 7, 100, 130, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:42:17', '2020-12-04 11:37:52'),
(291, 'Dettol Soap Cool 75g', NULL, NULL, '8941100283141', 'standard', 'C128', NULL, 6, 7, 7, 7, 36.04, 40, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:44:31', '2020-12-04 11:45:11'),
(292, 'Pure Laccha Semai 200gm', NULL, NULL, '815300000137', 'standard', 'C128', NULL, 10, 7, 7, 7, 25, 35, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:47:52', '2020-12-04 11:50:29'),
(293, 'Pran Premium Ghee 200', NULL, NULL, '831730007423', 'standard', 'C128', NULL, 10, 7, 7, 7, 200, 275, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:51:21', '2020-12-04 11:57:04'),
(294, 'Pran Premium Ghee 400', NULL, NULL, '831730007416', 'standard', 'C128', NULL, 10, 7, 7, 7, 400, 520, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 06:53:23', '2020-12-04 11:57:04'),
(295, 'Godrej Hair Color', NULL, NULL, '10000000000011', 'standard', 'C128', NULL, 12, 7, 7, 7, 12.6, 15, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:02:49', '2020-12-07 13:01:13'),
(296, 'Chopstick Instant Noodles 8Pack', NULL, NULL, '8941100515174', 'standard', 'C128', 17, 12, 7, 7, 7, 109, 135, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:16:47', '2020-12-05 01:29:46'),
(297, 'Ruchi Jhal Chanachur 35gm', NULL, NULL, '8941100513149', 'standard', 'C128', 17, 12, 7, 7, 7, 8.75, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:26:10', '2020-12-05 01:29:46'),
(298, 'Ruchi Jhal Chanachur 65gm', NULL, NULL, '8941100513156', 'standard', 'C128', 17, 12, 7, 7, 7, 12.75, 15, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:27:42', '2020-12-05 01:29:46'),
(299, 'Ruchi Jhal Chanachur 150gm', NULL, NULL, '8941100513163', 'standard', 'C128', 17, 12, 7, 7, 7, 30, 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:37:13', '2020-12-04 07:37:13'),
(300, 'Ruchi Bar-B-Q Chanachur 35gm', NULL, NULL, '8941100513170', 'standard', 'C128', 17, 12, 7, 7, 7, 8.75, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:43:37', '2020-12-05 01:29:46'),
(301, 'Ruchi Muri', NULL, NULL, '8941100513644', 'standard', 'C128', 17, 12, 7, 7, 7, 50.5, 58, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:45:50', '2020-12-05 01:29:46'),
(302, 'Shad Moyda 2kg', NULL, NULL, '075162107220', 'standard', 'C128', NULL, 10, 7, 7, 7, 85, 92, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:49:04', '2020-12-10 00:02:31'),
(303, 'Shad Brown Ata 1kg', NULL, NULL, '075111101000', 'standard', 'C128', NULL, 10, 7, 7, 7, 37, 42, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:50:31', '2020-12-05 00:49:39'),
(304, 'Shad Ata 1kg', NULL, NULL, '075162107110', 'standard', 'C128', NULL, 10, 7, 7, 7, 32, 37, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:52:10', '2020-12-07 13:02:54'),
(305, 'Shad Ata 2kg', NULL, NULL, '075111002000', 'standard', 'C128', NULL, 10, 7, 7, 7, 62.5, 72, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:55:21', '2021-01-08 00:40:18'),
(306, 'Sajeeb Isobgul Bhushi 45gm', NULL, NULL, '8941170034179', 'standard', 'C128', NULL, 8, 7, 7, 7, 50, 60, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:57:46', '2020-12-05 01:43:14'),
(307, 'Sajeeb Isobgul Bhushi 2gm', NULL, NULL, '8941170034162', 'standard', 'C128', NULL, 8, 7, 7, 7, 26, 32, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 07:59:48', '2020-12-05 01:43:14'),
(308, 'Kidzz Joy', NULL, NULL, '8941170010746', 'standard', 'C128', NULL, 12, 7, 7, 7, 20, 30, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:01:12', '2020-12-05 01:43:14'),
(309, 'Choko Crunch', NULL, NULL, '8941170002109', 'standard', 'C128', NULL, 12, 7, 7, 7, 275, 320, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:04:04', '2020-12-05 01:43:14'),
(310, 'Corn Flakes', NULL, NULL, '8941170002086', 'standard', 'C128', NULL, 12, 7, 7, 7, 260, 300, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:05:16', '2020-12-05 01:43:14'),
(311, 'Shezan Sweet Orange Jelly 440gm', NULL, NULL, '8941170035480', 'standard', 'C128', NULL, 10, 7, 7, 7, 85, 120, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:06:48', '2020-12-05 01:43:15'),
(312, 'Coke 250ml', NULL, NULL, '8907525000114', 'standard', 'C128', 9, 9, 7, 7, 7, 16.154, 20, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:11:50', '2020-12-05 01:48:59'),
(313, 'Coke 1.25L', NULL, NULL, '8907525000190', 'standard', 'C128', 9, 9, 7, 7, 7, 63, 70, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:13:31', '2020-12-05 01:48:59'),
(314, 'Sprite 1.25L', NULL, NULL, '8907525040196', 'standard', 'C128', 9, 9, 7, 7, 7, 59.67, 65, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:14:52', '2020-12-05 01:48:59'),
(315, 'Coke 600ml', NULL, NULL, '8907525000169', 'standard', 'C128', 9, 9, 7, 7, 7, 36.25, 40, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:17:36', '2020-12-05 01:48:59'),
(316, 'Marks Full Cream Powder 200gm', NULL, NULL, '710535035087', 'standard', 'C128', NULL, 12, 7, 7, 7, 115.83, 145, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:20:08', '2020-12-05 01:51:23'),
(317, 'Marks Full Cream Powder 500gm', NULL, NULL, '710535035056', 'standard', 'C128', NULL, 12, 7, 7, 7, 280, 330, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:22:22', '2020-12-10 00:02:31'),
(318, 'Ama Full Cream Milk Powder 20gm', NULL, NULL, '571454415004', 'standard', 'C128', NULL, 12, 7, 7, 7, 8.33, 10, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:25:22', '2020-12-05 01:51:23'),
(319, 'Dove Intensive Repair 170ml', NULL, NULL, '8941100612033', 'standard', 'C128', NULL, 12, 7, 7, 7, 180, 210, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:30:22', '2020-12-05 02:17:18'),
(320, 'Dove Hair Fall Rescue 170ml', NULL, NULL, '8941100612057', 'standard', 'C128', NULL, 6, 7, 7, 7, 180, 210, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:32:22', '2020-12-05 02:17:18'),
(321, 'Dove Nourishing Oil Care 170ml', NULL, NULL, '8941100658079', 'standard', 'C128', NULL, 12, 7, 7, 7, 180, 210, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:41:21', '2020-12-05 02:17:18'),
(322, 'Lifebuoy Handwash Lemon Refill Pack 170ml', NULL, NULL, '8941100612620', 'standard', 'C128', NULL, 4, 7, 7, 7, 52.7, 60, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:48:02', '2020-12-05 02:17:18'),
(323, 'Lifebuoy Handwash Cool fresh Refill Pack 170ml', NULL, NULL, '8941102310746', 'standard', 'C128', NULL, 4, 7, 7, 7, 52.7, 60, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:49:41', '2020-12-05 02:17:18'),
(324, 'Sunsilk Shampoo 90ml', NULL, NULL, '8941102311378', 'standard', 'C128', NULL, 6, 7, 7, 7, 75, 85, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:54:30', '2020-12-23 05:42:17'),
(325, 'Sunsilk Shampoo 180ml', NULL, NULL, '8941100659892', 'standard', 'C128', NULL, 6, 7, 7, 7, 163, 185, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:56:11', '2020-12-08 09:22:04'),
(326, 'Sunsilk Hair Fall Shampoo 180ml', NULL, NULL, '8941100659908', 'standard', 'C128', NULL, 6, 7, 7, 7, 163, 180, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 08:58:05', '2020-12-05 02:17:18'),
(327, 'Clear Men Menthol 180ml', NULL, NULL, '8941100659298', 'standard', 'C128', NULL, 6, 7, 7, 7, 205, 240, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:00:24', '2020-12-05 02:17:18'),
(328, 'Clinic Plus Shampoo 170ml', NULL, NULL, '8941100619766', 'standard', 'C128', NULL, 6, 7, 7, 7, 130.38, 150, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:02:27', '2020-12-05 02:17:18'),
(329, 'Nivea Soft M Cream 50ml', NULL, NULL, '42207269', 'standard', 'C128', NULL, 6, 7, 7, 7, 135, 175, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:05:42', '2020-12-05 02:18:44'),
(330, 'Nivea Soft M Cream 100ml', NULL, NULL, '4005808890590', 'standard', 'C128', NULL, 6, 7, 7, 7, 235, 300, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:06:40', '2020-12-05 02:18:44'),
(331, 'Nivea Soft M Cream 60ml', NULL, NULL, '4005808160242', 'standard', 'C128', NULL, 6, 7, 7, 7, 155, 210, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:08:09', '2020-12-05 02:18:44'),
(332, 'Axe Spray Black 17ml', NULL, NULL, '8886467010118', 'standard', 'C128', NULL, 6, 7, 7, 7, 79, 120, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:24:13', '2020-12-05 02:19:55'),
(333, 'Axe Spray Red 17ml', NULL, NULL, '8886467010088', 'standard', 'C128', NULL, 6, 7, 7, 7, 79, 120, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:26:37', '2020-12-05 02:19:55'),
(334, 'Axe Spray Blue 17ml', NULL, NULL, '8886467010095', 'standard', 'C128', NULL, 6, 7, 7, 7, 79, 120, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:27:41', '2020-12-05 02:19:55'),
(335, 'Rexona Roll on Men', NULL, NULL, '4800888187918', 'standard', 'C128', NULL, 6, 7, 7, 7, 134, 160, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:29:56', '2020-12-05 02:19:55'),
(336, 'Rexona Roll on Women', NULL, NULL, '4800888158932', 'standard', 'C128', NULL, 6, 7, 7, 7, 134, 160, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:31:04', '2020-12-05 02:19:55'),
(337, 'Nido 350gm', NULL, NULL, '8941100292907', 'standard', 'C128', NULL, 7, 7, 7, 7, 253, 270, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:36:43', '2020-12-05 02:24:20'),
(338, 'Maggi 62gm', NULL, NULL, '8941100294406', 'standard', 'C128', NULL, 12, 7, 7, 7, 13.5, 15, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:42:06', '2020-12-05 02:24:20'),
(339, 'Maggi 37gm', NULL, NULL, '8941100294390', 'standard', 'C128', NULL, 10, 7, 7, 7, 9, 10, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 09:45:15', '2020-12-05 02:24:20'),
(340, 'Maggi Thai Soup 35gm', NULL, NULL, '8941100291351', 'standard', 'C128', NULL, 10, 7, 7, 7, 36.5, 40, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:03:53', '2020-12-05 02:24:20'),
(341, 'Ispahani Mirzapur Tea Bag', NULL, NULL, '8941193314036', 'standard', 'C128', NULL, 10, 7, 7, 7, 85, 90, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:13:35', '2020-12-18 07:20:29'),
(342, 'Sensodyne Fresh Mint Toothpaste 150gm', NULL, NULL, '8901571005659', 'standard', 'C128', NULL, 6, 7, 7, 7, 260, 295, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:15:19', '2020-12-05 00:46:57'),
(343, 'Sensodyne Fresh Gel Toothpaste 150gm', NULL, NULL, '8901571005666', 'standard', 'C128', NULL, 6, 7, 7, 7, 260, 295, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:16:09', '2020-12-05 00:46:57'),
(344, 'Meril Milk & Beli Soap 100gm', NULL, NULL, '8941100501290', 'standard', 'C128', NULL, 6, 7, 7, 7, 30, 35, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:19:09', '2020-12-05 00:46:57'),
(345, 'Meril Milk & Kiwi Soap 100gm', NULL, NULL, '8941100500187', 'standard', 'C128', NULL, 6, 7, 7, 7, 30, 35, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:20:47', '2020-12-05 00:46:57'),
(346, 'Lux Jasmin Soap 150gm', NULL, NULL, '8941102310661', 'standard', 'C128', NULL, 6, 7, 7, 7, 45, 50, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:24:16', '2021-01-07 23:55:41'),
(347, 'Spanisha Olive Oil 250ml', NULL, NULL, '8410269996310', 'standard', 'C128', NULL, 6, 7, 7, 7, 280, 300, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:27:16', '2020-12-05 00:46:58'),
(348, 'Rok Floor Cleaner 900ml', NULL, NULL, '200812060312', 'standard', 'C128', NULL, 4, 7, 7, 7, 175, 220, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:29:18', '2020-12-10 00:02:32'),
(349, 'Vim Dish was powder 500gm', NULL, NULL, '8941100619421', 'standard', 'C128', NULL, 4, 7, 7, 7, 33, 35, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:31:50', '2020-12-10 00:02:31'),
(350, 'Johnson\'s Baby Soap 150g', NULL, NULL, '8850007020271', 'standard', 'C128', NULL, 6, 7, 7, 7, 110, 130, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:33:22', '2020-12-05 00:46:58'),
(351, 'Ligion Active Gold Mehedi', NULL, NULL, '8941147000053', 'standard', 'C128', NULL, 6, 7, 7, 7, 18.75, 50, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:38:20', '2020-12-05 00:48:30'),
(352, 'Ligion Mehedi Pack', NULL, NULL, '8941147000268', 'standard', 'C128', NULL, 4, 7, 7, 7, 18.46, 30, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:39:41', '2020-12-05 00:48:30'),
(353, 'Ligion Glycerine 50gm', NULL, NULL, '8941147001289', 'standard', 'C128', NULL, 6, 7, 7, 7, 30, 50, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:44:31', '2020-12-05 00:48:30'),
(354, 'Ligion Glycerine 100gm', NULL, NULL, '8941147001272', 'standard', 'C128', NULL, 6, 7, 7, 7, 55.72, 90, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:45:56', '2020-12-05 00:48:30'),
(355, 'Nescafe Original 210gm', NULL, NULL, '8992696522183', 'standard', 'C128', NULL, 10, 7, 7, 7, 315, 350, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:53:03', '2020-12-04 11:13:25'),
(356, 'Nescafe Classic 100gm', NULL, NULL, '7891000071786', 'standard', 'C128', NULL, 10, 7, 7, 7, 225, 250, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 10:54:06', '2020-12-04 11:13:25'),
(357, 'Dettol Original 30 gm', NULL, NULL, '8941100283264', 'standard', 'C128', NULL, 6, 7, 7, 7, 9.09, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-04 11:43:57', '2020-12-04 11:45:11'),
(358, 'Bashundhara Paper Hand Towel', NULL, NULL, '8941193078525', 'standard', 'C128', NULL, 12, 7, 7, 7, 26, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 00:08:57', '2020-12-05 00:08:57'),
(359, 'Ruchi Orange Jam', NULL, NULL, '8941100514672', 'standard', 'C128', NULL, 12, 7, 7, 7, 60, 70, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 01:18:00', '2020-12-05 01:29:46'),
(360, 'Lifebuoy total 10 100gm Soap', NULL, NULL, '8941102312382', 'standard', 'C128', NULL, 6, 7, 7, 7, 29.42, 32, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 02:14:05', '2020-12-05 02:17:18'),
(361, 'Radhuni Jira 50gm', NULL, NULL, '8941100510254', 'standard', 'C128', 18, 10, 7, 7, 7, 41, 43, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:08:49', '2020-12-05 05:08:49'),
(362, 'Radhuni Morich 50gm', NULL, NULL, '8941100510094', 'standard', 'C128', 18, 10, 7, 7, 7, 28, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:09:48', '2020-12-05 05:09:48'),
(363, 'Brooke Bond Taaza Tea 400gm', NULL, NULL, '8941100657652', 'standard', 'C128', NULL, 10, 7, 7, 7, 195, 199, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:11:30', '2020-12-05 05:11:30'),
(364, 'Ispahani Mirzapur Tea 200gm', NULL, NULL, '8941193314548', 'standard', 'C128', NULL, 10, 7, 7, 7, 105, 110, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:13:19', '2021-01-08 00:40:18'),
(365, 'Pran Mr. Noodles 8Pack', NULL, NULL, '846656003411', 'standard', 'C128', NULL, 10, 7, 7, 7, 130, 135, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:21:10', '2020-12-05 05:21:10'),
(366, 'Dong Dong Chips', NULL, NULL, '8941160225106', 'standard', 'C128', NULL, 12, 7, 7, 7, 8, 10, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:21:59', '2020-12-05 05:21:59'),
(367, 'Egg', NULL, NULL, '1000000000012', 'standard', 'C128', NULL, 10, 7, 7, 7, 6.6, 7.5, 600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:23:59', '2020-12-06 06:19:04'),
(368, 'Razzak Chal', NULL, NULL, '1000000000013', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.059, 0.06, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:29:53', '2020-12-06 06:19:04'),
(369, 'Rashid Miniket Chal', NULL, NULL, '1000000000014', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.059, 0.06, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:30:57', '2020-12-06 06:19:04'),
(370, 'Palki Najir', NULL, NULL, '100000000015', 'standard', 'C128', NULL, 10, 7, 7, 7, 0.061, 0.065, 25000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:32:36', '2020-12-06 06:19:04'),
(371, '28 Chal', NULL, NULL, '1000000000016', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.056, 0.058, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:33:18', '2020-12-08 07:41:31'),
(372, 'Mug Daal', NULL, NULL, '1000000000017', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.135, 0.14, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:34:29', '2020-12-06 06:19:04'),
(373, 'Moshur Daal (Mota)', NULL, NULL, '1000000000018', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.072, 0.075, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:35:22', '2020-12-06 06:19:04'),
(374, 'Moshur Daal (Chikon)', NULL, NULL, '1000000000019', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.1, 0.11, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:36:47', '2020-12-06 06:19:04'),
(375, 'Deshi Peyaj', NULL, NULL, '1000000000020', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.078, 0.08, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:37:50', '2020-12-08 07:39:58'),
(376, 'Boro Lal Peyaj', NULL, NULL, '1000000000021', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.042, 0.045, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:38:33', '2020-12-06 06:19:04'),
(377, 'Boro Shada Peyaj', NULL, NULL, '1000000000022', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.038, 0.04, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:39:25', '2020-12-06 06:19:04'),
(378, 'Adaa', NULL, NULL, '1000000000023', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.088, 0.09, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:40:16', '2020-12-06 06:19:04'),
(379, 'Rashun', NULL, NULL, '1000000000024', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.088, 0.09, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:41:02', '2020-12-06 06:19:04'),
(380, 'Booter Daal', NULL, NULL, '1000000000025', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.098, 0.1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:42:15', '2020-12-06 06:19:04'),
(381, 'Mashkolai Daal', NULL, NULL, '1000000000027', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.098, 0.1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:42:58', '2020-12-06 06:19:04'),
(382, 'Salt (Mota Dana) 1kg', NULL, NULL, '1000000000029', 'standard', 'C128', NULL, 10, 7, 7, 7, 18, 25, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:44:09', '2020-12-06 06:19:04'),
(383, 'Polao Chal A', NULL, NULL, '1000000000030', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.09, 0.1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:45:35', '2020-12-05 05:45:35'),
(384, 'Polao Chal B', NULL, NULL, '1000000000031', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.07, 0.08, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 05:46:24', '2020-12-05 05:46:24'),
(385, 'Fevicol Super Glue 5gm', NULL, NULL, '1000000000032', 'standard', 'C128', NULL, 12, 7, 7, 7, 15, 20, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 11:41:46', '2020-12-06 06:19:04'),
(386, 'Oral Fresh Toothbrush', NULL, NULL, '1000000000033', 'standard', 'C128', NULL, 6, 7, 7, 7, 17, 20, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 11:43:16', '2020-12-06 06:19:04'),
(387, 'Power Guard Mosquito-Repellent Coil', NULL, NULL, '1000000000034', 'standard', 'C128', NULL, 11, 7, 7, 7, 3.5, 3, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 11:45:20', '2020-12-06 06:19:04'),
(388, 'Tulsi Mosquito-Repellent Coil', NULL, NULL, '5400181610145', 'standard', 'C128', NULL, 11, 7, 7, 7, 5, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 11:51:09', '2020-12-05 11:51:09'),
(389, 'Badam Bhaja', NULL, NULL, '1000000000035', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.16, 0.18, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 12:03:18', '2020-12-06 06:19:04'),
(390, 'Kaju Badam', NULL, NULL, '1000000000036', 'standard', 'C128', NULL, 10, 11, 11, 11, 3.2, 3.5, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 12:05:40', '2020-12-06 06:19:04'),
(391, 'Kalijira', NULL, NULL, '1000000000037', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.36, 0.4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 12:46:17', '2020-12-06 06:19:04'),
(392, 'jira', NULL, NULL, '1000000000038', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.265, 0.3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 12:52:16', '2020-12-06 09:21:52'),
(393, 'Jaytri', NULL, NULL, '1000000000039', 'standard', 'C128', NULL, 10, 11, 11, 11, 2.46, 2.7, 0.45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 12:54:06', '2020-12-06 09:21:52'),
(394, 'Soya Sauce', NULL, NULL, '1000000000040', 'standard', 'C128', NULL, 10, 7, 7, 7, 45, 48, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 12:56:30', '2020-12-06 06:19:04'),
(395, 'Peshta 250gm', NULL, NULL, '1000000000041', 'standard', 'C128', NULL, 10, 7, 7, 7, 1.248, 1.4, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 12:58:20', '2020-12-06 06:19:04'),
(396, 'Elach', NULL, NULL, '1000000000042', 'standard', 'C128', NULL, 10, 7, 7, 7, 2.3, 2.6, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 13:03:32', '2020-12-06 09:21:52'),
(397, 'Kismis', NULL, NULL, '1000000000043', 'standard', 'C128', NULL, 10, 7, 7, 7, 0.21, 0.24, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 13:05:23', '2020-12-06 06:19:05'),
(398, 'Alu Bokhara', NULL, NULL, '1000000000044', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.622, 0.7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 13:07:23', '2020-12-06 06:19:05'),
(399, 'Isobgul Bhushi (khola)', NULL, NULL, '1000000000045', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.84, 1, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-05 13:11:05', '2020-12-06 06:19:05'),
(400, 'Tim Tim Orange Biscuits Standard', NULL, NULL, '0745114130235', 'standard', 'C128', 10, 12, 7, 7, 7, 8.5, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 02:33:09', '2020-12-06 04:18:47'),
(401, 'Tim Tim Orange Biscuits Minipack', NULL, NULL, '811112336440', 'standard', 'C128', 10, 12, 7, 7, 7, 4, 5, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 02:34:10', '2020-12-06 04:18:47');
INSERT INTO `products` (`id`, `name`, `slug`, `tags`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `daily_sale_objective`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_embeded`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `is_online`, `in_stock`, `track_inventory`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `short_description`, `specification`, `meta_title`, `meta_description`, `related_products`, `variant_option`, `variant_value`, `is_active`, `is_sync_disable`, `woocommerce_product_id`, `woocommerce_media_id`, `created_at`, `updated_at`) VALUES
(402, 'Olympic Wayfun', NULL, NULL, '0745114131065', 'standard', 'C128', 10, 12, 7, 7, 7, 7.8, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 02:36:06', '2020-12-06 04:18:47'),
(403, 'Horlicks Minipack 18gm', NULL, NULL, '8940006100057', 'standard', 'C128', NULL, 12, 7, 7, 7, 9.17, 10, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 02:39:39', '2020-12-06 04:56:47'),
(404, 'Horlicks 500gm Jar', NULL, NULL, '8906105100244', 'standard', 'C128', NULL, 12, 7, 7, 7, 333.33, 350, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 02:40:33', '2020-12-06 04:56:47'),
(405, 'PediaSure Vanilla Jar 400gm', NULL, NULL, '8904145911844', 'standard', 'C128', NULL, 7, 7, 7, 7, 722, 759, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 03:50:38', '2020-12-06 04:54:40'),
(406, 'Junior Horlicks 500gm', NULL, NULL, '8906105100121', 'standard', 'C128', NULL, 12, 7, 7, 7, 371.43, 390, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 04:14:31', '2020-12-06 04:56:47'),
(407, 'Women Horlicks 400gm', NULL, NULL, '8941571003286', 'standard', 'C128', NULL, 12, 7, 7, 7, 457.14, 480, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 04:16:05', '2020-12-06 04:56:47'),
(408, 'Aloo', NULL, NULL, '1000000000048', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.045, 0.05, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 05:43:58', '2020-12-06 06:19:05'),
(409, 'Shabu', NULL, NULL, '1000000000049', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.12, 0.135, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 05:46:46', '2020-12-06 05:46:46'),
(410, 'Matador Toothbrush', NULL, NULL, '1000000000050', 'standard', 'C128', NULL, 12, 7, 7, 7, 7.5, 10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 06:16:50', '2020-12-06 06:19:05'),
(411, 'Elachi', NULL, NULL, '1000000000051', 'standard', 'C128', NULL, 10, 11, 11, 11, 2.35, 2.6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2020-12-06 07:48:57', '2020-12-06 09:21:51'),
(412, 'Long', NULL, NULL, '1000000000052', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.63, 0.8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 07:50:06', '2020-12-06 09:21:52'),
(413, 'Darchini', NULL, NULL, '1000000000053', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.38, 0.4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 07:52:27', '2020-12-06 09:21:52'),
(414, 'Kalo Morich', NULL, NULL, '1000000000054', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.44, 0.6, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 07:55:19', '2020-12-06 09:21:52'),
(415, 'Jayfol', NULL, NULL, '1000000000055', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.84, 1, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 08:05:07', '2020-12-06 09:21:52'),
(416, 'Baking Powder', NULL, NULL, '1000000000056', 'standard', 'C128', NULL, 10, 7, 7, 7, 20, 35, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 08:07:45', '2020-12-06 09:21:52'),
(417, 'Tejpata', NULL, NULL, '1000000000057', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.12, 0.17, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 08:11:05', '2020-12-06 09:21:52'),
(418, 'Tasting Salt 50gm', NULL, NULL, '1000000000064', 'standard', 'C128', NULL, 10, 7, 7, 7, 15, 20, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 08:23:32', '2020-12-06 09:21:52'),
(419, 'Shada Morich', NULL, NULL, '1000000000058', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.68, 0.8, 0.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 08:25:12', '2020-12-06 09:21:52'),
(420, 'Kalo Elach', NULL, NULL, '1000000000059', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.7, 1, 0.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 08:27:27', '2020-12-06 09:21:52'),
(421, 'Shada Shorisha', NULL, NULL, '1000000000060', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.08, 0.1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 08:35:31', '2020-12-06 09:21:52'),
(422, 'Shorisha', NULL, NULL, '1000000000061', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.075, 0.09, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 08:36:55', '2020-12-06 09:21:52'),
(423, 'Soda', NULL, NULL, '1000000000062', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.06, 0.08, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 08:39:16', '2020-12-06 09:21:52'),
(424, 'Beshon', NULL, NULL, '1000000000063', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.1, 0.12, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 08:40:05', '2020-12-06 09:21:52'),
(425, 'Tibbet Ball Soap 130gm', NULL, NULL, '8513690310172', 'standard', 'C128', NULL, 4, 7, 7, 7, 14, 17, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 10:20:46', '2020-12-10 00:02:32'),
(426, 'Vaseline 50ml', NULL, NULL, '8941100615638', 'standard', 'C128', NULL, 6, 7, 7, 7, 42, 50, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 10:23:16', '2020-12-23 05:42:17'),
(427, 'Grand Choice Biscuit 100gm', NULL, NULL, '013256830406', 'standard', 'C128', NULL, 12, 7, 7, 7, 12.92, 15, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 10:26:30', '2020-12-06 10:33:57'),
(428, 'Tape (Transparent)', NULL, NULL, '1000000000065', 'standard', 'C128', NULL, 12, 7, 7, 7, 10, 15, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 10:28:00', '2020-12-06 10:33:57'),
(429, 'Wheel Bar Soap 130', NULL, NULL, '8941100654798', 'standard', 'C128', 11, 4, 7, 7, 7, 17, 20, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 10:37:47', '2020-12-07 12:49:49'),
(430, 'Salmon Matchbox', NULL, NULL, '1000000000066', 'standard', 'C128', NULL, 12, 7, 7, 7, 0.833, 1, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 23:49:14', '2020-12-07 13:14:39'),
(431, 'Flamebox Matchbox', NULL, NULL, '1000000000067', 'standard', 'C128', NULL, 12, 7, 7, 7, 0.686, 2, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-06 23:50:09', '2020-12-07 13:14:39'),
(432, 'Mediplus DS 90gm', NULL, NULL, '859875003049', 'standard', 'C128', NULL, 6, 7, 7, 7, 76.5, 90, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 07:52:35', '2020-12-07 13:09:39'),
(433, 'Mediplus DS 140gm', NULL, NULL, '859875003032', 'standard', 'C128', NULL, 12, 7, 7, 7, 114.75, 135, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 07:55:06', '2020-12-07 13:09:38'),
(434, 'Godrej Expert Shampoo Hair Color 20ml', NULL, NULL, '8901023018688', 'standard', 'C128', NULL, 4, 7, 7, 7, 34.51, 40, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 08:01:57', '2020-12-07 13:01:13'),
(435, 'Good Knight Advanced Coil', NULL, NULL, '8901023012808', 'standard', 'C128', NULL, 11, 7, 7, 7, 50, 80, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 08:04:41', '2020-12-08 07:44:46'),
(436, 'English Antilice Shampoo 8ml', NULL, NULL, '859875003124', 'standard', 'C128', NULL, 11, 7, 7, 7, 5.95, 7, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 08:15:44', '2020-12-07 13:09:39'),
(437, 'Domex 250gm', NULL, NULL, '8941100610503', 'standard', 'C128', NULL, 4, 7, 7, 7, 30.66, 35, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 08:25:15', '2020-12-07 12:49:50'),
(438, 'Close Up Toothpaste 10gm', NULL, NULL, '8941102310531', 'standard', 'C128', NULL, 6, 7, 7, 7, 5.42, 6, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 08:35:22', '2020-12-07 13:14:39'),
(439, 'Mombati Small', NULL, NULL, '1000000000068', 'standard', 'C128', NULL, 12, 7, 7, 7, 2.92, 5, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 08:39:33', '2020-12-07 13:14:39'),
(440, 'Mombati Large', NULL, NULL, '1000000000069', 'standard', 'C128', NULL, 12, 7, 7, 7, 6.67, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 08:41:07', '2020-12-07 13:14:39'),
(441, 'Chini(Khola)', NULL, NULL, '1000000000070', 'standard', 'C128', NULL, 10, 11, 11, 11, 0.06, 0.07, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 08:43:03', '2020-12-07 13:16:00'),
(442, 'Dhoniya Gura', NULL, NULL, '1000000000071', 'standard', 'C128', NULL, 10, 7, 7, 7, 0.15, 0.165, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 08:47:16', '2020-12-07 13:16:00'),
(443, 'Shukna Morich', NULL, NULL, '1000000000072', 'standard', 'C128', NULL, 12, 11, 11, 11, 0.27, 0.3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 08:59:51', '2020-12-07 13:16:37'),
(444, 'Star Ship Juice 200ml', NULL, NULL, '710535035384', 'standard', 'C128', NULL, 12, 7, 7, 7, 20, 25, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:04:30', '2020-12-07 09:04:30'),
(445, 'Ardy Chocolate Milk 200ml', NULL, NULL, '9786020713144', 'standard', 'C128', NULL, 12, 7, 7, 7, 19.5, 25, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:07:13', '2020-12-07 09:07:13'),
(446, 'Detos Chips 30gm', NULL, NULL, '9415007664010', 'standard', 'C128', NULL, 12, 7, 7, 7, 15.09, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:31:11', '2020-12-07 09:31:11'),
(447, 'Poppers chips 25g', NULL, NULL, '9415007976486', 'standard', 'C128', NULL, 12, 7, 7, 7, 11.09, 15, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:34:11', '2020-12-07 09:34:11'),
(448, 'Brooke Bond Taaza Tea 100gm', NULL, NULL, '8941100610305', 'standard', 'C128', NULL, 3, 7, 7, 7, 49.29, 55, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:37:09', '2020-12-07 12:49:50'),
(449, 'Brooke Bond Taaza Tea 50gm', NULL, NULL, '8941100610299', 'standard', 'C128', NULL, 3, 7, 7, 7, 25.72, 30, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:38:58', '2023-03-30 04:02:22'),
(450, 'Brooke Bond Taaza Tea bag', NULL, NULL, '8941100651322', 'standard', 'C128', NULL, 3, 7, 7, 7, 77.3, 85, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:40:44', '2023-03-30 04:02:22'),
(451, 'Senora Sanitary Napkin (Belt System)', NULL, NULL, '8941100500415', 'standard', 'C128', NULL, 8, 7, 7, 7, 89, 100, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:45:06', '2020-12-07 12:52:01'),
(452, 'Senora Sanitary Napkin (Panty System)', NULL, NULL, '8941100500941', 'standard', 'C128', NULL, 8, 7, 7, 7, 89, 100, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:46:11', '2020-12-07 12:52:01'),
(453, 'Hit Aerosol Red 400ml (Regular)', NULL, NULL, '8901157025200', 'standard', 'C128', NULL, 11, 7, 7, 7, 254.54, 280, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:51:18', '2020-12-07 13:01:13'),
(454, 'Hit Aerosol Black 400ml', NULL, NULL, '8901023014291', 'standard', 'C128', NULL, 11, 7, 7, 7, 250, 275, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:52:56', '2020-12-07 13:01:13'),
(455, 'Ardy Chocolate Milk 200ml (poly)', NULL, NULL, '9786070713149', 'standard', 'C128', NULL, 3, 7, 7, 7, 8, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:56:58', '2020-12-07 09:56:58'),
(456, 'Ardy Mango Milk 200ml (poly)', NULL, NULL, '9786060713142', 'standard', 'C128', NULL, 3, 7, 7, 7, 8, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 09:57:55', '2020-12-07 09:57:55'),
(457, 'Mediplus  70gm', NULL, NULL, '859875003018', 'standard', 'C128', NULL, 8, 7, 7, 7, 55.25, 65, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 10:31:14', '2020-12-07 13:09:38'),
(458, 'Vim Dish wash Liquid 100ml', NULL, NULL, '8941100654781', 'standard', 'C128', NULL, 16, 7, 7, 7, 18.33, 20, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 10:33:35', '2020-12-07 12:49:50'),
(459, 'Vim Dish wash Liquid 250ml', NULL, NULL, '8941100659823', 'standard', 'C128', NULL, 16, 7, 7, 7, 44.25, 45, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 10:36:42', '2020-12-07 12:49:50'),
(460, 'Surf Excel 200gm', NULL, NULL, '8941102310142', 'standard', 'C128', NULL, 4, 7, 7, 7, 31.53, 35, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 10:39:12', '2020-12-07 12:49:50'),
(461, 'Mr. Brasso Glass Cleaner 350ml', NULL, NULL, '8941100285008', 'standard', 'C128', NULL, 4, 7, 7, 7, 105, 135, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 10:40:40', '2020-12-07 10:40:40'),
(462, 'Surf Excel 1Kg', NULL, NULL, '8941102310128', 'standard', 'C128', NULL, 4, 7, 7, 7, 196.11, 220, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 10:42:31', '2020-12-09 08:00:42'),
(463, 'Vim Dish wash Liquid 250ml New', NULL, NULL, '8941100658819', 'standard', 'C128', NULL, 4, 7, 7, 7, 44.25, 50, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 10:51:50', '2020-12-07 12:49:50'),
(464, 'Wheel 200gm', NULL, NULL, '8941100657478', 'standard', 'C128', NULL, 4, 7, 7, 7, 16.55, 18, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-07 11:13:31', '2020-12-07 12:49:49'),
(465, 'Meril Glycerin 60gm', NULL, NULL, '8941100500903', 'standard', 'C128', NULL, 6, 7, 7, 7, 44.307, 55, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-08 06:30:04', '2020-12-08 06:50:09'),
(466, 'Meril Baby Lotion 100ml', NULL, NULL, '8941100500231', 'standard', 'C128', NULL, 7, 7, 7, 7, 104, 120, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-08 06:35:42', '2020-12-08 06:50:09'),
(467, 'Meril Conditioning Nail Polish Remover 40ml', NULL, NULL, '8941100501047', 'standard', 'C128', NULL, 6, 7, 7, 7, 30, 35, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-08 06:37:15', '2020-12-08 06:50:09'),
(468, 'Meril Petrolium Jelly', NULL, NULL, '8941100500873', 'standard', 'C128', NULL, 8, 7, 7, 7, 45.4615, 55, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-08 06:40:18', '2020-12-08 06:50:09'),
(469, 'Sepnil Instant Hand Sanitizer 40ml', NULL, NULL, '8941100500606', 'standard', 'C128', NULL, 8, 7, 7, 7, 50, 80, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-08 06:41:46', '2020-12-08 06:50:09'),
(470, 'Dragon Mosquito Repellent Coil (Micro Smoke)', NULL, NULL, '1000000000073', 'standard', 'C128', NULL, 11, 7, 7, 7, 55, 75, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-08 08:22:27', '2020-12-08 08:25:14'),
(471, 'Dragon Mosquito Repellent Coil ( Lemon Flavor)', NULL, NULL, '1000000000074', 'standard', 'C128', NULL, 11, 7, 7, 7, 60, 85, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-08 08:23:41', '2020-12-08 08:25:14'),
(472, 'Baizid', NULL, NULL, '1000000000077', 'standard', 'C128', NULL, 12, 13, 13, 13, 0, 80, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-08 08:33:12', '2020-12-08 08:33:12'),
(473, 'Dettol Antiseptic Disinfectant', NULL, NULL, '8941100283219', 'standard', 'C128', NULL, 8, 7, 7, 7, 47.24, 52, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-08 23:29:15', '2020-12-08 23:30:17'),
(474, 'Dettol Antiseptic Disinfectant', NULL, NULL, '8941100283219', 'standard', 'C128', NULL, 8, 7, 7, 7, 47.24, 52, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-08 23:29:15', '2020-12-08 23:29:15'),
(475, 'Lifebuoy 100gm Care Soap', NULL, NULL, '8941102312399', 'standard', 'C128', NULL, 6, 7, 7, 7, 29.42, 32, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-08 23:38:42', '2020-12-08 23:38:42'),
(476, 'Kokomo Chocolate Ball Biscuit 100gm', NULL, NULL, '8941100234051', 'standard', 'C128', NULL, 12, 7, 7, 7, 8, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-08 23:59:50', '2020-12-09 00:02:46'),
(477, 'Kokomo Chocolate Ball Biscuit 25gm', NULL, NULL, '8941100234052', 'standard', 'C128', NULL, 12, 7, 7, 7, 4, 5, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-09 00:01:32', '2020-12-09 00:02:46'),
(478, 'Pepsodent Sensitive Expert 140gm', NULL, NULL, '8941100658277', 'standard', 'C128', NULL, 8, 7, 7, 7, 114.38, 135, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-09 00:08:58', '2020-12-09 00:23:14'),
(479, 'Glow And Lovely 25gm', NULL, NULL, '8941102311767', 'standard', 'C128', NULL, 6, 7, 7, 7, 56.04, 64, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-09 00:12:40', '2020-12-09 00:23:14'),
(480, 'Sunsilk Shampoo 7ml', NULL, NULL, '1000000000075', 'standard', 'C128', NULL, 6, 7, 7, 7, 2.58, 3, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-09 00:19:45', '2020-12-09 00:23:14'),
(481, 'Sanityza 25ml', NULL, NULL, '1000000000079', 'standard', 'C128', NULL, 12, 7, 7, 7, 130, 130, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-09 10:04:47', '2020-12-09 10:07:12'),
(482, 'ACI Aerosol Insect Repellent 250ml', NULL, NULL, '813903000127', 'standard', 'C128', NULL, 11, 7, 7, 7, 165, 185, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-10 08:03:42', '2020-12-10 08:03:42'),
(483, 'ACI Aerosol Insect Repellent 475ml', NULL, NULL, '813903000035', 'standard', 'C128', NULL, 11, 7, 7, 7, 262, 305, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-10 08:12:17', '2020-12-10 08:12:17'),
(484, 'Orchid Air Freshner', NULL, NULL, '7860109002021', 'standard', 'C128', NULL, 4, 7, 7, 7, 28, 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-10 08:40:45', '2020-12-10 08:40:45'),
(485, 'Odonil Toilet Air Freshner 50gm', NULL, NULL, '8901207029875', 'standard', 'C128', NULL, 4, 7, 7, 7, 33, 45, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-10 08:43:58', '2020-12-10 08:43:58'),
(486, 'Alooz Magic Masala  Potato Chips', NULL, NULL, '890405004259', 'standard', 'C128', NULL, 12, 7, 7, 7, 12.15, 15, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-10 23:34:20', '2020-12-10 23:34:20'),
(487, 'Lifebuoy Total 10 Refill Handwash', NULL, NULL, '8941102310272', 'standard', 'C128', NULL, 8, 7, 7, 7, 48.7692, 60, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-11 00:45:28', '2020-12-11 00:45:28'),
(488, 'Dove Soap Pink 100gm', NULL, NULL, '067238891183', 'standard', 'C128', NULL, 6, 7, 7, 7, 65.75, 75, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-11 00:50:14', '2020-12-11 01:39:52'),
(489, 'Dove Pink Soap 135gm', NULL, NULL, '7501056349288', 'standard', 'C128', NULL, 6, 7, 7, 7, 86, 99, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-11 00:58:18', '2020-12-11 01:39:52'),
(490, 'Dove Soap 100gm', NULL, NULL, '8000700000005', 'standard', 'C128', NULL, 6, 7, 7, 7, 65.75, 75, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-11 01:28:14', '2020-12-11 01:39:52'),
(491, 'Ispahani Mirzapur Tea 50gm', NULL, NULL, '8941193314524', 'standard', 'C128', NULL, 12, 7, 7, 7, 23.75, 30, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 00:35:22', '2020-12-16 00:44:34'),
(492, 'Akij Tok Doi', NULL, NULL, '8941189604752', 'standard', 'C128', NULL, 12, 7, 7, 7, 70, 80, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 00:49:45', '2020-12-16 00:54:44'),
(493, 'Akij Farm Fresh Milk 1L', NULL, NULL, '8941189605124', 'standard', 'C128', NULL, 12, 7, 7, 7, 58, 65, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 00:52:14', '2020-12-17 02:15:23'),
(494, 'Akij Farm Fresh Milk 500ml', NULL, NULL, '8941189605117', 'standard', 'C128', NULL, 12, 7, 7, 7, 31, 35, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 00:53:31', '2020-12-16 00:54:44'),
(495, 'Finebar Dairy Milk 18gm', NULL, NULL, '8901233016313', 'standard', 'C128', NULL, 12, 7, 7, 7, 5.416, 10, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 00:58:10', '2020-12-16 01:04:29'),
(496, 'Pran Badam Bhaja 25gm', NULL, NULL, '831730006501', 'standard', 'C128', NULL, 12, 7, 7, 7, 5, 8, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 01:14:41', '2020-12-16 01:24:25'),
(497, 'Cheez  Ball', NULL, NULL, '890165001031', 'standard', 'C128', NULL, 12, 7, 7, 7, 7.08, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 01:21:15', '2020-12-16 01:51:37'),
(498, 'Cocola Chicken Noodles 185gm', NULL, NULL, '8941155013687', 'standard', 'C128', NULL, 12, 7, 7, 7, 17.5, 20, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 06:23:49', '2020-12-16 06:25:23'),
(499, 'Alpenliebe Chocolate Bag', NULL, NULL, '8944000196061', 'standard', 'C128', NULL, 12, 7, 7, 7, 75, 90, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 06:40:36', '2020-12-16 07:02:54'),
(500, 'Alpenliebe Pop Fruit Shake Flavour', NULL, NULL, '8944000196771', 'standard', 'C128', NULL, 12, 7, 7, 7, 4.12, 5, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 06:45:18', '2020-12-16 07:02:54'),
(501, 'Alpenliebe Pop Cream Strawberry Flavour', NULL, NULL, '8944000196917', 'standard', 'C128', NULL, 12, 7, 7, 7, 4.12, 5, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 06:54:54', '2020-12-16 07:02:54'),
(502, 'Alpenliebe Pop Caramel Flavour', NULL, NULL, '8944000196900', 'standard', 'C128', NULL, 12, 7, 7, 7, 4.12, 5, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 06:57:14', '2020-12-16 07:02:54'),
(503, 'Savlon Fresh Soap 35gm', NULL, NULL, '8941196243258', 'standard', 'C128', NULL, 8, 7, 7, 7, 8.52, 10, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 07:42:03', '2020-12-16 08:25:43'),
(504, 'Savlon Fresh Soap 100gm', NULL, NULL, '8941196243135', 'standard', 'C128', NULL, 12, 7, 7, 7, 43.89, 48, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 07:44:53', '2020-12-16 08:25:43'),
(505, 'Savlon Fresh Soap 125gm', NULL, NULL, '8941196243142', 'standard', 'C128', NULL, 8, 7, 7, 7, 50.45, 56, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 07:47:43', '2020-12-16 08:25:43'),
(506, 'Savlon Mild Soap 100gm', NULL, NULL, '8941196243104', 'standard', 'C128', NULL, 8, 7, 7, 7, 37.61, 48, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 07:51:49', '2020-12-16 08:25:43'),
(507, 'Savlon Mild Soap 125gm', NULL, NULL, '8941196243111', 'standard', 'C128', NULL, 8, 7, 7, 7, 43.24, 56, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 08:03:33', '2020-12-16 08:25:43'),
(508, 'Savlon Antiseptic Liquid 56ml', NULL, NULL, '1000000000080', 'standard', 'C128', NULL, 4, 7, 7, 7, 29.13, 32, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 08:08:48', '2020-12-16 08:25:43'),
(509, 'Savlon Antiseptic Liquid 112ml', NULL, NULL, '1000000000081', 'standard', 'C128', NULL, 4, 7, 7, 7, 40.04, 44, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 08:10:11', '2020-12-16 08:25:43'),
(510, 'Ruchi Jhalmuri 35gm', NULL, NULL, '8941100513712', 'standard', 'C128', NULL, 12, 7, 7, 7, 6.86, 8, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-16 09:43:22', '2020-12-16 09:45:22'),
(511, 'Pran ChocoLord', NULL, NULL, '841165135967', 'standard', 'C128', NULL, 12, 7, 7, 7, 25, 40, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-17 00:44:30', '2020-12-17 00:48:57'),
(512, 'Pran Amer Achar 400gm', NULL, NULL, '831730001636', 'standard', 'C128', NULL, 12, 7, 7, 7, 107, 135, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-17 00:47:13', '2020-12-17 00:48:57'),
(513, 'Fresh Fantasy Chocolate Filled Biscuit 75gm', NULL, NULL, '8941161134055', 'standard', 'C128', NULL, 12, 7, 7, 7, 40, 50, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-17 01:49:40', '2020-12-17 01:50:26'),
(514, 'Cute Lipgel 10gm', NULL, NULL, '745125066691', 'standard', 'C128', NULL, 12, 7, 7, 7, 17.142, 25, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-17 01:55:09', '2020-12-17 02:01:06'),
(515, 'Cute After Shave Lotion 50ml', NULL, NULL, '088021511071', 'standard', 'C128', NULL, 6, 7, 7, 7, 55, 65, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-17 01:59:11', '2020-12-17 02:01:06'),
(516, 'Akij Farm Fresh Butter 50gm', NULL, NULL, '8941189604622', 'standard', 'C128', NULL, 10, 7, 7, 7, 42.5, 45, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-17 02:11:12', '2020-12-17 02:15:23'),
(517, 'Danish Aryan Tok Doi', NULL, NULL, '8941152012751', 'standard', 'C128', NULL, 10, 7, 7, 7, 67, 80, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-17 02:13:39', '2020-12-17 02:14:26'),
(518, 'Pran Chicken Roast Masala', NULL, NULL, '846656003961', 'standard', 'C128', NULL, 10, 7, 7, 7, 48, 60, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-18 06:40:25', '2020-12-18 06:40:25'),
(519, 'Ispahani Lexus Biscuit 1 Carton', NULL, NULL, '8941193311752', 'standard', 'C128', NULL, 12, 7, 7, 7, 58, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-19 23:03:00', '2020-12-19 23:34:34'),
(520, 'Ispahani Little Bite Biscuit', NULL, NULL, '8941100000742', 'standard', 'C128', NULL, 12, 7, 7, 7, 4, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-19 23:14:50', '2020-12-19 23:34:34'),
(521, 'Mum 500ml', NULL, NULL, '8801962686156', 'standard', 'C128', NULL, 12, 7, 7, 7, 10.41, 15, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-19 23:27:38', '2020-12-19 23:34:34'),
(522, 'Complan Jar 500gm', NULL, NULL, '8901542001932', 'standard', 'C128', NULL, 12, 7, 7, 7, 513, 540, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-20 02:36:18', '2020-12-20 02:47:18'),
(523, 'Complan Jar 200gm', NULL, NULL, '8901542000027', 'standard', 'C128', NULL, 12, 7, 7, 7, 238, 250, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-20 02:41:17', '2020-12-20 02:47:18'),
(524, 'Complan Box 350gm', NULL, NULL, '8901542000461', 'standard', 'C128', NULL, 12, 7, 7, 7, 366, 385, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-20 02:44:10', '2020-12-20 02:47:18'),
(525, 'Complan Natural Plain Box 350gm', NULL, NULL, '8901542000478', 'standard', 'C128', NULL, 12, 7, 7, 7, 342, 360, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-20 02:45:40', '2020-12-20 02:47:18'),
(526, 'Golden Harvest Mini Chicken Nuggets 300gm', NULL, NULL, '8941100420751', 'standard', 'C128', NULL, 12, 7, 7, 7, 155, 180, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-20 06:40:43', '2020-12-20 06:46:29'),
(527, 'Golden Harvest Mini Chicken Samosa', NULL, NULL, '8941100420874', 'standard', 'C128', NULL, 12, 7, 7, 7, 136, 155, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-20 06:42:03', '2020-12-20 06:46:29'),
(528, 'Golden Harvest Deshi Paratha 650g', NULL, NULL, '8941133008452', 'standard', 'C128', NULL, 12, 7, 7, 7, 121, 140, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-20 06:45:10', '2020-12-20 06:46:29'),
(529, 'Fruit Cake 1 Pounds', NULL, NULL, '1000000000082', 'standard', 'C128', NULL, 12, 7, 7, 7, 180, 210, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-21 00:44:19', '2020-12-21 00:46:46'),
(530, 'Regard\'s Kewra Water 200ml', NULL, NULL, '1000000000083', 'standard', 'C128', NULL, 10, 7, 7, 7, 12, 25, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-22 07:42:26', '2020-12-22 08:00:23'),
(531, 'Regard\'s Rose Water 200ml', NULL, NULL, '1000000000084', 'standard', 'C128', NULL, 12, 7, 7, 7, 12, 25, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-22 07:48:07', '2020-12-22 08:00:23'),
(532, 'Hershey\'s Cocoa Powder 125gm', NULL, NULL, '10000000000085', 'standard', 'C128', NULL, 10, 7, 7, 7, 60, 90, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-22 07:49:52', '2020-12-22 08:00:23'),
(533, 'Angel Instant Dry Yeast 100gm', NULL, NULL, '6917790976269', 'standard', 'C128', NULL, 10, 7, 7, 7, 60, 100, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-22 07:58:25', '2020-12-22 08:00:23');
INSERT INTO `products` (`id`, `name`, `slug`, `tags`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `daily_sale_objective`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_embeded`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `is_online`, `in_stock`, `track_inventory`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `short_description`, `specification`, `meta_title`, `meta_description`, `related_products`, `variant_option`, `variant_value`, `is_active`, `is_sync_disable`, `woocommerce_product_id`, `woocommerce_media_id`, `created_at`, `updated_at`) VALUES
(534, 'Sajeeb Love Jello', NULL, NULL, '8941170005087', 'standard', 'C128', NULL, 12, 7, 7, 7, 1.12, 2, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-22 08:32:31', '2020-12-22 08:33:21'),
(535, 'Dream Baby Cotton Bud', NULL, NULL, '8790352010837', 'standard', 'C128', NULL, 6, 7, 7, 7, 8, 15, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-22 08:41:02', '2020-12-22 08:41:45'),
(536, 'Toi Moi Wafers', NULL, NULL, '9415008155061', 'standard', 'C128', NULL, 12, 7, 7, 7, 4, 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-22 09:08:40', '2020-12-22 09:08:40'),
(537, 'Haque Soft Bread 250gm', NULL, NULL, '1000000000085', 'standard', 'C128', NULL, 12, 7, 7, 7, 15, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-22 09:09:59', '2020-12-22 09:09:59'),
(538, 'Pantene Silky smooth Care Shampoo 180ml', NULL, NULL, '4902430899215', 'standard', 'C128', NULL, 8, 7, 7, 7, 190, 220, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-24 07:19:14', '2020-12-24 07:19:14'),
(539, 'Pantene Anti Dandruff Shampoo 180ml', NULL, NULL, '4902430899260', 'standard', 'C128', NULL, 8, 7, 7, 7, 190, 220, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-24 07:20:55', '2020-12-24 07:20:55'),
(540, 'Pantene Hairfall Control Shampoo 180ml', NULL, NULL, '4902430899192', 'standard', 'C128', NULL, 8, 7, 7, 7, 190, 220, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-24 07:22:23', '2020-12-24 07:22:23'),
(541, 'Head and Shoulders Anti Dandruff Shampoo 340ml', NULL, NULL, '4902430773867', 'standard', 'C128', NULL, 8, 7, 7, 7, 345, 399, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-24 07:24:09', '2020-12-24 07:24:09'),
(542, 'Freedom Sanitary Napkin', NULL, NULL, '8941196200022', 'standard', 'C128', NULL, 8, 7, 7, 7, 175, 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-24 07:54:45', '2020-12-24 07:54:45'),
(543, 'Whisper Ultra Clean', NULL, NULL, '4902430909464', 'standard', 'C128', NULL, 8, 7, 7, 7, 125, 141, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2020-12-24 07:59:44', '2020-12-24 07:59:44'),
(544, 'Nachoz', NULL, NULL, '890972001309', 'standard', 'C128', NULL, 12, 7, 7, 7, 12.15, 15, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 08:22:07', '2021-02-13 08:22:07'),
(545, 'All Time Sandwich Sponge Cake', NULL, NULL, '841165150700', 'standard', 'C128', NULL, 12, 7, 7, 7, 7.15, 10, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 08:26:52', '2021-02-13 08:26:52'),
(546, 'Nescafe Classic 50gm Jar', NULL, NULL, '8901058841138', 'standard', 'C128', NULL, 12, 7, 7, 7, 133.04, 165, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 08:29:08', '2021-02-13 08:29:08'),
(547, 'Bombay Laccha Shemai 200gm', NULL, NULL, '890975302014', 'standard', 'C128', NULL, 12, 7, 7, 7, 28.5, 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 08:32:58', '2021-02-13 08:32:58'),
(548, 'Teer Shorishar tel 100ml', NULL, NULL, '811486166018', 'standard', 'C128', NULL, 12, 7, 7, 7, 23, 32, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 08:34:36', '2021-02-13 08:34:36'),
(549, 'Dano Pushti 500gm', NULL, NULL, '5711953043772', 'standard', 'C128', NULL, 12, 7, 7, 7, 231.5, 240, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 08:42:54', '2021-02-13 08:42:54'),
(550, 'Fresh Coconut Cookies 80gm', NULL, NULL, '8941161134130', 'standard', 'C128', NULL, 12, 7, 7, 7, 11, 15, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 08:44:36', '2021-02-13 08:44:36'),
(551, 'Choconum Sandwich Biscuit 160gm', NULL, NULL, '8944000546552', 'standard', 'C128', NULL, 12, 7, 7, 7, 40, 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 08:45:50', '2021-02-13 08:45:50'),
(552, 'Dan Cake Chocolate pound 320gm', NULL, NULL, '8946000009105', 'standard', 'C128', NULL, 12, 7, 7, 7, 82, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 08:48:46', '2021-02-13 08:48:46'),
(553, 'Dan Cake Vanilla Pound Cake', NULL, NULL, '8946000009532', 'standard', 'C128', NULL, 12, 7, 7, 7, 85, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 08:51:54', '2021-02-13 08:51:54'),
(554, 'Dan Cake Swiss Roll 200gm', NULL, NULL, '8946000009686', 'standard', 'C128', NULL, 12, 7, 7, 7, 108, 130, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 09:00:55', '2021-02-13 09:00:55'),
(555, 'Glow & Handsome 50gm', NULL, NULL, '8941102311910', 'standard', 'C128', NULL, 12, 7, 7, 7, 120, 130, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 09:04:15', '2021-02-13 09:04:15'),
(556, 'Glow & Lovely 25gm', NULL, NULL, '8941102311903', 'standard', 'C128', NULL, 12, 7, 7, 7, 65, 75, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 09:05:32', '2021-02-13 09:05:32'),
(557, 'Bashundhara Hand Towel Large', NULL, NULL, '8941193064160', 'standard', 'C128', NULL, 12, 7, 7, 7, 72, 78, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 09:08:16', '2021-02-13 09:08:16'),
(558, 'Parachute baby toothpaste', NULL, NULL, '8944000554939', 'standard', 'C128', NULL, 12, 7, 7, 7, 78, 90, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 09:18:28', '2021-02-13 09:18:28'),
(559, 'Parachute baby toothpaste mix fruit', NULL, NULL, '8944000554946', 'standard', 'C128', NULL, 12, 7, 7, 7, 78, 90, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 09:19:45', '2021-02-13 09:19:45'),
(560, 'Nestle Nido Forti Grow 700gm', NULL, NULL, '8941100294680', 'standard', 'C128', NULL, 12, 7, 7, 7, 500, 530, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 09:31:05', '2021-02-13 09:31:05'),
(561, 'Butter Bite Biscuit 250gm', NULL, NULL, '811117318281', 'standard', 'C128', NULL, 12, 7, 7, 7, 40, 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 09:50:02', '2021-02-13 09:50:02'),
(562, 'Ispahani Premium toast 320gm', NULL, NULL, '8941193310830', 'standard', 'C128', NULL, 12, 7, 7, 7, 38, 21, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 10:37:33', '2021-02-13 10:37:33'),
(563, 'Olympic Saltes Biscuits 205gm', NULL, NULL, '811119458466', 'standard', 'C128', NULL, 12, 7, 7, 7, 32, 40, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 10:45:06', '2021-02-13 10:45:06'),
(564, 'Olympic Salcoti Biscuit 240gm', NULL, NULL, '745114130266', 'standard', 'C128', NULL, 12, 7, 7, 7, 42, 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 10:49:05', '2021-02-13 10:49:05'),
(565, 'Olympic Biscuti Cookies 240g', NULL, NULL, '745114130341', 'standard', 'C128', NULL, 12, 11, 11, 11, 40, 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 10:57:52', '2021-02-13 10:57:52'),
(566, 'Haque Milk Cookies', NULL, NULL, '8941194003342', 'standard', 'C128', NULL, 12, 7, 7, 7, 32, 40, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 11:00:28', '2021-02-13 11:00:28'),
(567, 'Dabur Honey 300g', NULL, NULL, '8901207035364', 'standard', 'C128', NULL, 12, 7, 7, 7, 185, 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 11:16:55', '2021-02-13 11:16:55'),
(568, 'Dabur Honey 50gm', NULL, NULL, '8901207045370', 'standard', 'C128', NULL, 12, 7, 7, 7, 45, 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 11:20:30', '2021-02-13 11:20:30'),
(569, 'Dabur Honey 100gm', NULL, NULL, '8901207005374', 'standard', 'C128', NULL, 12, 7, 7, 7, 100, 110, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 11:21:25', '2021-02-13 11:21:25'),
(570, 'Radhuni Dhonia Gura 100 gm', NULL, NULL, '8941100510186', 'standard', 'C128', NULL, 12, 7, 7, 7, 28, 33, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 11:26:19', '2021-02-13 11:26:19'),
(571, 'Radhuni Firni mix 150gm', NULL, NULL, '8941100511756', 'standard', 'C128', NULL, 12, 7, 7, 7, 35, 40, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 11:27:29', '2021-02-13 11:27:29'),
(572, 'Radhuni Macher Moshla', NULL, NULL, '8941100511176', 'standard', 'C128', NULL, 12, 7, 7, 7, 44, 55, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 11:28:18', '2021-02-13 11:28:18'),
(573, 'Radhuni Halim Mix 200 gm', NULL, NULL, '8941100511725', 'standard', 'C128', NULL, 12, 7, 7, 7, 40, 44, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 11:29:41', '2021-02-13 11:29:41'),
(574, 'Radhuni Murgi Moshla', NULL, NULL, '8941100511282', 'standard', 'C128', NULL, 12, 7, 7, 7, 55, 65, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-02-13 11:31:12', '2021-02-13 11:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_adjustments`
--

CREATE TABLE `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `unit_cost` double DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_batches`
--

CREATE TABLE `product_batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(13, 7, 85, NULL, NULL, NULL, 6, 6, 7, 52.5, 0, 0, 0, 315, '2020-11-28 12:02:52', '2020-11-28 12:02:52'),
(14, 8, 238, NULL, NULL, NULL, 24, 24, 7, 8.33, 0, 0, 0, 199.92, '2020-11-29 08:35:32', '2020-11-29 08:35:32'),
(15, 8, 239, NULL, NULL, NULL, 3, 3, 7, 132, 0, 0, 0, 396, '2020-11-29 08:35:32', '2020-11-29 08:35:32'),
(16, 8, 242, NULL, NULL, NULL, 3, 3, 7, 255, 0, 0, 0, 765, '2020-11-29 08:35:32', '2020-11-29 08:35:32'),
(17, 8, 240, NULL, NULL, NULL, 3, 3, 7, 295, 0, 0, 0, 885, '2020-11-29 08:35:32', '2020-11-29 08:35:32'),
(18, 8, 241, NULL, NULL, NULL, 2, 2, 7, 590, 0, 0, 0, 1180, '2020-11-29 08:35:32', '2020-11-29 08:35:32'),
(19, 9, 174, NULL, NULL, NULL, 2, 2, 7, 115, 0, 0, 0, 230, '2020-11-29 08:57:47', '2020-11-29 08:57:47'),
(20, 9, 235, NULL, NULL, NULL, 50, 50, 7, 2, 0, 0, 0, 100, '2020-11-29 08:57:48', '2020-11-29 08:57:48'),
(21, 9, 191, NULL, NULL, NULL, 45, 45, 7, 3.77, 0, 0, 0, 169.65, '2020-11-29 08:57:48', '2020-11-29 08:57:48'),
(22, 10, 194, NULL, NULL, NULL, 24, 24, 7, 11.5, 0, 0, 0, 276, '2020-11-29 09:00:44', '2020-11-29 09:00:44'),
(23, 10, 206, NULL, NULL, NULL, 24, 24, 7, 16.66, 0, 0, 0, 399.84, '2020-11-29 09:00:44', '2020-11-29 09:00:44'),
(24, 10, 205, NULL, NULL, NULL, 3, 3, 7, 95, 0, 0, 0, 285, '2020-11-29 09:00:44', '2020-11-29 09:00:44'),
(25, 11, 243, NULL, NULL, NULL, 13, 13, 7, 8, 0, 0, 0, 104, '2020-11-29 09:28:03', '2020-11-29 09:28:03'),
(26, 11, 244, NULL, NULL, NULL, 10, 10, 7, 10, 0, 0, 0, 100, '2020-11-29 09:28:03', '2020-11-29 09:28:03'),
(27, 11, 245, NULL, NULL, NULL, 6, 6, 7, 10, 0, 0, 0, 60, '2020-11-29 09:28:03', '2020-11-29 09:28:03'),
(28, 11, 246, NULL, NULL, NULL, 6, 6, 7, 10, 0, 0, 0, 60, '2020-11-29 09:28:03', '2020-11-29 09:28:03'),
(29, 12, 122, NULL, NULL, NULL, 6, 6, 7, 20, 0, 0, 0, 120, '2020-11-29 10:02:44', '2020-11-29 10:02:44'),
(30, 12, 124, NULL, NULL, NULL, 24, 24, 7, 8.5, 0, 0, 0, 204, '2020-11-29 10:02:44', '2020-11-29 10:02:44'),
(31, 12, 123, NULL, NULL, NULL, 6, 6, 7, 45, 0, 0, 0, 270, '2020-11-29 10:02:44', '2020-11-29 10:02:44'),
(32, 12, 237, NULL, NULL, NULL, 24, 24, 7, 4, 0, 0, 0, 96, '2020-11-29 10:02:44', '2020-11-29 10:02:44'),
(33, 13, 119, NULL, NULL, NULL, 12, 12, 7, 40, 0, 0, 0, 480, '2020-11-29 10:08:24', '2020-11-29 10:08:24'),
(34, 13, 167, NULL, NULL, NULL, 6, 6, 7, 105, 0, 0, 0, 630, '2020-11-29 10:08:24', '2020-11-29 10:08:24'),
(35, 14, 119, NULL, NULL, NULL, 12, 12, 7, 40, 0, 0, 0, 480, '2020-11-29 10:08:25', '2020-11-29 10:08:25'),
(36, 14, 167, NULL, NULL, NULL, 6, 6, 7, 105, 0, 0, 0, 630, '2020-11-29 10:08:25', '2020-11-29 10:08:25'),
(37, 15, 247, NULL, NULL, NULL, 4, 4, 7, 55, 0, 0, 0, 220, '2020-11-29 10:30:14', '2020-11-29 10:30:14'),
(38, 15, 248, NULL, NULL, NULL, 3, 3, 7, 100, 0, 0, 0, 300, '2020-11-29 10:30:14', '2020-11-29 10:30:14'),
(39, 15, 215, NULL, NULL, NULL, 12, 12, 7, 9, 0, 0, 0, 108, '2020-11-29 10:30:14', '2020-11-29 10:30:14'),
(40, 15, 193, NULL, NULL, NULL, 6, 6, 7, 50, 0, 0, 0, 300, '2020-11-29 10:30:14', '2020-11-29 10:30:14'),
(41, 15, 148, NULL, NULL, NULL, 12, 12, 7, 38, 0, 0, 0, 456, '2020-11-29 10:30:14', '2020-11-29 10:30:14'),
(42, 16, 88, NULL, NULL, NULL, 23, 23, 7, 6.3, 0, 0, 0, 144.9, '2020-11-29 10:32:44', '2020-11-29 10:32:44'),
(43, 16, 89, NULL, NULL, NULL, 25, 25, 7, 6, 0, 0, 0, 150, '2020-11-29 10:32:44', '2020-11-29 10:32:44'),
(44, 17, 100, NULL, NULL, NULL, 12, 12, 7, 32, 0, 0, 0, 384, '2020-11-29 10:38:50', '2020-11-29 10:38:50'),
(45, 17, 249, NULL, NULL, NULL, 12, 12, 7, 62.5, 0, 0, 0, 750, '2020-11-29 10:38:50', '2020-11-29 10:38:50'),
(46, 17, 101, NULL, NULL, NULL, 6, 6, 7, 84.5, 0, 0, 0, 507, '2020-11-29 10:38:50', '2020-11-29 10:38:50'),
(47, 17, 91, NULL, NULL, NULL, 6, 6, 7, 68, 0, 0, 0, 408, '2020-11-29 10:38:50', '2020-11-29 10:38:50'),
(48, 18, 180, NULL, NULL, NULL, 4, 4, 7, 602, 0, 0, 0, 2408, '2020-11-29 10:41:52', '2020-11-29 10:41:52'),
(49, 18, 176, NULL, NULL, NULL, 6, 6, 7, 304, 0, 0, 0, 1824, '2020-11-29 10:41:52', '2020-11-29 10:41:52'),
(50, 18, 175, NULL, NULL, NULL, 6, 6, 7, 132, 0, 0, 0, 792, '2020-11-29 10:41:53', '2020-11-29 10:41:53'),
(51, 18, 178, NULL, NULL, NULL, 3, 3, 7, 249, 0, 0, 0, 747, '2020-11-29 10:41:53', '2020-11-29 10:41:53'),
(52, 18, 179, NULL, NULL, NULL, 12, 12, 7, 66, 0, 0, 0, 792, '2020-11-29 10:41:53', '2020-11-29 10:41:53'),
(53, 18, 177, NULL, NULL, NULL, 12, 12, 7, 35, 0, 0, 0, 420, '2020-11-29 10:41:53', '2020-11-29 10:41:53'),
(54, 19, 199, NULL, NULL, NULL, 12, 12, 7, 64.2, 0, 0, 0, 770.4, '2020-11-29 11:46:35', '2020-11-29 11:46:35'),
(55, 19, 197, NULL, NULL, NULL, 3, 3, 7, 126, 0, 0, 0, 378, '2020-11-29 11:46:35', '2020-11-29 11:46:35'),
(56, 19, 198, NULL, NULL, NULL, 3, 3, 7, 126, 0, 0, 0, 378, '2020-11-29 11:46:36', '2020-11-29 11:46:36'),
(57, 19, 200, NULL, NULL, NULL, 24, 24, 7, 45.33, 0, 0, 0, 1087.92, '2020-11-29 11:46:36', '2020-11-29 11:46:36'),
(58, 19, 201, NULL, NULL, NULL, 12, 12, 7, 142.92, 0, 0, 0, 1715.04, '2020-11-29 11:46:36', '2020-11-29 11:46:36'),
(59, 19, 196, NULL, NULL, NULL, 12, 12, 7, 94.59, 0, 0, 0, 1135.08, '2020-11-29 11:46:36', '2020-11-29 11:46:36'),
(60, 19, 195, NULL, NULL, NULL, 12, 12, 7, 116.15, 0, 0, 0, 1393.8, '2020-11-29 11:46:36', '2020-11-29 11:46:36'),
(61, 20, 103, NULL, NULL, NULL, 8, 8, 7, 107, 0, 0, 0, 856, '2020-11-29 11:48:54', '2020-11-29 11:48:54'),
(62, 20, 104, NULL, NULL, NULL, 8, 8, 7, 100, 0, 0, 0, 800, '2020-11-29 11:48:54', '2020-11-29 11:48:54'),
(63, 20, 105, NULL, NULL, NULL, 9, 9, 7, 214, 0, 0, 0, 1926, '2020-11-29 11:48:55', '2020-11-29 11:48:55'),
(64, 20, 106, NULL, NULL, NULL, 8, 8, 7, 525, 0, 0, 0, 4200, '2020-11-29 11:48:55', '2020-11-29 11:48:55'),
(65, 21, 218, NULL, NULL, NULL, 340, 340, 7, 0.8, 0, 0, 0, 272, '2020-11-29 11:57:04', '2020-11-29 11:57:04'),
(66, 21, 221, NULL, NULL, NULL, 166, 166, 7, 1.33, 0, 0, 0, 220.78, '2020-11-29 11:57:04', '2020-11-29 11:57:04'),
(68, 23, 228, NULL, NULL, NULL, 24, 24, 7, 12, 0, 0, 0, 288, '2020-12-03 23:14:23', '2020-12-03 23:14:23'),
(69, 24, 227, NULL, NULL, NULL, 48, 48, 7, 6.84, 0, 0, 0, 328.32, '2020-12-04 03:07:54', '2020-12-04 03:07:54'),
(70, 24, 226, NULL, NULL, NULL, 24, 24, 7, 10.13, 0, 0, 0, 243, '2020-12-04 03:07:54', '2020-12-04 03:07:54'),
(71, 24, 266, NULL, NULL, NULL, 24, 24, 7, 6.75, 0, 0, 0, 162, '2020-12-04 03:07:54', '2020-12-04 03:07:54'),
(72, 24, 229, NULL, NULL, NULL, 24, 24, 7, 6.75, 0, 0, 0, 162, '2020-12-04 03:07:54', '2020-12-04 03:07:54'),
(73, 24, 231, NULL, NULL, NULL, 24, 24, 7, 6.75, 0, 0, 0, 162, '2020-12-04 03:07:54', '2020-12-04 03:07:54'),
(74, 24, 232, NULL, NULL, NULL, 24, 24, 7, 8.13, 0, 0, 0, 195, '2020-12-04 03:07:54', '2020-12-04 03:07:54'),
(75, 25, 268, NULL, NULL, NULL, 4, 4, 7, 52.5, 0, 0, 0, 210, '2020-12-04 03:40:35', '2020-12-04 03:40:35'),
(76, 25, 267, NULL, NULL, NULL, 4, 4, 7, 52.5, 0, 0, 0, 210, '2020-12-04 03:40:35', '2020-12-04 03:40:35'),
(77, 25, 85, NULL, NULL, NULL, 4, 4, 7, 52.5, 0, 0, 0, 210, '2020-12-04 03:40:35', '2020-12-04 03:40:35'),
(78, 25, 145, NULL, NULL, NULL, 3, 3, 7, 120, 0, 0, 0, 360, '2020-12-04 03:40:35', '2020-12-04 03:40:35'),
(79, 25, 146, NULL, NULL, NULL, 2, 2, 7, 120, 0, 0, 0, 240, '2020-12-04 03:40:35', '2020-12-04 03:40:35'),
(80, 25, 144, NULL, NULL, NULL, 1, 1, 7, 120, 0, 0, 0, 120, '2020-12-04 03:40:35', '2020-12-04 03:40:35'),
(81, 25, 153, NULL, NULL, NULL, 4, 4, 7, 45, 0, 0, 0, 180, '2020-12-04 03:40:36', '2020-12-04 03:40:36'),
(82, 25, 154, NULL, NULL, NULL, 4, 4, 7, 84.5, 0, 0, 0, 338, '2020-12-04 03:40:36', '2020-12-04 03:40:36'),
(83, 25, 152, NULL, NULL, NULL, 12, 12, 7, 15.5, 0, 0, 0, 186, '2020-12-04 03:40:36', '2020-12-04 03:40:36'),
(84, 25, 86, NULL, NULL, NULL, 4, 4, 7, 195, 0, 0, 0, 780, '2020-12-04 03:40:36', '2020-12-04 03:40:36'),
(85, 26, 119, NULL, NULL, NULL, 13, 13, 7, 37, 0, 0, 0, 481, '2020-12-04 03:44:15', '2020-12-04 03:44:15'),
(90, 28, 211, NULL, NULL, NULL, 3, 3, 7, 140, 0, 0, 0, 420, '2020-12-04 03:51:19', '2020-12-04 03:51:19'),
(91, 28, 212, NULL, NULL, NULL, 3, 3, 7, 130, 0, 0, 0, 390, '2020-12-04 03:51:19', '2020-12-04 03:51:19'),
(92, 28, 210, NULL, NULL, NULL, 3, 3, 7, 134, 0, 0, 0, 402, '2020-12-04 03:51:19', '2020-12-04 03:51:19'),
(93, 29, 208, NULL, NULL, NULL, 6, 6, 7, 102, 0, 0, 0, 612, '2020-12-04 03:58:58', '2020-12-04 03:58:58'),
(94, 29, 209, NULL, NULL, NULL, 9, 9, 7, 202, 0, 0, 0, 1818, '2020-12-04 03:58:58', '2020-12-04 03:58:58'),
(95, 29, 169, NULL, NULL, NULL, 12, 12, 7, 56, 0, 0, 0, 672, '2020-12-04 03:58:58', '2020-12-04 03:58:58'),
(96, 30, 230, NULL, NULL, NULL, 24, 24, 7, 4.17, 0, 0, 0, 100.08, '2020-12-04 04:08:26', '2020-12-04 04:08:26'),
(97, 30, 120, NULL, NULL, NULL, 6, 6, 7, 40, 0, 0, 0, 240, '2020-12-04 04:08:26', '2020-12-04 04:08:26'),
(98, 30, 118, NULL, NULL, NULL, 7, 7, 7, 42.85, 0, 0, 0, 299.95, '2020-12-04 04:08:26', '2020-12-04 04:08:26'),
(109, 31, 99, NULL, NULL, NULL, 12, 12, 7, 80, 0, 0, 0, 960, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(110, 31, 98, NULL, NULL, NULL, 12, 12, 7, 43, 0, 0, 0, 516, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(111, 31, 97, NULL, NULL, NULL, 12, 12, 7, 24, 0, 0, 0, 288, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(112, 31, 96, NULL, NULL, NULL, 12, 12, 7, 88, 0, 0, 0, 1056, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(113, 31, 95, NULL, NULL, NULL, 12, 12, 7, 43.33, 0, 0, 0, 520, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(114, 31, 94, NULL, NULL, NULL, 6, 6, 7, 78, 0, 0, 0, 468, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(115, 31, 192, NULL, NULL, NULL, 25, 25, 7, 28, 0, 0, 0, 700, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(116, 31, 93, NULL, NULL, NULL, 6, 6, 7, 62, 0, 0, 0, 372, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(117, 31, 249, NULL, NULL, NULL, 6, 6, 7, 63.5, 0, 0, 0, 381, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(118, 31, 125, NULL, NULL, NULL, 24, 24, 7, 54, 0, 0, 0, 1296, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(119, 31, 195, NULL, NULL, NULL, 6, 6, 7, 120, 0, 0, 0, 720, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(120, 31, 137, NULL, NULL, NULL, 6, 6, 7, 98, 0, 0, 0, 588, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(121, 31, 138, NULL, NULL, NULL, 6, 6, 7, 88.33, 0, 0, 0, 529.98, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(122, 31, 107, NULL, NULL, NULL, 4, 4, 7, 520, 0, 0, 0, 2080, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(123, 31, 106, NULL, NULL, NULL, 4, 4, 7, 525, 0, 0, 0, 2100, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(124, 31, 109, NULL, NULL, NULL, 4, 4, 7, 215, 0, 0, 0, 860, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(125, 31, 108, NULL, NULL, NULL, 4, 4, 7, 110, 0, 0, 0, 440, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(126, 31, 105, NULL, NULL, NULL, 4, 4, 7, 220, 0, 0, 0, 880, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(127, 31, 103, NULL, NULL, NULL, 4, 4, 7, 112, 0, 0, 0, 448, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(128, 31, 156, NULL, NULL, NULL, 112, 112, 7, 30, 0, 0, 0, 3360, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(129, 31, 155, NULL, NULL, NULL, 12, 12, 7, 12, 0, 0, 0, 144, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(130, 31, 162, NULL, NULL, NULL, 6, 6, 7, 32, 0, 0, 0, 192, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(131, 31, 163, NULL, NULL, NULL, 6, 6, 7, 32, 0, 0, 0, 192, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(132, 31, 161, NULL, NULL, NULL, 6, 6, 7, 30, 0, 0, 0, 180, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(133, 31, 159, NULL, NULL, NULL, 6, 6, 7, 37, 0, 0, 0, 222, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(134, 31, 157, NULL, NULL, NULL, 3, 3, 7, 32, 0, 0, 0, 96, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(135, 31, 158, NULL, NULL, NULL, 3, 3, 7, 32, 0, 0, 0, 96, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(136, 31, 111, NULL, NULL, NULL, 12, 12, 7, 79, 0, 0, 0, 948, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(137, 31, 110, NULL, NULL, NULL, 12, 12, 7, 43, 0, 0, 0, 516, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(138, 31, 151, NULL, NULL, NULL, 6, 6, 7, 80, 0, 0, 0, 480, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(139, 31, 91, NULL, NULL, NULL, 6, 6, 7, 68, 0, 0, 0, 408, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(140, 31, 90, NULL, NULL, NULL, 6, 6, 7, 68, 0, 0, 0, 408, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(141, 31, 171, NULL, NULL, NULL, 6, 6, 7, 92, 0, 0, 0, 552, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(142, 31, 170, NULL, NULL, NULL, 4, 4, 7, 185, 0, 0, 0, 740, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(143, 31, 172, NULL, NULL, NULL, 12, 12, 7, 42.5, 0, 0, 0, 510, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(144, 31, 126, NULL, NULL, NULL, 3, 3, 7, 50, 0, 0, 0, 150, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(145, 31, 127, NULL, NULL, NULL, 3, 3, 7, 50, 0, 0, 0, 150, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(146, 31, 133, NULL, NULL, NULL, 6, 6, 7, 120, 0, 0, 0, 720, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(147, 31, 132, NULL, NULL, NULL, 6, 6, 7, 65, 0, 0, 0, 390, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(148, 31, 92, NULL, NULL, NULL, 24, 24, 7, 13.75, 0, 0, 0, 330, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(149, 31, 140, NULL, NULL, NULL, 12, 12, 7, 55, 0, 0, 0, 660, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(150, 31, 202, NULL, NULL, NULL, 12, 12, 7, 40, 0, 0, 0, 480, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(151, 31, 143, NULL, NULL, NULL, 6, 6, 7, 185, 0, 0, 0, 1110, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(152, 31, 142, NULL, NULL, NULL, 6, 6, 7, 125, 0, 0, 0, 750, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(153, 31, 141, NULL, NULL, NULL, 6, 6, 7, 63.33, 0, 0, 0, 379.98, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(154, 31, 164, NULL, NULL, NULL, 2, 2, 7, 120, 0, 0, 0, 240, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(155, 31, 165, NULL, NULL, NULL, 2, 2, 7, 120, 0, 0, 0, 240, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(156, 31, 166, NULL, NULL, NULL, 2, 2, 7, 120, 0, 0, 0, 240, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(157, 31, 128, NULL, NULL, NULL, 4, 4, 7, 70, 0, 0, 0, 280, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(158, 31, 168, NULL, NULL, NULL, 6, 6, 7, 110, 0, 0, 0, 660, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(159, 31, 147, NULL, NULL, NULL, 6, 6, 7, 16.67, 0, 0, 0, 100.02, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(160, 31, 169, NULL, NULL, NULL, 2, 2, 7, 60, 0, 0, 0, 120, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(161, 31, 183, NULL, NULL, NULL, 2, 2, 7, 118, 0, 0, 0, 236, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(162, 31, 181, NULL, NULL, NULL, 2, 2, 7, 125, 0, 0, 0, 250, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(163, 31, 182, NULL, NULL, NULL, 2, 2, 7, 135, 0, 0, 0, 270, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(164, 31, 188, NULL, NULL, NULL, 6, 6, 7, 106.67, 0, 0, 0, 640, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(165, 31, 184, NULL, NULL, NULL, 6, 6, 7, 78, 0, 0, 0, 468, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(166, 31, 189, NULL, NULL, NULL, 6, 6, 7, 36.66, 0, 0, 0, 219.96, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(167, 31, 185, NULL, NULL, NULL, 3, 3, 7, 106.66, 0, 0, 0, 319.98, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(168, 31, 186, NULL, NULL, NULL, 2, 2, 7, 68, 0, 0, 0, 136, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(169, 31, 187, NULL, NULL, NULL, 2, 2, 7, 37, 0, 0, 0, 74, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(170, 31, 121, NULL, NULL, NULL, 24, 24, 7, 12.5, 0, 0, 0, 300, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(171, 31, 117, NULL, NULL, NULL, 6, 6, 7, 43.33, 0, 0, 0, 259.98, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(172, 31, 139, NULL, NULL, NULL, 12, 12, 7, 52.92, 0, 0, 0, 635.04, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(173, 31, 134, NULL, NULL, NULL, 2, 2, 7, 290, 0, 0, 0, 580, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(174, 31, 135, NULL, NULL, NULL, 2, 2, 7, 290, 0, 0, 0, 580, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(175, 31, 136, NULL, NULL, NULL, 2, 2, 7, 290, 0, 0, 0, 580, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(176, 31, 131, NULL, NULL, NULL, 6, 6, 7, 100, 0, 0, 0, 600, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(177, 31, 234, NULL, NULL, NULL, 48, 48, 7, 12.5, 0, 0, 0, 600, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(178, 31, 130, NULL, NULL, NULL, 6, 6, 7, 88, 0, 0, 0, 528, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(179, 31, 113, NULL, NULL, NULL, 10, 10, 7, 25.5, 0, 0, 0, 255, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(180, 31, 114, NULL, NULL, NULL, 3, 3, 7, 59, 0, 0, 0, 177, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(181, 31, 115, NULL, NULL, NULL, 3, 3, 7, 59, 0, 0, 0, 177, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(182, 31, 102, NULL, NULL, NULL, 24, 24, 7, 7.1, 0, 0, 0, 170.4, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(183, 31, 227, NULL, NULL, NULL, 24, 24, 7, 7.08, 0, 0, 0, 169.99, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(184, 31, 226, NULL, NULL, NULL, 24, 24, 7, 10.41, 0, 0, 0, 249.84, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(185, 31, 87, NULL, NULL, NULL, 24, 24, 7, 10.42, 0, 0, 0, 250.08, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(186, 31, 222, NULL, NULL, NULL, 194, 194, 7, 1.5, 0, 0, 0, 291, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(187, 32, 287, NULL, NULL, NULL, 24, 24, 7, 110, 0, 0, 0, 2640, '2020-12-04 10:59:08', '2020-12-04 10:59:08'),
(188, 33, 262, NULL, NULL, NULL, 1, 1, 7, 84, 0, 0, 0, 84, '2020-12-04 11:02:22', '2020-12-04 11:02:22'),
(189, 33, 263, NULL, NULL, NULL, 1, 1, 7, 84, 0, 0, 0, 84, '2020-12-04 11:02:22', '2020-12-04 11:02:22'),
(190, 33, 264, NULL, NULL, NULL, 1, 1, 7, 84, 0, 0, 0, 84, '2020-12-04 11:02:22', '2020-12-04 11:02:22'),
(191, 33, 265, NULL, NULL, NULL, 1, 1, 7, 84, 0, 0, 0, 84, '2020-12-04 11:02:22', '2020-12-04 11:02:22'),
(192, 34, 355, NULL, NULL, NULL, 2, 2, 7, 315, 0, 0, 0, 630, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(193, 34, 356, NULL, NULL, NULL, 2, 2, 7, 225, 0, 0, 0, 450, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(194, 34, 251, NULL, NULL, NULL, 28, 28, 7, 34.3, 0, 0, 0, 960.4, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(195, 34, 254, NULL, NULL, NULL, 56, 56, 7, 15.45, 0, 0, 0, 865.2, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(196, 34, 250, NULL, NULL, NULL, 60, 60, 7, 7.8, 0, 0, 0, 468, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(197, 34, 253, NULL, NULL, NULL, 26, 26, 7, 13, 0, 0, 0, 338, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(198, 34, 255, NULL, NULL, NULL, 1, 1, 7, 165, 0, 0, 0, 165, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(199, 34, 256, NULL, NULL, NULL, 1, 1, 7, 165, 0, 0, 0, 165, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(200, 34, 257, NULL, NULL, NULL, 1, 1, 7, 165, 0, 0, 0, 165, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(201, 34, 258, NULL, NULL, NULL, 1, 1, 7, 165, 0, 0, 0, 165, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(202, 34, 259, NULL, NULL, NULL, 2, 2, 7, 70, 0, 0, 0, 140, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(203, 34, 260, NULL, NULL, NULL, 2, 2, 7, 70, 0, 0, 0, 140, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(204, 34, 252, NULL, NULL, NULL, 12, 12, 7, 12.09, 0, 0, 0, 145.08, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(205, 35, 187, NULL, NULL, NULL, 12, 12, 7, 35, 0, 0, 0, 420, '2020-12-04 11:37:52', '2020-12-04 11:37:52'),
(206, 35, 288, NULL, NULL, NULL, 3, 3, 7, 119.5, 0, 0, 0, 358.5, '2020-12-04 11:37:52', '2020-12-04 11:37:52'),
(207, 35, 186, NULL, NULL, NULL, 12, 12, 7, 65.58, 0, 0, 0, 786.96, '2020-12-04 11:37:52', '2020-12-04 11:37:52'),
(208, 35, 289, NULL, NULL, NULL, 3, 3, 7, 70.86, 0, 0, 0, 212.58, '2020-12-04 11:37:52', '2020-12-04 11:37:52'),
(209, 35, 290, NULL, NULL, NULL, 3, 3, 7, 100, 0, 0, 0, 300, '2020-12-04 11:37:52', '2020-12-04 11:37:52'),
(213, 36, 291, NULL, NULL, NULL, 1, 1, 7, 36.04, 0, 0, 0, 36.04, '2020-12-04 11:45:11', '2020-12-04 11:45:11'),
(214, 36, 159, NULL, NULL, NULL, 3, 3, 7, 37, 0, 0, 0, 111, '2020-12-04 11:45:11', '2020-12-04 11:45:11'),
(215, 36, 160, NULL, NULL, NULL, 2, 2, 7, 37, 0, 0, 0, 74, '2020-12-04 11:45:11', '2020-12-04 11:45:11'),
(216, 36, 357, NULL, NULL, NULL, 12, 12, 7, 9.09, 0, 0, 0, 109.08, '2020-12-04 11:45:11', '2020-12-04 11:45:11'),
(217, 37, 261, NULL, NULL, NULL, 12, 12, 7, 22, 0, 0, 0, 264, '2020-12-04 11:49:52', '2020-12-04 11:49:52'),
(218, 38, 292, NULL, NULL, NULL, 4, 4, 7, 25, 0, 0, 0, 100, '2020-12-04 11:50:29', '2020-12-04 11:50:29'),
(219, 39, 293, NULL, NULL, NULL, 5, 5, 7, 245, 0, 0, 0, 1225, '2020-12-04 11:57:04', '2020-12-04 11:57:04'),
(220, 39, 294, NULL, NULL, NULL, 5, 5, 7, 475, 0, 0, 0, 2375, '2020-12-04 11:57:04', '2020-12-04 11:57:04'),
(221, 40, 243, NULL, NULL, NULL, 13, 13, 7, 8, 0, 0, 0, 104, '2020-12-04 12:01:33', '2020-12-04 12:01:33'),
(222, 40, 244, NULL, NULL, NULL, 12, 12, 7, 10, 0, 0, 0, 120, '2020-12-04 12:01:33', '2020-12-04 12:01:33'),
(223, 40, 246, NULL, NULL, NULL, 12, 12, 7, 10, 0, 0, 0, 120, '2020-12-04 12:01:33', '2020-12-04 12:01:33'),
(224, 41, 295, NULL, NULL, NULL, 10, 10, 7, 12.6, 0, 0, 0, 126, '2020-12-04 12:03:38', '2020-12-04 12:03:38'),
(230, 43, 112, NULL, NULL, NULL, 12, 12, 7, 8.32, 0, 0, 0, 99.84, '2020-12-04 23:24:35', '2020-12-04 23:24:35'),
(231, 43, 204, NULL, NULL, NULL, 6, 6, 7, 42, 0, 0, 0, 252, '2020-12-04 23:24:35', '2020-12-04 23:24:35'),
(232, 43, 116, NULL, NULL, NULL, 6, 6, 7, 29, 0, 0, 0, 174, '2020-12-04 23:24:35', '2020-12-04 23:24:35'),
(233, 43, 207, NULL, NULL, NULL, 6, 6, 7, 16.5, 0, 0, 0, 99, '2020-12-04 23:24:35', '2020-12-04 23:24:35'),
(234, 42, 241, NULL, NULL, NULL, 2, 2, 7, 590, 0, 0, 0, 1180, '2020-12-04 23:26:01', '2020-12-04 23:26:01'),
(235, 42, 240, NULL, NULL, NULL, 3, 3, 7, 295, 0, 0, 0, 885, '2020-12-04 23:26:01', '2020-12-04 23:26:01'),
(236, 42, 242, NULL, NULL, NULL, 3, 3, 7, 255, 0, 0, 0, 765, '2020-12-04 23:26:01', '2020-12-04 23:26:01'),
(237, 42, 239, NULL, NULL, NULL, 3, 3, 7, 132, 0, 0, 0, 396, '2020-12-04 23:26:01', '2020-12-04 23:26:01'),
(238, 42, 238, NULL, NULL, NULL, 24, 24, 7, 8.33, 0, 0, 0, 199.92, '2020-12-04 23:26:01', '2020-12-04 23:26:01'),
(239, 44, 269, NULL, NULL, NULL, 2, 2, 7, 220, 0, 0, 0, 440, '2020-12-04 23:31:25', '2020-12-04 23:31:25'),
(240, 44, 270, NULL, NULL, NULL, 4, 4, 7, 113, 0, 0, 0, 452, '2020-12-04 23:31:25', '2020-12-04 23:31:25'),
(241, 44, 271, NULL, NULL, NULL, 6, 6, 7, 58, 0, 0, 0, 348, '2020-12-04 23:31:25', '2020-12-04 23:31:25'),
(242, 44, 151, NULL, NULL, NULL, 2, 2, 7, 80, 0, 0, 0, 160, '2020-12-04 23:31:25', '2020-12-04 23:31:25'),
(243, 45, 278, NULL, NULL, NULL, 4, 4, 7, 63, 0, 0, 0, 252, '2020-12-04 23:36:19', '2020-12-04 23:36:19'),
(244, 45, 279, NULL, NULL, NULL, 4, 4, 7, 33, 0, 0, 0, 132, '2020-12-04 23:36:19', '2020-12-04 23:36:19'),
(245, 45, 280, NULL, NULL, NULL, 4, 4, 7, 72, 0, 0, 0, 288, '2020-12-04 23:36:19', '2020-12-04 23:36:19'),
(246, 46, 273, NULL, NULL, NULL, 2, 2, 7, 275, 0, 0, 0, 550, '2020-12-04 23:40:58', '2020-12-04 23:40:58'),
(247, 46, 272, NULL, NULL, NULL, 12, 12, 7, 43, 0, 0, 0, 516, '2020-12-04 23:40:58', '2020-12-04 23:40:58'),
(248, 46, 274, NULL, NULL, NULL, 24, 24, 7, 9, 0, 0, 0, 216, '2020-12-04 23:40:58', '2020-12-04 23:40:58'),
(249, 46, 275, NULL, NULL, NULL, 10, 10, 7, 66, 0, 0, 0, 660, '2020-12-04 23:40:58', '2020-12-04 23:40:58'),
(251, 47, 276, NULL, NULL, NULL, 12, 12, 7, 7.92, 0, 0, 0, 95.04, '2020-12-05 00:00:21', '2020-12-05 00:00:21'),
(252, 47, 277, NULL, NULL, NULL, 8, 8, 7, 13.38, 0, 0, 0, 107.04, '2020-12-05 00:00:21', '2020-12-05 00:00:21'),
(253, 48, 278, NULL, NULL, NULL, 4, 4, 7, 63, 0, 0, 0, 252, '2020-12-05 00:02:02', '2020-12-05 00:02:02'),
(254, 48, 282, NULL, NULL, NULL, 1, 1, 7, 171, 0, 0, 0, 171, '2020-12-05 00:02:02', '2020-12-05 00:02:02'),
(255, 48, 280, NULL, NULL, NULL, 3, 3, 7, 72, 0, 0, 0, 216, '2020-12-05 00:02:02', '2020-12-05 00:02:02'),
(257, 49, 92, NULL, NULL, NULL, 12, 12, 7, 14.06, 0, 0, 0, 168.72, '2020-12-05 00:11:43', '2020-12-05 00:11:43'),
(258, 49, 283, NULL, NULL, NULL, 8, 8, 7, 64, 0, 0, 0, 512, '2020-12-05 00:11:43', '2020-12-05 00:11:43'),
(259, 50, 342, NULL, NULL, NULL, 3, 3, 7, 260, 0, 0, 0, 780, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(260, 50, 343, NULL, NULL, NULL, 3, 3, 7, 260, 0, 0, 0, 780, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(261, 50, 341, NULL, NULL, NULL, 3, 3, 7, 85, 0, 0, 0, 255, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(262, 50, 284, NULL, NULL, NULL, 8, 8, 7, 53, 0, 0, 0, 424, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(263, 50, 157, NULL, NULL, NULL, 2, 2, 7, 32, 0, 0, 0, 64, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(264, 50, 158, NULL, NULL, NULL, 2, 2, 7, 32, 0, 0, 0, 64, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(265, 50, 344, NULL, NULL, NULL, 2, 2, 7, 30, 0, 0, 0, 60, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(266, 50, 345, NULL, NULL, NULL, 2, 2, 7, 30, 0, 0, 0, 60, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(267, 50, 346, NULL, NULL, NULL, 6, 6, 7, 45, 0, 0, 0, 270, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(268, 50, 349, NULL, NULL, NULL, 6, 6, 7, 33, 0, 0, 0, 198, '2020-12-05 00:46:58', '2020-12-05 00:46:58'),
(269, 50, 347, NULL, NULL, NULL, 2, 2, 7, 280, 0, 0, 0, 560, '2020-12-05 00:46:58', '2020-12-05 00:46:58'),
(270, 50, 350, NULL, NULL, NULL, 6, 6, 7, 110, 0, 0, 0, 660, '2020-12-05 00:46:58', '2020-12-05 00:46:58'),
(271, 50, 348, NULL, NULL, NULL, 6, 6, 7, 175, 0, 0, 0, 1050, '2020-12-05 00:46:58', '2020-12-05 00:46:58'),
(272, 51, 351, NULL, NULL, NULL, 6, 6, 7, 18.75, 0, 0, 0, 112.5, '2020-12-05 00:48:30', '2020-12-05 00:48:30'),
(273, 51, 352, NULL, NULL, NULL, 6, 6, 7, 18.46, 0, 0, 0, 110.76, '2020-12-05 00:48:30', '2020-12-05 00:48:30'),
(274, 51, 353, NULL, NULL, NULL, 7, 7, 7, 30, 0, 0, 0, 210, '2020-12-05 00:48:30', '2020-12-05 00:48:30'),
(275, 51, 354, NULL, NULL, NULL, 7, 7, 7, 55.72, 0, 0, 0, 390.04, '2020-12-05 00:48:30', '2020-12-05 00:48:30'),
(276, 52, 302, NULL, NULL, NULL, 6, 6, 7, 85, 0, 0, 0, 510, '2020-12-05 00:49:39', '2020-12-05 00:49:39'),
(277, 52, 303, NULL, NULL, NULL, 4, 4, 7, 37, 0, 0, 0, 148, '2020-12-05 00:49:39', '2020-12-05 00:49:39'),
(284, 53, 297, NULL, NULL, NULL, 12, 12, 7, 8.75, 0, 0, 0, 105, '2020-12-05 01:29:46', '2020-12-05 01:29:46'),
(285, 53, 298, NULL, NULL, NULL, 12, 12, 7, 12.75, 0, 0, 0, 153, '2020-12-05 01:29:46', '2020-12-05 01:29:46'),
(286, 53, 114, NULL, NULL, NULL, 12, 12, 7, 59, 0, 0, 0, 708, '2020-12-05 01:29:46', '2020-12-05 01:29:46'),
(287, 53, 300, NULL, NULL, NULL, 12, 12, 7, 8.75, 0, 0, 0, 105, '2020-12-05 01:29:46', '2020-12-05 01:29:46'),
(288, 53, 115, NULL, NULL, NULL, 12, 12, 7, 59, 0, 0, 0, 708, '2020-12-05 01:29:46', '2020-12-05 01:29:46'),
(289, 53, 301, NULL, NULL, NULL, 6, 6, 7, 50.5, 0, 0, 0, 303, '2020-12-05 01:29:46', '2020-12-05 01:29:46'),
(290, 53, 359, NULL, NULL, NULL, 3, 3, 7, 60, 0, 0, 0, 180, '2020-12-05 01:29:46', '2020-12-05 01:29:46'),
(291, 53, 296, NULL, NULL, NULL, 4, 4, 7, 109, 0, 0, 0, 436, '2020-12-05 01:29:46', '2020-12-05 01:29:46'),
(292, 54, 238, NULL, NULL, NULL, 48, 48, 7, 8.33, 0, 0, 0, 399.84, '2020-12-05 01:30:35', '2020-12-05 01:30:35'),
(293, 55, 306, NULL, NULL, NULL, 12, 12, 7, 50, 0, 0, 0, 600, '2020-12-05 01:43:14', '2020-12-05 01:43:14'),
(294, 55, 307, NULL, NULL, NULL, 12, 12, 7, 26, 0, 0, 0, 312, '2020-12-05 01:43:14', '2020-12-05 01:43:14'),
(295, 55, 308, NULL, NULL, NULL, 12, 12, 7, 20, 0, 0, 0, 240, '2020-12-05 01:43:14', '2020-12-05 01:43:14'),
(296, 55, 310, NULL, NULL, NULL, 1, 1, 7, 260, 0, 0, 0, 260, '2020-12-05 01:43:14', '2020-12-05 01:43:14'),
(297, 55, 309, NULL, NULL, NULL, 1, 1, 7, 275, 0, 0, 0, 275, '2020-12-05 01:43:14', '2020-12-05 01:43:14'),
(298, 55, 311, NULL, NULL, NULL, 2, 2, 7, 85, 0, 0, 0, 170, '2020-12-05 01:43:15', '2020-12-05 01:43:15'),
(299, 56, 312, NULL, NULL, NULL, 52, 52, 7, 16.15, 0, 0, 0, 840.01, '2020-12-05 01:48:59', '2020-12-05 01:48:59'),
(300, 56, 315, NULL, NULL, NULL, 24, 24, 7, 36.25, 0, 0, 0, 870, '2020-12-05 01:48:59', '2020-12-05 01:48:59'),
(301, 56, 313, NULL, NULL, NULL, 12, 12, 7, 63, 0, 0, 0, 756, '2020-12-05 01:48:59', '2020-12-05 01:48:59'),
(302, 56, 314, NULL, NULL, NULL, 12, 12, 7, 59.67, 0, 0, 0, 716.04, '2020-12-05 01:48:59', '2020-12-05 01:48:59'),
(303, 57, 316, NULL, NULL, NULL, 6, 6, 7, 115.83, 0, 0, 0, 694.98, '2020-12-05 01:51:23', '2020-12-05 01:51:23'),
(304, 57, 317, NULL, NULL, NULL, 6, 6, 7, 280, 0, 0, 0, 1680, '2020-12-05 01:51:23', '2020-12-05 01:51:23'),
(305, 57, 318, NULL, NULL, NULL, 24, 24, 7, 8.33, 0, 0, 0, 199.92, '2020-12-05 01:51:23', '2020-12-05 01:51:23'),
(313, 58, 319, NULL, NULL, NULL, 2, 2, 7, 180, 0, 0, 0, 360, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(314, 58, 320, NULL, NULL, NULL, 2, 2, 7, 180, 0, 0, 0, 360, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(315, 58, 321, NULL, NULL, NULL, 2, 2, 7, 180, 0, 0, 0, 360, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(316, 58, 322, NULL, NULL, NULL, 6, 6, 7, 52.7, 0, 0, 0, 316.2, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(317, 58, 125, NULL, NULL, NULL, 24, 24, 7, 54, 0, 0, 0, 1296, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(318, 58, 323, NULL, NULL, NULL, 24, 24, 7, 52.7, 0, 0, 0, 1264.8, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(319, 58, 161, NULL, NULL, NULL, 12, 12, 7, 30, 0, 0, 0, 360, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(320, 58, 360, NULL, NULL, NULL, 12, 12, 7, 29.42, 0, 0, 0, 353.04, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(321, 58, 328, NULL, NULL, NULL, 6, 6, 7, 130.38, 0, 0, 0, 782.28, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(322, 58, 325, NULL, NULL, NULL, 6, 6, 7, 163, 0, 0, 0, 978, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(323, 58, 326, NULL, NULL, NULL, 6, 6, 7, 163, 0, 0, 0, 978, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(324, 58, 324, NULL, NULL, NULL, 6, 6, 7, 75, 0, 0, 0, 450, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(325, 58, 327, NULL, NULL, NULL, 6, 6, 7, 205, 0, 0, 0, 1230, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(326, 59, 330, NULL, NULL, NULL, 3, 3, 7, 235, 0, 0, 0, 705, '2020-12-05 02:18:44', '2020-12-05 02:18:44'),
(327, 59, 329, NULL, NULL, NULL, 3, 3, 7, 135, 0, 0, 0, 405, '2020-12-05 02:18:44', '2020-12-05 02:18:44'),
(328, 59, 331, NULL, NULL, NULL, 6, 6, 7, 155, 0, 0, 0, 930, '2020-12-05 02:18:44', '2020-12-05 02:18:44'),
(329, 60, 332, NULL, NULL, NULL, 4, 4, 7, 79, 0, 0, 0, 316, '2020-12-05 02:19:55', '2020-12-05 02:19:55'),
(330, 60, 333, NULL, NULL, NULL, 4, 4, 7, 79, 0, 0, 0, 316, '2020-12-05 02:19:55', '2020-12-05 02:19:55'),
(331, 60, 334, NULL, NULL, NULL, 4, 4, 7, 79, 0, 0, 0, 316, '2020-12-05 02:19:55', '2020-12-05 02:19:55'),
(332, 60, 335, NULL, NULL, NULL, 4, 4, 7, 134, 0, 0, 0, 536, '2020-12-05 02:19:55', '2020-12-05 02:19:55'),
(333, 60, 336, NULL, NULL, NULL, 2, 2, 7, 134, 0, 0, 0, 268, '2020-12-05 02:19:55', '2020-12-05 02:19:55'),
(334, 61, 337, NULL, NULL, NULL, 3, 3, 7, 253, 0, 0, 0, 759, '2020-12-05 02:24:20', '2020-12-05 02:24:20'),
(335, 61, 338, NULL, NULL, NULL, 12, 12, 7, 13.5, 0, 0, 0, 162, '2020-12-05 02:24:20', '2020-12-05 02:24:20'),
(336, 61, 339, NULL, NULL, NULL, 16, 16, 7, 9, 0, 0, 0, 144, '2020-12-05 02:24:20', '2020-12-05 02:24:20'),
(337, 61, 340, NULL, NULL, NULL, 36, 36, 7, 36.5, 0, 0, 0, 1314, '2020-12-05 02:24:20', '2020-12-05 02:24:20'),
(338, 61, 141, NULL, NULL, NULL, 12, 12, 7, 59, 0, 0, 0, 708, '2020-12-05 02:24:20', '2020-12-05 02:24:20'),
(339, 61, 142, NULL, NULL, NULL, 12, 12, 7, 121, 0, 0, 0, 1452, '2020-12-05 02:24:20', '2020-12-05 02:24:20'),
(340, 61, 143, NULL, NULL, NULL, 8, 8, 7, 182, 0, 0, 0, 1456, '2020-12-05 02:24:20', '2020-12-05 02:24:20'),
(341, 62, 285, NULL, NULL, NULL, 12, 12, 7, 13, 0, 0, 0, 156, '2020-12-05 02:25:39', '2020-12-05 02:25:39'),
(342, 62, 286, NULL, NULL, NULL, 4, 4, 7, 107, 0, 0, 0, 428, '2020-12-05 02:25:39', '2020-12-05 02:25:39'),
(343, 63, 279, NULL, NULL, NULL, 4, 4, 7, 33, 0, 0, 0, 132, '2020-12-05 02:26:59', '2020-12-05 02:26:59'),
(344, 63, 281, NULL, NULL, NULL, 3, 3, 7, 91, 0, 0, 0, 273, '2020-12-05 02:26:59', '2020-12-05 02:26:59'),
(345, 64, 400, NULL, NULL, NULL, 12, 12, 7, 8.5, 0, 0, 0, 102, '2020-12-06 04:18:47', '2020-12-06 04:18:47'),
(346, 64, 401, NULL, NULL, NULL, 12, 12, 7, 4, 0, 0, 0, 48, '2020-12-06 04:18:47', '2020-12-06 04:18:47'),
(347, 64, 402, NULL, NULL, NULL, 12, 12, 7, 7.8, 0, 0, 0, 93.6, '2020-12-06 04:18:47', '2020-12-06 04:18:47'),
(348, 27, 219, NULL, NULL, NULL, 216, 216, 7, 4, 0, 0, 0, 864, '2020-12-06 04:26:50', '2020-12-06 04:26:50'),
(349, 27, 218, NULL, NULL, NULL, 240, 240, 7, 0.8, 0, 0, 0, 192, '2020-12-06 04:26:50', '2020-12-06 04:26:50'),
(350, 27, 223, NULL, NULL, NULL, 80, 80, 7, 1.5, 0, 0, 0, 120, '2020-12-06 04:26:50', '2020-12-06 04:26:50'),
(351, 27, 224, NULL, NULL, NULL, 83, 83, 7, 1.5, 0, 0, 0, 124.5, '2020-12-06 04:26:50', '2020-12-06 04:26:50'),
(352, 65, 405, NULL, NULL, NULL, 2, 2, 7, 722, 0, 0, 0, 1444, '2020-12-06 04:54:40', '2020-12-06 04:54:40'),
(353, 66, 403, NULL, NULL, NULL, 45, 45, 7, 9.17, 0, 0, 0, 412.65, '2020-12-06 04:56:47', '2020-12-06 04:56:47'),
(354, 66, 404, NULL, NULL, NULL, 3, 3, 7, 333.33, 0, 0, 0, 999.99, '2020-12-06 04:56:47', '2020-12-06 04:56:47'),
(355, 66, 406, NULL, NULL, NULL, 2, 1, 7, 371.43, 0, 0, 0, 742.86, '2020-12-06 04:56:47', '2020-12-06 04:56:47'),
(356, 66, 407, NULL, NULL, NULL, 2, 2, 7, 457.14, 0, 0, 0, 914.28, '2020-12-06 04:56:47', '2020-12-06 04:56:47'),
(464, 67, 90, NULL, NULL, NULL, 5, 5, 7, 68, 0, 0, 0, 340, '2020-12-06 06:19:03', '2020-12-06 06:19:03'),
(465, 67, 132, NULL, NULL, NULL, 6, 6, 7, 65, 0, 0, 0, 390, '2020-12-06 06:19:03', '2020-12-06 06:19:03'),
(466, 67, 133, NULL, NULL, NULL, 6, 6, 7, 120, 0, 0, 0, 720, '2020-12-06 06:19:03', '2020-12-06 06:19:03'),
(467, 67, 238, NULL, NULL, NULL, 48, 48, 7, 8.33, 0, 0, 0, 399.84, '2020-12-06 06:19:03', '2020-12-06 06:19:03'),
(468, 67, 244, NULL, NULL, NULL, 24, 24, 7, 10, 0, 0, 0, 240, '2020-12-06 06:19:03', '2020-12-06 06:19:03'),
(469, 67, 245, NULL, NULL, NULL, 12, 12, 7, 10, 0, 0, 0, 120, '2020-12-06 06:19:03', '2020-12-06 06:19:03'),
(470, 67, 246, NULL, NULL, NULL, 12, 12, 7, 10, 0, 0, 0, 120, '2020-12-06 06:19:03', '2020-12-06 06:19:03'),
(471, 67, 252, NULL, NULL, NULL, 12, 12, 7, 12.09, 0, 0, 0, 145.08, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(472, 67, 295, NULL, NULL, NULL, 12, 12, 7, 12.6, 0, 0, 0, 151.2, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(473, 67, 367, NULL, NULL, NULL, 600, 600, 7, 6.6, 0, 0, 0, 3960, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(474, 67, 368, NULL, NULL, NULL, 50000, 50000, 2, 0.06, 0, 0, 0, 2950, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(475, 67, 369, NULL, NULL, NULL, 50000, 50000, 2, 0.06, 0, 0, 0, 2950, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(476, 67, 370, NULL, NULL, NULL, 25000, 25000, 7, 0.06, 0, 0, 0, 1525, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(477, 67, 371, NULL, NULL, NULL, 50000, 50000, 2, 0.06, 0, 0, 0, 2800, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(478, 67, 372, NULL, NULL, NULL, 15000, 15000, 2, 0.14, 0, 0, 0, 2100, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(479, 67, 373, NULL, NULL, NULL, 20000, 20000, 2, 0.07, 0, 0, 0, 1400, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(480, 67, 374, NULL, NULL, NULL, 5000, 5000, 2, 0.1, 0, 0, 0, 500, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(481, 67, 375, NULL, NULL, NULL, 20000, 20000, 2, 0.08, 0, 0, 0, 1560, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(482, 67, 376, NULL, NULL, NULL, 10000, 10000, 2, 0.04, 0, 0, 0, 420, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(483, 67, 377, NULL, NULL, NULL, 10000, 10000, 2, 0.04, 0, 0, 0, 380, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(484, 67, 378, NULL, NULL, NULL, 5000, 5000, 2, 0.09, 0, 0, 0, 440, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(485, 67, 379, NULL, NULL, NULL, 5000, 5000, 2, 0.09, 0, 0, 0, 440, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(486, 67, 380, NULL, NULL, NULL, 5000, 5000, 2, 0.1, 0, 0, 0, 490, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(487, 67, 381, NULL, NULL, NULL, 3000, 3000, 2, 0.1, 0, 0, 0, 294, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(488, 67, 382, NULL, NULL, NULL, 12, 12, 7, 18, 0, 0, 0, 216, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(489, 67, 385, NULL, NULL, NULL, 12, 12, 7, 15, 0, 0, 0, 180, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(490, 67, 386, NULL, NULL, NULL, 12, 12, 7, 17, 0, 0, 0, 204, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(491, 67, 387, NULL, NULL, NULL, 40, 40, 7, 3.5, 0, 0, 0, 140, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(492, 67, 389, NULL, NULL, NULL, 3000, 3000, 2, 0.16, 0, 0, 0, 480, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(493, 67, 391, NULL, NULL, NULL, 1000, 1000, 2, 0.36, 0, 0, 0, 360, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(494, 67, 392, NULL, NULL, NULL, 2000, 2000, 2, 0.27, 0, 0, 0, 530, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(495, 67, 393, NULL, NULL, NULL, 200, 200, 2, 2.6, 0, 0, 0, 520, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(496, 67, 390, NULL, NULL, NULL, 250, 250, 2, 3.2, 0, 0, 0, 800, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(497, 67, 394, NULL, NULL, NULL, 6, 6, 7, 45, 0, 0, 0, 270, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(498, 67, 395, NULL, NULL, NULL, 250, 250, 7, 1.25, 0, 0, 0, 312, '2020-12-06 06:19:04', '2020-12-06 06:19:04'),
(499, 67, 396, NULL, NULL, NULL, 500, 500, 7, 2.3, 0, 0, 0, 1150, '2020-12-06 06:19:05', '2020-12-06 06:19:05'),
(500, 67, 397, NULL, NULL, NULL, 1000, 1000, 7, 0.21, 0, 0, 0, 210, '2020-12-06 06:19:05', '2020-12-06 06:19:05'),
(501, 67, 398, NULL, NULL, NULL, 1000, 1000, 2, 0.62, 0, 0, 0, 622, '2020-12-06 06:19:05', '2020-12-06 06:19:05'),
(502, 67, 399, NULL, NULL, NULL, 500, 500, 2, 0.84, 0, 0, 0, 420, '2020-12-06 06:19:05', '2020-12-06 06:19:05'),
(503, 67, 408, NULL, NULL, NULL, 70000, 70000, 2, 0.04, 0, 0, 0, 3150, '2020-12-06 06:19:05', '2020-12-06 06:19:05'),
(504, 67, 410, NULL, NULL, NULL, 10, 10, 7, 7.5, 0, 0, 0, 75, '2020-12-06 06:19:05', '2020-12-06 06:19:05'),
(534, 68, 412, NULL, NULL, NULL, 1000, 1000, 2, 0.63, 0, 0, 0, 630, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(535, 68, 396, NULL, NULL, NULL, 500, 500, 7, 2.35, 0, 0, 0, 1175, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(536, 68, 413, NULL, NULL, NULL, 1000, 1000, 2, 0.38, 0, 0, 0, 380, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(537, 68, 392, NULL, NULL, NULL, 1000, 1000, 2, 0.27, 0, 0, 0, 270, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(538, 68, 414, NULL, NULL, NULL, 500, 500, 2, 0.44, 0, 0, 0, 220, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(539, 68, 393, NULL, NULL, NULL, 250, 250, 2, 2.46, 0, 0, 0, 615, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(540, 68, 415, NULL, NULL, NULL, 500, 500, 2, 0.84, 0, 0, 0, 420, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(541, 68, 416, NULL, NULL, NULL, 6, 6, 7, 20, 0, 0, 0, 120, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(542, 68, 417, NULL, NULL, NULL, 1000, 1000, 2, 0.12, 0, 0, 0, 120, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(543, 68, 419, NULL, NULL, NULL, 250, 250, 2, 0.68, 0, 0, 0, 170, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(544, 68, 420, NULL, NULL, NULL, 500, 500, 2, 0.7, 0, 0, 0, 350, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(545, 68, 421, NULL, NULL, NULL, 1000, 1000, 2, 0.08, 0, 0, 0, 80, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(546, 68, 423, NULL, NULL, NULL, 1000, 1000, 2, 0.06, 0, 0, 0, 60, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(547, 68, 424, NULL, NULL, NULL, 2000, 2000, 2, 0.05, 0, 0, 0, 100, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(548, 68, 418, NULL, NULL, NULL, 12, 12, 7, 15, 0, 0, 0, 180, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(549, 68, 422, NULL, NULL, NULL, 1000, 1000, 2, 0.07, 0, 0, 0, 75, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(550, 69, 428, NULL, NULL, NULL, 12, 12, 7, 10, 0, 0, 0, 120, '2020-12-06 10:33:57', '2020-12-06 10:33:57'),
(551, 69, 426, NULL, NULL, NULL, 9, 9, 7, 42, 0, 0, 0, 378, '2020-12-06 10:33:57', '2020-12-06 10:33:57'),
(552, 69, 425, NULL, NULL, NULL, 12, 12, 7, 14, 0, 0, 0, 168, '2020-12-06 10:33:57', '2020-12-06 10:33:57'),
(553, 69, 427, NULL, NULL, NULL, 24, 24, 7, 12.92, 0, 0, 0, 310.08, '2020-12-06 10:33:57', '2020-12-06 10:33:57'),
(554, 69, 151, NULL, NULL, NULL, 2, 2, 7, 80, 0, 0, 0, 160, '2020-12-06 10:33:57', '2020-12-06 10:33:57'),
(561, 70, 429, NULL, NULL, NULL, 36, 36, 7, 18.58, 0, 0, 0, 668.88, '2020-12-07 12:49:49', '2020-12-07 12:49:49'),
(562, 70, 464, NULL, NULL, NULL, 12, 12, 7, 16.55, 0, 0, 0, 198.6, '2020-12-07 12:49:49', '2020-12-07 12:49:49'),
(563, 70, 111, NULL, NULL, NULL, 6, 6, 7, 75.81, 0, 0, 0, 454.86, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(564, 70, 110, NULL, NULL, NULL, 12, 12, 7, 40.99, 0, 0, 0, 491.88, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(565, 70, 151, NULL, NULL, NULL, 24, 24, 7, 76.5, 0, 0, 0, 1836, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(566, 70, 460, NULL, NULL, NULL, 6, 6, 7, 31.53, 0, 0, 0, 189.18, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(567, 70, 462, NULL, NULL, NULL, 6, 6, 7, 196.11, 0, 0, 0, 1176.66, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(568, 70, 463, NULL, NULL, NULL, 3, 3, 7, 44.25, 0, 0, 0, 132.75, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(569, 70, 458, NULL, NULL, NULL, 13, 13, 7, 16.92, 0, 0, 0, 220, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(570, 70, 155, NULL, NULL, NULL, 24, 24, 7, 10.8, 0, 0, 0, 259.2, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(571, 70, 449, NULL, NULL, NULL, 26, 26, 7, 23.75, 0, 0, 0, 617.48, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(572, 70, 448, NULL, NULL, NULL, 12, 12, 7, 49.29, 0, 0, 0, 591.48, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(573, 70, 450, NULL, NULL, NULL, 2, 2, 7, 77.03, 0, 0, 0, 154.06, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(574, 70, 437, NULL, NULL, NULL, 12, 12, 7, 30.67, 0, 0, 0, 368.04, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(575, 70, 459, NULL, NULL, NULL, 12, 12, 7, 39.83, 0, 0, 0, 477.96, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(576, 71, 451, NULL, NULL, NULL, 3, 3, 7, 89, 0, 0, 0, 267, '2020-12-07 12:52:01', '2020-12-07 12:52:01'),
(577, 71, 452, NULL, NULL, NULL, 3, 3, 7, 89, 0, 0, 0, 267, '2020-12-07 12:52:01', '2020-12-07 12:52:01'),
(578, 72, 435, NULL, NULL, NULL, 6, 6, 7, 50, 0, 0, 0, 300, '2020-12-07 13:01:13', '2020-12-07 13:01:13'),
(579, 72, 453, NULL, NULL, NULL, 3, 3, 7, 254.54, 0, 0, 0, 763.62, '2020-12-07 13:01:13', '2020-12-07 13:01:13'),
(580, 72, 454, NULL, NULL, NULL, 3, 3, 7, 250, 0, 0, 0, 750, '2020-12-07 13:01:13', '2020-12-07 13:01:13'),
(581, 72, 434, NULL, NULL, NULL, 16, 16, 7, 34.5, 0, 0, 0, 552, '2020-12-07 13:01:13', '2020-12-07 13:01:13'),
(582, 72, 295, NULL, NULL, NULL, 13, 13, 7, 9.69, 0, 0, 0, 126, '2020-12-07 13:01:13', '2020-12-07 13:01:13'),
(583, 73, 304, NULL, NULL, NULL, 6, 6, 7, 32, 0, 0, 0, 192, '2020-12-07 13:02:54', '2020-12-07 13:02:54'),
(584, 73, 305, NULL, NULL, NULL, 6, 6, 7, 62.5, 0, 0, 0, 375, '2020-12-07 13:02:54', '2020-12-07 13:02:54'),
(585, 74, 433, NULL, NULL, NULL, 2, 2, 7, 114.8, 0, 0, 0, 229.6, '2020-12-07 13:09:38', '2020-12-07 13:09:38'),
(586, 74, 457, NULL, NULL, NULL, 2, 2, 7, 55.25, 0, 0, 0, 110.5, '2020-12-07 13:09:39', '2020-12-07 13:09:39'),
(587, 74, 432, NULL, NULL, NULL, 2, 2, 7, 76.5, 0, 0, 0, 153, '2020-12-07 13:09:39', '2020-12-07 13:09:39'),
(588, 74, 436, NULL, NULL, NULL, 12, 12, 7, 5.95, 0, 0, 0, 71.4, '2020-12-07 13:09:39', '2020-12-07 13:09:39'),
(589, 75, 439, NULL, NULL, NULL, 12, 12, 7, 2.92, 0, 0, 0, 35.04, '2020-12-07 13:14:39', '2020-12-07 13:14:39'),
(590, 75, 440, NULL, NULL, NULL, 12, 12, 7, 6.67, 0, 0, 0, 80.04, '2020-12-07 13:14:39', '2020-12-07 13:14:39'),
(591, 75, 438, NULL, NULL, NULL, 12, 12, 7, 5.42, 0, 0, 0, 65.04, '2020-12-07 13:14:39', '2020-12-07 13:14:39'),
(592, 75, 430, NULL, NULL, NULL, 72, 72, 7, 0.76, 0, 0, 0, 55.01, '2020-12-07 13:14:39', '2020-12-07 13:14:39'),
(593, 75, 431, NULL, NULL, NULL, 72, 72, 7, 1.53, 0, 0, 0, 110.16, '2020-12-07 13:14:39', '2020-12-07 13:14:39'),
(594, 76, 441, NULL, NULL, NULL, 5000, 5000, 2, 0.06, 0, 0, 0, 300, '2020-12-07 13:16:00', '2020-12-07 13:16:00'),
(595, 76, 442, NULL, NULL, NULL, 1000, 1000, 7, 0.15, 0, 0, 0, 150, '2020-12-07 13:16:01', '2020-12-07 13:16:01'),
(596, 77, 443, NULL, NULL, NULL, 1000, 1000, 2, 0.27, 0, 0, 0, 270, '2020-12-07 13:16:37', '2020-12-07 13:16:37'),
(597, 78, 349, NULL, NULL, NULL, 10, 10, 7, 32, 0, 0, 0, 320, '2020-12-07 13:17:36', '2020-12-07 13:17:36'),
(598, 79, 116, NULL, NULL, NULL, 12, 12, 7, 29, 0, 0, 0, 348, '2020-12-07 23:52:39', '2020-12-07 23:52:39'),
(599, 80, 466, NULL, NULL, NULL, 3, 3, 7, 104, 0, 0, 0, 312, '2020-12-08 06:50:09', '2020-12-08 06:50:09'),
(600, 80, 465, NULL, NULL, NULL, 13, 13, 7, 44.31, 0, 0, 0, 576.03, '2020-12-08 06:50:09', '2020-12-08 06:50:09'),
(601, 80, 467, NULL, NULL, NULL, 4, 4, 7, 30, 0, 0, 0, 120, '2020-12-08 06:50:09', '2020-12-08 06:50:09'),
(602, 80, 468, NULL, NULL, NULL, 13, 13, 7, 45.46, 0, 0, 0, 591, '2020-12-08 06:50:09', '2020-12-08 06:50:09'),
(603, 80, 469, NULL, NULL, NULL, 4, 4, 7, 50, 0, 0, 0, 200, '2020-12-08 06:50:09', '2020-12-08 06:50:09'),
(604, 81, 470, NULL, NULL, NULL, 3, 3, 7, 55, 0, 0, 0, 165, '2020-12-08 08:25:14', '2020-12-08 08:25:14'),
(605, 81, 471, NULL, NULL, NULL, 3, 3, 7, 60, 0, 0, 0, 180, '2020-12-08 08:25:14', '2020-12-08 08:25:14'),
(606, 82, 473, NULL, NULL, NULL, 6, 6, 7, 47.24, 0, 0, 0, 283.44, '2020-12-08 23:30:17', '2020-12-08 23:30:17'),
(607, 83, 279, NULL, NULL, NULL, 4, 4, 7, 33, 0, 0, 0, 132, '2020-12-08 23:33:07', '2020-12-08 23:33:07'),
(608, 84, 476, NULL, NULL, NULL, 12, 12, 7, 8, 0, 0, 0, 96, '2020-12-09 00:02:46', '2020-12-09 00:02:46'),
(609, 84, 477, NULL, NULL, NULL, 12, 12, 7, 4, 0, 0, 0, 48, '2020-12-09 00:02:46', '2020-12-09 00:02:46'),
(612, 85, 478, NULL, NULL, NULL, 3, 3, 7, 114.38, 0, 0, 0, 343.14, '2020-12-09 00:23:14', '2020-12-09 00:23:14'),
(613, 85, 479, NULL, NULL, NULL, 6, 6, 7, 56.04, 0, 0, 0, 336.24, '2020-12-09 00:23:14', '2020-12-09 00:23:14'),
(614, 85, 480, NULL, NULL, NULL, 144, 144, 7, 2.58, 0, 0, 0, 371.52, '2020-12-09 00:23:14', '2020-12-09 00:23:14'),
(615, 86, 202, NULL, NULL, NULL, 12, 12, 7, 40, 0, 0, 0, 480, '2020-12-09 10:05:56', '2020-12-09 10:05:56'),
(616, 86, 481, NULL, NULL, NULL, 1, 1, 7, 130, 0, 0, 0, 130, '2020-12-09 10:05:56', '2020-12-09 10:05:56'),
(617, 87, 125, NULL, NULL, NULL, 27, 27, 7, 54, 0, 0, 0, 1458, '2020-12-11 01:39:52', '2020-12-11 01:39:52'),
(618, 87, 163, NULL, NULL, NULL, 6, 6, 7, 32, 0, 0, 0, 192, '2020-12-11 01:39:52', '2020-12-11 01:39:52'),
(619, 87, 488, NULL, NULL, NULL, 1, 1, 7, 65.75, 0, 0, 0, 65.75, '2020-12-11 01:39:52', '2020-12-11 01:39:52'),
(620, 87, 490, NULL, NULL, NULL, 2, 2, 7, 65.75, 0, 0, 0, 131.5, '2020-12-11 01:39:52', '2020-12-11 01:39:52'),
(621, 87, 149, NULL, NULL, NULL, 2, 2, 7, 86, 0, 0, 0, 172, '2020-12-11 01:39:52', '2020-12-11 01:39:52'),
(622, 87, 489, NULL, NULL, NULL, 1, 1, 7, 86, 0, 0, 0, 86, '2020-12-11 01:39:52', '2020-12-11 01:39:52'),
(623, 88, 172, NULL, NULL, NULL, 5, 5, 7, 46.5, 0, 0, 0, 232.5, '2020-12-16 00:44:34', '2020-12-16 00:44:34'),
(624, 88, 491, NULL, NULL, NULL, 5, 5, 7, 23.75, 0, 0, 0, 118.75, '2020-12-16 00:44:34', '2020-12-16 00:44:34'),
(625, 89, 492, NULL, NULL, NULL, 2, 2, 7, 70, 0, 0, 0, 140, '2020-12-16 00:54:44', '2020-12-16 00:54:44'),
(626, 89, 493, NULL, NULL, NULL, 2, 2, 7, 58, 0, 0, 0, 116, '2020-12-16 00:54:44', '2020-12-16 00:54:44'),
(627, 89, 494, NULL, NULL, NULL, 4, 4, 7, 31, 0, 0, 0, 124, '2020-12-16 00:54:44', '2020-12-16 00:54:44'),
(628, 90, 495, NULL, NULL, NULL, 48, 48, 7, 5.42, 0, 0, 0, 259.97, '2020-12-16 01:04:29', '2020-12-16 01:04:29'),
(629, 91, 496, NULL, NULL, NULL, 24, 24, 7, 5, 0, 0, 0, 120, '2020-12-16 01:24:25', '2020-12-16 01:24:25'),
(630, 92, 497, NULL, NULL, NULL, 12, 12, 7, 7.08, 0, 0, 0, 84.96, '2020-12-16 01:51:37', '2020-12-16 01:51:37'),
(631, 93, 498, NULL, NULL, NULL, 10, 10, 7, 17.5, 0, 0, 0, 175, '2020-12-16 06:25:23', '2020-12-16 06:25:23'),
(632, 94, 499, NULL, NULL, NULL, 2, 2, 7, 75, 0, 0, 0, 150, '2020-12-16 07:02:54', '2020-12-16 07:02:54'),
(633, 94, 500, NULL, NULL, NULL, 24, 24, 7, 4.12, 0, 0, 0, 98.88, '2020-12-16 07:02:54', '2020-12-16 07:02:54'),
(634, 94, 501, NULL, NULL, NULL, 24, 24, 7, 4.12, 0, 0, 0, 98.88, '2020-12-16 07:02:54', '2020-12-16 07:02:54'),
(635, 94, 502, NULL, NULL, NULL, 12, 12, 7, 4.12, 0, 0, 0, 49.44, '2020-12-16 07:02:54', '2020-12-16 07:02:54'),
(636, 95, 215, NULL, NULL, NULL, 4, 4, 7, 8.52, 0, 0, 0, 34.08, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(637, 95, 503, NULL, NULL, NULL, 19, 19, 7, 8.52, 0, 0, 0, 161.88, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(638, 95, 506, NULL, NULL, NULL, 7, 7, 7, 37.61, 0, 0, 0, 263.27, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(639, 95, 504, NULL, NULL, NULL, 6, 6, 7, 43.89, 0, 0, 0, 263.34, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(640, 95, 505, NULL, NULL, NULL, 6, 6, 7, 50.45, 0, 0, 0, 302.7, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(641, 95, 507, NULL, NULL, NULL, 7, 7, 7, 43.24, 0, 0, 0, 302.68, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(642, 95, 508, NULL, NULL, NULL, 3, 3, 7, 29.13, 0, 0, 0, 87.39, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(643, 95, 509, NULL, NULL, NULL, 3, 3, 7, 40.04, 0, 0, 0, 120.12, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(644, 96, 510, NULL, NULL, NULL, 38, 38, 7, 6.86, 0, 0, 0, 260.68, '2020-12-16 09:45:22', '2020-12-16 09:45:22'),
(645, 96, 168, NULL, NULL, NULL, 10, 10, 7, 110, 0, 0, 0, 1100, '2020-12-16 09:45:22', '2020-12-16 09:45:22'),
(646, 97, 511, NULL, NULL, NULL, 20, 20, 7, 25, 0, 0, 0, 500, '2020-12-17 00:48:57', '2020-12-17 00:48:57'),
(647, 97, 512, NULL, NULL, NULL, 1, 1, 7, 107, 0, 0, 0, 107, '2020-12-17 00:48:57', '2020-12-17 00:48:57'),
(648, 98, 513, NULL, NULL, NULL, 6, 6, 7, 40, 0, 0, 0, 240, '2020-12-17 01:50:26', '2020-12-17 01:50:26'),
(649, 99, 515, NULL, NULL, NULL, 3, 3, 7, 55, 0, 0, 0, 165, '2020-12-17 02:01:06', '2020-12-17 02:01:06'),
(650, 99, 514, NULL, NULL, NULL, 14, 14, 7, 17.14, 0, 0, 0, 239.99, '2020-12-17 02:01:06', '2020-12-17 02:01:06'),
(651, 100, 517, NULL, NULL, NULL, 2, 2, 7, 67, 0, 0, 0, 134, '2020-12-17 02:14:26', '2020-12-17 02:14:26'),
(652, 101, 493, NULL, NULL, NULL, 2, 2, 7, 58, 0, 0, 0, 116, '2020-12-17 02:15:23', '2020-12-17 02:15:23'),
(653, 101, 516, NULL, NULL, NULL, 8, 8, 7, 42.5, 0, 0, 0, 340, '2020-12-17 02:15:23', '2020-12-17 02:15:23'),
(654, 102, 140, NULL, NULL, NULL, 14, 14, 7, 42.43, 0, 0, 0, 593.99, '2020-12-18 06:45:17', '2020-12-18 06:45:17');
INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(655, 102, 202, NULL, NULL, NULL, 15, 15, 7, 31.6, 0, 0, 0, 474, '2020-12-18 06:45:17', '2020-12-18 06:45:17'),
(656, 103, 519, NULL, NULL, NULL, 9, 9, 7, 58, 0, 0, 0, 522, '2020-12-19 23:31:54', '2020-12-19 23:31:54'),
(657, 103, 520, NULL, NULL, NULL, 300, 300, 7, 4, 0, 0, 0, 1200, '2020-12-19 23:31:54', '2020-12-19 23:31:54'),
(658, 103, 521, NULL, NULL, NULL, 48, 48, 7, 10.42, 0, 0, 0, 500.16, '2020-12-19 23:31:54', '2020-12-19 23:31:54'),
(659, 104, 522, NULL, NULL, NULL, 2, 2, 7, 513, 0, 0, 0, 1026, '2020-12-20 02:47:18', '2020-12-20 02:47:18'),
(660, 104, 523, NULL, NULL, NULL, 2, 2, 7, 238, 0, 0, 0, 476, '2020-12-20 02:47:18', '2020-12-20 02:47:18'),
(661, 104, 524, NULL, NULL, NULL, 2, 1, 7, 366, 0, 0, 0, 732, '2020-12-20 02:47:18', '2020-12-20 02:47:18'),
(662, 104, 525, NULL, NULL, NULL, 2, 2, 7, 342, 0, 0, 0, 684, '2020-12-20 02:47:18', '2020-12-20 02:47:18'),
(663, 105, 526, NULL, NULL, NULL, 1, 1, 7, 155, 0, 0, 0, 155, '2020-12-20 06:46:29', '2020-12-20 06:46:29'),
(664, 105, 527, NULL, NULL, NULL, 1, 1, 7, 136, 0, 0, 0, 136, '2020-12-20 06:46:29', '2020-12-20 06:46:29'),
(665, 105, 528, NULL, NULL, NULL, 1, 1, 7, 121, 0, 0, 0, 121, '2020-12-20 06:46:29', '2020-12-20 06:46:29'),
(666, 106, 529, NULL, NULL, NULL, 1, 1, 7, 180, 0, 0, 0, 180, '2020-12-21 00:46:09', '2020-12-21 00:46:09'),
(667, 107, 531, NULL, NULL, NULL, 6, 6, 7, 12, 0, 0, 0, 72, '2020-12-22 08:00:23', '2020-12-22 08:00:23'),
(668, 107, 532, NULL, NULL, NULL, 2, 2, 7, 60, 0, 0, 0, 120, '2020-12-22 08:00:23', '2020-12-22 08:00:23'),
(669, 107, 530, NULL, NULL, NULL, 6, 6, 7, 12, 0, 0, 0, 72, '2020-12-22 08:00:23', '2020-12-22 08:00:23'),
(670, 107, 533, NULL, NULL, NULL, 2, 2, 7, 60, 0, 0, 0, 120, '2020-12-22 08:00:23', '2020-12-22 08:00:23'),
(671, 108, 534, NULL, NULL, NULL, 36, 36, 7, 1.12, 0, 0, 0, 40.32, '2020-12-22 08:33:21', '2020-12-22 08:33:21'),
(672, 109, 535, NULL, NULL, NULL, 12, 12, 7, 8, 0, 0, 0, 96, '2020-12-22 08:41:45', '2020-12-22 08:41:45'),
(673, 110, 364, NULL, NULL, NULL, 6, 6, 7, 105, 0, 0, 0, 630, '2021-01-07 23:39:50', '2021-01-07 23:39:50'),
(674, 111, 248, NULL, NULL, NULL, 18, 18, 7, 106.75, 0, 0, 0, 1921.5, '2021-01-07 23:55:41', '2021-01-07 23:55:41'),
(675, 111, 156, NULL, NULL, NULL, 36, 36, 7, 28.79, 0, 0, 0, 1036.44, '2021-01-07 23:55:41', '2021-01-07 23:55:41'),
(676, 111, 346, NULL, NULL, NULL, 18, 18, 7, 45, 0, 0, 0, 810, '2021-01-07 23:55:41', '2021-01-07 23:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `product_quotation`
--

CREATE TABLE `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `return_qty` double NOT NULL DEFAULT '0',
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sales`
--

INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `return_qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(11, 11, 348, NULL, NULL, NULL, 1, 0, 7, 220, 0, 0, 0, 220, '2020-12-07 23:58:12', '2020-12-08 09:24:54'),
(12, 12, 204, NULL, NULL, NULL, 1, 0, 7, 50, 0, 0, 0, 50, '2020-12-08 00:50:55', '2020-12-08 00:50:55'),
(13, 12, 168, NULL, NULL, NULL, 1, 0, 7, 130, 0, 0, 0, 130, '2020-12-08 00:50:55', '2020-12-08 00:50:55'),
(14, 13, 113, NULL, NULL, NULL, 1, 0, 7, 30, 0, 0, 0, 30, '2020-12-08 01:08:33', '2020-12-08 01:08:33'),
(15, 14, 192, NULL, NULL, NULL, 1, 0, 7, 35, 0, 0, 0, 35, '2020-12-08 06:44:20', '2020-12-08 06:44:20'),
(16, 14, 248, NULL, NULL, NULL, 1, 0, 7, 120, 0, 0, 0, 120, '2020-12-08 06:44:20', '2020-12-08 06:44:20'),
(17, 15, 192, NULL, NULL, NULL, 1, 0, 7, 35, 0, 0, 0, 35, '2020-12-08 06:44:21', '2020-12-08 06:44:21'),
(18, 15, 248, NULL, NULL, NULL, 1, 0, 7, 120, 0, 0, 0, 120, '2020-12-08 06:44:21', '2020-12-08 06:44:21'),
(19, 16, 192, NULL, NULL, NULL, 1, 0, 7, 35, 0, 0, 0, 35, '2020-12-08 07:01:24', '2020-12-08 07:01:24'),
(20, 17, 93, NULL, NULL, NULL, 1, 0, 7, 70, 0, 0, 0, 70, '2020-12-08 07:40:59', '2020-12-08 07:40:59'),
(21, 18, 435, NULL, NULL, NULL, 1, 0, 7, 80, 0, 0, 0, 80, '2020-12-08 07:44:46', '2020-12-08 07:44:46'),
(22, 18, 192, NULL, NULL, NULL, 1, 0, 7, 35, 0, 0, 0, 35, '2020-12-08 07:44:46', '2020-12-08 07:44:46'),
(23, 18, 169, NULL, NULL, NULL, 1, 0, 7, 70, 0, 0, 0, 70, '2020-12-08 07:44:46', '2020-12-08 07:44:46'),
(24, 19, 249, NULL, NULL, NULL, 1, 0, 7, 70, 0, 0, 0, 70, '2020-12-09 06:55:12', '2020-12-09 06:55:12'),
(25, 20, 122, NULL, NULL, NULL, 1, 0, 7, 25, 0, 0, 0, 25, '2020-12-09 06:59:43', '2020-12-09 06:59:43'),
(26, 20, 124, NULL, NULL, NULL, 4, 0, 7, 10, 0, 0, 0, 40, '2020-12-09 06:59:43', '2020-12-09 06:59:43'),
(27, 20, 118, NULL, NULL, NULL, 1, 0, 7, 60, 0, 0, 0, 60, '2020-12-09 06:59:43', '2020-12-09 06:59:43'),
(28, 20, 87, NULL, NULL, NULL, 2, 0, 7, 15, 0, 0, 0, 30, '2020-12-09 06:59:43', '2020-12-09 06:59:43'),
(29, 21, 117, NULL, NULL, NULL, 1, 0, 7, 50, 0, 0, 0, 50, '2020-12-09 07:52:56', '2020-12-09 07:52:56'),
(30, 22, 462, NULL, NULL, NULL, 1, 0, 7, 220, 0, 0, 0, 220, '2020-12-09 08:00:42', '2020-12-09 08:00:42'),
(31, 23, 140, NULL, NULL, NULL, 1, 0, 7, 62, 0, 0, 0, 62, '2020-12-09 10:07:12', '2020-12-09 10:07:12'),
(32, 23, 202, NULL, NULL, NULL, 2, 0, 7, 48, 0, 0, 0, 96, '2020-12-09 10:07:12', '2020-12-09 10:07:12'),
(33, 23, 481, NULL, NULL, NULL, 1, 0, 7, 130, 0, 0, 0, 130, '2020-12-09 10:07:12', '2020-12-09 10:07:12'),
(34, 24, 165, NULL, NULL, NULL, 1, 0, 7, 130, 0, 0, 0, 130, '2020-12-10 00:02:31', '2020-12-10 00:02:31'),
(35, 24, 317, NULL, NULL, NULL, 2, 0, 7, 330, 0, 0, 0, 660, '2020-12-10 00:02:31', '2020-12-10 00:02:31'),
(36, 24, 166, NULL, NULL, NULL, 1, 0, 7, 130, 0, 0, 0, 130, '2020-12-10 00:02:31', '2020-12-10 00:02:31'),
(37, 24, 349, NULL, NULL, NULL, 1, 0, 7, 35, 0, 0, 0, 35, '2020-12-10 00:02:31', '2020-12-10 00:02:31'),
(38, 24, 302, NULL, NULL, NULL, 1, 0, 7, 92, 0, 0, 0, 92, '2020-12-10 00:02:31', '2020-12-10 00:02:31'),
(39, 24, 305, NULL, NULL, NULL, 2, 0, 7, 72, 0, 0, 0, 144, '2020-12-10 00:02:31', '2020-12-10 00:02:31'),
(40, 24, 156, NULL, NULL, NULL, 1, 0, 7, 32, 0, 0, 0, 32, '2020-12-10 00:02:31', '2020-12-10 00:02:31'),
(41, 24, 138, NULL, NULL, NULL, 1, 0, 7, 100, 0, 0, 0, 100, '2020-12-10 00:02:32', '2020-12-10 00:02:32'),
(42, 24, 425, NULL, NULL, NULL, 2, 0, 7, 17, 0, 0, 0, 34, '2020-12-10 00:02:32', '2020-12-10 00:02:32'),
(43, 24, 248, NULL, NULL, NULL, 1, 0, 7, 120, 0, 0, 0, 120, '2020-12-10 00:02:32', '2020-12-10 00:02:32'),
(44, 24, 268, NULL, NULL, NULL, 1, 0, 7, 60, 0, 0, 0, 60, '2020-12-10 00:02:32', '2020-12-10 00:02:32'),
(45, 24, 195, NULL, NULL, NULL, 1, 0, 7, 130, 0, 0, 0, 130, '2020-12-10 00:02:32', '2020-12-10 00:02:32'),
(46, 24, 348, NULL, NULL, NULL, 1, 0, 7, 220, 0, 0, 0, 220, '2020-12-10 00:02:32', '2020-12-10 00:02:32'),
(47, 24, 106, NULL, NULL, NULL, 1, 0, 7, 570, 0, 0, 0, 570, '2020-12-10 00:02:32', '2020-12-10 00:02:32'),
(48, 25, 140, NULL, NULL, NULL, 6, 0, 7, 62, 0, 0, 0, 372, '2020-12-15 05:26:24', '2020-12-15 05:26:24'),
(49, 26, 125, NULL, NULL, NULL, 1, 0, 7, 60, 0, 0, 0, 60, '2020-12-15 08:29:13', '2020-12-15 08:29:13'),
(50, 27, 275, NULL, NULL, NULL, 3, 0, 7, 70, 0, 0, 0, 210, '2020-12-16 00:24:55', '2020-12-16 00:24:55'),
(51, 27, 101, NULL, NULL, NULL, 2, 0, 7, 92, 0, 0, 0, 184, '2020-12-16 00:24:55', '2020-12-16 00:24:55'),
(52, 28, 142, NULL, NULL, NULL, 1, 0, 7, 135, 0, 0, 0, 135, '2020-12-16 02:12:04', '2020-12-16 02:12:04'),
(53, 29, 341, NULL, NULL, NULL, 1, 0, 7, 90, 0, 0, 0, 90, '2020-12-18 07:20:29', '2020-12-18 07:20:29'),
(54, 30, 521, NULL, NULL, NULL, 48, 0, 7, 15, 0, 0, 0, 720, '2020-12-19 23:34:34', '2020-12-19 23:34:34'),
(55, 30, 520, NULL, NULL, NULL, 300, 0, 7, 5, 0, 0, 0, 1500, '2020-12-19 23:34:34', '2020-12-19 23:34:34'),
(56, 30, 519, NULL, NULL, NULL, 9, 0, 7, 100, 0, 0, 0, 900, '2020-12-19 23:34:34', '2020-12-19 23:34:34'),
(57, 30, 202, NULL, NULL, NULL, 2, 0, 7, 48, 0, 0, 0, 96, '2020-12-19 23:34:34', '2020-12-19 23:34:34'),
(58, 31, 529, NULL, NULL, NULL, 1, 0, 7, 210, 0, 0, 0, 210, '2020-12-21 00:46:46', '2020-12-21 00:46:46'),
(59, 32, 274, NULL, NULL, NULL, 12, 0, 7, 15, 0, 0, 0, 180, '2020-12-22 09:15:33', '2020-12-22 09:15:33'),
(60, 33, 426, NULL, NULL, NULL, 1, 0, 7, 50, 0, 0, 0, 50, '2020-12-23 05:42:17', '2020-12-23 05:42:17'),
(61, 33, 324, NULL, NULL, NULL, 1, 0, 7, 85, 0, 0, 0, 85, '2020-12-23 05:42:18', '2020-12-23 05:42:18'),
(62, 34, 176, NULL, NULL, NULL, 1, 0, 7, 330, 0, 0, 0, 330, '2020-12-23 07:53:19', '2020-12-23 07:53:19'),
(63, 35, 364, NULL, NULL, NULL, 1, 0, 7, 110, 0, 0, 0, 110, '2021-01-08 00:40:18', '2021-01-08 00:40:18'),
(64, 35, 169, NULL, NULL, NULL, 1, 0, 7, 70, 0, 0, 0, 70, '2021-01-08 00:40:18', '2021-01-08 00:40:18'),
(65, 35, 192, NULL, NULL, NULL, 1, 0, 7, 35, 0, 0, 0, 35, '2021-01-08 00:40:18', '2021-01-08 00:40:18'),
(66, 35, 305, NULL, NULL, NULL, 1, 0, 7, 72, 0, 0, 0, 72, '2021-01-08 00:40:18', '2021-01-08 00:40:18'),
(67, 35, 109, NULL, NULL, NULL, 1, 0, 7, 228, 0, 0, 0, 228, '2021-01-08 00:40:18', '2021-01-08 00:40:18'),
(68, 35, 108, NULL, NULL, NULL, 1, 0, 7, 115, 0, 0, 0, 115, '2021-01-08 00:40:18', '2021-01-08 00:40:18'),
(69, 35, 92, NULL, NULL, NULL, 3, 0, 7, 17, 0, 0, 0, 51, '2021-01-08 00:40:18', '2021-01-08 00:40:18'),
(70, 35, 202, NULL, NULL, NULL, 1, 0, 7, 48, 0, 0, 0, 48, '2021-01-08 00:40:18', '2021-01-08 00:40:18'),
(71, 35, 248, NULL, NULL, NULL, 1, 0, 7, 120, 0, 0, 0, 120, '2021-01-08 00:40:18', '2021-01-08 00:40:18'),
(72, 35, 176, NULL, NULL, NULL, 1, 0, 7, 330, 0, 0, 0, 330, '2021-01-08 00:40:18', '2021-01-08 00:40:18'),
(73, 36, 201, NULL, NULL, NULL, 1, 0, 7, 160, 0, 0, 0, 160, '2021-02-11 04:38:13', '2021-02-11 04:38:13'),
(74, 37, 243, NULL, NULL, NULL, 1, 0, 7, 10, 0, 0, 0, 10, '2021-02-21 08:13:03', '2021-02-21 08:13:03'),
(75, 38, 181, NULL, NULL, NULL, 1, 0, 7, 140, 0, 0, 0, 140, '2021-02-21 10:09:35', '2021-02-21 10:09:35'),
(76, 39, 147, NULL, NULL, NULL, 1, 0, 7, 18, 0, 0, 0, 18, '2021-02-21 10:12:56', '2021-02-21 10:12:56'),
(77, 40, 147, NULL, NULL, NULL, 1, 0, 7, 18, 0, 0, 0, 18, '2021-02-21 10:12:58', '2021-02-21 10:12:58'),
(78, 41, 199, NULL, NULL, NULL, 1, 0, 7, 75, 0, 0, 0, 75, '2021-09-02 09:15:06', '2021-09-02 09:15:06'),
(79, 42, 449, NULL, NULL, NULL, 1, 0, 7, 30, 0, 0, 0, 30, '2023-03-30 04:02:22', '2023-03-30 04:02:22'),
(80, 42, 450, NULL, NULL, NULL, 1, 0, 7, 85, 0, 0, 0, 85, '2023-03-30 04:02:22', '2023-03-30 04:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_transfer`
--

CREATE TABLE `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_cost` double DEFAULT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `warehouse_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '2', NULL, NULL, NULL, 1, 0, NULL, '2020-11-18 08:17:25', '2020-12-08 09:22:50'),
(2, '3', NULL, NULL, NULL, 1, 0, NULL, '2020-11-18 08:17:25', '2020-11-28 12:02:06'),
(3, '6', NULL, NULL, NULL, 1, 0, NULL, '2020-11-18 09:02:30', '2020-11-28 12:02:06'),
(4, '4', NULL, NULL, NULL, 1, -49.95, NULL, '2020-11-18 09:21:37', '2020-11-28 12:02:06'),
(5, '7', NULL, NULL, NULL, 1, 0, NULL, '2020-11-18 09:31:43', '2020-11-28 12:02:06'),
(6, '8', NULL, NULL, NULL, 1, 0, NULL, '2020-11-23 02:17:18', '2020-12-08 09:22:50'),
(7, '85', NULL, NULL, NULL, 1, 10, NULL, '2020-11-28 12:01:18', '2020-12-08 09:22:50'),
(8, '238', NULL, NULL, NULL, 1, 144, NULL, '2020-11-29 08:35:32', '2020-12-08 09:22:04'),
(9, '239', NULL, NULL, NULL, 1, 6, NULL, '2020-11-29 08:35:32', '2020-12-08 09:22:50'),
(10, '242', NULL, NULL, NULL, 1, 6, NULL, '2020-11-29 08:35:32', '2020-12-04 23:26:01'),
(11, '240', NULL, NULL, NULL, 1, 6, NULL, '2020-11-29 08:35:32', '2020-12-04 23:26:01'),
(12, '241', NULL, NULL, NULL, 1, 4, NULL, '2020-11-29 08:35:32', '2020-12-08 09:22:50'),
(13, '174', NULL, NULL, NULL, 1, 2, NULL, '2020-11-29 08:57:47', '2020-11-29 08:57:47'),
(14, '235', NULL, NULL, NULL, 1, 50, NULL, '2020-11-29 08:57:48', '2020-11-29 08:57:48'),
(15, '191', NULL, NULL, NULL, 1, 45, NULL, '2020-11-29 08:57:48', '2020-11-29 08:57:48'),
(16, '194', NULL, NULL, NULL, 1, 24, NULL, '2020-11-29 09:00:44', '2020-11-29 09:00:44'),
(17, '206', NULL, NULL, NULL, 1, 24, NULL, '2020-11-29 09:00:44', '2020-11-29 09:00:44'),
(18, '205', NULL, NULL, NULL, 1, 3, NULL, '2020-11-29 09:00:44', '2020-11-29 09:00:44'),
(19, '243', NULL, NULL, NULL, 1, 25, NULL, '2020-11-29 09:28:03', '2021-02-21 08:13:03'),
(20, '244', NULL, NULL, NULL, 1, 46, NULL, '2020-11-29 09:28:03', '2020-12-06 06:19:03'),
(21, '245', NULL, NULL, NULL, 1, 18, NULL, '2020-11-29 09:28:03', '2020-12-06 06:19:03'),
(22, '246', NULL, NULL, NULL, 1, 30, NULL, '2020-11-29 09:28:03', '2020-12-06 06:19:03'),
(23, '122', NULL, NULL, NULL, 1, 5, NULL, '2020-11-29 10:02:44', '2020-12-09 06:59:43'),
(24, '124', NULL, NULL, NULL, 1, 20, NULL, '2020-11-29 10:02:44', '2020-12-09 06:59:43'),
(25, '123', NULL, NULL, NULL, 1, 6, NULL, '2020-11-29 10:02:44', '2020-11-29 10:02:44'),
(26, '237', NULL, NULL, NULL, 1, 24, NULL, '2020-11-29 10:02:44', '2020-11-29 10:02:44'),
(27, '119', NULL, NULL, NULL, 1, 37, NULL, '2020-11-29 10:08:24', '2020-12-04 03:44:15'),
(28, '167', NULL, NULL, NULL, 1, 12, NULL, '2020-11-29 10:08:24', '2020-11-29 10:08:25'),
(29, '247', NULL, NULL, NULL, 1, 4, NULL, '2020-11-29 10:30:14', '2020-11-29 10:30:14'),
(30, '248', NULL, NULL, NULL, 1, 17, NULL, '2020-11-29 10:30:14', '2021-01-08 00:40:18'),
(31, '215', NULL, NULL, NULL, 1, 16, NULL, '2020-11-29 10:30:14', '2020-12-16 08:25:43'),
(32, '193', NULL, NULL, NULL, 1, 6, NULL, '2020-11-29 10:30:14', '2020-11-29 10:30:14'),
(33, '148', NULL, NULL, NULL, 1, 12, NULL, '2020-11-29 10:30:14', '2020-11-29 10:30:14'),
(34, '88', NULL, NULL, NULL, 1, 23, NULL, '2020-11-29 10:32:44', '2020-11-29 10:32:44'),
(35, '89', NULL, NULL, NULL, 1, 25, NULL, '2020-11-29 10:32:44', '2020-11-29 10:32:44'),
(36, '100', NULL, NULL, NULL, 1, 12, NULL, '2020-11-29 10:38:50', '2020-11-29 10:38:50'),
(37, '249', NULL, NULL, NULL, 1, 17, NULL, '2020-11-29 10:38:50', '2020-12-09 06:55:12'),
(38, '101', NULL, NULL, NULL, 1, 4, NULL, '2020-11-29 10:38:50', '2020-12-16 00:24:55'),
(39, '91', NULL, NULL, NULL, 1, 12, NULL, '2020-11-29 10:38:50', '2020-12-04 04:58:23'),
(40, '180', NULL, NULL, NULL, 1, 4, NULL, '2020-11-29 10:41:52', '2020-11-29 10:41:52'),
(41, '176', NULL, NULL, NULL, 1, 4, NULL, '2020-11-29 10:41:52', '2021-01-08 00:40:18'),
(42, '175', NULL, NULL, NULL, 1, 6, NULL, '2020-11-29 10:41:52', '2020-11-29 10:41:52'),
(43, '178', NULL, NULL, NULL, 1, 3, NULL, '2020-11-29 10:41:53', '2020-11-29 10:41:53'),
(44, '179', NULL, NULL, NULL, 1, 12, NULL, '2020-11-29 10:41:53', '2020-11-29 10:41:53'),
(45, '177', NULL, NULL, NULL, 1, 12, NULL, '2020-11-29 10:41:53', '2020-11-29 10:41:53'),
(46, '199', NULL, NULL, NULL, 1, 11, NULL, '2020-11-29 11:46:35', '2021-09-02 09:15:06'),
(47, '197', NULL, NULL, NULL, 1, 3, NULL, '2020-11-29 11:46:35', '2020-11-29 11:46:35'),
(48, '198', NULL, NULL, NULL, 1, 3, NULL, '2020-11-29 11:46:36', '2020-11-29 11:46:36'),
(49, '200', NULL, NULL, NULL, 1, 24, NULL, '2020-11-29 11:46:36', '2020-11-29 11:46:36'),
(50, '201', NULL, NULL, NULL, 1, 11, NULL, '2020-11-29 11:46:36', '2021-02-11 04:38:13'),
(51, '196', NULL, NULL, NULL, 1, 12, NULL, '2020-11-29 11:46:36', '2020-11-29 11:46:36'),
(52, '195', NULL, NULL, NULL, 1, 17, NULL, '2020-11-29 11:46:36', '2020-12-10 00:02:32'),
(53, '103', NULL, NULL, NULL, 1, 12, NULL, '2020-11-29 11:48:54', '2020-12-04 04:58:23'),
(54, '104', NULL, NULL, NULL, 1, 8, NULL, '2020-11-29 11:48:54', '2020-11-29 11:48:54'),
(55, '105', NULL, NULL, NULL, 1, 13, NULL, '2020-11-29 11:48:55', '2020-12-04 04:58:23'),
(56, '106', NULL, NULL, NULL, 1, 11, NULL, '2020-11-29 11:48:55', '2020-12-10 00:02:32'),
(57, '218', NULL, NULL, NULL, 1, 580, NULL, '2020-11-29 11:57:04', '2020-12-06 04:26:50'),
(58, '221', NULL, NULL, NULL, 1, 166, NULL, '2020-11-29 11:57:04', '2020-11-29 11:57:04'),
(59, '228', NULL, NULL, NULL, 1, 24, NULL, '2020-11-29 11:58:37', '2020-12-03 23:14:47'),
(60, '227', NULL, NULL, NULL, 1, 72, NULL, '2020-12-04 03:07:54', '2020-12-04 04:58:25'),
(61, '226', NULL, NULL, NULL, 1, 48, NULL, '2020-12-04 03:07:54', '2020-12-04 04:58:25'),
(62, '266', NULL, NULL, NULL, 1, 24, NULL, '2020-12-04 03:07:54', '2020-12-04 03:07:54'),
(63, '229', NULL, NULL, NULL, 1, 24, NULL, '2020-12-04 03:07:54', '2020-12-04 03:07:54'),
(64, '231', NULL, NULL, NULL, 1, 24, NULL, '2020-12-04 03:07:54', '2020-12-04 03:07:54'),
(65, '232', NULL, NULL, NULL, 1, 24, NULL, '2020-12-04 03:07:54', '2020-12-04 03:07:54'),
(66, '268', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 03:40:35', '2020-12-10 00:02:32'),
(67, '267', NULL, NULL, NULL, 1, 4, NULL, '2020-12-04 03:40:35', '2020-12-04 03:40:35'),
(68, '145', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 03:40:35', '2020-12-04 03:40:35'),
(69, '146', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 03:40:35', '2020-12-04 03:40:35'),
(70, '144', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 03:40:35', '2020-12-04 03:40:35'),
(71, '153', NULL, NULL, NULL, 1, 4, NULL, '2020-12-04 03:40:35', '2020-12-04 03:40:35'),
(72, '154', NULL, NULL, NULL, 1, 4, NULL, '2020-12-04 03:40:36', '2020-12-04 03:40:36'),
(73, '152', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 03:40:36', '2020-12-04 03:40:36'),
(74, '86', NULL, NULL, NULL, 1, 4, NULL, '2020-12-04 03:40:36', '2020-12-04 03:40:36'),
(75, '219', NULL, NULL, NULL, 1, 216, NULL, '2020-12-04 03:48:28', '2020-12-06 04:26:50'),
(76, '223', NULL, NULL, NULL, 1, 80, NULL, '2020-12-04 03:48:28', '2020-12-06 04:26:50'),
(77, '224', NULL, NULL, NULL, 1, 83, NULL, '2020-12-04 03:48:28', '2020-12-06 04:26:50'),
(78, '211', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 03:51:19', '2020-12-04 03:51:19'),
(79, '212', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 03:51:19', '2020-12-04 03:51:19'),
(80, '210', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 03:51:19', '2020-12-04 03:51:19'),
(81, '208', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 03:58:58', '2020-12-04 03:58:58'),
(82, '209', NULL, NULL, NULL, 1, 9, NULL, '2020-12-04 03:58:58', '2020-12-04 03:58:58'),
(83, '169', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 03:58:58', '2021-01-08 00:40:18'),
(84, '230', NULL, NULL, NULL, 1, 24, NULL, '2020-12-04 04:08:26', '2020-12-04 04:08:26'),
(85, '120', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 04:08:26', '2020-12-04 04:08:26'),
(86, '118', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 04:08:26', '2020-12-09 06:59:43'),
(87, '99', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 04:17:07', '2020-12-04 04:58:22'),
(88, '98', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 04:17:07', '2020-12-04 04:58:22'),
(89, '97', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 04:17:07', '2020-12-04 04:58:22'),
(90, '96', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 04:17:07', '2020-12-04 04:58:22'),
(91, '95', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 04:17:07', '2020-12-04 04:58:22'),
(92, '94', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 04:17:07', '2020-12-04 04:58:22'),
(93, '192', NULL, NULL, NULL, 1, 20, NULL, '2020-12-04 04:17:07', '2021-01-08 00:40:18'),
(94, '93', NULL, NULL, NULL, 1, 5, NULL, '2020-12-04 04:17:07', '2020-12-08 07:40:59'),
(95, '125', NULL, NULL, NULL, 1, 74, NULL, '2020-12-04 04:17:07', '2020-12-15 08:29:12'),
(96, '137', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(97, '138', NULL, NULL, NULL, 1, 5, NULL, '2020-12-04 04:58:22', '2020-12-10 00:02:32'),
(98, '107', NULL, NULL, NULL, 1, 4, NULL, '2020-12-04 04:58:22', '2020-12-04 04:58:22'),
(99, '109', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 04:58:22', '2021-01-08 00:40:18'),
(100, '108', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 04:58:23', '2021-01-08 00:40:18'),
(101, '156', NULL, NULL, NULL, 1, 147, NULL, '2020-12-04 04:58:23', '2021-01-07 23:55:41'),
(102, '155', NULL, NULL, NULL, 1, 36, NULL, '2020-12-04 04:58:23', '2020-12-07 12:49:50'),
(103, '162', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(104, '163', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 04:58:23', '2020-12-11 01:39:52'),
(105, '161', NULL, NULL, NULL, 1, 18, NULL, '2020-12-04 04:58:23', '2020-12-05 02:17:18'),
(106, '159', NULL, NULL, NULL, 1, 9, NULL, '2020-12-04 04:58:23', '2020-12-04 11:45:11'),
(107, '157', NULL, NULL, NULL, 1, 5, NULL, '2020-12-04 04:58:23', '2020-12-05 00:46:57'),
(108, '158', NULL, NULL, NULL, 1, 5, NULL, '2020-12-04 04:58:23', '2020-12-05 00:46:57'),
(109, '111', NULL, NULL, NULL, 1, 18, NULL, '2020-12-04 04:58:23', '2020-12-07 12:49:49'),
(110, '110', NULL, NULL, NULL, 1, 24, NULL, '2020-12-04 04:58:23', '2020-12-07 12:49:50'),
(111, '151', NULL, NULL, NULL, 1, 34, NULL, '2020-12-04 04:58:23', '2020-12-07 12:49:50'),
(112, '90', NULL, NULL, NULL, 1, 11, NULL, '2020-12-04 04:58:23', '2020-12-06 06:19:03'),
(113, '171', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(114, '170', NULL, NULL, NULL, 1, 4, NULL, '2020-12-04 04:58:23', '2020-12-04 04:58:23'),
(115, '172', NULL, NULL, NULL, 1, 17, NULL, '2020-12-04 04:58:23', '2020-12-16 00:44:34'),
(116, '126', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(117, '127', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(118, '133', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 04:58:24', '2020-12-06 06:19:03'),
(119, '132', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 04:58:24', '2020-12-06 06:19:03'),
(120, '92', NULL, NULL, NULL, 1, 33, NULL, '2020-12-04 04:58:24', '2021-01-08 00:40:18'),
(121, '140', NULL, NULL, NULL, 1, 19, NULL, '2020-12-04 04:58:24', '2020-12-18 06:45:17'),
(122, '202', NULL, NULL, NULL, 1, 34, NULL, '2020-12-04 04:58:24', '2021-01-08 00:40:18'),
(123, '143', NULL, NULL, NULL, 1, 14, NULL, '2020-12-04 04:58:24', '2020-12-05 02:24:20'),
(124, '142', NULL, NULL, NULL, 1, 17, NULL, '2020-12-04 04:58:24', '2020-12-16 02:12:04'),
(125, '141', NULL, NULL, NULL, 1, 18, NULL, '2020-12-04 04:58:24', '2020-12-05 02:24:20'),
(126, '164', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(127, '165', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 04:58:24', '2020-12-10 00:02:31'),
(128, '166', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 04:58:24', '2020-12-10 00:02:31'),
(129, '128', NULL, NULL, NULL, 1, 4, NULL, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(130, '168', NULL, NULL, NULL, 1, 15, NULL, '2020-12-04 04:58:24', '2020-12-16 09:45:22'),
(131, '147', NULL, NULL, NULL, 1, 4, NULL, '2020-12-04 04:58:24', '2021-02-21 10:12:58'),
(132, '183', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(133, '181', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 04:58:24', '2021-02-21 10:09:35'),
(134, '182', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(135, '188', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(136, '184', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(137, '189', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(138, '185', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(139, '186', NULL, NULL, NULL, 1, 14, NULL, '2020-12-04 04:58:24', '2020-12-04 11:37:52'),
(140, '187', NULL, NULL, NULL, 1, 14, NULL, '2020-12-04 04:58:24', '2020-12-04 11:37:52'),
(141, '121', NULL, NULL, NULL, 1, 24, NULL, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(142, '117', NULL, NULL, NULL, 1, 5, NULL, '2020-12-04 04:58:24', '2020-12-09 07:52:56'),
(143, '139', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 04:58:24', '2020-12-04 04:58:24'),
(144, '134', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(145, '135', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(146, '136', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(147, '131', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(148, '234', NULL, NULL, NULL, 1, 48, NULL, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(149, '130', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(150, '113', NULL, NULL, NULL, 1, 9, NULL, '2020-12-04 04:58:25', '2020-12-08 01:08:33'),
(151, '114', NULL, NULL, NULL, 1, 15, NULL, '2020-12-04 04:58:25', '2020-12-05 01:29:46'),
(152, '115', NULL, NULL, NULL, 1, 15, NULL, '2020-12-04 04:58:25', '2020-12-05 01:29:46'),
(153, '102', NULL, NULL, NULL, 1, 24, NULL, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(154, '87', NULL, NULL, NULL, 1, 22, NULL, '2020-12-04 04:58:25', '2020-12-09 06:59:43'),
(155, '222', NULL, NULL, NULL, 1, 194, NULL, '2020-12-04 04:58:25', '2020-12-04 04:58:25'),
(156, '287', NULL, NULL, NULL, 1, 24, NULL, '2020-12-04 10:59:08', '2020-12-04 10:59:08'),
(157, '262', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 11:02:21', '2020-12-04 11:02:21'),
(158, '263', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 11:02:22', '2020-12-04 11:02:22'),
(159, '264', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 11:02:22', '2020-12-04 11:02:22'),
(160, '265', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 11:02:22', '2020-12-04 11:02:22'),
(161, '355', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(162, '356', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(163, '251', NULL, NULL, NULL, 1, 28, NULL, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(164, '254', NULL, NULL, NULL, 1, 56, NULL, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(165, '250', NULL, NULL, NULL, 1, 60, NULL, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(166, '253', NULL, NULL, NULL, 1, 26, NULL, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(167, '255', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(168, '256', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(169, '257', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(170, '258', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(171, '259', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(172, '260', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 11:13:25', '2020-12-04 11:13:25'),
(173, '252', NULL, NULL, NULL, 1, 24, NULL, '2020-12-04 11:13:25', '2020-12-06 06:19:03'),
(174, '288', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 11:37:52', '2020-12-04 11:37:52'),
(175, '289', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 11:37:52', '2020-12-04 11:37:52'),
(176, '290', NULL, NULL, NULL, 1, 3, NULL, '2020-12-04 11:37:52', '2020-12-04 11:37:52'),
(177, '291', NULL, NULL, NULL, 1, 1, NULL, '2020-12-04 11:40:52', '2020-12-04 11:45:11'),
(178, '160', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 11:40:52', '2020-12-04 11:45:11'),
(179, '357', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 11:45:11', '2020-12-04 11:45:11'),
(180, '261', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 11:49:52', '2020-12-04 11:49:52'),
(181, '292', NULL, NULL, NULL, 1, 4, NULL, '2020-12-04 11:50:29', '2020-12-04 11:50:29'),
(182, '293', NULL, NULL, NULL, 1, 5, NULL, '2020-12-04 11:57:04', '2020-12-04 11:57:04'),
(183, '294', NULL, NULL, NULL, 1, 5, NULL, '2020-12-04 11:57:04', '2020-12-04 11:57:04'),
(184, '295', NULL, NULL, NULL, 1, 35, NULL, '2020-12-04 12:03:38', '2020-12-07 13:01:13'),
(185, '112', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 23:24:35', '2020-12-04 23:24:35'),
(186, '204', NULL, NULL, NULL, 1, 5, NULL, '2020-12-04 23:24:35', '2020-12-08 00:50:55'),
(187, '116', NULL, NULL, NULL, 1, 18, NULL, '2020-12-04 23:24:35', '2020-12-07 23:52:39'),
(188, '207', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 23:24:35', '2020-12-04 23:24:35'),
(189, '269', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 23:31:25', '2020-12-04 23:31:25'),
(190, '270', NULL, NULL, NULL, 1, 4, NULL, '2020-12-04 23:31:25', '2020-12-04 23:31:25'),
(191, '271', NULL, NULL, NULL, 1, 6, NULL, '2020-12-04 23:31:25', '2020-12-04 23:31:25'),
(192, '278', NULL, NULL, NULL, 1, 8, NULL, '2020-12-04 23:36:19', '2020-12-05 00:02:02'),
(193, '279', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 23:36:19', '2020-12-08 23:33:07'),
(194, '280', NULL, NULL, NULL, 1, 7, NULL, '2020-12-04 23:36:19', '2020-12-05 00:02:02'),
(195, '273', NULL, NULL, NULL, 1, 2, NULL, '2020-12-04 23:40:58', '2020-12-04 23:40:58'),
(196, '272', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 23:40:58', '2020-12-04 23:40:58'),
(197, '274', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 23:40:58', '2020-12-22 09:15:33'),
(198, '275', NULL, NULL, NULL, 1, 7, NULL, '2020-12-04 23:40:58', '2020-12-16 00:24:55'),
(199, '276', NULL, NULL, NULL, 1, 12, NULL, '2020-12-04 23:55:43', '2020-12-05 00:00:21'),
(200, '277', NULL, NULL, NULL, 1, 8, NULL, '2020-12-05 00:00:21', '2020-12-05 00:00:21'),
(201, '282', NULL, NULL, NULL, 1, 1, NULL, '2020-12-05 00:02:02', '2020-12-05 00:02:02'),
(202, '283', NULL, NULL, NULL, 1, 8, NULL, '2020-12-05 00:11:43', '2020-12-05 00:11:43'),
(203, '342', NULL, NULL, NULL, 1, 3, NULL, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(204, '343', NULL, NULL, NULL, 1, 3, NULL, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(205, '341', NULL, NULL, NULL, 1, 2, NULL, '2020-12-05 00:46:57', '2020-12-18 07:20:29'),
(206, '284', NULL, NULL, NULL, 1, 8, NULL, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(207, '344', NULL, NULL, NULL, 1, 2, NULL, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(208, '345', NULL, NULL, NULL, 1, 2, NULL, '2020-12-05 00:46:57', '2020-12-05 00:46:57'),
(209, '346', NULL, NULL, NULL, 1, 24, NULL, '2020-12-05 00:46:57', '2021-01-07 23:55:41'),
(210, '349', NULL, NULL, NULL, 1, 15, NULL, '2020-12-05 00:46:58', '2020-12-10 00:02:31'),
(211, '347', NULL, NULL, NULL, 1, 2, NULL, '2020-12-05 00:46:58', '2020-12-05 00:46:58'),
(212, '350', NULL, NULL, NULL, 1, 6, NULL, '2020-12-05 00:46:58', '2020-12-05 00:46:58'),
(213, '348', NULL, NULL, NULL, 1, 4, NULL, '2020-12-05 00:46:58', '2020-12-10 00:02:32'),
(214, '351', NULL, NULL, NULL, 1, 6, NULL, '2020-12-05 00:48:30', '2020-12-05 00:48:30'),
(215, '352', NULL, NULL, NULL, 1, 6, NULL, '2020-12-05 00:48:30', '2020-12-05 00:48:30'),
(216, '353', NULL, NULL, NULL, 1, 7, NULL, '2020-12-05 00:48:30', '2020-12-05 00:48:30'),
(217, '354', NULL, NULL, NULL, 1, 7, NULL, '2020-12-05 00:48:30', '2020-12-05 00:48:30'),
(218, '302', NULL, NULL, NULL, 1, 5, NULL, '2020-12-05 00:49:39', '2020-12-10 00:02:31'),
(219, '303', NULL, NULL, NULL, 1, 4, NULL, '2020-12-05 00:49:39', '2020-12-05 00:49:39'),
(220, '297', NULL, NULL, NULL, 1, 12, NULL, '2020-12-05 01:12:03', '2020-12-05 01:29:46'),
(221, '298', NULL, NULL, NULL, 1, 12, NULL, '2020-12-05 01:12:03', '2020-12-05 01:29:46'),
(222, '300', NULL, NULL, NULL, 1, 12, NULL, '2020-12-05 01:12:03', '2020-12-05 01:29:46'),
(223, '301', NULL, NULL, NULL, 1, 6, NULL, '2020-12-05 01:12:03', '2020-12-05 01:29:46'),
(224, '359', NULL, NULL, NULL, 1, 3, NULL, '2020-12-05 01:29:46', '2020-12-05 01:29:46'),
(225, '296', NULL, NULL, NULL, 1, 4, NULL, '2020-12-05 01:29:46', '2020-12-05 01:29:46'),
(226, '306', NULL, NULL, NULL, 1, 12, NULL, '2020-12-05 01:43:14', '2020-12-05 01:43:14'),
(227, '307', NULL, NULL, NULL, 1, 12, NULL, '2020-12-05 01:43:14', '2020-12-05 01:43:14'),
(228, '308', NULL, NULL, NULL, 1, 12, NULL, '2020-12-05 01:43:14', '2020-12-05 01:43:14'),
(229, '310', NULL, NULL, NULL, 1, 1, NULL, '2020-12-05 01:43:14', '2020-12-05 01:43:14'),
(230, '309', NULL, NULL, NULL, 1, 1, NULL, '2020-12-05 01:43:14', '2020-12-05 01:43:14'),
(231, '311', NULL, NULL, NULL, 1, 2, NULL, '2020-12-05 01:43:15', '2020-12-05 01:43:15'),
(232, '312', NULL, NULL, NULL, 1, 52, NULL, '2020-12-05 01:48:59', '2020-12-05 01:48:59'),
(233, '315', NULL, NULL, NULL, 1, 24, NULL, '2020-12-05 01:48:59', '2020-12-05 01:48:59'),
(234, '313', NULL, NULL, NULL, 1, 12, NULL, '2020-12-05 01:48:59', '2020-12-05 01:48:59'),
(235, '314', NULL, NULL, NULL, 1, 12, NULL, '2020-12-05 01:48:59', '2020-12-05 01:48:59'),
(236, '316', NULL, NULL, NULL, 1, 6, NULL, '2020-12-05 01:51:23', '2020-12-05 01:51:23'),
(237, '317', NULL, NULL, NULL, 1, 4, NULL, '2020-12-05 01:51:23', '2020-12-10 00:02:31'),
(238, '318', NULL, NULL, NULL, 1, 24, NULL, '2020-12-05 01:51:23', '2020-12-05 01:51:23'),
(239, '319', NULL, NULL, NULL, 1, 2, NULL, '2020-12-05 02:08:26', '2020-12-05 02:17:18'),
(240, '320', NULL, NULL, NULL, 1, 2, NULL, '2020-12-05 02:08:26', '2020-12-05 02:17:18'),
(241, '321', NULL, NULL, NULL, 1, 2, NULL, '2020-12-05 02:08:26', '2020-12-05 02:17:18'),
(242, '322', NULL, NULL, NULL, 1, 6, NULL, '2020-12-05 02:08:26', '2020-12-05 02:17:18'),
(243, '323', NULL, NULL, NULL, 1, 24, NULL, '2020-12-05 02:08:26', '2020-12-05 02:17:18'),
(244, '360', NULL, NULL, NULL, 1, 12, NULL, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(245, '328', NULL, NULL, NULL, 1, 6, NULL, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(246, '325', NULL, NULL, NULL, 1, 6, NULL, '2020-12-05 02:17:18', '2020-12-08 09:22:04'),
(247, '326', NULL, NULL, NULL, 1, 6, NULL, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(248, '324', NULL, NULL, NULL, 1, 5, NULL, '2020-12-05 02:17:18', '2020-12-23 05:42:18'),
(249, '327', NULL, NULL, NULL, 1, 6, NULL, '2020-12-05 02:17:18', '2020-12-05 02:17:18'),
(250, '330', NULL, NULL, NULL, 1, 3, NULL, '2020-12-05 02:18:44', '2020-12-05 02:18:44'),
(251, '329', NULL, NULL, NULL, 1, 3, NULL, '2020-12-05 02:18:44', '2020-12-05 02:18:44'),
(252, '331', NULL, NULL, NULL, 1, 6, NULL, '2020-12-05 02:18:44', '2020-12-05 02:18:44'),
(253, '332', NULL, NULL, NULL, 1, 4, NULL, '2020-12-05 02:19:55', '2020-12-05 02:19:55'),
(254, '333', NULL, NULL, NULL, 1, 4, NULL, '2020-12-05 02:19:55', '2020-12-05 02:19:55'),
(255, '334', NULL, NULL, NULL, 1, 4, NULL, '2020-12-05 02:19:55', '2020-12-05 02:19:55'),
(256, '335', NULL, NULL, NULL, 1, 4, NULL, '2020-12-05 02:19:55', '2020-12-05 02:19:55'),
(257, '336', NULL, NULL, NULL, 1, 2, NULL, '2020-12-05 02:19:55', '2020-12-05 02:19:55'),
(258, '337', NULL, NULL, NULL, 1, 3, NULL, '2020-12-05 02:24:20', '2020-12-05 02:24:20'),
(259, '338', NULL, NULL, NULL, 1, 12, NULL, '2020-12-05 02:24:20', '2020-12-05 02:24:20'),
(260, '339', NULL, NULL, NULL, 1, 16, NULL, '2020-12-05 02:24:20', '2020-12-05 02:24:20'),
(261, '340', NULL, NULL, NULL, 1, 36, NULL, '2020-12-05 02:24:20', '2020-12-05 02:24:20'),
(262, '285', NULL, NULL, NULL, 1, 12, NULL, '2020-12-05 02:25:39', '2020-12-05 02:25:39'),
(263, '286', NULL, NULL, NULL, 1, 4, NULL, '2020-12-05 02:25:39', '2020-12-05 02:25:39'),
(264, '281', NULL, NULL, NULL, 1, 3, NULL, '2020-12-05 02:26:59', '2020-12-05 02:26:59'),
(265, '400', NULL, NULL, NULL, 1, 12, NULL, '2020-12-06 04:18:47', '2020-12-06 04:18:47'),
(266, '401', NULL, NULL, NULL, 1, 12, NULL, '2020-12-06 04:18:47', '2020-12-06 04:18:47'),
(267, '402', NULL, NULL, NULL, 1, 12, NULL, '2020-12-06 04:18:47', '2020-12-06 04:18:47'),
(268, '405', NULL, NULL, NULL, 1, 2, NULL, '2020-12-06 04:54:40', '2020-12-06 04:54:40'),
(269, '403', NULL, NULL, NULL, 1, 45, NULL, '2020-12-06 04:56:47', '2020-12-06 04:56:47'),
(270, '404', NULL, NULL, NULL, 1, 3, NULL, '2020-12-06 04:56:47', '2020-12-06 04:56:47'),
(271, '406', NULL, NULL, NULL, 1, 1, NULL, '2020-12-06 04:56:47', '2020-12-06 04:56:47'),
(272, '407', NULL, NULL, NULL, 1, 2, NULL, '2020-12-06 04:56:47', '2020-12-06 04:56:47'),
(273, '367', NULL, NULL, NULL, 1, 600, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(274, '368', NULL, NULL, NULL, 1, 50, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(275, '369', NULL, NULL, NULL, 1, 50, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(276, '370', NULL, NULL, NULL, 1, 25000, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(277, '371', NULL, NULL, NULL, 1, 50, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(278, '372', NULL, NULL, NULL, 1, 15, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(279, '373', NULL, NULL, NULL, 1, 20, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(280, '374', NULL, NULL, NULL, 1, 5, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(281, '375', NULL, NULL, NULL, 1, 20, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(282, '376', NULL, NULL, NULL, 1, 10, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(283, '377', NULL, NULL, NULL, 1, 10, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(284, '378', NULL, NULL, NULL, 1, 5, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(285, '379', NULL, NULL, NULL, 1, 5, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(286, '380', NULL, NULL, NULL, 1, 5, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(287, '381', NULL, NULL, NULL, 1, 3, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(288, '382', NULL, NULL, NULL, 1, 12, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(289, '385', NULL, NULL, NULL, 1, 12, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(290, '386', NULL, NULL, NULL, 1, 12, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(291, '387', NULL, NULL, NULL, 1, 40, NULL, '2020-12-06 05:14:02', '2020-12-06 06:19:04'),
(292, '389', NULL, NULL, NULL, 1, 3, NULL, '2020-12-06 05:25:15', '2020-12-06 06:19:04'),
(293, '391', NULL, NULL, NULL, 1, 1, NULL, '2020-12-06 05:25:15', '2020-12-06 06:19:04'),
(294, '392', NULL, NULL, NULL, 1, 3, NULL, '2020-12-06 05:25:15', '2020-12-06 09:21:52'),
(295, '393', NULL, NULL, NULL, 1, 0.45, NULL, '2020-12-06 05:25:15', '2020-12-06 09:21:52'),
(296, '390', NULL, NULL, NULL, 1, 0.25, NULL, '2020-12-06 05:25:16', '2020-12-06 06:19:04'),
(297, '394', NULL, NULL, NULL, 1, 6, NULL, '2020-12-06 05:25:16', '2020-12-06 06:19:04'),
(298, '395', NULL, NULL, NULL, 1, 250, NULL, '2020-12-06 05:25:16', '2020-12-06 06:19:04'),
(299, '396', NULL, NULL, NULL, 1, 1000, NULL, '2020-12-06 05:25:16', '2020-12-06 09:21:52'),
(300, '397', NULL, NULL, NULL, 1, 1000, NULL, '2020-12-06 05:25:16', '2020-12-06 06:19:05'),
(301, '398', NULL, NULL, NULL, 1, 1, NULL, '2020-12-06 05:25:16', '2020-12-06 06:19:05'),
(302, '399', NULL, NULL, NULL, 1, 0.5, NULL, '2020-12-06 05:25:16', '2020-12-06 06:19:05'),
(303, '408', NULL, NULL, NULL, 1, 70, NULL, '2020-12-06 06:13:36', '2020-12-06 06:19:05'),
(304, '410', NULL, NULL, NULL, 1, 10, NULL, '2020-12-06 06:19:05', '2020-12-06 06:19:05'),
(305, '412', NULL, NULL, NULL, 1, 1, NULL, '2020-12-06 09:09:14', '2020-12-06 09:21:52'),
(306, '413', NULL, NULL, NULL, 1, 1, NULL, '2020-12-06 09:09:14', '2020-12-06 09:21:52'),
(307, '414', NULL, NULL, NULL, 1, 0.5, NULL, '2020-12-06 09:09:14', '2020-12-06 09:21:52'),
(308, '415', NULL, NULL, NULL, 1, 0.5, NULL, '2020-12-06 09:09:14', '2020-12-06 09:21:52'),
(309, '416', NULL, NULL, NULL, 1, 6, NULL, '2020-12-06 09:09:15', '2020-12-06 09:21:52'),
(310, '411', NULL, NULL, NULL, 1, 0, NULL, '2020-12-06 09:09:15', '2020-12-06 09:21:51'),
(311, '417', NULL, NULL, NULL, 1, 1, NULL, '2020-12-06 09:09:15', '2020-12-06 09:21:52'),
(312, '419', NULL, NULL, NULL, 1, 0.25, NULL, '2020-12-06 09:09:15', '2020-12-06 09:21:52'),
(313, '420', NULL, NULL, NULL, 1, 0.5, NULL, '2020-12-06 09:09:15', '2020-12-06 09:21:52'),
(314, '421', NULL, NULL, NULL, 1, 1, NULL, '2020-12-06 09:09:15', '2020-12-06 09:21:52'),
(315, '423', NULL, NULL, NULL, 1, 1, NULL, '2020-12-06 09:09:15', '2020-12-06 09:21:52'),
(316, '424', NULL, NULL, NULL, 1, 2, NULL, '2020-12-06 09:12:55', '2020-12-06 09:21:52'),
(317, '418', NULL, NULL, NULL, 1, 12, NULL, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(318, '422', NULL, NULL, NULL, 1, 1, NULL, '2020-12-06 09:21:52', '2020-12-06 09:21:52'),
(319, '428', NULL, NULL, NULL, 1, 12, NULL, '2020-12-06 10:33:57', '2020-12-06 10:33:57'),
(320, '426', NULL, NULL, NULL, 1, 8, NULL, '2020-12-06 10:33:57', '2020-12-23 05:42:17'),
(321, '425', NULL, NULL, NULL, 1, 10, NULL, '2020-12-06 10:33:57', '2020-12-10 00:02:32'),
(322, '427', NULL, NULL, NULL, 1, 24, NULL, '2020-12-06 10:33:57', '2020-12-06 10:33:57'),
(323, '429', NULL, NULL, NULL, 1, 36, NULL, '2020-12-07 11:12:00', '2020-12-07 12:49:49'),
(324, '464', NULL, NULL, NULL, 1, 12, NULL, '2020-12-07 11:20:27', '2020-12-07 12:49:49'),
(325, '460', NULL, NULL, NULL, 1, 6, NULL, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(326, '462', NULL, NULL, NULL, 1, 5, NULL, '2020-12-07 12:49:50', '2020-12-09 08:00:42'),
(327, '463', NULL, NULL, NULL, 1, 3, NULL, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(328, '458', NULL, NULL, NULL, 1, 13, NULL, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(329, '449', NULL, NULL, NULL, 1, 25, NULL, '2020-12-07 12:49:50', '2023-03-30 04:02:22'),
(330, '448', NULL, NULL, NULL, 1, 12, NULL, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(331, '450', NULL, NULL, NULL, 1, 1, NULL, '2020-12-07 12:49:50', '2023-03-30 04:02:22'),
(332, '437', NULL, NULL, NULL, 1, 12, NULL, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(333, '459', NULL, NULL, NULL, 1, 12, NULL, '2020-12-07 12:49:50', '2020-12-07 12:49:50'),
(334, '451', NULL, NULL, NULL, 1, 3, NULL, '2020-12-07 12:52:01', '2020-12-07 12:52:01'),
(335, '452', NULL, NULL, NULL, 1, 3, NULL, '2020-12-07 12:52:01', '2020-12-07 12:52:01'),
(336, '435', NULL, NULL, NULL, 1, 5, NULL, '2020-12-07 13:01:13', '2020-12-08 07:44:46'),
(337, '453', NULL, NULL, NULL, 1, 3, NULL, '2020-12-07 13:01:13', '2020-12-07 13:01:13'),
(338, '454', NULL, NULL, NULL, 1, 3, NULL, '2020-12-07 13:01:13', '2020-12-07 13:01:13'),
(339, '434', NULL, NULL, NULL, 1, 16, NULL, '2020-12-07 13:01:13', '2020-12-07 13:01:13'),
(340, '304', NULL, NULL, NULL, 1, 6, NULL, '2020-12-07 13:02:54', '2020-12-07 13:02:54'),
(341, '305', NULL, NULL, NULL, 1, 3, NULL, '2020-12-07 13:02:54', '2021-01-08 00:40:18'),
(342, '433', NULL, NULL, NULL, 1, 2, NULL, '2020-12-07 13:09:38', '2020-12-07 13:09:38'),
(343, '457', NULL, NULL, NULL, 1, 2, NULL, '2020-12-07 13:09:38', '2020-12-07 13:09:38'),
(344, '432', NULL, NULL, NULL, 1, 2, NULL, '2020-12-07 13:09:39', '2020-12-07 13:09:39'),
(345, '436', NULL, NULL, NULL, 1, 12, NULL, '2020-12-07 13:09:39', '2020-12-07 13:09:39'),
(346, '439', NULL, NULL, NULL, 1, 12, NULL, '2020-12-07 13:14:39', '2020-12-07 13:14:39'),
(347, '440', NULL, NULL, NULL, 1, 12, NULL, '2020-12-07 13:14:39', '2020-12-07 13:14:39'),
(348, '438', NULL, NULL, NULL, 1, 12, NULL, '2020-12-07 13:14:39', '2020-12-07 13:14:39'),
(349, '430', NULL, NULL, NULL, 1, 72, NULL, '2020-12-07 13:14:39', '2020-12-07 13:14:39'),
(350, '431', NULL, NULL, NULL, 1, 72, NULL, '2020-12-07 13:14:39', '2020-12-07 13:14:39'),
(351, '441', NULL, NULL, NULL, 1, 5, NULL, '2020-12-07 13:16:00', '2020-12-07 13:16:00'),
(352, '442', NULL, NULL, NULL, 1, 1000, NULL, '2020-12-07 13:16:01', '2020-12-07 13:16:01'),
(353, '443', NULL, NULL, NULL, 1, 1, NULL, '2020-12-07 13:16:37', '2020-12-07 13:16:37'),
(354, '466', NULL, NULL, NULL, 1, 3, NULL, '2020-12-08 06:50:09', '2020-12-08 06:50:09'),
(355, '465', NULL, NULL, NULL, 1, 13, NULL, '2020-12-08 06:50:09', '2020-12-08 06:50:09'),
(356, '467', NULL, NULL, NULL, 1, 4, NULL, '2020-12-08 06:50:09', '2020-12-08 06:50:09'),
(357, '468', NULL, NULL, NULL, 1, 13, NULL, '2020-12-08 06:50:09', '2020-12-08 06:50:09'),
(358, '469', NULL, NULL, NULL, 1, 4, NULL, '2020-12-08 06:50:09', '2020-12-08 06:50:09'),
(359, '470', NULL, NULL, NULL, 1, 3, NULL, '2020-12-08 08:25:14', '2020-12-08 08:25:14'),
(360, '471', NULL, NULL, NULL, 1, 3, NULL, '2020-12-08 08:25:14', '2020-12-08 08:25:14'),
(361, '473', NULL, NULL, NULL, 1, 6, NULL, '2020-12-08 23:30:17', '2020-12-08 23:30:17'),
(362, '476', NULL, NULL, NULL, 1, 12, NULL, '2020-12-09 00:02:46', '2020-12-09 00:02:46'),
(363, '477', NULL, NULL, NULL, 1, 12, NULL, '2020-12-09 00:02:46', '2020-12-09 00:02:46'),
(364, '478', NULL, NULL, NULL, 1, 3, NULL, '2020-12-09 00:17:08', '2020-12-09 00:23:14'),
(365, '479', NULL, NULL, NULL, 1, 6, NULL, '2020-12-09 00:17:08', '2020-12-09 00:23:14'),
(366, '480', NULL, NULL, NULL, 1, 144, NULL, '2020-12-09 00:23:14', '2020-12-09 00:23:14'),
(367, '481', NULL, NULL, NULL, 1, 0, NULL, '2020-12-09 10:05:56', '2020-12-09 10:07:12'),
(368, '488', NULL, NULL, NULL, 1, 1, NULL, '2020-12-11 01:39:52', '2020-12-11 01:39:52'),
(369, '490', NULL, NULL, NULL, 1, 2, NULL, '2020-12-11 01:39:52', '2020-12-11 01:39:52'),
(370, '149', NULL, NULL, NULL, 1, 2, NULL, '2020-12-11 01:39:52', '2020-12-11 01:39:52'),
(371, '489', NULL, NULL, NULL, 1, 1, NULL, '2020-12-11 01:39:52', '2020-12-11 01:39:52'),
(372, '491', NULL, NULL, NULL, 1, 5, NULL, '2020-12-16 00:44:34', '2020-12-16 00:44:34'),
(373, '492', NULL, NULL, NULL, 1, 2, NULL, '2020-12-16 00:54:44', '2020-12-16 00:54:44'),
(374, '493', NULL, NULL, NULL, 1, 4, NULL, '2020-12-16 00:54:44', '2020-12-17 02:15:23'),
(375, '494', NULL, NULL, NULL, 1, 4, NULL, '2020-12-16 00:54:44', '2020-12-16 00:54:44'),
(376, '495', NULL, NULL, NULL, 1, 48, NULL, '2020-12-16 01:04:29', '2020-12-16 01:04:29'),
(377, '496', NULL, NULL, NULL, 1, 24, NULL, '2020-12-16 01:24:25', '2020-12-16 01:24:25'),
(378, '497', NULL, NULL, NULL, 1, 12, NULL, '2020-12-16 01:51:37', '2020-12-16 01:51:37'),
(379, '498', NULL, NULL, NULL, 1, 10, NULL, '2020-12-16 06:25:23', '2020-12-16 06:25:23'),
(380, '499', NULL, NULL, NULL, 1, 2, NULL, '2020-12-16 07:02:54', '2020-12-16 07:02:54'),
(381, '500', NULL, NULL, NULL, 1, 24, NULL, '2020-12-16 07:02:54', '2020-12-16 07:02:54'),
(382, '501', NULL, NULL, NULL, 1, 24, NULL, '2020-12-16 07:02:54', '2020-12-16 07:02:54'),
(383, '502', NULL, NULL, NULL, 1, 12, NULL, '2020-12-16 07:02:54', '2020-12-16 07:02:54'),
(384, '503', NULL, NULL, NULL, 1, 19, NULL, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(385, '506', NULL, NULL, NULL, 1, 7, NULL, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(386, '504', NULL, NULL, NULL, 1, 6, NULL, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(387, '505', NULL, NULL, NULL, 1, 6, NULL, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(388, '507', NULL, NULL, NULL, 1, 7, NULL, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(389, '508', NULL, NULL, NULL, 1, 3, NULL, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(390, '509', NULL, NULL, NULL, 1, 3, NULL, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(391, '510', NULL, NULL, NULL, 1, 38, NULL, '2020-12-16 09:45:22', '2020-12-16 09:45:22'),
(392, '511', NULL, NULL, NULL, 1, 20, NULL, '2020-12-17 00:48:57', '2020-12-17 00:48:57'),
(393, '512', NULL, NULL, NULL, 1, 1, NULL, '2020-12-17 00:48:57', '2020-12-17 00:48:57'),
(394, '513', NULL, NULL, NULL, 1, 6, NULL, '2020-12-17 01:50:26', '2020-12-17 01:50:26'),
(395, '515', NULL, NULL, NULL, 1, 3, NULL, '2020-12-17 02:01:06', '2020-12-17 02:01:06'),
(396, '514', NULL, NULL, NULL, 1, 14, NULL, '2020-12-17 02:01:06', '2020-12-17 02:01:06'),
(397, '517', NULL, NULL, NULL, 1, 2, NULL, '2020-12-17 02:14:26', '2020-12-17 02:14:26'),
(398, '516', NULL, NULL, NULL, 1, 8, NULL, '2020-12-17 02:15:23', '2020-12-17 02:15:23'),
(399, '519', NULL, NULL, NULL, 1, 0, NULL, '2020-12-19 23:31:54', '2020-12-19 23:34:34'),
(400, '520', NULL, NULL, NULL, 1, 0, NULL, '2020-12-19 23:31:54', '2020-12-19 23:34:34'),
(401, '521', NULL, NULL, NULL, 1, 0, NULL, '2020-12-19 23:31:54', '2020-12-19 23:34:34'),
(402, '522', NULL, NULL, NULL, 1, 2, NULL, '2020-12-20 02:47:18', '2020-12-20 02:47:18'),
(403, '523', NULL, NULL, NULL, 1, 2, NULL, '2020-12-20 02:47:18', '2020-12-20 02:47:18'),
(404, '524', NULL, NULL, NULL, 1, 1, NULL, '2020-12-20 02:47:18', '2020-12-20 02:47:18'),
(405, '525', NULL, NULL, NULL, 1, 2, NULL, '2020-12-20 02:47:18', '2020-12-20 02:47:18'),
(406, '526', NULL, NULL, NULL, 1, 1, NULL, '2020-12-20 06:46:29', '2020-12-20 06:46:29'),
(407, '527', NULL, NULL, NULL, 1, 1, NULL, '2020-12-20 06:46:29', '2020-12-20 06:46:29'),
(408, '528', NULL, NULL, NULL, 1, 1, NULL, '2020-12-20 06:46:29', '2020-12-20 06:46:29'),
(409, '529', NULL, NULL, NULL, 1, 0, NULL, '2020-12-21 00:46:09', '2020-12-21 00:46:46'),
(410, '531', NULL, NULL, NULL, 1, 6, NULL, '2020-12-22 08:00:23', '2020-12-22 08:00:23'),
(411, '532', NULL, NULL, NULL, 1, 2, NULL, '2020-12-22 08:00:23', '2020-12-22 08:00:23'),
(412, '530', NULL, NULL, NULL, 1, 6, NULL, '2020-12-22 08:00:23', '2020-12-22 08:00:23'),
(413, '533', NULL, NULL, NULL, 1, 2, NULL, '2020-12-22 08:00:23', '2020-12-22 08:00:23'),
(414, '534', NULL, NULL, NULL, 1, 36, NULL, '2020-12-22 08:33:21', '2020-12-22 08:33:21'),
(415, '535', NULL, NULL, NULL, 1, 12, NULL, '2020-12-22 08:41:45', '2020-12-22 08:41:45'),
(416, '364', NULL, NULL, NULL, 1, 5, NULL, '2021-01-07 23:39:50', '2021-01-08 00:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `currency_id`, `exchange_rate`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(7, 'pr-20201128-120252', 1, 1, 1, NULL, NULL, 1, 6, 0, 0, 315, 0, 0, NULL, NULL, 315, 315, 1, 2, NULL, NULL, '2020-11-28 12:02:52', '2020-11-28 12:03:41'),
(8, 'pr-20201128-083532', 1, 1, 1, NULL, NULL, 5, 35, 0, 0, 3425.92, 0, 0, NULL, NULL, 3425.92, 3425.92, 1, 2, NULL, NULL, '2020-11-29 08:35:32', '2020-11-29 08:36:00'),
(9, 'pr-20201128-085747', 1, 1, 1, NULL, NULL, 3, 97, 0, 0, 499.65, 0, 0, NULL, NULL, 499.65, 499.65, 1, 2, NULL, NULL, '2020-11-29 08:57:47', '2020-12-06 04:21:35'),
(10, 'pr-20201128-090044', 1, 1, 1, NULL, NULL, 3, 51, 0, 0, 960.84, 0, 0, NULL, NULL, 960.84, 960.84, 1, 2, NULL, NULL, '2020-11-29 09:00:44', '2020-11-29 09:01:28'),
(11, 'pr-20201128-092803', 1, 1, 1, NULL, NULL, 4, 35, 0, 0, 324, 0, 0, NULL, NULL, 324, 324, 1, 2, NULL, NULL, '2020-11-29 09:28:03', '2020-11-29 09:28:22'),
(12, 'pr-20201128-100244', 1, 1, 1, NULL, NULL, 4, 60, 0, 0, 690, 0, 0, NULL, NULL, 690, 690, 1, 2, NULL, NULL, '2020-11-29 10:02:44', '2020-12-06 04:21:44'),
(13, 'pr-20201128-100824', 1, 1, 1, NULL, NULL, 2, 18, 0, 0, 1110, 0, 0, NULL, NULL, 1110, 1110, 1, 2, NULL, NULL, '2020-11-29 10:08:24', '2020-12-06 04:21:54'),
(14, 'pr-20201128-100825', 1, 1, 1, NULL, NULL, 2, 18, 0, 0, 1110, 0, 0, NULL, NULL, 1110, 1110, 1, 2, NULL, NULL, '2020-11-29 10:08:25', '2020-12-06 04:22:07'),
(15, 'pr-20201128-103014', 1, 1, 1, NULL, NULL, 5, 37, 0, 0, 1384, 0, 0, NULL, NULL, 1384, 1384, 1, 2, NULL, NULL, '2020-11-29 10:30:14', '2020-12-06 04:22:15'),
(16, 'pr-20201128-103243', 1, 1, 1, NULL, NULL, 2, 48, 0, 0, 294.9, 0, 0, NULL, NULL, 294.9, 294.9, 1, 2, NULL, NULL, '2020-11-29 10:32:43', '2020-12-06 04:22:23'),
(17, 'pr-20201128-103850', 1, 1, 1, NULL, NULL, 4, 36, 0, 0, 2049, 0, 0, NULL, NULL, 2049, 2049, 1, 2, NULL, NULL, '2020-11-29 10:38:50', '2020-12-06 04:22:33'),
(18, 'pr-20201128-104152', 1, 1, 1, NULL, NULL, 6, 43, 0, 0, 6983, 0, 0, NULL, NULL, 6983, 6983, 1, 2, NULL, NULL, '2020-11-29 10:41:52', '2020-12-06 04:22:41'),
(19, 'pr-20201128-114635', 1, 1, 1, NULL, NULL, 7, 78, 0, 0, 6858.24, 0, 0, NULL, NULL, 6858.24, 6858.24, 1, 2, NULL, NULL, '2020-11-29 11:46:35', '2020-12-06 04:22:49'),
(20, 'pr-20201128-114854', 1, 1, 1, NULL, NULL, 4, 33, 0, 0, 7782, 0, 0, NULL, NULL, 7782, 7782, 1, 2, NULL, NULL, '2020-11-29 11:48:54', '2020-12-06 04:24:24'),
(21, 'pr-20201128-115704', 1, 1, 1, NULL, NULL, 2, 506, 0, 0, 492.78, 0, 0, NULL, NULL, 492.78, 492.78, 1, 2, NULL, NULL, '2020-11-29 11:57:04', '2020-12-06 04:24:42'),
(23, 'pr-20201203-111423', 1, 1, 1, NULL, NULL, 1, 24, 0, 0, 288, 0, 0, NULL, NULL, 288, 288, 1, 2, NULL, NULL, '2020-12-03 23:14:23', '2020-12-06 04:24:49'),
(24, 'pr-20201203-030754', 1, 1, 1, NULL, NULL, 6, 168, 0, 0, 1252.32, 0, 0, 6.32, NULL, 1246, 1246, 1, 2, NULL, NULL, '2020-12-04 03:07:54', '2020-12-06 04:24:59'),
(25, 'pr-20201203-034035', 1, 1, 1, NULL, NULL, 10, 42, 0, 0, 2834, 0, 0, 138, NULL, 2696, 2696, 1, 2, NULL, NULL, '2020-12-04 03:40:35', '2020-12-06 04:25:08'),
(26, 'pr-20201203-034415', 1, 1, 1, NULL, NULL, 1, 13, 0, 0, 481, 0, 0, 1, NULL, 480, 480, 1, 2, NULL, NULL, '2020-12-04 03:44:15', '2020-12-06 04:25:19'),
(27, 'pr-20201203-034828', 1, 1, 1, NULL, NULL, 4, 619, 0, 0, 1300.5, 0, 0, 19.5, 0, 1281, 1281, 1, 2, NULL, NULL, '2020-12-04 03:48:28', '2020-12-06 04:26:50'),
(28, 'pr-20201203-035119', 1, 1, 1, NULL, NULL, 3, 9, 0, 0, 1212, 0, 0, NULL, 3, 1215, 1215, 1, 2, NULL, NULL, '2020-12-04 03:51:19', '2020-12-06 04:26:59'),
(29, 'pr-20201203-035858', 1, 1, 1, NULL, NULL, 3, 27, 0, 0, 3102, 0, 0, NULL, NULL, 3102, 3102, 1, 2, NULL, NULL, '2020-12-04 03:58:58', '2020-12-06 04:27:12'),
(30, 'pr-20201203-040826', 1, 1, 1, NULL, NULL, 3, 37, 0, 0, 640.03, 0, 0, 18, NULL, 622.03, 622.03, 1, 2, NULL, NULL, '2020-12-04 04:08:26', '2020-12-06 04:27:20'),
(31, 'pr-20201203-041707', 1, 1, 1, NULL, NULL, 78, 940, 0, 0, 40264.25, 0, 0, 0, 0, 40264.25, 40264.25, 1, 2, NULL, NULL, '2020-12-04 04:17:07', '2020-12-06 04:27:29'),
(32, 'pr-20201203-105908', 1, 1, 1, NULL, NULL, 1, 24, 0, 0, 2640, 0, 0, NULL, NULL, 2640, 2640, 1, 2, NULL, NULL, '2020-12-04 10:59:08', '2020-12-06 04:27:37'),
(33, 'pr-20201203-110221', 1, 1, 1, NULL, NULL, 4, 4, 0, 0, 336, 0, 0, NULL, NULL, 336, 336, 1, 2, NULL, NULL, '2020-12-04 11:02:21', '2020-12-06 04:27:49'),
(34, 'pr-20201203-111325', 1, 1, 1, NULL, NULL, 13, 194, 0, 0, 4796.68, 0, 0, 1.68, NULL, 4795, 4795, 1, 2, NULL, NULL, '2020-12-04 11:13:25', '2020-12-06 04:45:45'),
(35, 'pr-20201203-113752', 1, 1, 1, NULL, NULL, 5, 33, 0, 0, 2078.04, 0, 0, NULL, NULL, 2078.04, 2078.04, 1, 2, NULL, NULL, '2020-12-04 11:37:52', '2020-12-06 04:45:53'),
(36, 'pr-20201203-114051', 1, 1, 1, NULL, NULL, 4, 18, 0, 0, 330.12, 0, 0, 9.8, 0, 320.32, 320.32, 1, 2, NULL, NULL, '2020-12-04 11:40:51', '2020-12-06 04:46:01'),
(37, 'pr-20201203-114952', 1, 1, NULL, NULL, NULL, 1, 12, 0, 0, 264, 0, 0, NULL, NULL, 264, 264, 1, 2, NULL, NULL, '2020-12-04 11:49:52', '2020-12-06 04:46:11'),
(38, 'pr-20201203-115028', 1, 1, 1, NULL, NULL, 1, 4, 0, 0, 100, 0, 0, NULL, NULL, 100, 100, 1, 2, NULL, NULL, '2020-12-04 11:50:28', '2020-12-06 04:46:18'),
(39, 'pr-20201203-115704', 1, 1, 1, NULL, NULL, 2, 10, 0, 0, 3600, 0, 0, NULL, NULL, 3600, 3600, 1, 2, NULL, NULL, '2020-12-04 11:57:04', '2020-12-06 04:46:26'),
(40, 'pr-20201204-120133', 1, 1, 1, NULL, NULL, 3, 37, 0, 0, 344, 0, 0, NULL, NULL, 344, 344, 1, 2, NULL, NULL, '2020-12-04 12:01:33', '2020-12-06 04:46:34'),
(41, 'pr-20201204-120338', 1, 1, 1, NULL, NULL, 1, 10, 0, 0, 126, 0, 0, 6, NULL, 120, 120, 1, 2, NULL, NULL, '2020-12-04 12:03:38', '2020-12-06 04:46:42'),
(42, 'pr-20201204-120616', 1, 1, 1, NULL, NULL, 5, 35, 0, 0, 3425.92, 0, 0, 0, 0, 3425.92, 3425.92, 1, 2, NULL, NULL, '2020-12-04 12:06:16', '2020-12-06 04:46:51'),
(43, 'pr-20201204-112435', 1, 1, 1, NULL, NULL, 4, 30, 0, 0, 624.84, 0, 0, NULL, NULL, 624.84, 624.84, 1, 2, NULL, NULL, '2020-12-04 23:24:35', '2020-12-06 04:46:59'),
(44, 'pr-20201204-113125', 1, 1, 1, NULL, NULL, 4, 14, 0, 0, 1400, 0, 0, NULL, 60, 1460, 1460, 1, 2, NULL, NULL, '2020-12-04 23:31:25', '2020-12-06 04:47:08'),
(45, 'pr-20201204-113619', 1, 1, 1, NULL, NULL, 3, 12, 0, 0, 672, 0, 0, NULL, NULL, 672, 672, 1, 2, NULL, NULL, '2020-12-04 23:36:19', '2020-12-06 04:48:54'),
(46, 'pr-20201204-114058', 1, 1, 1, NULL, NULL, 4, 48, 0, 0, 1942, 0, 0, NULL, NULL, 1942, 1942, 1, 2, NULL, NULL, '2020-12-04 23:40:58', '2020-12-06 04:48:45'),
(47, 'pr-20201204-115543', 1, 1, 1, NULL, NULL, 2, 20, 0, 0, 202.08, 0, 0, 0, 0, 202.08, 202.08, 1, 2, NULL, NULL, '2020-12-04 23:55:43', '2020-12-06 04:48:37'),
(48, 'pr-20201204-120202', 1, 1, 1, NULL, NULL, 3, 8, 0, 0, 639, 0, 0, NULL, NULL, 639, 639, 1, 2, NULL, NULL, '2020-12-05 00:02:02', '2020-12-06 04:48:29'),
(49, 'pr-20201204-120333', 1, 1, 1, NULL, NULL, 2, 20, 0, 0, 680.72, 0, 0, 0, 0, 680.72, 680.72, 1, 2, NULL, NULL, '2020-12-05 00:03:33', '2020-12-06 04:48:21'),
(50, 'pr-20201204-124657', 1, 1, 1, NULL, NULL, 13, 51, 0, 0, 5225, 0, 0, NULL, NULL, 5225, 5225, 1, 2, NULL, NULL, '2020-12-05 00:46:57', '2020-12-06 04:48:13'),
(51, 'pr-20201204-124830', 1, 1, 1, NULL, NULL, 4, 26, 0, 0, 823.3, 0, 0, NULL, NULL, 823.3, 823.3, 1, 2, NULL, NULL, '2020-12-05 00:48:30', '2020-12-06 04:48:04'),
(52, 'pr-20201204-124939', 1, 1, 1, NULL, NULL, 2, 10, 0, 0, 658, 0, 0, NULL, NULL, 658, 658, 1, 2, NULL, NULL, '2020-12-05 00:49:39', '2020-12-06 04:47:55'),
(53, 'pr-20201204-011203', 1, 1, 1, NULL, NULL, 8, 73, 0, 0, 2698, 0, 0, 0, 0, 2698, 2698, 1, 2, NULL, NULL, '2020-12-05 01:12:03', '2020-12-06 04:47:43'),
(54, 'pr-20201204-013035', 1, 1, 1, NULL, NULL, 1, 48, 0, 0, 399.84, 0, 0, NULL, NULL, 399.84, 399.84, 1, 2, NULL, NULL, '2020-12-05 01:30:35', '2020-12-06 04:21:03'),
(55, 'pr-20201204-014314', 1, 1, 1, NULL, NULL, 6, 40, 0, 0, 1857, 0, 0, NULL, NULL, 1857, 1857, 1, 2, NULL, NULL, '2020-12-05 01:43:14', '2020-12-06 04:20:55'),
(56, 'pr-20201204-014859', 1, 1, 1, NULL, NULL, 4, 100, 0, 0, 3182.05, 0, 0, NULL, NULL, 3182.05, 3182.05, 1, 2, NULL, NULL, '2020-12-05 01:48:59', '2020-12-06 04:20:48'),
(57, 'pr-20201204-015123', 1, 1, 1, NULL, NULL, 3, 36, 0, 0, 2574.9, 0, 0, NULL, NULL, 2574.9, 2574.9, 1, 2, NULL, NULL, '2020-12-05 01:51:23', '2020-12-06 04:20:40'),
(58, 'pr-20201204-020826', 1, 1, 1, NULL, NULL, 13, 114, 0, 0, 9088.32, 0, 0, 0, 0, 9088.32, 9088.32, 1, 2, NULL, NULL, '2020-12-05 02:08:26', '2020-12-06 04:20:31'),
(59, 'pr-20201204-021844', 1, 1, 1, NULL, NULL, 3, 12, 0, 0, 2040, 0, 0, NULL, NULL, 2040, 2040, 1, 2, NULL, NULL, '2020-12-05 02:18:44', '2020-12-06 04:20:23'),
(60, 'pr-20201204-021955', 1, 1, 1, NULL, NULL, 5, 18, 0, 0, 1752, 0, 0, NULL, NULL, 1752, 1752, 1, 2, NULL, NULL, '2020-12-05 02:19:55', '2020-12-06 04:20:17'),
(61, 'pr-20201204-022420', 1, 1, 1, NULL, NULL, 7, 99, 0, 0, 5995, 0, 0, 150, NULL, 5845, 5845, 1, 2, NULL, NULL, '2020-12-05 02:24:20', '2020-12-06 04:20:06'),
(62, 'pr-20201204-022539', 1, 1, 1, NULL, NULL, 2, 16, 0, 0, 584, 0, 0, NULL, NULL, 584, 584, 1, 2, NULL, NULL, '2020-12-05 02:25:39', '2020-12-06 04:19:13'),
(63, 'pr-20201204-022659', 1, 1, 1, NULL, NULL, 2, 7, 0, 0, 405, 0, 0, NULL, NULL, 405, 405, 1, 2, NULL, NULL, '2020-12-05 02:26:59', '2020-12-06 04:19:07'),
(64, 'pr-20201205-041846', 1, 1, 1, NULL, NULL, 3, 36, 0, 0, 243.6, 0, 0, NULL, NULL, 243.6, 243.6, 1, 2, NULL, NULL, '2020-12-06 04:18:47', '2020-12-06 04:18:59'),
(65, 'pr-20201205-045440', 1, 1, 1, NULL, NULL, 1, 2, 0, 0, 1444, 0, 0, 28, NULL, 1416, 1416, 1, 2, NULL, NULL, '2020-12-06 04:54:40', '2020-12-06 04:54:48'),
(66, 'pr-20201205-045647', 1, 1, 1, NULL, NULL, 4, 52, 0, 0, 3069.78, 0, 0, 8, NULL, 3061.78, 3061.78, 1, 2, NULL, NULL, '2020-12-06 04:56:47', '2020-12-06 05:14:17'),
(67, 'pr-20201205-051402', 1, 1, 1, NULL, NULL, 41, 353529, 0, 0, 34474.12, 0, 0, 0, 0, 34474.12, 34474.119999999995, 1, 1, NULL, NULL, '2020-12-06 05:14:02', '2020-12-06 06:24:11'),
(68, 'pr-20201205-090914', 1, 1, 1, NULL, NULL, 16, 11518, 0, 0, 4965, 0, 0, 0, 0, 4965, 0, 1, 1, NULL, NULL, '2020-12-06 09:09:14', '2020-12-06 09:21:52'),
(69, 'pr-20201205-103357', 1, 1, 1, NULL, NULL, 5, 59, 0, 0, 1136.08, 0, 0, NULL, NULL, 1136.08, 0, 1, 1, NULL, NULL, '2020-12-06 10:33:57', '2020-12-06 10:33:57'),
(70, 'pr-20201206-111200', 1, 1, 1, NULL, NULL, 15, 206, 0, 0, 7837.03, 0, 0, 128, 0, 7709.03, 0, 1, 1, NULL, NULL, '2020-12-07 11:12:00', '2020-12-07 12:49:50'),
(71, 'pr-20201207-125201', 1, 1, NULL, NULL, NULL, 2, 6, 0, 0, 534, 0, 0, NULL, NULL, 534, 0, 1, 1, NULL, NULL, '2020-12-07 12:52:01', '2020-12-07 12:52:01'),
(72, 'pr-20201207-010112', 1, 1, NULL, NULL, NULL, 5, 41, 0, 0, 2491.62, 0, 0, 132, NULL, 2359.62, 0, 1, 1, NULL, NULL, '2020-12-07 13:01:12', '2020-12-07 13:01:12'),
(73, 'pr-20201207-010254', 1, 1, NULL, NULL, NULL, 2, 12, 0, 0, 567, 0, 0, NULL, NULL, 567, 0, 1, 1, NULL, NULL, '2020-12-07 13:02:54', '2020-12-07 13:02:54'),
(74, 'pr-20201207-010938', 1, 1, NULL, NULL, NULL, 4, 18, 0, 0, 564.5, 0, 0, NULL, NULL, 564.5, 0, 1, 1, NULL, NULL, '2020-12-07 13:09:38', '2020-12-07 13:09:38'),
(75, 'pr-20201207-011439', 1, 1, NULL, NULL, NULL, 5, 180, 0, 0, 345.29, 0, 0, NULL, NULL, 345.29, 0, 1, 1, NULL, NULL, '2020-12-07 13:14:39', '2020-12-07 13:14:39'),
(76, 'pr-20201207-011600', 1, 1, NULL, NULL, NULL, 2, 6000, 0, 0, 450, 0, 0, NULL, NULL, 450, 0, 1, 1, NULL, NULL, '2020-12-07 13:16:00', '2020-12-07 13:16:00'),
(77, 'pr-20201207-011637', 1, 1, NULL, NULL, NULL, 1, 1000, 0, 0, 270, 0, 0, NULL, NULL, 270, 0, 1, 1, NULL, NULL, '2020-12-07 13:16:37', '2020-12-07 13:16:37'),
(78, 'pr-20201207-011736', 1, 1, NULL, NULL, NULL, 1, 10, 0, 0, 320, 0, 0, NULL, NULL, 320, 0, 1, 1, NULL, NULL, '2020-12-07 13:17:36', '2020-12-07 13:17:36'),
(79, 'pr-20201207-115239', 1, 1, NULL, NULL, NULL, 1, 12, 0, 0, 348, 0, 0, NULL, NULL, 348, 0, 1, 1, NULL, NULL, '2020-12-07 23:52:39', '2020-12-07 23:52:39'),
(80, 'pr-20201207-065009', 1, 1, NULL, NULL, NULL, 5, 37, 0, 0, 1799.03, 0, 0, NULL, NULL, 1799.03, 1799.03, 1, 2, NULL, NULL, '2020-12-08 06:50:09', '2020-12-08 07:44:21'),
(81, 'pr-20201207-082514', 1, 1, 1, NULL, NULL, 2, 6, 0, 0, 345, 0, 0, NULL, NULL, 345, 0, 1, 1, NULL, NULL, '2020-12-08 08:25:14', '2020-12-08 08:25:14'),
(82, 'pr-20201208-113017', 1, 1, 1, NULL, NULL, 1, 6, 0, 0, 283.44, 0, 0, NULL, NULL, 283.44, 0, 1, 1, NULL, NULL, '2020-12-08 23:30:17', '2020-12-08 23:30:17'),
(83, 'pr-20201208-113307', 1, 1, NULL, NULL, NULL, 1, 4, 0, 0, 132, 0, 0, NULL, NULL, 132, 0, 1, 1, NULL, NULL, '2020-12-08 23:33:07', '2020-12-08 23:33:07'),
(84, 'pr-20201208-120246', 1, 1, NULL, NULL, NULL, 2, 24, 0, 0, 144, 0, 0, NULL, NULL, 144, 0, 1, 1, NULL, NULL, '2020-12-09 00:02:46', '2020-12-09 00:02:46'),
(85, 'pr-20201208-121708', 1, 1, NULL, NULL, NULL, 3, 153, 0, 0, 1050.9, 0, 0, 0, 0, 1050.9, 0, 1, 1, NULL, NULL, '2020-12-09 00:17:08', '2020-12-09 00:23:14'),
(86, 'pr-20201208-100556', 1, 1, 1, NULL, NULL, 2, 13, 0, 0, 610, 0, 0, NULL, NULL, 610, 0, 1, 1, NULL, NULL, '2020-12-09 10:05:56', '2020-12-09 10:05:56'),
(87, 'pr-20201210-013952', 1, 1, NULL, NULL, NULL, 6, 39, 0, 0, 2105.25, 0, 0, NULL, NULL, 2105.25, 0, 1, 1, NULL, NULL, '2020-12-11 01:39:52', '2020-12-11 01:39:52'),
(88, 'pr-20201215-124434', 1, 1, NULL, NULL, NULL, 2, 10, 0, 0, 351.25, 0, 0, NULL, NULL, 351.25, 0, 1, 1, NULL, NULL, '2020-12-16 00:44:34', '2020-12-16 00:44:34'),
(89, 'pr-20201215-125444', 1, 1, 1, NULL, NULL, 3, 8, 0, 0, 380, 0, 0, NULL, NULL, 380, 0, 1, 1, NULL, NULL, '2020-12-16 00:54:44', '2020-12-16 00:54:44'),
(90, 'pr-20201215-010429', 1, 1, 1, NULL, NULL, 1, 48, 0, 0, 259.97, 0, 0, NULL, NULL, 259.97, 0, 1, 1, NULL, NULL, '2020-12-16 01:04:29', '2020-12-16 01:04:29'),
(91, 'pr-20201215-012425', 1, 1, NULL, NULL, NULL, 1, 24, 0, 0, 120, 0, 0, NULL, NULL, 120, 0, 1, 1, NULL, NULL, '2020-12-16 01:24:25', '2020-12-16 01:24:25'),
(92, 'pr-20201215-015137', 1, 1, NULL, NULL, NULL, 1, 12, 0, 0, 84.96, 0, 0, NULL, NULL, 84.96, 0, 1, 1, NULL, NULL, '2020-12-16 01:51:37', '2020-12-16 01:51:37'),
(93, 'pr-20201215-062523', 1, 1, NULL, NULL, NULL, 1, 10, 0, 0, 175, 0, 0, NULL, NULL, 175, 0, 1, 1, NULL, NULL, '2020-12-16 06:25:23', '2020-12-16 06:25:23'),
(94, 'pr-20201215-070254', 1, 1, 1, NULL, NULL, 4, 62, 0, 0, 397.2, 0, 0, NULL, NULL, 397.2, 0, 1, 1, NULL, NULL, '2020-12-16 07:02:54', '2020-12-16 07:02:54'),
(95, 'pr-20201215-082543', 1, 1, 1, NULL, NULL, 8, 55, 0, 0, 1535.46, 0, 0, 33, NULL, 1502.46, 0, 1, 1, NULL, NULL, '2020-12-16 08:25:43', '2020-12-16 08:25:43'),
(96, 'pr-20201215-094522', 1, 1, 1, NULL, NULL, 2, 48, 0, 0, 1360.68, 0, 0, 47, NULL, 1313.68, 0, 1, 1, NULL, NULL, '2020-12-16 09:45:22', '2020-12-16 09:45:22'),
(97, 'pr-20201216-124857', 1, 1, 1, NULL, NULL, 2, 21, 0, 0, 607, 0, 0, NULL, NULL, 607, 0, 1, 1, NULL, NULL, '2020-12-17 00:48:57', '2020-12-17 00:48:57'),
(98, 'pr-20201216-015026', 1, 1, NULL, NULL, NULL, 1, 6, 0, 0, 240, 0, 0, NULL, NULL, 240, 0, 1, 1, NULL, NULL, '2020-12-17 01:50:26', '2020-12-17 01:50:26'),
(99, 'pr-20201216-020106', 1, 1, 1, NULL, NULL, 2, 17, 0, 0, 404.99, 0, 0, NULL, NULL, 404.99, 0, 1, 1, NULL, NULL, '2020-12-17 02:01:06', '2020-12-17 02:01:06'),
(100, 'pr-20201216-021426', 1, 1, 1, NULL, NULL, 1, 2, 0, 0, 134, 0, 0, NULL, NULL, 134, 0, 1, 1, NULL, NULL, '2020-12-17 02:14:26', '2020-12-17 02:14:26'),
(101, 'pr-20201216-021523', 1, 1, 1, NULL, NULL, 2, 10, 0, 0, 456, 0, 0, NULL, NULL, 456, 0, 1, 1, NULL, NULL, '2020-12-17 02:15:23', '2020-12-17 02:15:23'),
(102, 'pr-20201217-064517', 1, 1, 1, NULL, NULL, 2, 29, 0, 0, 1067.99, 0, 0, NULL, NULL, 1067.99, 0, 1, 1, NULL, NULL, '2020-12-18 06:45:17', '2020-12-18 06:45:17'),
(103, 'pr-20201219-113154', 1, 1, NULL, NULL, NULL, 3, 357, 0, 0, 2222.16, 0, 0, NULL, NULL, 2222.16, 0, 1, 1, NULL, NULL, '2020-12-19 23:31:54', '2020-12-19 23:31:54'),
(104, 'pr-20201219-024718', 1, 1, 1, NULL, NULL, 4, 8, 0, 0, 2918, 0, 0, NULL, NULL, 2918, 0, 1, 1, NULL, NULL, '2020-12-20 02:47:18', '2020-12-20 02:47:18'),
(105, 'pr-20201219-064629', 1, 1, 1, NULL, NULL, 3, 3, 0, 0, 412, 0, 0, NULL, NULL, 412, 0, 1, 1, NULL, NULL, '2020-12-20 06:46:29', '2020-12-20 06:46:29'),
(106, 'pr-20201220-124609', 1, 1, 1, NULL, NULL, 1, 1, 0, 0, 180, 0, 0, NULL, NULL, 180, 0, 1, 1, NULL, NULL, '2020-12-21 00:46:09', '2020-12-21 00:46:09'),
(107, 'pr-20201221-080023', 1, 1, 1, NULL, NULL, 4, 16, 0, 0, 384, 0, 0, NULL, NULL, 384, 0, 1, 1, NULL, NULL, '2020-12-22 08:00:23', '2020-12-22 08:00:23'),
(108, 'pr-20201221-083321', 1, 1, 1, NULL, NULL, 1, 36, 0, 0, 40.32, 0, 0, NULL, NULL, 40.32, 0, 1, 1, NULL, NULL, '2020-12-22 08:33:21', '2020-12-22 08:33:21'),
(109, 'pr-20201221-084145', 1, 1, 1, NULL, NULL, 1, 12, 0, 0, 96, 0, 0, NULL, NULL, 96, 0, 1, 1, NULL, NULL, '2020-12-22 08:41:45', '2020-12-22 08:41:45'),
(110, 'pr-20210107-113950', 1, 1, 1, NULL, NULL, 1, 6, 0, 0, 630, 0, 0, NULL, NULL, 630, 0, 1, 1, NULL, NULL, '2021-01-07 23:39:50', '2021-01-07 23:39:50'),
(111, 'pr-20210107-115541', 1, 1, 1, NULL, NULL, 3, 72, 0, 0, 3767.94, 0, 0, NULL, NULL, 3767.94, 0, 1, 1, NULL, NULL, '2021-01-07 23:55:41', '2021-01-07 23:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_return`
--

CREATE TABLE `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_purchases`
--

CREATE TABLE `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reward_point_settings`
--

CREATE TABLE `reward_point_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_point_settings`
--

INSERT INTO `reward_point_settings` (`id`, `per_point_amount`, `minimum_amount`, `duration`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 500, 0, 0, 'Year', 0, '2023-09-16 23:28:38', '2023-09-16 23:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `is_active`, `created_at`, `updated_at`, `guard_name`) VALUES
(1, 'Admin', 'Admins have full access to the system', 1, '2018-06-01 23:16:44', '2023-06-21 14:08:36', 'web'),
(2, 'Owner', 'Full access to the system except technical aspects.', 1, '2018-10-22 02:08:13', '2023-09-16 23:37:38', 'web'),
(3, 'Cashier', 'Cashier has limited access to sales data', 1, '2018-06-01 23:35:27', '2023-06-21 14:08:46', 'web'),
(4, 'staff', 'staff has specific acess...', 1, '2018-06-02 05:05:27', '2018-06-02 05:05:27', 'web'),
(5, 'Customer', 'Customers can access their own data', 1, '2020-11-05 06:13:16', '2020-11-14 23:54:15', 'web'),
(6, 'Admin (Demo)', 'Demo admin with restricted access to system settings', 1, '2023-08-12 08:25:13', '2023-08-12 08:25:13', 'web'),
(7, 'Admin', 'admin can access all data...', 1, '2018-06-02 04:46:44', '2018-06-03 04:13:05', 'web'),
(8, 'Owner', 'Owner of shop...', 1, '2018-10-22 07:38:13', '2018-10-22 07:38:13', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(4, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(12, 3),
(13, 3),
(16, 3),
(17, 3),
(20, 3),
(21, 3),
(22, 3),
(24, 3),
(25, 3),
(28, 3),
(29, 3),
(32, 3),
(36, 3),
(47, 3),
(49, 3),
(52, 3),
(53, 3),
(55, 3),
(56, 3),
(57, 3),
(63, 3),
(64, 3),
(90, 3),
(93, 3),
(106, 3),
(112, 3),
(6, 4),
(7, 4),
(8, 4),
(9, 4),
(12, 4),
(13, 4),
(20, 4),
(21, 4),
(24, 4),
(25, 4),
(28, 4),
(29, 4),
(63, 4),
(64, 4),
(7, 5),
(28, 5),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(74, 6),
(75, 6),
(76, 6),
(77, 6),
(78, 6),
(79, 6),
(82, 6),
(84, 6),
(85, 6),
(86, 6),
(87, 6),
(88, 6),
(89, 6),
(90, 6),
(91, 6),
(92, 6),
(93, 6),
(94, 6),
(95, 6),
(96, 6),
(97, 6),
(98, 6),
(99, 6),
(101, 6),
(102, 6),
(103, 6),
(105, 6),
(106, 6),
(107, 6),
(108, 6),
(109, 6),
(110, 6),
(111, 6),
(112, 6),
(113, 6),
(114, 6),
(115, 6),
(116, 6),
(117, 6),
(118, 6),
(119, 6),
(120, 6),
(121, 6),
(122, 6),
(123, 6),
(124, 6),
(125, 6),
(126, 6),
(4, 7),
(5, 7),
(6, 7),
(7, 7),
(8, 7),
(9, 7),
(10, 7),
(11, 7),
(12, 7),
(13, 7),
(14, 7),
(15, 7),
(16, 7),
(17, 7),
(18, 7),
(19, 7),
(20, 7),
(21, 7),
(22, 7),
(23, 7),
(24, 7),
(25, 7),
(26, 7),
(27, 7),
(28, 7),
(29, 7),
(30, 7),
(31, 7),
(32, 7),
(33, 7),
(34, 7),
(35, 7),
(36, 7),
(37, 7),
(38, 7),
(39, 7),
(40, 7),
(41, 7),
(42, 7),
(43, 7),
(44, 7),
(45, 7),
(46, 7),
(47, 7),
(48, 7),
(49, 7),
(50, 7),
(51, 7),
(52, 7),
(53, 7),
(54, 7),
(55, 7),
(56, 7),
(57, 7),
(58, 7),
(59, 7),
(60, 7),
(61, 7),
(62, 7),
(63, 7),
(64, 7),
(65, 7),
(66, 7),
(67, 7),
(68, 7),
(69, 7),
(70, 7),
(71, 7),
(72, 7),
(73, 7),
(74, 7),
(75, 7),
(76, 7),
(77, 7),
(78, 7),
(79, 7),
(80, 7),
(81, 7),
(82, 7),
(83, 7),
(84, 7),
(85, 7),
(86, 7),
(87, 7),
(88, 7),
(89, 7),
(90, 7),
(91, 7),
(92, 7),
(93, 7),
(94, 7),
(95, 7),
(96, 7),
(97, 7),
(4, 8),
(5, 8),
(6, 8),
(7, 8),
(8, 8),
(9, 8),
(10, 8),
(11, 8),
(12, 8),
(13, 8),
(14, 8),
(15, 8),
(16, 8),
(17, 8),
(18, 8),
(19, 8),
(20, 8),
(21, 8),
(22, 8),
(23, 8),
(24, 8),
(25, 8),
(26, 8),
(27, 8),
(28, 8),
(29, 8),
(30, 8),
(31, 8),
(32, 8),
(33, 8),
(34, 8),
(35, 8),
(36, 8),
(37, 8),
(38, 8),
(39, 8),
(40, 8),
(41, 8),
(42, 8),
(43, 8),
(44, 8),
(45, 8),
(46, 8),
(47, 8),
(48, 8),
(49, 8),
(50, 8),
(51, 8),
(52, 8),
(53, 8),
(54, 8),
(55, 8),
(56, 8),
(57, 8),
(58, 8),
(59, 8),
(60, 8),
(61, 8),
(62, 8),
(63, 8),
(64, 8),
(65, 8),
(66, 8),
(67, 8),
(68, 8),
(69, 8),
(70, 8),
(71, 8),
(72, 8),
(73, 8),
(74, 8),
(75, 8),
(76, 8),
(77, 8),
(78, 8),
(79, 8),
(80, 8),
(81, 8),
(82, 8),
(83, 8),
(84, 8),
(85, 8),
(86, 8),
(87, 8),
(88, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `queue` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_discount_value` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pos',
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `woocommerce_order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `cash_register_id`, `table_id`, `queue`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `grand_total`, `currency_id`, `exchange_rate`, `order_tax_rate`, `order_tax`, `order_discount_type`, `order_discount_value`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `document`, `paid_amount`, `billing_name`, `billing_phone`, `billing_email`, `billing_address`, `billing_city`, `billing_state`, `billing_country`, `billing_zip`, `shipping_name`, `shipping_phone`, `shipping_email`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_country`, `shipping_zip`, `sale_type`, `payment_mode`, `sale_note`, `staff_note`, `woocommerce_order_id`, `created_at`, `updated_at`) VALUES
(1, 'posr-20240417-091117', 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 23, 23, 1, 1, 0, 0, 'Flat', NULL, 0, NULL, NULL, 0, 1, 4, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-17 03:41:17', '2024-04-17 03:41:17'),
(2, 'posr-20240417-121047', 1, 1, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 23, 23, 1, 1, 0, 0, 'Flat', NULL, 0, NULL, NULL, 0, 1, 4, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-17 06:40:47', '2024-04-17 06:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_counts`
--

INSERT INTO `stock_counts` (`id`, `reference_no`, `warehouse_id`, `category_id`, `brand_id`, `user_id`, `type`, `initial_file`, `final_file`, `note`, `is_adjusted`, `created_at`, `updated_at`) VALUES
(1, 'scr-20201207-074018', 1, NULL, NULL, 1, 'full', '20201207-074018.csv', NULL, NULL, 0, '2020-12-08 07:40:18', '2020-12-08 07:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Default Supplier', NULL, 'Supplier Co', NULL, 'supplier@supplier.earth', '###', 'Somewhere', 'Geo', NULL, NULL, NULL, 1, '2023-09-17 00:05:09', '2023-09-17 00:05:09'),
(2, 'Anonymous', NULL, 'Anonymous', NULL, 'tonmoycruze@gmail.com', '9883006', 'Anonymous', 'Dhaka', 'Dhaka', '1212', 'Bangladesh', 1, '2020-11-18 07:54:59', '2020-11-28 11:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_person` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `woocommerce_tax_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `woocommerce_tax_id`, `created_at`, `updated_at`) VALUES
(1, 'BD GOV', 10, 1, NULL, '2020-11-18 07:20:24', '2020-11-18 07:20:24'),
(2, 'No Tax', 0, 1, NULL, '2020-11-18 07:20:35', '2020-11-18 07:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'pc(s)', 'Piece', NULL, '*', 1, 1, '2023-09-17 00:14:06', '2023-09-17 00:14:06'),
(2, 'kg', 'kilogram', 1, NULL, NULL, 1, '2024-04-17 03:40:20', '2024-04-17 09:25:22'),
(7, 'pcs', 'Pieces', NULL, '*', 1, 1, '2020-11-18 08:56:14', '2020-12-09 08:23:47'),
(11, 'gm', 'Gram', NULL, '*', 1, 1, '2020-11-18 09:38:41', '2020-12-09 08:27:24'),
(13, 'kg', 'Kilogram', NULL, '*', 1, 1, '2020-12-08 08:27:57', '2020-12-09 08:30:05');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$iFhbFPEbb9U1Rwmg6ifbHeHpFjrrXxOhUBOpCTVfVg1b5c4z1QcWq', NULL, '2023-08-12 05:21:23', '2024-04-17 08:37:10', '+1-800-0000001', 'My Company', 1, NULL, NULL, 1, 0),
(2, 'admin', 'admin@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'vbtWWvstbXzhinaL0Fh3KDhjCIIa7yclh25eZXZKIs9Omsom07X6zVm6jhms', '2018-06-02 08:24:15', '2020-11-30 08:25:55', '01720950565', 'Golpo Communications', 1, NULL, NULL, 1, 0),
(3, 'staff', 'razen.jazzy@gmail.com', '$2y$10$iFhbFPEbb9U1Rwmg6ifbHeHpFjrrXxOhUBOpCTVfVg1b5c4z1QcWq', NULL, '2024-04-17 08:46:42', '2024-04-17 08:46:42', '3333846282', 'idiib', 3, 1, 1, 1, 0),
(4, 'napol', 'napol.amin@gmail.com', '$2y$10$iFhbFPEbb9U1Rwmg6ifbHeHpFjrrXxOhUBOpCTVfVg1b5c4z1QcWq', NULL, '2024-04-17 08:47:50', '2024-04-17 08:47:50', '45333846282', 'idiib', 5, NULL, NULL, 1, 0),
(5, 'dhiman da', 'dhiman@gmail.com', '$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.', '5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt', '2018-06-14 03:00:31', '2020-11-30 08:25:25', '212', 'lioncoders', 1, NULL, NULL, 0, 1),
(6, 'test', 'test@gmail.com', '$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS', 'KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm', '2018-06-23 08:05:33', '2018-06-23 08:13:45', '1234', '212312', 4, NULL, NULL, 0, 1),
(8, 'test', 'test@yahoo.com', '$2y$10$hlMigidZV0j2/IPkgE/xsOSb8WM2IRlsMv.1hg1NM7kfyd6bGX3hC', NULL, '2018-06-25 03:35:49', '2018-07-02 06:07:39', '31231', NULL, 4, NULL, NULL, 0, 1),
(9, 'staff', 'anda@gmail.com', '$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm', 'dNAe8iSjJbGZNeEypYH80C4kX2wKowej6QADpbzL6PBoKDFQMMzmwgFUOsYl', '2018-07-02 06:08:08', '2020-11-30 08:25:26', '3123', NULL, 4, 5, 1, 0, 1),
(10, 'abul', 'abul@alpha.com', '$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq', 'x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0', '2018-09-08 04:44:48', '2020-11-30 08:25:26', '1234', 'anda', 1, NULL, NULL, 0, 1),
(11, 'teststaff', 'a@a.com', '$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li', 'DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp', '2018-10-22 07:47:56', '2018-10-23 07:10:56', '111', 'aa', 4, 5, 1, 0, 1),
(12, 'john', 'john@gmail.com', '$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe', 'O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg', '2018-12-30 06:48:37', '2019-03-06 10:59:49', '10001', NULL, 4, 2, 2, 0, 1),
(13, 'jjj', 'test@test.com', '$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG', NULL, '2019-01-03 06:08:31', '2019-03-03 10:02:29', '1213', NULL, 1, NULL, NULL, 0, 1),
(16, 'dibbaw', 'dibbaw@golpocom.com', '$2y$10$KuizMvflj6VdOFXjCD4MIOFurux8M032PRYxlQCXSK/b29HCZOY3i', NULL, '2020-11-30 08:25:00', '2020-11-30 08:25:00', '01701863222', 'Golpo Communications', 2, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1 kg', '2020-11-18 08:01:23', '2020-11-18 08:01:23'),
(2, '500gm', '2020-11-18 08:11:15', '2020-11-18 08:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Default Warehouse', '000', NULL, 'Local', 1, '2023-09-17 00:13:36', '2023-09-17 00:13:36'),
(2, 'Smart Shop', '01792991668', 'smartshopbd2020@gmail.com', '116/9, South Mohakhali, Dhaka-1212', 1, '2020-11-18 07:11:47', '2020-11-18 07:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_secondary_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_info_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_info_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_info_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_info_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_info_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_info_hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_links_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_links_menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `woocommerce_settings`
--

CREATE TABLE `woocommerce_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `woocomerce_app_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `woocomerce_consumer_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `woocomerce_consumer_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_tax_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_tax_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_group_id` tinyint(4) DEFAULT NULL,
  `warehouse_id` tinyint(4) DEFAULT NULL,
  `biller_id` tinyint(4) DEFAULT NULL,
  `order_status_pending` tinyint(4) DEFAULT NULL,
  `order_status_processing` tinyint(4) DEFAULT NULL,
  `order_status_on_hold` tinyint(4) DEFAULT NULL,
  `order_status_completed` tinyint(4) DEFAULT NULL,
  `order_status_draft` tinyint(4) DEFAULT NULL,
  `webhook_secret_order_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webhook_secret_order_updated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webhook_secret_order_deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webhook_secret_order_restored` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `woocommerce_sync_logs`
--

CREATE TABLE `woocommerce_sync_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sync_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `records` longtext COLLATE utf8mb4_unicode_ci,
  `synced_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attendances_date_employee_id_checkin_unique` (`date`,`employee_id`,`checkin`);

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_plans`
--
ALTER TABLE `discount_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_plan_customers`
--
ALTER TABLE `discount_plan_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_plan_discounts`
--
ALTER TABLE `discount_plan_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dso_alerts`
--
ALTER TABLE `dso_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_settings`
--
ALTER TABLE `ecommerce_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `external_services`
--
ALTER TABLE `external_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_settings`
--
ALTER TABLE `mail_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_transfers`
--
ALTER TABLE `money_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_widgets`
--
ALTER TABLE `page_widgets`
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
-- Indexes for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_setting`
--
ALTER TABLE `pos_setting`
  ADD UNIQUE KEY `pos_setting_id_unique` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_batches`
--
ALTER TABLE `product_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quotation`
--
ALTER TABLE `product_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transfer`
--
ALTER TABLE `product_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_purchases`
--
ALTER TABLE `return_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_point_settings`
--
ALTER TABLE `reward_point_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `woocommerce_settings`
--
ALTER TABLE `woocommerce_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `woocommerce_sync_logs`
--
ALTER TABLE `woocommerce_sync_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cash_registers`
--
ALTER TABLE `cash_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_plans`
--
ALTER TABLE `discount_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_plan_customers`
--
ALTER TABLE `discount_plan_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_plan_discounts`
--
ALTER TABLE `discount_plan_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dso_alerts`
--
ALTER TABLE `dso_alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecommerce_settings`
--
ALTER TABLE `ecommerce_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `external_services`
--
ALTER TABLE `external_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_settings`
--
ALTER TABLE `mail_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `money_transfers`
--
ALTER TABLE `money_transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_widgets`
--
ALTER TABLE `page_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=575;

--
-- AUTO_INCREMENT for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_batches`
--
ALTER TABLE `product_batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=677;

--
-- AUTO_INCREMENT for table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reward_point_settings`
--
ALTER TABLE `reward_point_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `woocommerce_settings`
--
ALTER TABLE `woocommerce_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `woocommerce_sync_logs`
--
ALTER TABLE `woocommerce_sync_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
