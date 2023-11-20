-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2023 at 05:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.30

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
(1, 'Gaby Hermawan', 'Perempuan', '2023-09-25', 2, '2023-11-07 04:08:00', '2023-11-16 17:16:10'),
(2, 'Henri Nathanael', 'Laki-Laki', '2023-10-30', 3, '2023-11-07 04:08:00', '2023-11-16 17:15:55'),
(3, 'Maximus', 'Laki-Laki', '2018-07-19', 3, '2023-11-09 23:46:22', NULL),
(4, 'Danasuta', 'Laki-Laki', '2002-08-10', 4, '2023-11-13 10:02:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bidangs`
--

CREATE TABLE `bidangs` (
  `id` int(11) NOT NULL,
  `nama_bidang` varchar(255) NOT NULL,
  `keterangan_bidang` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bidangs`
--

INSERT INTO `bidangs` (`id`, `nama_bidang`, `keterangan_bidang`, `created_at`, `updated_at`) VALUES
(1, 'Klinis', '<p>Psikologi klinis memperdalami perilaku manusia dengan lebih detail. Bidang ini menangani beragam kondisi mental individu, mulai dari yang ringan seperti menangani krisis percaya diri hingga yang masuk kategori berat seperti perilaku psikopat.</p>', '2023-10-30 20:13:12', '2023-11-16 17:06:26'),
(2, 'Pendidikan', '<p>Psikologi pendidikan mencermati kapasitas mental pada usia tertentu. Bedanya, Psikologi Pendidikan lebih fokus pada pendekatan dan metode pendidikan yang sesuai dengan usia populasi tertentu.</p>', '2023-10-30 20:13:43', '2023-11-16 17:04:29'),
(3, 'Sosial', '<p>Manusia sebagai fokus ilmu psikologi adalah makhluk sosial. Maka tak aneh bila diperlukan Ilmu Psikologi sebagai bidang pengkaji proses mental individu dalam menghadapi kelompok atau individu yang lain.</p>', '2023-11-10 00:19:49', '2023-11-16 17:02:51'),
(4, 'Industri dan organisasi', '<p>Bidang ilmu yang tepat untuk menangani konflik internal perusahaan, hubungan antar departemen, komunikasi tim kerja, hubungan antara atasan dan bawahan, dan sejenisnya.</p>', '2023-11-16 17:08:14', NULL);

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
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Janji Temu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 6, '2023-11-15 19:32:33', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu', 'Try view the data :name at janji temu', '', 2, '2023-11-15 21:07:46', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselors', 'Try view the data :name at Konselor', '', 2, '2023-11-15 21:07:47', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', 2, '2023-11-15 21:08:06', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-15 21:08:16', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'admin@ubayabaik.id logout', '', 1, '2023-11-15 21:43:38', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu', 'Try view the data :name at janji temu', '', 8, '2023-11-15 21:50:40', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu', 'Try view the data :name at janji temu', '', 8, '2023-11-15 21:51:05', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselors', 'Try view the data :name at Konselor', '', 8, '2023-11-15 21:51:07', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu', 'Try view the data :name at janji temu', '', 8, '2023-11-15 21:51:10', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselors', 'Try view the data :name at Konselor', '', 8, '2023-11-15 21:51:12', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-15 21:51:22', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-15 21:51:35', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Janji Temu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2023-11-15 21:55:17', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Janji Temu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2023-11-15 21:55:32', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'admin@ubayabaik.id logout', '', 1, '2023-11-15 21:56:22', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-15 22:03:20', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-15 22:03:31', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'admin@ubayabaik.id logout', '', 1, '2023-11-15 22:21:28', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-15 22:21:50', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-15 22:22:01', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'admin@ubayabaik.id logout', '', 1, '2023-11-15 22:22:29', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-15 22:22:50', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-15 22:23:08', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Pasien at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2023-11-15 22:23:55', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Anak at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2023-11-15 22:24:07', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'admin@ubayabaik.id logout', '', 1, '2023-11-15 22:24:19', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-15 22:24:34', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_spesialis', 'Try view the data :name at Spesialis Konselor', '', 8, '2023-11-15 22:26:07', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Pembayaran at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2023-11-15 22:38:26', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Janji Temu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2023-11-15 23:06:38', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'admin@ubayabaik.id logout', '', 1, '2023-11-15 23:07:22', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pasien_konselor', 'Try view the data :name at Pasien Konselor', '', 8, '2023-11-16 00:30:05', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-16 00:31:27', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/15', 'Update data Konselor at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Konselor User</td><td>Konselor</td></tr><tr><td>type</td><td>Route</td><td>Module</td></tr><tr><td>path</td><td>AdminKonselors26ControllerGetIndex</td><td>konselors26</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>14</td><td></td></tr></tbody></table>', 1, '2023-11-16 01:39:47', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselorsrole', 'Try view the data :name at Konselor Role', '', 8, '2023-11-16 01:43:24', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors26', 'Try view the data :name at Konselor Role', '', 8, '2023-11-16 01:43:52', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors26', 'Try view the data :name at Konselor Role', '', 8, '2023-11-16 01:43:55', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors26', 'Try view the data :name at Konselor Role', '', 8, '2023-11-16 01:44:00', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors26', 'Try view the data :name at Konselor Role', '', 8, '2023-11-16 01:44:04', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors26', 'Try view the data :name at Konselor Role', '', 8, '2023-11-16 01:51:57', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors26', 'Try view the data :name at Konselor Role', '', 8, '2023-11-16 01:51:59', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/module_generator/delete/26', 'Delete data Konselor Role at Module Generator', '', 1, '2023-11-16 01:52:13', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-16 01:53:20', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/15', 'Delete data Konselor at Menu Management', '', 8, '2023-11-16 02:00:35', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Konselor at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Role Konselor</td><td>Konselor</td></tr><tr><td>path</td><td>AdminKonselors27ControllerGetIndex</td><td>KonselorKonselors27ControllerGetIndex</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>15</td><td></td></tr></tbody></table>', 8, '2023-11-16 02:01:17', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Konselor at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>15</td><td></td></tr></tbody></table>', 8, '2023-11-16 02:01:34', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-16 02:04:33', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors', 'Try view the data :name at Konselor', '', 8, '2023-11-16 02:04:58', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Konselor at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2023-11-16 02:05:22', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/17', 'Update data Janji Temu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Role Janji Temu</td><td>Janji Temu</td></tr><tr><td>path</td><td>AdminKonselorJanjiTemu28ControllerGetIndex</td><td>KonselorJanjiTemu28ControllerGetIndex</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-newspaper-o</td><td>fa fa-book</td></tr><tr><td>sorting</td><td>16</td><td></td></tr></tbody></table>', 1, '2023-11-16 02:11:48', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Janji Temu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2023-11-16 02:12:10', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_janji_temu28', 'Try view the data :name at Role Janji Temu', '', 8, '2023-11-16 02:12:17', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_janji_temu28', 'Try view the data :name at Role Janji Temu', '', 8, '2023-11-16 02:12:20', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-16 02:12:23', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_janji_temu28', 'Try view the data :name at Role Janji Temu', '', 8, '2023-11-16 02:12:30', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_janji_temu28', 'Try view the data :name at Role Janji Temu', '', 8, '2023-11-16 02:12:39', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_janji_temu28', 'Try view the data :name at Role Janji Temu', '', 8, '2023-11-16 02:14:28', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-16 02:14:34', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/18', 'Update data Pasien at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Role Pasien</td><td>Pasien</td></tr><tr><td>path</td><td>AdminKonselorPasiens29ControllerGetIndex</td><td>KonselorPasiens29ControllerGetIndex</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-heart</td><td>fa fa-user</td></tr><tr><td>sorting</td><td>17</td><td></td></tr></tbody></table>', 1, '2023-11-16 02:43:42', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_pasiens29', 'Try view the data :name at Role Pasien', '', 8, '2023-11-16 02:44:20', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_pasiens29', 'Try view the data :name at Role Pasien', '', 8, '2023-11-16 02:44:47', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_pasiens29', 'Try view the data :name at Role Pasien', '', 8, '2023-11-16 02:44:49', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-16 02:44:52', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pasiens', 'Try view the data :name at Pasien', '', 8, '2023-11-16 02:45:50', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Pasien at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2023-11-16 02:46:07', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Anak at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2023-11-16 02:46:22', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-16 08:19:23', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/19', 'Update data Anak at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Role Anak</td><td>Anak</td></tr><tr><td>path</td><td>AdminKonselorAnaksControllerGetIndex</td><td>KonselorAnaksControllerGetIndex</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>18</td><td></td></tr></tbody></table>', 1, '2023-11-16 09:49:09', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_anaks', 'Try view the data :name at Role Anak', '', 8, '2023-11-16 09:52:38', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_anaks', 'Try view the data :name at Role Anak', '', 8, '2023-11-16 09:52:41', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_anaks', 'Try view the data :name at Role Anak', '', 8, '2023-11-16 09:52:47', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselor_anaks', 'Try view the data :name at Role Anak', '', 8, '2023-11-16 09:52:49', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-16 09:53:25', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/20', 'Update data Pembayaran at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Role Pembayaran</td><td>Pembayaran</td></tr><tr><td>path</td><td>AdminKeuanganPembayaransControllerGetIndex</td><td>KeuanganPembayaransControllerGetIndex</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>17</td><td></td></tr></tbody></table>', 1, '2023-11-16 10:13:24', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-16 10:16:01', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/pembayarans', 'Try view the data :name at Pembayaran', '', 8, '2023-11-16 10:16:39', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/keuangan_pembayarans', 'Try view the data :name at Role Pembayaran', '', 8, '2023-11-16 10:16:42', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Pembayaran at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>12</td><td></td></tr></tbody></table>', 1, '2023-11-16 10:17:00', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/keuangan_pembayarans', 'Try view the data :name at Role Pembayaran', '', 8, '2023-11-16 10:17:59', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-16 10:18:05', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/janji_temu', 'Try view the data :name at janji temu', '', 8, '2023-11-16 10:18:24', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/21', 'Update data Janji Temu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Keuangan Janji Temu</td><td>Janji Temu</td></tr><tr><td>path</td><td>AdminKeuanganJanjiTemuControllerGetIndex</td><td>KeuanganJanjiTemuControllerGetIndex</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>18</td><td></td></tr></tbody></table>', 1, '2023-11-16 10:20:59', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Janji Temu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2023-11-16 10:22:33', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/keuangan_janji_temu', 'Try view the data :name at Keuangan Janji Temu', '', 8, '2023-11-16 10:22:42', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-16 10:22:46', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/22', 'Update data Konselor at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Keuangan Konselor</td><td>Konselor</td></tr><tr><td>path</td><td>AdminKeuanganKonselorsControllerGetIndex</td><td>KeuanganKonselorsControllerGetIndex</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-user</td><td>fa fa-user-md</td></tr><tr><td>sorting</td><td>19</td><td></td></tr></tbody></table>', 1, '2023-11-16 10:38:03', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-16 10:39:00', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/22', 'Update data Konselor at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>19</td><td></td></tr></tbody></table>', 1, '2023-11-16 10:39:29', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors27', 'Try view the data :name at Role Konselor', '', 8, '2023-11-16 10:42:56', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-16 10:43:05', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/logout', 'admin@ubayabaik.id logout', '', 1, '2023-11-16 10:44:35', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-16 16:56:25', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/bidangs/edit-save/3', 'Update data Sosial at Bidang', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan_bidang</td><td></td><td><p><span style=\"color: rgb(66, 74, 76); font-family: poppins, sans-serif; font-size: 16px; text-align: justify;\">Manusia sebagai fokus Ilmu Psikologi adalah makhluk sosial. Maka tak aneh bila diperlukan Ilmu Psikologi Sosial sebagai bidang pengkaji proses mental individu dalam menghadapi kelompok atau individu yang lain.</span><br></p></td></tr></tbody></table>', 1, '2023-11-16 17:01:31', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/bidangs/edit-save/3', 'Update data Sosial at Bidang', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan_bidang</td><td><p><span style=\"color: rgb(66, 74, 76); font-family: poppins, sans-serif; font-size: 16px; text-align: justify;\">Manusia sebagai fokus Ilmu Psikologi adalah makhluk sosial. Maka tak aneh bila diperlukan Ilmu Psikologi Sosial sebagai bidang pengkaji proses mental individu dalam menghadapi kelompok atau individu yang lain.</span><br></p></td><td><p><br></p></td></tr></tbody></table>', 1, '2023-11-16 17:01:46', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/bidangs/edit-save/3', 'Update data Sosial at Bidang', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan_bidang</td><td><p><br></p></td><td><p>Manusia sebagai fokus ilmu psikologi adalah makhluk sosial. Maka tak aneh bila diperlukan Ilmu Psikologi sebagai bidang pengkaji proses mental individu dalam menghadapi kelompok atau individu yang lain.</p></td></tr></tbody></table>', 1, '2023-11-16 17:02:51', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/bidangs/edit-save/2', 'Update data Pendidikan at Bidang', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan_bidang</td><td><p>Di sekolah</p></td><td><p>Psikologi pendidikan mencermati kapasitas mental pada usia tertentu. Bedanya, Psikologi Pendidikan lebih fokus pada pendekatan dan metode pendidikan yang sesuai dengan usia populasi tertentu.</p></td></tr></tbody></table>', 1, '2023-11-16 17:04:29', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/bidangs/edit-save/1', 'Update data Klinis at Bidang', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>keterangan_bidang</td><td><p>test</p></td><td><p>Psikologi klinis memperdalami perilaku manusia dengan lebih detail. Bidang ini menangani beragam kondisi mental individu, mulai dari yang ringan seperti menangani krisis percaya diri hingga yang masuk kategori berat seperti perilaku psikopat.</p></td></tr></tbody></table>', 1, '2023-11-16 17:06:26', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/bidangs/add-save', 'Add New Data Industri dan organisasi at Bidang', '', 1, '2023-11-16 17:08:14', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/spesialisasis/add-save', 'Add New Data Pekerjaan & Karir at Spesialisasi', '', 1, '2023-11-16 17:08:50', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/spesialisasis/add-save', 'Add New Data Keluarga & Hubungan at Spesialisasi', '', 1, '2023-11-16 17:09:21', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/spesialisasis/add-save', 'Add New Data Gangguan Kecemasan at Spesialisasi', '', 1, '2023-11-16 17:09:36', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/spesialisasis/add-save', 'Add New Data Gangguan Kepribadian at Spesialisasi', '', 1, '2023-11-16 17:09:54', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/users2/delete/2', 'Delete data Junita at User', '', 1, '2023-11-16 17:11:55', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselors/delete/4', 'Delete data Junita at Konselor', '', 1, '2023-11-16 17:12:12', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu/delete/2', 'Delete data 2 at janji temu', '', 1, '2023-11-16 17:12:22', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/topiks/delete/5', 'Delete data depresi at Topik', '', 1, '2023-11-16 17:12:35', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/topik_janji_temu/delete/4', 'Delete data 4 at Topik Janji Temu', '', 1, '2023-11-16 17:12:43', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/topik_janji_temu/delete/3', 'Delete data 3 at Topik Janji Temu', '', 1, '2023-11-16 17:12:47', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/topiks/delete/3', 'Delete data gatau at Topik', '', 1, '2023-11-16 17:12:56', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/topiks/delete/2', 'Delete data galau at Topik', '', 1, '2023-11-16 17:12:59', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/topiks/add-save', 'Add New Data Pekerjaan at Topik', '', 1, '2023-11-16 17:13:27', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/topiks/add-save', 'Add New Data Pengasuhan at Topik', '', 1, '2023-11-16 17:13:36', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/topiks/add-save', 'Add New Data Kecemasan at Topik', '', 1, '2023-11-16 17:13:43', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu/delete/2', 'Delete data 2 at janji temu', '', 1, '2023-11-16 17:13:51', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselors/delete/4', 'Delete data Junita at Konselor', '', 1, '2023-11-16 17:13:57', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselors/delete/3', 'Delete data Katheryn at Konselor', '', 1, '2023-11-16 17:14:01', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pasiens/delete/6', 'Delete data  at Pasien', '', 1, '2023-11-16 17:14:12', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pasiens/edit-save/4', 'Update data  at Pasien', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_pasien</td><td>David</td><td>David Herlambang</td></tr></tbody></table>', 1, '2023-11-16 17:14:32', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pasiens/edit-save/3', 'Update data  at Pasien', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>umur</td><td>65</td><td>31</td></tr><tr><td>nama_pasien</td><td>Test</td><td>Mariana Junita Mawuntu</td></tr></tbody></table>', 1, '2023-11-16 17:14:48', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pasiens/edit-save/2', 'Update data  at Pasien', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>umur</td><td>10</td><td>45</td></tr><tr><td>nama_pasien</td><td>Hai</td><td>Noventa Ladeta</td></tr></tbody></table>', 1, '2023-11-16 17:15:16', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pasiens/edit-save/4', 'Update data  at Pasien', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>umur</td><td>21</td><td>44</td></tr></tbody></table>', 1, '2023-11-16 17:15:23', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/anaks/edit-save/2', 'Update data Henri Nathanael at Anak', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_anak</td><td>Bebek</td><td>Henri Nathanael</td></tr></tbody></table>', 1, '2023-11-16 17:15:50', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/anaks/edit-save/2', 'Update data Henri Nathanael at Anak', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jenis_kelamin</td><td>Perempuan</td><td>Laki-Laki</td></tr></tbody></table>', 1, '2023-11-16 17:15:55', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/anaks/edit-save/1', 'Update data Gaby Hermawan at Anak', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama_anak</td><td>Ayam SInjai</td><td>Gaby Hermawan</td></tr><tr><td>jenis_kelamin</td><td>Laki-Laki</td><td>Perempuan</td></tr></tbody></table>', 1, '2023-11-16 17:16:10', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselors/add-save', 'Add New Data Agdie Tama S.Psi, M.Psi, Psikolog at Konselor', '', 1, '2023-11-16 17:26:40', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/spesialisasis/delete/3', 'Delete data Keluarga at Spesialisasi', '', 1, '2023-11-16 17:27:07', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu/add-save', 'Add New Data  at janji temu', '', 1, '2023-11-16 17:29:59', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pasien_konselor/delete/3', 'Delete data 3 at Pasien Konselor', '', 1, '2023-11-16 17:31:24', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pasien_konselor/delete/2', 'Delete data 2 at Pasien Konselor', '', 1, '2023-11-16 17:31:27', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pasien_konselor/delete/1', 'Delete data 1 at Pasien Konselor', '', 1, '2023-11-16 17:31:30', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pasien_konselor/add-save', 'Add New Data  at Pasien Konselor', '', 1, '2023-11-16 17:32:25', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselor_spesialis/delete/7', 'Delete data 7 at Spesialis Konselor', '', 1, '2023-11-16 17:32:36', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselor_spesialis/delete/6', 'Delete data 6 at Spesialis Konselor', '', 1, '2023-11-16 17:32:39', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselor_spesialis/delete/4', 'Delete data 4 at Spesialis Konselor', '', 1, '2023-11-16 17:32:43', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pembayarans/add-save', 'Add New Data  at Pembayaran', '', 1, '2023-11-16 17:36:06', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pembayarans/add-save', 'Add New Data  at Pembayaran', '', 1, '2023-11-16 17:36:50', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/pembayarans/edit-save/3', 'Update data  at Pembayaran', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>logo</td><td></td><td></td></tr></tbody></table>', 1, '2023-11-16 17:41:46', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@ubayabaik.id logout', '', 1, '2023-11-16 19:17:42', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'mbobebas@gmail.com logout', '', 9, '2023-11-16 19:24:46', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'mbobebas@gmail.com logout', '', 9, '2023-11-16 19:24:54', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'mbobebas@gmail.com logout', '', 9, '2023-11-16 19:25:28', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'mbobebas@gmail.com logout', '', 9, '2023-11-16 19:25:39', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-16 20:32:01', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors/delete-image', 'Delete the image of Agdie Tama S.Psi, M.Psi, Psikolog at Konselor', '', 1, '2023-11-16 20:34:34', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors/delete-image', 'Delete the image of Agdie Tama S.Psi, M.Psi, Psikolog at Konselor', '', 1, '2023-11-16 20:34:41', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors/delete-image', 'Delete the image of Agdie Tama S.Psi, M.Psi, Psikolog at Konselor', '', 1, '2023-11-16 20:34:46', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors/delete-image', 'Delete the image of Agdie Tama S.Psi, M.Psi, Psikolog at Konselor', '', 1, '2023-11-16 20:34:52', NULL),
(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors/delete-image', 'Delete the image of Agdie Tama S.Psi, M.Psi, Psikolog at Konselor', '', 1, '2023-11-16 20:34:58', NULL),
(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors/delete-image', 'Delete the image of Agdie Tama S.Psi, M.Psi, Psikolog at Konselor', '', 1, '2023-11-16 20:35:04', NULL),
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors/delete-image', 'Delete the image of Agdie Tama S.Psi, M.Psi, Psikolog at Konselor', '', 1, '2023-11-16 20:35:10', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/konselors/edit-save/5', 'Update data Agdie Tama S.Psi, M.Psi, Psikolog at Konselor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>CV</td><td></td><td>uploads/1/2023-11/erd_baik3.png</td></tr><tr><td>SIPP</td><td></td><td>uploads/1/2023-11/erd_baik3.png</td></tr><tr><td>Ijazah</td><td></td><td>uploads/1/2023-11/erd_baik3.png</td></tr><tr><td>surat_sebutan_psi</td><td></td><td>uploads/1/2023-11/erd_baik3.png</td></tr><tr><td>KTP</td><td></td><td>uploads/1/2023-11/erd_baik3.png</td></tr><tr><td>NPWP</td><td></td><td>uploads/1/2023-11/erd_baik3.png</td></tr><tr><td>photo</td><td></td><td>uploads/1/2023-11/erd_baik3.png</td></tr><tr><td>verifikasi_at</td><td>2023-11-17 10:35:10</td><td></td></tr><tr><td>verifikasi_by</td><td>1</td><td></td></tr><tr><td>verifikasi_status</td><td></td><td></td></tr></tbody></table>', 1, '2023-11-16 20:36:14', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/settings/add-save', 'Add New Data default_price at Settings', '', 1, '2023-11-16 20:44:06', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@ubayabaik.id logout', '', 1, '2023-11-16 20:50:15', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Konselor at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-ambulance</td><td>fa fa-user-md</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2023-11-17 03:14:48', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Janji Temu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-times</td><td>fa fa-book</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2023-11-17 03:30:09', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Pasien at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-user-times</td><td>fa fa-group</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2023-11-17 03:30:30', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Update data Topik Janji Temu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2023-11-17 03:32:15', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/delete/13', 'Delete data Pasien Konselor at Menu Management', '', 1, '2023-11-17 03:41:02', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Konselor at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-user</td><td>fa fa-user-md</td></tr><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 1, '2023-11-17 03:59:55', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselor_spesialis/edit-save/13', 'Update data  at Spesialis Konselor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>konselors_id</td><td>9</td><td>8</td></tr></tbody></table>', 1, '2023-11-17 05:04:08', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselor_spesialis/edit-save/12', 'Update data  at Spesialis Konselor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>konselors_id</td><td>9</td><td>8</td></tr></tbody></table>', 1, '2023-11-17 05:04:29', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselor_spesialis/edit-save/11', 'Update data  at Spesialis Konselor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>konselors_id</td><td>9</td><td>8</td></tr></tbody></table>', 1, '2023-11-17 05:04:34', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselors/edit-save/8', 'Update data Mariana Junita Mawuntu S.Psi, MM, M.Psi, Psikolog at Konselor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Mariana Yunita</td><td></td></tr><tr><td>email</td><td>ymawuntu14@gmail.com</td><td></td></tr><tr><td>password</td><td>$2y$10$8qjjdQvr.n7plArb9tCpN.A7VPVy96AqLlaUohamo3SRQ6e9j9Ue2</td><td></td></tr><tr><td>CV</td><td></td><td>uploads/1/2023-11/cv1.jpg</td></tr><tr><td>SIPP</td><td></td><td>uploads/1/2023-11/sipp.jpg</td></tr><tr><td>ijazah</td><td></td><td></td></tr><tr><td>ktp</td><td></td><td></td></tr><tr><td>npwp</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/1/2023-11/hot_air_balloon_basket_stock_illustrations_royalty_free_vector_graphics_clip_art.png</td></tr><tr><td>jadwal</td><td></td><td>Setiap Hari Selasa, Kamis, dan Jumat. Pukul 09.00 - 14.00</td></tr><tr><td>lama_bekerja</td><td></td><td>7</td></tr><tr><td>no_rekening</td><td></td><td>73919836</td></tr><tr><td>nomor_str</td><td>0</td><td>158329037-4661009</td></tr><tr><td>nominal_bayar</td><td>0</td><td></td></tr><tr><td>id_cms_privileges</td><td>3</td><td></td></tr><tr><td>verifikasi_at</td><td></td><td></td></tr><tr><td>verifikasi_status</td><td></td><td></td></tr><tr><td>status_aktif</td><td></td><td>Online</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-11-17 05:16:21', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselors/edit-save/8', 'Update data Mariana Junita Mawuntu S.Psi, MM, M.Psi, Psikolog at Konselor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Mariana Yunita</td><td></td></tr><tr><td>email</td><td>ymawuntu14@gmail.com</td><td></td></tr><tr><td>password</td><td>$2y$10$8qjjdQvr.n7plArb9tCpN.A7VPVy96AqLlaUohamo3SRQ6e9j9Ue2</td><td></td></tr><tr><td>id_cms_privileges</td><td>3</td><td></td></tr><tr><td>verifikasi_at</td><td></td><td></td></tr><tr><td>verifikasi_status</td><td></td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-11-17 05:25:51', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-19 07:22:13', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-19 07:50:53', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-19 07:51:54', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselors/edit-save/9', 'Update data Agdie Tama S.Psi, M.Psi, Psikolog at Konselor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Mbo Bebas</td><td></td></tr><tr><td>email</td><td>mbobebas@gmail.com</td><td></td></tr><tr><td>password</td><td>$2y$10$W4MrRauM8k2700d2TBN52usdUbQhJ/HPwglpCVGCWRBmXNYcS1szS</td><td></td></tr><tr><td>nama_konselor</td><td></td><td>Agdie Tama S.Psi, M.Psi, Psikolog</td></tr><tr><td>tgl_lahir</td><td></td><td>1970-06-16</td></tr><tr><td>jenis_kelamin</td><td></td><td>Laki-Laki</td></tr><tr><td>CV</td><td></td><td>uploads/1/2023-11/cv1.jpg</td></tr><tr><td>SIPP</td><td></td><td>uploads/1/2023-11/sipp.jpg</td></tr><tr><td>ijazah</td><td></td><td></td></tr><tr><td>ktp</td><td></td><td></td></tr><tr><td>npwp</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/1/2023-11/sea_island_shore_palm_leaves_on_foreground_vector_image_on_vectorstock.jpg</td></tr><tr><td>jadwal</td><td></td><td>Setiap Hari Senin, Kamis, dan Jumat. Pukul 07.00 - 11.00</td></tr><tr><td>lama_bekerja</td><td></td><td>10</td></tr><tr><td>no_rekening</td><td></td><td>09876541</td></tr><tr><td>nomor_str</td><td>0</td><td>158329037-4661009</td></tr><tr><td>nominal_bayar</td><td>0</td><td>50000</td></tr><tr><td>id_cms_privileges</td><td>4</td><td></td></tr><tr><td>verifikasi_at</td><td></td><td></td></tr><tr><td>verifikasi_status</td><td></td><td></td></tr><tr><td>status_aktif</td><td></td><td>Offline</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-11-19 07:54:37', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@ubayabaik.id logout', '', 1, '2023-11-19 07:56:31', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@ubayabaik.id logout', '', 1, '2023-11-19 08:05:28', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-19 08:36:34', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-19 09:05:29', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/delete/19', 'Delete data Anak at Menu Management', '', 1, '2023-11-19 10:22:56', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/module_generator/delete/24', 'Delete data Pasien Konselor at Module Generator', '', 1, '2023-11-19 10:25:39', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu/add-save', 'Add New Data  at janji temu', '', 1, '2023-11-19 10:30:56', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/janji_temu/edit-save/4', 'Update data  at janji temu', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>janji_temu_id</td><td></td><td></td></tr><tr><td>durasi_konsultasi</td><td>100</td><td></td></tr><tr><td>catatan_kasus</td><td></td><td></td></tr><tr><td>presentase_kesesuaian</td><td></td><td></td></tr><tr><td>rekomendasi</td><td></td><td></td></tr></tbody></table>', 1, '2023-11-19 10:31:26', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/anaks', 'Try view the data :name at Anak', '', 8, '2023-11-19 10:31:42', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Anak at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2023-11-19 10:32:16', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/anaks', 'Try view the data :name at Anak', '', 8, '2023-11-19 10:32:30', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/anaks', 'Try view the data :name at Anak', '', 8, '2023-11-19 10:34:30', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'ymawuntu14@gmail.com logout', '', 8, '2023-11-19 10:34:44', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Anak at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2023-11-19 10:37:47', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-20 03:11:57', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/login', 'admin@ubayabaik.id login with IP Address 127.0.0.1', '', 1, '2023-11-20 08:39:41', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/menu_management/delete/7', 'Delete data Pasien at Menu Management', '', 1, '2023-11-20 08:41:03', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/konselors/edit-save/7', 'Update data Katheryn Natasia S.Psi, M.Psi, Psikolog at Konselor', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Katheryn Natasia</td><td></td></tr><tr><td>email</td><td>katherynatasialiem@gmail.com</td><td></td></tr><tr><td>password</td><td>$2y$10$J9jug6XkOu6cbOYVXDVxGeCcCPCRgeR09y2h75gTHATzEt3BWShze</td><td></td></tr><tr><td>CV</td><td></td><td>uploads/1/2023-11/cv1.jpg</td></tr><tr><td>SIPP</td><td></td><td>uploads/1/2023-11/sipp.jpg</td></tr><tr><td>ijazah</td><td></td><td></td></tr><tr><td>ktp</td><td></td><td></td></tr><tr><td>npwp</td><td></td><td></td></tr><tr><td>photo</td><td></td><td>uploads/1/2023-11/boat.jpg</td></tr><tr><td>id_cms_privileges</td><td>4</td><td></td></tr><tr><td>verifikasi_at</td><td></td><td></td></tr><tr><td>verifikasi_status</td><td></td><td></td></tr><tr><td>status_aktif</td><td></td><td>Online</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-11-20 08:43:10', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.0.0', 'http://127.0.0.1:8000/admin/users2/edit-save/3', 'Update data Yolenta at User', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>jenis_kelamin</td><td></td><td>Perempuan</td></tr><tr><td>umur</td><td>0</td><td>35</td></tr><tr><td>email_verified_at</td><td></td><td></td></tr><tr><td>google_id</td><td></td><td></td></tr><tr><td>password</td><td>$2y$10$R9NPhav.qBHSk.S6lEHqaO1NDHVAFT8VerO2CYFzWPiqogwD6l9ii</td><td>$2y$10$htzEFZl89nz3/f0XJi1.pOKe/GF6/6rCd9/yKLK55or2tn/Xq7c3i</td></tr><tr><td>remember_token</td><td></td><td></td></tr></tbody></table>', 1, '2023-11-20 08:44:07', NULL);

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
(3, 'Pembayaran', 'Route', 'AdminPembayaransControllerGetIndex', 'normal', 'fa fa-money', 0, 1, 0, 1, 12, '2023-10-29 22:39:41', '2023-11-16 10:17:00'),
(5, 'User', 'Route', 'AdminUsers2ControllerGetIndex', NULL, 'fa fa-user', 0, 1, 0, 1, 3, '2023-10-31 17:58:30', NULL),
(6, 'Janji Temu', 'Route', 'AdminJanjiTemuControllerGetIndex', 'normal', 'fa fa-book', 0, 1, 0, 1, 7, '2023-10-31 18:07:39', '2023-11-17 03:30:09'),
(8, 'Anak', 'Route', 'AdminAnaksControllerGetIndex', 'normal', 'fa fa-child', 0, 1, 0, 1, 6, '2023-10-31 19:03:46', '2023-11-19 10:37:47'),
(9, 'Konselor', 'Route', 'AdminKonselorsControllerGetIndex', 'normal', 'fa fa-user-md', 0, 1, 0, 1, 4, '2023-10-31 19:07:31', '2023-11-17 03:14:48'),
(10, 'Topik', 'Route', 'AdminTopiksControllerGetIndex', NULL, 'fa fa-hashtag', 0, 1, 0, 1, 8, '2023-10-31 20:36:03', NULL),
(12, 'Spesialis Konselor', 'Route', 'AdminKonselorSpesialisControllerGetIndex', NULL, 'fa fa-font', 0, 1, 0, 1, 10, '2023-10-31 21:50:20', NULL),
(14, 'Topik Janji Temu', 'Route', 'AdminTopikJanjiTemuControllerGetIndex', 'normal', 'fa fa-book', 0, 1, 0, 1, 9, '2023-11-04 21:33:19', '2023-11-17 03:32:15'),
(16, 'Konselor', 'Route', 'KonselorKonselors27ControllerGetIndex', 'normal', 'fa fa-user-md', 0, 1, 0, 4, 13, '2023-11-16 01:54:16', '2023-11-17 03:59:55'),
(17, 'Janji Temu', 'Route', 'KonselorJanjiTemu28ControllerGetIndex', 'normal', 'fa fa-book', 0, 1, 0, 1, 16, '2023-11-16 02:08:51', '2023-11-16 02:11:48'),
(18, 'Pasien', 'Route', 'KonselorPasiens29ControllerGetIndex', 'normal', 'fa fa-user', 0, 1, 0, 1, 14, '2023-11-16 02:40:34', '2023-11-16 02:43:42'),
(20, 'Pembayaran', 'Route', 'KeuanganPembayaransControllerGetIndex', 'normal', 'fa fa-money', 0, 1, 0, 1, 17, '2023-11-16 10:12:09', '2023-11-16 10:13:24'),
(21, 'Janji Temu', 'Route', 'KeuanganJanjiTemuControllerGetIndex', 'normal', 'fa fa-book', 0, 1, 0, 1, 18, '2023-11-16 10:19:10', '2023-11-16 10:20:59'),
(22, 'Konselor', 'Route', 'KeuanganKonselorsControllerGetIndex', 'normal', 'fa fa-user-md', 0, 1, 0, 1, 19, '2023-11-16 10:27:29', '2023-11-16 10:39:29');

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
(6, 4, 1),
(7, 5, 1),
(12, 10, 1),
(13, 11, 1),
(14, 12, 1),
(15, 13, 1),
(19, 2, 1),
(36, 15, 4),
(42, 17, 4),
(46, 18, 4),
(50, 19, 4),
(52, 20, 3),
(53, 3, 1),
(55, 21, 3),
(59, 22, 3),
(60, 9, 1),
(61, 6, 1),
(62, 7, 1),
(63, 14, 1),
(64, 16, 4),
(67, 8, 1);

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
(24, 'Pasien Konselor', 'fa fa-star', 'pasien_konselor', 'pasien_konselor', 'AdminPasienKonselorController', 0, 0, '2023-11-04 21:21:26', NULL, '2023-11-19 10:25:39'),
(25, 'Topik Janji Temu', 'fa fa-book', 'topik_janji_temu', 'topik_janji_temu', 'AdminTopikJanjiTemuController', 0, 0, '2023-11-04 21:33:19', NULL, NULL),
(26, 'Konselor Role', 'fa fa-glass', 'konselors26', 'konselors', 'KonselorKonselorsController', 0, 0, '2023-11-16 00:58:03', NULL, '2023-11-16 01:52:13'),
(27, 'Role Konselor', 'fa fa-user', 'konselors27', 'konselors', 'KonselorKonselors27Controller', 0, 0, '2023-11-16 01:54:16', NULL, NULL),
(28, 'Role Janji Temu', 'fa fa-dashboard', 'konselor_janji_temu28', 'janji_temu', 'KonselorJanjiTemu28Controller', 0, 0, '2023-11-16 02:08:51', NULL, NULL),
(29, 'Pasien', 'fa fa-group', 'konselor_pasiens29', 'pasiens', 'KonselorPasiens29Controller', 0, 0, '2023-11-16 02:40:34', NULL, NULL),
(30, 'Role Anak', 'fa fa-group', 'konselor_anaks', 'anaks', 'KonselorAnaksController', 0, 0, '2023-11-16 09:47:51', NULL, NULL),
(31, 'Keuangan Pembayaran', 'fa fa-money', 'keuangan_pembayarans', 'pembayarans', 'KeuanganPembayaransController', 0, 0, '2023-11-16 10:12:09', NULL, NULL),
(32, 'Keuangan Janji Temu', 'fa fa-money', 'keuangan_janji_temu', 'janji_temu', 'KeuanganJanjiTemuController', 0, 0, '2023-11-16 10:19:09', NULL, NULL),
(33, 'Keuangan Konselor', 'fa fa-user-md', 'keuangan_konselors', 'konselors', 'KeuanganKonselorsController', 0, 0, '2023-11-16 10:27:29', NULL, NULL);

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
(1, 'Super Administrator', 1, 'skin-yellow', '2023-10-29 13:16:18', NULL),
(3, 'Admin Keuangan', 0, 'skin-purple-light', NULL, NULL),
(4, 'Konselor', 0, 'skin-blue-light', NULL, NULL);

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
(115, 1, 0, 1, 0, 0, 3, 32, NULL, NULL),
(116, 1, 0, 1, 0, 0, 3, 33, NULL, NULL),
(117, 1, 1, 1, 1, 1, 3, 31, NULL, NULL),
(118, 1, 1, 1, 1, 1, 3, 4, NULL, NULL),
(119, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(120, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(121, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(122, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(123, 1, 1, 1, 1, 1, 1, 33, NULL, NULL),
(124, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(125, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(126, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(127, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(128, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(129, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(130, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(131, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(132, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(133, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(134, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(135, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(136, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(137, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(147, 1, 0, 1, 0, 0, 4, 19, NULL, NULL),
(148, 1, 0, 1, 0, 0, 4, 29, NULL, NULL),
(149, 1, 0, 1, 1, 0, 4, 28, NULL, NULL),
(150, 1, 0, 1, 1, 0, 4, 27, NULL, NULL),
(151, 1, 1, 1, 1, 1, 4, 4, NULL, NULL);

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
(10, 'appname', 'BAIK Apps', 'text', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2023-10-29 13:16:18', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', NULL, 'upload_image', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2023-10-29 13:16:18', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2023-10-29 13:16:18', NULL, 'Application Setting', 'Google FCM Key'),
(17, 'default_price', '50000', 'number', NULL, NULL, '2023-11-16 20:44:06', NULL, 'Aplikasi', 'Default Price');

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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_konselor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `CV` blob DEFAULT NULL,
  `SIPP` blob DEFAULT NULL,
  `ijazah` blob DEFAULT NULL,
  `ktp` blob DEFAULT NULL,
  `npwp` blob DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jadwal` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lama_bekerja` int(11) DEFAULT NULL,
  `no_rekening` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_str` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominal_bayar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `verifikasi_at` timestamp NULL DEFAULT NULL,
  `verifikasi_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_aktif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `email`, `password`, `nama_konselor`, `tgl_lahir`, `jenis_kelamin`, `CV`, `SIPP`, `ijazah`, `ktp`, `npwp`, `photo`, `jadwal`, `lama_bekerja`, `no_rekening`, `nomor_str`, `nominal_bayar`, `id_cms_privileges`, `verifikasi_at`, `verifikasi_status`, `status_aktif`, `created_at`, `updated_at`, `status`) VALUES
(1, 'admin@ubayabaik.id', '$2y$10$HblZh1e.lzaLlDhiF5EorOjpJZkJlkSNDgH96l/r7B0hHndlBLBSC', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '382910465', '0', '0', 1, NULL, NULL, NULL, '2023-10-29 13:16:17', '2023-11-20 03:36:31', 'Active'),
(6, 's160420038@student.ubaya.ac.id', '$2y$10$JH1LbufFNL8UdgSLW/129OCGyq3R1iCWZ7zW.T.EH2vKEBywQB/dy', '', NULL, 'Perempuan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '74830294', '0', '0', 1, NULL, NULL, NULL, NULL, '2023-11-20 03:37:35', 'Active'),
(7, 'katherynatasialiem@gmail.com', '$2y$10$J9jug6XkOu6cbOYVXDVxGeCcCPCRgeR09y2h75gTHATzEt3BWShze', 'Katheryn Natasia S.Psi, M.Psi, Psikolog', '1993-01-12', 'Perempuan', 0x75706c6f6164732f312f323032332d31312f6376312e6a7067, 0x75706c6f6164732f312f323032332d31312f736970702e6a7067, 0x75706c6f6164732f312f323032332d31312f696a617a61682e706e67, 0x75706c6f6164732f312f323032332d31312f6b74702e6a7067, 0x75706c6f6164732f312f323032332d31312f6e7077702e6a7067, 'uploads/1/2023-11/boat.jpg', 'Setiap Hari Selasa, Kamis, dan Jumat. Pukul 09.00 - 14.00', 5, '193858027', '158082037-4626909', '75000', 4, NULL, NULL, 'Online', NULL, '2023-11-20 08:43:10', 'Active'),
(8, 'ymawuntu14@gmail.com', '$2y$10$8qjjdQvr.n7plArb9tCpN.A7VPVy96AqLlaUohamo3SRQ6e9j9Ue2', 'Mariana Junita Mawuntu S.Psi, MM, M.Psi, Psikolog', '1972-11-17', 'Perempuan', 0x75706c6f6164732f312f323032332d31312f6376312e6a7067, 0x75706c6f6164732f312f323032332d31312f736970702e6a7067, 0x75706c6f6164732f312f323032332d31312f696a617a61682e706e67, 0x75706c6f6164732f312f323032332d31312f6b74702e6a7067, 0x75706c6f6164732f312f323032332d31312f6e7077702e6a7067, 'uploads/1/2023-11/hot_air_balloon_basket_stock_illustrations_royalty_free_vector_graphics_clip_art.png', 'Setiap Hari Selasa, Kamis, dan Jumat. Pukul 09.00 - 14.00', 7, '73919836', '158329037-4661009', '100000', 4, NULL, NULL, 'Online', NULL, '2023-11-20 04:10:42', 'Active'),
(9, 'mbobebas@gmail.com', '$2y$10$W4MrRauM8k2700d2TBN52usdUbQhJ/HPwglpCVGCWRBmXNYcS1szS', 'Agdie Tama S.Psi, M.Psi, Psikolog', '1970-06-16', 'Laki-Laki', 0x75706c6f6164732f312f323032332d31312f6376312e6a7067, 0x75706c6f6164732f312f323032332d31312f736970702e6a7067, 0x75706c6f6164732f312f323032332d31312f696a617a61682e706e67, 0x75706c6f6164732f312f323032332d31312f6b74702e6a7067, 0x75706c6f6164732f312f323032332d31312f6e7077702e6a7067, 'uploads/1/2023-11/sea_island_shore_palm_leaves_on_foreground_vector_image_on_vectorstock.jpg', 'Setiap Hari Senin, Kamis, dan Jumat. Pukul 07.00 - 11.00', 10, '09876541', '158329037-4661009', '50000', 4, NULL, NULL, 'Offline', '2023-11-17 02:24:40', '2023-11-19 07:54:37', 'Active');

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
  `nominal` int(11) NOT NULL DEFAULT 0,
  `bank_id` int(11) NOT NULL,
  `tgl_konsultasi_mulai` datetime NOT NULL,
  `tgl_konsultasi_selesai` datetime DEFAULT NULL,
  `durasi_konsultasi` int(11) DEFAULT NULL,
  `catatan_kasus` longtext DEFAULT NULL,
  `presentase_kesesuaian` varchar(45) DEFAULT NULL,
  `rekomendasi` varchar(255) DEFAULT NULL,
  `perlu_lanjut` varchar(255) DEFAULT NULL,
  `konselor_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `janji_temu`
--

INSERT INTO `janji_temu` (`id`, `keluhan`, `janji_temu_id`, `pasien_id`, `nominal`, `bank_id`, `tgl_konsultasi_mulai`, `tgl_konsultasi_selesai`, `durasi_konsultasi`, `catatan_kasus`, `presentase_kesesuaian`, `rekomendasi`, `perlu_lanjut`, `konselor_id`, `created_at`, `updated_at`) VALUES
(3, 'Selama saya bekerja di perusahaan yang baru ini, saya cukup banyak menelantarkan anak saya. Sampai saya sendiri tidak tahu apa kesukaan anak saya ataupun apa yang dia senangi. Kita juga jadi lebih menjauh daripada biasanya', NULL, 4, 87000, 2, '2023-11-08 10:33:00', '2023-11-08 11:12:00', 39, NULL, NULL, NULL, 'Ya', 9, '2023-11-16 17:29:58', '2023-11-17 04:21:13'),
(4, 'saya capek dengan anak saya karena pekerjaan saya juga berat', NULL, 3, 50000, 5, '2023-11-13 13:00:00', '2023-11-13 14:40:00', 100, NULL, NULL, NULL, 'Tidak', 8, '2023-11-19 10:30:55', '2023-11-19 10:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `konselors`
--

CREATE TABLE `konselors` (
  `id` int(20) NOT NULL,
  `nama_konselor` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(45) NOT NULL,
  `CV` blob DEFAULT NULL,
  `SIPP` blob DEFAULT NULL,
  `Ijazah` blob DEFAULT NULL,
  `surat_sebutan_psi` blob DEFAULT NULL,
  `KTP` blob DEFAULT NULL,
  `NPWP` blob DEFAULT NULL,
  `photo` blob DEFAULT NULL,
  `no_rekening` varchar(45) NOT NULL,
  `verifikasi_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `verifikasi_by` int(11) DEFAULT NULL,
  `verifikasi_status` varchar(255) DEFAULT NULL,
  `status_aktif` varchar(255) DEFAULT NULL,
  `jadwal` text DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `nomor_str` varchar(255) NOT NULL,
  `lama_bekerja` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konselors`
--

INSERT INTO `konselors` (`id`, `nama_konselor`, `tgl_lahir`, `jenis_kelamin`, `CV`, `SIPP`, `Ijazah`, `surat_sebutan_psi`, `KTP`, `NPWP`, `photo`, `no_rekening`, `verifikasi_at`, `verifikasi_by`, `verifikasi_status`, `status_aktif`, `jadwal`, `users_id`, `nomor_str`, `lama_bekerja`, `created_at`, `updated_at`) VALUES
(5, 'Agdie Tama S.Psi, M.Psi, Psikolog', '1975-05-06', 'Perempuan', 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, 0x75706c6f6164732f312f323032332d31312f6572645f6261696b332e706e67, '670843680', '2023-11-17 04:12:10', 1, NULL, 'Online', 'Setiap Hari Senin, Selasa, Jumat. Pukul 10.00 - 16.00', 15, '158329037-4661009', 7, '2023-11-16 17:26:40', '2023-11-17 04:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `konselor_spesialis`
--

CREATE TABLE `konselor_spesialis` (
  `id` int(11) NOT NULL,
  `cms_users_id` int(10) UNSIGNED DEFAULT NULL,
  `spesialisasis_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konselor_spesialis`
--

INSERT INTO `konselor_spesialis` (`id`, `cms_users_id`, `spesialisasis_id`) VALUES
(17, 8, 7),
(18, 8, 6),
(19, 8, 1),
(20, 9, 2),
(21, 9, 7),
(22, 9, 5),
(23, 7, 8),
(24, 7, 5),
(25, 7, 4);

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
  `nama_pasien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passowrd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `jenis_kelamin`, `umur`, `nama_pasien`, `email`, `email_verified_at`, `google_id`, `passowrd`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Perempuan', 45, 'Noventa Ladeta', '', NULL, NULL, '', NULL, '2023-11-10 06:57:17', '2023-11-16 17:15:16'),
(3, 'Perempuan', 31, 'Mariana Junita Mawuntu', '', NULL, NULL, '', NULL, '2023-11-10 06:57:17', '2023-11-16 17:14:48'),
(4, 'Laki-Laki', 44, 'David Herlambang', '', NULL, NULL, '', NULL, '2023-11-13 10:01:22', '2023-11-16 17:15:23'),
(5, 'Perempuan', 30, 'Mariana Junita', '', NULL, NULL, '', NULL, '2023-11-16 08:00:55', '2023-11-16 08:00:55'),
(7, 'Laki-Laki', 45, 'Felix', '', NULL, NULL, '', NULL, '2023-11-16 19:27:35', '2023-11-16 19:27:35'),
(8, 'Perempuan', 56, 'Sarah Wijayanto', '', NULL, NULL, '', NULL, '2023-11-16 20:23:05', '2023-11-16 20:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` int(11) NOT NULL,
  `logo` blob NOT NULL,
  `jenis_pembayaran` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `logo`, `jenis_pembayaran`, `created_at`, `updated_at`) VALUES
(1, '', 'BNI', '2023-11-13 09:38:46', NULL),
(2, '', 'BCA', '2023-11-13 09:38:57', '2023-11-13 09:39:22'),
(3, 0x75706c6f6164732f312f323032332d31312f6d616e646972692e6a7067, 'MANDIRI', '2023-11-13 09:39:34', '2023-11-16 17:41:46'),
(4, 0x75706c6f6164732f312f323032332d31312f6f766f2e6a7067, 'OVO', '2023-11-16 17:36:06', NULL),
(5, 0x75706c6f6164732f312f323032332d31312f64616e612e706e67, 'DANA', '2023-11-16 17:36:50', NULL);

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
(4, 'Stress', 1, '2023-11-10 06:59:38', NULL),
(5, 'Pekerjaan & Karir', 4, '2023-11-16 17:08:50', NULL),
(6, 'Keluarga & Hubungan', 3, '2023-11-16 17:09:21', NULL),
(7, 'Gangguan Kecemasan', 1, '2023-11-16 17:09:36', NULL),
(8, 'Gangguan Kepribadian', 1, '2023-11-16 17:09:54', NULL);

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
(4, 'stress', '2023-11-04 21:59:58', NULL),
(5, 'depresi', '2023-11-04 22:00:05', NULL),
(6, 'Pekerjaan', '2023-11-16 17:13:27', NULL),
(7, 'Pengasuhan', '2023-11-16 17:13:36', NULL),
(8, 'Kecemasan', '2023-11-16 17:13:43', NULL);

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
(5, 8, 3),
(6, 6, 3),
(7, 7, 3),
(10, 8, 4),
(11, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `nama_pasien`, `jenis_kelamin`, `umur`, `email`, `email_verified_at`, `google_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Katheryn', '', 0, 'admin@ubayabaik', NULL, NULL, '$2y$10$O2rqAl..QMVc/w4j9OR/YecQqSj6L/EMAC/AJdo66SNsebrFnaDxG', NULL, '2023-10-31 20:51:37', NULL),
(2, 'Junita', '', 0, 'junjun@ubaya.baik', NULL, NULL, '$2y$10$37IoKvncV6lrUArX2mi2suxkPrMeVrWmCIT/6taXPmRUyjYSSFHFG', NULL, '2023-11-04 20:48:41', '2023-11-13 04:56:05'),
(3, 'Yolenta', 'Perempuan', 35, 'yola@gmail.com', NULL, NULL, '$2y$10$htzEFZl89nz3/f0XJi1.pOKe/GF6/6rCd9/yKLK55or2tn/Xq7c3i', NULL, '2023-11-04 20:48:57', '2023-11-20 08:44:07'),
(4, 'David', '', 0, 'david@gmail.com', NULL, NULL, '$2y$10$T8pjgfdYGa/8/KqdWo4Uke2KSSuYLDAudZl2LnRUnFgTr0P3JZlhm', NULL, '2023-11-04 21:15:31', NULL),
(5, 'Adgie', '', 0, 'adgie@gmail.com', NULL, NULL, '$2y$10$CNsFsuKcZI7rt7whO4n21.YnxiMfWWg98yTWm.LYxFqoTqGiEQ0Ui', NULL, '2023-11-04 21:15:45', NULL),
(10, 'KATHERYN NATASIA LIEM CHRISLIANTI _', '', 0, 's160420038@student.ubaya.ac.id', NULL, '108301379835168699034', '$2y$10$frUEQW5WGQ1Op3VqEqnXN.N5T4N0qNrACyyabH875w0duleFb81pW', 'F3HLeqRtB4h8CRlmjaE4s25U8JKIP4MZGA0Qr4gwvltBQHFtTP5JeE9HF0lj', '2023-11-15 18:53:09', '2023-11-16 02:01:12'),
(13, 'Katheryn Natasia', '', 0, 'katherynatasialiem@gmail.com', NULL, '109342889608692761046', '$2y$10$kb/xQ9NKpPv.JGVDVra.r.hr.Q4X1G4mNmKFSJC4/y4r095djmXUu', '73e3hRZYBhmt2s67Y5OBMLzFYkC6PMMb5ZxwWerc2gDigret6AWxoLMeaPRY', '2023-11-15 18:59:27', '2023-11-16 01:59:34'),
(14, 'Mariana Yunita', '', 0, 'ymawuntu14@gmail.com', NULL, '104493692090950621833', '$2y$10$sdq./aQWg4TkS.qvoYddSuM4XJP7dklzATBAn8cq1YY8o3YGnrgJ6', 'mxECDJRVJQH5BqwG7bibLlbtXtJupbwaS0AMNx0sosU2PvQwZww4VNaMPWXL', '2023-11-16 07:59:18', '2023-11-16 14:59:26'),
(15, 'Mbo Bebas', '', 0, 'mbobebas@gmail.com', NULL, '112145646681532680706', '$2y$10$Xe1CRqPYl/76duSkMlno1ucgyx/nrcviT2p9Te1.1mjQlICZMV8Pe', 'ayTtK3iUZaOkhLSrXbNflFRTABbtq7vGkUXJybta2KdRUwGtcM7JW7Etp1aI', '2023-11-16 19:26:21', '2023-11-17 03:51:07'),
(17, 'Kalong MeLife', '', 0, 'kalongmelife@gmail.com', NULL, '110503399047046502243', '$2y$10$WDnYD85RQ9KfNL5lutRDm.W8u/6beOv5zZXYott0ISJk9pq82p/3.', 'py3Kb2Baxc4ReJJwVmfeptiRQnreyqenqDxXpNqd2AyEhxIdiB9CPmAYjuHm', '2023-11-16 20:21:50', '2023-11-17 03:22:01');

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
  ADD UNIQUE KEY `nomor_induk` (`nomor_str`),
  ADD KEY `FK_konselors_users` (`users_id`);

--
-- Indexes for table `konselor_spesialis`
--
ALTER TABLE `konselor_spesialis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__spesialisasis` (`spesialisasis_id`),
  ADD KEY `FK__konselors` (`cms_users_id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasiens`
--
ALTER TABLE `pasiens`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `janji_temu`
--
ALTER TABLE `janji_temu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `konselors`
--
ALTER TABLE `konselors`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `konselor_spesialis`
--
ALTER TABLE `konselor_spesialis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `spesialisasis`
--
ALTER TABLE `spesialisasis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `topiks`
--
ALTER TABLE `topiks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `topik_janji_temu`
--
ALTER TABLE `topik_janji_temu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anaks`
--
ALTER TABLE `anaks`
  ADD CONSTRAINT `anaks_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `janji_temu`
--
ALTER TABLE `janji_temu`
  ADD CONSTRAINT `janji_temu_ibfk_1` FOREIGN KEY (`janji_temu_id`) REFERENCES `janji_temu` (`id`),
  ADD CONSTRAINT `janji_temu_ibfk_2` FOREIGN KEY (`pasien_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `janji_temu_ibfk_4` FOREIGN KEY (`bank_id`) REFERENCES `pembayarans` (`id`),
  ADD CONSTRAINT `janji_temu_ibfk_5` FOREIGN KEY (`konselor_id`) REFERENCES `cms_users` (`id`);

--
-- Constraints for table `konselors`
--
ALTER TABLE `konselors`
  ADD CONSTRAINT `konselors_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `konselor_spesialis`
--
ALTER TABLE `konselor_spesialis`
  ADD CONSTRAINT `FK__spesialisasis` FOREIGN KEY (`spesialisasis_id`) REFERENCES `spesialisasis` (`id`),
  ADD CONSTRAINT `konselor_spesialis_ibfk_1` FOREIGN KEY (`cms_users_id`) REFERENCES `cms_users` (`id`);

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
