-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 20, 2022 at 06:12 PM
-- Server version: 5.7.37
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `photo`, `display`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Quảng cáo hay', '/storage/img/banners/1_unmVsOH7qujPeBwFN5Y2Zw.png', 1, '2021-11-12 08:58:52', '2022-06-18 11:59:49', NULL),
(3, 'Banner1', '/storage/img/banners/1_YMFKP8e6kR9cbM3IKXBtLw.png', 1, '2021-11-12 08:58:52', '2021-11-18 11:29:52', NULL),
(4, 'Banner2', '/storage/img/banners/1655528419_Banner2.jpg', 0, '2022-06-18 12:00:19', '2022-06-18 12:01:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL,
  `photo` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `display`, `photo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Frontend', 'Phần front-end của một trang web là phần tương tác với người dùng. Tất cả mọi thứ bạn nhìn thấy khi điều hướng trên Internet, từ các font chữ, màu sắc cho tới các menu xổ xuống và các thanh trượt, là một sự kết hợp của HTML, CSS, và JavaScript được điều khiển bởi trình duyệt máy tính của bạn.', 1, '/storage/img/categories/frontend.png', NULL, NULL, '2022-06-14 22:15:07'),
(2, 'Backend', 'Backend là gì? Thế nhưng điều gì giúp phần front-end của một trang web có thể hoạt động được? Tất cả dữ liệu sẽ được lưu trữ ở đâu? Đó là phần việc của back end. Phần back end của một trang web bao gồm một máy chủ, một ứng dụng, và một cơ sở dữ liệu. Một lập trình viên back-end xây dựng và duy trì công nghệ mà sức mạnh của những thành phần đó, cho phép phần giao diện người dùng của trang web có thể tồn tại được.', 1, '/storage/img/categories/backend.jpg', NULL, NULL, '2022-06-14 22:15:37'),
(3, 'Testing', 'Kiểm thử hay còn gọi là testing, là quá trình đánh giá một hệ thống hay các thành phần của nó với mục đích tìm xem liệu hệ thống có đáp ứng các yêu cầu được đã được chỉ định hay không. Nói một cách đơn giản, kiểm thử được thực hiện trên một hệ thống để xác định bất kỳ lỗ hổng, các lỗi hoặc các yêu cầu đang bị thiếu hay trái ngược với các yêu cầu thực tế đã được đề ra.', 1, '/storage/img/categories/test.png', NULL, NULL, '2022-06-21 01:09:58'),
(4, 'Data Engine', 'Database Engine là Cơ sở dữ liệu. Đây là nghĩa tiếng Việt của thuật ngữ Database Engine - một thuật ngữ thuộc nhóm Technology Terms - Công nghệ thông tin.', 1, '/storage/img/categories/datascience.jpg', NULL, NULL, '2022-06-18 11:29:25'),
(5, 'He', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, NULL, '2022-02-21 09:45:18', '2022-02-21 09:45:12', '2022-02-21 09:45:18'),
(6, 'fasdfasdf', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, NULL, '2022-03-01 06:32:37', '2022-03-01 06:32:24', '2022-03-01 06:32:37'),
(9, 'fsadfsdaf', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, NULL, '2022-03-12 03:09:32', '2022-03-12 02:42:24', '2022-03-12 03:09:32'),
(10, 'Software', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, NULL, '2022-03-12 03:12:52', '2022-03-12 03:10:05', '2022-03-12 03:12:52'),
(11, '123', 'Học rất tốt haha', 1, '/storage/img/categories/1655526235_Test.jpg', '2022-06-18 11:24:21', '2022-06-18 11:23:55', '2022-06-18 11:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `name`, `description`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Bằng xuất sắc', 'Ea inventore ut et ullam. Nostrum rerum et esse enim odit. Atque velit delectus fuga ipsa voluptas minus in ea.', '/storage/img/certificates/certificate.png', '2022-05-18 16:57:52', '2022-05-18 16:57:55', NULL),
(7, 'Bằng giỏi', 'Aliquam tenetur explicabo repellendus. Et iste perspiciatis quaerat. Qui tempore error recusandae sit deleniti.', NULL, '2022-05-11 16:57:59', '2022-05-18 16:58:02', NULL),
(8, 'Bằng khá', 'Rerum et tenetur eligendi incidunt. Magnam consequatur reprehenderit eos alias deleniti ducimus. Et itaque libero sit dolore dolore. Quo et et dolorem voluptas alias placeat.', NULL, '2022-05-18 16:58:05', '2022-05-18 16:58:12', NULL),
(9, 'Bằng trung bình', 'Dolorum voluptatem odit eligendi et enim. Distinctio eos rerum optio in.', NULL, '2022-05-18 16:58:07', '2022-05-18 16:58:14', NULL),
(10, 'Bằng đặc biệt', 'Dolores maxime maiores nobis natus natus sed. Vitae est nulla dolorum magni magni. Recusandae vero aut quas quae impedit aliquid et. Voluptatibus nisi et assumenda aut dicta.', NULL, '2022-05-18 16:58:09', '2022-05-18 16:58:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `start_day` date DEFAULT NULL,
  `end_day` date DEFAULT NULL,
  `sessions` int(11) NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `days_of_week` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'arrange',
  `number` int(11) NOT NULL DEFAULT '1',
  `time_in` time NOT NULL DEFAULT '18:00:00',
  `time_out` time NOT NULL DEFAULT '21:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `product_id`, `start_day`, `end_day`, `sessions`, `teacher_id`, `created_at`, `updated_at`, `deleted_at`, `days_of_week`, `status`, `number`, `time_in`, `time_out`) VALUES
(1, 6, '2022-02-17', NULL, 50, 1, NULL, NULL, NULL, '2/4/6', 'finish', 1, '18:00:00', '21:00:00'),
(2, 6, '2022-04-07', NULL, 72, 2, NULL, '2022-04-07 10:26:01', NULL, '2/4/6', 'finish', 2, '18:00:00', '21:00:00'),
(3, 6, '2022-04-07', NULL, 72, 1, NULL, '2022-03-20 07:23:05', '2022-03-20 07:23:05', '2/4/6', 'arrange', 3, '18:00:00', '21:00:00'),
(4, 1, '2022-04-07', NULL, 72, 1, NULL, NULL, NULL, '2/4/6', 'arrange', 2, '18:00:00', '21:00:00'),
(8, 5, '2022-04-07', NULL, 50, 3, '2022-03-20 03:33:25', '2022-04-07 08:37:44', NULL, '1/2/3', 'arrange', 1, '19:29:00', '21:29:00'),
(11, 6, '2022-05-01', '2022-05-03', 3, 2, '2022-04-07 10:26:01', '2022-05-20 11:34:34', NULL, '2/4/6', 'arrange', 3, '18:00:00', '21:00:00'),
(14, 3, '2022-05-10', '2022-05-26', 7, 3, '2022-04-30 04:01:57', '2022-05-15 02:44:50', NULL, '2/4/6', 'arrange', 1, '18:00:00', '21:00:00'),
(15, 8, '2022-05-10', '2022-06-02', 11, 4, '2022-05-09 07:50:17', '2022-05-19 17:26:12', NULL, '3/5/7', 'arrange', 1, '18:00:00', '21:00:00'),
(16, 2, '2022-05-24', '2022-06-09', 8, 5, '2022-05-18 16:18:48', '2022-05-19 15:41:49', NULL, '3/5/7', 'arrange', 1, '18:18:00', '21:18:00'),
(17, 14, '2022-05-14', '2022-05-22', 3, 2, '2022-05-19 15:44:02', '2022-05-20 11:40:13', NULL, '2/4/6', 'arrange', 1, '18:00:00', '21:00:00'),
(18, 3, '2022-05-29', '2022-06-03', 3, 3, '2022-05-24 10:34:30', '2022-05-24 10:34:46', NULL, '2/4/6', 'arrange', 2, '10:34:00', '01:34:00'),
(19, 2, '2022-05-24', NULL, 3, 2, '2022-05-24 11:59:06', '2022-05-24 12:01:18', '2022-05-24 12:01:18', '2/4/6', 'arrange', 2, '00:58:00', '00:59:00'),
(23, 2, '2022-05-24', NULL, 3, 3, '2022-05-24 13:18:17', '2022-05-24 13:21:32', '2022-05-24 13:21:32', '2/4/6', 'arrange', 2, '16:18:00', '14:18:00'),
(26, 2, '2022-05-29', '2022-06-01', 3, 3, '2022-05-24 13:35:54', '2022-05-25 13:41:17', NULL, '2/4/6', 'arrange', 2, '17:35:00', '18:35:00'),
(27, 4, '2022-05-31', '2022-06-01', 2, 3, '2022-05-24 13:44:19', '2022-05-25 13:40:38', NULL, '2/4/6', 'arrange', 1, '13:47:00', '13:47:00'),
(28, 14, '2022-05-24', '2022-06-09', 3, 5, '2022-05-26 14:02:41', '2022-05-26 14:49:57', NULL, '2/4/6', 'arrange', 2, '16:02:00', '15:02:00'),
(29, 6, '2022-06-05', '2022-06-09', 3, 1, '2022-05-31 00:42:42', '2022-05-31 00:42:58', NULL, '2/4/6', 'arrange', 4, '03:36:00', '02:36:00'),
(30, 6, '2022-06-19', '2022-06-24', 3, 1, '2022-06-14 22:17:21', '2022-06-18 11:33:17', NULL, '2/4/6', 'arrange', 5, '23:17:00', '12:17:00'),
(31, 5, '2022-06-26', '2022-07-01', 4, 7, '2022-06-18 11:35:34', '2022-06-20 22:42:37', NULL, '3/5/7', 'arrange', 2, '00:35:00', '01:35:00'),
(32, 1, '2022-06-26', '2022-07-01', 4, 2, '2022-06-20 14:48:38', '2022-06-20 14:48:58', NULL, '2/4/6', 'arrange', 2, '15:48:00', '15:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `condition` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `code`, `time`, `number`, `condition`, `created_at`, `updated_at`) VALUES
(1, 'GIAMGIA30%', 'ABCD', 10, 30, 1, NULL, NULL),
(2, 'TIENLONG', '999TAYDUKY', 10, 50000, 2, NULL, NULL);

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
(23, '2022_01_08_103541_create_categories_table', 1),
(24, '2022_01_08_104150_create_users_table', 1),
(25, '2022_02_12_040434_create_certificates_table', 1),
(26, '2022_02_12_042444_create_teachers_table', 1),
(27, '2022_02_13_032521_create_products_table', 1),
(28, '2022_02_13_041102_create_classes_table', 1),
(29, '2022_02_13_044059_create_periods_table', 1),
(30, '2022_02_13_045733_create_orders_table', 1),
(31, '2022_02_19_153546_add_column_admin_id_into_orders', 2),
(33, '2022_02_26_151646_rename_col_category_in_products', 3),
(34, '2022_03_01_141945_add_col_day_start_and_day_end_in_products', 4),
(35, '2022_03_01_143650_retype_col_time_start_and_time_end_in_products', 5),
(36, '2022_03_03_141705_rename_cols_foreign_key_in_classes', 6),
(37, '2022_03_03_151440_retype_col_start_day_in_classes', 7),
(38, '2022_03_03_160940_rename_cols_foreign_key_in_orders', 8),
(39, '2022_03_05_170039_add_col_days_of_week_in_classes', 9),
(40, '2022_03_08_162605_add_col_status_in_classes', 10),
(41, '2022_03_08_162841_delete_col_status_in_orders', 10),
(42, '2022_03_14_140113_delete_cols_in_products', 11),
(43, '2022_03_14_141146_add_col_sesions_in_products', 12),
(45, '2022_03_14_143505_add_cols_in_classes', 13),
(48, '2022_04_30_092315_add_col_end_day_in_classes_table', 14),
(49, '2022_05_08_150051_add_col_date_in_periods_table', 15),
(50, '2022_05_08_155749_retype_col_time_in_time_out_in_periods_table', 16),
(51, '2022_05_18_004626_retype_col_content_in_products_table', 17),
(52, '2022_05_24_110354_create_new_class_notices_table', 18),
(53, '2022_05_25_142210_add_col_discount_in_products_table', 19),
(54, '2022_05_26_110939_add_col_status_in_orders_table', 20),
(55, '2022_05_27_101740_add_col_product_id_in_teachers_table', 21),
(56, '2022_05_27_164421_add_cols_stripe_in_products_table', 22),
(57, '2022_06_01_171727_add_soft_delete_in_banners_table', 23),
(58, '2022_06_18_170327_add_col_photo_in_teachers_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `content`, `photo`, `display`, `created_at`, `updated_at`) VALUES
(5, 'Samsung announces new advanced semiconductor site in Taylor, Texas', 'Samsung Electronics announced today it has selected a site in Taylor, Texas, to build a new semiconductor wafer fabrication plant that is set to produce advanced logic devices.', '<p><img alt=\"SKOREA-TELECOMMUNICATION-SAMSUNG-EARNINGS\" src=\"https://techcrunch.com/wp-content/uploads/2020/07/GettyImages-1227833441.jpg?w=730&amp;crop=1\" /></p>\r\n\r\n<p>The estimated $17 billion investment, which will mark the largest investment made by Samsung in the U.S., is expected to create about 2,000 new jobs directly and thousands of related jobs once the new facility is in full operation. The funding will bring Samsung&rsquo;s total investment in the U.S. to more than $47 billion since beginning U.S. operations in 1978.&nbsp;</p>\r\n\r\n<p>The Taylor site, about 16 miles from Samsung&rsquo;s current manufacturing site in Austin, is expected to serve as a key location for Samsung&rsquo;s global semiconductor manufacturing capacity along, with its latest new production line in Pyeongtaek, South Korea.&nbsp;</p>\r\n\r\n<p>Sponsored Content</p>\r\n\r\n<h2><a href=\"https://techcrunch.com/sponsor/autodesk/how-innovators-are-reimagining-industries-to-solve-complex-design-and-make-challenges/\" rel=\"nofollow\" target=\"_blank\">How Autodesk is helping workers adapt, thrive &amp; create the new possible</a></h2>\r\n\r\n<p>Sponsored by&nbsp;<a href=\"https://techcrunch.com/sponsor/autodesk/how-innovators-are-reimagining-industries-to-solve-complex-design-and-make-challenges/\" rel=\"nofollow\" target=\"_blank\">Autodesk</a></p>\r\n\r\n<p><a href=\"https://techcrunch.com/sponsor/autodesk/how-innovators-are-reimagining-industries-to-solve-complex-design-and-make-challenges/\" rel=\"nofollow\" target=\"_blank\">A combination of automation technology, skilled employees, and commitment from the business community is needed to help industry and society meet the global challenges of the future.</a></p>\r\n\r\n<p><a href=\"https://techcrunch.com/sponsor/autodesk/how-innovators-are-reimagining-industries-to-solve-complex-design-and-make-challenges/\" rel=\"nofollow\" target=\"_blank\"><img alt=\"\" src=\"https://polarcdn-terrax.com/image/v1.0.0/bin/618c415dfc70759534b2633c?v=4f8a8&amp;w=300\" /></a></p>\r\n\r\n<p>The new facility will manufacture products based on advanced process technologies such as mobile, 5G, high-performance computing (HPC) and artificial intelligence (AI).&nbsp;</p>\r\n\r\n<p>Samsung&rsquo;s decision comes amid a global chip shortage that has undermined industries from&nbsp;automobiles to electronics.</p>\r\n\r\n<p>The company said it remains committed to supporting customers globally by making advanced semiconductor fabrication more accessible and meeting surging demand for semiconductor products. &nbsp;</p>\r\n\r\n<p>Samsung will start construction on the Taylor site, which will span more than 5 million square meters, in the first quarter of 2022, aiming to have production up and running in the second half of 2024.</p>\r\n\r\n<p>&ldquo;As we add a new facility in Taylor, Samsung is laying the groundwork for another important chapter in our future,&rdquo; said Kinam Kim, vice chairman and CEO of device solution division at Samsung Electronics. &ldquo;With greater manufacturing capacity, we will able to better serve the needs of our customers and contribute to the stability of the global semiconductor supply chain. We are also proud to be bringing more jobs and supporting the training and talent development for local communities, as Samsung celebrates 25 years of semiconductor manufacturing in the U.S.&rdquo;</p>\r\n\r\n<p>After reviewing multiple locations within the U.S. for a potential manufacturing plant, the decision to invest in Taylor was based on multiple factors, including the local semiconductor ecosystem, infrastructure stability, local government support and community development opportunities.&nbsp;</p>\r\n\r\n<p>Based on media reports, Samsung, which evaluated other locations such as Arizona, New York and South Korea for the new chip plant, picked Texas&rsquo; Williamson County because it offered a better tax policy. In July, Samsung Electronics applied for a tax break (from the Taylor Independent School District) to build a chipmaking factory in Taylor, Texas, according to&nbsp;<a href=\"https://assets.comptroller.texas.gov/ch313/1620/1620-taylor-samsung-app.pdf\" rel=\"noopener\" target=\"_blank\">a file</a>&nbsp;submitted with Texas authorities in July.&nbsp;</p>\r\n\r\n<p>&ldquo;It [Samsung] seeks a strong public partner to support the project through financial and other incentives (e.g., infrastructure and utility assistance). In connection with the project, the company is seeking rebates under Chapter 380 and 381 assistance from the Texas Enterprise Fund. In addition, the company is also pursuing incentives relating to certain infrastructure and utility improvements, rate reductions, and other non-cash benefits to support construction and operations of the proposed project,&rdquo; as per the document.&nbsp;</p>\r\n\r\n<p>Samsung will also contribute financial support to create a Samsung Skills Center for the Taylor Independent School District (ISD) to help students develop future career skills and provide internships and recruiting opportunities.&nbsp;</p>\r\n\r\n<p>&ldquo;Companies like Samsung continue to invest in Texas because of our world-class business climate and exceptional workforce,&rdquo; said Governor Wayne Abbott. &ldquo;Samsung&rsquo;s new semiconductor manufacturing facility in Taylor will bring countless opportunities for hardworking Central Texans and their families and will play a major role in our state&rsquo;s continued exceptionalism in the semiconductor industry.&rdquo;</p>\r\n\r\n<p>&ldquo;In addition to our partners in Texas, we are grateful to the Biden administration for creating an environment that supports companies like Samsung as we work to expand leading-edge semiconductor manufacturing in the U.S.,&rdquo; Kim said. &ldquo;We also thank the administration and Congress for their bipartisan support to swiftly enact federal incentives for domestic chip production and innovation.&rdquo;</p>\r\n\r\n<p>Samsung, one of the largest semiconductor makers in the world, said in August that&nbsp;<a href=\"https://techcrunch.com/2021/08/24/samsung-to-invest-205b-in-semiconductor-biopharma-and-telco-units-by-2023-creating-40000-jobs/\">it plans to invest more than $205 billion</a>&nbsp;in semiconductor, bio, IT and next-generation communication networks industries over the next three years to bolster its global presence.&nbsp;</p>\r\n\r\n<p>Samsung Group&rsquo;s de facto leader Jay Y. Lee, visiting North America last week, met with the U.S. government officials in Washington, D.C. to discuss the second chip plant and semiconductor supply chain. Lee also met with other tech firm leaders, including Microsoft CEO Satya Nadella and execs at Moderna and Verizon Wireless, to strengthen their business ties.&nbsp;</p>\r\n\r\n<p>Intel recently broke ground on two new chipmaking plants in Arizona. At the same time, TSMC started constructing a $12 billion chip factory in Arizona and announced its plan to build the first chip plant in Japan in October. Texas Instruments also unveiled its investment plan for four new semiconductor fabrication plants in Sherman, Texas.&nbsp;</p>', 'samsung.jpg', 1, '2021-10-23 11:58:38', '2021-11-24 07:00:49'),
(6, 'Reddit is shutting down Dubsmash and integrating video tools into its own app', 'Reddit is shutting down Dubsmash, its short-form TikTok-like video platform, on February 22, 2022.', '<p><img alt=\"reddit app icon ios\" src=\"https://techcrunch.com/wp-content/uploads/2019/10/reddit-app-icon-ios.jpg?w=730&amp;crop=1\" /></p>\r\n\r\n<p>The company says after February, Dubsmash will no longer be available for download in the Apple App Store or Google Play Store. Currently downloaded apps will stop functioning on the same date.</p>\r\n\r\n<p>The company&nbsp;<a href=\"https://www.theverge.com/2021/11/23/22796234/reddit-dubsmash-video-creation-tools?scrolla=5eb6d68b7fedc32c19ef33b4\">acquired Dubsmash</a>&nbsp;in December 2020 and had said it would integrate its video creation tools into Reddit. Following the acquisition, Dubsmash&rsquo;s leadership team joined Reddit. Now, nearly a year later, Reddit says the Dubsmash team has been accelerating the app&rsquo;s video offerings and that parts of Reddit will feel familiar to Dubsmash users.</p>\r\n\r\n<p>&ldquo;Since joining, the Dubsmash team has been working to integrate their innovative video creation tools into Reddit &mdash; with a goal of empowering Reddit&rsquo;s own creators to express themselves in original ways that are authentic to our communities,&rdquo; Reddit said in a<a href=\"https://www.redditinc.com/blog/bringing-more-of-dubsmash-to-reddit-by-launching-new-video-features\">&nbsp;blog post</a>. &ldquo;Combining forces has been a perfect match. Reddit is where passionate communities come together for timely, interactive and authentic exchanges about topics that matter to them, and video is increasingly core to how people want to connect.&rdquo;</p>\r\n\r\n<p>As part of the integration, Reddit has announced that it&rsquo;s rolling out new video creation tools. New camera features include the ability to change recording speeds and the option to set a timer. Users can now also upload videos in landscape, portrait mode and fill, as well as adjust and trim multiple clips. The company is also adding a new editing screen that includes text Stickers, a drawing tool and filters. And users have the option to add voiceovers or adjust the volume directly on the editing screen.</p>\r\n\r\n<p><img alt=\"Reddit aims to double in size as social news site invests for growth |  Reddit | The Guardian\" src=\"https://i.guim.co.uk/img/media/720d0630e3f30534d00bb008d177d488a8fce621/0_144_3500_2100/master/3500.jpg?width=1200&amp;height=900&amp;quality=85&amp;auto=format&amp;fit=crop&amp;s=641f3453a72ad575b62452656544effc\" style=\"height:497px; width:663px\" /></p>\r\n\r\n<p>In August, Reddit rolled out a&nbsp;<a href=\"https://techcrunch.com/2021/08/13/reddit-is-quietly-rolling-out-a-tiktok-like-video-feed-button-on-ios/\">video feed feature&nbsp;</a>for iOS users, which shows a stream of videos in a TikTok-like configuration. When presented with a video, users can upvote or downvote, comment, gift an award or share it. Similar to TikTok, users can swipe up to see another video, feeding content from subreddits the user is subscribed to, as well as related ones. The launch of the new video feed came as Instagram&rsquo;s Reels feature and Snapchat&rsquo;s Spotlight tool were gaining traction, as social media platforms were looking to compete with TikTok.</p>\r\n\r\n<p>Reddit says video content is soaring on Reddit, as it has seen nearly 70% growth in overall hours watched. It notes that there has been a 30% increase in the growth of daily active video viewers. The app has also seen a 50% increase in quarter-over-quarter short video viewership, which it describes as less than than 2 seconds, in its new video player.</p>\r\n\r\n<p>It&rsquo;s worth noting that Reddit first launched its&nbsp;<a href=\"https://techcrunch.com/2017/08/17/reddit-rolls-out-its-own-video-platform/\">native video platform</a>&nbsp;in 2017, which allows users to upload MP4 and MOV files to the site. Then, in August 2019, it launched&nbsp;<a href=\"https://www.theverge.com/2019/8/19/20812887/reddit-live-streaming-test-public-access-network-rpan-subreddit-tool\">RPAN</a>&nbsp;(Reddit Public Access Network), which lets people livestream to selected subreddits.</p>\r\n\r\n<p>Now that Reddit has completed its Dubsmash integration, it&rsquo;s no surprise that it&rsquo;s looking to garner more users with the launch of its new video creation tools as it aims to continue to compete with TikTok. However, apps like TikTok and Snapchat go beyond simple video creation, as they also leverage sounds and music on their platforms. It&rsquo;s unknown if Reddit will take its video ambitions further by following suit in the future.</p>', 'reddit.jpg', 1, '2021-10-24 11:58:38', '2021-11-24 07:14:00'),
(7, 'Billion Dollar Whale\' book about Jho Low to be adapted into TV series', 'This is all about big money.', '<p><img alt=\"\'Billion Dollar Whale\' book about Jho Low to be adapted into TV series\" src=\"https://sm.mashable.com/t/mashable_sea/photo/default/billion-dollar-whale-jho-low-tv-series-header_tpxa.1248.png\" /></p>\r\n\r\n<p>If you ever thought the speculation surrounding controversial Malaysian businessman Jho Low was going to fade away anytime soon, think again.</p>\r\n\r\n<p>A&nbsp;<a href=\"https://deadline.com/2021/11/billion-dollar-whale-series-adaptation-sk-global-westward-1234879245/\" rel=\"noopener\" target=\"_blank\">television series</a>&nbsp;based on the bestselling book&nbsp;<em>Billion Dollar Whale</em><em>: The Man Who Fooled Wall Street, Hollywood, and the World</em>&nbsp;is said to currently be in production, with producers including Beau Willimon &ndash; the showrunner for&nbsp;<em>House of Cards</em>&nbsp;series &ndash; and Jordan Tappis from Westward.</p>\r\n\r\n<p>Acclaimed Malaysian actress Michelle Yeoh is also named as a producer for the series, with Tony-award winner David Henry Hwang (writer of&nbsp;<em>M.Butterfly</em>) in charge of the screenplay. The team have also partnered with SK Global &ndash; the company responsible for partly bankrolling&nbsp;<em>Crazy Rich Asians</em>.</p>\r\n\r\n<p>Originally,&nbsp;<em>Billion Dollar Whale</em>&nbsp;was written by award-winning Wall Street Journal journalists Tom Wright and Bradley hope, based upon the shenanigans of Penang-born Jho Low &ndash; whom U.S.-based prosecutors allege to be the main man behind the 1MDB scandal.</p>\r\n\r\n<p><img src=\"https://sm.mashable.com/mashable_sea/photo/default/jho-low-paris-hilton_ayur.jpg\" style=\"height:300px; width:533px\" /></p>\r\n\r\n<p>The scandal saw approximately US$5 billion worth of funds stolen from Malaysia&#39;s sovereign investment fund, and ranks among one of the largest fraud cases in history, with authorities in Malaysia, Singapore, Luxembourg, Switzerland, and the U.S. all still investigating.</p>\r\n\r\n<p>More recently, former Malaysian prime minister Najib Razak has been put to trial for his part in the whole scandal, with the courts already finding him guilty on multiple counts of corruption and criminal wrongdoing.</p>\r\n\r\n<p>He was&nbsp;<a href=\"https://www.bbc.com/news/world-asia-53563065\" rel=\"noopener\" target=\"_blank\">sentenced to 12 years in prison and was fined close to US$50 million</a>&nbsp;(MYR210 million), although he has appealed his sentence and is awaiting the verdict which is set to be delivered on December 8 this year.</p>\r\n\r\n<p>&nbsp;</p>', 'bigmoney.jpg', 1, '2021-10-24 11:58:38', '2021-11-24 07:09:46'),
(8, 'Course is good 4', 'CyzFjPdco9H0otUQPk7ybtTqKJi8xjrMm2AOfQUhWEddEolkP76jGnQwRd3owKmJ1mdc2KxK6v89SwgBopMB4XOgB21zwnR6sDCjjxTCSkPqZvBWRLSCxyVqnKJyjp2vUVoX0qgmnnEudzyheQOIa8KtNych1RsydaPhH2Ldcw0LldqnjppiSJe48WxLKXBm8cSKP2NGGlk1YS8hMp3kXXS4ugQh34Ycc1fZB142PX0q7dvLX8wwedHc5KMrNTv', '<p>WC0U5PpGeeggsdN2ao55sYHVvX9wtkxs8U7wg3e6anuQxxmEtefNwqcx5gt3dPgwYS6RmFxYCRQY08RB3XLx1FvixR9OOrcWZUvMfeofnA8vPP2EE3fJBCdBp4wFjxmvfCkXcswquwPNPGDpR36uXVp4GlO5jhiMKN4iPWRN7VLNLJ2trbOYgY0Q0SD4qouUrT0YzYmZpHzVe7nmTMAIKBaFE7tRjRcZbmkQmDOOaGNVfJPkQGUDk665NhbDH0GYtpxu0R5Xa4KFnG7Zz1mBTGNUvkfMuR8drW0k6kacCif6yaxqiZvmwHSTEkpjL7y6WmyljOfgOutXsWMfqITefUU3XOXd89H0ABbgWXdhuihTnycYrp7Vo0PGKChNWpZVSY7kJoAz28iN3u4e4qlUWWafCTLk981cgUNDlTl6XSLgeR62YgVmkcLXbD19nv5EKkdEa3TdWAID4E6wMOi1HAD9s44LGunJe9tiXrzWNFliHz70JME5</p>', '1617889197_cat-img-5.jpg', 0, '2021-10-24 11:58:38', '2021-11-24 07:10:09'),
(9, 'Course is good 5', 'We are delighted to welcome you to the annual Flavorful Tuscany Meetup and hope you will enjoy the programme as well as your stay at the Bilancino Hotel.', '<p>We are delighted to welcome you to the annual <em>Flavorful Tuscany Meetup</em> and hope you will enjoy the programme as well as your stay at the <a href=\"http://ckeditor.com\">Bilancino Hotel</a>.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Bilancino Hotel\" src=\"	https://ckeditor.com/docs/ckeditor5/latest/assets/img/malta_2x.jpg\" /></p>\r\n\r\n<p style=\"text-align:center\">Bilancino Hotel</p>\r\n\r\n<p>Please find below the full schedule of the event.</p>\r\n\r\n<table align=\"center\" border=\"1\" class=\"table table-bordered\">\r\n	<thead>\r\n		<tr>\r\n			<th colspan=\"2\">Saturday, July 14</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">9:30 AM - 11:30 AM</td>\r\n			<td>\r\n			<p style=\"text-align:center\"><strong>Americano vs. Brewed</strong> - &ldquo;know your coffee&rdquo; with:&nbsp;</p>\r\n\r\n			<ul style=\"list-style-type:circle\">\r\n				<li style=\"text-align:center\">Giulia Bianchi</li>\r\n				<li style=\"text-align:center\">Stefano Garau</li>\r\n				<li style=\"text-align:center\">Giuseppe Russo</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">1:00 PM - 3:00 PM</td>\r\n			<td>\r\n			<p style=\"text-align:center\"><strong>Pappardelle al pomodoro</strong> - live cooking</p>\r\n\r\n			<p style=\"text-align:center\">Incorporate the freshest ingredients&nbsp;<br />\r\n			with Rita Fresco</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">5:00 PM - 8:00 PM</td>\r\n			<td style=\"text-align:center\"><strong>Tuscan vineyards at a glance</strong> - wine-tasting&nbsp;<br />\r\n			with Frederico Riscoli</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<blockquote>\r\n<p>The annual Flavorful Tuscany meetups are always a culinary discovery. You get the best of Tuscan flavors during an intense one-day stay at one of the top hotels of the region. All the sessions are lead by top chefs passionate about their profession. I would certainly recommend to save the date in your calendar for this one!</p>\r\n\r\n<p>Angelina Calvino, food journalist</p>\r\n</blockquote>\r\n\r\n<p>Please arrive at the <a href=\"http://ckeditor.com\">Bilancino Hotel</a> reception desk <span style=\"background-color:hsl(60, 75%, 60%)\">at least half an hour earlier</span> to make sure that the registration process goes as smoothly as possible.</p>\r\n\r\n<p>We look forward to welcoming you to the event.</p>\r\n\r\n<p><img alt=\"Victoria Valc signature\" class=\"image_resized\" src=\"https://c.cksource.com/a/1/img/docs/signature.png\" style=\"width:180px\" /></p>\r\n\r\n<p><strong>Victoria Valc</strong></p>\r\n\r\n<p><strong>Event Manager</strong></p>\r\n\r\n<p><strong>Bilancino Hotel</strong></p>', '1617889174_cat-img-2.jpg', 0, '2021-10-24 11:58:38', '2021-11-24 07:06:13'),
(10, 'WHO recommends antibody treatment for COVID-19 infected people who have a high risk of hospitalisation', 'The Regeneron cocktail of synthetic antibodies - casirivimab and imdevimab - has been found to reduce the risk of hospitalisation for unvaccinated, elderly or immunosuppressed patients with Covid.', '<p><img alt=\"WHO recommends antibody treatment for COVID-19 infected people who have a high risk of hospitalisation\" src=\"https://images.firstpost.com/wp-content/uploads/2021/02/AP21055737977545-1.jpg?impolicy=website&amp;width=640&amp;height=363\" /></p>\r\n\r\n<p>The World Health Organization (WHO) on Friday recommended the synthetic antibody treatment Regeneron for&nbsp;<a href=\"https://www.asianpaints.com/healthshield?cid=DI_N18_DM_B&amp;utm_source=news18&amp;utm_medium=fixed&amp;utm_campaign=RHS&amp;utm_content=banner\" target=\"_blank\">COVID-19</a>&nbsp;, but only in patients with specific health profiles.</p>\r\n\r\n<p>Persons with non-severe&nbsp;<a href=\"https://www.asianpaints.com/healthshield?cid=DI_N18_DM_B&amp;utm_source=news18&amp;utm_medium=fixed&amp;utm_campaign=RHS&amp;utm_content=banner\" target=\"_blank\">COVID-19</a>&nbsp;who are nonetheless at high risk of hospitalisation can take the antibody combo, as should critically ill patients unable to mount an adequate immune response, according to a WHO finding published in BMJ.</p>\r\n\r\n<p>Regeneron is only the third treatment for Covid to be recommended by the global health authority, which added it to its &quot;living WHO guideline&quot; on drugs for&nbsp;<a href=\"https://www.asianpaints.com/healthshield?cid=DI_N18_DM_B&amp;utm_source=news18&amp;utm_medium=fixed&amp;utm_campaign=RHS&amp;utm_content=banner\" target=\"_blank\">COVID-19</a>&nbsp;.</p>\r\n\r\n<p>In July, WHO gave the nod to a class of drugs that act to suppress a dangerous overreaction of the immune system to the SARS-CoV-2 virus that causes Covid.</p>\r\n\r\n<p>These medicines work well in tandem with corticosteroids, which were first recommended by WHO for use in Covid patients in September 2020.</p>\r\n\r\n<p>The Regeneron cocktail of synthetic antibodies -- casirivimab and imdevimab -- has been found to reduce the risk of hospitalisation for unvaccinated, elderly or immunosuppressed patients with Covid, according to three clinical trials that have yet to be peer reviewed, according to the BMJ.</p>\r\n\r\n<p>For the second category of patient covered by the new WHO recommendation, another trial has reported a reduced number of deaths, and cases requiring mechanical ventilation, in patients taking the drugs.</p>\r\n\r\n<p>&quot;For all other&nbsp;<a href=\"https://www.asianpaints.com/healthshield?cid=DI_N18_DM_B&amp;utm_source=news18&amp;utm_medium=fixed&amp;utm_campaign=RHS&amp;utm_content=banner\" target=\"_blank\">COVID-19</a>&nbsp;patients, any benefits of this antibody treatment are unlikely to be meaningful,&quot; the WHO concluded.</p>\r\n\r\n<p>Designed by biotech firm Regeneron and marketed by pharmaceutical giant Roche under the name Ronapreve, the treatment was given to former US President Donald Trump during his brush with&nbsp;<a href=\"https://www.asianpaints.com/healthshield?cid=DI_N18_DM_B&amp;utm_source=news18&amp;utm_medium=fixed&amp;utm_campaign=RHS&amp;utm_content=banner\" target=\"_blank\">coronavirus</a>&nbsp;.</p>\r\n\r\n<p>When used together, the monoclonal antibodies casirivimab and imdevimab bind to the SARS-CoV-2 spike protein, neutralising the virus&rsquo;s ability to infect cells.</p>\r\n\r\n<p>The World Health Organization &quot;welcomes the addition of another therapeutic to the world&rsquo;s arsenal against&nbsp;<a href=\"https://www.asianpaints.com/healthshield?cid=DI_N18_DM_B&amp;utm_source=news18&amp;utm_medium=fixed&amp;utm_campaign=RHS&amp;utm_content=banner\" target=\"_blank\">COVID-19</a>&nbsp;&quot;, but expressed concern about the impact of high prices on health inequality.</p>\r\n\r\n<p>&quot;Given the high cost and low availability of the combination therapy, [global health agency] UNITAID is negotiating with Roche Pharmaceutical ... for lower prices and equitable distribution across all regions, especially in low- and middle-income countries,&quot; WHO said in a separate statement.</p>\r\n\r\n<p>&quot;WHO is also in discussions with the company for a donation and distribution of the drug through UNICEF.&quot;</p>\r\n\r\n<p>The UN health authority also called on other manufacturers to submit &quot;bio-similar&quot; versions of the drug for approval.</p>\r\n\r\n<p>In July, Japan had become the first country to fully approve Regeneron&#39;s antibody treatment for patients with mild to moderate&nbsp;<a href=\"https://www.asianpaints.com/healthshield?cid=DI_N18_DM_B&amp;utm_source=news18&amp;utm_medium=fixed&amp;utm_campaign=RHS&amp;utm_content=banner\" target=\"_blank\">COVID-19</a>&nbsp;.</p>\r\n\r\n<p>The antibody combination has been authorised for emergency or temporary pandemic use in a number of countries and regions, including the European Union, United States, India, Switzerland and Canada.</p>', 'WHO-covid.jpg', 1, '2021-10-24 11:58:38', '2021-11-24 06:58:19'),
(11, 'Report shows accessibility in gaming is both challenge and opportunity', 'The gaming community, developers and publishers are beginning to embrace accessibility as a core part of the business and hobby, but there’s a long way to go', '<p><img alt=\"Computer Game Video Gaming Isometric Person Vector Illustration\" src=\"https://techcrunch.com/wp-content/uploads/2019/06/GettyImages-647240320-e1580518154914.jpg?w=730&amp;crop=1\" /></p>\r\n\r\n<p>Performed by disability advocacy organization Scope and compellingly contextualized by&nbsp;<a href=\"https://www.eurogamer.net/articles/2021-11-22-scopes-accessibility-in-gaming-report-gives-a-clear-sense-of-where-we-are-and-where-we-need-to-get-to\" rel=\"noopener\" target=\"_blank\">Eurogamer contributor Vivek Gohil</a>, the study polled 1,326 people (812 disabled, 514 not disabled) on the problems they face in the gaming world.</p>\r\n\r\n<p>Two-thirds said they face barriers in gaming, most commonly the availability or affordability of assistive technology. Many say they&rsquo;ve avoided buying games because of a lack of accessibility options, or have been unable to play (or return) games they bought which lacked such options.</p>\r\n\r\n<p>Interestingly, disabled gamers are considerably more likely to buy in-game items, watch esports and otherwise engage with various platforms. As Gohil points out, just within the U.K. there are some 14 million disabled people commanding billions in disposable income; a large proportion of whom are active gamers, valuable ones at that; yet they are seldom considered a demographic worth advertising to or including in-game.</p>\r\n\r\n<p>That does seem to be changing as more big developers realize that accessibility options make their games better for everyone. Major titles like the new Ratchet &amp; Clank, The Last of Us: Part II&nbsp;and Forza Horizon 5 include a wide variety of accommodations for everything from colorblindness to gameplay slowdown and granular difficulty options.</p>\r\n\r\n<p>Better hardware is also on the way as small companies produce assistive devices for lots of different needs, and of course Microsoft&rsquo;s&nbsp;<a href=\"https://techcrunch.com/2019/01/31/microsoft-highlights-the-xbox-adaptive-controller-in-emotional-super-bowl-ad/\">Xbox Adaptive Controller</a>&nbsp;has been a huge hit for people who can&rsquo;t use traditional controllers.</p>\r\n\r\n<p>The company also recently hosted an&nbsp;<a href=\"https://techcrunch.com/2021/09/14/xbox-and-special-olympics-hold-first-gaming-for-inclusion-esports-event/\">inclusion-focused esports tournament in collaboration with the Special Olympics</a>.</p>\r\n\r\n<p>But they&rsquo;ll be the first to admit that more needs to be done, and it&rsquo;s not all engineering and development. In-game chat, notoriously toxic at the best of times, is positively horrific when people with disabilities join in, the Scope study found. In fact &ldquo;doing more to tackle negative attitudes about disability online&rdquo; was the most common priority cited by the respondents. More and better representation of people with disabilities in games, and more affordable assistive tech, were also rated as important.</p>', 'gaming.jpg', 1, '2021-10-24 11:58:38', '2021-11-24 07:04:45'),
(12, 'Ex-Microsoft exec Harry Shum leads ‘digital economy’ research center in Shenzhen', 'The International Digital Economy Academy (IDEA) quietly opened last year, perched among ultramodern office buildings on Shenzhen’s side of the river border with Hong Kong.', '<p><img alt=\"GettyImages 950783086\" src=\"https://techcrunch.com/wp-content/uploads/2019/07/GettyImages-950783086.jpg?w=730&amp;crop=1\" /></p>\r\n\r\n<p>While geographically separated from Hong Kong, technically, the research institute is located inside a special area straddling the two cities: the&nbsp;<a href=\"https://www.itc.gov.hk/en/doc/collaboration/joint_policy_en.pdf\" rel=\"noopener\" target=\"_blank\">Shenzhen-Hong Kong Innovation and Technology Cooperation Zone</a>. The name is self-explanatory. It&rsquo;s a joint effort by the governments of Shenzhen and Hong Kong, with support from Beijing and favorable policies, to collaborate on scientific and technological research.</p>\r\n\r\n<p>IDEA is one of the organizations that have set up inside the<a href=\"https://www.cnbayarea.org.cn/video/photo/content/post_322531.html\" rel=\"noopener\" target=\"_blank\">&nbsp;3.89 km&sup2; special zone</a>&nbsp;&mdash; which is about the size of 540 football pitches &mdash; and is a brainchild of Harry Shum. The renowned computer scientist was an executive vice president at Microsoft from 2013 to 2019 and also co-founded Microsoft&rsquo;s largest research branch outside the U.S., Microsoft Research Asia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Like his former colleague at Microsoft, Kai-Fu Lee, Shum was active in both the research and business sides of AI. Now at IDEA, his team aims to &ldquo;develop disruptive innovative technologies based on social needs and give back to society in a way that allows more people to benefit from the development of the digital economy.&rdquo; Several research directors at IDEA are also Microsoft veterans, including Yutao Xie and Jiaping Wang.</p>\r\n\r\n<p>The&nbsp;<a href=\"https://techcrunch.com/2021/08/09/the-china-tech-crackdown-continues/\">sweeping regulatory clampdown</a>&nbsp;on China&rsquo;s internet firms has led to headlines saying Beijing has turned against tech. But the government&rsquo;s intent is more nuanced. It&rsquo;s zeroing in on Big Tech deemed harmful to the society and economy, companies that have encouraged financial market risks, gaming addiction, exploitation of gig workers, and other ills.</p>\r\n\r\n<p>In the meantime, China remains fixated on its goal to promote fundamental research and reduce reliance on Western technologies. In Shenzhen, home to tech giants like Huawei, DJI and Tencent, the government is recruiting world-class scientists. Harry Shum and his team are among the latest to have joined the raft.</p>\r\n\r\n<p>IDEA definitely has a buzzy name (and a great acronym). The term &ldquo;digital economy&rdquo; comes up often in President Xi Jinping&rsquo;s speeches on how technology can be a driving force for the economy. The &ldquo;digital economy has become a key force in restructuring the global economy and transforming the global competitive landscape in recent years,&rdquo; the President&nbsp;<a href=\"https://www.chinadaily.com.cn/a/202110/20/WS616f4e77a310cdd39bc6fedc.html\">said</a>&nbsp;in October. &ldquo;The internet, big data, cloud computing and other technologies are being increasingly integrated into all sectors of economic and social development.&rdquo;</p>\r\n\r\n<p>IDEA is examining how AI can transform industries like finance, manufacturing and medical care. This week, it announced it&rsquo;s&nbsp;<a href=\"https://mp.weixin.qq.com/s/Zs2BD5KXuYoomkGIdQlGcw\">partnering with leading Chinese quant trader</a>&nbsp;Ubiquant on a joint lab to work on &ldquo;risk monitoring and avoidance for financial transaction markets,&rdquo; as well as &ldquo;basic infrastructure for high-performance computing systems.&rdquo;</p>\r\n\r\n<p>IDEA is just one of the many research labs that have sprung up across Shenzhen in recent years. The&nbsp;<a href=\"https://side.cuhk.edu.cn/page/21\">Shenzhen Institute of Data Economy</a>, located on the Shenzhen campus of the Chinese University of Hong Kong with support from the government, is another group working to&nbsp;<a href=\"https://sme.cuhk.edu.cn/en/article/1340\" rel=\"noopener\" target=\"_blank\">advance</a>&nbsp;China&rsquo;s digital economy.</p>', 'ex-microsoft.jpg', 1, '2021-10-24 11:58:38', '2021-11-24 06:54:43'),
(13, 'International flight operations in India likely to return to normal by December-end', 'Scheduled international flights to and from India were suspended in March 2020 amid the coronavirus pandemic', '<p><img alt=\"International flight operations in India likely to return to normal by December-end\" src=\"https://images.firstpost.com/wp-content/uploads/2021/11/24airlines.jpg?impolicy=website&amp;width=640&amp;height=363\" /></p>\r\n\r\n<p><strong>New Delhi:</strong>&nbsp;International passenger flight services are expected to be normalised &quot;very soon&quot; and possibly by the end of this year, Civil Aviation Secretary Rajiv Bansal said on Wednesday.</p>\r\n\r\n<p>Scheduled international passenger flights to and from India remain suspended since March 2020 amid the&nbsp;<a href=\"https://www.asianpaints.com/healthshield?cid=DI_N18_DM_B&amp;utm_source=news18&amp;utm_medium=fixed&amp;utm_campaign=RHS&amp;utm_content=banner\" target=\"_blank\">coronavirus</a>&nbsp;pandemic. The suspension has been extended till 30 November.</p>\r\n\r\n<p>Normalisation of international flights is expected &quot;very soon&quot; and by the end of this year, Bansal said here.</p>\r\n\r\n<p>Currently, India has air bubble arrangements with more than 25 countries for operating international flights.</p>\r\n\r\n<p>Under an air bubble arrangement between two countries, international passenger flights can be operated by their respective carriers into each other&#39;s territories subject to certain conditions.</p>\r\n\r\n<p>Last week, Civil Aviation Minister Jyotiraditya Scindia said the government was evaluating the process for normalising international operations and asserted that it wants to return to normalcy while keeping in mind the&nbsp;<a href=\"https://www.asianpaints.com/healthshield?cid=DI_N18_DM_B&amp;utm_source=news18&amp;utm_medium=fixed&amp;utm_campaign=RHS&amp;utm_content=banner\" target=\"_blank\">coronavirus</a>&nbsp;pandemic situation in certain parts of the world.</p>\r\n\r\n<p>&quot;I am all for regaining our space in the civil aviation arena in the world and making a hub in India and for more wide body aircraft. We will get there but bear with me and trust me, I am on your side. We will work together but in a safe environment,&quot; he had said.</p>', '24airlines.jpg', 1, '2021-10-24 11:58:38', '2021-11-24 06:52:45'),
(19, 'Test New', 'Đây là tin tức mới', '<p>sadads</p>', 's-l1600.jpg', 0, '2021-11-27 12:14:58', '2021-11-29 10:40:05'),
(20, 'Đăng', 'sa', '<p>ikmk</p>', 'tải xuống (3).png', 0, '2021-11-29 10:40:32', '2021-11-29 10:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `new_class_notices`
--

CREATE TABLE `new_class_notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_class_notices`
--

INSERT INTO `new_class_notices` (`id`, `user_id`, `product_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 18, 2, 1, '2022-05-24 11:32:03', '2022-05-24 13:35:54', NULL),
(2, 18, 4, 1, '2022-05-24 13:43:38', '2022-05-24 13:44:19', NULL),
(3, 18, 1, 1, '2022-05-26 16:20:19', '2022-06-20 14:48:38', NULL),
(4, 18, 6, 1, '2022-06-14 22:16:53', '2022-06-14 22:17:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `class_id`, `user_id`, `price`, `created_at`, `updated_at`, `deleted_at`, `admin_id`, `status`) VALUES
(2, 1, 1, 300000, '2022-01-14 10:32:44', '2022-03-14 10:32:44', NULL, 1, 0),
(3, 1, 2, 300000, '2022-01-14 10:32:44', '2022-03-14 10:32:44', NULL, 1, 0),
(4, 1, 3, 300000, '2022-01-14 10:32:44', '2022-03-14 10:32:44', NULL, 1, 0),
(6, 1, 21, 300000, '2022-03-14 10:32:44', '2022-03-14 10:32:44', NULL, 1, 0),
(7, 1, 22, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(8, 1, 23, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(9, 1, 4, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(10, 1, 5, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(11, 1, 6, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(12, 1, 7, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(13, 1, 8, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(14, 1, 9, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(15, 1, 10, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(16, 1, 11, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(17, 1, 12, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(18, 1, 13, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(19, 1, 14, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(20, 1, 15, 300000, '2022-03-14 10:32:45', '2022-03-14 10:32:45', NULL, 1, 0),
(24, 2, 15, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(25, 2, 2, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(26, 2, 3, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(27, 2, 4, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(28, 2, 5, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(29, 2, 6, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(30, 2, 7, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(31, 2, 8, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(32, 2, 9, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(33, 2, 10, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(34, 2, 11, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(35, 2, 12, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(36, 2, 13, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(37, 2, 14, 300000, '2022-04-03 09:04:50', '2022-04-03 09:04:50', NULL, 1, 0),
(50, 11, 18, 300000, '2022-04-16 01:40:00', '2022-05-20 11:05:36', NULL, 1, 0),
(53, 15, 18, 350000, '2022-05-15 16:53:10', '2022-05-20 13:08:15', '2022-05-20 13:08:15', 1, 0),
(58, 17, 18, 200000, '2022-05-19 16:34:18', '2022-05-20 11:40:29', NULL, 1, 0),
(59, 16, 3, 123123, '2022-05-20 15:52:16', '2022-05-20 15:52:16', NULL, 1, 0),
(60, 26, 18, 123123, '2022-05-24 13:37:07', '2022-05-24 13:45:06', '2022-05-24 13:45:06', 1, 0),
(61, 27, 18, 123123, '2022-05-24 13:45:17', '2022-05-26 10:04:37', '2022-05-26 10:04:37', 1, 0),
(62, 26, 5, 123123, '2022-05-25 09:12:51', '2022-05-25 09:12:51', NULL, 1, 0),
(63, 26, 507, 123123, '2022-05-25 11:40:47', '2022-05-25 11:40:47', NULL, 1, 0),
(64, 26, 11, 123123, '2022-05-25 14:01:33', '2022-05-25 14:01:33', NULL, 1, 0),
(65, 26, 20, 61562, '2022-05-25 15:24:30', '2022-05-25 16:26:58', '2022-05-25 16:26:58', 1, 0),
(66, 26, 18, 61562, '2022-05-26 10:04:45', '2022-05-26 10:09:49', '2022-05-26 10:09:49', 1, 0),
(68, 26, 18, 61562, '2022-05-26 10:20:52', '2022-05-26 10:37:41', '2022-05-26 10:37:41', 1, 0),
(69, 26, 18, 61562, '2022-05-26 10:37:47', '2022-05-26 10:40:05', '2022-05-26 10:40:05', 1, 0),
(70, 26, 18, 61562, '2022-05-26 10:40:10', '2022-05-26 11:00:40', '2022-05-26 11:00:40', 1, 0),
(71, 26, 18, 61562, '2022-05-26 11:00:46', '2022-05-26 14:46:34', '2022-05-26 14:46:34', 1, 1),
(72, 26, 201, 61562, '2022-05-26 11:32:35', '2022-05-26 11:38:29', '2022-05-26 11:38:29', 1, 0),
(73, 18, 201, 123123, '2022-05-26 11:38:35', '2022-05-26 11:38:35', NULL, 1, 0),
(74, 26, 203, 61562, '2022-05-26 14:00:12', '2022-05-26 14:03:19', '2022-05-26 14:03:19', 1, 0),
(75, 28, 203, 200000, '2022-05-26 14:03:35', '2022-05-26 14:03:35', NULL, 1, 0),
(76, 28, 18, 200000, '2022-05-26 14:46:54', '2022-05-27 16:53:02', '2022-05-27 16:53:02', 1, 1),
(80, 26, 377, 123123, '2022-05-27 18:01:29', '2022-05-27 18:01:29', NULL, 1, 1),
(81, 30, 18, 100000, '2022-06-14 22:20:22', '2022-06-17 00:00:16', NULL, 1, 1),
(82, 30, 3, 100000, '2022-06-18 17:46:18', '2022-06-18 17:46:18', NULL, 1, 1),
(83, 31, 7, 300000, '2022-06-20 14:39:23', '2022-06-20 14:39:23', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tung11@gmail.com', '$2y$10$2GmR3PM6RbjCXcZ8NxEZz.SURJuQralptM5H2Xz03NHaglv1uJxre', '2021-08-21 10:46:12'),
('toilatung52@gmail.com', '$2y$10$ZlMbF3YvfwAqsJ80yEe5b.paZSsKevxbpL3AycPOxRqk7ohu7XivG', '2021-08-21 10:49:05'),
('Lethang2799@gmail.com', '$2y$10$QZX3BIJ/IWxVxiMUs5P0K.wnhE0XAXXJmjJj8dv3xbOyHr9MZ8uQG', '2021-08-22 20:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL DEFAULT '2022-05-08',
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`id`, `class_id`, `date`, `time_in`, `time_out`, `number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(106, 1, '2022-05-08', '15:41:12', '15:41:12', 1, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(107, 1, '2022-05-08', '15:41:12', '15:41:12', 2, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(108, 1, '2022-05-08', '15:41:12', '15:41:12', 3, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(109, 1, '2022-05-08', '15:41:12', '15:41:12', 4, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(110, 1, '2022-05-08', '15:41:12', '15:41:12', 5, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(111, 1, '2022-05-08', '15:41:12', '15:41:12', 6, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(112, 1, '2022-05-08', '15:41:12', '15:41:12', 7, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(113, 1, '2022-05-08', '15:41:12', '15:41:12', 8, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(114, 1, '2022-05-08', '15:41:12', '15:41:12', 9, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(115, 1, '2022-05-08', '15:41:12', '15:41:12', 10, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(116, 1, '2022-05-08', '15:41:12', '15:41:12', 11, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(117, 1, '2022-05-08', '15:41:12', '15:41:12', 12, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(118, 1, '2022-05-08', '15:41:12', '15:41:12', 13, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(119, 1, '2022-05-08', '15:41:12', '15:41:12', 14, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(120, 1, '2022-05-08', '15:41:12', '15:41:12', 15, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(121, 1, '2022-05-08', '15:41:12', '15:41:12', 16, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(122, 1, '2022-05-08', '15:41:12', '15:41:12', 17, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(123, 1, '2022-05-08', '15:41:12', '15:41:12', 18, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(124, 1, '2022-05-08', '15:41:12', '15:41:12', 19, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(125, 1, '2022-05-08', '15:41:12', '15:41:12', 20, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(126, 1, '2022-05-08', '15:41:12', '15:41:12', 21, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(127, 1, '2022-05-08', '15:41:12', '15:41:12', 22, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(128, 1, '2022-05-08', '15:41:12', '15:41:12', 23, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(129, 1, '2022-05-08', '15:41:12', '15:41:12', 24, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(130, 1, '2022-05-08', '15:41:12', '15:41:12', 25, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(131, 1, '2022-05-08', '15:41:12', '15:41:12', 26, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(132, 1, '2022-05-08', '15:41:12', '15:41:12', 27, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(133, 1, '2022-05-08', '15:41:12', '15:41:12', 28, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(134, 1, '2022-05-08', '15:41:12', '15:41:12', 29, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(135, 1, '2022-05-08', '15:41:12', '15:41:12', 30, '2022-03-16 08:41:12', '2022-03-16 08:41:12', NULL),
(136, 1, '2022-05-08', '15:41:12', '15:41:12', 31, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(137, 1, '2022-05-08', '15:41:12', '15:41:12', 32, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(138, 1, '2022-05-08', '15:41:12', '15:41:12', 33, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(139, 1, '2022-05-08', '15:41:12', '15:41:12', 34, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(140, 1, '2022-05-08', '15:41:12', '15:41:12', 35, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(141, 1, '2022-05-08', '15:41:12', '15:41:12', 36, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(142, 1, '2022-05-08', '15:41:12', '15:41:12', 37, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(143, 1, '2022-05-08', '15:41:12', '15:41:12', 38, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(144, 1, '2022-05-08', '15:41:12', '15:41:12', 39, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(145, 1, '2022-05-08', '15:41:12', '15:41:12', 40, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(146, 1, '2022-05-08', '15:41:12', '15:41:12', 41, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(147, 1, '2022-05-08', '15:41:12', '15:41:12', 42, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(148, 1, '2022-05-08', '15:41:12', '15:41:12', 43, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(149, 1, '2022-05-08', '15:41:12', '15:41:12', 44, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(150, 1, '2022-05-08', '15:41:12', '15:41:12', 45, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(151, 1, '2022-05-08', '15:41:12', '15:41:12', 46, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(152, 1, '2022-05-08', '15:41:12', '15:41:12', 47, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(153, 1, '2022-05-08', '15:41:12', '15:41:12', 48, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(154, 1, '2022-05-08', '15:41:12', '15:41:12', 49, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(155, 1, '2022-05-08', '15:41:12', '15:41:12', 50, '2022-03-16 08:41:13', '2022-03-16 08:41:13', NULL),
(198, 14, '2022-05-10', '19:00:00', '21:00:00', 1, '2022-05-15 02:44:50', '2022-05-15 02:44:50', NULL),
(199, 14, '2022-05-15', '18:00:00', '21:00:00', 2, '2022-05-15 02:44:50', '2022-05-15 02:44:50', NULL),
(200, 14, '2022-05-20', '18:00:00', '21:00:00', 3, '2022-05-15 02:44:50', '2022-05-15 02:44:50', NULL),
(201, 14, '2022-05-19', '18:00:00', '21:00:00', 4, '2022-05-15 02:44:50', '2022-05-15 02:44:50', NULL),
(202, 14, '2022-05-20', '18:00:00', '21:00:00', 5, '2022-05-15 02:44:50', '2022-05-15 02:44:50', NULL),
(203, 14, '2022-05-20', '18:00:00', '21:00:00', 6, '2022-05-15 02:44:50', '2022-05-15 02:44:50', NULL),
(204, 14, '2022-05-26', '18:00:00', '21:00:00', 7, '2022-05-15 02:44:50', '2022-05-15 02:44:50', NULL),
(222, 16, '2022-05-24', '18:00:00', '21:00:00', 1, '2022-05-19 15:41:49', '2022-05-19 15:41:49', NULL),
(223, 16, '2022-05-26', '18:00:00', '21:00:00', 2, '2022-05-19 15:41:49', '2022-05-19 15:41:49', NULL),
(224, 16, '2022-05-28', '18:00:00', '21:00:00', 3, '2022-05-19 15:41:49', '2022-05-19 15:41:49', NULL),
(225, 16, '2022-05-31', '18:00:00', '21:00:00', 4, '2022-05-19 15:41:49', '2022-05-19 15:41:49', NULL),
(226, 16, '2022-06-02', '18:00:00', '21:00:00', 5, '2022-05-19 15:41:49', '2022-05-19 15:41:49', NULL),
(227, 16, '2022-06-04', '18:00:00', '21:00:00', 6, '2022-05-19 15:41:49', '2022-05-19 15:41:49', NULL),
(228, 16, '2022-06-07', '18:00:00', '21:00:00', 7, '2022-05-19 15:41:49', '2022-05-19 15:41:49', NULL),
(229, 16, '2022-06-09', '18:00:00', '21:00:00', 8, '2022-05-19 15:41:49', '2022-05-19 15:41:49', NULL),
(255, 15, '2022-05-10', '18:00:00', '21:00:00', 1, '2022-05-19 17:26:12', '2022-05-19 17:26:12', NULL),
(256, 15, '2022-05-12', '18:00:00', '21:00:00', 2, '2022-05-19 17:26:12', '2022-05-19 17:26:12', NULL),
(257, 15, '2022-05-14', '18:00:00', '21:00:00', 3, '2022-05-19 17:26:12', '2022-05-19 17:26:12', NULL),
(258, 15, '2022-05-17', '18:00:00', '21:00:00', 4, '2022-05-19 17:26:12', '2022-05-19 17:26:12', NULL),
(259, 15, '2022-05-19', '18:00:00', '21:00:00', 5, '2022-05-19 17:26:12', '2022-05-19 17:26:12', NULL),
(260, 15, '2022-05-21', '18:00:00', '21:00:00', 6, '2022-05-19 17:26:12', '2022-05-19 17:26:12', NULL),
(261, 15, '2022-05-24', '18:00:00', '21:00:00', 7, '2022-05-19 17:26:12', '2022-05-19 17:26:12', NULL),
(262, 15, '2022-05-26', '18:00:00', '21:00:00', 8, '2022-05-19 17:26:12', '2022-05-19 17:26:12', NULL),
(263, 15, '2022-05-28', '18:00:00', '21:00:00', 9, '2022-05-19 17:26:12', '2022-05-19 17:26:12', NULL),
(264, 15, '2022-05-31', '18:00:00', '21:00:00', 10, '2022-05-19 17:26:12', '2022-05-19 17:26:12', NULL),
(265, 15, '2022-06-02', '18:00:00', '21:00:00', 11, '2022-05-19 17:26:12', '2022-05-19 17:26:12', NULL),
(269, 11, '2022-05-01', '18:00:00', '21:00:00', 1, '2022-05-20 11:34:34', '2022-05-20 11:34:34', NULL),
(270, 11, '2022-05-02', '18:00:00', '21:00:00', 2, '2022-05-20 11:34:34', '2022-05-20 11:34:34', NULL),
(271, 11, '2022-05-03', '18:00:00', '21:00:00', 3, '2022-05-20 11:34:34', '2022-05-20 11:34:34', NULL),
(275, 17, '2022-05-14', '18:00:00', '21:00:00', 1, '2022-05-20 11:40:13', '2022-05-20 11:40:13', NULL),
(276, 17, '2022-05-16', '18:00:00', '21:00:00', 2, '2022-05-20 11:40:13', '2022-05-20 11:40:13', NULL),
(277, 17, '2022-05-22', '18:00:00', '21:00:00', 3, '2022-05-20 11:40:13', '2022-05-20 11:40:13', NULL),
(278, 18, '2022-05-29', '18:00:00', '21:00:00', 1, '2022-05-24 10:34:46', '2022-05-24 10:34:46', NULL),
(279, 18, '2022-05-31', '18:00:00', '21:00:00', 2, '2022-05-24 10:34:46', '2022-05-24 10:34:46', NULL),
(280, 18, '2022-06-03', '18:00:00', '21:00:00', 3, '2022-05-24 10:34:46', '2022-05-24 10:34:46', NULL),
(286, 27, '2022-05-31', '18:00:00', '21:00:00', 1, '2022-05-25 13:40:38', '2022-05-25 13:40:38', NULL),
(287, 27, '2022-06-01', '18:00:00', '21:00:00', 2, '2022-05-25 13:40:38', '2022-05-25 13:40:38', NULL),
(288, 26, '2022-05-29', '18:00:00', '21:00:00', 1, '2022-05-25 13:41:17', '2022-05-25 13:41:17', NULL),
(289, 26, '2022-05-31', '18:00:00', '21:00:00', 2, '2022-05-25 13:41:17', '2022-05-25 13:41:17', NULL),
(290, 26, '2022-06-01', '18:00:00', '21:00:00', 3, '2022-05-25 13:41:17', '2022-05-25 13:41:17', NULL),
(297, 28, '2022-05-24', '18:00:00', '21:00:00', 1, '2022-05-26 14:51:26', '2022-05-26 14:51:26', NULL),
(298, 28, '2022-06-07', '18:00:00', '21:00:00', 2, '2022-05-26 14:51:26', '2022-05-26 14:51:26', NULL),
(299, 28, '2022-06-09', '18:00:00', '21:00:00', 3, '2022-05-26 14:51:26', '2022-05-26 14:51:26', NULL),
(300, 29, '2022-06-05', '18:00:00', '21:00:00', 1, '2022-05-31 00:42:58', '2022-05-31 00:42:58', NULL),
(301, 29, '2022-06-07', '18:00:00', '21:00:00', 2, '2022-05-31 00:42:58', '2022-05-31 00:42:58', NULL),
(302, 29, '2022-06-09', '18:00:00', '21:00:00', 3, '2022-05-31 00:42:58', '2022-05-31 00:42:58', NULL),
(306, 30, '2022-06-19', '18:00:00', '21:00:00', 1, '2022-06-18 11:33:17', '2022-06-18 11:33:17', NULL),
(307, 30, '2022-06-21', '18:00:00', '21:00:00', 2, '2022-06-18 11:33:17', '2022-06-18 11:33:17', NULL),
(308, 30, '2022-06-24', '18:00:00', '21:00:00', 3, '2022-06-18 11:33:17', '2022-06-18 11:33:17', NULL),
(312, 32, '2022-06-26', '18:00:00', '21:00:00', 1, '2022-06-20 14:48:58', '2022-06-20 14:48:58', NULL),
(313, 32, '2022-06-28', '18:00:00', '21:00:00', 2, '2022-06-20 14:48:58', '2022-06-20 14:48:58', NULL),
(314, 32, '2022-06-29', '18:00:00', '21:00:00', 3, '2022-06-20 14:48:58', '2022-06-20 14:48:58', NULL),
(315, 32, '2022-07-01', '18:00:00', '21:00:00', 4, '2022-06-20 14:48:58', '2022-06-20 14:48:58', NULL),
(316, 31, '2022-06-26', '18:00:00', '21:00:00', 1, '2022-06-20 22:42:37', '2022-06-20 22:42:37', NULL),
(317, 31, '2022-06-28', '18:00:00', '21:00:00', 2, '2022-06-20 22:42:37', '2022-06-20 22:42:37', NULL),
(318, 31, '2022-06-30', '18:00:00', '21:00:00', 3, '2022-06-20 22:42:37', '2022-06-20 22:42:37', NULL),
(319, 31, '2022-07-01', '18:00:00', '21:00:00', 4, '2022-06-20 22:42:37', '2022-06-20 22:42:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `certificate_id` int(10) UNSIGNED NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `display` tinyint(4) NOT NULL,
  `hot` tinyint(4) NOT NULL,
  `photo` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `sessions` int(11) NOT NULL DEFAULT '10',
  `discount` tinyint(4) NOT NULL DEFAULT '0',
  `stripe_product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_price_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `certificate_id`, `description`, `content`, `display`, `hot`, `photo`, `price`, `created_at`, `updated_at`, `deleted_at`, `sessions`, `discount`, `stripe_product_id`, `stripe_price_id`) VALUES
(1, 'Bootstrap', 1, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '[\r\n  {\r\n    \"title\": \"Chương số 1\",\r\n    \"content\": [\r\n      \"Bài 1\",\r\n      \"Bài 2\",\r\n      \"Bài 3\",\r\n      \"Bài 4\",\r\n      \"Bài 5\",\r\n      \"Bài 6\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2\",\r\n    \"content\": [\r\n      \"Bài 1\",\r\n      \"Bài 2\",\r\n      \"Bài 3\",\r\n      \"Bài 4\",\r\n      \"Bài 5\",\r\n      \"Bài 6\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3\",\r\n    \"content\": [\r\n      \"Bài 1\",\r\n      \"Bài 2\",\r\n      \"Bài 3\",\r\n      \"Bài 4\",\r\n      \"Bài 5\",\r\n      \"Bài 6\"\r\n    ]\r\n  }\r\n]', 1, 1, '/storage/img/products/bootstrap.png', 300000, '2022-05-17 17:39:07', '2022-06-14 23:10:47', NULL, 10, 0, 'prod_LlWjMvs9ki5kAg', 'price_1L3zgRFokwkgT8NSdDeSnole'),
(2, 'Tailwind', 1, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '[\r\n  {\r\n    \"title\": \"Chương số 1\",\r\n    \"content\": [\r\n      \"Bài 1\",\r\n      \"Bài 2\",\r\n      \"Bài 3\",\r\n      \"Bài 4\",\r\n      \"Bài 5\",\r\n      \"Bài 6\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2\",\r\n    \"content\": [\r\n      \"Bài 1\",\r\n      \"Bài 2\",\r\n      \"Bài 3\",\r\n      \"Bài 4\",\r\n      \"Bài 5\",\r\n      \"Bài 6\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3\",\r\n    \"content\": [\r\n      \"Bài 1\",\r\n      \"Bài 2\",\r\n      \"Bài 3\",\r\n      \"Bài 4\",\r\n      \"Bài 5\",\r\n      \"Bài 6\"\r\n    ]\r\n  }\r\n]', 1, 0, '/storage/img/products/tailwind.jpg', 123123, NULL, '2022-05-25 15:24:14', NULL, 10, 0, 'prod_LlWsUMdz9AZAj6', 'price_1L3zp8FokwkgT8NSiZOkwLyo'),
(3, 'Vuejs', 1, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '[\r\n  {\r\n    \"title\": \"Chương số 1\",\r\n    \"content\": [\r\n      \"Bài 1\",\r\n      \"Bài 2\",\r\n      \"Bài 3\",\r\n      \"Bài 4\",\r\n      \"Bài 5\",\r\n      \"Bài 6\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2\",\r\n    \"content\": [\r\n      \"Bài 1\",\r\n      \"Bài 2\",\r\n      \"Bài 3\",\r\n      \"Bài 4\",\r\n      \"Bài 5\",\r\n      \"Bài 6\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3\",\r\n    \"content\": [\r\n      \"Bài 1\",\r\n      \"Bài 2\",\r\n      \"Bài 3\",\r\n      \"Bài 4\",\r\n      \"Bài 5\",\r\n      \"Bài 6\"\r\n    ]\r\n  }\r\n]', 1, 1, '/storage/img/products/vuejs.jpg', 123123, NULL, '2022-06-14 23:10:57', NULL, 10, 0, 'prod_LlWwvCToiNlern', 'price_1L3zt4FokwkgT8NSNELQtdri'),
(4, 'CSS', 1, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '[\n  {\n    \"title\": \"Chương số 1\",\n    \"content\": [\n      \"Bài 1\",\n      \"Bài 2\",\n      \"Bài 3\",\n      \"Bài 4\",\n      \"Bài 5\",\n      \"Bài 6\"\n    ]\n  },\n  {\n    \"title\": \"Chương số 2\",\n    \"content\": [\n      \"Bài 1\",\n      \"Bài 2\",\n      \"Bài 3\",\n      \"Bài 4\",\n      \"Bài 5\",\n      \"Bài 6\"\n    ]\n  },\n  {\n    \"title\": \"Chương số 3\",\n    \"content\": [\n      \"Bài 1\",\n      \"Bài 2\",\n      \"Bài 3\",\n      \"Bài 4\",\n      \"Bài 5\",\n      \"Bài 6\"\n    ]\n  }\n]', 1, 0, '/storage/img/products/htmlcss.png', 123123, NULL, '2022-03-01 09:15:08', NULL, 10, 0, 'prod_LlWxzYoSjCmUnw', 'price_1L3zu0FokwkgT8NSy3LgKMtx'),
(5, 'Html', 1, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '[\r\n  {\r\n    \"title\": \"Chương số 1\",\r\n    \"content\": [\r\n      \"Bài 1\",\r\n      \"Bài 2\",\r\n      \"Bài 3\",\r\n      \"Bài 4\",\r\n      \"Bài 5\",\r\n      \"Bài 6\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2\",\r\n    \"content\": [\r\n      \"Bài 1\",\r\n      \"Bài 2\",\r\n      \"Bài 3\",\r\n      \"Bài 4\",\r\n      \"Bài 5\",\r\n      \"Bài 6\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3\",\r\n    \"content\": [\r\n      \"Bài 1\",\r\n      \"Bài 2\",\r\n      \"Bài 3\",\r\n      \"Bài 4\",\r\n      \"Bài 5\",\r\n      \"Bài 6\"\r\n    ]\r\n  }\r\n]', 1, 0, '/storage/img/products/htmlcss.png', 300000, NULL, '2022-06-18 11:32:24', NULL, 10, 0, 'prod_LlX6WEPnqB0Rps', 'price_1LBtKeFokwkgT8NSLLPgvolg'),
(6, 'PHP', 2, 2, 'PHP là một ngôn ngữ lập trình phía Server dùng để xây dựng các ứng dụng Website. Điểm mạnh của PHP là tính cộng đồng của nó cao, nghĩa là trên thế giới có khá nhiều lập trình viên sử dụng PHP để xây dựng dự án cho riêng họ hoặc cho khách hàng của họ. Ngoài ra một điểm mạnh nữa của PHP đó là có khá nhiều CMS, Framework được xây dựng từ PHP giúp rút gọn quá trình tạo một website, vì vậy có khá nhiều lập trình viên lựa chọn ngôn ngữ này.', '[\r\n  {\r\n    \"title\": \"Chương số 1: PHP CĂN BẢN\",\r\n    \"content\": [\r\n      \"Bài 1: Download và cài đặt Vertrigo Server\",\r\n      \"Bài 2: Khai báo biến và hằng số trong php\",\r\n      \"Bài 3: Các kiểu dữ liệu trong php\",\r\n      \"Bài 4: Toán tử và biểu thức trong php\",\r\n      \"Bài 5: Câu lệnh if else trong php\",\r\n      \"Bài 6: Câu lệnh switch case trong php\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2: XỬ LÝ FORM\",\r\n    \"content\": [\r\n      \"Bài 1: Giới thiệu phần xử lý form trong PHP\",\r\n      \"Bài 2: Hiểu về Request và Response trong lập trình Web\",\r\n      \"Bài 3: Xử lý form với phương thức GET\",\r\n      \"Bài 4: Xử lý form với phương thức POST\",\r\n      \"Bài 5: Validate form bằng Javascript\",\r\n      \"Bài 6: Validate form bằng PHP\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3: CÁC HÀM\",\r\n    \"content\": [\r\n      \"Bài 1: Vòng lặp for trong php\",\r\n      \"Bài 2: Vòng lặp while và do while trong php\",\r\n      \"Bài 3: Vòng lặp foreach trong php\",\r\n      \"Bài 4: Lệnh break, continue, goto, die, exit trong php\",\r\n      \"Bài 5: Xây dựng hàm trong php\",\r\n      \"Bài 6: Giải thuật đệ quy trong php\"\r\n    ]\r\n  }\r\n]', 1, 1, '/storage/img/products/php.jpg', 100000, NULL, '2022-06-21 00:46:05', NULL, 10, 0, 'prod_LklavJmkpcbHan', 'price_1L3G2yFokwkgT8NSrhYkWD0W'),
(7, 'NodeJS', 2, 2, 'NodeJS là một mã nguồn được xây dựng dựa trên nền tảng Javascript V8 Engine, nó được sử dụng để xây dựng các ứng dụng web như các trang video clip, các forum và đặc biệt là trang mạng xã hội phạm vi hẹp. NodeJS là một mã nguồn mở được sử dụng rộng bởi hàng ngàn lập trình viên trên toàn thế giới.NodeJS có thể chạy trên nhiều nền tảng hệ điều hành khác nhau từ WIndow cho tới Linux, OS X nên đó cũng là một lợi thế. NodeJS cung cấp các thư viện phong phú ở dạng Javascript Module khác nhau giúp đơn giản hóa việc lập trình và giảm thời gian ở mức thấp nhất.', '[\r\n  {\r\n    \"title\": \"Chương số 1: NODEJS CĂN BẢN\",\r\n    \"content\": [\r\n      \"Bài 1: NodeJS là gì? Đặc tính và các framework NodeJS phổ biến\",\r\n      \"Bài 2: Xử lý JSON trong NodeJS\",\r\n      \"Bài 3: Cài đặt NodeJS trên Local\",\r\n      \"Bài 4: Cách sử dụng Window Command Line\",\r\n      \"Bài 5: Mối liên hệ giữa Javascript và NodeJS\",\r\n      \"Bài 6: Tạo Project cho chuyên đề học NodeJS\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2: 2EXPRESS FRAMEWORK\",\r\n    \"content\": [\r\n      \"Bài 1: Hướng dẫn cài đặt Express JS chi tiết\",\r\n      \"Bài 2: Gửi mail trong Nodejs sử dụng Express và Nodemailer\",\r\n      \"Bài 3: Tạo ứng dụng \'Hello World\' bằng ExpressJs\",\r\n      \"Bài 4: Định tuyến (route) trong Express\",\r\n      \"Bài 5: Xây dựng URL trong Express\",\r\n      \"Bài 6: Request & Response Object trong Express\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3: SOCKET.IO\",\r\n    \"content\": [\r\n      \"Bài 1: Socket.io là gì? Giới thiệu về Socket.io\",\r\n      \"Bài 2: Tạo môi trường làm việc với Socket.io\",\r\n      \"Bài 3: Gửi nhận Events trong Socket.io\",\r\n      \"Bài 4: Broadcasting trong Socket.io\",\r\n      \"Bài 5: Namespaces & Rooms trong Socket.io\",\r\n      \"Bài 6: Error Handling & Debugging trong Socket.io\"\r\n    ]\r\n  }\r\n]', 1, 0, '/storage/img/products/nodejs.png', 300000, NULL, '2022-06-21 00:55:43', NULL, 10, 0, 'prod_LlX7cg3nAuQmuG', 'price_1L403eFokwkgT8NSYkOLFLmD'),
(8, 'Python', 2, 2, 'Như các bạn biết, Python là ngôn ngữ lập trình tương đối dễ học và được sử dụng để xây dựng các ứng dụng trên nhiều nền tảng khác nhau, điểm mạnh của nó là tính cộng đồng, mã nguồn mở và cú pháp đơn giản giúp người chưa biết gì về lập trình dễ dàng tiếp cận. Hiện nay việc làm về Python cũng tương đối phong phú, nhất là những công ty nước ngoài họ cần rất nhiều nhân lực Python, vì vậy hôm nay minh sẽ chia sẻ những kiến thức học Python miễn phí tại đây.', '[\r\n  {\r\n    \"title\": \"Chương số 1: PYTHON CĂN BẢN\",\r\n    \"content\": [\r\n      \"Bài 1: Hướng dẫn download và cài đặt python trên Window (Win 7 / Win 10)\",\r\n      \"Bài 2: Cài đặt Intellij IDEA và chạy Hello World trong Python\",\r\n      \"Bài 3: Cách khai báo biến trong Python\",\r\n      \"Bài 4: Cách tạo comment trong Python\",\r\n      \"Bài 5: Các kiểu dữ liệu trong Python\",\r\n      \"Bài 6: Cách ép kiểu dữ liệu trong Python\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2: PYTHON NÂNG CAO\",\r\n    \"content\": [\r\n      \"Bài 1: Anaconda là gì? Cài đặt Anaconda trên Windows - Linux - Mac OS\",\r\n      \"Bài 2: Hướng dẫn cài đặt và sử dụng Jupyter Notebook\",\r\n      \"Bài 3: Hướng dẫn cài đặt package Python với pip\",\r\n      \"Bài 4: Multiprocessing trong Python (xử lý đa tiến trình)\",\r\n      \"Bài 5: Xử lý MySQL trong Python (insert / update / delete / select)\",\r\n      \"Bài 6: Cách sử dụng Google Translator trong Python\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3: DJANGO\",\r\n    \"content\": [\r\n      \"Bài 1: Django là gì? Có nên sử dụng Django để làm website?\"\r\n    ]\r\n  },\r\n {\r\n    \"title\": \"Chương số 4: PANDAS\",\r\n    \"content\": [\r\n      \"Bài 1: Tìm hiểu thư viện phân tích dữ liệu PANDAS trong Python\",\r\n      \"Bài 2: Pandas là gì? Cách cài đặt Pandas Python\",\r\n      \"Bài 3: Data Selection và Indexing trong Pandas\",\r\n      \"Bài 4: Xử lý dữ liệu trong Pandas\",\r\n      \"Bài 5: Hierarchical Indexing trong Pandas\",\r\n      \"Bài 6: Kết hợp các tập dữ liệu trong Pandas\"\r\n    ]\r\n  }\r\n]', 1, 0, '/storage/img/products/python.jpg', 350000, NULL, '2022-06-21 01:00:42', NULL, 10, 0, 'prod_LlX8hRnmdQVbPf', 'price_1L404eFokwkgT8NSyurenZPk'),
(9, 'Java', 2, 2, 'Java là một ngôn ngữ lập lập trình, được phát triển bởi Sun Microsystem vào năm 1995, là ngôn ngữ kế thừa trực tiếp từ C/C++ và là một ngôn ngữ lập trình hướng đối tượng. Vì sao ngôn ngữ này lại được đặt tên là Java? Java là tên một hòn đảo ở Indonesia - hòn đảo nổi tiếng với loại coffee Peet và cũng là loại nước uống phổ biến của các kỹ sư Sun. Ban đầu Ngôn ngữ này được đặt tên là \"Oak\" (có nghĩa là \"Cây sồi\" - 1991), nhưng các luật sư của Sun xác định rằng tên đó đã được đăng ký nhãn hiệu nên các nhà phát triển đã phải thay thế bằng một tên mới -  và cũng vì lý do trên mà cái tên Java đã ra đời và trở thành tên gọi chính thức của Ngôn ngữ này - Ngôn ngữ Lập trình Java.', '[\r\n  {\r\n    \"title\": \"Chương số 1: JAVA CORE\",\r\n    \"content\": [\r\n      \"Bài 1: Java là gì? Giới thiệu ngôn ngữ Java\",\r\n      \"Bài 2: Hướng dẫn cài đặt, cấu hình và thiết lập biến môi trường cho Java\",\r\n      \"Bài 3: Hướng dẫn cài đặt, cấu hình và cách sử dụng Eclipse\",\r\n      \"Bài 4: Chương trình Java đầu tiên - HelloWorld\",\r\n      \"Bài 5: Cú pháp và quy tắc Java cơ bản\",\r\n      \"Bài 6: Các kiểu dữ liệu trong Java\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2: CÁC HÀM\",\r\n    \"content\": [\r\n      \"Bài 1: Cấu trúc điều khiển if - else trong Java\",\r\n      \"Bài 2: Cấu trúc rẽ nhánh switch - case trong Java.\",\r\n      \"Bài 3: Vòng lặp while trong Java\",\r\n      \"Bài 4: Vòng lặp do - while trong Java\",\r\n      \"Bài 5: Vòng lặp for trong Java\",\r\n      \"Bài 6: Từ khóa break và continue trong Java\",\r\n      \"Bài 7: Chuỗi (String) trong Java\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3: JAVA 8\",\r\n    \"content\": [\r\n      \"Bài 1: Khi nào dùng Default Methods trong Java 8\",\r\n      \"Bài 2: Lambda Expressions trong Java 8\",\r\n      \"Bài 3: Method References (phương thức tham chiếu) trong Java 8\"\r\n    ]\r\n  }\r\n]', 1, 1, '/storage/img/products/java.jpg', 375000, NULL, '2022-06-21 01:04:20', NULL, 10, 0, 'prod_LlXARhoNERobGz', 'price_1L405oFokwkgT8NS70Ig6dFV'),
(10, 'Manual Test', 3, 2, 'Manual Testing là một trong những công việc theo dạng kiểm thử phần mềm, hoặc là một chương trình được thực hiện bằng tay bởi các tester mà không thông qua bất kỳ công cụ hỗ trợ nào. Nó hoạt động dựa vào mục đích phát hiện các lỗi bug từ nhỏ cho đến lớn trong phần mềm. Từ đó, đưa ra những định hướng giải quyết để có thể đảm bảo cho phần mềm hoạt động ổn định nhất khi giao cho khách hàng.', '[\r\n  {\r\n    \"title\": \"Chương số 1: TÌM HIỂU VỀ QUY TRÌNH MANUAL TESTING\",\r\n    \"content\": [\r\n      \"Bài 1: Hiểu rõ các yêu cầu\",\r\n      \"Bài 2: Viết test case\",\r\n      \"Bài 3: Thực hiện kiểm thử\",\r\n      \"Bài 4: Điều tra sâu hơn\",\r\n      \"Bài 5: Viết Báo cáo bug\",\r\n      \"Bài 6: Báo cáo về kết quả test\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2:  HỌC CÁC TOOL HỖ TRỢ\",\r\n    \"content\": [\r\n      \"Bài 1: Quản lý Testcase:\",\r\n      \"Bài 2: Tìm kiếm và quản lý issue\",\r\n      \"Bài 3: Kiểm thử đa trình duyệt\",\r\n      \"Bài 4: Kiểm thử API\",\r\n      \"Bài 5: Chụp màn hình\"\r\n    ]\r\n  }\r\n]', 1, 0, '/storage/img/products/tester.jpg', 200000, NULL, '2022-06-21 00:30:26', NULL, 10, 0, 'prod_LlXBkmAMv1KbPU', 'price_1L407EFokwkgT8NS1mzWeAFr'),
(11, 'Automatic Test', 3, 2, 'Khi khái niệm Automation Test (kiểm tra tự động) ra đời, Tester chỉ cần viết một đoạn code hoặc sử dụng một số công cụ như Selenium, Test Complete, Jmetter… để chạy tự động tất cả các bước bao gồm nhập thông tin, click, kiểm tra kết quả, so sánh kết quả thực tế với kết quả giả định. Nhiều loại test có thể làm auto, ví dụ như functional testing, performance/load testing, unit testing.', '[\r\n  {\r\n    \"title\": \"Chương số 1: KIỂM THỬ PHẦN MỀM\",\r\n    \"content\": [\r\n      \"Bài 1: Tester là gì? Kiểm thử là gì?\",\r\n      \"Bài 2: Con đường sự nghiệp của Kiểm thử phần mềm\",\r\n      \"Bài 3: 7 nguyên lý trong kiểm thử phần mềm\",\r\n      \"Bài 4: 10 sai lầm trong kiểm thử phần mềm\",\r\n      \"Bài 5: Phân biệt QA, QC và Testing\",\r\n      \"Bài 6: Các tiêu chuẩn ISO trong kiểm thử phần mềm\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2: VIẾT TESTCASES\",\r\n    \"content\": [\r\n      \"Bài 1: Tài liệu kiểm thử\",\r\n      \"Bài 2: Kịch bản kiểm thử - Test Scenario\",\r\n      \"Bài 3: Cách viết Test Cases\",\r\n      \"Bài 4: Cơ sở kiểm thử - Test basis\",\r\n      \"Bài 5: Cách tạo Requirements Traceability Matrix - RTM\",\r\n      \"Bài 6: Thủ thuật để tạo dữ liệu kiểm thử\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3: KỸ THUẬT TEST\",\r\n    \"content\": [\r\n      \"Bài 1: Kỹ thuật kiểm thử phần mềm\",\r\n      \"Bài 2: Kỹ thuật Phân tích giá trị biên và phân vùng tương đương\",\r\n      \"Bài 3: Kỹ thuật kiểm thử bảng quyết định\",\r\n      \"Bài 4: Kỹ thuật kiểm thử chuyển đổi trạng thái\",\r\n      \"Bài 5: Kiểm thử Use Case\",\r\n      \"Bài 6: Các tài liệu kiểm thử\"\r\n    ]\r\n  }\r\n]', 1, 0, '/storage/img/products/automationtest.jpg', 275000, NULL, '2022-06-21 00:35:32', NULL, 10, 0, 'prod_LlXCvTpvxJBwdz', 'price_1L408QFokwkgT8NShPzoWTKD'),
(12, 'SQL Server', 4, 2, 'SQL server hay còn được gọi là Microsoft SQL Server, nó từ viết tắt của MS SQL Server. Đây chính là một loại phần mềm đã được phát triển bởi Microsoft và nó được sử dụng để có thể dễ dàng lưu trữ cho những dữ liệu dựa theo tiêu chuẩn RDBMS. Từ đó, người ta sẽ lưu trữ dữ liệu dựa vào tiêu chuẩn RDBMS và nó cũng là một  trong những hệ quản trị cơ sở dữ liệu dạng quan hệ đối tượng.', '[\r\n  {\r\n    \"title\": \"Chương số 1: Cơ bản về SQL\",\r\n    \"content\": [\r\n      \"Bài 1:  SQL là gì\",\r\n      \"Bài 2: Các khái niệm RDBMS\",\r\n      \"Bài 3: Database là gì\",\r\n      \"Bài 4: Cú pháp SQL cơ bản\",\r\n      \"Bài 5: Kiểu dữ liệu\",\r\n      \"Bài 6: Toán tử\",\r\n      \"Bài 7: Biểu thức (Expression)\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2: SQL SERVER CĂN BẢN\",\r\n    \"content\": [\r\n      \"Bài 1: MS SQL Server là gì? Đặc điểm của nó\",\r\n      \"Bài 2: Hướng dẫn cài đặt SQL Server\",\r\n      \"Bài 3: Kết nối vào SQL Server\",\r\n      \"Bài 4: Database mẫu để học SQL Server\",\r\n      \"Bài 5: Load database mẫu học SQL Server\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3: Data Definition\",\r\n    \"content\": [\r\n      \"Bài 1: Lệnh Create Database trong SQL Server\",\r\n      \"Bài 2: Schema là gì? tạo Schema trong SQL Server\",\r\n      \"Bài 3: Lệnh Create Table trong SQL Server\",\r\n      \"Bài 4: Thiết lập ID tăng tự động với Identity trong SQL Server\",\r\n      \"Bài 5: Khóa chính Primary Key trong SQL Server\",\r\n      \"Bài 6: Khóa ngoại Foreign Key trong SQL Server\",\r\n     \"Bài 7: Thêm column vào table trong SQL Server\",\r\n     \"Bài 8: Chỉnh sửa cấu trúc column trong SQL Server\"\r\n    ]\r\n  }\r\n]', 1, 0, '/storage/img/products/sqlsever.jpg', 200000, NULL, '2022-06-20 23:56:21', NULL, 10, 0, 'prod_LlXEPXaCkQ3dbU', 'price_1L409dFokwkgT8NSWO34uaC1'),
(13, 'My Sql', 4, 2, 'Quay lại với khái niệm chính, MySQL là một hệ thống quản trị cơ sở dữ liệu mã nguồn mở (Relational Database Management System, viết tắt là RDBMS) hoạt động theo mô hình client-server. RDBMS là một phần mềm hay dịch vụ dùng để tạo và quản lý các cơ sở dữ liệu (Database) theo hình thức quản lý các mối liên hệ giữa chúng. MySQL là một trong số các phần mềm RDBMS. RDBMS và MySQL thường được cho là một vì độ phổ biến quá lớn của MySQL. Các ứng dụng web lớn nhất như Facebook, Twitter, YouTube, Google, và Yahoo! đều dùng MySQL cho mục đích lưu trữ dữ liệu.', '[\r\n  {\r\n    \"title\": \"Chương số 1: MYSQL CĂN BẢN\",\r\n    \"content\": [\r\n      \"Bài 1: Cài đặt MySQL và tham quan PHPMyAdmin\",\r\n      \"Bài 2: MySQL Table Types & Storage Engines\",\r\n      \"Bài 3: MySQL Data Types\",\r\n      \"Bài 4: Lệnh tạo database (Create Database) trong MySQL\",\r\n      \"Bài 5: Lệnh tạo bảng (Create Table) trong MySQL\",\r\n      \"Bài 6: Tạo khóa chính (Primary key) trong MySQL\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2: CÁC HÀM TRONG MYSQL\",\r\n    \"content\": [\r\n      \"Bài 1: Hàm ASCII trong MySQL\",\r\n      \"Bài 2: Hàm CHAR_LENGTH trong MySQL\",\r\n      \"Bài 3: Hàm CHARACTER_LENGTH trong MySQL\",\r\n      \"Bài 4: Hàm CONCAT trong MySQL\",\r\n      \"Bài 5: Hàm CONCAT_WS trong MySQL\",\r\n      \"Bài 6: Hàm IF trong MySQL\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3: CÁC HÀM NÂNG CAO\",\r\n    \"content\": [\r\n      \"Bài 1: Hàm BIN trong MySQL\",\r\n      \"Bài 2: Hàm BINARY trong MySQL\",\r\n      \"Bài 3: Hàm CASE trong MySQL\",\r\n      \"Bài 4: Hàm CAST trong MySQL\",\r\n      \"Bài 5: Hàm COALESCE trong MySQL\",\r\n      \"Bài 6: Hàm CONNECTION_ID trong MySQL\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 4: MYSQL NÂNG CAO\",\r\n    \"content\": [\r\n      \"Bài 1: Tìm hiểu View trong MySql là gì?\",\r\n      \"Bài 2: Có nên sử dụng View trong MySQL không?\",\r\n      \"Bài 3: Lệnh Create View trong MySQL\",\r\n      \"Bài 4: Lệnh Drop View trong MySQL\",\r\n      \"Bài 5: Cách đổi tên View trong MySQL (Rename View)\",\r\n      \"Bài 6: Giới thiệu Mysql Stored Procedure là gì?\"\r\n    ]\r\n  }\r\n]', 1, 0, '/storage/img/products/mysql.jpg', 200000, NULL, '2022-06-21 00:09:11', NULL, 10, 0, 'prod_LlXFN0MmK4lYL0', 'price_1L40B0FokwkgT8NS2lBgEjHZ'),
(14, 'Postgresql', 4, 2, 'PostgreSQL là một hệ thống quản trị cơ sở dữ liệu quan hệ miễn phí và nguồn mở (RDBMS) tập trung vào khả năng mở rộng và tuân thủ các tiêu chuẩn kỹ thuật. Nó được thiết kế để xử lý một loạt các khối lượng công việc lớn, từ các máy tính cá nhân đến kho dữ liệu hoặc dịch vụ Web có nhiều người dùng đồng thời.\r\n\r\nPostgreSQL bắt đầu từ năm 1986 như một phần của dự án POSTGRES tại Đại học California tại Berkeley và có hơn 30 năm phát triển. Đây là cơ sở dữ liệu mặc định cho macOS Server, và cũng có các bản phân phối cho Linux, FreeBSD, OpenBSD và Windows.', '[\r\n  {\r\n    \"title\": \"Chương số 1: PostgreSQL cơ bản\",\r\n    \"content\": [\r\n      \"Bài 1: Giới thiệu về PostgreSQL\",\r\n      \"Bài 2: Cài đặt PostgreSQL\",\r\n      \"Bài 3: Kết nối tới PostgreSQL Database\",\r\n      \"Bài 4: Tổng hợp SQL Query và Command\",\r\n      \"Bài 5: Các kiểu dữ liệu (Data Types)\",\r\n      \"Bài 6: Quản lý Database\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2: Quản lý Database\",\r\n    \"content\": [\r\n      \"Bài 1: Tạo mới database\",\r\n      \"Bài 2: Chỉnh sửa Database\",\r\n      \"Bài 3: Xóa database\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3: Quản lý Tablespace\",\r\n    \"content\": [\r\n      \"Bài 1: Tạo mới Tablespace\",\r\n      \"Bài 2: Chỉnh sửa Tablespace\",\r\n      \"Bài 3: Xóa Tablespace\"\r\n    ]\r\n  },\r\n {\r\n    \"title\": \"Chương số 4: Quản lý Table\",\r\n    \"content\": [\r\n      \"Bài 1: Tạo mới Table\",\r\n      \"Bài 2: Chỉnh sửa Table\",\r\n      \"Bài 3: Xóa Table\",\r\n     \"Bài 4: Tạo Auto-Increment Column\"\r\n    ]\r\n  }\r\n]', 1, 0, '/storage/img/products/postgresql.jpg', 200000, NULL, '2022-06-21 00:19:46', NULL, 10, 0, 'prod_LlXGppEUq7OK0V', 'price_1L40CMFokwkgT8NSPH9tg0Ye'),
(15, 'Oracle', 4, 2, 'Oracle là một hệ quản trị CSDL ra đời đã rất lâu, và là CSDL đầu tiên sử dụng ngôn ngữ truy vấn dữ liệu T-SQL và lấy làm chuẩn cho cac CSDL khác như SQL Server, MySQL, ... Nếu bạn đã từng học qua các hệ quản trị CSDL khác thì khi học Oracle sẽ tương đối đơn giản, bởi bản chất nó cũng sử dụng ngôn ngữ T-SQL, chỉ có một vài cú pháp là khác nhau.', '[\r\n  {\r\n    \"title\": \"Chương số 1: ORACLE CĂN BẢN\",\r\n    \"content\": [\r\n      \"Bài 1: Oracle là gì? Các phiên bản của Oracle\",\r\n      \"Bài 2: Data types trong Oracle\",\r\n      \"Bài 3: Comment trong Oracle\",\r\n      \"Bài 4: Lệnh tạo bảng trong Oracle - Create Table\",\r\n      \"Bài 5: Lệnh sửa bảng trong Oracle - Alter Table\",\r\n      \"Bài 6: Lệnh xóa bảng trong Oracle - Drop Table\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 2: CÁC HÀM TRONG ORACLE\",\r\n    \"content\": [\r\n      \"Bài 1: Hàm Hàm ASCII trong Oracle\",\r\n      \"Bài 2: Hàm Hàm ASCIISTR trong Oracle\",\r\n      \"Bài 3: Hàm Hàm CHR trong Oracle\",\r\n      \"Bài 4: Hàm Hàm COMPOSE trong Oracle\",\r\n      \"Bài 5: Hàm Hàm CONCAT trong Oracle\",\r\n      \"Bài 6: Hàm Hàm CONVERT trong Oracle\"\r\n    ]\r\n  },\r\n  {\r\n    \"title\": \"Chương số 3: ORACLE NÂNG CAO\",\r\n    \"content\": [\r\n      \"Bài 1: Tìm hiểu Sequence trong Oracle\",\r\n      \"Bài 2: Khai báo biến với DECLARE trong Oracle\",\r\n      \"Bài 3: FOR LOOP trong Oracle\",\r\n      \"Bài 4: Lệnh GOTO trong Oracle\",\r\n      \"Bài 5: Lệnh IF THEN ELSE trong Oracle\",\r\n      \"Bài 6: Vòng lặp WHILE LOOP trong Oracle\"\r\n    ]\r\n  }\r\n]', 1, 0, '/storage/img/products/oracle.jpg', 200000, NULL, '2022-06-21 00:24:31', NULL, 10, 0, 'prod_LlXHynm8buKCIg', 'price_1L40D4FokwkgT8NSbaHDLe5v'),
(16, 'Ruby', 2, 2, 'Ruby được phát hành vào năm 1995. Yukihiro Matsumoto, người sáng lập Ruby, cho biết: Mục đích của Ruby là làm cho các lập trình viên cảm thấy hài lòng. Ruby được thiết kế như một ngôn ngữ thân thiện với các lập trình viên. Nó cũng là một ngôn ngữ rất linh hoạt cho phép các lập trình viên dễ dàng thay đổi các yếu tố của nó và kết hợp các cách tiếp cận khác nhau theo nhiều cách mạnh mẽ. Ngôn ngữ này tập trung vào nhu cầu của con người, chứ không phải là máy tính.', '[\r\n                    {\r\n                        \"title\": \"Chương số 1: RUBY CĂN BẢN\",\r\n                        \"content\": [\r\n                        \"Bài 1: Ruby là gì? Ai đã sáng tạo ra ngôn ngữ viêm kim cương này?\",\r\n                        \"Bài 2: Block trong Ruby\",\r\n                        \"Bài 3: Hướng dẫn cài đặt Ruby trên Window, Linux và MacOS\",\r\n                        \"Bài 4: Cú pháp trong Ruby - Chạy Hello World\",\r\n                        \"Bài 5: Các loại biến và cách sử dụng Module trong Ruby\",\r\n                        \"Bài 6: Kiểu dữ liệu Number trong Ruby (Kiểu số Integer, Float, ...)\"\r\n                        ]\r\n                    },\r\n                    {\r\n                        \"title\": \"Chương số 2: KIỂU DỮ LIỆU\",\r\n                        \"content\": [\r\n                        \"Bài 1: Kiểu dữ liệu Number trong Ruby (Kiểu số Integer, Float, ...)\",\r\n                        \"Bài 2: Kiểu dữ liệu Text trong Ruby (còn gọi là chuỗi / string)\",\r\n                        \"Bài 3: Kiểu dữ liệu Hashes trong Ruby: Hiểu từ đơn giản đến phức tạp\",\r\n                        \"Bài 4: Kiểu dữ liệu Boolean trong Ruby: True, False và Nil\",\r\n                        \"Bài 5: Kiểu dữ liệu Symbol trong Ruby\",\r\n                        \"Bài 6: Cách sử dụng Array trong Ruby\"\r\n                        ]\r\n                    },\r\n                    {\r\n                        \"title\": \"Chương số 3: NÂNG CAO\",\r\n                        \"content\": [\r\n                        \"Bài 1: Hiểu về Method Missing trong Ruby\",\r\n                        \"Bài 2: Câu lệnh điều kiện trong Ruby\",\r\n                        \"Bài 3: Vòng lặp trong Ruby: Vòng lặp for / while / until / loop\",\r\n                        \"Bài 4: Iterator trong Ruby\",\r\n                        \"Bài 5: Cách tạo Method - Class và Object trong Ruby\"\r\n                        ]\r\n                    }\r\n                ]', 1, 0, '/storage/img/products/1655221354_Ruby.png', 300000, '2022-06-14 22:42:35', '2022-06-21 01:08:09', NULL, 10, 10, 'prod_LsMcmAJba4v8gl', 'price_1LAbvQFokwkgT8NSszXxdJvK');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `photo` char(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`, `product_id`, `photo`) VALUES
(1, 'Phạm Xuân Tùng', '<p>- Email: toilatung52@gmail.com<br />\r\n- Phone: 0912345678<br />\r\n- M&ocirc; tả: 10&nbsp;năm kinh nghiệm PHP, 200 năm kinh nghiệm Laravel, 30năm l&agrave;m CTO, nhiều năm kinh nghiệm dạy học trong nghề.</p>\r\n\r\n<p>&nbsp;</p>', '2022-02-17 07:48:30', '2022-06-18 11:43:32', NULL, 6, '/storage/img/avatar/avatar.jpg'),
(2, 'Lê Minh Đăng', '<p>- Email: toilatung52@gmail.com<br />\r\n- Phone: 0912345678<br />\r\n- M&ocirc; tả: 100 năm kinh nghiệm PHP, 200 năm kinh nghiệm Laravel, 3000 năm l&agrave;m CTO</p>', '2022-02-17 07:48:30', '2022-06-14 22:31:14', NULL, 1, '/storage/img/avatar/avatar.jpg'),
(3, 'Ngô Tiến Long', '<p>- Email: toilatung52@gmail.com<br />\r\n- Phone: 0912345678<br />\r\n- M&ocirc; tả: 100 năm kinh nghiệm PHP, 200 năm kinh nghiệm Laravel, 3000 năm l&agrave;m CTO</p>', '2022-02-17 07:48:30', '2022-06-14 22:31:36', NULL, 4, '/storage/img/avatar/avatar.jpg'),
(4, 'Lê Minh Hải', '<p>- Email: toilatung52@gmail.com<br />\r\n- Phone: 0912345678<br />\r\n- M&ocirc; tả: 100 năm kinh nghiệm PHP, 200 năm kinh nghiệm Laravel, 3000 năm l&agrave;m CTO</p>', '2022-02-17 07:48:30', '2022-06-14 22:31:31', NULL, 1, '/storage/img/avatar/avatar.jpg'),
(5, 'Phạm Văn Lộc', '<p>- Email: toilatung52@gmail.com<br />\r\n- Phone: 0912345678<br />\r\n- M&ocirc; tả: 100 năm kinh nghiệm PHP, 200 năm kinh nghiệm Laravel, 3000 năm l&agrave;m CTO</p>', '2022-02-17 07:48:30', '2022-06-14 22:31:48', NULL, 8, '/storage/img/avatar/avatar.jpg'),
(6, 'Nguyễn Duy Hiểu', '<p>- Email: toilatung52@gmail.com<br />\r\n- Phone: 0912345678<br />\r\n- M&ocirc; tả: 100 năm kinh nghiệm PHP, 200 năm kinh nghiệm Laravel, 3000 năm l&agrave;m CTO</p>', '2022-05-27 11:42:21', '2022-06-18 16:19:20', '2022-06-18 16:19:20', 5, '/storage/img/avatar/avatar.jpg'),
(7, 'Phạm Mai Anh', '<p>- Email: phuong.ld@gmail.com</p>\r\n\r\n<p>- SDT: 0989842021</p>\r\n\r\n<p>- 30 năm kinh nghiệm dạy học</p>\r\n\r\n<p>- 10 năm kinh nghieệm HTML, Css</p>', '2022-06-18 11:38:06', '2022-06-18 17:29:53', NULL, 5, '/storage/img/avatar/avatar.jpg'),
(8, 'Phạm Xuân Trường', '<p>- Email: phuong.ld@gmail.com</p>\r\n\r\n<p>- SDT: 0989842021</p>\r\n\r\n<p>- 30 năm kinh nghiệm dạy học</p>\r\n\r\n<p>- 10 năm kinh nghieệm SQL server</p>', '2022-06-18 17:00:46', '2022-06-18 17:30:08', NULL, 12, '/storage/img/avatar/1655548096_123.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:Female,1:Male,2:Others',
  `role` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:User;1:Admin',
  `photo` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `gender`, `role`, `photo`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Phạm Xuân Tùng', 'tung2000@gmail.com', '$2y$10$uTe8bGu4jdqSJ4mU4x4A6eNjqU73SvUxy9HfIKTzNqO/zCp6QNclS', '893 Leuschke Rapid Suite 950\r\nCassandrechester, WI 78588-8631', '0989842021', 2, 1, '/storage/img/avatar/avatar.jpg', '3I89ExAJ5iXtXjBpx5czCgkjKAv9NCuLYxhh09nUdWhtGR7M6y9A1mv2GcCj', NULL, '2022-02-17 07:48:29', '2022-06-20 20:45:52'),
(2, 'Phạm Minh Tuấn', 'phamtuan123@gmail.com', '$2y$10$U7yyuTCWlOfZqrSFKwHVAeZ5lqC9T0./XVpIbMQi7vT3SVkRUnLCm', '457 Louisa Rapids\r\nHermannbury, AR 33443', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'JNkJfPQ0T4it6GlT24ChZMfqNqNNyy', NULL, '2022-02-17 07:48:29', '2022-06-18 10:55:40'),
(3, 'Lê Kiều Trang', 'trang.lk@gmail.com', '$2y$10$KtjIU2s1fwb.RC9NkUvzWefazDXVaVgNqpOjNBWYyIA33s.QL51um', '82559 Jonatan Fords\r\nMrazshire, WA 28381', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'JrEBfTfyDnUx7NficjLqYJSheSeg4H', NULL, '2022-02-17 07:48:29', '2022-06-18 17:45:31'),
(4, 'Luz Weber PhD', 'mhessel@example.org', '$2y$10$q7U3HdVS7eiGUU92cdcZz.L3dRrSt81xJM9naUX0h5MVAQTj7BFgG', '147 Kennith Radial\nWest Fredrickberg, TN 49460', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'wBEpEaRsCavUzaT16Zqjf2crfONeqr', NULL, '2022-02-17 07:48:29', '2022-02-17 07:48:29'),
(5, 'Osvaldo Ritchie', 'eaufderhar@example.net', '$2y$10$GqvYHcC2O3akzMjxXaRJM.6I6P3I/xb5D.9wcBUJf121qTNFhaUGu', '88431 Casper Underpass Suite 115\r\nDurganburgh, OK 59491-5646', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'bIkxWs3UIeaSofNX7MKL5SzI7JGqHm', NULL, '2022-02-17 07:48:29', '2022-05-26 17:10:59'),
(6, 'hhhhhh', 'kk@gmail.com', '$2y$10$WXaZFOBKK4OF4j0VvmJdG.ysPnd9M01UJ2DH6nmyAq3QLDNuf4POe', '1231 ffff', '1234567812', 1, 0, '/storage/img/avatar/user.png', NULL, NULL, '2022-02-19 08:58:40', '2022-02-19 08:58:40'),
(7, 'Lori Gaylord', 'kgraham@example.net', '$2y$10$qDKr9u95i3ajMCLdZ7Inl.kbjOZN./7GpNgkg.1ADWn8vDUsRzm86', '6862 Name Isle\nEast Isai, ND 53134', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'qKTfOL65gVyjWbw8f4j1CALhReF3aY', NULL, '2022-03-14 09:21:12', '2022-03-14 09:21:12'),
(8, 'Angus Bruen I', 'msenger@example.net', '$2y$10$elNe44GzEg/UoEg3N8p6G.sGaifi9cTaqy4YvKBgOoU3vZnXewPR6', '7426 Beahan Squares\nCummerataburgh, IN 27889', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'oMOECWKYMO3YOcXjn6SUp3hlwkXBcb', NULL, '2022-03-14 09:21:12', '2022-03-14 09:21:12'),
(9, 'Chase Anderson', 'nicola91@example.org', '$2y$10$DnWAmkmgP3JSJT8ktae/jOdV0UyWUCtsx9IbRfwI4Mwn86dToro8G', '364 Lyda Neck\nSageshire, NM 36771-2256', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'Vp4wmWTb1kemxHrtasSv7RgVQW8rU3', NULL, '2022-03-14 09:21:12', '2022-03-14 09:21:12'),
(10, 'Evert Runolfsson', 'marlene37@example.net', '$2y$10$iNRz0BX65vHus/m92yC1su4JqmFM67qZno7dSV3/Mo4cTIdOXeihm', '8681 Daniel Rue Suite 256\nO\'Konton, HI 76540', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'buWouuBVwBqFNzMOj68qzzp2X0R36i', NULL, '2022-03-14 09:21:12', '2022-03-14 09:21:12'),
(11, 'Zella Boehm', 'tavares92@example.net', '$2y$10$hrSURM2RHyL3NszV56/BQOsbogzIrESk7P67wBjRjy3sMj/ECNqRe', '490 Ford Park Apt. 733\nEast Camillafort, MT 70412', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'v6HtvG5LPriAnuLcvAbCe2pRe03GNv', NULL, '2022-03-14 09:21:12', '2022-03-14 09:21:12'),
(12, 'Prof. Teagan Breitenberg', 'fredy29@example.net', '$2y$10$5uGHgYv811e7LrlGHPkGGO.pA4toNY9FrGJuCu525wXmFrHgiLzym', '350 Jamaal Landing Apt. 868\nEmiliahaven, MT 45837-2958', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'iHlCXTM7IK7zelHZabU6dShX9ADfqU', NULL, '2022-03-14 09:21:12', '2022-03-14 09:21:12'),
(13, 'Misael Kerluke DVM', 'sandra62@example.org', '$2y$10$xFen06HuPYoBZaMNG.we3.Q9R4mc/VpWkPquxuRn4P12PqokL.KCK', '59003 Mitchell Crescent Apt. 492\nAvisborough, NY 87424', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'V3HHaXq2U4owx2CqIdxO0jTAaVbzKZ', NULL, '2022-03-14 09:21:12', '2022-03-14 09:21:12'),
(14, 'Demond Boyer', 'ledner.carley@example.com', '$2y$10$oIqot50O7Z7tPrSdFFBkSO1sgzSTA77LEP/KftfRn747o4jGnQEY6', '4120 Cora Centers Apt. 588\nHagenesborough, AK 06083-4351', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'vLM5Lr28JpxcnLTWY8repulsUerlbo', NULL, '2022-03-14 09:21:12', '2022-03-14 09:21:12'),
(15, 'Nick Boyer', 'tdietrich@example.net', '$2y$10$96/VH9mdoIgJFt1k.5vpAejdTjMpzYQG7hkPm7IMZL1j1c.TX6UFu', '9500 Leuschke Summit\nMichaelbury, VT 32570', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'tSZZJskr3oPfmKzu3vJylMH7aUV8SN', NULL, '2022-03-14 09:21:12', '2022-03-14 09:21:12'),
(16, 'Brycen Goldner', 'reichel.yadira@example.org', '$2y$10$iCWXX/Tivojo65ZzadvMAuf7eQr6gQwUh5RQB50rsJR9szqQ60RdC', '7791 Stehr Row\nAlexandrofurt, CT 58989', '0989842021', 0, 0, '/storage/img/avatar/user.png', '66dbfvT1JyCKTlzha6YGwL5Bjfye1X', NULL, '2022-03-14 09:21:12', '2022-03-14 09:21:12'),
(17, 'Kelly Mayer', 'lewis66@example.com', '$2y$10$CNAC1ClGji2TZWfnTzZdnO6VSLbZmJqoWMObAZWqiAaxocl87VPKO', '9398 Simonis Prairie\nEast Edisonland, IN 63156', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'arLjM934jil2oAi2qxXxlwnHA29yXY', NULL, '2022-03-14 09:21:12', '2022-03-14 09:21:12'),
(18, 'Pham Xuan Tung', 'smraz@example.com', '$2y$10$wktg7jjJyrn9XtG7PCzgr.kboohkMmlcv1hydLnFied9Tly9GWOGu', '49843 Palma Oval Suite 335\r\nHoytside, SC 85315', '0989842023', 1, 0, '/storage/img/avatar/user.png', 'TdxVltTNro7MvSrudOFF3dnx3CCi4Z', NULL, '2022-03-14 09:21:13', '2022-05-24 09:12:03'),
(19, 'Bertram Aufderhar', 'crona.ova@example.org', '$2y$10$mQaRxFSeeYDPOwnE9TcrH.4n2Cm2e5qxVb/D.pcAzkWlPYCUCVoae', '6189 Jayce Land\nIsabelleberg, PA 20256-9821', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'GQB4HPz2tbdExgkfv8bEskta2gXQgz', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(20, 'Prof. Rory Luettgen', 'evie93@example.com', '$2y$10$6HdjHq4Wagar3TiprlDft.OqmSgk3Cf2hC4aahwr.b0HWK9C1H05O', '26454 Ledner Ford\nMarcelinoview, AK 46179-5439', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'sPJBLFjcevsccRoMgQSvAJj5KR54eV', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(21, 'Eleanore Zboncak', 'dawn.reynolds@example.com', '$2y$10$es2wShQdXy.pKn8NzCB12.HKE0yICgFBVQKSgvYQ4s9z9xA6ZZNKa', '31328 Hardy Coves\nLake Deronburgh, NC 64169-9785', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'CijV2iDX1Qa6iWu20W233t7yVWw753', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(22, 'Dr. Muhammad Reichert', 'kschmitt@example.org', '$2y$10$dcAfJusZayqgoTSza.6GV.trM6x0xmQ6baSwcshTxTAFiS2BFAXeq', '42241 Mariana Springs\nPort Rubye, ND 86700', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'L6UmBAfJ2t1pzF54boBe0jejl8Jyhu', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(23, 'Mr. Rylan Halvorson MD', 'xjones@example.com', '$2y$10$cYrF3IcHcoGk8/uDcxR7S.xhVkPzGw2RbTeQicqejoHWjCIBR1kQK', '545 Jermey Trafficway\nBernhardshire, WV 86550', '0989842021', 2, 0, '/storage/img/avatar/user.png', '9JzbXIPUAsX0FcMZwJXricKTzIVcU9', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(24, 'Mattie Dickens III', 'julianne73@example.org', '$2y$10$bPFTiqsIYF9PbU3J6elVzOq0K.rdUzApZPoQQMRNDSFyakwn3CqPy', '8624 Frederik Loop Apt. 330\nEast Danielaview, IA 78505-1000', '0989842021', 1, 0, '/storage/img/avatar/user.png', '57fPfpxdb3ABPk7yeO3md1JpkzZyEM', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(25, 'Holly Macejkovic DDS', 'ybeer@example.com', '$2y$10$ZnlPYbEgZoQ5iXYXb4CjbOSJyw7BWtHK/XzheW/WaJW9IhXnlZ1Sy', '6992 McLaughlin Street\nPort Rosachester, LA 98050-4487', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'cxY2qhBYXXAjReCgc96lzap8is5i6v', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(26, 'Dr. Maximo Rodriguez', 'rippin.mireille@example.net', '$2y$10$c/bRk9XfsajrzRRR9W75ROY0RCQ0pMWU5FoQkpRRY7zFk5U4R7GHS', '2807 Ubaldo Row Apt. 056\nEast Brandy, IL 32344', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'mAJqKJeSP4GfmM6OoubpMxP4eNuoyR', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(27, 'Bethel Beer', 'felicia97@example.org', '$2y$10$31WDqQe46F2C504bSQsTLuiITpjJzgNvcpIL.7VR1wkPc/fLi8L0C', '3174 Rosendo Circles Apt. 170\nClintview, TX 17652', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'qmdthiF3riji3pQbXmyAq9aWQC8KXG', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(28, 'Daron Gleichner', 'oma33@example.com', '$2y$10$3XaU2j0D1OzzuJGv4dZO7eD9vMNH3H98c8xeVY5hG2GU8q28UeYSy', '168 Zieme Ridge\nMelvinstad, MN 83561', '0989842021', 1, 0, '/storage/img/avatar/user.png', '9Pt1YOmAiTSXQB7ImhA9iID0q1iufz', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(29, 'Theron Welch MD', 'mercedes.monahan@example.com', '$2y$10$SUaFpl0onKtdGo4gJjP8veoPGsVa1oLR4NEpXCRaSXDAFDMqAzCp6', '5131 Elouise Junctions\nLake Clarissa, WY 01275-4501', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'sBmphEArYf5Lw5jxy7VwjoCXivpcm2', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(30, 'Miss Dawn Yundt', 'gmiller@example.net', '$2y$10$4Ar3e6S5ZuVQ5lMTFOiSOu374g/4btDkKdaPWfkPeOmLrrcd0AH6y', '60928 Heller Causeway\nEast Dinoton, AR 30895', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'nMxf9a8EkGXBRaymW3SvSOdZeV8wE7', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(31, 'Mia Osinski', 'ruthe60@example.com', '$2y$10$MUslO6qDJ8RSh7xmx47mEOvaa9V82Vq4.ise8nYscabKtWFbe/Jza', '54012 Darrion Rue\nRobertsstad, DE 85235', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'm0cF0swenD5txU2ZQIwQGcY5FxqvM1', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(32, 'Elenor Klocko PhD', 'ondricka.anna@example.net', '$2y$10$3DMpGZx3dCs6KrGBoyU96.hoxEGG.NJabdOEkrGNfPZ/ExN2czdtG', '37648 Heller Row Apt. 777\nNorth Ruthechester, AR 07416-3623', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'PgOmTSOuECkN96gqNGfA30ESgY3oEt', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(33, 'Zoe Schinner', 'gmiller@example.org', '$2y$10$DSmb43LzmdN8WaXRAlfVZenh1VRZMIiEHP6HvbF5IXZYEI.New8fe', '584 Hoppe Views Suite 585\nWest Beau, DE 68037', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'oeS6w4hbK12vj7T5M8jEwmExcUdIz5', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(34, 'Favian Tillman DVM', 'zcormier@example.org', '$2y$10$pJeEf04wnhVARmknehi2eO78RJ3Sq4XURlgZaSffKFW..RZSlQlXu', '7111 Lyric Street Apt. 576\nBuddyhaven, NV 10623', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'TUUqNSlTv5drhkbKqxEBB1eMBES3mM', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(35, 'Mrs. Abigale Krajcik', 'milford72@example.net', '$2y$10$zkMLMT/LRx6rn/0HKpwSuuvnYI2plJRV3OGEe/3n/fXwqtQ.4N6je', '6797 Altenwerth Square Apt. 507\nNorth Grantburgh, CA 73094-1391', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'So1tQbXvvrKTJgGTWaZm1oBf1sNPMb', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(36, 'Bobby Hill', 'nkoss@example.com', '$2y$10$DK7.aVeTUd0xkCRKMZkf2.ENM2l46mT0ahwz9q8Cwo0/FzCo9NEtS', '3880 Stamm Route\nVirgilburgh, CO 55454-0870', '0989842021', 0, 0, '/storage/img/avatar/user.png', '0qiPfLDeGPmwkpvRDilgMVeKn1EVS1', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(37, 'Nedra Rowe', 'lilliana.gerlach@example.net', '$2y$10$/p9yiQupuSEehKUY7Xnlb.2oXG6eMnjEyRdUYZNnHlniriubKwMwi', '74288 Conn Neck Apt. 978\nNorth Elinor, NJ 78724-4556', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'o3oTaO9L5zUnca5ZiHMhWmy9JXUA8J', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(38, 'Karen Schinner', 'mathilde65@example.org', '$2y$10$24nPsTIyl.dUt562rHoHoO7ctfTM41iV2KTi1/i6IRxbEAelKnGKi', '26216 Baumbach Tunnel Suite 066\nLake Donnieshire, MS 01590', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'VzjyqmAMrD0RmQEWARPe2VTVVM7tNF', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(39, 'Shawn Emard', 'matilda94@example.net', '$2y$10$rpyuDOaseCDs4fRHt8WjDON25jOECL674u6t8dBXVS8GueDAYZYq.', '71957 Cassin Hollow Suite 375\nBetteburgh, WY 88202-8571', '0989842021', 1, 0, '/storage/img/avatar/user.png', '1OBvLWuyJ7RFhiaxCqFIApyxlb98do', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(40, 'Garrick Trantow', 'fwolff@example.net', '$2y$10$sYm00eGYHBtwoEdu3Ck16eVZaYjgvLU.D1G1PxX9LQhpdAHYx9qH2', '150 Tess Station\nNew Chase, NM 60291', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'vLWDnUhouotRjBkoWeiMgObLcJxIJh', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(41, 'Delta Ferry', 'howard.dietrich@example.com', '$2y$10$Of/40N1d1ZU4qNgk4qDL3uGLn58bfPi.yc6pMaTbjD/3w8qVDyZMO', '91648 Blick Green Suite 172\nNew Virginie, WV 02043', '0989842021', 2, 0, '/storage/img/avatar/user.png', '6SXLV2NaV3NLeUEF9UkYBtmyxkPgyX', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(42, 'Elwyn Schaefer V', 'gennaro29@example.org', '$2y$10$W2K7BzElmza3wawLI3tG3.oW8dPgpVLfzPGEie/QmHaLubJjHiwuG', '38387 Schumm Springs\nNew Yvonneborough, AZ 40766', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'SzNDZGREzLHN1Kc63ph98zmi9cp8mz', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(43, 'Ena Walsh DVM', 'haley.mattie@example.com', '$2y$10$bwBvSbtuRU8fBlLaVFPOhezMNJYs7718YdwvIw2zusRRR5Lm4BPe.', '713 Beer Ford\nNorth Casimirchester, WA 67209', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'JSTaff3NREJzHGDk2Zdg9ifvaMNliX', NULL, '2022-03-14 09:21:13', '2022-03-14 09:21:13'),
(44, 'Prof. Sherwood Ferry I', 'alphonso.walker@example.net', '$2y$10$i8qxOVYEkjI5s7SojgGJUuNIyir5CETNqtEzf8GTOXWiiu3SLe2nC', '13310 Willa Summit\nPort Elwyn, NC 79026-8999', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'yTAshT0clEopuwzgyL9sa6QSlfgSDm', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(45, 'Stephania McKenzie III', 'kwalker@example.com', '$2y$10$ZVTYocgBmIPOu3bdTlRh..4esthc2ELHYROep4S8lJZK9v2IgXhki', '9196 Webster Ramp\nWest Zoey, CA 00136-2098', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'KallgZvq2XHw4LW5dl6jflMEy8wDxV', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(46, 'Royce Graham', 'owalsh@example.com', '$2y$10$ZWfM8K7oAJeK/SabtPYI8eMv/Q35cbnsuth62/w.2d1w/ro8sTeeO', '58385 Kuhic Drive Apt. 487\nGleasonport, KS 40337', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'DH7YCyHVrJmq1LIkYKRh902Xxp9mTb', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(47, 'Vivien Leannon', 'pmurazik@example.net', '$2y$10$WLbnBqSQcqTx3don/MqTAeQaKoYbALfRfQ3MdfL70/sULCoXWPAEu', '4350 Bernardo Field Apt. 532\nLake Lonzoport, RI 34670', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'mLDqFqpQdjHwvfy2luU68jvCKWMQcL', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(48, 'Ignatius Maggio PhD', 'irosenbaum@example.org', '$2y$10$aJpW6x3m/Q3KBX/.xpHT0uaxBZuDpRjGq1oJYwtsjssTfXiFzhRFW', '95033 Russel Island Suite 510\nKemmerburgh, FL 65419', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'jnqMPfeadyoC6oR5ociwxGB2Kyxur5', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(49, 'Jeanette Schmitt', 'ankunding.candido@example.org', '$2y$10$iUpD4lW9pWN7iHrug1UCIeqTdKeUkUp5pMicDqIbi2n6zM/xXcdd.', '2190 Schaefer Mountain Suite 396\nNew Declanhaven, ID 53247', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'QpYGi7Kf6PfUe8hXbyaYq5J3J5FBlx', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(50, 'Ms. Elsa Feest', 'hhessel@example.net', '$2y$10$qiifnggt8K/ZgGl2IZgLdeyZNiPNBjC4nCxoOGUHFVMg2yyYwuJxC', '65915 Cassin Field\nReillyview, GA 73942', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'We8z6yyIl8bKHBlSmLTtAue5DCJ8Tj', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(51, 'Prof. Jamie Pollich DDS', 'ullrich.shyanne@example.net', '$2y$10$8wo2Ck6U.6yfdRU3lHXLiO1/Wxi1ZQsQfdzgYre1HNvsMoCkel6Qa', '73810 Brooklyn Landing\nWeissnatfort, RI 11187', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'fZLFreyBoE4PMlg9REVaBMYSiHf5E2', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(52, 'Dr. Richie Beahan I', 'gladyce91@example.net', '$2y$10$qiN/XGENZwMBGZChDt4jauPZvEhoBMz0vV7/ibjneZjtUQydtb9mC', '450 Gutkowski River\nNew Angelaville, KY 63672', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'nMq5oAAHPryMSdgsLvnXYBKFbeIGBZ', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(53, 'Mr. Jabari Rogahn MD', 'wjenkins@example.net', '$2y$10$E0P5h3EFHZoqi8B.Hou9WOoeYcNAAMlqdn1EqbK/8SSV3q9fKUrYe', '777 Jaskolski Port Apt. 211\nHoweland, OK 65434', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'bZKjS18IJpNog0CA4QplKWjZUUF9eo', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(54, 'Deshawn Blanda', 'botsford.mireya@example.com', '$2y$10$TFYXrE0/ssMLdA8miRNpP.eI2PSzp3DHmPR31UNk6bNHYWLAQbFzK', '477 Zachary Valley\nPort Amber, ND 25587', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'mIkiK2DDJ008hAKJEOmaoBnQJNOOKv', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(55, 'Candice Hickle', 'oleta.sauer@example.com', '$2y$10$WJ/htcaCyd5TyhvgSc27NOywsX7zsTiKNCdA0SOjbA61MySCp7khG', '8819 Erick Streets\nNoahmouth, MI 16773-1764', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'yHRzD3m64F0lI9yGvDso4f7xJwc3Px', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(56, 'Dr. Angelina Keeling', 'amalia.gusikowski@example.org', '$2y$10$xiz5KcAgfnL57Unj2zduau2fl3mBeq/zqTx8kenHItmYOe67OMEc6', '19125 Grant Manor\nLake Violetton, WY 22504', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'gOV7VtC2QgBjHoRgWQV0Hq9qhWoL3L', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(57, 'Lessie Roob', 'fredy.stiedemann@example.org', '$2y$10$.OriMTC8R/glph1PIpuW4.hi4bZNRo2nOWE24ggoMHwofS8QwBgtm', '6371 Petra Shoal Apt. 675\nPort Amiestad, IN 06353-8066', '0989842021', 2, 0, '/storage/img/avatar/user.png', '0znw2i9SNvJxlmeHSYFW82OsYDrEKk', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(58, 'Conner Koepp', 'oconner.lesley@example.org', '$2y$10$VoxDCLbBKkYz8BuRerSFSeHxmvZ6JkoaQpWnfk3YTEVpH/yXdemBa', '641 Margarette Station Suite 683\nNorth Rustyborough, PA 81554', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'EiFulFR72DNgqyAtpmHZBiKfIk1Dcb', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(59, 'Dimitri Nienow', 'breanne19@example.com', '$2y$10$riSru5BoegvStsh0OWA5heuH5FYCYdonZZj3oPEYy/tevirZR49CW', '71231 Reichert Loop\nPriceside, OH 33812-3727', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'ndG1bxBptP20GJb1xGHGgQLvhKbJiA', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(60, 'Marshall Spencer', 'victoria71@example.org', '$2y$10$iIMTuuoekPvuOP8v2RGkdu/5Rm36dNiPXclKWLbnkLAkemwSoHFBG', '773 Aurelia Harbor\nNorth Makayla, MI 23401', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'gKgaWrn93aGi6F59hC2HQf0uBOr2a1', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(61, 'Elta Nader', 'julius17@example.net', '$2y$10$FWSUJLxxoB6NSsM5QQxkLus/97lLDGVo5.vRIsM1sfVqOz19z//cu', '5080 Shawna Vista Suite 944\nWalterburgh, OR 08193-1153', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'KU7jdk8MOymDIdWLzIFPfiIWP033SU', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(62, 'Orville Schinner II', 'gonzalo49@example.net', '$2y$10$977L4SvKH2PoH2RXxJtdVe6So5SG7uwivEU2kKy8yvuwlm9qFFavy', '9524 Jermey Port Suite 487\nMurraybury, MD 29187', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'Kt8Yfwbe5vuPp3XkzMePIuqnsqVxkr', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(63, 'Talon Weber', 'ebrakus@example.net', '$2y$10$nSIcb2tV3vJMW16QVd..HuV6arM64ID/Kbw0IYoWh4i0n.3kWJkFy', '9050 Marietta Ferry\nLeannonland, CO 31184', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'czfT74w6U4Z3e0GIrjrFzmJpOhtVdd', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(64, 'Prof. Richie Kub', 'caterina.gulgowski@example.net', '$2y$10$uyfL8hbM2.DKR7ti3lBE..uFOLmTUT13GUQQXXtvQtYgTge4AXPdi', '8630 Jevon Land\nWest Russtown, ID 34278-1621', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'sMr1hyeOJv5lU1cYDTxQPgArJj4tm6', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(65, 'Dr. Breanne Kunde MD', 'irma80@example.net', '$2y$10$Olofh9sSfN7ix/vFODoPmO0EKgWIy3E1lfHjilcQOdX41uAOihzue', '65077 Aurelie Summit Apt. 367\nHickleport, AL 97230', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'Zw5IOnmwNVW3a6399MxFwNDSfpQ49f', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(66, 'Johnathan Sawayn DDS', 'valentine60@example.net', '$2y$10$NEYfBzkUhPdb7cOO84Uf6O7T4ZL3tx4Wh9gbPjWMuwh4Q/eR3OASa', '4422 Deangelo Shoals\nKimmouth, VT 17069', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'Lrlc7ePoUHj16kfT9t95NM2S0ydLJT', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(67, 'Mrs. Celia Feest', 'maida13@example.org', '$2y$10$eOm3seMFvhRp8EgEail1huBjaXmdeJGeP50tP80b1jlN4qoQTA622', '3290 McLaughlin Coves Suite 663\nPort Sheridanberg, TX 78872-4105', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'XK8AArqNobZVAVlXK6HMzpJxo8FoYo', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(68, 'Dr. Tyrel Pouros', 'hobart.hahn@example.org', '$2y$10$Sa6F5WjckZHmrMeZ0BeQDedw9iu/EMJnDwYssc5IW1zIuHHX4YR.K', '941 Nienow Wall\nLake Durward, VT 82016', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'cjCdaPJp0XbZZ6uLlC1URuJ2wfpnvd', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(69, 'Mathew Romaguera', 'osipes@example.com', '$2y$10$wHukgAVgLdDrLRskKoNIPemDXPJFMGAGoKeQNes1n0yDoh7QnnJua', '74287 Melba Drive\nLuigiton, AR 81019-6554', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'wSy5C9Y1w6CUiTjmCtHFvnanKwKwBa', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(70, 'Hassie Deckow', 'rice.dannie@example.net', '$2y$10$U2/aJY6hWKNMDEthmgBDkuUcy8r5TEqclEsY8tA/opZqlHsJD6QmG', '5234 Gardner Radial Suite 366\nWest Odell, PA 76951-2925', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'jshySdYxjgSjiGXGM1XLeVm28rfurE', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(71, 'Jaeden Greenholt', 'padberg.forrest@example.net', '$2y$10$Y7jvG.a8xKYLPZhodyxCSuKVdeX57XIeOsex6Rmc7MdmBEzfiSYie', '74300 Hector Pass\nEast Felicity, MN 32216-2914', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'MFLlwjEsEwfcXtmLopLqztZGByUe5L', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(72, 'Angus Emmerich', 'cummerata.janet@example.org', '$2y$10$IQJdxoOT3xnwibbIeF1SuOyVgiejrxWXd76yeif7YREYvNm0FCeny', '84047 Estella Rapid Suite 217\nGusikowskitown, HI 11801-4162', '0989842021', 1, 0, '/storage/img/avatar/user.png', '2miM9Zm5nCvNm3k12m460hW2eqjMA1', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(73, 'Rowland Kunze DVM', 'gokuneva@example.com', '$2y$10$e3Gczo2l4P.x5J2ORY7iMexLRf3BxplBV5kCPH.s79RG5AjovIUOK', '108 Schulist Prairie\nSouth Jeramie, HI 84534', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'd9DXTi0umWHRVmGCsOIZIf1ULy7Yaa', NULL, '2022-03-14 09:21:14', '2022-03-14 09:21:14'),
(74, 'Grace Bernier', 'tierra.cummings@example.org', '$2y$10$7qASC3Ul7EX3iNEof9Loqu.J7/N0jPLuDuKEM.N7HVk.5Ml7W3kD2', '6577 Marianne Turnpike Apt. 561\nSherwoodbury, AZ 54910', '0989842021', 0, 0, '/storage/img/avatar/user.png', '6nnXgO7xqnM4XJqMwSaXXzU4TlFEM2', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(75, 'Velda Boyle', 'marc14@example.org', '$2y$10$g/uVQHevmNaW47VIYijxJOzcBxD98ibCcxCvKP/SC4gWwYVeDskca', '85500 Frami Lane\nEast Brookshire, NM 21453-3211', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'i2bDW9gQqCItwjknR0yioBiM73kYrU', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(76, 'Eryn Yundt Jr.', 'kirsten.jenkins@example.com', '$2y$10$6UqWPegm3haaVQd7I1be3eLF9M0SMexCPSOkWrntP4rPVzkv0JlZe', '26340 Nolan Spur\nWest Janiceview, NV 69672-5154', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'Z7eUoYfF3JQQBQimnMVYAmiOlAjlMZ', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(77, 'Henderson Hartmann', 'dortha.schneider@example.org', '$2y$10$.PsNTHhibuTrkmqA/N48gOE70wpqOIBPncXEUGhtfJ/fod3NWQFrG', '24857 Gerlach Forest\nSimonismouth, MA 81791', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'tOtGzl3GJqlG6OGH8S2Z6vbyjMWwF8', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(78, 'Mr. Johnson Stiedemann DDS', 'lblock@example.com', '$2y$10$KP9pR3h9EMYd27816kKK9OJwy/JPilOkQ.CMdSaZ8FgQrXY21QEtC', '7553 Gerhard Oval Suite 062\nSouth Jewell, WI 05554', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'VpsQyVlndQC9FV2VOfk8KMIOvfIRnb', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(79, 'Veda Corwin', 'wuckert.brady@example.org', '$2y$10$FjeJg7VHDZvZn/VkMSaKduu/a38MBHuqBlDK5wDEqAFVdFRCbo8CK', '3426 Walter Burg Apt. 443\nBarrowshaven, OK 28548', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'HOOb5QItU2hWxg23gPsIpt5gyZRzny', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(80, 'Dejuan Bradtke Jr.', 'durgan.santiago@example.org', '$2y$10$tT.TbumoPuwriNoz7.0YAulqBDkG6QFrdILpYshbhM8oo3KYUF5sa', '2528 Wunsch Forges\nNorth Londonfort, ME 88508-9137', '0989842021', 1, 0, '/storage/img/avatar/user.png', '2A6Bk0QBnTJzVryVL3mkgWDqM24kDx', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(81, 'Mrs. Asa Denesik', 'damian.vonrueden@example.net', '$2y$10$V5Vt4KQXttQPQeZiueCrqeAj9ENtCaVd.FWUCOHKoeJRZziQoL8PK', '1221 Lubowitz Summit Suite 365\nTrishaton, TN 80257', '0989842021', 1, 0, '/storage/img/avatar/user.png', '7ocZ9cggBeQ4zGL8ZKZ31kNiZEwoY2', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(82, 'Dr. Aditya Kassulke Jr.', 'xpfannerstill@example.com', '$2y$10$Cvv2dtXkKXWNKHo4LgmacOOYX4LqmLQCnxxCjE4.iRKPHdpvpewpi', '33742 Kaylah Falls\nNew Eugenia, MO 12918', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'p8zgt5cMo41TSHZY4fxO1a3AnaWmxY', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(83, 'Marielle Wisoky', 'goodwin.margarette@example.net', '$2y$10$r0EbpcGknTuigZSPNyMUyu1RTQjEqgrXRdLh8jGfSRbP2sme6t8G6', '415 Weber Square\nBartonberg, NC 45941', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'DB1Mv3rPEzhZZ3jxijum1V9k8Xtrkd', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(84, 'Prof. Samara McLaughlin', 'rigoberto84@example.net', '$2y$10$q02Kd4ZC3LU.Age7KD9BEOeGylXBbP2StwyfYgn90hJQiDdqclcUG', '65137 Litzy Greens\nAdolffurt, MO 51047-4390', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'CH2fxTfftL1xg1Rw0j1yH9T3zeAVwb', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(85, 'Eldon Altenwerth', 'dylan44@example.com', '$2y$10$DCtOWpLprwfHlloUUigVtuQqneKEvHfZLwb6uMeI/bpqDKyQfsmbm', '424 Connelly Harbor\nSouth Amanda, HI 47249', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'ko25IBdN1WTyFN59TRGglXk7VXeZjE', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(86, 'Sadye Kautzer', 'pnader@example.com', '$2y$10$aCItfZZCBBhMHhzJcmdFHeAgeWiprHu9Pr.hexKHpkXPvYTWClYqK', '38546 Jadyn Dale Suite 531\nPort Gregorio, DC 85557', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'GbpJauswX5HWdgmm9E4QHVPMrCcjnC', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(87, 'Ms. Anahi Stokes Sr.', 'rframi@example.com', '$2y$10$hb1t/j3RubRWMy9x6V1WXeqowx688qJ.JdKV8DOVuzGpgbo8MNuYC', '41152 DuBuque Via Apt. 943\nNorth Hanna, NE 18003-4754', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'aA1AeRTPGLiMUl66aHbpx0EO3hyV0W', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(88, 'Prof. Jerrold Cormier', 'kshlerin.otha@example.org', '$2y$10$xyVmKCqq8fjiNGLNhvjftOof9CrS3JGW1IPSPgqo3yCIVIW.ugyy6', '5884 Wilbert Coves Suite 669\nZulaufchester, WY 81448-9613', '0989842021', 0, 0, '/storage/img/avatar/user.png', '1bU5aCSD22GWAtFZPGFJLjMhJ9aIf4', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(89, 'Albertha Pouros', 'lindsay.rogahn@example.com', '$2y$10$fIrHI/waCb23O0BDglSkw.LgSQtu7EAqNp0BAK5ogdKtvXW4o42oi', '944 Clemens Trail\nNew Allieshire, CT 53566', '0989842021', 0, 0, '/storage/img/avatar/user.png', '8MABBk7kCzlHcPe09wHxBpEiM75Lca', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(90, 'Adriana Lockman', 'luther.gislason@example.com', '$2y$10$ShKEQpFEduj5KFJGgSfvPeEx9Qv9YD7X56vd0RoY5AIiVul6yqyye', '55998 Bayer Way Suite 490\nLake Alexzander, VT 06754', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'LLaDxmZug1AvUubDskohkNMjPmpYct', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(91, 'Marjorie Hickle Jr.', 'reyna.schaden@example.com', '$2y$10$2.zvrYKPxyHJ.nIDs3YtweGp7gL73D7WxV24eMb3ZXvEzLI3vXuNS', '23769 Keebler Garden Suite 862\nPort Oletaton, VA 58991', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'uBKqdDaBvqceQo5pEIWnWjTjYfj9Rt', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(92, 'Jameson Towne', 'ybayer@example.com', '$2y$10$yC/.BWjZuD1EyLxdBRVBDeKgcNrloh9pM66yztHhQF8JsqLgBD9ZG', '51365 Tanner Track\nPort Stuartfort, NM 55420', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'uDSQw5S0cat6eWnDCrgfAxdpkVKvoV', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(93, 'Mr. Monroe O\'Connell', 'arturo81@example.net', '$2y$10$zPYZW28nx4Z9VQNVa1GjU.mhK5Qaax/imztI0S/wRqMckS3kKiPk.', '35244 Napoleon Light\nDonatoville, NV 62105', '0989842021', 1, 0, '/storage/img/avatar/user.png', '9Ut9MTuQ4Ug12b5QsuEvYvsBSroFPo', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(94, 'Madie Konopelski', 'ankunding.cyrus@example.org', '$2y$10$vLiujVhvA0Pm.PYd3Yt7/.Kt3FGyWQkSefNOWwqgoEgkkf2NpWMgO', '6071 Will Forks\nKutchton, NV 96286', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'DXov44nAosnSWZoVpHy2CpI3UO4KmL', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(95, 'Ms. Yasmeen McClure DVM', 'schneider.nigel@example.com', '$2y$10$6ukjpdg44hAYv1q4tuzv1ebxWtqRfWhL6GXyvisLtPwBCI4OPzBHC', '972 Guiseppe Garden Apt. 571\nEmmetland, AZ 32185-6462', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'q8u0P3ErbrNTKSCQts68aHESX1dWRk', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(96, 'Mrs. Jacky Yundt III', 'hartmann.rowland@example.org', '$2y$10$iT0Quyf9AjcllP5tR1zlnOyqzpsjfM1cxhHUURDaSjmWHeuJfcQ5i', '317 Linnea Stream\nModestaport, ME 32693', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'FTGQqL8VWXO8bXkqebw0ej5nRlzMLP', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(97, 'Zelma Stehr', 'melyssa58@example.org', '$2y$10$uQvrDjroh8ANMfp1TcHyXe/a9GNMRjkng2LxD1fSVlJK5oLkspLoG', '397 Jake Garden Apt. 971\nPort Walterchester, NE 67642', '0989842021', 1, 0, '/storage/img/avatar/user.png', '1kB47UY9JBWNoUGZgweB8lngWn6cGu', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(98, 'Matilde Konopelski', 'molly.white@example.net', '$2y$10$Seaz8nMzX4zLliYY/ROWluttUsVTMf8OJj5HOdLGuUBh95JvYcVDa', '40434 Moen Passage Suite 096\nZiemannfurt, VT 56819', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'ohfkYMBiT3flPNXKccyliHZESBIxP1', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(99, 'Destiney Hamill', 'neil61@example.org', '$2y$10$aqUh/89A0azVrnxY7oKUmeb.2UDGXZESRbMg334e8V.4GRjxRvHvG', '587 Stiedemann Cliffs\nRebeccastad, TX 16601', '0989842021', 0, 0, '/storage/img/avatar/user.png', '7zlqV3lLnYDj7nwc3noxj3FV29OVhh', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(100, 'Baron Skiles', 'solon18@example.net', '$2y$10$XM1WT5jz6ePgaGS8DyZkOeh7og1CT9iPzazgi/XtheN6oYntbOs.a', '870 Germaine Lodge\nEast Roma, AZ 01776', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'NmMaGgD3E3F7r9WIHuAXaivd7xVsPt', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(101, 'Katelyn Buckridge', 'grant.jeromy@example.net', '$2y$10$riVJwSsOs6EQAn9jgOVl8.jIWFDjoFJSV3iHMqcyODTuPU9guj4y2', '9467 Jaclyn Pine Apt. 287\nCorwintown, ND 02724-5289', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'cuKJ2OSw3rop4B30GbxDqJnePmXsyF', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(102, 'Wendy Lemke', 'crawford25@example.net', '$2y$10$/MiX0iDvZx6xUqW0w0BGoubBvy9llrBRR6uGXelQiMFZnxQItSs5a', '7415 Luisa Turnpike\nBechtelarbury, KY 43018', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'beP17i11yqUnL9xMKH3ieD9EBL6OJO', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(103, 'Delpha Jacobs', 'melvin09@example.com', '$2y$10$EJWb4CKKlzYdOcHevhYiLuN94Tbbb6crUDjOwaIqRTygtdOkpOeYi', '21324 Stuart Courts Suite 599\nEast Caryberg, OH 89917-8921', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'ipFslttaybMrddfqFQCHeHyjw5M6QN', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(104, 'Grover Keeling DVM', 'victor.okeefe@example.org', '$2y$10$oR1HCpWLbABpKXLDoe/UFOwH1ysScSqXgvUeeZsnoiNYGeJM8GV5q', '336 Trantow Corners\nHeidenreichfurt, TX 19087-8295', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'S8fZRnzctLLrsOG0Jz2fnODcigXECv', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(105, 'Roberta Stracke', 'marquardt.karianne@example.net', '$2y$10$l6rk0WlV.2kkZ8inqy/wP.ZS1UTMNIRKII70UQ9Ff6b8UHX3idsVW', '463 Schinner Plains\nNew Savanahchester, GA 81425-5200', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'UIJLVJfFCEYWX1mmmGpjZc03jQhqVm', NULL, '2022-03-14 09:21:15', '2022-03-14 09:21:15'),
(106, 'Beau Breitenberg', 'rziemann@example.net', '$2y$10$fupCiNUkC.uXLkJfefYABuhljtYd7ZZ7KVv/b69j4ABgLOLw1PKUe', '7005 Balistreri Burg Apt. 559\nSawaynstad, NV 69196-6167', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'tSjbZm9rxo82S1LOCb6F0Datcz47C1', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(107, 'Ima Collins', 'morissette.wilma@example.net', '$2y$10$.VEFtiWBa7StpUlh9/ZoAeD8RCUwrz9YyTvvoybGw6vbIcyrdWRxy', '886 Schaden Expressway Apt. 785\nNicholefort, NY 92491', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'geyg72ukGzD17wPyYjRV0oBuXwcpk3', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(108, 'Dr. Dawson Quitzon I', 'chelsey65@example.net', '$2y$10$Rbe7c/fOWT.nArfi6L/nLuIO.HuSz8ibehB8C0WXDYpz4aXChcfwu', '6621 Streich Isle\nPort Kailynmouth, PA 30260', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'FsewF0rM3lrcDtosz4XrPgvgB1KxY2', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(109, 'Treva Hartmann', 'aweber@example.net', '$2y$10$TExE1bO19ogvZrT9pKBCmOQ2LM/Rr0mtEZ9YJucOOVxe/MpDUwtSy', '872 Garett Lights\nDibberttown, OR 09981', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'Q7iRqchsMI57R5ZQV6OqFXbkCMouIO', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(110, 'Leanna Quitzon', 'collins.alessandra@example.net', '$2y$10$vO2tkL5nLzllCbU5Eqcd8ux5PJu1jVqNHYHDoPXkjPLg8Ww953nhS', '26376 Corine Turnpike\nMaudside, NM 42215-8104', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'edmeK7ybTm61AxlA7z71pgYmfuoa0l', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(111, 'Frederique Marvin', 'greyson.wuckert@example.com', '$2y$10$TlSQlnX6lLf1FiLkPU.bAu9mWKPAz54toVAiemwshHKnRX7OLSNua', '515 Cali Coves Apt. 147\nBrayanshire, KY 20798', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'G68M2UAgWzRekvBSNARLXB6DdmNt00', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(112, 'Jarod Gusikowski', 'weissnat.arno@example.com', '$2y$10$zJJEauJwO/bWq7dbnXW/3O396Lxsvbk49SKSsXqlzzMHvtpNP7eIm', '11352 Conn Stravenue Apt. 206\nWeimannfort, VA 56213-0231', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'GP8Gr8a36IKzkGtO4IFt4EoKIdcfcZ', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(113, 'Larry Collins PhD', 'rosemary14@example.com', '$2y$10$peFx2WUiXhHWCXKoSCtDhu6cqjaTY4QxutuoZtfE0Djso.wlH7d/a', '9633 Rubye Pine\nEast Deontebury, OR 14843', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'eiJAD4UEyZzPnY9CLngoVCXeTizcNZ', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(114, 'Mrs. Ocie Doyle III', 'alyson75@example.org', '$2y$10$3toHxZyhedE4Mtd27oHrO.2hW7kSmCLbimurjOS/tEo8ozBICrGl6', '359 Ayla Glens\nFilomenaborough, IN 85277', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'FIuX2afgMhAjapP5RBehi0Ozx0dmME', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(115, 'Mr. Omari Waters Jr.', 'wturcotte@example.net', '$2y$10$StjQzZOnSyQg5Y2GTpHWduYKErdbjQoD3YLUCI3rGNiDcJRsGuVu.', '608 Lowe Rest Suite 574\nNew Yesseniamouth, WV 01498-5935', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'OGGqg0Y7iA5KUS5P8M52SM9hfRBI7L', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(116, 'Miss Pearline Schamberger PhD', 'morar.orland@example.org', '$2y$10$DB/ZnMEp.Z2RRmU1N4zi8.V1N/ezdy75fYtH9q6VBKBgYXtb7/SRe', '31597 Molly Trafficway Suite 256\nEast Owenhaven, MO 07371-9937', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'ggl0Uo9t6tbKarjfKegGCC1IkGvgB3', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(117, 'Tara Emmerich', 'nolan.norbert@example.com', '$2y$10$Vfzp21EIqCPWp7S1SdLuzOXxNEmnzey6m8CcVOqAYHfkFUgIdsuzm', '8996 Marks Flats Suite 311\nMullerport, AK 30382', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'PCyfZFddLWpy66UxqJH4StTvML5cok', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(118, 'Ms. Janice Crooks I', 'reid03@example.net', '$2y$10$Pd4qxWWNFYmNT93ek4bWFeSRKOXO4BaH2FKsSL.Ph7KtiqinNCXRK', '81575 Joesph Port Apt. 778\nEast Orionbury, KY 44499-9526', '0989842021', 0, 0, '/storage/img/avatar/user.png', '17AZJtcatUJljsNiS2wrQufrBntMox', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(119, 'Hosea Russel', 'eloisa17@example.net', '$2y$10$E.XFcUOgEkQut7pyskCIvegh6DQGInLBtNsL26W54tuMayeFVyYXO', '2536 Aufderhar Club Apt. 378\nKilbackstad, LA 28033', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'X2SX224Zx200Zmf76cAMD8TwEJ0WHJ', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(120, 'Katharina Hettinger', 'ewilkinson@example.com', '$2y$10$NUGFePsONkK0vEAeu.e.oe.29tYsxzGlBt1slLtz1W1v2bKUXnPIm', '17445 Marlin Glen Suite 403\nWest Axelland, DE 67161', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'sLuxRh2JFaAcxqUHAD0WutFpMvDYdz', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(121, 'Markus Metz', 'russel.madelynn@example.com', '$2y$10$zw0pxh7mAikIXjDlVmrWkeQKjJeZU0V7u7HQpACyQXdpUvnKDDECi', '61341 Daron Spurs Apt. 773\nAleenchester, AL 79342-0710', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'ne7EwH4R4HqDRFP13STC6sMa5B1B2W', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(122, 'Ida Towne', 'damore.antwon@example.com', '$2y$10$S2CG8p45vvl9Te2n61IuGuqpWbihjhWoTelK20qJeERR.USXWU.Ta', '749 Zane Pike Apt. 586\nLittleborough, ID 56394-7919', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'sYjCC82NPBblXsTq3L0mSTI6wfmPDw', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(123, 'Emilie Hahn', 'theresia.bradtke@example.com', '$2y$10$vWWvzaTS6aPuMEo14HI8KOvC1WINPw72QzoissbZlNPbvz5qrhBj.', '425 Trever Mews\nCaitlynport, VA 20674-9046', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'S1tEbsn4GNjlb6z2sPgbgfgUhFD9Sc', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(124, 'Ms. Alta Breitenberg', 'gcrist@example.com', '$2y$10$T4wYZhzY9EJmbHjtrqaZs.RWcErkloZfVLDHaGCMOnL6RdNKN6sDO', '11440 Padberg Mission\nSouth Natalia, OK 35963-3020', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'dusKv1J0pDK362C7XRYdSGNasDLX0m', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(125, 'Christ O\'Kon IV', 'jacinto.johns@example.net', '$2y$10$CdemqZnNdfSD45YwVs5yf.duu41/VF1DpSfDb3PrZTyQPs35uzLgm', '13110 Terrell Ford Apt. 833\nMarvinview, WY 08256', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'FvyeoeSVsBDeL8ZLuSYRgHSmTpjNvA', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(126, 'Ebba Spinka', 'esperanza78@example.org', '$2y$10$yEAg/Ts4Obxnd0u68bZsyOqGr6x/ADsgOknP4CJy28.fBrLwHvlni', '765 Jakob Estate\nWest Leora, IA 68006', '0989842021', 2, 0, '/storage/img/avatar/user.png', '2MxaQ4m7GaIH9dVO8P4ITpqU6WQaDq', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(127, 'Magdalena Russel DDS', 'bbuckridge@example.net', '$2y$10$RD.gnmo3RKfdBNk2nq24d.SC5rogvB4eOI511Dc/dLuc./p7l2tZ.', '4825 Gracie Cove\nLake Lerahaven, NE 47088-9587', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'WSG17CjrsAQzJSb5ytw57dNEQ6mraC', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(128, 'Lura Parisian', 'price.alda@example.com', '$2y$10$3CJ0ZDAnmYks9Qy5gfec7.hgsMAViCa.D7SMUftaZjlHAaZ4oLrK2', '3124 Kihn Circle Apt. 194\nJaskolskihaven, TN 90613', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'Sl7My6sYutNRHHTgbI2oC1aMAffEhA', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(129, 'Donnell Larkin', 'ocrona@example.com', '$2y$10$zmAb9qO6cQOfStQAu/rnX.IGkQjEsTX23zVtyYjAydAhDT4QMMzPC', '3959 Dickens Estate Apt. 493\nBoscoburgh, KY 23141', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'JAy1AmnM3HQnk5IQzwHhtrkXI2Ebyz', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(130, 'Cynthia Pouros IV', 'franco29@example.org', '$2y$10$mwwEMJlYTtmvCRfJbGqoWOm6nN2ANKz.alNty8g.dowL0vakYZOeO', '6317 Rosalia Mission Apt. 709\nNew Katlynnberg, NM 40662-2542', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'M5xTtcZQHIdQRRbHo0vWlZmdQjFMfX', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(131, 'Elna Marquardt', 'darrel96@example.org', '$2y$10$CFRPHWPHrs/qC3dqY6GQZeFIj/H5G9fvQ90PQ96RYTI/lFG7rQjyy', '843 Kutch Branch Apt. 642\nAglaefort, HI 31169-3471', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'XZ5BnQHKX1VdiPpOHtzuo6rYJsh5JP', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(132, 'Aidan Kessler I', 'skylar.weber@example.com', '$2y$10$/aQ37tflyIvq8W7HuAx.wud7yZXmlNnVLpRfCuYgNHKXk0Ribk682', '1701 Beatty Avenue Apt. 723\nLake Gardner, DC 41944-3108', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'KffzWNYOSqJTKtt85bVRbebZQwXTL1', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(133, 'Elise Greenfelder', 'kolby66@example.org', '$2y$10$feFbSTa1TiEOk7DGFu//GeQh5p3yw5KK8iuyQfhf2H9h5OeLMznou', '11772 Cora Causeway Apt. 123\nWest Trinity, CA 06082', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'WXi3Y3WMp6iZlvFdLlOHsYsLRDfDJo', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(134, 'Prof. Penelope Champlin', 'isobel92@example.net', '$2y$10$UFBIjMPvyn24R3CIkZ5bGucX56I1R4oorifDgZMcDPUq5LHi/lnKu', '191 Stracke Wells Suite 862\nCatharineburgh, NJ 01169-4817', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'u0jN1EgNv3jNZ3VUp3NuVE6pGBisfy', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(135, 'Shakira Zemlak', 'schmitt.zane@example.org', '$2y$10$/2Qo2EUJCyrkJZyaX4oeQu2wgc4YycBjrZ/./S30ZcjRXk29AWPOK', '65135 Tyra Knolls\nWest Juvenalview, CA 99676', '0989842021', 1, 0, '/storage/img/avatar/user.png', '0mU4XJknMyqJw5dVEeuLXDhZgi7dK2', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(136, 'Mrs. Rita Harris', 'lauryn28@example.org', '$2y$10$fwUcpPCzFe/kDFvBJkiKb.YyH7we4iBQF1P8NCINeSlPdjDTO8FpK', '66494 Cicero Dale\nNew Revashire, WI 81669', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'I8ZXd7wQDOUYdlUEWnKmXnewYoX21Z', NULL, '2022-03-14 09:21:16', '2022-03-14 09:21:16'),
(137, 'Kelsie Torp', 'funk.colton@example.net', '$2y$10$Q5AhIO3.2DRI7gWBqskxvuULL9Way4fB5Jp/NcHA/p1N1s0P6ck9G', '2955 Jeanie Prairie Apt. 205\nSchoenfort, VT 68009-6187', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'U6MGCALBXV19QOEaKkcPglfYgWvXXV', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(138, 'Eugenia Zemlak', 'nayeli78@example.com', '$2y$10$Va7qscsqVjgQIJjk/CsWueo.eWfnnH0ulsWb2UKBj8Xd.CTbQ.bLK', '2057 Feest Park Apt. 878\nWest Randi, MO 34251', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'K3oT4QvyYOeXGLUbRXQYDzeIP6HduT', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(139, 'Prof. Alexandre Breitenberg DDS', 'mabernathy@example.net', '$2y$10$p9K0CT1aseN7fn/.fYEBw..yU/l6pjvhxZLRlDsfDIUXriLeyb0HW', '913 Yost View Suite 016\nLake Mollietown, MT 83174-1021', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'l2pKtu9FvbZwvXn6NDmYQXGofRBfrD', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(140, 'Eldon Rath', 'schaefer.roger@example.com', '$2y$10$0BL8NU43f73AcriuNAd8ze6tTEs10WI9OHtD09eiSxhOgDN8WxRbm', '4123 Garrison Parkway\nJasttown, KY 31936', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'V5MyqjVYMujfW1EC4AlnD6w2RFXSUb', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(141, 'Martine Langworth II', 'olen.douglas@example.org', '$2y$10$OuLKnR/EbPi3//6VMEMhieLkruZfu8WHgS9UMvZ6jMma7Xlh6kT7i', '18107 Kilback Burgs Suite 834\nSouth Dionstad, DE 31784', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'FkP1Og9uRPTlVX5GNCMeY8izh1VRUO', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(142, 'Catharine Torp', 'ryan.clemens@example.com', '$2y$10$Xkq3DbcUO/g8zuPz4g/Y2ewJF2Qh96f5our1/EQa0bujAb2qOw2t.', '5172 Lonzo Canyon\nHazleshire, WI 14973-0369', '0989842021', 0, 0, '/storage/img/avatar/user.png', '3wA9a6lGpTR5PrBVGdxQnGZ1q8Z9aT', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(143, 'Amani Kilback', 'rylee34@example.com', '$2y$10$nROlHFQ1nStZ.X7W9Fe4meCEvdVh787Egd7jHDeWy/adtPdDc2you', '78093 Wilderman Green Apt. 766\nWest Norval, NV 87835-2952', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'Vyro6ZqVLOBsEgwYMuQmD4KV06litC', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(144, 'Kurtis Buckridge', 'okeebler@example.com', '$2y$10$hG7CjP4FOrlbSWwVAYvOxO4SiKeJvGIYig6T3HdeHaLag1dSbCE0.', '55295 Neva Isle Apt. 100\nRohanmouth, IA 32314-7343', '0989842021', 1, 0, '/storage/img/avatar/user.png', '7unEwkaLkTMjhv34cNxJfYjeNm0xCw', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(145, 'Zackery Hauck V', 'osanford@example.com', '$2y$10$FWvksciyH0.e1.4ZJInZkex0V0w1nUuZ6SdFFYnQi6o2Ia31eYvBq', '5331 Hettinger Lakes Apt. 740\nDerickside, AK 95519-5600', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'lhwfrjy8OvAieT01xqJV6oOVH2EeNa', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(146, 'Demetris Schmeler II', 'alexandra12@example.com', '$2y$10$ULGdMlc1qqERRDF6gJSMXOyYyK1z/FskfBD6J1Sgw12gUupLa/S0y', '258 Baumbach Burg\nFayfurt, MS 96220', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'p9o5ajXadS1MhHoHmFoe3gsV3SEYhU', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(147, 'Nash Russel', 'bwilliamson@example.net', '$2y$10$G7FEoiSNBbb40EFIYnz1r.mkEgCaNUb2pHSJBepIXDUM5zc8n2OT2', '8686 Daugherty Lane\nLake Lori, MI 75015', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'X4NHZM4AZRaHZ8hmGvGKsrnD1f3TPt', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(148, 'Mr. Lloyd Homenick DDS', 'tlesch@example.com', '$2y$10$ritXo3oMfTs8hdUwJgkx2e6GSRXSH9gPOC8vKy8lxFRl/bEnmMJ3a', '2095 Balistreri Locks Apt. 015\nSouth Nathanland, HI 64271-9830', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'K9XPAopa76Pmiiiu9juyJTinLWScGI', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(149, 'Mr. Carson Wolff', 'gerhard.reynolds@example.com', '$2y$10$7NtRPJ1P2CYVFScZsPJIE.Hz5ouk/WFKBItMEqS5fSV0iRjpGfGRi', '581 Koss Falls Apt. 331\nWest Mitchellmouth, PA 56605-1596', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'gvhrEVwyjkeJoKB6lONFFTkQbYJHbc', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(150, 'Jean Fadel IV', 'fhansen@example.com', '$2y$10$AmKIElRXB0zE4R1LJ9MJ/ecJ0o0IlJG5MTezFB9ys6X6zr5xkOlYu', '676 Muller Orchard Suite 797\nNorth Malikatown, WV 41559', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'qQPZcAtTTbGMDJLyUQU9HlJBYNXNi7', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(151, 'Marta Wyman DVM', 'abraham67@example.net', '$2y$10$s5ekAzaH1wn9XKLTf6StKuDyL6cWHSPIeqR7.TTaleewx9NVHyx2.', '830 Carrie Mall\nMurrayburgh, AR 69845-3699', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'iB96nBRjF60UXtD06xDXKoieuI2YRH', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(152, 'Ms. Freda Steuber', 'bonita78@example.org', '$2y$10$ZF9SR1asdE0amgfbYI6s1ucv1z0YOrvDZ8ycJdDixjguC5F1NOqM2', '304 Leannon Falls Suite 997\nBernierborough, MT 84671-1110', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'fib6sgHvIFhPNMWieA7polj0ahz0zq', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(153, 'Grant Dooley', 'alberto.feeney@example.org', '$2y$10$sTwJMFuqDAW11y4RUCRgqutufO/PI9h8stjbq9k9e2n5GFla4QIO6', '3452 Serenity Meadows Suite 499\nDorthashire, MT 92351-3221', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'u1OuOO2h8ow1XXFXTcqWYQgTxY9NTC', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(154, 'Jeanie Wuckert', 'whand@example.com', '$2y$10$MHCiOYMfg6l13fuRm0SjgO966qIviSzfC7gsY/x0lD87oWwfe9gQq', '697 Collier Lodge Suite 907\nNorth Conniefurt, ME 12894-7807', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'MCY8PMHgPhfaXtFD11A5mmNxQVFCwp', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(155, 'Maybelle Marks', 'jamel.upton@example.net', '$2y$10$LBwqFdf.p3isyVuBfzUfQ.nhY/14la2/yc6DHiV1Fwhw6hMtW6qQ2', '9079 Claude Burgs Suite 204\nLake Imogeneside, MO 09326', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'OP54mN9rxdkGHnM618ZdY5krUMmLZm', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(156, 'Mr. Royce McKenzie', 'walsh.bartholome@example.com', '$2y$10$/Ga4jrdcXgszmWqHk8saKOxvG5zfeIbsxeraO0SwjRAEO1ADsSpqS', '77068 Laurel Walks\nKeshauntown, RI 91980-2755', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'LqyuaxNIEKUwOwbVUGTcbhsfGt97TJ', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(157, 'Virginie Kirlin', 'jonatan.waelchi@example.com', '$2y$10$f23GAAbHirvOeFyYhoQ/9OEF6SXRpog2GcYYRoYmGCwJnfiySUZwe', '757 Steve Forks Suite 640\nRebekachester, NC 18418-8864', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'huQu61PcpTENEgPcYchbkgNqmm3rpb', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(158, 'Randy Sipes', 'cremin.madisyn@example.org', '$2y$10$aL4NoUMttU.b/mdzUMmokunTDrudiFJXQq8qgAhsd4nH1cjAvRX72', '70460 Ruecker Overpass Apt. 158\nNew Dedric, GA 31337', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'ZMMqBet6NabAdSrKAyQ37jMBzJ228b', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(159, 'Tressa Cassin', 'tracy18@example.com', '$2y$10$YHn1kNzCSDTo8y6.Bi2UBe.awh8xpfA5hcI8eowZoPpolTH8Yaf1K', '8507 Anderson Mission Suite 482\nLeannmouth, ID 99127-6606', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'nhfILqWDM63LNhTYHVqDo48yLphDoQ', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(160, 'Dr. Angus Lebsack', 'nola.nicolas@example.org', '$2y$10$AtQjvTc2Q5rvEHzfXHmGsuZYuv6EN8pNM4pGzYGkRWrAiuvoAtBIO', '539 Cruickshank Parks\nKariannehaven, OH 81267-0403', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'sjCfp8lnBwyGOoeBpa9Nt3ODn7L51c', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(161, 'Mr. Daryl Robel', 'rogahn.irma@example.com', '$2y$10$7coKjpllzMCG4IF.F9RV4ONsDs6L9pYoJVVfxYbK8xklnNEjIs71e', '3980 Larry Wells\nLake Armand, DE 85451', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'op6OfETm4M5PzQU431Fg73JGuF9KjX', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(162, 'Schuyler Huel', 'iwilliamson@example.net', '$2y$10$XKNJGX4ZF.NG.GGldgR/X.SyLJ/ZOTIbThipihx5I/P5azmgj1KES', '38357 Klocko Club\nWest Gracielahaven, MN 92267-6369', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'x5qFRq8500naFptxBsxnGYVQ99VKaC', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(163, 'Erica Feil', 'beahan.caden@example.org', '$2y$10$PzFginIEVTqusqnxOErHAuzqmkbgi0i9RrUYhY6SFdrfVMcfGUhzi', '738 Fannie Brook\nSouth Jordi, HI 52939-1979', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'nl7SYEnj6oxOiZtdQUOgzpZqjWpFYO', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `gender`, `role`, `photo`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(164, 'Mae Stark', 'ysatterfield@example.org', '$2y$10$NeUZP3EnqlEkl4wi3yVMCuBrQbQWkWo70FnSmEXo6T1QE0tSBNMzS', '18710 Santos Lake Suite 334\nCamilaborough, DE 60848', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'xS53rXPgFooY35R49PIWsHn8D6CNGH', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(165, 'Prof. Johnnie Turner', 'alvis53@example.com', '$2y$10$Fq2P4nhO1AGgspl51/T.o.KWTgnMoIuO.brywLcNQTiKn87AwIw5m', '47550 Lind Manor Apt. 777\nJaylenmouth, ID 20526-6911', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'D2gAxECuL5EznleWwexPNMyow7JfLB', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(166, 'Marlee Reichert', 'wsipes@example.org', '$2y$10$9FHRDnQHl3K8h52DSM5Cm.R1xsFg0LbshQ5iYMVI0BuHxy9qRsUVW', '4855 Gleichner Knolls\nWehnerstad, PA 17186', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'rf3HJFaxBKGqMvy7UhLhFBY1hKfybG', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(167, 'Prince Kiehn', 'paige36@example.net', '$2y$10$aJVocNb2xb9khx9tobppw.Wrl7Nw1vflfkasiBX2/7HBnbg6Q29rO', '88283 Mitchell Mountain\nWest Jamison, WA 95973-3207', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'Gd5Alq8kHeIia2dVkN3EaIdLbCoCG2', NULL, '2022-03-14 09:21:17', '2022-03-14 09:21:17'),
(168, 'Lester Koss', 'haag.ozella@example.org', '$2y$10$R4RJr/NfC6e5SIRwYUTHv.W5IPYFpwU96F13QcDB5IeIXWc8fSus.', '2345 Eduardo Crescent Suite 569\nNorth Hilario, PA 71575', '0989842021', 2, 0, '/storage/img/avatar/user.png', '6lsJlowmwBWStpAanTe2XppnDqg0WM', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(169, 'Wendy Sporer', 'helene41@example.net', '$2y$10$.qPc5mOv3T3FRpnzEXDOGOgBYggnSq73xG0ba1QEXvU9xKqYlHsmi', '60059 David Plains\nLake Christelleview, WV 52955-0451', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'WNF2WeHl3wPipIPn9a5SvYvc04hrln', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(170, 'Bud Halvorson IV', 'gheaney@example.org', '$2y$10$HwewWcvGO.BssJjOrnY2Je3vZTa8SoPLP0M8UUba5H7JwlX7Kx/BS', '6992 Xander Valleys Suite 830\nTreutelton, HI 32116-0868', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'ViQ3wLc7CainoC3B6MpLPskKKTijwO', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(171, 'Mrs. Kallie Olson Jr.', 'eldridge78@example.org', '$2y$10$WT.83PyQ8aR8TiPeYSyojuWnJIA7slJZkAJBa2lXj3Xg.gEwE1RZa', '22294 Hermiston Drives\nNolanburgh, PA 97871-7307', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'MoS1mg7FnHHBDpbuAHHghopcdvrbKm', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(172, 'Efrain Dickinson', 'crooks.lewis@example.net', '$2y$10$z41Zg2Z1QqGOix/UefQYDe0ZD9580/tKl.CKe3swEshGIG5LBs5Wq', '396 Sauer Turnpike\nDesireeland, ME 19378-4847', '0989842021', 0, 0, '/storage/img/avatar/user.png', '2BzIGzvxtDH5Udefxu4frOxKnMWPbx', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(173, 'Dr. Elisabeth Hills DVM', 'hipolito.johnson@example.com', '$2y$10$dgZEPObwKN0m5vy2yg3.N.mlQuohy60kufQiV8F3PeQl6lx83rw7K', '200 Janie Keys Apt. 155\nGibsonshire, ND 06143-6916', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'uX6ppEyCep82i5BbTUOm4CPGGVbGxq', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(174, 'Mr. Burley Mitchell', 'nerdman@example.org', '$2y$10$dX9Zm6dfAUmUcWzexhe4.ucZHmwp4LwtKhzEvgIYzgeREJs6eZoSG', '88839 Sarah Drives Suite 453\nNew Myrticemouth, CO 33133', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'YPdqyPb7bMZegj5rgsHlsMWPQoaGSC', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(175, 'Mr. Everett O\'Hara II', 'porter.langosh@example.net', '$2y$10$AHNwAhPPj7ISIyiYd5Vj.ua.FPGtS9FaixjVXHgMd82EIfAfv0l9e', '97078 Brekke Harbors\nWest Zoie, HI 46466', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'Vzv2h0rahwWp9ObyS6SqKBGD1LmOEK', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(176, 'Dr. Estella Greenholt DVM', 'qokeefe@example.net', '$2y$10$cP/jrXAmlFrvE/l1PvOqIeC43geY5JbbAXCxwl.ycbIoNcKH2ObdG', '59129 Gaylord Port\nHeidenreichville, MS 80471', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'BwDyOZvnPOMdkUWNUqbCuyeqdNRJ3e', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(177, 'Titus Williamson', 'durgan.magnus@example.net', '$2y$10$NWBjneiVs6/.nmin9AZEbeIHfQDDw6CnepfscbWg..TjXL5q/iHVS', '92897 Feil Crest\nMaximoton, MN 39363', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'eSHMmdMHBhOdChaZERqTbmsOE4WT5l', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(178, 'Cristopher Jast', 'lionel.ortiz@example.org', '$2y$10$cDx5mr8HnBMm8F94mOmI6euhscSI7jvHdps/0kQ92w9zLnm9NPxzi', '279 Conn Way Suite 660\nLake Moniquefort, AZ 32943-5375', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'jkhOqg8j2Kfr48IjA75yB1TsExmEKu', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(179, 'Ms. Roxanne Hyatt', 'demarco08@example.net', '$2y$10$aS6nyX/9nj1CzPwnLImTk.9V7I4Fipha7twsdrw6po1WIfDHNgjMW', '964 Russel Mount Apt. 382\nNorth Keelyside, VT 77254', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'wx6VN8mZ3jV1WIIx01L9oIngV5Ah73', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(180, 'Karlee Goyette III', 'iokeefe@example.net', '$2y$10$h9/mtdQghP7PNFR8j42iFuZo7RhhOlb0t8kjH/XhZiFIjnErHLFFa', '25871 Blanche Valleys\nLake Miller, MI 07296-3895', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'kRzoLJ5QDnYhwVFqrg4HkdTX9CahH7', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(181, 'Anais Aufderhar', 'ankunding.ryann@example.org', '$2y$10$Z9BG6WV.iFosdgMqC7fumuTuQFUqq9xP7pSse9vdlca1AiV/ARQLK', '140 Adelia Expressway\nSarinaport, VA 42458', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'FJQ16bxnjij74TFZf5IeF6yrDD7yEJ', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(182, 'Rex Bergnaum', 'trevion.smith@example.net', '$2y$10$ycddDcUQygAZNwzyApZ/H.eZV6C3IGdmCKZ9nC9tFvPU82UTxuuqe', '70352 Kristoffer Springs\nWest Carleton, TX 41656-6353', '0989842021', 1, 0, '/storage/img/avatar/user.png', '7wtz9XoWdbjPmcdhA3dbrAm9Uw5tsY', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(183, 'Deanna Smitham', 'sierra.effertz@example.net', '$2y$10$E8rs6ud0Voe8VHZ87lUzNeUXrcrwZtgIzsk.q5wOJh.dOvS06lD9u', '63087 Waters Common\nDockside, OK 91753-5599', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'aQdzNxQbhdfIrzZJtKyBKnpoMzAvVa', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(184, 'Cody Treutel', 'bednar.edison@example.org', '$2y$10$V7LaIHcANqVj8aZjZcJfj.cnAnra2V0xbYtgHAiVBIuw2JYBlIZiy', '556 Dax Courts Suite 073\nNew Lurlineland, NJ 01506', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'gT9umLf8F00I3gm1cOVjk6YVc2rlU0', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(185, 'Eda Hettinger', 'tgaylord@example.net', '$2y$10$cijCJcslArC0avVezt1/ROJm5No5aB82CepXjTTZP35jPr/VkwTQS', '1029 Eleanora Stravenue Suite 780\nEast Braulio, OH 32201-1827', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'MNmwGo0BSQhuU1t2J7GSERap256G2h', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(186, 'Marilie Hermiston DVM', 'ariel.kirlin@example.net', '$2y$10$GwTg02X560eLfCk5gi8poe3evR8fci1P5My0c3mLN1mlJfu0SJy3y', '8083 Emanuel Turnpike Suite 388\nNorth Agnes, WV 88693', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'aRHjLyoKJOi0nUHetA67pLzHrABLPB', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(187, 'Rudolph Schoen', 'paula93@example.net', '$2y$10$LxNKZmJwZ3zABSEysQkSS.SLRxy0aWOg/uOV7Io5phCJ7wzfDGcmi', '5688 Hickle Meadow Suite 273\nSmithamview, AZ 54736-1367', '0989842021', 0, 0, '/storage/img/avatar/user.png', '8uHdwML4Rm1CYlIH5pop10kRc5xGwI', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(188, 'Marco Schroeder Jr.', 'tristin53@example.net', '$2y$10$G3Gu4vUxD3nMpN.2Rml7uOrxcY6SesLV9KgGm2ZUr5yMb5WcbVD5i', '84270 Gulgowski Summit Suite 464\nEast Fredaview, ID 74689-7076', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'FSj1QcJYqBH5vsfkFB2CqODJ359r3L', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(189, 'Rhianna Ryan Sr.', 'okirlin@example.org', '$2y$10$qWSVkYHdhz1/yZkaIIvUgOEhxGXP.txh/y4yd5O7rHjqcl78Eiv8q', '211 Klocko Freeway Apt. 907\nKiarastad, NH 52937-7317', '0989842021', 0, 0, '/storage/img/avatar/user.png', '80HFStisWTg48PlK9fIYbn6pvSW5Iw', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(190, 'Stephanie Schulist', 'ottis.reichel@example.org', '$2y$10$HuCHvLLPUZCO0qIQiggbFu4ySz/hLPY6GMUXX4OWy1/9yWmGVoveC', '918 Bobby Streets Suite 392\nWest Blazetown, OR 82939-2982', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'AbwDiWbn4tAv70ZEI2vZ4Zk1EOzfvF', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(191, 'Chadrick Bruen', 'jace.mitchell@example.org', '$2y$10$eUKp5.sbixNkC51LvXtOSepssa6Izvq5zEJqlxDag14VVLWcEV9Se', '395 Deckow Crossroad\nRussview, CA 49284', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'yCvPZIslEcxSH2jeo137BmvKyQI4tf', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(192, 'Mrs. Josie Parker', 'runolfsdottir.zetta@example.com', '$2y$10$ZU/uG3FiCrM4SISr4aUWWOt1DxEvWHVMLqvg.hB8wYashfhQAaNl.', '7904 Kirlin Ports\nPort Sydniehaven, VA 50120-3223', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'Pa7165TpnVeNWAvBuB6UIF90lVtvLe', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(193, 'Maverick Fadel', 'justyn.turcotte@example.net', '$2y$10$9vqYwrdlxVEUhm0z2y6zu.lGukLWnJfzoxnk2.I0PmQkdJR3CWY4K', '265 Beier Crest Suite 260\nPort Juliana, OK 11375-9072', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'yGhKsBL2In4c2ZuU9TQOD5mYyDOo0c', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(194, 'Austyn Franecki', 'kennedi.wilderman@example.net', '$2y$10$ZVygHilVJXOigGx5MInoAO5cJXMVGWjuHXrSj4PZ/I8GeKMoq.7zm', '572 Hill Neck\nCarlostown, ME 42336-9127', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'qjIHgRPzRLY92hn7WqK0muMq2yb5En', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(195, 'Mr. Giuseppe Nolan MD', 'tania40@example.net', '$2y$10$BOep4wrQja1oF2lz9aYw5.cQPcU7lQ3.Fmkn8wM.fsSb8/n9vD5/m', '80124 Gusikowski Freeway Suite 225\nIrvingfurt, VT 38104', '0989842021', 0, 0, '/storage/img/avatar/user.png', '3JVTDWNxdUsCF7on2AOqKHHGicpfUP', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(196, 'Mellie Robel', 'vonrueden.gunner@example.com', '$2y$10$d9aEUD/KMJrETzY9vzYOlOYm.YiB1tsxwJBxeVyUmx3C2jhstQ6Vi', '36540 Heller Port Apt. 056\nSouth Zeldamouth, ID 64940-8871', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'ydZpJTYBC6gakjLCTEquBReinMJ3YC', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(197, 'Dr. Emmie Stracke', 'upton.ray@example.com', '$2y$10$zTGDGIEYxl6Os2njC8SX8uvvnZ/NqsBVf0bfy9ZttlN4tTCZZtFK2', '214 Beatty Unions Apt. 951\nJodieport, AK 08269', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'vOQhfOyiXJUOKqRWUAPPnsTb4BYuUU', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(198, 'Myriam Bahringer', 'yost.consuelo@example.com', '$2y$10$N1EEEm2/h7b7.o09ou/6rO02NxFGnlFgi./b3i/S43eBqWlXUJJSK', '851 Haley Heights\nNew Katlynville, TN 23452', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'n72haAwquU8tv3dlDgCjHFkriRIae4', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(199, 'Ayden Spencer', 'geovanny.terry@example.net', '$2y$10$X29c8Q2nrf9JPBaAi5OZVuM0neXG0m2CD4h7i02n7iwvNPOqzK3De', '584 Julio Mill\nSouth Betteberg, WV 00756-2202', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'D8hxkaw7ZyFsYHWP8Dg3ebIF7nqg46', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(200, 'Dr. Brennon Larkin V', 'kayla08@example.org', '$2y$10$VKEPBnBs5KVW12U1a16JA..EqCwCgGFVdaWUbzBwqVIme.Kkan/si', '9982 Kane Mission\nWest Broderick, OK 04162', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'bmsq9EwG4Njm0Z1C0OqGwB5ReiIqvp', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(201, 'Cody Bernhard', 'maximillian.bednar@example.org', '$2y$10$66/2TPwL5b/h.12lpkha.eLLqTYfVp52ZEXj7IGfRYGyr1SJFXOG.', '5104 Hyatt Squares Suite 690\nSouth Hardy, VA 08620', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'tBrlxYYQdef7y8O82xWVPtsFp0R3dG', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(202, 'Veronica Mosciski', 'qwindler@example.net', '$2y$10$k.4UK2yzHHhe2Hc585zF.u9xmiGcOEVqjdv8IL7I6tgv58c3WOmF2', '7120 Alessandra Meadows\nEast Rodger, FL 21464-9245', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'Kcp873b8Swad7MJtU555Mv2eUbox6l', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(203, 'Annetta Watsica', 'joconnell@example.org', '$2y$10$OtERjOsrGuoXl4Y6jy6XCOzHDyxxtNH8z6fkUTo3.yImH/xHo2W0e', '861 Micaela Pines\nAntonioville, NM 10748-4751', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'LGBQ4Ucwi0kqfj9l0S7Zkhxdh0DLH8', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(204, 'Mr. Tod Romaguera V', 'eleuschke@example.com', '$2y$10$Lg3YGLZwUeDHtBcpX8FKoetCPw.tM0rhuIfiY/MCKoSe5zyBbCh9y', '2953 Turner Light\nHodkiewiczborough, IN 33799-3485', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'SSx370mzd79CeazNN0EXmPNO2ygLh5', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(205, 'Watson Hintz', 'gleason.devon@example.org', '$2y$10$KCURsMHAI.0/ok7GTizbxO8U2G2tpLsKncYFRidjpRPyMv/gClhCm', '52255 Adams Views Suite 622\nEast Tristian, SC 26890-5397', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'qlFWm8bgax86bZi8g5qg9sVdcyKl8a', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(206, 'Alysha Lockman III', 'kunze.lee@example.org', '$2y$10$IH21moU9ZYr.GrxD3ucf6.ZQspdQLwqeHpTJj8q6UYouTZggchMsO', '159 Sanford Lane\nNorth Hailieside, OR 70660-8176', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'V4UJadslj637UWo1xfGfCu10sCm3WG', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(207, 'Cyrus Padberg Jr.', 'santa47@example.org', '$2y$10$7D1QLiONzNnlQIKinKx2vOlNAnH48.8C07s9EWze7vVqnlzaPtrba', '619 Ernser Rapid\nPort Claudine, NJ 28288', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'eamOCHkfxpjf85fwLGDRtlTICNzF2I', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(208, 'Myrna Ondricka', 'rosetta84@example.net', '$2y$10$zvd/wvAMJOTkAVCCXQSmoOCTVv5GV/XrY.OTozyd/GgHDCN.zOHjy', '825 Hansen Plain\nLake Bellfurt, IA 68828-1956', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'XbUMEMUvAB4jNtpZfEgfoUNDDv98Ar', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(209, 'Logan Wolf', 'hmarquardt@example.com', '$2y$10$D2eF6ZAoCoLEoZVXMLs0mu8LmT2qxUZeYkNyRtb9824wfgdqGLpKi', '3450 Emory Pike Suite 785\nPort Jace, MS 47557-8552', '0989842021', 2, 0, '/storage/img/avatar/user.png', '8ag4uc3B15kzVhX4t0VSpICpXBZlYY', NULL, '2022-03-14 09:21:18', '2022-03-14 09:21:18'),
(210, 'Soledad Dickinson', 'lucious.rath@example.com', '$2y$10$eqX3R82./8kERZoQagplSemk/rr/4x88Ns9xZKnC1juPylSSabVHO', '799 Yost Trail\nNorth Kristinaside, WA 32427', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'pWe2SYnpXZ2HkyHA4r2A7d9WdlMcFD', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(211, 'Prof. Twila Raynor DVM', 'melyssa.huels@example.org', '$2y$10$SHgc3xDm0qBORQUMflAJIumzDXaL7VPXCXM.r6J4x15dE6gwQG8wG', '18782 Immanuel Unions\nWest Kristian, MD 63926', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'v7iYiatXzDfO25aP2yTllMf7MrNuxi', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(212, 'Vida Marvin', 'wreilly@example.net', '$2y$10$yNuCHGLXgPpdoRAGOpCouuz2cg92CEIu2Ho.dJEgKfWTuV4As5Yx2', '8405 Koch Path Apt. 692\nLake Arnold, MT 72141-9062', '0989842021', 0, 0, '/storage/img/avatar/user.png', 's01B7TMpdU1rAniA6525Zg5ziQ4FkL', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(213, 'Euna Zemlak', 'hking@example.org', '$2y$10$IWW04JHBSBbeUpd.5tcHwe.kqHaQpSiWTVZEUqyhQgZR6d7e7qpgi', '32108 Murazik Wells\nSatterfieldland, MN 88750', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'KFEGT8J43pfeXQa6RkI2eiXwbfBsH6', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(214, 'Dr. Kaleb Hyatt', 'white.ova@example.net', '$2y$10$oh4llThC9K3UoZpsFSZAUueqm0Eq5POMOJmwVVD1aRUhu8SoMSLQW', '23663 Brett Unions Suite 978\nBrownview, NV 92995-6432', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'BgBg77N13ktXcrdOz9ZucjbMCSdo94', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(215, 'Lucie Sawayn V', 'pdare@example.org', '$2y$10$BYD364DrewHnC0yvNmPJL.BznFthCl0WHj1cbUbXIorNgeLo1FyoG', '782 Jace Canyon\nDickimouth, MN 62581-0477', '0989842021', 1, 0, '/storage/img/avatar/user.png', '10uBmzdvhLHM4sjHzWN4CoRhAYfzAm', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(216, 'Prof. Brycen Crooks V', 'karson43@example.org', '$2y$10$KrLX9ifj4ccMsOLaYsJ6HuzocWn3H9NfazDNrpzcc8eYdYTXa.Njm', '627 Karen Fork\nBahringerville, SC 42526-9143', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'ikp7bfy8O5rSBMFkLDC6O1PNn7wA2b', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(217, 'Mrs. Tanya Nader Sr.', 'josefa.ferry@example.com', '$2y$10$o1wyr7Ah7ZLfFlMKSxgUvuyUU5TesdHaWIgMz1lS12qNhwMgZ/.fu', '1503 Eli Crossroad Suite 156\nMadelynnfurt, SC 19156', '0989842021', 0, 0, '/storage/img/avatar/user.png', '5CVHBjJudBsE4TP3HlN1VrGtCAZFyp', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(218, 'Veronica Kilback', 'ojones@example.net', '$2y$10$312eczFChOe9sjBss.WI3O8u04QEFSWFn08VKBQS3ZbOL4RwzYKUq', '138 Bailey Mountains\nCobyville, KS 93634', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'd3qbW0UOB3lrLL2xuJhB8jXlE6gCqo', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(219, 'Lourdes Hoeger III', 'qhauck@example.org', '$2y$10$yMjJQ5mKtIRtTE5K7rXwbetBdDQSokCzGagBLOK5pzWDkm1VD5eYq', '362 Janessa Ridge Suite 351\nNellefurt, ID 95410', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'JR1Hf8V4JaxG1XkwHByrkPrWWHlgEX', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(220, 'Aric Williamson', 'hollis.goyette@example.org', '$2y$10$wZpQN2ZRtfoPuih4fXDe7ez.GFwAp8BhmgOZWzaNJ7umd2yK5BMiC', '498 Efren Creek\nEffieshire, MI 23045', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'ns6u9UVFh3BLbsTr9KGiu5KX2OVfcB', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(221, 'Myles Gottlieb III', 'dangelo00@example.net', '$2y$10$IYwUSaXk/Mq4HtGnZOVEk.QnIB65P5JWslAyG9Np0zEKTevXOthkm', '73005 Collins Orchard Apt. 266\nGrimesbury, KY 31813-1062', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'XXYstZP5XqwjIxNpJIXocUpMc3tLCI', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(222, 'Novella Bailey', 'wiegand.jerald@example.com', '$2y$10$N8F89p49yQDTrz5dvAXT5uC3NqSNjE6ZgNj4M/ht7hW7m9RYQFbs.', '8267 Kenyatta Road Suite 023\nEast Roy, MI 52587-6473', '0989842021', 1, 0, '/storage/img/avatar/user.png', '1gp1XWaJNb0S7emFnjj6hDOHPfcvHJ', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(223, 'Arjun Rippin', 'arlie54@example.org', '$2y$10$KemWTBIER3gDdjEEe4GEeOmELovuKqxkGz2wZ/71yzYgDKVriU30m', '444 Marks Valley Apt. 773\nGiannistad, CT 20184', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'NzfxsNAZECmcJkykJAFjAfEkuDWj0q', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(224, 'Zula McDermott', 'kschmeler@example.net', '$2y$10$bwPU/ipTd1gnLTUVbU7VGOdTwrApWioUPo6zHV0LwTcxmpm.8yvNO', '27249 Louisa Manors\nWest Dena, IN 73336-0853', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'mwe1IWNE5vCxf3WCZFhiXyuvg73Wgu', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(225, 'Camryn Beahan', 'kohara@example.net', '$2y$10$NuR8TltcaR3.ip7Gfsm5me2Wbuq3g/piAGf1sTdfgwm48yISw8CJO', '677 Darian Turnpike\nLueilwitzhaven, IN 55453', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'GP9jNRFvIcPuHUlkP7U93NEIcVvSgU', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(226, 'Dr. Desmond Yost', 'ankunding.anibal@example.net', '$2y$10$hzNvoPtA8q2ogWijLezYFOl/DMg.yJGJ7ukBVf7GeCefDymE5la6m', '9942 Romaine Bypass Apt. 939\nHarveyfurt, VT 14836-4305', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'UhcExJMKltBiW7cmFLql6EVDvVcsnb', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(227, 'Al Senger Sr.', 'rebeka.russel@example.net', '$2y$10$u5enVPntgAJH3rbVrhH8t.dauf9mydrScUR3MC2iT4DJv.GC1EWVi', '32362 Hertha Mountains Suite 191\nFlatleystad, VT 11481', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'azsSkafZ6ra89EANCCH8SLrM70IKW9', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(228, 'Brody Bailey', 'ffeest@example.com', '$2y$10$ZlV2UUAx/KItAwrYjmdi0Ojn5kFocGabp3NRnRfRw4pORXim5B.i2', '724 Collier Oval\nBlickbury, DE 51788-5185', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'HUE1STCOW8BgJSiFNCSTPnrTZtnheT', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(229, 'Alvera Zulauf', 'trey79@example.com', '$2y$10$/kdY2TRwzMuyMqyXBGHRaOExMp33pz7XIabe4B9tGqHNq5YG0ZIaa', '41612 Considine Meadows Apt. 695\nPort Jeramiehaven, PA 90728-6637', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'zKWkOYqun4ytZrOsXGHsL8g7Mz1ETM', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(230, 'Katharina Beer I', 'pablo75@example.org', '$2y$10$piR/jsL/GC.5QQiNvxEKZeMDqA3ds4qfuoSz82yyRNaGIzQLxGecG', '37794 Lazaro View Suite 351\nWest Allenmouth, WI 30503-2321', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'fcWKMdhcUexS4AdwvBUu1uWpP9uNDi', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(231, 'Malcolm Lakin', 'lisa.grady@example.com', '$2y$10$dppRazANcV8PUoTiLv3Jh.8vF/w2lcTVl2whwnDTXgknXu1k0TntK', '161 Dorothea Squares Suite 287\nSouth Sheridanmouth, NV 50609-7767', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'sjlEVcBmX7Hjdxa7wqICQvAzVMWgZh', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(232, 'Dr. Daisy Bayer', 'huels.axel@example.com', '$2y$10$5i7L82qVEPaZ.J/xfNxlIOi4bOaujveUhm739oMvyBpk7RtTmzEzS', '24806 Dickinson Way\nRowefurt, NM 75461-1485', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'Jcgcb92EskWMVJ53pffj6u4AEnaTdY', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(233, 'Mrs. Dortha Fadel V', 'kuhic.pink@example.net', '$2y$10$2Va63vvt3o1Fd2F5INx/5.aqPq5N5aboiu5Cu2bKMDfL.D29Yxdn.', '370 Jazmyne Route\nSantiagobury, AK 64708', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'N7lC76aTsaHAOPO12okZbqk393gcNs', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(234, 'Mr. Hans Shields DDS', 'jonathan.oconnell@example.org', '$2y$10$zPGI5Nd8/bNd91Wr1bPtMeI/wZx.QU012FNhtIHBqHWzUMtuIqcOG', '862 Sauer Extension\nDanniefurt, MI 97623', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'oaSexmJLFCKui5LjaWOj8QDBiB6DVw', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(235, 'Mr. Alessandro Leffler I', 'leuschke.barry@example.org', '$2y$10$lxKYszHAmilmJmracHpt.O5MjOF3QqtxrjeC0F6mQAmzRmSMdgU9C', '3199 Amely Walks Apt. 634\nPort Joanne, SD 27805-0015', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'stt1nWosUJLlvOZDGSPGZE7u03Doc5', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(236, 'Loma Little', 'octavia79@example.com', '$2y$10$bKTYkQkhdPta.pXhgH5Loue0PCZJSChjUQCxl8ezy8oXu7iSCjqPS', '358 Grady Well\nSouth Freddy, AR 19721', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'hPavnbRRSQaTLXz5ubItisjLkKiT5q', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(237, 'Ms. Destany Huel II', 'oconner.matteo@example.com', '$2y$10$iAUzTc9LwhyVnSNw0lgB4.1cQ41UnK3NyvfeGkqkV0pzPaU3pyU9G', '704 Leannon Crossroad Apt. 737\nBlandashire, ME 00923-0109', '0989842021', 2, 0, '/storage/img/avatar/user.png', '9JImalUKTN1QGiGaAdbxTgvVfnDuVa', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(238, 'Lilla Pagac Jr.', 'nflatley@example.com', '$2y$10$TIqWx/ooH8ItzwQH/61xxeybE0Ntmp2IzJclclNS/ymgltNUsUWXK', '919 Guy Key\nAlfredchester, CT 80884', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'vFTf2VK8dq1eH4neaKhJ4gpjDHFkp5', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(239, 'Joanny O\'Keefe', 'ewilderman@example.com', '$2y$10$hF9N0gc3MniTaTl0qDDi5uI0.eYavZV7xiOIoLlz280FjZJikD/R2', '175 Christop Underpass\nMelvinberg, MO 27923', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'lqLjX73t9QHFEtvAXPpqL3jxDf2tho', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(240, 'Alison Kshlerin', 'jaida33@example.org', '$2y$10$gjJyb2XUll8dTajcq0iM7OlfuWha4zxHX0yjkTmdpEczuaEeLBWre', '5327 Sawayn Fords Apt. 686\nRodriguezville, MS 37213-2090', '0989842021', 0, 0, '/storage/img/avatar/user.png', '4oUZ8EDKJ7gaJAEAyWcgL5I3tcmDLt', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(241, 'Mr. Jonathan Labadie', 'price.herta@example.org', '$2y$10$SbRmMOeu0m360Gc12MS3L.8camAMbfN0PGIpDev5sQAgfAwKv//fm', '610 Paucek Spurs Apt. 022\nNew Jewellport, AL 89691-7343', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'I7z6YDnVBQSk6r4XAFMqKbZSbAvkFv', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(242, 'Bethany Hodkiewicz', 'jermaine.monahan@example.net', '$2y$10$FRuY8GgPy/rl3nVUjmOubeKny8sPBjUXw23EA7fAVxXRm0vGV58HO', '721 Marion Prairie Apt. 635\nAmanimouth, VT 22745', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'CxEGsJQZEPZmFFMcpRfHvONjcgr8K2', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(243, 'Carmine Farrell III', 'kub.burley@example.org', '$2y$10$zTRf705gEy0JRFGA8s08OeSyI49PeYjpBS2mTLXcaAEEOOqdsiC/a', '3197 Karina Islands\nWest Ariannachester, FL 05517', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'wthypAMeqHeL1IqrQCWpBUrDFHT2Ia', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(244, 'Earnestine Collier', 'kaden56@example.org', '$2y$10$Y0p2JfMRJZGaO4UZRc9ZpeCnpH82QV2MaR.Mg3h6izQ.8amToQMKy', '124 Glover Mission Apt. 295\nEast Elmer, LA 86284-4217', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'Fs6nlnm6mcQlRXROmFY5KKQTIs9ncL', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(245, 'Lester Block', 'isac14@example.net', '$2y$10$ONk9BVdknRtxv5k/KAZWOu0inIqtVf2VCaAt6.EXrt0iup0rprIjW', '367 Anya Circles\nEulamouth, NH 75520', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'UqLEU5vXi7mvnl2m4suBIeMVkOq8hG', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(246, 'Elfrieda Haag', 'fred97@example.org', '$2y$10$PILv8seRrxqcQXy80oCNROYX/QM9LH8uoBCHxlam7qNdnQ32ozuRa', '50178 Arnaldo Fork\nBoehmtown, KY 72091-0976', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'vdhUiAjB28vghP7HlVexYRgSEiVzjZ', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(247, 'Adrianna Walter', 'santos07@example.net', '$2y$10$iKFSAgF4KJVNXBjF.R7i2udidy5XfQ6SDpcMDdnPmYiAndjz3iL7m', '372 Green Underpass Apt. 706\nEbonyport, AZ 73944', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'ayKMMrM8Eb4uOstD8t97NKqQDi3JtA', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(248, 'Prof. Camron Purdy Jr.', 'luisa.hessel@example.com', '$2y$10$OEy07WqZxFWsUgsS8y1wveR6eik9i3tTjKt1sFOWkrTg.iD2J.qbm', '7118 Alessandra Ranch Apt. 952\nArelyside, AR 45322-2728', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'kQ3DmgS9bHYY4YPuSsIEqlOA6GALxn', NULL, '2022-03-14 09:21:19', '2022-03-14 09:21:19'),
(249, 'Eric Howell', 'ansel.heathcote@example.net', '$2y$10$ZRaA0cUWZFHjpR7KQwT1suRRzzyplk0.K7aZ4VF62RFYDUxtUDCVa', '89717 Durgan Way Suite 243\nNew Alaina, TN 22993-2814', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'u05ct6BUJSBtDCVZWE4i6Y2sIcD5DZ', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(250, 'Dr. Grady Anderson I', 'margaretta90@example.org', '$2y$10$BfAU8rShs73ZpGftPdgM4.mjnA2bydETVf83OnK6qFL2BnUZDAuzS', '736 Hane Isle\nWest Larue, AR 49258-6977', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'R3Xkn6GMd3o50sGJXk4gf0crr05oDH', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(251, 'Edd Ullrich', 'raleigh83@example.org', '$2y$10$ChPStkGXsF.JUSJJXVvPcOmPRdoeyqvgB1jaIb8hU4mdsE5qZ6l1O', '43451 Schaden Locks\nNorth Krista, MA 49176', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'HLLcCj2byuS1nyBuv8trf283ckuXJo', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(252, 'Baron Wunsch', 'hettie.koepp@example.com', '$2y$10$ig/3XW7LzwM27kYfF0hdwOYnodyjxeyUZl11p9frBYOXpEYa6/6uO', '889 Kianna Green Suite 635\nEast Sanford, AL 38833', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'dKpmHVnv7UJ0dfNuQML2En64Bn7T89', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(253, 'Marquise Mante', 'jmertz@example.org', '$2y$10$xEFmmtgdvobnWP8HjzZcMOBTOLmdbH0s85dGf2xPTW.lIfdYMEo0G', '3627 Schmeler Mews Apt. 986\nKubview, GA 43677', '0989842021', 0, 0, '/storage/img/avatar/user.png', '2CdLUYeWWuuKC5xvze60rmNDecqier', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(254, 'Jewel Wisoky', 'heaney.carmen@example.com', '$2y$10$ZdxW71nOhQeuH57ATdbqnuA4PLIOtA.eYdQGu0uKys8JPyP4WKHJG', '158 Marks Lights Apt. 385\nSouth Damionfort, FL 32939-8453', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'vmGXmIINcq1rgFjAZ4PSdo3vYTtdlt', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(255, 'Letha Kris', 'hnikolaus@example.org', '$2y$10$cpi7zSZplHyL9UTBHr4r1es8csJtyfmVnWvpXiFe5BO0T8PncVqtK', '720 Martina Branch Apt. 283\nYvetteside, WY 15361-1983', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'VyUMPYNbF7lVHxIt1rpLs8cfExM1FS', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(256, 'Prof. Joannie Adams', 'emelia93@example.net', '$2y$10$ba0rqRmHU00h/Nrqvhs2XeGZgahSalz8zgwyLPBAn7SqSdsFlNJ0a', '4291 Corene Shoals Suite 399\nWest Orantown, WV 80523-2524', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'i8cfYNgjucRTwjpxbqPDripy8h8O1g', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(257, 'Kurtis Schmeler', 'eugene90@example.net', '$2y$10$UJU3GwvO8zH4VRfHSp0A.uAVYDmjl87RsO7IZPUKsqJ6MRsd0OMwW', '61788 Magnus Glen Suite 782\nGeneland, FL 05846-1460', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'boQOW3OvHMVZTZDiyjAEPlUQQPreEu', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(258, 'Vallie Nicolas', 'patience.cartwright@example.com', '$2y$10$G.2NXqDlH9ZTKjAvIOxMUu.VR6iG4rZ3fwwxLBXVxu/DlcKXsRqEa', '70242 Alize Canyon Apt. 067\nPort Howardfurt, MT 69253', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'PkgUaA4In812lU9sFRpbb3mWDnpz1E', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(259, 'Hertha Marquardt I', 'nkreiger@example.com', '$2y$10$DmbIoeBUgP4HnfKne1Hh1OI7A3M8Eo5OjDV4YnGaJC71zA7BvoFtS', '781 Christiansen Springs\nPort Abelardo, FL 60731', '0989842021', 0, 0, '/storage/img/avatar/user.png', '71ftQVOMC8KUu6O4qHr5LFE0lnAULF', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(260, 'Dr. Leopoldo Abshire', 'eliseo.lemke@example.net', '$2y$10$lguvkS0qxY8HcODKoyjDvuUqhzQ5bu8K139Z2kv9vn8ljW4g7CFvi', '78276 Erling Ferry Suite 176\nLucasville, NJ 52693-7199', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'oZpOdwPKlLSI62m6HKVzPEBzoMkU4U', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(261, 'Verona Rowe', 'nedra66@example.org', '$2y$10$8Jf5XAllUCin9QB9XCaHAuldjMpdTgTpXxCeeCCBkoTJrfKtiT1ny', '73334 Amara Viaduct\nAlffurt, OR 51004', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'B67R6AAqYdpwEJbQXpaAe8eSK3uQPI', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(262, 'Santino Pollich', 'tobin.fisher@example.net', '$2y$10$o4XT4DS/kjdBownElQWmYOufyy8YH.iPzcTiS8ozL6IK35jO8L/F.', '1975 Victor Coves\nLake Vaughnfort, NC 43087', '0989842021', 1, 0, '/storage/img/avatar/user.png', '4FxvDi24mgcuh6SejwPS2gbH6y2qss', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(263, 'Dorian Reichert', 'adelle.jacobi@example.com', '$2y$10$V5PciGxL8nTMWNdCpOgQuutqjeLG9g.65ms3wPpnslzrTgIB39qZ6', '6171 Beier Cliffs\nPort Laila, WY 12485-7498', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'RffMeFVT0Dusyo7IxuSTnn51OIFnrg', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(264, 'Lavon Davis', 'yheidenreich@example.com', '$2y$10$YNSQ2Xbl.gGPst8oLWNhP.XmPZmh3FuvbkYazPEuVWwoM/vzaErgq', '593 Swaniawski Landing Suite 590\nLake Milanton, ME 73333', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'pv4RUXeFpZoz8hrvwPqm43DQ0cl64w', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(265, 'Reggie Reinger', 'kshlerin.della@example.com', '$2y$10$xynfDIDEKLpM902NY4U77u1t/VKT1joKSLTvu/eeJ1gGPFpGITLqe', '49934 Nolan Passage\nPort Justynmouth, KY 27380-4030', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'swXJs4RRrkVIht2EqAbIPAYIFeo38n', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(266, 'Selmer Ortiz', 'hdubuque@example.com', '$2y$10$x3Fw9DsTnIoRJSKsjmmZWObrylKOCjwDPy2A04lUkKtkegKvxEtSG', '67778 Weissnat Brooks\nWillton, IN 73635', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'DSweEnw1Eldy8ooClIExJK29zvi4Q1', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(267, 'Prof. Merl McKenzie I', 'cassin.shaniya@example.com', '$2y$10$QQBLEs7U.gShJxBbdJl/5OHX4YZmxyOnStH6GiBYU/0CDe6BW6IOi', '1686 Reginald Valley Suite 298\nLangworthville, IA 02997-6956', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'lbfeWQWEvM8LbkqzoXXcEbcHRWWtEh', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(268, 'Dr. Arely Mills DDS', 'fadel.maximillia@example.net', '$2y$10$8CxwfDxvbv8w1qho88y2eOul06vCg6Mx9vD1dT.4m02y.yGkTFaqq', '3694 Jaylon Skyway\nMaymouth, ME 50254', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'TIKALdos0S2BOdTNbBjIK8e0sEYfJ6', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(269, 'Marianna Kutch', 'weimann.ludwig@example.com', '$2y$10$Czl2BUmOz13Saj.TCQrEr./upfQpFyKQeRlGv7Q.TaXroZQ7dNv8W', '5221 Stracke Trail\nNayeliberg, OK 84023-1618', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'TomPdfrhIJ8mbQozqihAZeJT0k2J6C', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(270, 'Herminio Stracke', 'alivia38@example.org', '$2y$10$s4T.C7S2hxmn1em0kX5WVeavFUvvTF0Zx7k55cHkqtAAf1nhYW79G', '49826 Shawna Meadow Suite 692\nNorth Dominique, GA 96233', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'INAYfX0w8W5XedWXypF3lDTtsfBFFu', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(271, 'Faustino Mayert V', 'erick.powlowski@example.com', '$2y$10$pEbae.DUldjpj/LGMUCruORLSfYgu1Ui3AHM0Ful9QVkFyfTpZrnG', '433 Stanford Passage\nNorth Bernita, KY 66648-5660', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'Wq67JDLN56ZnwHEs97xjXXesnCoIpB', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(272, 'Eddie Grant', 'pacocha.laurine@example.net', '$2y$10$hpPEI6Cv5pL9ZFvEOnQSwO8LCCH8VFPTVg1Z..R02/mM/9PM8bp6G', '47368 Abernathy Junction Suite 332\nDeanville, AK 68712-2807', '0989842021', 2, 0, '/storage/img/avatar/user.png', '1FZb3X24WH7uYGZS18ZcYjRkpz0xUv', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(273, 'Odell Mraz', 'bashirian.ressie@example.net', '$2y$10$s5yUnL7lncHebAhsyoWCtuen.4B/C/OSNb8xptXUiPSsmjgVyrigi', '2243 Beahan Throughway Apt. 991\nLake Reynold, IA 52609-1722', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'T8gVYKBHxGw3yFyJaUQpE1QlZCfBis', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(274, 'Lilyan Cartwright DVM', 'barry.runolfsson@example.net', '$2y$10$ipJDklo/9YVg3FP/50cLrObbLpznIdZTNDrHhG9tAA1lSvXwGDv/q', '504 Sherman Passage\nBridgetport, NJ 79567-2095', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'AozTy93siBHtG0EKGddV6H5c1XMIzD', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(275, 'Dr. Erwin Medhurst V', 'abernathy.christiana@example.net', '$2y$10$tkSJZtDQFUEXX7tyVzh91.O2zXAs1jPXtn1LrDWVoKyHyTF3uDObO', '98466 Ebert Corner Apt. 685\nSouth Conormouth, ND 47967-2256', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'z1asEJDufC30EQ1lBCCtBOqRM4ELpa', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(276, 'Flavio Hoppe MD', 'ankunding.hildegard@example.net', '$2y$10$dUwFl4OrzHPfvbVe1xrAeu2V4x5YhMV63rurHN5gzaHyelmYf.Wfy', '9419 Schaefer Mount\nNorth Eleonore, HI 90408', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'rRyFGAm5BvNQ1jp1kJ1qUCoqj3wt9T', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(277, 'Ms. Nola Goyette Jr.', 'michale.kuhic@example.com', '$2y$10$V./492JUhGwZj76e/57vaeYXZJWaZsDLL.GPUtfhM2vAHsdWfYR0.', '16395 Tillman Course\nLake Buster, AZ 66712', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'tFTxTLi67bwyPShOssxOvzBtF0ll74', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(278, 'Glenna Heaney', 'xgoyette@example.org', '$2y$10$YJSZTR2Tgu.sSmkAXh7kKehbnEshkpqcSnMxP.xW53a/HFoVlp8LO', '7874 Ruecker Rapid\nWest Myriam, LA 75818', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'sPMInAy286e6yoomd4mvhDMYbP7WtG', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(279, 'Prof. Lisandro Dibbert DDS', 'pietro63@example.net', '$2y$10$Y5IF2ZcCk0Jdsc6ShT5IEupBV73G6z/IrDScwW.evN0rG81zqU/dq', '545 Bauch Parkways Apt. 190\nBonnietown, TX 58599', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'dwdhUSPCisR8yp8SVgpE7aaBIzrTFf', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(280, 'Albert Kessler DDS', 'faye.heaney@example.org', '$2y$10$U1gb.FJoYPjlqhxuK/b1qe1E5jbZF0HpoNdujR2SRABD6RFdwNFdK', '8415 Kilback Hill Apt. 032\nHodkiewiczchester, RI 69280', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'oOCnJZuQ4xX53UhQ0ubE7ALSAmENUS', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(281, 'Elias Jones', 'hollie61@example.net', '$2y$10$WxpAEGG/At0AC1XNO71k6O17.c79F8xwYu36csRJZRlzfYej9Nr0O', '3292 Nolan Lane Apt. 956\nEast Kayleybury, ME 35147-1054', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'WpgWh6htNtDEl70D2t1LMUvcDmnvTY', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(282, 'Reagan Klocko', 'jewel.hegmann@example.com', '$2y$10$HvWDZj0AVyuB5dCJSLAJuu1QTxdYGQ5JkYzZu5sAZY7vVrGPjU0eu', '4564 Hillard Brook Suite 991\nNew Liana, AL 55214', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'wRk3nuavpE0ZEwvHavLoWmjIQOzabd', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(283, 'Neal Murazik IV', 'kunde.waldo@example.net', '$2y$10$8FB0gFN4SbZBaLDMixB42uvP8tpMVq54g4Ly0c5J/7tFIpNwemQt6', '346 Zieme Drive\nEast Roosevelt, RI 73236', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'hrepT04uXpKtfSBRM5ZqBtIxS3wa1O', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(284, 'Sonia Farrell', 'marvin.abbie@example.com', '$2y$10$KycZAncu7MSNyvSjY7.KyOYrnVENQlTWnQ2T7r.xMOBrS0LS8e4wG', '5576 Elyssa Route\nWest Myleschester, MT 70134', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'v7IYC2MjnTlyotk0n4TScJdR4t78hA', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(285, 'Mr. Bradly Kulas PhD', 'gladyce.dubuque@example.org', '$2y$10$HV9iR.f592.G0Wc3ham.eu4fqwiGgexeCQ/ANgbPsAxurog13EZ5m', '910 Casper Roads\nAlimouth, LA 46938-6479', '0989842021', 2, 0, '/storage/img/avatar/user.png', '4j8rw4EY40XnRa3G2mN2IUXb92HQCD', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(286, 'Annamarie Rodriguez I', 'edurgan@example.com', '$2y$10$IbXQC.4vy./po1ASl0tgFeXcNOWBxiAeG9tnFWqpnwEn309TEKpOC', '7800 Mervin Parks Apt. 323\nHauckstad, NY 71237-2507', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'Di4mkeqvaIDNFzdMmrKTjdVyBvOIby', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(287, 'Miss Savanna Zboncak', 'karina.denesik@example.com', '$2y$10$8Agpuo9mf19LGeZZLBHu1.btoW.biaM2IMCsGXjJyU6HjjxYBqnWC', '8819 Jasper Fall Apt. 997\nSouth Bryonfort, MN 63976-6919', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'UsMezftsMzFjlgoAIzz4FF751SOzkD', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(288, 'Randall Schmitt', 'carolyn.kuhic@example.com', '$2y$10$rIzAnOPNrDSVUeR2mvV0c.u2MvOzH6dLAXb0xXweZ9onNGLR3k9qm', '655 Conn Corner Apt. 497\nLake Beatriceton, NE 17995', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'UQXC9DsEjlJMl3SQHgeb11nix409af', NULL, '2022-03-14 09:21:20', '2022-03-14 09:21:20'),
(289, 'Miss Noelia Wilderman', 'chauncey.baumbach@example.net', '$2y$10$POLHj888/9nv2GzhHCWek.DeVrZ034hLruk01Oajo9rcz.qLex8Zm', '58792 Stehr Tunnel Suite 155\nChaddshire, ME 59556-7167', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'xPYpo8VsxJnMwoDjeOgkCdILHDo0ba', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(290, 'Ernie Bauch', 'esperanza49@example.com', '$2y$10$fpDcJe5VkV86jDFo7sPf0.FsnxtThI4CUG86bKam7NgoPnhrIe3Qu', '25837 Ebony Centers\nEstellamouth, IL 05449', '0989842021', 1, 0, '/storage/img/avatar/user.png', '0BsnEOQ1aOs1hojTGuCNnqQaC2qb8n', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(291, 'Prof. Lolita Denesik', 'acorwin@example.com', '$2y$10$fbkmiCABQUyuIRk9JZ1rGu8HCCZ7CDtqllc5Dbwe/nt.14jEpGanK', '5385 Gabriella Port Apt. 495\nNew Zane, NV 72124', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'KKfERo9bBHS8wJIv75Mvx0P196Nlk0', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(292, 'Dr. Wilburn Jaskolski DVM', 'bpaucek@example.net', '$2y$10$Z6t8OLBPpYjb85oY1SWydeB7J/F/ZLpJ/SH/6lQozRriQeAZM8zJm', '6254 Ethelyn Island\nShaniafort, MD 56256-2476', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'luLixfMKhncGw96YwymRf11XCYblBX', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(293, 'Zane Haley', 'khintz@example.com', '$2y$10$1Duj4LiL7G1mGyNK9attH.Fe3WgjPOW84w1hLCBvhH6vOZ4nquQx.', '360 Leta Passage Suite 839\nChristophebury, NH 87112-4096', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'CdilhJyeTrgaB1gHGOEVUKjXksluzH', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(294, 'Justen Murazik', 'skrajcik@example.org', '$2y$10$li0FLOm1Res0etjYD2BI.OMsmGfNiHHohC/N11y9UHUSTVlJd2NPq', '8107 Conrad Mount\nLake Oswaldoville, NV 61856', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'KX9bGqqhBY78nBY4CVbBQDeF6xuF7t', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(295, 'Mr. Dave Waters', 'walker.boris@example.org', '$2y$10$QaC0zPS0abTI32BZ0a/Ar.cVGggkUFPdJT8bzrmWz/up/DDfwMwau', '6887 Maya Square Apt. 755\nMcCulloughchester, VA 08670-9510', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'W70BZSW5Hnm5l1ulGjwbAhQs7iZUd6', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(296, 'Angeline Beer', 'kohler.cleve@example.com', '$2y$10$/z6DuVwmt.SeXPNd4MWcAePDHPzMl/jlPsQr4E0nie6HXAyGMViLS', '26397 Sallie Union Apt. 106\nCrookshaven, WV 16225-4109', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'Mo4nZquboWPotUnVZnewhNEXjQp0C2', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(297, 'Taya Becker', 'nhuels@example.com', '$2y$10$cW8F96MAiy6Qp2Z/LyhBEuuSx9cUCJ2JHLMaXDAxz9VlXmi3/AFsq', '5245 Block Flat Apt. 937\nKuphalview, KS 56937', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'WMiJdyDYYXwGtqsdnWM1jpypB2vkgD', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(298, 'Graciela Gulgowski', 'eliane.lubowitz@example.net', '$2y$10$r5T5ZPYQzueHGKmpfMnKEO33BavhotAEPPzF5ZtghN2V/mq0mjWgO', '94020 John Mews Suite 080\nMattport, MA 97021-4121', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'WP63LdBCVODP9VUVEhHdlnffvMYQqk', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(299, 'Marcelino Heathcote', 'kaci15@example.org', '$2y$10$hLvAj9pWFCK2UGEUv9.OoOxY2.q5tIaQGpySSPPB2mg7DXAdmyJT6', '4983 Hills Lakes Suite 733\nTownemouth, IN 86218-6603', '0989842021', 2, 0, '/storage/img/avatar/user.png', '9EWKcN9upiAXRwJXfqg0yDYyQ0oyCn', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(300, 'Prof. Syble Lang', 'tobin89@example.org', '$2y$10$kK5wBH0ifUl/g5F.ELSuLuoDJdf3xDJ7uFX2vKEXupcm1tpZRhR/e', '40151 Heidenreich Loop\nLoganburgh, LA 19381', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'kGX6znUH4FR9dMf0wQsuGkOMWX6u9J', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(301, 'Ms. Abigayle Zieme PhD', 'nratke@example.net', '$2y$10$ZyasXejR.qBW2cgelBt3GOu5RRnaaNsq5BoqNe72kysKQgo1FHBxO', '542 Lowe Groves Suite 131\nWintheisershire, WY 61963-0712', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'NXEjInGdtM5P7e72zHgyCA3tysG0db', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(302, 'Henderson Kilback I', 'annabelle37@example.net', '$2y$10$BXTae5VjyuLBnPDms0CKYOK6.yBrWMXAutKbw42gPIoIxaf7ygbzG', '699 Fadel Summit Apt. 200\nHomenickview, KY 76126-3742', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'wzsZHtKVedXMGEzxe8LZgZvFomRKxv', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(303, 'Christopher Kshlerin IV', 'imcdermott@example.com', '$2y$10$rGe6TSTnVlaiWiuEKERSU.t4.kTUO32ZzRKAPTj4cOtRALhcsykt.', '3568 Jerde Drives Apt. 005\nLauramouth, KY 82188', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'WiMvTmBgRAXPPetEhgp4gzvth2ep5b', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(304, 'Prof. Sallie Wisoky', 'kboehm@example.org', '$2y$10$d2Kf8T18yzoZ.UxrymUtDO/0aQJ4JLECWnPMTtcDjF00xXjsVWTGe', '7043 Ima Garden Apt. 447\nNorth Ritaville, SC 65522', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'zk6KcnANdSvadBkVkSvZoV8OqnlWbs', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(305, 'Dr. Amelia Abshire PhD', 'penelope.gutkowski@example.com', '$2y$10$KUjc32S6qAXdmMC8g6ObF.0uLfATCukVZl9Kk3e1FUdVTtrNZLuQ.', '1930 Fadel Way Apt. 918\nKochshire, RI 25569', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'dP1LNus9Ly85jbxPDDbQc86262FyDy', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(306, 'Dr. Joanie Shields', 'maureen65@example.org', '$2y$10$NX.KySu92iVO6/Ti5A70IuDyJsN.Ee4EvEwIt4OHOrDhmc6W5IQX2', '7826 Zula Divide\nLelandburgh, DE 32314', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'cQp7fAnWUbWGqD1TBokkDMaDQe9B9z', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(307, 'Dr. Dorothea Boyer III', 'ostracke@example.com', '$2y$10$o0gWRoCabkbkDEzABsugfOaglIm35/Wqw2lSLVIR63YiMVKG3J6eK', '57002 Kian Tunnel Apt. 452\nSouth Randalmouth, AR 55285-7245', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'FlfysnGrnhPzVHxmoWMWLW5gkAhKKM', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(308, 'Eldridge Hyatt I', 'deckow.conrad@example.net', '$2y$10$bMTf1MFXXklIFPnmfoJc/evE3VRfQjx5jHkTvtdPrmkYDD25Dsvk6', '81000 Forrest Alley\nLake Ellis, WA 47903-5258', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'mbUxEEHqvxwa6WarWbJCKECQOLqrq4', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(309, 'Hyman Schuster', 'greenfelder.elwyn@example.org', '$2y$10$hLc0epdoAx9yXNj5BfvfeeYedaDv6TxKda7QsWg8wSIqB63VcXpqi', '20239 Marcelle Vista Suite 822\nPort Ethyl, MS 29586', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'auT13VgXMhYMMlcnZy0iy9uwSnxN52', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(310, 'Mortimer Mraz', 'delbert.miller@example.org', '$2y$10$.6aLhUbEDtSkXyak8/kIBOsUHjj47P/4giYIIySzdVBzWjDX5SUHW', '89214 Baumbach Mall\nNew Noemishire, ID 05902-2296', '0989842021', 2, 0, '/storage/img/avatar/user.png', 's41E6BNuawdLjxylIhqebs4Ye4MJ5w', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(311, 'Constance Balistreri', 'ublick@example.net', '$2y$10$Di7IS3j7qeoxumWdiBsLxukNSKur8K4ANXjbkzYU1JFAv6b8YyYfm', '76256 Ned Station Apt. 624\nBeckermouth, NE 51307-3726', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'ZL9omQFDKzmzDXJcFUUZT3USixc2xE', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(312, 'Hilda Swaniawski', 'betsy11@example.org', '$2y$10$X9qiPnte2GwOA2XJ0UUNVeaqWBEhnBeWd1vSSUVd3NkwCm20UMNLe', '75706 Eulalia Spur Suite 574\nRueckermouth, SD 93837-0303', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'M6drQjQbkXw5OjC4Ac4ZI34DN6MPyf', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(313, 'Niko Borer', 'brisa.williamson@example.net', '$2y$10$uq4wfFGhVoWvqY9FE1pNJeCJk9uPHGiZEwPUjVd9Qmb8UxsUx8oH2', '96698 Lafayette Road\nNorth Arvid, NJ 50385', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'f7gFtckIBWzjYCKkAPxfvib458NhyP', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(314, 'Rogelio Gottlieb', 'brandon.prohaska@example.net', '$2y$10$4oVy98NwhtP1KrxhEWxv1OK.eoCr8.ajQmGJQ.Lf2pRCGrjf3jK4y', '8330 Joy Parkway Apt. 676\nEinarview, AK 95124-1663', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'rKxNrP4rTurMhnn3OjbH9DzC1vs9HT', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(315, 'Angus Carroll', 'mjacobi@example.org', '$2y$10$EfBvwecI0wZMLxjs7cfHyubyz6LpLsxBQaYZ84oswYwYElMy5wXQe', '64246 Wolff Mount\nMcDermottchester, WY 52475', '0989842021', 2, 0, '/storage/img/avatar/user.png', '3yY4XSszxSD0G0OFagdMS5Zlwh01J1', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(316, 'Reagan Schowalter', 'rowe.betsy@example.com', '$2y$10$roHNjIw92ocTDKeBoH03ueX3ATgG/b/QNcAYiLF8zYL2eItrFRL2u', '60166 Stanford Island Suite 063\nLake Abigale, IN 24318', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'Ct8ZslHjuaF9CwfXSDtQOkRADD7zwf', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(317, 'Emmet Sauer', 'prohaska.rebekah@example.org', '$2y$10$v7OuF1OVwX.Zmcktn28DUun0UC2jVoxk5nZOKcV8j02qKTLrg5krW', '7278 Hayley Hill\nHackettchester, ME 09399-3192', '0989842021', 1, 0, '/storage/img/avatar/user.png', '5W10n9D4TZnbzcIVQHmjtL7S95uzTN', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(318, 'Samanta Daugherty MD', 'nathan.bradtke@example.net', '$2y$10$Z7sWwwhJuFWKHnOZ1QWCyO64D/mQUb.Qorv6MCjqzC18TfNoHBvAS', '3382 Lolita Passage\nCristborough, NJ 04451', '0989842021', 2, 0, '/storage/img/avatar/user.png', '2cjbAHTj683H30DTWWsEkQ96dfqPk3', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(319, 'Daisy Reichert', 'tkilback@example.com', '$2y$10$WFt.7mRVNtW4fphtmatDseN3Tbq4s8x/hw/o/Xf4QIAnvwRqpz9aa', '773 Sister Crossroad Suite 151\nSouth Janie, ND 27808-2170', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'zXgNo8dUA0xQLWhrr0y2astc3VTROS', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(320, 'Michaela Kuhn', 'ccollins@example.com', '$2y$10$kv1tWZVSXx7/EP0obDbXXeyo.omVnCSKRJ32P9vNwWNbhk3XQqu2m', '26453 Gusikowski Circle\nNorth Savionburgh, OK 81550-8382', '0989842021', 1, 0, '/storage/img/avatar/user.png', '8qGtvEwdCPRh6jfFGkWAPFcaVfCl7D', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(321, 'Yvonne Bartell', 'ruecker.annabell@example.net', '$2y$10$j0cWeB2QtDfuU5en5MfnjOIVub566QcmaIXy4hV6rjM/GOjoML.v2', '512 Maggie Summit Apt. 078\nHintzport, ME 38433', '0989842021', 1, 0, '/storage/img/avatar/user.png', '3t4EmYDECHHlAJIIs5SrGMN7DKN24g', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(322, 'Dr. Pansy Schroeder I', 'sammie.kshlerin@example.net', '$2y$10$nVP0N23etKzBb.8c6efY2.0Kk/VmDLShutNStFVhXnSNdgPANbIm.', '628 Josue Extensions Suite 972\nSouth Rosendo, SC 60869', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'dWu8QAHYFyaU1buwmc6ZAgWaL3wNB9', NULL, '2022-03-14 09:21:21', '2022-03-14 09:21:21'),
(323, 'Madisyn Paucek PhD', 'rubye15@example.com', '$2y$10$ppjQVwqyz13ym3hdpqoE0eucopWtqbkQ7cqqS/nimAuBxY9LRInHS', '67416 Frami Shores\nPort Quintenland, MI 12002', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'QSHSpWgDa3ctGr9lq7BsRzLBZcJhMP', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(324, 'Mr. Harley Bosco', 'carroll.brooke@example.com', '$2y$10$THjl1HNWURBs1KYdJLGKB.P1Lszw5yeDOt9KFN8csqWhqT8gRuGD.', '8854 Graham Isle\nCummingsland, NH 33522-1244', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'UWH1oRt9lm8tDwfgCxtrg9mOZXzKJP', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(325, 'Xander Mitchell', 'ldamore@example.com', '$2y$10$rEnBwdQJLAkDMb.G2cBS/.QMmHt1kikMg3d1nvF1Bt.O4X.RPur0S', '83448 Janet Trafficway\nRebeccaville, NC 13541', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'k8zczBhG7TT5MMNtAMO178KAybb2id', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `gender`, `role`, `photo`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(326, 'Mrs. Rossie Schmitt', 'carole03@example.com', '$2y$10$xkIdfGLLacjzBct3YW0bDucfAVoI2PpfOvucMhBddjowPQs480Dw2', '3874 Hermann Views\nDomenicchester, MD 02912-4385', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'ZtmV6xNWLQjcJBYdH39MYq4pwlkaqg', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(327, 'Ms. Sandy Howell Jr.', 'tyree57@example.org', '$2y$10$T.8Uqb7FfFu7USTTFZc4QunRUO5AV5eGWgTjzJamnratxI.3CwFoi', '7410 Pansy Square Apt. 763\nEast Benny, NJ 66308', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'afi60EnShOYmXxSUhEz4U9HhX75d0f', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(328, 'Clifford Pouros', 'tara.boyer@example.com', '$2y$10$R7Mp2.SxKrq0mq6t67SZ/O1tvpGPUZSlRmlkeCbt23ozzbIT22BUO', '3166 McDermott Path Suite 310\nMonahanstad, MA 01365-5103', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'NPyKS4oS1uS8SEi9Et2EAngRv648ge', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(329, 'Malinda Ritchie', 'yjohns@example.com', '$2y$10$/AGRzBjocDpRbTUHFktb7e9.6pa48X2.sq96JzyzeNLwtF0bgSrlO', '15328 Heathcote Freeway\nNew Anastacio, IN 79082-8990', '0989842021', 1, 0, '/storage/img/avatar/user.png', '2kvWY5OSAgrCmMNHgFjQSOQsuwkbm6', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(330, 'Chauncey Heidenreich', 'stoltenberg.bettye@example.net', '$2y$10$ZDZCYiP9NEntXSsHbOaUbu7z/.A8p7lUscT9Mbj4aCCN/pNCPEbUO', '6991 O\'Hara Hollow\nEast Dallin, AL 44857', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'AcqQd5yHrZ3MlPF95kTkVEwtYvBkA9', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(331, 'Armani Lind', 'koby04@example.org', '$2y$10$Syyl9JrDWyyWVNhUyRiSbeYHTte8H0uWrMUFntK4owHPtELS.6Mxq', '8189 Kling Spring\nVeldaton, MT 67550-1069', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'YIHYeZ4e3heLmXEmVn9oua25GdcfYQ', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(332, 'Prof. Marilyne Dooley', 'roberts.karen@example.net', '$2y$10$GdO6bo8VkrfTxbBTRyFF8e7VMuU5J2svKg78/Il1T8PTT1v6/Gbgq', '169 McKenzie Key Apt. 300\nClarechester, IL 44271-3742', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'zFXshDn6wRgcNUX5YbPm8lO6UtV6AC', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(333, 'Ava Beahan', 'gtromp@example.net', '$2y$10$5Aub/nrjcvTj2JX.zcmk.easQwqw5A.fsP5r1/hlg5NOr3pPUi31C', '83830 Hoeger Fields Suite 577\nWest Rileychester, RI 17121', '0989842021', 1, 0, '/storage/img/avatar/user.png', '864r0lKYnrLPpaQJfXm47Nv2tR0ovK', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(334, 'Quincy Ziemann', 'ukreiger@example.org', '$2y$10$Rq7b1J5pSBhMnQRY/LnxXOZZRF01MAYJosCFynxwngBleeBWcEagG', '2041 Kihn Ports Apt. 784\nHillsshire, GA 63758', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'lZkR4nCn1Jh4Qm1kENxJeIlXrI3Nkz', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(335, 'Chesley Spinka', 'jeanette.leannon@example.com', '$2y$10$6SO53K13GrUO/M5/9a9Mkep9Z4HeJAx8w5WVOmXmjz6b.qqDoezkq', '52904 Cole Ports Suite 331\nSouth Darrin, SC 36278', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'Refw4BiaYPkj2rehzyQ5iA8bjNSwiD', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(336, 'Foster Hand', 'tpfannerstill@example.net', '$2y$10$RwpMOTdHimW8efeeSCCpCedYyVevn51YDpdB7VhciJoOPZWW1kTSK', '830 America Ways Suite 589\nSouth Claireberg, NC 80771-1141', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'FNdCrdcsBp4Z9NWzUhFsesaH27hS6X', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(337, 'Gavin Pfannerstill', 'tmedhurst@example.org', '$2y$10$CjHku0/3TbwKG3nGR/dyCudFblZNPM/uzK7Bz0gLc6V9YmmRkKe3m', '48094 Johan View\nCasimerland, UT 81164-7618', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'CesQnLfo89KHSze4dICb8giIYumNNQ', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(338, 'Mrs. Gladyce Spinka', 'jazlyn.heaney@example.org', '$2y$10$hDnZR6hW7pTAzBEu8uYo8u386fbMCcsccOS8ws38RO8HxF7wLOLFW', '6273 Bernita Meadow\nSouth Houston, TX 98674', '0989842021', 0, 0, '/storage/img/avatar/user.png', '9VfC72OX3wZpiS0U8k3kcopx9qsZgX', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(339, 'Rocky Blick', 'erich88@example.com', '$2y$10$YSjh3fD4/RSzgxBR9hXtv.TxDDvRVGAtNP6hnfoZ/Ynf/yGH2xmCe', '5712 Lulu Unions Apt. 696\nPaucekstad, IN 28819-5144', '0989842021', 0, 0, '/storage/img/avatar/user.png', '67nJz7rDHWCaa8rQxGzehS0AfwdpX2', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(340, 'Jennie Schroeder', 'cora.kessler@example.org', '$2y$10$CiVJKbvQBFFLi/Ryaglbiekx7m.74cXrTQQVK2/YACSiDKmnONsDy', '2100 Kohler Locks\nSouth Ismael, SD 04637', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'X21lfHKyoX1vzcq3WlKws3E0wLbMDn', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(341, 'Leila Hoppe', 'nora.dicki@example.com', '$2y$10$d2l.rQS9ytppCppeYW8MCePrJYkY2OllDs0Tka/YlxX75a.IwaqhO', '991 Alf River\nSouth Elijahhaven, IA 03672', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'cZpOp5rh0q2HbzghG7JJC7tFhgT8JA', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(342, 'Dr. Jacques Borer V', 'krajcik.myrtle@example.org', '$2y$10$ndWDdcrG9Zx.J1z614k1u.DIEBHgKNyhtDTWrzzG1W1ULmbb9vHBS', '61079 Hansen Square\nPort Hubert, NE 38418', '0989842021', 0, 0, '/storage/img/avatar/user.png', '9TN6sf617U59YCgfctH8aVQt6QDPqn', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(343, 'Catalina Bartoletti Jr.', 'leuschke.jacey@example.net', '$2y$10$ikLws3XHca2OX8Rhmcg39usRxBtqDGuHE6S76z6Hkz.V158112KVa', '6058 Abernathy Radial Apt. 651\nNorth Gia, LA 49682-4691', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'AxPHWvD3GLNEEaCZdt1uoitevXBxKQ', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(344, 'Merle Quigley', 'alexandria.abbott@example.net', '$2y$10$rjnBOw6o4kB.28v7G/7kOO7rGyARZxtlWF2t7Yy1HQMoJL5hObAZi', '113 Hane Streets\nShanahanbury, MT 87719-1132', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'dGU9b7nMWzp2FoTcx1iumJA51MRLbY', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(345, 'Hilario Fahey I', 'qhintz@example.net', '$2y$10$fUwrnDvGTWmYLSJ2antYOO7ZCXbl.Op5tgdtIBer0lJa11mnc/fay', '6358 Braulio Groves Apt. 352\nCeasarfort, MI 81463', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'riy2vXz4q0MePSQDX9u3OIYo1afyhy', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(346, 'Darrell White', 'treutel.clotilde@example.net', '$2y$10$MSbcxw5or3ctY/hHi6NIlOpRqMoklKNuDDW44Fi/Lb5OuTYYyG1km', '712 Bechtelar Shore Suite 839\nRhiannonchester, SC 54863', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'p4ygUjMrLvhzDft5w7Cswb1RVDGhm7', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(347, 'Ms. Theresa Sipes V', 'zmacejkovic@example.net', '$2y$10$UKJiNDctpVhrKtB6MtQSLuMMHXcxTu6yOgBHQa1xZmhY5d/lF1mPa', '48017 Wisoky Dale Apt. 081\nNew Mitchelview, MO 01269-8994', '0989842021', 2, 0, '/storage/img/avatar/user.png', '2KcLhP049rlw1rFQd24JlYDntO5E9P', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(348, 'Anastacio King III', 'green.raphael@example.com', '$2y$10$3wQhhz6ZOTJ8DhJldsc7QemfWdp1raSvw4jiLTZgSa/ui.DCsmGCS', '56740 Mueller Inlet Suite 112\nParkerport, OK 32089-0980', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'wFLgD5pZAIvXGRHuqBmSMHiILV1RGN', NULL, '2022-03-14 09:21:22', '2022-03-14 09:21:22'),
(349, 'Loraine Dicki', 'martine71@example.net', '$2y$10$r/8fuNZXgijCnapG1Gk2L.E1nO1beccXLdKRaiuRdtYuoygg8meMm', '76379 Maureen Forges Apt. 554\nPort Dulce, PA 95990', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'YfSqj0KB1PvWZpInvUC5fITgmfqRDH', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(350, 'Prof. Walton Quitzon Sr.', 'rkub@example.net', '$2y$10$itqc3kAIgf57JrJqbKfKp.LOUDgZZUvCWNtEln9grEiW0PwnTqlgO', '7458 Wolff Mission\nBernierborough, CT 65812-0404', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'VniBmAsRaGn3aXthJcppvQfawNaHQO', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(351, 'Michael Frami', 'hwillms@example.com', '$2y$10$cxVz9hVD8B7vkOiyekiKKuLM6oNYE29iDYsWAG6S6DQS5fqRUzhq6', '4980 Bailey Radial Apt. 010\nO\'Connerport, DE 09011', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'fviQNitspDGzgXS3QnXf64Sz3jECIm', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(352, 'Thea Steuber', 'elisabeth.runte@example.org', '$2y$10$51vP7hokUgHFAWneBB94NuqmWupquSh2fBf.LWZOg8wUgI2YCjWuO', '679 Ocie Ways Apt. 383\nRosendofort, ND 13106', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'F5YlNsl2QcopMOvg80QqbKWgW0hgAL', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(353, 'Dr. Zackery Ebert', 'marielle37@example.net', '$2y$10$E1Oa65uE/ej22RpXDv/Wp.L4btbv6y8QcVR9e/z4lbsyLBx5EFmE2', '40343 Kreiger Place\nSouth Cordia, AZ 63597-1939', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'e7CwqSpXZrEJJv2ZALlHNOV98rVGPY', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(354, 'Darius Hermann Jr.', 'bernier.dimitri@example.com', '$2y$10$Q1G8AXu4P16gZRruEpqF.uanOsn6gTNwvIFBaVUehGnRsZtkWGEWO', '82563 Hegmann Street Apt. 251\nHagenesview, KY 91679-4028', '0989842021', 1, 0, '/storage/img/avatar/user.png', '4OYO1Qmmu5LQwfXOIBYIyZs5ZfzXUN', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(355, 'Dr. Domenick Russel', 'rrice@example.net', '$2y$10$PcjWqhlmXaj0DYAffPtk.edtfctJ0k21qhd4gMjj0IMS4cg0ppMSu', '373 Susana Alley Apt. 537\nEast Keeley, NC 91959-0076', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'xTJE32NDdU6aC2jWCcd8aEOq0tpVPP', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(356, 'Alf Dach', 'bobbie.kerluke@example.org', '$2y$10$P0jW2n22Bq0JMbsLIqisjOgMMLw7xpGL96JcfgH12Hah6b1XDJDRe', '46277 Kilback Knoll Suite 152\nLake Rosalynborough, MD 31200-4011', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'rZAtABqykO2jHwuaKwHtaFIAMjRdiS', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(357, 'Declan Dach', 'hayes.anastacio@example.org', '$2y$10$1m3wknygqk80H2LxSvCEkemHK/cuGdrgawbczs9ASnfKrdB1r7KH.', '11411 Trisha Overpass\nRamonafort, MT 79519', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'aPY9xps4q5Iop0z9QVNuiO997QuZAS', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(358, 'Bruce Koelpin', 'shane.feeney@example.net', '$2y$10$ods21Tk2w1VvfFTvXOOr7uoybRlhoIgvE67HOEVqaLkr3ury9Lio2', '6354 Bogan Path Suite 265\nJohnnyborough, MD 03594-8437', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'kx7HTLLhHNrI6l2EKhVO1FG5V8rOwA', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(359, 'Helene Kemmer DVM', 'alf60@example.org', '$2y$10$Ro2yLAEXkjSp24BnaSHBLeTrt7gMwYCfkNVqlPciGp0CoyfKx.R3G', '5037 Wyman Shoal Suite 960\nWilliamhaven, MT 95995-4923', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'kERUjvd6zY3ixa1b0pK6z4DvU0MPyz', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(360, 'Cyril Fay', 'tina.corwin@example.net', '$2y$10$R.R0M6i.fAPGolzk1QM/cufrD7cHDK.1EKS2YX5po6L2ttjSiPKUG', '7488 Daugherty Corners Apt. 837\nSouth Nickolasmouth, AL 27568', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'oHApm4nkPDWG9tgNmlTbxLlqMf2ukB', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(361, 'Marquise Hoeger', 'sschmidt@example.com', '$2y$10$m2YdVMos315vU4qgmOIZDuSS6SyictwjvFdVF8q.UEpToYmXIKUw6', '194 Parker Drive\nNorth Willamouth, AL 94646-7024', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'gayBYltuu8Yp99CkbVwfuAJngOiXuf', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(362, 'Dr. Arturo Corkery', 'kelli.ankunding@example.com', '$2y$10$EImjjRsCUTsG3dj2Y7sNNu0GLBrbsdo32eAOl/ITCy4dltrRI3VZm', '25477 Hamill Turnpike Suite 197\nLarkinchester, AZ 75046-5162', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'np1BlkR8i02oo9KK09Atpe6A7srJ3P', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(363, 'Grady Vandervort', 'casper.giovanni@example.com', '$2y$10$83vN.dGYUSk3tF.qoB.nXOZwjOa54gWSVWAH7OdCAmRieKwu7afUK', '8033 Glover Streets\nDeionland, TN 26838-9708', '0989842021', 0, 0, '/storage/img/avatar/user.png', '88VD8VO6v9clZARYrikAHkZ2enLDl5', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(364, 'Mr. Orville Spinka', 'mziemann@example.org', '$2y$10$Q/ocAexGCIIzkRMEG19dYOqrBeNcPNw5T5qPu7ozJw0SW7U48YMPK', '975 Sister Parkways\nTowneport, AZ 89817', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'BQ6q2Rc0mBWKgA3YP2Z8UAl3SOjiBf', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(365, 'Mr. Jaime Heathcote', 'felton89@example.net', '$2y$10$s4fuDJvWVOunQd1XqqPPOue.f1Ks3nHWdz7QmXVXY5aEXr2Jdgla2', '63499 Krista Drives Suite 975\nNew Donatostad, KS 11931', '0989842021', 1, 0, '/storage/img/avatar/user.png', '7F2roLhYMkKJg0CJV3FOlNknG4XYYi', NULL, '2022-03-14 09:21:23', '2022-03-14 09:21:23'),
(366, 'Alessia Koepp', 'schneider.avery@example.net', '$2y$10$urk5wEEKkHJBbWu5vi8IEuNSQlwMd.gz9.btchpThknNWeeBZPz06', '744 Schimmel Stravenue Apt. 354\nRaubury, NH 01365', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'SokVoutrnPSzRdv07UiqKhXFnbMKbm', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(367, 'Salvador Ratke', 'kozey.kyle@example.net', '$2y$10$dVIcA4iNimHrvSb2afm7duZ4wOSM4gxk0eh.YF0xJNOC2zzSDXjlW', '8302 Miller Knolls\nLake Carolynmouth, GA 90987', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'bO52WICqfKVru99456VZxkgAN26Hm9', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(368, 'Heber Stark', 'hackett.elvie@example.com', '$2y$10$WfWM3FW508TEefK97O3lL.vkFDljLRq/y557OZ2yg.ppoEvhFE4nW', '2954 Pouros Causeway Apt. 459\nAdaland, MO 19492-5416', '0989842021', 0, 0, '/storage/img/avatar/user.png', 't53cvuWSkgqpdpFv0EWORKchqIg9cz', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(369, 'Friedrich Rice', 'abagail.shanahan@example.org', '$2y$10$3Lzk01hQThRXaQ5x6oX7A.tUTj9oa45OqGI69zvacAEE1Jdon4c82', '652 Lebsack Ville Apt. 823\nPort Annamarieburgh, NJ 62064', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'aNIhhfVYemSgE9BGym2GCr9dB2MurP', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(370, 'Janae Cummerata', 'connelly.declan@example.net', '$2y$10$1/MrL2Xdx5PWgQdyh2JF5eLJ0bBLdmL6TZy8KgsNY2JvmosxFAWu2', '53122 Shyanne Unions Suite 271\nNorth Ursulaland, NJ 52575-5397', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'v3GcohJ19bTQ82UHfMcJVhNWYTtcWE', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(371, 'Noel Kemmer Jr.', 'zeichmann@example.org', '$2y$10$s24UUt3hqfPITFpKlbyePO4XKJVrvcaw51vZoU.91v1n8mkjKfrnm', '973 Will Squares Suite 819\nPort Clotilde, WY 44880', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'VCZ8cOrD0Zfl0IS3KaRc5BfHuBxFhr', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(372, 'Linwood Botsford', 'ffisher@example.org', '$2y$10$xdjBsZsXBl7Mbb.blmte3OgxoLt5Q2gE56.sqg3ErlZkFI5Ah0gOK', '211 Schuppe Port\nNew Verlie, NH 32258-4428', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'kmOVF9yozU3R1415YlNfkdegtJWjcZ', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(373, 'Roberto Hahn II', 'awolff@example.com', '$2y$10$iZKqLYPRUIqoTFBmWaIE8eEU4gH4UBTAJsl07qhQoXtGT/sn1.MFq', '7055 Evan Springs\nGoldnerberg, WI 78726', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'sIkBhiHCdfdWRk15Nyl80nULhkvh85', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(374, 'Myrl Brakus', 'hoeger.karine@example.org', '$2y$10$miXIeOeuk1Xco9RA.k7fz.11qSJCLBN01NJjF/1PnFHXoyjDzfb3W', '772 Feil Village Suite 802\nOberbrunnerhaven, GA 10292', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'hLgeaq6NB6sYbUKqMb9IRucJQr4iu7', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(375, 'Birdie Connelly', 'charles.beatty@example.org', '$2y$10$/zQXt3F5n8ieYuPYimGnuOCHlq8GZ6Kpf.Dw6nObabo9e9gF3FR3u', '1475 Donnelly Loaf Suite 859\nDavisview, LA 14214-8651', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'Is9G9Q6YjKBmzSVlDE2YIqgLunCSiT', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(376, 'Isabell Johns', 'cartwright.marina@example.net', '$2y$10$PlAS1Vo/QXcPZj5y8C7BQO/tRbztUC1vQDSiVKrSeF4LBVHoU9Ov.', '9019 Keegan Freeway Apt. 471\nEast Shannon, KS 84633', '0989842021', 0, 0, '/storage/img/avatar/user.png', '52Hs8XTgCRdGcVHjM3Q6ID5rMIPLmr', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(377, 'Alva Goyette', 'johnson.steuber@example.com', '$2y$10$Fsq3ukac7nLBvZP9DDamPO0v8PC8vDX8ELqXqswI13AHa47LsKOEi', '3751 Daisha Bypass Suite 978\nEast Melissa, TX 03405', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'TbIeHCbyb6gb2p9n8eQjTwJ71mY8fn', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(378, 'Breanne Jakubowski', 'ebert.lulu@example.org', '$2y$10$Ojbnh51c2Q5dlofZLirdUehITbidM61qMrnMHxLvZX9L2thhWhzTO', '15392 Gutmann Plaza Suite 445\nNorth Riley, OR 29816-3839', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'G8oFfwT8yQ3d4MHPQnuDkfGs4BEcO7', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(379, 'Gene Goyette IV', 'feil.zackary@example.org', '$2y$10$4cfILNwt6Nd2Tg6bR0I4OOopJko1h/saC3amWVmmp8ExIK81Zt.N6', '78550 Ahmad Hill\nSouth Sigurdview, NH 40587-5700', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'PQ0NBBmDHqN6UZSqINCaOIDmCuvGjY', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(380, 'Andrew Trantow II', 'joseph.stamm@example.net', '$2y$10$Y/nV/kbdhnrbCjziPw06t.uGvdefP3dEyDFajN1K6lQ.MCQPxYL.G', '8447 Trevor Forge\nSpencershire, WV 10199-9922', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'NwPzCvHxmf1lWhzrFYYGYYUPbTgEEm', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(381, 'Ms. Clementine Bednar', 'olin13@example.net', '$2y$10$W1.IPiBcBHuVnaQmStb6FOSeSXHVm5BI7OYvpPXU0HafL38Kujsny', '37197 Fausto Meadows\nIsmaelland, UT 07207', '0989842021', 0, 0, '/storage/img/avatar/user.png', '18OcL3BI4nJphAZGnLoP6CqTS5CFuf', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(382, 'Luz Stroman', 'alayna.ratke@example.org', '$2y$10$wCrbkrvaE9K.66FQGSly6./WEqrZ.LjQ9..ztV1Za7my2Ss7h.fCq', '49476 Ernest Streets\nEast Orvillefurt, ID 13748-8452', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'PxL8BQr88bPqc3dW14UaG57iE9uE6O', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(383, 'Prof. Merlin Douglas Jr.', 'camilla97@example.net', '$2y$10$Mv4hzejEkYlUL4CNw/YO/.cdM75d21YDVLJOI7AGcR2F.8U7Wgshe', '3374 Nannie Flat\nArielside, UT 11189', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'fGkywv1Owe8xJCaLGGWAj4umGnDL2J', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(384, 'Prof. Ahmed Olson PhD', 'kris.wilkinson@example.org', '$2y$10$XtS9CH5GsJh6QJRHZ7FNfuyNjMV5r18xg3108N1o.DcDCwxHtpw8G', '9845 Isidro Place Apt. 176\nNew Felicitymouth, SD 09161-0482', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'H5NZ5pCGNDneeayDpDWvbg4Rft8iAc', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(385, 'Miss Karine Yundt Sr.', 'uvon@example.com', '$2y$10$D78MwKSgs3bzkFEc6Z7z8e9JCkElfPCCfBeGggykqZtFdm4DV6AEi', '2789 Millie Drive\nColtenfurt, MA 34587-7266', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'OphR0KiBF8SqcOQaumDp0faFuQUYmQ', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(386, 'Kaylah Conn', 'della.wunsch@example.net', '$2y$10$VbjriiTmWSuG3w.9A1XmCOEX/CmhI6j2qJXWBAMINpBDkdEOf/rG6', '220 Welch Passage Suite 834\nNew Callieview, AL 67761-1967', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'HXsXc0PQbnRdBABWrcBfcipg0Ectfn', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(387, 'Ernestina Ledner', 'rashawn.kunze@example.net', '$2y$10$XpQVxugRd4D4cKQpGYS0V.95g7GlDyVqbB8L3UMf.iXmncCbi4poC', '8301 Eino Turnpike Apt. 562\nNorth Rosamondfurt, NE 03462', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'vydO6A4aaLhuzL093fWXdecuXLQNHk', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(388, 'Larry Gerhold', 'veum.ollie@example.com', '$2y$10$ur7mFZd/ANta1Ff3fJb7q.vrIfCHNCfi4aD6CEoBvergG2Ne5bjBm', '149 Miller Isle Apt. 782\nNew Chasechester, WV 01002', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'qFx1OrayBG3q1gcudtQbS75wRJWkyN', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(389, 'Elyssa Grady', 'freeda55@example.com', '$2y$10$fd3GwbrIv85j3v2yj5Js4.1HrD/P372H6BffYeCOAX1MP2o/PMnCu', '23971 Glennie Manor Apt. 434\nNew Albina, CO 08917', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'FaT1KT70S1l2Wvlh17MDESBKwO7eUU', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(390, 'Elisa Gleason', 'jordy56@example.org', '$2y$10$WpRtca7ByxwbMDR9UPpmteZM2GwSCbqeD//TbBIv4EmlX92ROJKVa', '5740 Lind Turnpike\nSchmelerfurt, NJ 76398-1019', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'Xo17wqPnauVAincSmJGKSkwS0OiRAp', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(391, 'Ms. Shaylee Metz', 'danial85@example.net', '$2y$10$GAiGq6ey3C7E2tBnQ5aMyeLVxODMpSpEGqcSg.t6d1OQDbucUyN3q', '827 Odessa Union Suite 727\nSouth Nolanton, DC 76473', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'Vr3Cb1HesIBWPZyMP4VSEWPQKt89rX', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(392, 'Dr. Modesto Conn PhD', 'dashawn.collins@example.org', '$2y$10$0Fgl8PjLrBvdtPzBG56l1e/YMv17bhG99OQfJCcWaFpkzVhZYEoly', '3926 Lelah Neck Apt. 424\nKreigerborough, ND 77791', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'c6oPAFRH7VT9mwHeafj0U1GaRTI7QF', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(393, 'Ahmad Mosciski', 'daniel.reece@example.net', '$2y$10$CIO3WS72gV9EO45enNlCx.vRVOPrm6Yx.FzVej1c5N7.zeEfgx.XW', '143 Hessel Ridge\nLake Loycetown, OR 91150-7487', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'uYrl3RsfhoY7TCE7E0zLYFeeyZ7V35', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(394, 'Mr. Martin Shields', 'xcummerata@example.net', '$2y$10$O/z8NAEtnvrcuzBWPeMKx.yVU/EBRfdCwRxH6GFIwjVL6xMLH5NqG', '154 Mills Loaf Apt. 291\nWest Walton, FL 19412', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'FCoRksbTCye9d9PcVXyNeUb7Pk2AlK', NULL, '2022-03-14 09:21:24', '2022-03-14 09:21:24'),
(395, 'Nigel Schuster', 'keagan.trantow@example.net', '$2y$10$nCw9W8DOqXLZvfsoG4B8Z.L6sr2yn6T0VTMB03upIsiX8/GjT9OFC', '8709 Ellis Hills\nJohnnieshire, ME 77281-8828', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'T7HI5ha9pVQ0MzL47gzY0fEu2EuROA', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(396, 'Kathlyn Weissnat Jr.', 'neil22@example.net', '$2y$10$wn6opATlhPpnGFngMRpsUObx8PZjhTUgW6Af4Oib5/5EjAVHBbzxa', '59566 Savanna Stravenue Apt. 169\nVernville, GA 42990', '0989842021', 0, 0, '/storage/img/avatar/user.png', '0r6I6ShZY2SS13igEGio2rsrht3LwJ', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(397, 'Finn Muller', 'veum.joan@example.org', '$2y$10$MQcpmiGCJesjQNXkpAzHOO0HmbK4acxC.IHT5wpbhoB9lnMQbmG8q', '23241 Willms Dale\nMariamburgh, WA 55890', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'RqfJxMsWDH5pzXgCuMiZ1sdCz8LDtn', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(398, 'Helmer Schinner', 'hkoch@example.com', '$2y$10$jm9l5QPkLxS2cTD.Gicqae0IAsHZJaE1BeaZwnYRsDKj1VSYpRzFa', '1574 Clinton Path\nJackelineton, NJ 43586', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'vaQmkP3XIdyG1Zz93gd9VqIWKGnfsf', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(399, 'Esther Homenick', 'laura.sporer@example.org', '$2y$10$XjJ8KCUgZr2u5BGDVjOVQ.oohiCz6vl2XUnUTg7eB0kpwdWdPtD/2', '9204 Klein Creek\nWest Finnmouth, FL 65081-3423', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'Uu85DGSCw5VV7zmPCKKpGaCz2SUDSH', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(400, 'Shyanne Waters', 'vritchie@example.org', '$2y$10$Kmsp3F8aIIGR49K4Id0pZu4cshWLgkljyH5.xZf3X/WknQI7UlAX.', '96375 Ruecker Islands Apt. 507\nWest Abbie, HI 24544', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'rwx94N59YJhpwRQDqlvKkMfE1f1OJn', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(401, 'Kiara West MD', 'elittel@example.net', '$2y$10$3w47KueeXTwuqE3VRf1wMunBjAD50DZAKO0S/UNOpSRn4t3XzWFgK', '5469 Nienow Stravenue\nPort Kobeview, CO 59181', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'GmdLjjxWg9AQbJ2jQsxnVeUXtjh71q', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(402, 'Pietro Simonis', 'estella.lemke@example.org', '$2y$10$gWB9.bQUA1KIgaX122COmOFZvFe7DAXdovcLSmNI5hB/iuAoe3N9m', '439 Mayer Terrace Suite 435\nSouth Cheyanne, LA 48059-5789', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'NdJToiyq5lVuSH4aGFZrNx5vltwQpb', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(403, 'Dr. Skyla Runolfsson', 'juanita.mcclure@example.com', '$2y$10$AlSilt24jCCf4VXK.rifU.1tduzHXV7vWY3cUJXSGx8Wv8XaUx1pa', '251 Glover Shores\nWalkermouth, AZ 14545', '0989842021', 0, 0, '/storage/img/avatar/user.png', '13v32mM8Wys6vFLMcVmvTcZFsnks9K', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(404, 'Dr. Damian Wiegand', 'mraz.hipolito@example.com', '$2y$10$V9WMSvEJpoWf/1w8PjbUa.YUw/0Navhy5X4rt.STjdgXlWHyewEda', '526 Earline Mountain\nNew Rogerhaven, ME 17826-3591', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'ZmBjm4J8ZdUSd0uWjJMMHUw0Cowr8n', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(405, 'Joy Abernathy', 'mariane99@example.net', '$2y$10$2yV5/gQq.c42A.cYHkDBKerVekGbsazLKr0BFq6ZnO7v5d.WHRaLS', '1244 Erna Square Apt. 442\nKatarinaville, AR 01292', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'cIgapXq28GR4q0DE81hBo3OSZlgftW', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(406, 'Osbaldo Torphy III', 'melyssa.kilback@example.net', '$2y$10$oVzE.1d4cj66ix8kx7A3SuK4Cd.X1vlBkSBRV9OE6wD9D5xoOuJQ2', '5466 Baby Spurs\nDavisberg, AR 56051', '0989842021', 1, 0, '/storage/img/avatar/user.png', 's2wl3yMXZ6FxQRni8FQftHalYVdZQz', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(407, 'Sabrina Emard IV', 'isauer@example.org', '$2y$10$EpaIq2QPTTN3xevqM6qBiu8o25oBAY8V2au99YZwdbtIzQQ65lEo.', '7199 Kris Shoals Apt. 166\nSouth Anderson, MO 46417-4552', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'BCpvcPFpS0I3YQ0QN1YMgCJBrxYjEF', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(408, 'Mariah Goyette', 'narciso60@example.net', '$2y$10$ZuZIiwL0hHOfokI8XR9HVue6xf6yBxWl.Nx4ieO2AJAg/Jolltu66', '9418 Wellington Heights\nEast Myrtieside, ME 28250', '0989842021', 1, 0, '/storage/img/avatar/user.png', '9MqDtOn8Fi41iLhAmnF4QvinHnCKOp', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(409, 'Cole Satterfield Jr.', 'sanford.adelia@example.org', '$2y$10$mYCqRt11JFbSLhiZfDkgyeS4TBExJJf69UtD2dUrVhxvWOOwYgCeC', '2776 Elliot Pike Apt. 386\nLake Demarcofort, WV 42048-1434', '0989842021', 0, 0, '/storage/img/avatar/user.png', '3Exw8iwQ0R751ymDdqISp7778qReSo', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(410, 'Prof. Jolie Hahn DVM', 'julianne.hahn@example.net', '$2y$10$MOSY9/xGACa.PCQsVvm55uznHhHBWY1GbRiMMH9PdhGRBxkwUAZeK', '83636 Aufderhar Park\nPagacport, TN 91856', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'ihfhoflGkVq7ByHgsoHx5IfuaKdO1M', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(411, 'Dr. Kailey Harris IV', 'koepp.eunice@example.com', '$2y$10$spGDSrsqTsMCnxnyG6DgbufXmFl3HdasNl9QZZMPgdlHy1ar6Cpzi', '468 Reymundo Throughway Suite 890\nPort Gerhardburgh, ID 60525-0539', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'kKswGf4Re1zVcv5yrzFFPjHwqvoUIc', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(412, 'Dr. Joelle Schulist', 'giovanna.wisozk@example.org', '$2y$10$KTUDPjlKDyQKR8iAcelfeOIZXF8jtaJ8D5j4z4vR0Sh0vcTpJQeF2', '52985 Glover Wall\nWest Amparo, NJ 84145', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'J3rGLuiznlBGnqS27uHrH4MNV2Gi4b', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(413, 'Anika Prohaska', 'berniece40@example.com', '$2y$10$HXAEZhRzTJobKjrAWin7JOJaM/vsZXWmdTJzeHvC0/z6uipSP5Fxa', '508 Eudora Passage\nWest Averymouth, MT 50961-7385', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'WZ4hYpNXC5AaVc8tLVsHVXeS6NAfE2', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(414, 'Prof. Garrett Towne', 'jennie.rutherford@example.org', '$2y$10$qw0UW4VZtgserw5RwdqVT.5ZinBqJFgnJMV2bglIUTtxmIwd2oexG', '899 Julien Springs Suite 778\nBrakusberg, HI 85676', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'Sy9IP4LHDRuQHIkljHRHSI2zPu6yqb', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(415, 'Lavinia Zulauf', 'khalid32@example.net', '$2y$10$PCeI4TaR1gZylNyV68d7aOwBSKD5lZKY9KXH5TmPOI.sUTzQ8jDam', '12769 Dorothea Village Apt. 775\nMohrborough, AK 07222-4110', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'tnbxhbqKL73tM0PSKq5Burnu4NykXQ', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(416, 'Rubie Marvin', 'qkemmer@example.com', '$2y$10$604cDgYRuBVJZztK/fH3Ge.CMB9mekooCWXeqgHsSqcqhmCV2.Qgy', '123 Cole Branch Suite 286\nBerenicechester, WY 72307-8039', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'EdWGD873GnqeXpMGLqsD9OmMnmCbWv', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(417, 'Vernie Braun', 'renner.naomie@example.com', '$2y$10$hbGUKJJOZmusWQ2zHxTP5ORYTLCcOvu1HjUa2bTVQ8J6ckJ7FGqmm', '595 Hane Radial Suite 892\nEast Gunnarland, KY 31473-8786', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'jyA9WpTMlVr5diZ4vUHrJlhOLmEDoT', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(418, 'Aisha Jerde', 'bertha43@example.org', '$2y$10$CZJxGSVaki8nD4VE4Q6ytOFtTKQlle0jKWiouCYcH6bMk2rIvXWR6', '8384 Luella Ranch\nHeaneystad, ND 30898', '0989842021', 1, 0, '/storage/img/avatar/user.png', '6jGaUNGuIr3Ry0yiOwoMXZzma676Sc', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(419, 'Thalia Kilback', 'yschowalter@example.org', '$2y$10$1PXc4RvpCRruedvL1tq7Dud3c3Hv2OCI7uoKBQEU4JMGQad5zE5eK', '938 Bergnaum Villages\nNew Kiera, SC 56590-8982', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'GhA5YWvRHged6ebF8VFQFN1YvNd9p9', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(420, 'Grant Heller I', 'unikolaus@example.org', '$2y$10$MCaj3Kxir2Mawk0e34eb5u5xT6U3gvoNAsXPi5yyxtLooE2woeJPy', '302 Farrell Village Suite 609\nNew Micheal, AR 25782', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'hY1ApOjLNsysZYj3ciiYTBKpkHV4Li', NULL, '2022-03-14 09:21:25', '2022-03-14 09:21:25'),
(421, 'Mrs. Karine Bernier IV', 'kmarquardt@example.com', '$2y$10$DkJynw.y7PgMI1AffqxgpeP0fPwIQASf5aWDmudezP2CCTPyusT.K', '1979 Thompson Gardens\nLake Alisa, HI 23963-4880', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'ZCycxGBL3BURu7F6NZEoo7qFl3rMnS', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(422, 'Brycen Jaskolski', 'jacklyn52@example.org', '$2y$10$ZHDJootkWqwnM4Hm9B5fFOm6QrObHMylBCr89eJsmeneO83rZNxNy', '700 Estell Ranch\nSouth Ceasar, NC 21220-4793', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'dPOpfMdEeHkyctQSqcnA6qdBf6mOvL', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(423, 'Alfred Nikolaus', 'bpowlowski@example.org', '$2y$10$BoH/LMJq2O5Dhp21usxkduw7gj.7Hv28i30rsRugmsBv6FlwScIHa', '1174 Stark Lodge\nSouth Alexisview, MS 46075-9888', '0989842021', 0, 0, '/storage/img/avatar/user.png', '8qAtiLJ2SWy6OTp5xfo4s0ghpcZghR', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(424, 'Josephine Hettinger', 'sabina27@example.org', '$2y$10$6kyjh2bej/laOZJQx8SsqOlivI7JM9md06AFIP0n94KxEKL7i5IGe', '46314 Maggie Point\nNew Keshaunmouth, IA 02577-4578', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'c4a9IuKcyOqtoxyBZhYOOxxwOnOP8A', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(425, 'Katrine Reichert', 'medhurst.okey@example.org', '$2y$10$5BbMe1Hnzsb0MBAX5m9.CejHM0QosF6yRgctSG.ut9c4gmsZXFcBO', '629 Rubye Canyon\nWestonhaven, FL 41070-5780', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'yNNQv7RRc5unswlWU3IpIgTIn0VZc9', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(426, 'Dimitri Donnelly', 'monahan.jacynthe@example.com', '$2y$10$7TC5rIflKHirSvGfkjQIkOIYFfiq4fKhVFe7AzukA3FHnsZb8WfdK', '982 Florida Shoal Suite 872\nSouth Ernestland, KY 82890', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'IxUTbn1Qy29ZHiEvh5hEc2UUsWqW0a', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(427, 'Dora Muller', 'chad96@example.org', '$2y$10$wwzgWFXfVe8H5MxUdY4vpOAOg44QHbILMnO.JkhEkKS2udNdTPW2i', '43833 Mohammed Drive Apt. 713\nSouth Abigale, TX 46995', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'IQDxmyiJB2Ifaa3xoEs85XAJw1iJbL', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(428, 'Kristina Macejkovic', 'xhuel@example.net', '$2y$10$g.mDZjOpxOnsWA36XxFpsO0VDDhAVrBCw/HhdGLVniTTXhIhdFerG', '28224 Beier Ramp\nNew Kali, NY 20961', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'YRGHRqwAzNgvtUiTkPARQZkgNQjP3D', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(429, 'Mrs. Jakayla Bergnaum', 'ktowne@example.net', '$2y$10$Gv1aytjV0Tde5luIgDYeRO71OvzGjcxK8fx5dI5mXakGoxvmEncC2', '6537 Neoma Mountain\nStiedemannmouth, PA 13052-6845', '0989842021', 0, 0, '/storage/img/avatar/user.png', '72FIcnL7XQZXChZXe8eiXAcSzi27He', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(430, 'Miller Torp IV', 'sharon32@example.org', '$2y$10$JcW5xeIlbP9AMZJ2HL9mBOTOldaI6iA/Ceo7F4fhpssgvGxmH7v5C', '39015 Rodriguez Shoal Suite 609\nLake Wade, LA 14642-6379', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'zcqGjbD7b5f4mGusjKSeslcEJKIwsK', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(431, 'Dr. Dewitt VonRueden', 'mellie46@example.net', '$2y$10$KbzrPPhZElKVLicoEmaWUeLoMvoiA16Qulyjb/rEJ/OqjNZYU0ZT6', '68250 Bartell Parkways\nSouth Dejonton, IA 46160', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'xCLNaAbDFXvB1OFMr29MkeVJKoZYJ5', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(432, 'Rowan Pfeffer', 'frederic.ratke@example.org', '$2y$10$JVCIyqbWnRXYsNqeM22FkORxA.1v/fapy3RsWLWlQu2uJFjrn5Ali', '4284 Boyd Plains Apt. 126\nEast Tellyton, GA 56647-0356', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'ZbQ6YiWXwuVhqgxD3Eb8eU6rxGRomt', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(433, 'Jettie Schiller', 'ohara.jaylon@example.com', '$2y$10$fnOvHCrGiHuvZFPQ2KEEWucLKmIzPhhDEa2Iwvz4ypCpU7zYlKq4q', '78937 Leland Prairie\nWest Michellechester, ID 29957-1861', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'U3XeZmCJ0FK8t5nNdkUwUe1WOgDIGI', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(434, 'Ludie Blanda', 'laurine.pollich@example.net', '$2y$10$27XIHDaHUdVGvvT78kqJveXFdtRJ.VtMvFJSmmnoEMTrVdxeS3GKm', '958 Harris Mountain\nPort Kareemmouth, ID 24387-2474', '0989842021', 0, 0, '/storage/img/avatar/user.png', '1zbgV5g3aat4LHHnkbyCHQOG3Xj4qK', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(435, 'Dr. Aimee Okuneva DVM', 'estel.zboncak@example.com', '$2y$10$KBVQH6kWnkoHkyCXUQM0fezTprIsxciMAHPz6nHidu7Aqu2eucIWy', '917 Ida Light\nOttisberg, HI 71189', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'AZJiVgKpjg8hHl6LUv7BX9xTnVfNCe', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(436, 'Durward Leuschke', 'florida27@example.net', '$2y$10$CXgPMOlTis9.SMAAF19GZeuiZOZTTLtq7umdhDdwJFqORDs/CsZLi', '51192 Sonya Harbor Apt. 753\nHaileeview, HI 58955', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'GW8pdjtb3VyOuqqBqXhCZWriPyqkaS', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(437, 'Terry Dooley', 'ralph53@example.net', '$2y$10$VYXiAcJmt9XP3c.yuU/B9.uerutPxSO.gm2FYVItPa3LR4PmCGUQ2', '4491 Braeden Fall Apt. 069\nNew Kianville, AK 06547', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'R9rYjFtco8Ja9b59JrhEFl81byrueX', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(438, 'Mr. Junius Boyle Sr.', 'keeling.easton@example.net', '$2y$10$4Zhbpf8hf8OYRkG9PFfQcOIzW.uMuHzGFCAXP4b88mXh13BdXZVQy', '28808 Zechariah Run\nTerenceland, GA 50539-1412', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'owwzkEu51PZM7NqUk2p06j7KkECrBU', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(439, 'Berniece Rippin', 'renner.merlin@example.org', '$2y$10$BpqTNXvyKEGtGxNLnPK2zeYjqy9gFtlUcFTY457/gyydumzDJvRYu', '595 Mante Heights Apt. 448\nNew Natview, MT 40678', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'RYpnII08ydZUvyqZ1kpnctpG0Y5OoL', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(440, 'Prof. Barton Huel', 'metz.makenna@example.org', '$2y$10$HDQdAstQTk/9IujLEZLesOXaLIBGS5HDZc4XsnBWLtPZm7nfqTCp6', '4821 Concepcion Flat\nWest Noahfurt, VT 89854', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'TsDbeEIa635f0i8nufl4BuB0bF9w82', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(441, 'Ike Lehner', 'daugherty.jonathan@example.net', '$2y$10$lGajnpZpIA/2Ebne/LBQpeL1nvonFQXg65dE3u7uJCNDWfEieNvXO', '48270 Hartmann Lodge\nRaymondport, NE 90854', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'tupvXJ3luMeSUXx3M5pQg942fUwyTa', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(442, 'Edwin Crona', 'juliet.mertz@example.com', '$2y$10$Y0MjWERk6E01zaFZUULfmuYZp3Lb/HQrQPAKTw6xAhmjQnQYS.YkS', '24186 Lubowitz Court Apt. 377\nWilmaburgh, MN 88993', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'iTiOtyNzvWDcwnPHa0qXD5HUKCNRqO', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(443, 'Jason Hill Sr.', 'lambert.trantow@example.net', '$2y$10$RR7lptLPrbnWjijZxBkB9O5knotJXRig6ZIO/ucRSbe2ljf3360dS', '219 Janessa Overpass Apt. 548\nLibbietown, UT 76138', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'OMmvHV0OSqbYDcB5yL6jj88371sYbD', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(444, 'Jordon Altenwerth', 'coty.leannon@example.net', '$2y$10$n6MeyHF0/dSWr41E2s4EzenTO7wx10IDjPOmiKUP7JBCiAAQ8iIyS', '172 Dawn Forest\nNorth Anaisfurt, AZ 52572', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'VTvOCDjQjNpmEY0ms9N7DAQ7EHZaXF', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(445, 'Gideon Schroeder', 'catharine81@example.org', '$2y$10$Hle4rOtO6RX41n6rJU20v.mbi7jvSQgJP6EMjQx9LV94T6Dm2iSP2', '39575 Anderson Crescent\nJakubowskitown, NJ 00131', '0989842021', 0, 0, '/storage/img/avatar/user.png', '8kR25VDoLbRbtIrfN5G40P2ULSy7CA', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(446, 'Miss Annamae Kshlerin', 'vmcglynn@example.org', '$2y$10$O.bCWs42CaNBwpjSjvdNYuqZiT7Gn8iiF.bqE.idPMpwTjW14OzZe', '64898 Moore Island Apt. 831\nPort Dawson, CO 13403', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'Y94mzSLbJi6EPRUe5hKMYYCbIfivT9', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(447, 'Shanny Denesik', 'casimir.ebert@example.org', '$2y$10$KObZFkqcsT8xeB/3dU/CNOhGqs8/a9rKbcnf0RuabfV/8FTcJvjYy', '910 Addie Burg Apt. 408\nAriellefurt, TN 47742-7713', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'oR0aL20i0qLyWmCRsjZe8t2dfao8zE', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(448, 'Alize Schinner', 'haley.leif@example.com', '$2y$10$nfeB29BpHivqkP4HCLbLr.jnuC7Mvr5eJAxGKEWAf40P4GdGCon.6', '25493 Cassin Course\nLake Jeffport, CT 40604', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'f7nNIPHVw8uJ0WdcXtzHyLmNpxhKpU', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(449, 'Dr. Milton Koch Sr.', 'lucy82@example.net', '$2y$10$nPHjwVgjspAgc9kgFntoLOkQqABjKUVtoWdM9oRpHWcyjCs827RDu', '13823 Kailey Loaf Suite 049\nEribertostad, AL 16766-9975', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'DHBqS4LNUwxqAVcBTeMnfoAU8ffUg8', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(450, 'Dr. Hoyt Nitzsche', 'chase.okon@example.org', '$2y$10$m.RExtgXBs6tWxWM7YU5g.uEXjF07fAZ64b1SwqsbUztJ04kl2i8y', '684 Connelly Valley Apt. 954\nDominichaven, CA 98320-1048', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'TADmADGeVIZc60F9oPKsRu7Fw1ZfbX', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(451, 'Ms. Nikita Koelpin', 'darrel38@example.org', '$2y$10$2em/4yrKh2QBI0BuXdS2Qu1ybuXeQlQoMyVTww.iYVOUdRJEMrcJu', '46423 Hirthe Branch\nKassulkemouth, MI 04861', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'SFqH27eqBYRtf8ecY0YhefkDa5wELk', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(452, 'Ernestine Crist', 'zcarter@example.com', '$2y$10$I3EuT8roUH6/JskC.QSKLueMmi23LfQYHEnG4CzVKFw0cxeEFezdS', '690 Rolfson Rue Suite 798\nJenifertown, DC 19664', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'xwJdw2pJaqOUwVcR2oq7wXMsODdUa2', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(453, 'Mrs. Alisa Gutkowski', 'ondricka.abbigail@example.com', '$2y$10$FU8B.7fPRW2YVUObx3b5quEHpZS3R.zIJSqHX82pVThR3mV6jlBEq', '6568 Ella Stream Suite 399\nNorth Erwinshire, WI 35143-7261', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'XcyflVSqyWVnacv0jx73RBUkKpzXGk', NULL, '2022-03-14 09:21:26', '2022-03-14 09:21:26'),
(454, 'Rudy Fadel', 'eldred.nienow@example.com', '$2y$10$gXkR.QBiKSpewatTka.HR.EgyHzl2EwTKGp42AAs7a3N1o.30Ccmy', '1820 Rolfson Prairie\nPort Ashlee, KY 63351-6982', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'eWKFA0pqUFsGkBIqKpFe5jwawVN0Qg', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(455, 'Mr. Kelley Yost II', 'windler.jarrod@example.com', '$2y$10$zZ6IPtJG9N3xeW0XwM8OUur02VxPm9aege7YMfUeal21sQIvaXt4.', '6354 Manley Crest Suite 873\nPort Raheem, ND 84505', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'gTUUkMI9LYh30YDUnM09XkJ0HHFTQR', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(456, 'Salvador Quitzon', 'fabian.williamson@example.com', '$2y$10$sIbP90CPGNKCfpVY..LUNOc/glaZGyGM.n2MGIPSkpjgdfZneb3OO', '763 Vernice Roads\nTerrenceborough, WA 52782', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'YdVdSbhQuON6Gxg8VurX2mKym9j5Do', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(457, 'Ms. Annie Kub', 'jodie.legros@example.org', '$2y$10$SQ8o7ES5TBadAG9u8ilvHuJK3uxOnVbe4pXOwoCKweh5Qnt830QBq', '632 Waters Vista\nWest Scot, HI 97112', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'vHAatKD6e7WkCLe6tWeCWVgvxbjDxB', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(458, 'Zoie Bechtelar', 'trantow.clinton@example.org', '$2y$10$.kHgEDiXGUcAIArDt60yWODvNmCGRCb0T870DkEzRRHiaBr1GTJNe', '79236 Eliane Extension Suite 256\nNew Michelestad, IN 19405-4897', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'zaO7BwvsCeGJHS4LU50fJQEjwtnLAq', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(459, 'Hayden Lindgren', 'anissa44@example.com', '$2y$10$Ewzjhn0/0meo1SiwzT.qJerR1HQFscRbi9.VgBN2L1Lghwhh9BfTC', '5575 Lewis Rue Apt. 312\nNew Carrieburgh, ME 09940', '0989842021', 1, 0, '/storage/img/avatar/user.png', '83cMQ65prbi4Ni4IepurgHE0oIDzAy', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(460, 'Myriam Greenfelder', 'jessie98@example.com', '$2y$10$mYjpmKTSmXbwY4Ty4gMbVOmxGuen4d.Da9c0PKHNiAyMgQ9292x7K', '27550 Kuphal Rapids Suite 090\nLonniemouth, OH 23074-6408', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'xd6372VoFwXKADS12at7KM0zixJxTh', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(461, 'Dr. Gerardo Lueilwitz', 'afeest@example.net', '$2y$10$9yYSVAZNE6kwYKHJ3K9Ir.iB.olZXIMja5iFGrj6UpS7gbeq.eOFu', '485 Chelsea Way\nFaymouth, DE 72677-5392', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'cwyEF4iHQonGAfSXBTZAL41DUcDD1j', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(462, 'Adrain Green', 'anastasia.torphy@example.com', '$2y$10$znTOIs3Nm/WQA6DTVzuaT.mB2DanIDkl0VTNc8sMzBnVrrVarCbHW', '30593 Justyn Parkway Suite 543\nWest Anais, DE 86444-7217', '0989842021', 2, 0, '/storage/img/avatar/user.png', '6VQOJfADKsqyvcioQjG6AKHVSwYZ5v', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(463, 'Raphaelle Dickinson', 'mary53@example.org', '$2y$10$4XX4ZNSxl8Um5Ag4YN5dHutcJjAhNXPersyv.BBO10ON1UxzF9032', '742 Marks Cove Suite 110\nTessieton, KY 82585', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'XAwBzVkY3ezisGCqa2CqcbzN52UHn8', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(464, 'Marge VonRueden', 'jrempel@example.org', '$2y$10$TpTfLZymO9egjyAoxE1rdeV1fozwXKzufisjKpjtyoy1Eyt.6jOjO', '2356 Gusikowski Passage\nFriesenview, UT 15585', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'qesBiQQPuLIRLx45ZmXnTTtNi6Sq1T', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(465, 'Violet Bins', 'brianne.ritchie@example.net', '$2y$10$jrRFJiEPd.nSPY7ULpc9Puy2W4ETaXkMyhXOcqXqMwYeVANfupHuu', '83074 Sid Village\nLake Shana, AK 25506', '0989842021', 2, 0, '/storage/img/avatar/user.png', 't8TWK5i0REV4wZn1KXtSzoHsKYxT1x', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(466, 'Prof. Neil Hilpert II', 'bednar.amya@example.net', '$2y$10$8hTwi3VTbJRddU8Fnj8xpOCe3UvZ4RqJFTkAhkbZXkT9WfBMIDWo.', '357 Williamson Prairie Apt. 336\nGrahamchester, ME 32608-4844', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'sdo4lqqUguPNIRkKt5pzyGzXrd5IPj', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(467, 'Arvilla Kshlerin', 'ferry.lois@example.net', '$2y$10$XRtO6fprUviuOFehwa8KuOkP9OW8urfWo07L2AEjLI/E7yJHSmyXy', '1917 Kaitlin Springs Apt. 089\nStiedemannmouth, MD 43277-4598', '0989842021', 0, 0, '/storage/img/avatar/user.png', '19ZJukHcXXhjYl5pQUPR9NKHw3kTY5', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(468, 'Allan Nitzsche', 'ziemann.michael@example.com', '$2y$10$UHf.hMJFoSKObSkQE.BRL.KETMm4.WIZ8MVhoIrVSJjgbnaIA1eLi', '394 Casandra Gateway\nNew Rollin, AZ 40778-9694', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'FzHpVGHTvcG3mg83zjNUUfgol0DZOc', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(469, 'Arely Armstrong', 'champlin.marguerite@example.org', '$2y$10$ZTGAWpcxT05yB4Pw/P1i4.FQleK6NT8uAcw/i7fK9DkptlkBbpGJG', '84044 Dale Harbor\nNinaland, OK 30826-6049', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'AxfsqP4tfRSQfpHih8dyY9jOYgBvsN', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(470, 'Prof. Eudora Turner PhD', 'goyette.emelie@example.com', '$2y$10$GWY6Xo4t/cf2cGf4L3T9oO2KDdreMV.WGiFVRJgqpro3hgKgeWPVu', '45010 Abbott Path\nNew America, MA 04256', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'HtMxbZkPUOqrh3Sv1GoHFDpkZG3gB2', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(471, 'Dr. Lorena Haley', 'gideon68@example.com', '$2y$10$h1I/gwbbrQjG/ZB/NVSVJeuz7k9PUZVZDCzKKYL3SEpej6Y9BVHQO', '3907 Cassin Lake\nNorth Marty, CA 15435-7743', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'vWxiaptU9EhROtJ9U0isI6ErEqGFrJ', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(472, 'Trent Adams', 'ahodkiewicz@example.com', '$2y$10$0pHgbgMJV3LYQ0dDZ3qfYOo3YmBcHO/l1NDksNZ/XXtmngYumlrEG', '2269 Klein Falls\nLake Kiarra, SD 58579-9371', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'zj2TDUEiynUOzTlFFyGTp2JhMZHJ88', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(473, 'Tate Hoppe', 'tlegros@example.org', '$2y$10$RSuEU.drtH0kldHcZ1VbE.Ar6V6U00jI1HmImaFZWB.Ns7IbBsHNq', '859 Ondricka Fields Apt. 146\nEast Serenitystad, MS 69652', '0989842021', 1, 0, '/storage/img/avatar/user.png', '36xFbDbAtIEoEhIa923fYpsJV8BtCm', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(474, 'Prof. Preston Sipes I', 'ccartwright@example.com', '$2y$10$MVgxpUhtleZ1q7OB8bseLeOM4IxdrEksC12VgwCkg8cc0DfaCV9Yi', '907 Tyler Pines Suite 690\nLavinafurt, SD 40393', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'rlexQ5Tp22Pc75Zfox0ScCiChFviZk', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(475, 'Kenna Morar III', 'lindgren.leann@example.org', '$2y$10$wxuGY0oDTuQrfwvS7Ub0LuPcvMcLC0Mv/29ka5Y/KnGd.T9uzWa1y', '58093 Bayer Spurs Suite 925\nPort Megane, SD 69475', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'mBZC1fTfpWy4uYdO408dd3zU74acEQ', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(476, 'Hank Buckridge I', 'nienow.zula@example.com', '$2y$10$RByzBh49QsdycBhYr21Ew.fJsROXR5rR77ILXkY9Pm6ACwlEZ/nuG', '761 Altenwerth Stravenue\nWest Krista, OR 37389-3658', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'cfOBMmWtZFtqEy8A0oRbwieTrbZMVZ', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(477, 'Petra Prohaska IV', 'wuckert.theron@example.com', '$2y$10$Qn3jcgb/ZDdr/bAZGmEKg.ifZPL.cXV1a3IxNJJDtDKUHlb7bW8Vm', '16871 Guido Forest\nNorth Trent, OK 74095', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'wAb0GvLRKHWwZ5h5iKBHNdNJ4d44Nu', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(478, 'Alek Breitenberg', 'vdibbert@example.com', '$2y$10$xeFxIfKCsZWgfdbEEzZkmue7PMy4fyee.UTXy5HXK/yteIC9GNhmS', '73188 Tess Plains Apt. 136\nRempelstad, CO 07283', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'gLoZwYb9egK0NjVTukRZ1jqKds8cgU', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(479, 'Demarcus Weimann', 'lbednar@example.net', '$2y$10$VdiJ3zA1Wuk4sslYp3OVj.4WtoLmMhaRtXwb5E7MYMXpQwBY/.Qu2', '384 Schroeder Bypass\nNew Margueriteport, WV 70111', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'DOWpiLwfkAZHfDevJJ6yBVSRRIoWzr', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(480, 'Schuyler Schulist PhD', 'makenzie.lakin@example.org', '$2y$10$x12lLvVkhTqrcOz.x3s7TO/Zc1/WQ5D96qi2v4Bfknf5PdLmyHFa6', '677 Diamond Springs Suite 720\nEast Fay, DE 57757', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'ZFFElHgVazv2Ek8k2bIbh4L1f3eyMg', NULL, '2022-03-14 09:21:27', '2022-03-14 09:21:27'),
(481, 'Trevor Schumm', 'johns.cole@example.org', '$2y$10$f6rQ1CiVunPq6LL.NWnKFekLT4D9Tu.0Su5yX.RTA4W7o5eVtkR4K', '1390 Jerde Camp\nNicomouth, DC 98600', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'FmwMzDjqMJH9j0nZCsnlug4LMdMKaW', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(482, 'Jaleel Wisoky Sr.', 'veum.mohammed@example.com', '$2y$10$LRMUomlDCvfQOfQxqmxclug46oV381OmFCx1Zmpc/gtAQwOWUYUee', '8029 Wunsch Light\nEast Hillard, DE 15972', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'RxcCsFm1UFULpsw656GPnhUda3bXGT', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(483, 'Alva Ziemann', 'godfrey87@example.com', '$2y$10$VkdZ3ea3bpHIpWvrAvIpLuN41oOPcwLOMPG9mrwY3Cg.bgTetDX0m', '94358 Lynn Forges\nPrincebury, NE 19877', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'kXYV9Y37jeoKHjSnLUX3Y32MBeHgf7', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(484, 'Jakayla Sanford', 'rempel.keaton@example.org', '$2y$10$eMCFMExZxntD3pSqRq9DAuFbIKNropQZ4koODsRuy.Hlgk3k.MLYu', '224 Macejkovic Plaza\nPort Tayaland, WY 94121-7471', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'jP9tncTTbbH4wVpH3frlFuvl9N7ouE', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(485, 'Mr. Raul Mante', 'jhermann@example.org', '$2y$10$xWn4utbaXD8vpwKPhTKOqepX1dpibtGOjxUfBoP9ifI/d.yLebiaW', '66474 Reichel Crescent Apt. 143\nNadertown, ME 17217', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'uOwOBdJibFOJhC9YX5xhcdkW0MGbA6', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(486, 'Austin Bauch', 'iflatley@example.com', '$2y$10$YG2FhUT3aFwdl2.9uwewTukyU0L0QbuZwNtu3A9QHImpUKyglWlau', '119 Hassan Lodge\nLuettgenview, ME 62117-2028', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'UuC6RLFOgQKHSyvUi3s2lifcyxjquB', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(487, 'Ms. Lavina Schmidt', 'jennie41@example.net', '$2y$10$5P7phHPwlzwem6ul1rs2N.797caqf0CGlH7JTraSFuB4odzzhAoL6', '3651 Stacey Stream\nNorth Elsemouth, WI 74830-0656', '0989842021', 0, 0, '/storage/img/avatar/user.png', '90SBxDOyY5W2UsXkHcmZ3f7ZKsdGIL', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `gender`, `role`, `photo`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(488, 'Kara Osinski', 'haley.emmalee@example.com', '$2y$10$9voRd95TBYz5WwuFnszD2exAbzlUNda.wdQTCiy8qR/WikMGtUuC.', '27115 Barrows Creek\nKundefurt, ND 45984-7373', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'BvpDgNMH3c8m6MeqXpZqnpzTmRzNOd', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(489, 'Prof. Luther Lynch IV', 'adonnelly@example.org', '$2y$10$uhD0F0QAljhAyRNvKViSNOk1joIhYLeUdbyil5sUNjiDsD44bppqG', '3092 Stephon Manor Suite 440\nNew Margaretemouth, RI 03822-5841', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'RpqDXciSKTFbt8OxQ8FxyH3abAE4BK', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(490, 'Zoie Nienow', 'marvin37@example.org', '$2y$10$sANIIyA.61NRB7kXtGHXZOq1XHED3vTNbAaNcC.JqzP09DfGRLLAu', '67070 Ortiz Vista\nLake Carmel, KS 34059', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'Y7PRAG75uwXvqtT5jrBhVBflpiiX6d', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(491, 'Savanah Ankunding Sr.', 'koelpin.willa@example.com', '$2y$10$bK5jWjjNAIbBYEwbis.6NuHS0WEDj5za79.sCyK7uEq0lmSFlvWBS', '8059 Ratke Vista\nEstefaniaview, ID 09492', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'baCLiuqr3A9EyfIP6dlRAoM4lXnbQs', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(492, 'Dr. Lois Braun', 'hintz.abner@example.net', '$2y$10$79MtMCV2S1K8JdlScBSwuOyMVejBtJvD53CIJud1apRTY6wyRFA7u', '93465 Delia Villages\nNew Geo, MA 79390', '0989842021', 2, 0, '/storage/img/avatar/user.png', '6Sb5yaPSiP7MO24m0VobYC1PVI0fmh', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(493, 'Kacey Bechtelar', 'isidro.rice@example.org', '$2y$10$gY6LGzamxiiqazOf9Mw1MuCjF0nvBg71qSj9cgnd2DfLxhXiZyf0O', '6740 Pietro Stravenue\nBettieview, NV 01075-5547', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'CDZxOGLUUvwOB6AO9XsgwSDzsA2fsz', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(494, 'Abigale Bergstrom', 'brittany.hackett@example.net', '$2y$10$zKQdyAyaPAdTGc3nPnO/i.cihM0pSzUBHavOQ.L912H8oG5BKkMhm', '7846 Daphney Gateway\nWintheiserside, CA 43177', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'CEPHfJQFZjBgbndT1GF1UPpOv69GmH', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(495, 'Lucio Schulist PhD', 'brionna.homenick@example.net', '$2y$10$.f3obdX1N/eBWYwUTt/tjuYpmsUCOP4lSfj25oCzzJAnA2XsZ5f3m', '8601 Wilkinson Underpass Suite 205\nAndresfurt, ND 82382-7949', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'EYaWlHDZnf4kR6PbUIQpkJE4csOZWR', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(496, 'Lori Zieme', 'snicolas@example.org', '$2y$10$7SoCBC8DrpSgrerkXCmOh.uZjEkCMYmAalQb4yPpucgTfscv1.Nci', '556 Cali Way Suite 726\nEast Abraham, NH 94231-4619', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'kEbuM0z6fVPNbpFzFLIRhoSXSwnkyT', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(497, 'Vicky Wisoky III', 'verona22@example.net', '$2y$10$51l.gf6GvemfkaYvDXxC.OUWuzEql79va8tQIm9DkT6fvs08n.AHq', '916 Luettgen Hill\nBernardport, DC 91290-3966', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'KERWxsdkQvHTSPZuR7HjJx4ATt66Id', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(498, 'Orie Gutkowski', 'retha97@example.com', '$2y$10$BCXxEn8RcLIm6cj4lLUEnO7tdmYAdgvszGaRL4TH4oGKLD39BKIkS', '9875 Daugherty Cliffs\nPort Trevorland, SD 35388', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'UeegsvHETj4xlxxNcq3vPOrjut2cz4', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(499, 'Elton Rempel', 'obernhard@example.com', '$2y$10$ZoVI6crtSmM1rRcqTO9h/OGs/8g9kV3Nsweqc5DhWQVDucLKgpY/y', '350 Kaitlyn Divide\nKleinton, ND 33860-7957', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'OuxqAYzlXXalZQmPMNeLyiWnY8YbnV', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(500, 'Erick Torphy', 'jacobson.mathias@example.net', '$2y$10$6u4jHUZStc.24kI8/EyTyOACxXQrecyMq008Ah8GXw6G5FqcX/nPy', '4674 Skiles Crescent Apt. 212\nNew Jillian, WV 33986-6335', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'C2NtzjBC03pTIPx4ify8KzuS2EqgXa', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(501, 'Wilfred Hegmann', 'isenger@example.net', '$2y$10$PJwKdI1SxXYoxXYCI.VNIeARJ9mZiBNTOECyTTpYsgk4GkR9h0TPO', '5130 Garett Shores\nNicklausstad, MS 44663', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'DW1SuOg6ZzOUGcwaim84SGYDL4QO6q', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(502, 'Talon Lindgren', 'doug.paucek@example.com', '$2y$10$JkqUAG.Uw.cJHzrsqKxiTOX.0qPgXjZE8jP7UneN.3wGb1v9TSmvq', '126 Beier Hollow Apt. 351\nMavismouth, NC 28641', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'A71VK7lZYioA7NWrWyIXrLpFqcCZKD', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(503, 'Elissa Tremblay Sr.', 'jaquelin65@example.com', '$2y$10$gmQHhHZ49i9/xCN2GYHCju9eGtqo6yDvI9hAIktfen6lsDGts.n6K', '37841 Abbott Forest Suite 706\nNew Carleton, MS 09022', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'gV6z6hlNjzDg9sjEZES1Lp1ncVayGd', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(504, 'Dr. Sydnie Moore', 'christine.erdman@example.org', '$2y$10$i2uS6axjFtVYOJZlmzNsd.o3WiH.B6Rwi.UBrS3w9Y3GDoWgaZrCa', '4836 Buckridge Springs\nSouth Aureliachester, NE 54482', '0989842021', 0, 0, '/storage/img/avatar/user.png', 'bTekno6FJ8DWqhqsbtzTnuyqhgPGSn', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(505, 'Connie Koch IV', 'volkman.clinton@example.com', '$2y$10$qvO8KCnGTlKVH4LZru1e3.4T.mwB0OD4PctPCr3Zo3Vv.LDZ03YJC', '4261 Greenholt Squares Apt. 593\nPort Schuyler, UT 15704-6856', '0989842021', 2, 0, '/storage/img/avatar/user.png', 'R5zw6qv79ThW0LttLGXfbd8bi2v7Aq', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(506, 'Davon Smitham', 'iva.kris@example.com', '$2y$10$xZDZKW3sjrz9pYtcT5ItauphMujOG4EZ8Sl0Hv8ATdVn8RsvDDUXq', '41074 Sauer Underpass Suite 071\nSouth Chetfurt, TX 40239', '0989842021', 1, 0, '/storage/img/avatar/user.png', 'YbSPljeAm4CjXj6F6q0IjOswnvjFB5', NULL, '2022-03-14 09:21:28', '2022-03-14 09:21:28'),
(507, 'Tung', 'tung.px@zinza.com.vn', '$2y$10$h35I0uq1e1TPagNnepqTnuAXkouysL167GA84YHG4H4/6ZQFVLe9W', '123 Ha Ha Ha', '0989842021', 1, 0, '/storage/img/avatar/user.png', NULL, NULL, '2022-05-25 11:36:10', '2022-05-25 11:36:10'),
(508, 'Phạm Thị Mai Anh', 'anh.ptm@gmail.com', '$2y$10$XhgmWalou/OKePzuPV94UOTo7VreBdG68bjEOVBnaR8ULOwdJ5o7e', '123 La Thành, Hà Nội', '0989842021', 0, 0, '/storage/img/avatar/user.png', NULL, NULL, '2022-06-14 22:48:33', '2022-06-14 22:48:33'),
(509, 'Lê Chí Thắng', 'thang.lc@gmail.com', '$2y$10$B.TfGdr.SFEhkqcJfuUSN.wKhBz5xQWL969aSoE6bj8B23u9O5mP6', '123 Hoàng Mai', '0989842021', 1, 0, NULL, NULL, NULL, '2022-06-18 11:21:31', '2022-06-18 11:22:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_class_notices`
--
ALTER TABLE `new_class_notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `new_class_notices`
--
ALTER TABLE `new_class_notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `periods`
--
ALTER TABLE `periods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
