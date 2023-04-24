-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 21, 2023 at 02:29 PM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_pinjam`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` tinyint NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Devices'),
(2, 'Tools'),
(3, 'Microcontroller'),
(4, 'Networking');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int NOT NULL,
  `murid_id` mediumint NOT NULL,
  `items_id` mediumint NOT NULL,
  `date_start` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_end` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `murid_id`, `items_id`, `date_start`, `date_end`, `status`) VALUES
(1, 3, 11, '18/4/2023 - 07:26:57', '2023/04/18 - 07:54:28', 1),
(2, 3, 9, '18/4/2023 - 07:26:57', '2023/04/18 - 07:54:52', 1),
(3, 3, 9, '18/04/2023 - 22:28:58', '18/04/2023 - 22:45:06', 1),
(4, 3, 10, '18/04/2023 - 22:28:58', '18/04/2023 - 22:46:16', 1),
(5, 3, 11, '18/04/2023 - 22:28:58', '18/04/2023 - 22:46:24', 1),
(6, 3, 9, '20/04/2023 - 07:16:52', '', 0),
(7, 3, 10, '20/04/2023 - 07:16:52', '', 0),
(8, 3, 11, '20/04/2023 - 07:16:52', '', 0),
(9, 3, 1, '20/04/2023 - 07:16:52', '', 0),
(10, 3, 4, '20/04/2023 - 07:16:52', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` mediumint NOT NULL,
  `type_id` smallint NOT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `murid_id` mediumint NOT NULL DEFAULT '-1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `type_id`, `item_code`, `murid_id`, `status`) VALUES
(1, 1, 'Laptop-Lenovo-1', 3, 0),
(2, 1, 'Laptop-Lenovo-2', -1, 1),
(3, 2, 'Laptop-Dell-1', -1, 1),
(4, 2, 'Laptop-Dell-2', 3, 0),
(7, 3, 'Tang-Crimping-RJ45-1', -1, 1),
(8, 3, 'Tang-Crimping-RJ45-2', -1, 1),
(9, 4, 'arduino-r3-1', 3, 0),
(10, 4, 'arduino-r3-2', 3, 0),
(11, 4, 'arduino-r3-3', 3, 0),
(12, 5, 'TL-WR840N-1', -1, 1),
(13, 5, 'TL-WR840N-2', -1, 1),
(14, 16, 'Laptop-ROG-41', -1, 1),
(15, 16, 'Laptop-ROG-42', -1, 1),
(16, 16, 'Laptop-ROG-43', -1, 1),
(17, 16, 'Laptop-ROG-44', -1, 1),
(18, 16, 'Laptop-ROG-45', -1, 1),
(19, 16, 'Laptop-ROG-46', -1, 1),
(20, 16, 'Laptop-ROG-47', -1, 1),
(21, 16, 'Laptop-ROG-48', -1, 1),
(22, 16, 'Laptop-ROG-49', -1, 1),
(23, 16, 'Laptop-ROG-50', -1, 1),
(24, 16, 'Laptop-ROG-51', -1, 1),
(25, 16, 'Laptop-ROG-52', -1, 1),
(26, 16, 'Laptop-ROG-53', -1, 1),
(27, 16, 'Laptop-ROG-54', -1, 1),
(28, 16, 'Laptop-ROG-55', -1, 1),
(29, 16, 'Laptop-ROG-56', -1, 1),
(30, 16, 'Laptop-ROG-57', -1, 1),
(31, 16, 'Laptop-ROG-58', -1, 1),
(32, 16, 'Laptop-ROG-59', -1, 1),
(33, 16, 'Laptop-ROG-60', -1, 1),
(34, 16, 'Laptop-ROG-61', -1, 1),
(35, 16, 'Laptop-ROG-62', -1, 1),
(36, 16, 'Laptop-ROG-63', -1, 1),
(37, 16, 'Laptop-ROG-64', -1, 1),
(38, 16, 'Laptop-ROG-65', -1, 1),
(39, 16, 'Laptop-ROG-66', -1, 1),
(40, 16, 'Laptop-ROG-67', -1, 1),
(41, 16, 'Laptop-ROG-68', -1, 1),
(42, 16, 'Laptop-ROG-69', -1, 1),
(43, 16, 'Laptop-ROG-70', -1, 1),
(44, 16, 'Laptop-ROG-71', -1, 1),
(45, 16, 'Laptop-ROG-72', -1, 1),
(46, 16, 'Laptop-ROG-73', -1, 1),
(47, 16, 'Laptop-ROG-74', -1, 1),
(48, 16, 'Laptop-ROG-75', -1, 1),
(49, 16, 'Laptop-ROG-76', -1, 1),
(50, 16, 'Laptop-ROG-77', -1, 1),
(51, 16, 'Laptop-ROG-78', -1, 1),
(52, 16, 'Laptop-ROG-79', -1, 1),
(53, 16, 'Laptop-ROG-80', -1, 1),
(54, 16, 'Laptop-ROG-81', -1, 1),
(55, 16, 'Laptop-ROG-82', -1, 1),
(56, 16, 'Laptop-ROG-83', -1, 1),
(57, 16, 'Laptop-ROG-84', -1, 1),
(58, 16, 'Laptop-ROG-85', -1, 1),
(59, 16, 'Laptop-ROG-86', -1, 1),
(60, 16, 'Laptop-ROG-87', -1, 1),
(61, 16, 'Laptop-ROG-88', -1, 1),
(62, 16, 'Laptop-ROG-89', -1, 1),
(63, 16, 'Laptop-ROG-90', -1, 1),
(64, 16, 'Laptop-ROG-91', -1, 1),
(65, 16, 'Laptop-ROG-92', -1, 1),
(66, 16, 'Laptop-ROG-93', -1, 1),
(67, 16, 'Laptop-ROG-94', -1, 1),
(68, 16, 'Laptop-ROG-95', -1, 1),
(69, 16, 'Laptop-ROG-96', -1, 1),
(70, 16, 'Laptop-ROG-97', -1, 1),
(71, 16, 'Laptop-ROG-98', -1, 1),
(72, 16, 'Laptop-ROG-99', -1, 1),
(73, 16, 'Laptop-ROG-100', -1, 1),
(74, 16, 'Laptop-ROG-101', -1, 1),
(75, 16, 'Laptop-ROG-102', -1, 1),
(76, 16, 'Laptop-ROG-103', -1, 1),
(77, 16, 'Laptop-ROG-104', -1, 1),
(78, 16, 'Laptop-ROG-105', -1, 1),
(79, 16, 'Laptop-ROG-106', -1, 1),
(80, 16, 'Laptop-ROG-107', -1, 1),
(81, 16, 'Laptop-ROG-108', -1, 1),
(82, 16, 'Laptop-ROG-109', -1, 1),
(83, 16, 'Laptop-ROG-110', -1, 1),
(84, 16, 'Laptop-ROG-111', -1, 1),
(85, 16, 'Laptop-ROG-112', -1, 1),
(86, 16, 'Laptop-ROG-113', -1, 1),
(87, 16, 'Laptop-ROG-114', -1, 1),
(88, 16, 'Laptop-ROG-115', -1, 1),
(89, 16, 'Laptop-ROG-116', -1, 1),
(90, 16, 'Laptop-ROG-117', -1, 1),
(91, 16, 'Laptop-ROG-118', -1, 1),
(92, 16, 'Laptop-ROG-119', -1, 1),
(93, 16, 'Laptop-ROG-120', -1, 1),
(94, 16, 'Laptop-ROG-121', -1, 1),
(95, 16, 'Laptop-ROG-122', -1, 1),
(96, 16, 'Laptop-ROG-123', -1, 1),
(97, 16, 'Laptop-ROG-124', -1, 1),
(98, 16, 'Laptop-ROG-125', -1, 1),
(99, 16, 'Laptop-ROG-126', -1, 1),
(100, 16, 'Laptop-ROG-127', -1, 1),
(101, 16, 'Laptop-ROG-128', -1, 1),
(102, 16, 'Laptop-ROG-129', -1, 1),
(103, 16, 'Laptop-ROG-130', -1, 1),
(104, 16, 'Laptop-ROG-131', -1, 1),
(105, 16, 'Laptop-ROG-132', -1, 1),
(106, 16, 'Laptop-ROG-133', -1, 1),
(107, 16, 'Laptop-ROG-134', -1, 1),
(108, 16, 'Laptop-ROG-135', -1, 1),
(109, 16, 'Laptop-ROG-136', -1, 1),
(110, 16, 'Laptop-ROG-137', -1, 1),
(111, 16, 'Laptop-ROG-138', -1, 1),
(112, 16, 'Laptop-ROG-139', -1, 1),
(113, 16, 'Laptop-ROG-140', -1, 1),
(114, 17, 'Laptop-ASUS-9', -1, 1),
(115, 17, 'Laptop-ASUS-10', -1, 1),
(116, 17, 'Laptop-ASUS-11', -1, 1),
(117, 17, 'Laptop-ASUS-12', -1, 1),
(118, 18, 'Laptop-Acer-11', -1, 1),
(119, 18, 'Laptop-Acer-12', -1, 1),
(120, 18, 'Laptop-Acer-13', -1, 1),
(121, 18, 'Laptop-Acer-14', -1, 1),
(122, 18, 'Laptop-Acer-15', -1, 1),
(125, 19, 'ESP32-45', -1, 1),
(126, 19, 'ESP32-46', -1, 1),
(127, 19, 'ESP32-47', -1, 1),
(128, 19, 'ESP32-48', -1, 1),
(129, 19, 'ESP32-49', -1, 1),
(130, 19, 'ESP32-50', -1, 1),
(131, 19, 'ESP32-51', -1, 1),
(132, 19, 'ESP32-52', -1, 1),
(133, 19, 'ESP32-53', -1, 1),
(134, 19, 'ESP32-54', -1, 1),
(135, 19, 'ESP32-55', -1, 1),
(136, 19, 'ESP32-56', -1, 1),
(137, 19, 'ESP32-57', -1, 1),
(138, 19, 'ESP32-58', -1, 1),
(139, 19, 'ESP32-59', -1, 1),
(140, 19, 'ESP32-60', -1, 1),
(141, 19, 'ESP32-61', -1, 1),
(142, 19, 'ESP32-62', -1, 1),
(143, 19, 'ESP32-63', -1, 1),
(144, 20, 'RJ45-TESTER-11', -1, 1),
(145, 20, 'RJ45-TESTER-12', -1, 1),
(146, 20, 'RJ45-TESTER-13', -1, 1),
(147, 20, 'RJ45-TESTER-14', -1, 1),
(148, 20, 'RJ45-TESTER-15', -1, 1),
(149, 20, 'RJ45-TESTER-16', -1, 1),
(150, 20, 'RJ45-TESTER-17', -1, 1),
(151, 20, 'RJ45-TESTER-18', -1, 1),
(152, 20, 'RJ45-TESTER-19', -1, 1),
(153, 20, 'RJ45-TESTER-20', -1, 1),
(154, 21, 'ESP8266-1', -1, 1),
(155, 21, 'ESP8266-2', -1, 1),
(156, 21, 'ESP8266-3', -1, 1),
(157, 21, 'ESP8266-4', -1, 1),
(158, 21, 'ESP8266-5', -1, 1),
(159, 21, 'ESP8266-6', -1, 1),
(160, 21, 'ESP8266-7', -1, 1),
(161, 21, 'ESP8266-8', -1, 1),
(162, 21, 'ESP8266-9', -1, 1),
(163, 21, 'ESP8266-10', -1, 1),
(164, 21, 'ESP8266-11', -1, 1),
(165, 21, 'ESP8266-12', -1, 1),
(168, 4, 'arduino-r3-16', -1, 1),
(169, 4, 'arduino-r3-17', -1, 1),
(170, 4, 'arduino-r3-18', -1, 1),
(171, 4, 'arduino-r3-19', -1, 1),
(172, 4, 'arduino-r3-20', -1, 1),
(173, 4, 'arduino-r3-21', -1, 1),
(174, 4, 'arduino-r3-22', -1, 1),
(175, 4, 'arduino-r3-23', -1, 1),
(176, 4, 'arduino-r3-24', -1, 1),
(178, 4, 'arduino-r3-26', -1, 1),
(179, 4, 'arduino-r3-27', -1, 1),
(180, 4, 'arduino-r3-28', -1, 1),
(181, 4, 'arduino-r3-29', -1, 1),
(182, 4, 'arduino-r3-30', -1, 1),
(183, 4, 'arduino-r3-31', -1, 1),
(184, 4, 'arduino-r3-32', -1, 1),
(185, 2, 'Laptop-Lenovo-3', -1, 1),
(186, 2, 'Laptop-Lenovo-4', -1, 1),
(187, 2, 'Laptop-Lenovo-5', -1, 1),
(188, 2, 'Laptop-Lenovo-6', -1, 1),
(189, 2, 'Laptop-Lenovo-7', -1, 1),
(190, 2, 'Laptop-Lenovo-8', -1, 1),
(191, 2, 'Laptop-Lenovo-9', -1, 1),
(192, 2, 'Laptop-Lenovo-10', -1, 1),
(193, 22, 'wq-1', -1, 1),
(194, 22, 'wq-2', -1, 1),
(195, 22, 'wq-3', -1, 1),
(196, 22, 'wq-4', -1, 1),
(197, 22, 'wq-5', -1, 1),
(198, 22, 'wq-6', -1, 1),
(199, 22, 'wq-7', -1, 1),
(200, 22, 'wq-8', -1, 1),
(201, 22, 'wq-9', -1, 1),
(202, 22, 'wq-10', -1, 1),
(203, 22, 'wq-11', -1, 1),
(204, 22, 'wq-12', -1, 1),
(205, 22, 'wq-13', -1, 1),
(206, 22, 'wq-14', -1, 1),
(207, 22, 'wq-15', -1, 1),
(208, 22, 'wq-16', -1, 1),
(209, 22, 'wq-17', -1, 1),
(210, 22, 'wq-18', -1, 1),
(211, 22, 'wq-19', -1, 1),
(212, 22, 'wq-20', -1, 1),
(213, 17, 'Laptop-ASUS-9', -1, 1),
(214, 17, 'Laptop-ASUS-10', -1, 1),
(215, 17, 'Laptop-ASUS-11', -1, 1),
(216, 17, 'Laptop-ASUS-12', -1, 1),
(217, 17, 'Laptop-ASUS-13', -1, 1),
(218, 17, 'Laptop-ASUS-14', -1, 1),
(219, 17, 'Laptop-ASUS-15', -1, 1),
(220, 17, 'Laptop-ASUS-16', -1, 1),
(221, 17, 'Laptop-ASUS-17', -1, 1),
(222, 17, 'Laptop-ASUS-18', -1, 1),
(223, 17, 'Laptop-ASUS-19', -1, 1),
(224, 17, 'Laptop-ASUS-20', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` tinyint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `name`) VALUES
(1, 'TKJ 1'),
(2, 'TKJ 2'),
(3, 'TKJ 3');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` tinyint NOT NULL,
  `name` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` tinyint NOT NULL,
  `alias2` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `name`, `alias`, `alias2`) VALUES
(1, 'X', 10, 1),
(2, 'XI', 11, 2),
(3, 'XII', 12, 3),
(4, 'XIII', 13, 4);

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `id` mediumint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` int NOT NULL,
  `jurusan_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`id`, `name`, `card_id`, `kelas_id`, `jurusan_id`) VALUES
(1, 'Faisal', '10713518013', 1, 1),
(2, 'Aurel', '139504510', 1, 1),
(3, 'Najib', '1022089240', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `access`) VALUES
(1, 'Admin', 'admin'),
(2, 'Murid', 'murid');

-- --------------------------------------------------------

--
-- Table structure for table `temp_cart`
--

CREATE TABLE `temp_cart` (
  `id` int NOT NULL,
  `temp_users_id` mediumint NOT NULL,
  `items_id` mediumint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_users`
--

CREATE TABLE `temp_users` (
  `id` int NOT NULL,
  `code` varchar(4) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `murid_id` mediumint NOT NULL,
  `role_id` tinyint NOT NULL DEFAULT '2',
  `last_active` time NOT NULL,
  `token` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_users`
--

INSERT INTO `temp_users` (`id`, `code`, `murid_id`, `role_id`, `last_active`, `token`, `status`) VALUES
(249, 'TbSO', 3, 2, '21:28:18', 'ieXxuSov7c4HwXEM9r3Mgy6Lk04DSFIo1682087298', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_index` smallint NOT NULL DEFAULT '0',
  `category_id` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`, `base_code`, `image`, `last_index`, `category_id`) VALUES
(1, 'Laptop Dell', 'Laptop-Dell-', 'assets/img/portfolio/Arduino_Uno_-_R3.jpg', 266, 1),
(2, 'Laptop Lenovo', 'Laptop-Lenovo-', 'assets/img/portfolio/Arduino_Uno_-_R3.jpg', 10, 1),
(3, 'Tang Crimping RJ45', 'Tang-Crimping-RJ45-', 'assets/img/portfolio/Arduino_Uno_-_R3.jpg', 132, 2),
(4, 'Arduino Uno R3', 'arduino-r3-', 'assets/img/portfolio/Arduino_Uno_-_R3.jpg', 32, 3),
(5, 'Router TL-WR840N', 'TL-WR840N-', 'assets/img/portfolio/Arduino_Uno_-_R3.jpg', 2, 4),
(16, 'Laptop ROG', 'Laptop-ROG-', 'storage/images/rhfQ3pP016I0Etogrq72hNL4h4JXzEJiHF6Zuogxxl4yUGz7OWrCDYw2HFiSqrLQ1681999906.png', 120, 2),
(17, 'Laptop ASUS', 'Laptop-ASUS-', 'storage/images/itNcTh8mKKmz2Wxbak3VmG09vasasOQ0QDm1KDBhZ4G1PdM3SVy9FMrrCvZlj2vi1682000482.png', 20, 1),
(18, 'Laptop Acer', 'Laptop-Acer-', 'storage/images/LaVxjtBOxO26uy6I6hfHij3Ti1Hvm29BxiVUcc9Opv0OjWtWB04IQK512ERe1qRo1682000549.png', 10, 1),
(19, 'ESP32', 'ESP32-', 'storage/images/aQpm7TWoetGRs8mFEDpm1O0gOJxxw60xDCj8GHzBz8UHdCnTC7cK4cjlgUFvHFp41682000589.png', 42, 1),
(20, 'RJ45 TESTER', 'RJ45-TESTER-', 'storage/images/F5zICZtk3jV4411nZcKpniNSFxKnNZILOiuH0YuG5P0m6NbS31EFncDPEwHIV5L81682000932.png', 10, 2),
(21, 'ESP8266', 'ESP8266-', 'storage/images/fFt3rjwdXw6GBW1rcEDTty4KszRdCWyoFyLMxthyF2DZlw4FiVX4jjIGpBnM0PWR1682001023.png', 12, 3),
(22, 'wq', 'wq-', 'storage/images/Tv4LcIZDM5CDhB9HfXGXIkb0GWNKE3HM0hTGInXXGJwgT8o2aSvOus3B2TRMKtMF1682086070.png', 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `role_id` tinyint NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `role_id`, `token`) VALUES
(1, 'Admin', 'admin', 'admin', 1, 'P9XumxlSABUyrCNiOL5A8rx2x0gH72TxLaB80hwY6lxgb0ZLzfKs1QFW7sqMspmzMEO3HYZs04esetvEA1FQjWNUy7o3nyEx9qMXujjkAknyu4qTnIT4S0aRmJLYXPjwpmU3c98PALBocSbT8Q9RaCOL1QOK4KE0PIU3MkTR3PrSyrFneEhW87bAdEG4F1zE7IBFKqDfqbUXm2z4tYFZh3l4ZUSkuQm81682073968');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_code` (`item_code`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_cart`
--
ALTER TABLE `temp_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_id` (`items_id`);

--
-- Indexes for table `temp_users`
--
ALTER TABLE `temp_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `code_2` (`code`),
  ADD KEY `token_2` (`token`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` mediumint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `murid`
--
ALTER TABLE `murid`
  MODIFY `id` mediumint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temp_cart`
--
ALTER TABLE `temp_cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `temp_users`
--
ALTER TABLE `temp_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
