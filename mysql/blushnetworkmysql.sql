-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: blushnetworkmysql
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
-- Table structure for table `ads_campaigns`
--

DROP TABLE IF EXISTS `ads_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_campaigns` (
  `campaign_id` int(10) NOT NULL AUTO_INCREMENT,
  `campaign_user_id` int(10) unsigned NOT NULL,
  `campaign_title` varchar(256) NOT NULL,
  `campaign_start_date` datetime NOT NULL,
  `campaign_end_date` datetime NOT NULL,
  `campaign_budget` double NOT NULL,
  `campaign_spend` double NOT NULL DEFAULT '0',
  `campaign_bidding` enum('click','view') NOT NULL,
  `audience_countries` mediumtext NOT NULL,
  `audience_gender` varchar(32) NOT NULL,
  `audience_relationship` varchar(64) NOT NULL,
  `ads_title` varchar(255) DEFAULT NULL,
  `ads_description` mediumtext,
  `ads_type` varchar(32) NOT NULL,
  `ads_url` varchar(256) DEFAULT NULL,
  `ads_page` int(10) unsigned DEFAULT NULL,
  `ads_group` int(10) unsigned DEFAULT NULL,
  `ads_event` int(10) unsigned DEFAULT NULL,
  `ads_placement` enum('newsfeed','sidebar') NOT NULL,
  `ads_image` varchar(256) NOT NULL,
  `campaign_created_date` datetime NOT NULL,
  `campaign_is_active` enum('0','1') NOT NULL DEFAULT '1',
  `campaign_views` int(10) unsigned NOT NULL DEFAULT '0',
  `campaign_clicks` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_campaigns`
--

LOCK TABLES `ads_campaigns` WRITE;
/*!40000 ALTER TABLE `ads_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_system`
--

DROP TABLE IF EXISTS `ads_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_system` (
  `ads_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `place` varchar(32) NOT NULL,
  `code` mediumtext NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`ads_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_system`
--

LOCK TABLES `ads_system` WRITE;
/*!40000 ALTER TABLE `ads_system` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_users_wallet_transactions`
--

DROP TABLE IF EXISTS `ads_users_wallet_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_users_wallet_transactions` (
  `transaction_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `node_id` int(10) unsigned DEFAULT NULL,
  `amount` varchar(32) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_users_wallet_transactions`
--

LOCK TABLES `ads_users_wallet_transactions` WRITE;
/*!40000 ALTER TABLE `ads_users_wallet_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_users_wallet_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliates_payments`
--

DROP TABLE IF EXISTS `affiliates_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `affiliates_payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `amount` varchar(32) NOT NULL,
  `method` varchar(64) NOT NULL,
  `method_value` text NOT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliates_payments`
--

LOCK TABLES `affiliates_payments` WRITE;
/*!40000 ALTER TABLE `affiliates_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliates_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `announcement_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `title` varchar(256) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` mediumtext NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_users`
--

DROP TABLE IF EXISTS `announcements_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `announcement_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `announcement_id_user_id` (`announcement_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_users`
--

LOCK TABLES `announcements_users` WRITE;
/*!40000 ALTER TABLE `announcements_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_transfers`
--

DROP TABLE IF EXISTS `bank_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_transfers` (
  `transfer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) NOT NULL,
  `package_id` int(10) unsigned DEFAULT NULL,
  `price` varchar(32) DEFAULT NULL,
  `bank_receipt` varchar(256) NOT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`transfer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_transfers`
--

LOCK TABLES `bank_transfers` WRITE;
/*!40000 ALTER TABLE `bank_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blacklist` (
  `node_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_type` enum('ip','email','username') NOT NULL,
  `node_value` varchar(64) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist`
--

LOCK TABLES `blacklist` WRITE;
/*!40000 ALTER TABLE `blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_categories`
--

DROP TABLE IF EXISTS `blogs_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs_categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(256) NOT NULL,
  `category_order` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_categories`
--

LOCK TABLES `blogs_categories` WRITE;
/*!40000 ALTER TABLE `blogs_categories` DISABLE KEYS */;
INSERT INTO `blogs_categories` VALUES (1,'Art',1),(2,'Causes',2),(3,'Crafts',3),(4,'Dance',4),(5,'Drinks',5),(6,'Film',6),(7,'Fitness',7),(8,'Food',8),(9,'Games',9),(10,'Gardening',10),(11,'Health',11),(12,'Home',12),(13,'Literature',13),(14,'Music',14),(15,'Networking',15),(16,'Other',16),(17,'Party',17),(18,'Religion',18),(19,'Shopping',19),(20,'Sports',20),(21,'Theater',21),(22,'Wellness',22);
/*!40000 ALTER TABLE `blogs_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coinpayments_transactions`
--

DROP TABLE IF EXISTS `coinpayments_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coinpayments_transactions` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_txn_id` text NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `amount` varchar(32) NOT NULL,
  `product` text NOT NULL,
  `created_at` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `status_message` text NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coinpayments_transactions`
--

LOCK TABLES `coinpayments_transactions` WRITE;
/*!40000 ALTER TABLE `coinpayments_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `coinpayments_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations` (
  `conversation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `last_message_id` int(10) unsigned NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`conversation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations_calls_audio`
--

DROP TABLE IF EXISTS `conversations_calls_audio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations_calls_audio` (
  `call_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `from_user_token` mediumtext NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `to_user_token` mediumtext NOT NULL,
  `room` varchar(64) NOT NULL,
  `answered` enum('0','1') NOT NULL DEFAULT '0',
  `declined` enum('0','1') NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  PRIMARY KEY (`call_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations_calls_audio`
--

LOCK TABLES `conversations_calls_audio` WRITE;
/*!40000 ALTER TABLE `conversations_calls_audio` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations_calls_audio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations_calls_video`
--

DROP TABLE IF EXISTS `conversations_calls_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations_calls_video` (
  `call_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `from_user_token` text NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `to_user_token` text NOT NULL,
  `room` varchar(64) NOT NULL,
  `answered` enum('0','1') NOT NULL DEFAULT '0',
  `declined` enum('0','1') NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  PRIMARY KEY (`call_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations_calls_video`
--

LOCK TABLES `conversations_calls_video` WRITE;
/*!40000 ALTER TABLE `conversations_calls_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations_calls_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations_messages`
--

DROP TABLE IF EXISTS `conversations_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `message` longtext NOT NULL,
  `image` varchar(256) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations_messages`
--

LOCK TABLES `conversations_messages` WRITE;
/*!40000 ALTER TABLE `conversations_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations_users`
--

DROP TABLE IF EXISTS `conversations_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  `typing` enum('0','1') NOT NULL DEFAULT '0',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `conversation_id_user_id` (`conversation_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations_users`
--

LOCK TABLES `conversations_users` WRITE;
/*!40000 ALTER TABLE `conversations_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_for` enum('user','page','group','event') NOT NULL DEFAULT 'user',
  `type` varchar(32) NOT NULL,
  `select_options` mediumtext NOT NULL,
  `label` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `place` varchar(32) NOT NULL,
  `length` int(10) NOT NULL DEFAULT '32',
  `field_order` int(10) NOT NULL DEFAULT '1',
  `mandatory` enum('0','1') NOT NULL DEFAULT '0',
  `in_registration` enum('0','1') NOT NULL DEFAULT '0',
  `in_profile` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_values`
--

DROP TABLE IF EXISTS `custom_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_values` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` mediumtext NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `node_type` enum('user','page','group','event') NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `field_id_node_id_node_type` (`field_id`,`node_id`,`node_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_values`
--

LOCK TABLES `custom_fields_values` WRITE;
/*!40000 ALTER TABLE `custom_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developers_apps`
--

DROP TABLE IF EXISTS `developers_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers_apps` (
  `app_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_user_id` int(10) unsigned NOT NULL,
  `app_category_id` int(10) unsigned NOT NULL,
  `app_auth_id` varchar(128) NOT NULL,
  `app_auth_secret` varchar(128) NOT NULL,
  `app_name` varchar(256) NOT NULL,
  `app_domain` varchar(256) NOT NULL,
  `app_redirect_url` varchar(256) NOT NULL,
  `app_description` mediumtext NOT NULL,
  `app_icon` varchar(256) NOT NULL,
  `app_date` datetime NOT NULL,
  PRIMARY KEY (`app_id`),
  UNIQUE KEY `app_auth_id` (`app_auth_id`),
  UNIQUE KEY `app_auth_secret` (`app_auth_secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers_apps`
--

LOCK TABLES `developers_apps` WRITE;
/*!40000 ALTER TABLE `developers_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `developers_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developers_apps_categories`
--

DROP TABLE IF EXISTS `developers_apps_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers_apps_categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(256) NOT NULL,
  `category_order` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers_apps_categories`
--

LOCK TABLES `developers_apps_categories` WRITE;
/*!40000 ALTER TABLE `developers_apps_categories` DISABLE KEYS */;
INSERT INTO `developers_apps_categories` VALUES (1,'Business and Pages',1),(2,'Community &amp; Government',2),(3,'Education',3),(4,'Entertainment',4),(5,'Entertainment',5),(6,'Games',6),(7,'Lifestyle',7),(8,'Messaging',8),(9,'News',9),(10,'Shopping',10),(11,'Social Networks &amp; Dating',11),(12,'Utility &amp; Productivity',12);
/*!40000 ALTER TABLE `developers_apps_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developers_apps_users`
--

DROP TABLE IF EXISTS `developers_apps_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers_apps_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `auth_key` varchar(128) NOT NULL,
  `access_token` varchar(128) DEFAULT NULL,
  `access_token_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id_user_id` (`app_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers_apps_users`
--

LOCK TABLES `developers_apps_users` WRITE;
/*!40000 ALTER TABLE `developers_apps_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `developers_apps_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emojis`
--

DROP TABLE IF EXISTS `emojis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emojis` (
  `emoji_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pattern` varchar(256) NOT NULL,
  `class` varchar(256) NOT NULL,
  PRIMARY KEY (`emoji_id`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emojis`
--

LOCK TABLES `emojis` WRITE;
/*!40000 ALTER TABLE `emojis` DISABLE KEYS */;
INSERT INTO `emojis` VALUES (1,':)','smile'),(2,'(&lt;','joy'),(3,':D','smiley'),(4,':(','worried'),(5,':relaxed:','relaxed'),(6,':P','stuck-out-tongue'),(7,':O','open-mouth'),(8,':/','confused'),(9,';)','wink'),(10,';(','sob'),(11,'B|','sunglasses'),(12,':disappointed:','disappointed'),(13,':yum:','yum'),(14,'^_^','grin'),(15,':no_mouth:','no-mouth'),(16,'*_*','heart-eyes'),(17,'*)','kissing-heart'),(18,'O:)','innocent'),(19,':angry:','angry'),(20,':rage:','rage'),(21,':smirk:','smirk'),(22,':flushed:','flushed'),(23,':satisfied:','satisfied'),(24,':relieved:','relieved'),(25,':sleeping:','sleeping'),(26,':stuck_out_tongue:','stuck-out-tongue'),(27,':stuck_out_tongue_closed_eyes:','stuck-out-tongue-closed-eyes'),(28,':frowning:','frowning'),(29,':anguished:','anguished'),(30,':open_mouth:','open-mouth'),(31,':grimacing:','grimacing'),(32,':hushed:','hushed'),(33,':expressionless:','expressionless'),(34,':unamused:','unamused'),(35,':sweat_smile:','sweat-smile'),(36,':sweat:','sweat'),(37,':confounded:','confounded'),(38,':weary:','weary'),(39,':pensive:','pensive'),(40,':fearful:','fearful'),(41,':cold_sweat:','cold-sweat'),(42,':persevere:','persevere'),(43,':cry:','cry'),(44,':astonished:','astonished'),(45,':scream:','scream'),(46,':mask:','mask'),(47,':tired_face:','tired-face'),(48,':triumph:','triumph'),(49,':dizzy_face:','dizzy-face'),(50,':imp:','imp'),(51,':smiling_imp:','smiling-imp'),(52,':neutral_face:','neutral-face'),(53,':alien:','alien'),(54,':yellow_heart:','yellow-heart'),(55,':blue_heart:','blue-heart'),(56,':blue_heart:','blue-heart'),(57,':heart:','heart'),(58,':green_heart:','green-heart'),(59,':broken_heart:','broken-heart'),(60,':heartbeat:','heartbeat'),(61,':heartpulse:','heartpulse'),(62,':two_hearts:','two-hearts'),(63,':revolving_hearts:','revolving-hearts'),(64,':cupid:','cupid'),(65,':sparkling_heart:','sparkling-heart'),(66,':sparkles:','sparkles'),(67,':star:','star'),(68,':star2:','star2'),(69,':dizzy:','dizzy'),(70,':boom:','boom'),(71,':exclamation:','exclamation'),(72,':anger:','anger'),(73,':question:','question'),(74,':grey_exclamation:','grey-exclamation'),(75,':grey_question:','grey-question'),(76,':zzz:','zzz'),(77,':dash:','dash'),(78,':sweat_drops:','sweat-drops'),(79,':notes:','notes'),(80,':musical_note:','musical-note'),(81,':fire:','fire'),(82,':poop:','poop'),(83,':thumbsup:','thumbsup'),(84,':thumbsdown:','thumbsdown'),(85,':ok_hand:','ok-hand'),(86,':punch:','punch'),(87,':fist:','fist'),(88,':v:','v'),(89,':wave:','wave'),(90,':hand:','hand'),(91,':raised_hand:','raised-hand'),(92,':open_hands:','open-hands'),(93,':point_up:','point-up'),(94,':point_down:','point-down'),(95,':point_left:','point-left'),(96,':point_right:','point-right'),(97,':raised_hands:','raised-hands'),(98,':pray:','pray'),(99,':clap:','clap'),(100,':muscle:','muscle'),(101,':runner:','runner'),(102,':couple:','couple'),(103,':family:','family'),(104,':two_men_holding_hands:','two-men-holding-hands'),(105,':two_women_holding_hands:','two-women-holding-hands'),(106,':dancer:','dancer'),(107,':dancers:','dancers'),(108,':ok_woman:','ok-woman'),(109,':no_good:','no-good'),(110,':information_desk_person:','information-desk-person'),(111,':bride_with_veil:','bride-with-veil'),(112,':couplekiss:','couplekiss'),(113,':couple_with_heart:','couple-with-heart'),(114,':nail_care:','nail-care'),(115,':boy:','boy'),(116,':girl:','girl'),(117,':woman:','woman'),(118,':man:','man'),(119,':baby:','baby'),(120,':older_woman:','older-woman'),(121,':older_man:','older-man'),(122,':cop:','cop'),(123,':angel:','angel'),(124,':princess:','princess'),(125,':smiley_cat:','smiley-cat'),(126,':smile_cat:','smile-cat'),(127,':heart_eyes_cat:','heart-eyes-cat'),(128,':kissing_cat:','kissing-cat'),(129,':smirk_cat:','smirk-cat'),(130,':scream_cat:','scream-cat'),(131,':crying_cat_face:','crying-cat-face'),(132,':joy_cat:','joy-cat'),(133,':pouting_cat:','pouting-cat'),(134,':japanese_ogre:','japanese-ogre'),(135,':see_no_evil:','see-no-evil'),(136,':hear_no_evil:','hear-no-evil'),(137,':speak_no_evil:','speak-no-evil'),(138,':guardsman:','guardsman'),(139,':skull:','skull'),(140,':feet:','feet'),(141,':lips:','lips'),(142,':kiss:','kiss'),(143,':droplet:','droplet'),(144,':ear:','ear'),(145,':eyes:','eyes'),(146,':nose:','nose'),(147,':tongue:','tongue'),(148,':love_letter:','love-letter'),(149,':speech_balloon:','speech-balloon'),(150,':thought_balloon:','thought-balloon'),(151,':sunny:','sunny');
/*!40000 ALTER TABLE `emojis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_privacy` enum('secret','closed','public') DEFAULT 'public',
  `event_admin` int(10) unsigned NOT NULL,
  `event_category` int(10) unsigned NOT NULL,
  `event_title` varchar(256) NOT NULL,
  `event_location` varchar(256) DEFAULT NULL,
  `event_description` mediumtext NOT NULL,
  `event_start_date` datetime NOT NULL,
  `event_end_date` datetime NOT NULL,
  `event_publish_enabled` enum('0','1') NOT NULL DEFAULT '1',
  `event_publish_approval_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `event_cover` varchar(256) DEFAULT NULL,
  `event_cover_id` int(10) unsigned DEFAULT NULL,
  `event_cover_position` varchar(256) DEFAULT NULL,
  `event_album_covers` int(10) DEFAULT NULL,
  `event_album_timeline` int(10) DEFAULT NULL,
  `event_pinned_post` int(10) DEFAULT NULL,
  `event_invited` int(10) unsigned NOT NULL DEFAULT '0',
  `event_interested` int(10) unsigned NOT NULL DEFAULT '0',
  `event_going` int(10) unsigned NOT NULL DEFAULT '0',
  `event_date` datetime NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_categories`
--

DROP TABLE IF EXISTS `events_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(256) NOT NULL,
  `category_order` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_categories`
--

LOCK TABLES `events_categories` WRITE;
/*!40000 ALTER TABLE `events_categories` DISABLE KEYS */;
INSERT INTO `events_categories` VALUES (1,'Art',1),(2,'Causes',2),(3,'Crafts',3),(4,'Dance',4),(5,'Drinks',5),(6,'Film',6),(7,'Fitness',7),(8,'Food',8),(9,'Games',9),(10,'Gardening',10),(11,'Health',11),(12,'Home',12),(13,'Literature',13),(14,'Music',14),(15,'Networking',15),(16,'Other',16),(17,'Party',17),(18,'Religion',18),(19,'Shopping',19),(20,'Sports',20),(21,'Theater',21),(22,'Wellness',22);
/*!40000 ALTER TABLE `events_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_members`
--

DROP TABLE IF EXISTS `events_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `is_invited` enum('0','1') DEFAULT '0',
  `is_interested` enum('0','1') DEFAULT '0',
  `is_going` enum('0','1') DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id_user_id` (`event_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_members`
--

LOCK TABLES `events_members` WRITE;
/*!40000 ALTER TABLE `events_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `events_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followings`
--

DROP TABLE IF EXISTS `followings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `following_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_following_id` (`user_id`,`following_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followings`
--

LOCK TABLES `followings` WRITE;
/*!40000 ALTER TABLE `followings` DISABLE KEYS */;
/*!40000 ALTER TABLE `followings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forums` (
  `forum_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `forum_section` int(10) unsigned NOT NULL,
  `forum_name` varchar(256) NOT NULL,
  `forum_description` mediumtext,
  `forum_order` int(10) unsigned NOT NULL DEFAULT '1',
  `forum_threads` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_replies` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums`
--

LOCK TABLES `forums` WRITE;
/*!40000 ALTER TABLE `forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums_replies`
--

DROP TABLE IF EXISTS `forums_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forums_replies` (
  `reply_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `text` longtext NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums_replies`
--

LOCK TABLES `forums_replies` WRITE;
/*!40000 ALTER TABLE `forums_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `forums_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums_threads`
--

DROP TABLE IF EXISTS `forums_threads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forums_threads` (
  `thread_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(256) NOT NULL,
  `text` longtext NOT NULL,
  `replies` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL,
  `last_reply` datetime DEFAULT NULL,
  PRIMARY KEY (`thread_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forums_threads`
--

LOCK TABLES `forums_threads` WRITE;
/*!40000 ALTER TABLE `forums_threads` DISABLE KEYS */;
/*!40000 ALTER TABLE `forums_threads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_one_id` int(10) unsigned NOT NULL,
  `user_two_id` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_one_id_user_two_id` (`user_one_id`,`user_two_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `game_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `source` mediumtext NOT NULL,
  `thumbnail` varchar(256) NOT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_players`
--

DROP TABLE IF EXISTS `games_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_players` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_played_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_id_user_id` (`game_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_players`
--

LOCK TABLES `games_players` WRITE;
/*!40000 ALTER TABLE `games_players` DISABLE KEYS */;
/*!40000 ALTER TABLE `games_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gifts`
--

DROP TABLE IF EXISTS `gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gifts` (
  `gift_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(256) NOT NULL,
  PRIMARY KEY (`gift_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gifts`
--

LOCK TABLES `gifts` WRITE;
/*!40000 ALTER TABLE `gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_privacy` enum('secret','closed','public') DEFAULT 'public',
  `group_admin` int(10) unsigned NOT NULL,
  `group_category` int(10) unsigned NOT NULL,
  `group_name` varchar(64) NOT NULL,
  `group_title` varchar(256) NOT NULL,
  `group_description` mediumtext NOT NULL,
  `group_publish_enabled` enum('0','1') NOT NULL DEFAULT '1',
  `group_publish_approval_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `group_picture` varchar(256) DEFAULT NULL,
  `group_picture_id` int(10) unsigned DEFAULT NULL,
  `group_cover` varchar(256) DEFAULT NULL,
  `group_cover_id` int(10) unsigned DEFAULT NULL,
  `group_cover_position` varchar(256) DEFAULT NULL,
  `group_album_pictures` int(10) DEFAULT NULL,
  `group_album_covers` int(10) DEFAULT NULL,
  `group_album_timeline` int(10) DEFAULT NULL,
  `group_pinned_post` int(10) DEFAULT NULL,
  `group_members` int(10) unsigned NOT NULL DEFAULT '0',
  `group_date` datetime NOT NULL,
  PRIMARY KEY (`group_id`),
  UNIQUE KEY `username` (`group_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_admins`
--

DROP TABLE IF EXISTS `groups_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id_user_id` (`group_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_admins`
--

LOCK TABLES `groups_admins` WRITE;
/*!40000 ALTER TABLE `groups_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_categories`
--

DROP TABLE IF EXISTS `groups_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(256) NOT NULL,
  `category_order` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_categories`
--

LOCK TABLES `groups_categories` WRITE;
/*!40000 ALTER TABLE `groups_categories` DISABLE KEYS */;
INSERT INTO `groups_categories` VALUES (1,'Cars and Vehicles',1),(2,'Comedy',2),(3,'Economics and Trade',3),(4,'Education',4),(5,'Entertainment',5),(6,'Movies and Animation',6),(7,'Gaming',7),(8,'History and Facts',8),(9,'Live Style',9),(10,'Natural',10),(11,'News and Politics',11),(12,'People and Nations',12),(13,'Pets and Animals',13),(14,'Places and Regions',14),(15,'Science and Technology',15),(16,'Sport',16),(17,'Travel and Events',17),(18,'Other',18);
/*!40000 ALTER TABLE `groups_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_members`
--

DROP TABLE IF EXISTS `groups_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `approved` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id_user_id` (`group_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_members`
--

LOCK TABLES `groups_members` WRITE;
/*!40000 ALTER TABLE `groups_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashtags`
--

DROP TABLE IF EXISTS `hashtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hashtags` (
  `hashtag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hashtag` varchar(256) NOT NULL,
  PRIMARY KEY (`hashtag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtags`
--

LOCK TABLES `hashtags` WRITE;
/*!40000 ALTER TABLE `hashtags` DISABLE KEYS */;
/*!40000 ALTER TABLE `hashtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashtags_posts`
--

DROP TABLE IF EXISTS `hashtags_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hashtags_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `hashtag_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id_hashtag_id` (`post_id`,`hashtag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtags_posts`
--

LOCK TABLES `hashtags_posts` WRITE;
/*!40000 ALTER TABLE `hashtags_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `hashtags_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation_codes`
--

DROP TABLE IF EXISTS `invitation_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invitation_codes` (
  `code_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `valid` enum('0','1') NOT NULL DEFAULT '1',
  `date` datetime NOT NULL,
  PRIMARY KEY (`code_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation_codes`
--

LOCK TABLES `invitation_codes` WRITE;
/*!40000 ALTER TABLE `invitation_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitation_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_categories`
--

DROP TABLE IF EXISTS `market_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market_categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(256) NOT NULL,
  `category_order` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_categories`
--

LOCK TABLES `market_categories` WRITE;
/*!40000 ALTER TABLE `market_categories` DISABLE KEYS */;
INSERT INTO `market_categories` VALUES (1,'Apparel &amp; Accessories',1),(2,'Autos &amp; Vehicles',2),(3,'Baby &amp; Children&#039;s Products',3),(4,'Beauty Products &amp; Services',4),(5,'Computers &amp; Peripherals',5),(6,'Consumer Electronics',6),(7,'Dating Services',7),(8,'Financial Services',8),(9,'Gifts &amp; Occasions',9),(10,'Home &amp; Garden',10),(11,'Other',11);
/*!40000 ALTER TABLE `market_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` text NOT NULL,
  `source_type` varchar(64) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` text,
  `imdb_url` text,
  `stars` text,
  `release_year` int(10) DEFAULT NULL,
  `duration` int(10) DEFAULT NULL,
  `genres` mediumtext,
  `poster` varchar(256) DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`movie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_genres`
--

DROP TABLE IF EXISTS `movies_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies_genres` (
  `genre_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(256) NOT NULL,
  `genre_order` int(10) unsigned NOT NULL DEFAULT '1',
  `genre_description` text NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_genres`
--

LOCK TABLES `movies_genres` WRITE;
/*!40000 ALTER TABLE `movies_genres` DISABLE KEYS */;
INSERT INTO `movies_genres` VALUES (1,'Action',1,''),(2,'Adventure',2,''),(3,'Animation',3,''),(4,'Comedy',4,''),(5,'Crime',5,''),(6,'Documentary',6,''),(7,'Drama',7,''),(8,'Family',8,''),(9,'Fantasy',9,''),(10,'History',10,''),(11,'Horror',11,''),(12,'Musical',12,''),(13,'Mythological',13,''),(14,'Romance',14,''),(15,'Sport',15,''),(16,'TV Show',16,''),(17,'Thriller',17,''),(18,'War',18,'');
/*!40000 ALTER TABLE `movies_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `to_user_id` int(10) unsigned NOT NULL,
  `from_user_id` int(10) unsigned NOT NULL,
  `action` varchar(256) NOT NULL,
  `node_type` varchar(256) NOT NULL,
  `node_url` varchar(256) NOT NULL,
  `notify_id` varchar(256) DEFAULT NULL,
  `message` mediumtext,
  `time` datetime DEFAULT NULL,
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages` (
  `package_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `price` varchar(32) NOT NULL,
  `period_num` int(10) unsigned NOT NULL,
  `period` varchar(32) NOT NULL,
  `color` varchar(32) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `verification_badge_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `boost_posts_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `boost_posts` int(10) unsigned NOT NULL,
  `boost_pages_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `boost_pages` int(10) unsigned NOT NULL,
  PRIMARY KEY (`package_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages_payments`
--

DROP TABLE IF EXISTS `packages_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages_payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `payment_date` datetime NOT NULL,
  `package_name` varchar(256) NOT NULL,
  `package_price` varchar(32) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages_payments`
--

LOCK TABLES `packages_payments` WRITE;
/*!40000 ALTER TABLE `packages_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_admin` int(10) unsigned NOT NULL,
  `page_category` int(10) unsigned NOT NULL,
  `page_name` varchar(64) NOT NULL,
  `page_title` varchar(256) NOT NULL,
  `page_picture` varchar(256) DEFAULT NULL,
  `page_picture_id` int(10) unsigned DEFAULT NULL,
  `page_cover` varchar(256) DEFAULT NULL,
  `page_cover_id` int(10) unsigned DEFAULT NULL,
  `page_cover_position` varchar(256) DEFAULT NULL,
  `page_album_pictures` int(10) unsigned DEFAULT NULL,
  `page_album_covers` int(10) unsigned DEFAULT NULL,
  `page_album_timeline` int(10) unsigned DEFAULT NULL,
  `page_pinned_post` int(10) unsigned DEFAULT NULL,
  `page_verified` enum('0','1') NOT NULL DEFAULT '0',
  `page_boosted` enum('0','1') NOT NULL DEFAULT '0',
  `page_boosted_by` int(10) unsigned DEFAULT NULL,
  `page_company` varchar(256) DEFAULT NULL,
  `page_phone` varchar(256) DEFAULT NULL,
  `page_website` varchar(256) DEFAULT NULL,
  `page_location` varchar(256) DEFAULT NULL,
  `page_description` mediumtext NOT NULL,
  `page_action_text` varchar(32) DEFAULT NULL,
  `page_action_color` varchar(32) DEFAULT NULL,
  `page_action_url` varchar(256) DEFAULT NULL,
  `page_social_facebook` varchar(256) DEFAULT NULL,
  `page_social_twitter` varchar(256) DEFAULT NULL,
  `page_social_youtube` varchar(256) DEFAULT NULL,
  `page_social_instagram` varchar(256) DEFAULT NULL,
  `page_social_linkedin` varchar(256) DEFAULT NULL,
  `page_social_vkontakte` varchar(256) DEFAULT NULL,
  `page_likes` int(10) unsigned NOT NULL DEFAULT '0',
  `page_date` datetime NOT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `username` (`page_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_admins`
--

DROP TABLE IF EXISTS `pages_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id_user_id` (`page_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_admins`
--

LOCK TABLES `pages_admins` WRITE;
/*!40000 ALTER TABLE `pages_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_categories`
--

DROP TABLE IF EXISTS `pages_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(256) NOT NULL,
  `category_order` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_categories`
--

LOCK TABLES `pages_categories` WRITE;
/*!40000 ALTER TABLE `pages_categories` DISABLE KEYS */;
INSERT INTO `pages_categories` VALUES (1,'Cars and Vehicles',1),(2,'Comedy',2),(3,'Economics and Trade',3),(4,'Education',4),(5,'Entertainment',5),(6,'Movies and Animation',6),(7,'Gaming',7),(8,'History and Facts',8),(9,'Live Style',9),(10,'Natural',10),(11,'News and Politics',11),(12,'People and Nations',12),(13,'Pets and Animals',13),(14,'Places and Regions',14),(15,'Science and Technology',15),(16,'Sport',16),(17,'Travel and Events',17),(18,'Other',18);
/*!40000 ALTER TABLE `pages_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_invites`
--

DROP TABLE IF EXISTS `pages_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_invites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `from_user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id_user_id_from_user_id` (`page_id`,`user_id`,`from_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_invites`
--

LOCK TABLES `pages_invites` WRITE;
/*!40000 ALTER TABLE `pages_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_likes`
--

DROP TABLE IF EXISTS `pages_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id_user_id` (`page_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_likes`
--

LOCK TABLES `pages_likes` WRITE;
/*!40000 ALTER TABLE `pages_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `points_payments`
--

DROP TABLE IF EXISTS `points_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `points_payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `amount` varchar(32) NOT NULL,
  `method` varchar(64) NOT NULL,
  `method_value` text NOT NULL,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `points_payments`
--

LOCK TABLES `points_payments` WRITE;
/*!40000 ALTER TABLE `points_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `points_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` enum('user','page') NOT NULL,
  `in_group` enum('0','1') NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned DEFAULT NULL,
  `group_approved` enum('0','1') NOT NULL DEFAULT '1',
  `in_event` enum('0','1') NOT NULL DEFAULT '0',
  `event_id` int(10) unsigned DEFAULT NULL,
  `event_approved` enum('0','1') NOT NULL DEFAULT '1',
  `in_wall` enum('0','1') NOT NULL DEFAULT '0',
  `wall_id` int(10) unsigned DEFAULT NULL,
  `post_type` varchar(32) NOT NULL,
  `colored_pattern` int(10) unsigned DEFAULT NULL,
  `origin_id` int(10) unsigned DEFAULT NULL,
  `time` datetime NOT NULL,
  `location` varchar(256) DEFAULT NULL,
  `privacy` varchar(32) NOT NULL,
  `text` longtext,
  `feeling_action` varchar(32) DEFAULT NULL,
  `feeling_value` varchar(256) DEFAULT NULL,
  `boosted` enum('0','1') NOT NULL DEFAULT '0',
  `boosted_by` int(10) unsigned DEFAULT NULL,
  `comments_disabled` enum('0','1') NOT NULL DEFAULT '0',
  `is_hidden` enum('0','1') NOT NULL DEFAULT '0',
  `reaction_like_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_love_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_haha_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_yay_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_wow_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_sad_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_angry_count` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `shares` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_articles`
--

DROP TABLE IF EXISTS `posts_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_articles` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `cover` varchar(256) NOT NULL,
  `title` varchar(256) NOT NULL,
  `text` longtext NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `tags` mediumtext NOT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_articles`
--

LOCK TABLES `posts_articles` WRITE;
/*!40000 ALTER TABLE `posts_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_audios`
--

DROP TABLE IF EXISTS `posts_audios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_audios` (
  `audio_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `source` varchar(256) NOT NULL,
  `views` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`audio_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_audios`
--

LOCK TABLES `posts_audios` WRITE;
/*!40000 ALTER TABLE `posts_audios` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_audios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_colored_patterns`
--

DROP TABLE IF EXISTS `posts_colored_patterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_colored_patterns` (
  `pattern_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('color','image') NOT NULL DEFAULT 'color',
  `background_image` varchar(256) DEFAULT NULL,
  `background_color_1` varchar(32) DEFAULT NULL,
  `background_color_2` varchar(32) DEFAULT NULL,
  `text_color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pattern_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_colored_patterns`
--

LOCK TABLES `posts_colored_patterns` WRITE;
/*!40000 ALTER TABLE `posts_colored_patterns` DISABLE KEYS */;
INSERT INTO `posts_colored_patterns` VALUES (1,'image','patterns/1.jpg',NULL,NULL,'#FFFFFF'),(2,'image','patterns/2.jpg',NULL,NULL,'#FFFFFF'),(3,'image','patterns/3.jpg',NULL,NULL,'#FFFFFF'),(4,'image','patterns/4.jpg','','','#000000'),(5,'image','patterns/5.jpg',NULL,NULL,'#FFFFFF'),(6,'color',NULL,'#FF00FF','#030355','#FFF300'),(7,'color','','#FF003D','#D73A3A','#FFFFFF');
/*!40000 ALTER TABLE `posts_colored_patterns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_comments`
--

DROP TABLE IF EXISTS `posts_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` int(10) unsigned NOT NULL,
  `node_type` enum('post','photo','comment') NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` enum('user','page') NOT NULL,
  `text` longtext NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `time` datetime NOT NULL,
  `reaction_like_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_love_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_haha_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_yay_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_wow_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_sad_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_angry_count` int(10) unsigned NOT NULL DEFAULT '0',
  `replies` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_comments`
--

LOCK TABLES `posts_comments` WRITE;
/*!40000 ALTER TABLE `posts_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_comments_reactions`
--

DROP TABLE IF EXISTS `posts_comments_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_comments_reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `reaction` varchar(32) DEFAULT 'like',
  `reaction_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comment_id_user_id` (`comment_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_comments_reactions`
--

LOCK TABLES `posts_comments_reactions` WRITE;
/*!40000 ALTER TABLE `posts_comments_reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_comments_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_files`
--

DROP TABLE IF EXISTS `posts_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `source` varchar(256) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_files`
--

LOCK TABLES `posts_files` WRITE;
/*!40000 ALTER TABLE `posts_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_hidden`
--

DROP TABLE IF EXISTS `posts_hidden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_hidden` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_hidden`
--

LOCK TABLES `posts_hidden` WRITE;
/*!40000 ALTER TABLE `posts_hidden` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_hidden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_links`
--

DROP TABLE IF EXISTS `posts_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `source_url` text NOT NULL,
  `source_host` varchar(256) NOT NULL,
  `source_title` varchar(256) NOT NULL,
  `source_text` mediumtext NOT NULL,
  `source_thumbnail` text NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_links`
--

LOCK TABLES `posts_links` WRITE;
/*!40000 ALTER TABLE `posts_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_media`
--

DROP TABLE IF EXISTS `posts_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_media` (
  `media_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) NOT NULL,
  `source_url` mediumtext NOT NULL,
  `source_provider` varchar(256) NOT NULL,
  `source_type` varchar(256) NOT NULL,
  `source_title` varchar(256) DEFAULT NULL,
  `source_text` mediumtext,
  `source_html` mediumtext,
  PRIMARY KEY (`media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_media`
--

LOCK TABLES `posts_media` WRITE;
/*!40000 ALTER TABLE `posts_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_photos`
--

DROP TABLE IF EXISTS `posts_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_photos` (
  `photo_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `album_id` int(10) unsigned DEFAULT NULL,
  `source` varchar(256) NOT NULL,
  `blur` enum('0','1') NOT NULL DEFAULT '0',
  `reaction_like_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_love_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_haha_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_yay_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_wow_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_sad_count` int(10) unsigned NOT NULL DEFAULT '0',
  `reaction_angry_count` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_photos`
--

LOCK TABLES `posts_photos` WRITE;
/*!40000 ALTER TABLE `posts_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_photos_albums`
--

DROP TABLE IF EXISTS `posts_photos_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_photos_albums` (
  `album_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` enum('user','page') NOT NULL,
  `in_group` enum('0','1') NOT NULL DEFAULT '0',
  `group_id` int(10) unsigned DEFAULT NULL,
  `in_event` enum('0','1') NOT NULL DEFAULT '0',
  `event_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `privacy` enum('me','friends','public','custom') NOT NULL DEFAULT 'public',
  PRIMARY KEY (`album_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_photos_albums`
--

LOCK TABLES `posts_photos_albums` WRITE;
/*!40000 ALTER TABLE `posts_photos_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_photos_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_photos_reactions`
--

DROP TABLE IF EXISTS `posts_photos_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_photos_reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `reaction` varchar(32) NOT NULL DEFAULT 'like',
  `reaction_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_photo_id` (`user_id`,`photo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_photos_reactions`
--

LOCK TABLES `posts_photos_reactions` WRITE;
/*!40000 ALTER TABLE `posts_photos_reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_photos_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_polls`
--

DROP TABLE IF EXISTS `posts_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_polls` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `votes` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_polls`
--

LOCK TABLES `posts_polls` WRITE;
/*!40000 ALTER TABLE `posts_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_polls_options`
--

DROP TABLE IF EXISTS `posts_polls_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_polls_options` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poll_id` int(10) unsigned NOT NULL,
  `text` varchar(256) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_polls_options`
--

LOCK TABLES `posts_polls_options` WRITE;
/*!40000 ALTER TABLE `posts_polls_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_polls_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_polls_options_users`
--

DROP TABLE IF EXISTS `posts_polls_options_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_polls_options_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `poll_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_poll_id` (`user_id`,`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_polls_options_users`
--

LOCK TABLES `posts_polls_options_users` WRITE;
/*!40000 ALTER TABLE `posts_polls_options_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_polls_options_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_products`
--

DROP TABLE IF EXISTS `posts_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_products` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `name` varchar(256) NOT NULL,
  `price` varchar(32) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `status` enum('new','old') NOT NULL DEFAULT 'new',
  `location` varchar(255) NOT NULL,
  `available` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_products`
--

LOCK TABLES `posts_products` WRITE;
/*!40000 ALTER TABLE `posts_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_reactions`
--

DROP TABLE IF EXISTS `posts_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `reaction` varchar(32) NOT NULL DEFAULT 'like',
  `reaction_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_reactions`
--

LOCK TABLES `posts_reactions` WRITE;
/*!40000 ALTER TABLE `posts_reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_saved`
--

DROP TABLE IF EXISTS `posts_saved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_saved` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id_user_id` (`post_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_saved`
--

LOCK TABLES `posts_saved` WRITE;
/*!40000 ALTER TABLE `posts_saved` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_saved` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_videos`
--

DROP TABLE IF EXISTS `posts_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_videos` (
  `video_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `source` varchar(256) NOT NULL,
  `thumbnail` varchar(256) DEFAULT NULL,
  `views` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`video_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_videos`
--

LOCK TABLES `posts_videos` WRITE;
/*!40000 ALTER TABLE `posts_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_pages`
--

DROP TABLE IF EXISTS `static_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `static_pages` (
  `page_id` int(10) NOT NULL AUTO_INCREMENT,
  `page_url` varchar(64) NOT NULL,
  `page_title` varchar(256) NOT NULL,
  `page_text` mediumtext NOT NULL,
  `page_in_footer` enum('0','1') NOT NULL DEFAULT '1',
  `page_order` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `page_url` (`page_url`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_pages`
--

LOCK TABLES `static_pages` WRITE;
/*!40000 ALTER TABLE `static_pages` DISABLE KEYS */;
INSERT INTO `static_pages` VALUES (1,'about','About','&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Big Title&lt;/h3&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Big Title&lt;/h3&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;','1',1),(2,'terms','Terms','&lt;p&gt;&lt;strong&gt; We run this website and permits its use according to the following terms and conditions: &lt;/strong&gt;&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Basic Terms:&lt;/h3&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;Using this website implies your acceptance of these conditions. If you do not fully accept them, your entry to this site will be considered unauthorized and you will have to stop using it immediately&lt;/li&gt;\r\n&lt;li&gt;You must be 13 years or older to use this site.&lt;/li&gt;\r\n&lt;li&gt;You are responsible for any activity that occurs under your screen name.&lt;/li&gt;\r\n&lt;li&gt;You are responsible for keeping your account secure.&lt;/li&gt;\r\n&lt;li&gt;You must not abuse, harass, threaten or intimidate other Sngine users.&lt;/li&gt;\r\n&lt;li&gt;You are solely responsible for your conduct and any data, text, information, screen names, graphics, photos, profiles, audio and video clips, links (&quot;Content&quot;) that you submit, post, and display on the Sngine service.&lt;/li&gt;\r\n&lt;li&gt;You must not modify, adapt or hack Sngine or modify another website so as to falsely imply that it is associated with Sngine&lt;/li&gt;\r\n&lt;li&gt;You must not create or submit unwanted email to any Sngine members (&quot;Spam&quot;).&lt;/li&gt;\r\n&lt;li&gt;You must not transmit any worms or viruses or any code of a destructive nature.&lt;/li&gt;\r\n&lt;li&gt;You must not, in the use of Sngine, violate any laws in your jurisdiction (including but not limited to copyright laws).&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;Violation of any of these agreements will result in the termination of your Sngine account. While Sngine prohibits such conduct and content on its site, you understand and agree that Sngine cannot be responsible for the Content posted on its web site and you nonetheless may be exposed to such materials and that you use the Sngine service at your own risk.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;General Conditions:&lt;/h3&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;We reserve the right to modify or terminate the Sngine service for any reason, without notice at any time.&lt;/li&gt;\r\n&lt;li&gt;We reserve the right to alter these Terms of Use at any time. If the alterations constitute a material change to the Terms of Use, we will notify you via internet mail according to the preference expressed on your account. What constitutes a &quot;material change&quot; will be determined at our sole discretion, in good faith and using common sense and reasonable judgement.&lt;/li&gt;\r\n&lt;li&gt;We reserve the right to refuse service to anyone for any reason at any time.&lt;/li&gt;\r\n&lt;li&gt;We may, but have no obligation to, remove Content and accounts containing Content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, obscene or otherwise objectionable or violates any party&#039;s intellectual property or these Terms of Use.&lt;/li&gt;\r\n&lt;li&gt;Sngine service makes it possible to post images and text hosted on Sngine to outside websites. This use is accepted (and even encouraged!). However, pages on other websites which display data hosted on Sngine must provide a link back to Sngine.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Copyright (What&#039;s Yours is Yours):&lt;/h3&gt;\r\n&lt;ol&gt;\r\n&lt;li&gt;We claim no intellectual property rights over the material you provide to the Sngine service. Your profile and materials uploaded remain yours. You can remove your profile at any time by deleting your account. This will also remove any text and images you have stored in the system.&lt;/li&gt;\r\n&lt;li&gt;We encourage users to contribute their creations to the public domain or consider progressive licensing terms.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;&lt;small&gt; &lt;em&gt;Last updated on: Jan 29, 2016&lt;/em&gt; &lt;/small&gt;&lt;/p&gt;','1',2),(3,'privacy','Privacy','&lt;p&gt;We recognize that your privacy is very important and take it seriously. This Privacy Policy describes Sngine&#039;s policies and procedures on the collection, use and disclosure of your information when you use the Sngine Service. We will not use or share your information with anyone except as described in this Privacy Policy.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Information Collection and Use&lt;/h3&gt;\r\n&lt;p&gt;We uses information we collect to analyze how the Service is used, diagnose service or technical problems, maintain security, personalize content, remember information to help you efficiently access your account, monitor aggregate metrics such as total number of visitors, traffic, and demographic patterns, and track User Content and users as necessary to comply with the Digital Millennium Copyright Act and other applicable laws.&lt;/p&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;User-Provided Information:&lt;/h4&gt;\r\n&lt;p&gt;You provide us information about yourself, such as your name and e-mail address, if you register for a member account with the Service. Your name and other information you choose to add to your profile will be available for public viewing on the Service. We may use your email address to send you Service-related notices. You can control receipt of certain Service-related messages on your Settings page. We may also use your contact information to send you marketing messages. If you do not want to receive such messages, you may opt out by following the instructions in the message. If you correspond with us by email, we may retain the content of your email messages, your email address and our responses.&lt;/p&gt;\r\n&lt;p&gt;You also provide us information in User Content you post to the Service. Your posts and other contributions on the Service, and metadata about them (such as when you posted them), are publicly viewable on the Service, along with your name (unless the Service permits you to post anonymously). This information may be searched by search engines and be republished elsewhere on the Web in accordance with our Terms of Service.&lt;/p&gt;\r\n&lt;p&gt;If you choose to use our invitation service to invite a friend to the Service, we will ask you for that person&#039;s email address and automatically send an email invitation. We stores this information to send this email, to register your friend if your invitation is accepted, and to track the success of our invitation service.&lt;/p&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;Cookies:&lt;/h4&gt;\r\n&lt;p&gt;When you visit the Service, we may send one or more &quot;cookies&quot; - small data files - to your computer to uniquely identify your browser and let Sngine help you log in faster and enhance your navigation through the site. A cookie may convey anonymous information about how you browse the Service to us, but does not collect personal information about you. A persistent cookie remains on your computer after you close your browser so that it can be used by your browser on subsequent visits to the Service. Persistent cookies can be removed by following your web browser&#039;s directions. A session cookie is temporary and disappears after you close your browser. You can reset your web browser to refuse all cookies or to indicate when a cookie is being sent. However, some features of the Service may not function properly if the ability to accept cookies is disabled.&lt;/p&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;Log Files:&lt;/h4&gt;\r\n&lt;p&gt;Log file information is automatically reported by your browser each time you access a web page. When you use the Service, our servers automatically record certain information that your web browser sends whenever you visit any website. These server logs may include information such as your web request, Internet Protocol (&quot;IP&quot;) address, browser type, referring / exit pages and URLs, number of clicks, domain names, landing pages, pages viewed, and other such information.&lt;/p&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;Third Party Services:&lt;/h4&gt;\r\n&lt;p&gt;We may use Google Analytics or Mixpanel to help understand use of the Service. Google Analytics and Mixpanel collect the information sent by your browser as part of a web page request, including cookies and your IP address. Google Analytics and Mixpanel also receive this information and their use of it is governed by their Privacy Policies.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;How We Share Your Information&lt;/h3&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;Personally Identifiable Information:&lt;/h4&gt;\r\n&lt;p&gt;We may share your personally identifiable information with third parties for the purpose of providing the Service to you. If we do this, such third parties&#039; use of your information will be bound by this Privacy Policy. We may store personal information in locations outside the direct control of Sngine (for instance, on servers or databases co-located with hosting providers).&lt;/p&gt;\r\n&lt;p&gt;We may share or disclose your information with your consent, such as if you choose to sign on to the Service through a third-party service. We cannot control third parties&#039; use of your information.&lt;/p&gt;\r\n&lt;p&gt;Sngine may disclose your personal information if required to do so by law or subpoena or if we believe that it is reasonably necessary to comply with a law, regulation or legal request; to protect the safety of any person; to address fraud, security or technical issues; or to protect Sngine&#039;s rights or property.&lt;/p&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;Non-Personally Identifiable Information:&lt;/h4&gt;\r\n&lt;p&gt;We may share non-personally identifiable information (such as anonymous usage data, referring/exit pages and URLs, platform types, number of clicks, etc.) with interested third parties to help them understand the usage patterns for certain Sngine services.&lt;/p&gt;\r\n&lt;p&gt;Sngine may allow third-party ad servers or ad networks to serve advertisements on the Service. These third-party ad servers or ad networks use technology to send, directly to your browser, the advertisements and links that appear on Sngine. They automatically receive your IP address when this happens. They may also use other technologies (such as cookies, JavaScript, or web beacons) to measure the effectiveness of their advertisements and to personalize the advertising content. Sngine does not provide any personally identifiable information to these third-party ad servers or ad networks without your consent. However, please note that if an advertiser asks Sngine to show an advertisement to a certain audience and you respond to that advertisement, the advertiser or ad server may conclude that you fit the description of the audience they are trying to reach. The Sngine Privacy Policy does not apply to, and we cannot control the activities of, third-party advertisers. Please consult the respective privacy policies of such advertisers for more information.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;How We Protect Your Information&lt;/h3&gt;\r\n&lt;p&gt;We uses commercially reasonable physical, managerial, and technical safeguards to preserve the integrity and security of your personal information. We cannot, however, ensure or warrant the security of any information you transmit to Sngine or guarantee that your information on the Service may not be accessed, disclosed, altered, or destroyed by breach of any of our physical, technical, or managerial safeguards.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Your Choices About Your Information&lt;/h3&gt;\r\n&lt;p&gt;You may, of course, decline to submit personally identifiable information through the Service, in which case Sngine may not be able to provide certain services to you. You may update or correct your account information and email preferences at any time by logging in to your account.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Links to Other Web Sites&lt;/h3&gt;\r\n&lt;p&gt;We are not responsible for the practices employed by websites linked to or from the Service, nor the information or content contained therein. Please remember that when you use a link to go from the Service to another website, our Privacy Policy is no longer in effect. Your browsing and interaction on any other website, including those that have a link on our website, is subject to that website&#039;s own rules and policies.&lt;/p&gt;\r\n&lt;h3 class=&quot;text-info&quot;&gt;Changes to Our Privacy Policy&lt;/h3&gt;\r\n&lt;p&gt;If we change our privacy policies and procedures, we will post those changes on this page to keep you aware of what information we collect, how we use it and under what circumstances we may disclose it. Changes to this Privacy Policy are effective when they are posted on this page.&lt;/p&gt;\r\n&lt;h4 class=&quot;text-danger&quot;&gt;&lt;small&gt; &lt;em&gt;Last updated on: Jan 29, 2016&lt;/em&gt; &lt;/small&gt;&lt;/h4&gt;','1',3);
/*!40000 ALTER TABLE `static_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stickers`
--

DROP TABLE IF EXISTS `stickers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stickers` (
  `sticker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(256) NOT NULL,
  PRIMARY KEY (`sticker_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stickers`
--

LOCK TABLES `stickers` WRITE;
/*!40000 ALTER TABLE `stickers` DISABLE KEYS */;
INSERT INTO `stickers` VALUES (1,'stickers/1.png'),(2,'stickers/2.png'),(3,'stickers/3.png'),(4,'stickers/4.png'),(5,'stickers/5.png'),(6,'stickers/6.png'),(7,'stickers/7.png'),(8,'stickers/8.png'),(9,'stickers/9.png'),(10,'stickers/10.png'),(11,'stickers/11.png'),(12,'stickers/12.png'),(13,'stickers/13.png'),(14,'stickers/14.png'),(15,'stickers/15.png'),(16,'stickers/16.png'),(17,'stickers/17.png'),(18,'stickers/18.png'),(19,'stickers/19.png'),(20,'stickers/20.png');
/*!40000 ALTER TABLE `stickers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stories` (
  `story_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`story_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories_media`
--

DROP TABLE IF EXISTS `stories_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stories_media` (
  `media_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `story_id` int(10) unsigned NOT NULL,
  `source` varchar(256) NOT NULL,
  `is_photo` enum('0','1') NOT NULL DEFAULT '1',
  `text` text NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories_media`
--

LOCK TABLES `stories_media` WRITE;
/*!40000 ALTER TABLE `stories_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `stories_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_countries`
--

DROP TABLE IF EXISTS `system_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_countries` (
  `country_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL,
  `country_name` varchar(64) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_countries`
--

LOCK TABLES `system_countries` WRITE;
/*!40000 ALTER TABLE `system_countries` DISABLE KEYS */;
INSERT INTO `system_countries` VALUES (1,'AF','Afghanistan'),(2,'AL','Albania'),(3,'DZ','Algeria'),(4,'DS','American Samoa'),(5,'AD','Andorra'),(6,'AO','Angola'),(7,'AI','Anguilla'),(8,'AQ','Antarctica'),(9,'AG','Antigua and Barbuda'),(10,'AR','Argentina'),(11,'AM','Armenia'),(12,'AW','Aruba'),(13,'AU','Australia'),(14,'AT','Austria'),(15,'AZ','Azerbaijan'),(16,'BS','Bahamas'),(17,'BH','Bahrain'),(18,'BD','Bangladesh'),(19,'BB','Barbados'),(20,'BY','Belarus'),(21,'BE','Belgium'),(22,'BZ','Belize'),(23,'BJ','Benin'),(24,'BM','Bermuda'),(25,'BT','Bhutan'),(26,'BO','Bolivia'),(27,'BA','Bosnia and Herzegovina'),(28,'BW','Botswana'),(29,'BV','Bouvet Island'),(30,'BR','Brazil'),(31,'IO','British Indian Ocean Territory'),(32,'BN','Brunei Darussalam'),(33,'BG','Bulgaria'),(34,'BF','Burkina Faso'),(35,'BI','Burundi'),(36,'KH','Cambodia'),(37,'CM','Cameroon'),(38,'CA','Canada'),(39,'CV','Cape Verde'),(40,'KY','Cayman Islands'),(41,'CF','Central African Republic'),(42,'TD','Chad'),(43,'CL','Chile'),(44,'CN','China'),(45,'CX','Christmas Island'),(46,'CC','Cocos (Keeling) Islands'),(47,'CO','Colombia'),(48,'KM','Comoros'),(49,'CG','Congo'),(50,'CK','Cook Islands'),(51,'CR','Costa Rica'),(52,'HR','Croatia (Hrvatska)'),(53,'CU','Cuba'),(54,'CY','Cyprus'),(55,'CZ','Czech Republic'),(56,'DK','Denmark'),(57,'DJ','Djibouti'),(58,'DM','Dominica'),(59,'DO','Dominican Republic'),(60,'TP','East Timor'),(61,'EC','Ecuador'),(62,'EG','Egypt'),(63,'SV','El Salvador'),(64,'GQ','Equatorial Guinea'),(65,'ER','Eritrea'),(66,'EE','Estonia'),(67,'ET','Ethiopia'),(68,'FK','Falkland Islands (Malvinas)'),(69,'FO','Faroe Islands'),(70,'FJ','Fiji'),(71,'FI','Finland'),(72,'FR','France'),(73,'FX','France, Metropolitan'),(74,'GF','French Guiana'),(75,'PF','French Polynesia'),(76,'TF','French Southern Territories'),(77,'GA','Gabon'),(78,'GM','Gambia'),(79,'GE','Georgia'),(80,'DE','Germany'),(81,'GH','Ghana'),(82,'GI','Gibraltar'),(83,'GK','Guernsey'),(84,'GR','Greece'),(85,'GL','Greenland'),(86,'GD','Grenada'),(87,'GP','Guadeloupe'),(88,'GU','Guam'),(89,'GT','Guatemala'),(90,'GN','Guinea'),(91,'GW','Guinea-Bissau'),(92,'GY','Guyana'),(93,'HT','Haiti'),(94,'HM','Heard and Mc Donald Islands'),(95,'HN','Honduras'),(96,'HK','Hong Kong'),(97,'HU','Hungary'),(98,'IS','Iceland'),(99,'IN','India'),(100,'IM','Isle of Man'),(101,'ID','Indonesia'),(102,'IR','Iran (Islamic Republic of)'),(103,'IQ','Iraq'),(104,'IE','Ireland'),(105,'IL','Israel'),(106,'IT','Italy'),(107,'CI','Ivory Coast'),(108,'JE','Jersey'),(109,'JM','Jamaica'),(110,'JP','Japan'),(111,'JO','Jordan'),(112,'KZ','Kazakhstan'),(113,'KE','Kenya'),(114,'KI','Kiribati'),(115,'KP','Korea, Democratic People\'s Republic of'),(116,'KR','Korea, Republic of'),(117,'XK','Kosovo'),(118,'KW','Kuwait'),(119,'KG','Kyrgyzstan'),(120,'LA','Lao People\'s Democratic Republic'),(121,'LV','Latvia'),(122,'LB','Lebanon'),(123,'LS','Lesotho'),(124,'LR','Liberia'),(125,'LY','Libyan Arab Jamahiriya'),(126,'LI','Liechtenstein'),(127,'LT','Lithuania'),(128,'LU','Luxembourg'),(129,'MO','Macau'),(130,'MK','Macedonia'),(131,'MG','Madagascar'),(132,'MW','Malawi'),(133,'MY','Malaysia'),(134,'MV','Maldives'),(135,'ML','Mali'),(136,'MT','Malta'),(137,'MH','Marshall Islands'),(138,'MQ','Martinique'),(139,'MR','Mauritania'),(140,'MU','Mauritius'),(141,'TY','Mayotte'),(142,'MX','Mexico'),(143,'FM','Micronesia, Federated States of'),(144,'MD','Moldova, Republic of'),(145,'MC','Monaco'),(146,'MN','Mongolia'),(147,'ME','Montenegro'),(148,'MS','Montserrat'),(149,'MA','Morocco'),(150,'MZ','Mozambique'),(151,'MM','Myanmar'),(152,'NA','Namibia'),(153,'NR','Nauru'),(154,'NP','Nepal'),(155,'NL','Netherlands'),(156,'AN','Netherlands Antilles'),(157,'NC','New Caledonia'),(158,'NZ','New Zealand'),(159,'NI','Nicaragua'),(160,'NE','Niger'),(161,'NG','Nigeria'),(162,'NU','Niue'),(163,'NF','Norfolk Island'),(164,'MP','Northern Mariana Islands'),(165,'NO','Norway'),(166,'OM','Oman'),(167,'PK','Pakistan'),(168,'PW','Palau'),(169,'PS','Palestine'),(170,'PA','Panama'),(171,'PG','Papua New Guinea'),(172,'PY','Paraguay'),(173,'PE','Peru'),(174,'PH','Philippines'),(175,'PN','Pitcairn'),(176,'PL','Poland'),(177,'PT','Portugal'),(178,'PR','Puerto Rico'),(179,'QA','Qatar'),(180,'RE','Reunion'),(181,'RO','Romania'),(182,'RU','Russian Federation'),(183,'RW','Rwanda'),(184,'KN','Saint Kitts and Nevis'),(185,'LC','Saint Lucia'),(186,'VC','Saint Vincent and the Grenadines'),(187,'WS','Samoa'),(188,'SM','San Marino'),(189,'ST','Sao Tome and Principe'),(190,'SA','Saudi Arabia'),(191,'SN','Senegal'),(192,'RS','Serbia'),(193,'SC','Seychelles'),(194,'SL','Sierra Leone'),(195,'SG','Singapore'),(196,'SK','Slovakia'),(197,'SI','Slovenia'),(198,'SB','Solomon Islands'),(199,'SO','Somalia'),(200,'ZA','South Africa'),(201,'GS','South Georgia South Sandwich Islands'),(202,'ES','Spain'),(203,'LK','Sri Lanka'),(204,'SH','St. Helena'),(205,'PM','St. Pierre and Miquelon'),(206,'SD','Sudan'),(207,'SR','Suriname'),(208,'SJ','Svalbard and Jan Mayen Islands'),(209,'SZ','Swaziland'),(210,'SE','Sweden'),(211,'CH','Switzerland'),(212,'SY','Syrian Arab Republic'),(213,'TW','Taiwan'),(214,'TJ','Tajikistan'),(215,'TZ','Tanzania, United Republic of'),(216,'TH','Thailand'),(217,'TG','Togo'),(218,'TK','Tokelau'),(219,'TO','Tonga'),(220,'TT','Trinidad and Tobago'),(221,'TN','Tunisia'),(222,'TR','Turkey'),(223,'TM','Turkmenistan'),(224,'TC','Turks and Caicos Islands'),(225,'TV','Tuvalu'),(226,'UG','Uganda'),(227,'UA','Ukraine'),(228,'AE','United Arab Emirates'),(229,'GB','United Kingdom'),(230,'US','United States'),(231,'UM','United States minor outlying islands'),(232,'UY','Uruguay'),(233,'UZ','Uzbekistan'),(234,'VU','Vanuatu'),(235,'VA','Vatican City State'),(236,'VE','Venezuela'),(237,'VN','Vietnam'),(238,'VG','Virgin Islands (British)'),(239,'VI','Virgin Islands (U.S.)'),(240,'WF','Wallis and Futuna Islands'),(241,'EH','Western Sahara'),(242,'YE','Yemen'),(243,'ZR','Zaire'),(244,'ZM','Zambia'),(245,'ZW','Zimbabwe');
/*!40000 ALTER TABLE `system_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_currencies`
--

DROP TABLE IF EXISTS `system_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_currencies` (
  `currency_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `code` varchar(32) NOT NULL,
  `symbol` varchar(32) NOT NULL,
  `default` enum('0','1') NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_currencies`
--

LOCK TABLES `system_currencies` WRITE;
/*!40000 ALTER TABLE `system_currencies` DISABLE KEYS */;
INSERT INTO `system_currencies` VALUES (1,'Australia Dollar','AUD','$','0'),(2,'Brazil Real','BRL','R$','0'),(3,'Canada Dollar','CAD','$','0'),(4,'Czech Republic Koruna','CZK','KÃƒâ€žÃ‚Â','0'),(5,'Denmark Krone','DKK','kr','0'),(6,'Euro','EUR','&euro;','0'),(7,'Hong Kong Dollar','HKD','$','0'),(8,'Hungary Forint','HUF','Ft','0'),(9,'Israel Shekel','ILS','ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Âª','0'),(10,'Japan Yen','JPY','&yen;','0'),(11,'Malaysia Ringgit','MYR','RM','0'),(12,'Mexico Peso','MXN','$','0'),(13,'Norway Krone','NOK','kr','0'),(14,'New Zealand Dollar','NZD','$','0'),(15,'Philippines Peso','PHP','ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â±','0'),(16,'Poland Zloty','PLN','zÃƒâ€¦Ã¢â‚¬Å¡','0'),(17,'United Kingdom Pound','GBP','&pound;','0'),(18,'Russia Ruble','RUB','ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â½','0'),(19,'Singapore Dollar','SGD','$','0'),(20,'Sweden Krona','SEK','kr','0'),(21,'Switzerland Franc','CHF','CHF','0'),(22,'Thailand Baht','THB','ÃƒÂ Ã‚Â¸Ã‚Â¿','0'),(23,'Turkey Lira','TRY','TRY','0'),(24,'United States Dollar','USD','$','1');
/*!40000 ALTER TABLE `system_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_languages`
--

DROP TABLE IF EXISTS `system_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_languages` (
  `language_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `title` varchar(256) NOT NULL,
  `flag` varchar(256) NOT NULL,
  `dir` enum('LTR','RTL') NOT NULL,
  `default` enum('0','1') NOT NULL,
  `enabled` enum('0','1') NOT NULL,
  PRIMARY KEY (`language_id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_languages`
--

LOCK TABLES `system_languages` WRITE;
/*!40000 ALTER TABLE `system_languages` DISABLE KEYS */;
INSERT INTO `system_languages` VALUES (1,'en_us','English','flags/en_us.png','LTR','1','1'),(2,'ar_sa','Arabic','flags/ar_sa.png','RTL','0','1'),(3,'fr_fr','French','flags/fr_fr.png','LTR','0','1'),(4,'es_es','Spanish','flags/es_es.png','LTR','0','1'),(5,'pt_pt','Portuguese','flags/pt_pt.png','LTR','0','1'),(6,'de_de','Deutsch','flags/de_de.png','LTR','0','1'),(7,'tr_tr','Turkish','flags/tr_tr.png','LTR','0','1'),(8,'nl_nl','Dutch','flags/nl_nl.png','LTR','0','1'),(9,'it_it','Italiano','flags/it_it.png','LTR','0','1'),(10,'ru_ru','Russian','flags/ru_ru.png','LTR','0','1'),(11,'ro_ro','Romaian','flags/ro_ro.png','LTR','0','1'),(12,'pt_br','Portuguese (Brazil)','flags/pt_br.png','LTR','0','1'),(13,'el_gr','Greek','flags/el_gr.png','LTR','0','1');
/*!40000 ALTER TABLE `system_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_options`
--

DROP TABLE IF EXISTS `system_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_options` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(128) NOT NULL,
  `option_value` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=266 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_options`
--

LOCK TABLES `system_options` WRITE;
/*!40000 ALTER TABLE `system_options` DISABLE KEYS */;
INSERT INTO `system_options` VALUES (1,'system_public','1'),(2,'system_live','1'),(3,'system_message',''),(4,'system_title','Sngine'),(5,'system_description',''),(6,'system_keywords',''),(7,'system_email',''),(8,'system_datetime_format','d/m/Y H:i'),(9,'contact_enabled','1'),(10,'directory_enabled','1'),(11,'pages_enabled','1'),(12,'groups_enabled','1'),(13,'events_enabled','1'),(14,'blogs_enabled','1'),(15,'users_blogs_enabled','1'),(16,'market_enabled','1'),(17,'movies_enabled','0'),(18,'games_enabled','0'),(19,'daytime_msg_enabled','1'),(20,'pokes_enabled','1'),(21,'gifts_enabled','0'),(22,'profile_notification_enabled','1'),(23,'browser_notifications_enabled','1'),(24,'noty_notifications_enabled','1'),(25,'cookie_consent_enabled','1'),(26,'adblock_detector_enabled','1'),(27,'stories_enabled','1'),(28,'popular_posts_enabled','1'),(29,'discover_posts_enabled','1'),(30,'memories_enabled','1'),(31,'wall_posts_enabled','1'),(32,'activity_posts_enabled','1'),(33,'colored_posts_enabled','1'),(34,'polls_enabled','1'),(35,'geolocation_enabled','0'),(36,'geolocation_key',''),(37,'gif_enabled','0'),(38,'giphy_key',''),(39,'post_translation_enabled','0'),(40,'yandex_key',''),(41,'smart_yt_player','1'),(42,'social_share_enabled','1'),(43,'max_post_length','5000'),(44,'max_comment_length','5000'),(45,'max_posts_hour','0'),(46,'max_comments_hour','0'),(47,'default_privacy','public'),(48,'trending_hashtags_enabled','1'),(49,'trending_hashtags_interval','week'),(50,'trending_hashtags_limit','5'),(51,'registration_enabled','1'),(52,'registration_type','free'),(53,'invitation_enabled','0'),(54,'invitation_widget_enabled','1'),(55,'invitation_widget_max','5'),(56,'packages_enabled','0'),(57,'packages_wallet_payment_enabled','0'),(58,'activation_enabled','1'),(59,'activation_type','email'),(60,'verification_requests','1'),(61,'age_restriction','0'),(62,'minimum_age','13'),(63,'getting_started','1'),(64,'delete_accounts_enabled','1'),(65,'download_info_enabled','1'),(66,'newsletter_consent','1'),(67,'max_accounts','0'),(68,'max_friends','5000'),(69,'social_login_enabled','0'),(70,'facebook_login_enabled','0'),(71,'facebook_appid',''),(72,'facebook_secret',''),(73,'google_login_enabled','0'),(74,'google_appid',''),(75,'google_secret',''),(76,'twitter_login_enabled','0'),(77,'twitter_appid',''),(78,'twitter_secret',''),(79,'instagram_login_enabled','0'),(80,'instagram_appid',''),(81,'instagram_secret',''),(82,'linkedin_login_enabled','0'),(83,'linkedin_appid',''),(84,'linkedin_secret',''),(85,'vkontakte_login_enabled','0'),(86,'vkontakte_appid',''),(87,'vkontakte_secret',''),(88,'email_smtp_enabled','0'),(89,'email_smtp_authentication','0'),(90,'email_smtp_ssl','0'),(91,'email_smtp_server',''),(92,'email_smtp_port',''),(93,'email_smtp_username',''),(94,'email_smtp_password',''),(95,'email_smtp_setfrom',''),(96,'email_notifications','0'),(97,'email_post_likes','0'),(98,'email_post_comments','0'),(99,'email_post_shares','0'),(100,'email_wall_posts','0'),(101,'email_mentions','0'),(102,'email_profile_visits','0'),(103,'email_friend_requests','0'),(104,'twilio_sid',''),(105,'twilio_token',''),(106,'twilio_phone',''),(107,'twilio_apisid',''),(108,'twilio_apisecret',''),(109,'system_phone',''),(110,'chat_enabled','1'),(111,'chat_status_enabled','1'),(112,'chat_typing_enabled','1'),(113,'chat_seen_enabled','1'),(114,'video_call_enabled','0'),(115,'audio_call_enabled','0'),(116,'uploads_directory','content/uploads'),(117,'uploads_prefix','sngine'),(118,'max_avatar_size','5120'),(119,'max_cover_size','5120'),(120,'photos_enabled','1'),(121,'max_photo_size','5120'),(122,'uploads_quality','medium'),(123,'videos_enabled','1'),(124,'max_video_size','5120'),(125,'video_extensions','mp4, webm, ogg'),(126,'audio_enabled','1'),(127,'max_audio_size','5120'),(128,'audio_extensions','mp3, wav, ogg'),(129,'file_enabled','1'),(130,'max_file_size','5120'),(131,'file_extensions','txt, zip'),(132,'s3_enabled','0'),(133,'s3_bucket',''),(134,'s3_region','us-east-2'),(135,'s3_key',''),(136,'s3_secret',''),(137,'digitalocean_enabled','0'),(138,'digitalocean_space_name',''),(139,'digitalocean_space_region','sfo2'),(140,'digitalocean_key',''),(141,'digitalocean_secret',''),(142,'ftp_enabled','0'),(143,'ftp_hostname',''),(144,'ftp_port',''),(145,'ftp_username',''),(146,'ftp_password',''),(147,'ftp_path',''),(148,'ftp_endpoint',''),(149,'session_hash','312Z52NDU-4GUsm-27Bf8-4gqKl-2DK05-8140bcb8483c'),(150,'unusual_login_enabled','0'),(151,'brute_force_detection_enabled','1'),(152,'brute_force_bad_login_limit','5'),(153,'brute_force_lockout_time','10'),(154,'two_factor_enabled','0'),(155,'two_factor_type','email'),(156,'censored_words_enabled','1'),(157,'censored_words','pussy,fuck,shit,asshole,dick,tits,boobs'),(158,'reCAPTCHA_enabled','0'),(159,'reCAPTCHA_site_key',''),(160,'reCAPTCHA_secret_key',''),(161,'paypal_enabled','0'),(162,'paypal_mode','sandbox'),(163,'paypal_id',''),(164,'paypal_secret',''),(165,'creditcard_enabled','0'),(166,'alipay_enabled','0'),(167,'stripe_mode','test'),(168,'stripe_test_secret',''),(169,'stripe_test_publishable',''),(170,'stripe_live_secret',''),(171,'stripe_live_publishable',''),(172,'coinpayments_enabled','0'),(173,'coinpayments_merchant_id',''),(174,'coinpayments_ipn_secret',''),(175,'2checkout_enabled','0'),(176,'2checkout_mode','sandbox'),(177,'2checkout_merchant_code',''),(178,'2checkout_publishable_key',''),(179,'2checkout_private_key',''),(180,'bank_transfers_enabled','0'),(181,'bank_name',''),(182,'bank_account_number',''),(183,'bank_account_name',''),(184,'bank_account_routing',''),(185,'bank_account_country',''),(186,'bank_transfer_note','In order to confirm the bank transfer, you will need to upload a receipt or take a screenshot of your transfer within 1 day from your payment date. If a bank transfer is made but no receipt is uploaded within this period, your order will be cancelled. We will verify and confirm your receipt within 3 working days from the date you upload it.'),(187,'data_heartbeat','5'),(188,'chat_heartbeat','5'),(189,'offline_time','10'),(190,'min_results','5'),(191,'max_results','10'),(192,'min_results_even','6'),(193,'max_results_even','12'),(194,'analytics_code',''),(195,'system_theme_night_on','0'),(196,'system_theme_mode_select','1'),(197,'system_profile_background_enabled','1'),(198,'system_logo',''),(199,'system_wallpaper_default','1'),(200,'system_wallpaper',''),(201,'system_favicon_default','1'),(202,'system_favicon',''),(203,'system_ogimage_default','1'),(204,'system_ogimage',''),(205,'css_customized','0'),(206,'css_background',''),(207,'css_link_color',''),(208,'css_header',''),(209,'css_header_search',''),(210,'css_header_search_color',''),(211,'css_btn_primary',''),(212,'css_custome_css','/* \r\n\r\nAdd here your custom css styles \r\nExample:\r\np { text-align: center; color: red; }\r\n\r\n*/'),(213,'custome_js_header','/* \r\nYou can add your JavaScript code here\r\n\r\nExample:\r\n\r\nvar x, y, z;\r\nx = 1;\r\ny = 2;\r\nz = x + y;\r\n*/'),(214,'custome_js_footer','/* \r\nYou can add your JavaScript code here\r\n\r\nExample:\r\n\r\nvar x, y, z;\r\nx = 1;\r\ny = 2;\r\nz = x + y;\r\n*/'),(215,'forums_enabled','1'),(216,'forums_online_enabled','1'),(217,'forums_statistics_enabled','1'),(218,'affiliates_enabled','0'),(219,'affiliate_type','registration'),(220,'affiliate_payment_method','paypal,skrill'),(221,'affiliate_payment_method_custom',''),(222,'affiliates_min_withdrawal','50'),(223,'affiliate_payment_type','fixed'),(224,'affiliates_per_user','0.10'),(225,'affiliates_percentage','1'),(226,'points_enabled','0'),(227,'points_money_withdraw_enabled','1'),(228,'points_payment_method','paypal,skrill'),(229,'points_payment_method_custom',''),(230,'points_min_withdrawal','50'),(231,'points_money_transfer_enabled','1'),(232,'points_per_currency','100'),(233,'points_per_post','20'),(234,'points_per_comment','10'),(235,'points_per_reaction','5'),(236,'points_limit_user','1000'),(237,'points_limit_pro','1000'),(238,'ads_enabled','0'),(239,'ads_cost_click','0.05'),(240,'ads_cost_view','0.01'),(241,'developers_apps_enabled','1'),(242,'developers_share_enabled','1'),(243,'auto_friend','0'),(244,'auto_friend_users','[]'),(245,'auto_follow','0'),(246,'auto_follow_users',''),(247,'auto_like','0'),(248,'auto_like_pages',''),(249,'auto_join','0'),(250,'auto_join_groups',''),(251,'last_backup_time',''),(252,'sms_provider','twilio'),(253,'bulksms_username',''),(254,'bulksms_password',''),(255,'infobip_username',''),(256,'infobip_password',''),(257,'watermark_enabled','0'),(258,'watermark_icon',''),(259,'watermark_position','bottom right'),(260,'watermark_xoffset','-30'),(261,'watermark_yoffset','-30'),(262,'watermark_opacity','1'),(263,'adult_images_enabled',''),(264,'adult_images_action','blur'),(265,'adult_images_api_key','');
/*!40000 ALTER TABLE `system_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_themes`
--

DROP TABLE IF EXISTS `system_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_themes` (
  `theme_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `default` enum('0','1') NOT NULL,
  PRIMARY KEY (`theme_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_themes`
--

LOCK TABLES `system_themes` WRITE;
/*!40000 ALTER TABLE `system_themes` DISABLE KEYS */;
INSERT INTO `system_themes` VALUES (1,'default','1');
/*!40000 ALTER TABLE `system_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group` tinyint(10) unsigned NOT NULL DEFAULT '3',
  `user_name` varchar(64) NOT NULL,
  `user_email` varchar(64) NOT NULL,
  `user_email_verified` enum('0','1') NOT NULL DEFAULT '0',
  `user_email_verification_code` varchar(64) DEFAULT NULL,
  `user_phone` varchar(64) DEFAULT NULL,
  `user_phone_verified` enum('0','1') NOT NULL DEFAULT '0',
  `user_phone_verification_code` varchar(64) DEFAULT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_two_factor_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `user_two_factor_type` enum('email','sms','google') DEFAULT NULL,
  `user_two_factor_key` varchar(64) DEFAULT NULL,
  `user_two_factor_gsecret` varchar(64) DEFAULT NULL,
  `user_activated` enum('0','1') NOT NULL DEFAULT '0',
  `user_reseted` enum('0','1') NOT NULL DEFAULT '0',
  `user_reset_key` varchar(64) DEFAULT NULL,
  `user_subscribed` enum('0','1') NOT NULL DEFAULT '0',
  `user_package` int(10) unsigned DEFAULT NULL,
  `user_subscription_date` datetime DEFAULT NULL,
  `user_boosted_posts` int(10) unsigned NOT NULL DEFAULT '0',
  `user_boosted_pages` int(10) unsigned NOT NULL DEFAULT '0',
  `user_started` enum('0','1') NOT NULL DEFAULT '0',
  `user_verified` enum('0','1') NOT NULL DEFAULT '0',
  `user_banned` enum('0','1') NOT NULL DEFAULT '0',
  `user_live_requests_counter` int(10) unsigned NOT NULL DEFAULT '0',
  `user_live_requests_lastid` int(10) unsigned NOT NULL DEFAULT '0',
  `user_live_messages_counter` int(10) unsigned NOT NULL DEFAULT '0',
  `user_live_messages_lastid` int(10) unsigned NOT NULL DEFAULT '0',
  `user_live_notifications_counter` int(10) unsigned NOT NULL DEFAULT '0',
  `user_live_notifications_lastid` int(10) unsigned NOT NULL DEFAULT '0',
  `user_latitude` varchar(256) NOT NULL DEFAULT '0',
  `user_longitude` varchar(256) NOT NULL DEFAULT '0',
  `user_location_updated` datetime DEFAULT NULL,
  `user_firstname` varchar(256) NOT NULL,
  `user_lastname` varchar(256) DEFAULT NULL,
  `user_gender` enum('male','female','other') NOT NULL,
  `user_picture` varchar(255) DEFAULT NULL,
  `user_picture_id` int(10) unsigned DEFAULT NULL,
  `user_cover` varchar(256) DEFAULT NULL,
  `user_cover_id` int(10) unsigned DEFAULT NULL,
  `user_cover_position` varchar(256) DEFAULT NULL,
  `user_album_pictures` int(10) unsigned DEFAULT NULL,
  `user_album_covers` int(10) unsigned DEFAULT NULL,
  `user_album_timeline` int(10) unsigned DEFAULT NULL,
  `user_pinned_post` int(10) unsigned DEFAULT NULL,
  `user_registered` datetime DEFAULT NULL,
  `user_last_seen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_first_failed_login` datetime DEFAULT NULL,
  `user_failed_login_ip` varchar(64) DEFAULT NULL,
  `user_failed_login_count` int(10) unsigned NOT NULL DEFAULT '0',
  `user_country` int(10) unsigned DEFAULT NULL,
  `user_birthdate` date DEFAULT NULL,
  `user_relationship` varchar(256) DEFAULT NULL,
  `user_biography` text,
  `user_website` varchar(256) DEFAULT NULL,
  `user_work_title` varchar(256) DEFAULT NULL,
  `user_work_place` varchar(256) DEFAULT NULL,
  `user_work_url` varchar(256) DEFAULT NULL,
  `user_current_city` varchar(256) DEFAULT NULL,
  `user_hometown` varchar(256) DEFAULT NULL,
  `user_edu_major` varchar(256) DEFAULT NULL,
  `user_edu_school` varchar(256) DEFAULT NULL,
  `user_edu_class` varchar(256) DEFAULT NULL,
  `user_social_facebook` varchar(256) DEFAULT NULL,
  `user_social_twitter` varchar(256) DEFAULT NULL,
  `user_social_youtube` varchar(256) DEFAULT NULL,
  `user_social_instagram` varchar(256) DEFAULT NULL,
  `user_social_linkedin` varchar(256) DEFAULT NULL,
  `user_social_vkontakte` varchar(256) DEFAULT NULL,
  `user_profile_background` varchar(256) DEFAULT NULL,
  `user_chat_enabled` enum('0','1') NOT NULL DEFAULT '1',
  `user_privacy_newsletter` enum('0','1') NOT NULL DEFAULT '1',
  `user_privacy_poke` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_gifts` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_wall` enum('me','friends','public') NOT NULL DEFAULT 'friends',
  `user_privacy_birthdate` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_relationship` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_basic` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_work` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_location` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_education` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_other` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_friends` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_photos` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_pages` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_groups` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `user_privacy_events` enum('me','friends','public') NOT NULL DEFAULT 'public',
  `email_post_likes` enum('0','1') NOT NULL DEFAULT '1',
  `email_post_comments` enum('0','1') NOT NULL DEFAULT '1',
  `email_post_shares` enum('0','1') NOT NULL DEFAULT '1',
  `email_wall_posts` enum('0','1') NOT NULL DEFAULT '1',
  `email_mentions` enum('0','1') NOT NULL DEFAULT '1',
  `email_profile_visits` enum('0','1') NOT NULL DEFAULT '1',
  `email_friend_requests` enum('0','1') NOT NULL DEFAULT '1',
  `facebook_connected` enum('0','1') NOT NULL DEFAULT '0',
  `facebook_id` varchar(128) DEFAULT NULL,
  `google_connected` enum('0','1') NOT NULL DEFAULT '0',
  `google_id` varchar(128) DEFAULT NULL,
  `twitter_connected` enum('0','1') NOT NULL DEFAULT '0',
  `twitter_id` varchar(128) DEFAULT NULL,
  `instagram_connected` enum('0','1') NOT NULL DEFAULT '0',
  `instagram_id` varchar(128) DEFAULT NULL,
  `linkedin_connected` enum('0','1') NOT NULL DEFAULT '0',
  `linkedin_id` varchar(128) DEFAULT NULL,
  `vkontakte_connected` enum('0','1') NOT NULL DEFAULT '0',
  `vkontakte_id` varchar(128) DEFAULT NULL,
  `user_referrer_id` int(10) DEFAULT NULL,
  `user_affiliate_balance` varchar(64) NOT NULL DEFAULT '0',
  `user_wallet_balance` varchar(64) NOT NULL DEFAULT '0',
  `user_points` int(10) NOT NULL DEFAULT '0',
  `chat_sound` enum('0','1') NOT NULL DEFAULT '1',
  `notifications_sound` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`user_name`),
  UNIQUE KEY `user_email` (`user_email`),
  UNIQUE KEY `facebook_id` (`facebook_id`),
  UNIQUE KEY `twitter_id` (`twitter_id`),
  UNIQUE KEY `linkedin_id` (`linkedin_id`),
  UNIQUE KEY `vkontakte_id` (`vkontakte_id`),
  UNIQUE KEY `instagram_id` (`instagram_id`),
  UNIQUE KEY `user_phone` (`user_phone`),
  UNIQUE KEY `google_id` (`google_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_blocks`
--

DROP TABLE IF EXISTS `users_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `blocked_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_blocked_id` (`user_id`,`blocked_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_blocks`
--

LOCK TABLES `users_blocks` WRITE;
/*!40000 ALTER TABLE `users_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_gifts`
--

DROP TABLE IF EXISTS `users_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_gifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `gift_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_gifts`
--

LOCK TABLES `users_gifts` WRITE;
/*!40000 ALTER TABLE `users_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_invitations`
--

DROP TABLE IF EXISTS `users_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_invitations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `email` varchar(64) NOT NULL,
  `invitation_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_email` (`user_id`,`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_invitations`
--

LOCK TABLES `users_invitations` WRITE;
/*!40000 ALTER TABLE `users_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_pokes`
--

DROP TABLE IF EXISTS `users_pokes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_pokes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `poked_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_blocked_id` (`user_id`,`poked_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_pokes`
--

LOCK TABLES `users_pokes` WRITE;
/*!40000 ALTER TABLE `users_pokes` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_pokes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_searches`
--

DROP TABLE IF EXISTS `users_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_searches` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `node_id_node_type` (`node_id`,`node_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_searches`
--

LOCK TABLES `users_searches` WRITE;
/*!40000 ALTER TABLE `users_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_sessions`
--

DROP TABLE IF EXISTS `users_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_sessions` (
  `session_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_token` varchar(64) NOT NULL,
  `session_date` datetime NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `user_browser` varchar(64) NOT NULL,
  `user_os` varchar(64) NOT NULL,
  `user_ip` varchar(64) NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_token` (`session_token`),
  KEY `user_ip` (`user_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_sessions`
--

LOCK TABLES `users_sessions` WRITE;
/*!40000 ALTER TABLE `users_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_requests`
--

DROP TABLE IF EXISTS `verification_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_requests` (
  `request_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` int(10) unsigned NOT NULL,
  `node_type` varchar(32) NOT NULL,
  `photo` varchar(256) DEFAULT NULL,
  `passport` varchar(256) DEFAULT NULL,
  `message` text,
  `time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`request_id`),
  UNIQUE KEY `node_id_node_type` (`node_id`,`node_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_requests`
--

LOCK TABLES `verification_requests` WRITE;
/*!40000 ALTER TABLE `verification_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `verification_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `place` varchar(32) NOT NULL,
  `place_order` int(10) unsigned NOT NULL DEFAULT '1',
  `code` mediumtext NOT NULL,
  PRIMARY KEY (`widget_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:02:43
