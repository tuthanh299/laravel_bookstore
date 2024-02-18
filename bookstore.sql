-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 18, 2024 lúc 04:24 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sách Giáo Khoa', 0, 'sach-giao-khoa', '2023-12-18 07:33:19', '2023-12-18 07:33:19', NULL),
(2, 'Truyện Tranh', 0, 'truyen-tranh', '2023-12-18 07:33:45', '2023-12-18 07:33:45', NULL),
(3, 'Sách Khoa Học', 0, 'sach-khoa-hoc', '2023-12-18 07:33:56', '2023-12-18 07:33:56', NULL),
(4, 'Truyện Ngụ Ngôn', 2, 'truyen-ngu-ngon', '2023-12-18 07:34:47', '2023-12-18 07:34:47', NULL),
(6, 'Truyện Cổ Tích', 2, 'truyen-co-tich', '2023-12-18 07:35:25', '2023-12-18 07:35:25', NULL),
(7, 'Truyện Ngụ Ngôn Nước Ngoài', 4, 'truyen-ngu-ngon-nuoc-ngoai', '2023-12-18 07:36:17', '2023-12-18 07:36:17', NULL),
(8, 'Truyện Ngụ Ngôn Việt Nam', 4, 'truyen-ngu-ngon-viet-nam', '2023-12-18 07:36:31', '2023-12-18 07:36:31', NULL),
(9, 'Sách THPT', 1, 'sach-thpt', '2023-12-18 07:37:00', '2024-01-17 10:07:38', '2024-01-17 10:07:38'),
(10, 'Sách THCS edit 2', 1, 'sach-thcs-edit-2', '2023-12-18 07:37:14', '2023-12-18 08:41:09', '2023-12-18 08:41:09'),
(11, 'mmtest', 0, 'mmtest', '2023-12-23 07:23:05', '2023-12-23 07:23:08', '2023-12-23 07:23:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(191) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `slug`, `deleted_at`) VALUES
(1, 'Menu 1', 0, NULL, '2023-12-21 10:02:58', '', '2023-12-21 10:02:58'),
(2, 'Menu 2 1', 0, NULL, '2023-12-21 10:03:06', 'menu-2-1', NULL),
(3, 'Menu 3', 0, NULL, NULL, '', NULL),
(4, 'Menu 1.1 edit', 1, NULL, '2023-12-21 09:15:36', 'menu-11-edit', NULL),
(5, 'Menu 1.2', 1, NULL, NULL, '', NULL),
(6, 'Menu 1.1.1', 4, NULL, NULL, '', NULL),
(7, 'Menu 1.1.1.1', 6, '2023-12-21 08:23:32', '2023-12-21 08:23:32', '', NULL),
(8, 'Menu 2.2', 2, '2023-12-21 08:33:36', '2023-12-21 08:33:36', '', NULL),
(9, 'Menu 2.2.2', 2, '2023-12-21 08:33:43', '2023-12-21 08:33:43', '', NULL),
(10, 'Menu 2.2.2.2', 2, '2023-12-21 08:33:52', '2023-12-21 08:33:52', '', NULL),
(11, 'Menu 4', 0, '2023-12-21 08:33:59', '2023-12-21 08:33:59', '', NULL),
(12, 'Menu 5', 0, '2023-12-21 08:41:22', '2023-12-21 08:41:22', 'menu-5', NULL),
(13, 'menu 222', 0, '2023-12-21 10:03:15', '2023-12-21 10:03:15', 'menu-222', NULL),
(14, 'menu test', 0, '2023-12-23 06:17:09', '2023-12-23 06:26:42', 'menu-test', '2023-12-23 06:26:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 2),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(8, '2023_12_05_135031_create_categories_table', 2),
(9, '2023_12_18_153441_add_column_deleted_at_table_categories', 3),
(10, '2023_12_18_154505_create_menus_table', 4),
(11, '2023_12_21_153657_add_column_slug_to_menus_table', 5),
(12, '2023_12_21_165541_add_column_soft_delete_to_menus_table', 6),
(13, '2023_12_23_135636_create_products_table', 7),
(14, '2023_12_23_135958_create_product_images_table', 7),
(15, '2023_12_23_140125_create_tags_table', 7),
(17, '2023_12_23_140310_create_product_tags_table', 8),
(19, '2024_01_04_133119_add_column_feature_image_name', 9),
(20, '2024_01_04_135858_add_column_image_name_to_table_product_image', 10),
(21, '2024_01_16_165507_add_column_delete_at_to_product_table', 11),
(22, '2024_01_17_152726_create_sliders_table', 12),
(23, '2024_01_17_165307_add_column_delete_at_to_sliders', 13),
(24, '2024_01_17_171014_create_settings_table', 14),
(25, '2024_01_23_155137_add_column_type_settings_table', 15),
(26, '2024_01_23_163824_create_roles_table', 16),
(27, '2024_01_23_163848_create_permissions_table', 16),
(28, '2024_01_23_163955_create_table_user_role', 16),
(29, '2024_01_23_164057_create_table_permission_role', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `feature_image_path` varchar(191) DEFAULT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`) VALUES
(1, 'Vật lý đại cương', '20000', '/storage/product/1/QNhEKpSpNwEHjtdGU34a.jpg', '<p>Vật l&yacute; đại cương</p>', 1, 1, '2024-01-04 06:56:00', '2024-01-04 06:56:00', 'BG-169PB-2B.jpg', NULL),
(2, 'sp test', '10000', '/storage/product/1/50IUvo3OUBim8WtvKa0D.png', '<p>Nội dung test</p>', 1, 1, '2024-01-04 07:12:34', '2024-01-04 07:12:34', 'BA-110XWS-7AB.png', NULL),
(3, 'sp test', '10000', '/storage/product/1/yJMQ3TCdQPP4McqfZAmG.png', '<p>Nội dung test</p>', 1, 1, '2024-01-04 07:13:03', '2024-01-04 07:13:03', 'BA-110XWS-7AB.png', NULL),
(4, 'SP test 2', '12000', '/storage/product/1/e49ukyYjFBR4us9I7VRq.png', '<p>Nội dung test 2</p>\r\n<p>&nbsp;</p>', 1, 9, '2024-01-04 07:14:02', '2024-01-04 07:14:02', 'BGA-310RP-3A.png', NULL),
(5, 'SP test 2', '12000', '/storage/product/1/3yzWketXuM3HqWf33sAE.png', '<p>Nội dung test 2</p>\r\n<p>&nbsp;</p>', 1, 9, '2024-01-04 07:20:21', '2024-01-04 07:20:21', 'BGA-310RP-3A.png', NULL),
(6, 'Mắt Biếc', '70000', '/storage/product/1/IPVNoRKx9RlinWArtCSX.png', '', 1, 2, '2024-01-04 07:34:30', '2024-01-04 07:34:30', 'BGD-565SC-2A.png', NULL),
(7, 'Mắt Biếc', '70000', '/storage/product/1/f9DnBNa4Ln9ZDcUJYQBY.png', '<p>Mắt biếc</p>\r\n<p>&nbsp;</p>', 1, 2, '2024-01-04 07:35:01', '2024-01-04 07:35:01', 'BGD-565SC-2A.png', NULL),
(8, 'Mắt Biếc', '70000', '/storage/product/1/zNf3V2d9JYcCviqr8kF9.png', '<p>Mắt biếc</p>\r\n<p>&nbsp;</p>', 1, 2, '2024-01-04 07:35:43', '2024-01-04 07:35:43', 'BGD-565SC-2A.png', NULL),
(9, 'Mắt Biếc', '70000', '/storage/product/1/uGiKegcSQlTBiJCb5szk.png', '<p>Mắt biếc</p>\r\n<p>&nbsp;</p>', 1, 2, '2024-01-04 07:35:48', '2024-01-04 07:35:48', 'BGD-565SC-2A.png', NULL),
(10, 'Mắt Biếc', '70000', '/storage/product/1/kVkm2Sghj1f6I5DygV84.png', '<p>Mắt biếc</p>', 1, 2, '2024-01-04 07:36:38', '2024-01-04 07:36:38', 'BGA-290SA-2AB.png', NULL),
(11, 'Mắt Biếc', '70000', '/storage/product/1/bqLORquDpwkRXZ7OS6mQ.png', '<p>Mắt biếc</p>', 1, 2, '2024-01-04 07:37:17', '2024-01-04 07:37:17', 'BGA-290SA-2AB.png', NULL),
(12, 'Mắt Biếc', '70000', '/storage/product/1/RzM626usQHS7HLyQxV4R.png', '<p>Mắt biếc</p>', 1, 2, '2024-01-04 07:38:03', '2024-01-04 07:38:03', 'BGA-290SA-2AB.png', NULL),
(13, 'Mắt Biếc', '70000', '/storage/product/1/QlTijauE38ujlAs4eCyO.png', '<p>Mắt biếc</p>', 1, 2, '2024-01-04 07:38:28', '2024-01-04 07:38:28', 'BGA-290SA-2AB.png', NULL),
(14, 'Mắt Biếc', '70000', '/storage/product/1/ZtV7m5nq6j9LnzTgIrLg.png', '<p>Mắt biếc</p>', 1, 2, '2024-01-04 07:40:06', '2024-01-04 07:40:06', 'BGA-290SA-2AB.png', NULL),
(15, 'SP TEST 2X', '70000', '/storage/product/1/075GszoDBbAV6SPhg0wf.jpg', '<p>content</p>', 1, 1, '2024-01-04 07:47:06', '2024-01-23 09:26:38', 'BG-169PB-2B.jpg', '2024-01-23 09:26:38'),
(16, 'SP TEST 2Xzzz', '70000', '/storage/product/1/MLZKlUQyknCBjeK91JkY.jpg', '<p>content edit</p>', 1, 1, '2024-01-04 07:49:20', '2024-01-16 10:04:16', 'BGA-290PA-4AA.jpg', '2024-01-16 10:04:16'),
(17, 'SP TEST 2X', '70000', '/storage/product/1/8KSnkHeYInhMSEbfcrr2.jpg', '<p>content</p>', 1, 1, '2024-01-04 07:51:08', '2024-01-16 10:04:10', 'BG-169PB-2B.jpg', '2024-01-16 10:04:10'),
(19, 'sp test trans', '999999', '/storage/product/1/GNjmE2JShv8wZ5lnaeZd.jpg', '<p>xxx</p>', 1, 1, '2024-01-16 07:38:52', '2024-01-16 09:59:46', 'BG-169PB-2B.jpg', '2024-01-16 09:59:46'),
(21, 'sp thử', '190000', '/storage/product/1/ppkBBVoqKU0YlfFkQeUd.png', '<p>zzz</p>', 1, 1, '2024-01-16 07:59:08', '2024-01-16 09:57:26', 'BGA-290SA-2A.png', '2024-01-16 09:57:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(191) UNSIGNED NOT NULL,
  `image_path` varchar(191) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(1, '/storage/product/1/xxoMcPUY960Q5NhTbJgs.png', 3, '2024-01-04 07:13:03', '2024-01-04 07:13:03', 'BA-110XWS-7AB.png'),
(2, '/storage/product/1/G4aYlMjpvh7DruVI7JDu.jpg', 3, '2024-01-04 07:13:03', '2024-01-04 07:13:03', 'BG-169PB-2A.jpg'),
(3, '/storage/product/1/CXxOQWg5mKh3QAsYDpp4.jpg', 3, '2024-01-04 07:13:03', '2024-01-04 07:13:03', 'BG-169PB-2B.jpg'),
(4, '/storage/product/1/lDDAUOZLA9si8mWUdaBG.png', 4, '2024-01-04 07:14:02', '2024-01-04 07:14:02', 'BGA-290SA-2A.png'),
(5, '/storage/product/1/e66vFSOhFlHfI9EGTppL.png', 4, '2024-01-04 07:14:02', '2024-01-04 07:14:02', 'BGA-290SA-2AA.png'),
(6, '/storage/product/1/X3wfmQk26HTrNwJKeABn.png', 4, '2024-01-04 07:14:02', '2024-01-04 07:14:02', 'BGA-290SA-2AB.png'),
(7, '/storage/product/1/MI7Ocvq7kGnUUaCJIhtk.png', 4, '2024-01-04 07:14:02', '2024-01-04 07:14:02', 'BGA-310RP-3A.png'),
(8, '/storage/product/1/BOD0ELVTve8pmzkHT2SQ.png', 5, '2024-01-04 07:20:21', '2024-01-04 07:20:21', 'BGA-290SA-2A.png'),
(9, '/storage/product/1/7RulC7Jm51esKGEqfeFq.png', 5, '2024-01-04 07:20:21', '2024-01-04 07:20:21', 'BGA-290SA-2AA.png'),
(10, '/storage/product/1/6cxZfOiEpxELq1JQOg3N.png', 5, '2024-01-04 07:20:21', '2024-01-04 07:20:21', 'BGA-290SA-2AB.png'),
(11, '/storage/product/1/Kelx1nI5uZuqPY1HY7pb.png', 5, '2024-01-04 07:20:21', '2024-01-04 07:20:21', 'BGA-310RP-3A.png'),
(12, '/storage/product/1/a8LhJTMeOj0r7z0cJerL.png', 6, '2024-01-04 07:34:30', '2024-01-04 07:34:30', 'GM-S2100B-8AB.png'),
(13, '/storage/product/1/ZubxwTY77IslNxCmgaR8.png', 6, '2024-01-04 07:34:30', '2024-01-04 07:34:30', 'GM-S2100PG-1A4.png'),
(14, '/storage/product/1/r02OHzpFiaCoHWajpwVx.png', 6, '2024-01-04 07:34:30', '2024-01-04 07:34:30', 'GM-S2100PG-1A4A.png'),
(15, '/storage/product/1/p73vBzWN7xrp4N0tQy4m.png', 7, '2024-01-04 07:35:01', '2024-01-04 07:35:01', 'GM-S2100B-8AB.png'),
(16, '/storage/product/1/9Wk89GQBTJjkUENs8thd.png', 7, '2024-01-04 07:35:01', '2024-01-04 07:35:01', 'GM-S2100PG-1A4.png'),
(17, '/storage/product/1/qYQg6vnIf3enQp49Ld7x.png', 7, '2024-01-04 07:35:01', '2024-01-04 07:35:01', 'GM-S2100PG-1A4A.png'),
(18, '/storage/product/1/FjFhnvDnKh0EFbB6j4tY.png', 8, '2024-01-04 07:35:43', '2024-01-04 07:35:43', 'GM-S2100B-8AB.png'),
(19, '/storage/product/1/3NKwBsVz6nri6EFUZUfJ.png', 8, '2024-01-04 07:35:43', '2024-01-04 07:35:43', 'GM-S2100PG-1A4.png'),
(20, '/storage/product/1/PU2TJPblsfm1OtBkHkxw.png', 8, '2024-01-04 07:35:43', '2024-01-04 07:35:43', 'GM-S2100PG-1A4A.png'),
(21, '/storage/product/1/gF8wLrrbF0fqhpPjtltR.png', 9, '2024-01-04 07:35:48', '2024-01-04 07:35:48', 'GM-S2100B-8AB.png'),
(22, '/storage/product/1/9mf6OpQp4R9ZGXBe29M2.png', 9, '2024-01-04 07:35:48', '2024-01-04 07:35:48', 'GM-S2100PG-1A4.png'),
(23, '/storage/product/1/T7uuHeEdKkrA3X7iJzHr.png', 9, '2024-01-04 07:35:48', '2024-01-04 07:35:48', 'GM-S2100PG-1A4A.png'),
(24, '/storage/product/1/0oKPMKjq1hCMWCnXrF5b.png', 10, '2024-01-04 07:36:38', '2024-01-04 07:36:38', 'MRG-B2000SH.png'),
(25, '/storage/product/1/xQIOblVsPlUGhq5KFId2.jpeg', 10, '2024-01-04 07:36:38', '2024-01-04 07:36:38', 'MRG-B2000SHA.jpeg'),
(26, '/storage/product/1/2KdX2ZGopSrK8sh2Frpo.jpeg', 10, '2024-01-04 07:36:38', '2024-01-04 07:36:38', 'MRG-B2000SHB.jpeg'),
(27, '/storage/product/1/BMc7Op2gWuHMNSI5hZgi.jpg', 10, '2024-01-04 07:36:38', '2024-01-04 07:36:38', 'MRG-B5000B-1A.jpg'),
(28, '/storage/product/1/wxCRuaELfuh1rEMCj6uG.png', 11, '2024-01-04 07:37:17', '2024-01-04 07:37:17', 'MRG-B2000SH.png'),
(29, '/storage/product/1/SK2wS8948EMql6H1wa6z.jpeg', 11, '2024-01-04 07:37:17', '2024-01-04 07:37:17', 'MRG-B2000SHA.jpeg'),
(30, '/storage/product/1/wBbjiS6PSZNyxgZgsaen.jpeg', 11, '2024-01-04 07:37:17', '2024-01-04 07:37:17', 'MRG-B2000SHB.jpeg'),
(31, '/storage/product/1/NeSmrtjXf6ghmK3nWM7J.jpg', 11, '2024-01-04 07:37:17', '2024-01-04 07:37:17', 'MRG-B5000B-1A.jpg'),
(32, '/storage/product/1/0zSH5yCyTAwaqWJGZTqQ.png', 12, '2024-01-04 07:38:03', '2024-01-04 07:38:03', 'MRG-B2000SH.png'),
(33, '/storage/product/1/5KrO2qdyoh9egfioGfmn.jpeg', 12, '2024-01-04 07:38:03', '2024-01-04 07:38:03', 'MRG-B2000SHA.jpeg'),
(34, '/storage/product/1/SHowhCXPZ8d7Hwjt897Y.jpeg', 12, '2024-01-04 07:38:03', '2024-01-04 07:38:03', 'MRG-B2000SHB.jpeg'),
(35, '/storage/product/1/SHt4nyx4ZCzzAsg1SPaC.jpg', 12, '2024-01-04 07:38:03', '2024-01-04 07:38:03', 'MRG-B5000B-1A.jpg'),
(36, '/storage/product/1/dr9UFuLo1FgZRSEQtxEA.png', 13, '2024-01-04 07:38:28', '2024-01-04 07:38:28', 'MRG-B2000SH.png'),
(37, '/storage/product/1/1jX8ecRq90kkfIaU1E5O.jpeg', 13, '2024-01-04 07:38:28', '2024-01-04 07:38:28', 'MRG-B2000SHA.jpeg'),
(38, '/storage/product/1/W8RwlYpuQUGMnBmh1fQ8.jpeg', 13, '2024-01-04 07:38:28', '2024-01-04 07:38:28', 'MRG-B2000SHB.jpeg'),
(39, '/storage/product/1/tkSvl9EdUNGsx5f8CfAZ.jpg', 13, '2024-01-04 07:38:28', '2024-01-04 07:38:28', 'MRG-B5000B-1A.jpg'),
(40, '/storage/product/1/Gs4P9Nule1xGoKAonaRF.png', 14, '2024-01-04 07:40:06', '2024-01-04 07:40:06', 'MRG-B2000SH.png'),
(41, '/storage/product/1/H9XS3Cm8d56Bk9A9mnQ8.jpeg', 14, '2024-01-04 07:40:07', '2024-01-04 07:40:07', 'MRG-B2000SHA.jpeg'),
(42, '/storage/product/1/E3tEvXZNnGTe6EX3v8EM.jpeg', 14, '2024-01-04 07:40:07', '2024-01-04 07:40:07', 'MRG-B2000SHB.jpeg'),
(43, '/storage/product/1/Xr79d7b8w0C3gBIzjXXH.jpg', 14, '2024-01-04 07:40:07', '2024-01-04 07:40:07', 'MRG-B5000B-1A.jpg'),
(44, '/storage/product/1/qGJc2z109kUQj3zG816M.png', 15, '2024-01-04 07:47:06', '2024-01-04 07:47:06', 'BGA-290SA-2A.png'),
(45, '/storage/product/1/Zs5FKPSq88L1uPppFyx8.png', 15, '2024-01-04 07:47:06', '2024-01-04 07:47:06', 'BGA-290SA-2AA.png'),
(46, '/storage/product/1/7vVhvsvtN5zDUHZyRG3L.png', 15, '2024-01-04 07:47:06', '2024-01-04 07:47:06', 'BGA-290SA-2AB.png'),
(47, '/storage/product/1/2yQiuefvdMfC6GVSTJhn.png', 16, '2024-01-04 07:49:20', '2024-01-04 07:49:20', 'BGA-290SA-2A.png'),
(48, '/storage/product/1/5ScJ2th1kPao5Vmhw45g.png', 16, '2024-01-04 07:49:20', '2024-01-04 07:49:20', 'BGA-290SA-2AA.png'),
(49, '/storage/product/1/Rtg0ulJ3pyZRMmD0Iu5M.png', 16, '2024-01-04 07:49:20', '2024-01-04 07:49:20', 'BGA-290SA-2AB.png'),
(50, '/storage/product/1/upJQCJcTDiKmzGj9JlpN.png', 17, '2024-01-04 07:51:08', '2024-01-04 07:51:08', 'BGA-290SA-2A.png'),
(51, '/storage/product/1/YAHYH5qbuem8E41xXV4j.png', 17, '2024-01-04 07:51:08', '2024-01-04 07:51:08', 'BGA-290SA-2AA.png'),
(52, '/storage/product/1/tjsoxTSA8HGZpsQt41m0.png', 17, '2024-01-04 07:51:08', '2024-01-04 07:51:08', 'BGA-290SA-2AB.png'),
(55, '/storage/product/1/sBkNjsqYJ5D2KSjnHsq8.png', 21, '2024-01-16 07:59:08', '2024-01-16 07:59:08', 'BGA-290SA-2AB.png'),
(56, '/storage/product/1/MuJLPQfxbALXvMzDr8vp.png', 21, '2024-01-16 07:59:08', '2024-01-16 07:59:08', 'BGA-310RP-3A.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 16, 2, NULL, NULL),
(2, 16, 3, NULL, NULL),
(3, 16, 4, NULL, NULL),
(4, 17, 2, '2024-01-04 07:51:08', '2024-01-04 07:51:08'),
(5, 17, 3, '2024-01-04 07:51:08', '2024-01-04 07:51:08'),
(6, 17, 4, '2024-01-04 07:51:08', '2024-01-04 07:51:08'),
(7, 19, 5, '2024-01-16 07:38:52', '2024-01-16 07:38:52'),
(8, 21, 6, '2024-01-16 07:59:08', '2024-01-16 07:59:08'),
(9, 24, 7, '2024-01-16 08:02:05', '2024-01-16 08:02:05'),
(10, 25, 8, '2024-01-16 08:02:25', '2024-01-16 08:02:25'),
(11, 26, 9, '2024-01-16 08:02:49', '2024-01-16 08:02:49'),
(12, 27, 10, '2024-01-16 08:03:21', '2024-01-16 08:03:21'),
(13, 29, 11, '2024-01-16 08:03:46', '2024-01-16 08:03:46'),
(14, 30, 12, '2024-01-16 08:05:18', '2024-01-16 08:05:18'),
(15, 32, 13, '2024-01-16 08:08:31', '2024-01-16 08:08:31'),
(16, 35, 7, '2024-01-16 08:09:27', '2024-01-16 08:09:27'),
(17, 16, 18, '2024-01-16 09:16:26', '2024-01-16 09:16:26'),
(18, 16, 19, '2024-01-16 09:16:26', '2024-01-16 09:16:26'),
(19, 16, 20, '2024-01-16 09:16:26', '2024-01-16 09:16:26'),
(20, 16, 21, '2024-01-16 09:16:26', '2024-01-16 09:16:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Quản trị hệ thống', NULL, NULL),
(2, 'guest', 'Khách hàng', NULL, NULL),
(3, 'developer', 'Phát triển hệ thống', NULL, NULL),
(4, 'content', 'Chỉnh sửa nội dung', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL),
(2, 4, 3, NULL, NULL),
(3, 6, 1, NULL, NULL),
(4, 6, 2, NULL, NULL),
(5, 6, 3, NULL, NULL),
(6, 9, 2, NULL, NULL),
(7, 9, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(191) NOT NULL,
  `config_value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`, `type`) VALUES
(1, 'phone number', '0987654321', '2024-01-23 08:28:09', '2024-01-23 08:28:09', ''),
(2, 'face', 'adb', '2024-01-23 08:32:44', '2024-01-23 08:32:44', ''),
(3, 'social', 'socila test', '2024-01-23 08:38:08', '2024-01-23 08:38:08', ''),
(4, 'zalo2', 'asfas', '2024-01-23 08:45:52', '2024-01-23 08:45:52', ''),
(5, 'zalo x', 'zlo', '2024-01-23 08:56:31', '2024-01-23 08:56:31', 'Text');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `image_path` varchar(191) NOT NULL,
  `image_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image_path`, `image_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'slidere', 'sfas', '/storage/slider/1/zbedXBcpfSePtUu9Td11.jpg', 'BG-169PB-2B.jpg', '2024-01-17 09:54:45', '2024-01-23 09:26:45', '2024-01-23 09:26:45'),
(3, 'saf', 'asfas', '/storage/slider/1/GnmdjmOVmAdOqnxQgt27.jpg', 'BGA-290PA-4AA.jpg', '2024-01-17 09:56:44', '2024-01-17 09:56:51', '2024-01-17 09:56:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(191) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ngôn tình', '2024-01-04 07:36:38', '2024-01-04 07:36:38'),
(2, 'tag1', '2024-01-04 07:47:06', '2024-01-04 07:47:06'),
(3, 'tag2', '2024-01-04 07:47:06', '2024-01-04 07:47:06'),
(4, 'tag3', '2024-01-04 07:47:06', '2024-01-04 07:47:06'),
(5, 'test-tag', '2024-01-16 07:38:52', '2024-01-16 07:38:52'),
(6, 'tagtest', '2024-01-16 07:59:08', '2024-01-16 07:59:08'),
(7, 't', '2024-01-16 08:02:05', '2024-01-16 08:02:05'),
(8, 'tt', '2024-01-16 08:02:25', '2024-01-16 08:02:25'),
(9, 'adasd', '2024-01-16 08:02:49', '2024-01-16 08:02:49'),
(10, 'asfa', '2024-01-16 08:03:21', '2024-01-16 08:03:21'),
(11, 'asdfas', '2024-01-16 08:03:46', '2024-01-16 08:03:46'),
(12, 'asdf', '2024-01-16 08:05:18', '2024-01-16 08:05:18'),
(13, 'aaa', '2024-01-16 08:08:31', '2024-01-16 08:08:31'),
(18, '2', '2024-01-16 09:16:26', '2024-01-16 09:16:26'),
(19, '3', '2024-01-16 09:16:26', '2024-01-16 09:16:26'),
(20, '4', '2024-01-16 09:16:26', '2024-01-16 09:16:26'),
(21, 'tag2x', '2024-01-16 09:16:26', '2024-01-16 09:16:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', 'admin@gmail.com', NULL, '$2y$12$qKzKoi93ILSooV5MTiaSP.yLXNPHm94z7frInrSVb4j1gwk8DXmjS', NULL, NULL, NULL),
(2, 'Lê Thanh Tú', 'adm1@gmail.com', NULL, '$2y$12$DW.Hjv2XUKELPHpBUj9vS.h.lyLJKb7GHwDg9Jgjumz/c1AKx.d7O', NULL, '2024-01-26 08:06:50', '2024-01-26 08:06:50'),
(4, 'Lê Thanh Tú 2', 'adm2@gmail.com', NULL, '$2y$12$1qRpKqO3.CoZqKUgx3/EiuJeNcoV.zEmNkllefE13ORybFC0XKM5W', NULL, '2024-01-26 08:08:27', '2024-01-26 08:08:27'),
(6, 'Lê Thanh Tú 3', 'adm3@gmail.com', NULL, '$2y$12$wdl1xbnuo96kUEvrX4yQDO8Aqm82rqUN2EsVQw0FpoNMMU.0hF14K', NULL, '2024-01-26 08:13:58', '2024-01-26 08:13:58'),
(9, 'adm', 'adm12@gmail.com', NULL, '$2y$12$/77rNFjzrlxmDYbWyTjn4.4HRWp9CaTWqGQwdi2Vsk63rq/5ww6MS', NULL, '2024-01-26 08:14:59', '2024-01-26 08:14:59');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
