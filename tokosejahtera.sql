-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2021 at 05:48 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokosejahtera`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `clothe_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`clothe_id`, `quantity`, `price`, `subtotal`) VALUES
(3, 2, 300000, 600000);

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`id`, `name`, `image`, `stock`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Hokusai Blue 1', 'images\\wave.jpg', 7, 280000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis semper, est non lobortis rutrum, lorem sapien maximus elit, in laoreet tellus augue eget dui. Maecenas libero enim, commodo ut ipsum sit amet, elementum sodales lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut elementum velit. Duis at dolor fringilla, pharetra nibh non, sodales arcu. Donec est justo, gravida quis dolor faucibus, pretium maximus nisl. Sed at nunc vel massa imperdiet laoreet. Sed vel tristique mi. Quisque luctus, nisi non tristique varius, justo urna euismod nibh, eu imperdiet lorem sem vel mi. Aenean sed consectetur erat, nec volutpat eros. Sed ut rhoncus tortor, quis laoreet nibh. Maecenas quis dolor a quam congue accumsan. Nulla eu laoreet urna, at consectetur magna. Fusce enim ligula, sodales quis convallis eu, vestibulum ac justo. Nulla ac interdum sapien. Vestibulum id diam facilisis, ornare arcu at, porttitor ex. Nunc facilisis nibh ac nibh rutrum mollis. Nullam justo diam, elementum convallis sollicitudin id, finibus ac mauris. Aenean porta, mauris sit amet luctus bibendum, purus leo ornare ante, eu efficitur ipsum ligula quis nibh. Integer ut erat id justo maximus tincidunt quis at elit. Quisque efficitur mauris ac nunc placerat, vel porttitor ante iaculis. Curabitur volutpat nisi sit amet ex ultrices, et placerat erat dapibus.', NULL, NULL),
(2, 'Hokusai Blue 2', 'images\\mountain.jpg', 15, 280000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis semper, est non lobortis rutrum, lorem sapien maximus elit, in laoreet tellus augue eget dui. Maecenas libero enim, commodo ut ipsum sit amet, elementum sodales lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut elementum velit. Duis at dolor fringilla, pharetra nibh non, sodales arcu. Donec est justo, gravida quis dolor faucibus, pretium maximus nisl. Sed at nunc vel massa imperdiet laoreet. Sed vel tristique mi. Quisque luctus, nisi non tristique varius, justo urna euismod nibh, eu imperdiet lorem sem vel mi. Aenean sed consectetur erat, nec volutpat eros. Sed ut rhoncus tortor, quis laoreet nibh. Maecenas quis dolor a quam congue accumsan. Nulla eu laoreet urna, at consectetur magna. Fusce enim ligula, sodales quis convallis eu, vestibulum ac justo. Nulla ac interdum sapien. Vestibulum id diam facilisis, ornare arcu at, porttitor ex. Nunc facilisis nibh ac nibh rutrum mollis. ', NULL, NULL),
(3, 'Hokusai Blue 3', 'images\\fisher.jpg', 10, 300000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis semper, est non lobortis rutrum, lorem sapien maximus elit, in laoreet tellus augue eget dui. Maecenas libero enim, commodo ut ipsum sit amet, elementum sodales lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut elementum velit. Duis at dolor fringilla, pharetra nibh non, sodales arcu. Donec est justo, gravida quis dolor faucibus, pretium maximus nisl. Sed at nunc vel massa imperdiet laoreet. Sed vel tristique mi. Quisque luctus, nisi non tristique varius, justo urna euismod nibh, eu imperdiet lorem sem vel mi. Aenean sed consectetur erat, nec volutpat eros. Sed ut rhoncus tortor, quis laoreet nibh. Maecenas quis dolor a quam congue accumsan. Nulla eu laoreet urna, at consectetur magna. Fusce enim ligula, sodales quis convallis eu, vestibulum ac justo. Nulla ac interdum sapien. Vestibulum id diam facilisis, ornare arcu at, porttitor ex. Nunc facilisis nibh ac nibh rutrum mollis. Nullam justo diam, elementum convallis sollicitudin id, finibus ac mauris.', NULL, NULL),
(4, 'Hokusai Blue 4', 'images\\sailing.jpg', 8, 290000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis semper, est non lobortis rutrum, lorem sapien maximus elit, in laoreet tellus augue eget dui. Maecenas libero enim, commodo ut ipsum sit amet, elementum sodales lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut elementum velit. Duis at dolor fringilla, pharetra nibh non, sodales arcu. Donec est justo, gravida quis dolor faucibus, pretium maximus nisl. Sed at nunc vel massa imperdiet laoreet. Sed vel tristique mi. Quisque luctus, nisi non tristique varius, justo urna euismod nibh, eu imperdiet lorem sem vel mi. Aenean sed consectetur erat, nec volutpat eros. Sed ut rhoncus tortor, quis laoreet nibh. Maecenas quis dolor a quam congue accumsan. Nulla eu laoreet urna, at consectetur magna. Fusce enim ligula, sodales quis convallis eu, vestibulum ac justo.', NULL, NULL),
(5, 'Hokusai Blue 5', 'images\\manywaves.jpg', 7, 280000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis semper, est non lobortis rutrum, lorem sapien maximus elit, in laoreet tellus augue eget dui. Maecenas libero enim, commodo ut ipsum sit amet, elementum sodales lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut elementum velit. Duis at dolor fringilla, pharetra nibh non, sodales arcu. Donec est justo, gravida quis dolor faucibus, pretium maximus nisl. Sed at nunc vel massa imperdiet laoreet. Sed vel tristique mi. Quisque luctus, nisi non tristique varius, justo urna euismod nibh, eu imperdiet lorem sem vel mi. Aenean sed consectetur erat, nec volutpat eros. Sed ut rhoncus tortor, quis laoreet nibh. Maecenas quis dolor a quam congue accumsan. Nulla eu laoreet urna, at consectetur magna. Fusce enim ligula, sodales quis convallis eu, vestibulum ac justo. Nulla ac interdum sapien. Vestibulum id diam facilisis, ornare arcu at, porttitor ex. Nunc facilisis nibh ac nibh rutrum mollis. Nullam justo diam, elementum convallis sollicitudin id, finibus ac mauris. Aenean porta, mauris sit amet luctus bibendum, purus leo ornare ante, eu efficitur ipsum ligula quis nibh. Integer ut erat id justo maximus tincidunt quis at elit. Quisque efficitur mauris ac nunc placerat, vel porttitor ante iaculis. Curabitur volutpat nisi sit amet ex ultrices, et placerat erat dapibus.', NULL, NULL),
(6, 'Hokusai Blue 6', 'images\\manywaves2.jpg', 15, 280000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis semper, est non lobortis rutrum, lorem sapien maximus elit, in laoreet tellus augue eget dui. Maecenas libero enim, commodo ut ipsum sit amet, elementum sodales lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut elementum velit. Duis at dolor fringilla, pharetra nibh non, sodales arcu. Donec est justo, gravida quis dolor faucibus, pretium maximus nisl. Sed at nunc vel massa imperdiet laoreet. Sed vel tristique mi. Quisque luctus, nisi non tristique varius, justo urna euismod nibh, eu imperdiet lorem sem vel mi. Aenean sed consectetur erat, nec volutpat eros. Sed ut rhoncus tortor, quis laoreet nibh. Maecenas quis dolor a quam congue accumsan. Nulla eu laoreet urna, at consectetur magna. Fusce enim ligula, sodales quis convallis eu, vestibulum ac justo. Nulla ac interdum sapien. Vestibulum id diam facilisis, ornare arcu at, porttitor ex. Nunc facilisis nibh ac nibh rutrum mollis. ', NULL, NULL),
(7, 'Hokusai Blue 7', 'images\\slide.jpg', 10, 300000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis semper, est non lobortis rutrum, lorem sapien maximus elit, in laoreet tellus augue eget dui. Maecenas libero enim, commodo ut ipsum sit amet, elementum sodales lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut elementum velit. Duis at dolor fringilla, pharetra nibh non, sodales arcu. Donec est justo, gravida quis dolor faucibus, pretium maximus nisl. Sed at nunc vel massa imperdiet laoreet. Sed vel tristique mi. Quisque luctus, nisi non tristique varius, justo urna euismod nibh, eu imperdiet lorem sem vel mi. Aenean sed consectetur erat, nec volutpat eros. Sed ut rhoncus tortor, quis laoreet nibh. Maecenas quis dolor a quam congue accumsan. Nulla eu laoreet urna, at consectetur magna. Fusce enim ligula, sodales quis convallis eu, vestibulum ac justo. Nulla ac interdum sapien. Vestibulum id diam facilisis, ornare arcu at, porttitor ex. Nunc facilisis nibh ac nibh rutrum mollis. Nullam justo diam, elementum convallis sollicitudin id, finibus ac mauris.', NULL, NULL),
(8, 'Hokusai Blue 8', 'images\\wheel.jpg', 8, 290000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis semper, est non lobortis rutrum, lorem sapien maximus elit, in laoreet tellus augue eget dui. Maecenas libero enim, commodo ut ipsum sit amet, elementum sodales lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ut elementum velit. Duis at dolor fringilla, pharetra nibh non, sodales arcu. Donec est justo, gravida quis dolor faucibus, pretium maximus nisl. Sed at nunc vel massa imperdiet laoreet. Sed vel tristique mi. Quisque luctus, nisi non tristique varius, justo urna euismod nibh, eu imperdiet lorem sem vel mi. Aenean sed consectetur erat, nec volutpat eros. Sed ut rhoncus tortor, quis laoreet nibh. Maecenas quis dolor a quam congue accumsan. Nulla eu laoreet urna, at consectetur magna. Fusce enim ligula, sodales quis convallis eu, vestibulum ac justo.', NULL, NULL);

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
(4, '2021_02_05_053625_create_clothes_table', 1),
(5, '2021_02_05_054004_create_carts_table', 1);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD KEY `carts_clothe_id_foreign` (`clothe_id`);

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_clothe_id_foreign` FOREIGN KEY (`clothe_id`) REFERENCES `clothes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
