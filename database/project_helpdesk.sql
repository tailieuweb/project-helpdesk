-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 07:39 AM
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
-- Database: `project_helpdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `context_id` int(11) NOT NULL COMMENT 'Context ID',
  `category_id_parent` int(11) DEFAULT NULL COMMENT 'ID of category parent',
  `category_id_parent_str` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'List of ids of category parent',
  `category_id_child_str` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'List of ids of category child',
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Category name',
  `category_order` int(11) DEFAULT NULL COMMENT 'Order in list of categories',
  `category_slug` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Slug in URL',
  `category_url` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Category url',
  `category_icon` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Category icon',
  `category_overview` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Category overview',
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Category description',
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Image path',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes_users`
--

DROP TABLE IF EXISTS `classes_users`;
CREATE TABLE `classes_users` (
  `class_user_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `course_id` int(11) NOT NULL COMMENT 'Course ID',
  `user_id` int(11) NOT NULL COMMENT 'User ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Company name',
  `company_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Company slug',
  `company_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company website',
  `company_tax_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company tax code',
  `company_address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Company address',
  `company_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company image',
  `company_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contexts`
--

DROP TABLE IF EXISTS `contexts`;
CREATE TABLE `contexts` (
  `context_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `context_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Context name',
  `context_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Context references',
  `context_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Context key',
  `context_slug` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Context slug',
  `context_notes` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Category overview',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contexts`
--

INSERT INTO `contexts` (`context_id`, `context_name`, `context_ref`, `context_key`, `context_slug`, `context_notes`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'User level', 'user/level', 'ab7e417e2dddc5e5240b586d454e', NULL, NULL, 99, NULL, 1, 1, NULL, '2022-03-02 05:42:46', '2022-03-02 05:42:46'),
(2, 'User department', 'user/department', 'ab7e417e2dddc5e5240b586d454f', NULL, NULL, 99, NULL, 1, 1, NULL, '2022-03-02 05:42:46', '2022-03-02 05:42:46'),
(3, 'Admin posts', 'admin/posts', 'ab7e417e2dddc5240b586d454e', NULL, NULL, 99, NULL, 1, 1, NULL, '2022-03-02 05:42:46', '2022-03-02 05:42:46'),
(4, 'Admin slideshows', 'admin/slideshows', 'ab7e417e2dddc5e5240b586d454f', NULL, NULL, 99, NULL, 1, 1, NULL, '2022-03-02 05:42:46', '2022-03-02 05:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `teacher_id` int(11) NOT NULL COMMENT 'User teacher ID',
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Course name',
  `course_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Course slug',
  `course_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Course start date',
  `course_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Course end date',
  `course_enroll_file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Enroll file path',
  `course_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Course image',
  `course_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Course description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `pattern_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crawler_regular_expressions`
--

DROP TABLE IF EXISTS `crawler_regular_expressions`;
CREATE TABLE `crawler_regular_expressions` (
  `regular_expression_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `pattern_id` int(11) NOT NULL COMMENT 'Pattern ID',
  `regular_expression_value` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Regular expression',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crawler_sites`
--

DROP TABLE IF EXISTS `crawler_sites`;
CREATE TABLE `crawler_sites` (
  `site_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Site name',
  `site_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Site slug',
  `site_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Site url',
  `site_type` int(11) NOT NULL COMMENT 'Site type',
  `site_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Site image',
  `site_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Site description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crawler_works_categories`
--

DROP TABLE IF EXISTS `crawler_works_categories`;
CREATE TABLE `crawler_works_categories` (
  `category_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `site_id` int(11) NOT NULL COMMENT 'Site ID',
  `category_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `category_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Url',
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Image',
  `category_overview` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Overview',
  `category_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crawler_works_categories_jobs`
--

DROP TABLE IF EXISTS `crawler_works_categories_jobs`;
CREATE TABLE `crawler_works_categories_jobs` (
  `category_job_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `job_id` int(11) NOT NULL COMMENT 'Job ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crawler_works_jobs`
--

DROP TABLE IF EXISTS `crawler_works_jobs`;
CREATE TABLE `crawler_works_jobs` (
  `job_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `site_id` int(11) NOT NULL COMMENT 'Site ID',
  `job_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `job_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL',
  `job_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Image',
  `job_overview` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Overview',
  `job_requirements` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Requirements',
  `job_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`, `protected`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '{\"_superadmin\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(2, 'editor', '{\"_user-editor\":1,\"_group-editor\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(3, 'base admin', '{\"_user-editor\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(4, 'group_test_0', '{\"permission_test_0\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(5, 'group_test_1', '{\"permission_test_1\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(6, 'group_test_2', '{\"permission_test_2\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(7, 'group_test_3', '{\"permission_test_3\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(8, 'group_test_4', '{\"permission_test_4\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(9, 'group_test_5', '{\"permission_test_5\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(10, 'group_test_6', '{\"permission_test_6\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(11, 'group_test_7', '{\"permission_test_7\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(12, 'group_test_8', '{\"permission_test_8\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(13, 'group_test_9', '{\"permission_test_9\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(14, 'group_test_10', '{\"permission_test_10\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(15, 'group_test_11', '{\"permission_test_11\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(16, 'group_test_12', '{\"permission_test_12\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(17, 'group_test_13', '{\"permission_test_13\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(18, 'group_test_14', '{\"permission_test_14\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(19, 'group_test_15', '{\"permission_test_15\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(20, 'group_test_16', '{\"permission_test_16\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(21, 'group_test_17', '{\"permission_test_17\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(22, 'group_test_18', '{\"permission_test_18\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(23, 'group_test_19', '{\"permission_test_19\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(24, 'group_test_20', '{\"permission_test_20\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(25, 'group_test_21', '{\"permission_test_21\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(26, 'group_test_22', '{\"permission_test_22\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(27, 'group_test_23', '{\"permission_test_23\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(28, 'group_test_24', '{\"permission_test_24\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(29, 'group_test_25', '{\"permission_test_25\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(30, 'group_test_26', '{\"permission_test_26\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(31, 'group_test_27', '{\"permission_test_27\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(32, 'group_test_28', '{\"permission_test_28\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(33, 'group_test_29', '{\"permission_test_29\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(34, 'group_test_30', '{\"permission_test_30\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(35, 'group_test_31', '{\"permission_test_31\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(36, 'group_test_32', '{\"permission_test_32\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(37, 'group_test_33', '{\"permission_test_33\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(38, 'group_test_34', '{\"permission_test_34\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(39, 'group_test_35', '{\"permission_test_35\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(40, 'group_test_36', '{\"permission_test_36\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(41, 'group_test_37', '{\"permission_test_37\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(42, 'group_test_38', '{\"permission_test_38\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(43, 'group_test_39', '{\"permission_test_39\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(44, 'group_test_40', '{\"permission_test_40\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(45, 'group_test_41', '{\"permission_test_41\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(46, 'group_test_42', '{\"permission_test_42\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(47, 'group_test_43', '{\"permission_test_43\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(48, 'group_test_44', '{\"permission_test_44\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(49, 'group_test_45', '{\"permission_test_45\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(50, 'group_test_46', '{\"permission_test_46\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(51, 'group_test_47', '{\"permission_test_47\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(52, 'group_test_48', '{\"permission_test_48\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(53, 'group_test_49', '{\"permission_test_49\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(54, 'group_test_50', '{\"permission_test_50\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(55, 'group_test_51', '{\"permission_test_51\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(56, 'group_test_52', '{\"permission_test_52\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(57, 'group_test_53', '{\"permission_test_53\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(58, 'group_test_54', '{\"permission_test_54\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(59, 'group_test_55', '{\"permission_test_55\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(60, 'group_test_56', '{\"permission_test_56\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(61, 'group_test_57', '{\"permission_test_57\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(62, 'group_test_58', '{\"permission_test_58\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(63, 'group_test_59', '{\"permission_test_59\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(64, 'group_test_60', '{\"permission_test_60\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(65, 'group_test_61', '{\"permission_test_61\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(66, 'group_test_62', '{\"permission_test_62\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(67, 'group_test_63', '{\"permission_test_63\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(68, 'group_test_64', '{\"permission_test_64\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(69, 'group_test_65', '{\"permission_test_65\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(70, 'group_test_66', '{\"permission_test_66\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(71, 'group_test_67', '{\"permission_test_67\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(72, 'group_test_68', '{\"permission_test_68\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(73, 'group_test_69', '{\"permission_test_69\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(74, 'group_test_70', '{\"permission_test_70\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(75, 'group_test_71', '{\"permission_test_71\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(76, 'group_test_72', '{\"permission_test_72\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(77, 'group_test_73', '{\"permission_test_73\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(78, 'group_test_74', '{\"permission_test_74\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(79, 'group_test_75', '{\"permission_test_75\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(80, 'group_test_76', '{\"permission_test_76\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(81, 'group_test_77', '{\"permission_test_77\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(82, 'group_test_78', '{\"permission_test_78\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(83, 'group_test_79', '{\"permission_test_79\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(84, 'group_test_80', '{\"permission_test_80\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(85, 'group_test_81', '{\"permission_test_81\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(86, 'group_test_82', '{\"permission_test_82\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(87, 'group_test_83', '{\"permission_test_83\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(88, 'group_test_84', '{\"permission_test_84\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(89, 'group_test_85', '{\"permission_test_85\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(90, 'group_test_86', '{\"permission_test_86\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(91, 'group_test_87', '{\"permission_test_87\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(92, 'group_test_88', '{\"permission_test_88\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(93, 'group_test_89', '{\"permission_test_89\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(94, 'group_test_90', '{\"permission_test_90\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(95, 'group_test_91', '{\"permission_test_91\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(96, 'group_test_92', '{\"permission_test_92\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(97, 'group_test_93', '{\"permission_test_93\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(98, 'group_test_94', '{\"permission_test_94\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(99, 'group_test_95', '{\"permission_test_95\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(100, 'group_test_96', '{\"permission_test_96\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(101, 'group_test_97', '{\"permission_test_97\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(102, 'group_test_98', '{\"permission_test_98\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(103, 'group_test_99', '{\"permission_test_99\":1}', 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `internship`
--

DROP TABLE IF EXISTS `internship`;
CREATE TABLE `internship` (
  `internship_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `course_id` int(11) NOT NULL COMMENT 'Course ID',
  `user_id` int(11) NOT NULL COMMENT 'User ID',
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `student_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Student class',
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Company name',
  `company_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company phone',
  `company_instructor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company instructor',
  `company_instructor_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company internship name',
  `company_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Company slug',
  `company_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company website',
  `company_tax_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company tax code',
  `company_address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Company address',
  `company_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company image',
  `company_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Company description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `internship_diary`
--

DROP TABLE IF EXISTS `internship_diary`;
CREATE TABLE `internship_diary` (
  `internship_diary_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `internship_id` int(11) NOT NULL COMMENT 'Internship ID',
  `diary_start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Start date',
  `diary_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'End date',
  `diary_mon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mon',
  `diary_tue` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tue',
  `diary_wed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Wed',
  `diary_thu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Thu',
  `diary_fri` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Fri',
  `diary_sat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Sat',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_01_03_102927_create_classes_users_table', 1),
(2, '2021_01_03_102927_create_company_table', 1),
(3, '2021_01_03_102927_create_course_table', 1),
(4, '2021_01_03_102927_create_internship_diary_table', 1),
(5, '2021_01_03_102927_create_internship_table', 1),
(6, '2021_02_23_084351_create_categories_table', 1),
(7, '2021_02_23_084351_create_crawler_patterns_table', 1),
(8, '2021_02_23_084351_create_crawler_regular_expressions_table', 1),
(9, '2021_02_23_084351_create_crawler_sites_table', 1),
(10, '2021_02_23_084351_create_crawler_works_categories_jobs_table', 1),
(11, '2021_02_23_084351_create_crawler_works_categories_table', 1),
(12, '2021_02_23_084351_create_crawler_works_jobs_table', 1),
(13, '2021_02_23_084351_create_posts_table', 1),
(14, '2021_02_23_084351_create_site_stackoverflow_answers_table', 1),
(15, '2021_02_23_084351_create_site_stackoverflow_comments_table', 1),
(16, '2021_02_23_084351_create_site_stackoverflow_questions_table', 1),
(17, '2021_02_23_084351_create_site_stackoverflow_tags_questions_table', 1),
(18, '2021_02_23_084351_create_site_stackoverflow_tags_table', 1),
(19, '2021_02_23_084351_create_slideshow_styles_table', 1),
(20, '2021_02_23_084351_create_slideshows_table', 1),
(21, '2021_02_23_084421_create_contexts_table', 1),
(22, '2021_02_24_095545_create_users_table', 1),
(23, '2021_02_24_095623_create_user_groups_table', 1),
(24, '2021_02_24_095637_create_groups_table', 1),
(25, '2021_02_24_100000_create_password_resets_table', 1),
(26, '2021_02_24_122145_create_profile_field_types', 1),
(27, '2021_02_24_122150_create_user_profile_table', 1),
(28, '2021_02_24_122155_create_profile_field', 1),
(29, '2021_02_24_160516_create_permission_table', 1),
(30, '2021_02_24_225988_migration_cartalyst_sentry_install_throttle', 1),
(31, '2021_09_11_084351_create_pexcels_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'Category ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Permission name',
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Permission slug',
  `protected` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Permission description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `category_id`, `name`, `permission`, `protected`, `description`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'superadmin', '_superadmin', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(2, NULL, 'user editor', '_user-editor', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(3, NULL, 'group editor', '_group-editor', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(4, NULL, 'permission editor', '_permission-editor', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(5, NULL, 'profile type editor', '_profile-editor', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(6, NULL, 'Permission test 0', '_permission_test_0', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(7, NULL, 'Permission test 1', '_permission_test_1', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(8, NULL, 'Permission test 2', '_permission_test_2', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(9, NULL, 'Permission test 3', '_permission_test_3', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(10, NULL, 'Permission test 4', '_permission_test_4', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(11, NULL, 'Permission test 5', '_permission_test_5', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(12, NULL, 'Permission test 6', '_permission_test_6', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(13, NULL, 'Permission test 7', '_permission_test_7', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(14, NULL, 'Permission test 8', '_permission_test_8', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(15, NULL, 'Permission test 9', '_permission_test_9', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(16, NULL, 'Permission test 10', '_permission_test_10', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(17, NULL, 'Permission test 11', '_permission_test_11', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(18, NULL, 'Permission test 12', '_permission_test_12', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(19, NULL, 'Permission test 13', '_permission_test_13', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(20, NULL, 'Permission test 14', '_permission_test_14', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(21, NULL, 'Permission test 15', '_permission_test_15', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(22, NULL, 'Permission test 16', '_permission_test_16', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(23, NULL, 'Permission test 17', '_permission_test_17', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(24, NULL, 'Permission test 18', '_permission_test_18', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(25, NULL, 'Permission test 19', '_permission_test_19', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(26, NULL, 'Permission test 20', '_permission_test_20', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(27, NULL, 'Permission test 21', '_permission_test_21', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(28, NULL, 'Permission test 22', '_permission_test_22', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(29, NULL, 'Permission test 23', '_permission_test_23', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(30, NULL, 'Permission test 24', '_permission_test_24', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(31, NULL, 'Permission test 25', '_permission_test_25', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(32, NULL, 'Permission test 26', '_permission_test_26', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(33, NULL, 'Permission test 27', '_permission_test_27', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(34, NULL, 'Permission test 28', '_permission_test_28', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(35, NULL, 'Permission test 29', '_permission_test_29', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(36, NULL, 'Permission test 30', '_permission_test_30', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(37, NULL, 'Permission test 31', '_permission_test_31', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(38, NULL, 'Permission test 32', '_permission_test_32', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(39, NULL, 'Permission test 33', '_permission_test_33', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(40, NULL, 'Permission test 34', '_permission_test_34', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(41, NULL, 'Permission test 35', '_permission_test_35', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(42, NULL, 'Permission test 36', '_permission_test_36', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(43, NULL, 'Permission test 37', '_permission_test_37', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(44, NULL, 'Permission test 38', '_permission_test_38', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(45, NULL, 'Permission test 39', '_permission_test_39', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(46, NULL, 'Permission test 40', '_permission_test_40', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(47, NULL, 'Permission test 41', '_permission_test_41', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(48, NULL, 'Permission test 42', '_permission_test_42', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(49, NULL, 'Permission test 43', '_permission_test_43', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(50, NULL, 'Permission test 44', '_permission_test_44', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(51, NULL, 'Permission test 45', '_permission_test_45', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(52, NULL, 'Permission test 46', '_permission_test_46', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(53, NULL, 'Permission test 47', '_permission_test_47', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(54, NULL, 'Permission test 48', '_permission_test_48', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(55, NULL, 'Permission test 49', '_permission_test_49', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(56, NULL, 'Permission test 50', '_permission_test_50', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(57, NULL, 'Permission test 51', '_permission_test_51', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(58, NULL, 'Permission test 52', '_permission_test_52', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(59, NULL, 'Permission test 53', '_permission_test_53', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(60, NULL, 'Permission test 54', '_permission_test_54', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(61, NULL, 'Permission test 55', '_permission_test_55', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(62, NULL, 'Permission test 56', '_permission_test_56', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(63, NULL, 'Permission test 57', '_permission_test_57', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(64, NULL, 'Permission test 58', '_permission_test_58', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(65, NULL, 'Permission test 59', '_permission_test_59', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(66, NULL, 'Permission test 60', '_permission_test_60', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(67, NULL, 'Permission test 61', '_permission_test_61', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(68, NULL, 'Permission test 62', '_permission_test_62', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(69, NULL, 'Permission test 63', '_permission_test_63', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(70, NULL, 'Permission test 64', '_permission_test_64', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(71, NULL, 'Permission test 65', '_permission_test_65', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(72, NULL, 'Permission test 66', '_permission_test_66', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(73, NULL, 'Permission test 67', '_permission_test_67', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(74, NULL, 'Permission test 68', '_permission_test_68', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(75, NULL, 'Permission test 69', '_permission_test_69', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(76, NULL, 'Permission test 70', '_permission_test_70', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(77, NULL, 'Permission test 71', '_permission_test_71', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(78, NULL, 'Permission test 72', '_permission_test_72', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(79, NULL, 'Permission test 73', '_permission_test_73', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(80, NULL, 'Permission test 74', '_permission_test_74', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(81, NULL, 'Permission test 75', '_permission_test_75', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(82, NULL, 'Permission test 76', '_permission_test_76', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(83, NULL, 'Permission test 77', '_permission_test_77', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(84, NULL, 'Permission test 78', '_permission_test_78', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(85, NULL, 'Permission test 79', '_permission_test_79', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(86, NULL, 'Permission test 80', '_permission_test_80', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(87, NULL, 'Permission test 81', '_permission_test_81', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(88, NULL, 'Permission test 82', '_permission_test_82', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(89, NULL, 'Permission test 83', '_permission_test_83', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(90, NULL, 'Permission test 84', '_permission_test_84', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(91, NULL, 'Permission test 85', '_permission_test_85', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(92, NULL, 'Permission test 86', '_permission_test_86', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(93, NULL, 'Permission test 87', '_permission_test_87', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(94, NULL, 'Permission test 88', '_permission_test_88', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(95, NULL, 'Permission test 89', '_permission_test_89', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(96, NULL, 'Permission test 90', '_permission_test_90', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(97, NULL, 'Permission test 91', '_permission_test_91', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(98, NULL, 'Permission test 92', '_permission_test_92', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(99, NULL, 'Permission test 93', '_permission_test_93', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(100, NULL, 'Permission test 94', '_permission_test_94', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(101, NULL, 'Permission test 95', '_permission_test_95', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(102, NULL, 'Permission test 96', '_permission_test_96', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(103, NULL, 'Permission test 97', '_permission_test_97', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(104, NULL, 'Permission test 98', '_permission_test_98', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30'),
(105, NULL, 'Permission test 99', '_permission_test_99', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:30', '2022-03-02 05:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `pexcels`
--

DROP TABLE IF EXISTS `pexcels`;
CREATE TABLE `pexcels` (
  `pexcel_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `pexcel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `pexcel_range_data` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Range data',
  `pexcel_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Json value',
  `pexcel_file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'File path',
  `pexcel_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `category_id` int(11) DEFAULT NULL COMMENT 'Category ID',
  `slideshow_id` int(11) DEFAULT NULL COMMENT 'Slideshow ID',
  `post_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Post name',
  `post_order` int(11) DEFAULT NULL COMMENT 'Order in list of categories',
  `post_slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slug in URL',
  `post_overview` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Post overview',
  `post_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Post description',
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Image path',
  `post_files` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The list of attachment filenames',
  `post_cache_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Comments of post',
  `post_cache_other_posts` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The post id of related posts ',
  `post_cache_time` int(11) DEFAULT NULL COMMENT 'Order in list of categories',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_field`
--

DROP TABLE IF EXISTS `profile_field`;
CREATE TABLE `profile_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `profile_field_type_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_field_type`
--

DROP TABLE IF EXISTS `profile_field_type`;
CREATE TABLE `profile_field_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_stackoverflow_answers`
--

DROP TABLE IF EXISTS `site_stackoverflow_answers`;
CREATE TABLE `site_stackoverflow_answers` (
  `answer_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `question_id` int(11) NOT NULL COMMENT 'Question ID',
  `answer_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `answer_url_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL user',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_stackoverflow_comments`
--

DROP TABLE IF EXISTS `site_stackoverflow_comments`;
CREATE TABLE `site_stackoverflow_comments` (
  `comment_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `context_id` int(11) NOT NULL COMMENT 'Context ID',
  `comment_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Context Name',
  `comment_url_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL user',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'content',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_stackoverflow_questions`
--

DROP TABLE IF EXISTS `site_stackoverflow_questions`;
CREATE TABLE `site_stackoverflow_questions` (
  `question_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `question_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `question_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL',
  `question_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `question_url_user` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL user',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_stackoverflow_tags`
--

DROP TABLE IF EXISTS `site_stackoverflow_tags`;
CREATE TABLE `site_stackoverflow_tags` (
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `tag_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `tag_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Url',
  `tag_overview` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Overview',
  `tag_num_questions` int(11) DEFAULT NULL COMMENT 'Number questions',
  `tag_other` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Other info',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site_stackoverflow_tags_questions`
--

DROP TABLE IF EXISTS `site_stackoverflow_tags_questions`;
CREATE TABLE `site_stackoverflow_tags_questions` (
  `tag_question_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `tag_id` int(11) NOT NULL COMMENT 'Tag ID',
  `question_id` int(11) NOT NULL COMMENT 'Question ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slideshows`
--

DROP TABLE IF EXISTS `slideshows`;
CREATE TABLE `slideshows` (
  `slideshow_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `style_id` int(11) NOT NULL COMMENT 'Style ID',
  `slideshow_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slideshow name',
  `slideshow_overview` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slideshow overview',
  `slideshow_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slideshow description',
  `slideshow_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Image path',
  `slideshow_images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'List of image paths',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slideshow_styles`
--

DROP TABLE IF EXISTS `slideshow_styles`;
CREATE TABLE `slideshow_styles` (
  `style_id` int(10) UNSIGNED NOT NULL COMMENT 'Primary key',
  `style_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Style name',
  `style_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Style image',
  `style_view_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'View file',
  `style_js_file` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Js file',
  `style_css_file` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Css file',
  `style_view_content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'View content',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'User id',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User email',
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'User name',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User password',
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `activation_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `user_name`, `password`, `permissions`, `activated`, `banned`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `protected`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', 'admin', '$2y$10$Hy4gDYBZnyxm0nWY9HASE.Z4YAuMERVTwtCDssCuU0XNeytGuYXRy', NULL, 1, 0, NULL, NULL, '2022-03-02 06:04:54', '$2y$10$Xgi7kXLwprhpwGNyBheOGeCaVOTrz1Uyop6IK48VQL/m3epYwCZbO', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 06:04:54'),
(2, 'admin@admin.com1', NULL, '$2y$10$Ku9BvVg3ZAbB7R/aegnt4OddxO6qHh7BNG6wx5MTRV74Cksx0aeeG', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(3, 'admin@admin.com2', NULL, '$2y$10$STBz9/CzL7pPaIJJTlSn0uBtyXt0QJvh5Jfg872Hc5wDAtH61OE5S', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(4, 'admin@admin.com3', NULL, '$2y$10$XoLR8r73Bj..1rSeoIknW.JwKL9/HFATmY37tOOOIfemqBCmtEvqi', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(5, 'admin@admin.com4', NULL, '$2y$10$CG9eNoni0I5tpRh0lCy0DOYi.wvSnGyTVpGvYps7WUc93QSZogZFa', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(6, 'admin@admin.com5', NULL, '$2y$10$.E1jc315Y..s.KkZ7FXvaeVh18WbPwLwNcwxqwUBaiSVJv2rkH.Oq', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(7, 'admin@admin.com6', NULL, '$2y$10$XkpKCVbC0rDLAGSlLPj2COKwo9KPfE7Nc0UndFRdXRaD/Z8z47xI6', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(8, 'admin@admin.com7', NULL, '$2y$10$sP5meckvEqru8Zno2ODxMOiDhZ0CQaSqad03TNHtw0PcJg9Oxa1/u', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(9, 'admin@admin.com8', NULL, '$2y$10$P4CWJwDmm/acPhLXndbwROVH1vnhPX1XtphRTcgheumIyT4wLWoxG', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(10, 'admin@admin.com9', NULL, '$2y$10$ZOmj8uagwsHJkogerYgEW.T24ZpicwuSvhe56UM/LOK9gpRoeEK1K', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(11, 'admin@admin.com10', NULL, '$2y$10$RzluPwp6NvHvZMkSo9o7XOD/rSY/EyFfWgS65Jj8Er/K8uEvy7POO', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(12, 'admin@admin.com11', NULL, '$2y$10$5afswWqUR.jVIA2yXOhVo.RV.mixvdOgBZ5uqCBBSHpigb9GCRVYW', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(13, 'admin@admin.com12', NULL, '$2y$10$Fyo6e5fryI1Ahis5bMrYgOxYwo8RpUBNwQzBleplnwJt92R84dfBC', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(14, 'admin@admin.com13', NULL, '$2y$10$hDhsRfHuGhyfYabqzeEMh.eN0n3aF/YDA.wM4lTb31GKvX7/Cdsz2', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(15, 'admin@admin.com14', NULL, '$2y$10$/6gg4HI9E8c6LJ3yXZyJeeinasvbUVX0jZ3zait.H86X6t/CiaLOu', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(16, 'admin@admin.com15', NULL, '$2y$10$qjqhrvGNizNfdob9.xVVqOGp2VtszP4UCmzFl5GUCQ8qEkYkapI96', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(17, 'admin@admin.com16', NULL, '$2y$10$7F5RdfxjK5KxbIAbyjvf4OmCinpJ1VMJySp8098nTiwCaExKrne7C', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(18, 'admin@admin.com17', NULL, '$2y$10$EvJ58KwGc5tTwmMW0u7wvOM6iGViOUqIU09eVfnwKieE6NF4wCOCO', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(19, 'admin@admin.com18', NULL, '$2y$10$E.2qXO/KupMjNJTr/Fqg1.Sw5hnJ3sz6kwEoz8XRqHAFtQ2OsKyyq', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(20, 'admin@admin.com19', NULL, '$2y$10$/QvdA6Oe/WDedFvOc/MomO8b11//ITbKTW5yGkxCazk63Z/Yp6i6m', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(21, 'admin@admin.com20', NULL, '$2y$10$S0/ZBA3v.diKBjPnXaPHE.3ZAI.ZmkzOaAk47S1/Fn4hUyQ2buavy', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(22, 'admin@admin.com21', NULL, '$2y$10$23zEGu8gCsPiMvOKlVB5K.3wRqSvc91gI713vi/HfEYB8G82hhyEK', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(23, 'admin@admin.com22', NULL, '$2y$10$z41NP.rzmDwkERr3h2ia4.m1/w0mKuhAo7UC3HBeGBAB4vCDP2jAa', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(24, 'admin@admin.com23', NULL, '$2y$10$If5NKiIDAT.HiONVLNNdMO3Bre6mYkibH4nSJ0jq9ilC5YnI8QFBO', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(25, 'admin@admin.com24', NULL, '$2y$10$3/Q8AB1F0SXqkbHwr.oUX.nzfDodo6WkQinREcl3qPDe40vy.4XyW', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(26, 'admin@admin.com25', NULL, '$2y$10$duIRnXkoMyzeu71LZWpn9eA0U3KU.6uGOTMUlbtfsTcomRxsMn8sa', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(27, 'admin@admin.com26', NULL, '$2y$10$/VJY.hMP2E8cAyL4ysh91esXTfI3V0rc0yFltzH75sl9gSGQwBgCG', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(28, 'admin@admin.com27', NULL, '$2y$10$LiOJBRmaP985t1zkiu/WMe8IdmhBZHW5LWDKQo4DS5y1Fyx0k/fNi', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(29, 'admin@admin.com28', NULL, '$2y$10$QSeDrwIlUU8UbN.GnycC1OWJfsH4FpW8k0AtSPB1./LJzmIC9Sovu', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(30, 'admin@admin.com29', NULL, '$2y$10$zC6gx456ubuWc/47bYVwN.gYF2HAwUut70DkOqNLzhHsAJr1D3GOe', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(31, 'admin@admin.com30', NULL, '$2y$10$eYMzgVTrW8eYtBkKGO49huq14uApxyoYwVLpWstzkckZ.By7VNNny', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(32, 'admin@admin.com31', NULL, '$2y$10$whf8XSOsovZoQ3YH3b2S3u0cTZmvOX1E68Xvr0zJAd3WkR93rIczi', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(33, 'admin@admin.com32', NULL, '$2y$10$KKDRZqZP5Rag8USJwf2Jge0D81ft7X7sHe5v.lRs21PhBmcJjV7le', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(34, 'admin@admin.com33', NULL, '$2y$10$KoxvmvbdskGLrPQ0gBnzGeLc6poeIQqGCD.8jCTgFYd4ss2RMBmvu', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(35, 'admin@admin.com34', NULL, '$2y$10$gRyGQIC/shT4QM2XxeF2dug/Qm/RYKOaiX97sVCHNx3nvA0TIiPNG', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:35', '2022-03-02 05:42:35'),
(36, 'admin@admin.com35', NULL, '$2y$10$mmDhRO8pOsx/UZfAL9Akm.zWLTbE4htI6WaWtuiuUNoCZ7AYJ/ydW', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:35', '2022-03-02 05:42:35'),
(37, 'admin@admin.com36', NULL, '$2y$10$nnU1JS66JkXpiweLLCE88eTmHja7HXbcwylOyJ3xpMZShtdMmW9aC', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:35', '2022-03-02 05:42:35'),
(38, 'admin@admin.com37', NULL, '$2y$10$28MzYV7LRjOSglWQ0Yc22uyZyqi5FQnolJIBvJNv7QY2RPpPUAaTe', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:35', '2022-03-02 05:42:35'),
(39, 'admin@admin.com38', NULL, '$2y$10$ajp4ekFmrbulSiyFA/Y1rOT9F14jcFSbN2RNFwwGX4LC8V53XwJjy', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(40, 'admin@admin.com39', NULL, '$2y$10$UelE5uDun.13UU07hOFcVe.KDsK5.knu4uZqdNWgDzp8hDZ1rGxUG', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(41, 'admin@admin.com40', NULL, '$2y$10$0/NMlbhyIZ0J/oXr2WCM2unS8zT6gOdUJqaH9uTjNW4dy1a3Qlhca', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(42, 'admin@admin.com41', NULL, '$2y$10$KzIEvG1b6rrVsC3OIIVloeXDLc.Fn12utjzhXNHu1MmyoyUoT.zGC', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(43, 'admin@admin.com42', NULL, '$2y$10$AhwclMLCnCr/VcqothYBOuJxTMIwnybgMDNe05POaceqh/z3laEfq', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(44, 'admin@admin.com43', NULL, '$2y$10$IzM7kU/OzSSftdgC7/46.uy.yGinIAfvj7u3CEQkaxnA6DIhSc8Ly', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(45, 'admin@admin.com44', NULL, '$2y$10$vpqfJj.7PQXKoUocg89N7eB1eEJpXYHVb6kWy6BAdMNDKYfAB.fxm', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(46, 'admin@admin.com45', NULL, '$2y$10$UUeySvU74ZqKuoCQyiNO5.gUL6.w5H5GmFSbEIGrLlsqw1o95uUgi', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:37', '2022-03-02 05:42:37'),
(47, 'admin@admin.com46', NULL, '$2y$10$fddZ1EzhIIXpMTXxT7KUMOGSq11r52rPBz0Wjwh.k/IQEVHS8o.J2', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:37', '2022-03-02 05:42:37'),
(48, 'admin@admin.com47', NULL, '$2y$10$RCLEkyw.66Z6TgMRrmOIHO.tPLaVzPOtxDIQocqFUJmx9htUl7j9K', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:37', '2022-03-02 05:42:37'),
(49, 'admin@admin.com48', NULL, '$2y$10$DxoWLgII7crAlBzslKHakOwsUeCh/fndWRmdL8LaNn.7POJsufRUi', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:37', '2022-03-02 05:42:37'),
(50, 'admin@admin.com49', NULL, '$2y$10$gZBaYLXwBQ.uq2sO/xWUQu44t8AuMOZKH.HqFNDhJn.oqa1vXjRUW', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(51, 'admin@admin.com50', NULL, '$2y$10$PkpL6.SVQ6s5KafFT1wbDeyYpFK6d1AYAGuled8nYErkZo0FIwHWi', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(52, 'admin@admin.com51', NULL, '$2y$10$cC313DgpZy8gOD9Db3FTweyVMt.tiToxhHJ0X4MdzjSBSjRUcN1D6', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(53, 'admin@admin.com52', NULL, '$2y$10$WLOhHTbwuWItI/SIK1m7P.cdmUGX2iusNupsjB7dfpjHw13nXk9S2', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(54, 'admin@admin.com53', NULL, '$2y$10$keL1S4JeY1WpDlTSANYUsOl5mZGCa9pBClHIUPNBbZs4sU2BauDy.', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(55, 'admin@admin.com54', NULL, '$2y$10$rv9v0Rrr5yZCmHqTjKphsOCyceFmLQbsV0IO1icLeLE1s78G904FG', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(56, 'admin@admin.com55', NULL, '$2y$10$jfhwE9nT5f46BDJhwWmEUOtUnWCVB9KXbvAuyfjdEzwo7dlseRIre', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(57, 'admin@admin.com56', NULL, '$2y$10$hpfZO7ETkG5qRKtphVTAE.bXaWClJidAfzAmZsfIKLmCaMzSg4sFq', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:39', '2022-03-02 05:42:39'),
(58, 'admin@admin.com57', NULL, '$2y$10$akU9F43MdtbJlsO6NFxfb.rHaDf265bkchoRrvTThqU6hF.kgtzCi', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:40', '2022-03-02 05:42:40'),
(59, 'admin@admin.com58', NULL, '$2y$10$78SU267qZjO.MSo2.FEjTON11sLcvtB0n6lWH3eO1EVzPA/QmAJ.K', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:40', '2022-03-02 05:42:40'),
(60, 'admin@admin.com59', NULL, '$2y$10$R3wR6Vh6F0IaEb/G3feBCeTJHSXKUYHNMkW2.QyILvZXg978.jX.C', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:41', '2022-03-02 05:42:41'),
(61, 'admin@admin.com60', NULL, '$2y$10$lt55AepuF.tD/ttigOEdyeDVEcUM3fI8sCU6YZVd76VzEq41SAAF2', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:41', '2022-03-02 05:42:41'),
(62, 'admin@admin.com61', NULL, '$2y$10$xAn8tLGKDtmbhjPEsGceZe4I.XfVtGmESduPwk7zdTDjF4oDnsQCa', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:41', '2022-03-02 05:42:41'),
(63, 'admin@admin.com62', NULL, '$2y$10$CtzARYQOFnil9LD08uLJgebahyCKMcKQXYQtM6l/Qgf6siAMV0PjS', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:41', '2022-03-02 05:42:41'),
(64, 'admin@admin.com63', NULL, '$2y$10$mcGKbb7fkuhuMReFmxdT8.HhtTUq8J2c4EL5OoPNFJhTTxe8YZ1hK', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:41', '2022-03-02 05:42:41'),
(65, 'admin@admin.com64', NULL, '$2y$10$HqRLqdgUgT2ml96NCgcX3uyXX4dfP3L/Nj5DSWMvHZEmkpZ9nclKa', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:41', '2022-03-02 05:42:41'),
(66, 'admin@admin.com65', NULL, '$2y$10$Xf0BdAvpmDiVkkGxXwkOm.h59AoAHTNC6ZVrCGNSeBrGIjzKJZ2de', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(67, 'admin@admin.com66', NULL, '$2y$10$nxq/QS0uhVCAGbWjDlaEoOeKkRcTh.gTBFkiJkIGd5aicJCshwcSe', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(68, 'admin@admin.com67', NULL, '$2y$10$BL8eP74tsx/TLWYRz0YMj.4Z.G1GNOtL4xpHh9lPOsulH74KOEpse', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(69, 'admin@admin.com68', NULL, '$2y$10$2bB7ANenSJLV7zJSaKcaXe9qnsqinaEy9Ent/aWUOtIjg6nNLu00e', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(70, 'admin@admin.com69', NULL, '$2y$10$F1du0fg4dA2kNYMlZBA7a.r5J7X0v/1bGzFnkoNQ7BunJkHO7901S', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(71, 'admin@admin.com70', NULL, '$2y$10$HX4AE/Lv3oDyMRgALxk6je2ZijDzA/JgFh2ieWZYXVmacqEPAkLaq', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(72, 'admin@admin.com71', NULL, '$2y$10$4SHzQkdm52h1/PSTqzFaA.wY4.qICt7WdzyjXyYWo4gOrKcTP068.', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(73, 'admin@admin.com72', NULL, '$2y$10$H75JZHqjDjaY3Tv9Cr40ueergUHNvfWfcSVj4wZiZLE9A5YX7V8Ly', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(74, 'admin@admin.com73', NULL, '$2y$10$9Y405HFYaEEt.D7jgOulN.KZ6S7KqZj8GZjcWGrdn17aGNhcgbREi', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(75, 'admin@admin.com74', NULL, '$2y$10$bDL7JZsOrDx2ZuHYrC3lQuAr21mb8w/cOQh5Ij7MxGPBmUXvnhCxS', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(76, 'admin@admin.com75', NULL, '$2y$10$d69D1r4UIiYULLEvi2f8bOjx84FeYhS1DG0kljr1/yqW.96AI9uBy', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(77, 'admin@admin.com76', NULL, '$2y$10$4cj4o.Vc3/4zWQa/QL5I.e/YwmkZ3hn4vy3DD6dURdB0INGKBCz22', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(78, 'admin@admin.com77', NULL, '$2y$10$ke.74rKexWja0yG92pyhOeAwXLTzjDRVqacsjLNQL02shNKdj9e8K', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(79, 'admin@admin.com78', NULL, '$2y$10$p9WmyyHBZUAjN0SE33dqCuARfDeTNkFJOORHwKPehnq00YH5vEm7a', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(80, 'admin@admin.com79', NULL, '$2y$10$O.LRW64VZbN9fq9UhHUX5uuJCdci.iLoegn9I3sF0YGaeRADr0YRi', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(81, 'admin@admin.com80', NULL, '$2y$10$MKu.nfs1LnOsRC0jh7M9YOy7YkMnqGW82KPZDw9CVYFgORiNFmjaC', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(82, 'admin@admin.com81', NULL, '$2y$10$fRzcnCrU5SGjx6bMWcrpf.2uTFK9jElbyYM5.gyhqMC//8ytTg0AK', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(83, 'admin@admin.com82', NULL, '$2y$10$jtVIGzBDwkVUJnUODRplK.vD51wSdUDrW3GLtMLnCuHi2QolvoINK', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(84, 'admin@admin.com83', NULL, '$2y$10$EJ968sp30tV1fBSYCYLDfeYR09PIdBWkmSNp8wARylZ5DXQ5Lo9gi', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(85, 'admin@admin.com84', NULL, '$2y$10$YzGQgjwRswje9AP2zJanp.GFHf7D1uib6QkAR.4trea5bZCs0BpRO', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(86, 'admin@admin.com85', NULL, '$2y$10$m/izR.ZjJyWm/3am4m6J7uDOhazgA3vJS1wADwSHCc5p.mOw.6tiq', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(87, 'admin@admin.com86', NULL, '$2y$10$fCXj9aq8NluFej.7GiBCQ.dducnBA0zC54VeHGT5yYiv6GlbYL86u', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(88, 'admin@admin.com87', NULL, '$2y$10$46HwW45lTzKIvAhtyY1b0ubvd1Yj1.XGznIKckw9bYiMzr13t5Ykq', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(89, 'admin@admin.com88', NULL, '$2y$10$QgZCjuweBcN9kPAaSH6fFuEE6Cs0KzH20fiMQ1iXDK7N08hi7QgFK', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(90, 'admin@admin.com89', NULL, '$2y$10$N3gB2GzcX1HOh5l9Cq2jD.kEt6ZgdrUg51SK65Es5RXsWMfgYcApO', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(91, 'admin@admin.com90', NULL, '$2y$10$U2qt31VMcoNeeuuTWP9YaO4luLohgqrmyKxOPU3iSLglhsy1hOYSK', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(92, 'admin@admin.com91', NULL, '$2y$10$DYV2Ze0AMz2c7A2T6oswYea9B/82uyx/6U04fHT6NHG/tccKkcDtC', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(93, 'admin@admin.com92', NULL, '$2y$10$teq1DGZiwdLN/.KNXEbV.O8KvhrTRPMOx2SfB5OzVhi90xZxCog0i', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(94, 'admin@admin.com93', NULL, '$2y$10$r8LewprxrS9x0vQFy/2rt.0thHOqlE8/rls.sCcSrwtJcxqTIoATK', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(95, 'admin@admin.com94', NULL, '$2y$10$9RDtwoyUWtTvCz1lBED8VexP5iU3ergbyM7LAvgeUBq8C.3X8mnRG', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(96, 'admin@admin.com95', NULL, '$2y$10$lo3xX/EbYhcUF70FIOXCvO248RCVbRWykRAHKQtYZoiMrNYJwPbt2', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(97, 'admin@admin.com96', NULL, '$2y$10$LqTFVVld5Az7NfaKfDLejO0VMZQ.VAMV6PHZRhPokAHF4aONXm4xO', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(98, 'admin@admin.com97', NULL, '$2y$10$iRKqLsvvEkmL1.88jKEGjecypVJreLkbXGX6Qi2y4HOwL5QRpxesG', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(99, 'admin@admin.com98', NULL, '$2y$10$wJVfQNsojNmrpTykKIDke.gQFsKRWMjcYoJT5e2RMrrvWeS4bcbhC', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(100, 'admin@admin.com99', NULL, '$2y$10$K/P.OflaoB7eWvJW61xou.lxmDYvLTiI8pZqLKasgG8Q9/quX41rS', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE `user_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `avatar` blob DEFAULT NULL,
  `code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` smallint(6) NOT NULL DEFAULT 0,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `first_name`, `last_name`, `phone`, `category_id`, `level_id`, `avatar`, `code`, `vat`, `state`, `city`, `country`, `sex`, `address`, `status`, `sequence`, `created_user_id`, `updated_user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:31', '2022-03-02 05:42:31'),
(5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(7, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(10, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(11, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(12, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(13, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(14, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(15, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:32', '2022-03-02 05:42:32'),
(16, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(17, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(18, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(19, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(20, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(21, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(22, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(23, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(24, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(25, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:33', '2022-03-02 05:42:33'),
(26, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(27, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(28, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(29, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(30, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(31, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(32, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(33, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(34, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:34', '2022-03-02 05:42:34'),
(35, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:35', '2022-03-02 05:42:35'),
(36, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:35', '2022-03-02 05:42:35'),
(37, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:35', '2022-03-02 05:42:35'),
(38, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:35', '2022-03-02 05:42:35'),
(39, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(40, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(41, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(42, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(43, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(44, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(45, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:36', '2022-03-02 05:42:36'),
(46, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:37', '2022-03-02 05:42:37'),
(47, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:37', '2022-03-02 05:42:37'),
(48, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:37', '2022-03-02 05:42:37'),
(49, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:37', '2022-03-02 05:42:37'),
(50, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(51, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(52, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(53, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(54, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(55, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:38', '2022-03-02 05:42:38'),
(56, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:39', '2022-03-02 05:42:39'),
(57, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:39', '2022-03-02 05:42:39'),
(58, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:40', '2022-03-02 05:42:40'),
(59, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:40', '2022-03-02 05:42:40'),
(60, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:41', '2022-03-02 05:42:41'),
(61, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:41', '2022-03-02 05:42:41'),
(62, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:41', '2022-03-02 05:42:41'),
(63, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:41', '2022-03-02 05:42:41'),
(64, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:41', '2022-03-02 05:42:41'),
(65, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:41', '2022-03-02 05:42:41'),
(66, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(67, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(68, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(69, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(70, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(71, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(72, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(73, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:42', '2022-03-02 05:42:42'),
(74, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(75, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(76, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(77, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(78, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(79, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(80, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(81, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(82, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(83, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:43', '2022-03-02 05:42:43'),
(84, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(85, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(86, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(87, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(88, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(89, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(90, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:44', '2022-03-02 05:42:44'),
(91, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(92, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(93, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(94, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(95, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(96, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(97, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(98, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(99, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45'),
(100, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 05:42:45', '2022-03-02 05:42:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `classes_users`
--
ALTER TABLE `classes_users`
  ADD PRIMARY KEY (`class_user_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `contexts`
--
ALTER TABLE `contexts`
  ADD PRIMARY KEY (`context_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

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
-- Indexes for table `crawler_works_categories`
--
ALTER TABLE `crawler_works_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `crawler_works_categories_jobs`
--
ALTER TABLE `crawler_works_categories_jobs`
  ADD PRIMARY KEY (`category_job_id`);

--
-- Indexes for table `crawler_works_jobs`
--
ALTER TABLE `crawler_works_jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`);

--
-- Indexes for table `internship`
--
ALTER TABLE `internship`
  ADD PRIMARY KEY (`internship_id`);

--
-- Indexes for table `internship_diary`
--
ALTER TABLE `internship_diary`
  ADD PRIMARY KEY (`internship_diary_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pexcels`
--
ALTER TABLE `pexcels`
  ADD PRIMARY KEY (`pexcel_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `profile_field`
--
ALTER TABLE `profile_field`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_field_profile_id_profile_field_type_id_unique` (`profile_id`,`profile_field_type_id`),
  ADD KEY `profile_field_profile_field_type_id_foreign` (`profile_field_type_id`),
  ADD KEY `profile_field_profile_id_index` (`profile_id`);

--
-- Indexes for table `profile_field_type`
--
ALTER TABLE `profile_field_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_stackoverflow_answers`
--
ALTER TABLE `site_stackoverflow_answers`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `site_stackoverflow_comments`
--
ALTER TABLE `site_stackoverflow_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `site_stackoverflow_questions`
--
ALTER TABLE `site_stackoverflow_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `site_stackoverflow_tags`
--
ALTER TABLE `site_stackoverflow_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `site_stackoverflow_tags_questions`
--
ALTER TABLE `site_stackoverflow_tags_questions`
  ADD PRIMARY KEY (`tag_question_id`);

--
-- Indexes for table `slideshows`
--
ALTER TABLE `slideshows`
  ADD PRIMARY KEY (`slideshow_id`);

--
-- Indexes for table `slideshow_styles`
--
ALTER TABLE `slideshow_styles`
  ADD PRIMARY KEY (`style_id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profile_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `classes_users`
--
ALTER TABLE `classes_users`
  MODIFY `class_user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `contexts`
--
ALTER TABLE `contexts`
  MODIFY `context_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `crawler_patterns`
--
ALTER TABLE `crawler_patterns`
  MODIFY `pattern_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `crawler_regular_expressions`
--
ALTER TABLE `crawler_regular_expressions`
  MODIFY `regular_expression_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `crawler_sites`
--
ALTER TABLE `crawler_sites`
  MODIFY `site_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `crawler_works_categories`
--
ALTER TABLE `crawler_works_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `crawler_works_categories_jobs`
--
ALTER TABLE `crawler_works_categories_jobs`
  MODIFY `category_job_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `crawler_works_jobs`
--
ALTER TABLE `crawler_works_jobs`
  MODIFY `job_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `internship`
--
ALTER TABLE `internship`
  MODIFY `internship_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `internship_diary`
--
ALTER TABLE `internship_diary`
  MODIFY `internship_diary_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `pexcels`
--
ALTER TABLE `pexcels`
  MODIFY `pexcel_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `profile_field`
--
ALTER TABLE `profile_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_field_type`
--
ALTER TABLE `profile_field_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_stackoverflow_answers`
--
ALTER TABLE `site_stackoverflow_answers`
  MODIFY `answer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `site_stackoverflow_comments`
--
ALTER TABLE `site_stackoverflow_comments`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `site_stackoverflow_questions`
--
ALTER TABLE `site_stackoverflow_questions`
  MODIFY `question_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `site_stackoverflow_tags`
--
ALTER TABLE `site_stackoverflow_tags`
  MODIFY `tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `site_stackoverflow_tags_questions`
--
ALTER TABLE `site_stackoverflow_tags_questions`
  MODIFY `tag_question_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `slideshows`
--
ALTER TABLE `slideshows`
  MODIFY `slideshow_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `slideshow_styles`
--
ALTER TABLE `slideshow_styles`
  MODIFY `style_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key';

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'User id', AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profile_field`
--
ALTER TABLE `profile_field`
  ADD CONSTRAINT `profile_field_profile_field_type_id_foreign` FOREIGN KEY (`profile_field_type_id`) REFERENCES `profile_field_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profile_field_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `user_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `user_profile_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
