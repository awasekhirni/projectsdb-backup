-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: vpaydb
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
-- Table structure for table `admin_password_resets`
--

DROP TABLE IF EXISTS `admin_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_password_resets` (
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_username_unique` (`username`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Meaghan Sawayn','admin','davis.guido@example.net','Dhaka','$2y$10$eBYJG3d.tvm5Vj38rdFmwu55x1bR6Op2dyiggvybRibxjTZqvopcq','37x5Pni9EauIsl42Ybsgk0LPq25LmyOlinNZnp8zHx7iODIrnHzPjBAuTpBl','2017-11-14 04:10:31','2017-11-25 05:10:32');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_infos`
--

DROP TABLE IF EXISTS `contact_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_infos`
--

LOCK TABLES `contact_infos` WRITE;
/*!40000 ALTER TABLE `contact_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countries_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'USA','USD','1',1,NULL,'2017-11-21 00:06:07','2017-11-21 00:08:24'),(2,'Bangladesh','BDT','83.4935',1,NULL,'2017-11-21 00:06:38','2017-11-21 00:06:38');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currencies_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'US Dollar','USD','$','$1,0.00','1',0,'2017-11-18 02:54:48','2017-11-18 11:14:10'),(2,'Afghanistan, Afghani','AFN','Ø‹','Ø‹1,0.00','68.719',0,'2017-11-18 02:56:07','2017-11-18 11:14:10'),(3,'Canadian Dollar','CAD','$','$1,0.00','1.276618',0,'2017-11-18 02:56:27','2017-11-18 11:14:10'),(4,'Indian Rupee','INR','â‚¹','1,0.00â‚¹','64.915',0,'2017-11-18 02:56:58','2017-11-18 11:14:10'),(5,'Australian Dollar','AUD','$','$1,0.00','1.321877',0,'2017-11-18 02:57:57','2017-11-18 11:14:10'),(6,'China Yuan Renminbi','CNY','Â¥','Â¥1,0.00','6.62935',0,'2017-11-18 02:58:16','2017-11-18 11:14:10'),(7,'Euro','EUR','â‚¬','1.0,00 â‚¬','0.84807',0,'2017-11-18 03:09:47','2017-11-18 11:14:10'),(8,'Bangladesh, Taka','BDT','à§³','à§³ 1,0.','83.4935',0,'2017-11-18 05:30:05','2017-11-18 11:14:10'),(9,'Albania, Lek','ALL','Lek','1,0.00Lek','113.456378',0,'2017-11-18 11:07:27','2017-11-18 11:14:10'),(10,'Algerian Dinar','DZD','Ø¯.Ø¬â€','Ø¯.Ø¬â€ 1,0.00','114.756818',0,'2017-11-18 11:07:46','2017-11-18 11:14:10');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_methods`
--

DROP TABLE IF EXISTS `deposit_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fix_charge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maximum_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_methods`
--

LOCK TABLES `deposit_methods` WRITE;
/*!40000 ALTER TABLE `deposit_methods` DISABLE KEYS */;
INSERT INTO `deposit_methods` VALUES (1,'Bkash','11_58_00_1510660680.png','BDT','89','56457656756','10','10','6000','100',1,NULL,'2017-11-14 05:58:00','2017-11-15 06:18:57');
/*!40000 ALTER TABLE `deposit_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footers`
--

DROP TABLE IF EXISTS `footers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footers`
--

LOCK TABLES `footers` WRITE;
/*!40000 ALTER TABLE `footers` DISABLE KEYS */;
INSERT INTO `footers` VALUES (1,'COPY RIGHTS','All Right Reserved.',1,'2017-11-16 00:37:44','2017-12-17 23:22:57');
/*!40000 ALTER TABLE `footers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `website_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_after_point` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_notification` tinyint(1) NOT NULL,
  `sms_notification` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_settings`
--

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` VALUES (1,'xFer | Transfer Money- Anytime - Anywhere','000','USD','3','$','2',1,0,'2017-11-14 04:42:22','2017-12-17 18:38:35');
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logos`
--

DROP TABLE IF EXISTS `logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logos`
--

LOCK TABLES `logos` WRITE;
/*!40000 ALTER TABLE `logos` DISABLE KEYS */;
INSERT INTO `logos` VALUES (1,'logo.png','icon.png',1,NULL,NULL);
/*!40000 ALTER TABLE `logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_order_unique` (`order`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Menu12','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat.Lorem ipsum dolor sit amet, consectetur adipisicing \r\nelit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi\r\n ut aliquip ex ea commodo consequat.',1,1,'2017-11-16 00:15:44','2017-12-14 08:27:25'),(2,'Menu1','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat.Lorem ipsum dolor sit amet, consectetur adipisicing \r\nelit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi\r\n ut aliquip ex ea commodo consequat.',6,1,'2017-11-16 00:19:38','2017-12-14 08:27:17');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_password_resets`
--

DROP TABLE IF EXISTS `merchant_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchant_password_resets` (
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `merchant_password_resets_email_index` (`email`),
  KEY `merchant_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_password_resets`
--

LOCK TABLES `merchant_password_resets` WRITE;
/*!40000 ALTER TABLE `merchant_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchants`
--

DROP TABLE IF EXISTS `merchants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `merchants_username_unique` (`username`),
  UNIQUE KEY `merchants_email_unique` (`email`),
  UNIQUE KEY `merchants_phone_unique` (`phone`),
  UNIQUE KEY `merchants_api_key_unique` (`api_key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchants`
--

LOCK TABLES `merchants` WRITE;
/*!40000 ALTER TABLE `merchants` DISABLE KEYS */;
INSERT INTO `merchants` VALUES (7,'Erick Zieme','merchant1',NULL,'oreilly.amy@veum.com','86317 Dee Lakes\nJoanaside, MT 03776-0926','+6869635957600','200000.00',NULL,'10',NULL,'$2y$10$NxXY7i9l9I/VxdRkKEc3Puq.OD7F2B3TEMHp0X2wsIk3t357zijgC',1,NULL,'b0ahaIiyz2jHhdCJVeTdyHAvizRNXF47ZCTUt6mZobrtVBuuWJRiLXZtq0L2','2017-11-25 02:46:11','2017-12-18 16:08:37'),(8,'Retta Predovic Jr.','merchant2',NULL,'rosella.daniel@yahoo.com','73180 Hand Knoll Suite 303\nWest Albina, TN 46959-6644','+3161825876662','200000.00',NULL,'10',NULL,'$2y$10$gUVJwokrj1bbPpwoCUjFp.p5X/GS4mjSLvE.tgMPEK/FNCiy1YF8O',1,NULL,'panqOzUnCm','2017-11-25 02:46:11','2017-11-25 02:46:11'),(9,'Dr. Minnie Rolfson','merchant',NULL,'gbeatty@hotmail.com','8444 Roman Views\nFlorencioburgh, WV 77187-7208','+8500877278496','5885.25',NULL,'10',NULL,'$2y$10$/dX9Ujg5DT5X1DI4wzihrOTDa4/q0DNg5BE0k6/HM7V2LL7KocRQO',1,NULL,'YzIhSAyV61U7i3U14WEWWgR2UAANpvvdTYZun7CDpintC3IamvQwvRQt5jC7','2017-11-25 02:46:11','2017-12-14 03:58:04'),(10,'new Merchent','new','merchant_new','new@merchant.com','4543534,gfgf45435435gff','453543543543545','100000.00',NULL,'5',NULL,'$2y$10$LN214HfKPbYq3PQeK2RUie/D4kPHidsupgzjhKvzAycUAnUjUHQIO',1,NULL,NULL,'2017-12-18 16:25:32','2017-12-18 16:25:32'),(11,'ajkdhadh','supportxx','merchant_supportxx','editorvapress@gmail.comx','556565h,gfftgh','1736102007','1983187185','supportxxxx<br>','1',NULL,'$2y$10$qdz1bRzcTTMfAbfCHHTsreBBjCIaIaRvtP1I9c/Hy3nRPIIw7vsG6',1,NULL,NULL,'2017-12-18 16:34:37','2017-12-18 16:35:55'),(12,'Riadul Islam','supportxxxx','merchant_supportxxxx','editorvapress@gmail.comxxx','supportxxxxsupportxxxxsupportxxxx<br>','173610200734567','123456789',NULL,'1',NULL,'$2y$10$boP7Vl6LbHKVZE.bMFAvaOU7G26HNsFnWPPjjmRzrujI9hMYZGXxy',1,NULL,NULL,'2017-12-18 16:35:34','2017-12-18 16:35:34');
/*!40000 ALTER TABLE `merchants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_11_12_142221_create_admins_table',1),(4,'2017_11_12_142223_create_admin_password_resets_table',1),(5,'2017_11_12_142302_create_merchants_table',1),(6,'2017_11_12_142303_create_merchant_password_resets_table',1),(7,'2017_11_12_201518_create_deposit_methods_table',1),(8,'2017_11_12_201843_create_withdraw_methods_table',1),(10,'2017_11_12_202616_create_general_settings_table',1),(11,'2017_11_12_203106_create_menus_table',1),(12,'2017_11_12_203123_create_logos_table',1),(13,'2017_11_12_203135_create_sliders_table',1),(14,'2017_11_12_203157_create_services_table',1),(15,'2017_11_12_203214_create_testimonials_table',1),(16,'2017_11_12_203235_create_social_accounts_table',1),(17,'2017_11_12_203250_create_contact_infos_table',1),(18,'2017_11_12_203305_create_footers_table',1),(20,'2017_11_12_201948_create_transaction_logs_table',2),(23,'2013_11_26_161501_create_currency_table',4),(26,'2017_11_18_055434_create_countries_table',5),(27,'2017_11_18_061203_create_sending_logs_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `sending_logs`
--

DROP TABLE IF EXISTS `sending_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sending_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sending_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiving_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_type` int(190) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sending_logs_transaction_id_unique` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sending_logs`
--

LOCK TABLES `sending_logs` WRITE;
/*!40000 ALTER TABLE `sending_logs` DISABLE KEYS */;
INSERT INTO `sending_logs` VALUES (52,'TID11211511759316','500','BDT','Mr A','078968768756','Dhaka','Bangladesh','500','BDT','9','Mr B','0785675464','Dhaka','Bangladesh','500','BDT','50 BDT','550 BDT',8,NULL,1,NULL,'2017-11-26 23:08:36','2017-11-26 23:09:22'),(53,'TID14371511759363','500','BDT','Mr A','078968768756','Dhaka','Bangladesh','500','BDT','9','Mr B','0785675464','Dhaka','Bangladesh','500','BDT','50 BDT','550 BDT',9,NULL,1,NULL,'2017-11-26 23:09:23','2017-11-26 23:09:23'),(54,'TID16181511759442','1000','BDT','ghjgj','67567567','ghjghjghj','Bangladesh','1000','BDT','9','hgjhgj','78678568','hjghjghj','USA','11.98','USD','100 BDT','1100 BDT',8,'jhkhk',1,NULL,'2017-11-26 23:10:42','2017-11-27 05:07:11'),(55,'TID12391511776139','1000','BDT','ghjgj','67567567','ghjghjghj','Bangladesh','1000','BDT','9','hgjhgj','78678568','hjghjghj','USA','11.98','USD','100 BDT','1100 BDT',9,'jhkhk',1,NULL,'2017-11-27 03:48:59','2017-11-27 03:48:59'),(56,'TID12431511780134','1000','BDT','ghjgj','67567567','ghjghjghj','Bangladesh','1000','BDT','9','hgjhgj','78678568','hjghjghj','USA','11.98','USD','100 BDT','1100 BDT',9,'jhkhk',1,NULL,'2017-11-27 04:55:34','2017-11-27 04:55:34'),(57,'TID13821511780177','1000','BDT','ghjgj','67567567','ghjghjghj','Bangladesh','1000','BDT','9','hgjhgj','78678568','hjghjghj','USA','11.98','USD','100 BDT','1100 BDT',9,'jhkhk',1,NULL,'2017-11-27 04:56:17','2017-11-27 04:56:17'),(58,'TID19441511780303','1000','BDT','ghjgj','67567567','ghjghjghj','Bangladesh','1000','BDT','9','hgjhgj','78678568','hjghjghj','USA','11.98','USD','100 BDT','1100 BDT',9,'jhkhk',1,NULL,'2017-11-27 04:58:23','2017-11-27 04:58:23'),(59,'TID16611511780356','1000','BDT','ghjgj','67567567','ghjghjghj','Bangladesh','1000','BDT','9','hgjhgj','78678568','hjghjghj','USA','11.98','USD','100 BDT','1100 BDT',9,'jhkhk',1,NULL,'2017-11-27 04:59:16','2017-11-27 04:59:16'),(60,'TID13151511780746','1000','BDT','ghjgj','67567567','ghjghjghj','Bangladesh','1000','BDT','9','hgjhgj','78678568','hjghjghj','USA','11.98','USD','100 BDT','1100 BDT',9,'jhkhk',1,NULL,'2017-11-27 05:05:46','2017-11-27 05:05:46'),(61,'TID13231511780831','1000','BDT','ghjgj','67567567','ghjghjghj','Bangladesh','1000','BDT','9','hgjhgj','78678568','hjghjghj','USA','11.98','USD','100 BDT','1100 BDT',9,'jhkhk',1,NULL,'2017-11-27 05:07:11','2017-11-27 05:07:11');
/*!40000 ALTER TABLE `sending_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'What is Lorem Ipsum?','<p>Lorem Ipsum is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>',1,'2017-11-16 00:32:21','2017-12-14 07:45:11');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (6,'5a343d2882453.jpg','<h2><span style=\"color:#fff;\">Transfer Money is Easy With</span><br>xFER - Money Transfer</h2>','Transfer Money- Anytime - Anywhere',1,'2017-12-14 07:15:46','2017-12-17 23:24:19');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fontAwesomeName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `acountUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
INSERT INTO `social_accounts` VALUES (1,'facebook','http://facebook.com',1,'2017-12-14 08:12:51','2017-12-16 03:33:12'),(2,'instagram','http://instagram.com',1,'2017-12-14 08:13:04','2017-12-16 03:33:03'),(3,'twitter','#',1,'2017-12-16 03:33:30','2017-12-16 03:33:30');
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'5a0d321997b37.jpg','Mr A','Thesoftking IT Solution','3','No Coment',1,'2017-11-16 00:36:36','2017-11-16 00:37:13'),(2,'5a0d320c2d17d.jpg','admin','Thesoftking IT Solution','5','but also the leap into electronic typesetting,',1,'2017-11-16 00:37:00','2017-11-16 00:37:00'),(3,'5a343f2ccd277.jpg','ABIR KHAN','TheSoftKing','5','took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining',1,'2017-12-16 03:31:24','2017-12-16 03:31:24'),(4,'5a343f4fac197.jpg','Hasan','TheSoftKing','4','took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining',1,'2017-12-16 03:31:59','2017-12-16 03:31:59'),(5,'5a343f64e782b.jpg','Robin','TheSoftKing','5','took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining',1,'2017-12-16 03:32:20','2017-12-16 03:32:20');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_logs`
--

DROP TABLE IF EXISTS `transaction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sendTo` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sendFrom` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preBalance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postBalance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transaction_logs_transaction_id_unique` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_logs`
--

LOCK TABLES `transaction_logs` WRITE;
/*!40000 ALTER TABLE `transaction_logs` DISABLE KEYS */;
INSERT INTO `transaction_logs` VALUES (87,'9','TID19611511758103',NULL,NULL,'5000','1000',NULL,'6000',NULL,'1',NULL,'1',1,NULL,'2017-11-26 22:48:23','2017-11-26 22:48:23'),(88,'9','TID14061511758168',NULL,NULL,'6000','1000',NULL,'5000',NULL,'1',NULL,'1',1,NULL,'2017-11-26 22:49:28','2017-11-26 22:49:28'),(89,'9','TID12011511758207',NULL,NULL,'5000','1000','60','3940','1','4',NULL,'1',1,NULL,'2017-11-26 22:50:07','2017-11-26 22:50:24'),(90,'9','TID15791511758325',NULL,NULL,'3940','1000','60','2880','1','2',NULL,'1',2,NULL,'2017-11-26 22:52:05','2017-11-26 22:52:17'),(91,'9','TID18901511758337',NULL,NULL,'2880','1000','60','3940',NULL,'3',NULL,'1',2,NULL,'2017-11-26 22:52:17','2017-11-26 22:52:17'),(92,'9','TID14441511758386',NULL,NULL,'3940','1000','110','3940','1','5',NULL,'1',2,NULL,'2017-11-26 22:53:06','2017-11-26 22:55:36'),(93,'9','TID12681511758536',NULL,NULL,'3940','1000',NULL,'3940',NULL,'7',NULL,'1',2,NULL,'2017-11-26 22:55:36','2017-11-26 22:55:36'),(94,'9','TID18041511758549',NULL,NULL,'3940','5000','510','3940','1','6',NULL,'1',1,NULL,'2017-11-26 22:55:49','2017-11-26 22:55:56'),(95,'9','TID19301511758806',NULL,NULL,'8940','1000','110','9940','1','6',NULL,'1',1,NULL,'2017-11-26 23:00:06','2017-11-26 23:00:45'),(96,'9','TID19501511759316','Mr A','9','9940','500','50','9390',NULL,'8',NULL,'1',1,NULL,'2017-11-26 23:08:36','2017-11-26 23:08:36'),(97,'9','TID12701511759316','Mr A','9','9390','55',NULL,'9445',NULL,'8',NULL,'1',1,NULL,'2017-11-26 23:08:36','2017-11-26 23:08:36'),(98,'9','TID13061511759363','Mr B','Mr A','9445','500',NULL,'9945',NULL,'9',NULL,'1',1,NULL,'2017-11-26 23:09:23','2017-11-26 23:09:23'),(99,'9','TID15021511759442','ghjgj','9','9945','1000','100','8845',NULL,'8','jhkhk','1',1,NULL,'2017-11-26 23:10:42','2017-11-26 23:10:42'),(100,'9','TID16131511759442','ghjgj','9','8845','110',NULL,'8955',NULL,'8','jhkhk','1',1,NULL,'2017-11-26 23:10:42','2017-11-26 23:10:42'),(101,'9','TID19641511776139','hgjhgj','ghjgj','8955','1000.25213',NULL,'9955.25213',NULL,'9','jhkhk','1',1,NULL,'2017-11-27 03:48:59','2017-11-27 03:48:59'),(102,'9','TID12941511780135','hgjhgj','ghjgj','9955.25','1000.25213',NULL,'10955.50213',NULL,'9','jhkhk','1',1,NULL,'2017-11-27 04:55:35','2017-11-27 04:55:35'),(103,'9','TID17261511780177','hgjhgj','ghjgj','10955.5','1000.25213',NULL,'11955.75213',NULL,'9','jhkhk','1',1,NULL,'2017-11-27 04:56:17','2017-11-27 04:56:17'),(104,'9','TID16911511780303','hgjhgj','ghjgj','11955.75','1000.25213',NULL,'12956.00213',NULL,'9','jhkhk','1',1,NULL,'2017-11-27 04:58:23','2017-11-27 04:58:23'),(105,'9','TID10081511780356','hgjhgj','ghjgj','12956','1000.25213',NULL,'13956.25213',NULL,'9','jhkhk','1',1,NULL,'2017-11-27 04:59:16','2017-11-27 04:59:16'),(106,'9','TID13591511780746','hgjhgj','ghjgj','13956.25','1000.25213',NULL,'14956.50213',NULL,'9','jhkhk','1',1,NULL,'2017-11-27 05:05:46','2017-11-27 05:05:46'),(107,'9','TID18701511780831','hgjhgj','ghjgj','5000','1000.25213',NULL,'6000.25213',NULL,'9','jhkhk','1',1,NULL,'2017-11-27 05:07:11','2017-11-27 05:07:11'),(108,'9','TID12561513236573',NULL,NULL,'6000.25','100','15','5885.25','1','2',NULL,'1',0,NULL,'2017-12-14 01:29:33','2017-12-14 01:29:33'),(109,'11','TID10811513593355',NULL,NULL,'1234567','23456789098',NULL,'1983187185',NULL,'1','supportxxxx<br>','1',1,NULL,'2017-12-18 16:35:55','2017-12-18 16:35:55');
/*!40000 ALTER TABLE `transaction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Fredrick Lubowitz','rosetta.reichel@example.net','$2y$10$Nl3dAIz0g9L0OFbAv7PeQu8SShKG8.WiiDBGOEE9HKqyhVuAlRsOy','ybl0qbttD8','2017-11-14 04:09:48','2017-11-14 04:09:48'),(2,'Dr. Karolann VonRueden','spencer.georgette@example.org','$2y$10$Nl3dAIz0g9L0OFbAv7PeQu8SShKG8.WiiDBGOEE9HKqyhVuAlRsOy','rvjfJsSRyY','2017-11-14 04:09:48','2017-11-14 04:09:48'),(3,'Prof. Catherine Bradtke Sr.','jacobs.boris@example.com','$2y$10$Nl3dAIz0g9L0OFbAv7PeQu8SShKG8.WiiDBGOEE9HKqyhVuAlRsOy','SiD8qJ3P6d','2017-11-14 04:09:48','2017-11-14 04:09:48'),(4,'Armani Boyle','alverta.parker@example.com','$2y$10$Nl3dAIz0g9L0OFbAv7PeQu8SShKG8.WiiDBGOEE9HKqyhVuAlRsOy','WArWfVqia9','2017-11-14 04:10:24','2017-11-14 04:10:24'),(5,'Jeremy Deckow','celine.halvorson@example.com','$2y$10$Nl3dAIz0g9L0OFbAv7PeQu8SShKG8.WiiDBGOEE9HKqyhVuAlRsOy','80y41GoHZj','2017-11-14 04:10:24','2017-11-14 04:10:24'),(6,'Trenton Farrell','kailee20@example.net','$2y$10$Nl3dAIz0g9L0OFbAv7PeQu8SShKG8.WiiDBGOEE9HKqyhVuAlRsOy','eyDOZroPgH','2017-11-14 04:10:24','2017-11-14 04:10:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_methods`
--

DROP TABLE IF EXISTS `withdraw_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fix_charge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maximum_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `processing_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_methods`
--

LOCK TABLES `withdraw_methods` WRITE;
/*!40000 ALTER TABLE `withdraw_methods` DISABLE KEYS */;
INSERT INTO `withdraw_methods` VALUES (1,'Rocket','06_09_55.png','BDT','82.6800','10','5','10000','100','5',1,NULL,'2017-11-15 00:07:54','2017-11-16 04:49:30');
/*!40000 ALTER TABLE `withdraw_methods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:16:23
