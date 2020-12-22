-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 07:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tweet`
--

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
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `following_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(52, 2, NULL, NULL),
(52, 4, NULL, NULL),
(54, 3, NULL, NULL),
(55, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tweet_id` bigint(20) UNSIGNED NOT NULL,
  `liked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `tweet_id`, `liked`, `created_at`, `updated_at`) VALUES
(5, 2, 1, 1, '2020-12-22 12:27:18', '2020-12-22 12:27:18'),
(6, 2, 2, 0, '2020-12-22 12:27:18', '2020-12-22 12:27:18'),
(7, 52, 23, 1, '2020-12-22 13:57:06', '2020-12-22 13:57:06'),
(8, 52, 14, 0, '2020-12-22 13:57:11', '2020-12-22 14:09:29'),
(9, 52, 43, 1, '2020-12-22 14:09:10', '2020-12-22 14:09:20'),
(10, 52, 44, 0, '2020-12-22 14:09:54', '2020-12-22 14:19:12'),
(11, 52, 2, 0, '2020-12-22 14:16:15', '2020-12-22 14:16:22'),
(12, 52, 1, 0, '2020-12-22 14:18:51', '2020-12-22 14:18:51'),
(13, 52, 4, 0, '2020-12-22 14:19:09', '2020-12-22 14:19:09'),
(14, 52, 45, 0, '2020-12-22 14:25:40', '2020-12-22 14:25:42'),
(15, 52, 46, 0, '2020-12-22 14:54:52', '2020-12-22 14:54:53'),
(16, 52, 3, 0, '2020-12-22 15:04:45', '2020-12-22 15:04:45'),
(17, 52, 49, 0, '2020-12-22 15:14:36', '2020-12-22 15:14:38'),
(18, 54, 52, 0, '2020-12-22 16:02:06', '2020-12-22 16:02:10'),
(19, 54, 53, 0, '2020-12-22 16:04:00', '2020-12-22 16:04:01'),
(20, 55, 55, 0, '2020-12-22 16:07:16', '2020-12-22 16:07:25');

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
(4, '2020_12_15_200006_create_tweets_table', 1),
(5, '2020_12_16_104531_create_follows_table', 1),
(6, '2020_12_21_123606_create_likes_table', 1),
(7, '2020_12_22_132010_create_likes_table', 2);

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
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 'Repellendus qui est sit.', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(2, 2, 'Repellendus qui est sit.', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(3, 2, 'Repellendus qui est sit.', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(4, 2, 'Modi qui hic dolorem omnis cupiditate.', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(5, 6, 'Qui impedit modi quaerat labore eos adipisci.', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(6, 7, 'Qui est reiciendis temporibus eum sit porro ipsum.', '2020-12-21 11:38:42', '2020-12-21 11:38:42'),
(7, 8, 'In et dolorum voluptate qui et quia quis.', '2020-12-21 11:38:42', '2020-12-21 11:38:42'),
(8, 9, 'Et qui qui autem laborum quam sed eum distinctio.', '2020-12-21 11:38:42', '2020-12-21 11:38:42'),
(9, 10, 'Impedit et quasi tempore non et eveniet.', '2020-12-21 11:38:42', '2020-12-21 11:38:42'),
(10, 11, 'Dignissimos odio est molestiae ex sunt delectus ut.', '2020-12-21 11:38:42', '2020-12-21 11:38:42'),
(11, 12, 'Accusantium id laudantium nostrum.', '2020-12-21 11:40:33', '2020-12-21 11:40:33'),
(12, 13, 'Suscipit tempore eius repellat rerum provident error.', '2020-12-21 11:40:33', '2020-12-21 11:40:33'),
(13, 14, 'Mollitia sequi accusantium provident dolores fugiat.', '2020-12-21 11:40:33', '2020-12-21 11:40:33'),
(14, 15, 'Explicabo ipsum dicta praesentium sed quasi.', '2020-12-21 11:40:33', '2020-12-21 11:40:33'),
(15, 16, 'Earum autem quasi atque illum architecto ipsam.', '2020-12-21 11:40:33', '2020-12-21 11:40:33'),
(16, 17, 'Animi alias nemo commodi aspernatur autem praesentium.', '2020-12-21 11:40:33', '2020-12-21 11:40:33'),
(17, 18, 'Rerum vel ad odit.', '2020-12-21 11:40:33', '2020-12-21 11:40:33'),
(18, 19, 'Maiores dignissimos soluta temporibus minus et eaque saepe.', '2020-12-21 11:40:33', '2020-12-21 11:40:33'),
(19, 20, 'Explicabo blanditiis voluptatum consequuntur.', '2020-12-21 11:40:33', '2020-12-21 11:40:33'),
(20, 21, 'Tempora quasi aut vitae nam adipisci omnis.', '2020-12-21 11:40:33', '2020-12-21 11:40:33'),
(21, 22, 'Ex consequuntur sit cupiditate id est cum officiis est.', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(22, 23, 'Aut ea adipisci est quam vel.', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(23, 24, 'Voluptatibus qui ratione debitis consequatur in perferendis quia.', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(24, 25, 'Eum incidunt error aliquam natus quo et exercitationem et.', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(25, 26, 'Maiores eaque accusamus inventore corrupti.', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(26, 27, 'Eveniet libero corrupti at molestias repudiandae dolores voluptas.', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(27, 28, 'Qui natus quo necessitatibus voluptas nihil est.', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(28, 29, 'Qui dolores laboriosam sunt nihil et asperiores et.', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(29, 30, 'Voluptatibus nobis totam rerum magni qui placeat.', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(30, 31, 'Aut delectus quaerat et qui.', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(31, 1, 'first', '2020-12-21 11:41:59', '2020-12-21 11:41:59'),
(32, 42, 'Enim quis soluta dolorem amet quo in impedit.', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(33, 43, 'Quidem omnis quia vel soluta dolores.', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(34, 44, 'Hic fuga quasi maiores minima voluptas.', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(35, 45, 'Vel veritatis libero vitae et.', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(36, 46, 'Non eum quod qui veniam.', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(37, 47, 'Aut facere voluptate porro praesentium iure et eum.', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(38, 48, 'Molestiae in sit perferendis magni.', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(39, 49, 'Inventore fuga perspiciatis pariatur deleniti.', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(40, 50, 'A vero et qui ex blanditiis qui cupiditate.', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(41, 51, 'Aut nisi dignissimos necessitatibus mollitia eos voluptas rerum.', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(42, 52, 'first tweet', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(43, 2, 'Sapiente unde recusandae eius qui esse in.', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(44, 52, 'First Tweet In Twitter', '2020-12-22 14:09:49', '2020-12-22 14:09:49'),
(45, 52, 'Fiescdkjcnsldc', '2020-12-22 14:25:31', '2020-12-22 14:25:31'),
(46, 52, 'first', '2020-12-22 14:54:49', '2020-12-22 14:54:49'),
(47, 52, 'dfvdfvf', '2020-12-22 14:59:56', '2020-12-22 14:59:56'),
(48, 52, 'fvdfvdfvfv', '2020-12-22 15:00:00', '2020-12-22 15:00:00'),
(49, 52, 'fvffvffffffffffffffffffffff', '2020-12-22 15:00:07', '2020-12-22 15:00:07'),
(50, 52, 'بسم الله الرخمن الرحيم', '2020-12-22 16:00:01', '2020-12-22 16:00:01'),
(51, 52, 'برنامج محاكاه للتويتر', '2020-12-22 16:00:50', '2020-12-22 16:00:50'),
(52, 54, 'first twitter', '2020-12-22 16:02:03', '2020-12-22 16:02:03'),
(53, 54, 'بسم  الله  الرحمن الرحيم', '2020-12-22 16:03:58', '2020-12-22 16:03:58'),
(54, 55, 'First Tweet', '2020-12-22 16:06:37', '2020-12-22 16:06:37'),
(55, 55, 'Second Tweet', '2020-12-22 16:06:46', '2020-12-22 16:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'fanny56', 'Ola Daugherty', NULL, 'lula29@example.net', '2020-12-21 11:38:40', '$2y$10$CJ/I5EOG2wxCjrrdbWytSukvbNdw0KaqZYLblcCh2SdJ9T/uv41qO', '0VvCGvjDRE', '2020-12-21 11:38:40', '2020-12-21 11:38:40'),
(3, 'hirthe.frederik', 'Foster Lang MD', NULL, 'petra.macejkovic@example.org', '2020-12-21 11:38:40', '$2y$10$WYoXDLBPvqgPSxTBOFe9LesUVCHGPKu6e96sA7YNJz3QRSp8T90gK', 'rHVPYCwuu7', '2020-12-21 11:38:40', '2020-12-21 11:38:40'),
(4, 'ywolff', 'Roberto Yundt', NULL, 'nils37@example.net', '2020-12-21 11:38:40', '$2y$10$REOm7zEr9fd1/2.adjyWJ.MOno18wFt/nY7U9dfrEW4cDIt3kyade', '9FPLnYZeOR', '2020-12-21 11:38:40', '2020-12-21 11:38:40'),
(5, 'roosevelt.kautzer', 'Maverick Moen DDS', NULL, 'vcarroll@example.net', '2020-12-21 11:38:40', '$2y$10$mCESLAVtTIdfs6B90bTH6Ow5D3o5Z6KbMMPJm/01Kk4567y7G/cuy', 'bASZy1PBMl', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(6, 'alyson.smitham', 'Prof. Vern Yundt', NULL, 'xheathcote@example.com', '2020-12-21 11:38:41', '$2y$10$ukK8THeNsjxORsz6kvVu0ei0wqr/jyOWDsJ5z0FBqSE84X10RobW2', 'kDbPwst2Tz', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(7, 'melissa.price', 'Clyde Nolan', NULL, 'rogahn.miller@example.com', '2020-12-21 11:38:41', '$2y$10$lcTWnDZwfmEXPizPJBF7t.3pjgEZIqDsc/Ty5mGq4uF3Fh7F71D4m', '4ZElLuuGTE', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(8, 'michaela30', 'Augusta Kiehn Jr.', NULL, 'dayna89@example.org', '2020-12-21 11:38:41', '$2y$10$aqnhiyHb8RsRxQMDVAwYC.s5ItIAqpNf1uTxZY8q1mASWqK5MnxvO', '55lknNtK5B', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(9, 'drake.mcdermott', 'Mr. Norberto Farrell', NULL, 'johnathan.schulist@example.com', '2020-12-21 11:38:41', '$2y$10$/zMy9LavABvugVzeD0d0euGV3w/cpGC08gbrUXz8CmTjOwMuRjtsu', 'TbS9O6z6lB', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(10, 'sanford81', 'Dr. Ed Senger II', NULL, 'yryan@example.com', '2020-12-21 11:38:41', '$2y$10$nJMAjQTPd8qy4UcUOjz/GO47wG6MuSlszqyw3Z6gzuIH2YtZyTdMe', 'qBmQrEmqj0', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(11, 'jamir24', 'Marshall Kerluke', NULL, 'eula70@example.net', '2020-12-21 11:38:41', '$2y$10$akD4wUPiJ5pXB9kxADzMIO5TVi0FKMi2AMolZvGd3jUvicHk0Z4IO', 'H7fjkwMCNY', '2020-12-21 11:38:41', '2020-12-21 11:38:41'),
(12, 'brenna.willms', 'Mrs. Jany Corkery', NULL, 'wanda61@example.net', '2020-12-21 11:40:31', '$2y$10$l3wQaDW8HyQO63bioxgBMOMawyee0hZdaFKmhktQSaIccu0pqpL7.', 'd5yr0rRaGu', '2020-12-21 11:40:31', '2020-12-21 11:40:31'),
(13, 'xcormier', 'Clinton Stoltenberg I', NULL, 'krista60@example.org', '2020-12-21 11:40:31', '$2y$10$jL3eN7rIal2EZ3qKbpLDR.zTvEQcpme2rBZV2dck1g.SO8QtsjsYC', 'juhYiawuMz', '2020-12-21 11:40:32', '2020-12-21 11:40:32'),
(14, 'armstrong.jordy', 'Tyrique Bauch', NULL, 'jordyn61@example.org', '2020-12-21 11:40:32', '$2y$10$8BRnP.f9KGdpsHf/QSu3XuLGAVgKh4Rh/xBdpnMTjX/tEfXnbatq6', 'xMnii6tNRp', '2020-12-21 11:40:32', '2020-12-21 11:40:32'),
(15, 'lois42', 'Ms. Aida Wintheiser', NULL, 'mraz.ashlee@example.com', '2020-12-21 11:40:32', '$2y$10$PasMllw1D8U5uYt8.Oqmu.bU1OEz5jTu06kSk3M27fIsZCWYlPT2q', 'f1Cu5eRNvb', '2020-12-21 11:40:32', '2020-12-21 11:40:32'),
(16, 'zpadberg', 'Sheridan Oberbrunner', NULL, 'judge.rolfson@example.net', '2020-12-21 11:40:32', '$2y$10$bJQh6GwRT43raKHoZBeDdOHbsMApDvfunUmbbur1Vbe.B17dDh53G', 'TzdXCxRTqq', '2020-12-21 11:40:32', '2020-12-21 11:40:32'),
(17, 'bailey.gregoria', 'Josianne Crist', NULL, 'abbott.edd@example.org', '2020-12-21 11:40:32', '$2y$10$/tiyyaDmEsMfsMYeD77ngOxKSk6q0V2qSmJW5tepJAurhceHOIIRC', 'ZapGwBFxZj', '2020-12-21 11:40:32', '2020-12-21 11:40:32'),
(18, 'kyleigh16', 'Miss Isabell Bauch', NULL, 'wiza.jeanie@example.com', '2020-12-21 11:40:32', '$2y$10$Phfgtm8ZH0D1ZG0aPX5pjO.g68RujAihkuM1ahcpHT5ZrkBUoT016', 'zLPJMBWazR', '2020-12-21 11:40:32', '2020-12-21 11:40:32'),
(19, 'herzog.jaylon', 'Shaun Leffler Jr.', NULL, 'marquis.block@example.net', '2020-12-21 11:40:32', '$2y$10$oQmaoPgMCreLRAgFVTD99ukmuEfQ6ox8c1KljCZjGVb8lpSXBt50a', 'lkXC14ApzZ', '2020-12-21 11:40:32', '2020-12-21 11:40:32'),
(20, 'candida77', 'Justina Homenick I', NULL, 'mabbott@example.net', '2020-12-21 11:40:32', '$2y$10$WOnRLLRRQec55xJ.WEbtcu5tUmiWnCitHyUDDT9lbZxZ4kbc6UAGm', 'OX8gfGcCB6', '2020-12-21 11:40:32', '2020-12-21 11:40:32'),
(21, 'zella61', 'Kameron Bruen', NULL, 'mbahringer@example.com', '2020-12-21 11:40:33', '$2y$10$VPUVEvntaTdYSqn9n3SW/.sQacLoNi0ngqbWtEAnyPRyvWEemomZG', 'k7igK08qjE', '2020-12-21 11:40:33', '2020-12-21 11:40:33'),
(22, 'ivory.price', 'Mrs. Maeve Wiegand II', NULL, 'alexie33@example.net', '2020-12-21 11:41:40', '$2y$10$qHcPQLdcPzkryf3KHFk8w.lj9HEaQpf4QyAxMRdalar46vPlNBhrO', 'FolVocDc8Q', '2020-12-21 11:41:40', '2020-12-21 11:41:40'),
(23, 'abdullah.waters', 'Malinda Jakubowski', NULL, 'uferry@example.org', '2020-12-21 11:41:40', '$2y$10$5ljqpTiRKiwHI42JD5YywOOu.OIW8NVozRtlMJ2yWm8vRCZVv6w/u', 'HDpJUIBRHe', '2020-12-21 11:41:40', '2020-12-21 11:41:40'),
(24, 'jessica70', 'Ms. Leonora Kovacek', NULL, 'rasheed16@example.com', '2020-12-21 11:41:40', '$2y$10$BPEtgrO0DSEueaTxuMgSKejsxPdszzd8GiGSc0Hx6.AxbeuWu07EG', '6iVehWKoC3', '2020-12-21 11:41:40', '2020-12-21 11:41:40'),
(25, 'camron62', 'Aiyana Romaguera', NULL, 'simonis.brooklyn@example.org', '2020-12-21 11:41:40', '$2y$10$OHoDlrldGwqIeo3ZnfdKo.HM2orxI./DJXVR.qOG4XyFbGhoB7xNm', 'vviBaUhbmM', '2020-12-21 11:41:40', '2020-12-21 11:41:40'),
(26, 'ykling', 'Dr. Delbert Jakubowski Jr.', NULL, 'tboehm@example.org', '2020-12-21 11:41:40', '$2y$10$GOoyvHbzO4pAQmt9JHfLD.wnnXz4BilXgiy4RLRkKBh/gKyk0KNQ.', 'JFs7y6GNGH', '2020-12-21 11:41:40', '2020-12-21 11:41:40'),
(27, 'rashawn51', 'Dr. Major Torp Sr.', NULL, 'allison.rice@example.net', '2020-12-21 11:41:40', '$2y$10$2cRuJX3J4DgMl/zVnuKU8ewytv8VEyRMoi3EcDEUC2C9Z2xYmxBTe', 'AOujHn4T8u', '2020-12-21 11:41:40', '2020-12-21 11:41:40'),
(28, 'madisyn.schmitt', 'Owen Carter IV', NULL, 'wschmidt@example.org', '2020-12-21 11:41:40', '$2y$10$YgadpVqdM4B6B7wUXTg1auS2USzcuKaXJYmX8TkVoI7quwoIzzUq2', 'KPeXdh2Lmi', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(29, 'gutmann.albertha', 'Prof. Milford Greenholt I', NULL, 'quigley.buddy@example.com', '2020-12-21 11:41:41', '$2y$10$Dv1uyfxu58F1Fctp5uUa8eCqIV8NpvCJMlcBXMwwVykGILC58sHeu', 'Ye3d0ITibQ', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(30, 'hodkiewicz.adrian', 'Kavon Kutch', NULL, 'pinkie63@example.net', '2020-12-21 11:41:41', '$2y$10$AZE.HKHgC0SRP28SqY00fueGgxVttpi9dbJb3X1ABJ9z.xYTTPJum', 't2Wb0Gctac', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(31, 'mckayla42', 'Prof. Kameron Konopelski', NULL, 'llangosh@example.org', '2020-12-21 11:41:41', '$2y$10$tQKKrFw2JCARKVxzXZoWQO7FjpoZQ25cWgcQuFWDHsdW3Ielpcmxy', 'Qy9OdrfZUR', '2020-12-21 11:41:41', '2020-12-21 11:41:41'),
(32, 'qryan', 'Mr. Tyshawn Reichert', NULL, 'vance.stracke@example.net', '2020-12-21 11:43:00', '$2y$10$qenk6KFI748gtpYSC9Sr2euA00P3NgKkk1/uJ2vJsI0q/mkpd6one', 'O47IJAOHM1', '2020-12-21 11:43:00', '2020-12-21 11:43:00'),
(33, 'hhansen', 'Mr. Judge Bernhard', NULL, 'kimberly.zulauf@example.net', '2020-12-21 11:43:00', '$2y$10$AbWI./3KL0hdfWEcBsNSjeJ8tF19n6B1xFDZMftCipm6KKVeLyoO6', 'BmiVpFIetm', '2020-12-21 11:43:01', '2020-12-21 11:43:01'),
(34, 'lizeth85', 'Maxine Boehm', NULL, 'weston.orn@example.com', '2020-12-21 11:43:00', '$2y$10$GaOxifG6IkEY7uw/nt6MH.iGu4d6ihV.UhrmQoAoie24Ql1qmIi5i', 'JF93L9l2fn', '2020-12-21 11:43:01', '2020-12-21 11:43:01'),
(35, 'bartell.bella', 'Miss Daisy Lynch', NULL, 'ssenger@example.net', '2020-12-21 11:43:00', '$2y$10$kQ0WZ1uTw84wYWO8Fnxc/uSKAwdwptQ2VuVAVCJ57KGY7.yhRQc4W', 'UcOrbjjqre', '2020-12-21 11:43:01', '2020-12-21 11:43:01'),
(36, 'corwin.austyn', 'Justyn Doyle', NULL, 'giovanni04@example.org', '2020-12-21 11:43:00', '$2y$10$foxvTmYwQgs9gdn8/0YNRuezjzehUviiI7bx9oQj.69o21ws4mtPy', 'lu1v35bDLq', '2020-12-21 11:43:01', '2020-12-21 11:43:01'),
(37, 'garett.becker', 'Brannon Hermiston', NULL, 'rosalee.keebler@example.org', '2020-12-21 11:43:00', '$2y$10$SqaUYq0IRM4PPq0ZwlQv4e9OHlpFZRdFt3sw56bIZUhj7xC8M5g7i', '4dNDSUfADa', '2020-12-21 11:43:01', '2020-12-21 11:43:01'),
(38, 'smueller', 'Ms. Rosetta Mosciski Jr.', NULL, 'qrippin@example.org', '2020-12-21 11:43:00', '$2y$10$mZjM2wtNqhTFMAQ5oEW7QujBxJkxIYMd5TT/KXmicVJFEeZ5qmI3q', 'XOwL6qbVjO', '2020-12-21 11:43:01', '2020-12-21 11:43:01'),
(39, 'eschimmel', 'Prof. Clotilde Auer', NULL, 'plindgren@example.net', '2020-12-21 11:43:00', '$2y$10$fkiVLXg5nlL1taanqSSB2OGjq554u7yvYa1KsbxZtufIjIlV2c7GS', '5l6HKpkwPY', '2020-12-21 11:43:01', '2020-12-21 11:43:01'),
(40, 'isaiah.wiegand', 'Rosalyn Powlowski III', NULL, 'cordia.hermann@example.net', '2020-12-21 11:43:00', '$2y$10$2YXLQAmzoxFprXrj/iO8TeLt1xkB7R9fA26II4T0q6ElDgwEEnOOK', '0GLdm753jI', '2020-12-21 11:43:01', '2020-12-21 11:43:01'),
(41, 'greenfelder.estevan', 'Dahlia Roob', NULL, 'rebekah.christiansen@example.com', '2020-12-21 11:43:00', '$2y$10$T4j54MeKH0RcuMactcZXAOuBGpMdM.kMfl1ksienuXZX74.piLuye', 'z9ET7fAzlg', '2020-12-21 11:43:01', '2020-12-21 11:43:01'),
(42, 'cbashirian', 'Lucas Marquardt DDS', NULL, 'morissette.wilfredo@example.net', '2020-12-21 11:46:33', '$2y$10$qeJkxlkTvZqnOG92aBJpy.v7wrIIW7E9WSx9S8tOcKls4LoO7CP.O', 'ZjGbWEJpkr', '2020-12-21 11:46:33', '2020-12-21 11:46:33'),
(43, 'neffertz', 'Damien Christiansen', NULL, 'gennaro.stehr@example.org', '2020-12-21 11:46:33', '$2y$10$9mIgQe/vXAwfb8z/xpaskOvhDfV0rrv6Jwf2ZY9YHZxPzH3drC2ya', 'dKy01lL5zU', '2020-12-21 11:46:33', '2020-12-21 11:46:33'),
(44, 'hand.reinhold', 'Dr. Bridgette Shields', NULL, 'okiehn@example.com', '2020-12-21 11:46:33', '$2y$10$EEPY4r0fWJivceP0z/BgYO8DoLzn7au7TkdyHOCDdGnthsN60c6tm', 'hXJVfebiba', '2020-12-21 11:46:33', '2020-12-21 11:46:33'),
(45, 'ervin.ankunding', 'Dr. Carmen Crooks Jr.', NULL, 'bcronin@example.org', '2020-12-21 11:46:33', '$2y$10$W5V48JG3oDMOtj0iKW.LzeyWMIw156VG8Y84W9wnWN.bOO.HrIcQy', '9rtngsvA7o', '2020-12-21 11:46:33', '2020-12-21 11:46:33'),
(46, 'forest.roberts', 'Sibyl Beahan', NULL, 'bailey.isabel@example.org', '2020-12-21 11:46:33', '$2y$10$7KKP6GDGcM71i.ewuuyY.eK1pIlaAMD/MdcZzFiQIiiP2Q8eDP0p6', 'KmLJgkna9e', '2020-12-21 11:46:33', '2020-12-21 11:46:33'),
(47, 'miller.alexanne', 'Vella Boyle', NULL, 'ora.green@example.com', '2020-12-21 11:46:33', '$2y$10$C.khAWi8mugY6VNiTXEO8OZh8HbWtfdOWPTzFFv.hL0sDS2fKTmau', '2ad5ll75Ki', '2020-12-21 11:46:33', '2020-12-21 11:46:33'),
(48, 'matilde31', 'Angeline Zboncak', NULL, 'dejah41@example.org', '2020-12-21 11:46:33', '$2y$10$sJrixvEEgtgJvLN3LYhV0u8JMgb.2UjKtWT0dl3coJPYtWc4VV0cq', 'tidMjgNNCF', '2020-12-21 11:46:33', '2020-12-21 11:46:33'),
(49, 'dubuque.jazmin', 'Deondre Wintheiser', NULL, 'cade32@example.net', '2020-12-21 11:46:33', '$2y$10$IERC9UEXiIlA59Yku/9whueTcEVCA0hOBlJB641mVqa7F3FigTd/K', 'F566bjEoXi', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(50, 'brady65', 'Mrs. Myrtis Kilback III', NULL, 'santino.nienow@example.net', '2020-12-21 11:46:34', '$2y$10$S/uFaDPvHpvm48PIgppl5.7dXldDH3bCaE8hqGaBtYDcv/bZnkH3.', 'bZCBplLhUB', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(51, 'al65', 'Kaylee Jacobson', NULL, 'reinger.hunter@example.net', '2020-12-21 11:46:34', '$2y$10$REEDZB/XDFDzuUi3u5572.Sh2Vv5ulpVnSAfO/TqzTNUKyUVp0.ki', '6VQk5gLF0a', '2020-12-21 11:46:34', '2020-12-21 11:46:34'),
(52, 'Ahmed', 'Ahmed Ibrahim', '1608657994.jpg', 'ahmedibrahim2621998@gmail.com', NULL, '$2y$10$bZyVhCf/yGKTySIbyhCxZOIAzI/mW/K4ISiR1xdTHnpNkLP29UY5.', NULL, '2020-12-22 11:10:59', '2020-12-22 15:26:34'),
(53, 'ahmed_26', 'Ahmed Ibrahim Kamal', NULL, 'ahmed@example.com', NULL, '$2y$10$pn8aghbwrxAYS76TWCMf.eHzFcOntRHuZV6VIDLyaTkRB0iXn2Xz.', NULL, '2020-12-22 15:57:26', '2020-12-22 15:57:26'),
(54, 'Ahmed_Ibrahim', 'Ahmed Ibrahim', NULL, 'ahmed@ahmed.com', NULL, '$2y$10$WARpN4vsB7tZHmEigV759eQXD2/idJB7lqaI8qapX9F21zgH3kj3O', NULL, '2020-12-22 16:01:50', '2020-12-22 16:01:50'),
(55, 'Ahmed_Ibrahim258', 'Mohamed', NULL, 'ahmed@Mohamed.com', NULL, '$2y$10$fe.ZMfO9iGa70gpMkJDm0OKfTAafjQVcNUIzcFmnY9bojZVI2IJce', NULL, '2020-12-22 16:06:27', '2020-12-22 16:06:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_tweet_id_foreign` (`tweet_id`);

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
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_tweet_id_foreign` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
