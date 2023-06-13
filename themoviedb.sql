-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 13 juin 2023 à 01:24
-- Version du serveur : 8.0.25-0ubuntu0.20.04.1
-- Version de PHP : 8.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `themoviedb`
--

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(12, 'Adventure', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(14, 'Fantasy', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(16, 'Animation', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(18, 'Drama', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(27, 'Horror', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(28, 'Action', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(35, 'Comedy', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(36, 'History', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(37, 'Western', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(53, 'Thriller', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(80, 'Crime', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(99, 'Documentary', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(878, 'Science Fiction', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(9648, 'Mystery', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(10402, 'Music', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(10749, 'Romance', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(10751, 'Family', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(10752, 'War', '2023-06-12 00:34:24', '2023-06-12 00:34:24'),
(10770, 'TV Movie', '2023-06-12 00:34:24', '2023-06-12 00:34:24');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2023_06_10_171129_create_sessions_table', 1),
(19, '2023_06_10_173425_create_movies_table', 2),
(20, '2023_06_12_002514_create_genres_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` bigint UNSIGNED NOT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `backdrop_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci,
  `poster_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popularity` double(8,4) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `first_air_date` date DEFAULT NULL,
  `video` tinyint(1) DEFAULT NULL,
  `vote_average` double(8,4) DEFAULT NULL,
  `vote_count` decimal(8,2) DEFAULT NULL,
  `origin_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `adult`, `backdrop_path`, `title`, `name`, `original_language`, `original_title`, `overview`, `poster_path`, `media_type`, `genre_ids`, `popularity`, `release_date`, `first_air_date`, `video`, `vote_average`, `vote_count`, `origin_country`, `created_at`, `updated_at`) VALUES
(76600, 0, '/8rpDcsfLJypbO6vREc0547VKqEv.jpg', 'Avatar: The Way of Water', NULL, 'en', 'Avatar: The Way of Water', 'Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.', '/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg', 'movie', '878,12,28', 1175.6180, '2022-12-14', NULL, 0, 7.7020, '8465.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(85937, 0, '/nTvM4mhqNlHIvUkI1gVnW6XP7GG.jpg', NULL, 'Demon Slayer: Kimetsu no Yaiba', 'ja', NULL, 'It is the Taisho Period in Japan. Tanjiro, a kindhearted boy who sells charcoal for a living, finds his family slaughtered by a demon. To make matters worse, his younger sister Nezuko, the sole survivor, has been transformed into a demon herself. Though devastated by this grim reality, Tanjiro resolves to become a “demon slayer” so that he can turn his sister back into a human, and kill the demon that massacred his family.', '/xUfRZu2mi8jH6SzQEJGP6tjBuYj.jpg', 'tv', '16,10759,10765', 248.8310, NULL, '2019-04-06', NULL, 8.7000, '5274.00', 'JP', '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(100883, 0, '/a51slt8xs4smZJNys29AfHDCy2R.jpg', NULL, 'Never Have I Ever', 'en', NULL, 'After a traumatic year, all an Indian-American teen wants is to go from pariah to popular -- but friends, family and feeling won\'t make it easy on her.', '/hd5fnBixab6IzfUwjC5wfdbX3eM.jpg', 'tv', '35,18', 473.4300, NULL, '2020-04-27', NULL, 8.2000, '1461.00', 'US', '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(123192, 0, '/bvvgnuFZk6NhFZrrA519hCSI6IS.jpg', NULL, 'The Crowded Room', 'en', NULL, 'Set in Manhattan during the summer of 1979. When a young man is arrested for a shocking crime—and an unlikely investigator must solve the mystery behind it.', '/vRmopCFp0j1eJGbILLsYsYzxmL8.jpg', 'tv', '18,80,9648', 130.7810, NULL, '2023-06-08', NULL, 6.5450, '11.00', 'US', '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(125988, 0, '/1V4SPkV3bQvl85zK4FqwTzdfBs4.jpg', NULL, 'Silo', 'en', NULL, 'In a ruined and toxic future, a community exists in a giant underground silo that plunges hundreds of stories deep. There, men and women live in a society full of regulations they believe are meant to protect them.', '/zBx1X06G1OlndbXTCZI13FECNz2.jpg', 'tv', '10765,18', 825.9270, NULL, '2023-05-04', NULL, 8.4000, '137.00', 'US,GB', '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(127529, 0, '/eqRvKwTcBvfiA7EojFae8ZUJXdp.jpg', NULL, 'Bloodhounds', 'ko', NULL, 'Two young boxers band together with a benevolent moneylender to take down a ruthless loan shark who preys on the financially desperate.', '/kxU1hhebWZGaz8gkMVi8zkZhzVt.jpg', 'tv', '10759,18,80', 109.6900, NULL, '2023-06-09', NULL, 7.4740, '19.00', 'KR', '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(226135, 0, '/A5ITI2kmvcMpQYEPpToTSdtWZzX.jpg', NULL, 'Arnold', 'en', NULL, 'This intimate docuseries follows Arnold Schwarzenegger\'s multifaceted life and career, from bodybuilding champ to Hollywood icon to politician.', '/o9KmWrG9rbFhB7jWW4vFHTmqv28.jpg', 'tv', '99', 222.1070, NULL, '2023-06-07', NULL, 8.5000, '27.00', 'US', '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(298618, 0, '/6GIpI3X65J6DT2nSTSga9LnanGJ.jpg', 'The Flash', NULL, 'en', 'The Flash', 'When his attempt to save his family inadvertently alters the future, Barry Allen becomes trapped in a reality in which General Zod has returned and there are no Super Heroes to turn to. In order to save the world that he is in and return to the future that he knows, Barry\'s only hope is to race for his life. But will making the ultimate sacrifice be enough to reset the universe?', '/67PmbAViFCW3obXxr5Utm9wArIP.jpg', 'movie', '878,28,12', 384.7810, '2023-06-05', NULL, 0, 6.8000, '23.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(385687, 0, '/4XM8DUTQb3lhLemJC51Jx4a2EuA.jpg', 'Fast X', NULL, 'en', 'Fast X', 'Over many missions and against impossible odds, Dom Toretto and his family have outsmarted, out-nerved and outdriven every foe in their path. Now, they confront the most lethal opponent they\'ve ever faced: A terrifying threat emerging from the shadows of the past who\'s fueled by blood revenge, and who is determined to shatter this family and destroy everything—and everyone—that Dom loves, forever.', '/fiVW06jE7z9YnO4trhaMEdclSiC.jpg', 'movie', '28,80,53', 4267.0780, '2023-05-17', NULL, 0, 7.3510, '1233.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(447277, 0, '/ribiMu3iINPxDkofErPxe8jQ8L0.jpg', 'The Little Mermaid', NULL, 'en', 'The Little Mermaid', 'The youngest of King Triton’s daughters, and the most defiant, Ariel longs to find out more about the world beyond the sea, and while visiting the surface, falls for the dashing Prince Eric. With mermaids forbidden to interact with humans, Ariel makes a deal with the evil sea witch, Ursula, which gives her a chance to experience life on land, but ultimately places her life – and her father’s crown – in jeopardy.', '/ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg', 'movie', '12,10751,14,10749', 1524.5440, '2023-05-18', NULL, 0, 6.1440, '595.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(493529, 0, '/bqMWZ5hB7bcI1KK2TH29odwCgWX.jpg', 'Dungeons & Dragons: Honor Among Thieves', NULL, 'en', 'Dungeons & Dragons: Honor Among Thieves', 'A charming thief and a band of unlikely adventurers undertake an epic heist to retrieve a lost relic, but things go dangerously awry when they run afoul of the wrong people.', '/A7AoNT06aRAc4SV89Dwxj3EYAgC.jpg', 'movie', '12,14,35', 446.5490, '2023-03-23', NULL, 0, 7.4580, '1649.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(502356, 0, '/9n2tJBplPbgR2ca05hS5CKXwP2c.jpg', 'The Super Mario Bros. Movie', NULL, 'en', 'The Super Mario Bros. Movie', 'While working underground to fix a water main, Brooklyn plumbers—and brothers—Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.', '/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg', 'movie', '16,10751,12,14,35', 4219.1790, '2023-04-05', NULL, 0, 7.8180, '4583.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(569094, 0, '/2I5eBh98Q4aPq8WdQrHdTC8ARhY.jpg', 'Spider-Man: Across the Spider-Verse', NULL, 'en', 'Spider-Man: Across the Spider-Verse', 'After reuniting with Gwen Stacy, Brooklyn’s full-time, friendly neighborhood Spider-Man is catapulted across the Multiverse, where he encounters the Spider Society, a team of Spider-People charged with protecting the Multiverse’s very existence. But when the heroes clash on how to handle a new threat, Miles finds himself pitted against the other Spiders and must set out on his own to save those he loves most.', '/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg', 'movie', '28,12,16,878', 3040.8320, '2023-05-31', NULL, 0, 8.7960, '1103.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(603692, 0, '/h8gHn0OzBoaefsYseUByqsmEDMY.jpg', 'John Wick: Chapter 4', NULL, 'en', 'John Wick: Chapter 4', 'With the price on his head ever increasing, John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.', '/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg', 'movie', '28,53,80', 4935.5270, '2023-03-22', NULL, 0, 7.9460, '2863.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(626332, 0, '/o2xM9oVNDdm5tukYcGPj3jX3XpE.jpg', 'Flamin\' Hot', NULL, 'en', 'Flamin\' Hot', 'The inspiring true story of Richard Montañez, the Frito Lay janitor who channeled his Mexican American heritage and upbringing to turn the iconic Flamin’ Hot Cheetos into a snack that disrupted the food industry and became a global pop culture phenomenon.', '/a7KyFMPXj0iY4EoLq1PIGU1WJPw.jpg', 'movie', '35,18', 46.6340, '2023-03-11', NULL, 0, 7.1330, '30.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(667538, 0, '/rH3jY9JN9krUyE0Q3WLNtujMs8.jpg', 'Transformers: Rise of the Beasts', NULL, 'en', 'Transformers: Rise of the Beasts', 'When a new threat capable of destroying the entire planet emerges, Optimus Prime and the Autobots must team up with a powerful faction known as the Maximals. With the fate of humanity hanging in the balance, humans Noah and Elena will do whatever it takes to help the Transformers as they engage in the ultimate battle to save Earth.', '/gPbM0MK8CP8A174rmUwGsADNYKD.jpg', 'movie', '28,12,878', 2300.7600, '2023-06-06', NULL, 0, 7.5220, '161.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(940241, 0, '/qbWtbhoKtqta3rQDOe5ed80oB1X.jpg', '97 Minutes', NULL, 'en', '97 Minutes', 'A hijacked 767 will crash in just 97 minutes when its fuel runs out. Against the strong will of NSA Deputy Toyin, NSA Director Hawkins prepares to have the plane shot down before it does any catastrophic damage on the ground, leaving the fate of the innocent passengers in the hands of Tyler, one of the alleged hijackers on board who is an undercover Interpol agent - or is he?', '/eYGyR8xF8emNs9AJAJSyLXu56kR.jpg', 'movie', '53,28', 57.7360, '2023-06-09', NULL, 0, 3.3750, '8.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(1010581, 0, '/lntyt4OVDbcxA1l7LtwITbrD3FI.jpg', 'My Fault', NULL, 'es', 'Culpa mía', 'Noah must leave her city, boyfriend, and friends to move into William Leister\'s mansion, the flashy and wealthy husband of her mother Rafaela. As a proud and independent 17 year old, Noah resists living in a mansion surrounded by luxury. However, it is there where she meets Nick, her new stepbrother, and the clash of their strong personalities becomes evident from the very beginning.', '/w46Vw536HwNnEzOa7J24YH9DPRS.jpg', 'movie', '10749,18', 836.1930, '2023-06-08', NULL, 0, 8.3830, '244.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(1126844, 0, '/po8r3ZRoPXRrZwGiRTtdjJqNylU.jpg', 'The Wonder Weeks', NULL, 'nl', 'Oei, ik groei!', 'Three modern couples juggle relationships and demanding careers while navigating the unpredictable terrain of parenthood.', '/blGdfZPiv4CXViqbfXNcWiplABz.jpg', 'movie', '35,18', 55.0230, '2023-06-09', NULL, 0, 6.4440, '9.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53'),
(1128568, 0, '/vWRrLnl4mGayFHm80b7CEg6goAE.jpg', 'You Do You', NULL, 'tr', 'Merve Kült', 'Merve chose the bohemian life, but it didn\'t choose her back. Faced with eviction, she starts a new job and stumbles into a spicy setup with her boss.', '/8fk4l8PvGGjHYCUpA4gGbyIoS3S.jpg', 'movie', '35,10749', 49.7700, '2023-06-09', NULL, 0, 5.7750, '20.00', NULL, '2023-06-12 01:00:53', '2023-06-12 01:00:53');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BoJzhLHF5FhjOB7pDBxRvSIAjjTL73cTG7oKfOX8', 1, '192.168.10.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWldyYjdnblZEd1BtS0duR0pRTlhZb1JRa2JmRFE2c2NwVHBOR0JVWCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIzOiJodHRwczovL3RoZW1vdmllZGIudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkTFN3djhiRk4yT2JveE5lM0lVdy52T2J1eHVobXNLeGFtM2FJeElkc2s0VzJLUXhpbDE4OUsiO30=', 1686617414);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Faouzi', 'faouziromane@gmail.com', NULL, '$2y$10$LSwv8bFN2OboxNe3IUw.vObuxuhmsKxam3aIxIdsk4W2KQxil189K', NULL, NULL, NULL, NULL, NULL, '/img/profil.png', '2023-06-10 17:31:24', '2023-06-10 17:31:24'),
(2, 'Admin', 'admin@themoviedb.com', NULL, '$2y$10$5vRyxtBd/iVvpcR2pz/MgOW0Fm4Yy7T4qD.ZY7YAgRzmCYmozMD5m', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-12 02:11:06', '2023-06-12 02:11:06');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
