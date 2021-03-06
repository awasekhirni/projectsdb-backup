-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: walletone
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2018-05-20 12:47:50','2018-05-20 12:47:50'),(2,NULL,1,'Category 2','category-2','2018-05-20 12:47:50','2018-05-20 12:47:50');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currencies_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'Us Dollar','$','2018-07-01 15:13:00','2018-07-01 15:23:02','USD'),(2,'Euro','â‚¬','2018-07-01 15:12:00','2018-07-01 15:24:38','EUR'),(4,'Brasilian Reais','â€ŽR$','2018-07-01 15:13:00','2018-07-01 15:22:48','BRL'),(5,'Indian Rupee','â‚¹','2018-07-01 15:16:00','2018-07-01 15:21:57','INR'),(6,'Bitcoin','(BTC)','2018-07-03 23:20:42','2018-07-03 23:20:42','BTC'),(7,'Ethereum','( ETH )','2018-07-05 17:02:00','2018-07-05 18:50:52','ETH'),(9,'Argentinian Peso','$','2018-08-28 05:18:55','2018-08-28 05:18:55','ARS');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_deposit_methods`
--

DROP TABLE IF EXISTS `currency_deposit_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_deposit_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) DEFAULT NULL,
  `deposit_method_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_depositmethod_currency_id_` (`currency_id`),
  KEY `currencie_deposit_deposit_method_id_index` (`deposit_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_deposit_methods`
--

LOCK TABLES `currency_deposit_methods` WRITE;
/*!40000 ALTER TABLE `currency_deposit_methods` DISABLE KEYS */;
INSERT INTO `currency_deposit_methods` VALUES (3,1,1,'2018-07-04 13:41:01','2018-07-04 13:41:01'),(4,2,1,'2018-07-04 14:08:28','2018-07-04 14:08:28'),(5,4,1,'2018-07-04 14:20:55','2018-07-04 14:20:55'),(6,5,1,'2018-07-04 14:21:10','2018-07-04 14:21:10'),(9,6,1,'2018-07-04 14:21:00','2018-07-05 17:38:19'),(10,7,2,'2018-07-05 18:21:21','2018-07-05 18:21:21');
/*!40000 ALTER TABLE `currency_deposit_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_exchange_rates`
--

DROP TABLE IF EXISTS `currency_exchange_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_exchange_rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_currency_id` int(11) NOT NULL,
  `second_currency_id` int(11) NOT NULL,
  `exchanges_to_second_currency_value` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_exchange_rates`
--

LOCK TABLES `currency_exchange_rates` WRITE;
/*!40000 ALTER TABLE `currency_exchange_rates` DISABLE KEYS */;
INSERT INTO `currency_exchange_rates` VALUES (6,6,1,6260.3,'2018-07-14 21:52:22','2018-07-14 21:52:22'),(7,1,6,0.00016,'2018-07-14 21:54:09','2018-07-14 21:54:09'),(8,9,1,31.7,'2018-08-28 05:20:37','2018-08-28 05:20:37'),(9,1,9,39.93,'2018-08-28 05:21:00','2018-09-15 17:19:58');
/*!40000 ALTER TABLE `currency_exchange_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_withdrawal_methods`
--

DROP TABLE IF EXISTS `currency_withdrawal_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_withdrawal_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) DEFAULT NULL,
  `withdrawal_method_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_withdrawal_methods`
--

LOCK TABLES `currency_withdrawal_methods` WRITE;
/*!40000 ALTER TABLE `currency_withdrawal_methods` DISABLE KEYS */;
INSERT INTO `currency_withdrawal_methods` VALUES (1,1,1,'2018-07-04 15:12:29','2018-07-04 15:12:29'),(2,2,1,'2018-07-04 15:12:43','2018-07-04 15:12:43'),(3,4,1,'2018-07-04 15:12:52','2018-07-04 15:12:52'),(4,5,1,'2018-07-04 15:13:06','2018-07-04 15:13:06'),(5,6,1,'2018-07-04 15:13:16','2018-07-04 15:13:16'),(6,9,1,'2018-08-28 05:27:17','2018-08-28 05:27:17');
/*!40000 ALTER TABLE `currency_withdrawal_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',0,0,0,0,0,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(12,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(13,2,'id','number','ID',1,0,0,0,0,0,'',1),(14,2,'name','text','Name',1,1,1,1,1,1,'',2),(15,2,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(16,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(17,3,'id','number','ID',1,0,0,0,0,0,'',1),(18,3,'name','text','Name',1,1,1,1,1,1,'',2),(19,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(20,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(21,3,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(22,1,'role_id','text','Role',0,1,1,1,1,1,NULL,9),(23,4,'id','number','ID',1,0,0,0,0,0,'',1),(24,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(25,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(26,4,'name','text','Name',1,1,1,1,1,1,'',4),(27,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(28,4,'created_at','timestamp','Created At',0,0,1,0,0,0,'',6),(29,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),(30,5,'id','number','ID',1,0,0,0,0,0,'',1),(31,5,'author_id','text','Author',1,0,1,1,0,1,'',2),(32,5,'category_id','text','Category',1,0,1,1,1,0,'',3),(33,5,'title','text','Title',1,1,1,1,1,1,'',4),(34,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',5),(35,5,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(36,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(37,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(38,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,'',9),(39,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,'',10),(40,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(41,5,'created_at','timestamp','Created At',0,1,1,0,0,0,'',12),(42,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',13),(43,5,'seo_title','text','SEO Title',0,1,1,1,1,1,'',14),(44,5,'featured','checkbox','Featured',1,1,1,1,1,1,'',15),(45,6,'id','number','ID',1,0,0,0,0,0,'',1),(46,6,'author_id','text','Author',1,0,0,0,0,0,'',2),(47,6,'title','text','Title',1,1,1,1,1,1,'',3),(48,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',4),(49,6,'body','rich_text_box','Body',1,0,1,1,1,1,'',5),(50,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(51,6,'meta_description','text','Meta Description',1,0,1,1,1,1,'',7),(52,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,'',8),(53,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(54,6,'created_at','timestamp','Created At',1,1,1,0,0,0,'',10),(55,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,'',11),(56,6,'image','image','Page Image',0,1,1,1,1,1,'',12),(57,7,'id','hidden','Id',1,1,1,1,0,0,NULL,1),(58,7,'user_id','hidden','User Id',1,0,0,1,0,0,NULL,4),(59,7,'transaction_state_id','hidden','Transaction State Id',1,0,1,1,0,0,NULL,5),(60,7,'withdrawal_method_id','hidden','Withdrawal Method Id',1,0,0,0,0,0,NULL,6),(61,7,'gross','text','Gross',1,1,1,0,0,0,NULL,7),(62,7,'fee','hidden','Fee',1,1,1,0,0,0,NULL,8),(63,7,'net','hidden','Net',1,1,1,0,0,0,NULL,9),(64,7,'platform_id','hidden','Platform Id',1,1,1,0,0,0,NULL,10),(65,7,'json_data','hidden','Json Data',0,0,0,0,0,0,NULL,11),(66,7,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(67,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(68,7,'withdrawal_belongsto_user_relationship','relationship','User',0,1,1,1,0,0,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(69,7,'withdrawal_belongsto_withdrawal_method_relationship','relationship','Withdrawal Method',0,1,1,1,0,0,'{\"model\":\"App\\\\Models\\\\WithdrawalMethod\",\"table\":\"withdrawal_methods\",\"type\":\"belongsTo\",\"column\":\"withdrawal_method_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',16),(70,7,'withdrawal_belongsto_transaction_state_relationship','relationship','transaction_states',0,1,1,1,0,0,'{\"model\":\"App\\\\Models\\\\TransactionState\",\"table\":\"transaction_states\",\"type\":\"belongsTo\",\"column\":\"transaction_state_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',17),(71,8,'id','text','Id',1,0,0,0,0,0,NULL,1),(72,8,'name','text','Name',1,1,1,1,1,1,NULL,2),(73,8,'comment','rich_text_box','Comment',1,1,1,1,1,1,NULL,3),(74,8,'percentage_fee','number','Percentage Fee',1,1,1,1,1,1,NULL,4),(75,8,'fixed_fee','number','Fixed Fee',1,1,1,1,1,1,NULL,5),(76,8,'json_data','text','Json Data',0,1,1,1,1,1,NULL,6),(77,8,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,7),(78,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8),(79,9,'id','hidden','Id',1,1,1,1,0,0,NULL,2),(80,9,'user_id','hidden','User Id',1,1,1,1,0,0,NULL,4),(81,9,'transaction_state_id','hidden','Transaction State Id',1,0,0,1,0,0,NULL,5),(82,9,'deposit_method_id','hidden','Deposit Method Id',1,0,0,1,0,0,NULL,6),(83,9,'gross','text','Gross',1,1,1,1,0,0,NULL,7),(84,9,'fee','text','Fee',1,1,1,0,0,0,NULL,8),(85,9,'net','text','Net',1,1,1,0,0,0,NULL,9),(86,9,'transaction_receipt','image','Transaction Receipt',0,1,1,0,0,0,NULL,10),(87,9,'json_data','hidden','Json Data',0,0,0,0,0,0,NULL,11),(88,9,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,12),(89,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(90,10,'id','text','Id',1,1,1,1,0,0,NULL,1),(91,10,'name','text','Name',1,1,1,1,1,1,NULL,2),(92,10,'how_to','rich_text_box','How To',1,1,1,1,1,1,NULL,3),(93,10,'json_data','hidden','Json Data',0,1,1,1,1,1,NULL,4),(94,10,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,5),(95,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6),(96,11,'id','text','Id',1,1,1,1,1,0,NULL,1),(97,11,'name','text','Name',1,1,1,1,1,1,NULL,2),(98,11,'json_data','hidden','Json Data',0,1,1,1,1,1,NULL,3),(99,11,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(100,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(101,1,'middle_name','text','Middle Name',0,1,1,1,1,1,NULL,4),(102,1,'last_name','text','Last Name',0,1,1,1,1,1,NULL,5),(103,1,'verified','text','Verified',1,1,1,1,1,1,NULL,9),(104,1,'merchant','text','Merchant',1,1,1,1,1,1,NULL,10),(105,1,'default_currency','text','Default Currency',1,1,1,1,1,1,NULL,11),(106,1,'social','text','Social',1,1,1,1,1,1,NULL,12),(107,1,'balance','text','Balance',1,1,1,1,1,1,NULL,13),(108,1,'json_data','text','Json Data',0,1,1,1,1,1,NULL,14),(109,1,'account_status','text','Account Status',1,1,1,1,1,1,NULL,15),(110,1,'ticketit_admin','text','Ticketit Admin',1,1,1,1,1,1,NULL,20),(111,1,'ticketit_agent','text','Ticketit Agent',1,1,1,1,1,1,NULL,21),(112,12,'id','text','Id',1,1,1,0,0,0,NULL,1),(113,12,'user_id','text','User Id',1,1,1,1,1,1,NULL,4),(114,12,'request_id','text','Request Id',0,1,1,1,1,1,NULL,5),(115,12,'transactionable_id','text','Transactionable Id',1,1,1,1,1,1,NULL,6),(116,12,'transactionable_type','text','Transactionable Type',1,1,1,1,1,1,NULL,7),(117,12,'entity_id','text','Entity Id',1,1,1,1,1,1,NULL,8),(118,12,'entity_name','text','Entity Name',1,1,1,1,1,1,NULL,9),(119,12,'transaction_state_id','text','Transaction State Id',1,1,1,1,1,1,NULL,10),(120,12,'currency','text','Currency',1,1,1,1,1,1,NULL,11),(121,12,'activity_title','text','Activity Title',1,1,1,1,1,1,NULL,12),(122,12,'money_flow','text','Money Flow',1,1,1,1,1,1,NULL,13),(123,12,'gross','text','Gross',1,1,1,1,1,1,NULL,14),(124,12,'fee','text','Fee',1,1,1,1,1,1,NULL,15),(125,12,'net','text','Net',1,1,1,1,1,1,NULL,16),(126,12,'balance','text','Balance',0,1,1,1,1,1,NULL,17),(127,12,'json_data','text','Json Data',0,1,1,1,1,1,NULL,18),(128,12,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,19),(129,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,20),(130,12,'transactionable_belongsto_user_relationship','relationship','users',0,1,1,1,1,1,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(131,12,'transactionable_belongsto_category_relationship','relationship','Transaction State',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\TransactionState\",\"table\":\"transaction_states\",\"type\":\"belongsTo\",\"column\":\"transaction_state_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(132,9,'deposit_belongsto_transaction_state_relationship','relationship','transaction state',0,1,1,0,0,0,'{\"model\":\"App\\\\Models\\\\TransactionState\",\"table\":\"transaction_states\",\"type\":\"belongsTo\",\"column\":\"transaction_state_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(133,13,'id','text','Id',1,1,1,1,0,0,NULL,2),(134,13,'user_id','text','User Id',1,1,1,1,1,1,NULL,3),(135,13,'merchant_key','text','Merchant Key',1,1,1,1,1,1,NULL,4),(136,13,'site_url','text','Site Url',1,1,1,1,1,1,NULL,5),(137,13,'success_link','text','Success Link',1,1,1,1,1,1,NULL,6),(138,13,'fail_link','text','Fail Link',1,1,1,1,1,1,NULL,7),(139,13,'logo','hidden','Logo',0,1,1,1,1,1,NULL,8),(140,13,'name','text','Name',1,1,1,1,1,1,NULL,9),(141,13,'description','text','Description',0,1,1,1,1,1,NULL,10),(142,13,'json_data','hidden','Json Data',0,1,1,1,1,1,NULL,11),(143,13,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,12),(144,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(145,13,'merchant_belongsto_user_relationship','relationship','user',0,1,1,0,0,1,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',1),(146,15,'id','text','Id',1,1,1,0,0,0,NULL,1),(147,15,'name','text','Name',0,1,1,1,1,1,NULL,2),(148,15,'symbol','text','Symbol',0,1,1,1,1,1,NULL,3),(160,18,'id','text','Id',1,1,1,0,0,0,NULL,1),(161,18,'name','text','Name',0,1,1,1,1,1,NULL,2),(162,18,'symbol','text','Symbol',0,1,1,1,1,1,NULL,3),(163,18,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,5),(164,18,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6),(165,18,'code','text','Code',0,1,1,1,1,1,NULL,4),(172,19,'id','text','Id',1,0,0,0,0,0,NULL,1),(173,19,'first_currency_id','hidden','First Currency Id',1,1,1,1,1,1,NULL,4),(174,19,'second_currency_id','hidden','Second Currency Id',1,1,1,1,1,1,NULL,5),(176,19,'exchanges_to_second_currency_value','text','One ( 1 ) first currency exchanges to second currency value',1,1,1,1,1,1,NULL,7),(177,19,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,8),(178,19,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,9),(179,19,'currency_exchange_rate_belongsto_currency_relationship','relationship','First Currency',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Currency\",\"table\":\"currencies\",\"type\":\"belongsTo\",\"column\":\"first_currency_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(180,19,'currency_exchange_rate_belongsto_currency_relationship_1','relationship','Second Currency',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Currency\",\"table\":\"currencies\",\"type\":\"belongsTo\",\"column\":\"second_currency_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(181,21,'id','text','Id',1,0,0,0,0,0,NULL,1),(182,21,'user_id','hidden','User Id',1,1,1,1,1,1,NULL,5),(183,21,'currency_id','hidden','Currency Id',1,1,1,1,1,1,NULL,6),(184,21,'amount','text','Amount',0,1,1,1,1,1,NULL,7),(185,21,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,8),(186,21,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,10),(187,21,'wallet_belongsto_user_relationship','relationship','users',0,1,1,1,1,1,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(188,21,'wallet_belongsto_currency_relationship','relationship','currency',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Currency\",\"table\":\"currencies\",\"type\":\"belongsTo\",\"column\":\"currency_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(191,9,'currency_id','hidden','Currency Id',0,1,1,1,1,1,NULL,14),(192,9,'currency_symbol','text','Currency Symbol',0,1,1,1,1,1,NULL,15),(193,9,'wallet_id','text','Wallet Id',0,1,1,1,1,1,NULL,16),(194,9,'deposit_belongsto_wallet_relationship','relationship','wallet',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Wallet\",\"table\":\"wallets\",\"type\":\"belongsTo\",\"column\":\"wallet_id\",\"key\":\"id\",\"label\":\"currency_id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',1),(195,23,'id','text','Id',1,0,0,0,0,0,NULL,1),(196,23,'currency_id','text','Currency Id',0,1,1,1,1,1,NULL,2),(197,23,'deposit_method_id','text','Deposit Method Id',0,1,1,1,1,1,NULL,3),(198,23,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(199,23,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(200,24,'id','text','Id',1,0,0,0,0,0,NULL,1),(201,24,'currency_id','hidden','Currency Id',0,1,1,1,1,1,NULL,2),(202,24,'deposit_method_id','hidden','Deposit Method Id',0,1,1,1,1,1,NULL,3),(203,24,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(204,24,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(205,24,'currencie_deposit_belongsto_currency_relationship','relationship','currencies',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Currency\",\"table\":\"currencies\",\"type\":\"belongsTo\",\"column\":\"currency_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(206,24,'currencie_deposit_belongsto_deposit_method_relationship','relationship','deposit_methods',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\DepositMethod\",\"table\":\"deposit_methods\",\"type\":\"belongsTo\",\"column\":\"deposit_method_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),(207,25,'id','text','Id',1,0,0,0,0,0,NULL,1),(208,25,'currency_id','hidden','Currency Id',0,1,1,1,1,1,NULL,2),(209,25,'deposit_method_id','hidden','Deposit Method Id',0,1,1,1,1,1,NULL,3),(210,25,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(211,25,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(212,25,'currency_deposit_method_belongsto_currency_relationship','relationship','currencies',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Currency\",\"table\":\"currencies\",\"type\":\"belongsTo\",\"column\":\"currency_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),(213,25,'currency_deposit_method_belongsto_deposit_method_relationship','relationship','deposit_methods',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\DepositMethod\",\"table\":\"deposit_methods\",\"type\":\"belongsTo\",\"column\":\"deposit_method_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}',7),(214,28,'id','text','Id',1,0,0,0,0,0,NULL,1),(215,28,'currency_id','hidden','Currency Id',0,0,0,1,1,1,NULL,4),(216,28,'deposit_method_id','hidden','Deposit Method Id',0,0,0,1,1,1,NULL,5),(217,28,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,6),(218,28,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(219,29,'id','text','Id',1,0,0,0,0,0,NULL,1),(220,29,'currency_id','hidden','Currency Id',0,1,1,1,1,1,NULL,4),(222,29,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,6),(223,29,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(224,29,'currency_withdrawal_method_belongsto_currency_relationship','relationship','currencies',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Currency\",\"table\":\"currencies\",\"type\":\"belongsTo\",\"column\":\"currency_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(225,29,'currency_withdrawal_method_belongsto_withdrawal_method_relationship','relationship','withdrawal_methods',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\WithdrawalMethod\",\"table\":\"withdrawal_methods\",\"type\":\"belongsTo\",\"column\":\"withdrawal_method_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(227,28,'currency_deposit_method_belongsto_currency_relationship_1','relationship','currencies',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Currency\",\"table\":\"currencies\",\"type\":\"belongsTo\",\"column\":\"currency_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(228,28,'currency_deposit_method_belongsto_deposit_method_relationship_1','relationship','deposit_methods',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\DepositMethod\",\"table\":\"deposit_methods\",\"type\":\"belongsTo\",\"column\":\"deposit_method_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(229,29,'withdrawal_method_id','text','Withdrawal Method Id',0,1,1,1,1,1,NULL,5),(230,12,'currency_id','text','Currency Id',0,1,1,1,1,1,NULL,19),(231,12,'currency_symbol','text','Currency Symbol',0,1,1,1,1,1,NULL,20),(232,7,'withdrawal_belongsto_currency_relationship','relationship','currency',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Currency\",\"table\":\"currencies\",\"type\":\"belongsTo\",\"column\":\"currency_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(233,7,'currency_id','hidden','Currency Id',0,1,1,1,1,1,NULL,14),(234,7,'currency_symbol','hidden','Currency Symbol',0,1,1,1,1,1,NULL,15),(235,30,'id','text','Id',1,0,0,0,0,0,NULL,1),(236,30,'name','text','Name',0,1,1,1,1,1,NULL,2),(237,30,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,3),(238,30,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(239,9,'message','hidden','Message',0,1,1,1,1,1,NULL,15),(240,7,'wallet_id','hidden','Wallet Id',0,1,1,1,1,1,NULL,14),(241,31,'id','text','Id',1,1,1,0,0,0,NULL,1),(242,31,'user_id','text','User Id',0,1,1,0,0,0,NULL,2),(243,31,'voucher_amount','text','Voucher Amount',1,1,1,0,0,0,NULL,3),(244,31,'voucher_code','text','Voucher Code',1,1,1,0,0,0,NULL,4),(245,31,'json_data','text','Json Data',0,1,1,0,0,0,NULL,5),(246,31,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(247,31,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(248,31,'currency_id','text','Currency Id',0,1,1,0,0,0,NULL,8),(249,31,'currency_symbol','text','Currency Symbol',0,1,1,0,0,0,NULL,9),(250,31,'user_loader','text','User Loader',0,1,1,0,0,0,NULL,10),(251,31,'is_loaded','text','Is Loaded',0,1,1,0,0,0,NULL,11),(252,31,'voucher_fee','text','Voucher Fee',0,1,1,0,0,0,NULL,12),(253,31,'wallet_id','text','Wallet Id',0,1,1,0,0,0,NULL,13),(254,31,'voucher_value','text','Voucher Value',0,1,1,0,0,0,NULL,14);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy',NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-05-20 12:47:48','2018-06-05 17:20:53'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-05-20 12:47:48','2018-05-20 12:47:48'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-05-20 12:47:48','2018-05-20 12:47:48'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2018-05-20 12:47:50','2018-05-20 12:47:50'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2018-05-20 12:47:50','2018-05-20 12:47:50'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2018-05-20 12:47:50','2018-05-20 12:47:50'),(7,'withdrawals','withdrawals','Withdrawal','Withdrawals','voyager-external','App\\Models\\Withdrawal',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-05-21 05:25:46','2018-05-21 05:25:46'),(8,'withdrawal_methods','withdrawal-methods','Withdrawal Method','Withdrawal Methods','voyager-pie-chart','App\\Models\\WithdrawalMethod',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-05-21 05:34:39','2018-05-21 05:34:39'),(9,'deposits','deposits','Deposit','Deposits','voyager-book','App\\Models\\Deposit',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-05-21 05:51:52','2018-05-21 05:51:52'),(10,'deposit_methods','deposit-methods','Deposit Method','Deposit Methods','voyager-paypal','App\\Models\\DepositMethod',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-05-21 05:59:16','2018-05-21 05:59:56'),(11,'transaction_states','transaction-states','Transaction State','Transaction States','voyager-check','App\\Models\\TransactionState',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-05-21 06:15:47','2018-05-21 06:15:47'),(12,'transactionable','transactionable','Transaction','Transactions','voyager-dollar','App\\Models\\Transaction',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null}','2018-06-15 14:31:29','2018-09-24 16:58:20'),(13,'merchants','merchants','Merchant','Merchants','voyager-credit-card','App\\Models\\Merchant',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-06-21 13:30:20','2018-06-21 13:30:20'),(15,'currencys','currencys','Currency','Currencies','voyager-diamond','App\\Models\\Currency',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-07-01 14:52:25','2018-07-01 14:52:25'),(18,'currencies','currencies','Currency','Currencies','voyager-list-add','App\\Models\\Currency',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-07-01 15:20:20','2018-07-01 15:20:20'),(19,'currency_exchange_rates','currency-exchange-rates','Currency Exchange Rate','Currency Exchange Rates','vayager-lab','App\\Models\\CurrencyExchangeRate',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-07-01 16:03:17','2018-07-01 16:03:17'),(21,'wallets','wallets','Wallet','Wallets','voyager-wallet','App\\Models\\Wallet',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-07-01 16:34:40','2018-07-01 16:34:40'),(23,'currency_depositmethod','currency-depositmethod','Currency By Deposit','Currency By Deposit',NULL,'App\\Models\\CurrencyDeposit',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-07-04 00:34:44','2018-07-04 13:11:56'),(24,'currencie_deposit','currencie-deposit','Currencie Deposit','Currencie Deposits',NULL,'App\\Models\\CurrencyDeposit',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-07-04 13:17:25','2018-07-04 13:17:25'),(25,'currency_deposit_method','currency-deposit-method','Currency Deposit Method','Currency Deposit Methods',NULL,'App\\Models\\CurrencyDepositMethod',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-07-04 13:34:24','2018-07-04 13:34:24'),(28,'currency_deposit_methods','currency-deposit-methods','Currency Deposit Method','Currency Deposit Methods',NULL,'App\\Models\\CurrencyDepositMethod',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-07-04 14:49:54','2018-07-04 14:49:54'),(29,'currency_withdrawal_methods','currency-withdrawal-methods','Currency Withdrawal Method','Currency Withdrawal Methods',NULL,'App\\Models\\CurrencyWithdrawalMethod',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-07-04 14:57:35','2018-07-04 14:57:35'),(30,'ticketcategories','ticketcategories','Ticketcategory','Ticketcategories','voyager-ticket','App\\Models\\Ticketcategory',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-07-19 22:41:21','2018-07-19 22:42:09'),(31,'vouchers','vouchers','Voucher','Vouchers','voyager-treasure','App\\Models\\Voucher',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-09-16 13:35:48','2018-09-16 13:35:48');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_methods`
--

DROP TABLE IF EXISTS `deposit_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_to` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_methods`
--

LOCK TABLES `deposit_methods` WRITE;
/*!40000 ALTER TABLE `deposit_methods` DISABLE KEYS */;
INSERT INTO `deposit_methods` VALUES (1,'PayPal','<p>Log in to your <a title=\"paypal\" href=\"https://paypal.com\" target=\"_blank\" rel=\"noopener noreferrer\">PayPal</a> account and send money to <strong>meticoin@gmail.com</strong> then make a creenshot of the transaction receipt and upload the screenshoot in the field below.</p>',NULL,'2018-05-21 06:05:00','2018-05-22 10:44:17'),(2,'myetherwallet','<p>Please create an ethereum wallet in <a href=\"https://www.myetherwallet.com/\">https://www.myetherwallet.com/</a>&nbsp;and send the amount you want to deposit to your phpWallet Ethereum then send a screenshot of the transaction receipt to the upload field below.</p>',NULL,'2018-07-05 18:20:47','2018-07-05 18:20:47'),(3,'MercadoPago','<div class=\"s-payments__methods-container\" style=\"box-sizing: border-box; margin: 0px auto; max-width: 54em; color: #333333; font-family: \'Proxima Nova\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">\r\n<h2 class=\"s-payments__title\" style=\"box-sizing: border-box; margin: 0px 0px 2.08824em; font-weight: 400; color: #2d3277; font-size: 2.125em; line-height: 1.11765; max-width: 10.2941em;\">Us&aacute; el medio de pago que prefieras</h2>\r\n<div class=\"s-payments__methods\" style=\"box-sizing: border-box; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row wrap;\">\r\n<div class=\"s-payments__credit-cards\" style=\"box-sizing: border-box; width: 864px;\">\r\n<div class=\"ui-payment-methods  mla\" style=\"box-sizing: border-box;\">\r\n<h4 class=\"ui-payment-methods__title\" style=\"box-sizing: border-box; margin: 0px 0.85714em 1.85714em 0px; font-weight: 400; display: inline-block; color: #7a8899; font-size: 0.875em; letter-spacing: 0.07143em; line-height: 1.28571em; text-transform: uppercase;\">TARJETAS DE CR&Eacute;DITO</h4>\r\n<span class=\"ui-payment-methods__highlighted-text\" style=\"box-sizing: border-box; display: inline-block; background-color: #2ec74b; border-radius: 0.15385em; color: #ffffff; font-size: 12px; padding: 0.29167em 0.83333em; line-height: 1.5; text-align: center; margin: 0px 1em 1.83333em 0px;\">Hasta 12 cuotas</span>\r\n<ul class=\"ui-payment-methods__list\" style=\"box-sizing: border-box; margin: 0px -1.0625em 0px 0px; padding: 0px; list-style: none;\">\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-visa paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -49px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); width: 63px; height: 21px;\">visa</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-master paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -100px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); height: 36px; width: 46px;\">master</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-amex paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -150px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); height: 27px; width: 26px;\">amex</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-mercadopago_cc paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -1049px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); height: 27px; width: 38px;\">mercadopago_cc</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-naranja paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -300px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); height: 34px; width: 24px;\">naranja</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-nativa paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -350px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); height: 27px; width: 58px;\">nativa</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-tarshop paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -400px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); width: 42px; height: 27px;\">tarshop</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-cabal\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 2px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -500px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-default.png\'); height: 17px; width: 52px;\">cabal</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-diners\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 2px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -200px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-default.png\'); height: 16px; width: 62px;\">diners</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-argencard paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -550px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); height: 28px; width: 28px;\">argencard</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-cordial paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -900px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); height: 25px; width: 38px;\">cordial</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-cordobesa paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 0px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -998px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); height: 18px; width: 64px;\">cordobesa</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-cmr paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -949px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); height: 31px; width: 42px;\">cmr</span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"s-payments__debit-cards\" style=\"box-sizing: border-box; margin-top: 2.9375em; width: 432px;\">\r\n<div class=\"ui-payment-methods payments-section__cash-debit--debit mla\" style=\"box-sizing: border-box;\">\r\n<h4 class=\"ui-payment-methods__title\" style=\"box-sizing: border-box; margin: 0px 0.85714em 1.85714em 0px; font-weight: 400; display: inline-block; color: #7a8899; font-size: 0.875em; letter-spacing: 0.07143em; line-height: 1.28571em; text-transform: uppercase;\">TARJETAS DE D&Eacute;BITO</h4>\r\n<ul class=\"ui-payment-methods__list\" style=\"box-sizing: border-box; margin: 0px -1.0625em 0px 0px; padding: 0px; list-style: none;\">\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-debvisa\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 2px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -1248px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-default.png\'); width: 58px; height: 16px;\">debvisa</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-debmaster\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 2px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -1148px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-default.png\'); height: 26px; width: 49px;\">debmaster</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-maestro\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 2px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -1197px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-default.png\'); height: 25px; width: 30px;\">maestro</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-debcabal\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 2px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -1298px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-default.png\'); height: 24px; width: 52px;\">debcabal</span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"s-payments__cash\" style=\"box-sizing: border-box; margin-top: 2.9375em; width: 432px;\">\r\n<div class=\"ui-payment-methods payments-section__cash-debit--cash mla\" style=\"box-sizing: border-box;\">\r\n<h4 class=\"ui-payment-methods__title\" style=\"box-sizing: border-box; margin: 0px 0.85714em 1.85714em 0px; font-weight: 400; display: inline-block; color: #7a8899; font-size: 0.875em; letter-spacing: 0.07143em; line-height: 1.28571em; text-transform: uppercase;\">EN EFECTIVO</h4>\r\n<ul class=\"ui-payment-methods__list\" style=\"box-sizing: border-box; margin: 0px -1.0625em 0px 0px; padding: 0px; list-style: none;\">\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-pagofacil paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -600px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); height: 31px; width: 31px;\">pagofacil</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-rapipago\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 2px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -650px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-default.png\'); height: 11px; width: 56px;\">rapipago</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-cobroexpress\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 2px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -1448px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-default.png\'); height: 16px; width: 58px;\">cobroexpress</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-redlink paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -700px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); height: 31px; width: 31px;\">redlink</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-bapropagos\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 2px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -800px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-default.png\'); width: 54px; height: 24px;\">bapropagos</span></li>\r\n<li class=\"ui-payment-methods__item\" style=\"box-sizing: border-box; background-color: #f7f7f7; border-radius: 0.125em; display: inline-block; height: 2.75em; line-height: 2.5625em; margin: 0px 1em 1em 0px; text-align: center; width: 4.5em;\"><span class=\"ui-payment-methods__icon paymentmethod paymentmethod-cargavirtual paymentmethod-large\" style=\"box-sizing: border-box; background-repeat: no-repeat; display: inline-block; margin: 5px; overflow: hidden; text-indent: 100%; vertical-align: middle; white-space: nowrap; background-position: 0px -849px; background-image: url(\'https://http2.mlstatic.com/secure/org-img/ui/payment-methods/1.7.5/ar/payment-methods-large.png\'); height: 33px; width: 32px;\">cargavirtual</span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"ui-box s-payments__banks\" style=\"box-sizing: border-box; padding: 4em 0px 4em 5.625em; display: flex; margin: 2em 0px 0px; box-shadow: rgba(155, 169, 187, 0.3) 0px 5px 10px 0px; border-radius: 0.25em; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; z-index: 3; position: relative; background-image: url(\'https://http2.mlstatic.com/resources/frontend/statics/buyers-landings/d09d769bb2a0e519b710539c075800f9.jpg\'); background-position: 111.5% 4px; background-size: 33%; max-width: 65em; background-repeat: no-repeat; -webkit-box-align: start; align-items: flex-start; color: #333333; font-family: \'Proxima Nova\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">\r\n<div class=\"ui-box__body ui-box__body--left\" style=\"box-sizing: border-box; max-width: 37.6875em; -webkit-box-align: start; align-items: flex-start; margin-top: 0px;\">\r\n<h2 class=\"ui-box__title\" style=\"box-sizing: border-box; margin: 0px 0px 0.16667em; font-weight: 400; line-height: 1.16667;\">Pag&aacute; siempre en 6 cuotas sin inter&eacute;s</h2>\r\n</div>\r\n</div>',NULL,'2018-08-28 05:23:43','2018-08-28 05:23:43');
/*!40000 ALTER TABLE `deposit_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `transaction_state_id` int(11) NOT NULL,
  `deposit_method_id` int(11) NOT NULL,
  `gross` double(8,2) NOT NULL,
  `fee` double(8,2) NOT NULL,
  `net` double(8,2) NOT NULL,
  `transaction_receipt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchanges`
--

DROP TABLE IF EXISTS `exchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exchanges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `first_currency_id` int(11) DEFAULT NULL,
  `second_currency_id` int(11) DEFAULT NULL,
  `gross` double DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `net` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchanges`
--

LOCK TABLES `exchanges` WRITE;
/*!40000 ALTER TABLE `exchanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,2,'2018-05-20 12:47:48','2018-07-04 13:14:57','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,18,'2018-05-20 12:47:48','2018-09-16 13:38:44','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,4,'2018-05-20 12:47:48','2018-07-04 13:14:57','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,17,'2018-05-20 12:47:48','2018-09-16 13:38:44','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,1,'2018-05-20 12:47:48','2018-07-04 13:14:57',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2018-05-20 12:47:48','2018-06-21 13:31:38','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2018-05-20 12:47:48','2018-06-21 13:31:38','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2018-05-20 12:47:48','2018-06-21 13:31:38','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2018-05-20 12:47:48','2018-06-21 13:31:38','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,3,'2018-05-20 12:47:48','2018-07-04 13:14:57','voyager.settings.index',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,NULL,20,'2018-05-20 12:47:50','2018-09-16 13:38:44','voyager.categories.index',NULL),(12,1,'Posts','','_self','voyager-news',NULL,NULL,19,'2018-05-20 12:47:50','2018-09-16 13:38:44','voyager.posts.index',NULL),(13,1,'Pages','','_self','voyager-file-text',NULL,NULL,21,'2018-05-20 12:47:50','2018-09-16 13:38:44','voyager.pages.index',NULL),(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2018-05-20 12:47:51','2018-06-21 13:31:38','voyager.hooks',NULL),(15,1,'Withdrawals','','_self','voyager-external',NULL,NULL,6,'2018-05-21 05:25:46','2018-07-04 13:14:57','voyager.withdrawals.index',NULL),(16,1,'Withdrawal Methods','','_self','voyager-pie-chart',NULL,NULL,10,'2018-05-21 05:34:39','2018-09-16 13:38:52','voyager.withdrawal-methods.index',NULL),(17,1,'Deposits','','_self','voyager-book',NULL,NULL,7,'2018-05-21 05:51:52','2018-07-04 13:14:57','voyager.deposits.index',NULL),(18,1,'Deposit Methods','','_self','voyager-paypal','#000000',NULL,11,'2018-05-21 05:59:16','2018-09-16 13:38:52','voyager.deposit-methods.index','null'),(19,1,'Transaction States','','_self','voyager-check',NULL,NULL,12,'2018-05-21 06:15:47','2018-09-16 13:38:52','voyager.transaction-states.index',NULL),(20,1,'Transactions','','_self','voyager-dollar',NULL,NULL,9,'2018-06-15 14:31:29','2018-09-16 13:38:59','voyager.transactionable.index',NULL),(21,1,'Merchants','','_self','voyager-credit-card',NULL,NULL,5,'2018-06-21 13:30:20','2018-07-04 13:14:57','voyager.merchants.index',NULL),(23,1,'Currency Exchange Rates','','_self','voyager-lab',NULL,NULL,14,'2018-07-01 14:54:04','2018-09-16 13:38:44','voyager.currency-exchange-rates.index',NULL),(25,1,'Currencies','','_self','voyager-list-add',NULL,NULL,13,'2018-07-01 15:20:20','2018-09-16 13:38:44','voyager.currencies.index',NULL),(26,1,'Wallets','','_self','voyager-wallet',NULL,NULL,15,'2018-07-01 16:34:40','2018-09-16 13:38:44','voyager.wallets.index',NULL),(30,1,'link Method to Currency','','_self','voyager-code','#000000',18,2,'2018-07-04 14:49:54','2018-07-05 18:07:22','voyager.currency-deposit-methods.index','null'),(31,1,'Link Method to Currency','','_self','voyager-code','#000000',16,2,'2018-07-04 14:57:35','2018-07-09 15:03:45','voyager.currency-withdrawal-methods.index','null'),(32,1,'Add Method','','_self','voyager-list-add','#000000',18,1,'2018-07-05 18:05:56','2018-07-05 18:06:06','voyager.deposit-methods.index',NULL),(33,1,'Add Methods','','_self','voyager-list-add','#000000',16,1,'2018-07-09 15:02:23','2018-07-09 15:02:45','voyager.withdrawal-methods.index',NULL),(34,1,'Ticket Categories','','_self','voyager-ticket','#000000',NULL,16,'2018-07-19 22:41:21','2018-09-16 13:38:44','voyager.ticketcategories.index','null'),(35,1,'Vouchers','','_self','voyager-treasure',NULL,NULL,8,'2018-09-16 13:35:48','2018-09-16 13:38:59','voyager.vouchers.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2018-05-20 12:47:48','2018-05-20 12:47:48');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchants`
--

DROP TABLE IF EXISTS `merchants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `merchant_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fail_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchants`
--

LOCK TABLES `merchants` WRITE;
/*!40000 ALTER TABLE `merchants` DISABLE KEYS */;
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
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2015_07_22_123254_alter_users_table',1),(4,'2016_01_01_000000_add_voyager_user_fields',1),(5,'2016_01_01_000000_create_data_types_table',1),(6,'2016_05_19_173453_create_menu_table',1),(7,'2016_10_21_190000_create_roles_table',1),(8,'2016_10_21_190000_create_settings_table',1),(9,'2016_11_30_135954_create_permission_table',1),(10,'2016_11_30_141208_create_permission_role_table',1),(11,'2016_12_26_201236_data_types__add__server_side',1),(12,'2017_01_13_000000_add_route_to_menu_items_table',1),(13,'2017_01_14_005015_create_translations_table',1),(14,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(15,'2017_03_06_000000_add_controller_to_data_types_table',1),(16,'2017_04_21_000000_add_order_to_data_rows_table',1),(17,'2017_07_05_210000_add_policyname_to_data_types_table',1),(18,'2017_08_05_000000_add_group_to_settings_table',1),(19,'2017_11_26_013050_add_user_role_relationship',1),(20,'2017_11_26_015000_create_user_roles_table',1),(21,'2018_01_18_055610_create_deposits_table',1),(22,'2018_01_18_055834_create_withdrawals_table',1),(23,'2018_01_18_060522_create_vouchers_table',1),(24,'2018_01_18_060828_create_sales_table',1),(25,'2018_01_18_060915_create_purchases_table',1),(26,'2018_01_18_060953_create_transactionable_table',1),(27,'2018_01_18_062513_create_deposit_methods_table',1),(28,'2018_01_18_063252_create_transaction_states_table',1),(29,'2018_01_18_063430_create_withdrawal_methods_table',1),(30,'2018_03_11_000000_add_user_settings',1),(31,'2018_03_14_000000_add_details_to_data_types_table',1),(32,'2018_03_16_000000_make_settings_value_nullable',1),(33,'2018_04_10_114839_create_merchants_table',1),(34,'2018_04_23_074708_create_sends_table',1),(35,'2018_04_23_074854_create_receives_table',1),(36,'2018_05_01_142738_create_requests_table',1),(37,'2015_07_22_115516_create_ticketit_tables',2),(38,'2015_09_29_123456_add_completed_at_column_to_ticketit_table',2),(39,'2015_10_08_123457_create_settings_table',2),(40,'2016_01_15_002617_add_htmlcontent_to_ticketit_and_comments',2),(41,'2016_01_15_040207_enlarge_settings_columns',2),(42,'2016_01_15_120557_add_indexes',2),(43,'2016_01_01_000000_create_pages_table',3),(44,'2016_01_01_000000_create_posts_table',3),(45,'2016_02_15_204651_create_categories_table',3),(46,'2017_04_11_000000_alter_post_nullable_fields_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2018-05-20 12:47:50','2018-05-20 12:47:50'),(2,1,'Privacy Policy','Page Content','<p>Page Content</p>',NULL,'privacy-policy','Meta Description','Meta Keywords','ACTIVE','2018-07-28 14:10:08','2018-07-28 14:10:08'),(3,1,'Terms of Use','Page Content','<p>Page Content</p>',NULL,'terms-of-use','Meta Description','Meta Keywords','ACTIVE','2018-07-28 14:11:31','2018-07-28 14:11:31'),(4,1,'About Us','Excerpt','<p>Page Content</p>',NULL,'about-us','meta-description','meta-keywords','ACTIVE','2018-07-28 14:13:47','2018-07-28 14:13:47'),(5,1,'FAQ','Excerpt','<p>Body</p>',NULL,'faq','meta-description','meta-keywords','INACTIVE','2018-07-28 14:18:57','2018-07-28 14:18:57');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
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
INSERT INTO `password_resets` VALUES ('pswkta@fidelium10.com','$2y$10$UEh/4K7g8H6eUyoWbazj4.zyxdlFXjVgZQ7bj5uvOKX9.Buf0IjtO','2018-09-07 13:41:34');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,3),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(11,3),(12,1),(12,3),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(26,3),(27,1),(27,3),(28,1),(29,1),(30,1),(31,1),(31,3),(32,1),(32,3),(33,1),(34,1),(35,1),(36,1),(36,3),(37,1),(37,3),(38,1),(39,1),(40,1),(42,1),(42,3),(43,1),(43,3),(44,1),(47,1),(47,3),(48,1),(48,3),(49,1),(50,1),(51,1),(52,1),(52,3),(53,1),(53,3),(54,1),(57,1),(57,3),(58,1),(58,3),(59,1),(60,1),(61,1),(62,1),(62,3),(63,1),(63,3),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(72,1),(73,1),(74,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2018-05-20 12:47:48','2018-05-20 12:47:48'),(2,'browse_bread',NULL,'2018-05-20 12:47:48','2018-05-20 12:47:48'),(3,'browse_database',NULL,'2018-05-20 12:47:48','2018-05-20 12:47:48'),(4,'browse_media',NULL,'2018-05-20 12:47:48','2018-05-20 12:47:48'),(5,'browse_compass',NULL,'2018-05-20 12:47:48','2018-05-20 12:47:48'),(6,'browse_menus','menus','2018-05-20 12:47:48','2018-05-20 12:47:48'),(7,'read_menus','menus','2018-05-20 12:47:48','2018-05-20 12:47:48'),(8,'edit_menus','menus','2018-05-20 12:47:48','2018-05-20 12:47:48'),(9,'add_menus','menus','2018-05-20 12:47:48','2018-05-20 12:47:48'),(10,'delete_menus','menus','2018-05-20 12:47:48','2018-05-20 12:47:48'),(11,'browse_roles','roles','2018-05-20 12:47:48','2018-05-20 12:47:48'),(12,'read_roles','roles','2018-05-20 12:47:48','2018-05-20 12:47:48'),(13,'edit_roles','roles','2018-05-20 12:47:48','2018-05-20 12:47:48'),(14,'add_roles','roles','2018-05-20 12:47:48','2018-05-20 12:47:48'),(15,'delete_roles','roles','2018-05-20 12:47:48','2018-05-20 12:47:48'),(16,'browse_users','users','2018-05-20 12:47:48','2018-05-20 12:47:48'),(17,'read_users','users','2018-05-20 12:47:48','2018-05-20 12:47:48'),(18,'edit_users','users','2018-05-20 12:47:48','2018-05-20 12:47:48'),(19,'add_users','users','2018-05-20 12:47:48','2018-05-20 12:47:48'),(20,'delete_users','users','2018-05-20 12:47:48','2018-05-20 12:47:48'),(21,'browse_settings','settings','2018-05-20 12:47:48','2018-05-20 12:47:48'),(22,'read_settings','settings','2018-05-20 12:47:48','2018-05-20 12:47:48'),(23,'edit_settings','settings','2018-05-20 12:47:49','2018-05-20 12:47:49'),(24,'add_settings','settings','2018-05-20 12:47:49','2018-05-20 12:47:49'),(25,'delete_settings','settings','2018-05-20 12:47:49','2018-05-20 12:47:49'),(26,'browse_categories','categories','2018-05-20 12:47:50','2018-05-20 12:47:50'),(27,'read_categories','categories','2018-05-20 12:47:50','2018-05-20 12:47:50'),(28,'edit_categories','categories','2018-05-20 12:47:50','2018-05-20 12:47:50'),(29,'add_categories','categories','2018-05-20 12:47:50','2018-05-20 12:47:50'),(30,'delete_categories','categories','2018-05-20 12:47:50','2018-05-20 12:47:50'),(31,'browse_posts','posts','2018-05-20 12:47:50','2018-05-20 12:47:50'),(32,'read_posts','posts','2018-05-20 12:47:50','2018-05-20 12:47:50'),(33,'edit_posts','posts','2018-05-20 12:47:50','2018-05-20 12:47:50'),(34,'add_posts','posts','2018-05-20 12:47:50','2018-05-20 12:47:50'),(35,'delete_posts','posts','2018-05-20 12:47:50','2018-05-20 12:47:50'),(36,'browse_pages','pages','2018-05-20 12:47:50','2018-05-20 12:47:50'),(37,'read_pages','pages','2018-05-20 12:47:50','2018-05-20 12:47:50'),(38,'edit_pages','pages','2018-05-20 12:47:50','2018-05-20 12:47:50'),(39,'add_pages','pages','2018-05-20 12:47:50','2018-05-20 12:47:50'),(40,'delete_pages','pages','2018-05-20 12:47:50','2018-05-20 12:47:50'),(41,'browse_hooks',NULL,'2018-05-20 12:47:51','2018-05-20 12:47:51'),(42,'browse_withdrawals','withdrawals','2018-05-21 05:25:46','2018-05-21 05:25:46'),(43,'read_withdrawals','withdrawals','2018-05-21 05:25:46','2018-05-21 05:25:46'),(44,'edit_withdrawals','withdrawals','2018-05-21 05:25:46','2018-05-21 05:25:46'),(45,'add_withdrawals','withdrawals','2018-05-21 05:25:46','2018-05-21 05:25:46'),(46,'delete_withdrawals','withdrawals','2018-05-21 05:25:46','2018-05-21 05:25:46'),(47,'browse_withdrawal_methods','withdrawal_methods','2018-05-21 05:34:39','2018-05-21 05:34:39'),(48,'read_withdrawal_methods','withdrawal_methods','2018-05-21 05:34:39','2018-05-21 05:34:39'),(49,'edit_withdrawal_methods','withdrawal_methods','2018-05-21 05:34:39','2018-05-21 05:34:39'),(50,'add_withdrawal_methods','withdrawal_methods','2018-05-21 05:34:39','2018-05-21 05:34:39'),(51,'delete_withdrawal_methods','withdrawal_methods','2018-05-21 05:34:39','2018-05-21 05:34:39'),(52,'browse_deposits','deposits','2018-05-21 05:51:52','2018-05-21 05:51:52'),(53,'read_deposits','deposits','2018-05-21 05:51:52','2018-05-21 05:51:52'),(54,'edit_deposits','deposits','2018-05-21 05:51:52','2018-05-21 05:51:52'),(55,'add_deposits','deposits','2018-05-21 05:51:52','2018-05-21 05:51:52'),(56,'delete_deposits','deposits','2018-05-21 05:51:52','2018-05-21 05:51:52'),(57,'browse_deposit_methods','deposit_methods','2018-05-21 05:59:16','2018-05-21 05:59:16'),(58,'read_deposit_methods','deposit_methods','2018-05-21 05:59:16','2018-05-21 05:59:16'),(59,'edit_deposit_methods','deposit_methods','2018-05-21 05:59:16','2018-05-21 05:59:16'),(60,'add_deposit_methods','deposit_methods','2018-05-21 05:59:16','2018-05-21 05:59:16'),(61,'delete_deposit_methods','deposit_methods','2018-05-21 05:59:16','2018-05-21 05:59:16'),(62,'browse_transaction_states','transaction_states','2018-05-21 06:15:47','2018-05-21 06:15:47'),(63,'read_transaction_states','transaction_states','2018-05-21 06:15:47','2018-05-21 06:15:47'),(64,'edit_transaction_states','transaction_states','2018-05-21 06:15:47','2018-05-21 06:15:47'),(65,'add_transaction_states','transaction_states','2018-05-21 06:15:47','2018-05-21 06:15:47'),(66,'delete_transaction_states','transaction_states','2018-05-21 06:15:47','2018-05-21 06:15:47'),(67,'browse_transactionable','transactionable','2018-06-15 14:31:29','2018-06-15 14:31:29'),(68,'read_transactionable','transactionable','2018-06-15 14:31:29','2018-06-15 14:31:29'),(69,'edit_transactionable','transactionable','2018-06-15 14:31:29','2018-06-15 14:31:29'),(70,'add_transactionable','transactionable','2018-06-15 14:31:29','2018-06-15 14:31:29'),(71,'delete_transactionable','transactionable','2018-06-15 14:31:29','2018-06-15 14:31:29'),(72,'browse_merchants','merchants','2018-06-21 13:30:20','2018-06-21 13:30:20'),(73,'read_merchants','merchants','2018-06-21 13:30:20','2018-06-21 13:30:20'),(74,'edit_merchants','merchants','2018-06-21 13:30:20','2018-06-21 13:30:20'),(75,'add_merchants','merchants','2018-06-21 13:30:20','2018-06-21 13:30:20'),(76,'delete_merchants','merchants','2018-06-21 13:30:20','2018-06-21 13:30:20'),(77,'browse_currencys','currencys','2018-07-01 14:52:25','2018-07-01 14:52:25'),(78,'read_currencys','currencys','2018-07-01 14:52:25','2018-07-01 14:52:25'),(79,'edit_currencys','currencys','2018-07-01 14:52:25','2018-07-01 14:52:25'),(80,'add_currencys','currencys','2018-07-01 14:52:25','2018-07-01 14:52:25'),(81,'delete_currencys','currencys','2018-07-01 14:52:25','2018-07-01 14:52:25'),(92,'browse_currencies','currencies','2018-07-01 15:20:20','2018-07-01 15:20:20'),(93,'read_currencies','currencies','2018-07-01 15:20:20','2018-07-01 15:20:20'),(94,'edit_currencies','currencies','2018-07-01 15:20:20','2018-07-01 15:20:20'),(95,'add_currencies','currencies','2018-07-01 15:20:20','2018-07-01 15:20:20'),(96,'delete_currencies','currencies','2018-07-01 15:20:20','2018-07-01 15:20:20'),(97,'browse_currency_exchange_rates','currency_exchange_rates','2018-07-01 16:03:17','2018-07-01 16:03:17'),(98,'read_currency_exchange_rates','currency_exchange_rates','2018-07-01 16:03:17','2018-07-01 16:03:17'),(99,'edit_currency_exchange_rates','currency_exchange_rates','2018-07-01 16:03:17','2018-07-01 16:03:17'),(100,'add_currency_exchange_rates','currency_exchange_rates','2018-07-01 16:03:17','2018-07-01 16:03:17'),(101,'delete_currency_exchange_rates','currency_exchange_rates','2018-07-01 16:03:17','2018-07-01 16:03:17'),(102,'browse_wallets','wallets','2018-07-01 16:34:40','2018-07-01 16:34:40'),(103,'read_wallets','wallets','2018-07-01 16:34:40','2018-07-01 16:34:40'),(104,'edit_wallets','wallets','2018-07-01 16:34:40','2018-07-01 16:34:40'),(105,'add_wallets','wallets','2018-07-01 16:34:40','2018-07-01 16:34:40'),(106,'delete_wallets','wallets','2018-07-01 16:34:40','2018-07-01 16:34:40'),(107,'browse_currency_depositmethod','currency_depositmethod','2018-07-04 00:34:44','2018-07-04 00:34:44'),(108,'read_currency_depositmethod','currency_depositmethod','2018-07-04 00:34:44','2018-07-04 00:34:44'),(109,'edit_currency_depositmethod','currency_depositmethod','2018-07-04 00:34:44','2018-07-04 00:34:44'),(110,'add_currency_depositmethod','currency_depositmethod','2018-07-04 00:34:44','2018-07-04 00:34:44'),(111,'delete_currency_depositmethod','currency_depositmethod','2018-07-04 00:34:44','2018-07-04 00:34:44'),(112,'browse_currencie_deposit','currencie_deposit','2018-07-04 13:17:26','2018-07-04 13:17:26'),(113,'read_currencie_deposit','currencie_deposit','2018-07-04 13:17:26','2018-07-04 13:17:26'),(114,'edit_currencie_deposit','currencie_deposit','2018-07-04 13:17:26','2018-07-04 13:17:26'),(115,'add_currencie_deposit','currencie_deposit','2018-07-04 13:17:26','2018-07-04 13:17:26'),(116,'delete_currencie_deposit','currencie_deposit','2018-07-04 13:17:26','2018-07-04 13:17:26'),(117,'browse_currency_deposit_method','currency_deposit_method','2018-07-04 13:34:24','2018-07-04 13:34:24'),(118,'read_currency_deposit_method','currency_deposit_method','2018-07-04 13:34:24','2018-07-04 13:34:24'),(119,'edit_currency_deposit_method','currency_deposit_method','2018-07-04 13:34:24','2018-07-04 13:34:24'),(120,'add_currency_deposit_method','currency_deposit_method','2018-07-04 13:34:24','2018-07-04 13:34:24'),(121,'delete_currency_deposit_method','currency_deposit_method','2018-07-04 13:34:24','2018-07-04 13:34:24'),(122,'browse_currency_deposit_methods','currency_deposit_methods','2018-07-04 14:49:54','2018-07-04 14:49:54'),(123,'read_currency_deposit_methods','currency_deposit_methods','2018-07-04 14:49:54','2018-07-04 14:49:54'),(124,'edit_currency_deposit_methods','currency_deposit_methods','2018-07-04 14:49:54','2018-07-04 14:49:54'),(125,'add_currency_deposit_methods','currency_deposit_methods','2018-07-04 14:49:54','2018-07-04 14:49:54'),(126,'delete_currency_deposit_methods','currency_deposit_methods','2018-07-04 14:49:54','2018-07-04 14:49:54'),(127,'browse_currency_withdrawal_methods','currency_withdrawal_methods','2018-07-04 14:57:35','2018-07-04 14:57:35'),(128,'read_currency_withdrawal_methods','currency_withdrawal_methods','2018-07-04 14:57:35','2018-07-04 14:57:35'),(129,'edit_currency_withdrawal_methods','currency_withdrawal_methods','2018-07-04 14:57:35','2018-07-04 14:57:35'),(130,'add_currency_withdrawal_methods','currency_withdrawal_methods','2018-07-04 14:57:35','2018-07-04 14:57:35'),(131,'delete_currency_withdrawal_methods','currency_withdrawal_methods','2018-07-04 14:57:35','2018-07-04 14:57:35'),(132,'browse_ticketcategories','ticketcategories','2018-07-19 22:41:21','2018-07-19 22:41:21'),(133,'read_ticketcategories','ticketcategories','2018-07-19 22:41:21','2018-07-19 22:41:21'),(134,'edit_ticketcategories','ticketcategories','2018-07-19 22:41:21','2018-07-19 22:41:21'),(135,'add_ticketcategories','ticketcategories','2018-07-19 22:41:21','2018-07-19 22:41:21'),(136,'delete_ticketcategories','ticketcategories','2018-07-19 22:41:21','2018-07-19 22:41:21'),(137,'browse_vouchers','vouchers','2018-09-16 13:35:48','2018-09-16 13:35:48'),(138,'read_vouchers','vouchers','2018-09-16 13:35:48','2018-09-16 13:35:48'),(139,'edit_vouchers','vouchers','2018-09-16 13:35:48','2018-09-16 13:35:48'),(140,'add_vouchers','vouchers','2018-09-16 13:35:48','2018-09-16 13:35:48'),(141,'delete_vouchers','vouchers','2018-09-16 13:35:48','2018-09-16 13:35:48');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-05-20 12:47:50','2018-05-20 12:47:50'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-05-20 12:47:50','2018-05-20 12:47:50'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-05-20 12:47:50','2018-05-20 12:47:50'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-05-20 12:47:50','2018-05-20 12:47:50');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `document_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `document` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (3,104,NULL,'users/admin/17d31d51105001442b76a37dd32e3414b49d810c.png',NULL,'2018-09-04 09:51:48','2018-09-04 09:51:48');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `transaction_state_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `gross` double(8,2) NOT NULL,
  `fee` double(8,2) NOT NULL,
  `net` double(8,2) NOT NULL,
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receives`
--

DROP TABLE IF EXISTS `receives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `transaction_state_id` int(11) NOT NULL,
  `gross` double(8,2) NOT NULL,
  `fee` double(8,2) NOT NULL,
  `net` double(8,2) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receives`
--

LOCK TABLES `receives` WRITE;
/*!40000 ALTER TABLE `receives` DISABLE KEYS */;
/*!40000 ALTER TABLE `receives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `merchant_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_expired` tinyint(1) NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `requests_ref_unique` (`ref`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2018-05-20 12:47:48','2018-05-20 12:47:48'),(2,'user','Normal User','2018-05-20 12:47:48','2018-05-20 12:47:48'),(3,'demo','demo','2018-06-05 17:10:22','2018-06-05 17:10:22');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `transaction_state_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `gross` double(8,2) NOT NULL,
  `fee` double(8,2) NOT NULL,
  `net` double(8,2) NOT NULL,
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sends`
--

DROP TABLE IF EXISTS `sends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `receive_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `transaction_state_id` int(11) NOT NULL,
  `gross` double(8,2) NOT NULL,
  `fee` double(8,2) NOT NULL,
  `net` double(8,2) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sends`
--

LOCK TABLES `sends` WRITE;
/*!40000 ALTER TABLE `sends` DISABLE KEYS */;
/*!40000 ALTER TABLE `sends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','phpWallet','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo',NULL,'','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image',NULL,'','image',5,'Admin'),(6,'admin.title','Admin Title','phpWallet','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to phpWallet Backend. The Admininstration Area.','','text',2,'Admin'),(8,'admin.loader','Admin Loader',NULL,'','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image',NULL,'','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','106437665209-iqdqs0rgg4sumhi7oc039k6s0i5hvm88.apps.googleusercontent.com','','text',1,'Admin'),(11,'site.site_name','Site Name','phpWallet',NULL,'text',6,'Site'),(13,'merchant.merchant_fixed_fee','Merchant Fixed Fee','3',NULL,'text',7,'Merchant'),(14,'money-transfers.mt_percentage_fee','Money Transfer Percentage Fee','2.9',NULL,'text',9,'Money Transfers'),(15,'money-transfers.mt_fixed_fee','Money Transfer Fixed Fee','3',NULL,'text',10,'Money Transfers'),(16,'merchant.merchant_percentage_fee','Merchant Percentage Fee','2.9',NULL,'text',11,'Merchant'),(18,'footer.footer_text','Footer Text','<p><u><a href=\"https://www.nationaltransaction.com/\">National Transaction Corporation</a></u> is a Registered MSP/ISO of Elavon, Inc. Georgia [a wholly owned subsidiary of U.S. Bancorp, Minneapolis, MN]</p>\r\n<p class=\"h6\">&amp;copy All right Reversed.<a class=\"text-green ml-2\" href=\"https://www.sunlimetech.com\" target=\"_blank\" rel=\"noopener\">Sunlimetech</a></p>',NULL,'rich_text_box',12,'Footer');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketcategories`
--

DROP TABLE IF EXISTS `ticketcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticketcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketcategories`
--

LOCK TABLES `ticketcategories` WRITE;
/*!40000 ALTER TABLE `ticketcategories` DISABLE KEYS */;
INSERT INTO `ticketcategories` VALUES (1,'support','2018-07-19 22:42:30','2018-07-19 22:42:30');
/*!40000 ALTER TABLE `ticketcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketcomments`
--

DROP TABLE IF EXISTS `ticketcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticketcomments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketcomments`
--

LOCK TABLES `ticketcomments` WRITE;
/*!40000 ALTER TABLE `ticketcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticketcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ticketcategory_id` int(11) DEFAULT NULL,
  `ticket_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tickets_ticket_id_unique` (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_states`
--

DROP TABLE IF EXISTS `transaction_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_states`
--

LOCK TABLES `transaction_states` WRITE;
/*!40000 ALTER TABLE `transaction_states` DISABLE KEYS */;
INSERT INTO `transaction_states` VALUES (1,'Completed',NULL,'2018-05-21 06:22:38','2018-05-21 06:22:38'),(2,'Rejected',NULL,'2018-05-21 06:19:57','2018-05-21 06:19:57'),(3,'Pending',NULL,'2018-05-21 06:19:00','2018-05-21 06:20:22');
/*!40000 ALTER TABLE `transaction_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionable`
--

DROP TABLE IF EXISTS `transactionable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactionable` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `transactionable_id` int(11) NOT NULL,
  `transactionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int(11) NOT NULL,
  `entity_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_state_id` int(11) NOT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `activity_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_flow` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gross` double(8,2) NOT NULL,
  `fee` double(8,2) NOT NULL DEFAULT '0.00',
  `net` double(8,2) NOT NULL,
  `balance` double DEFAULT NULL,
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionable`
--

LOCK TABLES `transactionable` WRITE;
/*!40000 ALTER TABLE `transactionable` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactionable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2018-05-20 12:47:50','2018-05-20 12:47:50'),(2,'data_types','display_name_singular',6,'pt','PÃ¡gina','2018-05-20 12:47:50','2018-05-20 12:47:50'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2018-05-20 12:47:50','2018-05-20 12:47:50'),(4,'data_types','display_name_singular',4,'pt','Categoria','2018-05-20 12:47:50','2018-05-20 12:47:50'),(5,'data_types','display_name_singular',2,'pt','Menu','2018-05-20 12:47:50','2018-05-20 12:47:50'),(6,'data_types','display_name_singular',3,'pt','FunÃ§Ã£o','2018-05-20 12:47:50','2018-05-20 12:47:50'),(7,'data_types','display_name_plural',5,'pt','Posts','2018-05-20 12:47:50','2018-05-20 12:47:50'),(8,'data_types','display_name_plural',6,'pt','PÃ¡ginas','2018-05-20 12:47:50','2018-05-20 12:47:50'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2018-05-20 12:47:51','2018-05-20 12:47:51'),(10,'data_types','display_name_plural',4,'pt','Categorias','2018-05-20 12:47:51','2018-05-20 12:47:51'),(11,'data_types','display_name_plural',2,'pt','Menus','2018-05-20 12:47:51','2018-05-20 12:47:51'),(12,'data_types','display_name_plural',3,'pt','FunÃ§Ãµes','2018-05-20 12:47:51','2018-05-20 12:47:51'),(13,'categories','slug',1,'pt','categoria-1','2018-05-20 12:47:51','2018-05-20 12:47:51'),(14,'categories','name',1,'pt','Categoria 1','2018-05-20 12:47:51','2018-05-20 12:47:51'),(15,'categories','slug',2,'pt','categoria-2','2018-05-20 12:47:51','2018-05-20 12:47:51'),(16,'categories','name',2,'pt','Categoria 2','2018-05-20 12:47:51','2018-05-20 12:47:51'),(17,'pages','title',1,'pt','OlÃ¡ Mundo','2018-05-20 12:47:51','2018-05-20 12:47:51'),(18,'pages','slug',1,'pt','ola-mundo','2018-05-20 12:47:51','2018-05-20 12:47:51'),(19,'pages','body',1,'pt','<p>OlÃ¡ Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2018-05-20 12:47:51','2018-05-20 12:47:51'),(20,'menu_items','title',1,'pt','Painel de Controle','2018-05-20 12:47:51','2018-05-20 12:47:51'),(21,'menu_items','title',2,'pt','Media','2018-05-20 12:47:51','2018-05-20 12:47:51'),(22,'menu_items','title',12,'pt','PublicaÃ§Ãµes','2018-05-20 12:47:51','2018-05-20 12:47:51'),(23,'menu_items','title',3,'pt','Utilizadores','2018-05-20 12:47:51','2018-05-20 12:47:51'),(24,'menu_items','title',11,'pt','Categorias','2018-05-20 12:47:51','2018-05-20 12:47:51'),(25,'menu_items','title',13,'pt','PÃ¡ginas','2018-05-20 12:47:51','2018-05-20 12:47:51'),(26,'menu_items','title',4,'pt','FunÃ§Ãµes','2018-05-20 12:47:51','2018-05-20 12:47:51'),(27,'menu_items','title',5,'pt','Ferramentas','2018-05-20 12:47:51','2018-05-20 12:47:51'),(28,'menu_items','title',6,'pt','Menus','2018-05-20 12:47:51','2018-05-20 12:47:51'),(29,'menu_items','title',7,'pt','Base de dados','2018-05-20 12:47:51','2018-05-20 12:47:51'),(30,'menu_items','title',10,'pt','ConfiguraÃ§Ãµes','2018-05-20 12:47:51','2018-05-20 12:47:51');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `merchant` tinyint(1) NOT NULL DEFAULT '0',
  `social` tinyint(1) NOT NULL DEFAULT '0',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `account_status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ticketit_admin` tinyint(1) NOT NULL DEFAULT '0',
  `ticketit_agent` tinyint(1) NOT NULL DEFAULT '0',
  `currency_id` int(11) DEFAULT '1',
  `is_ticket_admin` tinyint(4) DEFAULT '0',
  `verification_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (104,1,'admin','admin','admin','admin@admin.com','users/admin/3bba2a866a36d83bfde76d292946baef372f8da3.png','$2y$10$R38.n0yfIWXmnw9o4mi4V.JbQs1.R4vhue9QJTi2hW0oOT3yZwRCa',1,0,0,0.00,NULL,1,'UgLEwwDxjsjAJOjHnRLrgapXE1bv59Gp1YOQw6IT0BPrSkJHkF1fRP8gAPNX',NULL,'2018-07-11 01:21:24','2018-11-28 06:48:10',0,1,1,1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vouchers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `voucher_amount` double NOT NULL,
  `voucher_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_loader` int(11) DEFAULT NULL,
  `is_loaded` tinyint(4) DEFAULT '0',
  `voucher_fee` double DEFAULT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  `voucher_value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vouchers_voucher_id_unique` (`voucher_code`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallets`
--

DROP TABLE IF EXISTS `wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `amount` double DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=661 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallets`
--

LOCK TABLES `wallets` WRITE;
/*!40000 ALTER TABLE `wallets` DISABLE KEYS */;
INSERT INTO `wallets` VALUES (30,104,1,241384.729,'2018-07-11 01:21:24','2018-11-25 23:32:22'),(36,104,5,0,'2018-07-13 18:35:03','2018-07-13 18:35:03'),(41,104,6,58.972480000000004,'2018-07-14 07:05:35','2018-11-25 23:32:22'),(49,104,2,0,'2018-07-15 12:48:08','2018-07-15 12:48:08'),(58,104,4,0,'2018-07-20 04:19:22','2018-07-20 04:19:22'),(61,104,7,0,'2018-07-20 07:22:20','2018-07-20 07:22:20'),(231,104,9,43891.16334531,'2018-08-29 23:37:21','2018-11-07 14:12:44');
/*!40000 ALTER TABLE `wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawal_methods`
--

DROP TABLE IF EXISTS `withdrawal_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdrawal_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_fee` double(8,2) NOT NULL,
  `fixed_fee` double(8,2) NOT NULL,
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawal_methods`
--

LOCK TABLES `withdrawal_methods` WRITE;
/*!40000 ALTER TABLE `withdrawal_methods` DISABLE KEYS */;
INSERT INTO `withdrawal_methods` VALUES (1,'PayPal','<p>PayPal Withdrawals Take up tp <strong>3 days</strong> to be processed.</p>',2.00,4.00,NULL,'2018-05-21 05:37:49','2018-05-21 05:37:49');
/*!40000 ALTER TABLE `withdrawal_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawals`
--

DROP TABLE IF EXISTS `withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdrawals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `transaction_state_id` int(11) NOT NULL,
  `withdrawal_method_id` int(11) NOT NULL,
  `gross` double(8,2) NOT NULL,
  `fee` double(8,2) NOT NULL,
  `net` double(8,2) NOT NULL,
  `platform_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawals`
--

LOCK TABLES `withdrawals` WRITE;
/*!40000 ALTER TABLE `withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:16:31
