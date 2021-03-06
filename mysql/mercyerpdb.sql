-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: mercyerpdb
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
-- Table structure for table `about_widget`
--

DROP TABLE IF EXISTS `about_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_widget` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_widget`
--

LOCK TABLES `about_widget` WRITE;
/*!40000 ALTER TABLE `about_widget` DISABLE KEYS */;
INSERT INTO `about_widget` VALUES (1,'Wire something about your company','on',NULL,NULL);
/*!40000 ALTER TABLE `about_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Cash','2017-10-18 06:34:07','0000-00-00 00:00:00'),(2,'RahimVai','2017-10-18 06:34:07','0000-00-00 00:00:00'),(3,'Admin','2017-10-18 07:29:57','0000-00-00 00:00:00'),(4,'Parner','2017-10-18 07:29:57','0000-00-00 00:00:00'),(6,'admin','2017-10-18 02:49:47','2017-10-18 02:49:47'),(7,'abir vai','2017-10-18 02:50:06','2017-10-18 02:50:06'),(8,'Boss','2017-10-18 03:00:37','2017-10-18 03:00:37'),(9,'Ridoy','2017-10-18 03:35:51','2017-10-18 03:35:51'),(10,'Ridoy','2017-10-18 03:35:56','2017-10-18 03:35:56'),(11,'Piyal','2017-10-18 03:42:30','2017-10-18 03:42:30');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `admin_password_resets_email_index` (`email`),
  KEY `admin_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_password_resets`
--

LOCK TABLES `admin_password_resets` WRITE;
/*!40000 ALTER TABLE `admin_password_resets` DISABLE KEYS */;
INSERT INTO `admin_password_resets` VALUES ('pranto101201@gmail.com','$2y$10$bKGrX7/KrxIffj27HVRH0eveqm6pZn4iBuxUwFIvP7fwtdYKX60wq','2018-01-02 05:25:31');
/*!40000 ALTER TABLE `admin_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','support@thesoftking.com','$2y$10$ojlQWqauqmVVwnAR2GOv/OsT69vJqdQ2ToK8Qw.d1O3SJiCUfBno.','RcCXEDZVRIMQjduT5p3caB6fEB4upjwdhrpo3SAv2KJLfZFRT098NKEW7NQ1',NULL,'2018-01-24 22:54:33');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisements`
--

DROP TABLE IF EXISTS `advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `add_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisements`
--

LOCK TABLES `advertisements` WRITE;
/*!40000 ALTER TABLE `advertisements` DISABLE KEYS */;
INSERT INTO `advertisements` VALUES (1,'enter adsense code here','2017-10-12 06:13:56','2017-10-12 06:13:56'),(2,'enter adsense code here','2017-10-12 06:13:56','2017-10-12 06:13:56');
/*!40000 ALTER TABLE `advertisements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` VALUES (8,'2017-11-04','3','9','Auto','Auto','2017-11-04 09:31:47','2017-11-04 09:31:47'),(9,'2017-11-04','4','9','Auto','Auto','2017-11-04 09:31:47','2017-11-04 09:31:47'),(10,'2017-11-04','5','9','Auto','Auto','2017-11-04 09:31:47','2017-11-04 09:31:47'),(11,'2017-11-04','6','9','Auto','Auto','2017-11-04 09:31:47','2017-11-04 09:31:47'),(12,'2017-11-04','7','9','Auto','Auto','2017-11-04 09:31:47','2017-11-04 09:31:47'),(13,'2017-11-04','8','9','Auto','Auto','2017-11-04 09:31:47','2017-11-04 09:31:47'),(14,'2017-11-04','9','9','Auto','Auto','2017-11-04 09:31:47','2017-11-04 09:31:47'),(15,'2017-11-05','8','1','::1','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0','2017-11-05 04:31:59','2017-11-05 04:32:16'),(38,'2018-01-17','3','0','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.39 Safari/537.36','2018-01-02 12:56:27','2018-01-02 12:56:27'),(39,'2018-01-03','8','0','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.39 Safari/537.36','2018-01-03 05:46:06','2018-01-03 05:46:06'),(40,'2018-01-24','3','1','59.153.30.40','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.113 Safari/537.36','2018-01-24 22:51:25','2018-01-24 22:51:53');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `awards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `award_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gift` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES (6,'ICC World CUp','Laptop','2000','name','october','2017','2017-11-09 09:53:18','2017-11-12 06:26:45'),(7,'new','gggg','35','name','september','2018','2017-11-16 11:33:30','2018-01-03 07:34:53');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_accounts`
--

DROP TABLE IF EXISTS `bank_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `swift_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_accounts`
--

LOCK TABLES `bank_accounts` WRITE;
/*!40000 ALTER TABLE `bank_accounts` DISABLE KEYS */;
INSERT INTO `bank_accounts` VALUES (1,'World Banks','121454592540','Dhaka,Bangladesh0','DJ458669S0','2018-01-07 11:57:44','2018-01-24 23:08:35'),(2,'Dutch Bangla','124578986523','Mirpur-10, Dhaka','887Eom1241','2018-01-07 11:59:09','2018-01-07 11:59:09');
/*!40000 ALTER TABLE `bank_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_transactions`
--

DROP TABLE IF EXISTS `bank_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_transactions`
--

LOCK TABLES `bank_transactions` WRITE;
/*!40000 ALTER TABLE `bank_transactions` DISABLE KEYS */;
INSERT INTO `bank_transactions` VALUES (1,2,'21100',1,'2018-01-08 10:08:58','2018-01-08 10:25:13'),(2,1,'51500',1,'2018-01-08 10:09:35','2018-01-08 10:11:44'),(3,1,'-5000',0,'2018-01-08 11:09:25','2018-01-08 11:09:25'),(4,2,'-2000',0,'2018-01-08 11:12:09','2018-01-08 11:12:09'),(5,2,'-8000',0,'2018-01-08 11:12:53','2018-01-08 11:12:53'),(6,2,'-1000',0,'2018-01-08 11:15:15','2018-01-08 11:15:15'),(7,1,'-500',0,'2018-01-08 11:23:03','2018-01-08 11:23:03'),(8,1,'4000',1,'2018-01-08 11:42:39','2018-01-08 11:42:39'),(9,2,'-1000',0,'2018-01-08 11:53:32','2018-01-08 11:53:32'),(10,2,'10000',1,'2018-01-08 12:22:47','2018-01-08 12:22:47'),(11,2,'-2100',0,'2018-01-08 12:23:18','2018-01-08 12:23:18'),(12,2,'100',1,'2018-01-24 23:08:54','2018-01-24 23:08:54'),(13,2,'300',1,'2018-01-24 23:09:14','2018-01-24 23:09:14');
/*!40000 ALTER TABLE `bank_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btcs`
--

DROP TABLE IF EXISTS `btcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `btcs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `xpub_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_picture` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `btcs_api_key_unique` (`api_key`),
  UNIQUE KEY `btcs_xpub_code_unique` (`xpub_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btcs`
--

LOCK TABLES `btcs` WRITE;
/*!40000 ALTER TABLE `btcs` DISABLE KEYS */;
INSERT INTO `btcs` VALUES (1,'BITCOIN','api_key','xpub_code',NULL,'jpg','2017-10-12 06:13:51','2017-10-12 06:13:51');
/*!40000 ALTER TABLE `btcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'Drink','2018-01-04 12:05:52','2018-01-20 10:45:32'),(3,'Fruits','2018-01-04 12:06:03','2018-01-20 10:45:35');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caterings`
--

DROP TABLE IF EXISTS `caterings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caterings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comapany_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `invoice_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caterings`
--

LOCK TABLES `caterings` WRITE;
/*!40000 ALTER TABLE `caterings` DISABLE KEYS */;
INSERT INTO `caterings` VALUES (113,'3','3','20','2018-01-02','151488921170556898','1','','<br>','2018-01-02 10:33:40','2018-01-02 11:20:42'),(114,'3','6','25','2018-01-02','15148892231316678468','1','','<br>','2018-01-02 10:33:50','2018-01-02 11:20:51'),(115,'3','4','50','2018-01-02','15148892331739704229','1','','<br>','2018-01-02 10:34:03','2018-01-02 11:23:41'),(116,'3','8','30','2018-01-02','15148893782003408180','1','','<br>','2018-01-02 10:36:26','2018-01-02 11:23:49'),(117,'3','4','20','2018-01-02','15148927601734111496','0','100','gfdgdf','2018-01-02 11:32:52','2018-01-02 11:32:52'),(118,'2','4','20','2018-01-02','15148938008341615','1',NULL,'gdfgfg','2018-01-02 11:50:09','2018-01-02 11:50:09'),(119,'2','4','20','2018-01-02','15148938008341615','1',NULL,'gdfgfg','2018-01-02 11:50:55','2018-01-02 11:50:55'),(120,'2','4','20','2018-01-02','15148938008341615','1',NULL,'gdfgfg','2018-01-02 11:51:55','2018-01-02 11:51:55'),(121,'2','4','20','2018-01-02','15148938008341615','1',NULL,'gdfgfg','2018-01-02 11:52:23','2018-01-02 11:52:23'),(122,'2','4','20','2018-01-02','15148938008341615','1',NULL,'gdfgfg','2018-01-02 11:53:19','2018-01-02 11:53:19'),(123,'2','4','20','2018-01-02','15148938008341615','1',NULL,'gdfgfg','2018-01-02 11:53:43','2018-01-02 11:53:43'),(124,'2','4','20','2018-01-02','15148938008341615','1',NULL,'<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><div><br></div></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"></div>','2018-01-02 11:55:09','2018-01-02 11:58:51'),(125,'2','4','20','2018-01-02','15148938008341615','1',NULL,'<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><div><br></div></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"></div>','2018-01-02 11:56:19','2018-01-02 11:58:45'),(126,'2','4','50','2018-01-02','1514894909621848511','1',NULL,'kjhkhjk','2018-01-02 12:08:37','2018-01-02 12:08:37'),(127,'2','4','50','2018-01-02','1514894909621848511','0','200','<b style=\"\"><font color=\"#000000\">dsadadasddadfsadsa</font></b>','2018-01-02 12:13:48','2018-01-02 12:14:36'),(128,'2','2','50','2018-01-02','15148989291921388829','1','','jhgjghj','2018-01-02 13:15:38','2018-01-03 05:38:06'),(129,'2','3','20','2018-01-03','15149554081155704161','1',NULL,'gdfgfdg','2018-01-03 04:57:36','2018-01-03 04:57:36'),(130,'2','6','50','2018-01-03','15149557521092896413','1','','<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><div><br></div></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"></div>','2018-01-03 05:03:09','2018-01-03 05:38:04'),(131,'2','3','56','2018-01-23','1516710381369105275','1',NULL,'sfsdfd','2018-01-24 00:26:59','2018-01-24 00:26:59'),(132,'2','3','5','2018-01-23','1516710484406734919','1',NULL,'SADFJK','2018-01-24 00:28:08','2018-01-24 00:28:08'),(133,'3','4','20','2018-01-23','1516712029697976959','1','','sdfghj','2018-01-24 00:54:05','2018-01-24 22:45:57'),(134,'3','7','43','2018-01-24','1516789272281988800','1',NULL,'<br>','2018-01-24 22:21:23','2018-01-24 22:21:23'),(135,'3','4','45','2018-01-24','1516789623588333035','1',NULL,'<br>','2018-01-24 22:27:12','2018-01-24 22:27:12'),(136,'3','4','54','2018-01-24','1516789731500699752','1',NULL,'fggf','2018-01-24 22:29:00','2018-01-24 22:29:00'),(137,'3','4','54','2018-01-24','1516789731500699752','1',NULL,'fggf','2018-01-24 22:30:31','2018-01-24 22:30:31'),(138,'3','7','45','2018-01-24','1516789921555545516','1',NULL,'sdfgh','2018-01-24 22:32:08','2018-01-24 22:32:08'),(139,'3','4','10','2018-01-24','15167907031748983822','0','200','dghj','2018-01-24 22:45:15','2018-01-24 22:45:15');
/*!40000 ALTER TABLE `caterings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_picker`
--

DROP TABLE IF EXISTS `color_picker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color_picker` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_picker`
--

LOCK TABLES `color_picker` WRITE;
/*!40000 ALTER TABLE `color_picker` DISABLE KEYS */;
INSERT INTO `color_picker` VALUES (1,'bf6f6f',NULL,NULL);
/*!40000 ALTER TABLE `color_picker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_balances`
--

DROP TABLE IF EXISTS `customer_balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_balances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_balances`
--

LOCK TABLES `customer_balances` WRITE;
/*!40000 ALTER TABLE `customer_balances` DISABLE KEYS */;
INSERT INTO `customer_balances` VALUES (1,3,'1500',NULL,'2018-01-04 07:21:35','2018-01-04 07:55:24'),(2,4,'500',NULL,'2018-01-04 07:21:43','2018-01-24 23:06:00'),(3,1,'500',NULL,'2018-01-04 07:21:53','2018-01-04 07:55:07'),(5,5,'300',NULL,'2018-01-04 07:54:52','2018-01-04 07:55:31'),(6,6,'1000','fdsfdsf','2018-01-04 07:56:01','2018-01-04 07:56:01');
/*!40000 ALTER TABLE `customer_balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cutomers`
--

DROP TABLE IF EXISTS `cutomers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cutomers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `include_word` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cutomers`
--

LOCK TABLES `cutomers` WRITE;
/*!40000 ALTER TABLE `cutomers` DISABLE KEYS */;
INSERT INTO `cutomers` VALUES (1,'Shanto','01420420420','shanto@420.com','Dhaka, Bangladesh','somthing, somthing, somthing, somthing, somthing, somthing,','2018-01-04 06:18:34','2018-01-04 06:38:58'),(3,'Rifat Vaai','021454751221','rifat@gmail.com','Dhaka, Bangladesh','somthing, somthing, somthing, somthing, somthing, somthing,','2018-01-04 06:39:35','2018-01-04 06:39:35'),(4,'Ridoy Vaai','0215421245412','ridoy@gmail.com','Dhaka, Bangladesh','sdsdssdsd','2018-01-04 06:44:03','2018-01-20 10:45:14'),(5,'Pranto','323545421214','pranto@gmail.com','dfdsf,fsdfsd,dsfdsfsd','fdsdsfsdf','2018-01-04 07:47:29','2018-01-04 07:47:29'),(6,'Abir Khan','15645210214','sadfsd@dsfds.com','sdfsdf,fsdf','sdfdsfdsf','2018-01-04 07:55:50','2018-01-04 07:55:50');
/*!40000 ALTER TABLE `cutomers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (39,'Laravel','2017-10-24 05:02:45','2018-01-11 10:27:01'),(41,'Android','2017-10-25 07:24:38','2018-01-11 10:26:35');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designations`
--

DROP TABLE IF EXISTS `designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deg_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designations`
--

LOCK TABLES `designations` WRITE;
/*!40000 ALTER TABLE `designations` DISABLE KEYS */;
INSERT INTO `designations` VALUES (211,'Intern Level',41,'2017-10-25 06:52:59','2018-01-11 10:26:35'),(297,'Entry Level',41,'2017-11-09 08:57:48','2018-01-11 10:26:35'),(298,'Mid Level',41,'2017-11-09 08:57:48','2018-01-11 10:26:35'),(299,'Pro',41,'2017-11-09 08:57:48','2018-01-11 10:26:35'),(313,'Intern Level',39,'2018-01-03 05:43:39','2018-01-11 10:27:01'),(314,'Entry Level',39,'2018-01-03 05:43:39','2018-01-11 10:27:01'),(315,'Mid Level',39,'2018-01-03 05:43:39','2018-01-03 05:43:39'),(318,'Pro Level',39,'2018-01-11 10:27:01','2018-01-11 10:27:01');
/*!40000 ALTER TABLE `designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_add` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_add` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `deg_id` int(11) NOT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_num` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_num` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_letter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_letter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `con_letter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_employee_id_unique` (`employee_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (3,'1508994104.jpg','Pranto','Sunil','13-09-1995','male','01624932425','Dhaka,Bnagladesh<br>','Dhaka,Bangladesh<br>','pranto@thesoftking.com','$2y$10$s3HWVHtLDGp5KsD.HQxEKOO7sKnhxAvq3syFlT0snFa0QYR7uJ6s6','c1C2JaZ95Gp0OvFK631JGbOz7EPHk1QT9UVb1w4laWxtl0tzf1Cw6YMnkV7Y',45,39,314,'04-10-2017','3000','Pranto Roy','1032-2552-2152','Dutch Bangla','FC104','124589','Mirpur-10, Dhaka','1508931959.pdf','1508931959.pdf','1508931885.pdf','1508931885.pdf','1508931885.pdf','2017-10-24 12:10:54','2018-01-11 10:28:44'),(4,'1508994665.jpg','Md. Nazmul Islam','Somthing','01-11-1989','male','01616008181','Komolapur, Dhaka.<br>','Komolapur, Dhaka.','ridoy@thesoftking.com','$2y$10$LDEvFpVNx1026/dUtRr76.Ay50jtPUEIVjopvUdRs7HilKmY5bYbG','QAYPA8SzFlOt6rT79vUMpod3cD8XnC6s77x0k9ezhP5OD3XpdRbsYdhnJ94n',565424,39,315,'02-10-2017','10000','Md. Nazmul Islam','132-556-4465','Eastern Bank','PC1235','145879','Dhaka.','1508994665.pdf','1508994665.pdf','1508994665.pdf','1508994665.pdf','1508994665.pdf','2017-10-26 05:11:05','2018-01-11 10:28:56'),(5,'1508994953.jpg','Saddam Hossain','Somthing','30-09-1993','male','01700010005','Dhaka, Bnagladesh<br>','Dhaka,Bangladesh<br>','saddam@thesoftking.com','$2y$10$Q2wqQnGCNUUrErrCSZ6Y8ePiATwQq7Bhsb87G8husj4lOvKUEKhHO','qYXDcJl0VM1TQ8mDGdcRaQgMj6RhcG4CbM5qaQmlo1FZKZE8mH1Z4gjwvwiq',23,42,316,'02-10-2017','10000','Saddam Hossain','123456789','Dhaka Bank','TC54551','12315646','Kawran Bazar','1508994953.pdf','1508994953.pdf','1508994953.pdf','1508994953.pdf','1508994953.pdf','2017-10-26 05:15:53','2018-01-11 10:28:24'),(6,'1508995181.jpg','Zahangir Pial','Somthing','07-04-1993','male','01749770222','Mohammadpur, Dhaka.<br>','Mohammadpur, Dhaka.','piyal@softking.com','$2y$10$fhjeAkh7sIdp2UkVl3yTnuie8fZ.NdO4XY0AhN8aPo2hZwqj8FxpS',NULL,89,39,315,'02-10-2017','10000','Zahangir Pial','54355462145','Bank Asia','PO45453','56484212','Mohammadpur','1508995181.pdf','1508995181.pdf','1508995181.pdf','1508995181.pdf','1508995181.pdf','2017-10-26 05:19:41','2018-01-11 10:28:10'),(7,'1508995370.jpg','Abdur Rahman','Somthing','01-05-1991','male','01896526633','Mirpur, Dhaka.<br>','Mirpur, Dhaka.','riyad@thesoftking.com','$2y$10$BNeWz78R3GL1M1glsZ7i8.dYNr7yGh9RihwjP5T1ZX/TFwdLBKjLy',NULL,88,41,211,'08-10-2017','8000','Abdur Rahman','545544354345','Sonali Bank','OP4545','146546552','Mirpur-10, Dhaka','1508995370.pdf','1508995370.pdf','1508995370.pdf','1508995370.pdf','1508995370.pdf','2017-10-26 05:22:50','2018-01-24 00:37:54'),(9,'1510482255.jpg','Shahidul Islam','Somthing','03-05-1993','male','01986262368','Dhaka,Bnagladesh<br>','Dhaka,Bnagladesh','shahidul@thesoftking.com','$2y$10$WqGZZLa83siHD1tMszIRmOeuR9JhieiNc5mL/oXmvQi9/XxtzXrC2',NULL,24586220,42,316,'01-10-2017','10000','Shahidul Islam','45367766572','Rupali Bank','546874','025416510321','Uttora','1508996485.pdf','1508996485.pdf','1508996485.pdf','1508996485.pdf','1508996485.pdf','2017-10-26 05:41:25','2018-01-11 10:27:24'),(10,'1510980347.png','fgdfgdfg','gdfgdf','08-11-2017','male','543454354','dfgdfgdfg<br>','ggdfg<br>','thesoftking@gmail.com','$2y$10$k0hSn.ZjgIFe55q/I0mf7u/im7qC2xVlKPpUw2bQFjsRyBrsqu7.K',NULL,34545345,39,303,'07-11-2017','4343543','fgdfgdfg','543534543','fgdfgdfg','fgdfgdfg','fgdfgdfg','fgdfgdfg','1516444695.pdf','1516444695.pdf','1516444695.pdf','1516444695.pdf','1516444695.pdf','2017-11-18 04:45:48','2018-01-20 10:38:15');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expance_transactions`
--

DROP TABLE IF EXISTS `expance_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expance_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expance_transactions`
--

LOCK TABLES `expance_transactions` WRITE;
/*!40000 ALTER TABLE `expance_transactions` DISABLE KEYS */;
INSERT INTO `expance_transactions` VALUES (1,'1','5000','Fruite Item Buy<div><br></div>',0,'2018-01-08 11:09:25','2018-01-08 11:09:25'),(2,'2','2000','fsdfsdf',0,'2018-01-08 11:12:09','2018-01-08 11:12:09'),(3,'2','8000','fdsf',0,'2018-01-08 11:12:53','2018-01-08 11:12:53'),(4,'2','1000','ghhj<div><br></div>',0,'2018-01-08 11:15:15','2018-01-08 11:15:15'),(5,'1','500','fd',0,'2018-01-08 11:23:03','2018-01-08 11:23:03'),(6,'2','1000','gfd',0,'2018-01-08 11:53:32','2018-01-08 11:53:32'),(7,'2','2100','oiuoiu',0,'2018-01-08 12:23:18','2018-01-08 12:23:18');
/*!40000 ALTER TABLE `expance_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'fgdgfsg','2017-11-06 08:45:26','2017-11-06 08:45:26'),(2,'Rent','2017-11-06 09:41:48','2017-11-06 08:46:37'),(3,'Electricity Bill','2017-11-06 08:47:56','2017-11-06 08:47:56'),(4,'Others','2017-11-06 08:48:12','2017-11-06 08:48:12'),(5,'Wasa Bill','2017-11-06 10:07:25','2017-11-06 10:07:25'),(6,'fsdfsd','2018-01-03 05:16:48','2018-01-03 05:16:48');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'on',NULL,NULL);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_items`
--

DROP TABLE IF EXISTS `food_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL,
  `item` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_items`
--

LOCK TABLES `food_items` WRITE;
/*!40000 ALTER TABLE `food_items` DISABLE KEYS */;
INSERT INTO `food_items` VALUES (30,2,'cha','2018-01-01 11:34:43','2018-01-01 11:34:43'),(31,2,'biskut','2018-01-01 11:34:43','2018-01-01 11:34:43'),(32,2,'pani','2018-01-01 11:34:43','2018-01-01 11:34:43'),(33,4,'vaat','2018-01-01 11:39:10','2018-01-01 11:39:10'),(34,4,'mangso','2018-01-01 11:39:10','2018-01-01 11:39:10'),(35,4,'daal','2018-01-01 11:39:10','2018-01-01 11:39:10'),(36,6,'ruti','2018-01-01 11:40:51','2018-01-01 11:40:51'),(37,6,'vaji','2018-01-01 11:40:51','2018-01-01 11:40:51'),(38,7,'vat','2018-01-01 11:41:21','2018-01-01 11:41:21'),(39,7,'fish','2018-01-01 11:41:21','2018-01-01 11:41:21'),(40,7,'meat','2018-01-01 11:41:21','2018-01-01 11:41:21'),(41,8,'vaat','2018-01-01 11:42:03','2018-01-01 11:42:03'),(42,8,'dim','2018-01-01 11:42:03','2018-01-01 11:42:03'),(43,8,'meat','2018-01-01 11:42:03','2018-01-01 11:42:03'),(44,3,'vat','2018-01-20 10:44:29','2018-01-20 10:44:29'),(45,3,'daal','2018-01-20 10:44:30','2018-01-20 10:44:30'),(46,3,'masssss','2018-01-20 10:44:30','2018-01-20 10:44:30');
/*!40000 ALTER TABLE `food_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_mills`
--

DROP TABLE IF EXISTS `food_mills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_mills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shift_id` int(11) NOT NULL,
  `package_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_mills`
--

LOCK TABLES `food_mills` WRITE;
/*!40000 ALTER TABLE `food_mills` DISABLE KEYS */;
INSERT INTO `food_mills` VALUES (3,2,'lunch 1','50','2018-01-01 09:40:37','2018-01-01 11:30:06'),(4,3,'dinner 1','60','2018-01-01 09:40:48','2018-01-01 11:39:10'),(7,2,'lunch2','80','2018-01-01 11:41:21','2018-01-01 11:41:21'),(8,3,'dinner 2','80','2018-01-01 11:42:03','2018-01-01 11:42:03');
/*!40000 ALTER TABLE `food_mills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_shifts`
--

DROP TABLE IF EXISTS `food_shifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_shifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shift_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_shifts`
--

LOCK TABLES `food_shifts` WRITE;
/*!40000 ALTER TABLE `food_shifts` DISABLE KEYS */;
INSERT INTO `food_shifts` VALUES (2,'Lunch','2:00 PM','2018-01-01 08:59:05','2018-01-01 08:59:05'),(3,'Dinner','9:00 PM','2018-01-01 08:59:41','2018-01-01 08:59:41');
/*!40000 ALTER TABLE `food_shifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generals`
--

DROP TABLE IF EXISTS `generals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generals`
--

LOCK TABLES `generals` WRITE;
/*!40000 ALTER TABLE `generals` DISABLE KEYS */;
INSERT INTO `generals` VALUES (1,'1510985988.png','TheSoftKing ERP','01624932425','support@thesoftking.com','The Softking','USD',NULL,'2018-01-24 22:31:45');
/*!40000 ALTER TABLE `generals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `occasion` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holidays`
--

LOCK TABLES `holidays` WRITE;
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
INSERT INTO `holidays` VALUES (29,'2018-01-17','2018-01-17','dffssdfdf','2017-10-31 08:33:16','2017-10-31 08:33:16'),(30,'2017-11-15','2017-11-18','somthing','2017-11-01 11:40:26','2017-11-01 11:40:26'),(31,'2017-11-03','2017-11-04','xddg','2017-11-04 05:09:19','2017-11-04 05:09:19'),(32,'2017-11-08','2017-11-08','fdgf','2017-11-04 05:22:22','2017-11-04 05:22:22'),(33,'2017-11-06','2017-11-07','fdsggdfgf','2017-11-04 05:23:22','2017-11-04 05:23:22'),(34,'2017-11-05','2017-11-07','fsdffdsf','2017-11-04 05:27:38','2017-11-04 05:27:38'),(35,'2017-11-04','2017-11-05','fdsfsfsd','2017-11-04 05:28:34','2017-11-04 05:28:34'),(36,'2017-11-03','2017-11-03','cxvxvxxcv','2017-11-04 05:33:53','2017-11-04 05:33:53'),(37,'2017-11-15','2017-11-17','xzcxvxvxc','2017-11-04 07:28:40','2017-11-04 07:28:40'),(38,'2017-11-23','2017-11-23','somthing','2017-11-12 06:27:58','2017-11-12 06:27:58'),(39,'2018-01-17','2018-01-26','ffdsfds','2018-01-03 05:16:38','2018-01-03 05:16:38'),(40,'2018-04-12','2018-04-20','asxdfgh',NULL,NULL);
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_page_managements`
--

DROP TABLE IF EXISTS `home_page_managements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_page_managements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `header_section` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_section` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_section` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recent_items` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countdown_section` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_items` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_page_managements`
--

LOCK TABLES `home_page_managements` WRITE;
/*!40000 ALTER TABLE `home_page_managements` DISABLE KEYS */;
INSERT INTO `home_page_managements` VALUES (1,'on','on','on','on','on','on','on','2017-10-12 03:55:54','2017-10-12 03:55:54');
/*!40000 ALTER TABLE `home_page_managements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incomes`
--

DROP TABLE IF EXISTS `incomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incomes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `income` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incomes`
--

LOCK TABLES `incomes` WRITE;
/*!40000 ALTER TABLE `incomes` DISABLE KEYS */;
INSERT INTO `incomes` VALUES (1,'gdfgdfg','2017-11-06 08:45:00','2017-11-06 08:45:00'),(2,'Client','2017-11-06 08:45:59','2017-11-06 08:45:59'),(3,'Sales','2017-11-06 08:46:18','2017-11-06 08:46:18'),(5,'Others','2017-11-06 08:47:12','2017-11-06 08:47:12'),(6,'fdsfd','2018-01-03 05:16:45','2018-01-03 05:16:45');
/*!40000 ALTER TABLE `incomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_10_02_102258_create_categories_table',1),(4,'2017_10_04_070056_create_sub_categories_table',1),(5,'2017_10_04_113111_create_plans_table',1),(6,'2017_10_05_081245_create_paypals_table',1),(7,'2017_10_05_094111_create_perfect_moneys_table',1),(8,'2017_10_05_103539_create_btcs_table',1),(9,'2017_10_05_115012_create_stripes_table',1),(10,'2017_10_07_055619_create_advertisements_table',1),(11,'2017_10_07_062621_create_locations_table',1),(12,'2017_10_07_070507_create_currencies_table',1),(13,'2017_10_07_111806_create_home_page_managements_table',1),(14,'2017_10_08_082145_create_page_managements_table',1),(15,'2017_10_10_044526_create_siteinfos_table',1),(16,'2017_10_10_062124_create_support_bars_table',1),(17,'2017_10_10_070455_create_widget_managements_table',1),(18,'2017_10_10_080035_create_about_widget_table',1),(19,'2017_10_10_120449_create_feedback_table',1),(20,'2017_10_10_120557_create_recent_post_widget',1),(21,'2017_10_11_041245_create_useful_links_winget_table',1),(22,'2017_10_11_072848_create_color_picker_table',1),(23,'2017_10_12_103202_create_social_managements_table',2),(24,'2017_10_18_060658_create_accounts_table',3),(25,'2017_10_18_060850_create_transactions_table',4),(26,'2017_10_18_102659_create_incomes_table',5),(27,'2017_10_18_102759_create_expenses_table',5),(28,'2017_10_18_164910_create_trans_incomes_table',6),(29,'2017_10_18_165005_create_trans_expenses_table',6),(30,'2017_10_22_105453_create_departments_table',7),(31,'2017_10_22_105741_create_designations_table',7),(32,'2017_10_22_125500_create_awards_table',8),(33,'2017_10_23_115244_create_notices_table',9),(35,'2017_10_23_132455_create_generals_table',10),(38,'2017_10_24_114740_create_holidays_table',11),(39,'2017_10_24_115040_create_employees_table',11),(40,'2017_10_26_121501_create_attendances_table',12),(41,'2017_10_29_101307_create_timezones_table',13),(42,'2017_10_29_123504_create_tasks_table',14),(43,'2017_11_07_130414_create_payments_table',15),(44,'2017_11_08_152059_create_admins_table',16),(45,'2017_11_08_152100_create_admin_password_resets_table',16),(46,'2018_01_01_123159_create_office_details_table',17),(47,'2018_01_01_132041_create_food_mills_table',18),(48,'2018_01_01_143107_create_food_shifts_table',18),(49,'2018_01_01_143606_create_food_items_table',18),(50,'2018_01_01_175144_create_caterings_table',19),(51,'2018_01_04_115058_create_cutomers_table',20),(52,'2018_01_04_125141_create_customer_balances_table',21),(53,'2018_01_04_150552_create_products_table',22),(54,'2018_01_07_105426_create_sale_points_table',23),(56,'2018_01_07_130506_create_stock_products_table',24),(57,'2018_01_07_131310_create_warehouses_table',24),(58,'2018_01_07_165905_create_bank_accounts_table',25),(60,'2018_01_08_142117_create_bank_transactions_table',26),(61,'2018_01_08_162951_create_expance_transactions_table',27),(62,'2018_01_09_112524_create_suppliers_table',28),(63,'2018_01_09_112637_create_supplier_items_table',28),(64,'2018_01_09_112725_create_supply_managments_table',28),(65,'2018_01_09_190511_create_supplied_products_table',29),(66,'2018_01_10_141459_create_personal_managements_table',30),(67,'2018_01_10_150800_create_office_loans_table',31),(68,'2018_01_10_163837_create_purchases_table',32);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` VALUES (1,'New Notice edited','<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.</p>','2017-10-23 06:52:23','2017-11-16 08:36:54'),(3,'Old Notice','<h2>Why do we use it?</h2>\r\nIt is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as the','2017-10-23 06:59:24','2017-11-12 06:27:33');
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_details`
--

DROP TABLE IF EXISTS `office_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `office_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_details`
--

LOCK TABLES `office_details` WRITE;
/*!40000 ALTER TABLE `office_details` DISABLE KEYS */;
INSERT INTO `office_details` VALUES (2,'Office1','Office1','145648451','e55f95498d-8547b3@inbox.mailtrap.io','Dhaka Bangladesh','2018-01-01 07:18:10','2018-01-01 07:18:10'),(3,'Pranto Roy Ltd.','Pranto','01624932425','www.prantoroy.com@gmail.com','Dhaka Bangladesh','2018-01-01 11:35:43','2018-01-24 22:26:55'),(4,'Office3','Office3','12654641','Office3@gmail.com','Dhaka Bangladesh','2018-01-01 11:36:11','2018-01-01 11:36:15');
/*!40000 ALTER TABLE `office_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office_loans`
--

DROP TABLE IF EXISTS `office_loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office_loans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office_loans`
--

LOCK TABLES `office_loans` WRITE;
/*!40000 ALTER TABLE `office_loans` DISABLE KEYS */;
INSERT INTO `office_loans` VALUES (1,3,'5000','2018-01-30','Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>','2018-01-10 09:26:40','2018-01-20 10:49:47'),(2,5,'100','2018-01-16','dsfsf','2018-01-24 00:46:20','2018-01-24 00:46:20');
/*!40000 ALTER TABLE `office_loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_managements`
--

DROP TABLE IF EXISTS `page_managements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_managements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `menu_order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_managements_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_managements`
--

LOCK TABLES `page_managements` WRITE;
/*!40000 ALTER TABLE `page_managements` DISABLE KEYS */;
INSERT INTO `page_managements` VALUES (1,'ooo','faq',NULL,0,'2017-10-12 04:26:37','2017-10-17 23:22:43');
/*!40000 ALTER TABLE `page_managements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `attend` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (78,45,'3','310.34482758621','2017-11-01','2017-11-30',1,'2017-11-07 10:57:38','2017-11-08 06:21:05'),(79,78,'1','344.8275862069','2017-11-01','2017-11-30',0,'2017-11-07 10:57:38','2017-11-07 10:57:38'),(80,88,'1','275.86206896552','2017-11-01','2017-11-30',1,'2017-11-07 10:57:38','2017-11-08 07:49:27'),(81,89,'1','344.8275862069','2017-11-01','2017-11-30',0,'2017-11-07 10:57:38','2017-11-07 10:57:38'),(82,565424,'5','1724.1379310345','2017-11-01','2017-11-30',0,'2017-11-07 10:57:38','2017-11-07 10:57:38'),(83,23,'1','166.66666666667','2017-10-01','2017-11-30',0,'2017-11-07 11:03:15','2017-11-07 11:03:15'),(84,36,'4','533.33333333333','2017-10-01','2017-11-30',1,'2017-11-07 11:03:15','2017-11-08 11:33:35'),(85,45,'3','150','2017-10-01','2017-11-30',1,'2017-11-07 11:03:15','2017-11-08 06:18:31'),(86,78,'1','166.66666666667','2017-10-01','2017-11-30',0,'2017-11-07 11:03:15','2017-11-07 11:03:15'),(87,88,'1','133.33333333333','2017-10-01','2017-11-30',1,'2017-11-07 11:03:15','2017-11-08 06:43:32'),(88,89,'1','166.66666666667','2017-10-01','2017-11-30',1,'2017-11-07 11:03:15','2017-11-09 10:05:17'),(89,23,'1','384.61538461538','2018-01-01','2018-01-27',0,'2018-01-02 12:46:31','2018-01-02 12:46:31'),(90,36,'2','615.38461538462','2018-01-01','2018-01-27',0,'2018-01-02 12:46:31','2018-01-02 12:46:31'),(91,45,'1','115.38461538462','2018-01-01','2018-01-27',1,'2018-01-02 12:46:31','2018-01-02 12:57:25'),(93,88,'1','307.69230769231','2018-01-01','2018-01-27',0,'2018-01-02 12:46:32','2018-01-02 12:46:32'),(94,89,'1','384.61538461538','2018-01-01','2018-01-27',0,'2018-01-02 12:46:32','2018-01-02 12:46:32'),(95,565424,'1','384.61538461538','2018-01-01','2018-01-27',0,'2018-01-02 12:46:32','2018-01-02 12:46:32'),(96,34545345,'0','0','2018-01-01','2018-01-27',0,'2018-01-02 12:46:32','2018-01-02 12:46:32'),(97,45,'2','214.28571428571','2018-01-03','2018-01-31',0,'2018-01-20 10:40:00','2018-01-20 10:40:00'),(98,565424,'1','357.14285714286','2018-01-03','2018-01-31',0,'2018-01-20 10:40:00','2018-01-20 10:40:00'),(99,23,'1','357.14285714286','2018-01-03','2018-01-31',0,'2018-01-20 10:40:00','2018-01-20 10:40:00'),(100,89,'1','357.14285714286','2018-01-03','2018-01-31',0,'2018-01-20 10:40:00','2018-01-20 10:40:00'),(101,88,'1','285.71428571429','2018-01-03','2018-01-31',0,'2018-01-20 10:40:00','2018-01-20 10:40:00'),(102,24586220,'1','357.14285714286','2018-01-03','2018-01-31',0,'2018-01-20 10:40:00','2018-01-20 10:40:00'),(103,34545345,'0','0','2018-01-03','2018-01-31',0,'2018-01-20 10:40:00','2018-01-20 10:40:00'),(104,45,'2','214.28571428571','2018-01-03','2018-01-31',0,'2018-01-20 10:40:00','2018-01-20 10:40:00'),(105,565424,'1','357.14285714286','2018-01-03','2018-01-31',0,'2018-01-20 10:40:01','2018-01-20 10:40:01'),(106,23,'1','357.14285714286','2018-01-03','2018-01-31',0,'2018-01-20 10:40:01','2018-01-20 10:40:01'),(107,89,'1','357.14285714286','2018-01-03','2018-01-31',0,'2018-01-20 10:40:01','2018-01-20 10:40:01'),(108,88,'1','285.71428571429','2018-01-03','2018-01-31',0,'2018-01-20 10:40:01','2018-01-20 10:40:01'),(109,24586220,'1','357.14285714286','2018-01-03','2018-01-31',0,'2018-01-20 10:40:01','2018-01-20 10:40:01'),(110,34545345,'0','0','2018-01-03','2018-01-31',0,'2018-01-20 10:40:01','2018-01-20 10:40:01');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypals`
--

DROP TABLE IF EXISTS `paypals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_picture` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `paypals_paypal_email_unique` (`paypal_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypals`
--

LOCK TABLES `paypals` WRITE;
/*!40000 ALTER TABLE `paypals` DISABLE KEYS */;
INSERT INTO `paypals` VALUES (1,'Enter Display Name','Enter Paypal Email',NULL,'jpg','2017-10-12 06:13:51','2017-10-12 06:13:51');
/*!40000 ALTER TABLE `paypals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfect_moneys`
--

DROP TABLE IF EXISTS `perfect_moneys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfect_moneys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `passpharase` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `usd` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefect_money_picture` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `perfect_moneys_passpharase_unique` (`passpharase`),
  UNIQUE KEY `perfect_moneys_usd_unique` (`usd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfect_moneys`
--

LOCK TABLES `perfect_moneys` WRITE;
/*!40000 ALTER TABLE `perfect_moneys` DISABLE KEYS */;
INSERT INTO `perfect_moneys` VALUES (1,'Perfect Money','U5220203','reg4e54h1grt1j',NULL,'jpg','2017-10-12 06:13:51','2017-10-12 06:13:51');
/*!40000 ALTER TABLE `perfect_moneys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_managements`
--

DROP TABLE IF EXISTS `personal_managements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_managements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_managements`
--

LOCK TABLES `personal_managements` WRITE;
/*!40000 ALTER TABLE `personal_managements` DISABLE KEYS */;
INSERT INTO `personal_managements` VALUES (1,'Abir Vaai','0123456789525','abir@gmail.com','50000','2018-01-23','Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>','2018-01-10 08:40:58','2018-01-10 09:04:55'),(2,'Rifat Vaai','078945612301','rifat@gmail.com','25000','2018-02-15','Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>','2018-01-10 08:41:32','2018-01-20 10:49:37');
/*!40000 ALTER TABLE `personal_managements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `days` int(10) unsigned NOT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'Electronics',1200,3,'on','2017-10-12 06:10:15','2017-10-12 06:10:15');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,2,'Pepsi','45435454544','Pieces','15','18','2018-01-04 11:32:23','2018-01-04 12:23:02'),(3,2,'Mojo','43323232432','Pieces','15','18','2018-01-04 11:53:24','2018-01-04 12:23:09'),(4,3,'Bananna','5344343554','Pieces','8','10','2018-01-07 05:28:03','2018-01-07 05:28:03'),(5,3,'Mango','8989898','Kg','40','60','2018-01-07 05:28:29','2018-01-07 05:28:29');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,'200','2018-01-10','Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>','2018-01-10 11:03:54','2018-01-10 11:03:54'),(2,'500','2018-01-31','Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>','2018-01-10 11:04:05','2018-01-10 11:04:05'),(3,'3000','2018-01-13','Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>','2018-01-10 11:04:25','2018-01-10 11:04:25'),(4,'1000','2018-01-18','Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>','2018-01-10 11:04:44','2018-01-24 23:10:12'),(5,'200','2018-01-18','Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit.<br>','2018-01-10 11:18:58','2018-01-20 10:50:03'),(6,'150','2018-01-02','hgbhb','2018-01-24 22:55:08','2018-01-24 23:00:45');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recent_post_widget`
--

DROP TABLE IF EXISTS `recent_post_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recent_post_widget` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `count` int(10) unsigned NOT NULL,
  `status` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recent_post_widget`
--

LOCK TABLES `recent_post_widget` WRITE;
/*!40000 ALTER TABLE `recent_post_widget` DISABLE KEYS */;
INSERT INTO `recent_post_widget` VALUES (1,5,'on',NULL,NULL);
/*!40000 ALTER TABLE `recent_post_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_points`
--

DROP TABLE IF EXISTS `sale_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_points`
--

LOCK TABLES `sale_points` WRITE;
/*!40000 ALTER TABLE `sale_points` DISABLE KEYS */;
INSERT INTO `sale_points` VALUES (2,'15153184991219855851',1,4,5,'10','600','2018-01-07','2018-01-07 09:48:29','2018-01-07 09:48:29'),(3,'1515318694508602606',1,4,5,'10','600','2018-01-07','2018-01-07 09:51:44','2018-01-07 09:51:44'),(4,'1515320688449733712',1,3,3,'200','3600','2018-01-07','2018-01-07 10:25:01','2018-01-07 10:25:01'),(5,'15153213431796850766',3,4,4,'10','100','2018-01-07','2018-01-07 10:35:57','2018-01-07 10:35:57'),(6,'15153213431796850766',3,4,4,'10','100','2018-01-07','2018-01-07 10:36:11','2018-01-07 10:36:11'),(7,'15153213431796850766',3,4,4,'10','100','2018-01-07','2018-01-07 10:36:45','2018-01-07 10:36:45'),(8,'15153213431796850766',3,4,4,'10','100','2018-01-07','2018-01-07 10:38:26','2018-01-07 10:38:26'),(9,'1515321520347021211',1,5,5,'12','720','2018-01-07','2018-01-07 10:38:49','2018-01-07 10:38:49'),(10,'15156728791342421646',1,3,3,'1750','31500','2018-01-11','2018-01-11 12:15:24','2018-01-11 12:15:24'),(11,'151609721779674098',1,3,4,'100','1000','2018-01-16','2018-01-16 10:07:10','2018-01-16 10:07:10'),(12,'1516445150801433674',1,4,5,'1000','60000','2018-01-20','2018-01-20 10:46:48','2018-01-20 10:46:48'),(13,'15164452931222906187',1,4,4,'200','0','2018-01-20','2018-01-20 10:48:32','2018-01-20 10:48:32');
/*!40000 ALTER TABLE `sale_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siteinfos`
--

DROP TABLE IF EXISTS `siteinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `siteinfos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fevicon` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteinfos`
--

LOCK TABLES `siteinfos` WRITE;
/*!40000 ALTER TABLE `siteinfos` DISABLE KEYS */;
INSERT INTO `siteinfos` VALUES (1,'This is a demo title','Â© 2017 Demo Site. All rights reserved.','png','png','Demo Meta Description','Demo Meta Keyword','2017-10-12 03:42:37','2017-10-12 03:42:37');
/*!40000 ALTER TABLE `siteinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_managements`
--

DROP TABLE IF EXISTS `social_managements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_managements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_managements_name_unique` (`name`),
  UNIQUE KEY `social_managements_url_unique` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_managements`
--

LOCK TABLES `social_managements` WRITE;
/*!40000 ALTER TABLE `social_managements` DISABLE KEYS */;
INSERT INTO `social_managements` VALUES (2,'Electronics','http://robin.thesoftking.com/mama-host/','2017-10-12 04:46:49','2017-10-12 04:46:49'),(4,'Demo Page','http://onlyapk24.com/kingsoft/awesome/Awesome-Community-demo','2017-10-12 04:47:39','2017-10-12 04:47:39'),(6,'about','devrobin.com/test','2017-10-12 04:48:40','2017-10-12 04:48:40');
/*!40000 ALTER TABLE `social_managements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_products`
--

DROP TABLE IF EXISTS `stock_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_products`
--

LOCK TABLES `stock_products` WRITE;
/*!40000 ALTER TABLE `stock_products` DISABLE KEYS */;
INSERT INTO `stock_products` VALUES (1,1,4,'2500','2018-01-07 08:22:27','2018-01-07 08:22:27'),(2,1,3,'2000','2018-01-07 08:22:52','2018-01-07 08:22:52'),(3,1,5,'5000','2018-01-07 08:23:01','2018-01-07 08:23:01'),(4,3,4,'5000','2018-01-07 08:23:08','2018-01-07 08:23:08'),(5,1,4,'2000','2018-01-07 08:50:57','2018-01-07 08:50:57'),(7,1,5,'-10','2018-01-07 09:48:29','2018-01-07 09:48:29'),(8,1,5,'-10','2018-01-07 09:51:44','2018-01-07 09:51:44'),(9,1,3,'-200','2018-01-07 10:25:01','2018-01-07 10:25:01'),(10,3,4,'-10','2018-01-07 10:35:57','2018-01-07 10:35:57'),(11,3,4,'-10','2018-01-07 10:36:11','2018-01-07 10:36:11'),(12,3,4,'-10','2018-01-07 10:36:45','2018-01-07 10:36:45'),(13,3,4,'-10','2018-01-07 10:38:26','2018-01-07 10:38:26'),(14,1,5,'-12','2018-01-07 10:38:49','2018-01-07 10:38:49'),(15,1,3,'-1750','2018-01-11 12:15:24','2018-01-11 12:15:24'),(16,1,4,'-100','2018-01-16 10:07:10','2018-01-16 10:07:10'),(17,1,5,'-1000','2018-01-20 10:46:49','2018-01-20 10:46:49'),(18,1,4,'-200','2018-01-20 10:48:32','2018-01-20 10:48:32');
/*!40000 ALTER TABLE `stock_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripes`
--

DROP TABLE IF EXISTS `stripes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_picture` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stripes_secret_key_unique` (`secret_key`),
  UNIQUE KEY `stripes_publisher_key_unique` (`publisher_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripes`
--

LOCK TABLES `stripes` WRITE;
/*!40000 ALTER TABLE `stripes` DISABLE KEYS */;
INSERT INTO `stripes` VALUES (1,'Card','sk_test_aat3tzBCCXXBkS4sxY3M8A1B','pk_test_AU3G7doZ1sbdpJLj0NaozPBu',NULL,'jpg','2017-10-12 06:13:51','2017-10-12 06:13:51');
/*!40000 ALTER TABLE `stripes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(10) unsigned NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_categories_categories_id_foreign` (`categories_id`),
  CONSTRAINT `sub_categories_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplied_products`
--

DROP TABLE IF EXISTS `supplied_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplied_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `supply_table_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `service_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplied_products`
--

LOCK TABLES `supplied_products` WRITE;
/*!40000 ALTER TABLE `supplied_products` DISABLE KEYS */;
INSERT INTO `supplied_products` VALUES (21,5,13,3,'10','500','5000','15155687821857975065','2018-01-01','2018-01-31','2018-01-10','2018-01-10 07:19:42'),(22,21,13,3,'50','180','9000','15155687821009752253','2018-01-01','2018-01-31','2018-01-10','2018-01-10 07:19:42'),(23,22,13,3,'500','600','300000','15155687821289818127','2018-01-01','2018-01-31','2018-01-10','2018-01-10 07:19:42'),(24,9,14,4,'60','70','4200','15155688032057601175',NULL,NULL,'2018-01-10','2018-01-10 07:20:03'),(25,8,14,4,'50','70','3500','15155688031747741716',NULL,NULL,'2018-01-10','2018-01-10 07:20:03'),(26,9,15,4,'20','20','400','1516790934337551553',NULL,NULL,'2018-01-24','2018-01-24 22:48:54');
/*!40000 ALTER TABLE `supplied_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_items`
--

DROP TABLE IF EXISTS `supplier_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `item` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_items`
--

LOCK TABLES `supplier_items` WRITE;
/*!40000 ALTER TABLE `supplier_items` DISABLE KEYS */;
INSERT INTO `supplier_items` VALUES (5,3,'Banana Updated','2018-01-09 06:34:26','2018-01-09 08:18:48'),(8,4,'Burger Updated','2018-01-09 06:36:51','2018-01-09 08:23:38'),(9,4,'French Fry Updated','2018-01-09 06:36:51','2018-01-09 08:23:38'),(10,4,'Pizza Updated','2018-01-09 06:36:51','2018-01-09 08:23:38'),(21,3,'Mango','2018-01-09 08:18:48','2018-01-09 08:19:33'),(22,3,'Jack','2018-01-09 08:19:04','2018-01-09 08:19:33'),(23,4,'HotDog New','2018-01-09 08:23:39','2018-01-09 08:23:39');
/*!40000 ALTER TABLE `supplier_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (3,'Supplier 1','02312541564','Supplier1@email.com','Dhaka, Bangladesh','2018-01-09 06:34:26','2018-01-24 23:09:44'),(4,'Supplier 2 Updated','0231454510','Supplier2@email.comUPdated','Dhaka,BangladeshUpdated','2018-01-09 06:36:51','2018-01-09 08:23:38');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_managments`
--

DROP TABLE IF EXISTS `supply_managments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supply_managments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `form_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `total_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_managments`
--

LOCK TABLES `supply_managments` WRITE;
/*!40000 ALTER TABLE `supply_managments` DISABLE KEYS */;
INSERT INTO `supply_managments` VALUES (13,3,0,'2018-01-01','2018-01-31','314000','2018-01-10 07:19:42','2018-01-10 07:19:42'),(14,4,1,NULL,NULL,'7700','2018-01-10 07:20:03','2018-01-10 07:20:03'),(15,4,1,NULL,NULL,'400','2018-01-24 22:48:54','2018-01-24 22:48:54');
/*!40000 ALTER TABLE `supply_managments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_bars`
--

DROP TABLE IF EXISTS `support_bars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_bars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_time_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_bars`
--

LOCK TABLES `support_bars` WRITE;
/*!40000 ALTER TABLE `support_bars` DISABLE KEYS */;
INSERT INTO `support_bars` VALUES (1,'phone','12345678910','clock','9.00 am - 5.00 pm',NULL,'2017-10-12 03:42:37','2017-10-12 03:42:37');
/*!40000 ALTER TABLE `support_bars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_Id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (8,'Pranto','pranto@thesoftking.com','dfdsfdfs','dfdsfdf<br>','2017-10-29','2017-11-08','2017-11-01 10:04:13','2017-11-01 10:04:13'),(11,'Md. Nazmul Islam','ridoy@thesoftking.com','ghumaooo','saradin<br>','2017-11-09','2017-11-16','2017-11-04 11:07:05','2017-11-04 11:07:05');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timezones`
--

DROP TABLE IF EXISTS `timezones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timezones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timezones`
--

LOCK TABLES `timezones` WRITE;
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;
INSERT INTO `timezones` VALUES (1,'Asia/Dhaka',NULL,'2017-10-29 11:08:24');
/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_expenses`
--

DROP TABLE IF EXISTS `trans_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trans_expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_expenses`
--

LOCK TABLES `trans_expenses` WRITE;
/*!40000 ALTER TABLE `trans_expenses` DISABLE KEYS */;
INSERT INTO `trans_expenses` VALUES (7,'2017-11-15',4,'700','new','2017-11-06 10:08:10','2017-11-07 04:08:59'),(8,'2017-10-01',4,'100','a','2017-11-06 10:09:09','2017-11-06 12:22:29'),(9,'2017-11-14',2,'2000','Somthing','2017-11-07 06:02:49','2017-11-07 06:02:49'),(10,'2017-11-16',4,'500','Source','2017-11-07 06:04:18','2017-11-07 06:04:18'),(11,'2018-01-25',4,'53',NULL,'2018-01-03 05:17:07','2018-01-03 05:17:07'),(12,'2018-01-02',4,'2121',NULL,'2018-01-10 10:31:04','2018-01-10 10:31:04');
/*!40000 ALTER TABLE `trans_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_incomes`
--

DROP TABLE IF EXISTS `trans_incomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trans_incomes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `income_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_incomes`
--

LOCK TABLES `trans_incomes` WRITE;
/*!40000 ALTER TABLE `trans_incomes` DISABLE KEYS */;
INSERT INTO `trans_incomes` VALUES (13,'2017-11-01',2,'123','qwe','2017-11-06 10:22:54','2017-11-06 12:08:20'),(14,'2017-11-01',2,'1000','Somthing','2017-11-07 06:01:39','2017-11-07 06:01:39'),(15,'2017-11-03',3,'7000','Somthing','2017-11-07 06:01:54','2017-11-07 06:01:54'),(16,'2017-11-09',3,'8000','Somthing','2017-11-07 06:02:12','2017-11-07 06:02:12'),(17,'2017-11-15',3,'8000','Somthing','2017-11-07 06:02:34','2017-11-07 06:02:34'),(18,'2017-11-19',3,'8000',NULL,'2017-11-07 06:04:02','2017-11-07 06:04:02'),(19,'2018-01-17',6,'43543',NULL,'2018-01-03 05:16:58','2018-01-03 05:16:58');
/*!40000 ALTER TABLE `trans_incomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `tr_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,3,'Out','5000','Cash received',NULL,NULL),(2,1,'In','5000','Cash withdrew',NULL,NULL),(3,1,'Out','2000','Cash transfar',NULL,NULL),(4,2,'In','2000','Cash transfar',NULL,NULL),(5,3,'In','1500','',NULL,NULL),(6,1,'Out','1500','None',NULL,NULL),(7,8,'1','5000',NULL,'2017-10-18 03:29:14','2017-10-18 03:29:14'),(8,6,'0','2000','sdffsdf','2017-10-18 03:29:32','2017-10-18 03:29:32'),(9,8,'1','1000',NULL,'2017-10-18 03:31:21','2017-10-18 03:31:21'),(10,7,'0','700',NULL,'2017-10-18 03:34:54','2017-10-18 03:34:54'),(11,10,'0','200',NULL,'2017-10-18 03:36:09','2017-10-18 03:36:09');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useful_links`
--

DROP TABLE IF EXISTS `useful_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useful_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `useful_links_name_unique` (`name`),
  UNIQUE KEY `useful_links_url_unique` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useful_links`
--

LOCK TABLES `useful_links` WRITE;
/*!40000 ALTER TABLE `useful_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `useful_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (1,'warehouse 1 Edited','Dhaka Bangladesh','2018-01-07 07:20:06','2018-01-20 10:45:46'),(3,'warehouse 2','Dhaka Bangladesh','2018-01-07 07:43:57','2018-01-07 07:43:57');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_managements`
--

DROP TABLE IF EXISTS `widget_managements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widget_managements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `search` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recent_post` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advertisement` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget_managements`
--

LOCK TABLES `widget_managements` WRITE;
/*!40000 ALTER TABLE `widget_managements` DISABLE KEYS */;
INSERT INTO `widget_managements` VALUES (1,'on','on','on','on','on','2017-10-12 03:55:54','2017-10-12 03:55:54');
/*!40000 ALTER TABLE `widget_managements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:08:57
