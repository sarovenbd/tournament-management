-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 24, 2020 at 10:44 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voyager-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 4),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 6),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 7),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":false,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"}]}', 8),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:posts,slug\"}}', 9),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 10),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 11),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 12),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 13),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 15),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 16),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 5, 'post_belongsto_category_relationship', 'relationship', 'Category', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(57, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(59, 7, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'about', 'rich_text_box', 'About', 0, 0, 1, 1, 1, 1, '{}', 5),
(61, 7, 'prize', 'number', 'Prize', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 6),
(62, 7, 'venue', 'text', 'Venue', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 7),
(63, 7, 'groups', 'number', 'Groups', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 8),
(64, 7, 'date', 'timestamp', 'Date', 0, 1, 1, 1, 1, 1, '{}', 9),
(66, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(67, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(68, 7, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:tournaments,slug\"}}', 3),
(71, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(73, 8, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 3),
(74, 8, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:teams,slug\"}}', 4),
(75, 8, 'about', 'rich_text_box', 'About', 0, 0, 1, 1, 1, 1, '{}', 5),
(76, 8, 'founding_date', 'date', 'Founding Date', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 6),
(77, 8, 'wins', 'number', 'Wins', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 7),
(78, 8, 'loses', 'number', 'Loses', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 8),
(79, 8, 'total_game', 'number', 'Total Game', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 9),
(81, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(82, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(83, 7, 'tournament_belongstomany_team_relationship', 'relationship', 'Teams', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Team\",\"table\":\"teams\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"tournament_team\",\"pivot\":\"1\",\"taggable\":\"on\"}', 10),
(84, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(85, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(86, 9, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:players,slug\"}}', 3),
(87, 9, 'bio', 'rich_text_box', 'Bio', 0, 0, 1, 1, 1, 1, '{}', 4),
(88, 9, 'country', 'text', 'Country', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(89, 9, 'age', 'number', 'Age', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 6),
(90, 9, 'total_game', 'number', 'Total Game', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 7),
(91, 9, 'wins', 'number', 'Wins', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 8),
(92, 9, 'loses', 'number', 'Loses', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 9),
(93, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 10),
(94, 9, 'facebook_url', 'text', 'Facebook Url', 0, 0, 1, 1, 1, 1, '{}', 11),
(95, 9, 'twitter_url', 'text', 'Twitter Url', 0, 0, 1, 1, 1, 1, '{}', 12),
(96, 9, 'twitch_url', 'text', 'Twitch Url', 0, 0, 1, 1, 1, 1, '{}', 13),
(97, 9, 'youtube_url', 'text', 'Youtube Url', 0, 0, 1, 1, 1, 1, '{}', 14),
(98, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(99, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(100, 8, 'team_belongstomany_player_relationship', 'relationship', 'Players', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Player\",\"table\":\"players\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"player_team\",\"pivot\":\"1\",\"taggable\":\"on\"}', 10),
(101, 7, 'players', 'number', 'Players', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 11),
(102, 7, 'status', 'select_dropdown', 'Status', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"},\"default\":\"upcoming\",\"options\":{\"upcoming\":\"Upcoming\",\"finished\":\"Finished\"}}', 12),
(103, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(104, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(105, 10, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(106, 10, 'tournament_id', 'text', 'Tournament Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(107, 10, 'team_a_id', 'text', 'Team A Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(108, 10, 'team_a_point', 'number', 'Team A Point', 0, 1, 1, 1, 1, 1, '{}', 8),
(109, 10, 'team_b_id', 'text', 'Team B Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(110, 10, 'team_b_point', 'number', 'Team B Point', 0, 1, 1, 1, 1, 1, '{}', 11),
(111, 10, 'remarks', 'text_area', 'Remarks', 0, 1, 1, 1, 1, 1, '{}', 12),
(112, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(113, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(114, 10, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"upcoming\",\"options\":{\"upcoming\":\"upcoming\",\"finished\":\"finished\"}}', 13),
(115, 10, 'result_belongsto_tournament_relationship', 'relationship', 'Tournament', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Tournament\",\"table\":\"tournaments\",\"type\":\"belongsTo\",\"column\":\"tournament_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(116, 10, 'result_belongsto_team_relationship', 'relationship', 'Team A', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Team\",\"table\":\"teams\",\"type\":\"belongsTo\",\"column\":\"team_a_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(117, 10, 'result_belongsto_team_relationship_1', 'relationship', 'Team B', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Team\",\"table\":\"teams\",\"type\":\"belongsTo\",\"column\":\"team_b_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(118, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(119, 11, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(120, 11, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(121, 11, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(122, 11, 'price', 'number', 'Price', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(123, 11, 'link', 'text', 'Link', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 6),
(124, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(125, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(126, 9, 'player_belongstomany_gear_relationship', 'relationship', 'Gears', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Gear\",\"table\":\"gears\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"player_gear\",\"pivot\":\"1\",\"taggable\":\"on\"}', 15),
(127, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(128, 12, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(129, 12, 'testimony', 'text_area', 'Testimony', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(130, 12, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(131, 12, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\"}}', 5),
(132, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(133, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(134, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(135, 13, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(136, 13, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(137, 13, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(138, 13, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 6),
(139, 13, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"ONLINE\",\"options\":{\"OFFLINE\":\"Offline\",\"ONLINE\":\"Online\"}}', 7),
(140, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(141, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(142, 13, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required|unique:streams,slug\"}}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-04-28 03:48:41', '2020-04-28 03:48:41'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-04-28 03:48:41', '2020-04-28 03:48:41'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-04-28 03:48:41', '2020-04-28 03:48:41'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-04-28 03:48:48', '2020-04-28 03:48:48'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"title\",\"scope\":null}', '2020-04-28 03:48:49', '2020-05-03 08:37:43'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-04-28 03:48:50', '2020-04-28 03:48:50'),
(7, 'tournaments', 'tournaments', 'Tournament', 'Tournaments', 'voyager-trophy', 'App\\Tournament', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2020-04-30 02:58:53', '2020-05-08 08:52:07'),
(8, 'teams', 'teams', 'Team', 'Teams', 'voyager-people', 'App\\Team', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2020-04-30 03:12:14', '2020-04-30 06:14:10'),
(9, 'players', 'players', 'Player', 'Players', 'voyager-person', 'App\\Player', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}', '2020-04-30 06:10:55', '2020-05-07 08:24:58'),
(10, 'results', 'results', 'Result', 'Results', 'voyager-certificate', 'App\\Result', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2020-05-06 09:05:28', '2020-05-06 09:10:09'),
(11, 'gears', 'gears', 'Gear', 'Gears', 'voyager-bag', 'App\\Gear', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}', '2020-05-06 09:28:45', '2020-05-06 09:30:08'),
(12, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', 'voyager-star', 'App\\Testimonial', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"name\"}', '2020-05-07 10:01:17', '2020-05-07 10:01:17'),
(13, 'streams', 'streams', 'Stream', 'Streams', 'voyager-video', 'App\\Stream', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2020-05-07 10:14:36', '2020-05-12 22:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gears`
--

DROP TABLE IF EXISTS `gears`;
CREATE TABLE IF NOT EXISTS `gears` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `price` double DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-04-28 03:48:42', '2020-04-28 03:48:42'),
(2, 'header_menu', '2020-05-01 05:23:13', '2020-05-01 05:23:13'),
(3, 'footer_menu', '2020-05-01 05:23:26', '2020-05-01 05:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-04-28 03:48:42', '2020-04-28 03:48:42', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2020-04-28 03:48:42', '2020-05-03 09:34:55', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-04-28 03:48:42', '2020-04-28 03:48:42', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-04-28 03:48:42', '2020-04-28 03:48:42', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 15, '2020-04-28 03:48:42', '2020-05-08 04:35:40', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-04-28 03:48:42', '2020-05-03 09:34:55', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-04-28 03:48:42', '2020-05-03 09:34:55', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-04-28 03:48:42', '2020-05-03 09:34:55', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-04-28 03:48:42', '2020-05-03 09:34:55', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 16, '2020-04-28 03:48:42', '2020-05-08 04:35:40', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 14, '2020-04-28 03:48:48', '2020-05-08 04:35:40', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 12, '2020-04-28 03:48:49', '2020-05-08 04:35:40', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 13, '2020-04-28 03:48:50', '2020-05-08 04:35:40', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-04-28 03:48:52', '2020-05-03 09:34:55', 'voyager.hooks', NULL),
(15, 1, 'Tournaments', '', '_self', 'voyager-trophy', NULL, NULL, 5, '2020-04-30 02:58:54', '2020-05-03 09:35:10', 'voyager.tournaments.index', NULL),
(16, 1, 'Teams', '', '_self', 'voyager-people', NULL, NULL, 6, '2020-04-30 03:12:14', '2020-05-03 09:35:13', 'voyager.teams.index', NULL),
(17, 1, 'Players', '', '_self', 'voyager-person', NULL, NULL, 7, '2020-04-30 06:10:55', '2020-05-03 09:35:14', 'voyager.players.index', NULL),
(18, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2020-05-01 05:27:01', '2020-05-01 05:31:42', NULL, ''),
(19, 2, 'News', '/posts', '_self', NULL, '#000000', NULL, 2, '2020-05-01 05:28:27', '2020-05-01 05:33:00', NULL, ''),
(20, 2, 'Teams', '/teams', '_self', NULL, '#000000', NULL, 3, '2020-05-01 05:29:24', '2020-05-01 05:33:00', NULL, ''),
(21, 2, 'Tournaments', '/tournaments', '_self', NULL, '#000000', NULL, 5, '2020-05-01 05:30:47', '2020-05-02 05:26:16', NULL, ''),
(22, 2, 'Players', '/players', '_self', NULL, '#000000', NULL, 4, '2020-05-02 05:26:09', '2020-05-02 05:26:15', NULL, ''),
(23, 3, 'Privacy Policy', '/page/privacy-policy', '_self', NULL, '#000000', NULL, 18, '2020-05-03 04:44:22', '2020-05-03 04:44:22', NULL, ''),
(24, 3, 'Terms & Condition', '/page/terms-condition', '_self', NULL, '#000000', NULL, 19, '2020-05-03 04:45:11', '2020-05-03 04:45:11', NULL, ''),
(25, 3, 'Contact', '#', '_self', NULL, '#000000', NULL, 20, '2020-05-03 04:47:16', '2020-05-03 04:47:16', NULL, ''),
(26, 1, 'Results', '', '_self', 'voyager-certificate', NULL, NULL, 8, '2020-05-06 09:05:29', '2020-05-08 04:35:15', 'voyager.results.index', NULL),
(27, 1, 'Gears', '', '_self', 'voyager-bag', NULL, NULL, 9, '2020-05-06 09:28:45', '2020-05-08 04:35:24', 'voyager.gears.index', NULL),
(28, 1, 'Testimonials', '', '_self', 'voyager-star', NULL, NULL, 11, '2020-05-07 10:01:18', '2020-05-08 04:35:40', 'voyager.testimonials.index', NULL),
(29, 1, 'Streams', '', '_self', 'voyager-video', NULL, NULL, 10, '2020-05-07 10:14:36', '2020-05-08 04:35:39', 'voyager.streams.index', NULL),
(30, 2, 'Streams', '/streams', '_self', NULL, '#000000', NULL, 21, '2020-05-08 05:02:12', '2020-05-08 05:02:12', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_01_01_000000_add_voyager_user_fields', 1),
(3, '2016_01_01_000000_create_data_types_table', 1),
(4, '2016_01_01_000000_create_pages_table', 1),
(5, '2016_01_01_000000_create_posts_table', 1),
(6, '2016_02_15_204651_create_categories_table', 1),
(7, '2016_05_19_173453_create_menu_table', 1),
(8, '2016_10_21_190000_create_roles_table', 1),
(9, '2016_10_21_190000_create_settings_table', 1),
(10, '2016_11_30_135954_create_permission_table', 1),
(11, '2016_11_30_141208_create_permission_role_table', 1),
(12, '2016_12_26_201236_data_types__add__server_side', 1),
(13, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(14, '2017_01_14_005015_create_translations_table', 1),
(15, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(16, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(17, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(18, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(19, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(20, '2017_08_05_000000_add_group_to_settings_table', 1),
(21, '2017_11_26_013050_add_user_role_relationship', 1),
(22, '2017_11_26_015000_create_user_roles_table', 1),
(23, '2018_03_11_000000_add_user_settings', 1),
(24, '2018_03_14_000000_add_details_to_data_types_table', 1),
(25, '2018_03_16_000000_make_settings_value_nullable', 1),
(26, '2019_08_19_000000_create_failed_jobs_table', 1),
(27, '2020_05_08_144736_create_gears_table', 1),
(28, '2020_05_08_144736_create_player_team_table', 1),
(29, '2020_05_08_144736_create_players_table', 1),
(30, '2020_05_08_144736_create_results_table', 1),
(31, '2020_05_08_144736_create_teams_table', 1),
(32, '2020_05_08_144736_create_testimonials_table', 1),
(33, '2020_05_08_144736_create_tournaments_table', 1),
(34, '2020_05_08_144944_create_player_gear_table', 1),
(35, '2020_05_08_145234_create_tournament_team_table', 1),
(36, '2020_05_13_045845_create_streams_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Terms & Condition', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '<h2>1. Acceptance The Use Of Lorem Ipsum Terms and Conditions</h2>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>&nbsp;</p>\n<h2>2. DETAILS</h2>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>&nbsp;</p>\n<h2>3. LEGAL ADVICE</h2>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p>&nbsp;</p>\n<h2>4. CHANGE OF USE</h2>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<h2>5. Links to Third Party apps and websites</h2>\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 'terms-condition', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but', 'sss,sss,sss', 'ACTIVE', '2020-04-20 01:16:03', '2020-04-20 01:23:03'),
(2, 1, 'Privacy Policy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but', '<div>\n<h2>Data we use</h2>\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n</div>\n<div>\n<h2>How we use</h2>\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n</div>\n<p>&nbsp;</p>\n<div>\n<h2>What we collect</h2>\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n</div>', NULL, 'privacy-policy', 'wwww eeee eeee', 'sss,sss,sss', 'ACTIVE', '2020-04-20 01:18:06', '2020-04-20 01:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-04-28 03:48:42', '2020-04-28 03:48:42'),
(2, 'browse_bread', NULL, '2020-04-28 03:48:42', '2020-04-28 03:48:42'),
(3, 'browse_database', NULL, '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(4, 'browse_media', NULL, '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(5, 'browse_compass', NULL, '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(6, 'browse_menus', 'menus', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(7, 'read_menus', 'menus', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(8, 'edit_menus', 'menus', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(9, 'add_menus', 'menus', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(10, 'delete_menus', 'menus', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(11, 'browse_roles', 'roles', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(12, 'read_roles', 'roles', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(13, 'edit_roles', 'roles', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(14, 'add_roles', 'roles', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(15, 'delete_roles', 'roles', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(16, 'browse_users', 'users', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(17, 'read_users', 'users', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(18, 'edit_users', 'users', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(19, 'add_users', 'users', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(20, 'delete_users', 'users', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(21, 'browse_settings', 'settings', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(22, 'read_settings', 'settings', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(23, 'edit_settings', 'settings', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(24, 'add_settings', 'settings', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(25, 'delete_settings', 'settings', '2020-04-28 03:48:43', '2020-04-28 03:48:43'),
(26, 'browse_categories', 'categories', '2020-04-28 03:48:48', '2020-04-28 03:48:48'),
(27, 'read_categories', 'categories', '2020-04-28 03:48:48', '2020-04-28 03:48:48'),
(28, 'edit_categories', 'categories', '2020-04-28 03:48:48', '2020-04-28 03:48:48'),
(29, 'add_categories', 'categories', '2020-04-28 03:48:49', '2020-04-28 03:48:49'),
(30, 'delete_categories', 'categories', '2020-04-28 03:48:49', '2020-04-28 03:48:49'),
(31, 'browse_posts', 'posts', '2020-04-28 03:48:49', '2020-04-28 03:48:49'),
(32, 'read_posts', 'posts', '2020-04-28 03:48:49', '2020-04-28 03:48:49'),
(33, 'edit_posts', 'posts', '2020-04-28 03:48:49', '2020-04-28 03:48:49'),
(34, 'add_posts', 'posts', '2020-04-28 03:48:49', '2020-04-28 03:48:49'),
(35, 'delete_posts', 'posts', '2020-04-28 03:48:50', '2020-04-28 03:48:50'),
(36, 'browse_pages', 'pages', '2020-04-28 03:48:50', '2020-04-28 03:48:50'),
(37, 'read_pages', 'pages', '2020-04-28 03:48:50', '2020-04-28 03:48:50'),
(38, 'edit_pages', 'pages', '2020-04-28 03:48:50', '2020-04-28 03:48:50'),
(39, 'add_pages', 'pages', '2020-04-28 03:48:50', '2020-04-28 03:48:50'),
(40, 'delete_pages', 'pages', '2020-04-28 03:48:50', '2020-04-28 03:48:50'),
(41, 'browse_hooks', NULL, '2020-04-28 03:48:52', '2020-04-28 03:48:52'),
(42, 'browse_tournaments', 'tournaments', '2020-04-30 02:58:54', '2020-04-30 02:58:54'),
(43, 'read_tournaments', 'tournaments', '2020-04-30 02:58:54', '2020-04-30 02:58:54'),
(44, 'edit_tournaments', 'tournaments', '2020-04-30 02:58:54', '2020-04-30 02:58:54'),
(45, 'add_tournaments', 'tournaments', '2020-04-30 02:58:54', '2020-04-30 02:58:54'),
(46, 'delete_tournaments', 'tournaments', '2020-04-30 02:58:54', '2020-04-30 02:58:54'),
(47, 'browse_teams', 'teams', '2020-04-30 03:12:14', '2020-04-30 03:12:14'),
(48, 'read_teams', 'teams', '2020-04-30 03:12:14', '2020-04-30 03:12:14'),
(49, 'edit_teams', 'teams', '2020-04-30 03:12:14', '2020-04-30 03:12:14'),
(50, 'add_teams', 'teams', '2020-04-30 03:12:14', '2020-04-30 03:12:14'),
(51, 'delete_teams', 'teams', '2020-04-30 03:12:14', '2020-04-30 03:12:14'),
(52, 'browse_players', 'players', '2020-04-30 06:10:55', '2020-04-30 06:10:55'),
(53, 'read_players', 'players', '2020-04-30 06:10:55', '2020-04-30 06:10:55'),
(54, 'edit_players', 'players', '2020-04-30 06:10:55', '2020-04-30 06:10:55'),
(55, 'add_players', 'players', '2020-04-30 06:10:55', '2020-04-30 06:10:55'),
(56, 'delete_players', 'players', '2020-04-30 06:10:55', '2020-04-30 06:10:55'),
(57, 'browse_results', 'results', '2020-05-06 09:05:29', '2020-05-06 09:05:29'),
(58, 'read_results', 'results', '2020-05-06 09:05:29', '2020-05-06 09:05:29'),
(59, 'edit_results', 'results', '2020-05-06 09:05:29', '2020-05-06 09:05:29'),
(60, 'add_results', 'results', '2020-05-06 09:05:29', '2020-05-06 09:05:29'),
(61, 'delete_results', 'results', '2020-05-06 09:05:29', '2020-05-06 09:05:29'),
(62, 'browse_gears', 'gears', '2020-05-06 09:28:45', '2020-05-06 09:28:45'),
(63, 'read_gears', 'gears', '2020-05-06 09:28:45', '2020-05-06 09:28:45'),
(64, 'edit_gears', 'gears', '2020-05-06 09:28:45', '2020-05-06 09:28:45'),
(65, 'add_gears', 'gears', '2020-05-06 09:28:45', '2020-05-06 09:28:45'),
(66, 'delete_gears', 'gears', '2020-05-06 09:28:45', '2020-05-06 09:28:45'),
(67, 'browse_testimonials', 'testimonials', '2020-05-07 10:01:17', '2020-05-07 10:01:17'),
(68, 'read_testimonials', 'testimonials', '2020-05-07 10:01:17', '2020-05-07 10:01:17'),
(69, 'edit_testimonials', 'testimonials', '2020-05-07 10:01:17', '2020-05-07 10:01:17'),
(70, 'add_testimonials', 'testimonials', '2020-05-07 10:01:17', '2020-05-07 10:01:17'),
(71, 'delete_testimonials', 'testimonials', '2020-05-07 10:01:17', '2020-05-07 10:01:17'),
(72, 'browse_streams', 'streams', '2020-05-07 10:14:36', '2020-05-07 10:14:36'),
(73, 'read_streams', 'streams', '2020-05-07 10:14:36', '2020-05-07 10:14:36'),
(74, 'edit_streams', 'streams', '2020-05-07 10:14:36', '2020-05-07 10:14:36'),
(75, 'add_streams', 'streams', '2020-05-07 10:14:36', '2020-05-07 10:14:36'),
(76, 'delete_streams', 'streams', '2020-05-07 10:14:36', '2020-05-07 10:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `bio` mediumtext COLLATE utf8mb4_unicode_ci,
  `country` text COLLATE utf8mb4_unicode_ci,
  `age` int(11) DEFAULT NULL,
  `total_game` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `loses` int(11) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `facebook_url` text COLLATE utf8mb4_unicode_ci,
  `twitter_url` text COLLATE utf8mb4_unicode_ci,
  `twitch_url` text COLLATE utf8mb4_unicode_ci,
  `youtube_url` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `player_gear`
--

DROP TABLE IF EXISTS `player_gear`;
CREATE TABLE IF NOT EXISTS `player_gear` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `gear_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `player_team`
--

DROP TABLE IF EXISTS `player_team`;
CREATE TABLE IF NOT EXISTS `player_team` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `team_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
CREATE TABLE IF NOT EXISTS `results` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `tournament_id` int(11) DEFAULT NULL,
  `team_a_id` int(11) DEFAULT NULL,
  `team_a_point` int(11) DEFAULT NULL,
  `team_b_id` int(11) DEFAULT NULL,
  `team_b_point` int(11) DEFAULT NULL,
  `remarks` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-04-28 03:48:42', '2020-04-28 03:48:42'),
(2, 'user', 'Normal User', '2020-04-28 03:48:42', '2020-04-28 03:48:42'),
(3, 'Admin Admin', 'Admin Admin', '2020-04-29 02:29:05', '2020-04-29 02:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'VeloRex', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Gaming Esports Script', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'VeloRex', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Gaming Esports Script', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'social.facebook', 'Facebook', 'facebook.com', NULL, 'text', 6, 'Social'),
(12, 'social.twitter', 'Twitter', 'twitter.com', NULL, 'text', 7, 'Social'),
(13, 'social.youtube', 'Youtube', 'youtube.com', NULL, 'text', 8, 'Social'),
(14, 'social.twitch', 'Twitch', 'twitch.com', NULL, 'text', 9, 'Social'),
(15, 'hero.image', 'Image', '', NULL, 'image', 10, 'Hero'),
(16, 'hero.small_title', 'Small Title', NULL, NULL, 'text', 11, 'Hero'),
(17, 'hero.large_title', 'Large Title', NULL, NULL, 'text', 12, 'Hero');

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

DROP TABLE IF EXISTS `streams`;
CREATE TABLE IF NOT EXISTS `streams` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `status` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `about` mediumtext COLLATE utf8mb4_unicode_ci,
  `founding_date` date DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `loses` int(11) DEFAULT NULL,
  `total_game` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `testimony` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `status` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

DROP TABLE IF EXISTS `tournaments`;
CREATE TABLE IF NOT EXISTS `tournaments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `about` mediumtext COLLATE utf8mb4_unicode_ci,
  `prize` double DEFAULT NULL,
  `venue` text COLLATE utf8mb4_unicode_ci,
  `groups` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `players` int(11) DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tournament_team`
--

DROP TABLE IF EXISTS `tournament_team`;
CREATE TABLE IF NOT EXISTS `tournament_team` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tournament_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$6WE2nvKtgW9YSfu8lKOcquxHWy1zYk.TvS0UxtzFtR.BLcRpV/GMu', '94PjmLPVdo8BnUxNMe6pNJUG0W87M9UK71b52w3v3FPZnbVp1bb7kv1QlH5i', NULL, '2020-05-24 04:41:19', '2020-05-24 04:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
