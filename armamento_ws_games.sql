-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2025 at 11:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `armamento_ws_games`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `created_at`, `last_login`) VALUES
(1, 'administrator', 'admin@gmail.com', '$2y$12$8YSGEr8lA8sBhigRQuCHVuH7etFANI51MEZ227Dg/SQhwe.gFRTBO', '2025-10-29 10:04:34', '2025-11-05 09:39:23'),
(2, 'Kevin', 'KevinArmamento@gmail.com', '$1$JRyYbIxA$FufDXxSlAARsaYhseogQX.', '2025-11-05 09:36:00', '2025-11-05 09:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `game_path` text DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `title`, `description`, `thumbnail`, `slug`, `game_path`, `author_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Space Adventure', 'An exciting journey through the cosmos where you pilot a spaceship and explore distant galaxies.', '/thumbnails/space-adventure.jpg', 'space-adventure', '/games/space-adventure', 1, '2024-03-01 02:00:00', '2024-03-01 02:00:00', '0000-00-00 00:00:00'),
(2, 'Puzzle Master', 'Challenge your mind with hundreds of unique puzzles that increase in difficulty.', '/thumbnails/puzzle-master.jpg', 'puzzle-master', '/games/puzzle-master', 2, '2024-03-05 03:30:00', '2024-03-05 03:30:00', '0000-00-00 00:00:00'),
(3, 'Racing Thunder', 'High-speed racing action on exotic tracks around the world.', '/thumbnails/racing-thunder.jpg', 'racing-thunder', '/games/racing-thunder', 3, '2024-03-10 06:20:00', '2024-03-10 06:20:00', '0000-00-00 00:00:00'),
(4, 'Fantasy Quest', 'Embark on an epic RPG adventure in a medieval fantasy world.', '/thumbnails/fantasy-quest.jpg', 'fantasy-quest', '/games/fantasy-quest', 1, '2024-03-15 01:45:00', '2024-03-15 01:45:00', '0000-00-00 00:00:00'),
(5, 'Tower Defense Pro', 'Defend your kingdom against waves of enemies with strategic tower placement.', '/thumbnails/tower-defense-pro.jpg', 'tower-defense-pro', '/games/tower-defense-pro', 4, '2024-03-20 08:00:00', '2024-03-20 08:00:00', '0000-00-00 00:00:00'),
(6, 'Word Wizard', 'Expand your vocabulary while having fun with word-based challenges.', '/thumbnails/word-wizard.jpg', 'word-wizard', '/games/word-wizard', 2, '2024-03-25 05:15:00', '2024-03-25 05:15:00', '0000-00-00 00:00:00'),
(7, 'Ocean Explorer', 'Dive deep into the ocean and discover marine life and hidden treasures.', '/thumbnails/ocean-explorer.jpg', 'ocean-explorer', '/games/ocean-explorer', 6, '2024-04-01 02:30:00', '2024-04-01 02:30:00', '0000-00-00 00:00:00'),
(8, 'Zombie Survival', 'Survive against hordes of zombies in this intense action game.', '/thumbnails/zombie-survival.jpg', 'zombie-survival', '/games/zombie-survival', 3, '2024-04-05 07:45:00', '2024-04-05 07:45:00', '0000-00-00 00:00:00'),
(9, 'Math Challenge', 'Sharpen your math skills with fun and engaging arithmetic challenges.', '/thumbnails/math-challenge.jpg', 'math-challenge', '/games/math-challenge', 4, '2024-04-10 03:00:00', '2024-04-10 03:00:00', '0000-00-00 00:00:00'),
(10, 'Platform Jumper', 'Classic platformer action with challenging levels and power-ups.', '/thumbnails/platform-jumper.jpg', 'platform-jumper', '/games/platform-jumper', 7, '2024-04-15 06:30:00', '2024-04-15 06:30:00', '0000-00-00 00:00:00'),
(11, 'Strategy Empire', 'Build and manage your empire in this deep strategy game.', '/thumbnails/strategy-empire.jpg', 'strategy-empire', '/games/strategy-empire', 1, '2024-04-20 01:15:00', '2024-04-20 01:15:00', '0000-00-00 00:00:00'),
(12, 'Mystery Mansion', 'Solve mysteries and uncover secrets in a haunted mansion.', '/thumbnails/mystery-mansion.jpg', 'mystery-mansion', '/games/mystery-mansion', 8, '2024-04-25 08:45:00', '2024-04-25 08:45:00', '0000-00-00 00:00:00'),
(13, 'Sports Arena', 'Compete in various sports events and become a champion.', '/thumbnails/sports-arena.jpg', 'sports-arena', '/games/sports-arena', 3, '2024-05-01 04:00:00', '2024-05-01 04:00:00', '0000-00-00 00:00:00'),
(14, 'Cooking Fever', 'Run your own restaurant and serve delicious dishes to customers.', '/thumbnails/cooking-fever.jpg', 'cooking-fever', '/games/cooking-fever', 9, '2024-05-05 02:20:00', '2024-05-05 02:20:00', '0000-00-00 00:00:00'),
(15, 'Ninja Warrior', 'Master martial arts and defeat enemies with stealth and skill.', '/thumbnails/ninja-warrior.jpg', 'ninja-warrior', '/games/ninja-warrior', 6, '2024-05-10 07:30:00', '2024-05-10 07:30:00', '0000-00-00 00:00:00'),
(16, 'Card Battle', 'Collect cards and battle opponents in strategic card game matches.', '/thumbnails/card-battle.jpg', 'card-battle', '/games/card-battle', 2, '2024-05-15 05:45:00', '2024-05-15 05:45:00', '0000-00-00 00:00:00'),
(17, 'Farm Simulator', 'Manage your own farm, grow crops, and raise animals.', '/thumbnails/farm-simulator.jpg', 'farm-simulator', '/games/farm-simulator', 10, '2024-05-20 03:15:00', '2024-05-20 03:15:00', '0000-00-00 00:00:00'),
(18, 'Space Invaders X', 'Classic arcade action with modern graphics and gameplay.', '/thumbnails/space-invaders-x.jpg', 'space-invaders-x', '/games/space-invaders-x', 7, '2024-05-25 06:00:00', '2024-05-25 06:00:00', '0000-00-00 00:00:00'),
(19, 'Memory Match', 'Test your memory with increasingly difficult matching challenges.', '/thumbnails/memory-match.jpg', 'memory-match', '/games/memory-match', 4, '2024-06-01 02:45:00', '2024-06-01 02:45:00', '0000-00-00 00:00:00'),
(20, 'Dragon Quest', 'Become a dragon rider and save the kingdom from evil forces.', '/thumbnails/dragon-quest.jpg', 'dragon-quest', '/games/dragon-quest', 1, '2024-06-05 08:20:00', '2024-06-05 08:20:00', '0000-00-00 00:00:00'),
(21, 'Chess Master', 'Play chess against AI opponents of varying difficulty levels.', '/thumbnails/chess-master.jpg', 'chess-master', '/games/chess-master', 8, '2024-06-10 04:30:00', '2024-06-10 04:30:00', '0000-00-00 00:00:00'),
(22, 'Block Breaker', 'Break blocks and clear levels in this addictive puzzle game.', '/thumbnails/block-breaker.jpg', 'block-breaker', '/games/block-breaker', 9, '2024-06-15 01:50:00', '2024-06-15 01:50:00', '0000-00-00 00:00:00'),
(23, 'Adventure Island', 'Explore a tropical island filled with treasures and dangers.', '/thumbnails/adventure-island.jpg', 'adventure-island', '/games/adventure-island', 6, '2024-06-20 07:10:00', '2024-06-20 07:10:00', '0000-00-00 00:00:00'),
(24, 'Trivia Master', 'Test your knowledge across various categories in this trivia game.', '/thumbnails/trivia-master.jpg', 'trivia-master', '/games/trivia-master', 2, '2024-06-25 03:40:00', '2024-06-25 03:40:00', '0000-00-00 00:00:00'),
(25, 'Battle Royale', 'Last player standing wins in this intense multiplayer battle game.', '/thumbnails/battle-royale.jpg', 'battle-royale', '/games/battle-royale', 3, '2024-07-01 06:55:00', '2024-07-01 06:55:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `user_id`, `game_id`, `timestamp`, `score`) VALUES
(1, 1, 15, '2025-11-19 08:41:36', 327),
(2, 6, 2, '2025-11-19 08:42:13', 235),
(3, 2, 20, '2025-11-19 08:42:13', 114),
(4, 8, 9, '2025-11-19 08:42:58', 453),
(5, 5, 20, '2025-11-19 08:42:58', 586),
(6, 4, 8, '2025-11-19 08:43:38', 571),
(7, 10, 12, '2025-11-19 08:43:38', 112),
(8, 1, 3, '2025-11-19 08:47:06', 120),
(9, 2, 7, '2025-11-19 08:47:06', 95),
(10, 3, 15, '2025-11-19 08:47:06', 140),
(11, 4, 1, '2025-11-19 08:47:06', 180),
(12, 5, 12, '2025-11-19 08:47:06', 75),
(13, 6, 20, '2025-11-19 08:47:06', 160),
(14, 7, 5, '2025-11-19 08:47:06', 110),
(15, 8, 10, '2025-11-19 08:47:06', 90),
(16, 9, 18, '2025-11-19 08:47:06', 200),
(17, 10, 22, '2025-11-19 08:47:06', 130),
(18, 1, 8, '2025-11-19 08:47:06', 145),
(19, 2, 14, '2025-11-19 08:47:06', 80),
(20, 3, 25, '2025-11-19 08:47:06', 170),
(21, 4, 6, '2025-11-19 08:47:06', 95),
(22, 5, 19, '2025-11-19 08:47:06', 155),
(23, 6, 4, '2025-11-19 08:47:06', 60),
(24, 7, 17, '2025-11-19 08:47:06', 190),
(25, 8, 2, '2025-11-19 08:47:06', 88),
(26, 9, 23, '2025-11-19 08:47:06', 175),
(27, 10, 9, '2025-11-19 08:47:06', 99),
(28, 1, 11, '2025-11-19 08:47:06', 210),
(29, 2, 13, '2025-11-19 08:47:06', 120),
(30, 3, 21, '2025-11-19 08:47:06', 160),
(31, 4, 24, '2025-11-19 08:47:06', 140),
(32, 5, 7, '2025-11-19 08:47:06', 102),
(33, 6, 16, '2025-11-19 08:47:06', 190),
(34, 7, 3, '2025-11-19 08:47:06', 135),
(35, 8, 6, '2025-11-19 08:47:06', 115),
(36, 9, 20, '2025-11-19 08:47:06', 150),
(37, 10, 1, '2025-11-19 08:47:06', 125),
(38, 1, 5, '2025-11-19 08:47:06', 96),
(39, 2, 17, '2025-11-19 08:47:06', 142),
(40, 3, 10, '2025-11-19 08:47:06', 180),
(41, 4, 2, '2025-11-19 08:47:06', 88),
(42, 5, 23, '2025-11-19 08:47:06', 165),
(43, 6, 14, '2025-11-19 08:47:06', 130),
(44, 7, 22, '2025-11-19 08:47:06', 90),
(45, 8, 25, '2025-11-19 08:47:06', 175),
(46, 9, 8, '2025-11-19 08:47:06', 105),
(47, 10, 19, '2025-11-19 08:47:06', 155),
(48, 1, 4, '2025-11-19 08:47:06', 111),
(49, 2, 9, '2025-11-19 08:47:06', 143),
(50, 3, 12, '2025-11-19 08:47:06', 158),
(51, 4, 18, '2025-11-19 08:47:06', 199),
(52, 5, 24, '2025-11-19 08:47:06', 134),
(53, 6, 11, '2025-11-19 08:47:06', 121),
(54, 7, 15, '2025-11-19 08:47:06', 170),
(55, 8, 21, '2025-11-19 08:47:06', 98),
(56, 9, 13, '2025-11-19 08:47:06', 185),
(57, 10, 16, '2025-11-19 08:47:06', 97),
(58, 3, 7, '2025-11-19 08:49:23', 120),
(59, 3, 7, '2025-11-19 08:49:23', 140),
(60, 3, 7, '2025-11-19 08:49:23', 160),
(61, 5, 12, '2025-11-19 08:49:23', 90),
(62, 5, 12, '2025-11-19 08:49:23', 130),
(63, 5, 12, '2025-11-19 08:49:23', 150),
(64, 1, 3, '2025-11-19 08:49:23', 100),
(65, 1, 3, '2025-11-19 08:49:23', 135),
(66, 1, 3, '2025-11-19 08:49:23', 150),
(67, 8, 10, '2025-11-19 08:49:23', 88),
(68, 8, 10, '2025-11-19 08:49:23', 105),
(69, 8, 10, '2025-11-19 08:49:23', 125),
(70, 10, 22, '2025-11-19 08:49:23', 100),
(71, 10, 22, '2025-11-19 08:49:23', 145),
(72, 10, 22, '2025-11-19 08:49:23', 170),
(73, 6, 5, '2025-11-19 08:49:23', 95),
(74, 6, 5, '2025-11-19 08:49:23', 110),
(75, 6, 5, '2025-11-19 08:49:23', 140),
(76, 2, 14, '2025-11-19 08:49:23', 80),
(77, 2, 14, '2025-11-19 08:49:23', 120),
(78, 1, 1, '2025-11-19 10:18:20', 120),
(79, 2, 1, '2025-11-19 10:18:20', 95),
(80, 3, 1, '2025-11-19 10:18:20', 140),
(81, 4, 1, '2025-11-19 10:18:20', 180),
(82, 5, 1, '2025-11-19 10:18:20', 75),
(83, 6, 1, '2025-11-19 10:18:20', 160),
(84, 7, 1, '2025-11-19 10:18:20', 110),
(85, 8, 1, '2025-11-19 10:18:20', 90),
(86, 9, 1, '2025-11-19 10:18:20', 200),
(87, 10, 1, '2025-11-19 10:18:20', 130),
(88, 1, 1, '2025-11-19 10:18:20', 150),
(89, 2, 1, '2025-11-19 10:18:20', 105),
(90, 3, 1, '2025-11-19 10:18:20', 135),
(91, 4, 1, '2025-11-19 10:18:20', 170),
(92, 5, 1, '2025-11-19 10:18:20', 125),
(93, 6, 1, '2025-11-19 10:18:20', 155),
(94, 7, 1, '2025-11-19 10:18:20', 115),
(95, 8, 1, '2025-11-19 10:18:20', 140),
(96, 9, 1, '2025-11-19 10:18:20', 180),
(97, 10, 1, '2025-11-19 10:18:20', 160);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bXb0uG5BJFezpKBNNpC0CzpWzMbrWqUIrgfTnbQo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUZtVnVyeVRBb2g1OExxcTRhSmFieElQQnNVMnlFOFphY1pVNks4OSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi91c2Vycy9zYXJhaHNtaXRoIjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1763547170),
('GRHRpxhqLRoB14tG2PwbRidtyFUdUOs2YQ6X2qv3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzBrZ1FhSEZkWmpXTGVIbWRkNVpDN1dwWEFJZ3Q2cmFsbFpMa0VhNCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1763540109);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_blocked` tinyint(4) DEFAULT 0,
  `block_reason` varchar(100) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `is_blocked`, `block_reason`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'johndoe', 'john.doe@example.com', '2024-01-31 18:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '', 0, '', '2025-10-19 23:30:00', '2024-01-31 17:00:00', '2025-10-19 23:30:00'),
(2, 'sarahsmith', 'sarah.smith@example.com', '2024-02-04 19:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '', 0, '', '2025-10-23 18:15:00', '2024-02-04 18:00:00', '2025-10-23 18:15:00'),
(3, 'mikejohnson', 'mike.johnson@example.com', '2024-03-09 22:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '', 0, '', '2025-10-23 02:45:00', '2024-03-09 21:00:00', '2025-10-23 02:45:00'),
(4, 'emilychen', 'emily.chen@example.com', '2024-03-14 17:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '', 0, '', '2025-10-24 20:00:00', '2024-03-14 16:00:00', '2025-10-24 20:00:00'),
(5, 'davidwilson', 'david.wilson@example.com', '2024-04-01 00:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '', 1, 'You have been blocked for spamming.', '0000-00-00 00:00:00', '2024-03-31 23:00:00', '2024-08-14 18:00:00'),
(6, 'lisagarcia', 'lisa.garcia@example.com', '2024-04-19 18:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '', 0, '', '2025-10-25 16:30:00', '2024-04-19 17:00:00', '2025-10-25 16:30:00'),
(7, 'robertlee', 'robert.lee@example.com', '2024-05-04 20:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '', 0, '', '2025-10-22 00:20:00', '2024-05-04 19:00:00', '2025-10-22 00:20:00'),
(8, 'jenniferkim', 'jennifer.kim@example.com', '2024-06-09 23:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '', 0, '', '2025-10-20 22:10:00', '2024-06-09 22:00:00', '2025-10-20 22:10:00'),
(9, 'chrismartinez', 'chris.martinez@example.com', '2024-06-30 21:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '', 0, '', '2025-10-18 19:45:00', '2024-06-30 20:00:00', '2025-10-18 19:45:00'),
(10, 'jessicabrown', 'jessica.brown@example.com', '2024-08-14 19:00:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '', 0, '', '2025-10-17 17:30:00', '2024-08-14 18:00:00', '2025-10-17 17:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug_UNIQUE` (`slug`),
  ADD KEY `games_users_fk1_idx` (`author_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `games` (`game_id`),
  ADD KEY `user` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_users_fk1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `games` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`),
  ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;