-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: development
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
-- Table structure for table `account_users`
--

DROP TABLE IF EXISTS `account_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_users`
--

LOCK TABLES `account_users` WRITE;
/*!40000 ALTER TABLE `account_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `org_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `street_address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `street_address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `province_or_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `postal_or_zip_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `profession` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `phone_business` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `phone_mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `time_zone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `auto_dst_adjustment` bit(1) DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `currency_symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `admin_first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `admin_last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `admin_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `admin_billing_rate_per_hour` double DEFAULT NULL,
  `admin_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `admin_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `trackable_id` int(11) DEFAULT NULL,
  `trackable_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `owner_id` int(11) DEFAULT NULL,
  `owner_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `parameters` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `recipient_id` int(11) DEFAULT NULL,
  `recipient_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_read` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_activities_on_trackable_id_and_trackable_type` (`trackable_id`,`trackable_type`),
  KEY `index_activities_on_recipient_id_and_recipient_type` (`recipient_id`,`recipient_type`),
  KEY `index_activities_on_owner_id_and_owner_type` (`owner_id`,`owner_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL,
  `access_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `expires_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_api_keys_on_access_token` (`access_token`),
  KEY `index_api_keys_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2020-04-06 03:20:50','2020-04-06 03:20:50'),('schema_sha1','b02d973aa4fc769c4f4e9d4dc0b294024f4f7657','2020-04-06 03:20:50','2020-04-06 03:20:50');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
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
-- Table structure for table `client_contacts`
--

DROP TABLE IF EXISTS `client_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_contacts` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `home_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `mobile_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_contacts`
--

LOCK TABLES `client_contacts` WRITE;
/*!40000 ALTER TABLE `client_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `organization_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `home_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `mobile_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `send_invoice_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `address_street1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `address_street2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `province_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `postal_zip_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `industry` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `company_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `business_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `internal_notes` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `available_credit` decimal(8,2) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `billing_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `vat_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `encrypted_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `last_sign_in_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_clients_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_clients_on_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `contact_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `contact_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `street_address_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `street_address_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `province_or_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `postal_or_zipcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `fax_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `company_tag_line` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `base_currency_id` int(11) DEFAULT NULL,
  `color_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `abbreviation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id`)
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
-- Table structure for table `companies_users`
--

DROP TABLE IF EXISTS `companies_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_users` (
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_users`
--

LOCK TABLES `companies_users` WRITE;
/*!40000 ALTER TABLE `companies_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_email_templates`
--

DROP TABLE IF EXISTS `company_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_email_templates` (
  `id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `parent_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_email_templates`
--

LOCK TABLES `company_email_templates` WRITE;
/*!40000 ALTER TABLE `company_email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_entities`
--

DROP TABLE IF EXISTS `company_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_entities` (
  `id` int(11) NOT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `entity_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `parent_id` int(11) DEFAULT NULL,
  `parent_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_entities`
--

LOCK TABLES `company_entities` WRITE;
/*!40000 ALTER TABLE `company_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_payments`
--

DROP TABLE IF EXISTS `credit_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_payments` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `credit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_payments`
--

LOCK TABLES `credit_payments` WRITE;
/*!40000 ALTER TABLE `credit_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `handler` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `last_error` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `queue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `recurring_profile_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delayed_jobs_priority` (`priority`,`run_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `template_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `email_from` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `torder` int(11) DEFAULT NULL,
  `send_email` bit(1) DEFAULT NULL,
  `no_of_days` int(11) DEFAULT NULL,
  `is_late_payment_reminder` bit(1) DEFAULT NULL,
  `cc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `bcc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimates`
--

DROP TABLE IF EXISTS `estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estimates` (
  `id` int(11) NOT NULL,
  `estimate_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `estimate_date` datetime DEFAULT NULL,
  `po_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `discount_percentage` decimal(10,2) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `terms` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `notes` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `sub_total` decimal(10,2) DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `estimate_total` decimal(10,2) DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `discount_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `company_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `estimate_tax_amount` decimal(10,2) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimates`
--

LOCK TABLES `estimates` WRITE;
/*!40000 ALTER TABLE `estimates` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_categories`
--

LOCK TABLES `expense_categories` WRITE;
/*!40000 ALTER TABLE `expense_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `expense_date` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `client_id` int(11) DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` time DEFAULT NULL,
  `tax_1` int(11) DEFAULT NULL,
  `tax_2` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `introductions`
--

DROP TABLE IF EXISTS `introductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `introductions` (
  `id` int(11) NOT NULL,
  `dashboard` bit(1) DEFAULT NULL,
  `invoice` bit(1) DEFAULT NULL,
  `new_invoice` bit(1) DEFAULT NULL,
  `estimate` bit(1) DEFAULT NULL,
  `new_estimate` bit(1) DEFAULT NULL,
  `payment` bit(1) DEFAULT NULL,
  `new_payment` bit(1) DEFAULT NULL,
  `client` bit(1) DEFAULT NULL,
  `new_client` bit(1) DEFAULT NULL,
  `item` bit(1) DEFAULT NULL,
  `new_item` bit(1) DEFAULT NULL,
  `tax` bit(1) DEFAULT NULL,
  `new_tax` bit(1) DEFAULT NULL,
  `report` bit(1) DEFAULT NULL,
  `setting` bit(1) DEFAULT NULL,
  `invoice_table` bit(1) DEFAULT NULL,
  `estimate_table` bit(1) DEFAULT NULL,
  `payment_table` bit(1) DEFAULT NULL,
  `client_table` bit(1) DEFAULT NULL,
  `item_table` bit(1) DEFAULT NULL,
  `tax_table` bit(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_introductions_on_user_id` (`user_id`),
  KEY `index_introductions_on_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `introductions`
--

LOCK TABLES `introductions` WRITE;
/*!40000 ALTER TABLE `introductions` DISABLE KEYS */;
/*!40000 ALTER TABLE `introductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_line_items`
--

DROP TABLE IF EXISTS `invoice_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_line_items` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `item_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `item_unit_cost` decimal(10,2) DEFAULT NULL,
  `item_quantity` decimal(10,2) DEFAULT NULL,
  `tax_1` int(11) DEFAULT NULL,
  `tax_2` int(11) DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `actual_price` decimal(10,2) DEFAULT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_line_items`
--

LOCK TABLES `invoice_line_items` WRITE;
/*!40000 ALTER TABLE `invoice_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_tasks`
--

DROP TABLE IF EXISTS `invoice_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `rate` int(11) DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_tasks`
--

LOCK TABLES `invoice_tasks` WRITE;
/*!40000 ALTER TABLE `invoice_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `invoice_date` datetime DEFAULT NULL,
  `po_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `discount_percentage` decimal(15,3) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `terms` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `notes` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `sub_total` decimal(15,3) DEFAULT NULL,
  `discount_amount` decimal(15,3) DEFAULT NULL,
  `tax_amount` decimal(15,3) DEFAULT NULL,
  `invoice_total` decimal(15,3) DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `payment_terms_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `last_invoice_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `discount_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `company_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `invoice_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `tax_id` int(11) DEFAULT NULL,
  `invoice_tax_amount` decimal(10,2) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `base_currency_id` int(11) DEFAULT NULL,
  `conversion_rate` double DEFAULT NULL,
  `base_currency_equivalent_total` double DEFAULT NULL,
  `is_compact` bit(1) DEFAULT NULL,
  `batch_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `batch_id` int(11) DEFAULT NULL,
  `is_batched` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `item_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `unit_cost` decimal(10,2) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `tax_1` int(11) DEFAULT NULL,
  `tax_2` int(11) DEFAULT NULL,
  `track_inventory` bit(1) DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `actual_price` decimal(10,2) DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line_item_taxes`
--

DROP TABLE IF EXISTS `line_item_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line_item_taxes` (
  `id` int(11) NOT NULL,
  `invoice_line_item_id` int(11) DEFAULT NULL,
  `percentage` double DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `tax_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line_item_taxes`
--

LOCK TABLES `line_item_taxes` WRITE;
/*!40000 ALTER TABLE `line_item_taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `line_item_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `date` date DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_configs`
--

DROP TABLE IF EXISTS `mail_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_configs` (
  `id` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `port` int(11) DEFAULT NULL,
  `authentication` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `enable_starttls_auto` bit(1) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `from` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `openssl_verify_mode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `tls` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_mail_configs_on_company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_configs`
--

LOCK TABLES `mail_configs` WRITE;
/*!40000 ALTER TABLE `mail_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_grants`
--

DROP TABLE IF EXISTS `oauth_access_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_grants` (
  `id` int(11) NOT NULL,
  `resource_owner_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `expires_in` int(11) NOT NULL,
  `redirect_uri` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `revoked_at` datetime DEFAULT NULL,
  `scopes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_oauth_access_grants_on_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_grants`
--

LOCK TABLES `oauth_access_grants` WRITE;
/*!40000 ALTER TABLE `oauth_access_grants` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` int(11) NOT NULL,
  `resource_owner_id` int(11) DEFAULT NULL,
  `application_id` int(11) DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `refresh_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `expires_in` int(11) DEFAULT NULL,
  `revoked_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `scopes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_oauth_access_tokens_on_token` (`token`),
  UNIQUE KEY `index_oauth_access_tokens_on_refresh_token` (`refresh_token`),
  KEY `index_oauth_access_tokens_on_resource_owner_id` (`resource_owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_applications`
--

DROP TABLE IF EXISTS `oauth_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_applications` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `redirect_uri` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `scopes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_oauth_applications_on_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_applications`
--

LOCK TABLES `oauth_applications` WRITE;
/*!40000 ALTER TABLE `oauth_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_terms`
--

DROP TABLE IF EXISTS `payment_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_terms` (
  `id` int(11) NOT NULL,
  `number_of_days` int(11) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_terms`
--

LOCK TABLES `payment_terms` WRITE;
/*!40000 ALTER TABLE `payment_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `payment_amount` decimal(15,3) DEFAULT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `payment_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `payment_date` date DEFAULT NULL,
  `notes` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `send_payment_notification` bit(1) DEFAULT NULL,
  `paid_full` bit(1) DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `credit_applied` decimal(15,3) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `can_create` bit(1) DEFAULT NULL,
  `can_update` bit(1) DEFAULT NULL,
  `can_delete` bit(1) DEFAULT NULL,
  `can_read` bit(1) DEFAULT NULL,
  `entity_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_permissions_on_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_tasks`
--

DROP TABLE IF EXISTS `project_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `rate` double DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `hours` double DEFAULT NULL,
  `spent_time` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_tasks`
--

LOCK TABLES `project_tasks` WRITE;
/*!40000 ALTER TABLE `project_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `client_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `billing_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `total_hours` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurring_profile_line_items`
--

DROP TABLE IF EXISTS `recurring_profile_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurring_profile_line_items` (
  `id` int(11) NOT NULL,
  `recurring_profile_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `item_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `item_unit_cost` decimal(10,2) DEFAULT NULL,
  `item_quantity` decimal(10,2) DEFAULT NULL,
  `tax_1` int(11) DEFAULT NULL,
  `tax_2` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurring_profile_line_items`
--

LOCK TABLES `recurring_profile_line_items` WRITE;
/*!40000 ALTER TABLE `recurring_profile_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurring_profile_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurring_profiles`
--

DROP TABLE IF EXISTS `recurring_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurring_profiles` (
  `id` int(11) NOT NULL,
  `first_invoice_date` datetime DEFAULT NULL,
  `po_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `discount_percentage` decimal(10,2) DEFAULT NULL,
  `frequency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `occurrences` int(11) DEFAULT NULL,
  `prorate` bit(1) DEFAULT NULL,
  `prorate_for` decimal(10,2) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `notes` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `sub_total` decimal(10,2) DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `discount_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `invoice_total` decimal(10,2) DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `payment_terms_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `last_invoice_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `last_sent_date` datetime DEFAULT NULL,
  `sent_invoices` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurring_profiles`
--

LOCK TABLES `recurring_profiles` WRITE;
/*!40000 ALTER TABLE `recurring_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurring_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurring_schedules`
--

DROP TABLE IF EXISTS `recurring_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurring_schedules` (
  `id` int(11) NOT NULL,
  `next_invoice_date` datetime DEFAULT NULL,
  `frequency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `occurrences` int(11) DEFAULT NULL,
  `delivery_option` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `invoice_id` int(11) DEFAULT NULL,
  `generated_count` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enable_recurring` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurring_schedules`
--

LOCK TABLES `recurring_schedules` WRITE;
/*!40000 ALTER TABLE `recurring_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurring_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `resource_id` int(11) DEFAULT NULL,
  `resource_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_roles_on_name` (`name`),
  KEY `index_roles_on_name_and_resource_type_and_resource_id` (`name`,`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20200130070538');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sent_emails`
--

DROP TABLE IF EXISTS `sent_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sent_emails` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `sender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `recipient` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `notification_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sent_emails`
--

LOCK TABLES `sent_emails` WRITE;
/*!40000 ALTER TABLE `sent_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `sent_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `session_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `var` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `thing_id` int(11) DEFAULT NULL,
  `thing_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_settings_on_thing_type_and_thing_id_and_var` (`thing_type`,`thing_id`,`var`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sqlite_sequence` (
  `name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `seq` longtext CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `rate` double DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` time DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffs`
--

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `billable` bit(1) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` time DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `percentage` decimal(10,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_members` (
  `id` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `rate` double DEFAULT NULL,
  `archive_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `archived_at` datetime DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `last_sign_in_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `confirmation_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `password_salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `current_company` int(11) DEFAULT NULL,
  `authentication_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  `have_all_companies_access` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  KEY `index_users_on_role_id` (`role_id`),
  KEY `index_users_on_authentication_token` (`authentication_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL,
  `item_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `item_id` int(11) NOT NULL,
  `event` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `whodunnit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `object` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_versions_on_item_type_and_item_id` (`item_type`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:04:30
