-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2017 at 11:46 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'India'),
(2, 'Netherland');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_06_14_125607_create_my_songs_table', 1),
(2, '2017_06_14_132159_create_user_table', 2),
(3, '2017_06_14_132226_create_passports_table', 2),
(5, '2017_06_15_070732_create_mobile_table', 3),
(6, '2017_06_15_073801_create_roles_table', 4),
(7, '2017_06_15_073852_create_user_role_table', 4),
(8, '2017_06_15_113945_create_comments_table', 5),
(11, '2017_06_19_130445_create_todos_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `mobiles`
--

CREATE TABLE `mobiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `mobile` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobiles`
--

INSERT INTO `mobiles` (`id`, `mobile`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 987456321, 1, '2017-06-15 01:47:23', '2017-06-15 01:47:23'),
(2, 987456322, 1, '2017-06-15 01:47:34', '2017-06-15 01:47:34'),
(3, 987457322, 2, '2017-06-15 01:47:44', '2017-06-15 01:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `passports`
--

CREATE TABLE `passports` (
  `id` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passports`
--

INSERT INTO `passports` (`id`, `number`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 123456, 1, '2017-06-14 08:00:59', '2017-06-14 08:00:59'),
(2, 123876, 2, '2017-06-14 08:01:09', '2017-06-14 08:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`) VALUES
(1, 1, 'First title'),
(2, 1, 'second title');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2017-06-15 02:12:52', '2017-06-15 02:12:52'),
(2, 'Editor', '2017-06-15 02:12:59', '2017-06-15 02:12:59'),
(3, 'User', '2017-06-15 02:13:09', '2017-06-15 02:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-06-14 18:30:00', '2017-06-14 18:30:00'),
(2, 1, 2, '2017-06-14 18:30:00', '2017-06-14 18:30:00'),
(3, 2, 1, '2017-06-14 18:30:00', '2017-06-14 18:30:00'),
(4, 1, 3, '2017-06-14 18:30:00', '2017-06-14 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `created_at`, `updated_at`) VALUES
(1, 'Closer', 'chainsmoker', '2017-06-14 07:30:37', '2017-06-14 07:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(45, 60, 'Ms. Lilian Moen', '2017-06-21 02:21:20', '2017-06-21 02:21:20'),
(44, 30, 'Florine King', '2017-06-21 02:21:20', '2017-06-21 02:21:20'),
(43, 49, 'Lottie Harber', '2017-06-21 02:21:20', '2017-06-21 02:21:20'),
(42, 50, 'Mr. Isadore Legros', '2017-06-21 02:21:20', '2017-06-21 02:21:20'),
(41, 37, 'Carolyne Bosco', '2017-06-21 02:21:20', '2017-06-21 02:21:20'),
(40, 20, 'Myrl Reichel', '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(39, 36, 'Nia Ankunding', '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(38, 27, 'Prof. Mabel Thompson', '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(37, 96, 'Jocelyn Torp', '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(36, 45, 'Dr. Joey Bosco MD', '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(35, 9, 'Cassandre Berge', '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(34, 85, 'Mr. Guido Leannon DDS', '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(33, 77, 'Dr. Noah Jacobi I', '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(32, 47, 'Prof. Katelyn Okuneva DDS', '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(31, 24, 'Colton DuBuque', '2017-06-21 02:20:25', '2017-06-21 02:20:25'),
(46, 79, 'Prof. Keenan Ryan', '2017-06-21 02:21:20', '2017-06-21 02:21:20'),
(47, 97, 'Dr. Tyshawn Hermiston', '2017-06-21 02:21:20', '2017-06-21 02:21:20'),
(48, 23, 'Mattie Reilly', '2017-06-21 02:21:20', '2017-06-21 02:21:20'),
(49, 73, 'Raleigh Hyatt', '2017-06-21 02:21:20', '2017-06-21 02:21:20'),
(50, 80, 'Maeve Hickle', '2017-06-21 02:21:20', '2017-06-21 02:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'This is title1 edited', 'This is titasdle1This is title1This is title1 editedsds this is test', '2017-06-19 10:20:32', '2017-08-01 04:46:15'),
(2, 'This is title2 edited', 'This is title2This is title2This is title2This is title2This is title2This is title2 edited session', '2017-06-19 10:20:43', '2017-06-20 05:19:59'),
(3, 'This is title3', 'This is title3This is title3This is title3This is title3This is title3This is title3', '2017-06-19 10:20:55', '2017-06-19 10:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `country_id`, `created_at`, `updated_at`) VALUES
(62, 'Ellie Barrows Jr.', 'madge71@example.org', '$2y$10$LtBa1KAm21w8k8onWlF4Yu4FqL73da2.SEUpqtpJu15vDwE20LS1.', 'Fg5BoWBuD9', NULL, '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(61, 'Mckenzie Wehner MD', 'pfannerstill.omari@example.com', '$2y$10$LtBa1KAm21w8k8onWlF4Yu4FqL73da2.SEUpqtpJu15vDwE20LS1.', '5XxW8lSFml', NULL, '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(60, 'Miss Malika Murray V', 'ruthe48@example.com', '$2y$10$LtBa1KAm21w8k8onWlF4Yu4FqL73da2.SEUpqtpJu15vDwE20LS1.', 'zCxw0rYVhC', NULL, '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(59, 'Miss Otilia Jakubowski', 'valentin.hintz@example.net', '$2y$10$LtBa1KAm21w8k8onWlF4Yu4FqL73da2.SEUpqtpJu15vDwE20LS1.', 'l7DboAtvAv', NULL, '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(58, 'Gina Leuschke PhD', 'xhahn@example.org', '$2y$10$LtBa1KAm21w8k8onWlF4Yu4FqL73da2.SEUpqtpJu15vDwE20LS1.', '2qMWy5jpeH', NULL, '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(57, 'Elisabeth Auer', 'murphy.heidenreich@example.com', '$2y$10$LtBa1KAm21w8k8onWlF4Yu4FqL73da2.SEUpqtpJu15vDwE20LS1.', 'fdZZ9IIlSL', NULL, '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(56, 'Owen Gerhold', 'reichel.citlalli@example.net', '$2y$10$LtBa1KAm21w8k8onWlF4Yu4FqL73da2.SEUpqtpJu15vDwE20LS1.', 'ZRIEh8U9ZH', NULL, '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(55, 'Zackary Graham', 'okeefe.kara@example.net', '$2y$10$LtBa1KAm21w8k8onWlF4Yu4FqL73da2.SEUpqtpJu15vDwE20LS1.', 'WcxglnhNOE', NULL, '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(54, 'Nyah Rempel', 'schoen.josiah@example.net', '$2y$10$LtBa1KAm21w8k8onWlF4Yu4FqL73da2.SEUpqtpJu15vDwE20LS1.', 'YL8UduGU58', NULL, '2017-06-21 02:20:26', '2017-06-21 02:20:26'),
(53, 'Brice Watsica', 'rolfson.isac@example.org', '$2y$10$LtBa1KAm21w8k8onWlF4Yu4FqL73da2.SEUpqtpJu15vDwE20LS1.', 'Bfe7KaFPB6', NULL, '2017-06-21 02:20:26', '2017-06-21 02:20:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobiles`
--
ALTER TABLE `mobiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passports`
--
ALTER TABLE `passports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mobiles`
--
ALTER TABLE `mobiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `passports`
--
ALTER TABLE `passports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
