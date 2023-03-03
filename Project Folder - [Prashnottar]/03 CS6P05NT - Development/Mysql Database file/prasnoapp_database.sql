-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2022 at 05:47 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prasnoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `post_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'The measurement is the comparison between two components', '2022-04-24 11:33:53', '2022-04-24 11:33:53'),
(2, 11, 9, 'I am wrtting my anwers.', '2022-04-26 13:06:23', '2022-04-26 13:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'nice post', '2022-04-24 11:29:21', '2022-04-24 11:29:21'),
(2, 6, 2, 'yo man', '2022-04-25 06:00:47', '2022-04-25 06:00:47'),
(6, 10, 7, 'what is an interval between two events.😁', '2022-04-26 08:59:29', '2022-04-26 08:59:50'),
(8, 2, 7, 'Time is 86400th of an event.', '2022-04-26 09:04:07', '2022-04-26 09:04:07');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '2022-04-24 12:08:10', '2022-04-24 12:08:10'),
(3, 2, 1, '2022-04-25 05:51:34', '2022-04-25 05:51:34'),
(4, 2, 2, '2022-04-25 05:51:35', '2022-04-25 05:51:35'),
(12, 8, 5, '2022-04-26 08:51:24', '2022-04-26 08:51:24'),
(14, 10, 7, '2022-04-26 08:59:01', '2022-04-26 08:59:01'),
(16, 10, 5, '2022-04-26 09:00:48', '2022-04-26 09:00:48'),
(17, 2, 7, '2022-04-26 09:03:43', '2022-04-26 09:03:43'),
(18, 2, 5, '2022-04-26 09:05:04', '2022-04-26 09:05:04'),
(20, 9, 7, '2022-04-26 09:34:16', '2022-04-26 09:34:16'),
(21, 9, 8, '2022-04-26 09:34:18', '2022-04-26 09:34:18'),
(22, 11, 9, '2022-04-26 13:14:34', '2022-04-26 13:14:34');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_24_104605_create_posts_table', 1),
(6, '2022_04_24_104948_create_comments_table', 1),
(7, '2022_04_24_105117_create_answers_table', 1),
(8, '2022_04_24_105148_create_likes_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 2, 'secret', '65150beaa1111ab3ba387d049f0f38fb05fff0953651c2d2bea5ce4539456553', '[\"*\"]', '2022-04-24 16:43:01', '2022-04-24 16:39:19', '2022-04-24 16:43:01'),
(3, 'App\\Models\\User', 2, 'secret', '7247fc05fb711a8b8f7d3370c7c9a2f35a3ff2cb043088577e76ee1199d58552', '[\"*\"]', NULL, '2022-04-24 16:51:04', '2022-04-24 16:51:04'),
(4, 'App\\Models\\User', 3, 'secret', '3213c80009431aaaa80adc9701ff08e8ae0c7689b92fe29b007f65c53bb22c91', '[\"*\"]', NULL, '2022-04-24 16:53:11', '2022-04-24 16:53:11'),
(5, 'App\\Models\\User', 3, 'secret', '25d05499227ef50bf117be61c6740cc2c1e331e74ca54cb35c84e9f4b2b4a306', '[\"*\"]', '2022-04-25 01:46:49', '2022-04-24 16:53:24', '2022-04-25 01:46:49'),
(6, 'App\\Models\\User', 2, 'secret', 'cd110dc6ead0b893b4b0c37514ee95e76b1f6a63c0c3ce05104af8d56967c11e', '[\"*\"]', '2022-04-25 01:52:50', '2022-04-25 01:47:12', '2022-04-25 01:52:50'),
(7, 'App\\Models\\User', 2, 'secret', '47d635dd357ef82a32964f60eba73279866e2a2f0d29d9bc304dda7cfbf77f33', '[\"*\"]', '2022-04-25 02:42:38', '2022-04-25 01:53:45', '2022-04-25 02:42:38'),
(8, 'App\\Models\\User', 2, 'secret', '0442dce497b5045e98c9634cc5a017c62fca2eb5be5f469c3451ab973790443c', '[\"*\"]', NULL, '2022-04-25 02:47:28', '2022-04-25 02:47:28'),
(9, 'App\\Models\\User', 2, 'secret', '2e5bffd754cf5ab161dfea896b34f03d413eb77ac755e4e6bcbb58eb66bbea6e', '[\"*\"]', NULL, '2022-04-25 02:48:34', '2022-04-25 02:48:34'),
(10, 'App\\Models\\User', 2, 'secret', '66e9e599bdaf1d80a2cb0bbda0b019e05da8ebee7c9929f55a5fb84efea5f8fa', '[\"*\"]', NULL, '2022-04-25 02:49:10', '2022-04-25 02:49:10'),
(11, 'App\\Models\\User', 2, 'secret', '0d65c873e3bb37c35ce0a99ccc07f8bac318eb48382d7712d1c9d8cb61750a1d', '[\"*\"]', '2022-04-25 02:53:59', '2022-04-25 02:49:30', '2022-04-25 02:53:59'),
(12, 'App\\Models\\User', 2, 'secret', '566e827419b567a19c937fc87415de32f6f80fdf88fb6183964028c714eb8fac', '[\"*\"]', '2022-04-25 03:01:08', '2022-04-25 02:54:25', '2022-04-25 03:01:08'),
(13, 'App\\Models\\User', 2, 'secret', '6fc96c7cee44309c8f3e3360350c47e89c3f105d6c8afa80c2c572078eb3a3f7', '[\"*\"]', '2022-04-25 03:21:57', '2022-04-25 03:21:20', '2022-04-25 03:21:57'),
(14, 'App\\Models\\User', 2, 'secret', '217c15e446f64be4fc468c767ac8264fd61773df7f510c0ff7b35a12192c78cb', '[\"*\"]', '2022-04-25 03:23:04', '2022-04-25 03:22:53', '2022-04-25 03:23:04'),
(15, 'App\\Models\\User', 2, 'secret', '6f8b4d7173d0169fc07922f36f22f6e7f3c7799e540d82e145920486eeebeb7e', '[\"*\"]', '2022-04-25 03:34:21', '2022-04-25 03:33:32', '2022-04-25 03:34:21'),
(16, 'App\\Models\\User', 2, 'secret', 'b8bb54c0ec3e7376f861d7801618847616efb4a11421ecb90f4aeab54d37676c', '[\"*\"]', '2022-04-25 03:35:30', '2022-04-25 03:35:14', '2022-04-25 03:35:30'),
(17, 'App\\Models\\User', 2, 'secret', 'ef80cccf8a9dc7690574781f8eccbd67c77dad99ce1a8b41f608d3eca2765336', '[\"*\"]', '2022-04-25 04:39:35', '2022-04-25 04:39:05', '2022-04-25 04:39:35'),
(18, 'App\\Models\\User', 2, 'secret', '4a43fde00b42079ee0408168925a01849841e5c322f2b64ff0cac3892e988591', '[\"*\"]', '2022-04-25 04:59:26', '2022-04-25 04:58:46', '2022-04-25 04:59:26'),
(19, 'App\\Models\\User', 2, 'secret', 'e9213d87840d987d7d5f4537af5ff4eac98ac7ee61300515638320c14d48d088', '[\"*\"]', '2022-04-25 05:01:08', '2022-04-25 05:00:40', '2022-04-25 05:01:08'),
(20, 'App\\Models\\User', 2, 'secret', '67fbbe527c344af03cd6a15d43ad4f0e009f7e506ca6dc2e32a77f400c1aee71', '[\"*\"]', '2022-04-25 05:07:42', '2022-04-25 05:01:42', '2022-04-25 05:07:42'),
(21, 'App\\Models\\User', 2, 'secret', '2cb91b8d02965a7f37218ee12cc2c13dbe453bb96fbee7ca5a3686c02e3deb69', '[\"*\"]', '2022-04-25 05:10:13', '2022-04-25 05:08:29', '2022-04-25 05:10:13'),
(22, 'App\\Models\\User', 4, 'secret', 'a837e2d5157dd033e17ce44a63c02e8660fe0489bb72ccdb2c2aec460fbdf78c', '[\"*\"]', '2022-04-25 05:11:35', '2022-04-25 05:11:17', '2022-04-25 05:11:35'),
(23, 'App\\Models\\User', 4, 'secret', '98b33c377415ca9be5a410dd50a25c9c55647931955cec2815dc390e42f979f3', '[\"*\"]', '2022-04-25 05:12:28', '2022-04-25 05:12:08', '2022-04-25 05:12:28'),
(24, 'App\\Models\\User', 4, 'secret', '3771e6f51f320143db7dfef5351aa091d2ccf23d4f6a65af886e4f4b15b1be09', '[\"*\"]', '2022-04-25 05:13:09', '2022-04-25 05:12:58', '2022-04-25 05:13:09'),
(25, 'App\\Models\\User', 5, 'secret', 'dcfb65085b419a712d6df27874b3985d32def73213c11b3625db3980dbf400ca', '[\"*\"]', '2022-04-25 05:14:01', '2022-04-25 05:13:56', '2022-04-25 05:14:01'),
(26, 'App\\Models\\User', 2, 'secret', 'c790878633fb7889590620d1b735b2e378936090f1d3eb019cbd5f4ab56d2583', '[\"*\"]', '2022-04-25 05:17:27', '2022-04-25 05:15:43', '2022-04-25 05:17:27'),
(27, 'App\\Models\\User', 2, 'secret', 'f55c2c2aceecf7b886395b38047a4982e5da5c0acfb2b60b2a86849bf7635d37', '[\"*\"]', '2022-04-25 05:25:47', '2022-04-25 05:25:21', '2022-04-25 05:25:47'),
(28, 'App\\Models\\User', 2, 'secret', '55607c389fcd7d63dbe4abebc2932b804cd58ee4b5453b643e8b35268de31eb1', '[\"*\"]', '2022-04-25 05:51:36', '2022-04-25 05:26:18', '2022-04-25 05:51:36'),
(29, 'App\\Models\\User', 2, 'secret', 'b42dea5b71f2ccdacd53c906bd1071dbbf9015a25fe36740337748facdc687bd', '[\"*\"]', '2022-04-25 05:57:44', '2022-04-25 05:52:13', '2022-04-25 05:57:44'),
(30, 'App\\Models\\User', 6, 'secret', '7128c743036bdea6e8ee412502fe222e4a2b0a2cd0922dd9dfcfb053e14aae1f', '[\"*\"]', '2022-04-25 06:05:34', '2022-04-25 05:58:15', '2022-04-25 06:05:34'),
(31, 'App\\Models\\User', 5, 'secret', 'c581ae113d870bfddc787ba34c8387253d4163b906b1f5c2ce09897e96f96503', '[\"*\"]', '2022-04-25 06:06:57', '2022-04-25 06:06:11', '2022-04-25 06:06:57'),
(32, 'App\\Models\\User', 2, 'secret', '651e72519489bbb487f3ebe542e113f297d6e597867dc988839a3088233e6a17', '[\"*\"]', '2022-04-26 07:45:33', '2022-04-25 07:53:48', '2022-04-26 07:45:33'),
(33, 'App\\Models\\User', 7, 'secret', 'da67fa24c0307f9b73d45c263d45b5d335f08562f960dd540e7192cc5bf38463', '[\"*\"]', '2022-04-26 08:48:02', '2022-04-26 07:47:00', '2022-04-26 08:48:02'),
(34, 'App\\Models\\User', 8, 'secret', '7d655e73fd733a81481fb44ae32f0930f0574e73225fdd84be111fb8c6909bab', '[\"*\"]', '2022-04-26 08:52:35', '2022-04-26 08:49:15', '2022-04-26 08:52:35'),
(35, 'App\\Models\\User', 9, 'secret', 'f962549ed1a64e9d05b4215a1af281563e5cc9629eb9539c4e67f04e3ce2e59c', '[\"*\"]', '2022-04-26 08:57:14', '2022-04-26 08:53:05', '2022-04-26 08:57:14'),
(36, 'App\\Models\\User', 10, 'secret', '1cee7ca2dce1a7499c6c6880e042b6a9fa6b91a4bdc97e6cc18e507b59f0c0d1', '[\"*\"]', '2022-04-26 09:00:55', '2022-04-26 08:57:52', '2022-04-26 09:00:55'),
(37, 'App\\Models\\User', 4, 'secret', 'd76824a67db8bec67d0255fca03137e33eab6c02cc3efe4d0a78a5a44b1a21f7', '[\"*\"]', '2022-04-26 09:01:20', '2022-04-26 09:01:09', '2022-04-26 09:01:20'),
(38, 'App\\Models\\User', 2, 'secret', 'b148baa03d596324e9f2b09d6a7f4edee48f01ddcff07c71a18963f5c8508e8f', '[\"*\"]', '2022-04-26 09:07:40', '2022-04-26 09:01:37', '2022-04-26 09:07:40'),
(39, 'App\\Models\\User', 9, 'secret', 'cf4c83c29f6aaa7d54834b64830e3fc3a294a9996879c3c548c2dfa24c79751d', '[\"*\"]', '2022-04-26 09:44:57', '2022-04-26 09:07:52', '2022-04-26 09:44:57'),
(40, 'App\\Models\\User', 8, 'secret', '08f1366aad8f4af435c6e91eaa7ebd5d1262d3f2cb86865bad170d5ebb1b9bee', '[\"*\"]', '2022-04-26 10:58:01', '2022-04-26 10:52:11', '2022-04-26 10:58:01'),
(41, 'App\\Models\\User', 11, 'secret', '15a044b0717b3bc9a8010bc310eac6618f8600eeb9919d1fd34ae8bc83cc76d0', '[\"*\"]', NULL, '2022-04-26 11:52:47', '2022-04-26 11:52:47'),
(42, 'App\\Models\\User', 11, 'secret', '29fb16389d1de4470f5097ded4f4473122535d933242e80c9fc9432a5d0eac86', '[\"*\"]', NULL, '2022-04-26 12:09:58', '2022-04-26 12:09:58'),
(43, 'App\\Models\\User', 11, 'secret', 'f36bd79863951f04ce1f56278549c2b09eb290e2dd4fc5bbcb685d9542756365', '[\"*\"]', NULL, '2022-04-26 12:15:36', '2022-04-26 12:15:36'),
(44, 'App\\Models\\User', 11, 'secret', '848081436e1ec7f44420bb8499de36bafcf4faa79165aea1f68ebe0f78a879af', '[\"*\"]', NULL, '2022-04-26 12:18:18', '2022-04-26 12:18:18'),
(45, 'App\\Models\\User', 11, 'secret', '6ffbe95006566771ca0f8e659af3ae5f6b2479fc6f9521b7cd03c9ca6b0dc9ba', '[\"*\"]', NULL, '2022-04-26 12:23:50', '2022-04-26 12:23:50'),
(46, 'App\\Models\\User', 11, 'secret', '2834b49ce669c94a64938f782dd38e1aa5fb06e978db6f08305cd72332cc4d08', '[\"*\"]', NULL, '2022-04-26 12:44:39', '2022-04-26 12:44:39'),
(47, 'App\\Models\\User', 11, 'secret', 'd645fa466b923c18bab7015ac9f770d2c78b72584387748d5a54decc005f1931', '[\"*\"]', NULL, '2022-04-26 12:45:58', '2022-04-26 12:45:58'),
(48, 'App\\Models\\User', 11, 'secret', 'a48faa2b580f5a8c8a7d94dd5298aecd2598f39ff2ee6e6f4460584cee199912', '[\"*\"]', '2022-04-26 13:14:34', '2022-04-26 12:47:28', '2022-04-26 13:14:34'),
(49, 'App\\Models\\User', 11, 'secret', '3f344f88d87eb6f5ccdb4ec59b222b5a649f7ed177c9407f12b3c8863e6a2a8a', '[\"*\"]', NULL, '2022-04-26 12:48:40', '2022-04-26 12:48:40'),
(50, 'App\\Models\\User', 11, 'secret', 'f88748b956e0239911efcce7c91ec2672211a2e889b688a4710b648454801618', '[\"*\"]', NULL, '2022-04-26 13:59:19', '2022-04-26 13:59:19'),
(51, 'App\\Models\\User', 11, 'secret', '9c2988111cce95a29444304c1393cd1f1725e9c16cf674f51d51c21eea57a383', '[\"*\"]', NULL, '2022-04-26 14:01:29', '2022-04-26 14:01:29'),
(52, 'App\\Models\\User', 11, 'secret', 'd791a0f2d391d7179cd46e8e11bf54fbe91432c9f1509cd244e3f83d4303ee81', '[\"*\"]', NULL, '2022-04-26 14:04:26', '2022-04-26 14:04:26'),
(53, 'App\\Models\\User', 11, 'secret', '98949b0f243981f8913c3f30b0fcbc9c40b615786b0cc8f48a5d1406e5f3cb12', '[\"*\"]', '2022-04-26 14:34:20', '2022-04-26 14:07:02', '2022-04-26 14:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'updated this post', NULL, '2022-04-24 11:12:19', '2022-04-24 11:14:22'),
(2, 1, 'my first post', NULL, '2022-04-24 11:13:25', '2022-04-24 11:13:25'),
(5, 7, 'guys, what is force? And what is it\'s unit in SI?', 'http://192.168.43.54:8000/storage/posts/1650983538.png', '2022-04-26 08:47:18', '2022-04-26 08:47:59'),
(7, 9, 'what is time in physics?', 'http://192.168.43.54:8000/storage/posts/1650984042.png', '2022-04-26 08:55:42', '2022-04-26 08:57:02'),
(8, 9, 'how to convert degree to Fahrenheit.', 'http://192.168.43.54:8000/storage/posts/1650984839.png', '2022-04-26 09:08:59', '2022-04-26 09:08:59'),
(9, 11, 'updated post', NULL, '2022-04-26 12:50:45', '2022-04-26 12:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Habib', 'habib@gmail.comq', NULL, NULL, '$2y$10$mQW.TTn8xTNh1mRSS2ljCuvRPKpmLLctm9kHr07UP.6W0QuliAz5K', NULL, '2022-04-24 11:02:29', '2022-04-24 11:02:29'),
(2, 'Tiger Sherpa', 'tiger@gmail.com', 'http://192.168.43.54:8000/storage/profiles/1650984517.png', NULL, '$2y$10$80KfLgBGKFwD6Oa8huUai.vj8g00OgYdRBOcNFH/T0tgO8JIS1lXe', NULL, '2022-04-24 16:39:19', '2022-04-26 09:03:37'),
(3, 'Sam', 'samuel1@gmail.com', NULL, NULL, '$2y$10$xzHa1sFdzRbuWyP8oDmIvODgEbzBt1tQhb.AIbzRyEsl4Jg5tF2Iy', NULL, '2022-04-24 16:53:11', '2022-04-24 16:53:11'),
(4, 'habib', 'habib@gmail.com', NULL, NULL, '$2y$10$/vXbASCaU4k4Q5VuHqC4f.FNBc1VHweZLOP3jnJt/kYiByzPdS6p2', NULL, '2022-04-25 05:11:17', '2022-04-25 05:11:17'),
(5, 'zidan', 'zidan@gmail.com', NULL, NULL, '$2y$10$6x18Xa2dTe5j8pelXm6BrenVqQ8T.GrMkMVW9K4f/ZoTjYKrr1dJG', NULL, '2022-04-25 05:13:56', '2022-04-25 05:13:56'),
(6, 'anmol', 'anmol@gmail.com', NULL, NULL, '$2y$10$m1bv8kDUdedGDw0Maliyiu2ZsdY.sd4VijtvEhx4/QrqTWx/FvFgi', NULL, '2022-04-25 05:58:15', '2022-04-25 05:58:15'),
(7, 'Samuel hero', 'samuel46@gmail.com', 'http://192.168.43.54:8000/storage/profiles/1650983396.png', NULL, '$2y$10$DI1wnx4OTKV5CWL1n4O9vOMe927QAnID00Mz75kkISq1TrmosYUua', NULL, '2022-04-26 07:46:59', '2022-04-26 08:44:57'),
(8, 'Manoj Mikasa', 'manoj@gmail.com', 'http://192.168.43.54:8000/storage/profiles/1650991264.png', NULL, '$2y$10$sw1uFz9BMGw4RQdXF9UNkOVN4ib6Jw0qmEIuJfgpoYQUs358xwdby', NULL, '2022-04-26 08:49:15', '2022-04-26 10:56:05'),
(9, 'Prabhat Don', 'prabhat@gmail.com', 'http://192.168.43.54:8000/storage/profiles/1650984008.png', NULL, '$2y$10$lX4sNC2/Ktv9gmNgb65i1O.8EZlmC7h5C/zevhy8DFRa7xBnsZO5q', NULL, '2022-04-26 08:53:05', '2022-04-26 08:55:08'),
(10, 'Rocky Bhai', 'rocky@gmail.com', 'http://192.168.43.54:8000/storage/profiles/1650984234.png', NULL, '$2y$10$vsdTtH5Kt7aliiCJuu6mZeaV5zX7CGgko./hlbXau9TDa2KYe92ii', NULL, '2022-04-26 08:57:52', '2022-04-26 08:58:54'),
(11, 'Samuel', 'salman@gmail.com', NULL, NULL, '$2y$10$/LxO.sAgAZ6GWhtWkOVczuQaJuLXNK0lzhNuAVIoObvtl3I6OaEq2', NULL, '2022-04-26 11:52:47', '2022-04-26 14:34:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
