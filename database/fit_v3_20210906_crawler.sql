-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2021 at 06:00 PM
-- Server version: 10.4.19-MariaDB-log
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fit_v3_20210906`
--

-- --------------------------------------------------------

--
-- Table structure for table `crawler_patterns`
--

DROP TABLE IF EXISTS `crawler_patterns`;
CREATE TABLE `crawler_patterns` (
  `pattern_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `site_id` int(11) NOT NULL COMMENT 'Site ID',
  `pattern_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `pattern_machine_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Machine name',
  `pattern_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `status` tinyint(4) DEFAULT 1 COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crawler_patterns`
--

INSERT INTO `crawler_patterns` (`pattern_id`, `site_id`, `pattern_name`, `pattern_machine_name`, `pattern_description`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tag name', 'tag-name', '<p>tag-name</p>', 99, NULL, 1, 1, NULL, '2021-03-11 19:31:25', '2021-03-11 19:31:25'),
(2, 1, 'Tag url', 'tag-url', '<p>Tag url</p>', 99, NULL, 1, 1, NULL, '2021-03-11 19:32:00', '2021-03-11 19:32:00'),
(3, 1, 'Tag overview', 'tag-overview', '<p>tag-overview</p>', 99, NULL, 1, 1, NULL, '2021-03-11 19:34:00', '2021-03-11 19:34:00'),
(4, 1, 'Tag number questions', 'tag-number-questions', '<pre>tag-number-questions</pre>', 99, NULL, 1, 1, NULL, '2021-03-11 19:34:52', '2021-03-11 19:34:52'),
(5, 1, 'Tag other', 'tag-other', '<pre>tag-other</pre>', 99, NULL, 1, 1, NULL, '2021-03-11 19:35:32', '2021-03-11 19:35:46'),
(6, 1, 'Question name', 'question-name', '<p>question-name</p>', 99, NULL, 1, 1, NULL, '2021-03-11 20:25:36', '2021-03-11 20:25:36'),
(7, 1, 'Question url', 'question-url', '<p>question-url</p>', 99, NULL, 1, 1, NULL, '2021-03-11 20:28:15', '2021-03-11 20:28:15'),
(8, 1, 'Question total page', 'question-total-page', '<p>question-total-page</p>', 99, NULL, 1, 1, NULL, '2021-03-11 20:29:47', '2021-03-11 20:29:47'),
(9, 1, 'Answer counter', 'answer-counter', '<p>Answer counter</p>', NULL, NULL, 1, 1, NULL, '2021-03-11 23:25:38', '2021-03-11 23:25:38'),
(10, 1, 'Answer description', 'answer-description', '<p>Answer description</p>', 99, NULL, 1, 1, NULL, '2021-03-11 23:30:51', '2021-03-11 23:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `crawler_regular_expressions`
--

DROP TABLE IF EXISTS `crawler_regular_expressions`;
CREATE TABLE `crawler_regular_expressions` (
  `regular_expression_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `pattern_id` int(11) NOT NULL COMMENT 'Pattern ID',
  `regular_expression_value` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Regular expression',
  `status` tinyint(4) DEFAULT 1 COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crawler_regular_expressions`
--

INSERT INTO `crawler_regular_expressions` (`regular_expression_id`, `pattern_id`, `regular_expression_value`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '/grid--cell[\\S\\s]*?<a.*?post-tag.*?>(.*?)<\\/a>/', 99, NULL, 1, 1, NULL, '2021-03-11 19:31:25', '2021-03-11 19:31:25'),
(2, 2, '/grid--cell[\\S\\s]*?<a href=\"(.*?)\".*?post-tag/', 99, NULL, 1, 1, NULL, '2021-03-11 19:32:00', '2021-03-11 19:32:00'),
(3, 3, '/s-card[\\S\\s]*?<div.*?v-truncate4.*?>([\\S\\s]*?)<\\/div>/', 99, NULL, 1, 1, NULL, '2021-03-11 19:34:00', '2021-03-11 19:34:00'),
(7, 4, '/<div.*?fc-black-400.*?>[\\S\\s]*?<div.*?grid--cell.*?>([\\S\\s]*?)questions<\\/div>/', 99, NULL, 1, 1, NULL, '2021-03-11 19:48:06', '2021-03-11 19:48:06'),
(6, 5, '/title.*?last 7 days.*?>(.*?)this week<\\/a>/', NULL, NULL, 1, 1, NULL, '2021-03-11 19:35:46', '2021-03-11 19:35:46'),
(8, 6, '/summary[\\S\\s]*?<a.*?question-hyperlink.*?>(.*?)<\\/a>/', NULL, NULL, 1, 1, NULL, '2021-03-11 20:25:36', '2021-03-11 20:25:36'),
(11, 7, '/question-summary[\\S\\s]*?<h3>[\\S\\s]*?<a .*?href=\"(.*?)\".*?class=\"question-hyperlink\".*?>/', 99, NULL, 1, 1, NULL, '2021-03-11 20:48:11', '2021-03-11 20:48:11'),
(10, 8, 'test', NULL, NULL, 1, 1, NULL, '2021-03-11 20:29:47', '2021-03-11 20:29:47'),
(12, 9, '/<h2.*?data-answercount=\"(.*?)\"/', 99, NULL, 1, 1, NULL, '2021-03-11 23:25:38', '2021-03-11 23:25:38'),
(16, 10, '/<div.*?s-prose js-post-body.*?>([\\s\\S]*?)<div.*?mt24/', 99, NULL, 1, 1, NULL, '2021-03-11 23:53:18', '2021-03-11 23:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `crawler_sites`
--

DROP TABLE IF EXISTS `crawler_sites`;
CREATE TABLE `crawler_sites` (
  `site_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Site name',
  `site_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Site url',
  `site_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Site image',
  `site_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `status` tinyint(4) DEFAULT 1 COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) NOT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) NOT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crawler_sites`
--

INSERT INTO `crawler_sites` (`site_id`, `site_name`, `site_url`, `site_image`, `site_description`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Stack Overflow', 'https://stackoverflow.com/', '/photos/1/logo.svg', '<p>Stack Overflow</p>', 99, NULL, 1, 1, NULL, '2021-03-11 18:24:00', '2021-03-11 18:24:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crawler_patterns`
--
ALTER TABLE `crawler_patterns`
  ADD PRIMARY KEY (`pattern_id`);

--
-- Indexes for table `crawler_regular_expressions`
--
ALTER TABLE `crawler_regular_expressions`
  ADD PRIMARY KEY (`regular_expression_id`);

--
-- Indexes for table `crawler_sites`
--
ALTER TABLE `crawler_sites`
  ADD PRIMARY KEY (`site_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crawler_patterns`
--
ALTER TABLE `crawler_patterns`
  MODIFY `pattern_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `crawler_regular_expressions`
--
ALTER TABLE `crawler_regular_expressions`
  MODIFY `regular_expression_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `crawler_sites`
--
ALTER TABLE `crawler_sites`
  MODIFY `site_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
