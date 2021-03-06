-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: ultimatehrdb
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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_advance_salaries`
--

DROP TABLE IF EXISTS `ultimatehr_advance_salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_advance_salaries` (
  `advance_salary_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `month_year` varchar(255) NOT NULL,
  `advance_amount` varchar(255) NOT NULL,
  `one_time_deduct` varchar(50) NOT NULL,
  `monthly_installment` varchar(255) NOT NULL,
  `total_paid` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `status` int(11) DEFAULT NULL,
  `is_deducted_from_salary` int(11) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`advance_salary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_advance_salaries`
--

LOCK TABLES `ultimatehr_advance_salaries` WRITE;
/*!40000 ALTER TABLE `ultimatehr_advance_salaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_advance_salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_announcements`
--

DROP TABLE IF EXISTS `ultimatehr_announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_announcements` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `company_id` int(111) NOT NULL,
  `location_id` int(11) NOT NULL,
  `department_id` int(111) NOT NULL,
  `published_by` int(111) NOT NULL,
  `summary` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_notify` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_announcements`
--

LOCK TABLES `ultimatehr_announcements` WRITE;
/*!40000 ALTER TABLE `ultimatehr_announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_assets`
--

DROP TABLE IF EXISTS `ultimatehr_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_assets` (
  `assets_id` int(111) NOT NULL AUTO_INCREMENT,
  `assets_category_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `company_asset_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `purchase_date` varchar(255) NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `warranty_end_date` varchar(255) NOT NULL,
  `asset_note` text NOT NULL,
  `asset_image` varchar(255) NOT NULL,
  `is_working` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`assets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_assets`
--

LOCK TABLES `ultimatehr_assets` WRITE;
/*!40000 ALTER TABLE `ultimatehr_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_assets_categories`
--

DROP TABLE IF EXISTS `ultimatehr_assets_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_assets_categories` (
  `assets_category_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`assets_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_assets_categories`
--

LOCK TABLES `ultimatehr_assets_categories` WRITE;
/*!40000 ALTER TABLE `ultimatehr_assets_categories` DISABLE KEYS */;
INSERT INTO `ultimatehr_assets_categories` VALUES (1,1,'Laptop','05-04-2018 03:03:31');
/*!40000 ALTER TABLE `ultimatehr_assets_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_attendance_time`
--

DROP TABLE IF EXISTS `ultimatehr_attendance_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_attendance_time` (
  `time_attendance_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `attendance_date` varchar(255) NOT NULL,
  `clock_in` varchar(255) NOT NULL,
  `clock_in_ip_address` varchar(255) NOT NULL,
  `clock_out` varchar(255) NOT NULL,
  `clock_out_ip_address` varchar(255) NOT NULL,
  `clock_in_out` varchar(255) NOT NULL,
  `clock_in_latitude` varchar(150) NOT NULL,
  `clock_in_longitude` varchar(150) NOT NULL,
  `clock_out_latitude` varchar(150) NOT NULL,
  `clock_out_longitude` varchar(150) NOT NULL,
  `time_late` varchar(255) NOT NULL,
  `early_leaving` varchar(255) NOT NULL,
  `overtime` varchar(255) NOT NULL,
  `total_work` varchar(255) NOT NULL,
  `total_rest` varchar(255) NOT NULL,
  `attendance_status` varchar(100) NOT NULL,
  PRIMARY KEY (`time_attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_attendance_time`
--

LOCK TABLES `ultimatehr_attendance_time` WRITE;
/*!40000 ALTER TABLE `ultimatehr_attendance_time` DISABLE KEYS */;
INSERT INTO `ultimatehr_attendance_time` VALUES (1,5,'2019-04-17','2019-04-17 10:36:38','::1','2019-04-17 10:37:36','::1','0','31.450726399999997','74.2940672','31.450726399999997','74.2940672','2019-04-17 10:36:38','2019-04-17 10:37:36','2019-04-17 10:37:36','0:0','','Present');
/*!40000 ALTER TABLE `ultimatehr_attendance_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_attendance_time_request`
--

DROP TABLE IF EXISTS `ultimatehr_attendance_time_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_attendance_time_request` (
  `time_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `request_date` varchar(255) NOT NULL,
  `request_date_request` varchar(255) NOT NULL,
  `request_clock_in` varchar(200) NOT NULL,
  `request_clock_out` varchar(200) NOT NULL,
  `total_hours` varchar(255) NOT NULL,
  `project_no` varchar(200) NOT NULL,
  `purchase_no` varchar(200) DEFAULT NULL,
  `task_name` varchar(255) NOT NULL,
  `request_reason` text NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`time_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_attendance_time_request`
--

LOCK TABLES `ultimatehr_attendance_time_request` WRITE;
/*!40000 ALTER TABLE `ultimatehr_attendance_time_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_attendance_time_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_award_type`
--

DROP TABLE IF EXISTS `ultimatehr_award_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_award_type` (
  `award_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `award_type` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`award_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_award_type`
--

LOCK TABLES `ultimatehr_award_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_award_type` DISABLE KEYS */;
INSERT INTO `ultimatehr_award_type` VALUES (1,1,'Performer of the Year','22-03-2018 01:33:57');
/*!40000 ALTER TABLE `ultimatehr_award_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_awards`
--

DROP TABLE IF EXISTS `ultimatehr_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_awards` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(200) NOT NULL,
  `award_type_id` int(200) NOT NULL,
  `gift_item` varchar(200) NOT NULL,
  `cash_price` varchar(200) NOT NULL,
  `award_photo` varchar(255) NOT NULL,
  `award_month_year` varchar(200) NOT NULL,
  `award_information` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_awards`
--

LOCK TABLES `ultimatehr_awards` WRITE;
/*!40000 ALTER TABLE `ultimatehr_awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_chat_messages`
--

DROP TABLE IF EXISTS `ultimatehr_chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_chat_messages` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` varchar(40) NOT NULL DEFAULT '',
  `to_id` varchar(50) NOT NULL DEFAULT '',
  `message_frm` varchar(255) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT '0',
  `message_content` longtext NOT NULL,
  `message_date` varchar(255) DEFAULT NULL,
  `recd` tinyint(1) NOT NULL DEFAULT '0',
  `message_type` varchar(255) NOT NULL DEFAULT '',
  `department_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_chat_messages`
--

LOCK TABLES `ultimatehr_chat_messages` WRITE;
/*!40000 ALTER TABLE `ultimatehr_chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_clients`
--

DROP TABLE IF EXISTS `ultimatehr_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_clients` (
  `client_id` int(111) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `client_username` varchar(255) NOT NULL,
  `client_password` varchar(255) NOT NULL,
  `client_profile` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `is_changed` int(11) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `website_url` varchar(255) NOT NULL,
  `address_1` mediumtext NOT NULL,
  `address_2` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` int(111) NOT NULL,
  `is_active` int(11) NOT NULL,
  `last_logout_date` varchar(255) NOT NULL,
  `last_login_date` varchar(255) NOT NULL,
  `last_login_ip` varchar(255) NOT NULL,
  `is_logged_in` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_clients`
--

LOCK TABLES `ultimatehr_clients` WRITE;
/*!40000 ALTER TABLE `ultimatehr_clients` DISABLE KEYS */;
INSERT INTO `ultimatehr_clients` VALUES (1,'','Shaleena','client1@hrsale.com','','$2y$12$wGATpsG6S/IAIwobUZMeDeYyxpirjXVaVLo79ta2PLlRJjBNIsfFa','','123456789','Shale Inc.',0,'','','Address Line 1','Address Line 2','City','State','11461',190,1,'','20-03-2019 22:05:05','::1',1,'2019-03-20 22:05:02');
/*!40000 ALTER TABLE `ultimatehr_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_companies`
--

DROP TABLE IF EXISTS `ultimatehr_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_companies` (
  `company_id` int(111) NOT NULL AUTO_INCREMENT,
  `type_id` int(111) NOT NULL,
  `name` varchar(255) NOT NULL,
  `trading_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registration_no` varchar(255) NOT NULL,
  `government_tax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `website_url` varchar(255) NOT NULL,
  `address_1` mediumtext NOT NULL,
  `address_2` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` int(111) NOT NULL,
  `is_active` int(11) NOT NULL,
  `default_currency` varchar(200) DEFAULT NULL,
  `default_timezone` varchar(200) DEFAULT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_companies`
--

LOCK TABLES `ultimatehr_companies` WRITE;
/*!40000 ALTER TABLE `ultimatehr_companies` DISABLE KEYS */;
INSERT INTO `ultimatehr_companies` VALUES (1,1,'HRSALE','Test','test123','','','','mainoffice@hrsale.com','logo_1526958729.png','0123456789','hrsale.com','Test','Test2','Riyadh','Riyadh','11461',190,0,'USD - $','Asia/Riyadh',1,'22-05-2018');
/*!40000 ALTER TABLE `ultimatehr_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_company_documents`
--

DROP TABLE IF EXISTS `ultimatehr_company_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_company_documents` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_type_id` int(11) NOT NULL,
  `license_name` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `license_number` varchar(255) NOT NULL,
  `license_notification` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `document` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_company_documents`
--

LOCK TABLES `ultimatehr_company_documents` WRITE;
/*!40000 ALTER TABLE `ultimatehr_company_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_company_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_company_info`
--

DROP TABLE IF EXISTS `ultimatehr_company_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_company_info` (
  `company_info_id` int(111) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NOT NULL,
  `logo_second` varchar(255) NOT NULL,
  `sign_in_logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `website_url` mediumtext NOT NULL,
  `starting_year` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `company_contact` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address_1` mediumtext NOT NULL,
  `address_2` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` int(111) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  PRIMARY KEY (`company_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_company_info`
--

LOCK TABLES `ultimatehr_company_info` WRITE;
/*!40000 ALTER TABLE `ultimatehr_company_info` DISABLE KEYS */;
INSERT INTO `ultimatehr_company_info` VALUES (1,'logo_1520722747.png','logo2_1520609223.png','signin_logo_1520612279.png','favicon_1520722747.png','','','HRSALE','','','Thomas Fleming','info@hrsale.com','123456789','Address Line 1','Address Line 2','City','State','11461',190,'2017-05-20 12:05:53');
/*!40000 ALTER TABLE `ultimatehr_company_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_company_policy`
--

DROP TABLE IF EXISTS `ultimatehr_company_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_company_policy` (
  `policy_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_company_policy`
--

LOCK TABLES `ultimatehr_company_policy` WRITE;
/*!40000 ALTER TABLE `ultimatehr_company_policy` DISABLE KEYS */;
INSERT INTO `ultimatehr_company_policy` VALUES (1,1,'Smoke-Free Work','&lt;p&gt;Smoke-Free Work Environment Policy Close&lt;/p&gt;',NULL,1,'28-02-2018');
/*!40000 ALTER TABLE `ultimatehr_company_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_company_type`
--

DROP TABLE IF EXISTS `ultimatehr_company_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_company_type` (
  `type_id` int(111) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_company_type`
--

LOCK TABLES `ultimatehr_company_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_company_type` DISABLE KEYS */;
INSERT INTO `ultimatehr_company_type` VALUES (1,'Corporation',''),(2,'Exempt Organization',''),(3,'Partnership',''),(4,'Private Foundation',''),(5,'Limited Liability Company','');
/*!40000 ALTER TABLE `ultimatehr_company_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_contract_type`
--

DROP TABLE IF EXISTS `ultimatehr_contract_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_contract_type` (
  `contract_type_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`contract_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_contract_type`
--

LOCK TABLES `ultimatehr_contract_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_contract_type` DISABLE KEYS */;
INSERT INTO `ultimatehr_contract_type` VALUES (1,1,'Permanent','05-04-2018 06:10:32');
/*!40000 ALTER TABLE `ultimatehr_contract_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_countries`
--

DROP TABLE IF EXISTS `ultimatehr_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_flag` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_countries`
--

LOCK TABLES `ultimatehr_countries` WRITE;
/*!40000 ALTER TABLE `ultimatehr_countries` DISABLE KEYS */;
INSERT INTO `ultimatehr_countries` VALUES (1,'+93','Afghanistan','flag_1500831780.gif'),(2,'+355','Albania','flag_1500831815.gif'),(3,'DZ','Algeria',''),(4,'DS','American Samoa',''),(5,'AD','Andorra',''),(6,'AO','Angola',''),(7,'AI','Anguilla',''),(8,'AQ','Antarctica',''),(9,'AG','Antigua and Barbuda',''),(10,'AR','Argentina',''),(11,'AM','Armenia',''),(12,'AW','Aruba',''),(13,'AU','Australia',''),(14,'AT','Austria',''),(15,'AZ','Azerbaijan',''),(16,'BS','Bahamas',''),(17,'BH','Bahrain',''),(18,'BD','Bangladesh',''),(19,'BB','Barbados',''),(20,'BY','Belarus',''),(21,'BE','Belgium',''),(22,'BZ','Belize',''),(23,'BJ','Benin',''),(24,'BM','Bermuda',''),(25,'BT','Bhutan',''),(26,'BO','Bolivia',''),(27,'BA','Bosnia and Herzegovina',''),(28,'BW','Botswana',''),(29,'BV','Bouvet Island',''),(30,'BR','Brazil',''),(31,'IO','British Indian Ocean Territory',''),(32,'BN','Brunei Darussalam',''),(33,'BG','Bulgaria',''),(34,'BF','Burkina Faso',''),(35,'BI','Burundi',''),(36,'KH','Cambodia',''),(37,'CM','Cameroon',''),(38,'CA','Canada',''),(39,'CV','Cape Verde',''),(40,'KY','Cayman Islands',''),(41,'CF','Central African Republic',''),(42,'TD','Chad',''),(43,'CL','Chile',''),(44,'CN','China',''),(45,'CX','Christmas Island',''),(46,'CC','Cocos (Keeling) Islands',''),(47,'CO','Colombia',''),(48,'KM','Comoros',''),(49,'CG','Congo',''),(50,'CK','Cook Islands',''),(51,'CR','Costa Rica',''),(52,'HR','Croatia (Hrvatska)',''),(53,'CU','Cuba',''),(54,'CY','Cyprus',''),(55,'CZ','Czech Republic',''),(56,'DK','Denmark',''),(57,'DJ','Djibouti',''),(58,'DM','Dominica',''),(59,'DO','Dominican Republic',''),(60,'TP','East Timor',''),(61,'EC','Ecuador',''),(62,'EG','Egypt',''),(63,'SV','El Salvador',''),(64,'GQ','Equatorial Guinea',''),(65,'ER','Eritrea',''),(66,'EE','Estonia',''),(67,'ET','Ethiopia',''),(68,'FK','Falkland Islands (Malvinas)',''),(69,'FO','Faroe Islands',''),(70,'FJ','Fiji',''),(71,'FI','Finland',''),(72,'FR','France',''),(73,'FX','France, Metropolitan',''),(74,'GF','French Guiana',''),(75,'PF','French Polynesia',''),(76,'TF','French Southern Territories',''),(77,'GA','Gabon',''),(78,'GM','Gambia',''),(79,'GE','Georgia',''),(80,'DE','Germany',''),(81,'GH','Ghana',''),(82,'GI','Gibraltar',''),(83,'GK','Guernsey',''),(84,'GR','Greece',''),(85,'GL','Greenland',''),(86,'GD','Grenada',''),(87,'GP','Guadeloupe',''),(88,'GU','Guam',''),(89,'GT','Guatemala',''),(90,'GN','Guinea',''),(91,'GW','Guinea-Bissau',''),(92,'GY','Guyana',''),(93,'HT','Haiti',''),(94,'HM','Heard and Mc Donald Islands',''),(95,'HN','Honduras',''),(96,'HK','Hong Kong',''),(97,'HU','Hungary',''),(98,'IS','Iceland',''),(99,'IN','India',''),(100,'IM','Isle of Man',''),(101,'ID','Indonesia',''),(102,'IR','Iran (Islamic Republic of)',''),(103,'IQ','Iraq',''),(104,'IE','Ireland',''),(105,'IL','Israel',''),(106,'IT','Italy',''),(107,'CI','Ivory Coast',''),(108,'JE','Jersey',''),(109,'JM','Jamaica',''),(110,'JP','Japan',''),(111,'JO','Jordan',''),(112,'KZ','Kazakhstan',''),(113,'KE','Kenya',''),(114,'KI','Kiribati',''),(115,'KP','Korea, Democratic People\'s Republic of',''),(116,'KR','Korea, Republic of',''),(117,'XK','Kosovo',''),(118,'KW','Kuwait',''),(119,'KG','Kyrgyzstan',''),(120,'LA','Lao People\'s Democratic Republic',''),(121,'LV','Latvia',''),(122,'LB','Lebanon',''),(123,'LS','Lesotho',''),(124,'LR','Liberia',''),(125,'LY','Libyan Arab Jamahiriya',''),(126,'LI','Liechtenstein',''),(127,'LT','Lithuania',''),(128,'LU','Luxembourg',''),(129,'MO','Macau',''),(130,'MK','Macedonia',''),(131,'MG','Madagascar',''),(132,'MW','Malawi',''),(133,'MY','Malaysia',''),(134,'MV','Maldives',''),(135,'ML','Mali',''),(136,'MT','Malta',''),(137,'MH','Marshall Islands',''),(138,'MQ','Martinique',''),(139,'MR','Mauritania',''),(140,'MU','Mauritius',''),(141,'TY','Mayotte',''),(142,'MX','Mexico',''),(143,'FM','Micronesia, Federated States of',''),(144,'MD','Moldova, Republic of',''),(145,'MC','Monaco',''),(146,'MN','Mongolia',''),(147,'ME','Montenegro',''),(148,'MS','Montserrat',''),(149,'MA','Morocco',''),(150,'MZ','Mozambique',''),(151,'MM','Myanmar',''),(152,'NA','Namibia',''),(153,'NR','Nauru',''),(154,'NP','Nepal',''),(155,'NL','Netherlands',''),(156,'AN','Netherlands Antilles',''),(157,'NC','New Caledonia',''),(158,'NZ','New Zealand',''),(159,'NI','Nicaragua',''),(160,'NE','Niger',''),(161,'NG','Nigeria',''),(162,'NU','Niue',''),(163,'NF','Norfolk Island',''),(164,'MP','Northern Mariana Islands',''),(165,'NO','Norway',''),(166,'OM','Oman',''),(167,'PK','Pakistan',''),(168,'PW','Palau',''),(169,'PS','Palestine',''),(170,'PA','Panama',''),(171,'PG','Papua New Guinea',''),(172,'PY','Paraguay',''),(173,'PE','Peru',''),(174,'PH','Philippines',''),(175,'PN','Pitcairn',''),(176,'PL','Poland',''),(177,'PT','Portugal',''),(178,'PR','Puerto Rico',''),(179,'QA','Qatar',''),(180,'RE','Reunion',''),(181,'RO','Romania',''),(182,'RU','Russian Federation',''),(183,'RW','Rwanda',''),(184,'KN','Saint Kitts and Nevis',''),(185,'LC','Saint Lucia',''),(186,'VC','Saint Vincent and the Grenadines',''),(187,'WS','Samoa',''),(188,'SM','San Marino',''),(189,'ST','Sao Tome and Principe',''),(190,'SA','Saudi Arabia',''),(191,'SN','Senegal',''),(192,'RS','Serbia',''),(193,'SC','Seychelles',''),(194,'SL','Sierra Leone',''),(195,'SG','Singapore',''),(196,'SK','Slovakia',''),(197,'SI','Slovenia',''),(198,'SB','Solomon Islands',''),(199,'SO','Somalia',''),(200,'ZA','South Africa',''),(201,'GS','South Georgia South Sandwich Islands',''),(202,'ES','Spain',''),(203,'LK','Sri Lanka',''),(204,'SH','St. Helena',''),(205,'PM','St. Pierre and Miquelon',''),(206,'SD','Sudan',''),(207,'SR','Suriname',''),(208,'SJ','Svalbard and Jan Mayen Islands',''),(209,'SZ','Swaziland',''),(210,'SE','Sweden',''),(211,'CH','Switzerland',''),(212,'SY','Syrian Arab Republic',''),(213,'TW','Taiwan',''),(214,'TJ','Tajikistan',''),(215,'TZ','Tanzania, United Republic of',''),(216,'TH','Thailand',''),(217,'TG','Togo',''),(218,'TK','Tokelau',''),(219,'TO','Tonga',''),(220,'TT','Trinidad and Tobago',''),(221,'TN','Tunisia',''),(222,'TR','Turkey',''),(223,'TM','Turkmenistan',''),(224,'TC','Turks and Caicos Islands',''),(225,'TV','Tuvalu',''),(226,'UG','Uganda',''),(227,'UA','Ukraine',''),(228,'AE','United Arab Emirates',''),(229,'GB','United Kingdom',''),(230,'US','United States',''),(231,'UM','United States minor outlying islands',''),(232,'UY','Uruguay',''),(233,'UZ','Uzbekistan',''),(234,'VU','Vanuatu',''),(235,'VA','Vatican City State',''),(236,'VE','Venezuela',''),(237,'VN','Vietnam',''),(238,'VG','Virgin Islands (British)',''),(239,'VI','Virgin Islands (U.S.)',''),(240,'WF','Wallis and Futuna Islands',''),(241,'EH','Western Sahara',''),(242,'YE','Yemen',''),(243,'ZR','Zaire',''),(244,'ZM','Zambia',''),(245,'ZW','Zimbabwe','');
/*!40000 ALTER TABLE `ultimatehr_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_currencies`
--

DROP TABLE IF EXISTS `ultimatehr_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_currencies` (
  `currency_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_currencies`
--

LOCK TABLES `ultimatehr_currencies` WRITE;
/*!40000 ALTER TABLE `ultimatehr_currencies` DISABLE KEYS */;
INSERT INTO `ultimatehr_currencies` VALUES (1,1,'Dollars','USD','$');
/*!40000 ALTER TABLE `ultimatehr_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_currency_converter`
--

DROP TABLE IF EXISTS `ultimatehr_currency_converter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_currency_converter` (
  `currency_converter_id` int(11) NOT NULL AUTO_INCREMENT,
  `usd_currency` varchar(11) NOT NULL DEFAULT '1',
  `to_currency_title` varchar(200) NOT NULL,
  `to_currency_rate` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`currency_converter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_currency_converter`
--

LOCK TABLES `ultimatehr_currency_converter` WRITE;
/*!40000 ALTER TABLE `ultimatehr_currency_converter` DISABLE KEYS */;
INSERT INTO `ultimatehr_currency_converter` VALUES (1,'1','MYR','4.11','17-08-2018 03:29:58');
/*!40000 ALTER TABLE `ultimatehr_currency_converter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_database_backup`
--

DROP TABLE IF EXISTS `ultimatehr_database_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_database_backup` (
  `backup_id` int(111) NOT NULL AUTO_INCREMENT,
  `backup_file` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`backup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_database_backup`
--

LOCK TABLES `ultimatehr_database_backup` WRITE;
/*!40000 ALTER TABLE `ultimatehr_database_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_database_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_departments`
--

DROP TABLE IF EXISTS `ultimatehr_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_departments` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(200) NOT NULL,
  `company_id` int(11) NOT NULL,
  `location_id` int(111) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_departments`
--

LOCK TABLES `ultimatehr_departments` WRITE;
/*!40000 ALTER TABLE `ultimatehr_departments` DISABLE KEYS */;
INSERT INTO `ultimatehr_departments` VALUES (1,'MD Office',1,1,5,0,'06-03-2018',1),(2,'Accounts and  Finances',1,1,5,1,'17-03-2018',1);
/*!40000 ALTER TABLE `ultimatehr_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_designations`
--

DROP TABLE IF EXISTS `ultimatehr_designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_designations` (
  `designation_id` int(11) NOT NULL AUTO_INCREMENT,
  `top_designation_id` int(11) NOT NULL DEFAULT '0',
  `department_id` int(200) NOT NULL,
  `sub_department_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `designation_name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`designation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_designations`
--

LOCK TABLES `ultimatehr_designations` WRITE;
/*!40000 ALTER TABLE `ultimatehr_designations` DISABLE KEYS */;
INSERT INTO `ultimatehr_designations` VALUES (9,0,1,8,1,'Software Developer','',1,'06-03-2018',1),(10,0,2,10,1,'Finance','',1,'18-03-2018',1);
/*!40000 ALTER TABLE `ultimatehr_designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_document_type`
--

DROP TABLE IF EXISTS `ultimatehr_document_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_document_type` (
  `document_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`document_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_document_type`
--

LOCK TABLES `ultimatehr_document_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_document_type` DISABLE KEYS */;
INSERT INTO `ultimatehr_document_type` VALUES (1,1,'Driving License','09-05-2018 12:34:55');
/*!40000 ALTER TABLE `ultimatehr_document_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_email_configuration`
--

DROP TABLE IF EXISTS `ultimatehr_email_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_email_configuration` (
  `email_config_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_type` enum('phpmail','smtp','codeigniter') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `smtp_host` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `smtp_username` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_secure` enum('tls','ssl') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`email_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_email_configuration`
--

LOCK TABLES `ultimatehr_email_configuration` WRITE;
/*!40000 ALTER TABLE `ultimatehr_email_configuration` DISABLE KEYS */;
INSERT INTO `ultimatehr_email_configuration` VALUES (1,'phpmail','smtp.gmail.com','demo@gmail.com','123456',587,'tls');
/*!40000 ALTER TABLE `ultimatehr_email_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_email_template`
--

DROP TABLE IF EXISTS `ultimatehr_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_email_template` (
  `template_id` int(111) NOT NULL AUTO_INCREMENT,
  `template_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_email_template`
--

LOCK TABLES `ultimatehr_email_template` WRITE;
/*!40000 ALTER TABLE `ultimatehr_email_template` DISABLE KEYS */;
INSERT INTO `ultimatehr_email_template` VALUES (2,'code1','Forgot Password','Forgot Password','                            <p><span xss=\"removed\">Hello,</span></p><p><span xss=\"removed\">There was recently a request for password for your {var site_name} account.</span></p><p><span xss=\"removed\">If this was a mistake, just ignore this email and nothing will happen.</span></p><p><span xss=\"removed\">To reset your password, visit the following link <a href=\"{var reset_url}admin/reset_password?change=true&email={var email}\">Reset Password</a></span></p><p><span xss=\"removed\">Regards,</span></p><p><span xss=\"removed\">The {var site_name} Team</span></p>',1),(3,'code2','New Project','New Project','                                <p>Hi {var employee_name},</p><p>New project has been assigned to you.</p><p>Project Name: {var project_name}</p><p>Project Start Date:Â <span>{var project_start_date}</span></p><p><br><span>You can view the project by logging in to the portal using the link below.</span></p><p><span>{var site_url}admin/</span></p><p><span>Regards</span><br></p><p>The {var site_name} Team</p>',1),(5,'code3','Leave Request ','A Leave Request from you','            <p>Dear Admin,</p><p>{var employee_name} wants a leave from you.</p><p>You can view this leave request by logging in to the portal using the link below.</p><p>{var site_url}admin/<br><br>Regards,</p><p>The {var site_name} Team</p>',1),(6,'code4','Leave Approve','Your leave request has been approved','                <p>Hello,</p><p>Your leave request has been approved</p><p><span xss=\"removed\">Congratulations! </span>Your leave request from<font face=\"sans-serif, Arial, Verdana, Trebuchet MS\" color=\"#333333\"> </font>{var leave_start_date}Â toÂ {var leave_end_date}Â has been approved by your company management.</p><p><span>You can view the leave by logging in to the portal using the link below.</span></p><p>{var site_url}admin/<br></p><p>Regards,<br>The {var site_name} Team</p>',1),(7,'code5','Leave Reject','Your leave request has been Rejected','                <p>Hello,</p><p>Your leave request has been Rejected</p><p>Unfortunately! Your leave request from {var leave_start_date} to {var leave_end_date} has been Rejected by your company management.</p><p><span>You can view the leave by logging in to the portal using the link below.</span></p><p>{var site_url}admin/</p><p>Regards,</p><p>The {var site_name} Team</p>',1),(8,'code6','Welcome Email ','Welcome Email ','            <p>HelloÂ {var employee_name},</p><p>Welcome toÂ {var site_name}Â .Thanks for joiningÂ {var site_name}. We listed your sign in details below, make sure you keep them safe.</p><p>Your Username: {var username}</p><p>Your Employee ID: {var employee_id}</p><p>Your Email Address: {var email}<br></p><p>Your Password: {var password}</p><p>Your Password: {var pincode}</p><p><span>You can logging in to the portal using the link below</span></p><p>{var site_url}admin/</p><br><p>Thank you,</p><p>TheÂ {var site_name}Â Team</p>',1),(9,'code7','Transfer','New Transfer','        <p>HelloÂ {var employee_name},</p><p>You have beenÂ transfered to another department and location.</p><p>You can view the transfer details by logging in to the portal using the link below.</p><p>{var site_url}admin/</p><p>Regards,</p><p>The {var site_name} Team</p>',1),(10,'code8','Award','New Award Received','    <p>Hello {var employee_name},</p><p>You have been awarded {var award_name}.</p><p>You can view this award by logging in to the portal using the link below.</p><p><span xss=\"removed\">{var site_url}admin</span><span xss=\"removed\">/awards/</span><br></p><p>Regards,</p><p>The {var site_name} Team</p>',1),(14,'code9','New Task','Task assigned','    <p>Hi {employee_name},</p><p>A new task <span>{var task_name}</span> has been assigned to [{project_name}]</p><p>You can view this task by logging in to the portal using the link below.</p><p>{var site_url}</p><p>Regards,</p><p>The {var site_name} Team</p>',1),(15,'code10','New Inquiry','New Inquiry [#{var ticket_code}]','    <p xss=\"\\\\\\\\\" rgb(51,=\"\\\" font-family:=\"\\\" sans-serif,=\"\\\" arial,=\"\\\" verdana,=\"\\\\\" trebuchet=\"\\\\\\\\\"><span xss=\"\\\\\\\\\">Hi,</span><br></p><p xss=\"\\\\\\\\\" rgb(51,=\"\\\" font-family:=\"\\\" sans-serif,=\"\\\" arial,=\"\\\" verdana,=\"\\\\\" trebuchet=\"\\\\\\\\\"><span xss=\"\\\\\\\\\">Your received a new inquiry.</span></p><p xss=\"\\\\\\\\\" rgb(51,=\"\\\" font-family:=\"\\\" sans-serif,=\"\\\" arial,=\"\\\" verdana,=\"\\\\\" trebuchet=\"\\\\\\\\\"><span xss=\"\\\\\\\\\">Inquiry Code: #{var ticket_code}</span></p><p xss=\"\\\\\\\\\" rgb(51,=\"\\\" font-family:=\"\\\" sans-serif,=\"\\\" arial,=\"\\\" verdana,=\"\\\\\" trebuchet=\"\\\\\\\\\">Status : Open<br><br>Click on the below link to see the inquiry details and post additional comments.</p><p xss=\"\\\\\\\\\" rgb(51,=\"\\\" font-family:=\"\\\" sans-serif,=\"\\\" arial,=\"\\\" verdana,=\"\\\\\" trebuchet=\"\\\\\\\\\">{var site_url}admin/<br><br>Regards,</p><p xss=\"\\\\\\\\\" rgb(51,=\"\\\" font-family:=\"\\\" sans-serif,=\"\\\" arial,=\"\\\" verdana,=\"\\\\\" trebuchet=\"\\\\\\\\\">The {var site_name} Team</p>',1),(16,'code11','Client Welcome Email','Welcome Email','        <p>Hello {var client_name},</p><p>Welcome to {var site_name}. Thanks for joining {var site_name}. We listed your sign in details below, make sure you keep them safe. You can login to your panel using email and password.</p><p>Your Username: {var username}</p><p><span xss=\"\\\\\\\\\">Your Email Address: {var email}</span></p><p>Your Password: {var password}<br></p><p>{var site_url}client/</p><p>Have fun!</p><p>The {var site_name} Team</p>',1),(17,'code12','Password Changed Successfully','Password Changed Successfully','    <p>Hello,</p><p>Congratulations! Your password has been updated successfully.</p><p>Your new password is: {var password}</p><p>Your new pincode: {var pincode}<br></p><p>Thank you,<br>The {var site_name} Team<br></p>',1);
/*!40000 ALTER TABLE `ultimatehr_email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_bankaccount`
--

DROP TABLE IF EXISTS `ultimatehr_employee_bankaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_bankaccount` (
  `bankaccount_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `is_primary` int(11) NOT NULL,
  `account_title` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_code` varchar(255) NOT NULL,
  `bank_branch` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`bankaccount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_bankaccount`
--

LOCK TABLES `ultimatehr_employee_bankaccount` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_bankaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_bankaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_complaints`
--

DROP TABLE IF EXISTS `ultimatehr_employee_complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_complaints` (
  `complaint_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `complaint_from` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `complaint_date` varchar(255) NOT NULL,
  `complaint_against` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `status` tinyint(2) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_complaints`
--

LOCK TABLES `ultimatehr_employee_complaints` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_contacts`
--

DROP TABLE IF EXISTS `ultimatehr_employee_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_contacts` (
  `contact_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `is_primary` int(111) NOT NULL,
  `is_dependent` int(111) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `work_phone` varchar(255) NOT NULL,
  `work_phone_extension` varchar(255) NOT NULL,
  `mobile_phone` varchar(255) NOT NULL,
  `home_phone` varchar(255) NOT NULL,
  `work_email` varchar(255) NOT NULL,
  `personal_email` varchar(255) NOT NULL,
  `address_1` mediumtext NOT NULL,
  `address_2` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_contacts`
--

LOCK TABLES `ultimatehr_employee_contacts` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_contract`
--

DROP TABLE IF EXISTS `ultimatehr_employee_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_contract` (
  `contract_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `contract_type_id` int(111) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `designation_id` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_contract`
--

LOCK TABLES `ultimatehr_employee_contract` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_documents`
--

DROP TABLE IF EXISTS `ultimatehr_employee_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_documents` (
  `document_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `document_type_id` int(111) NOT NULL,
  `date_of_expiry` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `notification_email` varchar(255) NOT NULL,
  `is_alert` tinyint(1) NOT NULL,
  `description` mediumtext NOT NULL,
  `document_file` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_documents`
--

LOCK TABLES `ultimatehr_employee_documents` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_exit`
--

DROP TABLE IF EXISTS `ultimatehr_employee_exit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_exit` (
  `exit_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `exit_date` varchar(255) NOT NULL,
  `exit_type_id` int(111) NOT NULL,
  `exit_interview` int(111) NOT NULL,
  `is_inactivate_account` int(111) NOT NULL,
  `reason` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`exit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_exit`
--

LOCK TABLES `ultimatehr_employee_exit` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_exit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_exit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_exit_type`
--

DROP TABLE IF EXISTS `ultimatehr_employee_exit_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_exit_type` (
  `exit_type_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`exit_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_exit_type`
--

LOCK TABLES `ultimatehr_employee_exit_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_exit_type` DISABLE KEYS */;
INSERT INTO `ultimatehr_employee_exit_type` VALUES (1,1,'Test','');
/*!40000 ALTER TABLE `ultimatehr_employee_exit_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_immigration`
--

DROP TABLE IF EXISTS `ultimatehr_employee_immigration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_immigration` (
  `immigration_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `document_type_id` int(111) NOT NULL,
  `document_number` varchar(255) NOT NULL,
  `document_file` varchar(255) NOT NULL,
  `issue_date` varchar(255) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `eligible_review_date` varchar(255) NOT NULL,
  `comments` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`immigration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_immigration`
--

LOCK TABLES `ultimatehr_employee_immigration` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_immigration` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_immigration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_leave`
--

DROP TABLE IF EXISTS `ultimatehr_employee_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_leave` (
  `leave_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `contract_id` int(111) NOT NULL,
  `casual_leave` varchar(255) NOT NULL,
  `medical_leave` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_leave`
--

LOCK TABLES `ultimatehr_employee_leave` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_location`
--

DROP TABLE IF EXISTS `ultimatehr_employee_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_location` (
  `office_location_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `location_id` int(111) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`office_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_location`
--

LOCK TABLES `ultimatehr_employee_location` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_promotions`
--

DROP TABLE IF EXISTS `ultimatehr_employee_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_promotions` (
  `promotion_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `promotion_date` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_promotions`
--

LOCK TABLES `ultimatehr_employee_promotions` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_qualification`
--

DROP TABLE IF EXISTS `ultimatehr_employee_qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_qualification` (
  `qualification_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `name` varchar(255) NOT NULL,
  `education_level_id` int(111) NOT NULL,
  `from_year` varchar(255) NOT NULL,
  `language_id` int(111) NOT NULL,
  `to_year` varchar(255) NOT NULL,
  `skill_id` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`qualification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_qualification`
--

LOCK TABLES `ultimatehr_employee_qualification` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_qualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_resignations`
--

DROP TABLE IF EXISTS `ultimatehr_employee_resignations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_resignations` (
  `resignation_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `notice_date` varchar(255) NOT NULL,
  `resignation_date` varchar(255) NOT NULL,
  `reason` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`resignation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_resignations`
--

LOCK TABLES `ultimatehr_employee_resignations` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_resignations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_resignations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_security_level`
--

DROP TABLE IF EXISTS `ultimatehr_employee_security_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_security_level` (
  `security_level_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `security_type` int(11) NOT NULL,
  `date_of_clearance` varchar(200) NOT NULL,
  `expiry_date` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`security_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_security_level`
--

LOCK TABLES `ultimatehr_employee_security_level` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_security_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_security_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_shift`
--

DROP TABLE IF EXISTS `ultimatehr_employee_shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_shift` (
  `emp_shift_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `shift_id` int(111) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`emp_shift_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_shift`
--

LOCK TABLES `ultimatehr_employee_shift` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_shift` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_terminations`
--

DROP TABLE IF EXISTS `ultimatehr_employee_terminations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_terminations` (
  `termination_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `terminated_by` int(111) NOT NULL,
  `termination_type_id` int(111) NOT NULL,
  `termination_date` varchar(255) NOT NULL,
  `notice_date` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`termination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_terminations`
--

LOCK TABLES `ultimatehr_employee_terminations` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_terminations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_terminations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_transfer`
--

DROP TABLE IF EXISTS `ultimatehr_employee_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_transfer` (
  `transfer_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `transfer_date` varchar(255) NOT NULL,
  `transfer_department` int(111) NOT NULL,
  `transfer_location` int(111) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`transfer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_transfer`
--

LOCK TABLES `ultimatehr_employee_transfer` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_travels`
--

DROP TABLE IF EXISTS `ultimatehr_employee_travels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_travels` (
  `travel_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `visit_purpose` varchar(255) NOT NULL,
  `visit_place` varchar(255) NOT NULL,
  `travel_mode` int(111) DEFAULT NULL,
  `arrangement_type` int(111) DEFAULT NULL,
  `expected_budget` varchar(255) NOT NULL,
  `actual_budget` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`travel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_travels`
--

LOCK TABLES `ultimatehr_employee_travels` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_travels` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_travels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_warnings`
--

DROP TABLE IF EXISTS `ultimatehr_employee_warnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_warnings` (
  `warning_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `warning_to` int(111) NOT NULL,
  `warning_by` int(111) NOT NULL,
  `warning_date` varchar(255) NOT NULL,
  `warning_type_id` int(111) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_warnings`
--

LOCK TABLES `ultimatehr_employee_warnings` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_warnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employee_work_experience`
--

DROP TABLE IF EXISTS `ultimatehr_employee_work_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employee_work_experience` (
  `work_experience_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`work_experience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employee_work_experience`
--

LOCK TABLES `ultimatehr_employee_work_experience` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employee_work_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_employee_work_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_employees`
--

DROP TABLE IF EXISTS `ultimatehr_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_employees` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) NOT NULL,
  `office_shift_id` int(111) NOT NULL,
  `reports_to` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pincode` int(11) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date_of_birth` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `e_status` int(11) NOT NULL,
  `user_role_id` int(100) NOT NULL,
  `department_id` int(100) NOT NULL,
  `sub_department_id` int(11) NOT NULL,
  `designation_id` int(100) NOT NULL,
  `company_id` int(111) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `view_companies_id` varchar(255) NOT NULL,
  `salary_template` varchar(255) NOT NULL,
  `hourly_grade_id` int(111) NOT NULL,
  `monthly_grade_id` int(111) NOT NULL,
  `date_of_joining` varchar(200) NOT NULL,
  `date_of_leaving` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `wages_type` int(11) NOT NULL,
  `basic_salary` varchar(200) NOT NULL DEFAULT '0',
  `daily_wages` varchar(200) NOT NULL DEFAULT '0',
  `salary_ssempee` varchar(200) NOT NULL DEFAULT '0',
  `salary_ssempeer` varchar(200) DEFAULT '0',
  `salary_income_tax` varchar(200) NOT NULL DEFAULT '0',
  `salary_overtime` varchar(200) NOT NULL DEFAULT '0',
  `salary_commission` varchar(200) NOT NULL DEFAULT '0',
  `salary_claims` varchar(200) NOT NULL DEFAULT '0',
  `salary_paid_leave` varchar(200) NOT NULL DEFAULT '0',
  `salary_director_fees` varchar(200) NOT NULL DEFAULT '0',
  `salary_bonus` varchar(200) NOT NULL DEFAULT '0',
  `salary_advance_paid` varchar(200) NOT NULL DEFAULT '0',
  `address` mediumtext NOT NULL,
  `state` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `zipcode` varchar(200) NOT NULL,
  `profile_picture` mediumtext NOT NULL,
  `profile_background` mediumtext NOT NULL,
  `resume` mediumtext NOT NULL,
  `skype_id` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `facebook_link` mediumtext NOT NULL,
  `twitter_link` mediumtext NOT NULL,
  `blogger_link` mediumtext NOT NULL,
  `linkdedin_link` mediumtext NOT NULL,
  `google_plus_link` mediumtext NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `pinterest_link` varchar(255) NOT NULL,
  `youtube_link` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `last_login_date` varchar(255) NOT NULL,
  `last_logout_date` varchar(255) NOT NULL,
  `last_login_ip` varchar(255) NOT NULL,
  `is_logged_in` int(111) NOT NULL,
  `online_status` int(111) NOT NULL,
  `fixed_header` varchar(150) NOT NULL,
  `compact_sidebar` varchar(150) NOT NULL,
  `boxed_wrapper` varchar(150) NOT NULL,
  `leave_categories` varchar(255) NOT NULL DEFAULT '0',
  `ethnicity_type` int(11) NOT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `nationality_id` int(11) NOT NULL,
  `citizenship_id` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_employees`
--

LOCK TABLES `ultimatehr_employees` WRITE;
/*!40000 ALTER TABLE `ultimatehr_employees` DISABLE KEYS */;
INSERT INTO `ultimatehr_employees` VALUES (1,'fionagrace',1,0,'Fiona','Grace','fionagrace','fionagrace@gmail.com',0,'$2y$12$shA/jAqdaiuod7JBJSXryOmvmy50gBY8VmvMmu9gVDSQ1ODNa/d6e','2018-03-28','Male',0,1,2,0,10,1,1,'0','monthly',0,0,'2018-02-01','','Single','',1,'1000','0','8','17','10','0','1','2','3','0','0','0','Test Address','','','','profile_1546421723.png','profile_background_1519924152.jpg','','','12345678900','','','','','','','','',1,'28-07-2019 01:58:28','09-08-2019 08:25:59','::1',0,1,'fixed_layout_hrsale','','','0,1,2',0,NULL,0,0,'2018-02-28 05:30:44'),(5,'jsmith12',1,0,'Jhon','Smith','jhonsmith','jsmt12@hrsale.com',0,'$2y$12$zjBiQwIQG7vmgGeq935iqOCDiQVREZgA3VsN44YderDI5YoXKkWdi','2018-03-31','Male',0,2,2,10,10,1,0,'','monthly',0,0,'2018-03-02','','Single','',1,'1000','0','0','0','0','0','0','0','0','0','0','0','jsmt12','','','','','','','','1232','','','','','','','','',1,'17-04-2019 08:42:32','26-03-2019 07:31:01','::1',1,1,'','','','0,1,2',0,NULL,0,0,'2018-03-18 01:10:04');
/*!40000 ALTER TABLE `ultimatehr_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_ethnicity_type`
--

DROP TABLE IF EXISTS `ultimatehr_ethnicity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_ethnicity_type` (
  `ethnicity_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`ethnicity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_ethnicity_type`
--

LOCK TABLES `ultimatehr_ethnicity_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_ethnicity_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_ethnicity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_events`
--

DROP TABLE IF EXISTS `ultimatehr_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `event_title` varchar(255) NOT NULL,
  `event_date` varchar(255) NOT NULL,
  `event_time` varchar(255) NOT NULL,
  `event_note` mediumtext NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_events`
--

LOCK TABLES `ultimatehr_events` WRITE;
/*!40000 ALTER TABLE `ultimatehr_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_expense_type`
--

DROP TABLE IF EXISTS `ultimatehr_expense_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_expense_type` (
  `expense_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`expense_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_expense_type`
--

LOCK TABLES `ultimatehr_expense_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_expense_type` DISABLE KEYS */;
INSERT INTO `ultimatehr_expense_type` VALUES (1,1,'Supplies',1,'22-03-2018 01:17:42'),(2,1,'Utility',1,'22-03-2018 01:17:48');
/*!40000 ALTER TABLE `ultimatehr_expense_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_expenses`
--

DROP TABLE IF EXISTS `ultimatehr_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_expenses` (
  `expense_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(200) NOT NULL,
  `company_id` int(11) NOT NULL,
  `expense_type_id` int(200) NOT NULL,
  `billcopy_file` mediumtext NOT NULL,
  `amount` varchar(200) NOT NULL,
  `purchase_date` varchar(200) NOT NULL,
  `remarks` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `status_remarks` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_expenses`
--

LOCK TABLES `ultimatehr_expenses` WRITE;
/*!40000 ALTER TABLE `ultimatehr_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_file_manager`
--

DROP TABLE IF EXISTS `ultimatehr_file_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_file_manager` (
  `file_id` int(111) NOT NULL AUTO_INCREMENT,
  `user_id` int(111) NOT NULL,
  `department_id` int(111) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `file_extension` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_file_manager`
--

LOCK TABLES `ultimatehr_file_manager` WRITE;
/*!40000 ALTER TABLE `ultimatehr_file_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_file_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_file_manager_settings`
--

DROP TABLE IF EXISTS `ultimatehr_file_manager_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_file_manager_settings` (
  `setting_id` int(111) NOT NULL AUTO_INCREMENT,
  `allowed_extensions` mediumtext NOT NULL,
  `maximum_file_size` varchar(255) NOT NULL,
  `is_enable_all_files` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_file_manager_settings`
--

LOCK TABLES `ultimatehr_file_manager_settings` WRITE;
/*!40000 ALTER TABLE `ultimatehr_file_manager_settings` DISABLE KEYS */;
INSERT INTO `ultimatehr_file_manager_settings` VALUES (1,'gif,png,pdf,txt,doc,docx','10','','2019-09-30 03:13:58');
/*!40000 ALTER TABLE `ultimatehr_file_manager_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_finance_bankcash`
--

DROP TABLE IF EXISTS `ultimatehr_finance_bankcash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_finance_bankcash` (
  `bankcash_id` int(111) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL,
  `account_balance` varchar(255) NOT NULL,
  `account_opening_balance` varchar(200) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `branch_code` varchar(255) NOT NULL,
  `bank_branch` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`bankcash_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_finance_bankcash`
--

LOCK TABLES `ultimatehr_finance_bankcash` WRITE;
/*!40000 ALTER TABLE `ultimatehr_finance_bankcash` DISABLE KEYS */;
INSERT INTO `ultimatehr_finance_bankcash` VALUES (1,'AlRajhi Bank','10000000','10000000','123456789','00966','Riyadh Branch','23-06-2020 01:23:16');
/*!40000 ALTER TABLE `ultimatehr_finance_bankcash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_finance_deposit`
--

DROP TABLE IF EXISTS `ultimatehr_finance_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_finance_deposit` (
  `deposit_id` int(111) NOT NULL AUTO_INCREMENT,
  `account_type_id` int(111) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `deposit_date` varchar(255) NOT NULL,
  `category_id` int(111) NOT NULL,
  `payer_id` int(111) NOT NULL,
  `payment_method` int(111) NOT NULL,
  `deposit_reference` varchar(255) NOT NULL,
  `deposit_file` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`deposit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_finance_deposit`
--

LOCK TABLES `ultimatehr_finance_deposit` WRITE;
/*!40000 ALTER TABLE `ultimatehr_finance_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_finance_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_finance_expense`
--

DROP TABLE IF EXISTS `ultimatehr_finance_expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_finance_expense` (
  `expense_id` int(111) NOT NULL AUTO_INCREMENT,
  `account_type_id` int(111) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `expense_date` varchar(255) NOT NULL,
  `category_id` int(111) NOT NULL,
  `payee_id` int(111) NOT NULL,
  `payment_method` int(111) NOT NULL,
  `expense_reference` varchar(255) NOT NULL,
  `expense_file` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_finance_expense`
--

LOCK TABLES `ultimatehr_finance_expense` WRITE;
/*!40000 ALTER TABLE `ultimatehr_finance_expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_finance_expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_finance_payees`
--

DROP TABLE IF EXISTS `ultimatehr_finance_payees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_finance_payees` (
  `payee_id` int(11) NOT NULL AUTO_INCREMENT,
  `payee_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`payee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_finance_payees`
--

LOCK TABLES `ultimatehr_finance_payees` WRITE;
/*!40000 ALTER TABLE `ultimatehr_finance_payees` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_finance_payees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_finance_payers`
--

DROP TABLE IF EXISTS `ultimatehr_finance_payers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_finance_payers` (
  `payer_id` int(11) NOT NULL AUTO_INCREMENT,
  `payer_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`payer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_finance_payers`
--

LOCK TABLES `ultimatehr_finance_payers` WRITE;
/*!40000 ALTER TABLE `ultimatehr_finance_payers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_finance_payers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_finance_transaction`
--

DROP TABLE IF EXISTS `ultimatehr_finance_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_finance_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `transaction_date` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `amount` float NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `dr_cr` enum('dr','cr') NOT NULL,
  `transaction_cat_id` int(11) NOT NULL,
  `payer_payee_id` int(11) NOT NULL,
  `payee_option` int(11) DEFAULT NULL,
  `payment_method_id` int(11) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `invoice_type` varchar(100) DEFAULT NULL,
  `attachment_file` varchar(100) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_finance_transaction`
--

LOCK TABLES `ultimatehr_finance_transaction` WRITE;
/*!40000 ALTER TABLE `ultimatehr_finance_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_finance_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_finance_transactions`
--

DROP TABLE IF EXISTS `ultimatehr_finance_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_finance_transactions` (
  `transaction_id` int(111) NOT NULL AUTO_INCREMENT,
  `account_type_id` int(111) NOT NULL,
  `deposit_id` int(111) NOT NULL,
  `expense_id` int(111) NOT NULL,
  `transfer_id` int(111) NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `transaction_debit` varchar(255) NOT NULL,
  `transaction_credit` varchar(255) NOT NULL,
  `transaction_date` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_finance_transactions`
--

LOCK TABLES `ultimatehr_finance_transactions` WRITE;
/*!40000 ALTER TABLE `ultimatehr_finance_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_finance_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_finance_transfer`
--

DROP TABLE IF EXISTS `ultimatehr_finance_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_finance_transfer` (
  `transfer_id` int(111) NOT NULL AUTO_INCREMENT,
  `from_account_id` int(111) NOT NULL,
  `to_account_id` int(111) NOT NULL,
  `transfer_date` varchar(255) NOT NULL,
  `transfer_amount` varchar(255) NOT NULL,
  `payment_method` varchar(111) NOT NULL,
  `transfer_reference` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`transfer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_finance_transfer`
--

LOCK TABLES `ultimatehr_finance_transfer` WRITE;
/*!40000 ALTER TABLE `ultimatehr_finance_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_finance_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_goal_tracking`
--

DROP TABLE IF EXISTS `ultimatehr_goal_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_goal_tracking` (
  `tracking_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `tracking_type_id` int(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `target_achiement` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `goal_progress` varchar(200) NOT NULL,
  `goal_status` int(11) NOT NULL DEFAULT '0',
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`tracking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_goal_tracking`
--

LOCK TABLES `ultimatehr_goal_tracking` WRITE;
/*!40000 ALTER TABLE `ultimatehr_goal_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_goal_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_goal_tracking_type`
--

DROP TABLE IF EXISTS `ultimatehr_goal_tracking_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_goal_tracking_type` (
  `tracking_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`tracking_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_goal_tracking_type`
--

LOCK TABLES `ultimatehr_goal_tracking_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_goal_tracking_type` DISABLE KEYS */;
INSERT INTO `ultimatehr_goal_tracking_type` VALUES (1,1,'Invoice Goal','31-08-2018 01:29:44'),(4,1,'Event Goal','31-08-2018 01:29:47');
/*!40000 ALTER TABLE `ultimatehr_goal_tracking_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_holidays`
--

DROP TABLE IF EXISTS `ultimatehr_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_holidays` (
  `holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `is_publish` tinyint(1) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`holiday_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_holidays`
--

LOCK TABLES `ultimatehr_holidays` WRITE;
/*!40000 ALTER TABLE `ultimatehr_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_hourly_templates`
--

DROP TABLE IF EXISTS `ultimatehr_hourly_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_hourly_templates` (
  `hourly_rate_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `hourly_grade` varchar(255) NOT NULL,
  `hourly_rate` varchar(255) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`hourly_rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_hourly_templates`
--

LOCK TABLES `ultimatehr_hourly_templates` WRITE;
/*!40000 ALTER TABLE `ultimatehr_hourly_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_hourly_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_hrsale_invoices`
--

DROP TABLE IF EXISTS `ultimatehr_hrsale_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_hrsale_invoices` (
  `invoice_id` int(111) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(255) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(111) NOT NULL,
  `invoice_date` varchar(255) NOT NULL,
  `invoice_due_date` varchar(255) NOT NULL,
  `sub_total_amount` varchar(255) NOT NULL,
  `discount_type` varchar(11) NOT NULL,
  `discount_figure` varchar(255) NOT NULL,
  `total_tax` varchar(255) NOT NULL,
  `total_discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `invoice_note` mediumtext NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT 'null',
  `company_name` varchar(200) NOT NULL DEFAULT 'null',
  `client_profile` varchar(200) NOT NULL DEFAULT 'null',
  `email` varchar(200) NOT NULL DEFAULT 'null',
  `contact_number` varchar(200) NOT NULL DEFAULT 'null',
  `website_url` varchar(200) NOT NULL DEFAULT 'null',
  `address_1` text NOT NULL,
  `address_2` text NOT NULL,
  `city` varchar(200) NOT NULL DEFAULT 'null',
  `state` varchar(200) NOT NULL DEFAULT 'null',
  `zipcode` varchar(200) NOT NULL DEFAULT 'null',
  `countryid` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_hrsale_invoices`
--

LOCK TABLES `ultimatehr_hrsale_invoices` WRITE;
/*!40000 ALTER TABLE `ultimatehr_hrsale_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_hrsale_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_hrsale_invoices_items`
--

DROP TABLE IF EXISTS `ultimatehr_hrsale_invoices_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_hrsale_invoices_items` (
  `invoice_item_id` int(111) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(111) NOT NULL,
  `project_id` int(111) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_tax_type` varchar(255) NOT NULL,
  `item_tax_rate` varchar(255) NOT NULL,
  `item_qty` varchar(255) NOT NULL,
  `item_unit_price` varchar(255) NOT NULL,
  `item_sub_total` varchar(255) NOT NULL,
  `sub_total_amount` varchar(255) NOT NULL,
  `total_tax` varchar(255) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_figure` varchar(255) NOT NULL,
  `total_discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`invoice_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_hrsale_invoices_items`
--

LOCK TABLES `ultimatehr_hrsale_invoices_items` WRITE;
/*!40000 ALTER TABLE `ultimatehr_hrsale_invoices_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_hrsale_invoices_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_hrsale_module_attributes`
--

DROP TABLE IF EXISTS `ultimatehr_hrsale_module_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_hrsale_module_attributes` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `attribute_label` varchar(255) NOT NULL,
  `attribute_type` varchar(255) NOT NULL,
  `validation` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_hrsale_module_attributes`
--

LOCK TABLES `ultimatehr_hrsale_module_attributes` WRITE;
/*!40000 ALTER TABLE `ultimatehr_hrsale_module_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_hrsale_module_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_hrsale_module_attributes_select_value`
--

DROP TABLE IF EXISTS `ultimatehr_hrsale_module_attributes_select_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_hrsale_module_attributes_select_value` (
  `attributes_select_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `select_label` varchar(255) NOT NULL,
  PRIMARY KEY (`attributes_select_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_hrsale_module_attributes_select_value`
--

LOCK TABLES `ultimatehr_hrsale_module_attributes_select_value` WRITE;
/*!40000 ALTER TABLE `ultimatehr_hrsale_module_attributes_select_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_hrsale_module_attributes_select_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_hrsale_module_attributes_values`
--

DROP TABLE IF EXISTS `ultimatehr_hrsale_module_attributes_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_hrsale_module_attributes_values` (
  `attributes_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `module_attributes_id` int(11) NOT NULL,
  `attribute_value` text NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`attributes_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_hrsale_module_attributes_values`
--

LOCK TABLES `ultimatehr_hrsale_module_attributes_values` WRITE;
/*!40000 ALTER TABLE `ultimatehr_hrsale_module_attributes_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_hrsale_module_attributes_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_hrsale_notificaions`
--

DROP TABLE IF EXISTS `ultimatehr_hrsale_notificaions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_hrsale_notificaions` (
  `notificaion_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) NOT NULL,
  `module_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `is_notify` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`notificaion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_hrsale_notificaions`
--

LOCK TABLES `ultimatehr_hrsale_notificaions` WRITE;
/*!40000 ALTER TABLE `ultimatehr_hrsale_notificaions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_hrsale_notificaions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_hrsale_quotes`
--

DROP TABLE IF EXISTS `ultimatehr_hrsale_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_hrsale_quotes` (
  `quote_id` int(111) NOT NULL AUTO_INCREMENT,
  `quote_number` varchar(255) NOT NULL,
  `project_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `quote_date` varchar(255) NOT NULL,
  `quote_due_date` varchar(255) NOT NULL,
  `client_id` int(11) NOT NULL,
  `sub_total_amount` varchar(255) NOT NULL,
  `discount_type` varchar(11) NOT NULL,
  `discount_figure` varchar(255) NOT NULL,
  `total_tax` varchar(255) NOT NULL,
  `tax_type` varchar(100) NOT NULL,
  `tax_figure` varchar(255) NOT NULL,
  `total_discount` varchar(255) NOT NULL,
  `quote_type` varchar(100) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `quote_note` mediumtext NOT NULL,
  `name` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `client_profile` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact_number` varchar(200) NOT NULL,
  `website_url` varchar(200) NOT NULL,
  `address_1` text NOT NULL,
  `address_2` text NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `zipcode` varchar(200) NOT NULL,
  `countryid` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_hrsale_quotes`
--

LOCK TABLES `ultimatehr_hrsale_quotes` WRITE;
/*!40000 ALTER TABLE `ultimatehr_hrsale_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_hrsale_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_hrsale_quotes_items`
--

DROP TABLE IF EXISTS `ultimatehr_hrsale_quotes_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_hrsale_quotes_items` (
  `quote_item_id` int(111) NOT NULL AUTO_INCREMENT,
  `quote_id` int(111) NOT NULL,
  `project_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_tax_type` varchar(255) NOT NULL,
  `item_tax_rate` varchar(255) NOT NULL,
  `item_qty` varchar(255) NOT NULL,
  `item_unit_price` varchar(255) NOT NULL,
  `item_sub_total` varchar(255) NOT NULL,
  `sub_total_amount` varchar(255) NOT NULL,
  `total_tax` varchar(255) NOT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_figure` varchar(200) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_figure` varchar(255) NOT NULL,
  `total_discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`quote_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_hrsale_quotes_items`
--

LOCK TABLES `ultimatehr_hrsale_quotes_items` WRITE;
/*!40000 ALTER TABLE `ultimatehr_hrsale_quotes_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_hrsale_quotes_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_income_categories`
--

DROP TABLE IF EXISTS `ultimatehr_income_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_income_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_income_categories`
--

LOCK TABLES `ultimatehr_income_categories` WRITE;
/*!40000 ALTER TABLE `ultimatehr_income_categories` DISABLE KEYS */;
INSERT INTO `ultimatehr_income_categories` VALUES (1,'Envato',1,'25-03-2018 09:36:20'),(2,'Salary',1,'25-03-2018 09:36:28'),(3,'Other Income',1,'25-03-2018 09:36:32'),(4,'Interest Income',1,'25-03-2018 09:36:53'),(5,'Part Time Work',1,'25-03-2018 09:37:13'),(6,'Regular Income',1,'25-03-2018 09:37:17');
/*!40000 ALTER TABLE `ultimatehr_income_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_job_applications`
--

DROP TABLE IF EXISTS `ultimatehr_job_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_job_applications` (
  `application_id` int(111) NOT NULL AUTO_INCREMENT,
  `job_id` int(111) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int(111) NOT NULL,
  `message` mediumtext NOT NULL,
  `job_resume` mediumtext NOT NULL,
  `application_status` int(11) NOT NULL DEFAULT '0',
  `application_remarks` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_job_applications`
--

LOCK TABLES `ultimatehr_job_applications` WRITE;
/*!40000 ALTER TABLE `ultimatehr_job_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_job_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_job_categories`
--

DROP TABLE IF EXISTS `ultimatehr_job_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_job_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_url` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_job_categories`
--

LOCK TABLES `ultimatehr_job_categories` WRITE;
/*!40000 ALTER TABLE `ultimatehr_job_categories` DISABLE KEYS */;
INSERT INTO `ultimatehr_job_categories` VALUES (1,'PHP','q7VJh5xWwr56ycN0mAou4266iOY8l1BbMd6H2D3rkFnjU9LgC','2018-04-15'),(2,'Android','q7VJh5xWwr56ycN0m34Aou4266iOY8l1BbMd6H2D3rkFnjU9LgC','2018-04-15'),(3,'WordPress','q2327VJh5xWwr56ycN0mAou4266iOY8l1BbMd6H2D3rkFnjU9LgC','2018-04-15'),(4,'Design','0oplfq7VJh5xWwr56ycN0mAou4266iOY8l1BbMd6H2D3rkFnjU9LgC','2018-04-15'),(5,'Developer','34e6zyr56ycN0mAou4266iOY8l1BbMd6H2D3rkFnjU9LgC','2018-04-15'),(6,'iOS','l1BbMd6H2D3rkFnjU9LgCq7VJh5xWwr56ycN0mAou4266iOY8','2018-04-15'),(7,'Mobile','l1BbMd6H2D3rkFnjU9LgCH2D3rkFnjU9BbMd6H2D3r','2018-04-15'),(8,'MySQL','2D3rkFnjU9LgCq7VJh5xWwl1BbMd6H2D3rkFnjU9LgCq7VJh5xWwr56ycN0mAou4266iOY8','2018-04-15'),(9,'JavaScript','gCq7VJh5xWwl1BbMd6H2D3rkFnjU9LgCq7VJh5xWwl1BbMd6H2D3rkFnjU9LgCq7VJh5xWwr56ycN0mAou4266iOY8','2018-04-15'),(10,'Software','zyr56ycN0mAou42634e6zyr56ycN0mAou4266iOY8l1BbMd6H2D3rkFnjU9LgC','2018-04-15'),(11,'Website Design','6iOY8l1BbMd6H2D3rkFnjU9LgCzyr56ycN0mAou42634e6zyr56ycN0mAou426','2018-04-15'),(12,'Programming','jU9LgCzyr56ycN0mAou4266iOY8l1BbMd6H2D3rkFn34e6zyr56ycN0mAou426','2018-04-15'),(13,'SEO','cN0mAou4266iOY8l1Bq2327VJh5xWwr56ybMd6H2D3rkFnjU9LgC','2018-04-15'),(14,'Java','VJh5xWwr56ybMd6H2DcN0mAou4266iOY8l1Bq23273rkFnjU9LgC','2018-04-15'),(15,'CSS','VJh5xWwr56ybMd6H2Dsdfkkj58234ksklEr6ybMd6H2D','2018-04-15'),(16,'HTML5','0349324k0434r23ksodfkpsodkfposakfkpww3MsH2Dei30ks','2018-04-15'),(17,'Web Development','sdfj0rkskfskdfj329FLE34LFMsH2Dei30ks0349324k0434','2018-04-15'),(18,'Web Design','MsH2Deiee30ks0349324k0434klEr6ybMd6234b5ksddif0k33','2018-04-15'),(19,'eCommerce','klEr6ybMd6234bMsH2Dei30ks0349324k04345ksddif0k33','2018-04-15'),(20,'Design','234bMsklEr6ybMd6H2Dssdk5yy98ooVJh5xWwr56y435gghhole93lfkkj58','2018-04-15'),(21,'Logo Design','k5yy98ooVJh5xWw45456y435gghhole93lfkkj58234bMsklEr6ybMd6H2D','2018-04-15'),(22,'Graphic Design','k5yy98ooVJh5xWwr56y435gghhole93lfkkj58234bMsklEr6ybMd6H2D','2018-04-15'),(23,'Video','k98ooVJh5xWwr56y435gghhole93lfkkj58234bMsklEr6ybMd6H2D','2018-04-15'),(24,'Animation','ole93lfkkj58234k98ooVJh5xWwr56ybMsklEr6ybMd6H2D','2018-04-15'),(25,'Adobe Photoshop','d6H2Dsdfkkj58234k98ooVJh5xWwr56ybMsklEr6ybMd6H2D','2018-04-15'),(26,'Illustration','xWwr56ybMd6H2DcN0mA3405kfVJh5ou4266iOY8l1Bq23273rkFnjU9LgC','2018-04-15'),(27,'Art','3405kfVJh5ou4266iOY8l1Bq23273rk3ok3xWwr56ybMd6H2DcN0mAFnjU9LgC','2018-04-15'),(28,'3D','Md6H2DcN0mAFnjU9LfVJh5ou4266iOY8l1Bq23273rk3ok3xWwr56ybgC','2018-04-15'),(29,'Adobe Illustrator','5ou4266iOY8l1Bq23273rkMd6H2DcN0mAFnjU9LfVJh3ok3xWwr56ybgCww','2018-04-15'),(30,'Drawing','6iOY8l1Bq23273rk0234KILR23492034ksfpd456yslfdsf5ou426','2018-04-15'),(31,'Web Design','3l34l432fo232l3223DhssdfRKLl5434lsdfl3l3sfs3lllblp23D','2018-04-15'),(32,'Cartoon','sdfowerewl567lflsdfl3l3sf3l34l432fo232l3223Dhs3lllblp23D','2018-04-15'),(33,'Graphics','3232l32hsfo23lllblp23D9LfVJkfo394s5ou42at5sd20cNsolof3llsblp23DcN','2018-04-15'),(34,'Fashion Design','9LfVJkfo394s5ou42at5sd203232l32hsfo23lllblp23DcNsolof3llsblp23DcN','2018-04-15'),(35,'WordPress','hsfo23lllblp23DcNsolof3llsblp23DcN9LfVJkfo394s5ou42','2018-04-15'),(36,'Editing','lof3llsblp23DcN9LfVJhsfo23lllblp23DcNsokfo394s5ou42','2018-04-15'),(37,'Writing','blp23DcNsokfo394slof3llsblp23DcN9LfVJh5ou42','2018-04-15'),(38,'T-Shirt Design','9LfVJh5ou42blp23DcNsdf329LfVJh5ou42bsokjfwpoek0mAFnjU','2018-04-15'),(39,'Display Advertising','9LfVJh5ou42bsokjfwpoek9LfVJh5ou42blp23DcN0mAFnjU','2018-04-15'),(40,'Email Marketing','DcN0mAFnjU9LfVJh5ou42bs66iOY8l1Bq23273rk3ok3xWwr56yMd6H2gC','2018-04-15'),(41,'Lead Generation','66iOY8l1Bq23273rk3ok3xWwr56yMd6H2DcN0mAFnjU9LfVJh5ou42bgC','2018-04-15'),(42,'Market & Customer Research','Aou42Eou42iOY800Ke3klAou42066iOY800fklAou42','2018-04-15'),(43,'Marketing Strategy','EKe3000fklAou4266iOY8l1kkadwlsdfk20323rlsKh4KadlLL','2018-04-15'),(44,'Public Relations','l1kkadwlsdfk20323rlsKh4KadlLLEKe3000fklAou4266iOY8','2018-04-15'),(45,'Telemarketing & Telesales','fklAou4266iOY8l1kkadwlsfBf329k3249owe923ksd324odLL2DcN0m','2018-04-15'),(46,'Other - Sales & Marketing','Bf329k3249owe923ksd324odfklAou4266iOY8l1kkadwlLL2DcN0m','2018-04-15'),(47,'SEM - Search Engine Marketing','Aou4266iOY8l1Bf329k3249owe923ksdkkadwlLL2DcN0m','2018-04-15'),(48,'SEO - Search Engine Optimization','rk0234KILR23492034ksfpd456y6iOY8l1Bq23273slfdsf5ou426','2018-04-15'),(49,'SMM - Social Media Marketing','2DcN0mAou4266iOY8l1BVJh5xWwr56ybMd6Hq23273rkFnjU9LgC','2018-04-15');
/*!40000 ALTER TABLE `ultimatehr_job_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_job_interviews`
--

DROP TABLE IF EXISTS `ultimatehr_job_interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_job_interviews` (
  `job_interview_id` int(111) NOT NULL AUTO_INCREMENT,
  `job_id` int(111) NOT NULL,
  `interviewers_id` varchar(255) NOT NULL,
  `interview_place` varchar(255) NOT NULL,
  `interview_date` varchar(255) NOT NULL,
  `interview_time` varchar(255) NOT NULL,
  `interviewees_id` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`job_interview_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_job_interviews`
--

LOCK TABLES `ultimatehr_job_interviews` WRITE;
/*!40000 ALTER TABLE `ultimatehr_job_interviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_job_interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_job_pages`
--

DROP TABLE IF EXISTS `ultimatehr_job_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_job_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `page_details` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_job_pages`
--

LOCK TABLES `ultimatehr_job_pages` WRITE;
/*!40000 ALTER TABLE `ultimatehr_job_pages` DISABLE KEYS */;
INSERT INTO `ultimatehr_job_pages` VALUES (1,'About Us','xl9wkRy7tqOehBo6YCDjFG2JTucpKI4gMNsn8Zdf','About Ussss','2018-04-15'),(2,'Communications','5uk4EUc3V9FYTbBQz7PWgKM6qCajfAipvhOJnZHl','Communications','2018-04-15'),(3,'Lending Licenses','5r6OCsUoHQFiRwI17W0eT38jbvpxEGuLhzgmt9lZ','Lending Licenses','2018-04-15'),(4,'Terms of Service','QrfbMOUWpdYNxjLFz8G1m6t3wi0X2RKEZVC9ySka','Terms of Service','2018-04-15'),(5,'Privacy Policy','rjHKhmsNezT2OJBAoQq0yU1tL5F34MCwgIiZEc7x','Privacy Policy','2018-04-15'),(6,'Support','gZbBVMxnfzYLlC2AOk609Q7yWpaSjmJHuRXosr58','Support','2018-04-15'),(7,'How It Works','l1BbMd6H2D3rkFnjU9LgCH2D3rkFnjU9BbMd6H2D3r','How It Works','2018-04-15'),(8,'Disclaimers','CTbzS9IrWkNU7VM3HGZYjp6iwmfyXDOQgtsP8FEc','Disclaimers','2018-04-15');
/*!40000 ALTER TABLE `ultimatehr_job_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_job_type`
--

DROP TABLE IF EXISTS `ultimatehr_job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_job_type` (
  `job_type_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `type_url` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`job_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_job_type`
--

LOCK TABLES `ultimatehr_job_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_job_type` DISABLE KEYS */;
INSERT INTO `ultimatehr_job_type` VALUES (1,1,'Full Time','full-time','22-03-2018 02:18:48'),(2,1,'Part Time','part-time','16-04-2018 06:29:45'),(3,1,'Internship','internship','16-04-2018 06:30:06'),(4,1,'Freelance','freelance','16-04-2018 06:30:21');
/*!40000 ALTER TABLE `ultimatehr_job_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_jobs`
--

DROP TABLE IF EXISTS `ultimatehr_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_jobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `employer_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `designation_id` int(111) NOT NULL,
  `job_url` varchar(255) NOT NULL,
  `job_type` int(225) NOT NULL,
  `category_url` varchar(255) NOT NULL,
  `is_featured` int(11) NOT NULL,
  `type_url` varchar(255) NOT NULL,
  `job_vacancy` int(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `minimum_experience` varchar(255) NOT NULL,
  `date_of_closing` varchar(200) NOT NULL,
  `short_description` mediumtext NOT NULL,
  `long_description` mediumtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_jobs`
--

LOCK TABLES `ultimatehr_jobs` WRITE;
/*!40000 ALTER TABLE `ultimatehr_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_kpi_incidental`
--

DROP TABLE IF EXISTS `ultimatehr_kpi_incidental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_kpi_incidental` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `incidental_kpi` text NOT NULL,
  `targeted_date` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `result` varchar(200) NOT NULL,
  `feedback` text NOT NULL,
  `year_created` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_kpi_incidental`
--

LOCK TABLES `ultimatehr_kpi_incidental` WRITE;
/*!40000 ALTER TABLE `ultimatehr_kpi_incidental` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_kpi_incidental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_kpi_maingoals`
--

DROP TABLE IF EXISTS `ultimatehr_kpi_maingoals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_kpi_maingoals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `main_kpi` varchar(255) NOT NULL,
  `year_created` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `approve_status` varchar(100) NOT NULL,
  `q1` varchar(100) NOT NULL,
  `q2` varchar(100) NOT NULL,
  `q3` varchar(100) NOT NULL,
  `q4` varchar(100) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_kpi_maingoals`
--

LOCK TABLES `ultimatehr_kpi_maingoals` WRITE;
/*!40000 ALTER TABLE `ultimatehr_kpi_maingoals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_kpi_maingoals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_kpi_variable`
--

DROP TABLE IF EXISTS `ultimatehr_kpi_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_kpi_variable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `variable_kpi` varchar(200) NOT NULL,
  `targeted_date` varchar(200) NOT NULL,
  `result` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `approve_status` varchar(200) NOT NULL,
  `feedback` text NOT NULL,
  `quarter` varchar(200) NOT NULL,
  `year_created` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_kpi_variable`
--

LOCK TABLES `ultimatehr_kpi_variable` WRITE;
/*!40000 ALTER TABLE `ultimatehr_kpi_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_kpi_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_languages`
--

DROP TABLE IF EXISTS `ultimatehr_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_languages` (
  `language_id` int(111) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(255) NOT NULL,
  `language_code` varchar(255) NOT NULL,
  `language_flag` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_languages`
--

LOCK TABLES `ultimatehr_languages` WRITE;
/*!40000 ALTER TABLE `ultimatehr_languages` DISABLE KEYS */;
INSERT INTO `ultimatehr_languages` VALUES (1,'English','english','language_flag_1520564355.gif',1,''),(4,'Portuguese','portuguese','language_flag_1526420518.gif',1,'16-05-2018 12:41:57'),(5,'Vietnamese','vietnamese','language_flag_1526728529.gif',1,'19-05-2018 02:15:28'),(6,'Spanish','spanish','language_flag_1563906920.gif',1,'23-07-2019 11:35:20'),(7,'Svenska','swedish','language_flag_1564007195.gif',1,'25-07-2019 03:26:35'),(8,'Thailand','thailand','language_flag_1564007402.gif',1,'25-07-2019 03:30:02'),(9,'Indonesian','indonesian','language_flag_1564054894.gif',1,'25-07-2019 04:41:33'),(10,'Italiano','italian','language_flag_1564058198.gif',1,'25-07-2019 05:36:37'),(11,'Deutsch','dutch','language_flag_1564058280.gif',1,'25-07-2019 05:37:59'),(12,'Turkish','turkish','language_flag_1564058565.gif',1,'25-07-2019 05:42:44'),(13,'French','french','language_flag_1564058638.gif',1,'25-07-2019 05:43:58'),(14,'Russian','russian','language_flag_1564058661.gif',1,'25-07-2019 05:44:20'),(15,'Romanian','romanian','language_flag_1564058689.gif',1,'25-07-2019 05:44:49'),(16,'Irish','irish','language_flag_1564171301.gif',1,'27-07-2019 01:01:41'),(17,'Chinese','chinese','language_flag_1592785239.gif',1,'22-06-2020 03:20:38'),(18,'Japanese','japanese','language_flag_1592785267.gif',1,'22-06-2020 03:21:06'),(19,'Arabic','arabic','language_flag_1592785279.gif',1,'22-06-2020 03:21:19');
/*!40000 ALTER TABLE `ultimatehr_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_leads`
--

DROP TABLE IF EXISTS `ultimatehr_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_leads` (
  `client_id` int(111) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `client_username` varchar(255) NOT NULL,
  `client_password` varchar(255) NOT NULL,
  `client_profile` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `is_changed` int(11) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `website_url` varchar(255) NOT NULL,
  `address_1` mediumtext NOT NULL,
  `address_2` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` int(111) NOT NULL,
  `is_active` int(11) NOT NULL,
  `last_logout_date` varchar(255) NOT NULL,
  `last_login_date` varchar(255) NOT NULL,
  `last_login_ip` varchar(255) NOT NULL,
  `is_logged_in` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_leads`
--

LOCK TABLES `ultimatehr_leads` WRITE;
/*!40000 ALTER TABLE `ultimatehr_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_leads_followup`
--

DROP TABLE IF EXISTS `ultimatehr_leads_followup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_leads_followup` (
  `leads_followup_id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_id` int(11) NOT NULL,
  `next_followup` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`leads_followup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_leads_followup`
--

LOCK TABLES `ultimatehr_leads_followup` WRITE;
/*!40000 ALTER TABLE `ultimatehr_leads_followup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_leads_followup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_leave_applications`
--

DROP TABLE IF EXISTS `ultimatehr_leave_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_leave_applications` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(222) NOT NULL,
  `department_id` int(11) NOT NULL,
  `leave_type_id` int(222) NOT NULL,
  `from_date` varchar(200) NOT NULL,
  `to_date` varchar(200) NOT NULL,
  `applied_on` varchar(200) NOT NULL,
  `reason` mediumtext NOT NULL,
  `remarks` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_half_day` tinyint(1) DEFAULT NULL,
  `is_notify` int(11) NOT NULL,
  `leave_attachment` varchar(255) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_leave_applications`
--

LOCK TABLES `ultimatehr_leave_applications` WRITE;
/*!40000 ALTER TABLE `ultimatehr_leave_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_leave_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_leave_type`
--

DROP TABLE IF EXISTS `ultimatehr_leave_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_leave_type` (
  `leave_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type_name` varchar(200) NOT NULL,
  `days_per_year` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`leave_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_leave_type`
--

LOCK TABLES `ultimatehr_leave_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_leave_type` DISABLE KEYS */;
INSERT INTO `ultimatehr_leave_type` VALUES (1,1,'Casual Leave','3',1,'19-03-2018 07:52:20'),(2,1,'Medical','2',1,'19-03-2018 07:52:30');
/*!40000 ALTER TABLE `ultimatehr_leave_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_make_payment`
--

DROP TABLE IF EXISTS `ultimatehr_make_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_make_payment` (
  `make_payment_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `department_id` int(111) NOT NULL,
  `company_id` int(111) NOT NULL,
  `location_id` int(111) NOT NULL,
  `designation_id` int(111) NOT NULL,
  `payment_date` varchar(200) NOT NULL,
  `basic_salary` varchar(255) NOT NULL,
  `payment_amount` varchar(255) NOT NULL,
  `gross_salary` varchar(255) NOT NULL,
  `total_allowances` varchar(255) NOT NULL,
  `total_deductions` varchar(255) NOT NULL,
  `net_salary` varchar(255) NOT NULL,
  `house_rent_allowance` varchar(255) NOT NULL,
  `medical_allowance` varchar(255) NOT NULL,
  `travelling_allowance` varchar(255) NOT NULL,
  `dearness_allowance` varchar(255) NOT NULL,
  `provident_fund` varchar(255) NOT NULL,
  `tax_deduction` varchar(255) NOT NULL,
  `security_deposit` varchar(255) NOT NULL,
  `overtime_rate` varchar(255) NOT NULL,
  `is_advance_salary_deduct` int(11) NOT NULL,
  `advance_salary_amount` varchar(255) NOT NULL,
  `is_payment` tinyint(1) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `hourly_rate` varchar(255) NOT NULL,
  `total_hours_work` varchar(255) NOT NULL,
  `comments` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`make_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_make_payment`
--

LOCK TABLES `ultimatehr_make_payment` WRITE;
/*!40000 ALTER TABLE `ultimatehr_make_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_make_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_meetings`
--

DROP TABLE IF EXISTS `ultimatehr_meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_meetings` (
  `meeting_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `meeting_title` varchar(255) NOT NULL,
  `meeting_date` varchar(255) NOT NULL,
  `meeting_time` varchar(255) NOT NULL,
  `meeting_room` varchar(255) NOT NULL,
  `meeting_note` mediumtext NOT NULL,
  `meeting_color` varchar(200) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_meetings`
--

LOCK TABLES `ultimatehr_meetings` WRITE;
/*!40000 ALTER TABLE `ultimatehr_meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_office_location`
--

DROP TABLE IF EXISTS `ultimatehr_office_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_office_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(111) NOT NULL,
  `location_head` int(111) NOT NULL,
  `location_manager` int(111) NOT NULL,
  `location_name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `address_1` mediumtext NOT NULL,
  `address_2` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` int(111) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_office_location`
--

LOCK TABLES `ultimatehr_office_location` WRITE;
/*!40000 ALTER TABLE `ultimatehr_office_location` DISABLE KEYS */;
INSERT INTO `ultimatehr_office_location` VALUES (1,1,5,0,'Riyadh Branch','mainoffice@hrsale.com','1234567890','1234567890','Address Line 1','Address Line 2','City','State','12345',190,1,'28-02-2018',1);
/*!40000 ALTER TABLE `ultimatehr_office_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_office_shift`
--

DROP TABLE IF EXISTS `ultimatehr_office_shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_office_shift` (
  `office_shift_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `shift_name` varchar(255) NOT NULL,
  `default_shift` int(111) NOT NULL,
  `monday_in_time` varchar(222) NOT NULL,
  `monday_out_time` varchar(222) NOT NULL,
  `tuesday_in_time` varchar(222) NOT NULL,
  `tuesday_out_time` varchar(222) NOT NULL,
  `wednesday_in_time` varchar(222) NOT NULL,
  `wednesday_out_time` varchar(222) NOT NULL,
  `thursday_in_time` varchar(222) NOT NULL,
  `thursday_out_time` varchar(222) NOT NULL,
  `friday_in_time` varchar(222) NOT NULL,
  `friday_out_time` varchar(222) NOT NULL,
  `saturday_in_time` varchar(222) NOT NULL,
  `saturday_out_time` varchar(222) NOT NULL,
  `sunday_in_time` varchar(222) NOT NULL,
  `sunday_out_time` varchar(222) NOT NULL,
  `created_at` varchar(222) NOT NULL,
  PRIMARY KEY (`office_shift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_office_shift`
--

LOCK TABLES `ultimatehr_office_shift` WRITE;
/*!40000 ALTER TABLE `ultimatehr_office_shift` DISABLE KEYS */;
INSERT INTO `ultimatehr_office_shift` VALUES (1,1,'Morning Shift',1,'08:00','18:00','03:00','18:00','08:00','18:00','08:00','18:00','08:00','18:00','','','','','2018-02-28');
/*!40000 ALTER TABLE `ultimatehr_office_shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_payment_method`
--

DROP TABLE IF EXISTS `ultimatehr_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_payment_method` (
  `payment_method_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `payment_percentage` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_payment_method`
--

LOCK TABLES `ultimatehr_payment_method` WRITE;
/*!40000 ALTER TABLE `ultimatehr_payment_method` DISABLE KEYS */;
INSERT INTO `ultimatehr_payment_method` VALUES (1,1,'Cash','30','','23-04-2018 05:13:52'),(2,1,'Paypal','40','1','12-08-2018 02:18:50'),(3,1,'Bank','30','1231232','12-08-2018 02:18:57');
/*!40000 ALTER TABLE `ultimatehr_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_payroll_custom_fields`
--

DROP TABLE IF EXISTS `ultimatehr_payroll_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_payroll_custom_fields` (
  `payroll_custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `allow_custom_1` varchar(255) NOT NULL,
  `is_active_allow_1` int(11) NOT NULL,
  `allow_custom_2` varchar(255) NOT NULL,
  `is_active_allow_2` int(11) NOT NULL,
  `allow_custom_3` varchar(255) NOT NULL,
  `is_active_allow_3` int(11) NOT NULL,
  `allow_custom_4` varchar(255) NOT NULL,
  `is_active_allow_4` int(11) NOT NULL,
  `allow_custom_5` varchar(255) NOT NULL,
  `is_active_allow_5` int(111) NOT NULL,
  `deduct_custom_1` varchar(255) NOT NULL,
  `is_active_deduct_1` int(11) NOT NULL,
  `deduct_custom_2` varchar(255) NOT NULL,
  `is_active_deduct_2` int(11) NOT NULL,
  `deduct_custom_3` varchar(255) NOT NULL,
  `is_active_deduct_3` int(11) NOT NULL,
  `deduct_custom_4` varchar(255) NOT NULL,
  `is_active_deduct_4` int(11) NOT NULL,
  `deduct_custom_5` varchar(255) NOT NULL,
  `is_active_deduct_5` int(11) NOT NULL,
  PRIMARY KEY (`payroll_custom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_payroll_custom_fields`
--

LOCK TABLES `ultimatehr_payroll_custom_fields` WRITE;
/*!40000 ALTER TABLE `ultimatehr_payroll_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_payroll_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_performance_appraisal`
--

DROP TABLE IF EXISTS `ultimatehr_performance_appraisal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_performance_appraisal` (
  `performance_appraisal_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `appraisal_year_month` varchar(255) NOT NULL,
  `customer_experience` int(111) NOT NULL,
  `marketing` int(111) NOT NULL,
  `management` int(111) NOT NULL,
  `administration` int(111) NOT NULL,
  `presentation_skill` int(111) NOT NULL,
  `quality_of_work` int(111) NOT NULL,
  `efficiency` int(111) NOT NULL,
  `integrity` int(111) NOT NULL,
  `professionalism` int(111) NOT NULL,
  `team_work` int(111) NOT NULL,
  `critical_thinking` int(111) NOT NULL,
  `conflict_management` int(111) NOT NULL,
  `attendance` int(111) NOT NULL,
  `ability_to_meet_deadline` int(111) NOT NULL,
  `remarks` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`performance_appraisal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_performance_appraisal`
--

LOCK TABLES `ultimatehr_performance_appraisal` WRITE;
/*!40000 ALTER TABLE `ultimatehr_performance_appraisal` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_performance_appraisal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_performance_appraisal_options`
--

DROP TABLE IF EXISTS `ultimatehr_performance_appraisal_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_performance_appraisal_options` (
  `performance_appraisal_options_id` int(11) NOT NULL AUTO_INCREMENT,
  `appraisal_id` int(11) NOT NULL,
  `appraisal_type` varchar(200) NOT NULL,
  `appraisal_option_id` int(11) NOT NULL,
  `appraisal_option_value` int(11) NOT NULL,
  PRIMARY KEY (`performance_appraisal_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_performance_appraisal_options`
--

LOCK TABLES `ultimatehr_performance_appraisal_options` WRITE;
/*!40000 ALTER TABLE `ultimatehr_performance_appraisal_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_performance_appraisal_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_performance_indicator`
--

DROP TABLE IF EXISTS `ultimatehr_performance_indicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_performance_indicator` (
  `performance_indicator_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `designation_id` int(111) NOT NULL,
  `customer_experience` int(111) NOT NULL,
  `marketing` int(111) NOT NULL,
  `management` int(111) NOT NULL,
  `administration` int(111) NOT NULL,
  `presentation_skill` int(111) NOT NULL,
  `quality_of_work` int(111) NOT NULL,
  `efficiency` int(111) NOT NULL,
  `integrity` int(111) NOT NULL,
  `professionalism` int(111) NOT NULL,
  `team_work` int(111) NOT NULL,
  `critical_thinking` int(111) NOT NULL,
  `conflict_management` int(111) NOT NULL,
  `attendance` int(111) NOT NULL,
  `ability_to_meet_deadline` int(111) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`performance_indicator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_performance_indicator`
--

LOCK TABLES `ultimatehr_performance_indicator` WRITE;
/*!40000 ALTER TABLE `ultimatehr_performance_indicator` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_performance_indicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_performance_indicator_options`
--

DROP TABLE IF EXISTS `ultimatehr_performance_indicator_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_performance_indicator_options` (
  `performance_indicator_options_id` int(11) NOT NULL AUTO_INCREMENT,
  `indicator_id` int(11) NOT NULL,
  `indicator_type` varchar(200) NOT NULL,
  `indicator_option_id` int(11) NOT NULL,
  `indicator_option_value` int(11) NOT NULL,
  PRIMARY KEY (`performance_indicator_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_performance_indicator_options`
--

LOCK TABLES `ultimatehr_performance_indicator_options` WRITE;
/*!40000 ALTER TABLE `ultimatehr_performance_indicator_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_performance_indicator_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_project_variations`
--

DROP TABLE IF EXISTS `ultimatehr_project_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_project_variations` (
  `variation_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `project_id` int(111) NOT NULL,
  `created_by` int(111) NOT NULL,
  `variation_name` varchar(255) NOT NULL,
  `variation_no` varchar(255) NOT NULL,
  `assigned_to` varchar(255) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `variation_hours` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `variation_status` int(5) NOT NULL,
  `client_approval` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`variation_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_project_variations`
--

LOCK TABLES `ultimatehr_project_variations` WRITE;
/*!40000 ALTER TABLE `ultimatehr_project_variations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_project_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_projects`
--

DROP TABLE IF EXISTS `ultimatehr_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_projects` (
  `project_id` int(111) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `client_id` int(100) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `company_id` varchar(255) DEFAULT NULL,
  `assigned_to` mediumtext NOT NULL,
  `priority` varchar(255) NOT NULL,
  `project_no` varchar(255) DEFAULT NULL,
  `phase_no` varchar(200) DEFAULT NULL,
  `purchase_no` varchar(200) DEFAULT NULL,
  `budget_hours` varchar(255) DEFAULT NULL,
  `summary` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `project_progress` varchar(255) NOT NULL,
  `project_note` longtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  `is_notify` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_projects`
--

LOCK TABLES `ultimatehr_projects` WRITE;
/*!40000 ALTER TABLE `ultimatehr_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_projects_attachment`
--

DROP TABLE IF EXISTS `ultimatehr_projects_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_projects_attachment` (
  `project_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(200) NOT NULL,
  `upload_by` int(255) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_description` mediumtext NOT NULL,
  `attachment_file` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`project_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_projects_attachment`
--

LOCK TABLES `ultimatehr_projects_attachment` WRITE;
/*!40000 ALTER TABLE `ultimatehr_projects_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_projects_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_projects_bugs`
--

DROP TABLE IF EXISTS `ultimatehr_projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_projects_bugs` (
  `bug_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(111) NOT NULL,
  `user_id` int(200) NOT NULL,
  `attachment_file` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_projects_bugs`
--

LOCK TABLES `ultimatehr_projects_bugs` WRITE;
/*!40000 ALTER TABLE `ultimatehr_projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_projects_discussion`
--

DROP TABLE IF EXISTS `ultimatehr_projects_discussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_projects_discussion` (
  `discussion_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(111) NOT NULL,
  `user_id` int(200) NOT NULL,
  `client_id` int(11) NOT NULL,
  `attachment_file` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`discussion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_projects_discussion`
--

LOCK TABLES `ultimatehr_projects_discussion` WRITE;
/*!40000 ALTER TABLE `ultimatehr_projects_discussion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_projects_discussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_projects_timelogs`
--

DROP TABLE IF EXISTS `ultimatehr_projects_timelogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_projects_timelogs` (
  `timelogs_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `total_hours` varchar(255) NOT NULL,
  `timelogs_memo` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`timelogs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_projects_timelogs`
--

LOCK TABLES `ultimatehr_projects_timelogs` WRITE;
/*!40000 ALTER TABLE `ultimatehr_projects_timelogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_projects_timelogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_qualification_education_level`
--

DROP TABLE IF EXISTS `ultimatehr_qualification_education_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_qualification_education_level` (
  `education_level_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`education_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_qualification_education_level`
--

LOCK TABLES `ultimatehr_qualification_education_level` WRITE;
/*!40000 ALTER TABLE `ultimatehr_qualification_education_level` DISABLE KEYS */;
INSERT INTO `ultimatehr_qualification_education_level` VALUES (1,1,'High School Diploma / GED','09-05-2018 03:11:59');
/*!40000 ALTER TABLE `ultimatehr_qualification_education_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_qualification_language`
--

DROP TABLE IF EXISTS `ultimatehr_qualification_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_qualification_language` (
  `language_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_qualification_language`
--

LOCK TABLES `ultimatehr_qualification_language` WRITE;
/*!40000 ALTER TABLE `ultimatehr_qualification_language` DISABLE KEYS */;
INSERT INTO `ultimatehr_qualification_language` VALUES (1,1,'English','09-05-2018 03:12:03');
/*!40000 ALTER TABLE `ultimatehr_qualification_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_qualification_skill`
--

DROP TABLE IF EXISTS `ultimatehr_qualification_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_qualification_skill` (
  `skill_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_qualification_skill`
--

LOCK TABLES `ultimatehr_qualification_skill` WRITE;
/*!40000 ALTER TABLE `ultimatehr_qualification_skill` DISABLE KEYS */;
INSERT INTO `ultimatehr_qualification_skill` VALUES (1,1,'jQuery','09-05-2018 03:12:08');
/*!40000 ALTER TABLE `ultimatehr_qualification_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_quoted_projects`
--

DROP TABLE IF EXISTS `ultimatehr_quoted_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_quoted_projects` (
  `project_id` int(111) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `client_id` int(100) NOT NULL,
  `estimate_date` varchar(255) NOT NULL,
  `company_id` varchar(255) DEFAULT NULL,
  `assigned_to` mediumtext NOT NULL,
  `priority` varchar(255) NOT NULL,
  `project_no` varchar(255) DEFAULT NULL,
  `phase_no` varchar(200) DEFAULT NULL,
  `estimate_hrs` varchar(255) DEFAULT NULL,
  `summary` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `project_progress` varchar(255) NOT NULL,
  `project_note` longtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  `is_notify` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_quoted_projects`
--

LOCK TABLES `ultimatehr_quoted_projects` WRITE;
/*!40000 ALTER TABLE `ultimatehr_quoted_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_quoted_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_quoted_projects_attachment`
--

DROP TABLE IF EXISTS `ultimatehr_quoted_projects_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_quoted_projects_attachment` (
  `project_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(200) NOT NULL,
  `upload_by` int(255) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_description` mediumtext NOT NULL,
  `attachment_file` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`project_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_quoted_projects_attachment`
--

LOCK TABLES `ultimatehr_quoted_projects_attachment` WRITE;
/*!40000 ALTER TABLE `ultimatehr_quoted_projects_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_quoted_projects_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_quoted_projects_discussion`
--

DROP TABLE IF EXISTS `ultimatehr_quoted_projects_discussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_quoted_projects_discussion` (
  `discussion_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(111) NOT NULL,
  `user_id` int(200) NOT NULL,
  `client_id` int(11) NOT NULL,
  `attachment_file` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`discussion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_quoted_projects_discussion`
--

LOCK TABLES `ultimatehr_quoted_projects_discussion` WRITE;
/*!40000 ALTER TABLE `ultimatehr_quoted_projects_discussion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_quoted_projects_discussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_quoted_projects_timelogs`
--

DROP TABLE IF EXISTS `ultimatehr_quoted_projects_timelogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_quoted_projects_timelogs` (
  `timelogs_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `total_hours` varchar(255) NOT NULL,
  `timelogs_memo` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`timelogs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_quoted_projects_timelogs`
--

LOCK TABLES `ultimatehr_quoted_projects_timelogs` WRITE;
/*!40000 ALTER TABLE `ultimatehr_quoted_projects_timelogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_quoted_projects_timelogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_recruitment_pages`
--

DROP TABLE IF EXISTS `ultimatehr_recruitment_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_recruitment_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL,
  `page_details` mediumtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_recruitment_pages`
--

LOCK TABLES `ultimatehr_recruitment_pages` WRITE;
/*!40000 ALTER TABLE `ultimatehr_recruitment_pages` DISABLE KEYS */;
INSERT INTO `ultimatehr_recruitment_pages` VALUES (1,'Pages','Nulla dignissim gravida\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \n\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.',1,''),(2,'About Us','Nulla dignissim gravida\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \n\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.',1,''),(3,'Career Services','Career Services',1,''),(4,'Success Stories','Success Stories',1,'');
/*!40000 ALTER TABLE `ultimatehr_recruitment_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_recruitment_subpages`
--

DROP TABLE IF EXISTS `ultimatehr_recruitment_subpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_recruitment_subpages` (
  `subpages_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `sub_page_title` varchar(255) NOT NULL,
  `sub_page_details` mediumtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`subpages_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_recruitment_subpages`
--

LOCK TABLES `ultimatehr_recruitment_subpages` WRITE;
/*!40000 ALTER TABLE `ultimatehr_recruitment_subpages` DISABLE KEYS */;
INSERT INTO `ultimatehr_recruitment_subpages` VALUES (1,1,'Sub Menu 1','Nulla dignissim gravida\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \r\n\r\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.',1,''),(2,1,'Sub Menu 2','Nulla dignissim gravida\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \r\n\r\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.',1,''),(3,1,'Sub Menu 3','Nulla dignissim gravida\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \r\n\r\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.',1,''),(4,1,'Sub Menu 4','Nulla dignissim gravida\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \r\n\r\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.',1,''),(5,1,'Sub Menu 5','Nulla dignissim gravida\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \r\n\r\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.',1,''),(6,1,'Sub Menu 6','Nulla dignissim gravida\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \r\n\r\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.',1,'');
/*!40000 ALTER TABLE `ultimatehr_recruitment_subpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_allowances`
--

DROP TABLE IF EXISTS `ultimatehr_salary_allowances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_allowances` (
  `allowance_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `is_allowance_taxable` int(11) NOT NULL,
  `allowance_title` varchar(200) DEFAULT NULL,
  `allowance_amount` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`allowance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_allowances`
--

LOCK TABLES `ultimatehr_salary_allowances` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_allowances` DISABLE KEYS */;
INSERT INTO `ultimatehr_salary_allowances` VALUES (1,1,0,'Cost of Living Allowance','100',NULL),(2,1,0,'Housing Allowance','200',NULL),(3,1,0,'Market Adjustment','200',NULL),(4,1,0,'Meal Allowance','100',NULL),(5,1,0,'Transportation Allowance','200',NULL);
/*!40000 ALTER TABLE `ultimatehr_salary_allowances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_bank_allocation`
--

DROP TABLE IF EXISTS `ultimatehr_salary_bank_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_bank_allocation` (
  `bank_allocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `pay_percent` varchar(200) NOT NULL,
  `acc_number` varchar(200) NOT NULL,
  PRIMARY KEY (`bank_allocation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_bank_allocation`
--

LOCK TABLES `ultimatehr_salary_bank_allocation` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_bank_allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_bank_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_commissions`
--

DROP TABLE IF EXISTS `ultimatehr_salary_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_commissions` (
  `salary_commissions_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `commission_title` varchar(200) DEFAULT NULL,
  `commission_amount` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`salary_commissions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_commissions`
--

LOCK TABLES `ultimatehr_salary_commissions` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_loan_deductions`
--

DROP TABLE IF EXISTS `ultimatehr_salary_loan_deductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_loan_deductions` (
  `loan_deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `loan_options` int(11) NOT NULL,
  `loan_deduction_title` varchar(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `monthly_installment` varchar(200) NOT NULL,
  `loan_time` varchar(200) NOT NULL,
  `loan_deduction_amount` varchar(200) NOT NULL,
  `total_paid` varchar(200) NOT NULL,
  `reason` text NOT NULL,
  `status` int(11) NOT NULL,
  `is_deducted_from_salary` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`loan_deduction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_loan_deductions`
--

LOCK TABLES `ultimatehr_salary_loan_deductions` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_loan_deductions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_loan_deductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_other_payments`
--

DROP TABLE IF EXISTS `ultimatehr_salary_other_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_other_payments` (
  `other_payments_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `payments_title` varchar(200) DEFAULT NULL,
  `payments_amount` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`other_payments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_other_payments`
--

LOCK TABLES `ultimatehr_salary_other_payments` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_other_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_other_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_overtime`
--

DROP TABLE IF EXISTS `ultimatehr_salary_overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_overtime` (
  `salary_overtime_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `overtime_type` varchar(200) NOT NULL,
  `no_of_days` varchar(100) NOT NULL DEFAULT '0',
  `overtime_hours` varchar(100) NOT NULL DEFAULT '0',
  `overtime_rate` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salary_overtime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_overtime`
--

LOCK TABLES `ultimatehr_salary_overtime` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_overtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_overtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_payslip_allowances`
--

DROP TABLE IF EXISTS `ultimatehr_salary_payslip_allowances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_payslip_allowances` (
  `payslip_allowances_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `allowance_title` varchar(200) NOT NULL,
  `allowance_amount` varchar(200) NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_allowances_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_payslip_allowances`
--

LOCK TABLES `ultimatehr_salary_payslip_allowances` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_payslip_allowances` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_payslip_allowances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_payslip_commissions`
--

DROP TABLE IF EXISTS `ultimatehr_salary_payslip_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_payslip_commissions` (
  `payslip_commissions_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `commission_title` varchar(200) NOT NULL,
  `commission_amount` varchar(200) NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_commissions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_payslip_commissions`
--

LOCK TABLES `ultimatehr_salary_payslip_commissions` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_payslip_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_payslip_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_payslip_loan`
--

DROP TABLE IF EXISTS `ultimatehr_salary_payslip_loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_payslip_loan` (
  `payslip_loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `loan_title` varchar(200) NOT NULL,
  `loan_amount` varchar(200) NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_payslip_loan`
--

LOCK TABLES `ultimatehr_salary_payslip_loan` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_payslip_loan` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_payslip_loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_payslip_other_payments`
--

DROP TABLE IF EXISTS `ultimatehr_salary_payslip_other_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_payslip_other_payments` (
  `payslip_other_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `payments_title` varchar(200) NOT NULL,
  `payments_amount` varchar(200) NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_other_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_payslip_other_payments`
--

LOCK TABLES `ultimatehr_salary_payslip_other_payments` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_payslip_other_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_payslip_other_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_payslip_overtime`
--

DROP TABLE IF EXISTS `ultimatehr_salary_payslip_overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_payslip_overtime` (
  `payslip_overtime_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `overtime_title` varchar(200) NOT NULL,
  `overtime_salary_month` varchar(200) NOT NULL,
  `overtime_no_of_days` varchar(200) NOT NULL,
  `overtime_hours` varchar(200) NOT NULL,
  `overtime_rate` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_overtime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_payslip_overtime`
--

LOCK TABLES `ultimatehr_salary_payslip_overtime` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_payslip_overtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_payslip_overtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_payslip_statutory_deductions`
--

DROP TABLE IF EXISTS `ultimatehr_salary_payslip_statutory_deductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_payslip_statutory_deductions` (
  `payslip_deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `deduction_title` varchar(200) NOT NULL,
  `deduction_amount` varchar(200) NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_deduction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_payslip_statutory_deductions`
--

LOCK TABLES `ultimatehr_salary_payslip_statutory_deductions` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_payslip_statutory_deductions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_payslip_statutory_deductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_payslips`
--

DROP TABLE IF EXISTS `ultimatehr_salary_payslips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_payslips` (
  `payslip_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_key` varchar(200) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `wages_type` int(11) NOT NULL,
  `payslip_type` varchar(50) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `daily_wages` varchar(200) NOT NULL,
  `is_half_monthly_payroll` tinyint(1) NOT NULL,
  `hours_worked` varchar(50) NOT NULL DEFAULT '0',
  `total_allowances` varchar(200) NOT NULL,
  `total_commissions` varchar(200) NOT NULL,
  `total_statutory_deductions` varchar(200) NOT NULL,
  `total_other_payments` varchar(200) NOT NULL,
  `total_loan` varchar(200) NOT NULL,
  `total_overtime` varchar(200) NOT NULL,
  `saudi_gosi_percent` varchar(200) NOT NULL,
  `saudi_gosi_amount` varchar(200) NOT NULL,
  `statutory_deductions` varchar(200) NOT NULL,
  `net_salary` varchar(200) NOT NULL,
  `grand_net_salary` varchar(200) NOT NULL,
  `other_payment` varchar(200) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `pay_comments` mediumtext NOT NULL,
  `is_payment` int(11) NOT NULL,
  `year_to_date` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_payslips`
--

LOCK TABLES `ultimatehr_salary_payslips` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_payslips` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_payslips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_statutory_deductions`
--

DROP TABLE IF EXISTS `ultimatehr_salary_statutory_deductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_statutory_deductions` (
  `statutory_deductions_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `statutory_options` int(11) NOT NULL,
  `deduction_title` varchar(200) DEFAULT NULL,
  `deduction_amount` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`statutory_deductions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_statutory_deductions`
--

LOCK TABLES `ultimatehr_salary_statutory_deductions` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_statutory_deductions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_salary_statutory_deductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_salary_templates`
--

DROP TABLE IF EXISTS `ultimatehr_salary_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_salary_templates` (
  `salary_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `salary_grades` varchar(255) NOT NULL,
  `basic_salary` varchar(255) NOT NULL,
  `overtime_rate` varchar(255) NOT NULL,
  `house_rent_allowance` varchar(255) NOT NULL,
  `medical_allowance` varchar(255) NOT NULL,
  `travelling_allowance` varchar(255) NOT NULL,
  `dearness_allowance` varchar(255) NOT NULL,
  `security_deposit` varchar(255) NOT NULL,
  `provident_fund` varchar(255) NOT NULL,
  `tax_deduction` varchar(255) NOT NULL,
  `gross_salary` varchar(255) NOT NULL,
  `total_allowance` varchar(255) NOT NULL,
  `total_deduction` varchar(255) NOT NULL,
  `net_salary` varchar(255) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`salary_template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_salary_templates`
--

LOCK TABLES `ultimatehr_salary_templates` WRITE;
/*!40000 ALTER TABLE `ultimatehr_salary_templates` DISABLE KEYS */;
INSERT INTO `ultimatehr_salary_templates` VALUES (1,1,'Monthly','2500','','50','60','70','80','40','20','30','2760','260','90','2670',1,'22-03-2018 01:40:06');
/*!40000 ALTER TABLE `ultimatehr_salary_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_security_level`
--

DROP TABLE IF EXISTS `ultimatehr_security_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_security_level` (
  `type_id` int(111) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_security_level`
--

LOCK TABLES `ultimatehr_security_level` WRITE;
/*!40000 ALTER TABLE `ultimatehr_security_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_security_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_sub_departments`
--

DROP TABLE IF EXISTS `ultimatehr_sub_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_sub_departments` (
  `sub_department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`sub_department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_sub_departments`
--

LOCK TABLES `ultimatehr_sub_departments` WRITE;
/*!40000 ALTER TABLE `ultimatehr_sub_departments` DISABLE KEYS */;
INSERT INTO `ultimatehr_sub_departments` VALUES (8,1,'Manager','2019-02-15 00:22:13'),(9,1,'Lead Manager','2019-02-15 00:22:21'),(10,2,'Accountant','2019-02-15 00:22:26');
/*!40000 ALTER TABLE `ultimatehr_sub_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_support_ticket_files`
--

DROP TABLE IF EXISTS `ultimatehr_support_ticket_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_support_ticket_files` (
  `ticket_file_id` int(111) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(111) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `ticket_files` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`ticket_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_support_ticket_files`
--

LOCK TABLES `ultimatehr_support_ticket_files` WRITE;
/*!40000 ALTER TABLE `ultimatehr_support_ticket_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_support_ticket_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_support_tickets`
--

DROP TABLE IF EXISTS `ultimatehr_support_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_support_tickets` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `ticket_code` varchar(200) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `ticket_priority` varchar(255) NOT NULL,
  `department_id` int(111) NOT NULL,
  `assigned_to` mediumtext NOT NULL,
  `message` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `ticket_remarks` mediumtext NOT NULL,
  `ticket_status` varchar(200) NOT NULL,
  `ticket_note` mediumtext NOT NULL,
  `is_notify` int(11) NOT NULL,
  `ticket_image` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_support_tickets`
--

LOCK TABLES `ultimatehr_support_tickets` WRITE;
/*!40000 ALTER TABLE `ultimatehr_support_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_support_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_support_tickets_employees`
--

DROP TABLE IF EXISTS `ultimatehr_support_tickets_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_support_tickets_employees` (
  `tickets_employees_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `is_notify` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`tickets_employees_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_support_tickets_employees`
--

LOCK TABLES `ultimatehr_support_tickets_employees` WRITE;
/*!40000 ALTER TABLE `ultimatehr_support_tickets_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_support_tickets_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_system_setting`
--

DROP TABLE IF EXISTS `ultimatehr_system_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_system_setting` (
  `setting_id` int(111) NOT NULL AUTO_INCREMENT,
  `application_name` varchar(255) NOT NULL,
  `default_currency` varchar(255) NOT NULL,
  `default_currency_id` int(11) NOT NULL,
  `default_currency_symbol` varchar(255) NOT NULL,
  `show_currency` varchar(255) NOT NULL,
  `currency_position` varchar(255) NOT NULL,
  `notification_position` varchar(255) NOT NULL,
  `notification_close_btn` varchar(255) NOT NULL,
  `notification_bar` varchar(255) NOT NULL,
  `enable_registration` varchar(255) NOT NULL,
  `login_with` varchar(255) NOT NULL,
  `date_format_xi` varchar(255) NOT NULL,
  `employee_manage_own_contact` varchar(255) NOT NULL,
  `employee_manage_own_profile` varchar(255) NOT NULL,
  `employee_manage_own_qualification` varchar(255) NOT NULL,
  `employee_manage_own_work_experience` varchar(255) NOT NULL,
  `employee_manage_own_document` varchar(255) NOT NULL,
  `employee_manage_own_picture` varchar(255) NOT NULL,
  `employee_manage_own_social` varchar(255) NOT NULL,
  `employee_manage_own_bank_account` varchar(255) NOT NULL,
  `enable_attendance` varchar(255) NOT NULL,
  `enable_clock_in_btn` varchar(255) NOT NULL,
  `enable_email_notification` varchar(255) NOT NULL,
  `payroll_include_day_summary` varchar(255) NOT NULL,
  `payroll_include_hour_summary` varchar(255) NOT NULL,
  `payroll_include_leave_summary` varchar(255) NOT NULL,
  `enable_job_application_candidates` varchar(255) NOT NULL,
  `job_logo` varchar(255) NOT NULL,
  `payroll_logo` varchar(255) NOT NULL,
  `is_payslip_password_generate` int(11) NOT NULL,
  `payslip_password_format` varchar(255) NOT NULL,
  `enable_profile_background` varchar(255) NOT NULL,
  `enable_policy_link` varchar(255) NOT NULL,
  `enable_layout` varchar(255) NOT NULL,
  `job_application_format` mediumtext NOT NULL,
  `technical_competencies` text,
  `organizational_competencies` text,
  `performance_option` varchar(255) DEFAULT NULL,
  `project_email` varchar(255) NOT NULL,
  `holiday_email` varchar(255) NOT NULL,
  `leave_email` varchar(255) NOT NULL,
  `payslip_email` varchar(255) NOT NULL,
  `award_email` varchar(255) NOT NULL,
  `recruitment_email` varchar(255) NOT NULL,
  `announcement_email` varchar(255) NOT NULL,
  `training_email` varchar(255) NOT NULL,
  `task_email` varchar(255) NOT NULL,
  `compact_sidebar` varchar(255) NOT NULL,
  `fixed_header` varchar(255) NOT NULL,
  `fixed_sidebar` varchar(255) NOT NULL,
  `boxed_wrapper` varchar(255) NOT NULL,
  `layout_static` varchar(255) NOT NULL,
  `system_skin` varchar(255) NOT NULL,
  `animation_effect` varchar(255) NOT NULL,
  `animation_effect_modal` varchar(255) NOT NULL,
  `animation_effect_topmenu` varchar(255) NOT NULL,
  `footer_text` varchar(255) NOT NULL,
  `is_ssl_available` varchar(50) NOT NULL,
  `is_active_sub_departments` varchar(10) NOT NULL,
  `default_language` varchar(200) NOT NULL,
  `statutory_fixed` varchar(100) NOT NULL,
  `system_timezone` varchar(200) NOT NULL,
  `system_ip_address` varchar(255) NOT NULL,
  `system_ip_restriction` varchar(200) NOT NULL,
  `google_maps_api_key` mediumtext NOT NULL,
  `module_recruitment` varchar(100) NOT NULL,
  `module_travel` varchar(100) NOT NULL,
  `module_performance` varchar(100) NOT NULL,
  `module_payroll` varchar(10) NOT NULL,
  `module_files` varchar(100) NOT NULL,
  `module_awards` varchar(100) NOT NULL,
  `module_training` varchar(100) NOT NULL,
  `module_inquiry` varchar(100) NOT NULL,
  `module_language` varchar(100) NOT NULL,
  `module_orgchart` varchar(100) NOT NULL,
  `module_accounting` varchar(111) NOT NULL,
  `module_events` varchar(100) NOT NULL,
  `module_goal_tracking` varchar(100) NOT NULL,
  `module_assets` varchar(100) NOT NULL,
  `module_projects_tasks` varchar(100) NOT NULL,
  `module_chat_box` varchar(100) NOT NULL,
  `enable_page_rendered` varchar(255) NOT NULL,
  `enable_current_year` varchar(255) NOT NULL,
  `employee_login_id` varchar(200) NOT NULL,
  `paypal_email` varchar(100) NOT NULL,
  `paypal_sandbox` varchar(10) NOT NULL,
  `paypal_active` varchar(10) NOT NULL,
  `stripe_secret_key` varchar(200) NOT NULL,
  `stripe_publishable_key` varchar(200) NOT NULL,
  `stripe_active` varchar(10) NOT NULL,
  `online_payment_account` int(11) NOT NULL,
  `is_half_monthly` tinyint(1) NOT NULL,
  `half_deduct_month` tinyint(1) NOT NULL,
  `invoice_terms_condition` text,
  `estimate_terms_condition` text,
  `show_projects` int(11) NOT NULL DEFAULT '0',
  `show_tasks` int(11) NOT NULL DEFAULT '0',
  `enable_saudi_gosi` int(11) NOT NULL DEFAULT '0',
  `staff_dashboard` int(11) DEFAULT NULL,
  `project_dashboard` int(11) DEFAULT NULL,
  `enable_auth_background` varchar(11) NOT NULL,
  `hr_version` varchar(200) NOT NULL,
  `hr_release_date` varchar(100) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_system_setting`
--

LOCK TABLES `ultimatehr_system_setting` WRITE;
/*!40000 ALTER TABLE `ultimatehr_system_setting` DISABLE KEYS */;
INSERT INTO `ultimatehr_system_setting` VALUES (1,'HRSALE','USD - $',1,'USD - $','symbol','Prefix','toast-top-center','true','true','no','username','M-d-Y','yes','yes','yes','yes','yes','yes','yes','yes','yes','','yes','yes','yes','yes','1','job_logo_1520612591.png','payroll_logo_1534786335.jpg',0,'employee_id','yes','yes','yes','doc,docx,pdf','Customer Experience,Marketing,Administration','Professionalism,Integrity,Attendance','both','yes','yes','yes','yes','yes','yes','yes','yes','yes','sidebar_layout_hrsale','','fixed-sidebar','boxed_layout_hrsale','','skin-default','fadeInDown','tada','tada','hrsale','','','english','','Asia/Riyadh','::1','','AIzaSyB3gP8H3eypotNeoEtezbRiF_f8Zh_p4ck','true','true','yes','yes','true','true','true','true','true','true','true','true','true','true','true','true','','yes','username','hrsalesoft-facilitator@gmail.com','yes','yes','sk_test_2XEyr1hQFGByITfQjSwFqNtm','pk_test_zVFISCqeQPnniD0ywHBHikMd','yes',1,0,1,NULL,NULL,0,0,0,NULL,NULL,'yes','1.0.3','2018-03-28','2018-03-28 04:27:32');
/*!40000 ALTER TABLE `ultimatehr_system_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_task_categories`
--

DROP TABLE IF EXISTS `ultimatehr_task_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_task_categories` (
  `task_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`task_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_task_categories`
--

LOCK TABLES `ultimatehr_task_categories` WRITE;
/*!40000 ALTER TABLE `ultimatehr_task_categories` DISABLE KEYS */;
INSERT INTO `ultimatehr_task_categories` VALUES (5,'Modelling','17-12-2019 10:44:48'),(6,'Fabrication drawings','17-12-2019 10:44:55'),(7,'Erection drawings','17-12-2019 10:45:01'),(8,'As built drawings','17-12-2019 10:45:06'),(9,'R & D and RFI Related','17-12-2019 10:45:12'),(10,'Checking','17-12-2019 10:45:22');
/*!40000 ALTER TABLE `ultimatehr_task_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_tasks`
--

DROP TABLE IF EXISTS `ultimatehr_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_tasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `project_id` int(111) NOT NULL,
  `created_by` int(111) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `assigned_to` varchar(255) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `task_hour` varchar(200) NOT NULL,
  `task_progress` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `task_status` int(5) NOT NULL,
  `task_note` mediumtext NOT NULL,
  `is_notify` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_tasks`
--

LOCK TABLES `ultimatehr_tasks` WRITE;
/*!40000 ALTER TABLE `ultimatehr_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_tasks_attachment`
--

DROP TABLE IF EXISTS `ultimatehr_tasks_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_tasks_attachment` (
  `task_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(200) NOT NULL,
  `upload_by` int(255) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_description` mediumtext NOT NULL,
  `attachment_file` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`task_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_tasks_attachment`
--

LOCK TABLES `ultimatehr_tasks_attachment` WRITE;
/*!40000 ALTER TABLE `ultimatehr_tasks_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_tasks_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_tasks_comments`
--

DROP TABLE IF EXISTS `ultimatehr_tasks_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_tasks_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `task_comments` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_tasks_comments`
--

LOCK TABLES `ultimatehr_tasks_comments` WRITE;
/*!40000 ALTER TABLE `ultimatehr_tasks_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_tasks_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_tax_types`
--

DROP TABLE IF EXISTS `ultimatehr_tax_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_tax_types` (
  `tax_id` int(111) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_tax_types`
--

LOCK TABLES `ultimatehr_tax_types` WRITE;
/*!40000 ALTER TABLE `ultimatehr_tax_types` DISABLE KEYS */;
INSERT INTO `ultimatehr_tax_types` VALUES (1,'No Tax','0','fixed','test','25-05-2018'),(2,'IVU','2','fixed','test','25-05-2018'),(3,'VAT','5','percentage','testttt','25-05-2018');
/*!40000 ALTER TABLE `ultimatehr_tax_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_termination_type`
--

DROP TABLE IF EXISTS `ultimatehr_termination_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_termination_type` (
  `termination_type_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`termination_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_termination_type`
--

LOCK TABLES `ultimatehr_termination_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_termination_type` DISABLE KEYS */;
INSERT INTO `ultimatehr_termination_type` VALUES (1,1,'Voluntary Termination','22-03-2018 01:38:41');
/*!40000 ALTER TABLE `ultimatehr_termination_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_theme_settings`
--

DROP TABLE IF EXISTS `ultimatehr_theme_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_theme_settings` (
  `theme_settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `fixed_layout` varchar(200) NOT NULL,
  `fixed_footer` varchar(200) NOT NULL,
  `boxed_layout` varchar(200) NOT NULL,
  `page_header` varchar(200) NOT NULL,
  `footer_layout` varchar(200) NOT NULL,
  `statistics_cards` varchar(200) NOT NULL,
  `animation_style` varchar(100) NOT NULL,
  `theme_option` varchar(100) NOT NULL,
  `dashboard_option` varchar(100) NOT NULL,
  `dashboard_calendar` varchar(100) NOT NULL,
  `login_page_options` varchar(100) NOT NULL,
  `sub_menu_icons` varchar(100) NOT NULL,
  `statistics_cards_background` varchar(200) NOT NULL,
  `employee_cards` varchar(200) NOT NULL,
  `card_border_color` varchar(200) NOT NULL,
  `compact_menu` varchar(200) NOT NULL,
  `flipped_menu` varchar(200) NOT NULL,
  `right_side_icons` varchar(200) NOT NULL,
  `bordered_menu` varchar(200) NOT NULL,
  `form_design` varchar(200) NOT NULL,
  `is_semi_dark` int(11) NOT NULL,
  `semi_dark_color` varchar(200) NOT NULL,
  `top_nav_dark_color` varchar(200) NOT NULL,
  `menu_color_option` varchar(200) NOT NULL,
  `export_orgchart` varchar(100) NOT NULL,
  `export_file_title` mediumtext NOT NULL,
  `org_chart_layout` varchar(200) NOT NULL,
  `org_chart_zoom` varchar(100) NOT NULL,
  `org_chart_pan` varchar(100) NOT NULL,
  `login_page_text` text NOT NULL,
  PRIMARY KEY (`theme_settings_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_theme_settings`
--

LOCK TABLES `ultimatehr_theme_settings` WRITE;
/*!40000 ALTER TABLE `ultimatehr_theme_settings` DISABLE KEYS */;
INSERT INTO `ultimatehr_theme_settings` VALUES (1,'false','true','false','breadcrumb-transparent','footer-light','4','fadeInDown','template_1','dashboard_1','true','login_page_2','fa-check-circle-o','','','','true','false','false','false','basic_form',1,'bg-primary','bg-blue-grey','menu-dark','true','HRSALE','t2b','true','true','');
/*!40000 ALTER TABLE `ultimatehr_theme_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_tickets_attachment`
--

DROP TABLE IF EXISTS `ultimatehr_tickets_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_tickets_attachment` (
  `ticket_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(200) NOT NULL,
  `upload_by` int(255) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_description` mediumtext NOT NULL,
  `attachment_file` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`ticket_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_tickets_attachment`
--

LOCK TABLES `ultimatehr_tickets_attachment` WRITE;
/*!40000 ALTER TABLE `ultimatehr_tickets_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_tickets_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_tickets_comments`
--

DROP TABLE IF EXISTS `ultimatehr_tickets_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_tickets_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `ticket_comments` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_tickets_comments`
--

LOCK TABLES `ultimatehr_tickets_comments` WRITE;
/*!40000 ALTER TABLE `ultimatehr_tickets_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_tickets_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_trainers`
--

DROP TABLE IF EXISTS `ultimatehr_trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_trainers` (
  `trainer_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `designation_id` int(111) NOT NULL,
  `expertise` mediumtext NOT NULL,
  `address` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_trainers`
--

LOCK TABLES `ultimatehr_trainers` WRITE;
/*!40000 ALTER TABLE `ultimatehr_trainers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_trainers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_training`
--

DROP TABLE IF EXISTS `ultimatehr_training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_training` (
  `training_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `training_type_id` int(200) NOT NULL,
  `trainer_option` int(11) NOT NULL,
  `trainer_id` int(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `finish_date` varchar(200) NOT NULL,
  `training_cost` varchar(200) NOT NULL,
  `training_status` int(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `performance` varchar(200) NOT NULL,
  `remarks` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_training`
--

LOCK TABLES `ultimatehr_training` WRITE;
/*!40000 ALTER TABLE `ultimatehr_training` DISABLE KEYS */;
/*!40000 ALTER TABLE `ultimatehr_training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_training_types`
--

DROP TABLE IF EXISTS `ultimatehr_training_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_training_types` (
  `training_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`training_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_training_types`
--

LOCK TABLES `ultimatehr_training_types` WRITE;
/*!40000 ALTER TABLE `ultimatehr_training_types` DISABLE KEYS */;
INSERT INTO `ultimatehr_training_types` VALUES (1,1,'Job Training','19-03-2018 06:45:47',1),(2,1,'Workshop','19-03-2018 06:45:51',1);
/*!40000 ALTER TABLE `ultimatehr_training_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_travel_arrangement_type`
--

DROP TABLE IF EXISTS `ultimatehr_travel_arrangement_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_travel_arrangement_type` (
  `arrangement_type_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`arrangement_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_travel_arrangement_type`
--

LOCK TABLES `ultimatehr_travel_arrangement_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_travel_arrangement_type` DISABLE KEYS */;
INSERT INTO `ultimatehr_travel_arrangement_type` VALUES (1,1,'Corporation',1,'19-03-2018 08:45:17'),(2,1,'Guest House',1,'19-03-2018 08:45:27');
/*!40000 ALTER TABLE `ultimatehr_travel_arrangement_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_user_roles`
--

DROP TABLE IF EXISTS `ultimatehr_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_user_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `role_name` varchar(200) NOT NULL,
  `role_access` varchar(200) NOT NULL,
  `role_resources` text NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_user_roles`
--

LOCK TABLES `ultimatehr_user_roles` WRITE;
/*!40000 ALTER TABLE `ultimatehr_user_roles` DISABLE KEYS */;
INSERT INTO `ultimatehr_user_roles` VALUES (1,1,'Super Admin','1','0,103,13,13,201,202,203,372,373,393,393,394,395,396,422,351,421,88,23,23,204,205,206,231,400,22,445,465,12,14,14,207,208,209,232,15,15,210,211,212,233,16,16,213,214,215,234,406,407,408,17,17,216,217,218,235,18,18,219,220,221,236,19,19,222,223,224,237,20,20,225,226,227,238,21,21,228,229,230,239,2,3,3,240,241,242,4,4,243,244,245,249,5,5,246,247,248,6,6,250,251,252,11,11,254,255,256,257,9,9,258,259,260,96,442,24,25,25,262,263,264,265,26,26,266,267,268,97,98,98,269,270,271,272,99,99,273,274,275,276,27,28,28,397,423,10,10,253,261,29,29,381,30,30,277,278,279,310,401,401,402,403,31,7,7,280,281,282,2822,311,8,8,283,284,285,46,46,287,288,289,290,48,49,49,291,292,293,50,51,51,294,295,387,52,296,32,36,36,313,314,404,405,40,41,41,298,299,300,301,42,42,302,303,304,305,43,43,306,307,308,309,104,44,44,315,316,317,318,312,90,91,94,424,425,45,45,319,320,321,322,122,122,331,332,333,106,107,107,334,335,336,108,108,338,339,340,47,53,54,54,341,342,343,344,55,55,345,346,347,56,56,348,349,350,57,60,61,62,63,93,118,297,431,432,433,434,435,436,437,438,439,440,441,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,71,286,72,72,352,353,354,73,74,75,75,355,356,357,76,76,358,359,360,77,77,361,362,363,78,37,37,391,79,80,80,364,365,366,81,81,367,368,369,82,83,84,85,86,87,119,119,323,324,325,326,410,411,412,413,414,420,415,416,417,418,419,121,121,120,328,329,330,426,427,428,429,430,89,89,370,371,95,92,443,444,446,110,111,112,113,114,115,116,117,409','28-02-2018'),(2,1,'Employee','2','0,445,465,14,207,208,15,210,211,16,213,214,17,216,217,19,222,223,224,20,225,226,227,11,254,255,9,258,259,25,262,263,97,98,98,269,270,271,272,99,99,273,274,275,276,28,10,261,29,401,402,8,283,46,46,287,288,289,290,50,43,306,307,44,315,316,317,312,90,91,94,424,425,45,319,320,321,106,107,107,334,335,336,108,108,338,339,340,47,54,341,342,343,55,55,345,346,347,75,355,356,76,358,359,37,95,92,446','21-03-2018');
/*!40000 ALTER TABLE `ultimatehr_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_users`
--

DROP TABLE IF EXISTS `ultimatehr_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_role` varchar(30) NOT NULL DEFAULT 'administrator',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_logo` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_photo` varchar(255) NOT NULL,
  `profile_background` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address_1` text NOT NULL,
  `address_2` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` int(11) NOT NULL,
  `last_login_date` varchar(255) NOT NULL,
  `last_login_ip` varchar(255) NOT NULL,
  `is_logged_in` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_users`
--

LOCK TABLES `ultimatehr_users` WRITE;
/*!40000 ALTER TABLE `ultimatehr_users` DISABLE KEYS */;
INSERT INTO `ultimatehr_users` VALUES (1,'administrator','Thomas','Fleming','','',2,'test1@test.com','admin','test123','user_1520720863.jpg','profile_background_1505458640.jpg','12333332','Male','Address Line 1','Address Line 2','City','State','12345',230,'15-04-2018 07:36:12','::1',0,1,'14-09-2017 10:02:54'),(2,'administrator','Main','Office','','',2,'test@test.com','test','test123','user_1523821315.jpg','','1234567890','Male','Address Line 1','Address Line 2','City','State','11461',190,'23-04-2018 05:34:47','::1',0,1,'15-04-2018 06:13:08'),(4,'administrator','Fiona','Grace','HRSALE','employer_1524025572.jpg',1,'employer@test.com','','test123','','','1234567890','Male','Address Line 1','Address Line 2','City','State','11461',190,'23-04-2018 05:34:54','::1',0,1,'18-04-2018 07:26:12');
/*!40000 ALTER TABLE `ultimatehr_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ultimatehr_warning_type`
--

DROP TABLE IF EXISTS `ultimatehr_warning_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ultimatehr_warning_type` (
  `warning_type_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`warning_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ultimatehr_warning_type`
--

LOCK TABLES `ultimatehr_warning_type` WRITE;
/*!40000 ALTER TABLE `ultimatehr_warning_type` DISABLE KEYS */;
INSERT INTO `ultimatehr_warning_type` VALUES (1,1,'First Written Warning','22-03-2018 01:38:02');
/*!40000 ALTER TABLE `ultimatehr_warning_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:15:55
