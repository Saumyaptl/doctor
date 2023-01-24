-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2022 at 12:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `name`, `email`, `timing`, `created_at`, `updated_at`) VALUES
(1, 'html', 'ku123@gamil.com', '2pm-3pm', '2022-07-03 00:49:39', '2022-07-03 00:49:39'),
(2, 'dgj', 'ku123@gamil.com', '2pm-3pm', '2022-07-03 00:50:41', '2022-07-03 00:50:41'),
(3, 'dg', 'ku123@gamil.com', '7', '2022-07-03 01:03:49', '2022-07-03 01:03:49'),
(4, 'ullu', 'ku123@gamil.com', '2pm-3pm', '2022-07-03 01:11:50', '2022-07-03 01:11:50'),
(5, 'html', 'ku123@gamil.com', '2pm-3pm', '2022-07-04 07:05:46', '2022-07-04 07:05:46'),
(6, 'html', 'sau123@gmail.com', '2pm-3pm', '2022-07-09 01:09:35', '2022-07-09 01:09:35'),
(7, 'dg', 'ku123@gamil.com', '2pm-3pm', '2022-07-09 02:53:32', '2022-07-09 02:53:32');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_02_144350_create_appointment', 1);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`, `spl`) VALUES
(1, 'html', 'ku123@gamil.com', NULL, '1234', NULL, '2022-07-07 13:11:33', '2022-07-07 13:11:33', 'doctor', NULL),
(3, 'html', 'sau123@gmail.com', NULL, '$2y$10$j0UJfNNXDW2dBIrl1WSeZOvxzw3AMh1P1x3gC/ZztqDBxZkMeSvRm', NULL, '2022-07-07 23:34:06', '2022-07-07 23:34:06', 'doctor', 'gkgghj'),
(5, 'html', 'tanya123@gmail.com', NULL, '$2y$10$XT.CLjBgBcUd6LZb4Fb1v.bqDTdk6O7e0ahHrJ0Az/cNSLFtTm4EK', NULL, '2022-07-07 23:38:25', '2022-07-07 23:38:25', 'doctor', 'gkgghj'),
(6, 'html', 'tp123@gmail.com', NULL, '$2y$10$8hXPcHkyyyaCQRLooPsMQuW5hN24Q1c8HqBeS36OSsIV/3L1PFSMC', NULL, '2022-07-08 04:06:43', '2022-07-08 04:06:43', 'doctor', 'gkgghj'),
(7, 'html', 'ko123@gmail.com', NULL, '$2y$10$MZkesdBmhC5aZ1kMSJ11tu7SY1eYP2ssxXuEYiTRJahacsBIXu0Dy', NULL, '2022-07-08 04:20:57', '2022-07-08 04:20:57', 'doctor', 'gkgghj'),
(8, 'html', 'kv123@gamil.com', NULL, '$2y$10$jOB1ryzhe54bZI8QugF.R.eklZXlVAtCKn.wttLZuan10pDKxOIo.', NULL, '2022-07-08 04:27:34', '2022-07-08 04:27:34', 'doctor', 'gkgghj'),
(9, 'html', 'ku1234@gamil.com', NULL, '$2y$10$WDYF22AXPGDW2niUI8LXROt8tGTqS0pejCKtl.bjO8Ba.Zy7.p0bG', NULL, '2022-07-08 05:26:20', '2022-07-08 05:26:20', 'doctor', 'gkgghj'),
(11, 'html', 'km123@gamil.com', NULL, '$2y$10$jvIBuR//wP1K4LsINCG0YerYvTAdax.WHGMi7QAm0D6PdnjSToDrS', NULL, '2022-07-08 23:39:03', '2022-07-08 23:39:03', 'doctor', 'gkgghj'),
(12, 'html', 'sao123@gmail.com', NULL, '$2y$10$cJlTZSdSVbwBulBNE46m0O3wJGvVNQynzszDtICo1tFvqQ07gUMZG', NULL, '2022-07-09 01:31:12', '2022-07-09 01:31:12', 'doctor', 'gkgghj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
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
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
