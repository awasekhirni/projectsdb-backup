-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: billingprojectdb
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
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `account_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `org_name` varchar(0) DEFAULT NULL,
  `country` varchar(0) DEFAULT NULL,
  `street_address_1` varchar(0) DEFAULT NULL,
  `street_address_2` varchar(0) DEFAULT NULL,
  `city` varchar(0) DEFAULT NULL,
  `province_or_state` varchar(0) DEFAULT NULL,
  `postal_or_zip_code` varchar(0) DEFAULT NULL,
  `profession` varchar(0) DEFAULT NULL,
  `phone_business` varchar(0) DEFAULT NULL,
  `phone_mobile` varchar(0) DEFAULT NULL,
  `fax` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `time_zone` varchar(0) DEFAULT NULL,
  `auto_dst_adjustment` varchar(0) DEFAULT NULL,
  `currency_code` varchar(0) DEFAULT NULL,
  `currency_symbol` varchar(0) DEFAULT NULL,
  `admin_first_name` varchar(0) DEFAULT NULL,
  `admin_last_name` varchar(0) DEFAULT NULL,
  `admin_email` varchar(0) DEFAULT NULL,
  `admin_billing_rate_per_hour` varchar(0) DEFAULT NULL,
  `admin_user_name` varchar(0) DEFAULT NULL,
  `admin_password` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `trackable_id` varchar(0) DEFAULT NULL,
  `trackable_type` varchar(0) DEFAULT NULL,
  `owner_id` varchar(0) DEFAULT NULL,
  `owner_type` varchar(0) DEFAULT NULL,
  `key` varchar(0) DEFAULT NULL,
  `parameters` varchar(0) DEFAULT NULL,
  `recipient_id` varchar(0) DEFAULT NULL,
  `recipient_type` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `is_read` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `access_token` varchar(0) DEFAULT NULL,
  `expires_at` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `active` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `key` varchar(11) DEFAULT NULL,
  `value` varchar(40) DEFAULT NULL,
  `created_at` varchar(10) DEFAULT NULL,
  `updated_at` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2020-04-06','2020-04-06'),('schema_sha1','b02d973aa4fc769c4f4e9d4dc0b294024f4f7657','2020-04-06','2020-04-06');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` varchar(0) DEFAULT NULL,
  `category` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `client_id` varchar(0) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `home_phone` varchar(0) DEFAULT NULL,
  `mobile_number` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `organization_name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `home_phone` varchar(0) DEFAULT NULL,
  `mobile_number` varchar(0) DEFAULT NULL,
  `send_invoice_by` varchar(0) DEFAULT NULL,
  `country` varchar(0) DEFAULT NULL,
  `address_street1` varchar(0) DEFAULT NULL,
  `address_street2` varchar(0) DEFAULT NULL,
  `city` varchar(0) DEFAULT NULL,
  `province_state` varchar(0) DEFAULT NULL,
  `postal_zip_code` varchar(0) DEFAULT NULL,
  `industry` varchar(0) DEFAULT NULL,
  `company_size` varchar(0) DEFAULT NULL,
  `business_phone` varchar(0) DEFAULT NULL,
  `fax` varchar(0) DEFAULT NULL,
  `internal_notes` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `available_credit` varchar(0) DEFAULT NULL,
  `currency_id` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `provider_id` varchar(0) DEFAULT NULL,
  `billing_email` varchar(0) DEFAULT NULL,
  `vat_number` varchar(0) DEFAULT NULL,
  `encrypted_password` varchar(0) DEFAULT NULL,
  `reset_password_token` varchar(0) DEFAULT NULL,
  `reset_password_sent_at` varchar(0) DEFAULT NULL,
  `remember_created_at` varchar(0) DEFAULT NULL,
  `sign_in_count` varchar(0) DEFAULT NULL,
  `current_sign_in_at` varchar(0) DEFAULT NULL,
  `last_sign_in_at` varchar(0) DEFAULT NULL,
  `current_sign_in_ip` varchar(0) DEFAULT NULL,
  `last_sign_in_ip` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `account_id` varchar(0) DEFAULT NULL,
  `company_name` varchar(0) DEFAULT NULL,
  `contact_name` varchar(0) DEFAULT NULL,
  `contact_title` varchar(0) DEFAULT NULL,
  `country` varchar(0) DEFAULT NULL,
  `city` varchar(0) DEFAULT NULL,
  `street_address_1` varchar(0) DEFAULT NULL,
  `street_address_2` varchar(0) DEFAULT NULL,
  `province_or_state` varchar(0) DEFAULT NULL,
  `postal_or_zipcode` varchar(0) DEFAULT NULL,
  `phone_number` varchar(0) DEFAULT NULL,
  `fax_number` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `logo` varchar(0) DEFAULT NULL,
  `company_tag_line` varchar(0) DEFAULT NULL,
  `memo` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `base_currency_id` varchar(0) DEFAULT NULL,
  `color_code` varchar(0) DEFAULT NULL,
  `abbreviation` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `user_id` varchar(0) DEFAULT NULL,
  `company_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `template_id` varchar(0) DEFAULT NULL,
  `parent_id` varchar(0) DEFAULT NULL,
  `parent_type` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `entity_id` varchar(0) DEFAULT NULL,
  `entity_type` varchar(0) DEFAULT NULL,
  `parent_id` varchar(0) DEFAULT NULL,
  `parent_type` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `payment_id` varchar(0) DEFAULT NULL,
  `invoice_id` varchar(0) DEFAULT NULL,
  `amount` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `credit_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `title` varchar(0) DEFAULT NULL,
  `code` varchar(0) DEFAULT NULL,
  `unit` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `priority` varchar(0) DEFAULT NULL,
  `attempts` varchar(0) DEFAULT NULL,
  `handler` varchar(0) DEFAULT NULL,
  `last_error` varchar(0) DEFAULT NULL,
  `run_at` varchar(0) DEFAULT NULL,
  `locked_at` varchar(0) DEFAULT NULL,
  `failed_at` varchar(0) DEFAULT NULL,
  `locked_by` varchar(0) DEFAULT NULL,
  `queue` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `recurring_profile_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `template_type` varchar(0) DEFAULT NULL,
  `email_from` varchar(0) DEFAULT NULL,
  `subject` varchar(0) DEFAULT NULL,
  `body` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `status` varchar(0) DEFAULT NULL,
  `torder` varchar(0) DEFAULT NULL,
  `send_email` varchar(0) DEFAULT NULL,
  `no_of_days` varchar(0) DEFAULT NULL,
  `is_late_payment_reminder` varchar(0) DEFAULT NULL,
  `cc` varchar(0) DEFAULT NULL,
  `bcc` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `estimate_number` varchar(0) DEFAULT NULL,
  `estimate_date` varchar(0) DEFAULT NULL,
  `po_number` varchar(0) DEFAULT NULL,
  `discount_percentage` varchar(0) DEFAULT NULL,
  `client_id` varchar(0) DEFAULT NULL,
  `terms` varchar(0) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL,
  `status` varchar(0) DEFAULT NULL,
  `sub_total` varchar(0) DEFAULT NULL,
  `discount_amount` varchar(0) DEFAULT NULL,
  `tax_amount` varchar(0) DEFAULT NULL,
  `estimate_total` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `discount_type` varchar(0) DEFAULT NULL,
  `company_id` varchar(0) DEFAULT NULL,
  `created_by` varchar(0) DEFAULT NULL,
  `updated_by` varchar(0) DEFAULT NULL,
  `currency_id` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `provider_id` varchar(0) DEFAULT NULL,
  `estimate_tax_amount` varchar(0) DEFAULT NULL,
  `tax_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `provider_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `amount` varchar(0) DEFAULT NULL,
  `expense_date` varchar(0) DEFAULT NULL,
  `category_id` varchar(0) DEFAULT NULL,
  `note` varchar(0) DEFAULT NULL,
  `client_id` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `tax_1` varchar(0) DEFAULT NULL,
  `tax_2` varchar(0) DEFAULT NULL,
  `company_id` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `provider_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `dashboard` varchar(0) DEFAULT NULL,
  `invoice` varchar(0) DEFAULT NULL,
  `new_invoice` varchar(0) DEFAULT NULL,
  `estimate` varchar(0) DEFAULT NULL,
  `new_estimate` varchar(0) DEFAULT NULL,
  `payment` varchar(0) DEFAULT NULL,
  `new_payment` varchar(0) DEFAULT NULL,
  `client` varchar(0) DEFAULT NULL,
  `new_client` varchar(0) DEFAULT NULL,
  `item` varchar(0) DEFAULT NULL,
  `new_item` varchar(0) DEFAULT NULL,
  `tax` varchar(0) DEFAULT NULL,
  `new_tax` varchar(0) DEFAULT NULL,
  `report` varchar(0) DEFAULT NULL,
  `setting` varchar(0) DEFAULT NULL,
  `invoice_table` varchar(0) DEFAULT NULL,
  `estimate_table` varchar(0) DEFAULT NULL,
  `payment_table` varchar(0) DEFAULT NULL,
  `client_table` varchar(0) DEFAULT NULL,
  `item_table` varchar(0) DEFAULT NULL,
  `tax_table` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `client_id` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `invoice_id` varchar(0) DEFAULT NULL,
  `item_id` varchar(0) DEFAULT NULL,
  `item_name` varchar(0) DEFAULT NULL,
  `item_description` varchar(0) DEFAULT NULL,
  `item_unit_cost` varchar(0) DEFAULT NULL,
  `item_quantity` varchar(0) DEFAULT NULL,
  `tax_1` varchar(0) DEFAULT NULL,
  `tax_2` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `actual_price` varchar(0) DEFAULT NULL,
  `estimate_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `description` varchar(0) DEFAULT NULL,
  `rate` varchar(0) DEFAULT NULL,
  `hours` varchar(0) DEFAULT NULL,
  `invoice_id` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `invoice_number` varchar(0) DEFAULT NULL,
  `invoice_date` varchar(0) DEFAULT NULL,
  `po_number` varchar(0) DEFAULT NULL,
  `discount_percentage` varchar(0) DEFAULT NULL,
  `client_id` varchar(0) DEFAULT NULL,
  `terms` varchar(0) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL,
  `status` varchar(0) DEFAULT NULL,
  `sub_total` varchar(0) DEFAULT NULL,
  `discount_amount` varchar(0) DEFAULT NULL,
  `tax_amount` varchar(0) DEFAULT NULL,
  `invoice_total` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `payment_terms_id` varchar(0) DEFAULT NULL,
  `due_date` varchar(0) DEFAULT NULL,
  `last_invoice_status` varchar(0) DEFAULT NULL,
  `discount_type` varchar(0) DEFAULT NULL,
  `company_id` varchar(0) DEFAULT NULL,
  `project_id` varchar(0) DEFAULT NULL,
  `invoice_type` varchar(0) DEFAULT NULL,
  `currency_id` varchar(0) DEFAULT NULL,
  `created_by` varchar(0) DEFAULT NULL,
  `updated_by` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `provider_id` varchar(0) DEFAULT NULL,
  `tax_id` varchar(0) DEFAULT NULL,
  `invoice_tax_amount` varchar(0) DEFAULT NULL,
  `parent_id` varchar(0) DEFAULT NULL,
  `base_currency_id` varchar(0) DEFAULT NULL,
  `conversion_rate` varchar(0) DEFAULT NULL,
  `base_currency_equivalent_total` varchar(0) DEFAULT NULL,
  `is_compact` varchar(0) DEFAULT NULL,
  `batch_number` varchar(0) DEFAULT NULL,
  `batch_id` varchar(0) DEFAULT NULL,
  `is_batched` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `item_name` varchar(0) DEFAULT NULL,
  `item_description` varchar(0) DEFAULT NULL,
  `unit_cost` varchar(0) DEFAULT NULL,
  `quantity` varchar(0) DEFAULT NULL,
  `tax_1` varchar(0) DEFAULT NULL,
  `tax_2` varchar(0) DEFAULT NULL,
  `track_inventory` varchar(0) DEFAULT NULL,
  `inventory` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `actual_price` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `provider_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `invoice_line_item_id` varchar(0) DEFAULT NULL,
  `percentage` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `tax_id` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `project_id` varchar(0) DEFAULT NULL,
  `task_id` varchar(0) DEFAULT NULL,
  `hours` varchar(0) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL,
  `date` varchar(0) DEFAULT NULL,
  `company_id` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `provider_id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `address` varchar(0) DEFAULT NULL,
  `port` varchar(0) DEFAULT NULL,
  `authentication` varchar(0) DEFAULT NULL,
  `user_name` varchar(0) DEFAULT NULL,
  `password` varchar(0) DEFAULT NULL,
  `enable_starttls_auto` varchar(0) DEFAULT NULL,
  `company_id` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `from` varchar(0) DEFAULT NULL,
  `openssl_verify_mode` varchar(0) DEFAULT NULL,
  `tls` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `resource_owner_id` varchar(0) DEFAULT NULL,
  `application_id` varchar(0) DEFAULT NULL,
  `token` varchar(0) DEFAULT NULL,
  `expires_in` varchar(0) DEFAULT NULL,
  `redirect_uri` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `revoked_at` varchar(0) DEFAULT NULL,
  `scopes` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `resource_owner_id` varchar(0) DEFAULT NULL,
  `application_id` varchar(0) DEFAULT NULL,
  `token` varchar(0) DEFAULT NULL,
  `refresh_token` varchar(0) DEFAULT NULL,
  `expires_in` varchar(0) DEFAULT NULL,
  `revoked_at` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `scopes` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `uid` varchar(0) DEFAULT NULL,
  `secret` varchar(0) DEFAULT NULL,
  `redirect_uri` varchar(0) DEFAULT NULL,
  `scopes` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `number_of_days` varchar(0) DEFAULT NULL,
  `description` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `invoice_id` varchar(0) DEFAULT NULL,
  `payment_amount` varchar(0) DEFAULT NULL,
  `payment_type` varchar(0) DEFAULT NULL,
  `payment_method` varchar(0) DEFAULT NULL,
  `payment_date` varchar(0) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL,
  `send_payment_notification` varchar(0) DEFAULT NULL,
  `paid_full` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `credit_applied` varchar(0) DEFAULT NULL,
  `client_id` varchar(0) DEFAULT NULL,
  `company_id` varchar(0) DEFAULT NULL,
  `status` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `provider_id` varchar(0) DEFAULT NULL,
  `currency_id` varchar(0) DEFAULT NULL,
  `created_by` varchar(0) DEFAULT NULL,
  `updated_by` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `can_create` varchar(0) DEFAULT NULL,
  `can_update` varchar(0) DEFAULT NULL,
  `can_delete` varchar(0) DEFAULT NULL,
  `can_read` varchar(0) DEFAULT NULL,
  `entity_type` varchar(0) DEFAULT NULL,
  `role_id` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `description` varchar(0) DEFAULT NULL,
  `rate` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `project_id` varchar(0) DEFAULT NULL,
  `task_id` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `start_date` varchar(0) DEFAULT NULL,
  `due_date` varchar(0) DEFAULT NULL,
  `hours` varchar(0) DEFAULT NULL,
  `spent_time` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `project_name` varchar(0) DEFAULT NULL,
  `client_id` varchar(0) DEFAULT NULL,
  `manager_id` varchar(0) DEFAULT NULL,
  `billing_method` varchar(0) DEFAULT NULL,
  `description` varchar(0) DEFAULT NULL,
  `total_hours` varchar(0) DEFAULT NULL,
  `company_id` varchar(0) DEFAULT NULL,
  `updated_by` varchar(0) DEFAULT NULL,
  `created_by` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `provider_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `recurring_profile_id` varchar(0) DEFAULT NULL,
  `item_id` varchar(0) DEFAULT NULL,
  `item_name` varchar(0) DEFAULT NULL,
  `item_description` varchar(0) DEFAULT NULL,
  `item_unit_cost` varchar(0) DEFAULT NULL,
  `item_quantity` varchar(0) DEFAULT NULL,
  `tax_1` varchar(0) DEFAULT NULL,
  `tax_2` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `first_invoice_date` varchar(0) DEFAULT NULL,
  `po_number` varchar(0) DEFAULT NULL,
  `discount_percentage` varchar(0) DEFAULT NULL,
  `frequency` varchar(0) DEFAULT NULL,
  `occurrences` varchar(0) DEFAULT NULL,
  `prorate` varchar(0) DEFAULT NULL,
  `prorate_for` varchar(0) DEFAULT NULL,
  `gateway_id` varchar(0) DEFAULT NULL,
  `client_id` varchar(0) DEFAULT NULL,
  `notes` varchar(0) DEFAULT NULL,
  `status` varchar(0) DEFAULT NULL,
  `sub_total` varchar(0) DEFAULT NULL,
  `discount_amount` varchar(0) DEFAULT NULL,
  `tax_amount` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `invoice_number` varchar(0) DEFAULT NULL,
  `discount_type` varchar(0) DEFAULT NULL,
  `invoice_total` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `payment_terms_id` varchar(0) DEFAULT NULL,
  `company_id` varchar(0) DEFAULT NULL,
  `last_invoice_status` varchar(0) DEFAULT NULL,
  `last_sent_date` varchar(0) DEFAULT NULL,
  `sent_invoices` varchar(0) DEFAULT NULL,
  `currency_id` varchar(0) DEFAULT NULL,
  `created_by` varchar(0) DEFAULT NULL,
  `updated_by` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `next_invoice_date` varchar(0) DEFAULT NULL,
  `frequency` varchar(0) DEFAULT NULL,
  `occurrences` varchar(0) DEFAULT NULL,
  `delivery_option` varchar(0) DEFAULT NULL,
  `invoice_id` varchar(0) DEFAULT NULL,
  `generated_count` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `enable_recurring` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `resource_id` varchar(0) DEFAULT NULL,
  `resource_type` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `version` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES (20200130070538);
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sent_emails`
--

DROP TABLE IF EXISTS `sent_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sent_emails` (
  `id` varchar(0) DEFAULT NULL,
  `date` varchar(0) DEFAULT NULL,
  `sender` varchar(0) DEFAULT NULL,
  `recipient` varchar(0) DEFAULT NULL,
  `type` varchar(0) DEFAULT NULL,
  `subject` varchar(0) DEFAULT NULL,
  `content` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `notification_id` varchar(0) DEFAULT NULL,
  `notification_type` varchar(0) DEFAULT NULL,
  `company_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `session_id` varchar(0) DEFAULT NULL,
  `data` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `var` varchar(0) DEFAULT NULL,
  `value` varchar(0) DEFAULT NULL,
  `thing_id` varchar(0) DEFAULT NULL,
  `thing_type` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `name` varchar(0) DEFAULT NULL,
  `seq` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `rate` varchar(0) DEFAULT NULL,
  `created_by` varchar(0) DEFAULT NULL,
  `updated_by` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `company_id` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `provider_id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `description` varchar(0) DEFAULT NULL,
  `billable` varchar(0) DEFAULT NULL,
  `rate` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `updated_by` varchar(0) DEFAULT NULL,
  `created_by` varchar(0) DEFAULT NULL,
  `project_id` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `provider_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `percentage` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `deleted_at` varchar(0) DEFAULT NULL,
  `provider` varchar(0) DEFAULT NULL,
  `provider_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `rate` varchar(0) DEFAULT NULL,
  `archive_number` varchar(0) DEFAULT NULL,
  `archived_at` varchar(0) DEFAULT NULL,
  `project_id` varchar(0) DEFAULT NULL,
  `staff_id` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `encrypted_password` varchar(0) DEFAULT NULL,
  `reset_password_token` varchar(0) DEFAULT NULL,
  `reset_password_sent_at` varchar(0) DEFAULT NULL,
  `remember_created_at` varchar(0) DEFAULT NULL,
  `sign_in_count` varchar(0) DEFAULT NULL,
  `current_sign_in_at` varchar(0) DEFAULT NULL,
  `last_sign_in_at` varchar(0) DEFAULT NULL,
  `current_sign_in_ip` varchar(0) DEFAULT NULL,
  `last_sign_in_ip` varchar(0) DEFAULT NULL,
  `confirmation_token` varchar(0) DEFAULT NULL,
  `confirmed_at` varchar(0) DEFAULT NULL,
  `confirmation_sent_at` varchar(0) DEFAULT NULL,
  `unconfirmed_email` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL,
  `password_salt` varchar(0) DEFAULT NULL,
  `user_name` varchar(0) DEFAULT NULL,
  `current_company` varchar(0) DEFAULT NULL,
  `authentication_token` varchar(0) DEFAULT NULL,
  `avatar` varchar(0) DEFAULT NULL,
  `role_id` varchar(0) DEFAULT NULL,
  `have_all_companies_access` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` varchar(0) DEFAULT NULL,
  `item_type` varchar(0) DEFAULT NULL,
  `item_id` varchar(0) DEFAULT NULL,
  `event` varchar(0) DEFAULT NULL,
  `whodunnit` varchar(0) DEFAULT NULL,
  `object` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

-- Dump completed on 2020-10-06 22:02:17
