-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2021 at 08:05 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `member_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `member_id`) VALUES
(5, 'joy', '4'),
(6, 'neetu', '7'),
(7, 'neetu', '8'),
(8, 'neetu', '8'),
(9, 'neetu', '8'),
(10, 'neetu', '8'),
(11, 'neetu', '8'),
(12, 'neetudewakar', '9'),
(13, 'priya', '10'),
(14, 'priya', '10'),
(15, 'priya1234', '116');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
(1, 'App\\Models\\User', 3, 'MyApp', 'c84b2b72632420f27f3bd446117881a6334237cd362601cd264ce8cff4744366', '[\"*\"]', NULL, '2021-10-08 23:11:01', '2021-10-08 23:11:01'),
(2, 'App\\Models\\User', 7, 'MyApp', '044793f3a44c1142b1683b156babe2083923d65b2efd4399518acbf94e65749f', '[\"*\"]', NULL, '2021-10-08 23:30:48', '2021-10-08 23:30:48'),
(3, 'App\\Models\\User', 8, 'MyApp', '7a8d27a76754e6ca04a013220c57ed1d5459f9a2155c418f2eb566a67820a637', '[\"*\"]', NULL, '2021-10-08 23:31:42', '2021-10-08 23:31:42'),
(4, 'App\\Models\\User', 9, 'MyApp', '18fe21d79432258a8e6040f1c9391c79cce4aabf4544de5a8e4f7a6ec63e59cf', '[\"*\"]', NULL, '2021-10-08 23:33:52', '2021-10-08 23:33:52'),
(5, 'App\\Models\\User', 12, 'MyApp', '74bdbd4cdcded7546d26b8b8c72a0e02ab040a695134fce5d8eb663327693e01', '[\"*\"]', NULL, '2021-10-08 23:56:00', '2021-10-08 23:56:00'),
(6, 'App\\Models\\User', 15, 'MyApp', '42e22d048054b5f5c75b3e8844baae3b37f66e31f9ce4df64f68aa12ef575c4f', '[\"*\"]', NULL, '2021-10-08 23:57:59', '2021-10-08 23:57:59'),
(7, 'App\\Models\\User', 15, 'MyApp', 'f303857e645ba887967df969a41fd73aeea08e41bde12ab566b8a24956f44e17', '[\"*\"]', NULL, '2021-10-09 00:05:17', '2021-10-09 00:05:17'),
(8, 'App\\Models\\User', 15, 'MyApp', 'e6d3de842ae00fd4247f832cc2cf3a0b3a747b3b2486545775324beb4f1e7641', '[\"*\"]', NULL, '2021-10-09 00:09:48', '2021-10-09 00:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'neelam', 'neelam@gmail.com', NULL, '$2y$10$Gi0rxbI2uw7UCf3zmnFP8OU.DrXaVEhcJ6ZsH7JCZ8DV2N6ueSrYW', NULL, '2021-10-08 07:28:47', '2021-10-08 07:28:47'),
(3, 'neelam123', 'neelam1234@gmail.com', NULL, '$2y$10$HZWrtoug3./PB4Rr/PdEFuxEpnDEDa3OtwYrkxycY0SgjJRFXEfZu', NULL, '2021-10-08 23:11:01', '2021-10-08 23:11:01'),
(7, 'neelam1237', 'neelam12347@gmail.com', NULL, '$2y$10$WjEeCZffhkrzTsAb1gycgedPB6w9rnKBsoqTwys6G38qNRXcNrMMG', NULL, '2021-10-08 23:30:48', '2021-10-08 23:30:48'),
(8, 'neelam12378', 'neelam123478@gmail.com', NULL, '$2y$10$f5XvxS0fTpOhSVwTAqDBxuaYY8yHOXtGi9BsDZNceoYqMuQlqVhAK', NULL, '2021-10-08 23:31:42', '2021-10-08 23:31:42'),
(9, 'pradeep', 'pradeep@gmail.com', NULL, '$2y$10$9rYqCeDP1We6kutg/jpfrebaKaNk7lCOTU4JMerzXzWOdsM1Vw4Zu', NULL, '2021-10-08 23:33:52', '2021-10-08 23:33:52'),
(12, 'pradeep123', 'pradeep123@gmail.com', NULL, '$2y$10$D9v6dbeGGNqCE4FAaZuunuVjuBAybbxsW/CWecyzMl4FuGlRUK.NS', NULL, '2021-10-08 23:56:00', '2021-10-08 23:56:00'),
(13, 'pradeep1234', 'pradeep1234@gmail.com', NULL, '$2y$10$gOdDFg2Xe3G3qBYdaI.hXulAjBUQKgQygoEGMFajyidJx9jYF8Upi', NULL, '2021-10-08 23:57:38', '2021-10-08 23:57:38'),
(15, 'pradeep123454', 'pradeep123446@gmail.com', NULL, '$2y$10$ojAwFYMIXMfa9Hw8DO//Z./gi8Ff3IMnb06ehohTHZiOMay9pfrqe', NULL, '2021-10-08 23:57:59', '2021-10-08 23:57:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
