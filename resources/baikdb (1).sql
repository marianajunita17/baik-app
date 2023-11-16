-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 03:35 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baikdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `anaks`
--

CREATE TABLE `anaks` (
  `id` int(11) NOT NULL,
  `nama_anak` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anaks`
--

INSERT INTO `anaks` (`id`, `nama_anak`, `jenis_kelamin`, `tgl_lahir`, `pasien_id`, `created_at`, `updated_at`) VALUES
(1, 'Ayam SInjai', 'Laki-Laki', '2023-09-25', 2, '2023-11-07 04:08:00', '2023-11-13 04:56:34'),
(2, 'Bebek', 'Perempuan', '2023-10-30', 3, '2023-11-07 04:08:00', NULL),
(3, 'Maximus', 'Laki-Laki', '2018-07-19', 3, '2023-11-09 23:46:22', NULL),
(4, 'Danasuta', 'Laki-Laki', '2002-08-10', 4, '2023-11-13 10:02:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bidangs`
--

CREATE TABLE `bidangs` (
  `id` int(11) NOT NULL,
  `nama_bidang` varchar(255) NOT NULL,
  `keterangan_bidang` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bidangs`
--

INSERT INTO `bidangs` (`id`, `nama_bidang`, `keterangan_bidang`, `created_at`, `updated_at`) VALUES
(1, 'Klinis', '<p>test</p>', '2023-10-30 20:13:12', NULL),
(2, 'Pendidikan', '<p>Di sekolah</p>', '2023-10-30 20:13:43', '2023-11-13 04:55:14'),
(3, 'Sosial', '', '2023-11-10 00:19:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password :Â </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2023-10-29 13:16:18', NULL),
(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password :Â </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2023-10-30 09:56:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.69', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-10-29 13:19:19', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-10-29 20:56:39', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Spesialisasi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-10-29 21:39:56', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-10-30 09:58:17', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-10-30 19:26:48', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/bidangs/add-save', 'Add New Data Klinis at Bidang', '', 1, '2023-10-30 20:13:12', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/bidangs/add-save', 'Add New Data Pendidikan at Bidang', '', 1, '2023-10-30 20:13:43', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/spesialisasis/add-save', 'Add New Data Trauma at Spesialisasi', '', 1, '2023-10-30 20:16:42', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/spesialisasis/add-save', 'Add New Data Bullying at Spesialisasi', '', 1, '2023-10-30 20:16:56', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-10-30 20:28:12', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-10-31 17:42:22', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/module_generator/delete/15', 'Delete data janji temu at Module Generator', '', 1, '2023-10-31 18:06:59', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/module_generator/delete/15', 'Delete data janji temu at Module Generator', '', 1, '2023-10-31 18:07:00', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-10-31 19:56:27', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/topiks/add-save', 'Add New Data test at Topik', '', 1, '2023-10-31 20:42:26', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/topiks/delete/1', 'Delete data test at Topik', '', 1, '2023-10-31 20:42:40', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/topiks/add-save', 'Add New Data test at Topik', '', 1, '2023-10-31 20:42:47', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/users2/add-save', 'Add New Data Katheryn at User', '', 1, '2023-10-31 20:51:37', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/konselors/add-save', 'Add New Data test at Konselor', '', 1, '2023-10-31 21:33:19', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/module_generator/delete/22', 'Delete data Spesialis Konselor at Module Generator', '', 1, '2023-10-31 21:43:12', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-01 00:16:59', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/konselor_spesialis/add-save', 'Add New Data  at Spesialis Konselor', '', 1, '2023-11-01 00:45:31', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-01 19:44:55', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/konselors/delete/1', 'Delete data test at Konselor', '', 1, '2023-11-01 19:45:36', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-02 21:07:31', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/konselors/add-save', 'Add New Data test at Konselor', '', 1, '2023-11-02 21:12:40', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/konselor_spesialis/add-save', 'Add New Data  at Spesialis Konselor', '', 1, '2023-11-02 21:12:57', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/konselors/add-save', 'Add New Data hehe at Konselor', '', 1, '2023-11-02 21:42:27', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/users2/add-save', 'Add New Data Junita at User', '', 1, '2023-11-04 20:48:41', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/users2/add-save', 'Add New Data Yolenta at User', '', 1, '2023-11-04 20:48:57', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/konselors/add-save', 'Add New Data Katheryn at Konselor', '', 1, '2023-11-04 21:08:49', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/konselors/add-save', 'Add New Data Junita at Konselor', '', 1, '2023-11-04 21:09:53', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/pasiens/add-save', 'Add New Data  at Pasien', '', 1, '2023-11-04 21:15:05', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/users2/add-save', 'Add New Data David at User', '', 1, '2023-11-04 21:15:31', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/users2/add-save', 'Add New Data Adgie at User', '', 1, '2023-11-04 21:15:45', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/pasiens/add-save', 'Add New Data  at Pasien', '', 1, '2023-11-04 21:17:00', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/pasiens/add-save', 'Add New Data  at Pasien', '', 1, '2023-11-04 21:18:06', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/anaks/add-save', 'Add New Data Ya at Anak', '', 1, '2023-11-04 21:20:01', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/anaks/add-save', 'Add New Data Bebek at Anak', '', 1, '2023-11-04 21:20:17', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/pasiens/delete/1', 'Delete data  at Pasien', '', 1, '2023-11-04 21:20:34', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/pasien_konselor/add-save', 'Add New Data  at Pasien Konselor', '', 1, '2023-11-04 21:28:07', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/pasien_konselor/add-save', 'Add New Data  at Pasien Konselor', '', 1, '2023-11-04 21:31:38', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/pasien_konselor/add-save', 'Add New Data  at Pasien Konselor', '', 1, '2023-11-04 21:32:26', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/konselors/delete/1', 'Delete data Katheryn at Konselor', '', 1, '2023-11-04 21:43:38', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/topiks/add-save', 'Add New Data gatau at Topik', '', 1, '2023-11-04 21:59:54', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/topiks/add-save', 'Add New Data stress at Topik', '', 1, '2023-11-04 21:59:58', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76', 'http://127.0.0.1:8000/admin/topiks/add-save', 'Add New Data depresi at Topik', '', 1, '2023-11-04 22:00:05', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-05 07:18:57', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu/add-save', 'Add New Data  at janji temu', '', 1, '2023-11-05 07:41:23', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-06 19:23:10', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu/add-save', 'Add New Data  at janji temu', '', 1, '2023-11-06 21:04:52', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu/add-save', 'Add New Data  at janji temu', '', 1, '2023-11-06 21:52:46', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-07 01:58:28', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-08 03:18:07', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-09 22:22:20', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/spesialisasis/add-save', 'Add New Data Keluarga at Spesialisasi', '', 1, '2023-11-09 22:55:07', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/spesialisasis/add-save', 'Add New Data Stress at Spesialisasi', '', 1, '2023-11-09 22:55:19', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/anaks/add-save', 'Add New Data Maximus at Anak', '', 1, '2023-11-09 23:46:22', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/bidangs/add-save', 'Add New Data Sosial at Bidang', '', 1, '2023-11-10 00:19:49', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-13 04:53:37', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pasiens/edit-save/3', 'Update data  at Pasien', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jenis_kelamin</td><td>Laki-Laki</td><td>Perempuan</td></tr><tr><td>umur</td><td>88</td><td>65</td></tr><tr><td>verifikasi_by</td><td></td><td></td></tr><tr><td>verifikasi_at</td><td>2023-11-05 11:18:06</td><td></td></tr><tr><td>verifikasi_status</td><td></td><td></td></tr></tbody></table>', 1, '2023-11-13 04:53:56', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/topiks/edit-save/2', 'Update data galau at Topik', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_topik</td><td>test</td><td>galau</td></tr></tbody></table>', 1, '2023-11-13 04:54:23', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/bidangs/edit-save/2', 'Update data Pendidikan at Bidang', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan_bidang</td><td></td><td><p>Di sekolah</p></td></tr></tbody></table>', 1, '2023-11-13 04:55:14', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/users2/edit-save/2', 'Update data Junita at User', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>junjun@gmail.com</td><td>junjun@ubaya.baik</td></tr><tr><td>email_verified_at</td><td></td><td></td></tr><tr><td>password</td><td>$2y$10$iLN9raDZKT5nA.JXMSqIaeaKapecB5rYIdZEcCXFmWjMkfIHiiZIa</td><td>$2y$10$37IoKvncV6lrUArX2mi2suxkPrMeVrWmCIT/6taXPmRUyjYSSFHFG</td></tr><tr><td>remember_token</td><td></td><td></td></tr></tbody></table>', 1, '2023-11-13 04:56:05', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/anaks/edit-save/1', 'Update data Ayam SInjai at Anak', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_anak</td><td>Ya</td><td>Ayam SInjai</td></tr></tbody></table>', 1, '2023-11-13 04:56:34', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselors/edit-save/4', 'Update data Junita at Konselor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>verifikasi_at</td><td></td><td></td></tr><tr><td>verifikasi_status</td><td></td><td></td></tr></tbody></table>', 1, '2023-11-13 04:56:56', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-13 08:51:35', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pembayarans/add-save', 'Add New Data  at Pembayaran', '', 1, '2023-11-13 09:38:46', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pembayarans/add-save', 'Add New Data  at Pembayaran', '', 1, '2023-11-13 09:38:57', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pembayarans/edit-save/2', 'Update data  at Pembayaran', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>bank</td><td>BNI</td><td>BCA</td></tr></tbody></table>', 1, '2023-11-13 09:39:22', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pembayarans/add-save', 'Add New Data  at Pembayaran', '', 1, '2023-11-13 09:39:34', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu/add-save', 'Add New Data  at janji temu', '', 1, '2023-11-13 09:49:05', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pasiens/add-save', 'Add New Data  at Pasien', '', 1, '2023-11-13 10:01:22', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/anaks/add-save', 'Add New Data Danasuta at Anak', '', 1, '2023-11-13 10:02:50', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'agdiepratama2020@gmail.com logout', '', 1, '2023-11-15 11:36:43', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'trexzepratama99@gmail.com logout', '', 4, '2023-11-15 12:05:10', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'agdiepratama2020@gmail.com logout', '', 1, '2023-11-15 17:53:18', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'katherynatasialiem@gmail.com logout', '', 7, '2023-11-15 19:28:36', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Konselor at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 6, '2023-11-15 19:31:53', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Spesialisasi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 6, '2023-11-15 19:32:22', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Janji Temu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 6, '2023-11-15 19:32:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Bidang', 'Route', 'AdminBidangsControllerGetIndex', NULL, 'fa fa-briefcase', 0, 1, 0, 1, 1, '2023-10-29 21:28:20', NULL),
(2, 'Spesialisasi', 'Route', 'AdminSpesialisasisControllerGetIndex', 'normal', 'fa fa-certificate', 0, 1, 0, 1, 2, '2023-10-29 21:36:50', '2023-11-15 19:32:22'),
(3, 'Pembayaran', 'Route', 'AdminPembayaransControllerGetIndex', NULL, 'fa fa-money', 0, 1, 0, 1, 3, '2023-10-29 22:39:41', NULL),
(5, 'User', 'Route', 'AdminUsers2ControllerGetIndex', NULL, 'fa fa-user', 0, 1, 0, 1, 5, '2023-10-31 17:58:30', NULL),
(6, 'Janji Temu', 'Route', 'AdminJanjiTemuControllerGetIndex', 'normal', 'fa fa-times', 0, 1, 0, 1, 6, '2023-10-31 18:07:39', '2023-11-15 19:32:33'),
(7, 'Pasien', 'Route', 'AdminPasiensControllerGetIndex', NULL, 'fa fa-user-times', 0, 1, 0, 1, 7, '2023-10-31 18:15:01', NULL),
(8, 'Anak', 'Route', 'AdminAnaksControllerGetIndex', NULL, 'fa fa-child', 0, 1, 0, 1, 8, '2023-10-31 19:03:46', NULL),
(9, 'Konselor', 'Route', 'AdminKonselorsControllerGetIndex', 'normal', 'fa fa-ambulance', 0, 1, 0, 1, 9, '2023-10-31 19:07:31', '2023-11-15 19:31:53'),
(10, 'Topik', 'Route', 'AdminTopiksControllerGetIndex', NULL, 'fa fa-hashtag', 0, 1, 0, 1, 10, '2023-10-31 20:36:03', NULL),
(12, 'Spesialis Konselor', 'Route', 'AdminKonselorSpesialisControllerGetIndex', NULL, 'fa fa-font', 0, 1, 0, 1, 11, '2023-10-31 21:50:20', NULL),
(13, 'Pasien Konselor', 'Route', 'AdminPasienKonselorControllerGetIndex', NULL, 'fa fa-star', 0, 1, 0, 1, 12, '2023-11-04 21:21:26', NULL),
(14, 'Topik Janji Temu', 'Route', 'AdminTopikJanjiTemuControllerGetIndex', NULL, 'fa fa-book', 0, 1, 0, 1, 13, '2023-11-04 21:33:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(5, 3, 1),
(6, 4, 1),
(7, 5, 1),
(9, 7, 1),
(10, 8, 1),
(12, 10, 1),
(13, 11, 1),
(14, 12, 1),
(15, 13, 1),
(16, 14, 1),
(17, 9, 4),
(18, 9, 1),
(19, 2, 1),
(20, 6, 4),
(21, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2023-10-29 13:16:18', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2023-10-29 13:16:18', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2023-10-29 13:16:18', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2023-10-29 13:16:18', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2023-10-29 13:16:18', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2023-10-29 13:16:18', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2023-10-29 13:16:18', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2023-10-29 13:16:18', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2023-10-29 13:16:18', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2023-10-29 13:16:18', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2023-10-29 13:16:18', NULL, NULL),
(12, 'Bidang', 'fa fa-briefcase', 'bidangs', 'bidangs', 'AdminBidangsController', 0, 0, '2023-10-29 21:28:20', NULL, NULL),
(13, 'Spesialisasi', 'fa fa-certificate', 'spesialisasis', 'spesialisasis', 'AdminSpesialisasisController', 0, 0, '2023-10-29 21:36:50', NULL, NULL),
(14, 'Pembayaran', 'fa fa-money', 'pembayarans', 'pembayarans', 'AdminPembayaransController', 0, 0, '2023-10-29 22:39:41', NULL, NULL),
(15, 'janji temu', 'fa fa-glass', 'janji_temu', 'janji_temu', 'AdminJanjiTemuController', 0, 0, '2023-10-30 19:47:14', NULL, '2023-10-31 18:07:00'),
(16, 'User', 'fa fa-user', 'users2', 'users', 'AdminUsers2Controller', 0, 0, '2023-10-31 17:58:30', NULL, NULL),
(17, 'Janji Temu', 'fa fa-times', 'janji_temu', 'janji_temu', 'AdminJanjiTemuController', 0, 0, '2023-10-31 18:07:39', NULL, NULL),
(18, 'Pasien', 'fa fa-user-times', 'pasiens', 'pasiens', 'AdminPasiensController', 0, 0, '2023-10-31 18:15:01', NULL, NULL),
(19, 'Anak', 'fa fa-child', 'anaks', 'anaks', 'AdminAnaksController', 0, 0, '2023-10-31 19:03:46', NULL, NULL),
(20, 'Konselor', 'fa fa-ambulance', 'konselors', 'konselors', 'AdminKonselorsController', 0, 0, '2023-10-31 19:07:31', NULL, NULL),
(21, 'Topik', 'fa fa-hashtag', 'topiks', 'topiks', 'AdminTopiksController', 0, 0, '2023-10-31 20:36:03', NULL, NULL),
(22, 'Spesialis Konselor', 'fa fa-font', 'konselor_spesialis', 'konselor_spesialis', 'AdminKonselorSpesialisController', 0, 0, '2023-10-31 21:21:56', NULL, '2023-10-31 21:43:12'),
(23, 'Spesialis Konselor', 'fa fa-font', 'konselor_spesialis', 'konselor_spesialis', 'AdminKonselorSpesialisController', 0, 0, '2023-10-31 21:50:20', NULL, NULL),
(24, 'Pasien Konselor', 'fa fa-star', 'pasien_konselor', 'pasien_konselor', 'AdminPasienKonselorController', 0, 0, '2023-11-04 21:21:26', NULL, NULL),
(25, 'Topik Janji Temu', 'fa fa-book', 'topik_janji_temu', 'topik_janji_temu', 'AdminTopikJanjiTemuController', 0, 0, '2023-11-04 21:33:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2023-10-29 13:16:18', NULL),
(3, 'Admin Keuangan', 0, 'skin-blue', NULL, NULL),
(4, 'Konselor', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2023-10-29 13:16:18', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2023-10-29 13:16:18', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2023-10-29 13:16:18', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2023-10-29 13:16:18', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2023-10-29 13:16:18', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2023-10-29 13:16:18', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2023-10-29 13:16:18', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2023-10-29 13:16:18', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2023-10-29 13:16:18', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2023-10-29 13:16:18', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2023-10-29 13:16:18', NULL),
(13, 1, 1, 1, 1, 1, 3, 4, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(32, 1, 1, 1, 1, 0, 4, 17, NULL, NULL),
(33, 1, 1, 1, 1, 0, 4, 20, NULL, NULL),
(34, 1, 1, 1, 1, 1, 4, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2023-10-29 13:16:18', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2023-10-29 13:16:18', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2023-10-29 13:16:18', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2023-10-29 13:16:18', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'CRUDBooster', 'text', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2023-10-29 13:16:18', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', '', 'upload_image', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', '', 'upload_image', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2023-10-29 13:16:18', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@ubayabaik.id', '$2y$10$HblZh1e.lzaLlDhiF5EorOjpJZkJlkSNDgH96l/r7B0hHndlBLBSC', 1, '2023-10-29 13:16:17', NULL, 'Active'),
(6, 'KATHERYN NATASIA LIEM CHRISLIANTI _', NULL, 's160420038@student.ubaya.ac.id', '$2y$10$JH1LbufFNL8UdgSLW/129OCGyq3R1iCWZ7zW.T.EH2vKEBywQB/dy', 1, NULL, NULL, 'Active'),
(7, 'Katheryn Natasia', NULL, 'katherynatasialiem@gmail.com', '$2y$10$J9jug6XkOu6cbOYVXDVxGeCcCPCRgeR09y2h75gTHATzEt3BWShze', 4, NULL, NULL, 'Active');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `janji_temu`
--

CREATE TABLE `janji_temu` (
  `id` int(11) NOT NULL,
  `keluhan` longtext NOT NULL,
  `janji_temu_id` int(11) DEFAULT NULL,
  `pasien_id` int(11) NOT NULL,
  `nominal` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `tgl_konsultasi_mulai` datetime NOT NULL,
  `tgl_konsultasi_selesai` datetime DEFAULT NULL,
  `durasi_konsultasi` int(11) DEFAULT NULL,
  `catatan_kasus` longtext DEFAULT NULL,
  `presentase_kesesuaian` varchar(45) DEFAULT NULL,
  `rekomendasi` varchar(255) DEFAULT NULL,
  `perlu_lanjut` varchar(255) DEFAULT NULL,
  `konselor_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `janji_temu`
--

INSERT INTO `janji_temu` (`id`, `keluhan`, `janji_temu_id`, `pasien_id`, `nominal`, `bank_id`, `tgl_konsultasi_mulai`, `tgl_konsultasi_selesai`, `durasi_konsultasi`, `catatan_kasus`, `presentase_kesesuaian`, `rekomendasi`, `perlu_lanjut`, `konselor_id`, `created_at`, `updated_at`) VALUES
(2, 'capek dah gatau gw', NULL, 2, 100000, 3, '2023-11-13 00:00:00', '2023-11-13 00:30:00', 30, 'gak ada', '98', 'ghjkl', 'Ya', 4, '2023-11-13 09:49:05', '2023-11-13 09:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `konselors`
--

CREATE TABLE `konselors` (
  `id` int(20) NOT NULL,
  `nama_konselor` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(45) NOT NULL,
  `CV` blob NOT NULL,
  `SIPP` blob NOT NULL,
  `Ijazah` blob NOT NULL,
  `surat_sebutan_psi` blob NOT NULL,
  `KTP` blob NOT NULL,
  `NPWP` blob NOT NULL,
  `photo` blob NOT NULL,
  `no_rekening` varchar(45) NOT NULL,
  `verifikasi_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `verifikasi_by` int(11) DEFAULT NULL,
  `verifikasi_status` varchar(255) DEFAULT NULL,
  `status_aktif` varchar(255) DEFAULT NULL,
  `jadwal` text DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `nomor_induk` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konselors`
--

INSERT INTO `konselors` (`id`, `nama_konselor`, `tgl_lahir`, `jenis_kelamin`, `CV`, `SIPP`, `Ijazah`, `surat_sebutan_psi`, `KTP`, `NPWP`, `photo`, `no_rekening`, `verifikasi_at`, `verifikasi_by`, `verifikasi_status`, `status_aktif`, `jadwal`, `users_id`, `nomor_induk`, `created_at`, `updated_at`) VALUES
(3, 'Katheryn', '2023-10-02', 'Perempuan', 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, '1234567890', NULL, 1, NULL, 'Aktif', 'ujknjknskmlkmlk', 1, '45678', '2023-11-07 04:09:01', NULL),
(4, 'Junita', '2023-02-14', 'Perempuan', 0x75706c6f6164732f312f323032332d31312f6572645f6261696b322e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b322e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b322e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b322e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b322e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b322e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b322e706e67, '45678', '2023-11-13 11:56:56', 5, NULL, 'Aktif', 'fxtrvgbhj clds kckwn', 2, '56789g', '2023-11-07 04:09:01', '2023-11-13 04:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `konselor_spesialis`
--

CREATE TABLE `konselor_spesialis` (
  `id` int(11) NOT NULL,
  `konselors_id` int(11) DEFAULT NULL,
  `spesialisasis_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konselor_spesialis`
--

INSERT INTO `konselor_spesialis` (`id`, `konselors_id`, `spesialisasis_id`) VALUES
(4, 3, 1),
(6, 4, 2),
(7, 4, 1);

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
(2, '2016_08_07_145904_add_table_cms_apicustom', 1),
(3, '2016_08_07_150834_add_table_cms_dashboard', 1),
(4, '2016_08_07_151210_add_table_cms_logs', 1),
(5, '2016_08_07_151211_add_details_cms_logs', 1),
(6, '2016_08_07_152014_add_table_cms_privileges', 1),
(7, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(8, '2016_08_07_152320_add_table_cms_settings', 1),
(9, '2016_08_07_152421_add_table_cms_users', 1),
(10, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(11, '2016_08_07_154624_add_table_cms_moduls', 1),
(12, '2016_08_17_225409_add_status_cms_users', 1),
(13, '2016_08_20_125418_add_table_cms_notifications', 1),
(14, '2016_09_04_033706_add_table_cms_email_queues', 1),
(15, '2016_09_16_035347_add_group_setting', 1),
(16, '2016_09_16_045425_add_label_setting', 1),
(17, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(18, '2016_10_01_141740_add_method_type_apicustom', 1),
(19, '2016_10_01_141846_add_parameters_apicustom', 1),
(20, '2016_10_01_141934_add_responses_apicustom', 1),
(21, '2016_10_01_144826_add_table_apikey', 1),
(22, '2016_11_14_141657_create_cms_menus', 1),
(23, '2016_11_15_132350_create_cms_email_templates', 1),
(24, '2016_11_15_190410_create_cms_statistics', 1),
(25, '2016_11_17_102740_create_cms_statistic_components', 1),
(26, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE `pasiens` (
  `id` int(11) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `jenis_kelamin`, `umur`, `nama_pasien`, `users_id`, `created_at`, `updated_at`) VALUES
(2, 'Perempuan', 10, 'Hai', 3, '2023-11-10 06:57:17', NULL),
(3, 'Perempuan', 65, 'Test', 2, '2023-11-10 06:57:17', '2023-11-13 04:53:56'),
(4, 'Laki-Laki', 21, 'David', 4, '2023-11-13 10:01:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pasien_konselor`
--

CREATE TABLE `pasien_konselor` (
  `id` int(11) NOT NULL,
  `pasiens_id` int(11) NOT NULL,
  `konselors_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien_konselor`
--

INSERT INTO `pasien_konselor` (`id`, `pasiens_id`, `konselors_id`) VALUES
(1, 2, 1),
(2, 2, 4),
(3, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` int(11) NOT NULL,
  `bank` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `bank`, `created_at`, `updated_at`) VALUES
(1, 'BNI', '2023-11-13 09:38:46', NULL),
(2, 'BCA', '2023-11-13 09:38:57', '2023-11-13 09:39:22'),
(3, 'MANDIRI', '2023-11-13 09:39:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spesialisasis`
--

CREATE TABLE `spesialisasis` (
  `id` int(11) NOT NULL,
  `nama_spesialisasi` varchar(255) NOT NULL,
  `bidang_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spesialisasis`
--

INSERT INTO `spesialisasis` (`id`, `nama_spesialisasi`, `bidang_id`, `created_at`, `updated_at`) VALUES
(1, 'Trauma', 1, '2023-11-10 06:59:38', NULL),
(2, 'Bullying', 2, '2023-11-10 06:59:38', NULL),
(3, 'Keluarga', 1, '2023-11-10 06:59:38', NULL),
(4, 'Stress', 1, '2023-11-10 06:59:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topiks`
--

CREATE TABLE `topiks` (
  `id` int(11) NOT NULL,
  `nama_topik` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topiks`
--

INSERT INTO `topiks` (`id`, `nama_topik`, `created_at`, `updated_at`) VALUES
(2, 'galau', '2023-10-31 20:42:47', '2023-11-13 04:54:23'),
(3, 'gatau', '2023-11-04 21:59:54', NULL),
(4, 'stress', '2023-11-04 21:59:58', NULL),
(5, 'depresi', '2023-11-04 22:00:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topik_janji_temu`
--

CREATE TABLE `topik_janji_temu` (
  `id` int(11) NOT NULL,
  `topiks_id` int(11) NOT NULL,
  `janji_temu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topik_janji_temu`
--

INSERT INTO `topik_janji_temu` (`id`, `topiks_id`, `janji_temu_id`) VALUES
(3, 5, 2),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `google_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Katheryn', 'admin@ubayabaik', NULL, NULL, '$2y$10$O2rqAl..QMVc/w4j9OR/YecQqSj6L/EMAC/AJdo66SNsebrFnaDxG', NULL, '2023-10-31 20:51:37', NULL),
(2, 'Junita', 'junjun@ubaya.baik', NULL, NULL, '$2y$10$37IoKvncV6lrUArX2mi2suxkPrMeVrWmCIT/6taXPmRUyjYSSFHFG', NULL, '2023-11-04 20:48:41', '2023-11-13 04:56:05'),
(3, 'Yolenta', 'yola@gmail.com', NULL, NULL, '$2y$10$R9NPhav.qBHSk.S6lEHqaO1NDHVAFT8VerO2CYFzWPiqogwD6l9ii', NULL, '2023-11-04 20:48:57', NULL),
(4, 'David', 'david@gmail.com', NULL, NULL, '$2y$10$T8pjgfdYGa/8/KqdWo4Uke2KSSuYLDAudZl2LnRUnFgTr0P3JZlhm', NULL, '2023-11-04 21:15:31', NULL),
(5, 'Adgie', 'adgie@gmail.com', NULL, NULL, '$2y$10$CNsFsuKcZI7rt7whO4n21.YnxiMfWWg98yTWm.LYxFqoTqGiEQ0Ui', NULL, '2023-11-04 21:15:45', NULL),
(10, 'KATHERYN NATASIA LIEM CHRISLIANTI _', 's160420038@student.ubaya.ac.id', NULL, '108301379835168699034', '$2y$10$frUEQW5WGQ1Op3VqEqnXN.N5T4N0qNrACyyabH875w0duleFb81pW', 'F3HLeqRtB4h8CRlmjaE4s25U8JKIP4MZGA0Qr4gwvltBQHFtTP5JeE9HF0lj', '2023-11-15 18:53:09', '2023-11-16 02:01:12'),
(13, 'Katheryn Natasia', 'katherynatasialiem@gmail.com', NULL, '109342889608692761046', '$2y$10$kb/xQ9NKpPv.JGVDVra.r.hr.Q4X1G4mNmKFSJC4/y4r095djmXUu', '73e3hRZYBhmt2s67Y5OBMLzFYkC6PMMb5ZxwWerc2gDigret6AWxoLMeaPRY', '2023-11-15 18:59:27', '2023-11-16 01:59:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anaks`
--
ALTER TABLE `anaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasien_id` (`pasien_id`);

--
-- Indexes for table `bidangs`
--
ALTER TABLE `bidangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `janji_temu`
--
ALTER TABLE `janji_temu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `janji_temu_id` (`janji_temu_id`),
  ADD KEY `pasien_id` (`pasien_id`),
  ADD KEY `konselor_id` (`konselor_id`),
  ADD KEY `janji_temu_ibfk_4` (`bank_id`);

--
-- Indexes for table `konselors`
--
ALTER TABLE `konselors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_induk` (`nomor_induk`),
  ADD KEY `FK_konselors_users` (`users_id`);

--
-- Indexes for table `konselor_spesialis`
--
ALTER TABLE `konselor_spesialis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__konselors` (`konselors_id`),
  ADD KEY `FK__spesialisasis` (`spesialisasis_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasiens`
--
ALTER TABLE `pasiens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_pasiens_users` (`users_id`);

--
-- Indexes for table `pasien_konselor`
--
ALTER TABLE `pasien_konselor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__pasien_konselor_konselors` (`konselors_id`),
  ADD KEY `FK__pasien_konselor_pasiens` (`pasiens_id`);

--
-- Indexes for table `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spesialisasis`
--
ALTER TABLE `spesialisasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_spesialisasis_bidangs` (`bidang_id`);

--
-- Indexes for table `topiks`
--
ALTER TABLE `topiks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topik_janji_temu`
--
ALTER TABLE `topik_janji_temu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__topiks` (`topiks_id`),
  ADD KEY `FK__janji_temu` (`janji_temu_id`);

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
-- AUTO_INCREMENT for table `anaks`
--
ALTER TABLE `anaks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bidangs`
--
ALTER TABLE `bidangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `janji_temu`
--
ALTER TABLE `janji_temu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `konselors`
--
ALTER TABLE `konselors`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `konselor_spesialis`
--
ALTER TABLE `konselor_spesialis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pasien_konselor`
--
ALTER TABLE `pasien_konselor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `spesialisasis`
--
ALTER TABLE `spesialisasis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `topiks`
--
ALTER TABLE `topiks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `topik_janji_temu`
--
ALTER TABLE `topik_janji_temu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anaks`
--
ALTER TABLE `anaks`
  ADD CONSTRAINT `anaks_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasiens` (`id`);

--
-- Constraints for table `janji_temu`
--
ALTER TABLE `janji_temu`
  ADD CONSTRAINT `janji_temu_ibfk_1` FOREIGN KEY (`janji_temu_id`) REFERENCES `janji_temu` (`id`),
  ADD CONSTRAINT `janji_temu_ibfk_2` FOREIGN KEY (`pasien_id`) REFERENCES `pasiens` (`id`),
  ADD CONSTRAINT `janji_temu_ibfk_3` FOREIGN KEY (`konselor_id`) REFERENCES `konselors` (`id`),
  ADD CONSTRAINT `janji_temu_ibfk_4` FOREIGN KEY (`bank_id`) REFERENCES `pembayarans` (`id`);

--
-- Constraints for table `konselors`
--
ALTER TABLE `konselors`
  ADD CONSTRAINT `konselors_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `konselor_spesialis`
--
ALTER TABLE `konselor_spesialis`
  ADD CONSTRAINT `FK__spesialisasis` FOREIGN KEY (`spesialisasis_id`) REFERENCES `spesialisasis` (`id`);

--
-- Constraints for table `pasiens`
--
ALTER TABLE `pasiens`
  ADD CONSTRAINT `pasiens_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `pasien_konselor`
--
ALTER TABLE `pasien_konselor`
  ADD CONSTRAINT `FK__pasien_konselor_pasiens` FOREIGN KEY (`pasiens_id`) REFERENCES `pasiens` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `spesialisasis`
--
ALTER TABLE `spesialisasis`
  ADD CONSTRAINT `FK_spesialisasis_bidangs` FOREIGN KEY (`bidang_id`) REFERENCES `bidangs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `topik_janji_temu`
--
ALTER TABLE `topik_janji_temu`
  ADD CONSTRAINT `FK__janji_temu` FOREIGN KEY (`janji_temu_id`) REFERENCES `janji_temu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__topiks` FOREIGN KEY (`topiks_id`) REFERENCES `topiks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
