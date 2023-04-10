-- MariaDB dump 10.19  Distrib 10.4.19-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: project_helpdesk
-- ------------------------------------------------------
-- Server version	10.4.19-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Category name',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes_users`
--

DROP TABLE IF EXISTS `classes_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes_users` (
  `class_user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `course_id` int(11) NOT NULL COMMENT 'Course ID',
  `user_id` int(11) NOT NULL COMMENT 'User ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`class_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes_users`
--

LOCK TABLES `classes_users` WRITE;
/*!40000 ALTER TABLE `classes_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `classes_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classstudents`
--

DROP TABLE IF EXISTS `classstudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classstudents` (
  `ClassStudents_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `ClassStudents_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Student name',
  `ClassStudents_teacher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Teacher name',
  `ClassStudents_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'class name',
  `ClassStudents_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Address student',
  `ClassStudents_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Student image',
  `ClassStudents_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Student description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ClassStudents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classstudents`
--

LOCK TABLES `classstudents` WRITE;
/*!40000 ALTER TABLE `classstudents` DISABLE KEYS */;
/*!40000 ALTER TABLE `classstudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contexts`
--

DROP TABLE IF EXISTS `contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contexts` (
  `context_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`context_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contexts`
--

LOCK TABLES `contexts` WRITE;
/*!40000 ALTER TABLE `contexts` DISABLE KEYS */;
INSERT INTO `contexts` VALUES (1,'User level','user/level','ab7e417e2dddc5e5240b586d454e',NULL,NULL,99,NULL,1,1,NULL,'2023-04-07 06:39:45','2023-04-07 06:39:45'),(2,'User department','user/department','ab7e417e2dddc5e5240b586d454f',NULL,NULL,99,NULL,1,1,NULL,'2023-04-07 06:39:45','2023-04-07 06:39:45'),(3,'Admin posts','admin/posts','ab7e417e2dddc5240b586d454e',NULL,NULL,99,NULL,1,1,NULL,'2023-04-07 06:39:45','2023-04-07 06:39:45'),(4,'Admin slideshows','admin/slideshows','ab7e417e2dddc5e5240b586d454f',NULL,NULL,99,NULL,1,1,NULL,'2023-04-07 06:39:45','2023-04-07 06:39:45');
/*!40000 ALTER TABLE `contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `course_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crawler_patterns`
--

DROP TABLE IF EXISTS `crawler_patterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crawler_patterns` (
  `pattern_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pattern_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crawler_patterns`
--

LOCK TABLES `crawler_patterns` WRITE;
/*!40000 ALTER TABLE `crawler_patterns` DISABLE KEYS */;
/*!40000 ALTER TABLE `crawler_patterns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crawler_regular_expressions`
--

DROP TABLE IF EXISTS `crawler_regular_expressions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crawler_regular_expressions` (
  `regular_expression_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `pattern_id` int(11) NOT NULL COMMENT 'Pattern ID',
  `regular_expression_value` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Regular expression',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`regular_expression_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crawler_regular_expressions`
--

LOCK TABLES `crawler_regular_expressions` WRITE;
/*!40000 ALTER TABLE `crawler_regular_expressions` DISABLE KEYS */;
/*!40000 ALTER TABLE `crawler_regular_expressions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crawler_sites`
--

DROP TABLE IF EXISTS `crawler_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crawler_sites` (
  `site_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crawler_sites`
--

LOCK TABLES `crawler_sites` WRITE;
/*!40000 ALTER TABLE `crawler_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `crawler_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crawler_works_categories`
--

DROP TABLE IF EXISTS `crawler_works_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crawler_works_categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crawler_works_categories`
--

LOCK TABLES `crawler_works_categories` WRITE;
/*!40000 ALTER TABLE `crawler_works_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `crawler_works_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crawler_works_categories_jobs`
--

DROP TABLE IF EXISTS `crawler_works_categories_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crawler_works_categories_jobs` (
  `category_job_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `job_id` int(11) NOT NULL COMMENT 'Job ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crawler_works_categories_jobs`
--

LOCK TABLES `crawler_works_categories_jobs` WRITE;
/*!40000 ALTER TABLE `crawler_works_categories_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `crawler_works_categories_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crawler_works_jobs`
--

DROP TABLE IF EXISTS `crawler_works_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crawler_works_jobs` (
  `job_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crawler_works_jobs`
--

LOCK TABLES `crawler_works_jobs` WRITE;
/*!40000 ALTER TABLE `crawler_works_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `crawler_works_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'superadmin','{\"_superadmin\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(2,'editor','{\"_user-editor\":1,\"_group-editor\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(3,'base admin','{\"_user-editor\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(4,'group_test_0','{\"permission_test_0\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(5,'group_test_1','{\"permission_test_1\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(6,'group_test_2','{\"permission_test_2\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(7,'group_test_3','{\"permission_test_3\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(8,'group_test_4','{\"permission_test_4\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(9,'group_test_5','{\"permission_test_5\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(10,'group_test_6','{\"permission_test_6\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(11,'group_test_7','{\"permission_test_7\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(12,'group_test_8','{\"permission_test_8\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(13,'group_test_9','{\"permission_test_9\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(14,'group_test_10','{\"permission_test_10\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(15,'group_test_11','{\"permission_test_11\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(16,'group_test_12','{\"permission_test_12\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(17,'group_test_13','{\"permission_test_13\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(18,'group_test_14','{\"permission_test_14\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(19,'group_test_15','{\"permission_test_15\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(20,'group_test_16','{\"permission_test_16\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(21,'group_test_17','{\"permission_test_17\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(22,'group_test_18','{\"permission_test_18\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(23,'group_test_19','{\"permission_test_19\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(24,'group_test_20','{\"permission_test_20\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(25,'group_test_21','{\"permission_test_21\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(26,'group_test_22','{\"permission_test_22\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(27,'group_test_23','{\"permission_test_23\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(28,'group_test_24','{\"permission_test_24\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(29,'group_test_25','{\"permission_test_25\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(30,'group_test_26','{\"permission_test_26\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(31,'group_test_27','{\"permission_test_27\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(32,'group_test_28','{\"permission_test_28\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(33,'group_test_29','{\"permission_test_29\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(34,'group_test_30','{\"permission_test_30\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(35,'group_test_31','{\"permission_test_31\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(36,'group_test_32','{\"permission_test_32\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(37,'group_test_33','{\"permission_test_33\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(38,'group_test_34','{\"permission_test_34\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(39,'group_test_35','{\"permission_test_35\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(40,'group_test_36','{\"permission_test_36\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(41,'group_test_37','{\"permission_test_37\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(42,'group_test_38','{\"permission_test_38\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(43,'group_test_39','{\"permission_test_39\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(44,'group_test_40','{\"permission_test_40\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(45,'group_test_41','{\"permission_test_41\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(46,'group_test_42','{\"permission_test_42\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(47,'group_test_43','{\"permission_test_43\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(48,'group_test_44','{\"permission_test_44\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(49,'group_test_45','{\"permission_test_45\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(50,'group_test_46','{\"permission_test_46\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(51,'group_test_47','{\"permission_test_47\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(52,'group_test_48','{\"permission_test_48\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(53,'group_test_49','{\"permission_test_49\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(54,'group_test_50','{\"permission_test_50\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(55,'group_test_51','{\"permission_test_51\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(56,'group_test_52','{\"permission_test_52\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(57,'group_test_53','{\"permission_test_53\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(58,'group_test_54','{\"permission_test_54\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(59,'group_test_55','{\"permission_test_55\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(60,'group_test_56','{\"permission_test_56\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(61,'group_test_57','{\"permission_test_57\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(62,'group_test_58','{\"permission_test_58\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(63,'group_test_59','{\"permission_test_59\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(64,'group_test_60','{\"permission_test_60\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(65,'group_test_61','{\"permission_test_61\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(66,'group_test_62','{\"permission_test_62\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(67,'group_test_63','{\"permission_test_63\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(68,'group_test_64','{\"permission_test_64\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(69,'group_test_65','{\"permission_test_65\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(70,'group_test_66','{\"permission_test_66\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(71,'group_test_67','{\"permission_test_67\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(72,'group_test_68','{\"permission_test_68\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(73,'group_test_69','{\"permission_test_69\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(74,'group_test_70','{\"permission_test_70\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(75,'group_test_71','{\"permission_test_71\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(76,'group_test_72','{\"permission_test_72\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(77,'group_test_73','{\"permission_test_73\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(78,'group_test_74','{\"permission_test_74\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(79,'group_test_75','{\"permission_test_75\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(80,'group_test_76','{\"permission_test_76\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(81,'group_test_77','{\"permission_test_77\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(82,'group_test_78','{\"permission_test_78\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(83,'group_test_79','{\"permission_test_79\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(84,'group_test_80','{\"permission_test_80\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(85,'group_test_81','{\"permission_test_81\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(86,'group_test_82','{\"permission_test_82\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(87,'group_test_83','{\"permission_test_83\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(88,'group_test_84','{\"permission_test_84\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(89,'group_test_85','{\"permission_test_85\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(90,'group_test_86','{\"permission_test_86\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(91,'group_test_87','{\"permission_test_87\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(92,'group_test_88','{\"permission_test_88\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(93,'group_test_89','{\"permission_test_89\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(94,'group_test_90','{\"permission_test_90\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(95,'group_test_91','{\"permission_test_91\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(96,'group_test_92','{\"permission_test_92\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(97,'group_test_93','{\"permission_test_93\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(98,'group_test_94','{\"permission_test_94\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(99,'group_test_95','{\"permission_test_95\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(100,'group_test_96','{\"permission_test_96\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(101,'group_test_97','{\"permission_test_97\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(102,'group_test_98','{\"permission_test_98\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(103,'group_test_99','{\"permission_test_99\":1}',0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk`
--

DROP TABLE IF EXISTS `helpdesk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk` (
  `helpdesk_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `helpdesk_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Helpdesk name',
  `helpdesk_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Helpdesk slug',
  `helpdesk_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Helpdesk start date',
  `helpdesk_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Helpdesk end date',
  `helpdesk_files` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Helpdesk files',
  `helpdesk_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Helpdesk description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`helpdesk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk`
--

LOCK TABLES `helpdesk` WRITE;
/*!40000 ALTER TABLE `helpdesk` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internship`
--

DROP TABLE IF EXISTS `internship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internship` (
  `internship_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`internship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internship`
--

LOCK TABLES `internship` WRITE;
/*!40000 ALTER TABLE `internship` DISABLE KEYS */;
/*!40000 ALTER TABLE `internship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internship_diary`
--

DROP TABLE IF EXISTS `internship_diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internship_diary` (
  `internship_diary_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`internship_diary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internship_diary`
--

LOCK TABLES `internship_diary` WRITE;
/*!40000 ALTER TABLE `internship_diary` DISABLE KEYS */;
/*!40000 ALTER TABLE `internship_diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021_01_03_102927_create_category_table',1),(2,'2021_01_03_102927_create_classes_users_table',1),(3,'2021_01_03_102927_create_classstudents_table',1),(4,'2021_01_03_102927_create_company_table',1),(5,'2021_01_03_102927_create_course_table',1),(6,'2021_01_03_102927_create_helpdesk_table',1),(7,'2021_01_03_102927_create_internship_diary_table',1),(8,'2021_01_03_102927_create_internship_table',1),(9,'2021_01_03_102927_create_myservice_table',1),(10,'2021_01_03_102927_create_request_table',1),(11,'2021_01_03_102927_create_service_table',1),(12,'2021_01_03_102927_create_students_table',1),(13,'2021_02_23_084351_create_categories_table',1),(14,'2021_02_23_084351_create_crawler_patterns_table',1),(15,'2021_02_23_084351_create_crawler_regular_expressions_table',1),(16,'2021_02_23_084351_create_crawler_sites_table',1),(17,'2021_02_23_084351_create_crawler_works_categories_jobs_table',1),(18,'2021_02_23_084351_create_crawler_works_categories_table',1),(19,'2021_02_23_084351_create_crawler_works_jobs_table',1),(20,'2021_02_23_084351_create_posts_table',1),(21,'2021_02_23_084351_create_site_stackoverflow_answers_table',1),(22,'2021_02_23_084351_create_site_stackoverflow_comments_table',1),(23,'2021_02_23_084351_create_site_stackoverflow_questions_table',1),(24,'2021_02_23_084351_create_site_stackoverflow_tags_questions_table',1),(25,'2021_02_23_084351_create_site_stackoverflow_tags_table',1),(26,'2021_02_23_084351_create_slideshow_styles_table',1),(27,'2021_02_23_084351_create_slideshows_table',1),(28,'2021_02_23_084421_create_contexts_table',1),(29,'2021_02_24_095545_create_users_table',1),(30,'2021_02_24_095623_create_user_groups_table',1),(31,'2021_02_24_095637_create_groups_table',1),(32,'2021_02_24_100000_create_password_resets_table',1),(33,'2021_02_24_122145_create_profile_field_types',1),(34,'2021_02_24_122150_create_user_profile_table',1),(35,'2021_02_24_122155_create_profile_field',1),(36,'2021_02_24_160516_create_permission_table',1),(37,'2021_02_24_225988_migration_cartalyst_sentry_install_throttle',1),(38,'2021_09_11_084351_create_pexcels_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myservice`
--

DROP TABLE IF EXISTS `myservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myservice` (
  `service_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `request_id` int(11) NOT NULL COMMENT 'Request ID',
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Service name',
  `service_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Service slug',
  `service_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Service start date',
  `service_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Service end date',
  `service_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Service image',
  `service_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Service description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myservice`
--

LOCK TABLES `myservice` WRITE;
/*!40000 ALTER TABLE `myservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `myservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,NULL,'superadmin','_superadmin',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(2,NULL,'user editor','_user-editor',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(3,NULL,'group editor','_group-editor',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(4,NULL,'permission editor','_permission-editor',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(5,NULL,'profile type editor','_profile-editor',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(6,NULL,'Permission test 0','_permission_test_0',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(7,NULL,'Permission test 1','_permission_test_1',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(8,NULL,'Permission test 2','_permission_test_2',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(9,NULL,'Permission test 3','_permission_test_3',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(10,NULL,'Permission test 4','_permission_test_4',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(11,NULL,'Permission test 5','_permission_test_5',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(12,NULL,'Permission test 6','_permission_test_6',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(13,NULL,'Permission test 7','_permission_test_7',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(14,NULL,'Permission test 8','_permission_test_8',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(15,NULL,'Permission test 9','_permission_test_9',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(16,NULL,'Permission test 10','_permission_test_10',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(17,NULL,'Permission test 11','_permission_test_11',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(18,NULL,'Permission test 12','_permission_test_12',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(19,NULL,'Permission test 13','_permission_test_13',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(20,NULL,'Permission test 14','_permission_test_14',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(21,NULL,'Permission test 15','_permission_test_15',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(22,NULL,'Permission test 16','_permission_test_16',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(23,NULL,'Permission test 17','_permission_test_17',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(24,NULL,'Permission test 18','_permission_test_18',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(25,NULL,'Permission test 19','_permission_test_19',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(26,NULL,'Permission test 20','_permission_test_20',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(27,NULL,'Permission test 21','_permission_test_21',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(28,NULL,'Permission test 22','_permission_test_22',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(29,NULL,'Permission test 23','_permission_test_23',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(30,NULL,'Permission test 24','_permission_test_24',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(31,NULL,'Permission test 25','_permission_test_25',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(32,NULL,'Permission test 26','_permission_test_26',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(33,NULL,'Permission test 27','_permission_test_27',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(34,NULL,'Permission test 28','_permission_test_28',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(35,NULL,'Permission test 29','_permission_test_29',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(36,NULL,'Permission test 30','_permission_test_30',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(37,NULL,'Permission test 31','_permission_test_31',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(38,NULL,'Permission test 32','_permission_test_32',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(39,NULL,'Permission test 33','_permission_test_33',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(40,NULL,'Permission test 34','_permission_test_34',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(41,NULL,'Permission test 35','_permission_test_35',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(42,NULL,'Permission test 36','_permission_test_36',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(43,NULL,'Permission test 37','_permission_test_37',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(44,NULL,'Permission test 38','_permission_test_38',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(45,NULL,'Permission test 39','_permission_test_39',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(46,NULL,'Permission test 40','_permission_test_40',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(47,NULL,'Permission test 41','_permission_test_41',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(48,NULL,'Permission test 42','_permission_test_42',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(49,NULL,'Permission test 43','_permission_test_43',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(50,NULL,'Permission test 44','_permission_test_44',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(51,NULL,'Permission test 45','_permission_test_45',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(52,NULL,'Permission test 46','_permission_test_46',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(53,NULL,'Permission test 47','_permission_test_47',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(54,NULL,'Permission test 48','_permission_test_48',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(55,NULL,'Permission test 49','_permission_test_49',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(56,NULL,'Permission test 50','_permission_test_50',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(57,NULL,'Permission test 51','_permission_test_51',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(58,NULL,'Permission test 52','_permission_test_52',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(59,NULL,'Permission test 53','_permission_test_53',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(60,NULL,'Permission test 54','_permission_test_54',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(61,NULL,'Permission test 55','_permission_test_55',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(62,NULL,'Permission test 56','_permission_test_56',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(63,NULL,'Permission test 57','_permission_test_57',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(64,NULL,'Permission test 58','_permission_test_58',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(65,NULL,'Permission test 59','_permission_test_59',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(66,NULL,'Permission test 60','_permission_test_60',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(67,NULL,'Permission test 61','_permission_test_61',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(68,NULL,'Permission test 62','_permission_test_62',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(69,NULL,'Permission test 63','_permission_test_63',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(70,NULL,'Permission test 64','_permission_test_64',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(71,NULL,'Permission test 65','_permission_test_65',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(72,NULL,'Permission test 66','_permission_test_66',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(73,NULL,'Permission test 67','_permission_test_67',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(74,NULL,'Permission test 68','_permission_test_68',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(75,NULL,'Permission test 69','_permission_test_69',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(76,NULL,'Permission test 70','_permission_test_70',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(77,NULL,'Permission test 71','_permission_test_71',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(78,NULL,'Permission test 72','_permission_test_72',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(79,NULL,'Permission test 73','_permission_test_73',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(80,NULL,'Permission test 74','_permission_test_74',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(81,NULL,'Permission test 75','_permission_test_75',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(82,NULL,'Permission test 76','_permission_test_76',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(83,NULL,'Permission test 77','_permission_test_77',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(84,NULL,'Permission test 78','_permission_test_78',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(85,NULL,'Permission test 79','_permission_test_79',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(86,NULL,'Permission test 80','_permission_test_80',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(87,NULL,'Permission test 81','_permission_test_81',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(88,NULL,'Permission test 82','_permission_test_82',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(89,NULL,'Permission test 83','_permission_test_83',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(90,NULL,'Permission test 84','_permission_test_84',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(91,NULL,'Permission test 85','_permission_test_85',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(92,NULL,'Permission test 86','_permission_test_86',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(93,NULL,'Permission test 87','_permission_test_87',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(94,NULL,'Permission test 88','_permission_test_88',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(95,NULL,'Permission test 89','_permission_test_89',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(96,NULL,'Permission test 90','_permission_test_90',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(97,NULL,'Permission test 91','_permission_test_91',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(98,NULL,'Permission test 92','_permission_test_92',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(99,NULL,'Permission test 93','_permission_test_93',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(100,NULL,'Permission test 94','_permission_test_94',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(101,NULL,'Permission test 95','_permission_test_95',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(102,NULL,'Permission test 96','_permission_test_96',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(103,NULL,'Permission test 97','_permission_test_97',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(104,NULL,'Permission test 98','_permission_test_98',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35'),(105,NULL,'Permission test 99','_permission_test_99',0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:35','2023-04-07 06:39:35');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pexcels`
--

DROP TABLE IF EXISTS `pexcels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pexcels` (
  `pexcel_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pexcel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pexcels`
--

LOCK TABLES `pexcels` WRITE;
/*!40000 ALTER TABLE `pexcels` DISABLE KEYS */;
/*!40000 ALTER TABLE `pexcels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_field`
--

DROP TABLE IF EXISTS `profile_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL,
  `profile_field_type_id` int(10) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profile_field_profile_id_profile_field_type_id_unique` (`profile_id`,`profile_field_type_id`),
  KEY `profile_field_profile_field_type_id_foreign` (`profile_field_type_id`),
  KEY `profile_field_profile_id_index` (`profile_id`),
  CONSTRAINT `profile_field_profile_field_type_id_foreign` FOREIGN KEY (`profile_field_type_id`) REFERENCES `profile_field_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `profile_field_profile_id_foreign` FOREIGN KEY (`profile_id`) REFERENCES `user_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_field`
--

LOCK TABLES `profile_field` WRITE;
/*!40000 ALTER TABLE `profile_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_field_type`
--

DROP TABLE IF EXISTS `profile_field_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_field_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_field_type`
--

LOCK TABLES `profile_field_type` WRITE;
/*!40000 ALTER TABLE `profile_field_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_field_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `request_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `request_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Helpdesk name',
  `request_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Helpdesk slug',
  `request_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Helpdesk start date',
  `request_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Helpdesk end date',
  `request_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Helpdesk image',
  `request_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Helpdesk description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `service_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `request_id` int(11) NOT NULL COMMENT 'Request ID',
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Service name',
  `service_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Service slug',
  `service_start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Service start date',
  `service_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Service end date',
  `service_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Service image',
  `service_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Service description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_stackoverflow_answers`
--

DROP TABLE IF EXISTS `site_stackoverflow_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_stackoverflow_answers` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `question_id` int(11) NOT NULL COMMENT 'Question ID',
  `answer_description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Description',
  `answer_url_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'URL user',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_stackoverflow_answers`
--

LOCK TABLES `site_stackoverflow_answers` WRITE;
/*!40000 ALTER TABLE `site_stackoverflow_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_stackoverflow_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_stackoverflow_comments`
--

DROP TABLE IF EXISTS `site_stackoverflow_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_stackoverflow_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_stackoverflow_comments`
--

LOCK TABLES `site_stackoverflow_comments` WRITE;
/*!40000 ALTER TABLE `site_stackoverflow_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_stackoverflow_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_stackoverflow_questions`
--

DROP TABLE IF EXISTS `site_stackoverflow_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_stackoverflow_questions` (
  `question_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_stackoverflow_questions`
--

LOCK TABLES `site_stackoverflow_questions` WRITE;
/*!40000 ALTER TABLE `site_stackoverflow_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_stackoverflow_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_stackoverflow_tags`
--

DROP TABLE IF EXISTS `site_stackoverflow_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_stackoverflow_tags` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_stackoverflow_tags`
--

LOCK TABLES `site_stackoverflow_tags` WRITE;
/*!40000 ALTER TABLE `site_stackoverflow_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_stackoverflow_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_stackoverflow_tags_questions`
--

DROP TABLE IF EXISTS `site_stackoverflow_tags_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_stackoverflow_tags_questions` (
  `tag_question_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `tag_id` int(11) NOT NULL COMMENT 'Tag ID',
  `question_id` int(11) NOT NULL COMMENT 'Question ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tag_question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_stackoverflow_tags_questions`
--

LOCK TABLES `site_stackoverflow_tags_questions` WRITE;
/*!40000 ALTER TABLE `site_stackoverflow_tags_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `site_stackoverflow_tags_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slideshow_styles`
--

DROP TABLE IF EXISTS `slideshow_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slideshow_styles` (
  `style_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`style_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slideshow_styles`
--

LOCK TABLES `slideshow_styles` WRITE;
/*!40000 ALTER TABLE `slideshow_styles` DISABLE KEYS */;
/*!40000 ALTER TABLE `slideshow_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slideshows`
--

DROP TABLE IF EXISTS `slideshows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slideshows` (
  `slideshow_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`slideshow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slideshows`
--

LOCK TABLES `slideshows` WRITE;
/*!40000 ALTER TABLE `slideshows` DISABLE KEYS */;
/*!40000 ALTER TABLE `slideshows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `student_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Student name',
  `student_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Address student',
  `student_dob_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Student birthday',
  `student_enroll_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Student Enroll date',
  `student_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Student image',
  `student_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Student description',
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throttle`
--

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_profile_user_id_index` (`user_id`),
  CONSTRAINT `user_profile_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(4,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(5,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(6,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(7,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(8,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(9,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(10,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(11,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(12,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(13,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(14,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(15,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(16,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(17,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(18,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(19,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(20,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(21,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(22,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(23,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(24,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(25,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(26,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(27,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(28,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(29,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(30,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(31,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(32,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(33,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(34,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(35,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(36,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(37,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(38,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(39,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(40,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(41,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(42,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(43,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(44,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(45,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(46,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(47,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(48,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(49,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(50,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(51,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(52,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(53,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(54,54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(55,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(56,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(57,57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(58,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(59,59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(60,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(61,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(62,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(63,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(64,64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(65,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(66,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(67,67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(68,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(69,69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(70,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(71,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(72,72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(73,73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(74,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(75,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(76,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(77,77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(78,78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(79,79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(80,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(81,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(82,82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(83,83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(84,84,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(85,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(86,86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(87,87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(88,88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(89,89,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(90,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(91,91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(92,92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(93,93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(94,94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(95,95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(96,96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(97,97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:45','2023-04-07 06:39:45'),(98,98,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:45','2023-04-07 06:39:45'),(99,99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:45','2023-04-07 06:39:45'),(100,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:45','2023-04-07 06:39:45');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User id',
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@admin.com','admin','$2y$10$qIorGXapLsR7Ng8E6qophuaNzA1WJg/YLx3OxHeI40kGUr4vLUFvq',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(2,'admin@admin.com1',NULL,'$2y$10$nmbzXWuecwVjoje1E6Wbue/jDphkN5/q7icyGDmEjZhg08s.Jdts2',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(3,'admin@admin.com2',NULL,'$2y$10$sIgid3jc4r4.v07qcIrpOuHOriTjnlP7yF/M4YhGK9sHPwXmM2ALy',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(4,'admin@admin.com3',NULL,'$2y$10$vE/w0LDVXPsQXd/JU2e8e.uS.HNmSZgzua20ZdmFDEcDHm9MOMT/G',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(5,'admin@admin.com4',NULL,'$2y$10$FdlbmCjPVc7ezCaBa2BxCOm7zfHirnJpHF7xqkDFhl.iUrwQSvNga',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(6,'admin@admin.com5',NULL,'$2y$10$f3kjCZsohtmFuyjxm/MFKOx/JAb/MEfMlxzjgMAcaM6RmdtxlRaOC',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(7,'admin@admin.com6',NULL,'$2y$10$CSpRmkNaNdiG4NG/MM8DFeS0smZ7P7dcOpIMFAYNsCTNMLqtXAkpa',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(8,'admin@admin.com7',NULL,'$2y$10$7vOM5lK6ZFtgbWtBjDHQXeBmBdovyIIjs3EAOs9tC.A3JWqqBAsIi',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:36','2023-04-07 06:39:36'),(9,'admin@admin.com8',NULL,'$2y$10$v9viiVtK2wZOPyoE0WAh6OnVucfv/06uIak2B3lttlR/wZXpzAI/W',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(10,'admin@admin.com9',NULL,'$2y$10$uW/3RyMHYTKUyu.UIwCKeOF07UlKILa9toJmZiv.AS/n9ndaOs9Mu',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(11,'admin@admin.com10',NULL,'$2y$10$znZG3OtmYAfvTlrhd/rg7u3uf.NEmr8M045z84rUMzZ5sOykUP9Pm',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(12,'admin@admin.com11',NULL,'$2y$10$nziKkG16wFILJ0DFsdP/NeBLH.9V/O/jH8hS1uzhmTrSTOdgBFUoa',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(13,'admin@admin.com12',NULL,'$2y$10$6tvspsKjXnsYawLdS1jI5uhcNnGB4j1lC0DyHMLa4WBqxhMFXnv5m',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(14,'admin@admin.com13',NULL,'$2y$10$lXbB5kkyG8XJBY9.NGIHTeIUUQYQrkRpnrQUMbkR6PrLCk0l6Hvtq',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(15,'admin@admin.com14',NULL,'$2y$10$qbLpEp5G291auxfltGD8DunHdos6WrlLnSq/6dCcWMrazOOUKUvN2',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(16,'admin@admin.com15',NULL,'$2y$10$JbTuyN7zTvl6Gm9phhOPmujQc1kMqnEfMG7DudrbWuIAAOYPh8Or6',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(17,'admin@admin.com16',NULL,'$2y$10$KrPcSn9l54K/WWyLqy2IBuGKBQWJpNM581/igximbQB4h3alTX4My',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(18,'admin@admin.com17',NULL,'$2y$10$4RnOntSo/VEOx1d1NCm67ewsc27rXipViEzVOxNORwXN.kZwHM3mi',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(19,'admin@admin.com18',NULL,'$2y$10$u4I00jdAhEcXuU5p/6U33O8LEh/h.K.nLjySCe05rNqkAkMGX5UOy',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:37','2023-04-07 06:39:37'),(20,'admin@admin.com19',NULL,'$2y$10$UrszEKXZCr5EbrqnaVQKCuvESGQq85DdAHTFDSWijYWHkyW4sRo6C',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(21,'admin@admin.com20',NULL,'$2y$10$TCM.g404MxYDLFwDHbEbU.Ro.mOl97D2uW/BWxzGiM4/v6Qh0w/C.',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(22,'admin@admin.com21',NULL,'$2y$10$HdCWmtBVoNhWJ6n8K/QN.erDB1i1Yy7f95V/NOl2c9HDcuQHBWtES',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(23,'admin@admin.com22',NULL,'$2y$10$3qJMQVX5Pgjc4wEc5B/LRuj/w33NUrLCGBJT4NC9yAAQws7kk2vW.',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(24,'admin@admin.com23',NULL,'$2y$10$wUrl5mSRv7d18hEfFRdoRuvCW8Bv874edrpScw/8w3EG0h7Omeu7i',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(25,'admin@admin.com24',NULL,'$2y$10$wxZbHWgzmUmnJlX9/EIul.jOyvcuj5mwbD2bl.AqWj28biNh2dyym',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(26,'admin@admin.com25',NULL,'$2y$10$S23q4wRt8O1TbTUnEhRcjeamQmhOwoNdJpcQiSc6x2ygIyQdo97/O',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(27,'admin@admin.com26',NULL,'$2y$10$R.yjX7zIU29OGCdEQnd13.VSanuDpff7HdEjibIAlz0SZJhzwaTrm',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(28,'admin@admin.com27',NULL,'$2y$10$8e5ALBkhmChWbINZHIV1BeLCLpIcts50jLnyfRRqK7adUsw68LaCO',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(29,'admin@admin.com28',NULL,'$2y$10$ig8il9UA.6d5smCoI7Kgse3TCCsqo30krlGC6i3ZWHutxLJLbC1Oy',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(30,'admin@admin.com29',NULL,'$2y$10$LrHOT60xfjSpdUwnDT4LLOfSZFqOJIUQdHr9KU05bhYE3.qM.Tnca',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:38','2023-04-07 06:39:38'),(31,'admin@admin.com30',NULL,'$2y$10$VF9DFCMv4JmvboLXsG7Ps.MawJSr2Zwe4M1Fhr.6xuy1Gx0rdGs6i',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(32,'admin@admin.com31',NULL,'$2y$10$B7zHim7f0I0OQaCShkey8.iasFCw0QpdNqPFekR3vR1DIpGlD8vm2',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(33,'admin@admin.com32',NULL,'$2y$10$XS9ACwe88y2DF5t2zlHX8OM0QKjHh1viHbW49.pFnff3l1cfzcPMu',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(34,'admin@admin.com33',NULL,'$2y$10$4E/TXHI.m8VqChZLcbSedOIa7txqiN4FkaAURQqjhTf75QqdIfl2m',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(35,'admin@admin.com34',NULL,'$2y$10$zbi.mVlqulHolBO7xqX8HOHE49veQ.s31kH61L9MkZpyb6RrNqUtu',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(36,'admin@admin.com35',NULL,'$2y$10$McJMwXZCHz5ETeNt7Ghi6..RfPc4Bk/Gz6mccQeGhKrdb5j/KmBs6',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(37,'admin@admin.com36',NULL,'$2y$10$wJtlzxZt1xeRqGuXFmb/Au/s4YwIsZCWmZr4APjiL9YerKj/tHs3q',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(38,'admin@admin.com37',NULL,'$2y$10$wva03G1yTycVs51Bcg0VkuY2KO/wfCbOhA0487qCCCR5spr.CXl7O',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(39,'admin@admin.com38',NULL,'$2y$10$kxg.rPXfd80Qz2DZ5T482uehqXm8A4/5aerLqumCsB9ryQmc.6x2m',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(40,'admin@admin.com39',NULL,'$2y$10$NamprZeL/avjFJXdBCR/m.eP6R/QaRQ6LKWld36uDcoFcq7otwqnq',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:39','2023-04-07 06:39:39'),(41,'admin@admin.com40',NULL,'$2y$10$c7eq7BDl0COrMAY0eQ/0C.UpxVj/RgmJ7wJ4Y43MXFVMXfR.8CK4K',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(42,'admin@admin.com41',NULL,'$2y$10$jfGshYmWYJDO17Q0a179x.X6Kgo1sPMVItRV31rh5pqKEH.LxVgYy',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(43,'admin@admin.com42',NULL,'$2y$10$3dfuFNsQnK0siyKb9y3/0.JElm7RVfHINu8BsM1GRJ5aBJNA0bO02',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(44,'admin@admin.com43',NULL,'$2y$10$O5RMRr.GhbRZq1b1Iy4oIO7/aWJxa0hyUkjLyOTKPvI/NGukefy.G',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(45,'admin@admin.com44',NULL,'$2y$10$z6TLkuSqcsITK/kyzwgYNOeAFzt84C1yNZW2bOOWVkFsWFzi/dJIW',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(46,'admin@admin.com45',NULL,'$2y$10$tN12oonEwZv7kaKIicJYW.KnuzO1Zc3ZmSonoIFb/9GPG2NsmvOm.',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(47,'admin@admin.com46',NULL,'$2y$10$Y0vXFFZrPBPCzxw4RtYgGOCCL6PSpbmp2ewwuS90ZZP75BCH6v9Ka',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(48,'admin@admin.com47',NULL,'$2y$10$m4Yh.B3pfwvuSp4FhpbRQuwcIptGN9hZcONgzuCWwgBQ/VCszO2Z2',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(49,'admin@admin.com48',NULL,'$2y$10$ys5mSfiO254BQmso9NWNeOD2SPLXz.LfcUgVC5AlkcRSwrVCvfrHy',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(50,'admin@admin.com49',NULL,'$2y$10$JwxtVz0iv4nKM6.InTC55umipmckSMArbRJ6Lc1xP4IVT0t5MvPnS',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:40','2023-04-07 06:39:40'),(51,'admin@admin.com50',NULL,'$2y$10$fLXDlD.4umRC56Y7g716NeadCpnOIjt4gw66xreRhv608q9.eFHCC',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(52,'admin@admin.com51',NULL,'$2y$10$ewsuTd3EpTn7l4Pwa62.1uP1LNYt.mmoqQ7aAbuMIIXoyiMirCTbe',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(53,'admin@admin.com52',NULL,'$2y$10$rjgZAZbmVwX.RFxp7A/MXOVAzvrYgj7qRLK3cIAzsfYwespGTmZKq',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(54,'admin@admin.com53',NULL,'$2y$10$BorZiv5IfYf9NBAEvsc3ue0wdIKv4fRluqEE1xnngCClfiYpaiDfi',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(55,'admin@admin.com54',NULL,'$2y$10$OMLWgQsW2S57Rf5HxgORO.3SLI1cSOOGttAKtwSpLY1Ig3rtlSm3.',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(56,'admin@admin.com55',NULL,'$2y$10$q6RwjkDMAr7xt61k3d/PIucETb15e9lWS0UF6Xeb/uXxXQm6moMBK',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(57,'admin@admin.com56',NULL,'$2y$10$DHc7bu0FhEqx9iYmPXzRW.uv/4rXZxgSvmraGd9OhZ4UnJbOlQNqu',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(58,'admin@admin.com57',NULL,'$2y$10$KuJbV9rHanOHHwmf.8nj6eg.qo5G71TGvRqPfGoDox.05DAH9g7fW',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(59,'admin@admin.com58',NULL,'$2y$10$hlnNDB69sIU1fMGa6S9dm.wZ6.tu0hNUiJlDchBOUcLnLTksTAdQS',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(60,'admin@admin.com59',NULL,'$2y$10$d1tzrPQd90WHxBIddt7uJOOGzIo4wAGPRqAu0MWMHWMoK3Rbqw67m',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(61,'admin@admin.com60',NULL,'$2y$10$twhzJcXV9LbCClcoBO50fu95W3HJuHMm7HEoBv./hNS9aZ9skFWKe',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:41','2023-04-07 06:39:41'),(62,'admin@admin.com61',NULL,'$2y$10$0zg0Xa5JWd85X39cJyOqyeut6t2gXENtQTyY32fVcOBauPBce881q',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(63,'admin@admin.com62',NULL,'$2y$10$sX/EjDXwPNYzyEuWWXyh8uCq6bMLGfH/f9uoeaO8OQNaXp8Ki4P5O',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(64,'admin@admin.com63',NULL,'$2y$10$CWSAZ94AcwQL/m99tIrXiOb01WPMbdeeuUj/oP6wZleHEtjt/xZtG',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(65,'admin@admin.com64',NULL,'$2y$10$JP3NvZir.cnfWPfn2UsiCena.qNMKA3Inr9dZ6dg7Tm/hWVgOvtkO',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(66,'admin@admin.com65',NULL,'$2y$10$9sL.6nMADoj/lICBfjS0j..dIzql/A260ntwUmsP9EzXImdd2tyia',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(67,'admin@admin.com66',NULL,'$2y$10$8W27pflWKci.BdHdEpgmUOwNrjpT5ankHgchI0uVxnADJLUFNpbPC',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(68,'admin@admin.com67',NULL,'$2y$10$E0MWCQO/7/pnOORfvHUwBuwoUDqpD4KTC2nfJ.KsL06WkjYcOunhG',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(69,'admin@admin.com68',NULL,'$2y$10$j.QGI.mZFUJdfe0A4pzJiekxSGAEDtbASQutHATaZ1AAN3OKLJSCy',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(70,'admin@admin.com69',NULL,'$2y$10$Zle2lJhKsz8RKuvAtfpXXO8ERgcDcr3ex.qqguQ4kv4etZO6.6fki',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(71,'admin@admin.com70',NULL,'$2y$10$PDGez9E6AnGITQptfmRuAOM4xatvPGAWqwtl0uScn6eFSovHmClwG',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(72,'admin@admin.com71',NULL,'$2y$10$CwRIh4F6b1SLfagfhBjNIueaUtOOvEdVcBjThL9.PpMK4r5iIqhMC',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:42','2023-04-07 06:39:42'),(73,'admin@admin.com72',NULL,'$2y$10$OZyAPPG91EIm4Dc5qBStl.BH0142GanrlpFFvUa39f1KIh4d0djmO',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(74,'admin@admin.com73',NULL,'$2y$10$utvhUv6RKLFjXzkgRNb9Xe6QLFYpy7IQXgEimlDesL1mVris6JFpW',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(75,'admin@admin.com74',NULL,'$2y$10$BObABr3adlHYpEOVCWKnX.JEPyQ8y6h/0FIs1Rey5I2x9OpHXD6XG',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(76,'admin@admin.com75',NULL,'$2y$10$GdtjU7yPPPK7jk8QWZXQWelGkoeOpkfqUFcgMi2vLvKAL62bQzP8u',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(77,'admin@admin.com76',NULL,'$2y$10$fMonRd0urgQ9sGpCF8R3uORihlpviCNk.phymZUg0qSy/zmVxpZ8e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(78,'admin@admin.com77',NULL,'$2y$10$Pv1heucMMflH0N8RJtEnU.Lf60JZrZ34MKatwKG.XbNZ0jwvsEDRK',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(79,'admin@admin.com78',NULL,'$2y$10$LW0taoA/1gG9G11u9NJT6e.c35px3H/KGRJzo5VU9PTdYK4BQYlVu',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(80,'admin@admin.com79',NULL,'$2y$10$Lb6XZKP1awGC/4mVwvTrV.DsCQCKJJPxejkF7aTfqE/tuWLYymms2',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(81,'admin@admin.com80',NULL,'$2y$10$sFKsCNMDYYn3V6dEbNnXAOI2/dVRIKmZS98HCe4a7Bpcg6qgiTmgq',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(82,'admin@admin.com81',NULL,'$2y$10$I7pQ/7bfgVR2aD75gqRq4Oab8/yL1h0Qy5YFBWxh/ynFJwaQL2YaC',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(83,'admin@admin.com82',NULL,'$2y$10$wCIkQr5ddta07I/TDnSWhOzLsuX1PtA6QOQvsdziEh5EouSVK./NK',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(84,'admin@admin.com83',NULL,'$2y$10$3SJ0SD8bYpRgK5eLl.E5W.w3l31Qa4gR3rVjpvkid0x7RvylZJYc6',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:43','2023-04-07 06:39:43'),(85,'admin@admin.com84',NULL,'$2y$10$b/Xvvf4pEMSwJkXqzsao2OOp/itvV6auKk.Qxe0dMFwIfG0RLDdt2',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(86,'admin@admin.com85',NULL,'$2y$10$1Xm3c7vkcxWnMVCzHbEfDe/gzLJIfGTsNto8Id5z1CrbU/95VL99G',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(87,'admin@admin.com86',NULL,'$2y$10$o/z.WfAQkcZxNW1kOk3L2Os3mVOhVmgc0ovYq2LQAxCKZThQz/u1W',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(88,'admin@admin.com87',NULL,'$2y$10$EHdGkOAsGJRVQcw34FynlOCGlCOPd2r3N5HNxvyoKcBSKvAzrPigi',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(89,'admin@admin.com88',NULL,'$2y$10$j0B1O.QMG0cLHCoD51YIX..Ehfqgk21VWj0sXspFiTtmv2AwuC69K',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(90,'admin@admin.com89',NULL,'$2y$10$EJS2YTaKwFW91qQ/7ClAAeKRKy8coi3f2VABM02C7IMMyUq86NA2C',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(91,'admin@admin.com90',NULL,'$2y$10$9OOwgnSej/F3u8MQWkd9H.JC3W8n2lXt8q3MaM.uDoULKxyDtq4M6',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(92,'admin@admin.com91',NULL,'$2y$10$O8S.7CFaBixuf.vSqiNLd.PBo6KaGs2speAJfcic9kye5vLgKVd2i',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(93,'admin@admin.com92',NULL,'$2y$10$r4ADcpApzOiEit/IRjXZ7uIPh1vV1HtRPV9FgPv.H5Kz4cv/GUc/.',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(94,'admin@admin.com93',NULL,'$2y$10$T9S0uc3sotqppU2.TG1RYuY76My2qZ8rCp6oQ9Eq31.Vob1DQfsBG',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(95,'admin@admin.com94',NULL,'$2y$10$5gv/C5pNw5AEWpc8hNzCi.BVao/8Efj41QzkwncR1B9AM5BXxdJ9S',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(96,'admin@admin.com95',NULL,'$2y$10$5U.tvp0SQH5967xa3aRzQ.JL5O3Yp0EswF1wQjYnD2dINdWmOunbG',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:44','2023-04-07 06:39:44'),(97,'admin@admin.com96',NULL,'$2y$10$Ff72nqX7gwlPSNeUK2NVXO6hAXC9ZXyFoItP6Re8m08qMcpQxfUaq',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:45','2023-04-07 06:39:45'),(98,'admin@admin.com97',NULL,'$2y$10$nvsE93c/8lvkrZlSeK7/BO/bxuHsv5NmX8oGiQvQnrebq3tigZ.Qm',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:45','2023-04-07 06:39:45'),(99,'admin@admin.com98',NULL,'$2y$10$/uBhZsV2V5k.0v41D4ZKN.epUpJb3niomjw9foIbJEU5kUFOqOTQ.',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:45','2023-04-07 06:39:45'),(100,'admin@admin.com99',NULL,'$2y$10$jQ7s/64992aQ4E9aT.0xFu9ZXhZAPdZpm7taKnMP67ENxFp/75TFG',NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2023-04-07 06:39:45','2023-04-07 06:39:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1: show, 0: hide',
  `sequence` int(11) DEFAULT NULL COMMENT 'Input order',
  `created_user_id` int(11) DEFAULT NULL COMMENT 'Created by User Id',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'Updated by User Id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-07 13:40:51
