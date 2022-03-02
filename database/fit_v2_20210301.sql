-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 12, 2021 at 02:54 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fit_v2_20210301`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `context_id` int(11) NOT NULL COMMENT 'Context ID',
  `category_id_parent` int(11) DEFAULT NULL COMMENT 'ID of category parent',
  `category_id_parent_str` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'List of ids of category parent',
  `category_id_child_str` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'List of ids of category child',
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Category name',
  `category_order` int(11) NOT NULL COMMENT 'Order in list of categories',
  `category_slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slug in URL',
  `category_url` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Category url',
  `category_icon` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Category icon',
  `category_overview` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Category overview',
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Category description',
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Image path',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `contact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `contact_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `contact_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Phone',
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Title',
  `contact_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contexts`
--

DROP TABLE IF EXISTS `contexts`;
CREATE TABLE IF NOT EXISTS `contexts` (
  `context_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `context_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Context name',
  `context_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Context key',
  `context_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Context references',
  `context_slug` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Context slug',
  `context_notes` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Category overview',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`context_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contexts`
--

INSERT INTO `contexts` (`context_id`, `context_name`, `context_key`, `context_ref`, `context_slug`, `context_notes`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'User level', 'ab7e417e2dddc5e5240b586d454e', 'user/level', NULL, NULL, 99, NULL, 1, 1, NULL, '2021-03-11 18:22:54', '2021-03-11 18:22:54'),
(2, 'User department', 'ab7e417e2dddc5e5240b586d454f', 'user/department', NULL, NULL, 99, NULL, 1, 1, NULL, '2021-03-11 18:22:54', '2021-03-11 18:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `crawler_patterns`
--

DROP TABLE IF EXISTS `crawler_patterns`;
CREATE TABLE IF NOT EXISTS `crawler_patterns` (
  `pattern_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `site_id` int(11) NOT NULL COMMENT 'Site ID',
  `pattern_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `pattern_machine_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Machine name',
  `pattern_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pattern_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crawler_patterns`
--

INSERT INTO `crawler_patterns` (`pattern_id`, `site_id`, `pattern_name`, `pattern_machine_name`, `pattern_description`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tag name', 'tag-name', '<p>tag-name</p>', 99, NULL, 1, 1, NULL, '2021-03-11 19:31:25', '2021-03-11 19:31:25'),
(2, 1, 'Tag url', 'tag-url', '<p>Tag url</p>', 99, NULL, 1, 1, NULL, '2021-03-11 19:32:00', '2021-03-11 19:32:00'),
(3, 1, 'Tag overview', 'tag-overview', '<p>tag-overview</p>', 99, NULL, 1, 1, NULL, '2021-03-11 19:34:00', '2021-03-11 19:34:00'),
(4, 1, 'Tag number questions', 'tag-number-questions', '<pre>tag-number-questions</pre>', 99, NULL, 1, 1, NULL, '2021-03-11 19:34:52', '2021-03-11 19:34:52'),
(5, 1, 'Tag other', 'tag-other', '<pre>tag-other</pre>', 99, NULL, 1, 1, NULL, '2021-03-11 19:35:32', '2021-03-11 19:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `crawler_regular_expressions`
--

DROP TABLE IF EXISTS `crawler_regular_expressions`;
CREATE TABLE IF NOT EXISTS `crawler_regular_expressions` (
  `regular_expression_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `pattern_id` int(11) NOT NULL COMMENT 'Pattern ID',
  `regular_expression_value` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Regular expression',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`regular_expression_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crawler_regular_expressions`
--

INSERT INTO `crawler_regular_expressions` (`regular_expression_id`, `pattern_id`, `regular_expression_value`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '/grid--cell[\\S\\s]*?<a.*?post-tag.*?>(.*?)<\\/a>/', 99, NULL, 1, 1, NULL, '2021-03-11 19:31:25', '2021-03-11 19:31:25'),
(2, 2, '/grid--cell[\\S\\s]*?<a href=\"(.*?)\".*?post-tag/', 99, NULL, 1, 1, NULL, '2021-03-11 19:32:00', '2021-03-11 19:32:00'),
(3, 3, '/s-card[\\S\\s]*?<div.*?v-truncate4.*?>([\\S\\s]*?)<\\/div>/', 99, NULL, 1, 1, NULL, '2021-03-11 19:34:00', '2021-03-11 19:34:00'),
(7, 4, '/<div.*?fc-black-400.*?>[\\S\\s]*?<div.*?grid--cell.*?>([\\S\\s]*?)questions<\\/div>/', 99, NULL, 1, 1, NULL, '2021-03-11 19:48:06', '2021-03-11 19:48:06'),
(6, 5, '/title.*?last 7 days.*?>(.*?)this week<\\/a>/', NULL, NULL, 1, 1, NULL, '2021-03-11 19:35:46', '2021-03-11 19:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `crawler_sites`
--

DROP TABLE IF EXISTS `crawler_sites`;
CREATE TABLE IF NOT EXISTS `crawler_sites` (
  `site_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Site name',
  `site_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Site url',
  `site_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Site image',
  `site_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crawler_sites`
--

INSERT INTO `crawler_sites` (`site_id`, `site_name`, `site_url`, `site_image`, `site_description`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Stack Overflow', 'https://stackoverflow.com/', '/photos/1/logo.svg', '<p>Stack Overflow</p>', 99, NULL, 1, 1, NULL, '2021-03-11 18:24:00', '2021-03-11 18:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`, `protected`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '{\"_superadmin\":1}', 0, '2021-03-11 18:22:54', '2021-03-11 18:22:54'),
(2, 'editor', '{\"_user-editor\":1,\"_group-editor\":1}', 0, '2021-03-11 18:22:54', '2021-03-11 18:22:54'),
(3, 'base admin', '{\"_user-editor\":1}', 0, '2021-03-11 18:22:54', '2021-03-11 18:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(60, '2021_02_23_084351_create_categories_table', 1),
(61, '2021_02_23_084351_create_contacts_table', 1),
(62, '2021_02_23_084351_create_crawler_patterns_table', 1),
(63, '2021_02_23_084351_create_crawler_regular_expressions_table', 1),
(64, '2021_02_23_084351_create_crawler_sites_table', 1),
(65, '2021_02_23_084351_create_modules_table', 1),
(66, '2021_02_23_084351_create_posts_table', 1),
(67, '2021_02_23_084351_create_samples_table', 1),
(68, '2021_02_23_084351_create_site_stackoverflow_answers_table', 1),
(69, '2021_02_23_084351_create_site_stackoverflow_comments_table', 1),
(70, '2021_02_23_084351_create_site_stackoverflow_questions_table', 1),
(71, '2021_02_23_084351_create_site_stackoverflow_tags_questions_table', 1),
(72, '2021_02_23_084351_create_site_stackoverflow_tags_table', 1),
(73, '2021_02_23_084351_create_slideshow_styles_table', 1),
(74, '2021_02_23_084351_create_slideshows_table', 1),
(75, '2021_02_23_084421_create_contexts_table', 1),
(76, '2021_02_24_095545_create_users_table', 1),
(77, '2021_02_24_095623_create_user_groups_table', 1),
(78, '2021_02_24_095637_create_groups_table', 1),
(79, '2021_02_24_100000_create_password_resets_table', 1),
(80, '2021_02_24_122145_create_profile_field_types', 1),
(81, '2021_02_24_122155_create_profile_field', 1),
(82, '2021_02_24_160516_create_permission_table', 1),
(83, '2021_02_24_165011_create_user_profile_table', 1),
(84, '2021_02_24_225988_migration_cartalyst_sentry_install_throttle', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `module_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `module_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `module_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Phone',
  `module_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Title',
  `module_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `overview` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `overview`, `description`, `url`, `permission`, `protected`, `created_at`, `updated_at`) VALUES
(1, '', 'superadmin', '', '_superadmin', 0, '2021-03-11 18:22:54', '2021-03-11 18:22:54'),
(2, '', 'user editor', '', '_user-editor', 0, '2021-03-11 18:22:54', '2021-03-11 18:22:54'),
(3, '', 'group editor', '', '_group-editor', 0, '2021-03-11 18:22:54', '2021-03-11 18:22:54'),
(4, '', 'permission editor', '', '_permission-editor', 0, '2021-03-11 18:22:54', '2021-03-11 18:22:54'),
(5, '', 'profile type editor', '', '_profile-editor', 0, '2021-03-11 18:22:54', '2021-03-11 18:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `category_id` int(11) DEFAULT NULL COMMENT 'Category ID',
  `slideshow_id` int(11) DEFAULT NULL COMMENT 'Slideshow ID',
  `post_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Post name',
  `post_view_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'View time',
  `post_order` int(11) DEFAULT NULL COMMENT 'Order in list of categories',
  `post_slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slug in URL',
  `post_overview` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Post overview',
  `post_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Post description',
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Image path',
  `post_files` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The list of attachment filenames',
  `post_cache_comments` text COLLATE utf8mb4_unicode_ci COMMENT 'Comments of post',
  `post_cache_other_posts` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The post id of related posts ',
  `post_cache_time` int(11) DEFAULT NULL COMMENT 'Order in list of categories',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_field`
--

DROP TABLE IF EXISTS `profile_field`;
CREATE TABLE IF NOT EXISTS `profile_field` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `profile_field_type_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_field_profile_id_profile_field_type_id_unique` (`profile_id`,`profile_field_type_id`),
  KEY `profile_field_profile_field_type_id_foreign` (`profile_field_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_field_type`
--

DROP TABLE IF EXISTS `profile_field_type`;
CREATE TABLE IF NOT EXISTS `profile_field_type` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `samples`
--

DROP TABLE IF EXISTS `samples`;
CREATE TABLE IF NOT EXISTS `samples` (
  `sample_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `sample_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `sample_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `sample_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Phone',
  `sample_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Title',
  `sample_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`sample_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_stackoverflow_answers`
--

DROP TABLE IF EXISTS `site_stackoverflow_answers`;
CREATE TABLE IF NOT EXISTS `site_stackoverflow_answers` (
  `answer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `question_id` int(11) NOT NULL COMMENT 'Question ID',
  `answer_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `answer_url_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL user',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_stackoverflow_comments`
--

DROP TABLE IF EXISTS `site_stackoverflow_comments`;
CREATE TABLE IF NOT EXISTS `site_stackoverflow_comments` (
  `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `context_id` int(11) NOT NULL COMMENT 'Context ID',
  `comment_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Context Name',
  `comment_url_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL user',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'content',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_stackoverflow_questions`
--

DROP TABLE IF EXISTS `site_stackoverflow_questions`;
CREATE TABLE IF NOT EXISTS `site_stackoverflow_questions` (
  `question_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `question_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `question_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL',
  `question_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `question_url_user` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL user',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_stackoverflow_tags`
--

DROP TABLE IF EXISTS `site_stackoverflow_tags`;
CREATE TABLE IF NOT EXISTS `site_stackoverflow_tags` (
  `tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `tag_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `tag_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Url',
  `tag_overview` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Overview',
  `tag_num_questions` int(11) DEFAULT NULL COMMENT 'Number questions',
  `tag_other` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Other info',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_stackoverflow_tags`
--

INSERT INTO `site_stackoverflow_tags` (`tag_id`, `tag_name`, `tag_url`, `tag_overview`, `tag_num_questions`, `tag_other`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'javascript', '/questions/tagged/javascript', '<p>For questions regarding programming in ECMAScript (JavaScript/JS) and its various dialects/implementations (excluding ActionScript). Please include all relevant tags on your question; e.g., [node.js],&hellip;</p>', 2183951, '5383', 99, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:39'),
(2, 'java', '/questions/tagged/java', 'a high-level programming language. Use this tag when you&#39;re having problems using or understanding the language itself. This tag is rarely used alone and is most often used in conjunction with&hellip;', 1759966, '3017', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(3, 'python', '/questions/tagged/python', 'a multi-paradigm, dynamically typed, multipurpose programming language. It is designed to be quick to learn, understand, and use, and enforce a clean and uniform syntax. Please note that Pyt&hellip;', 1671933, '7517', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(4, 'c#', '/questions/tagged/c%23', 'a high level, statically typed, multi-paradigm programming language developed by Microsoft. C# code usually targets Microsoft&#39;s .NET family of tools and run-times, which&hellip;', 1468444, '2107', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(5, 'php', '/questions/tagged/php', 'a widely used, high-level, dynamic, object-oriented, and interpreted scripting language primarily designed for server-side web development. Used for questions about the PHP language.', 1395382, '1920', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(6, 'android', '/questions/tagged/android', 'Google&#39;s mobile operating system, used for programming or developing digital devices (Smartphones, Tablets, Automobiles, TVs, Wear, Glass, IoT). For topics related to Android, use Android-s&hellip;', 1327063, '1833', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(7, 'html', '/questions/tagged/html', 'the markup language for creating web pages and other information to be displayed in a web browser. Questions regarding HTML should include a minimal reproducible ex&hellip;', 1058240, '2124', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(8, 'jquery', '/questions/tagged/jquery', 'a JavaScript library, consider also adding the JavaScript tag. \r\n\r\njQuery is a popular cross-browser JavaScript library that facilitates Document Object Model (DOM) traversal, event handling&hellip;', 1008706, '671', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(9, 'c++', '/questions/tagged/c%2b%2b', 'a general-purpose programming language. It was originally designed as an extension to C and has a similar syntax, but it is now a completely different language. Use this tag for questions about&hellip;', 716414, '1468', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(10, 'css', '/questions/tagged/css', 'a representation style sheet language used for describing the look and formatting of HTML (HyperText Markup Language), XML (Extensible Markup Language) documents and SV&hellip;', 708921, '1457', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(11, 'ios', '/questions/tagged/ios', 'the mobile operating system running on the Apple iPhone, iPod touch, and iPad. Use this tag [ios] for questions related to programming on the iOS platform. Use the related tags [objective-c] an&hellip;', 652152, '689', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(12, 'mysql', '/questions/tagged/mysql', 'a free, open source Relational Database Management System (RDBMS) that uses Structured Query Language (SQL).  DO NOT USE this tag for other DBs such as SQL Server, SQLite etc.  Those are diff&hellip;', 620136, '900', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(13, 'sql', '/questions/tagged/sql', 'a language for querying databases. Questions should include code examples, table structure, sample data, and a tag for the DBMS implementation (e.g. MySQL, PostgreSQ&hellip;', 582328, '1156', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(14, 'r', '/questions/tagged/r', 'a free, open-source programming language and software environment for statistical computing, bioinformatics, visualization, and general computing. Please provide minimal and reproducible example(&hellip;', 392239, '1485', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(15, 'node.js', '/questions/tagged/node.js', 'an event-based, non-blocking, asynchronous I/O runtime that uses Google&#39;s V8 JavaScript engine and libuv library. It is used for developing applications that make heavy use of the ability t&hellip;', 377181, '1578', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(16, 'asp.net', '/questions/tagged/asp.net', 'a Microsoft web application development framework that allows programmers to build dynamic web sites, web applications and web services. It is useful to use this tag in conjunction with the&hellip;', 362102, '287', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(17, 'arrays', '/questions/tagged/arrays', 'an ordered linear data structure consisting of a collection of elements (values, variables, or references), each identified by one or more indexes. When asking about specific variants of a&hellip;', 358136, '838', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(18, 'c', '/questions/tagged/c', 'a general-purpose programming language used for system programming (OS and embedded), libraries, games and cross-platform. This tag should be used with general questions concerning the C language&hellip;', 353687, '669', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(19, 'ruby-on-rails', '/questions/tagged/ruby-on-rails', 'an open source full-stack web application framework written in Ruby. It follows the popular MVC framework model and is known for its &quot;convention over configuration&quot; approach to applic&hellip;', 324652, '184', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(20, 'json', '/questions/tagged/json', 'a serializable data interchange format intended to be machine and human readable. Do not use this tag for native JavaScript objects or JavaScript object literals. &hellip;', 313811, '746', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(21, '.net', '/questions/tagged/.net', 'Do NOT use for questions about .NET Core - use [.net-core] instead. The .NET framework is a software framework designed mainly for the Microsoft Windows operating system. It includes an implementation&hellip;', 306230, '373', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(22, 'sql-server', '/questions/tagged/sql-server', 'a relational database management system (RDBMS). Use this tag for all SQL Server editions including Compact, Express, Azure, Fast-track, APS (formerly PDW) and Azure SQL DW. Do&hellip;', 301196, '498', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(23, 'swift', '/questions/tagged/swift', 'a safe, fast, and expressive general-purpose programming language developed by Apple Inc. for its platforms and Linux. Swift is open-source. Use the tag only for questions about language feat&hellip;', 291494, '753', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(24, 'objective-c', '/questions/tagged/objective-c', 'should be used only on questions that are about Objective-C features or depend on code in the language. The tags [cocoa] and [cocoa-touch] should be used to ask about Apple&#39;s frameworks or cl&hellip;', 291445, '57', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(25, 'reactjs', '/questions/tagged/reactjs', 'a JavaScript library for building user interfaces. It uses a declarative, component-based paradigm and aims to be both efficient and flexible.', 288909, '2265', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(26, 'python-3.x', '/questions/tagged/python-3.x', 'For questions about Python programming that are specific to version 3+ of the language. Use the more generic [python] tag on all Python questions, and only add this one if your question is version-spe&hellip;', 276319, '1503', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(27, 'angularjs', '/questions/tagged/angularjs', 'Use for questions about AngularJS (1.x), the open-source JavaScript framework. Do NOT use this tag for Angular 2 or later versions; instead, use the [angular] tag.', 262049, '59', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(28, 'django', '/questions/tagged/django', 'an open-source server-side web application framework written in Python. It is designed to reduce the effort required to create complex data-driven websites and web applications, with a speci&hellip;', 260886, '874', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(29, 'angular', '/questions/tagged/angular', 'Questions about Angular (not to be confused with AngularJS), the web framework from Google. Use this tag for Angular questions which are not specific to an individual version. For the older AngularJS &hellip;', 247816, '1014', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(30, 'excel', '/questions/tagged/excel', 'Only for questions on programming against Excel objects or files, or complex formula development. You may combine the Excel tag with VBA, VSTO, C#, VB.NET, PowerShell, OLE automation, and other progra&hellip;', 242463, '614', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(31, 'regex', '/questions/tagged/regex', 'Regular expressions provide a declarative language to match patterns within strings. They are commonly used for string validation, parsing, and transformation. Because regular expressions are not full&hellip;', 238086, '448', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(32, 'iphone', '/questions/tagged/iphone', 'unless you are addressing Apple&#39;s iPhone and/or iPod touch specifically. For questions not dependent on hardware, use the tag [ios]. More tags to consider are [xcode] (but only if &hellip;', 220979, '36', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(33, 'ruby', '/questions/tagged/ruby', 'a multi-platform open-source, dynamic object-oriented interpreted language. The [ruby] tag is for questions related to the Ruby language, including its syntax and its libraries. Ruby on Rails &hellip;', 218392, '150', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(34, 'ajax', '/questions/tagged/ajax', 'a technique for creating interactive website user interfaces without the traditional web page refresh or reload. It uses asynchronous data exchange between cl&hellip;', 214867, '220', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(35, 'linux', '/questions/tagged/linux', 'LINUX QUESTIONS MUST BE PROGRAMMING RELATED.\r\n\r\nUse this tag only if your question relates to programming using Linux APIs or Linux-specific behavior, not just because you happen to run your code on L&hellip;', 202365, '545', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17'),
(36, 'xml', '/questions/tagged/xml', 'a structured document format defining text encoding rules. When using this tag include additional tags such as programming language, tool sets, XML technologies bei&hellip;', 200597, '271', NULL, NULL, 1, 1, NULL, '2021-03-11 19:52:17', '2021-03-11 19:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `site_stackoverflow_tags_questions`
--

DROP TABLE IF EXISTS `site_stackoverflow_tags_questions`;
CREATE TABLE IF NOT EXISTS `site_stackoverflow_tags_questions` (
  `tag_question_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `tag_id` int(11) NOT NULL COMMENT 'Tag ID',
  `question_id` int(11) NOT NULL COMMENT 'Question ID',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tag_question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slideshows`
--

DROP TABLE IF EXISTS `slideshows`;
CREATE TABLE IF NOT EXISTS `slideshows` (
  `slideshow_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `style_id` int(11) NOT NULL COMMENT 'Style ID',
  `slideshow_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slideshow name',
  `slideshow_overview` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slideshow overview',
  `slideshow_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slideshow description',
  `slideshow_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Image path',
  `slideshow_images` text COLLATE utf8mb4_unicode_ci COMMENT 'List of image paths',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`slideshow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slideshow_styles`
--

DROP TABLE IF EXISTS `slideshow_styles`;
CREATE TABLE IF NOT EXISTS `slideshow_styles` (
  `style_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `style_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Style name',
  `style_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Style image',
  `style_view_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'View file',
  `style_js_file` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Js file',
  `style_css_file` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Css file',
  `style_view_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'View content',
  `status` tinyint(4) DEFAULT '1' COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`style_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `activated`, `banned`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `protected`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '$2y$10$kOc/EHL/wcIUE91hNNgRI.71G69p.sjUVa7hI1N3M0i5k2pIJWE9i', NULL, 1, 0, NULL, NULL, '2021-03-11 18:23:25', '$2y$10$JRyH69/XZBihw6GXRNg8Q.E5jYdXqGtDgd/ecyZpHlZy/44wDm6Mm', NULL, 0, '2021-03-11 18:22:54', '2021-03-11 18:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_profile_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `code`, `vat`, `first_name`, `last_name`, `phone`, `state`, `city`, `country`, `sex`, `category_id`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-11 18:22:54', '2021-03-11 18:22:54');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
