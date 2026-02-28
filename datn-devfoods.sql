-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2026 at 10:42 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datn-devfoods`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `recipient_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `recipient_name`, `address_line`, `city`, `district`, `ward`, `phone_number`, `is_default`, `latitude`, `longitude`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '35 Hàng Khay', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0945123456', 1, '21.02720000', '105.85050000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(2, 2, NULL, '10 Đinh Tiên Hoàng', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Lý Thái Tổ', '0912345678', 1, '21.03070000', '105.85200000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(3, 2, NULL, '25 Hai Bà Trưng', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0967123456', 0, '21.02700000', '105.85300000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(4, 2, NULL, '30 Phan Chu Trinh', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Phan Chu Trinh', '0956123456', 0, '21.02350000', '105.85350000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(5, 3, NULL, '35 Hàng Khay', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0945123456', 1, '21.02720000', '105.85050000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(6, 4, NULL, '25 Hai Bà Trưng', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0967123456', 1, '21.02700000', '105.85300000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(7, 4, NULL, '35 Hàng Khay', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0945123456', 0, '21.02720000', '105.85050000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(8, 4, NULL, '45 Lê Thái Tổ', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Hàng Trống', '0923123456', 0, '21.02800000', '105.84950000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(9, 5, NULL, '10 Đinh Tiên Hoàng', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Lý Thái Tổ', '0912345678', 1, '21.03070000', '105.85200000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(10, 6, NULL, '20 Lý Thường Kiệt', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Phan Chu Trinh', '0978123456', 1, '21.02500000', '105.85200000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(11, 6, NULL, '35 Hàng Khay', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0945123456', 0, '21.02720000', '105.85050000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(12, 7, NULL, '1 Tràng Tiền', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0909123456', 1, '21.02850000', '105.85420000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(13, 7, NULL, '10 Đinh Tiên Hoàng', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Lý Thái Tổ', '0912345678', 0, '21.03070000', '105.85200000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(14, 7, NULL, '30 Phan Chu Trinh', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Phan Chu Trinh', '0956123456', 0, '21.02350000', '105.85350000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(15, 8, NULL, '45 Lê Thái Tổ', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Hàng Trống', '0923123456', 1, '21.02800000', '105.84950000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(16, 9, NULL, '15 Hàng Bài', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Hàng Bài', '0987654321', 1, '21.02570000', '105.85250000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(17, 9, NULL, '45 Lê Thái Tổ', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Hàng Trống', '0923123456', 0, '21.02800000', '105.84950000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(18, 10, NULL, '25 Hai Bà Trưng', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0967123456', 1, '21.02700000', '105.85300000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(19, 10, NULL, '30 Phan Chu Trinh', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Phan Chu Trinh', '0956123456', 0, '21.02350000', '105.85350000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(20, 11, NULL, '20 Lý Thường Kiệt', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Phan Chu Trinh', '0978123456', 1, '21.02500000', '105.85200000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(21, 11, NULL, '25 Hai Bà Trưng', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0967123456', 0, '21.02700000', '105.85300000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(22, 12, NULL, '1 Tràng Tiền', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0909123456', 1, '21.02850000', '105.85420000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(23, 12, NULL, '20 Lý Thường Kiệt', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Phan Chu Trinh', '0978123456', 0, '21.02500000', '105.85200000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(24, 12, NULL, '40 Quang Trung', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Trần Hưng Đạo', '0934123456', 0, '21.02200000', '105.84900000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(25, 13, NULL, '1 Tràng Tiền', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0909123456', 1, '21.02850000', '105.85420000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(26, 13, NULL, '10 Đinh Tiên Hoàng', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Lý Thái Tổ', '0912345678', 0, '21.03070000', '105.85200000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(27, 13, NULL, '15 Hàng Bài', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Hàng Bài', '0987654321', 0, '21.02570000', '105.85250000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(28, 14, NULL, '25 Hai Bà Trưng', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0967123456', 1, '21.02700000', '105.85300000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(29, 14, NULL, '30 Phan Chu Trinh', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Phan Chu Trinh', '0956123456', 0, '21.02350000', '105.85350000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(30, 14, NULL, '45 Lê Thái Tổ', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Hàng Trống', '0923123456', 0, '21.02800000', '105.84950000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(31, 15, NULL, '20 Lý Thường Kiệt', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Phan Chu Trinh', '0978123456', 1, '21.02500000', '105.85200000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(32, 15, NULL, '40 Quang Trung', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Trần Hưng Đạo', '0934123456', 0, '21.02200000', '105.84900000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(33, 15, NULL, '45 Lê Thái Tổ', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Hàng Trống', '0923123456', 0, '21.02800000', '105.84950000', '2025-07-31 15:33:57', '2025-07-31 15:33:57', NULL),
(34, 16, 'Tuấn Anh Nguyễn', 'ngõ 286, đường 422b', 'Hà Nội', 'Quận Bắc Từ Liêm', 'Phường Cổ Nhuế 2', '0987654321', 1, '21.06426800', '105.77956400', '2025-07-31 17:30:46', '2025-07-31 19:17:29', '2025-07-31 19:17:29'),
(35, 16, 'Tuấn Anh Nguyễn', 'Vân Canh', 'Hà Nội', 'Quận Tây Hồ', 'Phường Nhật Tân', '0987654321', 1, '21.07659000', '105.81740000', '2025-07-31 19:18:06', '2025-07-31 19:18:35', '2025-07-31 19:18:35'),
(36, 16, 'Tuấn Anh Nguyễn', 'Vân Canh', 'Hà Nội', 'Quận Hoàn Kiếm', 'Phường Tràng Tiền', '0987654321', 1, '21.02492000', '105.85515000', '2025-07-31 19:19:40', '2025-08-01 03:13:29', '2025-08-01 03:13:29'),
(37, 16, 'Tuấn Anh Nguyễn', 'Vân Canh\n20, 422b', 'Hà Nội', 'Hoàn Kiếm', 'Đồng Xuân', '0981714620', 0, '21.04274544', '105.86030391', '2025-08-01 03:48:47', '2025-08-01 03:54:53', '2025-08-01 03:54:53'),
(38, 16, 'Tuấn Anh Nguyễn', 'số 25, ngõ 267 đường 422b', 'Hà Nội', 'Hoàn Kiếm', 'Trần Hưng Đạo', '0987654321', 1, '21.02204000', '105.84862500', '2025-08-01 04:00:03', '2025-08-01 07:05:58', '2025-08-01 07:05:58'),
(39, 16, 'Tuấn Anh Nguyễn', 'số 25, ngõ 267 đường 422b', 'Hà Nội', 'Long Biên', 'Thạch Bàn', '0987654321', 1, '21.02221600', '105.89221800', '2025-08-01 07:10:29', '2025-08-01 07:10:29', NULL),
(40, 18, 'Luminous', '12a', 'Hà Nội', 'Long Biên', 'Thượng Thanh', '0981714620', 0, '21.06638700', '105.88167000', '2025-08-26 13:17:51', '2025-08-26 13:24:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'homepage',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `start_at` timestamp NULL DEFAULT NULL,
  `end_at` timestamp NULL DEFAULT NULL,
  `order` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image_path`, `position`, `description`, `link`, `is_active`, `start_at`, `end_at`, `order`, `created_at`, `updated_at`) VALUES
(8, NULL, 'https://datnsum2025.s3.ap-southeast-2.amazonaws.com/banners/D0F0fsTOLDakRCGzo2HajSxAnB1BfOlDcH6qS5dD.jpg', 'homepage', NULL, NULL, 1, '2025-07-31 15:33:56', '2025-08-30 15:33:56', 7, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(9, NULL, 'https://datnsum2025.s3.ap-southeast-2.amazonaws.com/banners/Delicious_burger_and_food_menu_restaurant_social_media_banner_template_Free_Psd.jpg', 'homepage', NULL, NULL, 1, '2025-07-31 15:33:56', '2025-08-30 15:33:56', 8, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(11, NULL, 'https://datnsum2025.s3.ap-southeast-2.amazonaws.com/banners/Delicious_pizza_food_menu_and_restaurant_facebook_cover_banner_template_free_psd.jpg', 'homepage', NULL, NULL, 1, '2025-07-31 15:33:56', '2025-08-30 15:33:56', 10, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(12, NULL, 'https://datnsum2025.s3.ap-southeast-2.amazonaws.com/banners/Ice_cream_and_Food_menu_web_banner_social_media_banner_template_Free_Psd.jpg', 'homepage', NULL, NULL, 1, '2025-07-31 15:33:56', '2025-08-30 15:33:56', 11, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(13, NULL, 'banners/v8KEMOXglOsqQn3W4eNJQ4h7KiSvVQjWxwputnP3.png', 'footers', NULL, NULL, 1, '2025-07-30 17:00:00', '2025-08-29 17:00:00', NULL, '2025-07-31 15:33:56', '2025-07-31 17:35:52'),
(14, NULL, 'banners/NI7mIm6Uu9ot1TCrFB6FGUJgIZLG5mHmZOjAILv3.png', 'promotions', NULL, NULL, 1, '2025-07-30 17:00:00', '2025-08-29 17:00:00', NULL, '2025-07-31 15:33:56', '2025-07-31 17:28:37'),
(15, NULL, 'banners/u9e0OpxeINNqbw5g79g6uH0tzPdBSLADtWiVXUwq.png', 'menu', NULL, NULL, 1, '2025-07-30 17:00:00', '2025-08-29 17:00:00', NULL, '2025-07-31 15:33:56', '2025-07-31 17:26:31'),
(16, NULL, 'banners/Uu8MCy5STBSh1mSuHdTCvZr0t9ip0LdYJBPRAqnM.png', 'branch', NULL, NULL, 1, '2025-07-30 17:00:00', '2025-08-29 17:00:00', NULL, '2025-07-31 15:33:56', '2025-07-31 17:35:19'),
(17, NULL, 'banners/nSa0g1MiiOxaUE5ojNmo9dWqvPP5fD4eFt7pRH3I.png', 'abouts', NULL, NULL, 1, '2025-07-30 17:00:00', '2025-08-29 17:00:00', NULL, '2025-07-31 15:33:56', '2025-07-31 17:31:01'),
(18, NULL, 'banners/0rHHQ4QZQh5RbVE7g8eJLOHj8Xwjt5oMh6eqT7CA.png', 'supports', NULL, NULL, 1, '2025-07-30 17:00:00', '2025-08-29 17:00:00', NULL, '2025-07-31 15:33:56', '2025-07-31 17:33:10'),
(19, NULL, 'banners/6YSKXTYj1EDoR4sJ2RnD2RTzPXs6c2wZFxpHkIrS.png', 'contacts', NULL, NULL, 1, '2025-07-30 17:00:00', '2025-08-29 17:00:00', NULL, '2025-07-31 15:33:56', '2025-07-31 17:33:24'),
(20, NULL, 'https://i.pinimg.com/736x/49/21/55/492155d25410b2927cd63e5991033c5e.jpg', 'homepage', NULL, NULL, 1, '2025-07-30 17:00:00', '2025-08-30 17:00:00', 0, '2025-07-31 17:14:23', '2025-08-29 16:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint UNSIGNED NOT NULL,
  `branch_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_user_id` bigint UNSIGNED DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `opening_hour` time NOT NULL,
  `closing_hour` time NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `rating` decimal(3,2) NOT NULL DEFAULT '5.00',
  `reliability_score` int NOT NULL DEFAULT '100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_code`, `name`, `address`, `phone`, `email`, `manager_user_id`, `latitude`, `longitude`, `opening_hour`, `closing_hour`, `active`, `balance`, `rating`, `reliability_score`, `created_at`, `updated_at`) VALUES
(1, 'HN001', 'Chi nhánh Đống Đa', '123 Đường Láng, Đống Đa, Hà Nội', '0243123456', 'hanoi1@devfoods.com', 2, '21.02780000', '105.83420000', '07:30:00', '22:30:00', 1, '5619.00', '5.00', 96, '2025-07-31 15:30:42', '2025-07-31 15:30:42'),
(2, 'HN002', 'Chi nhánh Cầu Giấy', 'Cầu Giấy, Hà Nội', '0243123457', 'hanoi2@devfoods.com', 2, '21.03620000', '105.78290000', '07:30:00', '22:30:00', 1, '6464.00', '4.60', 90, '2025-07-31 15:30:42', '2025-07-31 15:30:42'),
(3, 'HN003', 'Chi nhánh Hà Đông', 'Hà Đông, Hà Nội', '0243123458', 'hanoi3@devfoods.com', 2, '20.97260000', '105.77720000', '07:30:00', '22:30:00', 1, '5484.00', '4.80', 98, '2025-07-31 15:30:42', '2025-07-31 15:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `branch_images`
--

CREATE TABLE `branch_images` (
  `id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED NOT NULL,
  `image_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branch_stocks`
--

CREATE TABLE `branch_stocks` (
  `id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `stock_quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch_stocks`
--

INSERT INTO `branch_stocks` (`id`, `branch_id`, `product_variant_id`, `stock_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 105, NULL, NULL),
(2, 1, 2, 66, NULL, NULL),
(3, 1, 3, 76, NULL, NULL),
(4, 1, 4, 53, NULL, NULL),
(5, 1, 5, 96, NULL, NULL),
(6, 1, 6, 74, NULL, NULL),
(7, 1, 7, 135, NULL, NULL),
(8, 1, 8, 127, NULL, NULL),
(9, 1, 9, 80, NULL, NULL),
(10, 1, 10, 127, NULL, NULL),
(11, 1, 11, 108, NULL, NULL),
(12, 1, 12, 95, NULL, NULL),
(13, 1, 13, 48, NULL, NULL),
(14, 1, 14, 105, NULL, NULL),
(15, 1, 15, 126, NULL, NULL),
(16, 1, 16, 69, NULL, NULL),
(17, 1, 17, 32, NULL, NULL),
(18, 1, 18, 62, NULL, NULL),
(19, 1, 19, 40, NULL, NULL),
(20, 1, 20, 50, NULL, NULL),
(21, 1, 21, 89, NULL, NULL),
(22, 1, 22, 102, NULL, NULL),
(23, 1, 23, 144, NULL, NULL),
(24, 1, 24, 31, NULL, NULL),
(25, 1, 25, 37, NULL, NULL),
(26, 1, 26, 76, NULL, NULL),
(27, 1, 27, 143, NULL, NULL),
(28, 1, 28, 126, NULL, NULL),
(29, 1, 29, 57, NULL, NULL),
(30, 1, 30, 55, NULL, NULL),
(31, 1, 31, 143, NULL, NULL),
(32, 1, 32, 34, NULL, NULL),
(33, 1, 33, 137, NULL, NULL),
(34, 1, 34, 127, NULL, NULL),
(35, 1, 35, 150, NULL, NULL),
(36, 1, 36, 57, NULL, NULL),
(37, 1, 37, 117, NULL, NULL),
(38, 1, 38, 55, NULL, NULL),
(39, 1, 39, 129, NULL, NULL),
(40, 1, 40, 131, NULL, NULL),
(41, 1, 41, 99, NULL, NULL),
(42, 1, 42, 95, NULL, NULL),
(43, 1, 43, 61, NULL, NULL),
(44, 1, 44, 59, NULL, NULL),
(45, 1, 45, 98, NULL, NULL),
(46, 1, 46, 73, NULL, NULL),
(47, 1, 47, 40, NULL, NULL),
(48, 1, 48, 58, NULL, NULL),
(49, 1, 49, 47, NULL, NULL),
(50, 1, 50, 133, NULL, NULL),
(51, 1, 51, 46, NULL, NULL),
(52, 1, 52, 44, NULL, NULL),
(53, 1, 53, 125, NULL, NULL),
(54, 1, 54, 39, NULL, NULL),
(55, 1, 55, 96, NULL, NULL),
(56, 1, 56, 56, NULL, NULL),
(57, 1, 57, 58, NULL, NULL),
(58, 1, 58, 119, NULL, NULL),
(59, 1, 59, 61, NULL, NULL),
(60, 1, 60, 117, NULL, NULL),
(61, 1, 61, 80, NULL, NULL),
(62, 1, 62, 42, NULL, NULL),
(63, 1, 63, 47, NULL, NULL),
(64, 1, 64, 120, NULL, NULL),
(65, 1, 65, 139, NULL, NULL),
(66, 1, 66, 52, NULL, NULL),
(67, 1, 67, 135, NULL, NULL),
(68, 1, 68, 115, NULL, NULL),
(69, 1, 69, 109, NULL, NULL),
(70, 1, 70, 70, NULL, NULL),
(71, 1, 71, 74, NULL, NULL),
(72, 1, 72, 113, NULL, NULL),
(73, 1, 73, 144, NULL, NULL),
(74, 1, 74, 126, NULL, NULL),
(75, 1, 75, 71, NULL, NULL),
(76, 1, 76, 112, NULL, NULL),
(77, 1, 77, 121, NULL, NULL),
(78, 1, 78, 82, NULL, NULL),
(79, 1, 79, 134, NULL, NULL),
(80, 1, 80, 74, NULL, NULL),
(81, 1, 81, 111, NULL, NULL),
(82, 1, 82, 91, NULL, NULL),
(83, 1, 83, 111, NULL, NULL),
(84, 1, 84, 104, NULL, NULL),
(85, 1, 85, 64, NULL, NULL),
(86, 1, 86, 38, NULL, NULL),
(87, 1, 87, 147, NULL, NULL),
(88, 1, 88, 47, NULL, NULL),
(89, 1, 89, 119, NULL, NULL),
(90, 1, 90, 65, NULL, NULL),
(91, 1, 91, 54, NULL, NULL),
(92, 1, 92, 41, NULL, NULL),
(93, 1, 93, 135, NULL, NULL),
(94, 1, 94, 87, NULL, NULL),
(95, 1, 95, 129, NULL, NULL),
(96, 1, 96, 107, NULL, NULL),
(97, 1, 97, 30, NULL, NULL),
(98, 1, 98, 112, NULL, NULL),
(99, 1, 99, 57, NULL, NULL),
(100, 1, 100, 85, NULL, NULL),
(101, 1, 101, 48, NULL, NULL),
(102, 1, 102, 107, NULL, NULL),
(103, 1, 103, 89, NULL, NULL),
(104, 1, 104, 117, NULL, NULL),
(105, 1, 105, 115, NULL, NULL),
(106, 1, 106, 48, NULL, NULL),
(107, 1, 107, 88, NULL, NULL),
(108, 1, 108, 50, NULL, NULL),
(109, 1, 109, 135, NULL, NULL),
(110, 1, 110, 142, NULL, NULL),
(111, 1, 111, 85, NULL, NULL),
(112, 1, 112, 99, NULL, NULL),
(113, 1, 113, 139, NULL, NULL),
(114, 1, 114, 129, NULL, NULL),
(115, 1, 115, 57, NULL, NULL),
(116, 1, 116, 70, NULL, NULL),
(117, 1, 117, 65, NULL, NULL),
(118, 1, 118, 133, NULL, NULL),
(119, 1, 119, 98, NULL, NULL),
(120, 1, 120, 46, NULL, NULL),
(121, 1, 121, 119, NULL, NULL),
(122, 1, 122, 118, NULL, NULL),
(123, 1, 123, 77, NULL, NULL),
(124, 1, 124, 112, NULL, NULL),
(125, 1, 125, 48, NULL, NULL),
(126, 1, 126, 63, NULL, NULL),
(127, 1, 127, 114, NULL, NULL),
(128, 1, 128, 46, NULL, NULL),
(129, 1, 129, 140, NULL, NULL),
(130, 1, 130, 98, NULL, NULL),
(131, 1, 131, 123, NULL, NULL),
(132, 1, 132, 126, NULL, NULL),
(133, 1, 133, 82, NULL, NULL),
(134, 1, 134, 80, NULL, NULL),
(135, 1, 135, 110, NULL, NULL),
(136, 1, 136, 138, NULL, NULL),
(137, 1, 137, 129, NULL, NULL),
(138, 1, 138, 65, NULL, NULL),
(139, 1, 139, 118, NULL, NULL),
(140, 1, 140, 81, NULL, NULL),
(141, 1, 141, 81, NULL, NULL),
(142, 1, 142, 124, NULL, NULL),
(143, 1, 143, 147, NULL, NULL),
(144, 1, 144, 42, NULL, NULL),
(145, 1, 145, 36, NULL, NULL),
(146, 1, 146, 125, NULL, NULL),
(147, 1, 147, 123, NULL, NULL),
(148, 1, 148, 73, NULL, NULL),
(149, 1, 149, 119, NULL, NULL),
(150, 1, 150, 45, NULL, NULL),
(151, 1, 151, 118, NULL, NULL),
(152, 1, 152, 46, NULL, NULL),
(153, 1, 153, 84, NULL, NULL),
(154, 1, 154, 57, NULL, NULL),
(155, 1, 155, 86, NULL, NULL),
(156, 1, 156, 65, NULL, NULL),
(157, 1, 157, 96, NULL, NULL),
(158, 1, 158, 82, NULL, NULL),
(159, 1, 159, 102, NULL, NULL),
(160, 1, 160, 111, NULL, NULL),
(161, 1, 161, 30, NULL, NULL),
(162, 1, 162, 109, NULL, NULL),
(163, 1, 163, 31, NULL, NULL),
(164, 1, 164, 125, NULL, NULL),
(165, 1, 165, 121, NULL, NULL),
(166, 1, 166, 59, NULL, NULL),
(167, 1, 167, 142, NULL, NULL),
(168, 1, 168, 37, NULL, NULL),
(169, 1, 169, 66, NULL, NULL),
(170, 1, 170, 102, NULL, NULL),
(171, 1, 171, 107, NULL, NULL),
(172, 1, 172, 45, NULL, NULL),
(173, 1, 173, 99, NULL, NULL),
(174, 1, 174, 60, NULL, NULL),
(175, 1, 175, 104, NULL, NULL),
(176, 1, 176, 83, NULL, NULL),
(177, 1, 177, 59, NULL, NULL),
(178, 1, 178, 146, NULL, NULL),
(179, 1, 179, 132, NULL, NULL),
(180, 1, 180, 53, NULL, NULL),
(181, 1, 181, 82, NULL, NULL),
(182, 1, 182, 104, NULL, NULL),
(183, 1, 183, 90, NULL, NULL),
(184, 1, 184, 40, NULL, NULL),
(185, 1, 185, 76, NULL, NULL),
(186, 1, 186, 49, NULL, NULL),
(187, 1, 187, 56, NULL, NULL),
(188, 1, 188, 148, NULL, NULL),
(189, 1, 189, 81, NULL, NULL),
(190, 1, 190, 107, NULL, NULL),
(191, 1, 191, 52, NULL, NULL),
(192, 1, 192, 128, NULL, NULL),
(193, 1, 193, 124, NULL, NULL),
(194, 1, 194, 42, NULL, NULL),
(195, 1, 195, 94, NULL, NULL),
(196, 1, 196, 68, NULL, NULL),
(197, 1, 197, 90, NULL, NULL),
(198, 1, 198, 95, NULL, NULL),
(199, 1, 199, 71, NULL, NULL),
(200, 1, 200, 61, NULL, NULL),
(201, 1, 201, 35, NULL, NULL),
(202, 1, 202, 113, NULL, NULL),
(203, 1, 203, 104, NULL, NULL),
(204, 1, 204, 93, NULL, NULL),
(205, 1, 205, 65, NULL, NULL),
(206, 1, 206, 142, NULL, NULL),
(207, 1, 207, 59, NULL, NULL),
(208, 1, 208, 37, NULL, NULL),
(209, 1, 209, 83, NULL, NULL),
(210, 1, 210, 107, NULL, NULL),
(211, 1, 211, 80, NULL, NULL),
(212, 1, 212, 58, NULL, NULL),
(213, 1, 213, 76, NULL, NULL),
(214, 1, 214, 107, NULL, NULL),
(215, 1, 215, 44, NULL, NULL),
(216, 1, 216, 98, NULL, NULL),
(217, 1, 217, 81, NULL, NULL),
(218, 1, 218, 149, NULL, NULL),
(219, 1, 219, 71, NULL, NULL),
(220, 1, 220, 136, NULL, NULL),
(221, 1, 221, 46, NULL, NULL),
(222, 1, 222, 53, NULL, NULL),
(223, 1, 223, 133, NULL, NULL),
(224, 1, 224, 99, NULL, NULL),
(225, 1, 225, 97, NULL, NULL),
(226, 1, 226, 48, NULL, NULL),
(227, 1, 227, 54, NULL, NULL),
(228, 1, 228, 147, NULL, NULL),
(229, 1, 229, 93, NULL, NULL),
(230, 1, 230, 84, NULL, NULL),
(231, 1, 231, 34, NULL, NULL),
(232, 1, 232, 82, NULL, NULL),
(233, 1, 233, 143, NULL, NULL),
(234, 1, 234, 81, NULL, NULL),
(235, 1, 235, 97, NULL, NULL),
(236, 1, 236, 136, NULL, NULL),
(237, 1, 237, 41, NULL, NULL),
(238, 1, 238, 37, NULL, NULL),
(239, 1, 239, 135, NULL, NULL),
(240, 1, 240, 33, NULL, NULL),
(241, 1, 241, 114, NULL, NULL),
(242, 1, 242, 87, NULL, NULL),
(243, 1, 243, 101, NULL, NULL),
(244, 1, 244, 81, NULL, NULL),
(245, 1, 245, 136, NULL, NULL),
(246, 1, 246, 104, NULL, NULL),
(247, 1, 247, 137, NULL, NULL),
(248, 1, 248, 146, NULL, NULL),
(249, 1, 249, 61, NULL, NULL),
(250, 1, 250, 131, NULL, NULL),
(251, 1, 251, 140, NULL, NULL),
(252, 1, 252, 115, NULL, NULL),
(253, 1, 253, 125, NULL, NULL),
(254, 1, 254, 78, NULL, NULL),
(255, 1, 255, 85, NULL, NULL),
(256, 1, 256, 108, NULL, NULL),
(257, 1, 257, 77, NULL, NULL),
(258, 1, 258, 104, NULL, NULL),
(259, 1, 259, 140, NULL, NULL),
(260, 1, 260, 122, NULL, NULL),
(261, 1, 261, 134, NULL, NULL),
(262, 1, 262, 125, NULL, NULL),
(263, 1, 263, 99, NULL, NULL),
(264, 1, 264, 139, NULL, NULL),
(265, 1, 265, 123, NULL, NULL),
(266, 1, 266, 106, NULL, NULL),
(267, 1, 267, 82, NULL, NULL),
(268, 1, 268, 97, NULL, NULL),
(269, 1, 269, 110, NULL, NULL),
(270, 1, 270, 105, NULL, NULL),
(271, 1, 271, 37, NULL, NULL),
(272, 1, 272, 121, NULL, NULL),
(273, 1, 273, 124, NULL, NULL),
(274, 1, 274, 110, NULL, NULL),
(275, 1, 275, 95, NULL, NULL),
(276, 1, 276, 132, NULL, NULL),
(277, 1, 277, 118, NULL, NULL),
(278, 1, 278, 131, NULL, NULL),
(279, 1, 279, 87, NULL, NULL),
(280, 1, 280, 74, NULL, NULL),
(281, 1, 281, 141, NULL, NULL),
(282, 1, 282, 49, NULL, NULL),
(283, 1, 283, 50, NULL, NULL),
(284, 1, 284, 136, NULL, NULL),
(285, 1, 285, 108, NULL, NULL),
(286, 1, 286, 145, NULL, NULL),
(287, 1, 287, 109, NULL, NULL),
(288, 1, 288, 34, NULL, NULL),
(289, 1, 289, 142, NULL, NULL),
(290, 1, 290, 111, NULL, NULL),
(291, 1, 291, 69, NULL, NULL),
(292, 1, 292, 106, NULL, NULL),
(293, 1, 293, 78, NULL, NULL),
(294, 1, 294, 116, NULL, NULL),
(295, 1, 295, 85, NULL, NULL),
(296, 1, 296, 85, NULL, NULL),
(297, 1, 297, 81, NULL, NULL),
(298, 1, 298, 51, NULL, NULL),
(299, 1, 299, 147, NULL, NULL),
(300, 1, 300, 76, NULL, NULL),
(301, 1, 301, 58, NULL, NULL),
(302, 1, 302, 36, NULL, NULL),
(303, 1, 303, 135, NULL, NULL),
(304, 1, 304, 123, NULL, NULL),
(305, 1, 305, 50, NULL, NULL),
(306, 1, 306, 59, NULL, NULL),
(307, 1, 307, 45, NULL, NULL),
(308, 1, 308, 131, NULL, NULL),
(309, 1, 309, 105, NULL, NULL),
(310, 1, 310, 83, NULL, NULL),
(311, 1, 311, 88, NULL, NULL),
(312, 1, 312, 37, NULL, NULL),
(313, 1, 313, 38, NULL, NULL),
(314, 1, 314, 107, NULL, NULL),
(315, 1, 315, 97, NULL, NULL),
(316, 1, 316, 132, NULL, NULL),
(317, 1, 317, 72, NULL, NULL),
(318, 1, 318, 36, NULL, NULL),
(319, 1, 319, 107, NULL, NULL),
(320, 1, 320, 30, NULL, NULL),
(321, 1, 321, 136, NULL, NULL),
(322, 1, 322, 96, NULL, NULL),
(323, 1, 323, 74, NULL, NULL),
(324, 1, 324, 96, NULL, NULL),
(325, 1, 325, 95, NULL, NULL),
(326, 1, 326, 76, NULL, NULL),
(327, 1, 327, 48, NULL, NULL),
(328, 1, 328, 52, NULL, NULL),
(329, 1, 329, 34, NULL, NULL),
(330, 1, 330, 42, NULL, NULL),
(331, 1, 331, 82, NULL, NULL),
(332, 1, 332, 90, NULL, NULL),
(333, 1, 333, 84, NULL, NULL),
(334, 1, 334, 74, NULL, NULL),
(335, 1, 335, 59, NULL, NULL),
(336, 1, 336, 67, NULL, NULL),
(337, 1, 337, 90, NULL, NULL),
(338, 1, 338, 133, NULL, NULL),
(339, 1, 339, 63, NULL, NULL),
(340, 1, 340, 84, NULL, NULL),
(341, 1, 341, 48, NULL, NULL),
(342, 1, 342, 149, NULL, NULL),
(343, 1, 343, 90, NULL, NULL),
(344, 1, 344, 41, NULL, NULL),
(345, 1, 345, 57, NULL, NULL),
(346, 1, 346, 135, NULL, NULL),
(347, 1, 347, 114, NULL, NULL),
(348, 1, 348, 41, NULL, NULL),
(349, 1, 349, 132, NULL, NULL),
(350, 1, 350, 130, NULL, NULL),
(351, 1, 351, 148, NULL, NULL),
(352, 1, 352, 51, NULL, NULL),
(353, 1, 353, 88, NULL, NULL),
(354, 1, 354, 41, NULL, NULL),
(355, 1, 355, 107, NULL, NULL),
(356, 1, 356, 111, NULL, NULL),
(357, 1, 357, 129, NULL, NULL),
(358, 1, 358, 105, NULL, NULL),
(359, 1, 359, 81, NULL, NULL),
(360, 1, 360, 106, NULL, NULL),
(361, 1, 361, 89, NULL, NULL),
(362, 1, 362, 70, NULL, NULL),
(363, 1, 363, 127, NULL, NULL),
(364, 1, 364, 148, NULL, NULL),
(365, 1, 365, 57, NULL, NULL),
(366, 1, 366, 141, NULL, NULL),
(367, 1, 367, 50, NULL, NULL),
(368, 1, 368, 55, NULL, NULL),
(369, 1, 369, 120, NULL, NULL),
(370, 1, 370, 89, NULL, NULL),
(371, 1, 371, 97, NULL, NULL),
(372, 1, 372, 90, NULL, NULL),
(373, 1, 373, 74, NULL, NULL),
(374, 1, 374, 50, NULL, NULL),
(375, 1, 375, 62, NULL, NULL),
(376, 1, 376, 48, NULL, NULL),
(377, 1, 377, 74, NULL, NULL),
(378, 1, 378, 71, NULL, NULL),
(379, 1, 379, 137, NULL, NULL),
(380, 1, 380, 50, NULL, NULL),
(381, 1, 381, 53, NULL, NULL),
(382, 1, 382, 87, NULL, NULL),
(383, 1, 383, 89, NULL, NULL),
(384, 1, 384, 113, NULL, NULL),
(385, 1, 385, 33, NULL, NULL),
(386, 1, 386, 101, NULL, NULL),
(387, 1, 387, 69, NULL, NULL),
(388, 1, 388, 34, NULL, NULL),
(389, 1, 389, 82, NULL, NULL),
(390, 1, 390, 148, NULL, NULL),
(391, 1, 391, 61, NULL, NULL),
(392, 1, 392, 107, NULL, NULL),
(393, 1, 393, 67, NULL, NULL),
(394, 1, 394, 74, NULL, NULL),
(395, 1, 395, 31, NULL, NULL),
(396, 1, 396, 137, NULL, NULL),
(397, 1, 397, 139, NULL, NULL),
(398, 1, 398, 47, NULL, NULL),
(399, 1, 399, 43, NULL, NULL),
(400, 1, 400, 118, NULL, NULL),
(401, 1, 401, 74, NULL, NULL),
(402, 1, 402, 42, NULL, NULL),
(403, 1, 403, 131, NULL, NULL),
(404, 1, 404, 71, NULL, NULL),
(405, 1, 405, 110, NULL, NULL),
(406, 1, 406, 107, NULL, NULL),
(407, 1, 407, 149, NULL, NULL),
(408, 1, 408, 130, NULL, NULL),
(409, 1, 409, 65, NULL, NULL),
(410, 1, 410, 47, NULL, NULL),
(411, 1, 411, 102, NULL, NULL),
(412, 1, 412, 101, NULL, NULL),
(413, 1, 413, 86, NULL, NULL),
(414, 1, 414, 141, NULL, NULL),
(415, 1, 415, 55, NULL, NULL),
(416, 1, 416, 99, NULL, NULL),
(417, 1, 417, 61, NULL, NULL),
(418, 1, 418, 122, NULL, NULL),
(419, 1, 419, 57, NULL, NULL),
(420, 1, 420, 31, NULL, NULL),
(421, 1, 421, 73, NULL, NULL),
(422, 1, 422, 128, NULL, NULL),
(423, 1, 423, 72, NULL, NULL),
(424, 1, 424, 119, NULL, NULL),
(425, 1, 425, 30, NULL, NULL),
(426, 1, 426, 106, NULL, NULL),
(427, 1, 427, 45, NULL, NULL),
(428, 1, 428, 137, NULL, NULL),
(429, 1, 429, 57, NULL, NULL),
(430, 1, 430, 107, NULL, NULL),
(431, 1, 431, 75, NULL, NULL),
(432, 1, 432, 83, NULL, NULL),
(433, 1, 433, 134, NULL, NULL),
(434, 1, 434, 60, NULL, NULL),
(435, 1, 435, 37, NULL, NULL),
(436, 1, 436, 119, NULL, NULL),
(437, 1, 437, 56, NULL, NULL),
(438, 1, 438, 79, NULL, NULL),
(439, 1, 439, 61, NULL, NULL),
(440, 1, 440, 127, NULL, NULL),
(441, 1, 441, 45, NULL, NULL),
(442, 1, 442, 100, NULL, NULL),
(443, 1, 443, 105, NULL, NULL),
(444, 1, 444, 81, NULL, NULL),
(445, 1, 445, 140, NULL, NULL),
(446, 1, 446, 85, NULL, NULL),
(447, 1, 447, 81, NULL, NULL),
(448, 1, 448, 116, NULL, NULL),
(449, 1, 449, 102, NULL, NULL),
(450, 1, 450, 56, NULL, NULL),
(451, 1, 451, 52, NULL, NULL),
(452, 1, 452, 103, NULL, NULL),
(453, 1, 453, 89, NULL, NULL),
(454, 1, 454, 132, NULL, NULL),
(455, 1, 455, 105, NULL, NULL),
(456, 1, 456, 96, NULL, NULL),
(457, 1, 457, 90, NULL, NULL),
(458, 1, 458, 125, NULL, NULL),
(459, 1, 459, 67, NULL, NULL),
(460, 1, 460, 132, NULL, NULL),
(461, 1, 461, 143, NULL, NULL),
(462, 1, 462, 125, NULL, NULL),
(463, 1, 463, 60, NULL, NULL),
(464, 1, 464, 99, NULL, NULL),
(465, 1, 465, 41, NULL, NULL),
(466, 1, 466, 45, NULL, NULL),
(467, 1, 467, 146, NULL, NULL),
(468, 1, 468, 99, NULL, NULL),
(469, 1, 469, 45, NULL, NULL),
(470, 1, 470, 56, NULL, NULL),
(471, 1, 471, 120, NULL, NULL),
(472, 1, 472, 98, NULL, NULL),
(473, 1, 473, 40, NULL, NULL),
(474, 1, 474, 95, NULL, NULL),
(475, 1, 475, 93, NULL, NULL),
(476, 1, 476, 83, NULL, NULL),
(477, 1, 477, 74, NULL, NULL),
(478, 1, 478, 52, NULL, NULL),
(479, 1, 479, 35, NULL, NULL),
(480, 1, 480, 68, NULL, NULL),
(481, 1, 481, 136, NULL, NULL),
(482, 1, 482, 131, NULL, NULL),
(483, 1, 483, 123, NULL, NULL),
(484, 1, 484, 76, NULL, NULL),
(485, 1, 485, 47, NULL, NULL),
(486, 1, 486, 40, NULL, NULL),
(487, 1, 487, 133, NULL, NULL),
(488, 1, 488, 45, NULL, NULL),
(489, 1, 489, 68, NULL, NULL),
(490, 1, 490, 144, NULL, NULL),
(491, 1, 491, 45, NULL, NULL),
(492, 1, 492, 64, NULL, NULL),
(493, 1, 493, 33, NULL, NULL),
(494, 1, 494, 128, NULL, NULL),
(495, 1, 495, 80, NULL, NULL),
(496, 1, 496, 136, NULL, NULL),
(497, 1, 497, 145, NULL, NULL),
(498, 1, 498, 122, NULL, NULL),
(499, 1, 499, 54, NULL, NULL),
(500, 1, 500, 100, NULL, NULL),
(501, 1, 501, 103, NULL, NULL),
(502, 1, 502, 94, NULL, NULL),
(503, 1, 503, 131, NULL, NULL),
(504, 1, 504, 72, NULL, NULL),
(505, 1, 505, 30, NULL, NULL),
(506, 1, 506, 112, NULL, NULL),
(507, 1, 507, 130, NULL, NULL),
(508, 1, 508, 38, NULL, NULL),
(509, 1, 509, 127, NULL, NULL),
(510, 1, 510, 143, NULL, NULL),
(511, 1, 511, 89, NULL, NULL),
(512, 1, 512, 50, NULL, NULL),
(513, 1, 513, 58, NULL, NULL),
(514, 1, 514, 75, NULL, NULL),
(515, 1, 515, 138, NULL, NULL),
(516, 1, 516, 60, NULL, NULL),
(517, 1, 517, 133, NULL, NULL),
(518, 1, 518, 115, NULL, NULL),
(519, 1, 519, 108, NULL, NULL),
(520, 1, 520, 146, NULL, NULL),
(521, 1, 521, 31, NULL, NULL),
(522, 1, 522, 63, NULL, NULL),
(523, 1, 523, 35, NULL, NULL),
(524, 1, 524, 118, NULL, NULL),
(525, 1, 525, 100, NULL, NULL),
(526, 1, 526, 102, NULL, NULL),
(527, 1, 527, 81, NULL, NULL),
(528, 1, 528, 30, NULL, NULL),
(529, 1, 529, 126, NULL, NULL),
(530, 1, 530, 146, NULL, NULL),
(531, 1, 531, 65, NULL, NULL),
(532, 1, 532, 141, NULL, NULL),
(533, 1, 533, 75, NULL, NULL),
(534, 1, 534, 146, NULL, NULL),
(535, 1, 535, 89, NULL, NULL),
(536, 1, 536, 100, NULL, NULL),
(537, 1, 537, 114, NULL, NULL),
(538, 1, 538, 71, NULL, NULL),
(539, 1, 539, 71, NULL, NULL),
(540, 1, 540, 51, NULL, NULL),
(541, 2, 1, 75, NULL, NULL),
(542, 2, 2, 50, NULL, NULL),
(543, 2, 3, 66, NULL, NULL),
(544, 2, 4, 101, NULL, NULL),
(545, 2, 5, 136, NULL, NULL),
(546, 2, 6, 128, NULL, NULL),
(547, 2, 7, 120, NULL, NULL),
(548, 2, 8, 120, NULL, NULL),
(549, 2, 9, 120, NULL, NULL),
(550, 2, 10, 120, NULL, NULL),
(551, 2, 11, 120, NULL, NULL),
(552, 2, 12, 120, NULL, NULL),
(553, 2, 13, 112, NULL, NULL),
(554, 2, 14, 70, NULL, NULL),
(555, 2, 15, 74, NULL, NULL),
(556, 2, 16, 48, NULL, NULL),
(557, 2, 17, 85, NULL, NULL),
(558, 2, 18, 114, NULL, NULL),
(559, 2, 19, 96, NULL, NULL),
(560, 2, 20, 31, NULL, NULL),
(561, 2, 21, 121, NULL, NULL),
(562, 2, 22, 136, NULL, NULL),
(563, 2, 23, 143, NULL, NULL),
(564, 2, 24, 124, NULL, NULL),
(565, 2, 25, 84, NULL, NULL),
(566, 2, 26, 140, NULL, NULL),
(567, 2, 27, 54, NULL, NULL),
(568, 2, 28, 101, NULL, NULL),
(569, 2, 29, 115, NULL, NULL),
(570, 2, 30, 34, NULL, NULL),
(571, 2, 31, 98, NULL, NULL),
(572, 2, 32, 112, NULL, NULL),
(573, 2, 33, 86, NULL, NULL),
(574, 2, 34, 132, NULL, NULL),
(575, 2, 35, 36, NULL, NULL),
(576, 2, 36, 99, NULL, NULL),
(577, 2, 37, 62, NULL, NULL),
(578, 2, 38, 124, NULL, NULL),
(579, 2, 39, 105, NULL, NULL),
(580, 2, 40, 118, NULL, NULL),
(581, 2, 41, 30, NULL, NULL),
(582, 2, 42, 121, NULL, NULL),
(583, 2, 43, 138, NULL, NULL),
(584, 2, 44, 51, NULL, NULL),
(585, 2, 45, 53, NULL, NULL),
(586, 2, 46, 134, NULL, NULL),
(587, 2, 47, 113, NULL, NULL),
(588, 2, 48, 44, NULL, NULL),
(589, 2, 49, 135, NULL, NULL),
(590, 2, 50, 122, NULL, NULL),
(591, 2, 51, 77, NULL, NULL),
(592, 2, 52, 139, NULL, NULL),
(593, 2, 53, 121, NULL, NULL),
(594, 2, 54, 39, NULL, NULL),
(595, 2, 55, 36, NULL, NULL),
(596, 2, 56, 144, NULL, NULL),
(597, 2, 57, 83, NULL, NULL),
(598, 2, 58, 64, NULL, NULL),
(599, 2, 59, 33, NULL, NULL),
(600, 2, 60, 92, NULL, NULL),
(601, 2, 61, 93, NULL, NULL),
(602, 2, 62, 143, NULL, NULL),
(603, 2, 63, 97, NULL, NULL),
(604, 2, 64, 132, NULL, NULL),
(605, 2, 65, 126, NULL, NULL),
(606, 2, 66, 90, NULL, NULL),
(607, 2, 67, 147, NULL, NULL),
(608, 2, 68, 37, NULL, NULL),
(609, 2, 69, 31, NULL, NULL),
(610, 2, 70, 105, NULL, NULL),
(611, 2, 71, 83, NULL, NULL),
(612, 2, 72, 101, NULL, NULL),
(613, 2, 73, 10, NULL, NULL),
(614, 2, 74, 10, NULL, NULL),
(615, 2, 75, 10, NULL, NULL),
(616, 2, 76, 10, NULL, NULL),
(617, 2, 77, 10, NULL, NULL),
(618, 2, 78, 10, NULL, NULL),
(619, 2, 79, 53, NULL, NULL),
(620, 2, 80, 99, NULL, NULL),
(621, 2, 81, 64, NULL, NULL),
(622, 2, 82, 122, NULL, NULL),
(623, 2, 83, 36, NULL, NULL),
(624, 2, 84, 113, NULL, NULL),
(625, 2, 85, 99, NULL, NULL),
(626, 2, 86, 102, NULL, NULL),
(627, 2, 87, 35, NULL, NULL),
(628, 2, 88, 55, NULL, NULL),
(629, 2, 89, 75, NULL, NULL),
(630, 2, 90, 106, NULL, NULL),
(631, 2, 91, 57, NULL, NULL),
(632, 2, 92, 53, NULL, NULL),
(633, 2, 93, 42, NULL, NULL),
(634, 2, 94, 79, NULL, NULL),
(635, 2, 95, 80, NULL, NULL),
(636, 2, 96, 119, NULL, NULL),
(637, 2, 97, 102, NULL, NULL),
(638, 2, 98, 108, NULL, NULL),
(639, 2, 99, 107, NULL, NULL),
(640, 2, 100, 103, NULL, NULL),
(641, 2, 101, 87, NULL, NULL),
(642, 2, 102, 34, NULL, NULL),
(643, 2, 103, 128, NULL, NULL),
(644, 2, 104, 80, NULL, NULL),
(645, 2, 105, 131, NULL, NULL),
(646, 2, 106, 114, NULL, NULL),
(647, 2, 107, 47, NULL, NULL),
(648, 2, 108, 109, NULL, NULL),
(649, 2, 109, 71, NULL, NULL),
(650, 2, 110, 105, NULL, NULL),
(651, 2, 111, 51, NULL, NULL),
(652, 2, 112, 50, NULL, NULL),
(653, 2, 113, 40, NULL, NULL),
(654, 2, 114, 108, NULL, NULL),
(655, 2, 115, 137, NULL, NULL),
(656, 2, 116, 49, NULL, NULL),
(657, 2, 117, 57, NULL, NULL),
(658, 2, 118, 96, NULL, NULL),
(659, 2, 119, 67, NULL, NULL),
(660, 2, 120, 125, NULL, NULL),
(661, 2, 121, 141, NULL, NULL),
(662, 2, 122, 35, NULL, NULL),
(663, 2, 123, 34, NULL, NULL),
(664, 2, 124, 145, NULL, NULL),
(665, 2, 125, 57, NULL, NULL),
(666, 2, 126, 41, NULL, NULL),
(667, 2, 127, 121, NULL, NULL),
(668, 2, 128, 33, NULL, NULL),
(669, 2, 129, 150, NULL, NULL),
(670, 2, 130, 129, NULL, NULL),
(671, 2, 131, 103, NULL, NULL),
(672, 2, 132, 63, NULL, NULL),
(673, 2, 133, 63, NULL, NULL),
(674, 2, 134, 71, NULL, NULL),
(675, 2, 135, 40, NULL, NULL),
(676, 2, 136, 35, NULL, NULL),
(677, 2, 137, 126, NULL, NULL),
(678, 2, 138, 136, NULL, NULL),
(679, 2, 139, 138, NULL, NULL),
(680, 2, 140, 109, NULL, NULL),
(681, 2, 141, 43, NULL, NULL),
(682, 2, 142, 38, NULL, NULL),
(683, 2, 143, 34, NULL, NULL),
(684, 2, 144, 135, NULL, NULL),
(685, 2, 145, 36, NULL, NULL),
(686, 2, 146, 81, NULL, NULL),
(687, 2, 147, 123, NULL, NULL),
(688, 2, 148, 100, NULL, NULL),
(689, 2, 149, 149, NULL, NULL),
(690, 2, 150, 64, NULL, NULL),
(691, 2, 151, 140, NULL, NULL),
(692, 2, 152, 131, NULL, NULL),
(693, 2, 153, 42, NULL, NULL),
(694, 2, 154, 50, NULL, NULL),
(695, 2, 155, 56, NULL, NULL),
(696, 2, 156, 52, NULL, NULL),
(697, 2, 157, 89, NULL, NULL),
(698, 2, 158, 52, NULL, NULL),
(699, 2, 159, 104, NULL, NULL),
(700, 2, 160, 141, NULL, NULL),
(701, 2, 161, 107, NULL, NULL),
(702, 2, 162, 109, NULL, NULL),
(703, 2, 163, 142, NULL, NULL),
(704, 2, 164, 62, NULL, NULL),
(705, 2, 165, 101, NULL, NULL),
(706, 2, 166, 138, NULL, NULL),
(707, 2, 167, 106, NULL, NULL),
(708, 2, 168, 57, NULL, NULL),
(709, 2, 169, 91, NULL, NULL),
(710, 2, 170, 35, NULL, NULL),
(711, 2, 171, 45, NULL, NULL),
(712, 2, 172, 72, NULL, NULL),
(713, 2, 173, 36, NULL, NULL),
(714, 2, 174, 46, NULL, NULL),
(715, 2, 175, 76, NULL, NULL),
(716, 2, 176, 90, NULL, NULL),
(717, 2, 177, 54, NULL, NULL),
(718, 2, 178, 74, NULL, NULL),
(719, 2, 179, 76, NULL, NULL),
(720, 2, 180, 84, NULL, NULL),
(721, 2, 181, 51, NULL, NULL),
(722, 2, 182, 102, NULL, NULL),
(723, 2, 183, 45, NULL, NULL),
(724, 2, 184, 83, NULL, NULL),
(725, 2, 185, 54, NULL, NULL),
(726, 2, 186, 72, NULL, NULL),
(727, 2, 187, 97, NULL, NULL),
(728, 2, 188, 65, NULL, NULL),
(729, 2, 189, 94, NULL, NULL),
(730, 2, 190, 72, NULL, NULL),
(731, 2, 191, 77, NULL, NULL),
(732, 2, 192, 118, NULL, NULL),
(733, 2, 193, 140, NULL, NULL),
(734, 2, 194, 116, NULL, NULL),
(735, 2, 195, 148, NULL, NULL),
(736, 2, 196, 65, NULL, NULL),
(737, 2, 197, 125, NULL, NULL),
(738, 2, 198, 79, NULL, NULL),
(739, 2, 199, 145, NULL, NULL),
(740, 2, 200, 106, NULL, NULL),
(741, 2, 201, 90, NULL, NULL),
(742, 2, 202, 78, NULL, NULL),
(743, 2, 203, 131, NULL, NULL),
(744, 2, 204, 71, NULL, NULL),
(745, 2, 205, 59, NULL, NULL),
(746, 2, 206, 62, NULL, NULL),
(747, 2, 207, 96, NULL, NULL),
(748, 2, 208, 37, NULL, NULL),
(749, 2, 209, 146, NULL, NULL),
(750, 2, 210, 74, NULL, NULL),
(751, 2, 211, 36, NULL, NULL),
(752, 2, 212, 142, NULL, NULL),
(753, 2, 213, 120, NULL, NULL),
(754, 2, 214, 126, NULL, NULL),
(755, 2, 215, 96, NULL, NULL),
(756, 2, 216, 34, NULL, NULL),
(757, 2, 217, 124, NULL, NULL),
(758, 2, 218, 113, NULL, NULL),
(759, 2, 219, 96, NULL, NULL),
(760, 2, 220, 52, NULL, NULL),
(761, 2, 221, 131, NULL, NULL),
(762, 2, 222, 144, NULL, NULL),
(763, 2, 223, 48, NULL, NULL),
(764, 2, 224, 37, NULL, NULL),
(765, 2, 225, 31, NULL, NULL),
(766, 2, 226, 64, NULL, NULL),
(767, 2, 227, 105, NULL, NULL),
(768, 2, 228, 78, NULL, NULL),
(769, 2, 229, 49, NULL, NULL),
(770, 2, 230, 131, NULL, NULL),
(771, 2, 231, 93, NULL, NULL),
(772, 2, 232, 124, NULL, NULL),
(773, 2, 233, 47, NULL, NULL),
(774, 2, 234, 72, NULL, NULL),
(775, 2, 235, 136, NULL, NULL),
(776, 2, 236, 105, NULL, NULL),
(777, 2, 237, 45, NULL, NULL),
(778, 2, 238, 98, NULL, NULL),
(779, 2, 239, 81, NULL, NULL),
(780, 2, 240, 145, NULL, NULL),
(781, 2, 241, 113, NULL, NULL),
(782, 2, 242, 96, NULL, NULL),
(783, 2, 243, 111, NULL, NULL),
(784, 2, 244, 107, NULL, NULL),
(785, 2, 245, 126, NULL, NULL),
(786, 2, 246, 113, NULL, NULL),
(787, 2, 247, 34, NULL, NULL),
(788, 2, 248, 91, NULL, NULL),
(789, 2, 249, 107, NULL, NULL),
(790, 2, 250, 105, NULL, NULL),
(791, 2, 251, 71, NULL, NULL),
(792, 2, 252, 70, NULL, NULL),
(793, 2, 253, 113, NULL, NULL),
(794, 2, 254, 93, NULL, NULL),
(795, 2, 255, 52, NULL, NULL),
(796, 2, 256, 99, NULL, NULL),
(797, 2, 257, 128, NULL, NULL),
(798, 2, 258, 62, NULL, NULL),
(799, 2, 259, 102, NULL, NULL),
(800, 2, 260, 47, NULL, NULL),
(801, 2, 261, 133, NULL, NULL),
(802, 2, 262, 143, NULL, NULL),
(803, 2, 263, 97, NULL, NULL),
(804, 2, 264, 75, NULL, NULL),
(805, 2, 265, 91, NULL, NULL),
(806, 2, 266, 57, NULL, NULL),
(807, 2, 267, 103, NULL, NULL),
(808, 2, 268, 113, NULL, NULL),
(809, 2, 269, 81, NULL, NULL),
(810, 2, 270, 88, NULL, NULL),
(811, 2, 271, 94, NULL, NULL),
(812, 2, 272, 88, NULL, NULL),
(813, 2, 273, 104, NULL, NULL),
(814, 2, 274, 41, NULL, NULL),
(815, 2, 275, 96, NULL, NULL),
(816, 2, 276, 56, NULL, NULL),
(817, 2, 277, 121, NULL, NULL),
(818, 2, 278, 142, NULL, NULL),
(819, 2, 279, 147, NULL, NULL),
(820, 2, 280, 40, NULL, NULL),
(821, 2, 281, 50, NULL, NULL),
(822, 2, 282, 146, NULL, NULL),
(823, 2, 283, 115, NULL, NULL),
(824, 2, 284, 145, NULL, NULL),
(825, 2, 285, 48, NULL, NULL),
(826, 2, 286, 79, NULL, NULL),
(827, 2, 287, 58, NULL, NULL),
(828, 2, 288, 149, NULL, NULL),
(829, 2, 289, 109, NULL, NULL),
(830, 2, 290, 38, NULL, NULL),
(831, 2, 291, 51, NULL, NULL),
(832, 2, 292, 82, NULL, NULL),
(833, 2, 293, 44, NULL, NULL),
(834, 2, 294, 71, NULL, NULL),
(835, 2, 295, 114, NULL, NULL),
(836, 2, 296, 141, NULL, NULL),
(837, 2, 297, 105, NULL, NULL),
(838, 2, 298, 79, NULL, NULL),
(839, 2, 299, 42, NULL, NULL),
(840, 2, 300, 144, NULL, NULL),
(841, 2, 301, 85, NULL, NULL),
(842, 2, 302, 80, NULL, NULL),
(843, 2, 303, 121, NULL, NULL),
(844, 2, 304, 91, NULL, NULL),
(845, 2, 305, 85, NULL, NULL),
(846, 2, 306, 59, NULL, NULL),
(847, 2, 307, 130, NULL, NULL),
(848, 2, 308, 50, NULL, NULL),
(849, 2, 309, 128, NULL, NULL),
(850, 2, 310, 51, NULL, NULL),
(851, 2, 311, 140, NULL, NULL),
(852, 2, 312, 83, NULL, NULL),
(853, 2, 313, 112, NULL, NULL),
(854, 2, 314, 32, NULL, NULL),
(855, 2, 315, 149, NULL, NULL),
(856, 2, 316, 101, NULL, NULL),
(857, 2, 317, 87, NULL, NULL),
(858, 2, 318, 33, NULL, NULL),
(859, 2, 319, 69, NULL, NULL),
(860, 2, 320, 37, NULL, NULL),
(861, 2, 321, 34, NULL, NULL),
(862, 2, 322, 86, NULL, NULL),
(863, 2, 323, 46, NULL, NULL),
(864, 2, 324, 137, NULL, NULL),
(865, 2, 325, 92, NULL, NULL),
(866, 2, 326, 140, NULL, NULL),
(867, 2, 327, 97, NULL, NULL),
(868, 2, 328, 106, NULL, NULL),
(869, 2, 329, 45, NULL, NULL),
(870, 2, 330, 77, NULL, NULL),
(871, 2, 331, 139, NULL, NULL),
(872, 2, 332, 81, NULL, NULL),
(873, 2, 333, 71, NULL, NULL),
(874, 2, 334, 84, NULL, NULL),
(875, 2, 335, 142, NULL, NULL),
(876, 2, 336, 141, NULL, NULL),
(877, 2, 337, 39, NULL, NULL),
(878, 2, 338, 130, NULL, NULL),
(879, 2, 339, 43, NULL, NULL),
(880, 2, 340, 95, NULL, NULL),
(881, 2, 341, 34, NULL, NULL),
(882, 2, 342, 123, NULL, NULL),
(883, 2, 343, 143, NULL, NULL),
(884, 2, 344, 93, NULL, NULL),
(885, 2, 345, 112, NULL, NULL),
(886, 2, 346, 128, NULL, NULL),
(887, 2, 347, 34, NULL, NULL),
(888, 2, 348, 83, NULL, NULL),
(889, 2, 349, 30, NULL, NULL),
(890, 2, 350, 69, NULL, NULL),
(891, 2, 351, 143, NULL, NULL),
(892, 2, 352, 88, NULL, NULL),
(893, 2, 353, 125, NULL, NULL),
(894, 2, 354, 73, NULL, NULL),
(895, 2, 355, 132, NULL, NULL),
(896, 2, 356, 142, NULL, NULL),
(897, 2, 357, 39, NULL, NULL),
(898, 2, 358, 35, NULL, NULL),
(899, 2, 359, 90, NULL, NULL),
(900, 2, 360, 80, NULL, NULL),
(901, 2, 361, 67, NULL, NULL),
(902, 2, 362, 139, NULL, NULL),
(903, 2, 363, 97, NULL, NULL),
(904, 2, 364, 132, NULL, NULL),
(905, 2, 365, 131, NULL, NULL),
(906, 2, 366, 85, NULL, NULL),
(907, 2, 367, 55, NULL, NULL),
(908, 2, 368, 132, NULL, NULL),
(909, 2, 369, 72, NULL, NULL),
(910, 2, 370, 37, NULL, NULL),
(911, 2, 371, 119, NULL, NULL),
(912, 2, 372, 59, NULL, NULL),
(913, 2, 373, 100, NULL, NULL),
(914, 2, 374, 130, NULL, NULL),
(915, 2, 375, 81, NULL, NULL),
(916, 2, 376, 55, NULL, NULL),
(917, 2, 377, 77, NULL, NULL),
(918, 2, 378, 52, NULL, NULL),
(919, 2, 379, 90, NULL, NULL),
(920, 2, 380, 119, NULL, NULL),
(921, 2, 381, 109, NULL, NULL),
(922, 2, 382, 40, NULL, NULL),
(923, 2, 383, 149, NULL, NULL),
(924, 2, 384, 57, NULL, NULL),
(925, 2, 385, 62, NULL, NULL),
(926, 2, 386, 104, NULL, NULL),
(927, 2, 387, 104, NULL, NULL),
(928, 2, 388, 87, NULL, NULL),
(929, 2, 389, 100, NULL, NULL),
(930, 2, 390, 58, NULL, NULL),
(931, 2, 391, 53, NULL, NULL),
(932, 2, 392, 139, NULL, NULL),
(933, 2, 393, 106, NULL, NULL),
(934, 2, 394, 49, NULL, NULL),
(935, 2, 395, 35, NULL, NULL),
(936, 2, 396, 99, NULL, NULL),
(937, 2, 397, 95, NULL, NULL),
(938, 2, 398, 113, NULL, NULL),
(939, 2, 399, 37, NULL, NULL),
(940, 2, 400, 95, NULL, NULL),
(941, 2, 401, 79, NULL, NULL),
(942, 2, 402, 122, NULL, NULL),
(943, 2, 403, 141, NULL, NULL),
(944, 2, 404, 48, NULL, NULL),
(945, 2, 405, 81, NULL, NULL),
(946, 2, 406, 51, NULL, NULL),
(947, 2, 407, 64, NULL, NULL),
(948, 2, 408, 57, NULL, NULL),
(949, 2, 409, 47, NULL, NULL),
(950, 2, 410, 69, NULL, NULL),
(951, 2, 411, 66, NULL, NULL),
(952, 2, 412, 138, NULL, NULL),
(953, 2, 413, 142, NULL, NULL),
(954, 2, 414, 64, NULL, NULL),
(955, 2, 415, 130, NULL, NULL),
(956, 2, 416, 64, NULL, NULL),
(957, 2, 417, 89, NULL, NULL),
(958, 2, 418, 144, NULL, NULL),
(959, 2, 419, 74, NULL, NULL),
(960, 2, 420, 39, NULL, NULL),
(961, 2, 421, 108, NULL, NULL),
(962, 2, 422, 116, NULL, NULL),
(963, 2, 423, 104, NULL, NULL),
(964, 2, 424, 80, NULL, NULL),
(965, 2, 425, 75, NULL, NULL),
(966, 2, 426, 108, NULL, NULL),
(967, 2, 427, 129, NULL, NULL),
(968, 2, 428, 32, NULL, NULL),
(969, 2, 429, 95, NULL, NULL),
(970, 2, 430, 52, NULL, NULL),
(971, 2, 431, 134, NULL, NULL),
(972, 2, 432, 139, NULL, NULL),
(973, 2, 433, 59, NULL, NULL),
(974, 2, 434, 75, NULL, NULL),
(975, 2, 435, 111, NULL, NULL),
(976, 2, 436, 51, NULL, NULL),
(977, 2, 437, 91, NULL, NULL),
(978, 2, 438, 107, NULL, NULL),
(979, 2, 439, 36, NULL, NULL),
(980, 2, 440, 107, NULL, NULL),
(981, 2, 441, 83, NULL, NULL),
(982, 2, 442, 94, NULL, NULL),
(983, 2, 443, 70, NULL, NULL),
(984, 2, 444, 48, NULL, NULL),
(985, 2, 445, 60, NULL, NULL),
(986, 2, 446, 128, NULL, NULL),
(987, 2, 447, 141, NULL, NULL),
(988, 2, 448, 59, NULL, NULL),
(989, 2, 449, 136, NULL, NULL),
(990, 2, 450, 71, NULL, NULL),
(991, 2, 451, 40, NULL, NULL),
(992, 2, 452, 124, NULL, NULL),
(993, 2, 453, 53, NULL, NULL),
(994, 2, 454, 112, NULL, NULL),
(995, 2, 455, 99, NULL, NULL),
(996, 2, 456, 64, NULL, NULL),
(997, 2, 457, 46, NULL, NULL),
(998, 2, 458, 90, NULL, NULL),
(999, 2, 459, 145, NULL, NULL),
(1000, 2, 460, 129, NULL, NULL),
(1001, 2, 461, 34, NULL, NULL),
(1002, 2, 462, 115, NULL, NULL),
(1003, 2, 463, 145, NULL, NULL),
(1004, 2, 464, 30, NULL, NULL),
(1005, 2, 465, 101, NULL, NULL),
(1006, 2, 466, 43, NULL, NULL),
(1007, 2, 467, 116, NULL, NULL),
(1008, 2, 468, 98, NULL, NULL),
(1009, 2, 469, 51, NULL, NULL),
(1010, 2, 470, 59, NULL, NULL),
(1011, 2, 471, 35, NULL, NULL),
(1012, 2, 472, 98, NULL, NULL),
(1013, 2, 473, 108, NULL, NULL),
(1014, 2, 474, 92, NULL, NULL),
(1015, 2, 475, 85, NULL, NULL),
(1016, 2, 476, 69, NULL, NULL),
(1017, 2, 477, 130, NULL, NULL),
(1018, 2, 478, 126, NULL, NULL),
(1019, 2, 479, 133, NULL, NULL),
(1020, 2, 480, 148, NULL, NULL),
(1021, 2, 481, 66, NULL, NULL),
(1022, 2, 482, 87, NULL, NULL),
(1023, 2, 483, 105, NULL, NULL),
(1024, 2, 484, 127, NULL, NULL),
(1025, 2, 485, 45, NULL, NULL),
(1026, 2, 486, 122, NULL, NULL),
(1027, 2, 487, 136, NULL, NULL),
(1028, 2, 488, 34, NULL, NULL),
(1029, 2, 489, 67, NULL, NULL),
(1030, 2, 490, 61, NULL, NULL),
(1031, 2, 491, 91, NULL, NULL),
(1032, 2, 492, 51, NULL, NULL),
(1033, 2, 493, 78, NULL, NULL),
(1034, 2, 494, 116, NULL, NULL),
(1035, 2, 495, 48, NULL, NULL),
(1036, 2, 496, 114, NULL, NULL),
(1037, 2, 497, 130, NULL, NULL),
(1038, 2, 498, 76, NULL, NULL),
(1039, 2, 499, 94, NULL, NULL),
(1040, 2, 500, 31, NULL, NULL),
(1041, 2, 501, 88, NULL, NULL),
(1042, 2, 502, 71, NULL, NULL),
(1043, 2, 503, 112, NULL, NULL),
(1044, 2, 504, 112, NULL, NULL),
(1045, 2, 505, 85, NULL, NULL),
(1046, 2, 506, 130, NULL, NULL),
(1047, 2, 507, 56, NULL, NULL),
(1048, 2, 508, 65, NULL, NULL),
(1049, 2, 509, 150, NULL, NULL),
(1050, 2, 510, 72, NULL, NULL),
(1051, 2, 511, 51, NULL, NULL),
(1052, 2, 512, 110, NULL, NULL),
(1053, 2, 513, 149, NULL, NULL),
(1054, 2, 514, 141, NULL, NULL),
(1055, 2, 515, 42, NULL, NULL),
(1056, 2, 516, 135, NULL, NULL),
(1057, 2, 517, 116, NULL, NULL),
(1058, 2, 518, 72, NULL, NULL),
(1059, 2, 519, 132, NULL, NULL),
(1060, 2, 520, 63, NULL, NULL),
(1061, 2, 521, 104, NULL, NULL),
(1062, 2, 522, 111, NULL, NULL),
(1063, 2, 523, 118, NULL, NULL),
(1064, 2, 524, 127, NULL, NULL),
(1065, 2, 525, 140, NULL, NULL),
(1066, 2, 526, 149, NULL, NULL),
(1067, 2, 527, 138, NULL, NULL),
(1068, 2, 528, 73, NULL, NULL),
(1069, 2, 529, 102, NULL, NULL),
(1070, 2, 530, 94, NULL, NULL),
(1071, 2, 531, 120, NULL, NULL),
(1072, 2, 532, 62, NULL, NULL),
(1073, 2, 533, 120, NULL, NULL),
(1074, 2, 534, 79, NULL, NULL),
(1075, 2, 535, 116, NULL, NULL),
(1076, 2, 536, 129, NULL, NULL),
(1077, 2, 537, 144, NULL, NULL),
(1078, 2, 538, 139, NULL, NULL),
(1079, 2, 539, 131, NULL, NULL),
(1080, 2, 540, 71, NULL, NULL),
(1081, 3, 1, 147, NULL, NULL),
(1082, 3, 2, 94, NULL, NULL),
(1083, 3, 3, 102, NULL, NULL),
(1084, 3, 4, 52, NULL, NULL),
(1085, 3, 5, 54, NULL, NULL),
(1086, 3, 6, 131, NULL, NULL),
(1087, 3, 7, 102, NULL, NULL),
(1088, 3, 8, 126, NULL, NULL),
(1089, 3, 9, 136, NULL, NULL),
(1090, 3, 10, 110, NULL, NULL),
(1091, 3, 11, 66, NULL, NULL),
(1092, 3, 12, 113, NULL, NULL),
(1093, 3, 13, 72, NULL, NULL),
(1094, 3, 14, 64, NULL, NULL),
(1095, 3, 15, 106, NULL, NULL),
(1096, 3, 16, 127, NULL, NULL),
(1097, 3, 17, 127, NULL, NULL),
(1098, 3, 18, 31, NULL, NULL),
(1099, 3, 19, 35, NULL, NULL),
(1100, 3, 20, 138, NULL, NULL),
(1101, 3, 21, 51, NULL, NULL),
(1102, 3, 22, 111, NULL, NULL),
(1103, 3, 23, 77, NULL, NULL),
(1104, 3, 24, 62, NULL, NULL),
(1105, 3, 25, 142, NULL, NULL),
(1106, 3, 26, 107, NULL, NULL),
(1107, 3, 27, 119, NULL, NULL),
(1108, 3, 28, 59, NULL, NULL),
(1109, 3, 29, 92, NULL, NULL),
(1110, 3, 30, 90, NULL, NULL),
(1111, 3, 31, 134, NULL, NULL),
(1112, 3, 32, 149, NULL, NULL),
(1113, 3, 33, 68, NULL, NULL),
(1114, 3, 34, 148, NULL, NULL),
(1115, 3, 35, 129, NULL, NULL),
(1116, 3, 36, 83, NULL, NULL),
(1117, 3, 37, 97, NULL, NULL),
(1118, 3, 38, 42, NULL, NULL),
(1119, 3, 39, 106, NULL, NULL),
(1120, 3, 40, 126, NULL, NULL),
(1121, 3, 41, 103, NULL, NULL),
(1122, 3, 42, 85, NULL, NULL),
(1123, 3, 43, 81, NULL, NULL),
(1124, 3, 44, 78, NULL, NULL),
(1125, 3, 45, 112, NULL, NULL),
(1126, 3, 46, 59, NULL, NULL),
(1127, 3, 47, 119, NULL, NULL),
(1128, 3, 48, 48, NULL, NULL),
(1129, 3, 49, 54, NULL, NULL),
(1130, 3, 50, 130, NULL, NULL),
(1131, 3, 51, 64, NULL, NULL),
(1132, 3, 52, 50, NULL, NULL),
(1133, 3, 53, 143, NULL, NULL),
(1134, 3, 54, 30, NULL, NULL),
(1135, 3, 55, 58, NULL, NULL),
(1136, 3, 56, 83, NULL, NULL),
(1137, 3, 57, 110, NULL, NULL),
(1138, 3, 58, 137, NULL, NULL),
(1139, 3, 59, 42, NULL, NULL),
(1140, 3, 60, 37, NULL, NULL),
(1141, 3, 61, 108, NULL, NULL),
(1142, 3, 62, 32, NULL, NULL),
(1143, 3, 63, 91, NULL, NULL),
(1144, 3, 64, 107, NULL, NULL),
(1145, 3, 65, 45, NULL, NULL),
(1146, 3, 66, 113, NULL, NULL),
(1147, 3, 67, 34, NULL, NULL),
(1148, 3, 68, 53, NULL, NULL),
(1149, 3, 69, 142, NULL, NULL),
(1150, 3, 70, 95, NULL, NULL),
(1151, 3, 71, 98, NULL, NULL),
(1152, 3, 72, 114, NULL, NULL),
(1153, 3, 73, 110, NULL, NULL),
(1154, 3, 74, 52, NULL, NULL),
(1155, 3, 75, 119, NULL, NULL),
(1156, 3, 76, 139, NULL, NULL),
(1157, 3, 77, 87, NULL, NULL),
(1158, 3, 78, 102, NULL, NULL),
(1159, 3, 79, 80, NULL, NULL),
(1160, 3, 80, 50, NULL, NULL),
(1161, 3, 81, 65, NULL, NULL),
(1162, 3, 82, 44, NULL, NULL),
(1163, 3, 83, 60, NULL, NULL),
(1164, 3, 84, 124, NULL, NULL),
(1165, 3, 85, 51, NULL, NULL),
(1166, 3, 86, 65, NULL, NULL),
(1167, 3, 87, 137, NULL, NULL),
(1168, 3, 88, 125, NULL, NULL),
(1169, 3, 89, 109, NULL, NULL),
(1170, 3, 90, 85, NULL, NULL),
(1171, 3, 91, 119, NULL, NULL),
(1172, 3, 92, 58, NULL, NULL),
(1173, 3, 93, 97, NULL, NULL),
(1174, 3, 94, 75, NULL, NULL),
(1175, 3, 95, 69, NULL, NULL),
(1176, 3, 96, 111, NULL, NULL),
(1177, 3, 97, 112, NULL, NULL),
(1178, 3, 98, 95, NULL, NULL),
(1179, 3, 99, 86, NULL, NULL),
(1180, 3, 100, 114, NULL, NULL),
(1181, 3, 101, 130, NULL, NULL),
(1182, 3, 102, 37, NULL, NULL),
(1183, 3, 103, 84, NULL, NULL),
(1184, 3, 104, 62, NULL, NULL),
(1185, 3, 105, 86, NULL, NULL),
(1186, 3, 106, 49, NULL, NULL),
(1187, 3, 107, 61, NULL, NULL),
(1188, 3, 108, 125, NULL, NULL),
(1189, 3, 109, 115, NULL, NULL),
(1190, 3, 110, 62, NULL, NULL),
(1191, 3, 111, 86, NULL, NULL),
(1192, 3, 112, 74, NULL, NULL),
(1193, 3, 113, 147, NULL, NULL),
(1194, 3, 114, 147, NULL, NULL),
(1195, 3, 115, 137, NULL, NULL),
(1196, 3, 116, 77, NULL, NULL),
(1197, 3, 117, 100, NULL, NULL),
(1198, 3, 118, 104, NULL, NULL),
(1199, 3, 119, 142, NULL, NULL),
(1200, 3, 120, 35, NULL, NULL),
(1201, 3, 121, 45, NULL, NULL),
(1202, 3, 122, 62, NULL, NULL),
(1203, 3, 123, 116, NULL, NULL),
(1204, 3, 124, 49, NULL, NULL),
(1205, 3, 125, 81, NULL, NULL),
(1206, 3, 126, 91, NULL, NULL),
(1207, 3, 127, 109, NULL, NULL),
(1208, 3, 128, 126, NULL, NULL),
(1209, 3, 129, 140, NULL, NULL),
(1210, 3, 130, 147, NULL, NULL),
(1211, 3, 131, 117, NULL, NULL),
(1212, 3, 132, 43, NULL, NULL),
(1213, 3, 133, 109, NULL, NULL),
(1214, 3, 134, 56, NULL, NULL),
(1215, 3, 135, 132, NULL, NULL),
(1216, 3, 136, 41, NULL, NULL),
(1217, 3, 137, 63, NULL, NULL),
(1218, 3, 138, 143, NULL, NULL),
(1219, 3, 139, 119, NULL, NULL),
(1220, 3, 140, 88, NULL, NULL),
(1221, 3, 141, 130, NULL, NULL),
(1222, 3, 142, 63, NULL, NULL),
(1223, 3, 143, 44, NULL, NULL),
(1224, 3, 144, 53, NULL, NULL),
(1225, 3, 145, 117, NULL, NULL),
(1226, 3, 146, 140, NULL, NULL),
(1227, 3, 147, 144, NULL, NULL),
(1228, 3, 148, 113, NULL, NULL),
(1229, 3, 149, 110, NULL, NULL),
(1230, 3, 150, 62, NULL, NULL),
(1231, 3, 151, 40, NULL, NULL),
(1232, 3, 152, 94, NULL, NULL),
(1233, 3, 153, 142, NULL, NULL),
(1234, 3, 154, 95, NULL, NULL),
(1235, 3, 155, 53, NULL, NULL),
(1236, 3, 156, 144, NULL, NULL),
(1237, 3, 157, 91, NULL, NULL),
(1238, 3, 158, 139, NULL, NULL),
(1239, 3, 159, 142, NULL, NULL),
(1240, 3, 160, 111, NULL, NULL),
(1241, 3, 161, 72, NULL, NULL),
(1242, 3, 162, 47, NULL, NULL),
(1243, 3, 163, 127, NULL, NULL),
(1244, 3, 164, 107, NULL, NULL),
(1245, 3, 165, 63, NULL, NULL),
(1246, 3, 166, 41, NULL, NULL),
(1247, 3, 167, 68, NULL, NULL),
(1248, 3, 168, 130, NULL, NULL),
(1249, 3, 169, 50, NULL, NULL),
(1250, 3, 170, 111, NULL, NULL),
(1251, 3, 171, 122, NULL, NULL),
(1252, 3, 172, 125, NULL, NULL),
(1253, 3, 173, 130, NULL, NULL),
(1254, 3, 174, 135, NULL, NULL),
(1255, 3, 175, 125, NULL, NULL),
(1256, 3, 176, 94, NULL, NULL),
(1257, 3, 177, 120, NULL, NULL),
(1258, 3, 178, 106, NULL, NULL),
(1259, 3, 179, 100, NULL, NULL),
(1260, 3, 180, 68, NULL, NULL),
(1261, 3, 181, 141, NULL, NULL),
(1262, 3, 182, 47, NULL, NULL),
(1263, 3, 183, 54, NULL, NULL),
(1264, 3, 184, 94, NULL, NULL),
(1265, 3, 185, 108, NULL, NULL),
(1266, 3, 186, 44, NULL, NULL),
(1267, 3, 187, 55, NULL, NULL),
(1268, 3, 188, 35, NULL, NULL),
(1269, 3, 189, 31, NULL, NULL),
(1270, 3, 190, 143, NULL, NULL),
(1271, 3, 191, 58, NULL, NULL),
(1272, 3, 192, 102, NULL, NULL),
(1273, 3, 193, 46, NULL, NULL),
(1274, 3, 194, 99, NULL, NULL),
(1275, 3, 195, 89, NULL, NULL),
(1276, 3, 196, 39, NULL, NULL),
(1277, 3, 197, 54, NULL, NULL),
(1278, 3, 198, 143, NULL, NULL),
(1279, 3, 199, 47, NULL, NULL),
(1280, 3, 200, 123, NULL, NULL),
(1281, 3, 201, 77, NULL, NULL),
(1282, 3, 202, 61, NULL, NULL),
(1283, 3, 203, 147, NULL, NULL),
(1284, 3, 204, 87, NULL, NULL),
(1285, 3, 205, 126, NULL, NULL),
(1286, 3, 206, 47, NULL, NULL),
(1287, 3, 207, 92, NULL, NULL),
(1288, 3, 208, 35, NULL, NULL),
(1289, 3, 209, 64, NULL, NULL),
(1290, 3, 210, 126, NULL, NULL),
(1291, 3, 211, 41, NULL, NULL),
(1292, 3, 212, 148, NULL, NULL),
(1293, 3, 213, 59, NULL, NULL),
(1294, 3, 214, 102, NULL, NULL),
(1295, 3, 215, 97, NULL, NULL),
(1296, 3, 216, 110, NULL, NULL),
(1297, 3, 217, 148, NULL, NULL),
(1298, 3, 218, 84, NULL, NULL),
(1299, 3, 219, 82, NULL, NULL),
(1300, 3, 220, 93, NULL, NULL),
(1301, 3, 221, 88, NULL, NULL),
(1302, 3, 222, 47, NULL, NULL),
(1303, 3, 223, 74, NULL, NULL),
(1304, 3, 224, 104, NULL, NULL),
(1305, 3, 225, 148, NULL, NULL),
(1306, 3, 226, 51, NULL, NULL),
(1307, 3, 227, 104, NULL, NULL),
(1308, 3, 228, 108, NULL, NULL),
(1309, 3, 229, 51, NULL, NULL),
(1310, 3, 230, 115, NULL, NULL),
(1311, 3, 231, 107, NULL, NULL),
(1312, 3, 232, 72, NULL, NULL),
(1313, 3, 233, 40, NULL, NULL),
(1314, 3, 234, 71, NULL, NULL),
(1315, 3, 235, 126, NULL, NULL),
(1316, 3, 236, 96, NULL, NULL),
(1317, 3, 237, 69, NULL, NULL),
(1318, 3, 238, 66, NULL, NULL),
(1319, 3, 239, 39, NULL, NULL),
(1320, 3, 240, 58, NULL, NULL),
(1321, 3, 241, 79, NULL, NULL),
(1322, 3, 242, 145, NULL, NULL),
(1323, 3, 243, 37, NULL, NULL),
(1324, 3, 244, 47, NULL, NULL),
(1325, 3, 245, 99, NULL, NULL),
(1326, 3, 246, 126, NULL, NULL),
(1327, 3, 247, 43, NULL, NULL),
(1328, 3, 248, 135, NULL, NULL),
(1329, 3, 249, 51, NULL, NULL),
(1330, 3, 250, 102, NULL, NULL),
(1331, 3, 251, 95, NULL, NULL),
(1332, 3, 252, 95, NULL, NULL),
(1333, 3, 253, 53, NULL, NULL),
(1334, 3, 254, 62, NULL, NULL),
(1335, 3, 255, 99, NULL, NULL),
(1336, 3, 256, 131, NULL, NULL),
(1337, 3, 257, 80, NULL, NULL),
(1338, 3, 258, 88, NULL, NULL),
(1339, 3, 259, 35, NULL, NULL),
(1340, 3, 260, 71, NULL, NULL),
(1341, 3, 261, 64, NULL, NULL),
(1342, 3, 262, 117, NULL, NULL),
(1343, 3, 263, 95, NULL, NULL),
(1344, 3, 264, 92, NULL, NULL),
(1345, 3, 265, 77, NULL, NULL),
(1346, 3, 266, 60, NULL, NULL),
(1347, 3, 267, 148, NULL, NULL),
(1348, 3, 268, 135, NULL, NULL),
(1349, 3, 269, 136, NULL, NULL),
(1350, 3, 270, 42, NULL, NULL),
(1351, 3, 271, 106, NULL, NULL),
(1352, 3, 272, 35, NULL, NULL),
(1353, 3, 273, 143, NULL, NULL),
(1354, 3, 274, 68, NULL, NULL),
(1355, 3, 275, 66, NULL, NULL),
(1356, 3, 276, 56, NULL, NULL),
(1357, 3, 277, 101, NULL, NULL),
(1358, 3, 278, 49, NULL, NULL),
(1359, 3, 279, 31, NULL, NULL),
(1360, 3, 280, 78, NULL, NULL),
(1361, 3, 281, 101, NULL, NULL),
(1362, 3, 282, 69, NULL, NULL),
(1363, 3, 283, 64, NULL, NULL),
(1364, 3, 284, 71, NULL, NULL),
(1365, 3, 285, 74, NULL, NULL),
(1366, 3, 286, 66, NULL, NULL),
(1367, 3, 287, 80, NULL, NULL),
(1368, 3, 288, 94, NULL, NULL),
(1369, 3, 289, 93, NULL, NULL),
(1370, 3, 290, 146, NULL, NULL),
(1371, 3, 291, 98, NULL, NULL),
(1372, 3, 292, 105, NULL, NULL),
(1373, 3, 293, 150, NULL, NULL),
(1374, 3, 294, 66, NULL, NULL),
(1375, 3, 295, 83, NULL, NULL),
(1376, 3, 296, 43, NULL, NULL),
(1377, 3, 297, 37, NULL, NULL),
(1378, 3, 298, 143, NULL, NULL),
(1379, 3, 299, 133, NULL, NULL),
(1380, 3, 300, 36, NULL, NULL),
(1381, 3, 301, 150, NULL, NULL),
(1382, 3, 302, 139, NULL, NULL),
(1383, 3, 303, 82, NULL, NULL),
(1384, 3, 304, 145, NULL, NULL),
(1385, 3, 305, 92, NULL, NULL),
(1386, 3, 306, 110, NULL, NULL),
(1387, 3, 307, 105, NULL, NULL),
(1388, 3, 308, 43, NULL, NULL),
(1389, 3, 309, 78, NULL, NULL),
(1390, 3, 310, 120, NULL, NULL),
(1391, 3, 311, 41, NULL, NULL),
(1392, 3, 312, 113, NULL, NULL),
(1393, 3, 313, 148, NULL, NULL),
(1394, 3, 314, 81, NULL, NULL),
(1395, 3, 315, 110, NULL, NULL),
(1396, 3, 316, 104, NULL, NULL),
(1397, 3, 317, 115, NULL, NULL),
(1398, 3, 318, 81, NULL, NULL),
(1399, 3, 319, 68, NULL, NULL),
(1400, 3, 320, 40, NULL, NULL),
(1401, 3, 321, 137, NULL, NULL),
(1402, 3, 322, 125, NULL, NULL),
(1403, 3, 323, 77, NULL, NULL),
(1404, 3, 324, 96, NULL, NULL),
(1405, 3, 325, 120, NULL, NULL),
(1406, 3, 326, 113, NULL, NULL),
(1407, 3, 327, 33, NULL, NULL),
(1408, 3, 328, 119, NULL, NULL),
(1409, 3, 329, 116, NULL, NULL),
(1410, 3, 330, 104, NULL, NULL),
(1411, 3, 331, 104, NULL, NULL),
(1412, 3, 332, 87, NULL, NULL),
(1413, 3, 333, 132, NULL, NULL),
(1414, 3, 334, 80, NULL, NULL),
(1415, 3, 335, 127, NULL, NULL),
(1416, 3, 336, 84, NULL, NULL),
(1417, 3, 337, 61, NULL, NULL),
(1418, 3, 338, 69, NULL, NULL),
(1419, 3, 339, 46, NULL, NULL),
(1420, 3, 340, 47, NULL, NULL),
(1421, 3, 341, 143, NULL, NULL),
(1422, 3, 342, 71, NULL, NULL),
(1423, 3, 343, 104, NULL, NULL),
(1424, 3, 344, 84, NULL, NULL),
(1425, 3, 345, 89, NULL, NULL),
(1426, 3, 346, 53, NULL, NULL),
(1427, 3, 347, 54, NULL, NULL),
(1428, 3, 348, 51, NULL, NULL),
(1429, 3, 349, 120, NULL, NULL),
(1430, 3, 350, 77, NULL, NULL),
(1431, 3, 351, 149, NULL, NULL),
(1432, 3, 352, 72, NULL, NULL),
(1433, 3, 353, 39, NULL, NULL),
(1434, 3, 354, 72, NULL, NULL),
(1435, 3, 355, 94, NULL, NULL),
(1436, 3, 356, 50, NULL, NULL),
(1437, 3, 357, 87, NULL, NULL),
(1438, 3, 358, 105, NULL, NULL),
(1439, 3, 359, 77, NULL, NULL),
(1440, 3, 360, 107, NULL, NULL),
(1441, 3, 361, 86, NULL, NULL),
(1442, 3, 362, 54, NULL, NULL),
(1443, 3, 363, 116, NULL, NULL),
(1444, 3, 364, 100, NULL, NULL),
(1445, 3, 365, 148, NULL, NULL),
(1446, 3, 366, 76, NULL, NULL),
(1447, 3, 367, 142, NULL, NULL),
(1448, 3, 368, 96, NULL, NULL),
(1449, 3, 369, 140, NULL, NULL),
(1450, 3, 370, 117, NULL, NULL),
(1451, 3, 371, 30, NULL, NULL),
(1452, 3, 372, 136, NULL, NULL),
(1453, 3, 373, 75, NULL, NULL),
(1454, 3, 374, 149, NULL, NULL),
(1455, 3, 375, 48, NULL, NULL),
(1456, 3, 376, 145, NULL, NULL),
(1457, 3, 377, 98, NULL, NULL),
(1458, 3, 378, 147, NULL, NULL),
(1459, 3, 379, 35, NULL, NULL),
(1460, 3, 380, 136, NULL, NULL),
(1461, 3, 381, 96, NULL, NULL),
(1462, 3, 382, 88, NULL, NULL),
(1463, 3, 383, 92, NULL, NULL),
(1464, 3, 384, 124, NULL, NULL),
(1465, 3, 385, 92, NULL, NULL),
(1466, 3, 386, 110, NULL, NULL),
(1467, 3, 387, 146, NULL, NULL),
(1468, 3, 388, 38, NULL, NULL),
(1469, 3, 389, 116, NULL, NULL),
(1470, 3, 390, 89, NULL, NULL),
(1471, 3, 391, 112, NULL, NULL),
(1472, 3, 392, 77, NULL, NULL),
(1473, 3, 393, 95, NULL, NULL),
(1474, 3, 394, 56, NULL, NULL),
(1475, 3, 395, 59, NULL, NULL),
(1476, 3, 396, 121, NULL, NULL),
(1477, 3, 397, 122, NULL, NULL),
(1478, 3, 398, 137, NULL, NULL),
(1479, 3, 399, 95, NULL, NULL),
(1480, 3, 400, 134, NULL, NULL),
(1481, 3, 401, 99, NULL, NULL),
(1482, 3, 402, 113, NULL, NULL),
(1483, 3, 403, 81, NULL, NULL),
(1484, 3, 404, 106, NULL, NULL),
(1485, 3, 405, 107, NULL, NULL),
(1486, 3, 406, 124, NULL, NULL),
(1487, 3, 407, 31, NULL, NULL),
(1488, 3, 408, 145, NULL, NULL),
(1489, 3, 409, 142, NULL, NULL),
(1490, 3, 410, 52, NULL, NULL),
(1491, 3, 411, 69, NULL, NULL),
(1492, 3, 412, 83, NULL, NULL),
(1493, 3, 413, 73, NULL, NULL),
(1494, 3, 414, 110, NULL, NULL),
(1495, 3, 415, 106, NULL, NULL),
(1496, 3, 416, 36, NULL, NULL),
(1497, 3, 417, 114, NULL, NULL),
(1498, 3, 418, 64, NULL, NULL),
(1499, 3, 419, 128, NULL, NULL),
(1500, 3, 420, 74, NULL, NULL),
(1501, 3, 421, 74, NULL, NULL),
(1502, 3, 422, 87, NULL, NULL),
(1503, 3, 423, 119, NULL, NULL),
(1504, 3, 424, 101, NULL, NULL),
(1505, 3, 425, 133, NULL, NULL),
(1506, 3, 426, 128, NULL, NULL),
(1507, 3, 427, 98, NULL, NULL),
(1508, 3, 428, 97, NULL, NULL),
(1509, 3, 429, 87, NULL, NULL),
(1510, 3, 430, 49, NULL, NULL),
(1511, 3, 431, 78, NULL, NULL),
(1512, 3, 432, 91, NULL, NULL),
(1513, 3, 433, 115, NULL, NULL),
(1514, 3, 434, 104, NULL, NULL),
(1515, 3, 435, 80, NULL, NULL),
(1516, 3, 436, 90, NULL, NULL),
(1517, 3, 437, 67, NULL, NULL),
(1518, 3, 438, 90, NULL, NULL),
(1519, 3, 439, 95, NULL, NULL),
(1520, 3, 440, 120, NULL, NULL),
(1521, 3, 441, 56, NULL, NULL),
(1522, 3, 442, 146, NULL, NULL),
(1523, 3, 443, 101, NULL, NULL),
(1524, 3, 444, 143, NULL, NULL),
(1525, 3, 445, 101, NULL, NULL),
(1526, 3, 446, 117, NULL, NULL),
(1527, 3, 447, 143, NULL, NULL),
(1528, 3, 448, 114, NULL, NULL),
(1529, 3, 449, 74, NULL, NULL),
(1530, 3, 450, 144, NULL, NULL),
(1531, 3, 451, 147, NULL, NULL),
(1532, 3, 452, 122, NULL, NULL),
(1533, 3, 453, 57, NULL, NULL),
(1534, 3, 454, 65, NULL, NULL),
(1535, 3, 455, 84, NULL, NULL),
(1536, 3, 456, 62, NULL, NULL),
(1537, 3, 457, 71, NULL, NULL),
(1538, 3, 458, 35, NULL, NULL),
(1539, 3, 459, 141, NULL, NULL),
(1540, 3, 460, 113, NULL, NULL),
(1541, 3, 461, 130, NULL, NULL),
(1542, 3, 462, 37, NULL, NULL),
(1543, 3, 463, 68, NULL, NULL),
(1544, 3, 464, 102, NULL, NULL),
(1545, 3, 465, 129, NULL, NULL),
(1546, 3, 466, 99, NULL, NULL),
(1547, 3, 467, 96, NULL, NULL),
(1548, 3, 468, 90, NULL, NULL),
(1549, 3, 469, 90, NULL, NULL),
(1550, 3, 470, 84, NULL, NULL),
(1551, 3, 471, 132, NULL, NULL),
(1552, 3, 472, 84, NULL, NULL),
(1553, 3, 473, 142, NULL, NULL),
(1554, 3, 474, 47, NULL, NULL),
(1555, 3, 475, 102, NULL, NULL),
(1556, 3, 476, 91, NULL, NULL),
(1557, 3, 477, 132, NULL, NULL),
(1558, 3, 478, 61, NULL, NULL),
(1559, 3, 479, 82, NULL, NULL),
(1560, 3, 480, 111, NULL, NULL),
(1561, 3, 481, 109, NULL, NULL),
(1562, 3, 482, 138, NULL, NULL),
(1563, 3, 483, 55, NULL, NULL),
(1564, 3, 484, 58, NULL, NULL),
(1565, 3, 485, 93, NULL, NULL),
(1566, 3, 486, 96, NULL, NULL),
(1567, 3, 487, 66, NULL, NULL),
(1568, 3, 488, 65, NULL, NULL),
(1569, 3, 489, 68, NULL, NULL),
(1570, 3, 490, 122, NULL, NULL),
(1571, 3, 491, 87, NULL, NULL),
(1572, 3, 492, 127, NULL, NULL),
(1573, 3, 493, 129, NULL, NULL),
(1574, 3, 494, 60, NULL, NULL),
(1575, 3, 495, 99, NULL, NULL),
(1576, 3, 496, 75, NULL, NULL),
(1577, 3, 497, 33, NULL, NULL),
(1578, 3, 498, 134, NULL, NULL),
(1579, 3, 499, 36, NULL, NULL),
(1580, 3, 500, 87, NULL, NULL),
(1581, 3, 501, 119, NULL, NULL),
(1582, 3, 502, 140, NULL, NULL),
(1583, 3, 503, 110, NULL, NULL),
(1584, 3, 504, 111, NULL, NULL),
(1585, 3, 505, 135, NULL, NULL),
(1586, 3, 506, 142, NULL, NULL),
(1587, 3, 507, 70, NULL, NULL),
(1588, 3, 508, 75, NULL, NULL),
(1589, 3, 509, 104, NULL, NULL),
(1590, 3, 510, 83, NULL, NULL),
(1591, 3, 511, 136, NULL, NULL),
(1592, 3, 512, 70, NULL, NULL),
(1593, 3, 513, 126, NULL, NULL),
(1594, 3, 514, 31, NULL, NULL),
(1595, 3, 515, 146, NULL, NULL),
(1596, 3, 516, 92, NULL, NULL),
(1597, 3, 517, 106, NULL, NULL),
(1598, 3, 518, 45, NULL, NULL),
(1599, 3, 519, 119, NULL, NULL),
(1600, 3, 520, 111, NULL, NULL),
(1601, 3, 521, 45, NULL, NULL),
(1602, 3, 522, 39, NULL, NULL),
(1603, 3, 523, 134, NULL, NULL),
(1604, 3, 524, 57, NULL, NULL),
(1605, 3, 525, 124, NULL, NULL),
(1606, 3, 526, 74, NULL, NULL),
(1607, 3, 527, 101, NULL, NULL),
(1608, 3, 528, 85, NULL, NULL),
(1609, 3, 529, 59, NULL, NULL),
(1610, 3, 530, 141, NULL, NULL),
(1611, 3, 531, 148, NULL, NULL),
(1612, 3, 532, 114, NULL, NULL),
(1613, 3, 533, 75, NULL, NULL),
(1614, 3, 534, 143, NULL, NULL),
(1615, 3, 535, 117, NULL, NULL),
(1616, 3, 536, 124, NULL, NULL),
(1617, 3, 537, 131, NULL, NULL),
(1618, 3, 538, 44, NULL, NULL),
(1619, 3, 539, 128, NULL, NULL),
(1620, 3, 540, 123, NULL, NULL),
(1624, 1, 541, 10, NULL, NULL),
(1625, 2, 541, 10, NULL, NULL),
(1626, 3, 541, 10, NULL, NULL),
(1628, 1, 542, 12, NULL, NULL),
(1629, 2, 542, 12, NULL, NULL),
(1630, 3, 542, 12, NULL, NULL),
(1631, 1, 543, 0, NULL, NULL),
(1632, 2, 543, 11, NULL, NULL),
(1633, 3, 543, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('devfoods_cache5c785c036466adea360111aa28563bfd556b5fba', 'i:1;', 1756485941),
('devfoods_cache5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1756485941;', 1756485941),
('devfoods_cacheactive_branches', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:0;O:17:\"App\\Models\\Branch\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"branches\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:4:\"name\";s:23:\"Chi nhánh Cầu Giấy\";s:7:\"address\";s:23:\"Cầu Giấy, Hà Nội\";s:5:\"phone\";s:10:\"0243123457\";s:8:\"latitude\";s:11:\"21.03620000\";s:9:\"longitude\";s:12:\"105.78290000\";s:12:\"opening_hour\";s:8:\"07:30:00\";s:12:\"closing_hour\";s:8:\"22:30:00\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:4:\"name\";s:23:\"Chi nhánh Cầu Giấy\";s:7:\"address\";s:23:\"Cầu Giấy, Hà Nội\";s:5:\"phone\";s:10:\"0243123457\";s:8:\"latitude\";s:11:\"21.03620000\";s:9:\"longitude\";s:12:\"105.78290000\";s:12:\"opening_hour\";s:8:\"07:30:00\";s:12:\"closing_hour\";s:8:\"22:30:00\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:8:{s:6:\"active\";s:7:\"boolean\";s:8:\"latitude\";s:9:\"decimal:8\";s:9:\"longitude\";s:9:\"decimal:8\";s:7:\"balance\";s:9:\"decimal:2\";s:6:\"rating\";s:9:\"decimal:2\";s:17:\"reliability_score\";s:7:\"integer\";s:12:\"opening_hour\";s:12:\"datetime:H:i\";s:12:\"closing_hour\";s:12:\"datetime:H:i\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:14:{i:0;s:11:\"branch_code\";i:1;s:4:\"name\";i:2;s:7:\"address\";i:3;s:5:\"phone\";i:4;s:5:\"email\";i:5;s:15:\"manager_user_id\";i:6;s:8:\"latitude\";i:7;s:9:\"longitude\";i:8;s:12:\"opening_hour\";i:9;s:12:\"closing_hour\";i:10;s:6:\"active\";i:11;s:7:\"balance\";i:12;s:6:\"rating\";i:13;s:17:\"reliability_score\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:17:\"App\\Models\\Branch\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"branches\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:4:\"name\";s:22:\"Chi nhánh Đống Đa\";s:7:\"address\";s:43:\"123 Đường Láng, Đống Đa, Hà Nội\";s:5:\"phone\";s:10:\"0243123456\";s:8:\"latitude\";s:11:\"21.02780000\";s:9:\"longitude\";s:12:\"105.83420000\";s:12:\"opening_hour\";s:8:\"07:30:00\";s:12:\"closing_hour\";s:8:\"22:30:00\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:4:\"name\";s:22:\"Chi nhánh Đống Đa\";s:7:\"address\";s:43:\"123 Đường Láng, Đống Đa, Hà Nội\";s:5:\"phone\";s:10:\"0243123456\";s:8:\"latitude\";s:11:\"21.02780000\";s:9:\"longitude\";s:12:\"105.83420000\";s:12:\"opening_hour\";s:8:\"07:30:00\";s:12:\"closing_hour\";s:8:\"22:30:00\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:8:{s:6:\"active\";s:7:\"boolean\";s:8:\"latitude\";s:9:\"decimal:8\";s:9:\"longitude\";s:9:\"decimal:8\";s:7:\"balance\";s:9:\"decimal:2\";s:6:\"rating\";s:9:\"decimal:2\";s:17:\"reliability_score\";s:7:\"integer\";s:12:\"opening_hour\";s:12:\"datetime:H:i\";s:12:\"closing_hour\";s:12:\"datetime:H:i\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:14:{i:0;s:11:\"branch_code\";i:1;s:4:\"name\";i:2;s:7:\"address\";i:3;s:5:\"phone\";i:4;s:5:\"email\";i:5;s:15:\"manager_user_id\";i:6;s:8:\"latitude\";i:7;s:9:\"longitude\";i:8;s:12:\"opening_hour\";i:9;s:12:\"closing_hour\";i:10;s:6:\"active\";i:11;s:7:\"balance\";i:12;s:6:\"rating\";i:13;s:17:\"reliability_score\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:17:\"App\\Models\\Branch\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"branches\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:3;s:4:\"name\";s:21:\"Chi nhánh Hà Đông\";s:7:\"address\";s:21:\"Hà Đông, Hà Nội\";s:5:\"phone\";s:10:\"0243123458\";s:8:\"latitude\";s:11:\"20.97260000\";s:9:\"longitude\";s:12:\"105.77720000\";s:12:\"opening_hour\";s:8:\"07:30:00\";s:12:\"closing_hour\";s:8:\"22:30:00\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:4:\"name\";s:21:\"Chi nhánh Hà Đông\";s:7:\"address\";s:21:\"Hà Đông, Hà Nội\";s:5:\"phone\";s:10:\"0243123458\";s:8:\"latitude\";s:11:\"20.97260000\";s:9:\"longitude\";s:12:\"105.77720000\";s:12:\"opening_hour\";s:8:\"07:30:00\";s:12:\"closing_hour\";s:8:\"22:30:00\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:8:{s:6:\"active\";s:7:\"boolean\";s:8:\"latitude\";s:9:\"decimal:8\";s:9:\"longitude\";s:9:\"decimal:8\";s:7:\"balance\";s:9:\"decimal:2\";s:6:\"rating\";s:9:\"decimal:2\";s:17:\"reliability_score\";s:7:\"integer\";s:12:\"opening_hour\";s:12:\"datetime:H:i\";s:12:\"closing_hour\";s:12:\"datetime:H:i\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:14:{i:0;s:11:\"branch_code\";i:1;s:4:\"name\";i:2;s:7:\"address\";i:3;s:5:\"phone\";i:4;s:5:\"email\";i:5;s:15:\"manager_user_id\";i:6;s:8:\"latitude\";i:7;s:9:\"longitude\";i:8;s:12:\"opening_hour\";i:9;s:12:\"closing_hour\";i:10;s:6:\"active\";i:11;s:7:\"balance\";i:12;s:6:\"rating\";i:13;s:17:\"reliability_score\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1756489410),
('devfoods_cachebranch_1', 'O:17:\"App\\Models\\Branch\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"branches\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:17:{s:2:\"id\";i:1;s:11:\"branch_code\";s:5:\"HN001\";s:4:\"name\";s:22:\"Chi nhánh Đống Đa\";s:7:\"address\";s:43:\"123 Đường Láng, Đống Đa, Hà Nội\";s:5:\"phone\";s:10:\"0243123456\";s:5:\"email\";s:19:\"hanoi1@devfoods.com\";s:15:\"manager_user_id\";i:2;s:8:\"latitude\";s:11:\"21.02780000\";s:9:\"longitude\";s:12:\"105.83420000\";s:12:\"opening_hour\";s:8:\"07:30:00\";s:12:\"closing_hour\";s:8:\"22:30:00\";s:6:\"active\";i:1;s:7:\"balance\";s:7:\"5619.00\";s:6:\"rating\";s:4:\"5.00\";s:17:\"reliability_score\";i:96;s:10:\"created_at\";s:19:\"2025-07-31 22:30:42\";s:10:\"updated_at\";s:19:\"2025-07-31 22:30:42\";}s:11:\"\0*\0original\";a:17:{s:2:\"id\";i:1;s:11:\"branch_code\";s:5:\"HN001\";s:4:\"name\";s:22:\"Chi nhánh Đống Đa\";s:7:\"address\";s:43:\"123 Đường Láng, Đống Đa, Hà Nội\";s:5:\"phone\";s:10:\"0243123456\";s:5:\"email\";s:19:\"hanoi1@devfoods.com\";s:15:\"manager_user_id\";i:2;s:8:\"latitude\";s:11:\"21.02780000\";s:9:\"longitude\";s:12:\"105.83420000\";s:12:\"opening_hour\";s:8:\"07:30:00\";s:12:\"closing_hour\";s:8:\"22:30:00\";s:6:\"active\";i:1;s:7:\"balance\";s:7:\"5619.00\";s:6:\"rating\";s:4:\"5.00\";s:17:\"reliability_score\";i:96;s:10:\"created_at\";s:19:\"2025-07-31 22:30:42\";s:10:\"updated_at\";s:19:\"2025-07-31 22:30:42\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:8:{s:6:\"active\";s:7:\"boolean\";s:8:\"latitude\";s:9:\"decimal:8\";s:9:\"longitude\";s:9:\"decimal:8\";s:7:\"balance\";s:9:\"decimal:2\";s:6:\"rating\";s:9:\"decimal:2\";s:17:\"reliability_score\";s:7:\"integer\";s:12:\"opening_hour\";s:12:\"datetime:H:i\";s:12:\"closing_hour\";s:12:\"datetime:H:i\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:14:{i:0;s:11:\"branch_code\";i:1;s:4:\"name\";i:2;s:7:\"address\";i:3;s:5:\"phone\";i:4;s:5:\"email\";i:5;s:15:\"manager_user_id\";i:6;s:8:\"latitude\";i:7;s:9:\"longitude\";i:8;s:12:\"opening_hour\";i:9;s:12:\"closing_hour\";i:10;s:6:\"active\";i:11;s:7:\"balance\";i:12;s:6:\"rating\";i:13;s:17:\"reliability_score\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 1756489411);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `session_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `session_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'active', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(2, NULL, 3, 'active', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(3, NULL, 5, 'active', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(4, NULL, 6, 'active', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(5, NULL, 7, 'active', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(6, NULL, 9, 'active', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(7, NULL, 11, 'active', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(8, NULL, 12, 'active', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(9, NULL, 15, 'active', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(10, '2HomvSwzt6hdxNLFntDYlyb4n0CPxRnj0rmHKLf9', NULL, 'active', '2025-07-31 15:55:06', '2025-07-31 15:55:06'),
(11, NULL, 16, 'completed', '2025-07-31 17:28:04', '2025-07-31 17:30:47'),
(12, NULL, 16, 'completed', '2025-07-31 17:31:35', '2025-07-31 17:32:13'),
(13, '19oR5vthuZbzqdR7hlV1wPRRnIEna8eniG8us7hT', 16, 'completed', '2025-07-31 17:36:01', '2025-07-31 17:39:33'),
(14, NULL, 16, 'completed', '2025-07-31 17:43:09', '2025-07-31 17:43:16'),
(15, NULL, 16, 'completed', '2025-07-31 18:14:57', '2025-07-31 18:15:07'),
(16, NULL, 16, 'completed', '2025-07-31 18:15:20', '2025-07-31 18:52:45'),
(17, NULL, 1, 'active', '2025-07-31 18:29:53', '2025-07-31 18:29:53'),
(18, NULL, 16, 'completed', '2025-07-31 18:54:47', '2025-07-31 18:54:53'),
(19, 'R2hfXh6k9Sd9VB2PiLykaHNSA69ZecCtBrCMtFGX', 16, 'completed', '2025-07-31 19:05:15', '2025-07-31 19:05:22'),
(20, NULL, 16, 'completed', '2025-07-31 19:16:58', '2025-07-31 19:18:07'),
(21, 'R2hfXh6k9Sd9VB2PiLykaHNSA69ZecCtBrCMtFGX', 16, 'completed', '2025-07-31 19:19:26', '2025-07-31 19:19:40'),
(22, 'R2hfXh6k9Sd9VB2PiLykaHNSA69ZecCtBrCMtFGX', 16, 'completed', '2025-07-31 19:21:57', '2025-07-31 19:22:05'),
(23, 'R2hfXh6k9Sd9VB2PiLykaHNSA69ZecCtBrCMtFGX', 16, 'completed', '2025-07-31 19:24:21', '2025-07-31 19:24:28'),
(24, 'R2hfXh6k9Sd9VB2PiLykaHNSA69ZecCtBrCMtFGX', 16, 'completed', '2025-07-31 19:25:31', '2025-07-31 19:25:40'),
(25, 'R2hfXh6k9Sd9VB2PiLykaHNSA69ZecCtBrCMtFGX', 16, 'completed', '2025-07-31 19:27:26', '2025-07-31 19:27:35'),
(26, 'R2hfXh6k9Sd9VB2PiLykaHNSA69ZecCtBrCMtFGX', 16, 'completed', '2025-07-31 19:29:22', '2025-07-31 19:29:30'),
(27, 'R2hfXh6k9Sd9VB2PiLykaHNSA69ZecCtBrCMtFGX', 16, 'completed', '2025-07-31 19:33:42', '2025-07-31 19:33:53'),
(28, 'R2hfXh6k9Sd9VB2PiLykaHNSA69ZecCtBrCMtFGX', 16, 'completed', '2025-07-31 19:37:16', '2025-07-31 19:38:42'),
(29, 'R2hfXh6k9Sd9VB2PiLykaHNSA69ZecCtBrCMtFGX', 16, 'completed', '2025-07-31 20:13:46', '2025-07-31 20:14:00'),
(30, 'XpYPBNLxu0IXyEb3QovUDGQ5CE2r7EaOfK9aNbJg', 16, 'completed', '2025-08-01 03:31:08', '2025-08-01 04:00:04'),
(31, 'VU5GFHyHKHHA8l9oApbKGJpG8ih7C9APByXx4YsQ', NULL, 'active', '2025-08-01 04:22:03', '2025-08-01 04:22:03'),
(32, 'O9vhzfh2CTPyD6H8JTHk1nGkeIPSn3CgRf94X5qN', NULL, 'completed', '2025-08-01 04:27:12', '2025-08-01 04:27:54'),
(33, 'YeiwclB4i1KD57AaKlUhAIouRmWKr1bHAZhCobZJ', NULL, 'completed', '2025-08-01 04:29:01', '2025-08-01 04:29:20'),
(34, 'YeiwclB4i1KD57AaKlUhAIouRmWKr1bHAZhCobZJ', NULL, 'completed', '2025-08-01 04:30:27', '2025-08-01 04:31:16'),
(35, 'wcu9JbrCnxXxvp6t5NsfjI67nb595zW6F0rXgrwV', 16, 'completed', '2025-08-01 04:37:52', '2025-08-01 04:44:15'),
(36, 'UwvQvIHt7FRvPoYB3C8nWVzwDDO0vVx16V9xHPve', NULL, 'completed', '2025-08-01 04:40:09', '2025-08-01 04:40:44'),
(37, 'oxBuBGEQqpCl2wm2aEoEvuKqNkOgBeEELHOkq89M', 16, 'completed', '2025-08-01 07:05:28', '2025-08-01 07:10:31'),
(38, 'oxBuBGEQqpCl2wm2aEoEvuKqNkOgBeEELHOkq89M', 16, 'completed', '2025-08-01 07:11:52', '2025-08-01 07:12:00'),
(39, 'SncoCzpw9GgMta6FCHh6PlMOmuyB6wE6MWqaxFR3', NULL, 'completed', '2025-08-01 07:41:05', '2025-08-01 07:43:12'),
(40, 'hp3uN8sLydzl7xQaFknmArHqQ50vXTrYPl1uWhn6', 17, 'active', '2025-08-02 13:54:37', '2025-08-02 13:54:37'),
(41, '0vHMVt4AICkv7IBkVfeZG2mP2bVLjNivDxZdR7ip', NULL, 'active', '2025-08-03 17:47:30', '2025-08-03 17:47:30'),
(42, 'gvaATyarChY9vxoEYnJQHbqDbLW7LTywPWNCFJzu', 16, 'active', '2025-08-05 16:30:46', '2025-08-05 16:30:46'),
(43, NULL, 18, 'completed', '2025-08-26 13:17:26', '2025-08-27 08:18:19'),
(44, 'xEFUTWVzukEfUB0IlPxi0ByJNNhgaB3gpr9yOCiv', 18, 'completed', '2025-08-27 08:20:10', '2025-08-27 08:20:17'),
(45, 'xEFUTWVzukEfUB0IlPxi0ByJNNhgaB3gpr9yOCiv', 18, 'completed', '2025-08-27 08:24:13', '2025-08-27 08:24:26'),
(46, 'xEFUTWVzukEfUB0IlPxi0ByJNNhgaB3gpr9yOCiv', 18, 'completed', '2025-08-27 08:27:57', '2025-08-27 08:28:39'),
(47, 'xEFUTWVzukEfUB0IlPxi0ByJNNhgaB3gpr9yOCiv', 18, 'completed', '2025-08-27 08:29:43', '2025-08-27 08:29:54'),
(48, 'xEFUTWVzukEfUB0IlPxi0ByJNNhgaB3gpr9yOCiv', 18, 'completed', '2025-08-27 09:27:40', '2025-08-27 11:40:13'),
(49, '61ZUMGff0tuM3mU4X8IJRSnNFo59hdfisMKM7ooa', 18, 'completed', '2025-08-28 04:25:03', '2025-08-28 04:25:56'),
(50, '61ZUMGff0tuM3mU4X8IJRSnNFo59hdfisMKM7ooa', 18, 'completed', '2025-08-28 04:27:25', '2025-08-28 04:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint UNSIGNED NOT NULL,
  `cart_id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED DEFAULT NULL,
  `combo_id` bigint UNSIGNED DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `cart_id`, `product_variant_id`, `combo_id`, `quantity`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 317, NULL, 2, NULL, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(2, 1, NULL, 4, 1, 'Ít muối', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(3, 1, NULL, 3, 3, NULL, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(4, 1, 259, NULL, 3, 'Thêm tương ớt', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(5, 2, NULL, 1, 1, NULL, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(6, 2, 112, NULL, 2, 'Không cay', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(7, 3, 417, NULL, 1, 'Ít muối', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(8, 3, NULL, 5, 1, 'Thêm tương ớt', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(9, 3, NULL, 3, 3, 'Để ở cổng', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(10, 3, NULL, 5, 1, NULL, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(11, 3, 85, NULL, 1, 'Thêm tương ớt', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(12, 4, 517, NULL, 2, NULL, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(13, 4, 185, NULL, 3, 'Giao hàng cẩn thận', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(14, 4, 327, NULL, 2, 'Giao hàng cẩn thận', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(15, 4, NULL, 1, 3, NULL, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(16, 4, 404, NULL, 2, NULL, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(17, 5, 431, NULL, 3, 'Không cay', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(18, 6, NULL, 3, 1, 'Để ở cổng', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(19, 6, 297, NULL, 1, 'Gọi điện trước khi giao', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(20, 6, 213, NULL, 1, 'Ít muối', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(21, 7, NULL, 1, 1, 'Thêm tương ớt', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(22, 7, 509, NULL, 3, NULL, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(23, 7, NULL, 3, 2, 'Để ở cổng', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(24, 8, NULL, 3, 1, NULL, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(25, 8, 426, NULL, 3, NULL, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(26, 9, 405, NULL, 2, NULL, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(27, 9, NULL, 2, 1, NULL, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(28, 9, NULL, 5, 1, 'Không cay', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(29, 9, 467, NULL, 3, 'Gọi điện trước khi giao', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(30, 9, 498, NULL, 1, 'Không hành', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(31, 10, 61, NULL, 2, NULL, '2025-07-31 15:55:06', '2025-07-31 15:55:07'),
(41, 17, 1, NULL, 1, NULL, '2025-07-31 18:29:53', '2025-07-31 18:29:53'),
(58, 31, 259, NULL, 1, NULL, '2025-08-01 04:22:03', '2025-08-01 04:22:03'),
(72, 40, 12, NULL, 1, NULL, '2025-08-02 13:54:37', '2025-08-02 13:54:37'),
(73, 41, 85, NULL, 1, NULL, '2025-08-03 17:47:30', '2025-08-03 17:47:30'),
(75, 42, 157, NULL, 1, NULL, '2025-08-22 06:40:14', '2025-08-22 06:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item_toppings`
--

CREATE TABLE `cart_item_toppings` (
  `id` bigint UNSIGNED NOT NULL,
  `cart_item_id` bigint UNSIGNED NOT NULL,
  `topping_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_item_toppings`
--

INSERT INTO `cart_item_toppings` (`id`, `cart_item_id`, `topping_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 6, 4, 1, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(2, 6, 5, 1, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(3, 6, 7, 1, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(4, 7, 10, 2, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(5, 11, 8, 1, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(6, 17, 2, 1, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(7, 17, 8, 1, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(8, 17, 9, 1, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(9, 19, 5, 1, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(10, 19, 7, 1, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(11, 19, 10, 1, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(12, 20, 8, 1, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(13, 26, 3, 2, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(14, 29, 7, 2, '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(50, 72, 1, 1, '2025-08-02 13:54:37', '2025-08-02 13:54:37'),
(51, 72, 3, 1, '2025-08-02 13:54:37', '2025-08-02 13:54:37'),
(52, 72, 5, 1, '2025-08-02 13:54:37', '2025-08-02 13:54:37'),
(53, 73, 2, 1, '2025-08-03 17:47:30', '2025-08-03 17:47:30'),
(55, 75, 2, 1, '2025-08-22 06:40:14', '2025-08-22 06:40:14'),
(56, 75, 4, 1, '2025-08-22 06:40:14', '2025-08-22 06:40:14'),
(57, 75, 5, 1, '2025-08-22 06:40:14', '2025-08-22 06:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Burger', 'Burger với nhiều lớp nhân thịt và rau củ tươi ngon', 'categories/2534daef-8ddf-462d-b1d2-fbf753ce05ee.webp', 1, '2025-07-31 15:30:43', '2025-07-31 15:58:51'),
(2, 'Pizza', 'Pizza đa dạng hương vị', 'categories/1c8ac18a-ef3e-480d-bbdf-47c4e285eb62.jpg', 1, '2025-07-31 15:30:43', '2025-07-31 15:59:08'),
(3, 'Gà Rán', 'Gà rán giòn rụm, thơm ngon', 'categories/66e69810-fd12-4dff-9ace-424ace7b0ad3.jpg', 1, '2025-07-31 15:30:43', '2025-07-31 15:59:42'),
(4, 'Cơm', 'Các món cơm đặc sắc', 'categories/03b83c37-d222-4dab-ad78-a30c53f0570f.jpeg', 1, '2025-07-31 15:30:43', '2025-07-31 16:00:00'),
(5, 'Mì', 'Các loại mì ngon', 'categories/e46924e3-db5d-4a19-9051-af3c515ece9d.jpg', 1, '2025-07-31 15:30:44', '2025-07-31 16:02:33'),
(6, 'Đồ Uống', 'Đồ uống giải khát', 'categories/e6c6d58e-b451-4f57-ac06-26adba9397f3.jpg', 1, '2025-07-31 15:30:44', '2025-07-31 16:03:02'),
(7, 'Combo', 'Các combo sản phẩm với giá ưu đãi', 'categories/a90d4f84-6276-42ba-8a52-f99957628841.jpg', 1, '2025-07-31 15:30:53', '2025-07-31 16:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` bigint UNSIGNED NOT NULL,
  `receiver_id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED DEFAULT NULL,
  `conversation_id` bigint UNSIGNED DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_at` datetime NOT NULL,
  `status` enum('sent','delivered','read') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `read_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_system_message` tinyint(1) NOT NULL DEFAULT '0',
  `related_order_id` bigint UNSIGNED DEFAULT NULL,
  `sender_type` enum('customer','branch_admin','branch_staff','super_admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_type` enum('customer','branch_admin','super_admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `sender_id`, `receiver_id`, `branch_id`, `conversation_id`, `message`, `attachment`, `attachment_type`, `sent_at`, `status`, `read_at`, `is_deleted`, `is_system_message`, `related_order_id`, `sender_type`, `receiver_type`, `created_at`, `updated_at`) VALUES
(1, 11, 16, NULL, 1, 'Xin chào! Tôi có thể giúp gì cho bạn hôm nay? 😊', NULL, NULL, '2025-08-01 00:41:34', 'sent', '2025-08-01 00:41:34', 0, 0, NULL, 'customer', 'super_admin', '2025-07-31 17:41:34', '2025-07-31 17:41:34'),
(2, 11, 18, NULL, 2, 'Xin chào! Tôi có thể giúp gì cho bạn hôm nay? 😊', NULL, NULL, '2025-08-29 23:45:58', 'sent', '2025-08-29 23:45:58', 0, 0, NULL, 'customer', 'super_admin', '2025-08-29 16:45:58', '2025-08-29 16:45:58'),
(3, 18, 11, NULL, 2, 'cc', NULL, NULL, '2025-08-29 23:46:02', 'sent', '2025-08-29 23:46:09', 0, 0, NULL, 'customer', 'super_admin', '2025-08-29 16:46:02', '2025-08-29 16:46:09'),
(4, 1, 18, NULL, 2, '12', NULL, NULL, '2025-08-29 23:46:13', 'sent', '2025-08-29 23:46:19', 0, 0, NULL, 'super_admin', 'customer', '2025-08-29 16:46:13', '2025-08-29 16:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `combos`
--

CREATE TABLE `combos` (
  `id` bigint UNSIGNED NOT NULL,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `original_price` decimal(12,2) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `combos`
--

INSERT INTO `combos` (`id`, `sku`, `name`, `image`, `slug`, `category_id`, `description`, `original_price`, `price`, `status`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'CMB250731001', 'Combo Burger Bò Phô Mai Deluxe', 'combos/1753976739_imOePIxXXL.jpg', 'combo-burger-bo-pho-mai-deluxe', 7, 'Burger bò phô mai + khoai tây chiên + nước ngọt', '129532.00', '120000.00', 'selling', 1, 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:45:40'),
(2, 'CMB250731002', 'Combo Gà Rán Gia Đình', 'combos/1753976807_4va6zRrth0.jpg', 'combo-ga-ran-gia-dinh', 7, 'Gà rán giòn + cơm + nước ngọt cho cả gia đình', '511150.00', '250000.00', 'selling', 1, 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:46:49'),
(3, 'CMB250731003', 'Combo Pizza Hải Sản Cao Cấp', 'combos/1753977077_6usm0y9MZr.jpg', 'combo-pizza-hai-san-cao-cap', 7, 'Pizza hải sản + salad + nước ép', '240013.00', '180000.00', 'selling', 1, 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:51:19'),
(4, 'CMB250731004', 'Combo Học Sinh Tiết Kiệm', 'combos/1753977388_XFIFThgPp4.jpg', 'combo-hoc-sinh-tiet-kiem', 7, 'Burger gà + nước ngọt với giá ưu đãi', '271550.00', '65000.00', 'selling', 1, 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:56:29'),
(5, 'CMB250731005', 'Combo Cặp Đôi Lãng Mạn', 'combos/1753977496_Uik7J0sUtG.jpg', 'combo-cap-doi-lang-man', 7, '2 burger + 2 nước ngọt + khoai tây chiên', '434920.00', '150000.00', 'selling', 1, 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:58:17'),
(6, 'CO-4NHAUJ', 'Combo Gà Gật Gù', 'combos/1753986557_xB91gRIGLP.jpg', 'combo-ga-gat-gu', 7, NULL, '854074.00', '820000.00', 'selling', 1, 1, 1, '2025-07-31 18:27:07', '2025-07-31 18:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `combo_branch_stock`
--

CREATE TABLE `combo_branch_stock` (
  `id` bigint UNSIGNED NOT NULL,
  `combo_id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `combo_branch_stock`
--

INSERT INTO `combo_branch_stock` (`id`, `combo_id`, `branch_id`, `quantity`, `created_at`, `updated_at`) VALUES
(16, 1, 2, 87, '2025-07-31 15:45:40', '2025-07-31 15:45:40'),
(17, 1, 1, 80, '2025-07-31 15:45:41', '2025-07-31 15:45:41'),
(18, 1, 3, 54, '2025-07-31 15:45:41', '2025-07-31 15:45:41'),
(19, 2, 2, 31, '2025-07-31 15:46:49', '2025-07-31 15:46:49'),
(20, 2, 1, 76, '2025-07-31 15:46:49', '2025-07-31 15:46:49'),
(21, 2, 3, 42, '2025-07-31 15:46:49', '2025-07-31 15:46:49'),
(22, 3, 2, 65, '2025-07-31 15:51:19', '2025-07-31 15:51:19'),
(23, 3, 1, 30, '2025-07-31 15:51:19', '2025-07-31 15:51:19'),
(24, 3, 3, 67, '2025-07-31 15:51:19', '2025-07-31 15:51:19'),
(25, 4, 2, 56, '2025-07-31 15:56:29', '2025-07-31 15:56:29'),
(26, 4, 1, 73, '2025-07-31 15:56:29', '2025-07-31 15:56:29'),
(27, 4, 3, 35, '2025-07-31 15:56:29', '2025-07-31 15:56:29'),
(28, 5, 2, 24, '2025-07-31 15:58:17', '2025-07-31 15:58:17'),
(29, 5, 1, 49, '2025-07-31 15:58:17', '2025-07-31 15:58:17'),
(30, 5, 3, 97, '2025-07-31 15:58:17', '2025-07-31 15:58:17'),
(34, 6, 2, 37, '2025-07-31 18:29:20', '2025-07-31 18:29:20'),
(35, 6, 1, 58, '2025-07-31 18:29:20', '2025-07-31 18:29:20'),
(36, 6, 3, 42, '2025-07-31 18:29:20', '2025-07-31 18:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `combo_items`
--

CREATE TABLE `combo_items` (
  `id` bigint UNSIGNED NOT NULL,
  `combo_id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `combo_items`
--

INSERT INTO `combo_items` (`id`, `combo_id`, `product_variant_id`, `quantity`, `created_at`, `updated_at`) VALUES
(14, 1, 1, 1, '2025-07-31 15:45:40', '2025-07-31 15:45:40'),
(15, 1, 451, 1, '2025-07-31 15:45:40', '2025-07-31 15:45:40'),
(16, 2, 181, 1, '2025-07-31 15:46:49', '2025-07-31 15:46:49'),
(17, 2, 271, 1, '2025-07-31 15:46:49', '2025-07-31 15:46:49'),
(18, 2, 457, 1, '2025-07-31 15:46:49', '2025-07-31 15:46:49'),
(19, 3, 91, 1, '2025-07-31 15:51:19', '2025-07-31 15:51:19'),
(20, 3, 517, 1, '2025-07-31 15:51:19', '2025-07-31 15:51:19'),
(21, 4, 7, 1, '2025-07-31 15:56:29', '2025-07-31 15:56:29'),
(22, 4, 463, 1, '2025-07-31 15:56:29', '2025-07-31 15:56:29'),
(23, 5, 1, 1, '2025-07-31 15:58:17', '2025-07-31 15:58:17'),
(24, 5, 7, 1, '2025-07-31 15:58:17', '2025-07-31 15:58:17'),
(25, 5, 451, 1, '2025-07-31 15:58:17', '2025-07-31 15:58:17'),
(26, 5, 457, 1, '2025-07-31 15:58:17', '2025-07-31 15:58:17'),
(33, 6, 187, 1, '2025-07-31 18:29:20', '2025-07-31 18:29:20'),
(34, 6, 199, 1, '2025-07-31 18:29:20', '2025-07-31 18:29:20'),
(35, 6, 211, 1, '2025-07-31 18:29:20', '2025-07-31 18:29:20'),
(36, 6, 217, 1, '2025-07-31 18:29:20', '2025-07-31 18:29:20'),
(37, 6, 460, 1, '2025-07-31 18:29:20', '2025-07-31 18:29:20'),
(38, 6, 466, 1, '2025-07-31 18:29:20', '2025-07-31 18:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED DEFAULT NULL,
  `status` enum('new','distributed','closed','active','resolved','open','pending') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `is_distributed` tinyint(1) NOT NULL DEFAULT '0',
  `distribution_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `customer_id`, `branch_id`, `status`, `is_distributed`, `distribution_time`, `created_at`, `updated_at`) VALUES
(1, 16, NULL, 'new', 0, NULL, '2025-07-31 17:41:34', '2025-07-31 17:41:34'),
(2, 18, NULL, 'new', 0, NULL, '2025-08-29 16:45:58', '2025-08-29 16:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `conversation_users`
--

CREATE TABLE `conversation_users` (
  `id` bigint UNSIGNED NOT NULL,
  `conversation_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `user_type` enum('customer','branch_admin','branch_staff','super_admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` enum('percentage','fixed_amount','free_shipping') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_value` decimal(12,2) NOT NULL,
  `min_requirement_type` enum('order_amount','product_price') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_requirement_value` decimal(12,2) DEFAULT NULL,
  `max_discount_amount` decimal(12,2) DEFAULT NULL,
  `applicable_scope` enum('all_branches','specific_branches') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all_branches',
  `applicable_items` enum('all_items','all_products','all_categories','all_combos','specific_products','specific_categories','specific_combos','specific_variants') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all_items',
  `applicable_ranks` json DEFAULT NULL,
  `rank_exclusive` tinyint(1) NOT NULL DEFAULT '0',
  `valid_days_of_week` json DEFAULT NULL,
  `valid_from_time` time DEFAULT NULL,
  `valid_to_time` time DEFAULT NULL,
  `usage_type` enum('public','personal') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `max_total_usage` int DEFAULT NULL,
  `max_usage_per_user` int NOT NULL DEFAULT '1',
  `current_usage_count` int NOT NULL DEFAULT '0',
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` int NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_code_branches`
--

CREATE TABLE `discount_code_branches` (
  `id` bigint UNSIGNED NOT NULL,
  `discount_code_id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_code_products`
--

CREATE TABLE `discount_code_products` (
  `id` bigint UNSIGNED NOT NULL,
  `discount_code_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `combo_id` bigint UNSIGNED DEFAULT NULL,
  `product_variant_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_usage_history`
--

CREATE TABLE `discount_usage_history` (
  `id` bigint UNSIGNED NOT NULL,
  `discount_code_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `branch_id` bigint UNSIGNED NOT NULL,
  `guest_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_amount` decimal(12,2) NOT NULL,
  `discount_amount` decimal(12,2) NOT NULL,
  `used_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `application_id` bigint UNSIGNED NOT NULL,
  `status` enum('active','inactive','suspended','locked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `is_available` tinyint(1) NOT NULL DEFAULT '1',
  `balance` decimal(12,2) NOT NULL DEFAULT '0.00',
  `rating` decimal(3,2) NOT NULL DEFAULT '0.00',
  `cancellation_count` int NOT NULL DEFAULT '0',
  `reliability_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `penalty_count` int NOT NULL DEFAULT '0',
  `auto_deposit_earnings` tinyint(1) NOT NULL DEFAULT '0',
  `otp` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `admin_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `password_reset_at` timestamp NULL DEFAULT NULL,
  `password_changed_at` timestamp NULL DEFAULT NULL,
  `must_change_password` tinyint(1) NOT NULL DEFAULT '0',
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `locked_at` timestamp NULL DEFAULT NULL,
  `locked_until` timestamp NULL DEFAULT NULL,
  `locked_by` bigint UNSIGNED DEFAULT NULL,
  `lock_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `unlocked_at` timestamp NULL DEFAULT NULL,
  `unlocked_by` bigint UNSIGNED DEFAULT NULL,
  `status_changed_at` timestamp NULL DEFAULT NULL,
  `status_changed_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `email`, `password`, `full_name`, `phone_number`, `address`, `application_id`, `status`, `is_available`, `balance`, `rating`, `cancellation_count`, `reliability_score`, `penalty_count`, `auto_deposit_earnings`, `otp`, `expires_at`, `admin_notes`, `password_reset_at`, `password_changed_at`, `must_change_password`, `updated_by`, `locked_at`, `locked_until`, `locked_by`, `lock_reason`, `unlocked_at`, `unlocked_by`, `status_changed_at`, `status_changed_by`, `created_at`, `updated_at`) VALUES
(1, 'driver1@test.com', '$2y$10$R9JwvGVALrgwWeG99zxmP.5UmfGdXZE0yQ6YFcDbmI2MEHyj6OqMm', 'Nguyễn Văn A', '0981714620', 'Hà Nội, Việt Nam', 21, 'active', 1, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-01 15:30:43', '2025-08-26 12:29:36'),
(2, 'driver2@test.com', '123456', 'Nguyễn Văn B', '0981714621', 'Hà Nội, Việt Nam', 22, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-30 17:00:00', '2025-08-26 11:56:43'),
(3, 'driver3@test.com', '123456', 'Nguyễn Văn C', '0981714622', 'Hà Nội, Việt Nam', 23, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-01 15:30:43', '2025-08-26 11:56:43'),
(4, 'driver4@test.com', '123456', 'Trần Văn D', '0981714623', 'Hà Nội, Việt Nam', 24, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(5, 'driver5@test.com', '123456', 'Lê Thị E', '0981714624', 'Hà Nội, Việt Nam', 25, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(6, 'driver6@test.com', '123456', 'Phạm Văn F', '0981714625', 'Hà Nội, Việt Nam', 26, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(7, 'driver7@test.com', '123456', 'Hoàng Thị G', '0981714626', 'Hà Nội, Việt Nam', 27, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(8, 'driver8@test.com', '123456', 'Vũ Văn H', '0981714627', 'Hà Nội, Việt Nam', 28, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(9, 'driver9@test.com', '123456', 'Đặng Thị I', '0981714628', 'Hà Nội, Việt Nam', 29, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(10, 'driver10@test.com', '123456', 'Bùi Văn K', '0981714629', 'Hà Nội, Việt Nam', 30, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(11, 'driver11@test.com', '123456', 'Đinh Thị L', '0981714630', 'Hà Nội, Việt Nam', 31, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(12, 'driver12@test.com', '123456', 'Dương Văn M', '0981714631', 'Hà Nội, Việt Nam', 32, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(13, 'driver13@test.com', '123456', 'Cao Thị N', '0981714632', 'Hà Nội, Việt Nam', 33, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(14, 'driver14@test.com', '123456', 'Lý Văn O', '0981714633', 'Hà Nội, Việt Nam', 34, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(15, 'driver15@test.com', '123456', 'Mạc Thị P', '0981714634', 'Hà Nội, Việt Nam', 35, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(16, 'driver16@test.com', '123456', 'Tô Văn Q', '0981714635', 'Hà Nội, Việt Nam', 36, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(17, 'driver17@test.com', '123456', 'Hồ Thị R', '0981714636', 'Hà Nội, Việt Nam', 37, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(18, 'driver18@test.com', '123456', 'Võ Văn S', '0981714637', 'Hà Nội, Việt Nam', 38, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(19, 'driver19@test.com', '123456', 'Đỗ Thị T', '0981714638', 'Hà Nội, Việt Nam', 39, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(20, 'driver20@test.com', '123456', 'Nông Văn U', '0981714639', 'Hà Nội, Việt Nam', 40, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(21, 'driver21@test.com', '123456', 'Kiều Thị V', '0981714640', 'Hà Nội, Việt Nam', 41, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(22, 'driver22@test.com', '123456', 'Ông Văn W', '0981714641', 'Hà Nội, Việt Nam', 42, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43'),
(23, 'driver23@test.com', '123456', 'Ứng Thị X', '0981714642', 'Hà Nội, Việt Nam', 43, 'active', 0, '0.00', '0.00', 0, '0.00', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-31 15:30:43', '2025-08-26 11:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `driver_applications`
--

CREATE TABLE `driver_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` enum('male','female','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_card_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_card_issue_date` date NOT NULL,
  `id_card_issue_place` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_type` enum('motorcycle','car','bicycle') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_plate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_license_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_card_front_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card_back_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_license_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_registration_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_relationship` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `admin_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_applications`
--

INSERT INTO `driver_applications` (`id`, `full_name`, `email`, `phone_number`, `date_of_birth`, `gender`, `id_card_number`, `id_card_issue_date`, `id_card_issue_place`, `address`, `vehicle_type`, `vehicle_model`, `vehicle_color`, `license_plate`, `driver_license_number`, `id_card_front_image`, `id_card_back_image`, `driver_license_image`, `profile_image`, `vehicle_registration_image`, `bank_name`, `bank_account_number`, `bank_account_name`, `emergency_contact_name`, `emergency_contact_phone`, `emergency_contact_relationship`, `status`, `admin_notes`, `created_at`, `updated_at`) VALUES
(1, 'Newton Treutel', 'jast.adan@example.com', '+84 966896852', '1993-02-28', 'male', '7412049053', '2011-07-08', 'Stantonborough', '858 Torrance Route\nCaitlynborough, GA 75763', 'bicycle', 'inventore', 'LightSeaGreen', 'mj-184-82', 'DL8221548449', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Cummings Ltd', '98493746524225', 'Holden Spinka', 'Mervin Wintheiser Sr.', '+84 403968531', 'sibling', 'approved', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(2, 'Onie Volkman', 'emanuel73@example.org', '+84 852793118', '1987-06-27', 'female', '2377926717', '2010-11-02', 'Port Laurenfurt', '4041 Thiel Ways\nVandervortport, ME 88022', 'car', 'quis', 'Blue', 'ma-208-33', 'DL1435195519', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Shields, McKenzie and Olson', '31392485656273', 'Clara Zulauf IV', 'Eldon Kub', '+84 437611264', 'spouse', 'approved', 'Eaque aut voluptatum quas laudantium totam cumque.', '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(3, 'Polly Crooks', 'rickey21@example.com', '+84 907048523', '2000-08-28', 'male', '2430573284', '1991-05-30', 'New Esther', '566 Kenya Loaf Suite 987\nPort Donnell, OR 34177-1324', 'car', 'quidem', 'DeepPink', 'qv-398-37', 'DL7384094913', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Brown, Sauer and Gleichner', '67014981392297', 'Cathy Kuhic', 'Rossie Brekke III', '+84 477122221', 'spouse', 'approved', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(4, 'Prof. Marcia Koepp', 'tia83@example.org', '+84 820171257', '1984-02-02', 'male', '0756151450', '1981-03-05', 'North Aidan', '884 Dare Burg Apt. 533\nTressamouth, CA 30939-6741', 'motorcycle', 'nam', 'MediumVioletRed', 'hd-421-51', 'DL7205640620', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Dietrich Group', '61981048740052', 'Prof. Casimer Lowe', 'Ofelia Bradtke', '+84 738602187', 'friend', 'approved', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(5, 'Maeve Senger', 'marco.okon@example.com', '+84 107209748', '1996-05-14', 'male', '0186309678', '1999-07-11', 'McDermottmouth', '9856 Witting Road\nBashirianberg, MO 85071', 'car', 'et', 'Yellow', 'wc-193-40', 'DL5580524244', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Bartell-Koelpin', '21445357360348', 'Rogers Wuckert', 'Dr. Nicole Walker', '+84 524943415', 'parent', 'approved', 'Ea aut unde quis saepe.', '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(6, 'Mr. Aidan Stiedemann', 'kreiger.sophie@example.com', '+84 213711311', '2003-10-22', 'other', '4845465716', '2006-06-30', 'Abernathytown', '4625 Rogelio Forge\nKoelpinton, LA 19198', 'car', 'velit', 'Lavender', 'ko-928-47', 'DL5789979730', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Connelly LLC', '56742202129849', 'Eulalia Kilback', 'Antonette Schmitt MD', '+84 279197695', 'spouse', 'approved', 'Dolores quos culpa odio.', '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(7, 'Toy Stokes', 'bosco.major@example.com', '+84 839670251', '1988-11-14', 'female', '4947709975', '2010-11-23', 'South Shemar', '3480 Thiel Vista Suite 373\nStoltenbergfort, CO 57738-3271', 'car', 'laborum', 'Plum', 'qx-148-45', 'DL4464672997', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Schaden LLC', '60950521255891', 'Dedric Gislason', 'Carmine Wuckert', '+84 531033993', 'sibling', 'approved', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(8, 'Mr. Easton Moore Jr.', 'daphnee.hartmann@example.net', '+84 591992868', '1992-11-11', 'female', '0946804882', '1974-10-05', 'Stracketon', '3718 Kiel Parkways Apt. 075\nSouth Camilaton, IA 72426', 'car', 'non', 'Purple', 'ol-356-67', 'DL1409633559', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Hoppe LLC', '46492793096868', 'Juvenal Grady Jr.', 'Dr. Fredy Rowe', '+84 594594175', 'sibling', 'approved', 'Saepe minus molestiae reprehenderit hic possimus fuga.', '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(9, 'Anya Conn', 'kira11@example.org', '+84 263680158', '1988-01-22', 'male', '2281871196', '2013-11-02', 'Cheyannebury', '74360 Pollich Crossing\nKoelpinfort, AL 85400', 'bicycle', 'ex', 'DarkOliveGreen', 'tj-701-89', 'DL3226521657', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Hudson-Roberts', '04554774317238', 'Anahi Adams', 'Prof. Anita Will', '+84 714302062', 'friend', 'approved', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(10, 'Hayden Bode', 'gerhold.mitchell@example.com', '+84 924144878', '1993-10-05', 'other', '5290022449', '1972-04-11', 'Andreannehaven', '418 Hartmann Pike\nRusselmouth, AL 03136', 'bicycle', 'culpa', 'MediumTurquoise', 'iy-519-24', 'DL1552564631', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Schumm Group', '46454142589585', 'Dr. Mathias Emmerich', 'Nikki Abbott', '+84 684448091', 'parent', 'approved', 'Eius aut molestias et sint maxime nihil.', '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(11, 'Mr. Ignatius Schuppe', 'trent.considine@example.org', '+84 842553775', '1984-02-11', 'female', '5220229368', '2015-01-19', 'North Maymouth', '9015 Dickinson Summit Suite 147\nKochmouth, RI 79056', 'car', 'perspiciatis', 'LemonChiffon', 'kx-655-30', 'DL4249038559', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Stehr, Labadie and Gottlieb', '78387973095104', 'Anahi Johnson', 'Mekhi Bode V', '+84 437530420', 'sibling', 'pending', 'Non molestiae est officia quis laudantium enim.', '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(12, 'Bernhard Bailey', 'irunolfsdottir@example.org', '+84 715201439', '1976-03-01', 'female', '6158788926', '1998-04-01', 'Harberfort', '83327 Fahey Stravenue\nSouth Alize, WA 05068', 'motorcycle', 'voluptas', 'DarkSlateGray', 'cn-871-81', 'DL9384839557', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Moen-Purdy', '36895247054265', 'Jade Keeling I', 'Mr. Erik D\'Amore', '+84 975320809', 'friend', 'pending', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(13, 'Dr. Israel Bogisich', 'godfrey46@example.net', '+84 405348854', '1979-01-06', 'male', '3606078436', '1998-10-22', 'New Elmiratown', '5492 Kaya Vista\nCasimirtown, ND 86633-5443', 'car', 'accusamus', 'SpringGreen', 'rw-991-22', 'DL9709764588', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Bergnaum-Littel', '85146623796308', 'Prof. Ezequiel Langworth', 'Mr. Richie Braun MD', '+84 684882891', 'friend', 'pending', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(14, 'Bonita Rath', 'clementine32@example.com', '+84 476956457', '1994-03-01', 'other', '9562821723', '2002-11-18', 'North Trent', '303 Elenora Circle\nLake Vincenza, ID 00074', 'motorcycle', 'corrupti', 'MediumSpringGreen', 'io-207-49', 'DL5765186712', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Schultz, Quigley and Gaylord', '80504132202909', 'Vern Ratke', 'Rogelio Hessel', '+84 782366716', 'spouse', 'pending', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(15, 'Isai Fisher', 'kspencer@example.com', '+84 275982500', '2004-12-23', 'other', '0249866176', '2020-07-22', 'South Glennieburgh', '24082 Frieda Plains\nWest Clementina, GA 85064-3431', 'bicycle', 'aperiam', 'NavajoWhite', 'qt-470-26', 'DL0525354885', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Ankunding Group', '68412860245481', 'Clemmie Schulist', 'Janie Stroman', '+84 104928934', 'friend', 'pending', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(16, 'Mrs. Katelynn Conroy Jr.', 'rebekah.swift@example.net', '+84 720401531', '1993-06-03', 'other', '6519224233', '1975-10-02', 'Wolfstad', '9504 Keyon Pike\nAryannaside, VT 79749', 'bicycle', 'ipsum', 'CornflowerBlue', 'xm-593-97', 'DL3966476981', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'O\'Keefe Ltd', '13233376252402', 'Allison Stark', 'Vergie Armstrong I', '+84 529273966', 'parent', 'rejected', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(17, 'Erica Fisher', 'jsmith@example.com', '+84 157243099', '1991-05-25', 'female', '4262946085', '1977-11-13', 'Leannonside', '363 Serena Vista Suite 119\nCooperhaven, FL 14408', 'car', 'pariatur', 'Linen', 'qh-412-36', 'DL4017425956', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Fisher Group', '54332943664308', 'Mrs. Josie Hauck III', 'Brenna Adams', '+84 288393827', 'friend', 'rejected', 'In dolorem voluptatem aut sed.', '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(18, 'Suzanne Considine DDS', 'mann.herminia@example.com', '+84 477281769', '1999-02-04', 'male', '8905078902', '2003-02-17', 'East Trent', '442 Constantin Avenue\nAutumnbury, KS 23969', 'motorcycle', 'occaecati', 'Tomato', 'jw-347-47', 'DL0989712544', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Lockman-Gutmann', '69043084625293', 'Prof. Aurelio Hill', 'Elvis Hill DVM', '+84 455098665', 'spouse', 'rejected', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(19, 'Eveline Strosin', 'dernser@example.net', '+84 946515729', '2003-12-30', 'female', '5862818233', '2010-04-12', 'Allyville', '3640 Misty Course Apt. 509\nEast Ulices, AR 36301', 'bicycle', 'explicabo', 'BlanchedAlmond', 'bh-647-44', 'DL8822509190', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Botsford, Buckridge and Kunde', '02746575887799', 'Dr. Edmond Ruecker', 'Pete Gottlieb', '+84 714371017', 'friend', 'rejected', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(20, 'Markus Dietrich', 'mfadel@example.com', '+84 334177178', '2000-02-10', 'female', '6188575897', '2012-08-27', 'New Julio', '1795 Danielle Course Apt. 649\nWest Harveyfurt, ID 79053', 'car', 'ut', 'Peru', 'pu-180-50', 'DL0078554689', 'images/id_cards/front_default.jpg', 'images/id_cards/back_default.jpg', 'images/licenses/default.jpg', 'images/profiles/default.jpg', 'images/vehicles/default.jpg', 'Bergnaum, Schinner and Zemlak', '58034405580466', 'Hardy Schneider', 'Rudolph Casper', '+84 190655044', 'sibling', 'rejected', NULL, '2025-07-31 15:30:43', '2025-07-31 15:30:43'),
(21, 'Nguyễn Văn A', 'driver1@test.com', '0981714620', '1990-01-01', 'male', 'TESTTEST001', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00001', 'TEST001', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Nguyễn Văn A', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(22, 'Nguyễn Văn B', 'driver2@test.com', '0981714621', '1990-01-01', 'male', 'TESTTEST002', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00002', 'TEST002', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Nguyễn Văn B', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(23, 'Nguyễn Văn C', 'driver3@test.com', '0981714622', '1990-01-01', 'male', 'TESTTEST003', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00003', 'TEST003', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Nguyễn Văn C', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(24, 'Trần Văn D', 'driver4@test.com', '0981714623', '1990-01-01', 'male', 'TESTTEST004', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00004', 'TEST004', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Trần Văn D', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(25, 'Lê Thị E', 'driver5@test.com', '0981714624', '1990-01-01', 'male', 'TESTTEST005', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00005', 'TEST005', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Lê Thị E', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(26, 'Phạm Văn F', 'driver6@test.com', '0981714625', '1990-01-01', 'male', 'TESTTEST006', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00006', 'TEST006', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Phạm Văn F', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(27, 'Hoàng Thị G', 'driver7@test.com', '0981714626', '1990-01-01', 'male', 'TESTTEST007', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00007', 'TEST007', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Hoàng Thị G', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(28, 'Vũ Văn H', 'driver8@test.com', '0981714627', '1990-01-01', 'male', 'TESTTEST008', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00008', 'TEST008', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Vũ Văn H', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(29, 'Đặng Thị I', 'driver9@test.com', '0981714628', '1990-01-01', 'male', 'TESTTEST009', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00009', 'TEST009', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Đặng Thị I', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(30, 'Bùi Văn K', 'driver10@test.com', '0981714629', '1990-01-01', 'male', 'TESTTEST010', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00010', 'TEST010', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Bùi Văn K', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(31, 'Đinh Thị L', 'driver11@test.com', '0981714630', '1990-01-01', 'male', 'TESTTEST011', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00011', 'TEST011', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Đinh Thị L', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(32, 'Dương Văn M', 'driver12@test.com', '0981714631', '1990-01-01', 'male', 'TESTTEST012', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00012', 'TEST012', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Dương Văn M', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(33, 'Cao Thị N', 'driver13@test.com', '0981714632', '1990-01-01', 'male', 'TESTTEST013', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00013', 'TEST013', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Cao Thị N', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(34, 'Lý Văn O', 'driver14@test.com', '0981714633', '1990-01-01', 'male', 'TESTTEST014', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00014', 'TEST014', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Lý Văn O', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(35, 'Mạc Thị P', 'driver15@test.com', '0981714634', '1990-01-01', 'male', 'TESTTEST015', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00015', 'TEST015', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Mạc Thị P', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(36, 'Tô Văn Q', 'driver16@test.com', '0981714635', '1990-01-01', 'male', 'TESTTEST016', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00016', 'TEST016', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Tô Văn Q', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(37, 'Hồ Thị R', 'driver17@test.com', '0981714636', '1990-01-01', 'male', 'TESTTEST017', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00017', 'TEST017', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Hồ Thị R', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(38, 'Võ Văn S', 'driver18@test.com', '0981714637', '1990-01-01', 'male', 'TESTTEST018', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00018', 'TEST018', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Võ Văn S', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(39, 'Đỗ Thị T', 'driver19@test.com', '0981714638', '1990-01-01', 'male', 'TESTTEST019', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00019', 'TEST019', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Đỗ Thị T', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(40, 'Nông Văn U', 'driver20@test.com', '0981714639', '1990-01-01', 'male', 'TESTTEST020', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00020', 'TEST020', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Nông Văn U', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(41, 'Kiều Thị V', 'driver21@test.com', '0981714640', '1990-01-01', 'male', 'TESTTEST021', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00021', 'TEST021', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Kiều Thị V', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(42, 'Ông Văn W', 'driver22@test.com', '0981714641', '1990-01-01', 'male', 'TESTTEST022', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00022', 'TEST022', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Ông Văn W', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23'),
(43, 'Ứng Thị X', 'driver23@test.com', '0981714642', '1990-01-01', 'male', 'TESTTEST023', '2010-01-01', 'Hà Nội', 'Hà Nội, Việt Nam', 'motorcycle', 'Honda Wave', 'Đen', '30A-00023', 'TEST023', NULL, NULL, NULL, NULL, NULL, 'Vietcombank', '1234567890', 'Ứng Thị X', 'Liên hệ khẩn cấp', '0987654321', 'Gia đình', 'approved', NULL, '2025-07-31 15:30:43', '2025-08-04 09:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `driver_documents`
--

CREATE TABLE `driver_documents` (
  `id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `license_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_class` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_expiry` date DEFAULT NULL,
  `license_front` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_back` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card_front` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card_back` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_registration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_plate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_documents`
--

INSERT INTO `driver_documents` (`id`, `driver_id`, `license_number`, `license_class`, `license_expiry`, `license_front`, `license_back`, `id_card_front`, `id_card_back`, `vehicle_type`, `vehicle_registration`, `vehicle_color`, `license_plate`, `created_at`, `updated_at`) VALUES
(1, 1, 'TEST001', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST001', 'Đen', '30A-00001', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(2, 2, 'TEST002', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST002', 'Đen', '30A-00002', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(3, 3, 'TEST003', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST003', 'Đen', '30A-00003', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(4, 4, 'TEST004', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST004', 'Đen', '30A-00004', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(5, 5, 'TEST005', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST005', 'Đen', '30A-00005', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(6, 6, 'TEST006', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST006', 'Đen', '30A-00006', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(7, 7, 'TEST007', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST007', 'Đen', '30A-00007', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(8, 8, 'TEST008', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST008', 'Đen', '30A-00008', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(9, 9, 'TEST009', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST009', 'Đen', '30A-00009', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(10, 10, 'TEST010', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST010', 'Đen', '30A-00010', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(11, 11, 'TEST011', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST011', 'Đen', '30A-00011', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(12, 12, 'TEST012', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST012', 'Đen', '30A-00012', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(13, 13, 'TEST013', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST013', 'Đen', '30A-00013', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(14, 14, 'TEST014', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST014', 'Đen', '30A-00014', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(15, 15, 'TEST015', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST015', 'Đen', '30A-00015', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(16, 16, 'TEST016', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST016', 'Đen', '30A-00016', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(17, 17, 'TEST017', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST017', 'Đen', '30A-00017', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(18, 18, 'TEST018', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST018', 'Đen', '30A-00018', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(19, 19, 'TEST019', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST019', 'Đen', '30A-00019', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(20, 20, 'TEST020', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST020', 'Đen', '30A-00020', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(21, 21, 'TEST021', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST021', 'Đen', '30A-00021', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(22, 22, 'TEST022', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST022', 'Đen', '30A-00022', '2025-07-31 15:30:43', '2025-08-13 12:09:53'),
(23, 23, 'TEST023', 'A1', '2030-08-13', NULL, NULL, NULL, NULL, 'motorcycle', 'REG-TEST023', 'Đen', '30A-00023', '2025-07-31 15:30:43', '2025-08-13 12:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `driver_locations`
--

CREATE TABLE `driver_locations` (
  `id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `latitude` decimal(10,7) NOT NULL,
  `longitude` decimal(10,7) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_locations`
--

INSERT INTO `driver_locations` (`id`, `driver_id`, `latitude`, `longitude`, `updated_at`, `created_at`) VALUES
(1, 1, '21.0262390', '105.8326390', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(2, 2, '21.0364710', '105.7973610', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(3, 3, '20.9681010', '105.8499550', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(4, 4, '21.0365890', '105.7730150', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(5, 5, '20.9919440', '105.8442870', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(6, 6, '21.0233690', '105.7723990', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(7, 7, '21.0027680', '105.8297050', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(8, 8, '21.0573870', '105.8898780', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(9, 9, '21.0334350', '105.7368430', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(10, 10, '21.0650560', '105.8085870', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(11, 11, '21.0271000', '105.8582660', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(12, 12, '21.0524510', '105.8143160', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(13, 13, '21.0595420', '105.7737350', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(14, 14, '21.0020950', '105.8490710', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(15, 15, '20.9773420', '105.8711630', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(16, 16, '20.9841050', '105.8368280', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(17, 17, '21.0523080', '105.8936340', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(18, 18, '20.9964880', '105.7894640', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(19, 19, '21.0515440', '105.8849020', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(20, 20, '21.0363220', '105.8340340', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(21, 21, '21.0158380', '105.7453090', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(22, 22, '21.0041330', '105.8604780', '2025-08-13 12:09:53', '2025-08-08 11:55:51'),
(23, 23, '20.9805520', '105.7969980', '2025-08-13 12:09:53', '2025-08-08 11:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `driver_ratings`
--

CREATE TABLE `driver_ratings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `rating` int NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `rated_at` timestamp NOT NULL,
  `is_flagged` tinyint(1) NOT NULL DEFAULT '0',
  `admin_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_violations`
--

CREATE TABLE `driver_violations` (
  `id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED NOT NULL,
  `violation_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `severity` enum('low','medium','high','critical') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penalty_amount` decimal(10,2) DEFAULT NULL,
  `reported_by` bigint UNSIGNED NOT NULL,
  `reported_at` timestamp NOT NULL,
  `status` enum('active','resolved','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `resolution_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `resolved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `key`, `value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'tax_rate', '10', 'Thuế suất áp dụng cho đơn hàng (phần trăm)', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(2, 'free_shipping_threshold', '200000', 'Ngưỡng miễn phí vận chuyển (VND)', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(3, 'shipping_base_fee', '25000', 'Phí vận chuyển cơ bản cho km đầu tiên (VND)', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(4, 'shipping_fee_per_km', '5000', 'Phí vận chuyển mỗi km sau km đầu tiên (VND)', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(5, 'max_delivery_distance', '20', 'Khoảng cách giao hàng tối đa (km)', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(6, 'default_preparation_time', '15', 'Thời gian chuẩn bị mặc định (phút)', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(7, 'average_speed_kmh', '20', 'Tốc độ trung bình của shipper (km/h)', '2025-07-31 15:33:57', '2025-07-31 15:33:57'),
(8, 'buffer_time_minutes', '10', 'Thời gian dự phòng cho giao hàng (phút)', '2025-07-31 15:33:57', '2025-07-31 15:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(2000, 'default', '{\"uuid\":\"55d26f6b-93d5-4850-9f53-52e35722de9d\",\"displayName\":\"App\\\\Jobs\\\\UploadGoogleAvatarJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":3,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":120,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\UploadGoogleAvatarJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\UploadGoogleAvatarJob\\\":4:{s:9:\\\"\\u0000*\\u0000userId\\\";i:18;s:11:\\\"\\u0000*\\u0000photoURL\\\";s:98:\\\"https:\\/\\/lh3.googleusercontent.com\\/a\\/ACg8ocKCetyVgU5o4REc9T3Q_no-aVPFCXK980tEj7ogVENvE6juUzUj=s96-c\\\";s:12:\\\"\\u0000*\\u0000userEmail\\\";s:21:\\\"tungxeko912@gmail.com\\\";s:5:\\\"queue\\\";s:7:\\\"default\\\";}\"},\"createdAt\":1756485824,\"delay\":null}', 0, NULL, 1756485824, 1756485824),
(2001, 'default', '{\"uuid\":\"1363a2a7-3ddf-4f66-b307-5ad5c3bb2f85\",\"displayName\":\"App\\\\Events\\\\Chat\\\\NewMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:26:\\\"App\\\\Events\\\\Chat\\\\NewMessage\\\":2:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\ChatMessage\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:14:\\\"conversationId\\\";s:1:\\\"2\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1756485962,\"delay\":null}', 0, NULL, 1756485962, 1756485962),
(2002, 'default', '{\"uuid\":\"64266ed5-0fde-43bc-8b78-510a2e9df91b\",\"displayName\":\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:60:\\\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\\\":3:{s:10:\\\"notifiable\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:44:\\\"App\\\\Notifications\\\\NewChatMessageNotification\\\":2:{s:10:\\\"\\u0000*\\u0000message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\ChatMessage\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a1d5d71e-c2bb-4f91-b93c-c71adea6a5be\\\";}s:4:\\\"data\\\";a:5:{s:7:\\\"message\\\";s:30:\\\"Tin nhắn mới từ Luminous\\\";s:7:\\\"content\\\";s:2:\\\"cc\\\";s:15:\\\"conversation_id\\\";i:2;s:11:\\\"sender_name\\\";s:8:\\\"Luminous\\\";s:5:\\\"title\\\";s:16:\\\"Tin nhắn mới\\\";}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1756485962,\"delay\":null}', 0, NULL, 1756485962, 1756485962),
(2003, 'default', '{\"uuid\":\"dc34300a-41eb-4850-aeda-23ee8b6a8afa\",\"displayName\":\"App\\\\Events\\\\Chat\\\\UserTyping\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:26:\\\"App\\\\Events\\\\Chat\\\\UserTyping\\\":4:{s:14:\\\"conversationId\\\";s:1:\\\"2\\\";s:6:\\\"userId\\\";i:1;s:8:\\\"userName\\\";s:13:\\\"Administrator\\\";s:8:\\\"isTyping\\\";b:1;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1756485972,\"delay\":null}', 0, NULL, 1756485972, 1756485972),
(2004, 'default', '{\"uuid\":\"c7b13185-eec5-4a30-98d8-63ba0c861547\",\"displayName\":\"App\\\\Events\\\\Chat\\\\UserTyping\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:26:\\\"App\\\\Events\\\\Chat\\\\UserTyping\\\":4:{s:14:\\\"conversationId\\\";s:1:\\\"2\\\";s:6:\\\"userId\\\";i:1;s:8:\\\"userName\\\";s:13:\\\"Administrator\\\";s:8:\\\"isTyping\\\";b:1;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1756485973,\"delay\":null}', 0, NULL, 1756485973, 1756485973),
(2005, 'default', '{\"uuid\":\"77012ece-3a41-4c59-a50b-feef95f155df\",\"displayName\":\"App\\\\Events\\\\Chat\\\\NewMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:26:\\\"App\\\\Events\\\\Chat\\\\NewMessage\\\":2:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\ChatMessage\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:14:\\\"conversationId\\\";i:2;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1756485973,\"delay\":null}', 0, NULL, 1756485973, 1756485973),
(2006, 'default', '{\"uuid\":\"d0bc1d24-22d4-48ee-b854-757a9ca53cb7\",\"displayName\":\"App\\\\Events\\\\Chat\\\\ConversationUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:35:\\\"App\\\\Events\\\\Chat\\\\ConversationUpdated\\\":2:{s:12:\\\"conversation\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:23:\\\"App\\\\Models\\\\Conversation\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:10:\\\"updateType\\\";s:7:\\\"created\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1756485973,\"delay\":null}', 0, NULL, 1756485973, 1756485973),
(2007, 'default', '{\"uuid\":\"ac134d41-2cff-40a1-a97c-afd2ef1a675c\",\"displayName\":\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:60:\\\"Illuminate\\\\Notifications\\\\Events\\\\BroadcastNotificationCreated\\\":3:{s:10:\\\"notifiable\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:18;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:44:\\\"App\\\\Notifications\\\\NewChatMessageNotification\\\":2:{s:10:\\\"\\u0000*\\u0000message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\ChatMessage\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"0b68cb63-40d0-47b7-8b5b-5e7bc92fc8a8\\\";}s:4:\\\"data\\\";a:5:{s:7:\\\"message\\\";s:35:\\\"Tin nhắn mới từ Administrator\\\";s:7:\\\"content\\\";s:2:\\\"12\\\";s:15:\\\"conversation_id\\\";i:2;s:11:\\\"sender_name\\\";s:13:\\\"Administrator\\\";s:5:\\\"title\\\";s:16:\\\"Tin nhắn mới\\\";}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1756485973,\"delay\":null}', 0, NULL, 1756485973, 1756485973),
(2008, 'default', '{\"uuid\":\"06ebf00e-782b-4e5b-b832-75ddb6cf9199\",\"displayName\":\"App\\\\Events\\\\Customer\\\\NewNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:35:\\\"App\\\\Events\\\\Customer\\\\NewNotification\\\":2:{s:10:\\\"customerId\\\";i:18;s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\ChatMessage\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:1:{i:0;s:6:\\\"sender\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1756485973,\"delay\":null}', 0, NULL, 1756485973, 1756485973),
(2009, 'default', '{\"uuid\":\"c995206f-e1a0-4958-a8cf-31f8d50f33c9\",\"displayName\":\"App\\\\Events\\\\Chat\\\\UserTyping\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:26:\\\"App\\\\Events\\\\Chat\\\\UserTyping\\\":4:{s:14:\\\"conversationId\\\";s:1:\\\"2\\\";s:6:\\\"userId\\\";i:1;s:8:\\\"userName\\\";s:13:\\\"Administrator\\\";s:8:\\\"isTyping\\\";b:0;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1756485974,\"delay\":null}', 0, NULL, 1756485974, 1756485974),
(2010, 'default', '{\"uuid\":\"7cbc7003-2d10-4d65-b6e2-a505189a2508\",\"displayName\":\"App\\\\Events\\\\Chat\\\\UserTyping\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:26:\\\"App\\\\Events\\\\Chat\\\\UserTyping\\\":4:{s:14:\\\"conversationId\\\";s:1:\\\"2\\\";s:6:\\\"userId\\\";i:1;s:8:\\\"userName\\\";s:13:\\\"Administrator\\\";s:8:\\\"isTyping\\\";b:0;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1756485983,\"delay\":null}', 0, NULL, 1756485983, 1756485983);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2025_01_01_000001_create_roles_table', 1),
(3, '2025_01_01_000001_create_user_ranks_table', 1),
(4, '2025_01_01_000002_create_users_table', 1),
(5, '2025_01_01_000003_create_user_roles_table', 1),
(6, '2025_01_01_000004_create_categories_table', 1),
(7, '2025_01_01_000005_create_products_table', 1),
(8, '2025_01_01_000006_create_product_imgs_table', 1),
(9, '2025_01_01_000007_create_product_variants_table', 1),
(10, '2025_01_01_000008_create_addresses_table', 1),
(11, '2025_01_01_000009_create_combos_table', 1),
(12, '2025_01_01_000010_create_banners_table', 1),
(13, '2025_01_01_000011_create_payments_table', 1),
(14, '2025_01_01_000012_create_carts_table', 1),
(15, '2025_01_01_000013_create_branches_table', 1),
(16, '2025_01_01_000014_create_branch_images_table', 1),
(17, '2025_01_01_000015_create_branch_stocks_table', 1),
(18, '2025_01_01_000016_create_driver_applications_table', 1),
(19, '2025_01_01_000017_create_drivers_table', 1),
(20, '2025_01_01_000019_create_discount_codes_table', 1),
(21, '2025_01_01_000020_create_point_rules_table', 1),
(22, '2025_01_01_000021_create_cache_table', 1),
(23, '2025_01_01_000022_create_jobs_table', 1),
(24, '2025_01_01_000023_create_orders_table', 1),
(25, '2025_01_01_000024_create_toppings_table', 1),
(26, '2025_01_01_000025_create_order_status_histories_table', 1),
(27, '2025_01_01_000026_create_order_cancellations_table', 1),
(28, '2025_01_01_000027_create_product_reviews_table', 1),
(29, '2025_01_01_000028_create_points_transactions_table', 1),
(30, '2025_01_01_000029_create_review_replies_table', 1),
(31, '2025_01_01_000030_create_return_orders_table', 1),
(32, '2025_01_01_000032_create_wishlist_items_table', 1),
(33, '2025_01_01_000033_create_contacts_table', 1),
(34, '2025_01_01_000042_create_conversations_table', 1),
(35, '2025_01_01_000043_create_chat_messages_table', 1),
(36, '2025_01_01_000044_create_conversation_users_table', 1),
(37, '2025_01_15_000001_add_snapshot_fields_to_order_items', 1),
(38, '2025_05_27_214505_create_driver_violations_table', 1),
(39, '2025_05_27_214757_add_driver_earning_to_orders_table', 1),
(40, '2025_05_31_040917_create_promotion_programs_table', 1),
(41, '2025_05_31_040922_create_promotion_discount_codes_table', 1),
(42, '2025_05_31_040925_create_user_discount_codes_table', 1),
(43, '2025_05_31_040928_create_discount_code_branches_table', 1),
(44, '2025_05_31_040932_create_promotion_branches_table', 1),
(45, '2025_05_31_040934_create_discount_code_products_table', 1),
(46, '2025_05_31_040937_create_discount_usage_history_table', 1),
(47, '2025_05_31_040941_create_user_rank_history_table', 1),
(48, '2025_06_13_151331_create_driver_documents_table', 1),
(49, '2025_06_13_151331_create_driver_locations_table', 1),
(50, '2025_06_16_164039_create_reward_point_histories_table', 1),
(51, '2025_06_26_200404_create_general_setting_table', 1),
(52, '2025_06_30_234323_create_combo_branch_stock_table', 1),
(53, '2025_07_03_000001_create_review_helpfuls_table', 1),
(54, '2025_07_04_000001_create_review_reports_table', 1),
(55, '2025_07_09_155546_create_notifications_table', 1),
(56, '2025_07_22_200225_add_deleted_at_to_addresses_table', 1),
(57, '2025_07_31_232509_recreate_cache_table', 2),
(59, '2025_01_16_000001_add_pending_payment_status_to_orders', 3),
(60, '2025_08_05_223100_add_created_at_to_driver_locations_table', 4),
(61, '2025_08_10_000001_create_driver_ratings_table', 4),
(62, '2025_08_25_221700_add_deleted_at_to_products_table', 5),
(63, '2025_08_26_184554_add_location_to_drivers_table', 6),
(64, '2025_08_26_185609_add_latitude_longitude_to_drivers_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('001a5fd5-8347-491c-b19a-99778705a466', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"UYUIPPUQ\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 09:23:24', '2025-08-04 09:23:24'),
('00819778-dd1e-477b-8fa5-7e9f0d9073c1', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":139,\"order_code\":\"7XC3TFXN\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"70000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #7XC3TFXN\",\"created_at\":\"2025-08-28 11:25:35\"}', NULL, '2025-08-28 04:25:35', '2025-08-28 04:25:35'),
('01c45b9b-0433-4f44-b779-5f1fca573779', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":94,\"order_code\":\"762I5JSC\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #762I5JSC c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:40:28', '2025-08-13 11:40:28'),
('01d9a481-903d-4e3f-9732-1727efbfbb2e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"UW1QWAAZ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:19:46', '2025-08-26 14:19:46'),
('0205dcd1-5e6b-4943-bd1f-7f1005f8a399', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":78,\"customer_name\":\"Administrator\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #\",\"created_at\":\"2025-08-13 16:05:20\"}', NULL, '2025-08-13 09:05:20', '2025-08-13 09:05:20'),
('02a6fe54-91b3-4c04-8bec-d69c4a87e636', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":94,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #762I5JSC\",\"created_at\":\"2025-08-13 17:22:55\"}', NULL, '2025-08-13 10:22:55', '2025-08-13 10:22:55'),
('02fc0c6a-562b-463b-8be2-9ff096a4b59e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 15, '{\"order_code\":\"LYAIRRA8\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 12:51:11', '2025-08-04 12:51:11'),
('03182362-78a4-4f43-af1f-de8ecd8834b6', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010019\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:37', '2025-07-31 17:43:37'),
('034add2f-a777-4129-87ae-71ca7a18573e', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":81,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #HNGQZSKQ\",\"created_at\":\"2025-08-01 11:00:03\"}', NULL, '2025-08-01 04:00:03', '2025-08-01 04:00:03'),
('035cc720-5eb5-4208-a703-c6019a5766c3', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010008\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:39', '2025-07-31 17:43:39'),
('03675165-714b-4989-a85c-20ede7b74e47', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"GVXPSOSO\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:14:38', '2025-08-26 14:14:38'),
('03f62ad9-31f1-44bf-99c3-c9fcf7a17dd2', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":131,\"order_code\":\"ULONECMR\",\"branch_name\":\"Chi nh\\u00e1nh H\\u00e0 \\u0110\\u00f4ng\",\"total_amount\":\"100000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-27 15:24:25\"}', NULL, '2025-08-27 08:24:25', '2025-08-27 08:24:25'),
('040c4c74-20d1-4263-b484-1a20678fc772', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"KQFUUZGD\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:52', '2025-08-13 11:43:52'),
('04570e61-6288-4e8e-8f01-116af0ac7014', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":124,\"order_code\":\"ILXKQJ65\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ILXKQJ65\",\"created_at\":\"2025-08-26 21:35:14\"}', NULL, '2025-08-26 14:35:14', '2025-08-26 14:35:14'),
('04735ecf-bc88-46bf-a6f4-6903e4c8f2dc', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"ULCIHYB1\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-03 17:56:21', '2025-08-03 17:56:21'),
('0493b6ee-b819-4b0e-94b8-33cdd0618782', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 15, '{\"order_id\":57,\"order_code\":\"ULCIHYB1\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #ULCIHYB1 c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"214595.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-03 17:56:21', '2025-08-03 17:56:21'),
('050fdf1d-5c98-425b-bbd7-6c53ff7ce39c', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010004\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:38', '2025-07-31 17:43:38'),
('062c83d7-a10d-49cb-b5c9-7064786db55a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"NGHE3KH7\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-22 10:51:05', '2025-08-22 10:51:05'),
('0639012f-0984-4d05-892b-46022381b673', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"CXCXUHH1\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:11:28', '2025-08-26 12:11:28'),
('0652411b-676f-4563-be68-9ee105d1ca34', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 15, '{\"order_id\":60,\"order_code\":\"LYAIRRA8\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #LYAIRRA8 c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-04 12:51:11', '2025-08-04 12:51:11'),
('06557be4-ceeb-415d-b1ca-1b43fc432ef3', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"delivered\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:42:59', '2025-08-01 04:42:59'),
('068b3893-a287-4eea-aebd-cc5c423eceec', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":60,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #LYAIRRA8\",\"created_at\":\"2025-08-04 19:50:29\"}', NULL, '2025-08-04 12:50:29', '2025-08-04 12:50:29'),
('06a6a97f-c1dc-4d67-b87d-13c3a41de711', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":54,\"customer_name\":\"\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #WTQMXWR9\",\"created_at\":\"2025-08-01 11:40:44\"}', NULL, '2025-08-01 04:40:44', '2025-08-01 04:40:44'),
('07236c29-50b8-4a10-9238-70c899693acd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"OG5LIBIV\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:47:09', '2025-08-13 11:47:09'),
('072e8e41-a005-40cc-b2ca-58f0165497f9', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":142,\"order_code\":\"DHRSQNFM\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"70000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-28 11:27:32\"}', NULL, '2025-08-28 04:27:32', '2025-08-28 04:27:32'),
('079dafbf-f8a4-4ef9-a9af-7bad521edcea', 'App\\Notifications\\NoDriverAvailable', 'App\\Models\\Branch', 1, '{\"order_id\":52,\"order_code\":\"VFOPCA5S\",\"message\":\"Kh\\u00f4ng t\\u00ecm \\u0111\\u01b0\\u1ee3c t\\u00e0i x\\u1ebf cho \\u0111\\u01a1n h\\u00e0ng #VFOPCA5S\",\"reason\":\"Thi\\u1ebfu th\\u00f4ng tin \\u0111\\u1ecba ch\\u1ec9 giao h\\u00e0ng\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"total_amount\":\"131456.00\",\"type\":\"no_driver_available\"}', NULL, '2025-08-01 04:29:43', '2025-08-01 04:29:43'),
('07b39cd2-1e01-4e7a-b912-f4f16a129d6f', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 19, '{\"order_id\":100,\"order_code\":\"O8OVVGKO\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #O8OVVGKO c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"177892.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:03:36', '2025-08-26 12:03:36'),
('080053c9-3814-4601-9c3e-a8f6988296ca', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":74,\"order_code\":\"AGPPDFB9\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:56:34\"}', NULL, '2025-08-13 08:56:34', '2025-08-13 08:56:34'),
('080ca7f5-8917-44fa-afc5-0b8e6aefbc40', 'App\\Notifications\\BranchNewReviewNotification', 'App\\Models\\Branch', 2, '{\"type\":\"branch_new_review\",\"review_id\":273,\"user_id\":18,\"branch_id\":\"2\",\"message\":\"C\\u00f3 b\\u00ecnh lu\\u1eadn m\\u1edbi v\\u1ec1 \\\"Burger B\\u00f2 Teriyaki\\\" t\\u1ea1i chi nh\\u00e1nh.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/shop\\/products\\/burger-bo-teriyaki#review-273\"}', NULL, '2025-08-27 08:21:07', '2025-08-27 08:21:07'),
('080e0aed-9d27-4a9b-b4ea-5199d2abbfe2', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":83,\"order_code\":\"EVMSO7BH\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:22:57\"}', NULL, '2025-08-13 09:22:57', '2025-08-13 09:22:57'),
('0887e3e3-007d-4928-a730-edb0af99e919', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"O8OVVGKO\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 11:28:23', '2025-08-26 11:28:23'),
('08c5e589-5b3b-4a22-82da-7e64129c5dcd', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":125,\"order_code\":\"V5G0DL0U\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #V5G0DL0U c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 15:09:00', '2025-08-26 15:09:00'),
('08d634c5-83c9-4421-8197-e0f649050f4a', 'App\\Notifications\\NoDriverAvailable', 'App\\Models\\Branch', 1, '{\"order_id\":53,\"order_code\":\"UMK2KK8U\",\"message\":\"Kh\\u00f4ng t\\u00ecm \\u0111\\u01b0\\u1ee3c t\\u00e0i x\\u1ebf cho \\u0111\\u01a1n h\\u00e0ng #UMK2KK8U\",\"reason\":\"Thi\\u1ebfu th\\u00f4ng tin \\u0111\\u1ecba ch\\u1ec9 giao h\\u00e0ng\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"total_amount\":\"175135.50\",\"type\":\"no_driver_available\"}', NULL, '2025-08-01 04:31:50', '2025-08-01 04:31:50'),
('090b5a32-8560-4599-b781-d95dfe1cc546', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 19, '{\"order_id\":101,\"order_code\":\"ARC5ZZGN\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #ARC5ZZGN c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"180292.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:03:37', '2025-08-26 12:03:37'),
('093f9de6-94e8-461f-9bdf-976c17fe1768', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":75,\"order_code\":\"7G2YN8XN\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"134789.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #7G2YN8XN\",\"created_at\":\"2025-08-01 02:27:34\"}', NULL, '2025-07-31 19:27:34', '2025-07-31 19:27:34'),
('0951dcec-05a1-4a4f-b7a7-b33ee02611c6', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:41:14', '2025-08-01 04:41:14'),
('099d0645-10fa-4327-bb0e-40517e8f891e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"ARC5ZZGN\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:01:53', '2025-08-26 12:01:53'),
('0a765951-38b4-4017-af87-2325b1858256', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"1QOSFPND\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:29:38', '2025-08-26 13:29:38'),
('0a822a07-f017-42c9-9e59-569b020e0099', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":77,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #MUYZEWYW\",\"created_at\":\"2025-08-01 02:32:03\"}', NULL, '2025-07-31 19:32:03', '2025-07-31 19:32:03'),
('0a9c7b94-2101-4642-91bd-3f36320e05e0', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010027\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 13:29:22', '2025-08-04 13:29:22'),
('0b4ca3e3-538d-493f-a83a-458fdac94f4a', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 19, '{\"order_id\":97,\"order_code\":\"PXJDSRVW\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #PXJDSRVW c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"183612.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:03:32', '2025-08-26 12:03:32'),
('0b68cb63-40d0-47b7-8b5b-5e7bc92fc8a8', 'App\\Notifications\\NewChatMessageNotification', 'App\\Models\\User', 18, '{\"message\":\"Tin nh\\u1eafn m\\u1edbi t\\u1eeb Administrator\",\"content\":\"12\",\"conversation_id\":2,\"sender_name\":\"Administrator\",\"title\":\"Tin nh\\u1eafn m\\u1edbi\",\"created_at\":\"2025-08-29 23:46:13\"}', NULL, '2025-08-29 16:46:13', '2025-08-29 16:46:13'),
('0b7e66f4-3180-4a63-bdd9-c0cfb913dfe4', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":75,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #7G2YN8XN\",\"created_at\":\"2025-08-01 02:27:34\"}', NULL, '2025-07-31 19:27:34', '2025-07-31 19:27:34'),
('0bb56e33-911b-4839-8d5e-a6c77e40ddf2', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010003\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:01', '2025-07-31 17:34:01'),
('0c3673a9-5b25-4f01-86da-804c01a46d7a', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":105,\"order_code\":\"611POPKM\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 19:33:52\"}', NULL, '2025-08-26 12:33:52', '2025-08-26 12:33:52'),
('0c36cb2e-4a0c-4892-ae35-d248ca3f28b3', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":95,\"order_code\":\"HJNEH3LC\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #HJNEH3LC\",\"created_at\":\"2025-08-13 17:24:37\"}', NULL, '2025-08-13 10:24:37', '2025-08-13 10:24:37'),
('0c3ff686-73f0-40d6-9281-9dd75a85df89', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":94,\"order_code\":\"762I5JSC\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #762I5JSC c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:40:28', '2025-08-13 11:40:28'),
('0cb22535-7c54-4bab-952f-f712b613d393', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"762I5JSC\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:21', '2025-08-13 11:40:21'),
('0cb3b625-7f74-4b60-b287-1dbc9436c979', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":77,\"order_code\":\"MUYZEWYW\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"155000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 02:32:03\"}', NULL, '2025-07-31 19:32:03', '2025-07-31 19:32:03'),
('0d94382c-056d-4410-aec4-baf8e6202e7f', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":117,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #LLJIAHKM\",\"created_at\":\"2025-08-26 21:15:42\"}', NULL, '2025-08-26 14:15:42', '2025-08-26 14:15:42'),
('0e36c553-84a5-4321-9e3d-6193a48fddc4', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":109,\"order_code\":\"5EIS85E8\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #5EIS85E8\",\"created_at\":\"2025-08-26 20:30:46\"}', NULL, '2025-08-26 13:30:46', '2025-08-26 13:30:46'),
('0e638a38-fff2-4931-9b0d-46be342997e4', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":119,\"order_code\":\"UW1QWAAZ\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 21:19:18\"}', NULL, '2025-08-26 14:19:18', '2025-08-26 14:19:18'),
('0f11c435-3b4c-45f4-9a88-e08e87e7e583', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":117,\"order_code\":\"LLJIAHKM\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"820000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 21:15:42\"}', NULL, '2025-08-26 14:15:42', '2025-08-26 14:15:42'),
('0f1252fe-24fd-48df-baf0-e26d9e893c56', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"TLELKI6V\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:05', '2025-08-01 04:45:05'),
('0fc9032a-6fa9-4f03-849b-f55931a1abaa', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 23, '{\"order_id\":51,\"order_code\":\"WXBYO8KA\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #WXBYO8KA c\\u1ea7n giao\",\"delivery_address\":\"V\\u00e2n Canh, Th\\u1ed5 Quan, \\u0110\\u1ed1ng \\u0110a, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"181134.50\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:03:23', '2025-08-26 12:03:23'),
('11fc8cc3-9997-4d43-a64c-83fc2bc1b540', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"6WJXFNQ0\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:18', '2025-08-13 11:43:18'),
('12447329-6ce8-4226-99bc-f82b54612e50', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":97,\"order_code\":\"PXJDSRVW\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"183612.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #PXJDSRVW\",\"created_at\":\"2025-08-22 13:55:19\"}', NULL, '2025-08-22 06:55:19', '2025-08-22 06:55:19'),
('1262c938-c4fb-45ad-a324-eadd25aabb34', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":55,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TLELKI6V\",\"created_at\":\"2025-08-01 11:44:14\"}', NULL, '2025-08-01 04:44:14', '2025-08-01 04:44:14'),
('126af365-4907-405d-b0fe-9cbf78ae2c64', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":69,\"order_code\":\"NPRR2WJ5\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:51:42\"}', NULL, '2025-08-13 08:51:42', '2025-08-13 08:51:42'),
('12e11054-c72d-46ff-9a27-928f8a018c8b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"IOCKUSDV\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:23', '2025-08-13 11:40:23'),
('139ef0f9-1990-4789-a200-2bbd32b8ed6b', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":116,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #GVXPSOSO\",\"created_at\":\"2025-08-26 21:14:30\"}', NULL, '2025-08-26 14:14:30', '2025-08-26 14:14:30'),
('14a592cb-deff-4248-8a14-126970c6f9cc', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010047\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:36', '2025-07-31 17:43:36'),
('14aeb0d6-cbaa-4d29-8488-51d85a0e3305', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":118,\"order_code\":\"GMTJZNIG\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #GMTJZNIG c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:18:26', '2025-08-26 14:18:26'),
('14b36e06-ef62-42f8-af6b-33736abc89fc', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"driver_confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:31', '2025-08-01 04:45:31'),
('150523eb-30c0-4fec-a21d-b18338611c36', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":82,\"order_code\":\"XVMERIVL\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #XVMERIVL\",\"created_at\":\"2025-08-13 16:20:17\"}', NULL, '2025-08-13 09:20:17', '2025-08-13 09:20:17'),
('151fc80e-ae77-4c65-ba4c-9ecafa6048d0', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 21, '{\"order_code\":\"762I5JSC\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:27', '2025-08-13 11:40:27'),
('15279209-ab3a-47c6-8a2c-999f586f1db5', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":52,\"order_code\":\"LYHP2NYJ\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #LYHP2NYJ c\\u1ea7n giao\",\"delivery_address\":\"ng\\u00f5 286, \\u0111\\u01b0\\u1eddng 422b, Ph\\u01b0\\u1eddng C\\u1ed5 Nhu\\u1ebf 2, Qu\\u1eadn B\\u1eafc T\\u1eeb Li\\u00eam, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"110000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-07-31 17:33:10', '2025-07-31 17:33:10'),
('1638681c-cb06-4fab-a56a-b2f6191ab761', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"3D6ZZFTE\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:13:24', '2025-08-26 12:13:24'),
('16579e9e-892b-4706-a642-084904eb2600', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"GMTJZNIG\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:18:26', '2025-08-26 14:18:26'),
('1679d64a-719a-43f0-b49b-b23ce1868c41', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":84,\"order_code\":\"OG5LIBIV\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:32:28\"}', NULL, '2025-08-13 09:32:28', '2025-08-13 09:32:28'),
('16dcf878-6666-4385-a982-141ff5ea0978', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010006\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:00', '2025-07-31 17:34:00'),
('16e74320-6c56-4522-889f-d4a81f577911', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":86,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ZX2EI2D3\",\"created_at\":\"2025-08-13 16:39:51\"}', NULL, '2025-08-13 09:39:51', '2025-08-13 09:39:51'),
('17286974-27a9-4607-9e5a-639661b85d2a', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":88,\"order_code\":\"YA8BZVOX\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:44:00\"}', NULL, '2025-08-13 09:44:00', '2025-08-13 09:44:00'),
('174bdb95-d551-41ea-b9f3-16798f5e8fb7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 19, '{\"order_code\":\"PXJDSRVW\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:03:32', '2025-08-26 12:03:32'),
('180bcd1d-1f9f-4f0b-a593-db3299d472f2', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"NBFN7JYR\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:24', '2025-08-13 11:40:24'),
('1826a52c-9f0e-4100-ab41-1b2c47b576d4', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":85,\"order_code\":\"9CKNDKCJ\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:36:26\"}', NULL, '2025-08-13 09:36:26', '2025-08-13 09:36:26'),
('185d550d-5ef1-4c0a-b3bd-0beafe19e121', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":91,\"order_code\":\"324IAODC\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:54:16\"}', NULL, '2025-08-13 09:54:16', '2025-08-13 09:54:16'),
('18ceeada-87e3-4cc6-86af-66091aa03bd0', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":143,\"order_code\":\"GTYSE6DU\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"70000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-28 11:28:22\"}', NULL, '2025-08-28 04:28:22', '2025-08-28 04:28:22'),
('18d1c6e9-d00f-4254-a579-90458c1c63b2', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":999999,\"order_code\":\"TEST1755074605\",\"customer_name\":\"Administrator\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"100000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TEST1755074605\",\"created_at\":\"2025-08-13 15:43:25\"}', NULL, '2025-08-13 08:43:25', '2025-08-13 08:43:25'),
('19fac41d-bdf1-4fa8-8882-57593f9f2513', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 15, '{\"order_code\":\"1RAF2O8S\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 12:51:59', '2025-08-04 12:51:59'),
('19fd076c-b12a-4cf8-b49d-c295cf347ae8', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"12MQBA9U\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:34:30', '2025-08-26 14:34:30'),
('1a2c7bbf-1a4e-49a8-a4a8-c20547dcaabc', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"driver_picked_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:42:24', '2025-08-01 04:42:24'),
('1abe38bc-6765-4dd6-979d-e79a3b5138e7', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":68,\"order_code\":\"YZAD9OEU\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"165000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 01:54:52\"}', NULL, '2025-07-31 18:54:52', '2025-07-31 18:54:52'),
('1adeb27b-3947-4060-8282-dfed1481de21', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":79,\"order_code\":\"XDAU7BXG\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"120000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #XDAU7BXG\",\"created_at\":\"2025-08-13 16:05:20\"}', NULL, '2025-08-13 09:05:20', '2025-08-13 09:05:20'),
('1b21da4e-234a-4aa6-8f46-d88db999e4a2', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"MUYZEWYW\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 19:32:23', '2025-07-31 19:32:23'),
('1c09c30e-13bb-4e3a-a7fc-bbb72d9c0051', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":107,\"order_code\":\"FAGMNV0T\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 20:24:34\"}', NULL, '2025-08-26 13:24:34', '2025-08-26 13:24:34'),
('1c58a129-f106-49e2-87ed-b86e769a7a26', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"LLJIAHKM\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:16:05', '2025-08-26 14:16:05'),
('1c7408f8-70bc-4cbc-86bc-eeb2d43fa24e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010008\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 13:29:19', '2025-08-04 13:29:19'),
('1c936978-2d44-4876-b580-56482e368b92', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":112,\"order_code\":\"NWTSY52X\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 20:56:33\"}', NULL, '2025-08-26 13:56:33', '2025-08-26 13:56:33'),
('1c9d5921-db66-46c2-8131-06a76cdf1fec', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":113,\"order_code\":\"Z6OYHN7O\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #Z6OYHN7O c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:03:05', '2025-08-26 14:03:05'),
('1cd00407-f6af-45b7-b238-91ea02343b13', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":61,\"order_code\":\"1RAF2O8S\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #1RAF2O8S\",\"created_at\":\"2025-08-04 19:51:18\"}', NULL, '2025-08-04 12:51:18', '2025-08-04 12:51:18'),
('1cf0a7a2-ae2c-4736-a98d-9b808876b57d', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":72,\"order_code\":\"CQGE3I8Q\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"399156.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #CQGE3I8Q\",\"created_at\":\"2025-08-01 02:22:05\"}', NULL, '2025-07-31 19:22:05', '2025-07-31 19:22:05'),
('1cfb02b9-8021-4d2d-ae25-04799d5b245c', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":141,\"order_code\":\"Q9NM8HQ1\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"70000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #Q9NM8HQ1\",\"created_at\":\"2025-08-28 11:25:55\"}', NULL, '2025-08-28 04:25:55', '2025-08-28 04:25:55'),
('1d1a7166-926a-4bce-83c1-529cd4f1ad41', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 21, '{\"order_code\":\"YA8BZVOX\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:28', '2025-08-13 11:43:28'),
('1d35a062-5bea-45cf-a31c-49a605c9f826', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":71,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #X2QCKMRW\",\"created_at\":\"2025-08-01 02:19:40\"}', NULL, '2025-07-31 19:19:40', '2025-07-31 19:19:40'),
('1da3894c-1b1b-4901-a419-ec3cc99ca8dc', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 15, '{\"order_id\":56,\"order_code\":\"IIOSZEBW\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #IIOSZEBW c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"432702.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-03 17:58:53', '2025-08-03 17:58:53'),
('1dab57c2-253b-45e5-9b18-515eb401c5db', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":72,\"order_code\":\"JJJCXSIK\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:53:57\"}', NULL, '2025-08-13 08:53:57', '2025-08-13 08:53:57'),
('1e033d2f-ea9e-4374-a0d6-2f99c2fd5c1f', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"762I5JSC\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:27', '2025-08-13 11:40:27'),
('1e23c96c-fd5c-4cd1-bd7f-c7d62ac11496', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":112,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #NWTSY52X\",\"created_at\":\"2025-08-26 20:56:33\"}', NULL, '2025-08-26 13:56:33', '2025-08-26 13:56:33'),
('1e7178ee-2d72-48e8-9b0d-e4f69bf4ef47', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"OG5LIBIV\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:47:09', '2025-08-13 11:47:09'),
('1e92f74c-cf3a-4f59-b722-388d3105f82f', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":63,\"order_code\":\"YXLDZKXL\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"185000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YXLDZKXL\",\"created_at\":\"2025-08-13 15:38:07\"}', NULL, '2025-08-13 08:38:07', '2025-08-13 08:38:07'),
('1f8ef3f3-08e2-47e5-b4b2-5447827ab0fe', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"ZPA1N0QR\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:31:16', '2025-08-26 12:31:16'),
('1f9ce035-e36f-4a90-b3a2-4f0fc92e54a7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010046\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:37', '2025-07-31 17:43:37'),
('2008960e-ef52-40e9-ae4b-626f99a3f559', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":999999,\"order_code\":\"TEST1755074636\",\"customer_name\":\"Administrator\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"100000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TEST1755074636\",\"created_at\":\"2025-08-13 15:43:56\"}', NULL, '2025-08-13 08:43:56', '2025-08-13 08:43:56'),
('202122ce-93a1-4a08-8b3e-c85746b13d7e', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":93,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #IOCKUSDV\",\"created_at\":\"2025-08-13 17:16:17\"}', NULL, '2025-08-13 10:16:17', '2025-08-13 10:16:17'),
('2071142c-03f7-4004-919a-ef04694f369d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"WYTXRO25\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:55:25', '2025-08-26 13:55:25'),
('20cbef21-68f0-4ac8-a19e-9db1fcdf999a', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":67,\"order_code\":\"YFWJSWZA\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"601560.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 01:52:43\"}', NULL, '2025-07-31 18:52:43', '2025-07-31 18:52:43'),
('2122768c-aec9-4c22-86a9-806e95bb8959', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":60,\"order_code\":\"LYAIRRA8\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-04 19:50:29\"}', NULL, '2025-08-04 12:50:29', '2025-08-04 12:50:29'),
('2155493f-7203-4956-a2d4-89cdfc39fc82', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":80,\"order_code\":\"E2O0XALF\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"179595.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 03:13:59\"}', NULL, '2025-07-31 20:13:59', '2025-07-31 20:13:59'),
('21c8e34c-ebe7-4c04-a5b2-efe64248d0e4', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"delivered\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:42:59', '2025-08-01 04:42:59');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('229b7deb-568f-490c-b597-d348921fe3d9', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":119,\"order_code\":\"UW1QWAAZ\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #UW1QWAAZ c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"235000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:19:47', '2025-08-26 14:19:47'),
('22c4ff3b-8aaa-4963-8206-c7e0aec370b6', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010041\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:38', '2025-07-31 17:43:38'),
('23f5c007-8ca1-4d2a-8460-f6d19244a0b2', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":58,\"order_code\":\"VOSSMND2\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #VOSSMND2 c\\u1ea7n giao\",\"delivery_address\":\"V\\u00e2n Canh, Quang Trung, \\u0110\\u1ed1ng \\u0110a, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"528674.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-01 07:48:46', '2025-08-01 07:48:46'),
('241b1477-ae59-4ca5-9efb-e2100238f741', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010042\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:02', '2025-07-31 17:34:02'),
('241c766f-bb33-4411-a688-5a293847c4c9', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":64,\"order_code\":\"KWJQPFFM\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"180402.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 01:40:37\"}', NULL, '2025-07-31 18:40:37', '2025-07-31 18:40:37'),
('242b2679-b99f-4bde-9a9a-4bfdd8829dc2', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"waiting_driver_pick_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:39', '2025-08-01 04:45:39'),
('24750ba4-a4d0-4714-95f7-cc2a3313130f', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"GFZ1SGWF\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:36:26', '2025-08-13 11:36:26'),
('247885c0-2eb6-4632-a584-14fd3e7c9b90', 'App\\Notifications\\NoDriverAvailable', 'App\\Models\\Branch', 1, '{\"order_id\":51,\"order_code\":\"WXBYO8KA\",\"message\":\"Kh\\u00f4ng t\\u00ecm \\u0111\\u01b0\\u1ee3c t\\u00e0i x\\u1ebf cho \\u0111\\u01a1n h\\u00e0ng #WXBYO8KA\",\"reason\":\"Thi\\u1ebfu th\\u00f4ng tin \\u0111\\u1ecba ch\\u1ec9 giao h\\u00e0ng\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"total_amount\":\"181134.50\",\"type\":\"no_driver_available\"}', NULL, '2025-08-03 17:58:54', '2025-08-03 17:58:54'),
('25c6df14-45dd-4be2-83b9-1fc9c8eed1c3', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":54,\"order_code\":\"WTQMXWR9\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #WTQMXWR9 c\\u1ea7n giao\",\"delivery_address\":\"V\\u00e2n Canh, Trung Ph\\u1ee5ng, \\u0110\\u1ed1ng \\u0110a, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"185135.50\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-01 04:41:14', '2025-08-01 04:41:14'),
('25f4e42f-a2a4-4529-a0a6-92b933e86068', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":132,\"order_code\":\"94R320DK\",\"branch_name\":\"Chi nh\\u00e1nh H\\u00e0 \\u0110\\u00f4ng\",\"total_amount\":\"2386860.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-27 15:28:39\"}', NULL, '2025-08-27 08:28:39', '2025-08-27 08:28:39'),
('2643cbe4-3bb3-40ce-bb40-c20ff1c1f81b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"GMTJZNIG\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:18:26', '2025-08-26 14:18:26'),
('2671e7e4-c397-46ac-80d2-d9d6acc62c15', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"6Z3IC24X\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:11:08', '2025-08-26 14:11:08'),
('26776e1c-a651-4ec9-9a9c-a6397e2c9b9b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"YYXHY0OV\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:58', '2025-08-13 11:40:58'),
('27032f63-4c33-4092-8c58-9baecbae8b76', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"delivered\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 08:06:44', '2025-08-01 08:06:44'),
('270ff027-30af-4aa0-b221-69196b09bf3d', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":67,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #IJGR9I5F\",\"created_at\":\"2025-08-13 15:45:55\"}', NULL, '2025-08-13 08:45:55', '2025-08-13 08:45:55'),
('271226f3-f6ab-4a59-a432-8071b7fedd9f', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":111,\"order_code\":\"WYTXRO25\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 20:54:58\"}', NULL, '2025-08-26 13:54:58', '2025-08-26 13:54:58'),
('2724e71f-7f95-439d-9158-9454f5122c0f', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"TLELKI6V\",\"status\":\"driver_confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:31', '2025-08-01 04:45:31'),
('27741c78-783f-4711-b85a-3166a9544cba', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 23, '{\"order_id\":51,\"order_code\":\"WXBYO8KA\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #WXBYO8KA c\\u1ea7n giao\",\"delivery_address\":\"V\\u00e2n Canh, Th\\u1ed5 Quan, \\u0110\\u1ed1ng \\u0110a, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"181134.50\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:03:31', '2025-08-26 12:03:31'),
('27a704d7-b78b-430c-861a-c4be164c277d', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":94,\"order_code\":\"762I5JSC\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #762I5JSC\",\"created_at\":\"2025-08-13 17:22:55\"}', NULL, '2025-08-13 10:22:55', '2025-08-13 10:22:55'),
('2830a71f-16ee-48a3-a6e3-2bb6687124d7', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":56,\"order_code\":\"MF42ZTXR\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"165000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 01:15:06\"}', NULL, '2025-07-31 18:15:06', '2025-07-31 18:15:06'),
('288134c8-bd01-4963-b11b-f21aaa4a6154', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010025\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:02', '2025-07-31 17:34:02'),
('29182c10-d651-4eeb-98ad-ab5bdb314a0b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010008\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:39', '2025-07-31 17:43:39'),
('2946349a-1795-422d-adef-47c55d5ac8c7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010044\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:36', '2025-07-31 17:43:36'),
('299315db-382a-402f-a9fd-335d84d4f2d7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"6WJXFNQ0\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:14', '2025-08-13 11:43:14'),
('29959aa5-b1a5-41e9-b088-0c4ce57852b2', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"O8OVVGKO\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:03:36', '2025-08-26 12:03:36'),
('29d9f345-cf3e-43b4-b6fb-425d6b2a873c', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"1RAF2O8S\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 12:51:49', '2025-08-04 12:51:49'),
('29f84fd0-41bd-48d6-a653-5025401bbe66', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":109,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #5EIS85E8\",\"created_at\":\"2025-08-26 20:30:46\"}', NULL, '2025-08-26 13:30:46', '2025-08-26 13:30:46'),
('29fc0b74-24ad-481e-a72b-cf782a157954', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"YHQGXSSP\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:08:21', '2025-08-26 14:08:21'),
('2a3fd64b-4a21-4f79-a06f-43c429c371d3', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 2, '{\"order_id\":126,\"customer_name\":\"\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #US3G6RU4\",\"created_at\":\"2025-08-27 15:10:57\"}', NULL, '2025-08-27 08:10:57', '2025-08-27 08:10:57'),
('2b04f54c-240e-41c0-bd5b-655554e6b5eb', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":86,\"order_code\":\"ZX2EI2D3\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #ZX2EI2D3 c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:46:53', '2025-08-13 11:46:53'),
('2b1346ae-e7de-4bb8-83e6-d8c888acda1b', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":123,\"order_code\":\"12MQBA9U\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #12MQBA9U\",\"created_at\":\"2025-08-26 21:33:50\"}', NULL, '2025-08-26 14:33:50', '2025-08-26 14:33:50'),
('2b40f4a0-c115-45f7-98b4-a5fc91cfae21', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":88,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YA8BZVOX\",\"created_at\":\"2025-08-13 16:44:00\"}', NULL, '2025-08-13 09:44:00', '2025-08-13 09:44:00'),
('2b5b0d5d-2c00-47e9-8eca-da3252fff934', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010041\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:38', '2025-07-31 17:43:38'),
('2b7150f4-3879-4cc3-b55b-e272b2cfdf41', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010049\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 13:29:21', '2025-08-04 13:29:21'),
('2b808659-fb99-44cc-a893-50a812ad45e3', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010019\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:37', '2025-07-31 17:43:37'),
('2b946d71-132b-4fc5-87a8-026bce7d0857', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":54,\"order_code\":\"WTQMXWR9\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"185135.50\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #WTQMXWR9\",\"created_at\":\"2025-08-01 11:40:44\"}', NULL, '2025-08-01 04:40:44', '2025-08-01 04:40:44'),
('2c85a380-08ce-4fa8-ba14-430d11ba399e', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":72,\"order_code\":\"JJJCXSIK\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #JJJCXSIK\",\"created_at\":\"2025-08-13 15:53:57\"}', NULL, '2025-08-13 08:53:57', '2025-08-13 08:53:57'),
('2ce39b62-8444-4eed-8216-fa14e61be7b4', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 20, '{\"order_id\":98,\"order_code\":\"NGHE3KH7\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #NGHE3KH7 c\\u1ea7n giao\",\"delivery_address\":\"Hang Bun Street, Nguy\\u1ec5n Trung Tr\\u1ef1c, 11100, Ba \\u0110\\u00ecnh, H\\u00e0 N\\u1ed9i, Vi\\u1ec7t Nam, Thanh L\\u00e2m, M\\u00ea Linh, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"47272.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-22 10:51:24', '2025-08-22 10:51:24'),
('2cef6dd5-69fa-440b-af71-15c490d93d6c', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 19, '{\"order_id\":99,\"order_code\":\"C8LYY3ES\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #C8LYY3ES c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"150402.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-22 11:03:58', '2025-08-22 11:03:58'),
('2d08c841-879b-4b3b-9dac-631a2dd07402', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":56,\"order_code\":\"IIOSZEBW\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"432702.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 14:10:30\"}', NULL, '2025-08-01 07:10:30', '2025-08-01 07:10:30'),
('2d4a9da5-41e1-48b8-a523-f6440fae50d7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"5EIS85E8\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', '2025-08-26 13:38:41', '2025-08-26 13:31:09', '2025-08-26 13:38:41'),
('2e2658ff-5004-4fc8-b2a7-6681fb898c7a', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":104,\"order_code\":\"ZPA1N0QR\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #ZPA1N0QR c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:31:17', '2025-08-26 12:31:17'),
('2e604a24-3e3d-4350-994b-6bf863e4e985', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":92,\"order_code\":\"NBFN7JYR\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #NBFN7JYR c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:40:32', '2025-08-13 11:40:32'),
('300d27f8-ced5-433c-88e3-3e90d566f1f5', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010015\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:37', '2025-07-31 17:43:37'),
('3011941d-c606-4ca4-affb-0b19ee6f3ffe', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"MUYZEWYW\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 19:32:25', '2025-07-31 19:32:25'),
('307abbc4-48a9-486b-8236-3b51166f1b09', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"in_transit\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:57', '2025-08-01 04:45:57'),
('309a574e-1fa5-44ba-b15c-2ae229ff3509', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"12MQBA9U\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:34:30', '2025-08-26 14:34:30'),
('30dc8a30-9670-498c-9207-3131b8eb3cb1', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":105,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #611POPKM\",\"created_at\":\"2025-08-26 19:33:52\"}', NULL, '2025-08-26 12:33:52', '2025-08-26 12:33:52'),
('31327b6c-b645-4d9a-895f-a17e7525afe7', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":107,\"order_code\":\"FAGMNV0T\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #FAGMNV0T\",\"created_at\":\"2025-08-26 20:24:34\"}', NULL, '2025-08-26 13:24:34', '2025-08-26 13:24:34'),
('31372bf7-11c2-46b7-84f6-b37f9dd70d0d', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":78,\"order_code\":null,\"customer_name\":\"Administrator\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"170000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #\",\"created_at\":\"2025-08-13 16:05:20\"}', NULL, '2025-08-13 09:05:20', '2025-08-13 09:05:20'),
('313a5e89-e0aa-462d-b481-edf3ed5236ee', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010008\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:39', '2025-07-31 17:43:39'),
('32272264-593d-49c7-9fba-a05173c86d23', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":114,\"order_code\":\"YHQGXSSP\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YHQGXSSP\",\"created_at\":\"2025-08-26 21:07:56\"}', NULL, '2025-08-26 14:07:56', '2025-08-26 14:07:56'),
('32eebcfd-6936-40f4-aede-d022c17a6445', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 19, '{\"order_id\":97,\"order_code\":\"PXJDSRVW\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #PXJDSRVW c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"183612.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:03:32', '2025-08-26 12:03:32'),
('32f1a53d-b04e-40a6-9922-34dcac441752', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"O8OVVGKO\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 11:28:23', '2025-08-26 11:28:23'),
('33732a19-ee87-48b9-b63d-f3bb6f8f5d14', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":110,\"order_code\":\"WQNH65ML\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"134789.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 20:53:52\"}', NULL, '2025-08-26 13:53:52', '2025-08-26 13:53:52'),
('34097582-eb8d-488a-b390-0ad322c00223', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":78,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #IPEJVETR\",\"created_at\":\"2025-08-01 02:33:53\"}', NULL, '2025-07-31 19:33:53', '2025-07-31 19:33:53'),
('344d1e1b-6564-4dc8-944f-19513599f2d0', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":52,\"order_code\":\"LYHP2NYJ\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"110000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 00:32:12\"}', NULL, '2025-07-31 17:32:12', '2025-07-31 17:32:12'),
('345688b5-0af4-4c81-8bd3-f499d0363462', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":57,\"order_code\":\"ULCIHYB1\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"214595.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 14:11:59\"}', NULL, '2025-08-01 07:11:59', '2025-08-01 07:11:59'),
('353e1034-14b1-47b1-8c39-6b8ede6a28d1', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":52,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #LYHP2NYJ\",\"created_at\":\"2025-08-01 00:32:12\"}', NULL, '2025-07-31 17:32:12', '2025-07-31 17:32:12'),
('35983a83-5e0d-430b-9041-ce2f73c66937', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"YA8BZVOX\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:24', '2025-08-13 11:43:24'),
('366b26d5-eccd-4d91-8536-0e8e6a65a627', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"3D6ZZFTE\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:13:08', '2025-08-26 12:13:08'),
('36831e3d-a6d9-4c45-b678-eb04ce1aa4a9', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":77,\"order_code\":\"XSHFEVPL\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:01:47\"}', NULL, '2025-08-13 09:01:47', '2025-08-13 09:01:47'),
('368683ca-ce9e-422a-aa12-f4db679c7dc1', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"UYUIPPUQ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 09:23:34', '2025-08-04 09:23:34'),
('36a8f89f-0812-4fb7-9db2-56a3ddf68985', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"driver_picked_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:45', '2025-08-01 04:45:45'),
('37145831-0d5f-491d-8cf7-7691f4998891', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"driver_confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 07:58:51', '2025-08-01 07:58:51'),
('374df669-8479-4a6e-b0cc-1e4e1cd88476', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":124,\"order_code\":\"ILXKQJ65\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #ILXKQJ65 c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:35:45', '2025-08-26 14:35:45'),
('379de450-7415-46c5-9a1a-c8b714746d5f', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":119,\"order_code\":\"UW1QWAAZ\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #UW1QWAAZ c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"235000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:19:47', '2025-08-26 14:19:47'),
('37e9ca4b-b7dc-4aa7-a0e3-8900e6c19a57', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"ZPA1N0QR\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:30:27', '2025-08-26 12:30:27'),
('37e9fba3-b566-4a58-969f-dd6b9d7d1bcc', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"E2O0XALF\",\"status\":\"awaiting_confirmation\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 20:14:13', '2025-07-31 20:14:13'),
('38098ce5-e81e-45b7-9bbe-c9c3b8ec0b69', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 2, '{\"order_id\":122,\"order_code\":null,\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi # c\\u1ea7n giao\",\"delivery_address\":\"Test Address\",\"total_amount\":\"100000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Administrator\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:28:15', '2025-08-26 14:28:15'),
('3821c680-f82c-4fe9-bf13-fa9d563bf676', 'App\\Notifications\\NoDriverAvailable', 'App\\Models\\Branch', 1, '{\"order_id\":51,\"order_code\":\"WXBYO8KA\",\"message\":\"Kh\\u00f4ng t\\u00ecm \\u0111\\u01b0\\u1ee3c t\\u00e0i x\\u1ebf cho \\u0111\\u01a1n h\\u00e0ng #WXBYO8KA\",\"reason\":\"Thi\\u1ebfu th\\u00f4ng tin \\u0111\\u1ecba ch\\u1ec9 giao h\\u00e0ng\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"total_amount\":\"181134.50\",\"type\":\"no_driver_available\"}', NULL, '2025-08-03 17:58:54', '2025-08-03 17:58:54'),
('38362880-33a2-4a00-926b-ec9dd0463312', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"LLJIAHKM\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:16:05', '2025-08-26 14:16:05'),
('3839fa70-f8ce-4189-a27e-25b28a8f87dd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"U09K1EUQ\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:21:06', '2025-08-26 14:21:06'),
('3921800a-9617-4e48-be34-ec3cdd03f58a', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":92,\"order_code\":\"NBFN7JYR\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #NBFN7JYR c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:40:33', '2025-08-13 11:40:33'),
('39687175-b914-490d-a235-643a692696b9', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"waiting_driver_pick_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 07:58:58', '2025-08-01 07:58:58'),
('39844af5-2c83-42c5-81bf-d85fb787a01d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"VFOPCA5S\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:29:33', '2025-08-01 04:29:33'),
('3a3c3b27-89c0-4afa-ac17-a1ae6bca6fc1', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":96,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #GFZ1SGWF\",\"created_at\":\"2025-08-13 17:26:37\"}', NULL, '2025-08-13 10:26:37', '2025-08-13 10:26:37'),
('3b0af1e6-0b71-4908-b56a-47b70458dfe6', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010048\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:38', '2025-07-31 17:43:38'),
('3b62aa61-1b44-4f18-a9ff-42ec9f8256f2', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 2, '{\"order_id\":121,\"order_code\":null,\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi # c\\u1ea7n giao\",\"delivery_address\":\"Test Address\",\"total_amount\":\"100000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Administrator\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:26:44', '2025-08-26 14:26:44'),
('3bf374ab-c9ea-49eb-9128-d0c014dab8f2', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":123,\"order_code\":\"12MQBA9U\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #12MQBA9U c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:34:30', '2025-08-26 14:34:30'),
('3c22c3c2-1cc6-43f9-b9b3-47dd182d674a', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":119,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #UW1QWAAZ\",\"created_at\":\"2025-08-26 21:19:18\"}', NULL, '2025-08-26 14:19:18', '2025-08-26 14:19:18'),
('3c34aa0a-34e4-4d43-990a-b0fb135ff1bd', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":118,\"order_code\":\"GMTJZNIG\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 21:18:05\"}', NULL, '2025-08-26 14:18:05', '2025-08-26 14:18:05'),
('3cb38f9f-ae7d-484a-a9ee-30bea66ccab2', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":104,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ZPA1N0QR\",\"created_at\":\"2025-08-26 19:25:04\"}', NULL, '2025-08-26 12:25:04', '2025-08-26 12:25:04'),
('3cc577e8-b50a-4006-a691-33bb3bf50d5b', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":135,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #FQGFLJRR\",\"created_at\":\"2025-08-28 11:13:04\"}', NULL, '2025-08-28 04:13:04', '2025-08-28 04:13:04'),
('3cc6dc88-934e-430a-9daa-2e3d692354fd', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":86,\"order_code\":\"ZX2EI2D3\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:39:51\"}', NULL, '2025-08-13 09:39:51', '2025-08-13 09:39:51'),
('3cf8ba48-4ef3-4501-877d-6f630b0c2bec', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":100,\"order_code\":\"O8OVVGKO\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"177892.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-25 22:58:31\"}', NULL, '2025-08-25 15:58:31', '2025-08-25 15:58:31'),
('3d470ac2-926a-4cdb-acb5-1152d00aabf6', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"TLELKI6V\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:02', '2025-08-01 04:45:02'),
('3d6dd062-7574-4794-ae23-436f18b5fb74', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":79,\"order_code\":\"1RF3S26N\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"90630.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 02:38:41\"}', NULL, '2025-07-31 19:38:41', '2025-07-31 19:38:41'),
('3dd6d3b7-eedf-4c85-9d2a-7bf5dd77bdcd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"YYXHY0OV\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:41:01', '2025-08-13 11:41:01'),
('3dd807d9-f3db-48e3-846d-a7a27d97a020', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":59,\"order_code\":\"UYUIPPUQ\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"214820.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #UYUIPPUQ\",\"created_at\":\"2025-08-04 16:22:32\"}', NULL, '2025-08-04 09:22:32', '2025-08-04 09:22:32'),
('3e8aa7eb-901e-4bcf-b2f8-5b4a80634f95', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":56,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #MF42ZTXR\",\"created_at\":\"2025-08-01 01:15:06\"}', NULL, '2025-07-31 18:15:06', '2025-07-31 18:15:06'),
('3ec2a52f-d08d-457e-9209-83923424dd2d', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":139,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #7XC3TFXN\",\"created_at\":\"2025-08-28 11:25:35\"}', NULL, '2025-08-28 04:25:35', '2025-08-28 04:25:35'),
('3ef4aad7-e256-46f4-9e78-483878f309cc', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"driver_confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:42:03', '2025-08-01 04:42:03'),
('3f647e47-366d-4487-a1b1-6bc8f41aee6c', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"2HZF161D\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:40:06', '2025-07-31 17:40:06'),
('3f86ed17-a646-42a0-8dde-880d673b868d', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":87,\"order_code\":\"KQFUUZGD\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"120000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #KQFUUZGD\",\"created_at\":\"2025-08-13 16:42:25\"}', NULL, '2025-08-13 09:42:25', '2025-08-13 09:42:25'),
('3fa4acff-f631-491a-b3c1-a5dd90ac419e', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":115,\"order_code\":\"6Z3IC24X\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #6Z3IC24X c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:11:27', '2025-08-26 14:11:27'),
('408e0470-82b1-4634-addd-2712065e7510', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":140,\"order_code\":\"IT5O9ZK6\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"70000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-28 11:25:35\"}', NULL, '2025-08-28 04:25:35', '2025-08-28 04:25:35'),
('40b09943-ab1e-438a-be91-fbe52ccb2aec', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":89,\"order_code\":\"6WJXFNQ0\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #6WJXFNQ0 c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"120000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:43:19', '2025-08-13 11:43:19'),
('4113a3b4-54fe-4394-ae56-f44099752718', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"TLELKI6V\",\"status\":\"driver_picked_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:45', '2025-08-01 04:45:45'),
('4204e99e-9395-40a7-a643-54b02e8c339b', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":68,\"order_code\":\"TEST1755075055\",\"customer_name\":\"Administrator\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"100000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TEST1755075055\",\"created_at\":\"2025-08-13 15:50:55\"}', NULL, '2025-08-13 08:50:55', '2025-08-13 08:50:55'),
('422f7281-6054-4ebd-8c35-0152a744489e', 'App\\Notifications\\NoDriverAvailable', 'App\\Models\\Branch', 1, '{\"order_id\":106,\"order_code\":\"OTMUAHOH\",\"message\":\"Kh\\u00f4ng t\\u00ecm \\u0111\\u01b0\\u1ee3c t\\u00e0i x\\u1ebf cho \\u0111\\u01a1n h\\u00e0ng #OTMUAHOH\",\"reason\":\"Kh\\u00f4ng c\\u00f3 t\\u00e0i x\\u1ebf ph\\u00f9 h\\u1ee3p sau nhi\\u1ec1u l\\u1ea7n th\\u1eed\",\"customer_name\":\"Luminous\",\"total_amount\":\"250000.00\",\"type\":\"no_driver_available\"}', NULL, '2025-08-26 13:22:48', '2025-08-26 13:22:48'),
('423bb050-4eaf-4327-be1e-f7d759473e22', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":52,\"order_code\":\"LYHP2NYJ\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #LYHP2NYJ c\\u1ea7n giao\",\"delivery_address\":\"ng\\u00f5 286, \\u0111\\u01b0\\u1eddng 422b, Ph\\u01b0\\u1eddng C\\u1ed5 Nhu\\u1ebf 2, Qu\\u1eadn B\\u1eafc T\\u1eeb Li\\u00eam, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"110000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-07-31 17:33:19', '2025-07-31 17:33:19'),
('423d14be-b1b7-47b3-ac53-25f327acb02c', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":111,\"order_code\":\"WYTXRO25\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #WYTXRO25 c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 13:55:26', '2025-08-26 13:55:26'),
('42500e6e-eab5-45ae-b741-2475acf72a68', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"WYTXRO25\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:55:25', '2025-08-26 13:55:25'),
('429cfa1c-c594-41b9-b00b-a84551af6faa', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":124,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ILXKQJ65\",\"created_at\":\"2025-08-26 21:35:14\"}', NULL, '2025-08-26 14:35:14', '2025-08-26 14:35:14'),
('42c34309-be51-4f35-bdf0-42d054da2e68', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":75,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #O4PG7XCA\",\"created_at\":\"2025-08-13 16:01:21\"}', NULL, '2025-08-13 09:01:21', '2025-08-13 09:01:21'),
('42f9b4ca-378c-4dcd-a24a-4515b37f1946', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"324IAODC\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:43', '2025-08-13 11:40:43'),
('4344bcb2-6424-4618-b038-b37e11ec0f34', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":90,\"order_code\":\"YYXHY0OV\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #YYXHY0OV c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:41:02', '2025-08-13 11:41:02');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('434e2f40-beba-419d-9b9a-a93d0fbb4b51', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":112,\"order_code\":\"NWTSY52X\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #NWTSY52X c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 13:57:04', '2025-08-26 13:57:04'),
('43c707f7-d851-4e92-a1af-782d59cba5ee', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"ZPA1N0QR\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:30:27', '2025-08-26 12:30:27'),
('44d8847c-4f98-4d01-ba95-abac04e876dc', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":131,\"order_code\":\"ULONECMR\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh H\\u00e0 \\u0110\\u00f4ng\",\"total_amount\":\"100000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ULONECMR\",\"created_at\":\"2025-08-27 15:24:25\"}', NULL, '2025-08-27 08:24:25', '2025-08-27 08:24:25'),
('44fb2930-ce8d-4274-bb3c-da8c838e5227', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:05', '2025-08-01 04:45:05'),
('450ba60b-52b5-4fa2-87ff-da4039a0eee5', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"611POPKM\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:34:43', '2025-08-26 12:34:43'),
('45223a74-8e20-4ac9-97d1-9abc34075278', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":114,\"order_code\":\"YHQGXSSP\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 21:07:56\"}', NULL, '2025-08-26 14:07:56', '2025-08-26 14:07:56'),
('453b05fd-5aaa-435d-9abb-6a6558ef1366', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"IIOSZEBW\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-03 17:58:39', '2025-08-03 17:58:39'),
('454a00f1-fe5e-43e1-a9b6-04d10da5fbef', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 21, '{\"order_code\":\"GFZ1SGWF\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:36:26', '2025-08-13 11:36:26'),
('455aebe3-7946-44a3-aba4-2d3b0bbe4054', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":84,\"order_code\":\"OG5LIBIV\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #OG5LIBIV c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"235000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:47:10', '2025-08-13 11:47:10'),
('456ec93b-d64f-4a5c-8cb7-155bbf8986b4', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":102,\"order_code\":\"CXCXUHH1\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #CXCXUHH1 c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"169595.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:11:29', '2025-08-26 12:11:29'),
('4581b348-8ac1-42be-b196-b780f770b847', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":74,\"order_code\":\"AAOMXSZN\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"169595.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #AAOMXSZN\",\"created_at\":\"2025-08-01 02:25:39\"}', NULL, '2025-07-31 19:25:39', '2025-07-31 19:25:39'),
('4637742f-d87c-4364-9c2f-296b12a53a46', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"5EIS85E8\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:30:52', '2025-08-26 13:30:52'),
('463a8877-b847-4ded-b248-90f4b15802c3', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":62,\"order_code\":\"PTWI78OF\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-05 23:55:37\"}', NULL, '2025-08-05 16:55:37', '2025-08-05 16:55:37'),
('4685bf9e-acda-41cb-845f-1e22a9dd8eea', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":123,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #12MQBA9U\",\"created_at\":\"2025-08-26 21:33:50\"}', NULL, '2025-08-26 14:33:50', '2025-08-26 14:33:50'),
('46f3c0c5-b587-41a8-b042-c78275d4cc04', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":78,\"order_code\":\"IPEJVETR\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"146513.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #IPEJVETR\",\"created_at\":\"2025-08-01 02:33:53\"}', NULL, '2025-07-31 19:33:53', '2025-07-31 19:33:53'),
('476c8e3a-cb4f-402b-92e2-0eb70e9a262d', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":120,\"order_code\":\"U09K1EUQ\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #U09K1EUQ c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:24:48', '2025-08-26 14:24:48'),
('47dcf422-971c-419e-a855-80322bde0d2a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"OTMUAHOH\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:18:34', '2025-08-26 13:18:34'),
('47f0051b-3628-49ab-9ccb-5ed48d5506fa', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"OG5LIBIV\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:47:00', '2025-08-13 11:47:00'),
('48522f92-03cf-479f-98bf-a61ffe942de0', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":68,\"order_code\":\"YZAD9OEU\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"165000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YZAD9OEU\",\"created_at\":\"2025-08-01 01:54:52\"}', NULL, '2025-07-31 18:54:52', '2025-07-31 18:54:52'),
('48792e60-269f-4680-b3a1-2477d21f12b4', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":76,\"order_code\":\"O2XO94UD\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"136513.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 02:29:29\"}', NULL, '2025-07-31 19:29:29', '2025-07-31 19:29:29'),
('492a2e13-bcb0-45bb-beb8-c05086b5a01e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"12MQBA9U\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:34:30', '2025-08-26 14:34:30'),
('49ec487a-133e-4dbb-add4-bde3c4b6b82d', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":96,\"order_code\":\"GFZ1SGWF\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #GFZ1SGWF\",\"created_at\":\"2025-08-13 17:26:37\"}', NULL, '2025-08-13 10:26:37', '2025-08-13 10:26:37'),
('4a3042e6-36e6-45bf-b07a-9376a9e14683', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"YYXHY0OV\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:58', '2025-08-13 11:40:58'),
('4a4d6c59-4bad-48e4-abc0-360978cd18a4', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":95,\"order_code\":\"HJNEH3LC\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #HJNEH3LC c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:40:16', '2025-08-13 11:40:16'),
('4a74daf8-c2ed-4787-b6b5-788536f0d025', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"TLELKI6V\",\"status\":\"waiting_driver_pick_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:39', '2025-08-01 04:45:39'),
('4a84c19f-079e-4c32-8630-855659fd9469', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010049\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 13:29:21', '2025-08-04 13:29:21'),
('4aa272c8-ff32-4f66-95ed-ed86377a1784', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":80,\"order_code\":\"H1VJ4FB1\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:06:57\"}', NULL, '2025-08-13 09:06:57', '2025-08-13 09:06:57'),
('4ad37bab-c0f5-496d-932d-b1bbd8969162', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":73,\"order_code\":\"XQH433GN\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"184595.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 02:24:27\"}', NULL, '2025-07-31 19:24:27', '2025-07-31 19:24:27'),
('4b3122fc-62df-49d3-ae9f-54be9affb917', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":89,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #6WJXFNQ0\",\"created_at\":\"2025-08-13 16:51:05\"}', NULL, '2025-08-13 09:51:05', '2025-08-13 09:51:05'),
('4b95270f-750b-4c77-b8bc-c6be481a64c2', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"LYHP2NYJ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:33:10', '2025-07-31 17:33:10'),
('4be766af-bf13-4033-aaab-6ca6d942a81c', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":111,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #WYTXRO25\",\"created_at\":\"2025-08-26 20:54:58\"}', NULL, '2025-08-26 13:54:58', '2025-08-26 13:54:58'),
('4bfed3ca-218c-4a78-973c-1c012ed0ce58', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":82,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #XVMERIVL\",\"created_at\":\"2025-08-13 16:20:17\"}', NULL, '2025-08-13 09:20:17', '2025-08-13 09:20:17'),
('4d6f3637-2892-4fc7-ab4c-d7447cb096f8', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":54,\"order_code\":\"2HZF161D\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #2HZF161D c\\u1ea7n giao\",\"delivery_address\":\"ng\\u00f5 286, \\u0111\\u01b0\\u1eddng 422b, Ph\\u01b0\\u1eddng C\\u1ed5 Nhu\\u1ebf 2, Qu\\u1eadn B\\u1eafc T\\u1eeb Li\\u00eam, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"215419.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-07-31 17:40:07', '2025-07-31 17:40:07'),
('4daa0797-c2e5-478f-9f50-5f204f9040d3', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":92,\"order_code\":\"NBFN7JYR\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #NBFN7JYR\",\"created_at\":\"2025-08-13 17:13:50\"}', NULL, '2025-08-13 10:13:50', '2025-08-13 10:13:50'),
('4ddc75b2-ca33-44e6-af7d-15dfbcfa8b5d', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":133,\"order_code\":\"VHQXVX6R\",\"branch_name\":\"Chi nh\\u00e1nh H\\u00e0 \\u0110\\u00f4ng\",\"total_amount\":\"2386860.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-27 15:29:54\"}', '2025-08-27 09:05:55', '2025-08-27 08:29:54', '2025-08-27 09:05:55'),
('4df179b5-3578-414e-b40b-58c33a3e8285', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:05', '2025-08-01 04:45:05'),
('4df64737-a9fe-44e9-a0d6-42442e1e4547', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"KQFUUZGD\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:57', '2025-08-13 11:43:57'),
('4e6700c0-dcbc-4174-879a-3f677440ceed', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010034\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:02', '2025-07-31 17:34:02'),
('4ec8c98f-e6b9-4fb1-8eb9-affd4c2f4f03', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":78,\"order_code\":\"IPEJVETR\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"146513.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 02:33:53\"}', NULL, '2025-07-31 19:33:53', '2025-07-31 19:33:53'),
('4f40cadb-c523-4771-9dbb-89cc494168af', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010048\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:38', '2025-07-31 17:43:38'),
('4f936f23-0b59-4cdf-8289-b22d7865f5a8', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 1, '{\"order_id\":73,\"order_code\":\"TEST1755075357\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"100000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:55:57\"}', NULL, '2025-08-13 08:55:57', '2025-08-13 08:55:57'),
('4fadce4a-f792-4619-9fbc-a3bdb737e351', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"driver_picked_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 08:06:18', '2025-08-01 08:06:18'),
('4fc136b4-b62f-4dc4-bf08-e30f7412d859', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":85,\"order_code\":\"9CKNDKCJ\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #9CKNDKCJ\",\"created_at\":\"2025-08-13 16:36:26\"}', NULL, '2025-08-13 09:36:26', '2025-08-13 09:36:26'),
('5000fd0c-8d6f-4c3e-ba27-8a408ecdb1d2', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":113,\"order_code\":\"Z6OYHN7O\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #Z6OYHN7O c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:03:05', '2025-08-26 14:03:05'),
('502af354-4aab-408a-bdcd-7d79f8739c63', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"1QOSFPND\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:29:38', '2025-08-26 13:29:38'),
('5149710d-2648-44ca-a180-98be113f7955', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":70,\"order_code\":\"TEST1755075157\",\"customer_name\":\"Administrator\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"100000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TEST1755075157\",\"created_at\":\"2025-08-13 15:52:37\"}', NULL, '2025-08-13 08:52:37', '2025-08-13 08:52:37'),
('518af36d-9e14-44a2-91b5-0126077693e4', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"KQFUUZGD\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:57', '2025-08-13 11:43:57'),
('51a4fa42-b77c-4240-b602-b4f09ac165c9', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"ZX2EI2D3\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:46:46', '2025-08-13 11:46:46'),
('51cf5e8b-0786-4d92-966e-1a30c60b8f31', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"driver_picked_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 08:06:18', '2025-08-01 08:06:18'),
('5215eb99-e71b-4fdb-b34c-42a936b0a386', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 21, '{\"order_code\":\"KQFUUZGD\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:57', '2025-08-13 11:43:57'),
('53074a25-0191-44a2-8867-0d6b2fb0a120', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"KQFUUZGD\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:52', '2025-08-13 11:43:52'),
('53c84732-aa8f-4296-afdd-ac306d813693', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":102,\"order_code\":\"CXCXUHH1\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"169595.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 19:11:04\"}', NULL, '2025-08-26 12:11:04', '2025-08-26 12:11:04'),
('54cc13ea-09c2-4746-ab2d-7c2594f5d145', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"delivered\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:46:25', '2025-08-01 04:46:25'),
('553a0e90-e4b3-40cd-89db-8fdd1f5d283d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"9CKNDKCJ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:47:02', '2025-08-13 11:47:02'),
('5596f771-b061-4877-b9c9-8deff1652b8b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"324IAODC\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:48', '2025-08-13 11:40:48'),
('55a1ecd5-15d1-46a5-9cf4-8e815cb51f9b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"ARC5ZZGN\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:01:53', '2025-08-26 12:01:53'),
('55a2d554-a240-4eed-bbf3-35ceda95f734', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":55,\"order_code\":\"VNPHN32W\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"165000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 00:43:16\"}', NULL, '2025-07-31 17:43:16', '2025-07-31 17:43:16'),
('55aad986-c1fa-4934-bdc0-432df5addaf7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"ULCIHYB1\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-03 17:56:07', '2025-08-03 17:56:07'),
('55e3fcd9-6add-4915-9b8c-e7fe40b5c522', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"waiting_driver_pick_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:39', '2025-08-01 04:45:39'),
('55e4a223-bb89-4adb-8a65-2f53a02120b8', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"YA8BZVOX\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:28', '2025-08-13 11:43:28'),
('55ea6482-7c53-455d-93df-d77dd68ca1c5', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"IPEJVETR\",\"status\":\"awaiting_confirmation\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 20:12:57', '2025-07-31 20:12:57'),
('565efbfd-bc41-48f0-a2bd-940add023b6b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"NWTSY52X\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:56:46', '2025-08-26 13:56:46'),
('568e79bb-c269-4cc3-9dfd-687e65c04022', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"2HZF161D\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:39:42', '2025-07-31 17:39:42'),
('57390b31-fab8-4abd-89c0-8497d06cd0bd', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":92,\"order_code\":\"NBFN7JYR\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 17:13:50\"}', NULL, '2025-08-13 10:13:50', '2025-08-13 10:13:50'),
('57e174a0-e9d9-4246-9b3a-28785be6be90', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 15, '{\"order_id\":62,\"order_code\":\"PTWI78OF\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #PTWI78OF c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-05 16:56:03', '2025-08-05 16:56:03'),
('581bf66b-d583-4bfa-9bd2-37591ba48b31', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010022\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 13:29:08', '2025-08-04 13:29:08'),
('5827ec32-2455-4cf4-ab38-f384ade9a36a', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":140,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #IT5O9ZK6\",\"created_at\":\"2025-08-28 11:25:35\"}', NULL, '2025-08-28 04:25:35', '2025-08-28 04:25:35'),
('58b5cb66-a0c2-4dab-b6b9-0e627a5598ea', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"IIOSZEBW\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-03 17:58:52', '2025-08-03 17:58:52'),
('58c521a7-25f3-4d7d-8b87-7d1b5d391679', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"UMK2KK8U\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:31:48', '2025-08-01 04:31:48'),
('58e94a76-cdb3-4896-a40c-0d4124c6d641', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 15, '{\"order_id\":61,\"order_code\":\"1RAF2O8S\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #1RAF2O8S c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-04 12:51:59', '2025-08-04 12:51:59'),
('593c4a90-8723-4eed-8678-9d184b203652', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":103,\"order_code\":\"3D6ZZFTE\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #3D6ZZFTE c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:13:25', '2025-08-26 12:13:25'),
('596d9014-1f2a-4b1e-94dd-cfc631e63b8c', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":86,\"order_code\":\"ZX2EI2D3\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ZX2EI2D3\",\"created_at\":\"2025-08-13 16:39:51\"}', NULL, '2025-08-13 09:39:51', '2025-08-13 09:39:51'),
('597ac7b4-5832-42f0-aed7-022c1b4e308c', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":56,\"order_code\":\"IIOSZEBW\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"432702.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #IIOSZEBW\",\"created_at\":\"2025-08-01 14:10:30\"}', NULL, '2025-08-01 07:10:30', '2025-08-01 07:10:30'),
('59d2b94a-3aa9-460c-9116-e1271f527890', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"PXJDSRVW\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 11:28:24', '2025-08-26 11:28:24'),
('59f16f06-da3e-473d-b68e-540aec697db2', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":135,\"order_code\":\"FQGFLJRR\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"205000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #FQGFLJRR\",\"created_at\":\"2025-08-28 11:13:04\"}', NULL, '2025-08-28 04:13:04', '2025-08-28 04:13:04'),
('59fe07f0-802f-4149-9f5a-342867aa13a1', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":84,\"order_code\":\"OG5LIBIV\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #OG5LIBIV\",\"created_at\":\"2025-08-13 16:32:28\"}', NULL, '2025-08-13 09:32:28', '2025-08-13 09:32:28'),
('5a2b147f-72eb-425b-983a-53bd15aec9aa', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":95,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #HJNEH3LC\",\"created_at\":\"2025-08-13 17:24:37\"}', NULL, '2025-08-13 10:24:37', '2025-08-13 10:24:37'),
('5a7b622d-288b-4803-bc9b-35bfb643460e', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 1, '{\"order_id\":71,\"order_code\":\"TEST1755075198\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"100000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:53:18\"}', NULL, '2025-08-13 08:53:18', '2025-08-13 08:53:18'),
('5b00549e-cecd-4c57-9a8a-523cc635e8b6', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"GMTJZNIG\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:18:26', '2025-08-26 14:18:26'),
('5b7ddfd7-bfc8-4b44-8032-a3f064934b07', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"LYAIRRA8\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 12:50:59', '2025-08-04 12:50:59'),
('5bb8839f-db11-4041-b7c3-a63d57eceb74', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 2, '{\"order_id\":127,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #SG01FT4L\",\"created_at\":\"2025-08-27 15:18:18\"}', NULL, '2025-08-27 08:18:18', '2025-08-27 08:18:18'),
('5bd6030c-37a7-4699-a90c-cb7d897a6de9', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":60,\"order_code\":\"LYAIRRA8\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #LYAIRRA8\",\"created_at\":\"2025-08-04 19:50:29\"}', NULL, '2025-08-04 12:50:29', '2025-08-04 12:50:29'),
('5bf2ba34-c9ae-414c-bb10-74aff64ce66b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"CXCXUHH1\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:11:28', '2025-08-26 12:11:28'),
('5c32ebb4-b945-4999-9a24-11f93cefdff1', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":125,\"order_code\":\"V5G0DL0U\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #V5G0DL0U\",\"created_at\":\"2025-08-26 22:08:33\"}', NULL, '2025-08-26 15:08:33', '2025-08-26 15:08:33'),
('5d2057e0-409c-4032-b1a5-63c015c325eb', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":79,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #XDAU7BXG\",\"created_at\":\"2025-08-13 16:05:20\"}', NULL, '2025-08-13 09:05:20', '2025-08-13 09:05:20'),
('5d9181c1-bad5-45e8-ba4c-3797be1a5bdd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010034\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:02', '2025-07-31 17:34:02'),
('5e4c2adf-a442-47c3-8de4-e6b259d54e4f', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 19, '{\"order_code\":\"ARC5ZZGN\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:03:36', '2025-08-26 12:03:36'),
('5ec26b92-34e1-4595-aa6f-3bf8cfdd556b', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":120,\"order_code\":\"U09K1EUQ\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 21:20:56\"}', NULL, '2025-08-26 14:20:56', '2025-08-26 14:20:56'),
('5ec9c26c-0831-4055-92bd-c2fde5584d90', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 20, '{\"order_code\":\"NGHE3KH7\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-22 10:51:23', '2025-08-22 10:51:23'),
('5f3d32cc-e30f-4fd6-a845-cdc39a60f125', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010006\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:00', '2025-07-31 17:34:00'),
('5fc5dd93-25f8-49d5-9190-79786fc51df6', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"delivered\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:46:25', '2025-08-01 04:46:25'),
('5fdf9fa8-c358-441f-9c7d-24458e0ff6e2', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":102,\"order_code\":\"CXCXUHH1\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"169595.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #CXCXUHH1\",\"created_at\":\"2025-08-26 19:11:04\"}', NULL, '2025-08-26 12:11:04', '2025-08-26 12:11:04'),
('5feb1ead-55c9-47c6-b95f-89ccdda5ca7a', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":89,\"order_code\":\"6WJXFNQ0\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"120000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #6WJXFNQ0\",\"created_at\":\"2025-08-13 16:51:05\"}', NULL, '2025-08-13 09:51:05', '2025-08-13 09:51:05'),
('600b5f3b-3bfc-40a0-a9d9-90f68f843843', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"WQNH65ML\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:54:29', '2025-08-26 13:54:29'),
('611add82-de19-4742-a322-a86282852711', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"U09K1EUQ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:21:25', '2025-08-26 14:21:25'),
('61661dbf-3e39-4a79-a873-e32f8a71d086', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":93,\"order_code\":\"IOCKUSDV\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"820000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #IOCKUSDV\",\"created_at\":\"2025-08-13 17:16:17\"}', NULL, '2025-08-13 10:16:17', '2025-08-13 10:16:17'),
('616806b5-1383-40c8-987a-5f8bf66288fd', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":69,\"order_code\":\"NPRR2WJ5\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #NPRR2WJ5\",\"created_at\":\"2025-08-13 15:51:42\"}', NULL, '2025-08-13 08:51:42', '2025-08-13 08:51:42'),
('616db396-eaa3-4a02-bbaf-9c0988a4505c', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":53,\"customer_name\":\"\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #UMK2KK8U\",\"created_at\":\"2025-08-01 11:31:15\"}', NULL, '2025-08-01 04:31:15', '2025-08-01 04:31:15'),
('617535b2-2982-4d28-a4ba-fb5b9ea4eb40', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"ZPA1N0QR\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:31:16', '2025-08-26 12:31:16'),
('61c34ca7-132b-4486-a0b9-0e33d47dd5ad', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:41:10', '2025-08-01 04:41:10'),
('61fcafcb-5152-4b7c-b147-7fbad3b38b04', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":69,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #HISGOC6L\",\"created_at\":\"2025-08-01 02:05:21\"}', NULL, '2025-07-31 19:05:21', '2025-07-31 19:05:21'),
('62275171-c6e3-4ce3-8cf2-4ab3c87e0db0', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"PXJDSRVW\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 11:28:24', '2025-08-26 11:28:24'),
('6257d97f-b5e3-4fd9-8e72-7d0b21a687d9', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 07:48:35', '2025-08-01 07:48:35'),
('625e823a-879c-49b8-850c-ea7275a159b6', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"V5G0DL0U\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 15:08:43', '2025-08-26 15:08:43'),
('62e1f0c0-1631-46b6-928b-d76024f54e6a', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":117,\"order_code\":\"LLJIAHKM\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #LLJIAHKM c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"820000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:16:06', '2025-08-26 14:16:06'),
('634d82f4-7806-42bd-9022-6307193e7312', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":55,\"order_code\":\"VNPHN32W\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"165000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #VNPHN32W\",\"created_at\":\"2025-08-01 00:43:16\"}', NULL, '2025-07-31 17:43:16', '2025-07-31 17:43:16'),
('635c9d53-f76c-47b7-be17-09502d44318d', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":73,\"order_code\":\"XQH433GN\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"184595.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #XQH433GN\",\"created_at\":\"2025-08-01 02:24:27\"}', NULL, '2025-07-31 19:24:27', '2025-07-31 19:24:27'),
('6368f4a1-c8d0-48cd-9e80-e21daa5dc5ae', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":118,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #GMTJZNIG\",\"created_at\":\"2025-08-26 21:18:05\"}', NULL, '2025-08-26 14:18:05', '2025-08-26 14:18:05'),
('63bd06e5-aca6-409d-8a59-36eb59bbdebd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"item_received\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: item_received\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:46:34', '2025-08-01 04:46:34'),
('643282ed-20b0-4623-b6c5-350d713faff3', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"PXJDSRVW\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:03:32', '2025-08-26 12:03:32'),
('645447e2-5fa9-4820-acd9-852fe79b5753', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"LYAIRRA8\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 12:50:59', '2025-08-04 12:50:59');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('6523adf2-4dee-4ca1-b6c4-951c9971362d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WYTXRO25\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:55:09', '2025-08-26 13:55:09'),
('65714dea-0b21-4c06-9fc6-e884b509e8fc', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 1, '{\"order_id\":999999,\"order_code\":\"TEST1755074636\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"100000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:43:56\"}', NULL, '2025-08-13 08:43:56', '2025-08-13 08:43:56'),
('65d4a012-eb43-4501-89b4-afe490f7391f', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 15, '{\"order_id\":60,\"order_code\":\"LYAIRRA8\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #LYAIRRA8 c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-04 12:51:13', '2025-08-04 12:51:13'),
('66b2b93e-50c7-4129-aff5-c3a4f60df4d4', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":115,\"order_code\":\"6Z3IC24X\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 21:10:54\"}', NULL, '2025-08-26 14:10:54', '2025-08-26 14:10:54'),
('670e8f4e-3b8a-47dd-ba71-98f62e5e0073', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":108,\"order_code\":\"1QOSFPND\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"205000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 20:29:30\"}', NULL, '2025-08-26 13:29:30', '2025-08-26 13:29:30'),
('6715a0f3-8bd3-417e-badf-78a671e489e5', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010018\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:03', '2025-07-31 17:34:03'),
('674fcca0-3380-4d17-b6ca-57e8ebaf478e', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":57,\"order_code\":\"ULCIHYB1\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"214595.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ULCIHYB1\",\"created_at\":\"2025-08-01 14:11:59\"}', NULL, '2025-08-01 07:11:59', '2025-08-01 07:11:59'),
('67571c8a-1e2e-45ee-8e0c-9b04cd1dd885', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"driver_confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:31', '2025-08-01 04:45:31'),
('6818280f-7e01-4f2e-b861-617c1184d2e1', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":81,\"order_code\":\"OBUX3YUN\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:07:48\"}', NULL, '2025-08-13 09:07:48', '2025-08-13 09:07:48'),
('684675d1-9c97-4917-a8b1-920636e75503', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":115,\"order_code\":\"6Z3IC24X\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #6Z3IC24X c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:11:27', '2025-08-26 14:11:27'),
('684f6392-942e-4556-a8af-bff6a52e9e89', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"LLJIAHKM\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:15:49', '2025-08-26 14:15:49'),
('688179b8-b7b1-496c-83fa-3ad832e0fda4', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"NWTSY52X\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:57:04', '2025-08-26 13:57:04'),
('68dc1d93-cd56-4dee-8118-f3384c458214', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":51,\"customer_name\":\"\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #WXBYO8KA\",\"created_at\":\"2025-08-01 11:27:52\"}', NULL, '2025-08-01 04:27:52', '2025-08-01 04:27:52'),
('6942ee89-ba94-471e-9720-b2a470eaffca', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"HJNEH3LC\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:12', '2025-08-13 11:40:12'),
('69ac41da-1c2d-426c-bbc7-84058461e355', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":120,\"order_code\":\"U09K1EUQ\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #U09K1EUQ c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:24:48', '2025-08-26 14:24:48'),
('6a8ad259-5790-4d12-9bb9-16ed9fd35a29', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 07:48:46', '2025-08-01 07:48:46'),
('6b0ac890-c023-4831-b287-c115e64e6b85', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":116,\"order_code\":\"GVXPSOSO\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #GVXPSOSO c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"290000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:14:57', '2025-08-26 14:14:57'),
('6b2305f5-ec2d-42e4-bd16-4ea970a68605', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":55,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #VNPHN32W\",\"created_at\":\"2025-08-01 00:43:16\"}', NULL, '2025-07-31 17:43:16', '2025-07-31 17:43:16'),
('6b40d8ea-02e5-4264-8357-96bea0b87220', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"6Z3IC24X\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:11:27', '2025-08-26 14:11:27'),
('6b443f30-b5c7-43da-ae4e-879f3adf5e73', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"LYHP2NYJ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:33:10', '2025-07-31 17:33:10'),
('6b9a4910-16e8-4b9d-9053-363db0c355c7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"UW1QWAAZ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:19:46', '2025-08-26 14:19:46'),
('6be058dc-9418-4a11-b4b7-50110189b750', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010025\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:02', '2025-07-31 17:34:02'),
('6cc56259-2f56-4997-b4d5-471ef89746a8', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":84,\"order_code\":\"OG5LIBIV\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #OG5LIBIV c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"235000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:47:10', '2025-08-13 11:47:10'),
('6d052681-ea04-49ef-9a2d-a3589c2d3922', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"LLJIAHKM\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:16:05', '2025-08-26 14:16:05'),
('6d3647a8-dcd4-4938-8187-c6db6f71b027', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":102,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #CXCXUHH1\",\"created_at\":\"2025-08-26 19:11:04\"}', NULL, '2025-08-26 12:11:04', '2025-08-26 12:11:04'),
('6d44a4c9-7063-4833-bc41-d99a1a65c4a6', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":109,\"order_code\":\"5EIS85E8\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #5EIS85E8 c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 13:31:09', '2025-08-26 13:31:09'),
('6d637408-de02-4a18-a111-07838c7d605a', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":91,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #324IAODC\",\"created_at\":\"2025-08-13 16:54:16\"}', NULL, '2025-08-13 09:54:16', '2025-08-13 09:54:16'),
('6d9b0521-2942-4ed6-b06f-064c964dc9bf', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":90,\"order_code\":\"YYXHY0OV\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:52:12\"}', NULL, '2025-08-13 09:52:12', '2025-08-13 09:52:12'),
('6dc9ce05-b89f-47a6-b247-cbd8b0e7aa9c', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010025\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:02', '2025-07-31 17:34:02'),
('6dca28fa-2363-445b-ac00-75e046a2e9d7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"5EIS85E8\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', '2025-08-26 13:38:57', '2025-08-26 13:30:52', '2025-08-26 13:38:57'),
('6e7cf49a-fa0d-4726-849a-daac4acceb67', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 15, '{\"order_id\":59,\"order_code\":\"UYUIPPUQ\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #UYUIPPUQ c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"214820.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-04 09:23:41', '2025-08-04 09:23:41'),
('6e81f4d1-abdb-4d56-aca1-7c25a539df6a', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":95,\"order_code\":\"HJNEH3LC\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #HJNEH3LC c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:40:17', '2025-08-13 11:40:17'),
('6f982cff-b238-45ee-b052-618f978e30a4', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"NBFN7JYR\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:32', '2025-08-13 11:40:32'),
('6fb4bcd9-9707-4728-8a96-7f3309194dc2', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":143,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #GTYSE6DU\",\"created_at\":\"2025-08-28 11:28:22\"}', NULL, '2025-08-28 04:28:22', '2025-08-28 04:28:22'),
('6fd4f301-60ea-420d-9a2a-d7619cf0d2e6', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"ZX2EI2D3\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:46:46', '2025-08-13 11:46:46'),
('708e8973-34f6-4918-b355-27628fdd2702', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":134,\"order_code\":\"QMM1BCWF\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #QMM1BCWF\",\"created_at\":\"2025-08-27 18:40:13\"}', NULL, '2025-08-27 11:40:13', '2025-08-27 11:40:13'),
('70f07dbd-fd8a-4922-9bb6-87569adf4540', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":117,\"order_code\":\"LLJIAHKM\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"820000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #LLJIAHKM\",\"created_at\":\"2025-08-26 21:15:42\"}', NULL, '2025-08-26 14:15:42', '2025-08-26 14:15:42'),
('717a8ca2-3ef4-4c68-a79d-2b569f109f9e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"PTWI78OF\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-05 16:56:03', '2025-08-05 16:56:03'),
('7189909b-e89f-4059-929f-3dc9a2cef3e0', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":102,\"order_code\":\"CXCXUHH1\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #CXCXUHH1 c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"169595.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:11:28', '2025-08-26 12:11:28'),
('7235c87a-57bf-459f-919e-86725203f56f', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"IIOSZEBW\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-03 17:58:39', '2025-08-03 17:58:39'),
('723bb08d-51cc-4cd4-8298-e2815bb075df', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":113,\"order_code\":\"Z6OYHN7O\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 21:02:42\"}', NULL, '2025-08-26 14:02:42', '2025-08-26 14:02:42'),
('72e2a3e3-725a-4c2c-9a6b-8c4d8bb72670', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"delivered\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 08:06:44', '2025-08-01 08:06:44'),
('73fa1f06-ef5f-4852-9905-2ac7b1920df8', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:02', '2025-08-01 04:45:02'),
('743e0726-700d-4b19-ab59-842d2ec1a4dd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010047\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:36', '2025-07-31 17:43:36'),
('74b7b35e-efc4-41ba-80f1-c31c4e835b9b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"O2XO94UD\",\"status\":\"cancelled\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: cancelled\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 20:15:27', '2025-07-31 20:15:27'),
('74fceb71-484d-4779-a8f8-b819b10f8f24', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":73,\"customer_name\":\"Administrator\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TEST1755075357\",\"created_at\":\"2025-08-13 15:55:57\"}', NULL, '2025-08-13 08:55:57', '2025-08-13 08:55:57'),
('755a7692-37f8-48f4-aa06-f267aaa77afd', 'App\\Notifications\\NoDriverAvailable', 'App\\Models\\Branch', 1, '{\"order_id\":106,\"order_code\":\"OTMUAHOH\",\"message\":\"Kh\\u00f4ng t\\u00ecm \\u0111\\u01b0\\u1ee3c t\\u00e0i x\\u1ebf cho \\u0111\\u01a1n h\\u00e0ng #OTMUAHOH\",\"reason\":\"Kh\\u00f4ng c\\u00f3 t\\u00e0i x\\u1ebf ph\\u00f9 h\\u1ee3p sau nhi\\u1ec1u l\\u1ea7n th\\u1eed\",\"customer_name\":\"Luminous\",\"total_amount\":\"250000.00\",\"type\":\"no_driver_available\"}', NULL, '2025-08-26 13:22:56', '2025-08-26 13:22:56'),
('7594ac52-436c-48ed-b7b4-feec25f95ed5', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":55,\"order_code\":\"VNPHN32W\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #VNPHN32W c\\u1ea7n giao\",\"delivery_address\":\"ng\\u00f5 286, \\u0111\\u01b0\\u1eddng 422b, Ph\\u01b0\\u1eddng C\\u1ed5 Nhu\\u1ebf 2, Qu\\u1eadn B\\u1eafc T\\u1eeb Li\\u00eam, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"165000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-07-31 17:43:45', '2025-07-31 17:43:45'),
('75ee21b0-6697-4cb9-b151-94a234c79e07', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010008\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 13:29:19', '2025-08-04 13:29:19'),
('76947d03-d2c2-4583-858e-d01f5ee30214', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":116,\"order_code\":\"GVXPSOSO\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #GVXPSOSO c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"290000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:14:57', '2025-08-26 14:14:57'),
('76cf6d2e-a869-45f1-8ce8-a6733a244cf9', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":90,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YYXHY0OV\",\"created_at\":\"2025-08-13 16:52:12\"}', NULL, '2025-08-13 09:52:12', '2025-08-13 09:52:12'),
('7713c0b9-d32f-4a14-8185-09d76537bf14', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":57,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ULCIHYB1\",\"created_at\":\"2025-08-01 14:11:59\"}', NULL, '2025-08-01 07:11:59', '2025-08-01 07:11:59'),
('7761e175-1de0-4f20-b260-f325f854d77b', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":54,\"order_code\":\"2HZF161D\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"215419.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 00:39:32\"}', NULL, '2025-07-31 17:39:32', '2025-07-31 17:39:32'),
('7775f106-714a-4e14-9415-d15585034b6c', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":66,\"order_code\":\"ENB1K8AL\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ENB1K8AL\",\"created_at\":\"2025-08-13 15:40:02\"}', NULL, '2025-08-13 08:40:02', '2025-08-13 08:40:02'),
('77cbd6eb-eb13-49f3-8c52-14b8e761cd58', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":141,\"order_code\":\"Q9NM8HQ1\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"70000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-28 11:25:55\"}', NULL, '2025-08-28 04:25:55', '2025-08-28 04:25:55'),
('784be527-0fa4-4bad-b2f4-045195bb3dc0', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010004\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:38', '2025-07-31 17:43:38'),
('7859c121-901c-41e0-89e9-17dfe5a5e87c', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":67,\"order_code\":\"IJGR9I5F\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #IJGR9I5F\",\"created_at\":\"2025-08-13 15:45:55\"}', NULL, '2025-08-13 08:45:55', '2025-08-13 08:45:55'),
('78e91a4c-aa2b-4dba-a3e2-f83239822f0c', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"V5G0DL0U\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 15:08:43', '2025-08-26 15:08:43'),
('78fedcec-0869-4805-8394-db62d2b70def', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"VNPHN32W\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:23', '2025-07-31 17:43:23'),
('796e989a-a54a-4382-af25-78b9fd96ca47', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010003\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:01', '2025-07-31 17:34:01'),
('79accf21-b917-436c-b7f2-fb9962a29600', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":91,\"order_code\":\"324IAODC\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #324IAODC c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:40:48', '2025-08-13 11:40:48'),
('79c31afc-75d5-4b30-9788-399fd3e0cb3b', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":87,\"order_code\":\"KQFUUZGD\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #KQFUUZGD c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"120000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:43:57', '2025-08-13 11:43:57'),
('79f29c9e-df21-46dc-a195-2ff85ec68178', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"IOCKUSDV\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:23', '2025-08-13 11:40:23'),
('7a3ac19a-4542-4908-97d6-13c74ad7d704', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":77,\"order_code\":\"XSHFEVPL\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #XSHFEVPL\",\"created_at\":\"2025-08-13 16:01:47\"}', NULL, '2025-08-13 09:01:47', '2025-08-13 09:01:47'),
('7a5c199a-6bd4-4a35-8d47-a277122b4565', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":97,\"order_code\":\"PXJDSRVW\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"183612.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-22 13:55:19\"}', NULL, '2025-08-22 06:55:19', '2025-08-22 06:55:19'),
('7aa7c452-46c3-4cc9-943f-6bcac1779611', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":55,\"order_code\":\"TLELKI6V\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"215765.50\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TLELKI6V\",\"created_at\":\"2025-08-01 11:44:14\"}', NULL, '2025-08-01 04:44:14', '2025-08-01 04:44:14'),
('7ad37ccf-951c-4e79-bc29-75cb56f0c4c7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010047\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:36', '2025-07-31 17:43:36'),
('7b1be578-76fa-496e-82ab-59291757f87e', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":109,\"order_code\":\"5EIS85E8\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 20:30:46\"}', NULL, '2025-08-26 13:30:46', '2025-08-26 13:30:46'),
('7b1ce21a-6cc1-43d3-81de-3620e30932f2', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"OG5LIBIV\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:47:09', '2025-08-13 11:47:09'),
('7c372399-c53f-4227-bb1d-4a59fa52e550', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WYTXRO25\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:55:25', '2025-08-26 13:55:25'),
('7cbbc20a-7e1b-4b45-8c83-4333cbeeaf25', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":72,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #JJJCXSIK\",\"created_at\":\"2025-08-13 15:53:57\"}', NULL, '2025-08-13 08:53:57', '2025-08-13 08:53:57'),
('7d76a5d6-306a-4afc-9d63-4390e3b80039', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":114,\"order_code\":\"YHQGXSSP\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #YHQGXSSP c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:08:21', '2025-08-26 14:08:21'),
('7d8e0a7b-547a-466e-bcff-2c55c66ac84b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"UW1QWAAZ\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:19:29', '2025-08-26 14:19:29'),
('7d98ea31-ad33-4eef-ba67-a4e45f0fb134', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 19, '{\"order_id\":100,\"order_code\":\"O8OVVGKO\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #O8OVVGKO c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"177892.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:03:36', '2025-08-26 12:03:36'),
('7df71302-e355-4254-9e0c-1bf453bcee45', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"611POPKM\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:34:43', '2025-08-26 12:34:43'),
('7e37506c-deb4-4370-8c9b-0525dc175ef5', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":63,\"customer_name\":\"\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YXLDZKXL\",\"created_at\":\"2025-08-13 15:38:07\"}', NULL, '2025-08-13 08:38:07', '2025-08-13 08:38:07'),
('7ee4e5de-143e-42c4-9d09-fe4940f4c0a2', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"324IAODC\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:43', '2025-08-13 11:40:43'),
('7f1258ef-adaa-48e9-8745-e4a76ad33539', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"in_transit\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:57', '2025-08-01 04:45:57'),
('7fb25c1e-1fb9-42b8-b870-7a8fe989bf4a', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 1, '{\"order_id\":78,\"order_code\":null,\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"170000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:05:20\"}', NULL, '2025-08-13 09:05:20', '2025-08-13 09:05:20'),
('7fbff383-513a-442e-ba2c-7432f9f35e66', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":128,\"order_code\":\"6QDAFNBC\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"55000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-27 15:20:17\"}', NULL, '2025-08-27 08:20:17', '2025-08-27 08:20:17'),
('808bafd5-dc98-4c81-91c0-4132b0084b3f', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":108,\"order_code\":\"1QOSFPND\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #1QOSFPND c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"205000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 13:29:55', '2025-08-26 13:29:55'),
('809d7794-55ea-4872-bd60-948d2f7238db', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":62,\"order_code\":\"PTWI78OF\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #PTWI78OF\",\"created_at\":\"2025-08-05 23:55:37\"}', NULL, '2025-08-05 16:55:37', '2025-08-05 16:55:37'),
('80ad6e89-5832-4ae1-976c-e055a978e75a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"3D6ZZFTE\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:13:08', '2025-08-26 12:13:08'),
('80f00496-89ad-487b-9c83-d3fd5bc14563', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"waiting_driver_pick_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:42:16', '2025-08-01 04:42:16'),
('81255f60-7693-455c-8716-c46d4e709c79', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"HJNEH3LC\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:16', '2025-08-13 11:40:16'),
('81577380-b1cd-47a1-b1b1-23c1902a3b7f', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010015\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:37', '2025-07-31 17:43:37'),
('816980dc-bd83-45f6-91e3-8dd336e6235f', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":103,\"order_code\":\"3D6ZZFTE\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #3D6ZZFTE c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:13:24', '2025-08-26 12:13:24'),
('8223b6e2-d9f2-484f-9aa2-209879cd0ace', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"GVXPSOSO\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:14:57', '2025-08-26 14:14:57'),
('822e8f03-cd8c-43bf-828a-a6a54468d3d0', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"ZX2EI2D3\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:46:52', '2025-08-13 11:46:52'),
('8259f02f-3f9f-43e2-b2e9-b24ae431c07e', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 15, '{\"order_id\":57,\"order_code\":\"ULCIHYB1\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #ULCIHYB1 c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"214595.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-03 17:56:29', '2025-08-03 17:56:29'),
('828e7046-d484-461c-ab12-729aeef0100b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010018\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:03', '2025-07-31 17:34:03'),
('82f48e1e-06e6-439f-ad6e-4b3b617fc577', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":51,\"order_code\":\"WXBYO8KA\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"181134.50\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #WXBYO8KA\",\"created_at\":\"2025-08-01 11:27:52\"}', NULL, '2025-08-01 04:27:52', '2025-08-01 04:27:52'),
('83aa833b-8ce4-4130-9879-ac96edee07dd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"5EIS85E8\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:31:09', '2025-08-26 13:31:09'),
('840b75e7-3bff-4b76-ac88-37fe527dd4eb', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":110,\"order_code\":\"WQNH65ML\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #WQNH65ML c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"134789.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 13:54:30', '2025-08-26 13:54:30'),
('849a63bb-3224-483d-9f8c-8d852cce85eb', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 2, '{\"order_id\":122,\"order_code\":null,\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi # c\\u1ea7n giao\",\"delivery_address\":\"Test Address\",\"total_amount\":\"100000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Administrator\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:28:14', '2025-08-26 14:28:14'),
('84fe2324-9628-4b96-943b-717111be2e4d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010006\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:00', '2025-07-31 17:34:00'),
('85456be6-cebd-46a7-bfb5-9a209c667bd4', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":91,\"order_code\":\"324IAODC\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #324IAODC c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:40:49', '2025-08-13 11:40:49'),
('8555fc73-785f-45e4-8ff2-0169cc5e8302', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":66,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ENB1K8AL\",\"created_at\":\"2025-08-13 15:40:02\"}', NULL, '2025-08-13 08:40:02', '2025-08-13 08:40:02'),
('85d89283-2637-471c-89a9-1d2d39bcf85a', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":114,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YHQGXSSP\",\"created_at\":\"2025-08-26 21:07:56\"}', NULL, '2025-08-26 14:07:56', '2025-08-26 14:07:56'),
('86516067-03d0-43bc-9a60-a69039c962a1', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":999999,\"customer_name\":\"Administrator\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TEST1755074636\",\"created_at\":\"2025-08-13 15:43:56\"}', NULL, '2025-08-13 08:43:56', '2025-08-13 08:43:56'),
('869ad28d-b570-4a09-8dd5-061dd6df5026', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":71,\"order_code\":\"X2QCKMRW\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"184595.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #X2QCKMRW\",\"created_at\":\"2025-08-01 02:19:40\"}', NULL, '2025-07-31 19:19:40', '2025-07-31 19:19:40'),
('869ff6ed-c69e-45ff-85ac-c03a575b66d7', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":97,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #PXJDSRVW\",\"created_at\":\"2025-08-22 13:55:19\"}', NULL, '2025-08-22 06:55:19', '2025-08-22 06:55:19'),
('86a4a1f2-ab61-4a83-9128-e3e51843ea95', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":85,\"order_code\":\"9CKNDKCJ\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #9CKNDKCJ c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"235000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:47:02', '2025-08-13 11:47:02'),
('86dca61e-8f8a-4282-92a8-206463481d2b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"12MQBA9U\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:33:55', '2025-08-26 14:33:55'),
('86ecae11-b7cc-409c-97b1-f7e1d96f81c0', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"NWTSY52X\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:57:04', '2025-08-26 13:57:04'),
('874577ee-e119-47c9-aa80-97a36f80e319', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":101,\"order_code\":\"ARC5ZZGN\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"180292.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 19:01:46\"}', NULL, '2025-08-26 12:01:46', '2025-08-26 12:01:46'),
('876c5d39-1ea4-410c-a00e-350f74913178', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":132,\"order_code\":\"94R320DK\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh H\\u00e0 \\u0110\\u00f4ng\",\"total_amount\":\"2386860.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #94R320DK\",\"created_at\":\"2025-08-27 15:28:39\"}', NULL, '2025-08-27 08:28:39', '2025-08-27 08:28:39'),
('87746a2f-3fab-4a90-a88f-aa166b2a94fa', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"12MQBA9U\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:33:55', '2025-08-26 14:33:55'),
('8885c3f5-5f99-43ad-b8ae-6ea0ddf68f8e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"1RAF2O8S\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 12:51:59', '2025-08-04 12:51:59');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('88b299b0-28a4-4ad2-a13c-0b4172ff8b82', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":76,\"order_code\":\"UKFAMTWX\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"139789.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #UKFAMTWX\",\"created_at\":\"2025-08-13 16:01:22\"}', NULL, '2025-08-13 09:01:22', '2025-08-13 09:01:22'),
('89199479-938e-4e01-903a-16d22f67b0ef', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 19, '{\"order_code\":\"O8OVVGKO\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:03:36', '2025-08-26 12:03:36'),
('894100fb-fd53-4cd9-84c7-e839360ea95b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"UYUIPPUQ\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 09:23:24', '2025-08-04 09:23:24'),
('895f21af-ab95-48b5-a823-b6a38369842a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:41:14', '2025-08-01 04:41:14'),
('895f8001-a987-4b89-aea3-f5c8990205a8', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"GFZ1SGWF\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:36:26', '2025-08-13 11:36:26'),
('896476f2-e1d9-409f-98aa-aed343c98475', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"MUYZEWYW\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 19:32:23', '2025-07-31 19:32:23'),
('898e9d03-8579-40f2-82c3-30f23653cfcd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HJNEH3LC\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:16', '2025-08-13 11:40:16'),
('89dbf0bc-84ad-4667-b34c-90a516deb997', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":120,\"order_code\":\"U09K1EUQ\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #U09K1EUQ\",\"created_at\":\"2025-08-26 21:20:56\"}', NULL, '2025-08-26 14:20:56', '2025-08-26 14:20:56'),
('8afe963f-e327-4853-89a8-6455c8ed9366', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"ARC5ZZGN\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:03:36', '2025-08-26 12:03:36'),
('8b051560-f369-4ea2-8f95-0db55dd7872f', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WQNH65ML\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:54:29', '2025-08-26 13:54:29'),
('8b40b04d-85ec-414d-becb-401b818ee706', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"driver_confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 07:58:51', '2025-08-01 07:58:51'),
('8b641505-aec4-4b26-9416-b518bc9ecfcb', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"LYAIRRA8\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 12:51:11', '2025-08-04 12:51:11'),
('8bad5a8e-5292-4f6f-a346-a62884b076b3', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010008\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 13:29:19', '2025-08-04 13:29:19'),
('8bdb803b-82b3-43d4-b5b8-75a6dd8d631c', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":110,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #WQNH65ML\",\"created_at\":\"2025-08-26 20:53:52\"}', NULL, '2025-08-26 13:53:52', '2025-08-26 13:53:52'),
('8c4b8768-5fc4-4575-8224-24d79e83c0f8', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"ZPA1N0QR\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:25:09', '2025-08-26 12:25:09'),
('8cabdf64-337f-465b-862f-57d6155496d4', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":99,\"order_code\":\"C8LYY3ES\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"150402.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-22 18:03:40\"}', NULL, '2025-08-22 11:03:40', '2025-08-22 11:03:40'),
('8cc59d25-dd8f-462d-9570-a666c8d9997e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"TLELKI6V\",\"status\":\"item_received\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: item_received\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:46:34', '2025-08-01 04:46:34'),
('8d9f0c84-71cc-4786-9e00-9b134078f35c', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":98,\"customer_name\":\"\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #NGHE3KH7\",\"created_at\":\"2025-08-22 17:22:04\"}', NULL, '2025-08-22 10:22:04', '2025-08-22 10:22:04'),
('8dac85db-5cd7-4cca-a875-e4cdaf983d06', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 19, '{\"order_id\":101,\"order_code\":\"ARC5ZZGN\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #ARC5ZZGN c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"180292.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:03:37', '2025-08-26 12:03:37'),
('8e0c3631-6bea-4dd4-902f-0d53c3d7816d', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":140,\"order_code\":\"IT5O9ZK6\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"70000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #IT5O9ZK6\",\"created_at\":\"2025-08-28 11:25:35\"}', NULL, '2025-08-28 04:25:35', '2025-08-28 04:25:35'),
('8e296115-b2f4-4cab-ac30-ad995d90df88', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":75,\"order_code\":\"7G2YN8XN\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"134789.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 02:27:34\"}', NULL, '2025-07-31 19:27:34', '2025-07-31 19:27:34'),
('8e2c0619-c2c8-490f-ad46-cb5c21bc6d5a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"VNPHN32W\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:23', '2025-07-31 17:43:23'),
('8e5ab3a4-6ae2-4262-a4ff-b8ced8fa73c2', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010042\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:02', '2025-07-31 17:34:02'),
('8e5ce288-d37c-46f1-83f4-1ff504d0b9df', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":61,\"order_code\":\"1RAF2O8S\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-04 19:51:18\"}', NULL, '2025-08-04 12:51:18', '2025-08-04 12:51:18'),
('8e6d6f6d-e093-4a6c-9fac-4ecb2c92f946', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"VNPHN32W\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:45', '2025-07-31 17:43:45'),
('8edfce95-c135-41c1-9043-210d1a77f334', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"Z6OYHN7O\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:02:48', '2025-08-26 14:02:48'),
('8f191d36-d102-4542-83ae-2af8fe60603f', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":100,\"order_code\":\"O8OVVGKO\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"177892.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #O8OVVGKO\",\"created_at\":\"2025-08-25 22:58:31\"}', NULL, '2025-08-25 15:58:31', '2025-08-25 15:58:31'),
('8f2a16c0-4e79-421e-91df-af4ff0fb3000', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":67,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YFWJSWZA\",\"created_at\":\"2025-08-01 01:52:43\"}', NULL, '2025-07-31 18:52:43', '2025-07-31 18:52:43'),
('8f355418-6929-4543-bea5-d89aceea7aa7', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":82,\"order_code\":\"XVMERIVL\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:20:17\"}', NULL, '2025-08-13 09:20:17', '2025-08-13 09:20:17'),
('909eb315-dab3-4319-8e64-5a7ce0fc7438', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":126,\"order_code\":\"US3G6RU4\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"branch_name\":\"Chi nh\\u00e1nh C\\u1ea7u Gi\\u1ea5y\",\"total_amount\":\"126456.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #US3G6RU4\",\"created_at\":\"2025-08-27 15:10:57\"}', NULL, '2025-08-27 08:10:57', '2025-08-27 08:10:57'),
('90b69bc0-5cbf-4861-9394-f42731a82053', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"GVXPSOSO\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:14:57', '2025-08-26 14:14:57'),
('90bdfb08-e6ff-45c7-99cf-96b4df37495d', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":108,\"order_code\":\"1QOSFPND\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"205000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #1QOSFPND\",\"created_at\":\"2025-08-26 20:29:30\"}', NULL, '2025-08-26 13:29:30', '2025-08-26 13:29:30'),
('91111f6e-b204-4e3c-82a3-c3c85f292d77', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":64,\"order_code\":\"KWJQPFFM\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"180402.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #KWJQPFFM\",\"created_at\":\"2025-08-01 01:40:37\"}', NULL, '2025-07-31 18:40:37', '2025-07-31 18:40:37'),
('914e49f3-34a1-48b2-b18d-e088a57ed1f7', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":76,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #O2XO94UD\",\"created_at\":\"2025-08-01 02:29:29\"}', NULL, '2025-07-31 19:29:29', '2025-07-31 19:29:29'),
('91d01c73-c473-410e-aeb9-40a262ea70e9', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"3D6ZZFTE\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:13:24', '2025-08-26 12:13:24'),
('9296892a-d415-4b10-9543-49fe089337f5', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010042\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:02', '2025-07-31 17:34:02'),
('93066650-139f-4536-be10-09a3aa2a6900', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"Z6OYHN7O\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:03:05', '2025-08-26 14:03:05'),
('9335da7e-a9b9-4241-b395-7d1729c6b084', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":130,\"order_code\":\"5HJPDXZC\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh H\\u00e0 \\u0110\\u00f4ng\",\"total_amount\":\"100000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #5HJPDXZC\",\"created_at\":\"2025-08-27 15:23:10\"}', NULL, '2025-08-27 08:23:10', '2025-08-27 08:23:10'),
('9363b83f-d024-49a2-87f9-7b420f126054', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 19, '{\"order_id\":99,\"order_code\":\"C8LYY3ES\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #C8LYY3ES c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"150402.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-22 11:03:58', '2025-08-22 11:03:58'),
('93b8024f-8ba7-434f-b7c2-05c14c4b8c1b', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":55,\"order_code\":\"TLELKI6V\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"215765.50\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 11:44:14\"}', NULL, '2025-08-01 04:44:14', '2025-08-01 04:44:14'),
('93f2de1f-6f6b-4191-a131-f9d6d9b81644', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"Z6OYHN7O\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:03:05', '2025-08-26 14:03:05'),
('9450c2b5-d1ea-4fc2-a8cd-4df389671986', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"in_transit\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 08:06:25', '2025-08-01 08:06:25'),
('94842c84-612e-4317-bfa2-01bfe73ea224', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":125,\"order_code\":\"V5G0DL0U\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #V5G0DL0U c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 15:09:00', '2025-08-26 15:09:00'),
('9491b5ec-7550-49be-9741-5194b62dc544', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"PTWI78OF\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-05 16:55:52', '2025-08-05 16:55:52'),
('94e09212-e869-43cb-b416-67d3cf714c3c', 'App\\Notifications\\NoDriverAvailable', 'App\\Models\\Branch', 1, '{\"order_id\":107,\"order_code\":\"FAGMNV0T\",\"message\":\"Kh\\u00f4ng t\\u00ecm \\u0111\\u01b0\\u1ee3c t\\u00e0i x\\u1ebf cho \\u0111\\u01a1n h\\u00e0ng #FAGMNV0T\",\"reason\":\"Kh\\u00f4ng c\\u00f3 t\\u00e0i x\\u1ebf ph\\u00f9 h\\u1ee3p sau nhi\\u1ec1u l\\u1ea7n th\\u1eed\",\"customer_name\":\"Luminous\",\"total_amount\":\"175000.00\",\"type\":\"no_driver_available\"}', NULL, '2025-08-26 13:27:47', '2025-08-26 13:27:47'),
('9668cdc4-79ea-4a34-b975-4fbc92aab9f3', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":79,\"order_code\":\"XDAU7BXG\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"120000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:05:20\"}', NULL, '2025-08-13 09:05:20', '2025-08-13 09:05:20'),
('96b65bb9-22eb-4301-b181-531ea499b32d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"E2O0XALF\",\"status\":\"awaiting_confirmation\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 20:14:13', '2025-07-31 20:14:13'),
('96dffbb5-e852-4efa-b0df-57f0c342b328', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"VNPHN32W\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:45', '2025-07-31 17:43:45'),
('96fcc7bc-856e-4174-a8df-f92ac6479b4e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WXBYO8KA\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-03 17:58:51', '2025-08-03 17:58:51'),
('97020210-2ebe-4580-967d-6ffbffb765e8', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":99,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #C8LYY3ES\",\"created_at\":\"2025-08-22 18:03:40\"}', NULL, '2025-08-22 11:03:40', '2025-08-22 11:03:40'),
('97d372b2-b353-4cf6-91ae-40bcdefd8753', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"CXCXUHH1\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:11:28', '2025-08-26 12:11:28'),
('97fb2d37-2b0b-4f2e-bf87-2ad952986157', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010015\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:37', '2025-07-31 17:43:37'),
('97fbe873-06dd-41e1-b42d-ff02ed91085b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"in_transit\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 08:06:25', '2025-08-01 08:06:25'),
('99302da2-a5af-4cfe-a414-ebf836352e44', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":79,\"order_code\":\"1RF3S26N\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"90630.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #1RF3S26N\",\"created_at\":\"2025-08-01 02:38:41\"}', NULL, '2025-07-31 19:38:41', '2025-07-31 19:38:41'),
('99890e4d-264d-4c05-a79a-1413755f568b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"LYHP2NYJ\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:32:45', '2025-07-31 17:32:45'),
('998dd37a-5f90-4505-b7c2-93f0c222ee99', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"OTMUAHOH\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:18:34', '2025-08-26 13:18:34'),
('99a4a67a-3532-44e5-908b-ece56c59f831', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":75,\"order_code\":\"O4PG7XCA\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:01:21\"}', NULL, '2025-08-13 09:01:21', '2025-08-13 09:01:21'),
('9bd1efb7-2edd-43e0-a0cd-ee194cfd43e8', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 20, '{\"order_id\":98,\"order_code\":\"NGHE3KH7\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #NGHE3KH7 c\\u1ea7n giao\",\"delivery_address\":\"Hang Bun Street, Nguy\\u1ec5n Trung Tr\\u1ef1c, 11100, Ba \\u0110\\u00ecnh, H\\u00e0 N\\u1ed9i, Vi\\u1ec7t Nam, Thanh L\\u00e2m, M\\u00ea Linh, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"47272.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-22 10:51:33', '2025-08-22 10:51:33'),
('9c7a55da-e058-423e-9447-0f7a6148b641', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"FAGMNV0T\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:24:45', '2025-08-26 13:24:45'),
('9cd90733-8600-4e24-b611-65ab7ba8aea8', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 21, '{\"order_code\":\"9CKNDKCJ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:47:02', '2025-08-13 11:47:02'),
('9cdb6643-c8c0-4e52-9830-c169ee05dd85', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":118,\"order_code\":\"GMTJZNIG\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #GMTJZNIG c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:18:27', '2025-08-26 14:18:27'),
('9cf9b3b7-09a1-4b57-a8bd-8168d1fb0b6a', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":85,\"order_code\":\"9CKNDKCJ\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #9CKNDKCJ c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"235000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:47:03', '2025-08-13 11:47:03'),
('9d5bb2d0-0279-45ef-9e98-1eb7c49219db', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":111,\"order_code\":\"WYTXRO25\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #WYTXRO25\",\"created_at\":\"2025-08-26 20:54:58\"}', NULL, '2025-08-26 13:54:58', '2025-08-26 13:54:58'),
('9d606889-dc3e-4f62-8f51-05a44b3a9b44', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"762I5JSC\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:27', '2025-08-13 11:40:27'),
('9df553df-3d80-48b3-a56c-de0987ff63b8', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":58,\"order_code\":\"VOSSMND2\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"528674.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #VOSSMND2\",\"created_at\":\"2025-08-01 14:43:11\"}', NULL, '2025-08-01 07:43:11', '2025-08-01 07:43:11'),
('9e0402c9-5317-438e-a3bf-5de04eda59eb', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 07:48:46', '2025-08-01 07:48:46'),
('9e296306-b793-4d76-84c8-2b6f2bc1a4d7', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":95,\"order_code\":\"HJNEH3LC\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 17:24:37\"}', NULL, '2025-08-13 10:24:37', '2025-08-13 10:24:37'),
('9e9f98ea-924e-4c9b-85c5-da066ba14916', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010019\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:37', '2025-07-31 17:43:37'),
('9ea5dd31-4f51-4002-b819-af7bea976609', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":53,\"order_code\":\"UMK2KK8U\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175135.50\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #UMK2KK8U\",\"created_at\":\"2025-08-01 11:31:15\"}', NULL, '2025-08-01 04:31:15', '2025-08-01 04:31:15'),
('9ece36d8-2122-44aa-b854-fb56daee09a4', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":52,\"order_code\":\"LYHP2NYJ\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"110000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #LYHP2NYJ\",\"created_at\":\"2025-08-01 00:32:12\"}', NULL, '2025-07-31 17:32:12', '2025-07-31 17:32:12'),
('9f1ec4f7-f200-4dc0-9cc3-52bf76efd70c', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"Z6OYHN7O\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:03:05', '2025-08-26 14:03:05'),
('9f46be0f-97ab-4471-bb30-eab6adabd430', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"waiting_driver_pick_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:42:16', '2025-08-01 04:42:16'),
('9fd9ee37-c0f0-4cc6-8c65-6d4ce491db27', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"3D6ZZFTE\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:13:24', '2025-08-26 12:13:24'),
('a1afeb48-f86d-410a-940d-a4536bf2469a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"2HZF161D\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:39:42', '2025-07-31 17:39:42'),
('a1cf18ae-8fa3-4f47-80d3-d6b7d484e83f', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":74,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #AAOMXSZN\",\"created_at\":\"2025-08-01 02:25:39\"}', NULL, '2025-07-31 19:25:39', '2025-07-31 19:25:39'),
('a1d5d71e-c2bb-4f91-b93c-c71adea6a5be', 'App\\Notifications\\NewChatMessageNotification', 'App\\Models\\User', 1, '{\"message\":\"Tin nh\\u1eafn m\\u1edbi t\\u1eeb Luminous\",\"content\":\"cc\",\"conversation_id\":2,\"sender_name\":\"Luminous\",\"title\":\"Tin nh\\u1eafn m\\u1edbi\",\"created_at\":\"2025-08-29 23:46:02\"}', NULL, '2025-08-29 16:46:02', '2025-08-29 16:46:02'),
('a21ed37a-dd65-45b8-91a0-d492ea1e4984', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":73,\"order_code\":\"TEST1755075357\",\"customer_name\":\"Administrator\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"100000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TEST1755075357\",\"created_at\":\"2025-08-13 15:55:57\"}', NULL, '2025-08-13 08:55:57', '2025-08-13 08:55:57'),
('a268d1fd-e678-467c-bd4c-6f0c6e6f5530', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"1RF3S26N\",\"status\":\"awaiting_confirmation\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 19:43:22', '2025-07-31 19:43:22'),
('a2aad744-7f56-4832-96c0-52d9027d88da', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":104,\"order_code\":\"ZPA1N0QR\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ZPA1N0QR\",\"created_at\":\"2025-08-26 19:25:04\"}', NULL, '2025-08-26 12:25:04', '2025-08-26 12:25:04'),
('a32680de-b2a5-4738-89ad-efbe44e28b03', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":51,\"order_code\":\"AXV23WJE\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh H\\u00e0 \\u0110\\u00f4ng\",\"total_amount\":\"330000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #AXV23WJE\",\"created_at\":\"2025-08-01 00:30:46\"}', NULL, '2025-07-31 17:30:46', '2025-07-31 17:30:46'),
('a3c7c80e-9697-4a54-b5f2-fc96a1af1ff3', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":103,\"order_code\":\"3D6ZZFTE\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 19:12:54\"}', NULL, '2025-08-26 12:12:54', '2025-08-26 12:12:54'),
('a45f5859-f08d-4472-9a75-0faedbd0c311', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":999999,\"customer_name\":\"Administrator\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TEST1755074605\",\"created_at\":\"2025-08-13 15:43:25\"}', NULL, '2025-08-13 08:43:25', '2025-08-13 08:43:25'),
('a4dcb5f4-6d77-409c-90e7-fc471ce92ec7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"ILXKQJ65\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:35:25', '2025-08-26 14:35:25'),
('a53d3d75-e18a-494b-8b09-cc58181731a0', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"WQNH65ML\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:54:29', '2025-08-26 13:54:29'),
('a5a36906-4f40-40ec-b138-1af2120a4ea7', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":62,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #PTWI78OF\",\"created_at\":\"2025-08-05 23:55:37\"}', NULL, '2025-08-05 16:55:37', '2025-08-05 16:55:37'),
('a5c82921-f9f0-4385-93c9-d417f981e8cf', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":74,\"order_code\":\"AGPPDFB9\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #AGPPDFB9\",\"created_at\":\"2025-08-13 15:56:34\"}', NULL, '2025-08-13 08:56:34', '2025-08-13 08:56:34'),
('a5ff43a1-75e0-4b48-ad46-b6ab27234bc8', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":55,\"order_code\":\"TLELKI6V\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #TLELKI6V c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Tr\\u1ea7n H\\u01b0ng \\u0110\\u1ea1o, Ho\\u00e0n Ki\\u1ebfm, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"215765.50\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-01 04:45:05', '2025-08-01 04:45:05'),
('a652dec7-e5c0-4d39-91ac-fef23c55544b', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":116,\"order_code\":\"GVXPSOSO\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"290000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #GVXPSOSO\",\"created_at\":\"2025-08-26 21:14:30\"}', NULL, '2025-08-26 14:14:30', '2025-08-26 14:14:30'),
('a68ada3e-1f45-4420-be74-97f2526cfe6d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"PTWI78OF\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-05 16:56:03', '2025-08-05 16:56:03'),
('a6cdcc13-be9a-44e8-b999-42a5ec48492b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"1QOSFPND\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:29:55', '2025-08-26 13:29:55'),
('a7bafca8-36a5-417d-baa8-acacd6fabdd1', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"driver_confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:42:03', '2025-08-01 04:42:03'),
('a7cce21f-d92c-4076-ac1b-dd19643b6001', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"6Z3IC24X\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:11:27', '2025-08-26 14:11:27'),
('a7f2012f-eedb-4dd2-b71b-892aaedf6c1e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HJNEH3LC\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:12', '2025-08-13 11:40:12'),
('a83acd89-0e37-457a-be54-227c0b383bc1', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"FAGMNV0T\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:24:45', '2025-08-26 13:24:45'),
('a8f85589-9cfc-4ca5-bf18-232cf9d31620', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":116,\"order_code\":\"GVXPSOSO\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"290000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 21:14:30\"}', NULL, '2025-08-26 14:14:30', '2025-08-26 14:14:30'),
('a934aa60-cad8-40e5-9a90-25da07eaa390', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 21, '{\"order_code\":\"YYXHY0OV\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:41:01', '2025-08-13 11:41:01'),
('a9494cea-abcc-40f4-a2b3-edf2a8ca66bc', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":56,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #IIOSZEBW\",\"created_at\":\"2025-08-01 14:10:30\"}', NULL, '2025-08-01 07:10:30', '2025-08-01 07:10:30'),
('aa082cec-8598-4b32-b321-b8b081c00bb4', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":89,\"order_code\":\"6WJXFNQ0\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"120000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:51:05\"}', NULL, '2025-08-13 09:51:05', '2025-08-13 09:51:05'),
('aa78e7c7-3a34-4d9b-8a59-9485c904c303', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":112,\"order_code\":\"NWTSY52X\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #NWTSY52X\",\"created_at\":\"2025-08-26 20:56:33\"}', NULL, '2025-08-26 13:56:33', '2025-08-26 13:56:33'),
('aa87f749-ace3-4208-8bee-4b385817811f', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":106,\"order_code\":\"OTMUAHOH\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #OTMUAHOH\",\"created_at\":\"2025-08-26 20:17:58\"}', NULL, '2025-08-26 13:17:58', '2025-08-26 13:17:58'),
('aaf466f3-b313-4ac8-990c-b5b4c994ceb8', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 21, '{\"order_code\":\"NBFN7JYR\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:32', '2025-08-13 11:40:32'),
('aafbb70e-610c-4406-b742-048006b5d9bb', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":70,\"customer_name\":\"Administrator\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TEST1755075157\",\"created_at\":\"2025-08-13 15:52:37\"}', NULL, '2025-08-13 08:52:37', '2025-08-13 08:52:37'),
('ab0fd121-2811-4b7d-8532-6b12f8723277', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 15, '{\"order_id\":59,\"order_code\":\"UYUIPPUQ\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #UYUIPPUQ c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"214820.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-04 09:23:34', '2025-08-04 09:23:34'),
('ab69ccba-673a-487e-817b-f8f7d3dfd500', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"ZPA1N0QR\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:25:09', '2025-08-26 12:25:09'),
('abfc7f6a-b9d0-4323-922c-9c6d40362ae4', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"IOCKUSDV\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:27', '2025-08-13 11:40:27'),
('ac4d9ab2-0a36-41f5-8189-8fd2b3e6bbb8', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":118,\"order_code\":\"GMTJZNIG\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #GMTJZNIG\",\"created_at\":\"2025-08-26 21:18:05\"}', NULL, '2025-08-26 14:18:05', '2025-08-26 14:18:05'),
('acc767f1-790b-4fc8-81a0-d5ff7277358e', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":119,\"order_code\":\"UW1QWAAZ\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #UW1QWAAZ\",\"created_at\":\"2025-08-26 21:19:18\"}', NULL, '2025-08-26 14:19:18', '2025-08-26 14:19:18'),
('ad2445fa-78bb-4946-b5fa-7b58e023d1d1', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"V5G0DL0U\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 15:08:59', '2025-08-26 15:08:59'),
('ad41e561-9c9f-4ade-9ba4-c990a67097fe', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"6WJXFNQ0\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:18', '2025-08-13 11:43:18'),
('ad4ea593-d669-48e1-9444-5386f94aedcb', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":58,\"order_code\":\"VOSSMND2\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #VOSSMND2 c\\u1ea7n giao\",\"delivery_address\":\"V\\u00e2n Canh, Quang Trung, \\u0110\\u1ed1ng \\u0110a, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"528674.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-01 07:48:52', '2025-08-01 07:48:52'),
('ae10c456-185a-44e5-985c-763074b8b015', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":113,\"order_code\":\"Z6OYHN7O\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #Z6OYHN7O\",\"created_at\":\"2025-08-26 21:02:42\"}', NULL, '2025-08-26 14:02:42', '2025-08-26 14:02:42'),
('ae11120b-ffc8-4b59-9e75-b33a1db7368f', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"in_transit\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:42:30', '2025-08-01 04:42:30');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('ae77e234-222b-42af-a0e5-e2da5c706394', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"LYAIRRA8\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 12:51:11', '2025-08-04 12:51:11'),
('ae8d918b-3889-42c5-bb9a-6d765ac95b11', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"NGHE3KH7\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-22 10:51:23', '2025-08-22 10:51:23'),
('ae9aaf93-8776-4987-b8be-a77c2830859d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"in_transit\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:42:30', '2025-08-01 04:42:30'),
('af39da03-bb1c-4d35-96c0-59190d97f741', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WTQMXWR9\",\"status\":\"driver_picked_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:42:24', '2025-08-01 04:42:24'),
('af469fd8-473d-4806-bad4-3cdabfc11fc1', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":81,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #OBUX3YUN\",\"created_at\":\"2025-08-13 16:07:48\"}', NULL, '2025-08-13 09:07:48', '2025-08-13 09:07:48'),
('b057d0cd-cec4-44db-b410-6bdd9bd5f793', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010040\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:01', '2025-07-31 17:34:01'),
('b096a937-30fd-4e60-b270-39c739a8600e', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 3, '{\"order_id\":132,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #94R320DK\",\"created_at\":\"2025-08-27 15:28:39\"}', NULL, '2025-08-27 08:28:39', '2025-08-27 08:28:39'),
('b0bf76e2-ac11-49d3-9cc5-2ba956ded18b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"YHQGXSSP\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:08:03', '2025-08-26 14:08:03'),
('b23c7837-73bf-4d96-bf79-78800b963875', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"611POPKM\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:33:57', '2025-08-26 12:33:57'),
('b2af546c-1741-447d-a61a-e3f711c4b7a1', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 3, '{\"order_id\":131,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ULONECMR\",\"created_at\":\"2025-08-27 15:24:25\"}', NULL, '2025-08-27 08:24:25', '2025-08-27 08:24:25'),
('b2e7a719-662b-40e2-8753-5842cfffffc1', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"1RF3S26N\",\"status\":\"awaiting_confirmation\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 19:43:22', '2025-07-31 19:43:22'),
('b328ee3c-bf67-471e-b5c4-5fcb2fba81a7', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":86,\"order_code\":\"ZX2EI2D3\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #ZX2EI2D3 c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:46:52', '2025-08-13 11:46:52'),
('b34e1608-208f-4988-8173-2e0b1100fc04', 'App\\Notifications\\NoDriverAvailable', 'App\\Models\\Branch', 1, '{\"order_id\":53,\"order_code\":\"UMK2KK8U\",\"message\":\"Kh\\u00f4ng t\\u00ecm \\u0111\\u01b0\\u1ee3c t\\u00e0i x\\u1ebf cho \\u0111\\u01a1n h\\u00e0ng #UMK2KK8U\",\"reason\":\"Thi\\u1ebfu th\\u00f4ng tin \\u0111\\u1ecba ch\\u1ec9 giao h\\u00e0ng\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"total_amount\":\"175135.50\",\"type\":\"no_driver_available\"}', NULL, '2025-08-01 04:31:51', '2025-08-01 04:31:51'),
('b3ccd4da-fcae-45ca-a07b-78e0fe95b304', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":139,\"order_code\":\"7XC3TFXN\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"70000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-28 11:25:35\"}', NULL, '2025-08-28 04:25:35', '2025-08-28 04:25:35'),
('b3dca39f-a422-4b01-bedd-5166464a19a7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"IOCKUSDV\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:27', '2025-08-13 11:40:27'),
('b3f48933-62e1-47b4-9f24-7c2079646f9d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"9CKNDKCJ\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:46:58', '2025-08-13 11:46:58'),
('b41d1046-550c-43f2-b67d-f9d65de2bc75', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"V5G0DL0U\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 15:08:59', '2025-08-26 15:08:59'),
('b498b23a-040b-41e0-9b59-da82542773a6', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"driver_picked_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:45', '2025-08-01 04:45:45'),
('b4edf849-83f9-48d8-963e-cae65059d07a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 19, '{\"order_code\":\"C8LYY3ES\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-22 11:03:58', '2025-08-22 11:03:58'),
('b5931b0d-4406-443b-b4e0-dd3207279cbb', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 15, '{\"order_code\":\"ULCIHYB1\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-03 17:56:21', '2025-08-03 17:56:21'),
('b5d6a834-133a-4500-9732-f530d601951a', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":58,\"customer_name\":\"\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #VOSSMND2\",\"created_at\":\"2025-08-01 14:43:11\"}', NULL, '2025-08-01 07:43:11', '2025-08-01 07:43:11'),
('b5fe89ab-a585-4664-82f2-becbb7975239', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":101,\"order_code\":\"ARC5ZZGN\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"180292.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ARC5ZZGN\",\"created_at\":\"2025-08-26 19:01:46\"}', NULL, '2025-08-26 12:01:46', '2025-08-26 12:01:46'),
('b607965b-d0e2-4629-8463-f3c5d72c1451', 'App\\Notifications\\NoDriverAvailable', 'App\\Models\\Branch', 1, '{\"order_id\":107,\"order_code\":\"FAGMNV0T\",\"message\":\"Kh\\u00f4ng t\\u00ecm \\u0111\\u01b0\\u1ee3c t\\u00e0i x\\u1ebf cho \\u0111\\u01a1n h\\u00e0ng #FAGMNV0T\",\"reason\":\"Kh\\u00f4ng c\\u00f3 t\\u00e0i x\\u1ebf ph\\u00f9 h\\u1ee3p sau nhi\\u1ec1u l\\u1ea7n th\\u1eed\",\"customer_name\":\"Luminous\",\"total_amount\":\"175000.00\",\"type\":\"no_driver_available\"}', NULL, '2025-08-26 13:27:47', '2025-08-26 13:27:47'),
('b60feddd-e3ba-4ef4-b9ec-18f48838936f', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":64,\"order_code\":\"DAG9GEEL\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #DAG9GEEL\",\"created_at\":\"2025-08-13 15:38:53\"}', NULL, '2025-08-13 08:38:53', '2025-08-13 08:38:53'),
('b6714cfd-0352-4645-af8d-42ba93f4961e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"WYTXRO25\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:55:09', '2025-08-26 13:55:09'),
('b6763835-10f4-46fa-9c80-e42349dfcec0', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"YA8BZVOX\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:24', '2025-08-13 11:43:24'),
('b6a93497-9d0d-4084-bb4a-eea8df79edd7', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":75,\"order_code\":\"O4PG7XCA\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #O4PG7XCA\",\"created_at\":\"2025-08-13 16:01:21\"}', NULL, '2025-08-13 09:01:21', '2025-08-13 09:01:21'),
('b6cbdf99-5e8b-40eb-ad21-9a9bd644f907', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":83,\"order_code\":\"EVMSO7BH\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #EVMSO7BH\",\"created_at\":\"2025-08-13 16:22:57\"}', NULL, '2025-08-13 09:22:57', '2025-08-13 09:22:57'),
('b7546da7-2c52-4ed9-9b11-c4d3d82707ee', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"IPEJVETR\",\"status\":\"awaiting_confirmation\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 20:12:57', '2025-07-31 20:12:57'),
('b7885dc8-8560-448e-b7fd-3ea2f3ea9641', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"9CKNDKCJ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:47:02', '2025-08-13 11:47:02'),
('b7b03b78-b391-4f1d-a5fa-7eddb7dd0a24', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"YHQGXSSP\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:08:03', '2025-08-26 14:08:03'),
('b7b85973-5381-48b3-b1e6-480843d0607e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WQNH65ML\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:54:12', '2025-08-26 13:54:12'),
('b7fb05dd-de21-4cb4-93ae-4f9a18c5d98c', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":90,\"order_code\":\"YYXHY0OV\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YYXHY0OV\",\"created_at\":\"2025-08-13 16:52:12\"}', NULL, '2025-08-13 09:52:12', '2025-08-13 09:52:12'),
('b803fcba-a094-430b-9e23-ffcbee06b95a', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":91,\"order_code\":\"324IAODC\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #324IAODC\",\"created_at\":\"2025-08-13 16:54:16\"}', NULL, '2025-08-13 09:54:16', '2025-08-13 09:54:16'),
('b826845a-0262-4153-83af-b51ba8de2497', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"C8LYY3ES\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-22 11:03:48', '2025-08-22 11:03:48'),
('b84a6ae9-1d78-4ddb-9f95-4cc5cc67f82a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 21, '{\"order_code\":\"ZX2EI2D3\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:46:52', '2025-08-13 11:46:52'),
('b8a06913-39ed-4e32-944d-c94e2ce295ae', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":123,\"order_code\":\"12MQBA9U\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #12MQBA9U c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:34:30', '2025-08-26 14:34:30'),
('b98072d4-aea5-45d5-b212-ddbd91d8b7af', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":141,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #Q9NM8HQ1\",\"created_at\":\"2025-08-28 11:25:55\"}', NULL, '2025-08-28 04:25:55', '2025-08-28 04:25:55'),
('b9ae3648-7641-4c24-8df6-bf4759c6e3df', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":120,\"order_code\":\"U09K1EUQ\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #U09K1EUQ c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:21:25', '2025-08-26 14:21:25'),
('b9f9fe92-7c5d-4d15-850d-f60a009f8d57', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"UW1QWAAZ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:19:46', '2025-08-26 14:19:46'),
('ba78d3a3-2c52-4946-9c88-87ceddfdbecd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"Z6OYHN7O\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:02:48', '2025-08-26 14:02:48'),
('babfe87d-6f5a-4152-a6c8-9dc8db0fe5b0', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":130,\"order_code\":\"5HJPDXZC\",\"branch_name\":\"Chi nh\\u00e1nh H\\u00e0 \\u0110\\u00f4ng\",\"total_amount\":\"100000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-27 15:23:10\"}', NULL, '2025-08-27 08:23:10', '2025-08-27 08:23:10'),
('bb2e245a-e57d-4a14-bf4d-5787c656513e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"C8LYY3ES\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-22 11:03:58', '2025-08-22 11:03:58'),
('bbb96bbd-4203-4254-97e3-3b024413c077', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":114,\"order_code\":\"YHQGXSSP\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #YHQGXSSP c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:08:21', '2025-08-26 14:08:21'),
('bc1dd16a-bed5-41e0-a5fa-4b48e7b14c68', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":128,\"order_code\":\"6QDAFNBC\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"55000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #6QDAFNBC\",\"created_at\":\"2025-08-27 15:20:17\"}', NULL, '2025-08-27 08:20:17', '2025-08-27 08:20:17'),
('bc42cad9-c8e3-426c-a315-3f1687af2a8e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"324IAODC\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:48', '2025-08-13 11:40:48'),
('bcbdcbed-557a-4dbe-badf-347e5bff72dc', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":105,\"order_code\":\"611POPKM\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #611POPKM c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:34:43', '2025-08-26 12:34:43'),
('bce052fa-9f02-4df1-b4e4-fe95fb7d50d1', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010040\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:01', '2025-07-31 17:34:01'),
('bd21a4b1-f15e-406a-aa02-1ae9b8f5ae83', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010022\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 13:29:08', '2025-08-04 13:29:08'),
('bd4e253b-9819-4854-9d65-8b39e16eb992', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":96,\"order_code\":\"GFZ1SGWF\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 17:26:37\"}', NULL, '2025-08-13 10:26:37', '2025-08-13 10:26:37'),
('bd90028b-5b5d-48f3-a6fb-1d2fffca6664', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":52,\"order_code\":\"VFOPCA5S\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"131456.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #VFOPCA5S\",\"created_at\":\"2025-08-01 11:29:20\"}', NULL, '2025-08-01 04:29:20', '2025-08-01 04:29:20'),
('bd91a0d1-20c7-40d1-a129-d55e045f0e62', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":66,\"order_code\":\"ENB1K8AL\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:40:02\"}', NULL, '2025-08-13 08:40:02', '2025-08-13 08:40:02'),
('be6489af-3ffc-45d6-8d0d-69f8b0ffc1fc', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"IIOSZEBW\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-03 17:58:52', '2025-08-03 17:58:52'),
('be93f5ff-3c3d-46bc-ab8b-2034591eb80d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"UW1QWAAZ\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:19:29', '2025-08-26 14:19:29'),
('bea5743f-07a5-4e9e-9320-fdb047a0d652', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"ZPA1N0QR\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:31:16', '2025-08-26 12:31:16'),
('bf029d1d-cb35-473a-a189-c4626933a73b', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":93,\"order_code\":\"IOCKUSDV\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #IOCKUSDV c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"820000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:40:28', '2025-08-13 11:40:28'),
('bf66bbc1-1624-4cb3-95a5-b92a2425f229', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":71,\"customer_name\":\"Administrator\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TEST1755075198\",\"created_at\":\"2025-08-13 15:53:18\"}', NULL, '2025-08-13 08:53:18', '2025-08-13 08:53:18'),
('bf6afa14-f564-4f8e-b948-0c59cc7522e5', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":76,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #UKFAMTWX\",\"created_at\":\"2025-08-13 16:01:22\"}', NULL, '2025-08-13 09:01:22', '2025-08-13 09:01:22'),
('bf7bfdd4-3c07-47d3-a869-25459b4e05e6', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":54,\"order_code\":\"2HZF161D\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"215419.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #2HZF161D\",\"created_at\":\"2025-08-01 00:39:32\"}', NULL, '2025-07-31 17:39:32', '2025-07-31 17:39:32'),
('bf7ce34c-4ab3-4f58-a54b-70aee8170ff2', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010046\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:37', '2025-07-31 17:43:37'),
('bf91d4bb-e8bc-47a5-946e-f3374b661d34', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 15, '{\"order_id\":56,\"order_code\":\"IIOSZEBW\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #IIOSZEBW c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"432702.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-03 17:58:53', '2025-08-03 17:58:53'),
('bfa09e1a-8edd-4b35-b160-68b0da06410b', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":64,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #KWJQPFFM\",\"created_at\":\"2025-08-01 01:40:37\"}', NULL, '2025-07-31 18:40:37', '2025-07-31 18:40:37'),
('bfa69cd5-21d1-4af7-92b0-efe741121dc2', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"9CKNDKCJ\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:46:58', '2025-08-13 11:46:58'),
('bfad46e9-dfdf-4711-b87c-dc8351d21fd1', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"1QOSFPND\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:29:55', '2025-08-26 13:29:55'),
('c04c8917-a2fa-4741-9bf3-4e75bc2e8c3d', 'App\\Notifications\\BranchNewReviewNotification', 'App\\Models\\Branch', 1, '{\"type\":\"branch_new_review\",\"review_id\":272,\"user_id\":18,\"branch_id\":\"1\",\"message\":\"C\\u00f3 b\\u00ecnh lu\\u1eadn m\\u1edbi v\\u1ec1 \\\"Burger B\\u00f2 Teriyaki\\\" t\\u1ea1i chi nh\\u00e1nh.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/shop\\/products\\/burger-bo-teriyaki#review-272\"}', NULL, '2025-08-27 08:20:42', '2025-08-27 08:20:42'),
('c05967fb-bd33-4e13-9818-ee18082e017c', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":93,\"order_code\":\"IOCKUSDV\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #IOCKUSDV c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"820000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:40:29', '2025-08-13 11:40:29'),
('c08b704b-88d1-4123-ab51-45368d75c696', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010027\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 13:29:22', '2025-08-04 13:29:22'),
('c0c26ce2-89a1-4b9a-a52f-8ad932568e9d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010049\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 13:29:21', '2025-08-04 13:29:21'),
('c0d791fa-9069-4d2a-8013-0ed151501742', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"ILXKQJ65\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:35:44', '2025-08-26 14:35:44'),
('c0fe85d1-676e-4e66-9969-f87feb4153c5', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"NWTSY52X\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:57:04', '2025-08-26 13:57:04'),
('c129059c-960c-431e-9baf-c10b895ac623', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 15, '{\"order_code\":\"IIOSZEBW\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-03 17:58:52', '2025-08-03 17:58:52'),
('c1769fd8-7cfe-4068-804a-bc83355e38ee', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"ILXKQJ65\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:35:44', '2025-08-26 14:35:44'),
('c1b0da24-3cfe-4588-a0f8-9632457f8614', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":68,\"customer_name\":\"Administrator\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TEST1755075055\",\"created_at\":\"2025-08-13 15:50:55\"}', NULL, '2025-08-13 08:50:55', '2025-08-13 08:50:55'),
('c1c34e0b-4789-4d60-8616-2802ae5a16a0', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010044\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:36', '2025-07-31 17:43:36'),
('c1ee7ffe-a941-4c5c-866e-5e0db997f70b', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":113,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #Z6OYHN7O\",\"created_at\":\"2025-08-26 21:02:42\"}', NULL, '2025-08-26 14:02:42', '2025-08-26 14:02:42'),
('c21539ae-0438-4a62-8c73-165cc66753ba', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"6Z3IC24X\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:11:08', '2025-08-26 14:11:08'),
('c2240f5d-8172-4b42-840c-defd56d1dacd', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":104,\"order_code\":\"ZPA1N0QR\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 19:25:04\"}', NULL, '2025-08-26 12:25:04', '2025-08-26 12:25:04'),
('c2406c6a-c12c-4f45-afd1-c31be6820a9e', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":115,\"order_code\":\"6Z3IC24X\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #6Z3IC24X\",\"created_at\":\"2025-08-26 21:10:54\"}', NULL, '2025-08-26 14:10:54', '2025-08-26 14:10:54'),
('c27396c6-3867-4c7b-8a09-360668d37799', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":115,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #6Z3IC24X\",\"created_at\":\"2025-08-26 21:10:54\"}', NULL, '2025-08-26 14:10:54', '2025-08-26 14:10:54'),
('c2b40edc-2a57-4c5f-a859-cd4f9cd1a6f8', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":112,\"order_code\":\"NWTSY52X\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #NWTSY52X c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 13:57:04', '2025-08-26 13:57:04'),
('c34dc974-d5b0-4cf6-8746-40dbdb811531', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"ZX2EI2D3\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:46:52', '2025-08-13 11:46:52'),
('c3742af0-8e76-49c1-ad14-bd5c5abe33f1', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"VOSSMND2\",\"status\":\"waiting_driver_pick_up\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 07:58:58', '2025-08-01 07:58:58'),
('c45f12e7-6348-4372-84d4-573badb47a47', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":64,\"order_code\":\"DAG9GEEL\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:38:53\"}', NULL, '2025-08-13 08:38:53', '2025-08-13 08:38:53'),
('c484d6f1-7d74-4677-912e-f1297806087b', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":80,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #E2O0XALF\",\"created_at\":\"2025-08-01 03:13:59\"}', NULL, '2025-07-31 20:13:59', '2025-07-31 20:13:59'),
('c4ae380e-c9f9-4f6d-9bac-7dfa77a56cb9', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"ILXKQJ65\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:35:25', '2025-08-26 14:35:25'),
('c4dd7d8e-3e1f-44da-90ea-b8a342717557', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":90,\"order_code\":\"YYXHY0OV\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #YYXHY0OV c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:41:02', '2025-08-13 11:41:02'),
('c4f78a00-db8a-4c24-b0f1-a75343e8af14', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":104,\"order_code\":\"ZPA1N0QR\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #ZPA1N0QR c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:31:16', '2025-08-26 12:31:16'),
('c52c4034-5a40-4469-a72f-8b0441258d66', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"PXJDSRVW\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:03:32', '2025-08-26 12:03:32'),
('c5a50a6b-526c-4917-a605-5cdd78e95c83', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010027\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 13:29:22', '2025-08-04 13:29:22'),
('c5a7ef81-cdaf-4da1-9fbc-e8afc371be49', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010040\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:01', '2025-07-31 17:34:01'),
('c6430ac4-7f72-42e5-8d15-123061ef78bb', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":105,\"order_code\":\"611POPKM\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #611POPKM\",\"created_at\":\"2025-08-26 19:33:52\"}', NULL, '2025-08-26 12:33:52', '2025-08-26 12:33:52'),
('c6514c65-99ec-45dd-98a0-602004a8ffde', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"CXCXUHH1\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:11:11', '2025-08-26 12:11:11'),
('c78e38a3-ee50-4d71-acc5-5865fcbd245b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010003\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:01', '2025-07-31 17:34:01'),
('c7c4ab8c-ed97-44fe-94a9-165e8ff77f8f', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":125,\"order_code\":\"V5G0DL0U\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 22:08:33\"}', NULL, '2025-08-26 15:08:33', '2025-08-26 15:08:33'),
('c83f34e8-9c4d-4a8e-9e95-53f05ab234c9', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":99,\"order_code\":\"C8LYY3ES\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"150402.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #C8LYY3ES\",\"created_at\":\"2025-08-22 18:03:40\"}', NULL, '2025-08-22 11:03:40', '2025-08-22 11:03:40'),
('c85baab0-94b5-4d78-b9f2-28929e68e03d', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":110,\"order_code\":\"WQNH65ML\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"134789.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #WQNH65ML\",\"created_at\":\"2025-08-26 20:53:52\"}', NULL, '2025-08-26 13:53:52', '2025-08-26 13:53:52'),
('c9f04269-f909-4799-9e2a-40dc10a1fb7b', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":120,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #U09K1EUQ\",\"created_at\":\"2025-08-26 21:20:56\"}', NULL, '2025-08-26 14:20:56', '2025-08-26 14:20:56'),
('ca8b5bb1-9177-4464-90a7-7c222761a311', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"MUYZEWYW\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 19:32:25', '2025-07-31 19:32:25'),
('cb08a511-7ebb-408c-8856-cdd36e309c7e', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 3, '{\"order_id\":133,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #VHQXVX6R\",\"created_at\":\"2025-08-27 15:29:54\"}', NULL, '2025-08-27 08:29:54', '2025-08-27 08:29:54'),
('cb5a3bbb-03f2-4a39-a035-4c7f97a3109c', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"GVXPSOSO\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:14:38', '2025-08-26 14:14:38'),
('cbaa9a84-7ce8-478b-85a8-7d9196cddf63', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":98,\"order_code\":\"NGHE3KH7\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"47272.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #NGHE3KH7\",\"created_at\":\"2025-08-22 17:22:04\"}', NULL, '2025-08-22 10:22:04', '2025-08-22 10:22:04'),
('cc08fee0-861f-4f3c-8934-ac2eb8ab5432', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":65,\"order_code\":\"YMKAH1BG\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YMKAH1BG\",\"created_at\":\"2025-08-13 15:39:26\"}', NULL, '2025-08-13 08:39:26', '2025-08-13 08:39:26'),
('cc0e208d-4b26-4d35-b6b1-bba9bb56d260', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"NWTSY52X\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:56:46', '2025-08-26 13:56:46'),
('cc8fab8f-257e-4fc6-9231-33ef2de088ce', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"U09K1EUQ\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:21:06', '2025-08-26 14:21:06'),
('cd18ff99-214d-4756-869b-1b72e7cb05d7', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"ARC5ZZGN\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:03:36', '2025-08-26 12:03:36'),
('cd316f35-2451-458b-878a-e43f4b36b873', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010048\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:38', '2025-07-31 17:43:38'),
('cd3be47c-f37d-4161-b44c-487b83b8a865', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 15, '{\"order_code\":\"PTWI78OF\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-05 16:56:03', '2025-08-05 16:56:03'),
('cd8c3237-3243-49af-8ac1-d95573af6b1c', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":94,\"order_code\":\"762I5JSC\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 17:22:55\"}', NULL, '2025-08-13 10:22:55', '2025-08-13 10:22:55'),
('cda24076-9ee8-4ba8-9a5f-710aa4b6db36', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":83,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #EVMSO7BH\",\"created_at\":\"2025-08-13 16:22:57\"}', NULL, '2025-08-13 09:22:57', '2025-08-13 09:22:57'),
('ce1b69d1-9e14-4a77-b95d-e09d9a1ec021', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"GMTJZNIG\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:18:10', '2025-08-26 14:18:10'),
('ceb6a529-19a4-41b8-b402-70008fad6230', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":65,\"order_code\":\"YMKAH1BG\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:39:26\"}', NULL, '2025-08-13 08:39:26', '2025-08-13 08:39:26'),
('cec83500-83e9-44d3-b625-7ca9c65dd2dd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"V5G0DL0U\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 15:08:59', '2025-08-26 15:08:59'),
('cef83e23-a7a5-41db-9485-e468cbd107a0', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":93,\"order_code\":\"IOCKUSDV\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"820000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 17:16:17\"}', NULL, '2025-08-13 10:16:17', '2025-08-13 10:16:17');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('cf32ca03-77f5-49a4-8796-1278c73c58f9', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"PTWI78OF\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-05 16:55:52', '2025-08-05 16:55:52'),
('cff30fe5-ec39-4ddb-9b86-f992b4982440', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 1, '{\"order_id\":68,\"order_code\":\"TEST1755075055\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"100000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:50:55\"}', NULL, '2025-08-13 08:50:55', '2025-08-13 08:50:55'),
('d00b3fe7-b986-41e3-9171-a9fdcc1d91df', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":56,\"order_code\":\"MF42ZTXR\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"165000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #MF42ZTXR\",\"created_at\":\"2025-08-01 01:15:06\"}', NULL, '2025-07-31 18:15:06', '2025-07-31 18:15:06'),
('d039ef53-7f3a-4a89-9722-e55e9716fae1', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":88,\"order_code\":\"YA8BZVOX\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #YA8BZVOX c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:43:28', '2025-08-13 11:43:28'),
('d0775e22-e0cd-46c7-8f73-eb1341d3ae8a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"O8OVVGKO\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:03:36', '2025-08-26 12:03:36'),
('d0a08477-8c9a-4c2c-a7a1-7853960237e9', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 3, '{\"order_id\":130,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #5HJPDXZC\",\"created_at\":\"2025-08-27 15:23:10\"}', NULL, '2025-08-27 08:23:10', '2025-08-27 08:23:10'),
('d118a78b-6947-4b28-96d8-723bb38ebfae', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"6Z3IC24X\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:11:27', '2025-08-26 14:11:27'),
('d12f0cea-0320-4f07-bf42-1381f0edd6a9', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":81,\"order_code\":\"OBUX3YUN\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #OBUX3YUN\",\"created_at\":\"2025-08-13 16:07:48\"}', NULL, '2025-08-13 09:07:48', '2025-08-13 09:07:48'),
('d1523e3c-845a-4ea0-82ad-a43309a95773', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"CXCXUHH1\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:11:11', '2025-08-26 12:11:11'),
('d16f4d46-d2fb-43a1-832c-8c334057cc92', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":108,\"order_code\":\"1QOSFPND\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #1QOSFPND c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"205000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 13:29:56', '2025-08-26 13:29:56'),
('d29cafa1-ffb9-4898-acb8-62509476dda5', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 3, '{\"order_id\":51,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #AXV23WJE\",\"created_at\":\"2025-08-01 00:30:46\"}', NULL, '2025-07-31 17:30:46', '2025-07-31 17:30:46'),
('d2d42ecb-5880-499e-8ebb-496082fb061e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"611POPKM\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:34:43', '2025-08-26 12:34:43'),
('d2f500ed-bd8f-4acd-9d82-0438fcf60a77', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":54,\"order_code\":\"2HZF161D\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #2HZF161D c\\u1ea7n giao\",\"delivery_address\":\"ng\\u00f5 286, \\u0111\\u01b0\\u1eddng 422b, Ph\\u01b0\\u1eddng C\\u1ed5 Nhu\\u1ebf 2, Qu\\u1eadn B\\u1eafc T\\u1eeb Li\\u00eam, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"215419.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-07-31 17:40:07', '2025-07-31 17:40:07'),
('d304416e-dd84-45a8-b7c4-d69f6e12c036', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"TLELKI6V\",\"status\":\"delivered\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:46:25', '2025-08-01 04:46:25'),
('d371ae35-d76a-47b8-ad1f-769301ce64ae', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"YA8BZVOX\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:28', '2025-08-13 11:43:28'),
('d39de152-4a3f-49c8-a446-3fbe32c04c66', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010004\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:38', '2025-07-31 17:43:38'),
('d3c0c9dd-28fa-4f96-99b5-6c8d7583ea22', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":127,\"order_code\":\"SG01FT4L\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh C\\u1ea7u Gi\\u1ea5y\",\"total_amount\":\"105000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #SG01FT4L\",\"created_at\":\"2025-08-27 15:18:18\"}', NULL, '2025-08-27 08:18:18', '2025-08-27 08:18:18'),
('d3e5baac-891b-450d-8373-02ab05adb706', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"WQNH65ML\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:54:12', '2025-08-26 13:54:12'),
('d4636e07-ed24-4623-b8df-a1e3a9d312af', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 2, '{\"order_id\":121,\"order_code\":null,\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi # c\\u1ea7n giao\",\"delivery_address\":\"Test Address\",\"total_amount\":\"100000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Administrator\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:26:43', '2025-08-26 14:26:43'),
('d477a911-b4db-4cf2-b37a-889ade687cd2', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":127,\"order_code\":\"SG01FT4L\",\"branch_name\":\"Chi nh\\u00e1nh C\\u1ea7u Gi\\u1ea5y\",\"total_amount\":\"105000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-27 15:18:18\"}', NULL, '2025-08-27 08:18:18', '2025-08-27 08:18:18'),
('d4b55130-997c-42e7-8256-06d3695ae6e5', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 23, '{\"order_code\":\"WXBYO8KA\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:03:22', '2025-08-26 12:03:22'),
('d4b6c6a5-ad7c-4364-b8c2-c6d7c7f28b2a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"YHQGXSSP\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:08:21', '2025-08-26 14:08:21'),
('d4d5e6bc-9713-46c3-8a53-a90551d6fa31', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":80,\"order_code\":\"E2O0XALF\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"179595.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #E2O0XALF\",\"created_at\":\"2025-08-01 03:13:59\"}', NULL, '2025-07-31 20:13:59', '2025-07-31 20:13:59'),
('d5eeb65f-4431-41ae-871e-028d2a9f28d0', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":59,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #UYUIPPUQ\",\"created_at\":\"2025-08-04 16:22:32\"}', NULL, '2025-08-04 09:22:32', '2025-08-04 09:22:32'),
('d6dc9a09-16b6-48bc-b958-e3ed961f86fb', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"1QOSFPND\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:29:55', '2025-08-26 13:29:55'),
('d72c6352-fa0a-448f-8e87-12514844103d', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":124,\"order_code\":\"ILXKQJ65\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 21:35:14\"}', NULL, '2025-08-26 14:35:14', '2025-08-26 14:35:14'),
('d76f1b28-7302-41f8-a490-aadb2b3cdcf5', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":55,\"order_code\":\"TLELKI6V\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #TLELKI6V c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Tr\\u1ea7n H\\u01b0ng \\u0110\\u1ea1o, Ho\\u00e0n Ki\\u1ebfm, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"215765.50\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-01 04:45:05', '2025-08-01 04:45:05'),
('d78601b3-b1b8-442c-9042-c97ca2940cd2', 'App\\Notifications\\NoDriverAvailable', 'App\\Models\\Branch', 1, '{\"order_id\":104,\"order_code\":\"ZPA1N0QR\",\"message\":\"Kh\\u00f4ng t\\u00ecm \\u0111\\u01b0\\u1ee3c t\\u00e0i x\\u1ebf cho \\u0111\\u01a1n h\\u00e0ng #ZPA1N0QR\",\"reason\":\"Kh\\u00f4ng c\\u00f3 t\\u00e0i x\\u1ebf ph\\u00f9 h\\u1ee3p sau nhi\\u1ec1u l\\u1ea7n th\\u1eed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"total_amount\":\"250000.00\",\"type\":\"no_driver_available\"}', NULL, '2025-08-26 12:28:11', '2025-08-26 12:28:11'),
('d7c0c4ce-4de9-4417-a1db-1c4fdc4ee13e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"762I5JSC\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:21', '2025-08-13 11:40:21'),
('d7f36ad9-1830-4658-b674-b1e1fe053392', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":80,\"order_code\":\"H1VJ4FB1\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #H1VJ4FB1\",\"created_at\":\"2025-08-13 16:06:57\"}', NULL, '2025-08-13 09:06:57', '2025-08-13 09:06:57'),
('d7f6a3fc-4238-4389-bfb1-eb9e69b6e6f2', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":55,\"order_code\":\"VNPHN32W\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #VNPHN32W c\\u1ea7n giao\",\"delivery_address\":\"ng\\u00f5 286, \\u0111\\u01b0\\u1eddng 422b, Ph\\u01b0\\u1eddng C\\u1ed5 Nhu\\u1ebf 2, Qu\\u1eadn B\\u1eafc T\\u1eeb Li\\u00eam, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"165000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-07-31 17:43:45', '2025-07-31 17:43:45'),
('d836f41f-7285-4944-b4fe-1bbfe30bde39', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":77,\"order_code\":\"MUYZEWYW\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #MUYZEWYW c\\u1ea7n giao\",\"delivery_address\":\"V\\u00e2n Canh, Ph\\u01b0\\u1eddng Tr\\u00e0ng Ti\\u1ec1n, Qu\\u1eadn Ho\\u00e0n Ki\\u1ebfm, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"155000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-07-31 19:32:25', '2025-07-31 19:32:25'),
('d85a0d02-a09c-48fc-84c6-894c6a3c053e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"5EIS85E8\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 13:31:09', '2025-08-26 13:31:09'),
('d8940450-7a6b-4b0e-b457-bdf75394c0ef', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":123,\"order_code\":\"12MQBA9U\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 21:33:50\"}', NULL, '2025-08-26 14:33:50', '2025-08-26 14:33:50'),
('d9141c01-978e-4e5a-a9e5-35523e7ec03b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 21, '{\"order_code\":\"IOCKUSDV\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:27', '2025-08-13 11:40:27'),
('d918a620-3908-4473-b31c-4f665a384104', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":111,\"order_code\":\"WYTXRO25\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #WYTXRO25 c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 13:55:26', '2025-08-26 13:55:26'),
('d9199a51-6cf4-4558-86c0-1f86e1d42d6d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"1RAF2O8S\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 12:51:59', '2025-08-04 12:51:59'),
('d948bc22-2578-4ace-85c3-13ce2d792298', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 6, '{\"order_code\":\"HN0010018\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:03', '2025-07-31 17:34:03'),
('d9681fb0-b22c-4c33-a8ff-3aff2fb66f0d', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":110,\"order_code\":\"WQNH65ML\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #WQNH65ML c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"134789.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 13:54:30', '2025-08-26 13:54:30'),
('d9ec1885-af86-4530-843e-651cb589aa47', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"MUYZEWYW\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 19:32:25', '2025-07-31 19:32:25'),
('da3fb074-151c-4e91-83e3-64208252958f', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":103,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #3D6ZZFTE\",\"created_at\":\"2025-08-26 19:12:54\"}', NULL, '2025-08-26 12:12:54', '2025-08-26 12:12:54'),
('da624efe-71f1-4bfb-8a38-663cb16e43cf', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"NBFN7JYR\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:32', '2025-08-13 11:40:32'),
('da6ad258-20bc-4248-bf58-b33884bf174d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010046\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:37', '2025-07-31 17:43:37'),
('dafeae54-7675-4155-83fa-c185b318a36f', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":128,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #6QDAFNBC\",\"created_at\":\"2025-08-27 15:20:17\"}', NULL, '2025-08-27 08:20:17', '2025-08-27 08:20:17'),
('db200202-1f82-45c5-80ad-0eb23be815dd', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"TLELKI6V\",\"status\":\"in_transit\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng \\u0111\\u00e3 b\\u1ecb h\\u1ee7y b\\u1edfi kh\\u00e1ch h\\u00e0ng\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:45:57', '2025-08-01 04:45:57'),
('db8442c1-ccee-40d3-9d73-871015f14689', 'App\\Notifications\\NoDriverAvailable', 'App\\Models\\Branch', 1, '{\"order_id\":104,\"order_code\":\"ZPA1N0QR\",\"message\":\"Kh\\u00f4ng t\\u00ecm \\u0111\\u01b0\\u1ee3c t\\u00e0i x\\u1ebf cho \\u0111\\u01a1n h\\u00e0ng #ZPA1N0QR\",\"reason\":\"Kh\\u00f4ng c\\u00f3 t\\u00e0i x\\u1ebf ph\\u00f9 h\\u1ee3p sau nhi\\u1ec1u l\\u1ea7n th\\u1eed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"total_amount\":\"250000.00\",\"type\":\"no_driver_available\"}', NULL, '2025-08-26 12:28:11', '2025-08-26 12:28:11'),
('dc3c7b1b-ef68-4894-b64a-2c06e54f5057', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"LYHP2NYJ\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:32:45', '2025-07-31 17:32:45'),
('dc3f186d-8975-4a1a-95bd-f98032649cf2', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":71,\"order_code\":\"TEST1755075198\",\"customer_name\":\"Administrator\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"100000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #TEST1755075198\",\"created_at\":\"2025-08-13 15:53:18\"}', NULL, '2025-08-13 08:53:18', '2025-08-13 08:53:18'),
('dc55c20e-425a-4cc5-b8e0-f2a481116c30', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":74,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #AGPPDFB9\",\"created_at\":\"2025-08-13 15:56:34\"}', NULL, '2025-08-13 08:56:34', '2025-08-13 08:56:34'),
('dc9dbba8-531f-4fe3-b424-4a74d2564b9d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"GFZ1SGWF\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:36:19', '2025-08-13 11:36:19'),
('dd426c08-8aec-47de-855c-ab62bfd88383', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":68,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YZAD9OEU\",\"created_at\":\"2025-08-01 01:54:52\"}', NULL, '2025-07-31 18:54:52', '2025-07-31 18:54:52'),
('dd8ec6d8-2df2-4503-85f8-b33b9b684ce2', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":70,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #6LRDFOVT\",\"created_at\":\"2025-08-01 02:18:06\"}', NULL, '2025-07-31 19:18:06', '2025-07-31 19:18:06'),
('dd98f1ba-4a97-44bd-8ce2-7d86d1145fdf', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"C8LYY3ES\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-22 11:03:48', '2025-08-22 11:03:48'),
('ddd3ae2b-555a-484e-96a7-e06f791c646c', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"611POPKM\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:33:57', '2025-08-26 12:33:57'),
('dddbf059-7207-4cc6-813c-d40504cb1359', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":92,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #NBFN7JYR\",\"created_at\":\"2025-08-13 17:13:50\"}', NULL, '2025-08-13 10:13:50', '2025-08-13 10:13:50'),
('de34628b-0e8c-4d5c-9ada-6cf0ada4ad9c', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":64,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #DAG9GEEL\",\"created_at\":\"2025-08-13 15:38:53\"}', NULL, '2025-08-13 08:38:53', '2025-08-13 08:38:53'),
('de960795-9c79-4dc0-8240-a25856e03548', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":74,\"order_code\":\"AAOMXSZN\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"169595.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 02:25:39\"}', NULL, '2025-07-31 19:25:39', '2025-07-31 19:25:39'),
('decca512-1999-4803-bc65-9fd6f1cb9680', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"GMTJZNIG\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:18:10', '2025-08-26 14:18:10'),
('def56e83-25c4-4fa6-b53d-02f2c1ddd4f4', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"ULCIHYB1\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-03 17:56:07', '2025-08-03 17:56:07'),
('df17bd94-7ec3-4fc5-a075-d7c0dadf51f3', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"6WJXFNQ0\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:14', '2025-08-13 11:43:14'),
('df737f8b-2e39-4aa4-8fb8-58c6cea24b12', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":143,\"order_code\":\"GTYSE6DU\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"70000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #GTYSE6DU\",\"created_at\":\"2025-08-28 11:28:22\"}', NULL, '2025-08-28 04:28:22', '2025-08-28 04:28:22'),
('dff6eaba-a7d3-4df4-9566-90fdb3dac288', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 15, '{\"order_id\":62,\"order_code\":\"PTWI78OF\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #PTWI78OF c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-05 16:56:10', '2025-08-05 16:56:10'),
('dfff1289-8d91-4493-adfc-eeb299880aab', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":72,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #CQGE3I8Q\",\"created_at\":\"2025-08-01 02:22:05\"}', NULL, '2025-07-31 19:22:05', '2025-07-31 19:22:05'),
('e023aa5f-9a34-40e4-adbc-839b3786813f', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":87,\"order_code\":\"KQFUUZGD\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #KQFUUZGD c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"120000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:43:57', '2025-08-13 11:43:57'),
('e0249787-c4fb-436b-952e-63f9c7278436', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":65,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YMKAH1BG\",\"created_at\":\"2025-08-13 15:39:26\"}', NULL, '2025-08-13 08:39:26', '2025-08-13 08:39:26'),
('e0526833-9c4a-405d-bc52-0173eb285f41', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":73,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #XQH433GN\",\"created_at\":\"2025-08-01 02:24:27\"}', NULL, '2025-07-31 19:24:27', '2025-07-31 19:24:27'),
('e0a74db2-a877-444c-b151-9ae56e8803fd', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":101,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #ARC5ZZGN\",\"created_at\":\"2025-08-26 19:01:46\"}', NULL, '2025-08-26 12:01:46', '2025-08-26 12:01:46'),
('e0b7f0ad-f840-44f7-b1ea-d2294f3dcede', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":67,\"order_code\":\"IJGR9I5F\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:45:55\"}', NULL, '2025-08-13 08:45:55', '2025-08-13 08:45:55'),
('e0e19e5b-b250-4c5b-a152-bda85811c61b', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":87,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #KQFUUZGD\",\"created_at\":\"2025-08-13 16:42:25\"}', NULL, '2025-08-13 09:42:25', '2025-08-13 09:42:25'),
('e0eb27b9-8743-4803-8322-e110866d2443', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":84,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #OG5LIBIV\",\"created_at\":\"2025-08-13 16:32:28\"}', NULL, '2025-08-13 09:32:28', '2025-08-13 09:32:28'),
('e15c5837-f798-4344-880e-41835b4f0af4', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":59,\"order_code\":\"UYUIPPUQ\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"214820.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-04 16:22:32\"}', NULL, '2025-08-04 09:22:32', '2025-08-04 09:22:32'),
('e185c084-d09d-4e92-a7dd-60010149eb7a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"C8LYY3ES\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-22 11:03:58', '2025-08-22 11:03:58'),
('e1948ded-041e-4fc1-8cb3-491867953864', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010041\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:38', '2025-07-31 17:43:38'),
('e1bbfe3a-2d51-4380-800d-071e649b4885', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":76,\"order_code\":\"UKFAMTWX\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"139789.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:01:22\"}', NULL, '2025-08-13 09:01:22', '2025-08-13 09:01:22'),
('e1feadf7-759c-4f40-a1ce-a72a201dcfb1', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"OG5LIBIV\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:47:00', '2025-08-13 11:47:00'),
('e287219d-6f7e-4717-af43-8972217bec80', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":108,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #1QOSFPND\",\"created_at\":\"2025-08-26 20:29:30\"}', NULL, '2025-08-26 13:29:30', '2025-08-26 13:29:30'),
('e2b1c583-9400-476b-acc4-4c23383fcae5', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":134,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #QMM1BCWF\",\"created_at\":\"2025-08-27 18:40:13\"}', NULL, '2025-08-27 11:40:13', '2025-08-27 11:40:13'),
('e33db6da-7f24-4d6b-9053-4cc9b6ea2b5d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"NBFN7JYR\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:24', '2025-08-13 11:40:24'),
('e35fdec1-b5cd-4d1b-8aad-39114be08d4d', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 1, '{\"order_id\":70,\"order_code\":\"TEST1755075157\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"100000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:52:37\"}', NULL, '2025-08-13 08:52:37', '2025-08-13 08:52:37'),
('e364295d-9eb9-48aa-a23a-9b0b3b4e7d43', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"2HZF161D\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:40:06', '2025-07-31 17:40:06'),
('e37826b2-29ea-44c4-9468-ad787d9e0914', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":103,\"order_code\":\"3D6ZZFTE\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #3D6ZZFTE\",\"created_at\":\"2025-08-26 19:12:54\"}', NULL, '2025-08-26 12:12:54', '2025-08-26 12:12:54'),
('e384515c-bc70-4b59-bdcf-a053577f7964', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010022\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 13:29:08', '2025-08-04 13:29:08'),
('e3ab7ba6-2431-4ccb-9ce6-aea67ebcdf11', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":120,\"order_code\":\"U09K1EUQ\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #U09K1EUQ c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:21:26', '2025-08-26 14:21:26'),
('e47f20c5-0e83-4144-a762-d65a8060dce7', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":77,\"order_code\":\"MUYZEWYW\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #MUYZEWYW c\\u1ea7n giao\",\"delivery_address\":\"V\\u00e2n Canh, Ph\\u01b0\\u1eddng Tr\\u00e0ng Ti\\u1ec1n, Qu\\u1eadn Ho\\u00e0n Ki\\u1ebfm, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"155000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-07-31 19:32:27', '2025-07-31 19:32:27'),
('e4ea097a-d265-4f3d-9407-ef37a17d5e86', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":142,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #DHRSQNFM\",\"created_at\":\"2025-08-28 11:27:32\"}', NULL, '2025-08-28 04:27:32', '2025-08-28 04:27:32'),
('e5775987-7a0f-4e82-8cd5-3e5595673d35', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":69,\"order_code\":\"HISGOC6L\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"161513.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 02:05:21\"}', NULL, '2025-07-31 19:05:21', '2025-07-31 19:05:21'),
('e579825a-ff33-4631-a633-281f0b12ab2d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"2HZF161D\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:40:06', '2025-07-31 17:40:06'),
('e64fe945-153c-4572-be73-1e06d8d2b446', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":71,\"order_code\":\"X2QCKMRW\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"184595.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 02:19:40\"}', NULL, '2025-07-31 19:19:40', '2025-07-31 19:19:40'),
('e6e422c8-d55e-444b-8dce-d38e02240850', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"GFZ1SGWF\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:36:19', '2025-08-13 11:36:19'),
('e72838cb-171d-48aa-8990-df01eba1c9d4', 'App\\Notifications\\NoDriverAvailable', 'App\\Models\\Branch', 1, '{\"order_id\":52,\"order_code\":\"VFOPCA5S\",\"message\":\"Kh\\u00f4ng t\\u00ecm \\u0111\\u01b0\\u1ee3c t\\u00e0i x\\u1ebf cho \\u0111\\u01a1n h\\u00e0ng #VFOPCA5S\",\"reason\":\"Thi\\u1ebfu th\\u00f4ng tin \\u0111\\u1ecba ch\\u1ec9 giao h\\u00e0ng\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"total_amount\":\"131456.00\",\"type\":\"no_driver_available\"}', NULL, '2025-08-01 04:29:36', '2025-08-01 04:29:36'),
('e7ad8c5b-6920-40c8-b46d-ad57f3e8e151', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":54,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #2HZF161D\",\"created_at\":\"2025-08-01 00:39:32\"}', NULL, '2025-07-31 17:39:32', '2025-07-31 17:39:32'),
('e7e4f6df-94ed-4417-91fe-b9e7d372fa35', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":87,\"order_code\":\"KQFUUZGD\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"120000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 16:42:25\"}', NULL, '2025-08-13 09:42:25', '2025-08-13 09:42:25'),
('e876058c-1c15-47df-81b9-0b3e08a4d00a', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":70,\"order_code\":\"6LRDFOVT\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"339789.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #6LRDFOVT\",\"created_at\":\"2025-08-01 02:18:06\"}', NULL, '2025-07-31 19:18:06', '2025-07-31 19:18:06'),
('e8c33cb0-41ad-41e7-9875-8653416b7886', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"U09K1EUQ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:21:25', '2025-08-26 14:21:25'),
('e96f491e-7b3d-4a08-87ba-752fb4866f12', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":89,\"order_code\":\"6WJXFNQ0\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #6WJXFNQ0 c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"120000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:43:18', '2025-08-13 11:43:18'),
('e9c2180a-d5b7-42bc-a907-86faef904084', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":77,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #XSHFEVPL\",\"created_at\":\"2025-08-13 16:01:47\"}', NULL, '2025-08-13 09:01:47', '2025-08-13 09:01:47'),
('ea078ff0-05d4-4e38-9777-6b3f268733bb', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":69,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #NPRR2WJ5\",\"created_at\":\"2025-08-13 15:51:42\"}', NULL, '2025-08-13 08:51:42', '2025-08-13 08:51:42'),
('ea1b81bd-3419-4618-affc-49e435eadaa2', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":81,\"order_code\":\"HNGQZSKQ\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"128810.10\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 11:00:03\"}', NULL, '2025-08-01 04:00:03', '2025-08-01 04:00:03'),
('ea1ee71e-c57d-4ba7-a38d-e89b84cf8fa9', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":79,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #1RF3S26N\",\"created_at\":\"2025-08-01 02:38:41\"}', NULL, '2025-07-31 19:38:41', '2025-07-31 19:38:41'),
('eb4bb4d8-9449-4cf4-b640-c7b60b0705df', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"ULCIHYB1\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-03 17:56:21', '2025-08-03 17:56:21'),
('ecaf8efb-f9dc-4540-bc8d-121bc1557c71', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 21, '{\"order_code\":\"6WJXFNQ0\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:43:18', '2025-08-13 11:43:18'),
('ed193eff-8060-4a46-86fe-69bad2fb65e3', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":134,\"order_code\":\"QMM1BCWF\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"235000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-27 18:40:13\"}', NULL, '2025-08-27 11:40:13', '2025-08-27 11:40:13'),
('ed39cbb8-418a-471b-af1e-4826f7322f00', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":135,\"order_code\":\"FQGFLJRR\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"205000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-28 11:13:04\"}', NULL, '2025-08-28 04:13:04', '2025-08-28 04:13:04'),
('ee0b12f4-a4c6-4dfd-af18-8b6df9290317', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":61,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #1RAF2O8S\",\"created_at\":\"2025-08-04 19:51:18\"}', NULL, '2025-08-04 12:51:18', '2025-08-04 12:51:18'),
('ee864505-9fc4-4aab-a065-3b05b26d9c77', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":81,\"order_code\":\"HNGQZSKQ\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"128810.10\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #HNGQZSKQ\",\"created_at\":\"2025-08-01 11:00:03\"}', NULL, '2025-08-01 04:00:03', '2025-08-01 04:00:03'),
('ee9ed0ae-e98e-4691-ba90-311811d34485', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 18, '{\"order_id\":106,\"order_code\":\"OTMUAHOH\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"250000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-26 20:17:58\"}', NULL, '2025-08-26 13:17:58', '2025-08-26 13:17:58'),
('eeb0376b-885e-480f-bcca-8e95879bfa1a', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"UYUIPPUQ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 09:23:34', '2025-08-04 09:23:34'),
('ef845a78-8052-4089-b982-9755a54c5a45', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":72,\"order_code\":\"CQGE3I8Q\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"399156.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 02:22:05\"}', NULL, '2025-07-31 19:22:05', '2025-07-31 19:22:05'),
('f046a162-1517-4dfb-84fd-df3bd2a5284f', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"1RAF2O8S\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 12:51:49', '2025-08-04 12:51:49'),
('f0d0f805-a9b7-4132-b080-99796e1827e4', 'App\\Notifications\\BranchNewReviewNotification', 'App\\Models\\Branch', 2, '{\"type\":\"branch_new_review\",\"review_id\":271,\"user_id\":18,\"branch_id\":\"2\",\"message\":\"C\\u00f3 b\\u00ecnh lu\\u1eadn m\\u1edbi v\\u1ec1 \\\"Burger B\\u00f2 Teriyaki\\\" t\\u1ea1i chi nh\\u00e1nh.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/shop\\/products\\/burger-bo-teriyaki#review-271\"}', NULL, '2025-08-27 08:19:52', '2025-08-27 08:19:52'),
('f124a72f-ec50-4a0e-bda5-2425c4ae25c3', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 21, '{\"order_code\":\"HJNEH3LC\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:16', '2025-08-13 11:40:16'),
('f14d4b1f-925a-4ce2-a199-f32353d39229', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 21, '{\"order_code\":\"324IAODC\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:40:48', '2025-08-13 11:40:48');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('f1aad0eb-bc24-4511-ba21-12d0288124fe', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"YYXHY0OV\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-13 11:41:01', '2025-08-13 11:41:01'),
('f1bd148f-1c1e-4bbd-b380-5297ae434c6e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"VNPHN32W\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:45', '2025-07-31 17:43:45'),
('f1fbc81b-4128-4f69-93be-e72baec245e1', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":100,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #O8OVVGKO\",\"created_at\":\"2025-08-25 22:58:31\"}', NULL, '2025-08-25 15:58:31', '2025-08-25 15:58:31'),
('f253dc24-c865-4745-a15b-1bd28485b632', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 16, '{\"order_code\":\"O2XO94UD\",\"status\":\"cancelled\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: cancelled\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 20:15:27', '2025-07-31 20:15:27'),
('f2685742-7d5a-4695-8131-27ce0d8df62a', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":117,\"order_code\":\"LLJIAHKM\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #LLJIAHKM c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"820000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:16:07', '2025-08-26 14:16:07'),
('f2819067-ba59-4522-82af-2420c7ba8ef8', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":142,\"order_code\":\"DHRSQNFM\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"70000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #DHRSQNFM\",\"created_at\":\"2025-08-28 11:27:32\"}', NULL, '2025-08-28 04:27:32', '2025-08-28 04:27:32'),
('f28a01f7-4155-4747-b2e4-16f895d1fe24', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 1, '{\"order_id\":999999,\"order_code\":\"TEST1755074605\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"100000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-13 15:43:25\"}', NULL, '2025-08-13 08:43:25', '2025-08-13 08:43:25'),
('f2b8426c-9814-4102-9270-de0c4f43144e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"WXBYO8KA\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 12:03:22', '2025-08-26 12:03:22'),
('f3883f08-4dc0-41ad-9b99-cd54521649a0', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":88,\"order_code\":\"YA8BZVOX\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #YA8BZVOX c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:43:29', '2025-08-13 11:43:29'),
('f3a740a0-5de0-4890-88d6-34fac7cad875', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 15, '{\"order_id\":61,\"order_code\":\"1RAF2O8S\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #1RAF2O8S c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-04 12:52:00', '2025-08-04 12:52:00'),
('f4600dd7-9562-459c-9fea-8e1c9df69929', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":88,\"order_code\":\"YA8BZVOX\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"175000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YA8BZVOX\",\"created_at\":\"2025-08-13 16:44:00\"}', NULL, '2025-08-13 09:44:00', '2025-08-13 09:44:00'),
('f4b7b62f-7bd6-4b09-a8a0-395c0b5c5a3f', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":125,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #V5G0DL0U\",\"created_at\":\"2025-08-26 22:08:33\"}', NULL, '2025-08-26 15:08:33', '2025-08-26 15:08:33'),
('f5230466-873e-40fa-90df-23b088579ee9', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":80,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #H1VJ4FB1\",\"created_at\":\"2025-08-13 16:06:57\"}', NULL, '2025-08-13 09:06:57', '2025-08-13 09:06:57'),
('f56f2757-d352-45b6-a39c-7dbed754804f', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":107,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #FAGMNV0T\",\"created_at\":\"2025-08-26 20:24:34\"}', NULL, '2025-08-26 13:24:34', '2025-08-26 13:24:34'),
('f594957d-f5f0-4cbd-8012-e13c0df81740', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"HN0010034\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:34:02', '2025-07-31 17:34:02'),
('f5952c47-fc8f-4694-bcf0-415acf982309', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":105,\"order_code\":\"611POPKM\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #611POPKM c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 12:34:43', '2025-08-26 12:34:43'),
('f5d31c02-8453-44d3-a489-12e24224a19c', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":85,\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #9CKNDKCJ\",\"created_at\":\"2025-08-13 16:36:26\"}', NULL, '2025-08-13 09:36:26', '2025-08-13 09:36:26'),
('f5d68b05-dd3f-4dc9-8494-07b91f18410d', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 15, '{\"order_code\":\"UYUIPPUQ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-04 09:23:34', '2025-08-04 09:23:34'),
('f683c8ee-d023-4ae7-b20b-98a8c9eaf5c1', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":96,\"order_code\":\"GFZ1SGWF\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #GFZ1SGWF c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:36:26', '2025-08-13 11:36:26'),
('f70ac887-eb6e-46f4-bfd2-b95e0f2e862c', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":70,\"order_code\":\"6LRDFOVT\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"339789.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 02:18:06\"}', NULL, '2025-07-31 19:18:06', '2025-07-31 19:18:06'),
('f78f5bb9-b42a-4fb7-aa8c-2e0dfed6d0db', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":69,\"order_code\":\"HISGOC6L\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"161513.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #HISGOC6L\",\"created_at\":\"2025-08-01 02:05:21\"}', NULL, '2025-07-31 19:05:21', '2025-07-31 19:05:21'),
('f7ac33a7-39e9-424c-96a5-989eb6ce2607', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"HN0010044\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Dr. Eldon Kuvalis\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:43:36', '2025-07-31 17:43:36'),
('f7ac518e-0d0d-4457-80c4-80a5539e6ae0', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":124,\"order_code\":\"ILXKQJ65\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #ILXKQJ65 c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 14:35:44', '2025-08-26 14:35:44'),
('f7f20875-d6f1-4af1-b416-df9b8bd26459', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"ILXKQJ65\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:35:44', '2025-08-26 14:35:44'),
('f82849ca-32a7-4404-8e41-03176db87904', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"U09K1EUQ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:21:25', '2025-08-26 14:21:25'),
('f85ad4b3-721f-4bc9-b06e-98c79754ccbc', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":76,\"order_code\":\"O2XO94UD\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"136513.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #O2XO94UD\",\"created_at\":\"2025-08-01 02:29:29\"}', NULL, '2025-07-31 19:29:29', '2025-07-31 19:29:29'),
('f8901477-2d32-4d72-a970-9e051ddba478', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"YHQGXSSP\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:08:21', '2025-08-26 14:08:21'),
('f8d646af-d06e-45d8-8a88-456edbe3ec35', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":52,\"customer_name\":\"\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #VFOPCA5S\",\"created_at\":\"2025-08-01 11:29:20\"}', NULL, '2025-08-01 04:29:20', '2025-08-01 04:29:20'),
('f8e6fe4b-c16a-44ec-82da-02578169e5bd', 'App\\Notifications\\NewOrderNotification', 'App\\Models\\Branch', 1, '{\"order_id\":106,\"customer_name\":\"Luminous\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #OTMUAHOH\",\"created_at\":\"2025-08-26 20:17:58\"}', NULL, '2025-08-26 13:17:58', '2025-08-26 13:17:58'),
('f90830b8-3adf-4a23-adc1-a65b61e5b420', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":109,\"order_code\":\"5EIS85E8\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #5EIS85E8 c\\u1ea7n giao\",\"delivery_address\":\"12a, Th\\u01b0\\u1ee3ng Thanh, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"250000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Luminous\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-26 13:31:09', '2025-08-26 13:31:09'),
('f9b18f83-981e-40f7-9338-dc8ace362af7', 'App\\Notifications\\CustomerOrderSuccessNotification', 'App\\Models\\User', 16, '{\"order_id\":51,\"order_code\":\"AXV23WJE\",\"branch_name\":\"Chi nh\\u00e1nh H\\u00e0 \\u0110\\u00f4ng\",\"total_amount\":\"330000.00\",\"message\":\"B\\u1ea1n \\u0111\\u00e3 \\u0111\\u1eb7t h\\u00e0ng th\\u00e0nh c\\u00f4ng\",\"type\":\"order_success\",\"created_at\":\"2025-08-01 00:30:46\"}', NULL, '2025-07-31 17:30:46', '2025-07-31 17:30:46'),
('f9b62e8b-081d-4da6-8f06-228849251a5e', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"GVXPSOSO\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:14:57', '2025-08-26 14:14:57'),
('fa4b5d5c-c3e6-4edd-a7da-5221c9c7ab8d', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":133,\"order_code\":\"VHQXVX6R\",\"customer_name\":\"Luminous\",\"branch_name\":\"Chi nh\\u00e1nh H\\u00e0 \\u0110\\u00f4ng\",\"total_amount\":\"2386860.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #VHQXVX6R\",\"created_at\":\"2025-08-27 15:29:54\"}', NULL, '2025-08-27 08:29:54', '2025-08-27 08:29:54'),
('fa7e3309-3b3e-4bb6-88eb-e7e9a42fa32b', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 1, '{\"order_id\":54,\"order_code\":\"WTQMXWR9\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #WTQMXWR9 c\\u1ea7n giao\",\"delivery_address\":\"V\\u00e2n Canh, Trung Ph\\u1ee5ng, \\u0110\\u1ed1ng \\u0110a, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"185135.50\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Kh\\u00e1ch h\\u00e0ng\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-01 04:41:15', '2025-08-01 04:41:15'),
('fb886470-6b6b-4ea8-b4ee-5f9745ea3074', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Branch', 1, '{\"order_code\":\"LYHP2NYJ\",\"status\":\"awaiting_driver\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: awaiting_driver\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-07-31 17:33:10', '2025-07-31 17:33:10'),
('fce74d77-ec33-4385-b860-fdb38ad735e4', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":77,\"order_code\":\"MUYZEWYW\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"155000.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #MUYZEWYW\",\"created_at\":\"2025-08-01 02:32:03\"}', NULL, '2025-07-31 19:32:03', '2025-07-31 19:32:03'),
('fd348d61-764a-4b47-a589-f9ad64bdde61', 'App\\Notifications\\NewOrderAssigned', 'App\\Models\\Driver', 21, '{\"order_id\":96,\"order_code\":\"GFZ1SGWF\",\"message\":\"B\\u1ea1n c\\u00f3 \\u0111\\u01a1n h\\u00e0ng m\\u1edbi #GFZ1SGWF c\\u1ea7n giao\",\"delivery_address\":\"s\\u1ed1 25, ng\\u00f5 267 \\u0111\\u01b0\\u1eddng 422b, Th\\u1ea1ch B\\u00e0n, Long Bi\\u00ean, H\\u00e0 N\\u1ed9i\",\"total_amount\":\"175000.00\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"type\":\"new_order_assigned\"}', NULL, '2025-08-13 11:36:35', '2025-08-13 11:36:35'),
('fd59d73d-3015-4489-b34b-b5d017d46e77', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\User', 18, '{\"order_code\":\"LLJIAHKM\",\"status\":\"confirmed\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: confirmed\",\"customer_name\":\"Luminous\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-26 14:15:49', '2025-08-26 14:15:49'),
('fe1f905b-eefe-4146-bd7b-26375c7e978f', 'App\\Notifications\\AdminNewOrderNotification', 'App\\Models\\User', 1, '{\"order_id\":67,\"order_code\":\"YFWJSWZA\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"branch_name\":\"Chi nh\\u00e1nh \\u0110\\u1ed1ng \\u0110a\",\"total_amount\":\"601560.00\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng m\\u1edbi #YFWJSWZA\",\"created_at\":\"2025-08-01 01:52:43\"}', NULL, '2025-07-31 18:52:43', '2025-07-31 18:52:43'),
('ffa8f912-ac52-42b8-9196-c49227c7321b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Driver', 1, '{\"order_code\":\"TLELKI6V\",\"status\":\"item_received\",\"message\":\"\\u0110\\u01a1n h\\u00e0ng c\\u1eadp nh\\u1eadt tr\\u1ea1ng th\\u00e1i: item_received\",\"customer_name\":\"Tu\\u1ea5n Anh Nguy\\u1ec5n\",\"title\":\"C\\u1eadp nh\\u1eadt \\u0111\\u01a1n h\\u00e0ng\"}', NULL, '2025-08-01 04:46:34', '2025-08-01 04:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `branch_id` bigint UNSIGNED NOT NULL,
  `driver_id` bigint UNSIGNED DEFAULT NULL,
  `address_id` bigint UNSIGNED DEFAULT NULL,
  `delivery_address_line_snapshot` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_ward_snapshot` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_district_snapshot` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_province_snapshot` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_phone_snapshot` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_recipient_name_snapshot` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_code_id` bigint UNSIGNED DEFAULT NULL,
  `payment_id` bigint UNSIGNED DEFAULT NULL,
  `guest_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_ward` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_district` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_latitude` decimal(10,8) DEFAULT NULL,
  `guest_longitude` decimal(11,8) DEFAULT NULL,
  `estimated_delivery_time` timestamp NULL DEFAULT NULL,
  `actual_delivery_time` timestamp NULL DEFAULT NULL,
  `delivery_fee` decimal(12,2) NOT NULL DEFAULT '0.00',
  `driver_earning` decimal(10,2) DEFAULT NULL,
  `discount_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delivery_date` timestamp NULL DEFAULT NULL,
  `status` enum('pending_payment','awaiting_confirmation','confirmed','awaiting_driver','driver_confirmed','waiting_driver_pick_up','driver_picked_up','in_transit','delivered','item_received','cancelled','refunded','payment_failed','payment_received','order_failed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending_payment',
  `points_earned` int NOT NULL DEFAULT '0',
  `subtotal` decimal(12,2) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `delivery_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `customer_id`, `branch_id`, `driver_id`, `address_id`, `delivery_address_line_snapshot`, `delivery_ward_snapshot`, `delivery_district_snapshot`, `delivery_province_snapshot`, `delivery_phone_snapshot`, `delivery_recipient_name_snapshot`, `discount_code_id`, `payment_id`, `guest_name`, `guest_phone`, `guest_email`, `guest_address`, `guest_ward`, `guest_district`, `guest_city`, `guest_latitude`, `guest_longitude`, `estimated_delivery_time`, `actual_delivery_time`, `delivery_fee`, `driver_earning`, `discount_amount`, `tax_amount`, `order_date`, `delivery_date`, `status`, `points_earned`, `subtotal`, `total_amount`, `delivery_address`, `notes`, `created_at`, `updated_at`) VALUES
(134, 'QMM1BCWF', 18, 1, NULL, 40, '12a', 'Thượng Thanh', 'Long Biên', 'Hà Nội', '0981714620', 'Luminous', NULL, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 12:25:13', NULL, '55000.00', NULL, '0.00', '0.00', '2025-08-27 11:40:13', NULL, 'item_received', 0, '180000.00', '235000.00', '12a, Thượng Thanh, Long Biên, Hà Nội', NULL, '2025-08-27 11:40:13', '2025-08-27 11:40:13'),
(135, 'FQGFLJRR', 18, 1, NULL, 40, '12a', 'Thượng Thanh', 'Long Biên', 'Hà Nội', '0981714620', 'Luminous', NULL, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 04:58:03', NULL, '55000.00', NULL, '0.00', '0.00', '2025-08-28 04:13:03', NULL, 'item_received', 0, '150000.00', '205000.00', '12a, Thượng Thanh, Long Biên, Hà Nội', NULL, '2025-08-28 04:13:03', '2025-08-28 04:13:03'),
(139, '7XC3TFXN', 18, 1, NULL, 40, '12a', 'Thượng Thanh', 'Long Biên', 'Hà Nội', '0981714620', 'Luminous', NULL, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 05:10:34', NULL, '55000.00', NULL, '0.00', '0.00', '2025-08-28 04:25:34', NULL, 'awaiting_confirmation', 0, '15000.00', '70000.00', '12a, Thượng Thanh, Long Biên, Hà Nội', NULL, '2025-08-28 04:25:34', '2025-08-28 04:25:34'),
(140, 'IT5O9ZK6', 18, 1, NULL, 40, '12a', 'Thượng Thanh', 'Long Biên', 'Hà Nội', '0981714620', 'Luminous', NULL, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 05:10:35', NULL, '55000.00', NULL, '0.00', '0.00', '2025-08-28 04:25:35', NULL, 'awaiting_confirmation', 0, '15000.00', '70000.00', '12a, Thượng Thanh, Long Biên, Hà Nội', NULL, '2025-08-28 04:25:35', '2025-08-28 04:25:35'),
(141, 'Q9NM8HQ1', 18, 1, NULL, 40, '12a', 'Thượng Thanh', 'Long Biên', 'Hà Nội', '0981714620', 'Luminous', NULL, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 05:10:55', NULL, '55000.00', NULL, '0.00', '0.00', '2025-08-28 04:25:55', NULL, 'awaiting_confirmation', 0, '15000.00', '70000.00', '12a, Thượng Thanh, Long Biên, Hà Nội', NULL, '2025-08-28 04:25:55', '2025-08-28 04:25:55'),
(142, 'DHRSQNFM', 18, 1, NULL, 40, '12a', 'Thượng Thanh', 'Long Biên', 'Hà Nội', '0981714620', 'Luminous', NULL, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 05:12:31', NULL, '55000.00', NULL, '0.00', '0.00', '2025-08-28 04:27:31', NULL, 'confirmed', 0, '15000.00', '70000.00', '12a, Thượng Thanh, Long Biên, Hà Nội', NULL, '2025-08-28 04:27:31', '2025-08-28 04:27:31'),
(143, 'GTYSE6DU', 18, 1, NULL, 40, '12a', 'Thượng Thanh', 'Long Biên', 'Hà Nội', '0981714620', 'Luminous', NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-28 05:13:22', NULL, '55000.00', NULL, '0.00', '0.00', '2025-08-28 04:28:22', NULL, 'awaiting_confirmation', 0, '15000.00', '70000.00', '12a, Thượng Thanh, Long Biên, Hà Nội', NULL, '2025-08-28 04:28:22', '2025-08-28 04:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_cancellations`
--

CREATE TABLE `order_cancellations` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `cancelled_by` bigint UNSIGNED DEFAULT NULL,
  `cancellation_type` enum('customer_cancel','driver_cancel','restaurant_cancel','system_cancel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancellation_date` datetime NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancellation_stage` enum('before_processing','processing','ready_for_delivery','during_delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `penalty_applied` tinyint(1) NOT NULL DEFAULT '0',
  `penalty_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `points_deducted` int NOT NULL DEFAULT '0',
  `evidence` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_cancellations`
--

INSERT INTO `order_cancellations` (`id`, `order_id`, `cancelled_by`, `cancellation_type`, `cancellation_date`, `reason`, `cancellation_stage`, `penalty_applied`, `penalty_amount`, `points_deducted`, `evidence`, `notes`, `created_at`, `updated_at`) VALUES
(1, 24, 1, 'system_cancel', '2025-07-09 14:34:38', 'Thời tiết xấu', 'before_processing', 1, '0.00', 0, NULL, 'Ghi chú bổ sung về việc hủy đơn hàng', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(2, 36, 1, 'customer_cancel', '2025-07-20 17:44:38', 'Địa chỉ giao hàng không chính xác', 'before_processing', 0, '0.00', 84, NULL, 'Ghi chú bổ sung về việc hủy đơn hàng', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(3, 37, 1, 'driver_cancel', '2025-07-03 07:18:38', 'Khách hàng yêu cầu hủy', 'during_delivery', 0, '0.00', 0, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(4, 46, 1, 'restaurant_cancel', '2025-07-13 09:40:39', 'Không có tài xế khả dụng', 'during_delivery', 0, '30757.00', 16, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(5, 47, 1, 'driver_cancel', '2025-08-01 01:10:39', 'Khách hàng yêu cầu hủy', 'during_delivery', 1, '18857.00', 0, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED DEFAULT NULL,
  `combo_id` bigint UNSIGNED DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `unit_price` decimal(12,2) NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `product_name_snapshot` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_name_snapshot` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_attributes_snapshot` json DEFAULT NULL,
  `combo_name_snapshot` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `combo_items_snapshot` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_variant_id`, `combo_id`, `quantity`, `unit_price`, `total_price`, `product_name_snapshot`, `variant_name_snapshot`, `variant_attributes_snapshot`, `combo_name_snapshot`, `combo_items_snapshot`, `created_at`, `updated_at`) VALUES
(63, 24, 102, NULL, 2, '106027.00', '212054.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(64, 24, 118, NULL, 1, '105199.00', '105199.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(65, 24, 297, NULL, 2, '47064.00', '94128.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(66, 24, NULL, 4, 1, '65000.00', '65000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(67, 25, NULL, 5, 1, '150000.00', '150000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(68, 25, NULL, 5, 2, '150000.00', '300000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(69, 25, 233, NULL, 1, '77117.00', '77117.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(70, 26, 69, NULL, 2, '155705.00', '311410.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(71, 26, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(72, 26, 33, NULL, 1, '78724.00', '78724.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(73, 26, NULL, 2, 1, '250000.00', '250000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(74, 27, NULL, 6, 3, '820000.00', '2460000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(75, 27, 432, NULL, 3, '169017.00', '507051.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(76, 28, 365, NULL, 3, '82449.00', '247347.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(77, 28, NULL, 3, 2, '180000.00', '360000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(78, 28, 491, NULL, 1, '129656.00', '129656.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(79, 29, NULL, 2, 2, '250000.00', '500000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(80, 30, 450, NULL, 2, '219834.00', '439668.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(81, 30, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(82, 30, 91, NULL, 1, '131348.00', '131348.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(83, 31, 105, NULL, 3, '87395.00', '262185.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(84, 31, NULL, 4, 2, '65000.00', '130000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(85, 32, 251, NULL, 3, '92101.00', '276303.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(86, 33, 334, NULL, 1, '105274.00', '105274.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(87, 34, NULL, 3, 3, '180000.00', '540000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(88, 34, 347, NULL, 2, '139609.00', '279218.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(89, 34, 459, NULL, 3, '165793.00', '497379.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(90, 34, NULL, 5, 3, '150000.00', '450000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(91, 35, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(92, 35, 196, NULL, 1, '194752.00', '194752.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(93, 35, 504, NULL, 3, '169481.00', '508443.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(94, 35, NULL, 1, 2, '120000.00', '240000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(95, 36, 342, NULL, 1, '171615.00', '171615.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(96, 36, NULL, 4, 1, '65000.00', '65000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(97, 37, NULL, 1, 3, '120000.00', '360000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(98, 37, 6, NULL, 2, '101456.00', '202912.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(99, 38, 365, NULL, 3, '82449.00', '247347.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(100, 38, NULL, 1, 2, '120000.00', '240000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(101, 38, NULL, 1, 3, '120000.00', '360000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(102, 38, NULL, 5, 3, '150000.00', '450000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(103, 39, NULL, 4, 1, '65000.00', '65000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(104, 39, NULL, 1, 2, '120000.00', '240000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(105, 39, NULL, 6, 3, '820000.00', '2460000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(106, 40, NULL, 6, 3, '820000.00', '2460000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(107, 40, 484, NULL, 3, '167452.00', '502356.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(108, 40, NULL, 6, 1, '820000.00', '820000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(109, 40, 104, NULL, 1, '70395.00', '70395.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(110, 41, NULL, 6, 1, '820000.00', '820000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(111, 41, NULL, 5, 1, '150000.00', '150000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(112, 41, 349, NULL, 2, '160765.00', '321530.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(113, 42, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(114, 42, NULL, 4, 2, '65000.00', '130000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(115, 42, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(116, 43, 484, NULL, 1, '167452.00', '167452.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(117, 44, 243, NULL, 2, '137031.00', '274062.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(118, 45, 7, NULL, 2, '144595.00', '289190.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(119, 45, 19, NULL, 1, '56032.00', '56032.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(120, 46, NULL, 6, 3, '820000.00', '2460000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(121, 46, 169, NULL, 1, '112251.00', '112251.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(122, 46, 139, NULL, 1, '85770.00', '85770.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(123, 46, NULL, 6, 1, '820000.00', '820000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(124, 47, NULL, 2, 3, '250000.00', '750000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(125, 47, NULL, 2, 1, '250000.00', '250000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(126, 47, 254, NULL, 1, '128100.00', '128100.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(127, 47, NULL, 5, 3, '150000.00', '450000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(128, 48, NULL, 2, 1, '250000.00', '250000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(129, 48, 401, NULL, 1, '168713.00', '168713.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(130, 48, NULL, 2, 2, '250000.00', '500000.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(131, 49, 500, NULL, 2, '159481.00', '318962.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(132, 49, 153, NULL, 3, '127432.00', '382296.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(133, 49, 473, NULL, 1, '153810.00', '153810.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(134, 50, 396, NULL, 2, '89629.00', '179258.00', NULL, NULL, NULL, NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(135, 51, 67, NULL, 1, '131134.50', '131134.50', 'Burger Cá Ngừ', 'S, Vị cổ điển', '{\"Size\": \"S\", \"Vị\": \"Vị cổ điển\"}', NULL, NULL, '2025-08-01 04:27:51', '2025-08-01 04:27:51'),
(138, 54, 7, NULL, 1, '130135.50', '130135.50', 'Burger Gà Giòn', 'S, Vị truyền thống', '{\"Size\": \"S\", \"Vị\": \"Vị truyền thống\"}', NULL, NULL, '2025-08-01 04:40:44', '2025-08-01 04:40:44'),
(139, 55, 7, NULL, 1, '130135.50', '130135.50', 'Burger Gà Giòn', 'S, Vị truyền thống', '{\"Size\": \"S\", \"Vị\": \"Vị truyền thống\"}', NULL, NULL, '2025-08-01 04:44:14', '2025-08-01 04:44:14'),
(140, 55, 61, NULL, 1, '40630.00', '40630.00', 'Burger Gà Phô Mai', 'S, Vị truyền thống', '{\"Size\": \"S\", \"Vị\": \"Vị truyền thống\"}', NULL, NULL, '2025-08-01 04:44:14', '2025-08-01 04:44:14'),
(141, 56, 7, NULL, 1, '134595.00', '134595.00', 'Burger Gà Giòn', 'S, Vị truyền thống', '{\"Size\": \"S\", \"Vị\": \"Vị truyền thống\"}', NULL, NULL, '2025-08-01 07:10:29', '2025-08-01 07:10:29'),
(142, 56, 37, NULL, 1, '102402.00', '102402.00', 'Burger Gà Nướng', 'S, Vị truyền thống', '{\"Size\": \"S\", \"Vị\": \"Vị truyền thống\"}', NULL, NULL, '2025-08-01 07:10:29', '2025-08-01 07:10:29'),
(143, 56, 67, NULL, 1, '135705.00', '135705.00', 'Burger Cá Ngừ', 'S, Vị cổ điển', '{\"Size\": \"S\", \"Vị\": \"Vị cổ điển\"}', NULL, NULL, '2025-08-01 07:10:29', '2025-08-01 07:10:29'),
(144, 57, 7, NULL, 1, '134595.00', '134595.00', 'Burger Gà Giòn', 'S, Vị truyền thống', '{\"Size\": \"S\", \"Vị\": \"Vị truyền thống\"}', NULL, NULL, '2025-08-01 07:11:59', '2025-08-01 07:11:59'),
(145, 58, 61, NULL, 1, '40630.00', '40630.00', 'Burger Gà Phô Mai', 'S, Vị truyền thống', '{\"Size\": \"S\", \"Vị\": \"Vị truyền thống\"}', NULL, NULL, '2025-08-01 07:42:26', '2025-08-01 07:42:26'),
(146, 58, 92, NULL, 2, '129348.00', '258696.00', 'Pizza Hải Sản', '6in, Vị cay', '{\"Size\": \"6in\", \"Vị\": \"Vị cay\"}', NULL, NULL, '2025-08-01 07:42:26', '2025-08-01 07:42:26'),
(147, 58, 94, NULL, 1, '154348.00', '154348.00', 'Pizza Hải Sản', '9in, Vị cay', '{\"Size\": \"9in\", \"Vị\": \"Vị cay\"}', NULL, NULL, '2025-08-01 07:42:26', '2025-08-01 07:42:26'),
(148, 59, 85, NULL, 1, '159820.00', '159820.00', 'Burger Bò Deluxe', 'S, Vị nguyên bản', '{\"Size\": \"S\", \"Vị\": \"Vị nguyên bản\"}', NULL, NULL, '2025-08-04 09:22:31', '2025-08-04 09:22:31'),
(149, 60, NULL, 2, 1, '250000.00', '250000.00', NULL, NULL, NULL, 'Combo Gà Rán Gia Đình', '[{\"quantity\": 1, \"product_name_snapshot\": \"Gà Rán Giòn\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Cơm Gà Rán\", \"variant_name_snapshot\": \"Phần nhỏ, Vị nhẹ\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Pepsi\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-04 12:50:28', '2025-08-04 12:50:28'),
(150, 61, NULL, 2, 1, '250000.00', '250000.00', NULL, NULL, NULL, 'Combo Gà Rán Gia Đình', '[{\"quantity\": 1, \"product_name_snapshot\": \"Gà Rán Giòn\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Cơm Gà Rán\", \"variant_name_snapshot\": \"Phần nhỏ, Vị nhẹ\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Pepsi\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-04 12:51:18', '2025-08-04 12:51:18'),
(151, 62, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-05 16:55:36', '2025-08-05 16:55:36'),
(152, 63, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 08:38:05', '2025-08-13 08:38:05'),
(153, 64, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 08:38:53', '2025-08-13 08:38:53'),
(154, 65, NULL, 3, 1, '180000.00', '180000.00', NULL, NULL, NULL, 'Combo Pizza Hải Sản Cao Cấp', '[{\"quantity\": 1, \"product_name_snapshot\": \"Pizza Hải Sản\", \"variant_name_snapshot\": \"6in, Vị truyền thống\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Nước Cam\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 08:39:26', '2025-08-13 08:39:26'),
(155, 66, NULL, 2, 1, '250000.00', '250000.00', NULL, NULL, NULL, 'Combo Gà Rán Gia Đình', '[{\"quantity\": 1, \"product_name_snapshot\": \"Gà Rán Giòn\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Cơm Gà Rán\", \"variant_name_snapshot\": \"Phần nhỏ, Vị nhẹ\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Pepsi\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 08:40:02', '2025-08-13 08:40:02'),
(156, 67, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 08:45:55', '2025-08-13 08:45:55'),
(157, 69, NULL, 2, 1, '250000.00', '250000.00', NULL, NULL, NULL, 'Combo Gà Rán Gia Đình', '[{\"quantity\": 1, \"product_name_snapshot\": \"Gà Rán Giòn\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Cơm Gà Rán\", \"variant_name_snapshot\": \"Phần nhỏ, Vị nhẹ\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Pepsi\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 08:51:42', '2025-08-13 08:51:42'),
(158, 72, NULL, 3, 1, '180000.00', '180000.00', NULL, NULL, NULL, 'Combo Pizza Hải Sản Cao Cấp', '[{\"quantity\": 1, \"product_name_snapshot\": \"Pizza Hải Sản\", \"variant_name_snapshot\": \"6in, Vị truyền thống\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Nước Cam\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 08:53:57', '2025-08-13 08:53:57'),
(159, 74, NULL, 3, 1, '180000.00', '180000.00', NULL, NULL, NULL, 'Combo Pizza Hải Sản Cao Cấp', '[{\"quantity\": 1, \"product_name_snapshot\": \"Pizza Hải Sản\", \"variant_name_snapshot\": \"6in, Vị truyền thống\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Nước Cam\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 08:56:34', '2025-08-13 08:56:34'),
(160, 75, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:01:21', '2025-08-13 09:01:21'),
(161, 76, 13, NULL, 1, '79789.00', '79789.00', 'Burger Cá', 'S, Vị cổ điển', '{\"Size\": \"S\", \"Vị\": \"Vị cổ điển\"}', NULL, NULL, '2025-08-13 09:01:22', '2025-08-13 09:01:22'),
(162, 77, NULL, 2, 1, '250000.00', '250000.00', NULL, NULL, NULL, 'Combo Gà Rán Gia Đình', '[{\"quantity\": 1, \"product_name_snapshot\": \"Gà Rán Giòn\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Cơm Gà Rán\", \"variant_name_snapshot\": \"Phần nhỏ, Vị nhẹ\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Pepsi\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:01:47', '2025-08-13 09:01:47'),
(163, 79, NULL, 4, 1, '65000.00', '65000.00', NULL, NULL, NULL, 'Combo Học Sinh Tiết Kiệm', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Gà Giòn\", \"variant_name_snapshot\": \"S, Vị truyền thống\"}, {\"quantity\": 1, \"product_name_snapshot\": \"7 Up\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:05:20', '2025-08-13 09:05:20'),
(164, 80, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:06:57', '2025-08-13 09:06:57'),
(165, 81, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:07:48', '2025-08-13 09:07:48'),
(166, 82, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:20:16', '2025-08-13 09:20:16'),
(167, 83, NULL, 3, 1, '180000.00', '180000.00', NULL, NULL, NULL, 'Combo Pizza Hải Sản Cao Cấp', '[{\"quantity\": 1, \"product_name_snapshot\": \"Pizza Hải Sản\", \"variant_name_snapshot\": \"6in, Vị truyền thống\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Nước Cam\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:22:57', '2025-08-13 09:22:57'),
(168, 84, NULL, 3, 1, '180000.00', '180000.00', NULL, NULL, NULL, 'Combo Pizza Hải Sản Cao Cấp', '[{\"quantity\": 1, \"product_name_snapshot\": \"Pizza Hải Sản\", \"variant_name_snapshot\": \"6in, Vị truyền thống\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Nước Cam\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:32:28', '2025-08-13 09:32:28'),
(169, 85, NULL, 3, 1, '180000.00', '180000.00', NULL, NULL, NULL, 'Combo Pizza Hải Sản Cao Cấp', '[{\"quantity\": 1, \"product_name_snapshot\": \"Pizza Hải Sản\", \"variant_name_snapshot\": \"6in, Vị truyền thống\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Nước Cam\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:36:25', '2025-08-13 09:36:26'),
(170, 86, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:39:51', '2025-08-13 09:39:51'),
(171, 87, NULL, 4, 1, '65000.00', '65000.00', NULL, NULL, NULL, 'Combo Học Sinh Tiết Kiệm', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Gà Giòn\", \"variant_name_snapshot\": \"S, Vị truyền thống\"}, {\"quantity\": 1, \"product_name_snapshot\": \"7 Up\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:42:25', '2025-08-13 09:42:25'),
(172, 88, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:44:00', '2025-08-13 09:44:00'),
(173, 89, NULL, 4, 1, '65000.00', '65000.00', NULL, NULL, NULL, 'Combo Học Sinh Tiết Kiệm', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Gà Giòn\", \"variant_name_snapshot\": \"S, Vị truyền thống\"}, {\"quantity\": 1, \"product_name_snapshot\": \"7 Up\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:51:05', '2025-08-13 09:51:05'),
(174, 90, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:52:12', '2025-08-13 09:52:12'),
(175, 91, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 09:54:16', '2025-08-13 09:54:16'),
(176, 92, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 10:13:50', '2025-08-13 10:13:50'),
(177, 93, NULL, 6, 1, '820000.00', '820000.00', NULL, NULL, NULL, 'Combo Gà Gật Gù', '[{\"quantity\": 1, \"product_name_snapshot\": \"Gà Sốt Cay\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Gà Không Xương\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Gà Sốt Teriyaki\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Gà Rán Mật Ong\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Pepsi\", \"variant_name_snapshot\": \"M, Vị đặc biệt\"}, {\"quantity\": 1, \"product_name_snapshot\": \"7 Up\", \"variant_name_snapshot\": \"M, Vị đặc biệt\"}]', '2025-08-13 10:16:17', '2025-08-13 10:16:17'),
(178, 94, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 10:22:54', '2025-08-13 10:22:55'),
(179, 95, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 10:24:37', '2025-08-13 10:24:37'),
(180, 96, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-13 10:26:37', '2025-08-13 10:26:37'),
(181, 97, 349, NULL, 1, '128612.00', '128612.00', 'Cơm Gà Chiên', 'Phần nhỏ, Vị nhẹ', '{\"Size\": \"Phần nhỏ\", \"Vị\": \"Vị nhẹ\"}', NULL, NULL, '2025-08-22 06:55:18', '2025-08-22 06:55:18'),
(182, 98, 259, NULL, 1, '17272.00', '17272.00', 'Gà Rán Không Cay', '1 miếng, Vị nguyên bản', '{\"Size\": \"1 miếng\", \"Vị\": \"Vị nguyên bản\"}', NULL, NULL, '2025-08-22 10:22:03', '2025-08-22 10:22:03'),
(183, 99, 37, NULL, 1, '82402.00', '82402.00', 'Burger Gà Nướng', 'S, Vị truyền thống', '{\"Size\": \"S\", \"Vị\": \"Vị truyền thống\"}', NULL, NULL, '2025-08-22 11:03:40', '2025-08-22 11:03:40'),
(184, 100, 337, NULL, 1, '122892.00', '122892.00', 'Cơm Sườn Nướng', 'Phần nhỏ, Vị nhẹ', '{\"Size\": \"Phần nhỏ\", \"Vị\": \"Vị nhẹ\"}', NULL, NULL, '2025-08-25 15:58:31', '2025-08-25 15:58:31'),
(185, 101, 338, NULL, 1, '125292.00', '125292.00', 'Cơm Sườn Nướng', 'Phần nhỏ, Vị đậm đà', '{\"Size\": \"Phần nhỏ\", \"Vị\": \"Vị đậm đà\"}', NULL, NULL, '2025-08-26 12:01:46', '2025-08-26 12:01:46'),
(186, 102, 7, NULL, 1, '114595.00', '114595.00', 'Burger Gà Giòn', 'S, Vị truyền thống', '{\"Size\": \"S\", \"Vị\": \"Vị truyền thống\"}', NULL, NULL, '2025-08-26 12:11:04', '2025-08-26 12:11:04'),
(187, 103, NULL, 2, 1, '250000.00', '250000.00', NULL, NULL, NULL, 'Combo Gà Rán Gia Đình', '[{\"quantity\": 1, \"product_name_snapshot\": \"Gà Rán Giòn\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Cơm Gà Rán\", \"variant_name_snapshot\": \"Phần nhỏ, Vị nhẹ\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Pepsi\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-26 12:12:54', '2025-08-26 12:12:54'),
(188, 104, NULL, 2, 1, '250000.00', '250000.00', NULL, NULL, NULL, 'Combo Gà Rán Gia Đình', '[{\"quantity\": 1, \"product_name_snapshot\": \"Gà Rán Giòn\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Cơm Gà Rán\", \"variant_name_snapshot\": \"Phần nhỏ, Vị nhẹ\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Pepsi\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-26 12:25:04', '2025-08-26 12:25:04'),
(189, 105, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-26 12:33:52', '2025-08-26 12:33:52'),
(190, 106, NULL, 2, 1, '250000.00', '250000.00', NULL, NULL, NULL, 'Combo Gà Rán Gia Đình', '[{\"quantity\": 1, \"product_name_snapshot\": \"Gà Rán Giòn\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Cơm Gà Rán\", \"variant_name_snapshot\": \"Phần nhỏ, Vị nhẹ\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Pepsi\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-26 13:17:57', '2025-08-26 13:17:58'),
(191, 107, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-26 13:24:34', '2025-08-26 13:24:34'),
(198, 114, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-26 14:07:56', '2025-08-26 14:07:56'),
(199, 115, NULL, 1, 1, '120000.00', '120000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-26 14:10:54', '2025-08-26 14:10:54'),
(200, 116, NULL, 1, 1, '90000.00', '90000.00', NULL, NULL, NULL, 'Combo Burger Bò Phô Mai Deluxe', '[{\"quantity\": 1, \"product_name_snapshot\": \"Burger Bò Phô Mai\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Coca Cola\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-26 14:14:30', '2025-08-26 14:14:30'),
(201, 116, NULL, 2, 1, '200000.00', '200000.00', NULL, NULL, NULL, 'Combo Gà Rán Gia Đình', '[{\"quantity\": 1, \"product_name_snapshot\": \"Gà Rán Giòn\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Cơm Gà Rán\", \"variant_name_snapshot\": \"Phần nhỏ, Vị nhẹ\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Pepsi\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-26 14:14:30', '2025-08-26 14:14:30'),
(202, 117, NULL, 6, 1, '820000.00', '820000.00', NULL, NULL, NULL, 'Combo Gà Gật Gù', '[{\"quantity\": 1, \"product_name_snapshot\": \"Gà Sốt Cay\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Gà Không Xương\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Gà Sốt Teriyaki\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Gà Rán Mật Ong\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Pepsi\", \"variant_name_snapshot\": \"M, Vị đặc biệt\"}, {\"quantity\": 1, \"product_name_snapshot\": \"7 Up\", \"variant_name_snapshot\": \"M, Vị đặc biệt\"}]', '2025-08-26 14:15:42', '2025-08-26 14:15:42'),
(203, 118, NULL, 2, 1, '250000.00', '250000.00', NULL, NULL, NULL, 'Combo Gà Rán Gia Đình', '[{\"quantity\": 1, \"product_name_snapshot\": \"Gà Rán Giòn\", \"variant_name_snapshot\": \"1 miếng, Vị nguyên bản\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Cơm Gà Rán\", \"variant_name_snapshot\": \"Phần nhỏ, Vị nhẹ\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Pepsi\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-26 14:18:05', '2025-08-26 14:18:05'),
(204, 119, NULL, 3, 1, '180000.00', '180000.00', NULL, NULL, NULL, 'Combo Pizza Hải Sản Cao Cấp', '[{\"quantity\": 1, \"product_name_snapshot\": \"Pizza Hải Sản\", \"variant_name_snapshot\": \"6in, Vị truyền thống\"}, {\"quantity\": 1, \"product_name_snapshot\": \"Nước Cam\", \"variant_name_snapshot\": \"S, Vị nguyên bản\"}]', '2025-08-26 14:19:18', '2025-08-26 14:19:18'),
(221, 134, 543, NULL, 12, '15000.00', '180000.00', 'test prd 2', 'Size S', '{\"Size\": \"Size S\"}', NULL, NULL, '2025-08-27 11:40:13', '2025-08-27 11:40:13'),
(222, 135, 543, NULL, 10, '15000.00', '150000.00', 'test prd 2', 'Size S', '{\"Size\": \"Size S\"}', NULL, NULL, '2025-08-28 04:13:03', '2025-08-28 04:13:03'),
(226, 139, 543, NULL, 1, '15000.00', '15000.00', 'test prd 2', 'Size S', '{\"Size\": \"Size S\"}', NULL, NULL, '2025-08-28 04:25:34', '2025-08-28 04:25:34'),
(227, 140, 543, NULL, 1, '15000.00', '15000.00', 'test prd 2', 'Size S', '{\"Size\": \"Size S\"}', NULL, NULL, '2025-08-28 04:25:35', '2025-08-28 04:25:35'),
(228, 141, 543, NULL, 1, '15000.00', '15000.00', 'test prd 2', 'Size S', '{\"Size\": \"Size S\"}', NULL, NULL, '2025-08-28 04:25:55', '2025-08-28 04:25:55'),
(229, 142, 543, NULL, 1, '15000.00', '15000.00', 'test prd 2', 'Size S', '{\"Size\": \"Size S\"}', NULL, NULL, '2025-08-28 04:27:31', '2025-08-28 04:27:31'),
(230, 143, 543, NULL, 1, '15000.00', '15000.00', 'test prd 2', 'Size S', '{\"Size\": \"Size S\"}', NULL, NULL, '2025-08-28 04:28:22', '2025-08-28 04:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_item_toppings`
--

CREATE TABLE `order_item_toppings` (
  `id` bigint UNSIGNED NOT NULL,
  `order_item_id` bigint UNSIGNED NOT NULL,
  `topping_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` decimal(12,2) NOT NULL,
  `topping_name_snapshot` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topping_unit_price_snapshot` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_item_toppings`
--

INSERT INTO `order_item_toppings` (`id`, `order_item_id`, `topping_id`, `quantity`, `price`, `topping_name_snapshot`, `topping_unit_price_snapshot`, `created_at`, `updated_at`) VALUES
(38, 63, 1, 2, '15000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(39, 63, 7, 2, '12000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(40, 64, 8, 1, '7000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(41, 65, 3, 1, '10000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(42, 65, 6, 1, '8000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(43, 72, 10, 2, '3000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(44, 80, 1, 1, '15000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(45, 86, 4, 1, '5000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(46, 86, 9, 1, '6000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(47, 88, 6, 2, '8000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(48, 88, 7, 1, '12000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(49, 88, 10, 1, '3000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(50, 89, 10, 1, '3000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(51, 99, 5, 2, '5000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(52, 99, 6, 2, '8000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(53, 99, 7, 2, '12000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(54, 109, 8, 2, '7000.00', NULL, NULL, '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(55, 116, 4, 1, '5000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(56, 116, 5, 1, '5000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(57, 116, 8, 2, '7000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(58, 121, 1, 1, '15000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(59, 121, 5, 1, '5000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(60, 121, 7, 1, '12000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(61, 122, 5, 2, '5000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(62, 122, 6, 1, '8000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(63, 132, 2, 2, '20000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(64, 133, 1, 2, '15000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(65, 133, 3, 2, '10000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(66, 133, 6, 1, '8000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(67, 134, 8, 2, '7000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(68, 134, 9, 1, '6000.00', NULL, NULL, '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(69, 135, 2, 1, '20000.00', 'Thịt xông khói', '20000.00', '2025-08-01 04:27:51', '2025-08-01 04:27:51'),
(70, 135, 5, 1, '5000.00', 'Cà chua thêm', '5000.00', '2025-08-01 04:27:51', '2025-08-01 04:27:51'),
(74, 138, 1, 1, '15000.00', 'Phô mai thêm', '15000.00', '2025-08-01 04:40:44', '2025-08-01 04:40:44'),
(75, 138, 3, 1, '10000.00', 'Trứng ốp la', '10000.00', '2025-08-01 04:40:44', '2025-08-01 04:40:44'),
(76, 140, 3, 1, '10000.00', 'Trứng ốp la', '10000.00', '2025-08-01 04:44:14', '2025-08-01 04:44:14'),
(77, 140, 4, 1, '5000.00', 'Xà lách thêm', '5000.00', '2025-08-01 04:44:14', '2025-08-01 04:44:14'),
(78, 141, 1, 1, '15000.00', 'Phô mai thêm', '15000.00', '2025-08-01 07:10:29', '2025-08-01 07:10:29'),
(79, 141, 3, 1, '10000.00', 'Trứng ốp la', '10000.00', '2025-08-01 07:10:29', '2025-08-01 07:10:29'),
(80, 142, 1, 1, '15000.00', 'Phô mai thêm', '15000.00', '2025-08-01 07:10:29', '2025-08-01 07:10:29'),
(81, 143, 2, 1, '20000.00', 'Thịt xông khói', '20000.00', '2025-08-01 07:10:29', '2025-08-01 07:10:29'),
(82, 144, 1, 1, '15000.00', 'Phô mai thêm', '15000.00', '2025-08-01 07:11:59', '2025-08-01 07:11:59'),
(83, 144, 3, 1, '10000.00', 'Trứng ốp la', '10000.00', '2025-08-01 07:11:59', '2025-08-01 07:11:59'),
(84, 145, 3, 1, '10000.00', 'Trứng ốp la', '10000.00', '2025-08-01 07:42:26', '2025-08-01 07:42:26'),
(85, 145, 4, 1, '5000.00', 'Xà lách thêm', '5000.00', '2025-08-01 07:42:26', '2025-08-01 07:42:26'),
(86, 146, 2, 1, '20000.00', 'Thịt xông khói', '20000.00', '2025-08-01 07:42:26', '2025-08-01 07:42:26'),
(87, 147, 2, 1, '20000.00', 'Thịt xông khói', '20000.00', '2025-08-01 07:42:26', '2025-08-01 07:42:26'),
(88, 161, 4, 1, '5000.00', 'Xà lách thêm', '5000.00', '2025-08-13 09:01:22', '2025-08-13 09:01:22'),
(89, 183, 4, 1, '5000.00', 'Xà lách thêm', '5000.00', '2025-08-22 11:03:40', '2025-08-22 11:03:40'),
(90, 183, 5, 1, '5000.00', 'Cà chua thêm', '5000.00', '2025-08-22 11:03:40', '2025-08-22 11:03:40'),
(91, 183, 10, 1, '3000.00', 'Sốt BBQ thêm', '3000.00', '2025-08-22 11:03:40', '2025-08-22 11:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `order_status_histories`
--

CREATE TABLE `order_status_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `old_status` enum('new','processing','ready','delivery','completed','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_status` enum('new','processing','ready','delivery','completed','cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `changed_by` bigint UNSIGNED DEFAULT NULL,
  `changed_by_role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `changed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status_histories`
--

INSERT INTO `order_status_histories` (`id`, `order_id`, `old_status`, `new_status`, `changed_by`, `changed_by_role`, `note`, `changed_at`, `created_at`, `updated_at`) VALUES
(139, 24, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-09 07:11:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(140, 24, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-09 07:13:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(141, 24, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-09 07:41:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(142, 24, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-09 07:52:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(143, 24, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-09 07:59:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(144, 24, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-09 08:15:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(145, 24, '', 'cancelled', 1, 'branch_manager', 'Đơn hàng bị hủy', '2025-07-09 08:37:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(146, 25, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-22 18:20:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(147, 25, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-22 18:24:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(148, 25, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-22 18:46:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(149, 25, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-22 19:04:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(150, 25, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-22 19:27:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(151, 25, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-22 19:55:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(152, 26, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-19 15:46:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(153, 26, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-19 15:47:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(154, 26, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-19 16:07:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(155, 26, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-19 16:21:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(156, 26, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-19 16:42:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(157, 26, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-19 16:49:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(158, 27, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-24 14:49:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(159, 27, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-24 14:51:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(160, 27, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-24 15:16:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(161, 27, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-24 15:45:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(162, 27, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-24 15:54:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(163, 27, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-24 16:17:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(164, 28, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-24 18:17:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(165, 28, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-24 18:21:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(166, 28, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-24 18:33:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(167, 28, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-24 18:47:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(168, 28, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-24 19:03:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(169, 28, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-24 19:26:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(170, 29, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-12 05:26:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(171, 29, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-12 05:30:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(172, 29, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-12 05:46:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(173, 29, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-12 06:05:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(174, 29, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-12 06:22:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(175, 29, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-12 06:33:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(176, 30, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-31 06:42:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(177, 30, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 06:44:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(178, 30, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 06:58:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(179, 30, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 07:14:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(180, 30, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 07:20:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(181, 30, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 07:28:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(182, 31, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-31 01:41:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(183, 31, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 01:45:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(184, 31, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 01:55:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(185, 31, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 02:20:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(186, 31, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 02:39:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(187, 31, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 02:44:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(188, 32, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-10 13:35:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(189, 32, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-10 13:36:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(190, 32, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-10 14:03:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(191, 32, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-10 14:09:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(192, 32, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-10 14:16:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(193, 32, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-10 14:24:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(194, 33, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-03 05:26:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(195, 33, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 05:28:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(196, 33, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 05:50:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(197, 33, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 06:00:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(198, 33, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 06:28:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(199, 33, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 06:41:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(200, 34, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-07 03:35:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(201, 34, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 03:37:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(202, 34, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 03:49:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(203, 34, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 03:55:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(204, 34, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 04:24:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(205, 34, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 04:45:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(206, 35, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-16 02:15:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(207, 35, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-16 02:19:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(208, 35, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-16 02:37:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(209, 35, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-16 03:04:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(210, 35, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-16 03:16:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(211, 35, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-16 03:31:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(212, 36, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-20 10:24:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(213, 36, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-20 10:26:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(214, 36, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-20 10:49:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(215, 36, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-20 10:58:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(216, 36, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-20 11:10:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(217, 36, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-20 11:19:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(218, 36, '', 'cancelled', 1, 'branch_manager', 'Đơn hàng bị hủy', '2025-07-20 11:49:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(219, 37, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-02 23:54:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(220, 37, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-02 23:55:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(221, 37, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 00:05:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(222, 37, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 00:32:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(223, 37, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 00:58:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(224, 37, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 01:27:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(225, 37, '', 'cancelled', 1, 'branch_manager', 'Đơn hàng bị hủy', '2025-07-03 01:46:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(226, 38, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-28 21:12:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(227, 38, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-28 21:15:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(228, 38, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-28 21:41:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(229, 38, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-28 21:51:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(230, 38, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-28 22:02:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(231, 38, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-28 22:28:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(232, 39, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-07 16:43:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(233, 39, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 16:48:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(234, 39, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 16:57:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(235, 39, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 17:08:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(236, 39, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 17:21:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(237, 39, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 17:34:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(238, 40, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-17 02:09:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(239, 40, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-17 02:14:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(240, 40, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-17 02:35:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(241, 40, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-17 02:54:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(242, 40, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-17 03:02:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(243, 40, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-17 03:08:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(244, 41, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-03 11:00:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(245, 41, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 11:03:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(246, 41, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 11:20:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(247, 41, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 11:38:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(248, 41, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 12:00:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(249, 41, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 12:27:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(250, 42, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-08 09:22:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(251, 42, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-08 09:24:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(252, 42, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-08 09:50:38', '2025-08-01 04:25:38', '2025-08-01 04:25:38'),
(253, 42, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-08 10:13:38', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(254, 42, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-08 10:35:38', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(255, 42, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-08 10:59:38', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(256, 43, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-03 13:22:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(257, 43, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 13:23:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(258, 43, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 13:35:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(259, 43, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 14:02:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(260, 43, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 14:20:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(261, 43, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-03 14:47:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(262, 44, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-31 05:31:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(263, 44, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 05:32:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(264, 44, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 05:47:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(265, 44, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 06:07:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(266, 44, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 06:35:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(267, 44, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 06:42:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(268, 45, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-04 20:11:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(269, 45, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-04 20:16:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(270, 45, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-04 20:23:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(271, 45, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-04 20:42:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(272, 45, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-04 20:50:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(273, 45, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-04 21:04:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(274, 46, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-13 02:17:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(275, 46, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-13 02:18:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(276, 46, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-13 02:30:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(277, 46, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-13 02:52:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(278, 46, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-13 03:02:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(279, 46, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-13 03:13:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(280, 46, '', 'cancelled', 1, 'branch_manager', 'Đơn hàng bị hủy', '2025-07-13 03:42:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(281, 47, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-31 17:48:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(282, 47, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 17:50:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(283, 47, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 18:17:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(284, 47, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 18:22:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(285, 47, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 18:45:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(286, 47, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-31 18:54:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(287, 47, '', 'cancelled', 1, 'branch_manager', 'Đơn hàng bị hủy', '2025-07-31 19:25:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(288, 48, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-06 20:27:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(289, 48, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-06 20:31:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(290, 48, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-06 20:53:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(291, 48, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-06 21:22:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(292, 48, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-06 21:42:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(293, 48, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-06 21:52:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(294, 49, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-29 04:19:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(295, 49, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-29 04:23:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(296, 49, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-29 04:36:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(297, 49, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-29 05:00:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(298, 49, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-29 05:19:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(299, 49, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-29 05:27:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(300, 50, NULL, '', 1, 'system', 'Đơn hàng được tạo', '2025-07-07 14:16:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(301, 50, NULL, '', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 14:19:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(302, 50, '', 'processing', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 14:27:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(303, 50, 'processing', 'ready', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 14:57:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(304, 50, 'ready', 'delivery', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 15:09:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(305, 50, 'delivery', 'completed', 1, 'branch_manager', 'Cập nhật trạng thái đơn hàng', '2025-07-07 15:22:39', '2025-08-01 04:25:39', '2025-08-01 04:25:39'),
(308, 54, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-01 04:41:10', '2025-08-01 04:41:10', '2025-08-01 04:41:10'),
(309, 55, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-01 04:45:02', '2025-08-01 04:45:02', '2025-08-01 04:45:02'),
(310, 58, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-01 07:48:35', '2025-08-01 07:48:35', '2025-08-01 07:48:35'),
(311, 57, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-03 17:56:06', '2025-08-03 17:56:06', '2025-08-03 17:56:06'),
(312, 56, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-03 17:58:39', '2025-08-03 17:58:39', '2025-08-03 17:58:39'),
(313, 51, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-03 17:58:50', '2025-08-03 17:58:50', '2025-08-03 17:58:50'),
(314, 59, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-04 09:23:24', '2025-08-04 09:23:24', '2025-08-04 09:23:24'),
(315, 60, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-04 12:50:59', '2025-08-04 12:50:59', '2025-08-04 12:50:59'),
(316, 61, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-04 12:51:49', '2025-08-04 12:51:49', '2025-08-04 12:51:49'),
(319, 49, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-04 13:29:21', '2025-08-04 13:29:21', '2025-08-04 13:29:21'),
(320, 27, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-04 13:29:22', '2025-08-04 13:29:22', '2025-08-04 13:29:22'),
(321, 62, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-05 16:55:52', '2025-08-05 16:55:52', '2025-08-05 16:55:52'),
(322, 96, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:36:19', '2025-08-13 11:36:19', '2025-08-13 11:36:19'),
(323, 95, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:40:12', '2025-08-13 11:40:12', '2025-08-13 11:40:12'),
(324, 94, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:40:21', '2025-08-13 11:40:21', '2025-08-13 11:40:21'),
(325, 93, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:40:23', '2025-08-13 11:40:23', '2025-08-13 11:40:23'),
(326, 92, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:40:24', '2025-08-13 11:40:24', '2025-08-13 11:40:24'),
(327, 91, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:40:43', '2025-08-13 11:40:43', '2025-08-13 11:40:43'),
(328, 90, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:40:58', '2025-08-13 11:40:58', '2025-08-13 11:40:58'),
(329, 89, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:43:14', '2025-08-13 11:43:14', '2025-08-13 11:43:14'),
(330, 88, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:43:24', '2025-08-13 11:43:24', '2025-08-13 11:43:24'),
(331, 87, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:43:52', '2025-08-13 11:43:52', '2025-08-13 11:43:52'),
(332, 86, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:46:46', '2025-08-13 11:46:46', '2025-08-13 11:46:46'),
(333, 85, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:46:58', '2025-08-13 11:46:58', '2025-08-13 11:46:58'),
(334, 84, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-13 11:47:00', '2025-08-13 11:47:00', '2025-08-13 11:47:00'),
(335, 98, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-22 10:51:05', '2025-08-22 10:51:05', '2025-08-22 10:51:05'),
(336, 99, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-22 11:03:48', '2025-08-22 11:03:48', '2025-08-22 11:03:48'),
(337, 100, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 11:28:22', '2025-08-26 11:28:22', '2025-08-26 11:28:22'),
(338, 97, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 11:28:24', '2025-08-26 11:28:24', '2025-08-26 11:28:24'),
(339, 101, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 12:01:53', '2025-08-26 12:01:53', '2025-08-26 12:01:53'),
(340, 102, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 12:11:11', '2025-08-26 12:11:11', '2025-08-26 12:11:11'),
(341, 103, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 12:13:08', '2025-08-26 12:13:08', '2025-08-26 12:13:08'),
(342, 104, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 12:25:09', '2025-08-26 12:25:09', '2025-08-26 12:25:09'),
(343, 104, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 12:30:27', '2025-08-26 12:30:27', '2025-08-26 12:30:27'),
(344, 105, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 12:33:56', '2025-08-26 12:33:56', '2025-08-26 12:33:56'),
(345, 106, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 13:18:34', '2025-08-26 13:18:34', '2025-08-26 13:18:34'),
(346, 107, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 13:24:45', '2025-08-26 13:24:45', '2025-08-26 13:24:45'),
(353, 114, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 14:08:03', '2025-08-26 14:08:03', '2025-08-26 14:08:03'),
(354, 115, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 14:11:08', '2025-08-26 14:11:08', '2025-08-26 14:11:08'),
(355, 116, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 14:14:38', '2025-08-26 14:14:38', '2025-08-26 14:14:38'),
(356, 117, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 14:15:49', '2025-08-26 14:15:49', '2025-08-26 14:15:49'),
(357, 118, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 14:18:10', '2025-08-26 14:18:10', '2025-08-26 14:18:10'),
(358, 119, '', '', 2, 'branch_manager', 'Xác nhận đơn hàng', '2025-08-26 14:19:29', '2025-08-26 14:19:29', '2025-08-26 14:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_method` enum('cod','vnpay','balance') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cod',
  `payer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_ref` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `response_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_amount` bigint UNSIGNED NOT NULL,
  `payment_currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VND',
  `payment_status` enum('pending','completed','failed','refunded') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_date` datetime DEFAULT NULL,
  `payment_method_detail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callback_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_method`, `payer_name`, `payer_email`, `payer_phone`, `txn_ref`, `transaction_id`, `response_code`, `bank_code`, `payment_amount`, `payment_currency`, `payment_status`, `payment_date`, `payment_method_detail`, `gateway_response`, `ip_address`, `callback_data`, `created_at`, `updated_at`) VALUES
(1, 'vnpay', 'Dr. Eldon Kuvalis', 'kiarra.kuhic@example.net', '(620) 446-8120', 'TXN17540223373201632', 'TXN175402233732087166', '00', NULL, 102198, 'VND', 'completed', '2025-07-23 11:25:37', NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:25:37', '2025-08-01 04:25:37'),
(2, 'cod', 'Dr. Eldon Kuvalis', 'kiarra.kuhic@example.net', '(620) 446-8120', 'TXN17540223373267861', NULL, NULL, NULL, 248195, 'VND', 'refunded', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:25:37', '2025-08-01 04:25:37'),
(3, 'balance', 'Dr. Eldon Kuvalis', 'kiarra.kuhic@example.net', '(620) 446-8120', 'TXN17540223373285178', 'TXN175402233732842520', '00', NULL, 215140, 'VND', 'completed', '2025-07-16 11:25:37', NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:25:37', '2025-08-01 04:25:37'),
(4, 'balance', 'Dr. Eldon Kuvalis', 'kiarra.kuhic@example.net', '(620) 446-8120', 'TXN17540223373308517', 'TXN175402233733044314', '00', NULL, 379168, 'VND', 'completed', '2025-07-08 11:25:37', NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:25:37', '2025-08-01 04:25:37'),
(5, 'balance', 'Dr. Eldon Kuvalis', 'kiarra.kuhic@example.net', '(620) 446-8120', 'TXN17540223373324364', 'TXN175402233733285888', '00', NULL, 261971, 'VND', 'completed', '2025-07-04 11:25:37', NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:25:37', '2025-08-01 04:25:37'),
(6, 'cod', 'Dr. Eldon Kuvalis', 'kiarra.kuhic@example.net', '(620) 446-8120', 'TXN17540223373344344', 'TXN175402233733449758', '00', NULL, 374580, 'VND', 'completed', '2025-07-27 11:25:37', NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:25:37', '2025-08-01 04:25:37'),
(7, 'balance', 'Dr. Eldon Kuvalis', 'kiarra.kuhic@example.net', '(620) 446-8120', 'TXN17540223373369544', NULL, NULL, NULL, 221238, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:25:37', '2025-08-01 04:25:37'),
(8, 'cod', 'Dr. Eldon Kuvalis', 'kiarra.kuhic@example.net', '(620) 446-8120', 'TXN17540223373377413', 'TXN175402233733713373', '00', NULL, 297886, 'VND', 'completed', '2025-07-08 11:25:37', NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:25:37', '2025-08-01 04:25:37'),
(9, 'cod', 'Dr. Eldon Kuvalis', 'kiarra.kuhic@example.net', '(620) 446-8120', 'TXN17540223373397050', 'TXN175402233733950986', '00', NULL, 220306, 'VND', 'completed', '2025-07-04 11:25:37', NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:25:37', '2025-08-01 04:25:37'),
(10, 'balance', 'Dr. Eldon Kuvalis', 'kiarra.kuhic@example.net', '(620) 446-8120', 'TXN17540223373418931', NULL, NULL, NULL, 88263, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:25:37', '2025-08-01 04:25:37'),
(11, 'cod', 'Nguyễn Dình Tuấn Anh', 'nguyentuananh.ndta@gmail.com', '0981714620', 'WXBYO8KA', NULL, NULL, NULL, 181135, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:27:51', '2025-08-01 04:27:51'),
(12, 'cod', 'Nguyễn Dình Tuấn Anh', 'nguyentuananh.ndta@gmail.com', '0981714620', 'VFOPCA5S', NULL, NULL, NULL, 131456, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:29:20', '2025-08-01 04:29:20'),
(13, 'cod', 'Nguyễn Dình Tuấn Anh', 'nguyentuananh.ndta@gmail.com', '0981714620', 'UMK2KK8U', NULL, NULL, NULL, 175136, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:31:15', '2025-08-01 04:31:15'),
(14, 'cod', 'Nguyễn Dình Tuấn Anh', 'nguyentuananh.ndta@gmail.com', '0981714620', 'WTQMXWR9', NULL, NULL, NULL, 185136, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:40:43', '2025-08-01 04:40:44'),
(15, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'TLELKI6V', NULL, NULL, NULL, 215766, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-01 04:44:14', '2025-08-01 04:44:14'),
(16, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'IIOSZEBW', NULL, NULL, NULL, 432702, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-01 07:10:29', '2025-08-01 07:10:29'),
(17, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'ULCIHYB1', NULL, NULL, NULL, 214595, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-01 07:11:59', '2025-08-01 07:11:59'),
(18, 'vnpay', 'Nguyễn Dình Tuấn Anh', 'nguyentuananh.ndta@gmail.com', '0981714620', 'VOSSMND2', '15111555', '00', 'NCB', 528674, 'VND', 'completed', '2025-08-01 14:43:11', NULL, NULL, '127.0.0.1', NULL, '2025-08-01 07:42:26', '2025-08-01 07:43:11'),
(19, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'UYUIPPUQ', NULL, NULL, NULL, 214820, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-04 09:22:31', '2025-08-04 09:22:31'),
(20, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'LYAIRRA8', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-04 12:50:28', '2025-08-04 12:50:28'),
(21, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', '1RAF2O8S', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-04 12:51:18', '2025-08-04 12:51:18'),
(22, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'PTWI78OF', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-05 16:55:36', '2025-08-05 16:55:36'),
(23, 'cod', 'Nguyễn Dình Tuấn Anh', 'anhndt25@gmail.com', '0981714620', 'YXLDZKXL', NULL, NULL, NULL, 185000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 08:38:05', '2025-08-13 08:38:05'),
(24, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'DAG9GEEL', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 08:38:53', '2025-08-13 08:38:53'),
(25, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'YMKAH1BG', NULL, NULL, NULL, 235000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 08:39:26', '2025-08-13 08:39:26'),
(26, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'ENB1K8AL', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 08:40:02', '2025-08-13 08:40:02'),
(27, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'IJGR9I5F', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 08:45:55', '2025-08-13 08:45:55'),
(28, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'NPRR2WJ5', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 08:51:42', '2025-08-13 08:51:42'),
(29, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'JJJCXSIK', NULL, NULL, NULL, 235000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 08:53:57', '2025-08-13 08:53:57'),
(30, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'AGPPDFB9', NULL, NULL, NULL, 235000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 08:56:34', '2025-08-13 08:56:34'),
(31, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'O4PG7XCA', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:01:21', '2025-08-13 09:01:21'),
(32, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'UKFAMTWX', NULL, NULL, NULL, 139789, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:01:22', '2025-08-13 09:01:22'),
(33, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'XSHFEVPL', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:01:47', '2025-08-13 09:01:47'),
(34, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'XDAU7BXG', NULL, NULL, NULL, 120000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:05:20', '2025-08-13 09:05:20'),
(35, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'H1VJ4FB1', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:06:57', '2025-08-13 09:06:57'),
(36, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'OBUX3YUN', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:07:48', '2025-08-13 09:07:48'),
(37, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'XVMERIVL', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:20:16', '2025-08-13 09:20:16'),
(38, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'EVMSO7BH', NULL, NULL, NULL, 235000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:22:57', '2025-08-13 09:22:57'),
(39, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'OG5LIBIV', NULL, NULL, NULL, 235000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:32:28', '2025-08-13 09:32:28'),
(40, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', '9CKNDKCJ', NULL, NULL, NULL, 235000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:36:25', '2025-08-13 09:36:25'),
(41, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'ZX2EI2D3', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:39:51', '2025-08-13 09:39:51'),
(42, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'KQFUUZGD', NULL, NULL, NULL, 120000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:42:25', '2025-08-13 09:42:25'),
(43, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'YA8BZVOX', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:44:00', '2025-08-13 09:44:00'),
(44, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', '6WJXFNQ0', NULL, NULL, NULL, 120000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:51:05', '2025-08-13 09:51:05'),
(45, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'YYXHY0OV', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:52:12', '2025-08-13 09:52:12'),
(46, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', '324IAODC', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 09:54:16', '2025-08-13 09:54:16'),
(47, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'NBFN7JYR', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 10:13:50', '2025-08-13 10:13:50'),
(48, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'IOCKUSDV', NULL, NULL, NULL, 820000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 10:16:17', '2025-08-13 10:16:17'),
(49, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', '762I5JSC', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 10:22:54', '2025-08-13 10:22:54'),
(50, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'HJNEH3LC', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 10:24:37', '2025-08-13 10:24:37'),
(51, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'GFZ1SGWF', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-13 10:26:37', '2025-08-13 10:26:37'),
(52, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'PXJDSRVW', NULL, NULL, NULL, 183612, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-22 06:55:18', '2025-08-22 06:55:18'),
(53, 'cod', 'Nguyễn Dình Tuấn Anh', 'manager1@devfoods.com', '0981714620', 'NGHE3KH7', NULL, NULL, NULL, 47272, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-22 10:22:03', '2025-08-22 10:22:03'),
(54, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'C8LYY3ES', NULL, NULL, NULL, 150402, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-22 11:03:40', '2025-08-22 11:03:40'),
(55, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'O8OVVGKO', NULL, NULL, NULL, 177892, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-25 15:58:31', '2025-08-25 15:58:31'),
(56, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'ARC5ZZGN', NULL, NULL, NULL, 180292, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 12:01:46', '2025-08-26 12:01:46'),
(57, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'CXCXUHH1', NULL, NULL, NULL, 169595, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 12:11:04', '2025-08-26 12:11:04'),
(58, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', '3D6ZZFTE', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 12:12:54', '2025-08-26 12:12:54'),
(59, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'ZPA1N0QR', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 12:25:04', '2025-08-26 12:25:04'),
(60, 'cod', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', '611POPKM', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 12:33:52', '2025-08-26 12:33:52'),
(61, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'OTMUAHOH', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 13:17:57', '2025-08-26 13:17:57'),
(62, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'FAGMNV0T', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 13:24:34', '2025-08-26 13:24:34'),
(63, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', '1QOSFPND', NULL, NULL, NULL, 205000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 13:29:30', '2025-08-26 13:29:30'),
(64, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', '5EIS85E8', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 13:30:46', '2025-08-26 13:30:46'),
(65, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'WQNH65ML', NULL, NULL, NULL, 134789, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 13:53:52', '2025-08-26 13:53:52'),
(66, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'WYTXRO25', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 13:54:58', '2025-08-26 13:54:58'),
(67, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'NWTSY52X', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 13:56:33', '2025-08-26 13:56:33'),
(68, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'Z6OYHN7O', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 14:02:42', '2025-08-26 14:02:42'),
(69, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'YHQGXSSP', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 14:07:56', '2025-08-26 14:07:56'),
(70, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', '6Z3IC24X', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 14:10:53', '2025-08-26 14:10:54'),
(71, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'GVXPSOSO', NULL, NULL, NULL, 290000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 14:14:30', '2025-08-26 14:14:30'),
(72, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'LLJIAHKM', NULL, NULL, NULL, 820000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 14:15:42', '2025-08-26 14:15:42'),
(73, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'GMTJZNIG', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 14:18:05', '2025-08-26 14:18:05'),
(74, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'UW1QWAAZ', NULL, NULL, NULL, 235000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 14:19:18', '2025-08-26 14:19:18'),
(75, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'U09K1EUQ', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 14:20:56', '2025-08-26 14:20:56'),
(76, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', '12MQBA9U', NULL, NULL, NULL, 175000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 14:33:50', '2025-08-26 14:33:50'),
(77, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'ILXKQJ65', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 14:35:14', '2025-08-26 14:35:14'),
(78, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'V5G0DL0U', NULL, NULL, NULL, 250000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-26 15:08:33', '2025-08-26 15:08:33'),
(79, 'cod', 'Duong', 'tungxeko912@gmail.com', '0936966857', 'US3G6RU4', NULL, NULL, NULL, 126456, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-27 08:10:57', '2025-08-27 08:10:57'),
(80, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'SG01FT4L', NULL, NULL, NULL, 105000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-27 08:18:18', '2025-08-27 08:18:18'),
(81, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', '6QDAFNBC', NULL, NULL, NULL, 55000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-27 08:20:17', '2025-08-27 08:20:17'),
(83, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', '5HJPDXZC', NULL, NULL, NULL, 100000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-27 08:23:10', '2025-08-27 08:23:10'),
(84, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'ULONECMR', NULL, NULL, NULL, 100000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-27 08:24:25', '2025-08-27 08:24:25'),
(85, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', '94R320DK', NULL, NULL, NULL, 2386860, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-27 08:28:38', '2025-08-27 08:28:38'),
(86, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'VHQXVX6R', NULL, NULL, NULL, 2386860, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-27 08:29:54', '2025-08-27 08:29:54'),
(87, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'QMM1BCWF', NULL, NULL, NULL, 235000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-27 11:40:13', '2025-08-27 11:40:13'),
(88, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'FQGFLJRR', NULL, NULL, NULL, 205000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-28 04:13:03', '2025-08-28 04:13:03'),
(92, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', '7XC3TFXN', NULL, NULL, NULL, 70000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-28 04:25:34', '2025-08-28 04:25:34'),
(93, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'IT5O9ZK6', NULL, NULL, NULL, 70000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-28 04:25:35', '2025-08-28 04:25:35'),
(94, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'Q9NM8HQ1', NULL, NULL, NULL, 70000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-28 04:25:55', '2025-08-28 04:25:55'),
(95, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'DHRSQNFM', NULL, NULL, NULL, 70000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-28 04:27:31', '2025-08-28 04:27:31'),
(96, 'cod', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'GTYSE6DU', NULL, NULL, NULL, 70000, 'VND', 'pending', NULL, NULL, NULL, '127.0.0.1', NULL, '2025-08-28 04:28:22', '2025-08-28 04:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `points_transactions`
--

CREATE TABLE `points_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `points` int NOT NULL,
  `balance` int NOT NULL,
  `type` enum('order','referral','review','promotion','adjustment','expiration') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `review_id` bigint UNSIGNED DEFAULT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `transaction_date` datetime NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `is_expired` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `point_rules`
--

CREATE TABLE `point_rules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `point_per_currency` decimal(10,4) NOT NULL DEFAULT '0.0100',
  `min_order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `customer_type` enum('all','regular','vip') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_price` decimal(12,2) NOT NULL,
  `preparation_time` int NOT NULL,
  `ingredients` json DEFAULT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `favorite_count` int NOT NULL DEFAULT '0',
  `status` enum('coming_soon','selling','discontinued') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `release_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sku`, `name`, `base_price`, `preparation_time`, `ingredients`, `short_description`, `description`, `favorite_count`, `status`, `release_at`, `slug`, `is_featured`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'BUR250731001', 'Burger Bò Phô Mai', '76456.00', 10, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\", \"Thịt bò Úc\", \"Thịt bò xay\", \"Phô mai Mozzarella\", \"Phô mai Cheddar\"]', 'Món Burger Bò Phô Mai đặc biệt', 'Đây là món Burger Bò Phô Mai ngon tuyệt', 0, 'selling', NULL, 'burger-bo-pho-mai', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(2, 1, 'BUR250731002', 'Burger Gà Giòn', '125195.00', 28, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Burger Gà Giòn đặc biệt', 'Đây là món Burger Gà Giòn ngon tuyệt', 0, 'selling', NULL, 'burger-ga-gion', 1, 1, 1, '2025-07-31 15:30:43', '2025-08-27 06:18:15', NULL),
(3, 1, 'BUR250731003', 'Burger Cá', '109789.00', 11, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\"]', 'Món Burger Cá đặc biệt', 'Đây là món Burger Cá ngon tuyệt', 0, 'selling', NULL, 'burger-ca', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(4, 1, 'BUR250731004', 'Burger Bò Nướng BBQ', '56032.00', 24, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\", \"Thịt bò Úc\", \"Thịt bò xay\", \"Sốt BBQ\", \"Sốt tiêu đen\"]', 'Món Burger Bò Nướng BBQ đặc biệt', 'Đây là món Burger Bò Nướng BBQ ngon tuyệt', 0, 'selling', NULL, 'burger-bo-nuong-bbq', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(5, 1, 'BUR250731005', 'Burger Tôm', '197994.00', 10, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\"]', 'Món Burger Tôm đặc biệt', 'Đây là món Burger Tôm ngon tuyệt', 0, 'selling', NULL, 'burger-tom', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(6, 1, 'BUR250731006', 'Burger Bò 2 Lớp', '68724.00', 16, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\", \"Thịt bò Úc\", \"Thịt bò xay\"]', 'Món Burger Bò 2 Lớp đặc biệt', 'Đây là món Burger Bò 2 Lớp ngon tuyệt', 0, 'selling', NULL, 'burger-bo-2-lop', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(7, 1, 'BUR250731007', 'Burger Gà Nướng', '112402.00', 19, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Burger Gà Nướng đặc biệt', 'Đây là món Burger Gà Nướng ngon tuyệt', 0, 'selling', NULL, 'burger-ga-nuong', 1, 1, 1, '2025-07-31 15:30:43', '2025-08-25 15:41:59', '2025-08-25 15:41:59'),
(8, 1, 'BUR250731008', 'Burger Bò Trứng', '194137.00', 13, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\", \"Thịt bò Úc\", \"Thịt bò xay\"]', 'Món Burger Bò Trứng đặc biệt', 'Đây là món Burger Bò Trứng ngon tuyệt', 0, 'selling', NULL, 'burger-bo-trung', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(9, 1, 'BUR250731009', 'Burger Phô Mai', '188233.00', 11, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Phô mai Cheddar\"]', 'Món Burger Phô Mai đặc biệt', 'Đây là món Burger Phô Mai ngon tuyệt', 0, 'selling', NULL, 'burger-pho-mai', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(10, 1, 'BUR250731010', 'Burger Bò Xông Khói', '69437.00', 30, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\", \"Thịt bò Úc\", \"Thịt bò xay\", \"Thịt xông khói\", \"Bacon\"]', 'Món Burger Bò Xông Khói đặc biệt', 'Đây là món Burger Bò Xông Khói ngon tuyệt', 0, 'selling', NULL, 'burger-bo-xong-khoi', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(11, 1, 'BUR250731011', 'Burger Gà Phô Mai', '50630.00', 20, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\", \"Thịt gà phi lê\", \"Ức gà\", \"Phô mai Mozzarella\", \"Phô mai Cheddar\"]', 'Món Burger Gà Phô Mai đặc biệt', 'Đây là món Burger Gà Phô Mai ngon tuyệt', 0, 'selling', NULL, 'burger-ga-pho-mai', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(12, 1, 'BUR250731012', 'Burger Cá Ngừ', '145705.00', 18, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\"]', 'Món Burger Cá Ngừ đặc biệt', 'Đây là món Burger Cá Ngừ ngon tuyệt', 0, 'selling', NULL, 'burger-ca-ngu', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(13, 1, 'BUR250731013', 'Burger Bò Teriyaki', '86466.00', 20, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\", \"Thịt bò Úc\", \"Thịt bò xay\"]', 'Món Burger Bò Teriyaki đặc biệt', 'Đây là món Burger Bò Teriyaki ngon tuyệt', 0, 'selling', NULL, 'burger-bo-teriyaki', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(14, 1, 'BUR250731014', 'Burger Gà Sốt Cay', '122341.00', 27, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\", \"Thịt gà phi lê\", \"Ức gà\", \"Ớt tươi\", \"Bột ớt\", \"Sốt cay\"]', 'Món Burger Gà Sốt Cay đặc biệt', 'Đây là món Burger Gà Sốt Cay ngon tuyệt', 0, 'selling', NULL, 'burger-ga-sot-cay', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(15, 1, 'BUR250731015', 'Burger Bò Deluxe', '199775.00', 18, '[\"Bánh mì burger\", \"Xà lách\", \"Cà chua\", \"Dưa chuột\", \"Hành tây\", \"Sốt mayonnaise\", \"Sốt cà chua\", \"Thịt bò Úc\", \"Thịt bò xay\"]', 'Món Burger Bò Deluxe đặc biệt', 'Đây là món Burger Bò Deluxe ngon tuyệt', 0, 'selling', NULL, 'burger-bo-deluxe', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(16, 2, 'PIZ250731001', 'Pizza Hải Sản', '131348.00', 16, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\", \"Tôm\", \"Mực\", \"Cá hồi\"]', 'Món Pizza Hải Sản đặc biệt', 'Đây là món Pizza Hải Sản ngon tuyệt', 0, 'selling', NULL, 'pizza-hai-san', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(17, 2, 'PIZ250731002', 'Pizza Bò', '48027.00', 22, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\", \"Thịt bò Úc\", \"Thịt bò xay\"]', 'Món Pizza Bò đặc biệt', 'Đây là món Pizza Bò ngon tuyệt', 0, 'selling', NULL, 'pizza-bo', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(18, 2, 'PIZ250731003', 'Pizza Gà', '62395.00', 24, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Pizza Gà đặc biệt', 'Đây là món Pizza Gà ngon tuyệt', 0, 'selling', NULL, 'pizza-ga', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(19, 2, 'PIZ250731004', 'Pizza Xúc Xích', '161254.00', 27, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\"]', 'Món Pizza Xúc Xích đặc biệt', 'Đây là món Pizza Xúc Xích ngon tuyệt', 0, 'selling', NULL, 'pizza-xuc-xich', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(20, 2, 'PIZ250731005', 'Pizza Phô Mai', '72199.00', 17, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\", \"Phô mai Cheddar\"]', 'Món Pizza Phô Mai đặc biệt', 'Đây là món Pizza Phô Mai ngon tuyệt', 0, 'selling', NULL, 'pizza-pho-mai', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(21, 2, 'PIZ250731006', 'Pizza Nấm', '151631.00', 28, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\"]', 'Món Pizza Nấm đặc biệt', 'Đây là món Pizza Nấm ngon tuyệt', 0, 'selling', NULL, 'pizza-nam', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(22, 2, 'PIZ250731007', 'Pizza Thịt Nguội', '107596.00', 26, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\"]', 'Món Pizza Thịt Nguội đặc biệt', 'Đây là món Pizza Thịt Nguội ngon tuyệt', 0, 'selling', NULL, 'pizza-thit-nguoi', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(23, 2, 'PIZ250731008', 'Pizza Hawaii', '198905.00', 27, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\"]', 'Món Pizza Hawaii đặc biệt', 'Đây là món Pizza Hawaii ngon tuyệt', 0, 'selling', NULL, 'pizza-hawaii', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(24, 2, 'PIZ250731009', 'Pizza 5 Loại Thịt', '85770.00', 17, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\"]', 'Món Pizza 5 Loại Thịt đặc biệt', 'Đây là món Pizza 5 Loại Thịt ngon tuyệt', 0, 'selling', NULL, 'pizza-5-loai-thit', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(25, 2, 'PIZ250731010', 'Pizza Rau Củ', '182317.00', 25, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\"]', 'Món Pizza Rau Củ đặc biệt', 'Đây là món Pizza Rau Củ ngon tuyệt', 0, 'selling', NULL, 'pizza-rau-cu', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(26, 2, 'PIZ250731011', 'Pizza Bò BBQ', '102432.00', 18, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\", \"Thịt bò Úc\", \"Thịt bò xay\", \"Sốt BBQ\", \"Sốt tiêu đen\"]', 'Món Pizza Bò BBQ đặc biệt', 'Đây là món Pizza Bò BBQ ngon tuyệt', 0, 'selling', NULL, 'pizza-bo-bbq', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(27, 2, 'PIZ250731012', 'Pizza Gà Nướng', '180724.00', 11, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Pizza Gà Nướng đặc biệt', 'Đây là món Pizza Gà Nướng ngon tuyệt', 0, 'selling', NULL, 'pizza-ga-nuong', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(28, 2, 'PIZ250731013', 'Pizza Hải Sản Cao Cấp', '134062.00', 26, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\", \"Tôm\", \"Mực\", \"Cá hồi\"]', 'Món Pizza Hải Sản Cao Cấp đặc biệt', 'Đây là món Pizza Hải Sản Cao Cấp ngon tuyệt', 0, 'selling', NULL, 'pizza-hai-san-cao-cap', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(29, 2, 'PIZ250731014', 'Pizza Thập Cẩm', '112251.00', 12, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\"]', 'Món Pizza Thập Cẩm đặc biệt', 'Đây là món Pizza Thập Cẩm ngon tuyệt', 0, 'selling', NULL, 'pizza-thap-cam', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(30, 2, 'PIZ250731015', 'Pizza Margherita', '183928.00', 26, '[\"Đế bánh pizza\", \"Sốt cà chua\", \"Phô mai Mozzarella\", \"Ớt chuông\", \"Nấm\", \"Hành tây\", \"Húng quế\", \"Oregano\"]', 'Món Pizza Margherita đặc biệt', 'Đây là món Pizza Margherita ngon tuyệt', 0, 'selling', NULL, 'pizza-margherita', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(31, 3, 'CHI250731001', 'Gà Rán Giòn', '187888.00', 21, '[\"Thịt gà tươi\", \"Bột chiên xù\", \"Bột gia vị\", \"Dầu chiên\", \"Muối\", \"Tiêu\", \"Bột tỏi\", \"Bột ớt\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Gà Rán Giòn đặc biệt', 'Đây là món Gà Rán Giòn ngon tuyệt', 0, 'selling', NULL, 'ga-ran-gion', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(32, 3, 'CHI250731002', 'Gà Sốt Cay', '142855.00', 22, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Gà Sốt Cay đặc biệt', 'Đây là món Gà Sốt Cay ngon tuyệt', 0, 'selling', NULL, 'ga-sot-cay', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(33, 3, 'CHI250731003', 'Gà Sốt BBQ', '174752.00', 22, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Gà Sốt BBQ đặc biệt', 'Đây là món Gà Sốt BBQ ngon tuyệt', 0, 'selling', NULL, 'ga-sot-bbq', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(34, 3, 'CHI250731004', 'Gà Không Xương', '75209.00', 13, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Gà Không Xương đặc biệt', 'Đây là món Gà Không Xương ngon tuyệt', 0, 'selling', NULL, 'ga-khong-xuong', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(35, 3, 'CHI250731005', 'Gà Rán Phô Mai', '89344.00', 11, '[\"Thịt gà tươi\", \"Bột chiên xù\", \"Bột gia vị\", \"Dầu chiên\", \"Muối\", \"Tiêu\", \"Bột tỏi\", \"Bột ớt\", \"Thịt gà phi lê\", \"Ức gà\", \"Phô mai Mozzarella\", \"Phô mai Cheddar\"]', 'Món Gà Rán Phô Mai đặc biệt', 'Đây là món Gà Rán Phô Mai ngon tuyệt', 0, 'selling', NULL, 'ga-ran-pho-mai', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(36, 3, 'CHI250731006', 'Gà Sốt Teriyaki', '166195.00', 22, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Gà Sốt Teriyaki đặc biệt', 'Đây là món Gà Sốt Teriyaki ngon tuyệt', 0, 'selling', NULL, 'ga-sot-teriyaki', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(37, 3, 'CHI250731007', 'Gà Rán Mật Ong', '168067.00', 18, '[\"Thịt gà tươi\", \"Bột chiên xù\", \"Bột gia vị\", \"Dầu chiên\", \"Muối\", \"Tiêu\", \"Bột tỏi\", \"Bột ớt\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Gà Rán Mật Ong đặc biệt', 'Đây là món Gà Rán Mật Ong ngon tuyệt', 0, 'selling', NULL, 'ga-ran-mat-ong', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(38, 3, 'CHI250731008', 'Gà Sốt Tỏi', '91513.00', 15, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Gà Sốt Tỏi đặc biệt', 'Đây là món Gà Sốt Tỏi ngon tuyệt', 0, 'selling', NULL, 'ga-sot-toi', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(39, 3, 'CHI250731009', 'Gà Rán Original', '47117.00', 12, '[\"Thịt gà tươi\", \"Bột chiên xù\", \"Bột gia vị\", \"Dầu chiên\", \"Muối\", \"Tiêu\", \"Bột tỏi\", \"Bột ớt\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Gà Rán Original đặc biệt', 'Đây là món Gà Rán Original ngon tuyệt', 0, 'selling', NULL, 'ga-ran-original', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(40, 3, 'CHI250731010', 'Gà Sốt Cay Ngọt', '89001.00', 16, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Gà Sốt Cay Ngọt đặc biệt', 'Đây là món Gà Sốt Cay Ngọt ngon tuyệt', 0, 'selling', NULL, 'ga-sot-cay-ngot', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(41, 3, 'CHI250731011', 'Gà Rán Giòn Cay', '122031.00', 25, '[\"Thịt gà tươi\", \"Bột chiên xù\", \"Bột gia vị\", \"Dầu chiên\", \"Muối\", \"Tiêu\", \"Bột tỏi\", \"Bột ớt\", \"Thịt gà phi lê\", \"Ức gà\", \"Ớt tươi\", \"Sốt cay\"]', 'Món Gà Rán Giòn Cay đặc biệt', 'Đây là món Gà Rán Giòn Cay ngon tuyệt', 0, 'selling', NULL, 'ga-ran-gion-cay', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(42, 3, 'CHI250731012', 'Gà Nướng BBQ', '62101.00', 23, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Gà Nướng BBQ đặc biệt', 'Đây là món Gà Nướng BBQ ngon tuyệt', 0, 'selling', NULL, 'ga-nuong-bbq', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(43, 3, 'CHI250731013', 'Gà Sốt Phô Mai', '123100.00', 24, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Gà Sốt Phô Mai đặc biệt', 'Đây là món Gà Sốt Phô Mai ngon tuyệt', 0, 'selling', NULL, 'ga-sot-pho-mai', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(44, 3, 'CHI250731014', 'Gà Rán Không Cay', '47272.00', 12, '[\"Thịt gà tươi\", \"Bột chiên xù\", \"Bột gia vị\", \"Dầu chiên\", \"Muối\", \"Tiêu\", \"Bột tỏi\", \"Bột ớt\", \"Thịt gà phi lê\", \"Ức gà\", \"Ớt tươi\", \"Sốt cay\"]', 'Món Gà Rán Không Cay đặc biệt', 'Đây là món Gà Rán Không Cay ngon tuyệt', 0, 'selling', NULL, 'ga-ran-khong-cay', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(45, 3, 'CHI250731015', 'Gà Rán Sốt Đặc Biệt', '54306.00', 15, '[\"Thịt gà tươi\", \"Bột chiên xù\", \"Bột gia vị\", \"Dầu chiên\", \"Muối\", \"Tiêu\", \"Bột tỏi\", \"Bột ớt\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Gà Rán Sốt Đặc Biệt đặc biệt', 'Đây là món Gà Rán Sốt Đặc Biệt ngon tuyệt', 0, 'selling', NULL, 'ga-ran-sot-dac-biet', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(46, 4, 'RIC250731001', 'Cơm Gà Rán', '162469.00', 16, '[\"Thịt gà tươi\", \"Bột chiên xù\", \"Bột gia vị\", \"Dầu chiên\", \"Muối\", \"Tiêu\", \"Bột tỏi\", \"Bột ớt\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Cơm Gà Rán đặc biệt', 'Đây là món Cơm Gà Rán ngon tuyệt', 0, 'selling', NULL, 'com-ga-ran', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(47, 4, 'RIC250731002', 'Cơm Bò Lúc Lắc', '92432.00', 30, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Thịt bò Úc\", \"Thịt bò xay\"]', 'Món Cơm Bò Lúc Lắc đặc biệt', 'Đây là món Cơm Bò Lúc Lắc ngon tuyệt', 0, 'selling', NULL, 'com-bo-luc-lac', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(48, 4, 'RIC250731003', 'Cơm Sườn BBQ', '182859.00', 13, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Sốt BBQ\", \"Sốt tiêu đen\", \"Sườn heo\", \"Sườn non\"]', 'Món Cơm Sườn BBQ đặc biệt', 'Đây là món Cơm Sườn BBQ ngon tuyệt', 0, 'selling', NULL, 'com-suon-bbq', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(49, 4, 'RIC250731004', 'Cơm Gà Teriyaki', '54821.00', 29, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Cơm Gà Teriyaki đặc biệt', 'Đây là món Cơm Gà Teriyaki ngon tuyệt', 0, 'selling', NULL, 'com-ga-teriyaki', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(50, 4, 'RIC250731005', 'Cơm Bò Xào', '39064.00', 16, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Thịt bò Úc\", \"Thịt bò xay\"]', 'Món Cơm Bò Xào đặc biệt', 'Đây là món Cơm Bò Xào ngon tuyệt', 0, 'selling', NULL, 'com-bo-xao', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(51, 4, 'RIC250731006', 'Cơm Gà Xối Mỡ', '188721.00', 14, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Cơm Gà Xối Mỡ đặc biệt', 'Đây là món Cơm Gà Xối Mỡ ngon tuyệt', 0, 'selling', NULL, 'com-ga-xoi-mo', 0, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(52, 4, 'RIC250731007', 'Cơm Bò BBQ', '79584.00', 20, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Thịt bò Úc\", \"Thịt bò xay\", \"Sốt BBQ\", \"Sốt tiêu đen\"]', 'Món Cơm Bò BBQ đặc biệt', 'Đây là món Cơm Bò BBQ ngon tuyệt', 0, 'selling', NULL, 'com-bo-bbq', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(53, 4, 'RIC250731008', 'Cơm Sườn Cay', '181107.00', 20, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Ớt tươi\", \"Bột ớt\", \"Sốt cay\", \"Sườn heo\", \"Sườn non\"]', 'Món Cơm Sườn Cay đặc biệt', 'Đây là món Cơm Sườn Cay ngon tuyệt', 0, 'selling', NULL, 'com-suon-cay', 1, 1, 1, '2025-07-31 15:30:43', '2025-07-31 15:30:43', NULL),
(54, 4, 'RIC250731009', 'Cơm Gà Nướng', '141256.00', 21, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Cơm Gà Nướng đặc biệt', 'Đây là món Cơm Gà Nướng ngon tuyệt', 0, 'selling', NULL, 'com-ga-nuong', 0, 1, 1, '2025-07-31 15:30:44', '2025-08-26 08:59:27', NULL),
(55, 4, 'RIC250731010', 'Cơm Bò Trứng', '60636.00', 30, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Thịt bò Úc\", \"Thịt bò xay\"]', 'Món Cơm Bò Trứng đặc biệt', 'Đây là món Cơm Bò Trứng ngon tuyệt', 0, 'selling', NULL, 'com-bo-trung', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(56, 4, 'RIC250731011', 'Cơm Gà Sốt Cay', '94274.00', 27, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Thịt gà phi lê\", \"Ức gà\", \"Ớt tươi\", \"Bột ớt\", \"Sốt cay\"]', 'Món Cơm Gà Sốt Cay đặc biệt', 'Đây là món Cơm Gà Sốt Cay ngon tuyệt', 0, 'selling', NULL, 'com-ga-sot-cay', 0, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(57, 4, 'RIC250731012', 'Cơm Sườn Nướng', '153615.00', 20, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Sườn heo\", \"Sườn non\"]', 'Món Cơm Sườn Nướng đặc biệt', 'Đây là món Cơm Sườn Nướng ngon tuyệt', 0, 'selling', NULL, 'com-suon-nuong', 0, 1, 1, '2025-07-31 15:30:44', '2025-08-25 15:57:40', NULL),
(58, 4, 'RIC250731013', 'Cơm Bò Nướng', '124609.00', 14, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Thịt bò Úc\", \"Thịt bò xay\"]', 'Món Cơm Bò Nướng đặc biệt', 'Đây là món Cơm Bò Nướng ngon tuyệt', 0, 'selling', NULL, 'com-bo-nuong', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(59, 4, 'RIC250731014', 'Cơm Gà Chiên', '160765.00', 16, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Cơm Gà Chiên đặc biệt', 'Đây là món Cơm Gà Chiên ngon tuyệt', 0, 'selling', NULL, 'com-ga-chien', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(60, 4, 'RIC250731015', 'Cơm Đùi Gà Chiên', '120610.00', 10, '[\"Cơm trắng\", \"Cà rốt\", \"Đậu que\", \"Bắp cải\", \"Muối\", \"Tiêu\", \"Dầu hào\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Cơm Đùi Gà Chiên đặc biệt', 'Đây là món Cơm Đùi Gà Chiên ngon tuyệt', 0, 'selling', NULL, 'com-dui-ga-chien', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(61, 5, 'NOO250731001', 'Mì Ý Sốt Bò', '57449.00', 20, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\", \"Thịt bò Úc\", \"Thịt bò xay\"]', 'Món Mì Ý Sốt Bò đặc biệt', 'Đây là món Mì Ý Sốt Bò ngon tuyệt', 0, 'selling', NULL, 'mi-y-sot-bo', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(62, 5, 'NOO250731002', 'Mì Ý Hải Sản', '180928.00', 25, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\", \"Tôm\", \"Mực\", \"Cá hồi\"]', 'Món Mì Ý Hải Sản đặc biệt', 'Đây là món Mì Ý Hải Sản ngon tuyệt', 0, 'selling', NULL, 'mi-y-hai-san', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(63, 5, 'NOO250731003', 'Mì Ý Gà', '155278.00', 22, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Mì Ý Gà đặc biệt', 'Đây là món Mì Ý Gà ngon tuyệt', 0, 'selling', NULL, 'mi-y-ga', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(64, 5, 'NOO250731004', 'Mì Ý Carbonara', '184696.00', 13, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\"]', 'Món Mì Ý Carbonara đặc biệt', 'Đây là món Mì Ý Carbonara ngon tuyệt', 0, 'selling', NULL, 'mi-y-carbonara', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(65, 5, 'NOO250731005', 'Mì Xào Hải Sản', '58742.00', 11, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\", \"Tôm\", \"Mực\", \"Cá hồi\"]', 'Món Mì Xào Hải Sản đặc biệt', 'Đây là món Mì Xào Hải Sản ngon tuyệt', 0, 'selling', NULL, 'mi-xao-hai-san', 0, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(66, 5, 'NOO250731006', 'Mì Ý Sốt Kem', '59629.00', 15, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\"]', 'Món Mì Ý Sốt Kem đặc biệt', 'Đây là món Mì Ý Sốt Kem ngon tuyệt', 0, 'selling', NULL, 'mi-y-sot-kem', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(67, 5, 'NOO250731007', 'Mì Xào Bò', '143713.00', 28, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\", \"Thịt bò Úc\", \"Thịt bò xay\"]', 'Món Mì Xào Bò đặc biệt', 'Đây là món Mì Xào Bò ngon tuyệt', 0, 'selling', NULL, 'mi-xao-bo', 0, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(68, 5, 'NOO250731008', 'Mì Ý Sốt Cà Chua', '124330.00', 12, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\"]', 'Món Mì Ý Sốt Cà Chua đặc biệt', 'Đây là món Mì Ý Sốt Cà Chua ngon tuyệt', 0, 'selling', NULL, 'mi-y-sot-ca-chua', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(69, 5, 'NOO250731009', 'Mì Xào Gà', '142316.00', 25, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\", \"Thịt gà phi lê\", \"Ức gà\"]', 'Món Mì Xào Gà đặc biệt', 'Đây là món Mì Xào Gà ngon tuyệt', 0, 'selling', NULL, 'mi-xao-ga', 0, 1, 1, '2025-07-31 15:30:44', '2025-08-25 15:57:42', NULL),
(70, 5, 'NOO250731010', 'Mì Ý Sốt Nấm', '95795.00', 11, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\"]', 'Món Mì Ý Sốt Nấm đặc biệt', 'Đây là món Mì Ý Sốt Nấm ngon tuyệt', 0, 'selling', NULL, 'mi-y-sot-nam', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(71, 5, 'NOO250731011', 'Mì Hoàng Kim', '59415.00', 30, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\"]', 'Món Mì Hoàng Kim đặc biệt', 'Đây là món Mì Hoàng Kim ngon tuyệt', 0, 'selling', NULL, 'mi-hoang-kim', 0, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(72, 5, 'NOO250731012', 'Mì Ý Thịt Viên', '139017.00', 16, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\"]', 'Món Mì Ý Thịt Viên đặc biệt', 'Đây là món Mì Ý Thịt Viên ngon tuyệt', 0, 'selling', NULL, 'mi-y-thit-vien', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(73, 5, 'NOO250731013', 'Mì Xào Thập Cẩm', '39691.00', 14, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\"]', 'Món Mì Xào Thập Cẩm đặc biệt', 'Đây là món Mì Xào Thập Cẩm ngon tuyệt', 0, 'selling', NULL, 'mi-xao-thap-cam', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(74, 5, 'NOO250731014', 'Mì Ý Chay', '68811.00', 11, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\"]', 'Món Mì Ý Chay đặc biệt', 'Đây là món Mì Ý Chay ngon tuyệt', 0, 'selling', NULL, 'mi-y-chay', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(75, 5, 'NOO250731015', 'Mì Đặc Biệt', '189834.00', 27, '[\"Mì Ý\", \"Sốt cà chua\", \"Cà rốt\", \"Nấm\", \"Hành tây\", \"Muối\", \"Tiêu\", \"Oregano\"]', 'Món Mì Đặc Biệt đặc biệt', 'Đây là món Mì Đặc Biệt ngon tuyệt', 0, 'selling', NULL, 'mi-dac-biet', 0, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(76, 6, 'DRI250731001', 'Coca Cola', '53076.00', 21, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Coca Cola đặc biệt', 'Đây là món Coca Cola ngon tuyệt', 0, 'selling', NULL, 'coca-cola', 0, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(77, 6, 'DRI250731002', 'Pepsi', '160793.00', 20, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Pepsi đặc biệt', 'Đây là món Pepsi ngon tuyệt', 0, 'selling', NULL, 'pepsi', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(78, 6, 'DRI250731003', '7 Up', '126955.00', 30, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món 7 Up đặc biệt', 'Đây là món 7 Up ngon tuyệt', 0, 'selling', NULL, '7-up', 0, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(79, 6, 'DRI250731004', 'Fanta', '143810.00', 24, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Fanta đặc biệt', 'Đây là món Fanta ngon tuyệt', 0, 'selling', NULL, 'fanta', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(80, 6, 'DRI250731005', 'Trà Đào', '48719.00', 14, '[\"Trà\", \"Nước\", \"Đường\", \"Đá\", \"Đào miếng\"]', 'Món Trà Đào đặc biệt', 'Đây là món Trà Đào ngon tuyệt', 0, 'selling', NULL, 'tra-dao', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(81, 6, 'DRI250731006', 'Trà Vải', '160452.00', 20, '[\"Trà\", \"Nước\", \"Đường\", \"Đá\", \"Vải thiều\"]', 'Món Trà Vải đặc biệt', 'Đây là món Trà Vải ngon tuyệt', 0, 'selling', NULL, 'tra-vai', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(82, 6, 'DRI250731007', 'Trà Chanh', '119656.00', 30, '[\"Trà\", \"Nước\", \"Đường\", \"Đá\", \"Chanh tươi\"]', 'Món Trà Chanh đặc biệt', 'Đây là món Trà Chanh ngon tuyệt', 0, 'selling', NULL, 'tra-chanh', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(83, 6, 'DRI250731008', 'Cà Phê Đen', '144054.00', 15, '[\"Cà phê nguyên chất\", \"Đường\", \"Đá\"]', 'Món Cà Phê Đen đặc biệt', 'Đây là món Cà Phê Đen ngon tuyệt', 0, 'selling', NULL, 'ca-phe-den', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(84, 6, 'DRI250731009', 'Cà Phê Sữa', '156481.00', 18, '[\"Cà phê nguyên chất\", \"Đường\", \"Đá\", \"Sữa đặc\"]', 'Món Cà Phê Sữa đặc biệt', 'Đây là món Cà Phê Sữa ngon tuyệt', 0, 'selling', NULL, 'ca-phe-sua', 0, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(85, 6, 'DRI250731010', 'Sinh Tố Dâu', '181702.00', 12, '[\"Dâu tây\", \"Sữa tươi\", \"Đường\", \"Đá viên\", \"Sữa đặc\"]', 'Món Sinh Tố Dâu đặc biệt', 'Đây là món Sinh Tố Dâu ngon tuyệt', 0, 'selling', NULL, 'sinh-to-dau', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(86, 6, 'DRI250731011', 'Sinh Tố Bơ', '49391.00', 19, '[\"Bơ\", \"Sữa tươi\", \"Đường\", \"Đá viên\", \"Sữa đặc\"]', 'Món Sinh Tố Bơ đặc biệt', 'Đây là món Sinh Tố Bơ ngon tuyệt', 0, 'selling', NULL, 'sinh-to-bo', 0, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(87, 6, 'DRI250731012', 'Nước Cam', '108665.00', 15, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Nước Cam đặc biệt', 'Đây là món Nước Cam ngon tuyệt', 0, 'selling', NULL, 'nuoc-cam', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(88, 6, 'DRI250731013', 'Nước Ép Táo', '126703.00', 19, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Nước Ép Táo đặc biệt', 'Đây là món Nước Ép Táo ngon tuyệt', 0, 'selling', NULL, 'nuoc-ep-tao', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(89, 6, 'DRI250731014', 'Trà Sữa', '107697.00', 20, '[\"Trà\", \"Nước\", \"Đường\", \"Đá\", \"Chanh tươi\"]', 'Món Trà Sữa đặc biệt', 'Đây là món Trà Sữa ngon tuyệt', 0, 'selling', NULL, 'tra-sua', 0, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(90, 6, 'DRI250731015', 'Matcha Đá Xay', '182978.00', 20, '[\"Nước có ga\", \"Đường\", \"Đá viên\"]', 'Món Matcha Đá Xay đặc biệt', 'Đây là món Matcha Đá Xay ngon tuyệt', 0, 'selling', NULL, 'matcha-da-xay', 1, 1, 1, '2025-07-31 15:30:44', '2025-07-31 15:30:44', NULL),
(91, 2, 'PZ-00001', 'Matcha Đá Xayyy', '12000.00', 12, '[\"21222222222222222\"]', '211sadddddddddddddddddd', '21122', 0, 'selling', NULL, 'matcha-da-xayyy', 0, 1, 1, '2025-08-25 15:36:41', '2025-08-25 15:57:36', NULL),
(92, 2, 'PZ-00002', 'test prd', '30000.00', 23, '[\"ákdahksdjhad\", \"á\", \"dsa\", \"d\", \"ád\", \"ád\"]', 'ádsaddsaddasadsddsa', 'dasddasadsdsdsads', 0, 'selling', NULL, 'test-prd', 0, 1, NULL, '2025-08-25 16:32:35', '2025-08-25 16:32:35', NULL),
(93, 1, 'BG-00001', 'test prd 2', '3000.00', 12, '[\"12212\"]', '211111111111111', '1121211212', 0, 'selling', NULL, 'test-prd-2', 0, 1, 1, '2025-08-25 16:41:06', '2025-08-27 09:27:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_imgs`
--

CREATE TABLE `product_imgs` (
  `id` bigint UNSIGNED NOT NULL,
  `img` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_imgs`
--

INSERT INTO `product_imgs` (`id`, `img`, `is_primary`, `product_id`, `created_at`, `updated_at`) VALUES
(22, 'products/72b4c925-c403-448e-bd89-24e5d10a5286.png', 1, 57, '2025-07-31 16:28:40', '2025-07-31 16:28:40'),
(23, 'products/69cc4153-46b4-4641-ab61-b9e192b9506c.jpg', 1, 16, '2025-07-31 16:31:33', '2025-07-31 16:31:33'),
(24, 'products/c5478ab2-3b56-4af4-970b-9e64d6a160a9.jpg', 1, 17, '2025-07-31 16:32:13', '2025-07-31 16:32:13'),
(25, 'products/1967ee46-5ea4-4bff-9218-71e2941f3247.png', 1, 54, '2025-07-31 16:32:27', '2025-07-31 16:32:27'),
(26, 'products/c170426d-42f7-4c61-a94a-0f8a0328dcfd.jpg', 1, 18, '2025-07-31 16:33:32', '2025-07-31 16:33:32'),
(27, 'products/c1e5ef07-02fc-4b0e-b91d-91fbb185412b.png', 1, 19, '2025-07-31 16:34:23', '2025-07-31 16:34:23'),
(28, 'products/e5f84bcd-00d3-479e-95cf-e38a24a2ddb7.jpg', 1, 55, '2025-07-31 16:34:43', '2025-07-31 16:34:43'),
(29, 'products/ef41825b-d204-4f38-a7d2-c7b18db78af4.png', 1, 56, '2025-07-31 16:35:45', '2025-07-31 16:35:45'),
(30, 'products/f89eea04-9bd2-4593-90ba-66f0acdb77a0.png', 1, 20, '2025-07-31 16:35:53', '2025-07-31 16:35:53'),
(34, 'products/10188d3f-efaa-4706-bc8d-3e4f5ead4e70.jpg', 1, 21, '2025-07-31 16:36:14', '2025-07-31 16:36:14'),
(37, 'products/897be31b-b7a7-4b48-a2d4-6d63583d288c.png', 1, 31, '2025-07-31 16:36:22', '2025-07-31 16:36:22'),
(40, 'products/80a83658-7f8b-4b32-9304-3fe3824b542d.png', 1, 22, '2025-07-31 16:37:19', '2025-07-31 16:37:19'),
(41, 'products/13e3a75b-87a5-4191-bbf3-fb5e3d449d99.jpg', 1, 23, '2025-07-31 16:38:01', '2025-07-31 16:38:01'),
(42, 'products/fc160512-888a-4ed6-8b99-bf32ca928c42.jpg', 1, 32, '2025-07-31 16:38:14', '2025-07-31 16:38:14'),
(43, 'products/fa44770f-9d88-4284-b5ad-eff5f341befd.png', 1, 24, '2025-07-31 16:38:34', '2025-07-31 16:38:34'),
(45, 'products/67684fc5-a26d-4661-bdf0-1d2078f8bbc9.png', 1, 60, '2025-07-31 16:38:51', '2025-07-31 16:38:51'),
(46, 'products/9d1a73fd-50cb-419a-8746-fc03dcf2dfdb.jpg', 1, 33, '2025-07-31 16:39:25', '2025-07-31 16:39:25'),
(48, 'products/0643f0e8-7c9b-4835-83d5-f9a8c0bc06d9.jpg', 1, 25, '2025-07-31 16:41:03', '2025-07-31 16:41:03'),
(49, 'products/900cd808-bae4-49b5-912e-3acd26a20544.jpg', 1, 34, '2025-07-31 16:42:15', '2025-07-31 16:42:15'),
(50, 'products/768a635d-13d3-49d7-9aa2-1e319af99288.jpg', 1, 36, '2025-07-31 16:43:07', '2025-07-31 16:43:07'),
(52, 'products/bff2e5af-cc7b-4f72-b0a6-be7bd4d50fa5.jpg', 1, 26, '2025-07-31 16:43:20', '2025-07-31 16:43:20'),
(53, 'products/1b04baab-9173-4ffa-88bb-d4ef37b880cc.jpg', 1, 37, '2025-07-31 16:44:26', '2025-07-31 16:44:26'),
(54, 'products/b84a6ff1-44ef-4d65-9906-4dabb974f9e7.jpg', 1, 4, '2025-07-31 16:44:46', '2025-07-31 16:44:46'),
(56, 'products/6df02374-75a6-44dc-85c6-09b5fa3705ab.png', 1, 59, '2025-07-31 16:44:50', '2025-07-31 16:44:50'),
(57, 'products/d3050c9f-0598-477d-8dbd-fc7aa1b97c3d.jpg', 1, 27, '2025-07-31 16:45:12', '2025-07-31 16:45:12'),
(58, 'products/34134b6d-8fc9-4453-bdf4-bd922c05933c.jpg', 1, 35, '2025-07-31 16:45:44', '2025-07-31 16:45:44'),
(59, 'products/a73f62b8-2e3f-4400-b424-59f16c785f57.jpg', 1, 28, '2025-07-31 16:45:48', '2025-07-31 16:45:48'),
(61, 'products/b64bfe3f-a914-4b95-9a7d-0a0be7fe4ee0.jpg', 1, 29, '2025-07-31 16:46:08', '2025-07-31 16:46:08'),
(65, 'products/1c70d64a-5221-4128-bb6e-6c471e7d3cb1.png', 1, 5, '2025-07-31 16:46:29', '2025-07-31 16:46:29'),
(66, 'products/172c5309-08d0-45f4-8224-b589ccf15e44.jpg', 1, 44, '2025-07-31 16:48:01', '2025-07-31 16:48:01'),
(67, 'products/e24e9401-35cd-48d4-b7eb-413369ba5a20.jpg', 1, 30, '2025-07-31 16:48:35', '2025-07-31 16:48:35'),
(68, 'products/711f0d9b-1db3-4573-a2d4-f7a541aa919f.jpeg', 1, 6, '2025-07-31 16:49:12', '2025-07-31 16:49:12'),
(69, 'products/1f6e1c91-0c66-4423-b624-97bc201a7d91.jpeg', 0, 6, '2025-07-31 16:49:12', '2025-07-31 16:49:12'),
(70, 'products/bdc7007c-e08d-474d-b5ce-df5e30a8e8b8.jpg', 1, 47, '2025-07-31 16:49:29', '2025-07-31 16:49:29'),
(71, 'products/936ca4a2-c8b5-4132-a4ab-a2dd26945f73.jpeg', 0, 47, '2025-07-31 16:49:29', '2025-07-31 16:49:29'),
(72, 'products/7f4e9a53-ea14-407b-b7d6-199c7688cb27.png', 0, 47, '2025-07-31 16:49:31', '2025-07-31 16:49:31'),
(73, 'products/1c9b3d6f-13c3-4410-bfec-915b88b05f49.jpg', 1, 45, '2025-07-31 16:49:50', '2025-07-31 16:49:50'),
(74, 'products/a81db16d-529a-4d97-8f25-ce67b541b2ea.jpg', 1, 43, '2025-07-31 16:50:40', '2025-07-31 16:50:40'),
(75, 'products/af763b19-3a33-4fc3-bc94-b8d39efe3780.jpg', 1, 7, '2025-07-31 16:50:54', '2025-07-31 16:50:54'),
(76, 'products/deb4ad59-a36c-4266-9910-608f7e96001a.jpg', 0, 7, '2025-07-31 16:50:54', '2025-07-31 16:50:54'),
(77, 'products/b16400fd-be38-476d-bf84-e46186fd9e3f.jpg', 1, 42, '2025-07-31 16:51:23', '2025-07-31 16:51:23'),
(78, 'products/141fa897-5239-44eb-b3dd-4cdb28c4437e.jpg', 1, 41, '2025-07-31 16:52:07', '2025-07-31 16:52:07'),
(79, 'products/dcc071b4-95bd-426e-9de7-c531862c314b.jpg', 1, 38, '2025-07-31 16:53:12', '2025-07-31 16:53:12'),
(80, 'products/a3f759b8-2189-4124-a441-2f85bd09f31d.jpg', 1, 39, '2025-07-31 16:54:01', '2025-07-31 16:54:01'),
(81, 'products/5c326185-f809-471b-a12a-e711d83f4227.jpg', 1, 40, '2025-07-31 16:54:46', '2025-07-31 16:54:46'),
(82, 'products/181d0e0a-7b81-40b7-9ef7-05fb4c21fac2.jpg', 1, 8, '2025-07-31 16:56:28', '2025-07-31 16:56:28'),
(83, 'products/dd4f222d-796a-43ea-a62e-a064bdf1840d.png', 1, 48, '2025-07-31 16:57:18', '2025-07-31 16:57:18'),
(84, 'products/de382bb0-b940-4c5e-bb7b-21b55f0fbd84.jpg', 0, 40, '2025-07-31 16:59:32', '2025-07-31 16:59:32'),
(85, 'products/e14fff70-d37e-43ff-9365-2e9fcb3e286d.jpg', 1, 9, '2025-07-31 17:00:24', '2025-07-31 17:00:24'),
(86, 'products/93c3b6d7-31c8-4ec6-9b27-4ca841a005a6.webp', 0, 9, '2025-07-31 17:00:24', '2025-07-31 17:00:24'),
(87, 'products/11c9f1bb-b60b-40b3-bcd3-2d08e8712d42.jpg', 1, 10, '2025-07-31 17:02:17', '2025-07-31 17:02:17'),
(88, 'products/558bedbf-bc1e-48c0-b5a2-473dd8145a52.webp', 0, 10, '2025-07-31 17:02:17', '2025-07-31 17:02:17'),
(89, 'products/f537567c-a865-4932-b564-3f28a1d24de0.jpg', 0, 41, '2025-07-31 17:02:52', '2025-07-31 17:02:52'),
(90, 'products/4698bc6f-0844-45e6-8299-f52095727b70.png', 1, 49, '2025-07-31 17:03:17', '2025-07-31 17:03:17'),
(91, 'products/eae3faf6-9552-44e5-988f-996562c88acf.jpg', 0, 42, '2025-07-31 17:03:39', '2025-07-31 17:03:39'),
(92, 'products/c7c28c26-5484-4f0a-8555-63b6085221bf.jpg', 1, 11, '2025-07-31 17:05:00', '2025-07-31 17:05:00'),
(93, 'products/becd15d0-cbed-42b3-a231-f054210f9254.webp', 0, 11, '2025-07-31 17:05:00', '2025-07-31 17:05:00'),
(94, 'products/febd388d-1988-4d89-8b1d-d44b61ccb53f.jpg', 0, 43, '2025-07-31 17:05:12', '2025-07-31 17:05:12'),
(95, 'products/8db19d79-731f-4afa-8efb-0389f9f8e297.jpg', 0, 44, '2025-07-31 17:07:01', '2025-07-31 17:07:01'),
(97, 'products/a39dafd9-4257-4f8e-836b-622e11744ada.png', 0, 50, '2025-07-31 17:09:09', '2025-07-31 17:09:09'),
(98, 'products/0da21c09-3b4c-4066-8030-55bb85a9e1cb.png', 1, 50, '2025-07-31 17:09:13', '2025-07-31 17:09:13'),
(99, 'products/872634e0-104f-49a5-916d-b2bfc58353ad.png', 0, 50, '2025-07-31 17:09:13', '2025-07-31 17:09:13'),
(100, 'products/23b9d13b-b25e-4486-bd7e-2ed24670d7a6.jpg', 1, 58, '2025-07-31 17:09:39', '2025-07-31 17:09:39'),
(101, 'products/78603b27-f4d6-4e6e-a088-8b16585587bb.jpg', 0, 31, '2025-07-31 17:09:59', '2025-07-31 17:09:59'),
(103, 'products/16439ada-813b-4ae8-9cf4-794f3946495d.jpg', 1, 13, '2025-07-31 17:11:09', '2025-07-31 17:11:09'),
(104, 'products/4eab85b2-3804-4b86-b300-90cc6d9dad9a.webp', 0, 13, '2025-07-31 17:11:10', '2025-07-31 17:11:10'),
(108, 'products/182d7f45-296a-4f4a-b980-7ebbc5112693.jpg', 1, 80, '2025-07-31 17:12:30', '2025-07-31 17:12:30'),
(109, 'products/d5297554-4a78-4b61-9dbb-21d056ea0156.jpg', 1, 81, '2025-07-31 17:12:46', '2025-07-31 17:12:46'),
(110, 'products/92efc20b-51e9-414b-a1e7-c95045a6c309.jpg', 1, 82, '2025-07-31 17:13:01', '2025-07-31 17:13:01'),
(111, 'products/4fb5b1b1-9a21-447e-8411-437d9c6fa364.jpg', 1, 61, '2025-07-31 17:13:06', '2025-07-31 17:13:06'),
(112, 'products/f8d4f9e0-ae7c-4edf-9232-3968151b05ec.jpg', 1, 83, '2025-07-31 17:13:18', '2025-07-31 17:13:18'),
(113, 'products/592c57fc-61fc-476c-891c-eaf0ff769cd7.jpg', 1, 14, '2025-07-31 17:13:21', '2025-07-31 17:13:21'),
(114, 'products/12bc3bd9-a421-430b-b7eb-5815a8fc8cc2.webp', 0, 14, '2025-07-31 17:13:22', '2025-07-31 17:13:22'),
(115, 'products/e160b23c-fe5c-4fd3-abce-bc0b0234d071.png', 1, 62, '2025-07-31 17:14:04', '2025-07-31 17:14:04'),
(116, 'products/1b360007-1555-4747-ab3a-0ee07f3946b5.png', 1, 84, '2025-07-31 17:14:25', '2025-07-31 17:14:25'),
(117, 'products/c9b6bfc4-afce-443e-9ea0-d362165f8a64.jpg', 1, 85, '2025-07-31 17:14:39', '2025-07-31 17:14:39'),
(118, 'products/504f4867-3300-4378-bca7-eac351877f9f.jpg', 1, 15, '2025-07-31 17:14:42', '2025-07-31 17:14:42'),
(119, 'products/3c4a65f4-9bed-45af-adc8-7c802c51b681.webp', 0, 15, '2025-07-31 17:14:42', '2025-07-31 17:14:42'),
(121, 'products/453b2064-324c-4d07-93bf-96e7dbc31499.jpg', 1, 88, '2025-07-31 17:15:19', '2025-07-31 17:15:19'),
(122, 'products/3d0e37f3-02f7-44f7-a621-89d7aea16257.jpg', 1, 89, '2025-07-31 17:15:36', '2025-07-31 17:15:36'),
(123, 'products/da20083f-a9c2-49ae-86b2-ccfbaaa3826d.jpg', 1, 90, '2025-07-31 17:15:49', '2025-07-31 17:15:49'),
(125, 'products/cc9e875a-1571-4c13-854c-b7d8a919a0f9.jpg', 1, 86, '2025-07-31 17:16:52', '2025-07-31 17:16:52'),
(126, 'products/b5ce7ebc-80b4-4157-8fc6-ca6311f93ac6.jpg', 1, 63, '2025-07-31 17:17:01', '2025-07-31 17:17:01'),
(127, 'products/549dd0ac-5ec5-4a1e-980d-bae75a1af780.jpg', 1, 1, '2025-07-31 17:17:09', '2025-07-31 17:17:09'),
(128, 'products/b4de23e4-eada-4472-bcc6-f230c110c6d6.jpg', 0, 1, '2025-07-31 17:17:10', '2025-07-31 17:17:10'),
(129, 'products/947ef674-b274-40f4-bdf8-5e85955add26.jpg', 1, 87, '2025-07-31 17:17:29', '2025-07-31 17:17:29'),
(130, 'products/743a4ef5-fed8-4443-b9d8-7351eb5bec61.jpg', 1, 64, '2025-07-31 17:18:19', '2025-07-31 17:18:19'),
(131, 'products/3eaa6ea8-8b46-4a68-9fc3-e0ee0aea2665.jpg', 1, 2, '2025-07-31 17:18:26', '2025-07-31 17:18:26'),
(132, 'products/a6c6de97-a63f-4e5c-970c-e79b682c94cb.jpg', 0, 2, '2025-07-31 17:18:26', '2025-07-31 17:18:26'),
(133, 'products/9200080a-f5f9-4488-a7bc-5f0c033b2e20.jpg', 1, 53, '2025-07-31 17:18:47', '2025-07-31 17:18:47'),
(134, 'products/f068489f-c434-4bef-a2fb-38560b2bb941.png', 0, 53, '2025-07-31 17:18:47', '2025-07-31 17:18:47'),
(135, 'products/856c5c21-744f-4efb-a3eb-dd5297d4674a.jpg', 1, 3, '2025-07-31 17:19:35', '2025-07-31 17:19:35'),
(136, 'products/f7ec7dad-7c1f-4d11-b2f7-40d140ddf51c.webp', 0, 3, '2025-07-31 17:19:35', '2025-07-31 17:19:35'),
(137, 'products/938bff1a-20e0-4c94-8a21-86b1794ea459.jpg', 1, 66, '2025-07-31 17:19:56', '2025-07-31 17:19:56'),
(138, 'products/525ca622-bdd3-479c-a21b-14d7a35d2039.jpg', 1, 67, '2025-07-31 17:20:52', '2025-07-31 17:20:52'),
(139, 'products/16197d19-090b-4e5c-9863-d3c68553d2e1.jpg', 1, 12, '2025-07-31 17:21:00', '2025-07-31 17:21:00'),
(140, 'products/f5ae0dc9-f0d8-4a65-8904-4cba76d5df99.webp', 0, 12, '2025-07-31 17:21:00', '2025-07-31 17:21:00'),
(141, 'products/e1d4362d-9510-4edd-9ce0-762c147a8ad5.jpeg', 1, 70, '2025-07-31 17:23:45', '2025-07-31 17:23:45'),
(142, 'products/60aade9c-2588-49ba-bccd-1c07194452cc.webp', 1, 52, '2025-07-31 17:24:40', '2025-07-31 17:24:40'),
(143, 'products/cf8018c6-67bb-46c9-a7fa-8a653d09d74d.jpg', 1, 65, '2025-07-31 17:27:04', '2025-07-31 17:27:04'),
(144, 'products/e62bea3f-7a67-4970-9e44-ac2a76f9b211.jpg', 1, 68, '2025-07-31 17:28:08', '2025-07-31 17:28:08'),
(145, 'products/af64b336-6c09-4eb9-8206-9e9c111f18cb.png', 1, 51, '2025-07-31 17:28:09', '2025-07-31 17:28:09'),
(146, 'products/96b62fd9-4bf0-4a3a-a2f0-242d40ee3837.jpg', 1, 69, '2025-07-31 17:29:17', '2025-07-31 17:29:17'),
(147, 'products/c7bd3a99-cfca-4621-bca0-b662bcbb392a.jpg', 1, 71, '2025-07-31 17:33:38', '2025-07-31 17:33:38'),
(148, 'products/a0307b3f-af43-42a9-841e-8842c13b6685.jpg', 1, 72, '2025-07-31 17:34:32', '2025-07-31 17:34:32'),
(149, 'products/6df1a961-953f-49c3-ad89-e040a05a6589.jpg', 1, 46, '2025-07-31 17:35:21', '2025-07-31 17:35:21'),
(150, 'products/dad9135c-b289-44a5-90c7-02d5cef500f2.jpg', 1, 73, '2025-07-31 17:35:26', '2025-07-31 17:35:26'),
(151, 'products/d67fd78a-2e46-4d77-831b-bf31b708a9c8.jpg', 1, 74, '2025-07-31 17:36:03', '2025-07-31 17:36:03'),
(152, 'products/79e7ded7-3638-454f-b6d2-cb944328d3c4.jpg', 1, 75, '2025-07-31 17:37:28', '2025-07-31 17:37:28'),
(153, 'products/7891003f-141d-4d87-ae10-0e259cd817b1.webp', 1, 76, '2025-07-31 20:28:05', '2025-07-31 20:28:05'),
(154, 'products/280afb59-1c0e-4fb5-9fb0-03205d7c74ae.jpg', 1, 77, '2025-07-31 20:30:02', '2025-07-31 20:30:02'),
(155, 'products/a059079e-fe10-4cd5-9b1b-489eb1711e1d.jpg', 1, 78, '2025-07-31 20:30:47', '2025-07-31 20:30:47'),
(156, 'products/6884dee1-7155-4c17-8e60-275b42645390.jpg', 1, 79, '2025-07-31 20:34:26', '2025-07-31 20:34:26'),
(157, 'products/c3c8a6bf-1e7d-471f-a544-58d70f19651b.png', 1, 91, '2025-08-25 15:36:49', '2025-08-25 15:36:49'),
(158, 'products/e6e4b335-868d-4f58-9407-1e57b98ae30a.png', 1, 92, '2025-08-25 16:32:37', '2025-08-25 16:32:37'),
(159, 'products/44db5d16-65ef-4022-9cda-d7c1082956b0.png', 1, 93, '2025-08-25 16:41:08', '2025-08-25 16:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `combo_id` bigint UNSIGNED DEFAULT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED DEFAULT NULL,
  `rating` int NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `review_date` datetime NOT NULL,
  `review_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified_purchase` tinyint(1) NOT NULL DEFAULT '1',
  `helpful_count` int NOT NULL DEFAULT '0',
  `report_count` int NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `combo_id`, `order_id`, `branch_id`, `rating`, `review`, `review_date`, `review_image`, `is_verified_purchase`, `helpful_count`, `report_count`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 9, 1, NULL, 28, 2, 5, 'Phục vụ nhanh và thân thiện.', '2025-07-08 22:33:59', NULL, 1, 8, 0, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(4, 8, 2, NULL, 45, 3, 5, 'Phục vụ nhanh và thân thiện.', '2025-07-04 22:33:59', NULL, 1, 13, 0, 1, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(5, 11, 2, NULL, 41, 3, 4, 'Phục vụ nhanh và thân thiện.', '2025-07-26 22:33:59', NULL, 1, 18, 1, 1, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(7, 1, 3, NULL, 35, 2, 5, 'Không gian sạch sẽ, thoải mái.', '2025-07-22 22:33:59', NULL, 1, 6, 1, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(10, 9, 4, NULL, 45, 1, 5, 'Giá cả hợp lý.', '2025-07-08 22:33:59', NULL, 1, 8, 1, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(11, 10, 4, NULL, 29, 2, 5, 'Sẽ quay lại lần sau.', '2025-07-02 22:33:59', NULL, 1, 1, 2, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(13, 4, 5, NULL, 45, 3, 4, 'Món ăn này rất ngon!', '2025-07-15 22:33:59', NULL, 1, 2, 0, 1, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(15, 13, 5, NULL, 50, 3, 4, 'Phục vụ nhanh và thân thiện.', '2025-07-25 22:33:59', NULL, 1, 17, 0, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(16, 7, 6, NULL, 32, 3, 5, 'Giá cả hợp lý.', '2025-07-15 22:33:59', NULL, 1, 1, 0, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(17, 3, 6, NULL, 34, 1, 5, 'Sẽ quay lại lần sau.', '2025-07-15 22:33:59', NULL, 1, 13, 2, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(20, 1, 7, NULL, 48, 1, 4, 'Sẽ quay lại lần sau.', '2025-07-03 22:33:59', NULL, 1, 12, 2, 1, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(22, 9, 8, NULL, 26, 1, 4, 'Giá cả hợp lý.', '2025-07-10 22:33:59', NULL, 1, 4, 2, 1, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(23, 4, 8, NULL, 27, 2, 4, 'Món ăn trình bày đẹp mắt.', '2025-07-22 22:33:59', NULL, 1, 9, 0, 1, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(24, 8, 8, NULL, 39, 1, 4, 'Hương vị tuyệt vời.', '2025-07-29 22:33:59', NULL, 1, 18, 1, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(27, 1, 9, NULL, 45, 2, 4, 'Món ăn trình bày đẹp mắt.', '2025-07-06 22:33:59', NULL, 1, 1, 2, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(30, 9, 10, NULL, 40, 1, 5, 'Hương vị tuyệt vời.', '2025-07-31 22:33:59', NULL, 1, 13, 1, 1, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(32, 10, 11, NULL, 33, 1, 5, 'Món ăn trình bày đẹp mắt.', '2025-07-23 22:33:59', NULL, 1, 14, 1, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(33, 15, 11, NULL, 24, 1, 4, 'Món ăn này rất ngon!', '2025-07-24 22:33:59', NULL, 1, 17, 2, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(35, 4, 12, NULL, 40, 1, 4, 'Không gian sạch sẽ, thoải mái.', '2025-07-08 22:33:59', NULL, 1, 11, 2, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(36, 4, 12, NULL, 29, 3, 5, 'Rất đáng để thử!', '2025-07-11 22:33:59', NULL, 1, 5, 0, 1, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(39, 1, 13, NULL, 50, 1, 4, 'Rất đáng để thử!', '2025-07-30 22:33:59', NULL, 1, 7, 2, 1, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(40, 5, 14, NULL, 39, 1, 5, 'Giá cả hợp lý.', '2025-07-11 22:33:59', NULL, 1, 9, 1, 1, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(41, 12, 14, NULL, 50, 2, 4, 'Tôi rất hài lòng với chất lượng.', '2025-07-12 22:33:59', NULL, 1, 13, 0, 1, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(42, 5, 14, NULL, 24, 3, 4, 'Hương vị tuyệt vời.', '2025-07-20 22:33:59', NULL, 1, 14, 1, 0, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(43, 3, 15, NULL, 27, 1, 4, 'Rất đáng để thử!', '2025-07-25 22:33:59', NULL, 1, 2, 2, 1, '2025-07-31 15:33:59', '2025-07-31 15:33:59'),
(46, 2, 16, NULL, 30, 3, 5, 'Món ăn này rất ngon!', '2025-07-26 22:34:00', NULL, 1, 9, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(47, 1, 16, NULL, 41, 2, 4, 'Rất đáng để thử!', '2025-07-22 22:34:00', NULL, 1, 8, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(48, 14, 16, NULL, 27, 2, 5, 'Rất đáng để thử!', '2025-07-24 22:34:00', NULL, 1, 17, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(50, 9, 17, NULL, 32, 2, 4, 'Giá cả hợp lý.', '2025-07-10 22:34:00', NULL, 1, 4, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(53, 2, 18, NULL, 33, 2, 4, 'Đồ ăn nóng hổi, vừa miệng.', '2025-07-03 22:34:00', NULL, 1, 1, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(54, 15, 18, NULL, 47, 1, 5, 'Đồ ăn nóng hổi, vừa miệng.', '2025-07-03 22:34:00', NULL, 1, 17, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(56, 2, 19, NULL, 43, 3, 4, 'Không gian sạch sẽ, thoải mái.', '2025-07-30 22:34:00', NULL, 1, 17, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(57, 10, 19, NULL, 38, 3, 5, 'Món ăn trình bày đẹp mắt.', '2025-07-29 22:34:00', NULL, 1, 2, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(59, 3, 20, NULL, 49, 1, 5, 'Không gian sạch sẽ, thoải mái.', '2025-07-02 22:34:00', NULL, 1, 11, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(60, 12, 20, NULL, 48, 1, 5, 'Món ăn trình bày đẹp mắt.', '2025-07-24 22:34:00', NULL, 1, 10, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(62, 13, 21, NULL, 29, 2, 4, 'Giá cả hợp lý.', '2025-07-12 22:34:00', NULL, 1, 12, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(63, 12, 21, NULL, 29, 2, 5, 'Tôi rất hài lòng với chất lượng.', '2025-07-16 22:34:00', NULL, 1, 19, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(65, 3, 22, NULL, 42, 3, 4, 'Món ăn trình bày đẹp mắt.', '2025-07-21 22:34:00', NULL, 1, 20, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(67, 13, 23, NULL, 49, 1, 5, 'Món ăn này rất ngon!', '2025-07-22 22:34:00', NULL, 1, 16, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(69, 3, 23, NULL, 49, 1, 4, 'Hương vị tuyệt vời.', '2025-07-10 22:34:00', NULL, 1, 1, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(70, 3, 24, NULL, 39, 3, 5, 'Không gian sạch sẽ, thoải mái.', '2025-07-22 22:34:00', NULL, 1, 4, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(71, 3, 24, NULL, 35, 3, 4, 'Món ăn này rất ngon!', '2025-07-08 22:34:00', NULL, 1, 3, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(72, 12, 24, NULL, 36, 1, 5, 'Giá cả hợp lý.', '2025-07-03 22:34:00', NULL, 1, 18, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(76, 6, 26, NULL, 44, 2, 5, 'Món ăn này rất ngon!', '2025-07-03 22:34:00', NULL, 1, 6, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(79, 7, 27, NULL, 24, 1, 5, 'Rất đáng để thử!', '2025-07-01 22:34:00', NULL, 1, 17, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(80, 6, 27, NULL, 26, 2, 5, 'Phục vụ nhanh và thân thiện.', '2025-07-13 22:34:00', NULL, 1, 8, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(81, 9, 27, NULL, 40, 1, 5, 'Phục vụ nhanh và thân thiện.', '2025-07-22 22:34:00', NULL, 1, 5, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(82, 7, 28, NULL, 48, 3, 4, 'Món ăn này rất ngon!', '2025-07-04 22:34:00', NULL, 1, 3, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(83, 10, 28, NULL, 42, 2, 4, 'Món ăn trình bày đẹp mắt.', '2025-07-05 22:34:00', NULL, 1, 4, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(85, 8, 29, NULL, 34, 2, 4, 'Phục vụ nhanh và thân thiện.', '2025-07-16 22:34:00', NULL, 1, 1, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(91, 10, 31, NULL, 50, 3, 4, 'Hương vị tuyệt vời.', '2025-07-16 22:34:00', NULL, 1, 6, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(92, 12, 31, NULL, 26, 2, 4, 'Không gian sạch sẽ, thoải mái.', '2025-07-01 22:34:00', NULL, 1, 16, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(93, 1, 31, NULL, 39, 1, 4, 'Đồ ăn nóng hổi, vừa miệng.', '2025-07-03 22:34:00', NULL, 1, 7, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(94, 15, 32, NULL, 35, 3, 4, 'Giá cả hợp lý.', '2025-07-08 22:34:00', NULL, 1, 19, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(96, 9, 32, NULL, 29, 3, 4, 'Rất đáng để thử!', '2025-07-23 22:34:00', NULL, 1, 10, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(97, 8, 33, NULL, 35, 3, 4, 'Đồ ăn nóng hổi, vừa miệng.', '2025-07-07 22:34:00', NULL, 1, 14, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(100, 13, 34, NULL, 40, 1, 4, 'Món ăn này rất ngon!', '2025-07-01 22:34:00', NULL, 1, 14, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(101, 9, 34, NULL, 26, 2, 4, 'Tôi rất hài lòng với chất lượng.', '2025-07-04 22:34:00', NULL, 1, 5, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(102, 12, 34, NULL, 43, 2, 5, 'Rất đáng để thử!', '2025-07-19 22:34:00', NULL, 1, 18, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(104, 9, 35, NULL, 43, 2, 4, 'Rất đáng để thử!', '2025-07-15 22:34:00', NULL, 1, 9, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(105, 5, 35, NULL, 49, 3, 4, 'Rất đáng để thử!', '2025-07-08 22:34:00', NULL, 1, 18, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(106, 1, 36, NULL, 37, 1, 4, 'Không gian sạch sẽ, thoải mái.', '2025-07-21 22:34:00', NULL, 1, 6, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(107, 6, 36, NULL, 39, 1, 5, 'Tôi rất hài lòng với chất lượng.', '2025-07-17 22:34:00', NULL, 1, 4, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(109, 7, 37, NULL, 34, 3, 5, 'Tôi rất hài lòng với chất lượng.', '2025-07-02 22:34:00', NULL, 1, 8, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(111, 2, 37, NULL, 40, 3, 4, 'Không gian sạch sẽ, thoải mái.', '2025-07-12 22:34:00', NULL, 1, 2, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(116, 12, 39, NULL, 36, 1, 5, 'Rất đáng để thử!', '2025-07-07 22:34:00', NULL, 1, 7, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(117, 8, 39, NULL, 47, 2, 5, 'Không gian sạch sẽ, thoải mái.', '2025-07-08 22:34:00', NULL, 1, 11, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(120, 6, 40, NULL, 29, 1, 4, 'Phục vụ nhanh và thân thiện.', '2025-07-05 22:34:00', NULL, 1, 20, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(121, 13, 41, NULL, 47, 3, 5, 'Không gian sạch sẽ, thoải mái.', '2025-07-08 22:34:00', NULL, 1, 5, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(122, 6, 41, NULL, 32, 2, 5, 'Sẽ quay lại lần sau.', '2025-07-14 22:34:00', NULL, 1, 16, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(123, 3, 41, NULL, 46, 3, 4, 'Sẽ quay lại lần sau.', '2025-07-14 22:34:00', NULL, 1, 15, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(124, 14, 42, NULL, 48, 1, 5, 'Món ăn này rất ngon!', '2025-07-03 22:34:00', NULL, 1, 9, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(125, 6, 42, NULL, 43, 1, 5, 'Giá cả hợp lý.', '2025-07-20 22:34:00', NULL, 1, 13, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(130, 9, 44, NULL, 44, 2, 5, 'Giá cả hợp lý.', '2025-07-09 22:34:00', NULL, 1, 12, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(132, 8, 44, NULL, 38, 3, 5, 'Phục vụ nhanh và thân thiện.', '2025-07-17 22:34:00', NULL, 1, 4, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(135, 7, 45, NULL, 47, 1, 4, 'Tôi rất hài lòng với chất lượng.', '2025-07-21 22:34:00', NULL, 1, 15, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(136, 8, 46, NULL, 31, 2, 4, 'Tôi rất hài lòng với chất lượng.', '2025-07-23 22:34:00', NULL, 1, 9, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(140, 12, 47, NULL, 25, 2, 4, 'Phục vụ nhanh và thân thiện.', '2025-07-11 22:34:00', NULL, 1, 6, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(142, 13, 48, NULL, 48, 1, 4, 'Rất đáng để thử!', '2025-07-18 22:34:00', NULL, 1, 4, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(145, 13, 49, NULL, 36, 1, 5, 'Đồ ăn nóng hổi, vừa miệng.', '2025-07-07 22:34:00', NULL, 1, 0, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(146, 11, 49, NULL, 36, 3, 4, 'Tôi rất hài lòng với chất lượng.', '2025-07-14 22:34:00', NULL, 1, 9, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(147, 11, 49, NULL, 35, 3, 5, 'Tôi rất hài lòng với chất lượng.', '2025-07-30 22:34:00', NULL, 1, 8, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(150, 13, 50, NULL, 37, 1, 5, 'Không gian sạch sẽ, thoải mái.', '2025-07-09 22:34:00', NULL, 1, 14, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(153, 1, 51, NULL, 25, 1, 4, 'Món ăn này rất ngon!', '2025-07-29 22:34:00', NULL, 1, 2, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(155, 5, 52, NULL, 29, 2, 5, 'Món ăn trình bày đẹp mắt.', '2025-07-20 22:34:00', NULL, 1, 13, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(156, 14, 52, NULL, 38, 3, 4, 'Tôi rất hài lòng với chất lượng.', '2025-07-14 22:34:00', NULL, 1, 17, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(157, 13, 53, NULL, 43, 1, 4, 'Giá cả hợp lý.', '2025-07-01 22:34:00', NULL, 1, 7, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(158, 5, 53, NULL, 45, 2, 4, 'Giá cả hợp lý.', '2025-07-04 22:34:00', NULL, 1, 4, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(159, 1, 53, NULL, 42, 3, 5, 'Giá cả hợp lý.', '2025-07-23 22:34:00', NULL, 1, 16, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(160, 1, 54, NULL, 29, 3, 4, 'Phục vụ nhanh và thân thiện.', '2025-07-19 22:34:00', NULL, 1, 7, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(162, 13, 54, NULL, 33, 1, 4, 'Món ăn trình bày đẹp mắt.', '2025-07-11 22:34:00', NULL, 1, 18, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(163, 2, 55, NULL, 32, 2, 5, 'Giá cả hợp lý.', '2025-07-03 22:34:00', NULL, 1, 15, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(167, 7, 56, NULL, 43, 1, 5, 'Giá cả hợp lý.', '2025-07-05 22:34:00', NULL, 1, 12, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(169, 14, 57, NULL, 47, 1, 4, 'Giá cả hợp lý.', '2025-07-03 22:34:00', NULL, 1, 12, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(170, 14, 57, NULL, 43, 2, 4, 'Sẽ quay lại lần sau.', '2025-07-31 22:34:00', NULL, 1, 12, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(175, 10, 59, NULL, 30, 1, 5, 'Sẽ quay lại lần sau.', '2025-07-09 22:34:00', NULL, 1, 2, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(177, 5, 59, NULL, 37, 2, 5, 'Sẽ quay lại lần sau.', '2025-07-12 22:34:00', NULL, 1, 2, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(179, 3, 60, NULL, 33, 1, 4, 'Giá cả hợp lý.', '2025-07-15 22:34:00', NULL, 1, 20, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(182, 13, 61, NULL, 30, 1, 5, 'Món ăn trình bày đẹp mắt.', '2025-07-21 22:34:00', NULL, 1, 16, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(183, 3, 61, NULL, 46, 3, 4, 'Món ăn này rất ngon!', '2025-07-30 22:34:00', NULL, 1, 13, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(188, 9, 63, NULL, 26, 2, 5, 'Không gian sạch sẽ, thoải mái.', '2025-07-10 22:34:00', NULL, 1, 8, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(192, 15, 64, NULL, 26, 1, 5, 'Hương vị tuyệt vời.', '2025-07-27 22:34:00', NULL, 1, 16, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(193, 2, 65, NULL, 41, 3, 5, 'Món ăn trình bày đẹp mắt.', '2025-07-24 22:34:00', NULL, 1, 6, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(194, 4, 65, NULL, 45, 3, 4, 'Không gian sạch sẽ, thoải mái.', '2025-07-26 22:34:00', NULL, 1, 19, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(195, 12, 65, NULL, 44, 2, 4, 'Món ăn này rất ngon!', '2025-07-11 22:34:00', NULL, 1, 18, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(196, 15, 66, NULL, 43, 1, 4, 'Đồ ăn nóng hổi, vừa miệng.', '2025-07-12 22:34:00', NULL, 1, 2, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(197, 8, 66, NULL, 31, 2, 4, 'Hương vị tuyệt vời.', '2025-07-15 22:34:00', NULL, 1, 4, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(199, 1, 67, NULL, 36, 2, 4, 'Món ăn này rất ngon!', '2025-07-06 22:34:00', NULL, 1, 19, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(200, 2, 67, NULL, 30, 3, 5, 'Đồ ăn nóng hổi, vừa miệng.', '2025-07-13 22:34:00', NULL, 1, 6, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(201, 1, 67, NULL, 34, 3, 4, 'Sẽ quay lại lần sau.', '2025-07-24 22:34:00', NULL, 1, 15, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(203, 12, 68, NULL, 49, 1, 5, 'Hương vị tuyệt vời.', '2025-07-26 22:34:00', NULL, 1, 8, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(204, 8, 68, NULL, 31, 2, 4, 'Món ăn này rất ngon!', '2025-07-26 22:34:00', NULL, 1, 7, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(206, 12, 69, NULL, 39, 1, 5, 'Giá cả hợp lý.', '2025-07-18 22:34:00', NULL, 1, 14, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(207, 9, 69, NULL, 44, 1, 5, 'Sẽ quay lại lần sau.', '2025-07-05 22:34:00', NULL, 1, 7, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(208, 5, 70, NULL, 27, 1, 4, 'Đồ ăn nóng hổi, vừa miệng.', '2025-07-01 22:34:00', NULL, 1, 2, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(213, 8, 71, NULL, 38, 1, 4, 'Hương vị tuyệt vời.', '2025-07-13 22:34:00', NULL, 1, 6, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(215, 12, 72, NULL, 35, 1, 5, 'Phục vụ nhanh và thân thiện.', '2025-07-02 22:34:00', NULL, 1, 16, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(216, 3, 72, NULL, 37, 3, 5, 'Đồ ăn nóng hổi, vừa miệng.', '2025-07-16 22:34:00', NULL, 1, 13, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(217, 10, 73, NULL, 36, 3, 5, 'Món ăn này rất ngon!', '2025-07-22 22:34:00', NULL, 1, 6, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(218, 12, 73, NULL, 45, 1, 5, 'Hương vị tuyệt vời.', '2025-07-18 22:34:00', NULL, 1, 7, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(219, 14, 73, NULL, 31, 2, 4, 'Sẽ quay lại lần sau.', '2025-07-01 22:34:00', NULL, 1, 9, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(220, 10, 74, NULL, 31, 1, 5, 'Không gian sạch sẽ, thoải mái.', '2025-07-26 22:34:00', NULL, 1, 15, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(223, 4, 75, NULL, 36, 2, 4, 'Không gian sạch sẽ, thoải mái.', '2025-07-09 22:34:00', NULL, 1, 15, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(224, 4, 75, NULL, 25, 1, 4, 'Món ăn này rất ngon!', '2025-07-27 22:34:00', NULL, 1, 4, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(227, 10, 76, NULL, 34, 3, 4, 'Không gian sạch sẽ, thoải mái.', '2025-07-23 22:34:00', NULL, 1, 18, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(228, 8, 76, NULL, 24, 2, 5, 'Tôi rất hài lòng với chất lượng.', '2025-07-18 22:34:00', NULL, 1, 18, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(229, 6, 77, NULL, 50, 3, 4, 'Món ăn trình bày đẹp mắt.', '2025-07-17 22:34:00', NULL, 1, 7, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(230, 11, 77, NULL, 30, 3, 5, 'Hương vị tuyệt vời.', '2025-07-03 22:34:00', NULL, 1, 18, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(231, 9, 77, NULL, 47, 1, 4, 'Đồ ăn nóng hổi, vừa miệng.', '2025-07-20 22:34:00', NULL, 1, 17, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(232, 1, 78, NULL, 34, 1, 4, 'Sẽ quay lại lần sau.', '2025-07-07 22:34:00', NULL, 1, 17, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(233, 9, 78, NULL, 38, 3, 5, 'Phục vụ nhanh và thân thiện.', '2025-07-16 22:34:00', NULL, 1, 7, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(236, 9, 79, NULL, 39, 1, 5, 'Tôi rất hài lòng với chất lượng.', '2025-07-26 22:34:00', NULL, 1, 13, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(237, 2, 79, NULL, 50, 1, 4, 'Hương vị tuyệt vời.', '2025-07-02 22:34:00', NULL, 1, 14, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(238, 7, 80, NULL, 39, 2, 5, 'Sẽ quay lại lần sau.', '2025-07-06 22:34:00', NULL, 1, 20, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(239, 1, 80, NULL, 40, 2, 4, 'Phục vụ nhanh và thân thiện.', '2025-07-30 22:34:00', NULL, 1, 6, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(240, 3, 80, NULL, 28, 1, 5, 'Tôi rất hài lòng với chất lượng.', '2025-07-06 22:34:00', NULL, 1, 18, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(241, 12, 81, NULL, 41, 2, 5, 'Món ăn này rất ngon!', '2025-07-10 22:34:00', NULL, 1, 13, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(243, 11, 81, NULL, 50, 2, 5, 'Sẽ quay lại lần sau.', '2025-07-25 22:34:00', NULL, 1, 5, 2, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(245, 7, 82, NULL, 31, 3, 4, 'Hương vị tuyệt vời.', '2025-07-27 22:34:00', NULL, 1, 6, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(247, 3, 83, NULL, 41, 3, 5, 'Phục vụ nhanh và thân thiện.', '2025-07-31 22:34:00', NULL, 1, 2, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(248, 7, 83, NULL, 46, 1, 4, 'Giá cả hợp lý.', '2025-07-06 22:34:00', NULL, 1, 0, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(249, 7, 83, NULL, 40, 2, 4, 'Rất đáng để thử!', '2025-07-23 22:34:00', NULL, 1, 1, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(252, 4, 84, NULL, 24, 1, 5, 'Rất đáng để thử!', '2025-07-01 22:34:00', NULL, 1, 1, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(253, 4, 85, NULL, 46, 2, 5, 'Món ăn trình bày đẹp mắt.', '2025-07-31 22:34:00', NULL, 1, 20, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(254, 6, 85, NULL, 43, 2, 4, 'Rất đáng để thử!', '2025-07-14 22:34:00', NULL, 1, 14, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(256, 15, 86, NULL, 50, 1, 4, 'Không gian sạch sẽ, thoải mái.', '2025-07-11 22:34:00', NULL, 1, 0, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(260, 13, 87, NULL, 34, 2, 4, 'Món ăn này rất ngon!', '2025-07-13 22:34:00', NULL, 1, 5, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(261, 5, 87, NULL, 29, 1, 5, 'Rất đáng để thử!', '2025-07-22 22:34:00', NULL, 1, 10, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(262, 1, 88, NULL, 43, 2, 4, 'Phục vụ nhanh và thân thiện.', '2025-07-24 22:34:00', NULL, 1, 15, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(263, 9, 88, NULL, 26, 1, 5, 'Món ăn này rất ngon!', '2025-07-05 22:34:00', NULL, 1, 18, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(264, 10, 88, NULL, 40, 2, 4, 'Tôi rất hài lòng với chất lượng.', '2025-07-06 22:34:00', NULL, 1, 2, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(265, 10, 89, NULL, 32, 1, 5, 'Món ăn trình bày đẹp mắt.', '2025-07-23 22:34:00', NULL, 1, 3, 2, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(266, 13, 89, NULL, 30, 1, 4, 'Đồ ăn nóng hổi, vừa miệng.', '2025-07-02 22:34:00', NULL, 1, 11, 1, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(267, 3, 89, NULL, 29, 2, 5, 'Rất đáng để thử!', '2025-07-27 22:34:00', NULL, 1, 16, 1, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(269, 15, 90, NULL, 37, 1, 4, 'Hương vị tuyệt vời.', '2025-07-23 22:34:00', NULL, 1, 14, 0, 1, '2025-07-31 15:34:00', '2025-07-31 15:34:00'),
(270, 5, 90, NULL, 33, 1, 4, 'Tôi rất hài lòng với chất lượng.', '2025-07-16 22:34:00', NULL, 1, 5, 0, 0, '2025-07-31 15:34:00', '2025-07-31 15:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_toppings`
--

CREATE TABLE `product_toppings` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `topping_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_toppings`
--

INSERT INTO `product_toppings` (`id`, `product_id`, `topping_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(2, 1, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(3, 1, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(4, 1, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(5, 1, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(6, 2, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(7, 2, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(8, 2, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(9, 2, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(10, 3, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(11, 3, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(12, 3, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(13, 3, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(14, 3, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(15, 4, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(16, 4, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(17, 4, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(18, 4, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(19, 4, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(20, 4, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(21, 5, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(22, 5, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(23, 5, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(24, 5, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(25, 5, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(26, 5, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(27, 6, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(28, 6, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(29, 6, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(30, 6, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(31, 7, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(32, 7, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(33, 7, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(34, 7, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(35, 8, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(36, 8, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(37, 8, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(38, 8, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(39, 8, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(40, 9, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(41, 9, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(42, 9, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(43, 9, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(44, 9, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(45, 9, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(46, 10, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(47, 10, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(48, 10, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(49, 10, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(50, 10, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(51, 10, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(52, 10, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(53, 11, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(54, 11, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(55, 11, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(56, 11, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(57, 11, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(58, 11, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(59, 11, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(60, 12, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(61, 12, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(62, 12, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(63, 13, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(64, 13, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(65, 13, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(66, 13, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(67, 13, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(68, 13, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(69, 14, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(70, 14, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(71, 14, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(72, 14, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(73, 14, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(74, 14, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(75, 15, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(76, 15, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(77, 15, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(78, 16, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(79, 16, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(80, 16, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(81, 16, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(82, 16, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(83, 17, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(84, 17, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(85, 17, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(86, 18, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(87, 18, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(88, 18, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(89, 19, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(90, 19, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(91, 19, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(92, 19, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(93, 19, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(94, 19, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(95, 19, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(96, 20, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(97, 20, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(98, 20, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(99, 20, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(100, 21, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(101, 21, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(102, 21, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(103, 21, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(104, 22, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(105, 22, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(106, 22, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(107, 22, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(108, 22, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(109, 23, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(110, 23, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(111, 23, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(112, 24, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(113, 24, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(114, 24, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(115, 24, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(116, 24, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(117, 25, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(118, 25, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(119, 25, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(120, 25, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(121, 25, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(122, 26, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(123, 26, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(124, 26, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(125, 26, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(126, 27, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(127, 27, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(128, 27, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(129, 27, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(130, 27, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(131, 27, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(132, 28, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(133, 28, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(134, 28, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(135, 29, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(136, 29, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(137, 29, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(138, 29, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(139, 30, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(140, 30, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(141, 30, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(142, 30, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(143, 30, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(144, 30, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(145, 31, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(146, 31, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(147, 31, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(148, 31, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(149, 31, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(150, 32, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(151, 32, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(152, 32, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(153, 32, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(154, 33, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(155, 33, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(156, 33, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(157, 33, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(158, 33, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(159, 33, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(160, 33, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(161, 34, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(162, 34, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(163, 34, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(164, 34, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(165, 34, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(166, 34, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(167, 34, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(168, 35, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(169, 35, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(170, 35, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(171, 35, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(172, 36, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(173, 36, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(174, 36, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(175, 36, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(176, 36, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(177, 37, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(178, 37, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(179, 37, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(180, 37, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(181, 37, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(182, 38, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(183, 38, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(184, 38, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(185, 38, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(186, 38, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(187, 39, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(188, 39, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(189, 39, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(190, 39, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(191, 39, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(192, 39, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(193, 40, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(194, 40, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(195, 40, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(196, 41, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(197, 41, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(198, 41, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(199, 41, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(200, 41, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(201, 42, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(202, 42, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(203, 42, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(204, 43, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(205, 43, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(206, 43, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(207, 43, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(208, 43, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(209, 43, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(210, 43, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(211, 44, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(212, 44, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(213, 44, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(214, 44, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(215, 45, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(216, 45, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(217, 45, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(218, 46, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(219, 46, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(220, 46, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(221, 47, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(222, 47, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(223, 47, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(224, 47, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(225, 47, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(226, 47, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(227, 47, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(228, 48, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(229, 48, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(230, 48, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(231, 48, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(232, 48, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(233, 48, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(234, 48, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(235, 49, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(236, 49, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(237, 49, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(238, 50, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(239, 50, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(240, 50, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(241, 50, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(242, 50, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(243, 50, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(244, 50, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(245, 51, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(246, 51, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(247, 51, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(248, 51, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(249, 51, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(250, 51, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(251, 52, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(252, 52, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(253, 52, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(254, 52, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(255, 52, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(256, 52, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(257, 52, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(258, 53, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(259, 53, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(260, 53, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(261, 53, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(262, 54, 1, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(263, 54, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(264, 54, 4, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(265, 55, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(266, 55, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(267, 55, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(268, 55, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(269, 56, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(270, 56, 5, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(271, 56, 7, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(272, 56, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(273, 56, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(274, 57, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(275, 57, 3, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(276, 57, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(277, 58, 6, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(278, 58, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(279, 58, 10, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(280, 59, 2, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(281, 59, 8, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(282, 59, 9, '2025-07-31 15:33:54', '2025-07-31 15:33:54'),
(283, 60, 1, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(284, 60, 2, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(285, 60, 6, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(286, 60, 9, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(287, 60, 10, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(288, 61, 5, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(289, 61, 6, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(290, 61, 9, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(291, 61, 10, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(292, 62, 1, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(293, 62, 6, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(294, 62, 7, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(295, 62, 8, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(296, 62, 10, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(297, 63, 1, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(298, 63, 2, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(299, 63, 5, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(300, 63, 6, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(301, 63, 7, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(302, 63, 8, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(303, 63, 10, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(304, 64, 1, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(305, 64, 5, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(306, 64, 6, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(307, 65, 1, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(308, 65, 2, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(309, 65, 4, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(310, 65, 5, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(311, 65, 7, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(312, 65, 8, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(313, 65, 10, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(314, 66, 1, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(315, 66, 5, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(316, 66, 7, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(317, 66, 8, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(318, 66, 9, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(319, 66, 10, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(320, 67, 1, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(321, 67, 2, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(322, 67, 3, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(323, 67, 5, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(324, 67, 8, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(325, 67, 10, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(326, 68, 3, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(327, 68, 5, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(328, 68, 8, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(329, 68, 9, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(330, 68, 10, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(331, 69, 2, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(332, 69, 3, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(333, 69, 6, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(334, 70, 2, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(335, 70, 3, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(336, 70, 4, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(337, 70, 5, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(338, 70, 7, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(339, 70, 8, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(340, 70, 9, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(341, 71, 1, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(342, 71, 2, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(343, 71, 3, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(344, 71, 10, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(345, 72, 4, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(346, 72, 6, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(347, 72, 9, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(348, 72, 10, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(349, 73, 2, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(350, 73, 3, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(351, 73, 5, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(352, 73, 9, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(353, 74, 1, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(354, 74, 2, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(355, 74, 4, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(356, 74, 5, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(357, 74, 8, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(358, 75, 5, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(359, 75, 6, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(360, 75, 7, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(361, 75, 8, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(362, 75, 10, '2025-07-31 15:33:55', '2025-07-31 15:33:55'),
(363, 91, 8, '2025-08-25 15:36:52', '2025-08-25 15:36:52'),
(364, 91, 1, '2025-08-25 15:36:52', '2025-08-25 15:36:52'),
(365, 92, 6, '2025-08-25 16:32:37', '2025-08-25 16:32:37'),
(366, 92, 7, '2025-08-25 16:32:37', '2025-08-25 16:32:37'),
(367, 93, 7, '2025-08-25 16:41:08', '2025-08-25 16:41:08'),
(368, 93, 8, '2025-08-25 16:41:08', '2025-08-25 16:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `sku`, `product_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'VAR250731001', 1, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(2, 'VAR250731002', 1, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(3, 'VAR250731003', 1, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(4, 'VAR250731004', 1, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(5, 'VAR250731005', 1, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(6, 'VAR250731006', 1, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(7, 'VAR250731007', 2, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(8, 'VAR250731008', 2, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(9, 'VAR250731009', 2, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(10, 'VAR250731010', 2, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(11, 'VAR250731011', 2, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(12, 'VAR250731012', 2, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(13, 'VAR250731013', 3, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(14, 'VAR250731014', 3, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(15, 'VAR250731015', 3, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(16, 'VAR250731016', 3, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(17, 'VAR250731017', 3, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(18, 'VAR250731018', 3, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(19, 'VAR250731019', 4, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(20, 'VAR250731020', 4, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(21, 'VAR250731021', 4, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(22, 'VAR250731022', 4, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(23, 'VAR250731023', 4, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(24, 'VAR250731024', 4, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(25, 'VAR250731025', 5, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(26, 'VAR250731026', 5, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(27, 'VAR250731027', 5, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(28, 'VAR250731028', 5, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(29, 'VAR250731029', 5, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(30, 'VAR250731030', 5, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(31, 'VAR250731031', 6, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(32, 'VAR250731032', 6, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(33, 'VAR250731033', 6, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(34, 'VAR250731034', 6, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(35, 'VAR250731035', 6, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(36, 'VAR250731036', 6, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(37, 'VAR250731037', 7, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(38, 'VAR250731038', 7, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(39, 'VAR250731039', 7, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(40, 'VAR250731040', 7, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(41, 'VAR250731041', 7, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(42, 'VAR250731042', 7, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(43, 'VAR250731043', 8, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(44, 'VAR250731044', 8, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(45, 'VAR250731045', 8, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(46, 'VAR250731046', 8, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(47, 'VAR250731047', 8, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(48, 'VAR250731048', 8, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(49, 'VAR250731049', 9, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(50, 'VAR250731050', 9, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(51, 'VAR250731051', 9, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(52, 'VAR250731052', 9, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(53, 'VAR250731053', 9, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(54, 'VAR250731054', 9, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(55, 'VAR250731055', 10, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(56, 'VAR250731056', 10, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(57, 'VAR250731057', 10, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(58, 'VAR250731058', 10, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(59, 'VAR250731059', 10, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(60, 'VAR250731060', 10, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(61, 'VAR250731061', 11, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(62, 'VAR250731062', 11, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(63, 'VAR250731063', 11, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(64, 'VAR250731064', 11, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(65, 'VAR250731065', 11, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(66, 'VAR250731066', 11, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(67, 'VAR250731067', 12, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(68, 'VAR250731068', 12, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(69, 'VAR250731069', 12, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(70, 'VAR250731070', 12, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(71, 'VAR250731071', 12, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(72, 'VAR250731072', 12, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(73, 'VAR250731073', 13, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(74, 'VAR250731074', 13, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(75, 'VAR250731075', 13, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(76, 'VAR250731076', 13, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(77, 'VAR250731077', 13, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(78, 'VAR250731078', 13, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(79, 'VAR250731079', 14, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(80, 'VAR250731080', 14, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(81, 'VAR250731081', 14, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(82, 'VAR250731082', 14, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(83, 'VAR250731083', 14, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(84, 'VAR250731084', 14, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(85, 'VAR250731085', 15, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(86, 'VAR250731086', 15, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(87, 'VAR250731087', 15, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(88, 'VAR250731088', 15, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(89, 'VAR250731089', 15, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(90, 'VAR250731090', 15, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(91, 'VAR250731091', 16, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(92, 'VAR250731092', 16, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(93, 'VAR250731093', 16, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(94, 'VAR250731094', 16, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(95, 'VAR250731095', 16, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(96, 'VAR250731096', 16, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(97, 'VAR250731097', 17, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(98, 'VAR250731098', 17, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(99, 'VAR250731099', 17, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(100, 'VAR250731100', 17, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(101, 'VAR250731101', 17, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(102, 'VAR250731102', 17, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(103, 'VAR250731103', 18, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(104, 'VAR250731104', 18, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(105, 'VAR250731105', 18, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(106, 'VAR250731106', 18, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(107, 'VAR250731107', 18, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(108, 'VAR250731108', 18, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(109, 'VAR250731109', 19, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(110, 'VAR250731110', 19, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(111, 'VAR250731111', 19, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(112, 'VAR250731112', 19, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(113, 'VAR250731113', 19, 1, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(114, 'VAR250731114', 19, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(115, 'VAR250731115', 20, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(116, 'VAR250731116', 20, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(117, 'VAR250731117', 20, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(118, 'VAR250731118', 20, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(119, 'VAR250731119', 20, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(120, 'VAR250731120', 20, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(121, 'VAR250731121', 21, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(122, 'VAR250731122', 21, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(123, 'VAR250731123', 21, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(124, 'VAR250731124', 21, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(125, 'VAR250731125', 21, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(126, 'VAR250731126', 21, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(127, 'VAR250731127', 22, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(128, 'VAR250731128', 22, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(129, 'VAR250731129', 22, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(130, 'VAR250731130', 22, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(131, 'VAR250731131', 22, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(132, 'VAR250731132', 22, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(133, 'VAR250731133', 23, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(134, 'VAR250731134', 23, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(135, 'VAR250731135', 23, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(136, 'VAR250731136', 23, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(137, 'VAR250731137', 23, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(138, 'VAR250731138', 23, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(139, 'VAR250731139', 24, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(140, 'VAR250731140', 24, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(141, 'VAR250731141', 24, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(142, 'VAR250731142', 24, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(143, 'VAR250731143', 24, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(144, 'VAR250731144', 24, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(145, 'VAR250731145', 25, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(146, 'VAR250731146', 25, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(147, 'VAR250731147', 25, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(148, 'VAR250731148', 25, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(149, 'VAR250731149', 25, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(150, 'VAR250731150', 25, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(151, 'VAR250731151', 26, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(152, 'VAR250731152', 26, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(153, 'VAR250731153', 26, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(154, 'VAR250731154', 26, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(155, 'VAR250731155', 26, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(156, 'VAR250731156', 26, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(157, 'VAR250731157', 27, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(158, 'VAR250731158', 27, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(159, 'VAR250731159', 27, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(160, 'VAR250731160', 27, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(161, 'VAR250731161', 27, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(162, 'VAR250731162', 27, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(163, 'VAR250731163', 28, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(164, 'VAR250731164', 28, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(165, 'VAR250731165', 28, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(166, 'VAR250731166', 28, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(167, 'VAR250731167', 28, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(168, 'VAR250731168', 28, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(169, 'VAR250731169', 29, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(170, 'VAR250731170', 29, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(171, 'VAR250731171', 29, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(172, 'VAR250731172', 29, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(173, 'VAR250731173', 29, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(174, 'VAR250731174', 29, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(175, 'VAR250731175', 30, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(176, 'VAR250731176', 30, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(177, 'VAR250731177', 30, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(178, 'VAR250731178', 30, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(179, 'VAR250731179', 30, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(180, 'VAR250731180', 30, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(181, 'VAR250731181', 31, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(182, 'VAR250731182', 31, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(183, 'VAR250731183', 31, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(184, 'VAR250731184', 31, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(185, 'VAR250731185', 31, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(186, 'VAR250731186', 31, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(187, 'VAR250731187', 32, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(188, 'VAR250731188', 32, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(189, 'VAR250731189', 32, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(190, 'VAR250731190', 32, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(191, 'VAR250731191', 32, 1, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(192, 'VAR250731192', 32, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(193, 'VAR250731193', 33, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(194, 'VAR250731194', 33, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(195, 'VAR250731195', 33, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(196, 'VAR250731196', 33, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(197, 'VAR250731197', 33, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(198, 'VAR250731198', 33, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(199, 'VAR250731199', 34, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(200, 'VAR250731200', 34, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(201, 'VAR250731201', 34, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(202, 'VAR250731202', 34, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(203, 'VAR250731203', 34, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(204, 'VAR250731204', 34, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(205, 'VAR250731205', 35, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(206, 'VAR250731206', 35, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(207, 'VAR250731207', 35, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(208, 'VAR250731208', 35, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(209, 'VAR250731209', 35, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(210, 'VAR250731210', 35, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(211, 'VAR250731211', 36, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(212, 'VAR250731212', 36, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(213, 'VAR250731213', 36, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(214, 'VAR250731214', 36, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(215, 'VAR250731215', 36, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(216, 'VAR250731216', 36, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(217, 'VAR250731217', 37, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(218, 'VAR250731218', 37, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(219, 'VAR250731219', 37, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(220, 'VAR250731220', 37, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(221, 'VAR250731221', 37, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(222, 'VAR250731222', 37, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(223, 'VAR250731223', 38, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(224, 'VAR250731224', 38, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(225, 'VAR250731225', 38, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(226, 'VAR250731226', 38, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(227, 'VAR250731227', 38, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(228, 'VAR250731228', 38, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(229, 'VAR250731229', 39, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(230, 'VAR250731230', 39, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(231, 'VAR250731231', 39, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(232, 'VAR250731232', 39, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(233, 'VAR250731233', 39, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(234, 'VAR250731234', 39, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(235, 'VAR250731235', 40, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(236, 'VAR250731236', 40, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(237, 'VAR250731237', 40, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(238, 'VAR250731238', 40, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(239, 'VAR250731239', 40, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(240, 'VAR250731240', 40, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(241, 'VAR250731241', 41, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(242, 'VAR250731242', 41, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(243, 'VAR250731243', 41, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(244, 'VAR250731244', 41, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(245, 'VAR250731245', 41, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(246, 'VAR250731246', 41, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(247, 'VAR250731247', 42, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(248, 'VAR250731248', 42, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(249, 'VAR250731249', 42, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(250, 'VAR250731250', 42, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(251, 'VAR250731251', 42, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(252, 'VAR250731252', 42, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(253, 'VAR250731253', 43, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(254, 'VAR250731254', 43, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(255, 'VAR250731255', 43, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(256, 'VAR250731256', 43, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(257, 'VAR250731257', 43, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(258, 'VAR250731258', 43, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(259, 'VAR250731259', 44, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(260, 'VAR250731260', 44, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(261, 'VAR250731261', 44, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(262, 'VAR250731262', 44, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(263, 'VAR250731263', 44, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(264, 'VAR250731264', 44, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(265, 'VAR250731265', 45, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(266, 'VAR250731266', 45, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(267, 'VAR250731267', 45, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(268, 'VAR250731268', 45, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(269, 'VAR250731269', 45, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(270, 'VAR250731270', 45, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(271, 'VAR250731271', 46, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(272, 'VAR250731272', 46, 1, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(273, 'VAR250731273', 46, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(274, 'VAR250731274', 46, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(275, 'VAR250731275', 46, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(276, 'VAR250731276', 46, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(277, 'VAR250731277', 47, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(278, 'VAR250731278', 47, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(279, 'VAR250731279', 47, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(280, 'VAR250731280', 47, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(281, 'VAR250731281', 47, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(282, 'VAR250731282', 47, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(283, 'VAR250731283', 48, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(284, 'VAR250731284', 48, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(285, 'VAR250731285', 48, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(286, 'VAR250731286', 48, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(287, 'VAR250731287', 48, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(288, 'VAR250731288', 48, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(289, 'VAR250731289', 49, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(290, 'VAR250731290', 49, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(291, 'VAR250731291', 49, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(292, 'VAR250731292', 49, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(293, 'VAR250731293', 49, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(294, 'VAR250731294', 49, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(295, 'VAR250731295', 50, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(296, 'VAR250731296', 50, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(297, 'VAR250731297', 50, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(298, 'VAR250731298', 50, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(299, 'VAR250731299', 50, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(300, 'VAR250731300', 50, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(301, 'VAR250731301', 51, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(302, 'VAR250731302', 51, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(303, 'VAR250731303', 51, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(304, 'VAR250731304', 51, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(305, 'VAR250731305', 51, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(306, 'VAR250731306', 51, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(307, 'VAR250731307', 52, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(308, 'VAR250731308', 52, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(309, 'VAR250731309', 52, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(310, 'VAR250731310', 52, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(311, 'VAR250731311', 52, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(312, 'VAR250731312', 52, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(313, 'VAR250731313', 53, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(314, 'VAR250731314', 53, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(315, 'VAR250731315', 53, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(316, 'VAR250731316', 53, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(317, 'VAR250731317', 53, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(318, 'VAR250731318', 53, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(319, 'VAR250731319', 54, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(320, 'VAR250731320', 54, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(321, 'VAR250731321', 54, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(322, 'VAR250731322', 54, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(323, 'VAR250731323', 54, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(324, 'VAR250731324', 54, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(325, 'VAR250731325', 55, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(326, 'VAR250731326', 55, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(327, 'VAR250731327', 55, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(328, 'VAR250731328', 55, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(329, 'VAR250731329', 55, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(330, 'VAR250731330', 55, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(331, 'VAR250731331', 56, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(332, 'VAR250731332', 56, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(333, 'VAR250731333', 56, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(334, 'VAR250731334', 56, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(335, 'VAR250731335', 56, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(336, 'VAR250731336', 56, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(337, 'VAR250731337', 57, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(338, 'VAR250731338', 57, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(339, 'VAR250731339', 57, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(340, 'VAR250731340', 57, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(341, 'VAR250731341', 57, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(342, 'VAR250731342', 57, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(343, 'VAR250731343', 58, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(344, 'VAR250731344', 58, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(345, 'VAR250731345', 58, 1, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(346, 'VAR250731346', 58, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(347, 'VAR250731347', 58, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(348, 'VAR250731348', 58, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(349, 'VAR250731349', 59, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(350, 'VAR250731350', 59, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(351, 'VAR250731351', 59, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(352, 'VAR250731352', 59, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(353, 'VAR250731353', 59, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(354, 'VAR250731354', 59, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(355, 'VAR250731355', 60, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(356, 'VAR250731356', 60, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(357, 'VAR250731357', 60, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(358, 'VAR250731358', 60, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(359, 'VAR250731359', 60, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(360, 'VAR250731360', 60, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(361, 'VAR250731361', 61, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(362, 'VAR250731362', 61, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(363, 'VAR250731363', 61, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(364, 'VAR250731364', 61, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(365, 'VAR250731365', 61, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(366, 'VAR250731366', 61, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(367, 'VAR250731367', 62, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(368, 'VAR250731368', 62, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(369, 'VAR250731369', 62, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(370, 'VAR250731370', 62, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(371, 'VAR250731371', 62, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(372, 'VAR250731372', 62, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(373, 'VAR250731373', 63, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(374, 'VAR250731374', 63, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(375, 'VAR250731375', 63, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(376, 'VAR250731376', 63, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(377, 'VAR250731377', 63, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(378, 'VAR250731378', 63, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(379, 'VAR250731379', 64, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(380, 'VAR250731380', 64, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(381, 'VAR250731381', 64, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(382, 'VAR250731382', 64, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(383, 'VAR250731383', 64, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(384, 'VAR250731384', 64, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(385, 'VAR250731385', 65, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(386, 'VAR250731386', 65, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(387, 'VAR250731387', 65, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(388, 'VAR250731388', 65, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(389, 'VAR250731389', 65, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(390, 'VAR250731390', 65, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(391, 'VAR250731391', 66, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(392, 'VAR250731392', 66, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(393, 'VAR250731393', 66, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(394, 'VAR250731394', 66, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(395, 'VAR250731395', 66, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(396, 'VAR250731396', 66, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(397, 'VAR250731397', 67, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(398, 'VAR250731398', 67, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(399, 'VAR250731399', 67, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(400, 'VAR250731400', 67, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(401, 'VAR250731401', 67, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(402, 'VAR250731402', 67, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(403, 'VAR250731403', 68, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(404, 'VAR250731404', 68, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(405, 'VAR250731405', 68, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(406, 'VAR250731406', 68, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(407, 'VAR250731407', 68, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(408, 'VAR250731408', 68, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(409, 'VAR250731409', 69, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(410, 'VAR250731410', 69, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(411, 'VAR250731411', 69, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(412, 'VAR250731412', 69, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(413, 'VAR250731413', 69, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(414, 'VAR250731414', 69, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(415, 'VAR250731415', 70, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(416, 'VAR250731416', 70, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(417, 'VAR250731417', 70, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(418, 'VAR250731418', 70, 1, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(419, 'VAR250731419', 70, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(420, 'VAR250731420', 70, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(421, 'VAR250731421', 71, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(422, 'VAR250731422', 71, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(423, 'VAR250731423', 71, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(424, 'VAR250731424', 71, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(425, 'VAR250731425', 71, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(426, 'VAR250731426', 71, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(427, 'VAR250731427', 72, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(428, 'VAR250731428', 72, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(429, 'VAR250731429', 72, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(430, 'VAR250731430', 72, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(431, 'VAR250731431', 72, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(432, 'VAR250731432', 72, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(433, 'VAR250731433', 73, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(434, 'VAR250731434', 73, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(435, 'VAR250731435', 73, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(436, 'VAR250731436', 73, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(437, 'VAR250731437', 73, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(438, 'VAR250731438', 73, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(439, 'VAR250731439', 74, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(440, 'VAR250731440', 74, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(441, 'VAR250731441', 74, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(442, 'VAR250731442', 74, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(443, 'VAR250731443', 74, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(444, 'VAR250731444', 74, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(445, 'VAR250731445', 75, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(446, 'VAR250731446', 75, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(447, 'VAR250731447', 75, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(448, 'VAR250731448', 75, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(449, 'VAR250731449', 75, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(450, 'VAR250731450', 75, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(451, 'VAR250731451', 76, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(452, 'VAR250731452', 76, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(453, 'VAR250731453', 76, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(454, 'VAR250731454', 76, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(455, 'VAR250731455', 76, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(456, 'VAR250731456', 76, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(457, 'VAR250731457', 77, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(458, 'VAR250731458', 77, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(459, 'VAR250731459', 77, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(460, 'VAR250731460', 77, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(461, 'VAR250731461', 77, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(462, 'VAR250731462', 77, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(463, 'VAR250731463', 78, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(464, 'VAR250731464', 78, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(465, 'VAR250731465', 78, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(466, 'VAR250731466', 78, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(467, 'VAR250731467', 78, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(468, 'VAR250731468', 78, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(469, 'VAR250731469', 79, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(470, 'VAR250731470', 79, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(471, 'VAR250731471', 79, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(472, 'VAR250731472', 79, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(473, 'VAR250731473', 79, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(474, 'VAR250731474', 79, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(475, 'VAR250731475', 80, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(476, 'VAR250731476', 80, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(477, 'VAR250731477', 80, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(478, 'VAR250731478', 80, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(479, 'VAR250731479', 80, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(480, 'VAR250731480', 80, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(481, 'VAR250731481', 81, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(482, 'VAR250731482', 81, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(483, 'VAR250731483', 81, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(484, 'VAR250731484', 81, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(485, 'VAR250731485', 81, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(486, 'VAR250731486', 81, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(487, 'VAR250731487', 82, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(488, 'VAR250731488', 82, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(489, 'VAR250731489', 82, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(490, 'VAR250731490', 82, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(491, 'VAR250731491', 82, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(492, 'VAR250731492', 82, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(493, 'VAR250731493', 83, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(494, 'VAR250731494', 83, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(495, 'VAR250731495', 83, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(496, 'VAR250731496', 83, 1, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(497, 'VAR250731497', 83, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(498, 'VAR250731498', 83, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(499, 'VAR250731499', 84, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(500, 'VAR250731500', 84, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(501, 'VAR250731501', 84, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(502, 'VAR250731502', 84, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(503, 'VAR250731503', 84, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(504, 'VAR250731504', 84, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(505, 'VAR250731505', 85, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(506, 'VAR250731506', 85, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(507, 'VAR250731507', 85, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(508, 'VAR250731508', 85, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(509, 'VAR250731509', 85, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(510, 'VAR250731510', 85, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(511, 'VAR250731511', 86, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(512, 'VAR250731512', 86, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(513, 'VAR250731513', 86, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(514, 'VAR250731514', 86, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(515, 'VAR250731515', 86, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(516, 'VAR250731516', 86, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(517, 'VAR250731517', 87, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(518, 'VAR250731518', 87, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(519, 'VAR250731519', 87, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(520, 'VAR250731520', 87, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(521, 'VAR250731521', 87, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(522, 'VAR250731522', 87, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(523, 'VAR250731523', 88, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(524, 'VAR250731524', 88, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(525, 'VAR250731525', 88, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(526, 'VAR250731526', 88, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(527, 'VAR250731527', 88, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(528, 'VAR250731528', 88, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(529, 'VAR250731529', 89, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(530, 'VAR250731530', 89, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(531, 'VAR250731531', 89, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(532, 'VAR250731532', 89, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(533, 'VAR250731533', 89, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(534, 'VAR250731534', 89, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(535, 'VAR250731535', 90, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(536, 'VAR250731536', 90, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(537, 'VAR250731537', 90, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(538, 'VAR250731538', 90, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(539, 'VAR250731539', 90, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(540, 'VAR250731540', 90, 1, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(541, NULL, 91, 1, '2025-08-25 15:36:52', '2025-08-25 15:36:52'),
(542, NULL, 92, 1, '2025-08-25 16:32:37', '2025-08-25 16:32:37'),
(543, NULL, 93, 1, '2025-08-25 16:41:08', '2025-08-25 16:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_details`
--

CREATE TABLE `product_variant_details` (
  `id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `variant_value_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_details`
--

INSERT INTO `product_variant_details` (`id`, `product_variant_id`, `variant_value_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(2, 1, 4, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(3, 2, 1, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(4, 2, 5, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(5, 3, 2, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(6, 3, 4, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(7, 4, 2, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(8, 4, 5, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(9, 5, 3, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(10, 5, 4, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(11, 6, 3, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(12, 6, 5, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(13, 7, 6, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(14, 7, 9, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(15, 8, 6, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(16, 8, 10, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(17, 9, 7, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(18, 9, 9, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(19, 10, 7, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(20, 10, 10, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(21, 11, 8, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(22, 11, 9, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(23, 12, 8, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(24, 12, 10, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(25, 13, 11, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(26, 13, 14, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(27, 14, 11, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(28, 14, 15, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(29, 15, 12, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(30, 15, 14, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(31, 16, 12, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(32, 16, 15, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(33, 17, 13, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(34, 17, 14, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(35, 18, 13, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(36, 18, 15, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(37, 19, 16, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(38, 19, 19, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(39, 20, 16, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(40, 20, 20, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(41, 21, 17, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(42, 21, 19, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(43, 22, 17, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(44, 22, 20, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(45, 23, 18, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(46, 23, 19, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(47, 24, 18, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(48, 24, 20, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(49, 25, 21, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(50, 25, 24, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(51, 26, 21, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(52, 26, 25, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(53, 27, 22, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(54, 27, 24, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(55, 28, 22, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(56, 28, 25, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(57, 29, 23, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(58, 29, 24, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(59, 30, 23, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(60, 30, 25, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(61, 31, 26, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(62, 31, 29, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(63, 32, 26, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(64, 32, 30, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(65, 33, 27, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(66, 33, 29, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(67, 34, 27, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(68, 34, 30, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(69, 35, 28, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(70, 35, 29, '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(71, 36, 28, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(72, 36, 30, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(73, 37, 31, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(74, 37, 34, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(75, 38, 31, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(76, 38, 35, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(77, 39, 32, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(78, 39, 34, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(79, 40, 32, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(80, 40, 35, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(81, 41, 33, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(82, 41, 34, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(83, 42, 33, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(84, 42, 35, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(85, 43, 36, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(86, 43, 39, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(87, 44, 36, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(88, 44, 40, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(89, 45, 37, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(90, 45, 39, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(91, 46, 37, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(92, 46, 40, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(93, 47, 38, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(94, 47, 39, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(95, 48, 38, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(96, 48, 40, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(97, 49, 41, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(98, 49, 44, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(99, 50, 41, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(100, 50, 45, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(101, 51, 42, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(102, 51, 44, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(103, 52, 42, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(104, 52, 45, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(105, 53, 43, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(106, 53, 44, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(107, 54, 43, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(108, 54, 45, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(109, 55, 46, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(110, 55, 49, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(111, 56, 46, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(112, 56, 50, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(113, 57, 47, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(114, 57, 49, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(115, 58, 47, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(116, 58, 50, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(117, 59, 48, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(118, 59, 49, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(119, 60, 48, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(120, 60, 50, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(121, 61, 51, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(122, 61, 54, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(123, 62, 51, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(124, 62, 55, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(125, 63, 52, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(126, 63, 54, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(127, 64, 52, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(128, 64, 55, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(129, 65, 53, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(130, 65, 54, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(131, 66, 53, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(132, 66, 55, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(133, 67, 56, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(134, 67, 59, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(135, 68, 56, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(136, 68, 60, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(137, 69, 57, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(138, 69, 59, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(139, 70, 57, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(140, 70, 60, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(141, 71, 58, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(142, 71, 59, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(143, 72, 58, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(144, 72, 60, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(145, 73, 61, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(146, 73, 64, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(147, 74, 61, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(148, 74, 65, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(149, 75, 62, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(150, 75, 64, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(151, 76, 62, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(152, 76, 65, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(153, 77, 63, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(154, 77, 64, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(155, 78, 63, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(156, 78, 65, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(157, 79, 66, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(158, 79, 69, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(159, 80, 66, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(160, 80, 70, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(161, 81, 67, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(162, 81, 69, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(163, 82, 67, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(164, 82, 70, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(165, 83, 68, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(166, 83, 69, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(167, 84, 68, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(168, 84, 70, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(169, 85, 71, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(170, 85, 74, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(171, 86, 71, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(172, 86, 75, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(173, 87, 72, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(174, 87, 74, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(175, 88, 72, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(176, 88, 75, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(177, 89, 73, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(178, 89, 74, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(179, 90, 73, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(180, 90, 75, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(181, 91, 76, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(182, 91, 79, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(183, 92, 76, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(184, 92, 80, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(185, 93, 77, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(186, 93, 79, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(187, 94, 77, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(188, 94, 80, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(189, 95, 78, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(190, 95, 79, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(191, 96, 78, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(192, 96, 80, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(193, 97, 81, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(194, 97, 84, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(195, 98, 81, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(196, 98, 85, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(197, 99, 82, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(198, 99, 84, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(199, 100, 82, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(200, 100, 85, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(201, 101, 83, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(202, 101, 84, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(203, 102, 83, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(204, 102, 85, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(205, 103, 86, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(206, 103, 89, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(207, 104, 86, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(208, 104, 90, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(209, 105, 87, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(210, 105, 89, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(211, 106, 87, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(212, 106, 90, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(213, 107, 88, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(214, 107, 89, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(215, 108, 88, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(216, 108, 90, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(217, 109, 91, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(218, 109, 94, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(219, 110, 91, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(220, 110, 95, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(221, 111, 92, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(222, 111, 94, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(223, 112, 92, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(224, 112, 95, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(225, 113, 93, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(226, 113, 94, '2025-07-31 15:30:47', '2025-07-31 15:30:47'),
(227, 114, 93, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(228, 114, 95, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(229, 115, 96, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(230, 115, 99, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(231, 116, 96, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(232, 116, 100, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(233, 117, 97, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(234, 117, 99, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(235, 118, 97, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(236, 118, 100, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(237, 119, 98, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(238, 119, 99, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(239, 120, 98, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(240, 120, 100, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(241, 121, 101, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(242, 121, 104, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(243, 122, 101, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(244, 122, 105, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(245, 123, 102, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(246, 123, 104, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(247, 124, 102, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(248, 124, 105, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(249, 125, 103, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(250, 125, 104, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(251, 126, 103, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(252, 126, 105, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(253, 127, 106, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(254, 127, 109, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(255, 128, 106, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(256, 128, 110, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(257, 129, 107, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(258, 129, 109, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(259, 130, 107, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(260, 130, 110, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(261, 131, 108, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(262, 131, 109, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(263, 132, 108, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(264, 132, 110, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(265, 133, 111, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(266, 133, 114, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(267, 134, 111, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(268, 134, 115, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(269, 135, 112, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(270, 135, 114, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(271, 136, 112, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(272, 136, 115, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(273, 137, 113, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(274, 137, 114, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(275, 138, 113, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(276, 138, 115, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(277, 139, 116, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(278, 139, 119, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(279, 140, 116, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(280, 140, 120, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(281, 141, 117, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(282, 141, 119, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(283, 142, 117, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(284, 142, 120, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(285, 143, 118, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(286, 143, 119, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(287, 144, 118, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(288, 144, 120, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(289, 145, 121, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(290, 145, 124, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(291, 146, 121, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(292, 146, 125, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(293, 147, 122, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(294, 147, 124, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(295, 148, 122, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(296, 148, 125, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(297, 149, 123, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(298, 149, 124, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(299, 150, 123, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(300, 150, 125, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(301, 151, 126, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(302, 151, 129, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(303, 152, 126, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(304, 152, 130, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(305, 153, 127, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(306, 153, 129, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(307, 154, 127, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(308, 154, 130, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(309, 155, 128, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(310, 155, 129, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(311, 156, 128, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(312, 156, 130, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(313, 157, 131, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(314, 157, 134, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(315, 158, 131, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(316, 158, 135, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(317, 159, 132, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(318, 159, 134, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(319, 160, 132, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(320, 160, 135, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(321, 161, 133, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(322, 161, 134, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(323, 162, 133, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(324, 162, 135, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(325, 163, 136, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(326, 163, 139, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(327, 164, 136, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(328, 164, 140, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(329, 165, 137, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(330, 165, 139, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(331, 166, 137, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(332, 166, 140, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(333, 167, 138, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(334, 167, 139, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(335, 168, 138, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(336, 168, 140, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(337, 169, 141, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(338, 169, 144, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(339, 170, 141, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(340, 170, 145, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(341, 171, 142, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(342, 171, 144, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(343, 172, 142, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(344, 172, 145, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(345, 173, 143, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(346, 173, 144, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(347, 174, 143, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(348, 174, 145, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(349, 175, 146, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(350, 175, 149, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(351, 176, 146, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(352, 176, 150, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(353, 177, 147, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(354, 177, 149, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(355, 178, 147, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(356, 178, 150, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(357, 179, 148, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(358, 179, 149, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(359, 180, 148, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(360, 180, 150, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(361, 181, 151, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(362, 181, 154, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(363, 182, 151, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(364, 182, 155, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(365, 183, 152, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(366, 183, 154, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(367, 184, 152, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(368, 184, 155, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(369, 185, 153, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(370, 185, 154, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(371, 186, 153, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(372, 186, 155, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(373, 187, 156, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(374, 187, 159, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(375, 188, 156, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(376, 188, 160, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(377, 189, 157, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(378, 189, 159, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(379, 190, 157, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(380, 190, 160, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(381, 191, 158, '2025-07-31 15:30:48', '2025-07-31 15:30:48'),
(382, 191, 159, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(383, 192, 158, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(384, 192, 160, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(385, 193, 161, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(386, 193, 164, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(387, 194, 161, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(388, 194, 165, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(389, 195, 162, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(390, 195, 164, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(391, 196, 162, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(392, 196, 165, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(393, 197, 163, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(394, 197, 164, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(395, 198, 163, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(396, 198, 165, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(397, 199, 166, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(398, 199, 169, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(399, 200, 166, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(400, 200, 170, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(401, 201, 167, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(402, 201, 169, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(403, 202, 167, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(404, 202, 170, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(405, 203, 168, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(406, 203, 169, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(407, 204, 168, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(408, 204, 170, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(409, 205, 171, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(410, 205, 174, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(411, 206, 171, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(412, 206, 175, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(413, 207, 172, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(414, 207, 174, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(415, 208, 172, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(416, 208, 175, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(417, 209, 173, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(418, 209, 174, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(419, 210, 173, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(420, 210, 175, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(421, 211, 176, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(422, 211, 179, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(423, 212, 176, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(424, 212, 180, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(425, 213, 177, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(426, 213, 179, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(427, 214, 177, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(428, 214, 180, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(429, 215, 178, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(430, 215, 179, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(431, 216, 178, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(432, 216, 180, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(433, 217, 181, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(434, 217, 184, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(435, 218, 181, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(436, 218, 185, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(437, 219, 182, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(438, 219, 184, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(439, 220, 182, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(440, 220, 185, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(441, 221, 183, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(442, 221, 184, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(443, 222, 183, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(444, 222, 185, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(445, 223, 186, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(446, 223, 189, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(447, 224, 186, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(448, 224, 190, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(449, 225, 187, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(450, 225, 189, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(451, 226, 187, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(452, 226, 190, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(453, 227, 188, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(454, 227, 189, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(455, 228, 188, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(456, 228, 190, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(457, 229, 191, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(458, 229, 194, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(459, 230, 191, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(460, 230, 195, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(461, 231, 192, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(462, 231, 194, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(463, 232, 192, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(464, 232, 195, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(465, 233, 193, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(466, 233, 194, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(467, 234, 193, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(468, 234, 195, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(469, 235, 196, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(470, 235, 199, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(471, 236, 196, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(472, 236, 200, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(473, 237, 197, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(474, 237, 199, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(475, 238, 197, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(476, 238, 200, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(477, 239, 198, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(478, 239, 199, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(479, 240, 198, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(480, 240, 200, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(481, 241, 201, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(482, 241, 204, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(483, 242, 201, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(484, 242, 205, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(485, 243, 202, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(486, 243, 204, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(487, 244, 202, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(488, 244, 205, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(489, 245, 203, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(490, 245, 204, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(491, 246, 203, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(492, 246, 205, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(493, 247, 206, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(494, 247, 209, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(495, 248, 206, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(496, 248, 210, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(497, 249, 207, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(498, 249, 209, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(499, 250, 207, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(500, 250, 210, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(501, 251, 208, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(502, 251, 209, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(503, 252, 208, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(504, 252, 210, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(505, 253, 211, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(506, 253, 214, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(507, 254, 211, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(508, 254, 215, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(509, 255, 212, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(510, 255, 214, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(511, 256, 212, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(512, 256, 215, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(513, 257, 213, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(514, 257, 214, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(515, 258, 213, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(516, 258, 215, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(517, 259, 216, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(518, 259, 219, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(519, 260, 216, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(520, 260, 220, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(521, 261, 217, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(522, 261, 219, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(523, 262, 217, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(524, 262, 220, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(525, 263, 218, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(526, 263, 219, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(527, 264, 218, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(528, 264, 220, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(529, 265, 221, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(530, 265, 224, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(531, 266, 221, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(532, 266, 225, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(533, 267, 222, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(534, 267, 224, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(535, 268, 222, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(536, 268, 225, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(537, 269, 223, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(538, 269, 224, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(539, 270, 223, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(540, 270, 225, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(541, 271, 226, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(542, 271, 229, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(543, 272, 226, '2025-07-31 15:30:49', '2025-07-31 15:30:49'),
(544, 272, 230, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(545, 273, 227, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(546, 273, 229, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(547, 274, 227, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(548, 274, 230, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(549, 275, 228, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(550, 275, 229, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(551, 276, 228, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(552, 276, 230, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(553, 277, 231, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(554, 277, 234, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(555, 278, 231, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(556, 278, 235, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(557, 279, 232, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(558, 279, 234, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(559, 280, 232, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(560, 280, 235, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(561, 281, 233, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(562, 281, 234, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(563, 282, 233, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(564, 282, 235, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(565, 283, 236, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(566, 283, 239, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(567, 284, 236, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(568, 284, 240, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(569, 285, 237, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(570, 285, 239, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(571, 286, 237, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(572, 286, 240, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(573, 287, 238, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(574, 287, 239, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(575, 288, 238, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(576, 288, 240, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(577, 289, 241, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(578, 289, 244, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(579, 290, 241, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(580, 290, 245, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(581, 291, 242, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(582, 291, 244, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(583, 292, 242, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(584, 292, 245, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(585, 293, 243, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(586, 293, 244, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(587, 294, 243, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(588, 294, 245, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(589, 295, 246, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(590, 295, 249, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(591, 296, 246, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(592, 296, 250, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(593, 297, 247, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(594, 297, 249, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(595, 298, 247, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(596, 298, 250, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(597, 299, 248, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(598, 299, 249, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(599, 300, 248, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(600, 300, 250, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(601, 301, 251, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(602, 301, 254, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(603, 302, 251, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(604, 302, 255, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(605, 303, 252, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(606, 303, 254, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(607, 304, 252, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(608, 304, 255, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(609, 305, 253, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(610, 305, 254, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(611, 306, 253, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(612, 306, 255, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(613, 307, 256, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(614, 307, 259, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(615, 308, 256, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(616, 308, 260, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(617, 309, 257, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(618, 309, 259, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(619, 310, 257, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(620, 310, 260, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(621, 311, 258, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(622, 311, 259, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(623, 312, 258, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(624, 312, 260, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(625, 313, 261, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(626, 313, 264, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(627, 314, 261, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(628, 314, 265, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(629, 315, 262, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(630, 315, 264, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(631, 316, 262, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(632, 316, 265, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(633, 317, 263, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(634, 317, 264, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(635, 318, 263, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(636, 318, 265, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(637, 319, 266, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(638, 319, 269, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(639, 320, 266, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(640, 320, 270, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(641, 321, 267, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(642, 321, 269, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(643, 322, 267, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(644, 322, 270, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(645, 323, 268, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(646, 323, 269, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(647, 324, 268, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(648, 324, 270, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(649, 325, 271, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(650, 325, 274, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(651, 326, 271, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(652, 326, 275, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(653, 327, 272, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(654, 327, 274, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(655, 328, 272, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(656, 328, 275, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(657, 329, 273, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(658, 329, 274, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(659, 330, 273, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(660, 330, 275, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(661, 331, 276, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(662, 331, 279, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(663, 332, 276, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(664, 332, 280, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(665, 333, 277, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(666, 333, 279, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(667, 334, 277, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(668, 334, 280, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(669, 335, 278, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(670, 335, 279, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(671, 336, 278, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(672, 336, 280, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(673, 337, 281, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(675, 338, 281, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(676, 338, 285, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(677, 339, 282, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(679, 340, 282, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(680, 340, 285, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(681, 341, 283, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(683, 342, 283, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(684, 342, 285, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(685, 343, 286, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(686, 343, 289, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(687, 344, 286, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(688, 344, 290, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(689, 345, 287, '2025-07-31 15:30:50', '2025-07-31 15:30:50'),
(690, 345, 289, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(691, 346, 287, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(692, 346, 290, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(693, 347, 288, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(694, 347, 289, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(695, 348, 288, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(696, 348, 290, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(697, 349, 291, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(698, 349, 294, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(699, 350, 291, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(700, 350, 295, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(701, 351, 292, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(702, 351, 294, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(703, 352, 292, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(704, 352, 295, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(705, 353, 293, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(706, 353, 294, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(707, 354, 293, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(708, 354, 295, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(709, 355, 296, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(710, 355, 299, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(711, 356, 296, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(712, 356, 300, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(713, 357, 297, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(714, 357, 299, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(715, 358, 297, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(716, 358, 300, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(717, 359, 298, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(718, 359, 299, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(719, 360, 298, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(720, 360, 300, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(721, 361, 301, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(722, 361, 304, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(723, 362, 301, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(724, 362, 305, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(725, 363, 302, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(726, 363, 304, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(727, 364, 302, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(728, 364, 305, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(729, 365, 303, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(730, 365, 304, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(731, 366, 303, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(732, 366, 305, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(733, 367, 306, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(734, 367, 309, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(735, 368, 306, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(736, 368, 310, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(737, 369, 307, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(738, 369, 309, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(739, 370, 307, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(740, 370, 310, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(741, 371, 308, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(742, 371, 309, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(743, 372, 308, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(744, 372, 310, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(745, 373, 311, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(746, 373, 314, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(747, 374, 311, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(748, 374, 315, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(749, 375, 312, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(750, 375, 314, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(751, 376, 312, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(752, 376, 315, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(753, 377, 313, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(754, 377, 314, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(755, 378, 313, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(756, 378, 315, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(757, 379, 316, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(758, 379, 319, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(759, 380, 316, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(760, 380, 320, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(761, 381, 317, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(762, 381, 319, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(763, 382, 317, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(764, 382, 320, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(765, 383, 318, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(766, 383, 319, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(767, 384, 318, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(768, 384, 320, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(769, 385, 321, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(770, 385, 324, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(771, 386, 321, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(772, 386, 325, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(773, 387, 322, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(774, 387, 324, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(775, 388, 322, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(776, 388, 325, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(777, 389, 323, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(778, 389, 324, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(779, 390, 323, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(780, 390, 325, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(781, 391, 326, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(782, 391, 329, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(783, 392, 326, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(784, 392, 330, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(785, 393, 327, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(786, 393, 329, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(787, 394, 327, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(788, 394, 330, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(789, 395, 328, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(790, 395, 329, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(791, 396, 328, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(792, 396, 330, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(793, 397, 331, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(794, 397, 334, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(795, 398, 331, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(796, 398, 335, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(797, 399, 332, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(798, 399, 334, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(799, 400, 332, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(800, 400, 335, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(801, 401, 333, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(802, 401, 334, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(803, 402, 333, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(804, 402, 335, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(805, 403, 336, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(806, 403, 339, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(807, 404, 336, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(808, 404, 340, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(809, 405, 337, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(810, 405, 339, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(811, 406, 337, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(812, 406, 340, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(813, 407, 338, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(814, 407, 339, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(815, 408, 338, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(816, 408, 340, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(817, 409, 341, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(818, 409, 344, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(819, 410, 341, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(820, 410, 345, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(821, 411, 342, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(822, 411, 344, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(823, 412, 342, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(824, 412, 345, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(825, 413, 343, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(826, 413, 344, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(827, 414, 343, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(828, 414, 345, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(829, 415, 346, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(830, 415, 349, '2025-07-31 15:30:51', '2025-07-31 15:30:51');
INSERT INTO `product_variant_details` (`id`, `product_variant_id`, `variant_value_id`, `created_at`, `updated_at`) VALUES
(831, 416, 346, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(832, 416, 350, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(833, 417, 347, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(834, 417, 349, '2025-07-31 15:30:51', '2025-07-31 15:30:51'),
(835, 418, 347, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(836, 418, 350, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(837, 419, 348, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(838, 419, 349, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(839, 420, 348, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(840, 420, 350, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(841, 421, 351, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(842, 421, 354, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(843, 422, 351, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(844, 422, 355, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(845, 423, 352, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(846, 423, 354, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(847, 424, 352, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(848, 424, 355, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(849, 425, 353, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(850, 425, 354, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(851, 426, 353, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(852, 426, 355, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(853, 427, 356, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(854, 427, 359, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(855, 428, 356, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(856, 428, 360, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(857, 429, 357, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(858, 429, 359, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(859, 430, 357, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(860, 430, 360, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(861, 431, 358, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(862, 431, 359, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(863, 432, 358, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(864, 432, 360, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(865, 433, 361, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(866, 433, 364, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(867, 434, 361, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(868, 434, 365, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(869, 435, 362, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(870, 435, 364, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(871, 436, 362, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(872, 436, 365, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(873, 437, 363, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(874, 437, 364, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(875, 438, 363, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(876, 438, 365, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(877, 439, 366, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(878, 439, 369, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(879, 440, 366, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(880, 440, 370, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(881, 441, 367, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(882, 441, 369, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(883, 442, 367, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(884, 442, 370, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(885, 443, 368, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(886, 443, 369, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(887, 444, 368, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(888, 444, 370, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(889, 445, 371, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(890, 445, 374, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(891, 446, 371, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(892, 446, 375, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(893, 447, 372, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(894, 447, 374, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(895, 448, 372, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(896, 448, 375, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(897, 449, 373, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(898, 449, 374, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(899, 450, 373, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(900, 450, 375, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(901, 451, 376, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(902, 451, 379, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(903, 452, 376, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(904, 452, 380, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(905, 453, 377, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(906, 453, 379, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(907, 454, 377, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(908, 454, 380, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(909, 455, 378, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(910, 455, 379, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(911, 456, 378, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(912, 456, 380, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(913, 457, 381, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(914, 457, 384, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(915, 458, 381, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(916, 458, 385, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(917, 459, 382, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(918, 459, 384, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(919, 460, 382, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(920, 460, 385, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(921, 461, 383, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(922, 461, 384, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(923, 462, 383, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(924, 462, 385, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(925, 463, 386, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(926, 463, 389, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(927, 464, 386, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(928, 464, 390, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(929, 465, 387, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(930, 465, 389, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(931, 466, 387, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(932, 466, 390, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(933, 467, 388, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(934, 467, 389, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(935, 468, 388, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(936, 468, 390, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(937, 469, 391, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(938, 469, 394, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(939, 470, 391, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(940, 470, 395, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(941, 471, 392, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(942, 471, 394, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(943, 472, 392, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(944, 472, 395, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(945, 473, 393, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(946, 473, 394, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(947, 474, 393, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(948, 474, 395, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(949, 475, 396, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(950, 475, 399, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(951, 476, 396, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(952, 476, 400, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(953, 477, 397, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(954, 477, 399, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(955, 478, 397, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(956, 478, 400, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(957, 479, 398, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(958, 479, 399, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(959, 480, 398, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(960, 480, 400, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(961, 481, 401, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(962, 481, 404, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(963, 482, 401, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(964, 482, 405, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(965, 483, 402, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(966, 483, 404, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(967, 484, 402, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(968, 484, 405, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(969, 485, 403, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(970, 485, 404, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(971, 486, 403, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(972, 486, 405, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(973, 487, 406, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(974, 487, 409, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(975, 488, 406, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(976, 488, 410, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(977, 489, 407, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(978, 489, 409, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(979, 490, 407, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(980, 490, 410, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(981, 491, 408, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(982, 491, 409, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(983, 492, 408, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(984, 492, 410, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(985, 493, 411, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(986, 493, 414, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(987, 494, 411, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(988, 494, 415, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(989, 495, 412, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(990, 495, 414, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(991, 496, 412, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(992, 496, 415, '2025-07-31 15:30:52', '2025-07-31 15:30:52'),
(993, 497, 413, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(994, 497, 414, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(995, 498, 413, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(996, 498, 415, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(997, 499, 416, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(998, 499, 419, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(999, 500, 416, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1000, 500, 420, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1001, 501, 417, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1002, 501, 419, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1003, 502, 417, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1004, 502, 420, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1005, 503, 418, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1006, 503, 419, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1007, 504, 418, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1008, 504, 420, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1009, 505, 421, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1010, 505, 424, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1011, 506, 421, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1012, 506, 425, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1013, 507, 422, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1014, 507, 424, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1015, 508, 422, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1016, 508, 425, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1017, 509, 423, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1018, 509, 424, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1019, 510, 423, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1020, 510, 425, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1021, 511, 426, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1022, 511, 429, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1023, 512, 426, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1024, 512, 430, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1025, 513, 427, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1026, 513, 429, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1027, 514, 427, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1028, 514, 430, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1029, 515, 428, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1030, 515, 429, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1031, 516, 428, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1032, 516, 430, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1033, 517, 431, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1034, 517, 434, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1035, 518, 431, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1036, 518, 435, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1037, 519, 432, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1038, 519, 434, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1039, 520, 432, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1040, 520, 435, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1041, 521, 433, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1042, 521, 434, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1043, 522, 433, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1044, 522, 435, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1045, 523, 436, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1046, 523, 439, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1047, 524, 436, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1048, 524, 440, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1049, 525, 437, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1050, 525, 439, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1051, 526, 437, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1052, 526, 440, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1053, 527, 438, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1054, 527, 439, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1055, 528, 438, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1056, 528, 440, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1057, 529, 441, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1058, 529, 444, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1059, 530, 441, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1060, 530, 445, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1061, 531, 442, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1062, 531, 444, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1063, 532, 442, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1064, 532, 445, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1065, 533, 443, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1066, 533, 444, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1067, 534, 443, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1068, 534, 445, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1069, 535, 446, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1070, 535, 449, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1071, 536, 446, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1072, 536, 450, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1073, 537, 447, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1074, 537, 449, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1075, 538, 447, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1076, 538, 450, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1077, 539, 448, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1078, 539, 449, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1079, 540, 448, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1080, 540, 450, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(1081, 541, 1, '2025-08-25 15:36:52', '2025-08-25 15:36:52'),
(1082, 542, 451, '2025-08-25 16:32:37', '2025-08-25 16:32:37'),
(1083, 543, 452, '2025-08-25 16:41:08', '2025-08-25 16:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_branches`
--

CREATE TABLE `promotion_branches` (
  `id` bigint UNSIGNED NOT NULL,
  `promotion_program_id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_branches`
--

INSERT INTO `promotion_branches` (`id`, `promotion_program_id`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(2, 3, 3, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(3, 6, 1, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(4, 7, 1, '2025-07-31 15:33:56', '2025-07-31 15:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `promotion_discount_codes`
--

CREATE TABLE `promotion_discount_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `promotion_program_id` bigint UNSIGNED NOT NULL,
  `discount_code_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_programs`
--

CREATE TABLE `promotion_programs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicable_scope` enum('all_branches','specific_branches') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all_branches',
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` int NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotion_programs`
--

INSERT INTO `promotion_programs` (`id`, `name`, `description`, `banner_image`, `thumbnail_image`, `applicable_scope`, `start_date`, `end_date`, `is_active`, `is_featured`, `display_order`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'amet doloremque ipsam', 'Dolores illo consequatur rerum recusandae corrupti. Autem quaerat iure possimus repellendus doloribus sit tempore. Non inventore id voluptatem corrupti. Debitis voluptatem et alias harum.', 'https://via.placeholder.com/800x400.png/002299?text=doloribus', NULL, 'all_branches', '2025-07-31 15:33:56', '2025-08-30 15:33:56', 1, 0, 8, 6, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(2, 'iste similique rerum', 'Et amet in et voluptatum. Corrupti quaerat dignissimos quasi incidunt recusandae sint vero. Deleniti accusamus qui enim maiores officia.', 'https://via.placeholder.com/800x400.png/00cc33?text=et', NULL, 'all_branches', '2025-07-31 15:33:56', '2025-08-30 15:33:56', 1, 1, 10, 7, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(3, 'aut ut minus', 'Facere facilis aspernatur est et. Reiciendis dolores veritatis commodi laboriosam et dicta esse. Molestiae ipsum minima voluptates dolores qui id neque. Consequatur sit maiores consequatur a.', NULL, NULL, 'specific_branches', '2025-07-31 15:33:56', '2025-08-30 15:33:56', 1, 1, 5, 8, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(4, 'nihil eaque in', 'Non laborum quidem harum sapiente ipsa ipsa. Culpa fugiat dolore est. Assumenda deserunt rerum voluptate tempore voluptatem.', 'https://via.placeholder.com/800x400.png/0077aa?text=fugit', 'https://via.placeholder.com/200x200.png/000066?text=ut', 'all_branches', '2025-07-31 15:33:56', '2025-08-30 15:33:56', 1, 0, 0, 9, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(5, 'alias quae et', 'Sint veritatis vitae qui ut. Eum vel sit nisi vel quaerat qui. Sit doloremque non voluptatem provident error.', 'https://via.placeholder.com/800x400.png/001144?text=ad', NULL, 'all_branches', '2025-07-31 15:33:56', '2025-08-30 15:33:56', 1, 0, 10, 10, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(6, 'perspiciatis earum atque', 'Voluptatem ut voluptates in non eum. Dolores modi quaerat id quibusdam consectetur. Dolor nihil itaque exercitationem accusantium qui similique optio.', 'https://via.placeholder.com/800x400.png/009988?text=eaque', 'https://via.placeholder.com/200x200.png/00bb22?text=dolorem', 'specific_branches', '2025-07-31 15:33:56', '2025-08-30 15:33:56', 1, 0, 4, 11, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(7, 'earum minus dolor', 'Et quas reprehenderit sit quis eos. Qui dolorem cupiditate et perferendis debitis odio. Voluptatem harum omnis laudantium accusantium porro voluptas facere.', NULL, 'https://via.placeholder.com/200x200.png/00bb88?text=quo', 'specific_branches', '2025-07-31 15:33:56', '2025-08-30 15:33:56', 1, 0, 6, 12, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(8, 'laudantium nostrum amet', 'Sunt natus explicabo ipsum nisi perferendis facilis facilis. Accusamus rerum dolorem modi sit est vel ipsam. Ab est temporibus laborum. Officiis laudantium qui sit voluptatem mollitia quis.', NULL, 'https://via.placeholder.com/200x200.png/002299?text=quae', 'all_branches', '2025-07-31 15:33:56', '2025-08-30 15:33:56', 1, 0, 1, 13, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(9, 'est ut animi', 'Impedit suscipit sit dignissimos suscipit officiis quia odio tempore. Aliquid autem minus ex. Consequatur voluptatibus nostrum est recusandae consectetur ea.', 'https://via.placeholder.com/800x400.png/00ccaa?text=dignissimos', NULL, 'all_branches', '2025-07-31 15:33:56', '2025-08-30 15:33:56', 1, 0, 10, 14, '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(10, 'eaque suscipit perferendis', 'Ad deleniti ea delectus qui repellat ut sit. Illo atque neque cum non sunt enim. Magnam neque a recusandae nostrum vero voluptas maiores.', 'https://via.placeholder.com/800x400.png/0033bb?text=magnam', NULL, 'all_branches', '2025-07-31 15:33:56', '2025-08-30 15:33:56', 1, 1, 8, 15, '2025-07-31 15:33:56', '2025-07-31 15:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `return_orders`
--

CREATE TABLE `return_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `requested_at` datetime NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('requested','approved','rejected','processing','completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'requested',
  `refunded_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `responsible_party` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refunded_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_helpfuls`
--

CREATE TABLE `review_helpfuls` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `review_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_replies`
--

CREATE TABLE `review_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `review_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_date` datetime NOT NULL,
  `is_official` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `helpful_count` int NOT NULL DEFAULT '0',
  `report_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_reports`
--

CREATE TABLE `review_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `review_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `reason_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Chuẩn hóa: spam, harassment, hate_speech, inappropriate, misinformation, other',
  `reason_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Thông tin bổ sung chi tiết',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reward_point_histories`
--

CREATE TABLE `reward_point_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `points` int NOT NULL,
  `reason` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'admin', '[\"*\"]', '2025-07-31 15:30:40', '2025-07-31 15:30:40'),
(2, 'manager', '[\"create\", \"edit\", \"view\"]', '2025-07-31 15:30:40', '2025-07-31 15:30:40'),
(3, 'staff', '[\"view\"]', '2025-07-31 15:30:40', '2025-07-31 15:30:40'),
(4, 'customer', '[\"view\"]', '2025-07-31 15:30:40', '2025-07-31 15:30:40'),
(5, 'driver', '[\"view\", \"driver_actions\"]', '2025-07-31 15:30:40', '2025-07-31 15:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CSWjbwQfN9znrV2P70g3d3wQWjLRLuHSOKta1zxB', 18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiWXMwUmtzOXdoQmVxclR5Sk5MdnJXWGY1NHlPcHlpY0JWZ0Y5dXA4aiI7czoxMToiX3Rva2VuX3RpbWUiO2k6MTc1NjQ4NTk3OTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo2MjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2N1c3RvbWVyL2NoYXQvbWVzc2FnZXM/Y29udmVyc2F0aW9uX2lkPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE1OiJzZWxlY3RlZF9icmFuY2giO3M6MToiMSI7czoxMDoiY2FydF9jb3VudCI7aTowO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE4O3M6NjA6ImNhcnRfdHJhbnNmZXJyZWRfMThfQ1NXamJ3UWZOOXpuclYyUDcwZzNkM3dRV2pMUkx1SFNPS3RhMXp4QiI7YjoxO30=', 1756485979),
('dTmmpJ81qZdoNeJN62eetebqQVsQf4XBzvds5X7W', 18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmxHdHBwN3hoTjNVUE1wZ3FUN0hpbk9KU3lJQmw5cjVyVFo3WkVwZiI7czoxNToic2VsZWN0ZWRfYnJhbmNoIjtzOjE6IjEiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756485575),
('MH4IqFHWcDEMkOVuZAHULQlRYQUecUedLP66kXrp', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiZXJEbVVFZk1jQkVSaGl5bGFDMlg3dVlOMkRldzVpZVA0ZklMbW41bSI7czoxNToic2VsZWN0ZWRfYnJhbmNoIjtzOjE6IjEiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTE6Il90b2tlbl90aW1lIjtpOjE3NTY0ODU5ODU7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWZyZXNoLWNzcmYiO31zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjM2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vcHJvZHVjdHMiO31zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OToiY2FydF90cmFuc2ZlcnJlZF8xX01INElxRkhXY0RFTWtPVnVaQUhVTFFsUllRVWVjVWVkTFA2NmtYcnAiO2I6MTt9', 1756485985),
('NUARXkxHKfRyLiFmQ1UNWOGdX4IHelVeK5uLWccd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:142.0) Gecko/20100101 Firefox/142.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiQVF3c0JQY1BydWI3dWdpV1ZYZ3RtSU5HV2t2Q0YwZnFoZ1RKWGYxUiI7czoxMToiX3Rva2VuX3RpbWUiO2k6MTc1NjQ4NTY0OTtzOjEwOiJjYXJ0X2NvdW50IjtpOjA7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWZyZXNoLWNzcmYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OToiY2FydF90cmFuc2ZlcnJlZF8xX05VQVJYa3hIS2ZSeUxpRm1RMVVOV09HZFg0SUhlbFZlSzV1TFdjY2QiO2I6MTt9', 1756485649),
('Up3bt8V8JxnrHjhMSJJkcdUtqkpjM3bZgYCMgjw8', 18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiOEgyT0RZT1RwSXRNS0UyYzdYMXAyWVRjcVd4OUlzTjhmQWp5YkFSTyI7czoxNToic2VsZWN0ZWRfYnJhbmNoIjtzOjE6IjEiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE4O3M6NjA6ImNhcnRfdHJhbnNmZXJyZWRfMThfVXAzYnQ4VjhKeG5ySGpoTVNKSmtjZFV0cWtwak0zYlpnWUNNZ2p3OCI7YjoxO3M6MTE6Il90b2tlbl90aW1lIjtpOjE3NTY0ODU3ODg7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWZyZXNoLWNzcmYiO31zOjEwOiJjYXJ0X2NvdW50IjtpOjA7fQ==', 1756485788);

-- --------------------------------------------------------

--
-- Table structure for table `toppings`
--

CREATE TABLE `toppings` (
  `id` bigint UNSIGNED NOT NULL,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toppings`
--

INSERT INTO `toppings` (`id`, `sku`, `name`, `price`, `active`, `image`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'TOP250731001', 'Phô mai thêm', '15000.00', 1, 'toppings/405329b1-687f-47ae-a186-81b6037f3807.jpg', 'Phô mai Mozzarella cao cấp', 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:36:09'),
(2, 'TOP250731002', 'Thịt xông khói', '20000.00', 1, 'toppings/d7180c34-4bc0-4db7-8f30-ca7b9b5962c4.webp', 'Thịt xông khói giòn tan', 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:36:18'),
(3, 'TOP250731003', 'Trứng ốp la', '10000.00', 1, 'toppings/34189b44-15db-4620-aa32-c1f5d91016ea.jpg', 'Trứng gà tươi ốp la', 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:37:10'),
(4, 'TOP250731004', 'Xà lách thêm', '5000.00', 1, 'toppings/5940267a-64c8-4ebc-bbda-1f927c868ff0.webp', 'Xà lách tươi giòn', 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:41:35'),
(5, 'TOP250731005', 'Cà chua thêm', '5000.00', 1, 'toppings/d02fb112-6ef6-40b2-900a-8c010f2e6288.webp', 'Cà chua tươi ngon', 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:41:29'),
(6, 'TOP250731006', 'Hành tây chiên', '8000.00', 1, 'toppings/6dd88ea4-c952-493d-a98d-9e0ebd975b19.jpg', 'Hành tây chiên giòn', 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:41:18'),
(7, 'TOP250731007', 'Nấm chiên', '12000.00', 1, 'toppings/5bab0cfa-1c2c-49d6-b7bd-a5ec4f639aa0.jpg', 'Nấm tươi chiên thơm', 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:41:11'),
(8, 'TOP250731008', 'Ớt jalapeño', '7000.00', 1, 'toppings/043defe8-7b57-43f8-af72-3278dbb1d6b9.jpg', 'Ớt jalapeño cay nồng', 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:41:04'),
(9, 'TOP250731009', 'Dưa chuột muối', '6000.00', 1, 'toppings/8a73a280-7902-409c-b4f5-97784cae9e6f.webp', 'Dưa chuột muối chua ngọt', 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:40:58'),
(10, 'TOP250731010', 'Sốt BBQ thêm', '3000.00', 1, 'toppings/dcbc61b8-1300-477d-ad1e-2476c9c03ee2.jpg', 'Sốt BBQ đậm đà', 1, 1, '2025-07-31 15:30:53', '2025-07-31 15:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `topping_stocks`
--

CREATE TABLE `topping_stocks` (
  `id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED NOT NULL,
  `topping_id` bigint UNSIGNED NOT NULL,
  `stock_quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topping_stocks`
--

INSERT INTO `topping_stocks` (`id`, `branch_id`, `topping_id`, `stock_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 159, '2025-07-31 15:30:53', '2025-07-31 15:30:53'),
(2, 1, 2, 186, '2025-07-31 15:30:54', '2025-07-31 15:30:54'),
(3, 1, 3, 50, '2025-07-31 15:30:54', '2025-07-31 15:30:54'),
(4, 1, 4, 78, '2025-07-31 15:30:54', '2025-07-31 15:30:54'),
(5, 1, 5, 119, '2025-07-31 15:30:54', '2025-07-31 15:30:54'),
(6, 1, 6, 110, '2025-07-31 15:30:54', '2025-07-31 15:30:54'),
(7, 1, 7, 96, '2025-07-31 15:30:54', '2025-07-31 15:30:54'),
(8, 1, 8, 174, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(9, 1, 9, 140, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(10, 1, 10, 97, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(11, 2, 1, 63, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(12, 2, 2, 125, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(13, 2, 3, 182, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(14, 2, 4, 153, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(15, 2, 5, 53, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(16, 2, 6, 54, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(17, 2, 7, 85, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(18, 2, 8, 106, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(19, 2, 9, 71, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(20, 2, 10, 107, '2025-07-31 15:30:55', '2025-07-31 15:30:55'),
(21, 3, 1, 71, '2025-07-31 15:30:56', '2025-07-31 15:30:56'),
(22, 3, 2, 173, '2025-07-31 15:30:56', '2025-07-31 15:30:56'),
(23, 3, 3, 135, '2025-07-31 15:30:56', '2025-07-31 15:30:56'),
(24, 3, 4, 180, '2025-07-31 15:30:56', '2025-07-31 15:30:56'),
(25, 3, 5, 186, '2025-07-31 15:30:56', '2025-07-31 15:30:56'),
(26, 3, 6, 91, '2025-07-31 15:30:56', '2025-07-31 15:30:56'),
(27, 3, 7, 57, '2025-07-31 15:30:56', '2025-07-31 15:30:56'),
(28, 3, 8, 78, '2025-07-31 15:30:56', '2025-07-31 15:30:56'),
(29, 3, 9, 89, '2025-07-31 15:30:56', '2025-07-31 15:30:56'),
(30, 3, 10, 125, '2025-07-31 15:30:56', '2025-07-31 15:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_rank_id` bigint UNSIGNED DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` enum('male','female','other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_spending` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_orders` int NOT NULL DEFAULT '0',
  `rank_updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `full_name`, `email`, `phone`, `google_id`, `avatar`, `balance`, `user_rank_id`, `birthday`, `gender`, `total_spending`, `total_orders`, `rank_updated_at`, `active`, `email_verified_at`, `password`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', 'admin@devfoods.com', '0123456789', NULL, NULL, '0.00', 1, NULL, NULL, '0.00', 0, '2025-07-31 15:30:41', 1, NULL, '$2y$12$1ymA0K5.JUSDZ6ALy2ASn.dDBKyGlman3YWwTWaaS/EDjgYwteZU2', NULL, NULL, '2025-07-31 15:30:41', '2025-07-31 15:30:41'),
(2, 'manager1', 'Nguyen Van A', 'manager1@devfoods.com', '0123456781', NULL, NULL, '0.00', 1, NULL, NULL, '0.00', 0, '2025-07-31 15:30:42', 1, NULL, '$2y$12$UjwlkoppReTK0WTB95vkzuY0R.0Ys26moQ5byBSCTJfR10NugSaxK', NULL, NULL, '2025-07-31 15:30:42', '2025-07-31 15:30:42'),
(3, 'manager2', 'Nguyen Van B', 'manager2@devfoods.com', '0123456782', NULL, NULL, '0.00', 1, NULL, NULL, '0.00', 0, '2025-07-31 15:30:42', 1, NULL, '$2y$12$qE0t0io7B8DnlFncikTUpe/sCRGRrFq5hDFm6og5JQ5BFdaEqZZ7a', NULL, NULL, '2025-07-31 15:30:42', '2025-07-31 15:30:42'),
(4, 'manager3', 'Nguyen Van C', 'manager3@devfoods.com', '0123456783', NULL, NULL, '0.00', 1, NULL, NULL, '0.00', 0, '2025-07-31 15:30:42', 1, NULL, '$2y$12$1wV3Kus7BEzpF3Vx.UnRgOhzyALvmF3v6jGa48t609WURdpawoL7u', NULL, NULL, '2025-07-31 15:30:42', '2025-07-31 15:30:42'),
(5, 'customer', 'Nguyen Kha Banh', 'customer@devfoods.com', '0123456789', NULL, NULL, '0.00', 1, NULL, NULL, '0.00', 0, '2025-07-31 15:30:42', 1, NULL, '$2y$12$/kVeEeqWQ3LRvC86pL9nhuYqIA6gi1.aRjP3yinD0c1L4OvzW.8QW', NULL, NULL, '2025-07-31 15:30:42', '2025-07-31 15:30:42'),
(6, 'eve.kessler', 'Dr. Eldon Kuvalis', 'kiarra.kuhic@example.net', '(620) 446-8120', NULL, 'avatars/default.jpg', '385.67', 1, NULL, 'male', '8171.01', 50, '2025-07-31 15:33:56', 1, '2025-07-31 15:33:56', '$2y$12$NbI3XH2mIwKkN3jCj6VdY.sIYLeUUM.Vb7NIQx46uzR6/lBNhQdtG', NULL, 'VxqXfEv31A', '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(7, 'lowe.alvena', 'Amelia Walsh', 'koepp.ceasar@example.org', '1-607-446-8305', NULL, 'avatars/default.jpg', '862.95', 1, NULL, NULL, '7924.45', 36, '2025-07-31 15:33:56', 1, '2025-07-31 15:33:56', '$2y$12$NbI3XH2mIwKkN3jCj6VdY.sIYLeUUM.Vb7NIQx46uzR6/lBNhQdtG', NULL, 'ngWwB7b6n0', '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(8, 'francesco.funk', 'General Wisozk', 'winnifred13@example.com', '904-848-6990', NULL, 'avatars/default.jpg', '220.40', 1, NULL, 'other', '5426.15', 41, '2025-07-31 15:33:56', 1, '2025-07-31 15:33:56', '$2y$12$NbI3XH2mIwKkN3jCj6VdY.sIYLeUUM.Vb7NIQx46uzR6/lBNhQdtG', NULL, 'CDI7OlbfcG', '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(9, 'runolfsdottir.erika', 'Eulah Mraz Sr.', 'yost.regan@example.com', '303.280.9980', NULL, 'avatars/default.jpg', '562.33', 2, NULL, NULL, '6426.18', 34, '2025-07-31 15:33:56', 1, '2025-07-31 15:33:56', '$2y$12$NbI3XH2mIwKkN3jCj6VdY.sIYLeUUM.Vb7NIQx46uzR6/lBNhQdtG', NULL, 'gfRceuRFK7', '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(10, 'johnston.jimmie', 'Kristin Gislason', 'emil69@example.org', '442-792-3991', NULL, 'avatars/default.jpg', '255.25', 1, '1981-05-03', NULL, '3572.07', 7, '2025-07-31 15:33:56', 1, '2025-07-31 15:33:56', '$2y$12$NbI3XH2mIwKkN3jCj6VdY.sIYLeUUM.Vb7NIQx46uzR6/lBNhQdtG', NULL, 'Ixr6rAgWYK', '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(11, 'fwisozk', 'Garrett Casper', 'ohara.helena@example.net', '+1.984.767.6896', NULL, 'avatars/default.jpg', '770.05', 4, '1993-03-05', 'female', '8232.46', 7, '2025-07-31 15:33:56', 1, '2025-07-31 15:33:56', '$2y$12$NbI3XH2mIwKkN3jCj6VdY.sIYLeUUM.Vb7NIQx46uzR6/lBNhQdtG', NULL, 'W4yRQI3ORx', '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(12, 'wlubowitz', 'Hailie Gibson', 'gwendolyn32@example.com', '810.808.6333', NULL, 'avatars/default.jpg', '987.12', 5, NULL, NULL, '976.41', 32, '2025-07-31 15:33:56', 1, '2025-07-31 15:33:56', '$2y$12$NbI3XH2mIwKkN3jCj6VdY.sIYLeUUM.Vb7NIQx46uzR6/lBNhQdtG', NULL, 'goKspsuMTq', '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(13, 'adaline93', 'Mrs. Nyasia Balistreri', 'casper.erna@example.net', '+1-469-384-8748', NULL, 'avatars/default.jpg', '500.66', 5, NULL, NULL, '4183.45', 44, '2025-07-31 15:33:56', 1, '2025-07-31 15:33:56', '$2y$12$NbI3XH2mIwKkN3jCj6VdY.sIYLeUUM.Vb7NIQx46uzR6/lBNhQdtG', NULL, 'ipS7bTn8ww', '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(14, 'dan.fisher', 'Nathen Crona', 'porn@example.com', '870.333.0985', NULL, 'avatars/default.jpg', '36.88', 5, '1987-07-24', 'male', '2882.00', 48, '2025-07-31 15:33:56', 1, '2025-07-31 15:33:56', '$2y$12$NbI3XH2mIwKkN3jCj6VdY.sIYLeUUM.Vb7NIQx46uzR6/lBNhQdtG', NULL, '8fl2q6iWgO', '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(15, 'felicita.marks', 'Miss Sabryna Brekke', 'rspinka@example.net', '+1-469-443-3597', NULL, 'avatars/default.jpg', '638.45', 4, '1972-07-27', 'male', '1617.63', 46, '2025-07-31 15:33:56', 1, '2025-07-31 15:33:56', '$2y$12$NbI3XH2mIwKkN3jCj6VdY.sIYLeUUM.Vb7NIQx46uzR6/lBNhQdtG', NULL, 'sgXEWAiAGs', '2025-07-31 15:33:56', '2025-07-31 15:33:56'),
(16, 'nguyentuananhndta', 'Tuấn Anh Nguyễn', 'nguyentuananh.ndta@gmail.com', '0987654321', 'VisATLW40MWLLDYTTAHLWpEcXPq1', 'avatar_32d3d93cd7c1d36fb29c273d2fde3b80_1755860593_v84mZH2S.jpg', '0.00', 1, NULL, NULL, '0.00', 0, '2025-07-31 17:29:17', 1, NULL, '$2y$12$eyI4qcRX32NLOBGZJrlTpejaX8mKoqOBVU8S9OtoQLjTr3VpCTgi2', NULL, 'eDQ54Sk3AKc6xCOXuIPJA3eK6mHrc2TWO4hEOqsu65LcFVrJTKH1ChqTyBex', '2025-07-31 17:29:17', '2025-08-22 11:03:14'),
(17, 'anhndtph50264', 'Tuấn Anh Nguyễn', 'anhndtph50264@gmail.com', '0981714532', '9m2ktxcLQbajkHyoJY3TwzMdsc93', 'avatar_161aeae1d69c9a9fce7a776e26002c26_1754240470_4fiUO6rs.jpg', '0.00', 1, NULL, NULL, '0.00', 0, '2025-08-02 13:53:55', 1, NULL, '$2y$12$.DBKuqbVp9g1oWiirrDTJeTqWeey4snhL9sEWq/OLfU3np.Uf/.Um', NULL, '8b4KzH224ySdk75LLbLx8feCRjyAf4TBTr4rdtBvPybXyHdOBo9rfzDvQYi8', '2025-08-02 13:53:55', '2025-08-03 17:01:15'),
(18, 'tungxeko912', 'Luminous', 'tungxeko912@gmail.com', '0936966857', 'n942pXhlKmWMXvC3uFCg3C8VElx1', 'avatar_1a86d66db81b6c8df1ba10f9b3f16066_1756294998_YkdYLHrD.jpg', '0.00', 1, NULL, NULL, '0.00', 0, '2025-08-26 13:17:07', 1, NULL, '$2y$12$TU6a1fkDo73C4fboz.p6xeXJFohD4q9CR5ex7pjESM/5cBPddtg2m', NULL, 'fThGEdK0xwxoyqv7A3d50THkhNMpxYR1MvAEKqBr7bDFATTGjtjxE1ameYDR', '2025-08-26 13:17:08', '2025-08-27 11:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_discount_codes`
--

CREATE TABLE `user_discount_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `discount_code_id` bigint UNSIGNED NOT NULL,
  `usage_count` int NOT NULL DEFAULT '0',
  `status` enum('available','used_up','expired') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `assigned_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `first_used_at` timestamp NULL DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_ranks`
--

CREATE TABLE `user_ranks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#CD7F32',
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_spending` decimal(12,2) NOT NULL DEFAULT '0.00',
  `min_orders` int NOT NULL DEFAULT '0',
  `discount_percentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `benefits` json DEFAULT NULL,
  `display_order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_ranks`
--

INSERT INTO `user_ranks` (`id`, `name`, `slug`, `color`, `icon`, `min_spending`, `min_orders`, `discount_percentage`, `benefits`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Đồng', 'bronze', '#CD7F32', 'icons/bronze.png', '0.00', 0, '0.00', '\"{\\\"free_shipping\\\":false,\\\"priority_support\\\":false}\"', 1, 1, '2025-07-31 15:30:41', '2025-07-31 15:30:41'),
(2, 'Bạc', 'silver', '#C0C0C0', 'icons/silver.png', '1000.00', 5, '5.00', '\"{\\\"free_shipping\\\":false,\\\"priority_support\\\":true}\"', 2, 1, '2025-07-31 15:30:41', '2025-07-31 15:30:41'),
(3, 'Vàng', 'gold', '#FFD700', 'icons/gold.png', '5000.00', 10, '10.00', '\"{\\\"free_shipping\\\":true,\\\"priority_support\\\":true}\"', 3, 1, '2025-07-31 15:30:41', '2025-07-31 15:30:41'),
(4, 'Bạch Kim', 'platinum', '#E5E4E2', 'icons/platinum.png', '10000.00', 20, '15.00', '\"{\\\"free_shipping\\\":true,\\\"priority_support\\\":true}\"', 4, 1, '2025-07-31 15:30:41', '2025-07-31 15:30:41'),
(5, 'Kim Cương', 'diamond', '#B9F2FF', 'icons/diamond.png', '20000.00', 50, '20.00', '\"{\\\"free_shipping\\\":true,\\\"priority_support\\\":true}\"', 5, 1, '2025-07-31 15:30:41', '2025-07-31 15:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_rank_history`
--

CREATE TABLE `user_rank_history` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `old_rank_id` bigint UNSIGNED DEFAULT NULL,
  `new_rank_id` bigint UNSIGNED NOT NULL,
  `total_spending` decimal(12,2) NOT NULL,
  `total_orders` int NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `changed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_rank_history`
--

INSERT INTO `user_rank_history` (`id`, `user_id`, `old_rank_id`, `new_rank_id`, `total_spending`, `total_orders`, `reason`, `changed_at`) VALUES
(1, 1, NULL, 1, '3560.71', 42, 'Laboriosam incidunt culpa autem sint quae.', '2025-07-31 15:33:56'),
(2, 2, NULL, 4, '5091.65', 6, 'Laboriosam quas libero delectus.', '2025-07-31 15:33:57'),
(3, 2, 4, 2, '8799.98', 48, 'Est quidem assumenda necessitatibus voluptatem ex voluptates.', '2025-07-31 15:33:57'),
(4, 2, 1, 4, '5261.43', 46, 'Accusamus possimus nostrum culpa quia sapiente quo.', '2025-07-31 15:33:57'),
(5, 3, NULL, 1, '5109.64', 34, 'Autem rerum qui aut.', '2025-07-31 15:33:57'),
(6, 3, 4, 1, '2848.80', 49, 'Minima excepturi et natus mollitia.', '2025-07-31 15:33:57'),
(7, 4, NULL, 1, '5138.41', 5, 'Rerum omnis tempora officiis sit.', '2025-07-31 15:33:57'),
(8, 5, NULL, 1, '8958.24', 23, 'Blanditiis illo ducimus ut.', '2025-07-31 15:33:57'),
(9, 5, 3, 4, '8259.23', 44, 'Quibusdam qui quo autem ipsum explicabo.', '2025-07-31 15:33:57'),
(10, 5, 2, 2, '2605.80', 27, 'Explicabo et quidem impedit veniam.', '2025-07-31 15:33:57'),
(11, 6, NULL, 4, '9058.29', 31, 'Eius consequatur velit neque quo.', '2025-07-31 15:33:57'),
(12, 6, 1, 5, '4746.26', 2, 'Tenetur qui ut dolore ea explicabo eum quia quis.', '2025-07-31 15:33:57'),
(13, 7, NULL, 4, '3967.19', 33, 'Deserunt sint architecto modi distinctio voluptas.', '2025-07-31 15:33:57'),
(14, 7, 1, 4, '7401.38', 8, 'Tempore nostrum eum ut ratione tempore voluptas.', '2025-07-31 15:33:57'),
(15, 8, NULL, 3, '2775.29', 36, 'Adipisci et et doloribus in temporibus rem non accusamus.', '2025-07-31 15:33:57'),
(16, 8, 4, 2, '1488.07', 14, 'Qui amet minus ipsum qui.', '2025-07-31 15:33:57'),
(17, 9, NULL, 1, '6764.48', 32, 'Vel unde rem eius soluta blanditiis.', '2025-07-31 15:33:57'),
(18, 10, NULL, 1, '3073.73', 18, 'Ut ut dicta nostrum minus sunt sunt dolor voluptas.', '2025-07-31 15:33:57'),
(19, 10, 4, 5, '413.72', 34, 'Aut perspiciatis dolores sed aperiam quod rerum.', '2025-07-31 15:33:57'),
(20, 10, 2, 3, '2909.24', 7, 'A tempora aspernatur ut nesciunt aliquam ut.', '2025-07-31 15:33:57'),
(21, 11, NULL, 1, '3501.56', 47, 'Nihil accusamus est expedita enim similique qui.', '2025-07-31 15:33:57'),
(22, 11, 3, 1, '8466.74', 14, 'Quasi aliquid fuga sunt.', '2025-07-31 15:33:57'),
(23, 12, NULL, 4, '6361.53', 39, 'Assumenda accusantium odio et possimus dolor esse.', '2025-07-31 15:33:57'),
(24, 13, NULL, 1, '607.03', 38, 'Rerum ea est ipsam a deserunt.', '2025-07-31 15:33:57'),
(25, 14, NULL, 1, '3025.93', 35, 'Quo beatae dolores cupiditate omnis sequi quos et ex.', '2025-07-31 15:33:57'),
(26, 14, 1, 3, '1857.09', 24, 'Commodi voluptatem explicabo rem eaque excepturi perspiciatis.', '2025-07-31 15:33:57'),
(27, 15, NULL, 3, '4409.26', 21, 'Et ratione nemo numquam qui ipsa.', '2025-07-31 15:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-07-31 15:30:41', '2025-07-31 15:30:41'),
(2, 2, 2, '2025-07-31 15:30:42', '2025-07-31 15:30:42'),
(3, 3, 2, '2025-07-31 15:30:42', '2025-07-31 15:30:42'),
(4, 4, 2, '2025-07-31 15:30:42', '2025-07-31 15:30:42'),
(5, 5, 4, '2025-07-31 15:30:42', '2025-07-31 15:30:42'),
(6, 16, 4, '2025-07-31 17:29:17', '2025-07-31 17:29:17'),
(7, 17, 4, '2025-08-02 13:53:55', '2025-08-02 13:53:55'),
(8, 18, 4, '2025-08-26 13:17:08', '2025-08-26 13:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `variant_attributes`
--

CREATE TABLE `variant_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variant_attributes`
--

INSERT INTO `variant_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(2, 'Vị', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(3, 'Kích thước', '2025-08-25 16:32:37', '2025-08-25 16:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `variant_values`
--

CREATE TABLE `variant_values` (
  `id` bigint UNSIGNED NOT NULL,
  `variant_attribute_id` bigint UNSIGNED NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_adjustment` decimal(12,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variant_values`
--

INSERT INTO `variant_values` (`id`, `variant_attribute_id`, `value`, `price_adjustment`, `created_at`, `updated_at`) VALUES
(1, 1, 'S', '5000.00', '2025-07-31 15:30:44', '2025-08-25 15:36:49'),
(2, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(3, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(4, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(5, 2, 'Vị BBQ', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(6, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(7, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(8, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(9, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(10, 2, 'Vị cay', '3000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(11, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(12, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(13, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(14, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(15, 2, 'Vị đặc biệt', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(16, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(17, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(18, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(19, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(20, 2, 'Vị BBQ', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(21, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(22, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(23, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(24, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(25, 2, 'Vị đặc biệt', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(26, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(27, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(28, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(29, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(30, 2, 'Vị BBQ', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(31, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(32, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(33, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(34, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(35, 2, 'Vị cay', '3000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(36, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(37, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(38, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(39, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(40, 2, 'Vị BBQ', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(41, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(42, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(43, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(44, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(45, 2, 'Vị đặc biệt', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(46, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(47, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(48, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(49, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(50, 2, 'Vị BBQ', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(51, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(52, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(53, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(54, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(55, 2, 'Vị cay', '3000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(56, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(57, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(58, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(59, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(60, 2, 'Vị đặc biệt', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(61, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(62, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(63, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(64, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(65, 2, 'Vị BBQ', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(66, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(67, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(68, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(69, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(70, 2, 'Vị cay', '3000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(71, 1, 'S', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(72, 1, 'M', '10000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(73, 1, 'L', '20000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(74, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(75, 2, 'Vị BBQ', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(76, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(77, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(78, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(79, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(80, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(81, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(82, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(83, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(84, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(85, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(86, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(87, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(88, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(89, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(90, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(91, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(92, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(93, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(94, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(95, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(96, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(97, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(98, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(99, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(100, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(101, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(102, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(103, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(104, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(105, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(106, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(107, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(108, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(109, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(110, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(111, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(112, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(113, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(114, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(115, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(116, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(117, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(118, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(119, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(120, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(121, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(122, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(123, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(124, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(125, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(126, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(127, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(128, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(129, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(130, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(131, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(132, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(133, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(134, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(135, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(136, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(137, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(138, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(139, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(140, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(141, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(142, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(143, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(144, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(145, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(146, 1, '6in', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(147, 1, '9in', '25000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(148, 1, '12in', '50000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(149, 2, 'Vị truyền thống', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(150, 2, 'Vị cay', '8000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(151, 1, '1 miếng', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(152, 1, '2 miếng', '15000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(153, 1, '3 miếng', '30000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(154, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(155, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(156, 1, '1 miếng', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(157, 1, '2 miếng', '15000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(158, 1, '3 miếng', '30000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(159, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(160, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(161, 1, '1 miếng', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(162, 1, '2 miếng', '15000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(163, 1, '3 miếng', '30000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(164, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(165, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(166, 1, '1 miếng', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(167, 1, '2 miếng', '15000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(168, 1, '3 miếng', '30000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(169, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(170, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(171, 1, '1 miếng', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(172, 1, '2 miếng', '15000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(173, 1, '3 miếng', '30000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(174, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(175, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(176, 1, '1 miếng', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(177, 1, '2 miếng', '15000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(178, 1, '3 miếng', '30000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(179, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(180, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(181, 1, '1 miếng', '0.00', '2025-07-31 15:30:44', '2025-07-31 15:30:44'),
(182, 1, '2 miếng', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(183, 1, '3 miếng', '30000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(184, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(185, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(186, 1, '1 miếng', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(187, 1, '2 miếng', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(188, 1, '3 miếng', '30000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(189, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(190, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(191, 1, '1 miếng', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(192, 1, '2 miếng', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(193, 1, '3 miếng', '30000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(194, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(195, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(196, 1, '1 miếng', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(197, 1, '2 miếng', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(198, 1, '3 miếng', '30000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(199, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(200, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(201, 1, '1 miếng', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(202, 1, '2 miếng', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(203, 1, '3 miếng', '30000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(204, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(205, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(206, 1, '1 miếng', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(207, 1, '2 miếng', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(208, 1, '3 miếng', '30000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(209, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(210, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(211, 1, '1 miếng', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(212, 1, '2 miếng', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(213, 1, '3 miếng', '30000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(214, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(215, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(216, 1, '1 miếng', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(217, 1, '2 miếng', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(218, 1, '3 miếng', '30000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(219, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(220, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(221, 1, '1 miếng', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(222, 1, '2 miếng', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(223, 1, '3 miếng', '30000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(224, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(225, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(226, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(227, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(228, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(229, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(230, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(231, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(232, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(233, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(234, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(235, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(236, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(237, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(238, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(239, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(240, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(241, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(242, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(243, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(244, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(245, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(246, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(247, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(248, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(249, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(250, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(251, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(252, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(253, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(254, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(255, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(256, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(257, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(258, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(259, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(260, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(261, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(262, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(263, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(264, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(265, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(266, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(267, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(268, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(269, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(270, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(271, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(272, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(273, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(274, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(275, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(276, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(277, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(278, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(279, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(280, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(281, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(282, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(283, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(285, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(286, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(287, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(288, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(289, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(290, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(291, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(292, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(293, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(294, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(295, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(296, 1, 'Phần nhỏ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(297, 1, 'Phần vừa', '8000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(298, 1, 'Phần lớn', '15000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(299, 2, 'Vị nhẹ', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(300, 2, 'Vị đậm đà', '3000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(301, 1, 'Bình thường', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(302, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(303, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(304, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(305, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(306, 1, 'Bình thường', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(307, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(308, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(309, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(310, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(311, 1, 'Bình thường', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(312, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(313, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(314, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(315, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(316, 1, 'Bình thường', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(317, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(318, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(319, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(320, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(321, 1, 'Bình thường', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(322, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(323, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(324, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(325, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(326, 1, 'Bình thường', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(327, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(328, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(329, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(330, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(331, 1, 'Bình thường', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(332, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(333, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(334, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(335, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(336, 1, 'Bình thường', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(337, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(338, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(339, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(340, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(341, 1, 'Bình thường', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(342, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(343, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(344, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(345, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(346, 1, 'Bình thường', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(347, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(348, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(349, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(350, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(351, 1, 'Bình thường', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(352, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(353, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(354, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(355, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(356, 1, 'Bình thường', '0.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(357, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:45', '2025-07-31 15:30:45'),
(358, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(359, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(360, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(361, 1, 'Bình thường', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(362, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(363, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(364, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(365, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(366, 1, 'Bình thường', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(367, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(368, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(369, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(370, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(371, 1, 'Bình thường', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(372, 1, 'Thêm topping', '12000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(373, 1, 'Đặc biệt', '25000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(374, 2, 'Vị cổ điển', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(375, 2, 'Vị cay', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(376, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(377, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(378, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(379, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(380, 2, 'Vị đặc biệt', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(381, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(382, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(383, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(384, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(385, 2, 'Vị đặc biệt', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(386, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(387, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(388, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(389, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(390, 2, 'Vị đặc biệt', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(391, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(392, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(393, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(394, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(395, 2, 'Vị đặc biệt', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(396, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(397, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(398, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(399, 2, 'Vị ngọt vừa', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(400, 2, 'Vị ngọt đậm', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(401, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(402, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(403, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(404, 2, 'Vị ngọt vừa', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(405, 2, 'Vị ngọt đậm', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(406, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(407, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(408, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(409, 2, 'Vị ngọt vừa', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(410, 2, 'Vị ngọt đậm', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(411, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(412, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(413, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(414, 2, 'Vị đắng', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(415, 2, 'Vị ngọt', '3000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(416, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(417, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(418, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(419, 2, 'Vị đắng', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(420, 2, 'Vị ngọt', '3000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(421, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(422, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(423, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(424, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(425, 2, 'Vị đặc biệt', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(426, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(427, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(428, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(429, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(430, 2, 'Vị đặc biệt', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(431, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(432, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(433, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(434, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(435, 2, 'Vị đặc biệt', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(436, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(437, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(438, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(439, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(440, 2, 'Vị đặc biệt', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(441, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(442, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(443, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(444, 2, 'Vị ngọt vừa', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(445, 2, 'Vị ngọt đậm', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(446, 1, 'S', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(447, 1, 'M', '5000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(448, 1, 'L', '10000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(449, 2, 'Vị nguyên bản', '0.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(450, 2, 'Vị đặc biệt', '2000.00', '2025-07-31 15:30:46', '2025-07-31 15:30:46'),
(451, 3, 'S', '7000.00', '2025-08-25 16:32:37', '2025-08-25 16:32:37'),
(452, 1, 'Size S', '12000.00', '2025-08-25 16:41:08', '2025-08-25 16:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_items`
--

CREATE TABLE `wishlist_items` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `combo_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlist_items`
--

INSERT INTO `wishlist_items` (`id`, `user_id`, `product_id`, `combo_id`, `created_at`, `updated_at`) VALUES
(2, 16, NULL, 2, '2025-08-04 13:12:00', '2025-08-04 13:12:00'),
(3, 16, 90, NULL, '2025-08-22 06:46:09', '2025-08-22 06:46:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branches_branch_code_unique` (`branch_code`),
  ADD UNIQUE KEY `branches_name_unique` (`name`),
  ADD UNIQUE KEY `branches_address_unique` (`address`),
  ADD UNIQUE KEY `branches_phone_unique` (`phone`),
  ADD UNIQUE KEY `branches_email_unique` (`email`);

--
-- Indexes for table `branch_images`
--
ALTER TABLE `branch_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_images_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `branch_stocks`
--
ALTER TABLE `branch_stocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branch_stocks_branch_id_product_variant_id_unique` (`branch_id`,`product_variant_id`),
  ADD KEY `branch_stocks_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_items_cart_id_product_variant_id_combo_id_unique` (`cart_id`,`product_variant_id`,`combo_id`),
  ADD KEY `cart_items_product_variant_id_foreign` (`product_variant_id`),
  ADD KEY `cart_items_combo_id_foreign` (`combo_id`);

--
-- Indexes for table `cart_item_toppings`
--
ALTER TABLE `cart_item_toppings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_item_toppings_cart_item_id_foreign` (`cart_item_id`),
  ADD KEY `cart_item_toppings_topping_id_foreign` (`topping_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_messages_sender_id_foreign` (`sender_id`),
  ADD KEY `chat_messages_receiver_id_foreign` (`receiver_id`),
  ADD KEY `chat_messages_branch_id_foreign` (`branch_id`),
  ADD KEY `chat_messages_conversation_id_foreign` (`conversation_id`),
  ADD KEY `chat_messages_related_order_id_foreign` (`related_order_id`);

--
-- Indexes for table `combos`
--
ALTER TABLE `combos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `combos_sku_unique` (`sku`),
  ADD UNIQUE KEY `combos_slug_unique` (`slug`),
  ADD KEY `combos_category_id_foreign` (`category_id`),
  ADD KEY `combos_created_by_foreign` (`created_by`),
  ADD KEY `combos_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `combo_branch_stock`
--
ALTER TABLE `combo_branch_stock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `combo_branch_stock_combo_id_branch_id_unique` (`combo_id`,`branch_id`),
  ADD KEY `combo_branch_stock_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `combo_items`
--
ALTER TABLE `combo_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `combo_items_combo_id_product_variant_id_unique` (`combo_id`,`product_variant_id`),
  ADD KEY `combo_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`),
  ADD UNIQUE KEY `contacts_phone_unique` (`phone`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_customer_id_foreign` (`customer_id`),
  ADD KEY `conversations_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `conversation_users`
--
ALTER TABLE `conversation_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversation_users_conversation_id_foreign` (`conversation_id`),
  ADD KEY `conversation_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_codes_code_unique` (`code`),
  ADD KEY `discount_codes_created_by_foreign` (`created_by`),
  ADD KEY `discount_codes_is_active_start_date_end_date_index` (`is_active`,`start_date`,`end_date`),
  ADD KEY `discount_codes_discount_type_is_active_index` (`discount_type`,`is_active`);

--
-- Indexes for table `discount_code_branches`
--
ALTER TABLE `discount_code_branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_branches_discount_code_id_branch_id_unique` (`discount_code_id`,`branch_id`),
  ADD KEY `discount_code_branches_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `discount_code_products`
--
ALTER TABLE `discount_code_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_code_products_discount_code_id_foreign` (`discount_code_id`),
  ADD KEY `discount_code_products_product_id_foreign` (`product_id`),
  ADD KEY `discount_code_products_category_id_foreign` (`category_id`),
  ADD KEY `discount_code_products_combo_id_foreign` (`combo_id`),
  ADD KEY `discount_code_products_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `discount_usage_history`
--
ALTER TABLE `discount_usage_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_usage_history_order_id_foreign` (`order_id`),
  ADD KEY `discount_usage_history_branch_id_foreign` (`branch_id`),
  ADD KEY `discount_usage_history_discount_code_id_used_at_index` (`discount_code_id`,`used_at`),
  ADD KEY `discount_usage_history_user_id_used_at_index` (`user_id`,`used_at`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drivers_email_unique` (`email`),
  ADD KEY `drivers_application_id_foreign` (`application_id`),
  ADD KEY `drivers_locked_by_foreign` (`locked_by`),
  ADD KEY `drivers_unlocked_by_foreign` (`unlocked_by`),
  ADD KEY `drivers_status_changed_by_foreign` (`status_changed_by`),
  ADD KEY `drivers_status_is_available_index` (`status`,`is_available`),
  ADD KEY `drivers_created_at_index` (`created_at`),
  ADD KEY `drivers_updated_at_index` (`updated_at`),
  ADD KEY `drivers_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `driver_applications`
--
ALTER TABLE `driver_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `driver_applications_email_unique` (`email`),
  ADD UNIQUE KEY `driver_applications_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `driver_applications_id_card_number_unique` (`id_card_number`),
  ADD UNIQUE KEY `driver_applications_license_plate_unique` (`license_plate`),
  ADD UNIQUE KEY `driver_applications_driver_license_number_unique` (`driver_license_number`);

--
-- Indexes for table `driver_documents`
--
ALTER TABLE `driver_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_documents_driver_id_index` (`driver_id`),
  ADD KEY `driver_documents_license_number_index` (`license_number`);

--
-- Indexes for table `driver_locations`
--
ALTER TABLE `driver_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_locations_driver_id_index` (`driver_id`),
  ADD KEY `driver_locations_updated_at_index` (`updated_at`);

--
-- Indexes for table `driver_ratings`
--
ALTER TABLE `driver_ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `driver_ratings_user_id_driver_id_order_id_unique` (`user_id`,`driver_id`,`order_id`),
  ADD KEY `driver_ratings_driver_id_index` (`driver_id`),
  ADD KEY `driver_ratings_order_id_index` (`order_id`),
  ADD KEY `driver_ratings_rating_index` (`rating`),
  ADD KEY `driver_ratings_rated_at_index` (`rated_at`);

--
-- Indexes for table `driver_violations`
--
ALTER TABLE `driver_violations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_violations_driver_id_foreign` (`driver_id`),
  ADD KEY `driver_violations_reported_by_foreign` (`reported_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_code_unique` (`order_code`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_branch_id_foreign` (`branch_id`),
  ADD KEY `orders_driver_id_foreign` (`driver_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`),
  ADD KEY `orders_discount_code_id_foreign` (`discount_code_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_cancellations`
--
ALTER TABLE `order_cancellations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_cancellations_order_id_foreign` (`order_id`),
  ADD KEY `order_cancellations_cancelled_by_foreign` (`cancelled_by`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_variant_id_foreign` (`product_variant_id`),
  ADD KEY `order_items_combo_id_foreign` (`combo_id`);

--
-- Indexes for table `order_item_toppings`
--
ALTER TABLE `order_item_toppings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item_toppings_order_item_id_foreign` (`order_item_id`),
  ADD KEY `order_item_toppings_topping_id_foreign` (`topping_id`);

--
-- Indexes for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_histories_order_id_foreign` (`order_id`),
  ADD KEY `order_status_histories_changed_by_foreign` (`changed_by`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_txn_ref_unique` (`txn_ref`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `points_transactions`
--
ALTER TABLE `points_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `points_transactions_user_id_foreign` (`user_id`),
  ADD KEY `points_transactions_order_id_foreign` (`order_id`),
  ADD KEY `points_transactions_review_id_foreign` (`review_id`),
  ADD KEY `points_transactions_created_by_foreign` (`created_by`);

--
-- Indexes for table `point_rules`
--
ALTER TABLE `point_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_created_by_foreign` (`created_by`),
  ADD KEY `products_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `product_imgs`
--
ALTER TABLE `product_imgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_imgs_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_reviews_user_id_product_id_combo_id_order_id_unique` (`user_id`,`product_id`,`combo_id`,`order_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`),
  ADD KEY `product_reviews_combo_id_foreign` (`combo_id`),
  ADD KEY `product_reviews_order_id_foreign` (`order_id`),
  ADD KEY `product_reviews_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `product_toppings`
--
ALTER TABLE `product_toppings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_toppings_product_id_topping_id_unique` (`product_id`,`topping_id`),
  ADD KEY `product_toppings_topping_id_foreign` (`topping_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_variants_sku_unique` (`sku`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variant_details`
--
ALTER TABLE `product_variant_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pvd_product_variant_value_unique` (`product_variant_id`,`variant_value_id`),
  ADD KEY `product_variant_details_variant_value_id_foreign` (`variant_value_id`);

--
-- Indexes for table `promotion_branches`
--
ALTER TABLE `promotion_branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promotion_branches_promotion_program_id_branch_id_unique` (`promotion_program_id`,`branch_id`),
  ADD KEY `promotion_branches_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `promotion_discount_codes`
--
ALTER TABLE `promotion_discount_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promotion_discount_unique` (`promotion_program_id`,`discount_code_id`),
  ADD KEY `promotion_discount_codes_discount_code_id_foreign` (`discount_code_id`);

--
-- Indexes for table `promotion_programs`
--
ALTER TABLE `promotion_programs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotion_programs_created_by_foreign` (`created_by`);

--
-- Indexes for table `return_orders`
--
ALTER TABLE `return_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_orders_order_id_foreign` (`order_id`),
  ADD KEY `return_orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `review_helpfuls`
--
ALTER TABLE `review_helpfuls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `review_helpfuls_user_id_review_id_unique` (`user_id`,`review_id`),
  ADD KEY `review_helpfuls_review_id_foreign` (`review_id`);

--
-- Indexes for table `review_replies`
--
ALTER TABLE `review_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_replies_review_id_foreign` (`review_id`),
  ADD KEY `review_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `review_reports`
--
ALTER TABLE `review_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `review_reports_review_id_user_id_unique` (`review_id`,`user_id`),
  ADD KEY `review_reports_user_id_foreign` (`user_id`);

--
-- Indexes for table `reward_point_histories`
--
ALTER TABLE `reward_point_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reward_point_histories_user_id_foreign` (`user_id`),
  ADD KEY `reward_point_histories_order_id_foreign` (`order_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `toppings`
--
ALTER TABLE `toppings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `toppings_sku_unique` (`sku`),
  ADD KEY `toppings_created_by_foreign` (`created_by`),
  ADD KEY `toppings_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `topping_stocks`
--
ALTER TABLE `topping_stocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `topping_stocks_branch_id_topping_id_unique` (`branch_id`,`topping_id`),
  ADD KEY `topping_stocks_topping_id_foreign` (`topping_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`),
  ADD KEY `users_user_rank_id_foreign` (`user_rank_id`);

--
-- Indexes for table `user_discount_codes`
--
ALTER TABLE `user_discount_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_discount_codes_user_id_discount_code_id_unique` (`user_id`,`discount_code_id`),
  ADD KEY `user_discount_codes_discount_code_id_foreign` (`discount_code_id`);

--
-- Indexes for table `user_ranks`
--
ALTER TABLE `user_ranks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_ranks_slug_unique` (`slug`);

--
-- Indexes for table `user_rank_history`
--
ALTER TABLE `user_rank_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_rank_history_user_id_foreign` (`user_id`),
  ADD KEY `user_rank_history_old_rank_id_foreign` (`old_rank_id`),
  ADD KEY `user_rank_history_new_rank_id_foreign` (`new_rank_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `variant_attributes`
--
ALTER TABLE `variant_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `variant_attributes_name_unique` (`name`);

--
-- Indexes for table `variant_values`
--
ALTER TABLE `variant_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variant_values_variant_attribute_id_foreign` (`variant_attribute_id`);

--
-- Indexes for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wishlist_items_user_id_product_id_combo_id_unique` (`user_id`,`product_id`,`combo_id`),
  ADD KEY `wishlist_items_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_items_combo_id_foreign` (`combo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `branch_images`
--
ALTER TABLE `branch_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch_stocks`
--
ALTER TABLE `branch_stocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1634;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `cart_item_toppings`
--
ALTER TABLE `cart_item_toppings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `combos`
--
ALTER TABLE `combos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `combo_branch_stock`
--
ALTER TABLE `combo_branch_stock`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `combo_items`
--
ALTER TABLE `combo_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conversation_users`
--
ALTER TABLE `conversation_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `discount_code_branches`
--
ALTER TABLE `discount_code_branches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `discount_code_products`
--
ALTER TABLE `discount_code_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discount_usage_history`
--
ALTER TABLE `discount_usage_history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `driver_applications`
--
ALTER TABLE `driver_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `driver_documents`
--
ALTER TABLE `driver_documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `driver_locations`
--
ALTER TABLE `driver_locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `driver_ratings`
--
ALTER TABLE `driver_ratings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_violations`
--
ALTER TABLE `driver_violations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2011;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `order_cancellations`
--
ALTER TABLE `order_cancellations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `order_item_toppings`
--
ALTER TABLE `order_item_toppings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points_transactions`
--
ALTER TABLE `points_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `point_rules`
--
ALTER TABLE `point_rules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `product_imgs`
--
ALTER TABLE `product_imgs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `product_toppings`
--
ALTER TABLE `product_toppings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

--
-- AUTO_INCREMENT for table `product_variant_details`
--
ALTER TABLE `product_variant_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1084;

--
-- AUTO_INCREMENT for table `promotion_branches`
--
ALTER TABLE `promotion_branches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promotion_discount_codes`
--
ALTER TABLE `promotion_discount_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `promotion_programs`
--
ALTER TABLE `promotion_programs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `return_orders`
--
ALTER TABLE `return_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_helpfuls`
--
ALTER TABLE `review_helpfuls`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_replies`
--
ALTER TABLE `review_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_reports`
--
ALTER TABLE `review_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reward_point_histories`
--
ALTER TABLE `reward_point_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `toppings`
--
ALTER TABLE `toppings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `topping_stocks`
--
ALTER TABLE `topping_stocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_discount_codes`
--
ALTER TABLE `user_discount_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_ranks`
--
ALTER TABLE `user_ranks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_rank_history`
--
ALTER TABLE `user_rank_history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `variant_attributes`
--
ALTER TABLE `variant_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `variant_values`
--
ALTER TABLE `variant_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `branch_images`
--
ALTER TABLE `branch_images`
  ADD CONSTRAINT `branch_images_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `branch_stocks`
--
ALTER TABLE `branch_stocks`
  ADD CONSTRAINT `branch_stocks_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `branch_stocks_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_combo_id_foreign` FOREIGN KEY (`combo_id`) REFERENCES `combos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_item_toppings`
--
ALTER TABLE `cart_item_toppings`
  ADD CONSTRAINT `cart_item_toppings_cart_item_id_foreign` FOREIGN KEY (`cart_item_id`) REFERENCES `cart_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_item_toppings_topping_id_foreign` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `chat_messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `chat_messages_related_order_id_foreign` FOREIGN KEY (`related_order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `chat_messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `combos`
--
ALTER TABLE `combos`
  ADD CONSTRAINT `combos_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `combos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `combos_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `combo_branch_stock`
--
ALTER TABLE `combo_branch_stock`
  ADD CONSTRAINT `combo_branch_stock_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `combo_branch_stock_combo_id_foreign` FOREIGN KEY (`combo_id`) REFERENCES `combos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `combo_items`
--
ALTER TABLE `combo_items`
  ADD CONSTRAINT `combo_items_combo_id_foreign` FOREIGN KEY (`combo_id`) REFERENCES `combos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `combo_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `conversations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `conversation_users`
--
ALTER TABLE `conversation_users`
  ADD CONSTRAINT `conversation_users_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`),
  ADD CONSTRAINT `conversation_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD CONSTRAINT `discount_codes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `discount_code_branches`
--
ALTER TABLE `discount_code_branches`
  ADD CONSTRAINT `discount_code_branches_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_code_branches_discount_code_id_foreign` FOREIGN KEY (`discount_code_id`) REFERENCES `discount_codes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_code_products`
--
ALTER TABLE `discount_code_products`
  ADD CONSTRAINT `discount_code_products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_code_products_combo_id_foreign` FOREIGN KEY (`combo_id`) REFERENCES `combos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_code_products_discount_code_id_foreign` FOREIGN KEY (`discount_code_id`) REFERENCES `discount_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_code_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_code_products_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_usage_history`
--
ALTER TABLE `discount_usage_history`
  ADD CONSTRAINT `discount_usage_history_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `discount_usage_history_discount_code_id_foreign` FOREIGN KEY (`discount_code_id`) REFERENCES `discount_codes` (`id`),
  ADD CONSTRAINT `discount_usage_history_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_usage_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_application_id_foreign` FOREIGN KEY (`application_id`) REFERENCES `driver_applications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `drivers_locked_by_foreign` FOREIGN KEY (`locked_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `drivers_status_changed_by_foreign` FOREIGN KEY (`status_changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `drivers_unlocked_by_foreign` FOREIGN KEY (`unlocked_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `drivers_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `driver_documents`
--
ALTER TABLE `driver_documents`
  ADD CONSTRAINT `driver_documents_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_locations`
--
ALTER TABLE `driver_locations`
  ADD CONSTRAINT `driver_locations_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_ratings`
--
ALTER TABLE `driver_ratings`
  ADD CONSTRAINT `driver_ratings_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `driver_violations`
--
ALTER TABLE `driver_violations`
  ADD CONSTRAINT `driver_violations_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `driver_violations_reported_by_foreign` FOREIGN KEY (`reported_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `orders_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_discount_code_id_foreign` FOREIGN KEY (`discount_code_id`) REFERENCES `discount_codes` (`id`),
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`);

--
-- Constraints for table `order_cancellations`
--
ALTER TABLE `order_cancellations`
  ADD CONSTRAINT `order_cancellations_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `order_cancellations_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_combo_id_foreign` FOREIGN KEY (`combo_id`) REFERENCES `combos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_item_toppings`
--
ALTER TABLE `order_item_toppings`
  ADD CONSTRAINT `order_item_toppings_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_item_toppings_topping_id_foreign` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD CONSTRAINT `order_status_histories_changed_by_foreign` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_status_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `points_transactions`
--
ALTER TABLE `points_transactions`
  ADD CONSTRAINT `points_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `points_transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `points_transactions_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`),
  ADD CONSTRAINT `points_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_imgs`
--
ALTER TABLE `product_imgs`
  ADD CONSTRAINT `product_imgs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_reviews_combo_id_foreign` FOREIGN KEY (`combo_id`) REFERENCES `combos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_toppings`
--
ALTER TABLE `product_toppings`
  ADD CONSTRAINT `product_toppings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_toppings_topping_id_foreign` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variant_details`
--
ALTER TABLE `product_variant_details`
  ADD CONSTRAINT `product_variant_details_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variant_details_variant_value_id_foreign` FOREIGN KEY (`variant_value_id`) REFERENCES `variant_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotion_branches`
--
ALTER TABLE `promotion_branches`
  ADD CONSTRAINT `promotion_branches_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotion_branches_promotion_program_id_foreign` FOREIGN KEY (`promotion_program_id`) REFERENCES `promotion_programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotion_discount_codes`
--
ALTER TABLE `promotion_discount_codes`
  ADD CONSTRAINT `promotion_discount_codes_discount_code_id_foreign` FOREIGN KEY (`discount_code_id`) REFERENCES `discount_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotion_discount_codes_promotion_program_id_foreign` FOREIGN KEY (`promotion_program_id`) REFERENCES `promotion_programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotion_programs`
--
ALTER TABLE `promotion_programs`
  ADD CONSTRAINT `promotion_programs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `return_orders`
--
ALTER TABLE `return_orders`
  ADD CONSTRAINT `return_orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `return_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review_helpfuls`
--
ALTER TABLE `review_helpfuls`
  ADD CONSTRAINT `review_helpfuls_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_helpfuls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review_replies`
--
ALTER TABLE `review_replies`
  ADD CONSTRAINT `review_replies_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review_reports`
--
ALTER TABLE `review_reports`
  ADD CONSTRAINT `review_reports_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reward_point_histories`
--
ALTER TABLE `reward_point_histories`
  ADD CONSTRAINT `reward_point_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reward_point_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `toppings`
--
ALTER TABLE `toppings`
  ADD CONSTRAINT `toppings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `toppings_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `topping_stocks`
--
ALTER TABLE `topping_stocks`
  ADD CONSTRAINT `topping_stocks_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `topping_stocks_topping_id_foreign` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_user_rank_id_foreign` FOREIGN KEY (`user_rank_id`) REFERENCES `user_ranks` (`id`);

--
-- Constraints for table `user_discount_codes`
--
ALTER TABLE `user_discount_codes`
  ADD CONSTRAINT `user_discount_codes_discount_code_id_foreign` FOREIGN KEY (`discount_code_id`) REFERENCES `discount_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_discount_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_rank_history`
--
ALTER TABLE `user_rank_history`
  ADD CONSTRAINT `user_rank_history_new_rank_id_foreign` FOREIGN KEY (`new_rank_id`) REFERENCES `user_ranks` (`id`),
  ADD CONSTRAINT `user_rank_history_old_rank_id_foreign` FOREIGN KEY (`old_rank_id`) REFERENCES `user_ranks` (`id`),
  ADD CONSTRAINT `user_rank_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variant_values`
--
ALTER TABLE `variant_values`
  ADD CONSTRAINT `variant_values_variant_attribute_id_foreign` FOREIGN KEY (`variant_attribute_id`) REFERENCES `variant_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD CONSTRAINT `wishlist_items_combo_id_foreign` FOREIGN KEY (`combo_id`) REFERENCES `combos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
