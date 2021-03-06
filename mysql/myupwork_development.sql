-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: myupwork_development
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2020-04-22 15:07:49.809132','2020-04-22 15:07:49.809132'),('schema_sha1','af6a3427194dc87cda784aedd4d1e0f3434d06d2','2020-04-22 15:07:50.186718','2020-04-22 15:07:50.186718');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_streams`
--

DROP TABLE IF EXISTS `business_streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_streams` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `business_stream_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_streams`
--

LOCK TABLES `business_streams` WRITE;
/*!40000 ALTER TABLE `business_streams` DISABLE KEYS */;
/*!40000 ALTER TABLE `business_streams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `category_group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_category_group_id` (`category_group_id`),
  CONSTRAINT `fk_rails_564eeef2fe` FOREIGN KEY (`category_group_id`) REFERENCES `category_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_groups`
--

DROP TABLE IF EXISTS `category_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_group_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_groups`
--

LOCK TABLES `category_groups` WRITE;
/*!40000 ALTER TABLE `category_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `profile_description` text,
  `establishment_date` date DEFAULT NULL,
  `company_website_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `business_stream_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_companies_on_business_stream_id` (`business_stream_id`),
  CONSTRAINT `fk_rails_036123791d` FOREIGN KEY (`business_stream_id`) REFERENCES `business_streams` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_images`
--

DROP TABLE IF EXISTS `company_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company_image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_company_images_on_company_id` (`company_id`),
  CONSTRAINT `fk_rails_6dcf524eba` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_images`
--

LOCK TABLES `company_images` WRITE;
/*!40000 ALTER TABLE `company_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_details`
--

DROP TABLE IF EXISTS `education_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `institute_university_name` varchar(255) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `cgpa` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `seeker_profile_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_education_details_on_seeker_profile_id` (`seeker_profile_id`),
  CONSTRAINT `fk_rails_83dae34213` FOREIGN KEY (`seeker_profile_id`) REFERENCES `seeker_profiles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_details`
--

LOCK TABLES `education_details` WRITE;
/*!40000 ALTER TABLE `education_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `education_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience_details`
--

DROP TABLE IF EXISTS `experience_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_current_job` tinyint(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `job_location_city` varchar(255) DEFAULT NULL,
  `job_location_state` varchar(255) DEFAULT NULL,
  `job_location_country` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `seeker_profile_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_experience_details_on_seeker_profile_id` (`seeker_profile_id`),
  CONSTRAINT `fk_rails_88777614ec` FOREIGN KEY (`seeker_profile_id`) REFERENCES `seeker_profiles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_details`
--

LOCK TABLES `experience_details` WRITE;
/*!40000 ALTER TABLE `experience_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_locations`
--

DROP TABLE IF EXISTS `job_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_locations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `street_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_locations`
--

LOCK TABLES `job_locations` WRITE;
/*!40000 ALTER TABLE `job_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_post_activities`
--

DROP TABLE IF EXISTS `job_post_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_post_activities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apply_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `job_post_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_job_post_activities_on_job_post_id` (`job_post_id`),
  KEY `index_job_post_activities_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_8e6d99b791` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_f366406e22` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_post_activities`
--

LOCK TABLES `job_post_activities` WRITE;
/*!40000 ALTER TABLE `job_post_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_post_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_post_skill_sets`
--

DROP TABLE IF EXISTS `job_post_skill_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_post_skill_sets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `skil_level` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `skill_set_id` bigint(20) DEFAULT NULL,
  `job_post_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_job_post_skill_sets_on_job_post_id` (`job_post_id`),
  KEY `index_job_post_skill_sets_on_skill_set_id` (`skill_set_id`),
  CONSTRAINT `fk_rails_1907922d8e` FOREIGN KEY (`skill_set_id`) REFERENCES `skill_sets` (`id`),
  CONSTRAINT `fk_rails_33fbf8152b` FOREIGN KEY (`job_post_id`) REFERENCES `job_posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_post_skill_sets`
--

LOCK TABLES `job_post_skill_sets` WRITE;
/*!40000 ALTER TABLE `job_post_skill_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_post_skill_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_posts`
--

DROP TABLE IF EXISTS `job_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_company_name_hidden` tinyint(1) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `job_description` text,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `job_location_id` bigint(20) DEFAULT NULL,
  `job_type_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_job_posts_on_category_id` (`category_id`),
  KEY `index_job_posts_on_company_id` (`company_id`),
  KEY `index_job_posts_on_job_location_id` (`job_location_id`),
  KEY `index_job_posts_on_job_type_id` (`job_type_id`),
  KEY `index_job_posts_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_2195c80c12` FOREIGN KEY (`job_location_id`) REFERENCES `job_locations` (`id`),
  CONSTRAINT `fk_rails_3858cef379` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_4fc6c084c5` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_rails_73ce73f3d3` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`),
  CONSTRAINT `fk_rails_8242dd9497` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_posts`
--

LOCK TABLES `job_posts` WRITE;
/*!40000 ALTER TABLE `job_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_types`
--

DROP TABLE IF EXISTS `job_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_types`
--

LOCK TABLES `job_types` WRITE;
/*!40000 ALTER TABLE `job_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20191210021306');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seeker_profiles`
--

DROP TABLE IF EXISTS `seeker_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seeker_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `current_salary` float DEFAULT NULL,
  `is_annually_monthly` tinyint(1) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seeker_profiles_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_2eeeefd390` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seeker_profiles`
--

LOCK TABLES `seeker_profiles` WRITE;
/*!40000 ALTER TABLE `seeker_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `seeker_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seeker_skill_sets`
--

DROP TABLE IF EXISTS `seeker_skill_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seeker_skill_sets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `skill_level` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `seeker_profile_id` bigint(20) DEFAULT NULL,
  `skill_set_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seeker_skill_sets_on_seeker_profile_id` (`seeker_profile_id`),
  KEY `index_seeker_skill_sets_on_skill_set_id` (`skill_set_id`),
  CONSTRAINT `fk_rails_89066233f0` FOREIGN KEY (`seeker_profile_id`) REFERENCES `seeker_profiles` (`id`),
  CONSTRAINT `fk_rails_c2099a3924` FOREIGN KEY (`skill_set_id`) REFERENCES `skill_sets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seeker_skill_sets`
--

LOCK TABLES `seeker_skill_sets` WRITE;
/*!40000 ALTER TABLE `seeker_skill_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `seeker_skill_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_sets`
--

DROP TABLE IF EXISTS `skill_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_sets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `skill_set_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_sets`
--

LOCK TABLES `skill_sets` WRITE;
/*!40000 ALTER TABLE `skill_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logs`
--

DROP TABLE IF EXISTS `user_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `last_login_date` date DEFAULT NULL,
  `last_job_apply_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_logs_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_903088cca6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logs`
--

LOCK TABLES `user_logs` WRITE;
/*!40000 ALTER TABLE `user_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_type_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `sms_notification_active` tinyint(1) DEFAULT NULL,
  `email_notification_acive` tinyint(1) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  KEY `index_users_on_user_type_id` (`user_type_id`),
  CONSTRAINT `fk_rails_a2f1461231` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:10:06
