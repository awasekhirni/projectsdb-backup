-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: webiddb
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
-- Table structure for table `webid_accesseshistoric`
--

DROP TABLE IF EXISTS `webid_accesseshistoric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_accesseshistoric` (
  `month` char(2) NOT NULL DEFAULT '',
  `year` char(4) NOT NULL DEFAULT '',
  `pageviews` int(11) NOT NULL DEFAULT '0',
  `uniquevisitors` int(11) NOT NULL DEFAULT '0',
  `usersessions` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_accesseshistoric`
--

LOCK TABLES `webid_accesseshistoric` WRITE;
/*!40000 ALTER TABLE `webid_accesseshistoric` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_accesseshistoric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_accounts`
--

DROP TABLE IF EXISTS `webid_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_accounts` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `nick` varchar(20) NOT NULL,
  `name` tinytext NOT NULL,
  `text` text NOT NULL,
  `type` varchar(15) NOT NULL,
  `paid_date` varchar(16) NOT NULL,
  `amount` double(6,2) NOT NULL,
  `day` int(3) NOT NULL,
  `week` int(2) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_accounts`
--

LOCK TABLES `webid_accounts` WRITE;
/*!40000 ALTER TABLE `webid_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_adminusers`
--

DROP TABLE IF EXISTS `webid_adminusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_adminusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(60) NOT NULL,
  `password_type` int(1) NOT NULL DEFAULT '1',
  `hash` varchar(5) NOT NULL DEFAULT '',
  `created` varchar(8) NOT NULL DEFAULT '',
  `lastlogin` varchar(14) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_adminusers`
--

LOCK TABLES `webid_adminusers` WRITE;
/*!40000 ALTER TABLE `webid_adminusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_adminusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_auccounter`
--

DROP TABLE IF EXISTS `webid_auccounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_auccounter` (
  `auction_id` int(11) NOT NULL DEFAULT '0',
  `counter` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`auction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_auccounter`
--

LOCK TABLES `webid_auccounter` WRITE;
/*!40000 ALTER TABLE `webid_auccounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_auccounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_auction_moderation`
--

DROP TABLE IF EXISTS `webid_auction_moderation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_auction_moderation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auction_id` int(11) NOT NULL DEFAULT '0',
  `reason` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_auction_moderation`
--

LOCK TABLES `webid_auction_moderation` WRITE;
/*!40000 ALTER TABLE `webid_auction_moderation` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_auction_moderation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_auction_types`
--

DROP TABLE IF EXISTS `webid_auction_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_auction_types` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) DEFAULT NULL,
  `language_string` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_auction_types`
--

LOCK TABLES `webid_auction_types` WRITE;
/*!40000 ALTER TABLE `webid_auction_types` DISABLE KEYS */;
INSERT INTO `webid_auction_types` VALUES (1,'standard','1021'),(2,'dutch','1020');
/*!40000 ALTER TABLE `webid_auction_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_auctions`
--

DROP TABLE IF EXISTS `webid_auctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_auctions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `title` varchar(70) DEFAULT NULL,
  `subtitle` varchar(70) DEFAULT NULL,
  `starts` varchar(14) DEFAULT NULL,
  `description` text,
  `pict_url` tinytext,
  `category` int(11) DEFAULT NULL,
  `secondcat` int(11) DEFAULT NULL,
  `minimum_bid` double(16,2) DEFAULT '0.00',
  `shipping_cost` double(16,2) DEFAULT '0.00',
  `additional_shipping_cost` double(16,2) DEFAULT '0.00',
  `reserve_price` double(16,2) DEFAULT '0.00',
  `buy_now` double(16,2) DEFAULT '0.00',
  `auction_type` int(1) DEFAULT NULL,
  `duration` double(8,2) DEFAULT NULL,
  `increment` double(8,2) NOT NULL DEFAULT '0.00',
  `shipping` int(1) DEFAULT '1',
  `payment` tinytext,
  `international` tinyint(1) DEFAULT '0',
  `ends` varchar(14) DEFAULT NULL,
  `current_bid` double(16,2) DEFAULT '0.00',
  `current_bid_id` int(11) DEFAULT '0',
  `closed` tinyint(1) DEFAULT '0',
  `photo_uploaded` tinyint(1) DEFAULT '0',
  `initial_quantity` int(11) DEFAULT '1',
  `quantity` int(11) DEFAULT '1',
  `suspended` int(1) DEFAULT '0',
  `relist` int(11) NOT NULL DEFAULT '0',
  `relisted` int(11) NOT NULL DEFAULT '0',
  `num_bids` int(11) NOT NULL DEFAULT '0',
  `sold` enum('y','n','s') NOT NULL DEFAULT 'n',
  `shipping_terms` tinytext,
  `bn_only` tinyint(1) DEFAULT '0',
  `bold` tinyint(1) DEFAULT '0',
  `highlighted` tinyint(1) DEFAULT '0',
  `featured` tinyint(1) DEFAULT '0',
  `current_fee` double(16,2) DEFAULT '0.00',
  `tax` tinyint(1) DEFAULT '0',
  `taxinc` tinyint(1) DEFAULT '0',
  `bn_sale` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_auctions`
--

LOCK TABLES `webid_auctions` WRITE;
/*!40000 ALTER TABLE `webid_auctions` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_auctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_banners`
--

DROP TABLE IF EXISTS `webid_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` enum('gif','jpg','png','swf') DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `clicks` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sponsortext` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `purchased` int(11) NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_banners`
--

LOCK TABLES `webid_banners` WRITE;
/*!40000 ALTER TABLE `webid_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_bannerscategories`
--

DROP TABLE IF EXISTS `webid_bannerscategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_bannerscategories` (
  `banner` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_bannerscategories`
--

LOCK TABLES `webid_bannerscategories` WRITE;
/*!40000 ALTER TABLE `webid_bannerscategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_bannerscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_bannerskeywords`
--

DROP TABLE IF EXISTS `webid_bannerskeywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_bannerskeywords` (
  `banner` int(11) NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_bannerskeywords`
--

LOCK TABLES `webid_bannerskeywords` WRITE;
/*!40000 ALTER TABLE `webid_bannerskeywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_bannerskeywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_bannersstats`
--

DROP TABLE IF EXISTS `webid_bannersstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_bannersstats` (
  `banner` int(11) DEFAULT NULL,
  `purchased` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `clicks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_bannersstats`
--

LOCK TABLES `webid_bannersstats` WRITE;
/*!40000 ALTER TABLE `webid_bannersstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_bannersstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_bannersusers`
--

DROP TABLE IF EXISTS `webid_bannersusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_bannersusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_bannersusers`
--

LOCK TABLES `webid_bannersusers` WRITE;
/*!40000 ALTER TABLE `webid_bannersusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_bannersusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_bids`
--

DROP TABLE IF EXISTS `webid_bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_bids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auction` int(11) DEFAULT NULL,
  `bidder` int(11) DEFAULT NULL,
  `bid` double(16,2) DEFAULT NULL,
  `bidwhen` varchar(14) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_bids`
--

LOCK TABLES `webid_bids` WRITE;
/*!40000 ALTER TABLE `webid_bids` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_categories`
--

DROP TABLE IF EXISTS `webid_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_categories` (
  `cat_id` int(4) NOT NULL AUTO_INCREMENT,
  `parent_id` int(4) DEFAULT NULL,
  `left_id` int(8) NOT NULL,
  `right_id` int(8) NOT NULL,
  `level` int(1) NOT NULL,
  `cat_name` tinytext,
  `sub_counter` int(11) DEFAULT '0',
  `counter` int(11) DEFAULT '0',
  `cat_colour` varchar(15) DEFAULT '',
  `cat_image` varchar(150) DEFAULT '',
  PRIMARY KEY (`cat_id`),
  KEY `left_id` (`left_id`,`right_id`,`level`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_categories`
--

LOCK TABLES `webid_categories` WRITE;
/*!40000 ALTER TABLE `webid_categories` DISABLE KEYS */;
INSERT INTO `webid_categories` VALUES (1,-1,1,394,-1,'All',0,0,'',''),(2,1,340,393,0,'Art & Antiques',0,0,'',''),(3,2,391,392,1,'Textiles & Linens',0,0,'',''),(4,2,389,390,1,'Amateur Art',0,0,'',''),(5,2,387,388,1,'Ancient World',0,0,'',''),(6,2,385,386,1,'Books & Manuscripts',0,0,'',''),(7,2,383,384,1,'Cameras',0,0,'',''),(8,2,363,382,1,'Ceramics & Glass',0,0,'',''),(9,8,364,381,2,'Glass',0,0,'',''),(10,9,379,380,3,'40s, 50s & 60s',0,0,'',''),(11,9,377,378,3,'Art Glass',0,0,'',''),(12,9,375,376,3,'Carnival',0,0,'',''),(13,9,373,374,3,'Chalkware',0,0,'',''),(14,9,371,372,3,'Chintz & Shelley',0,0,'',''),(15,9,369,370,3,'Contemporary Glass',0,0,'',''),(16,9,367,368,3,'Decorative',0,0,'',''),(17,9,365,366,3,'Porcelain',0,0,'',''),(18,2,361,362,1,'Fine Art',0,0,'',''),(19,2,359,360,1,'General',0,0,'',''),(20,2,357,358,1,'Musical Instruments',0,0,'',''),(21,2,355,356,1,'Orientalia',0,0,'',''),(22,2,353,354,1,'Painting',0,0,'',''),(23,2,351,352,1,'Photographic Images',0,0,'',''),(24,2,349,350,1,'Post-1900',0,0,'',''),(25,2,347,348,1,'Pre-1900',0,0,'',''),(26,2,345,346,1,'Prints',0,0,'',''),(27,2,343,344,1,'Scientific Instruments',0,0,'',''),(28,2,341,342,1,'Silver & Silver Plate',0,0,'',''),(29,1,262,339,0,'Books',0,0,'',''),(30,29,337,338,1,'Animals',0,0,'',''),(31,29,335,336,1,'Arts, Architecture & Photography',0,0,'',''),(32,29,333,334,1,'Audiobooks',0,0,'',''),(33,29,331,332,1,'Biographies & Memoirs',0,0,'',''),(34,29,329,330,1,'Business & Investing',0,0,'',''),(35,29,327,328,1,'Catalogs',0,0,'',''),(36,29,325,326,1,'Children',0,0,'',''),(37,29,323,324,1,'Computers & Internet',0,0,'',''),(38,29,321,322,1,'Contemporary',0,0,'',''),(39,29,319,320,1,'Cooking, Food & Wine',0,0,'',''),(40,29,317,318,1,'Entertainment',0,0,'',''),(41,29,315,316,1,'Foreign Language Instruction',0,0,'',''),(42,29,313,314,1,'General',0,0,'',''),(43,29,311,312,1,'Health, Mind & Body',0,0,'',''),(44,29,309,310,1,'Historical',0,0,'',''),(45,29,307,308,1,'History',0,0,'',''),(46,29,305,306,1,'Home & Garden',0,0,'',''),(47,29,303,304,1,'Horror',0,0,'',''),(48,29,301,302,1,'Illustrated',0,0,'',''),(49,29,299,300,1,'Literature & Fiction',0,0,'',''),(50,29,297,298,1,'Men',0,0,'',''),(51,29,295,296,1,'Mystery & Thrillers',0,0,'',''),(52,29,293,294,1,'News',0,0,'',''),(53,29,291,292,1,'Nonfiction',0,0,'',''),(54,29,289,290,1,'Parenting & Families',0,0,'',''),(55,29,287,288,1,'Poetry',0,0,'',''),(56,29,285,286,1,'Rare',0,0,'',''),(57,29,283,284,1,'Reference',0,0,'',''),(58,29,281,282,1,'Regency',0,0,'',''),(59,29,279,280,1,'Religion & Spirituality',0,0,'',''),(60,29,277,278,1,'Science & Nature',0,0,'',''),(61,29,275,276,1,'Science Fiction & Fantasy',0,0,'',''),(62,29,273,274,1,'Sports',0,0,'',''),(63,29,271,272,1,'Sports & Outdoors',0,0,'',''),(64,29,269,270,1,'Teens',0,0,'',''),(65,29,267,268,1,'Textbooks',0,0,'',''),(66,29,265,266,1,'Travel',0,0,'',''),(67,29,263,264,1,'Women',0,0,'',''),(68,1,254,261,0,'Clothing & Accessories',0,0,'',''),(69,68,259,260,1,'Accessories',0,0,'',''),(70,68,257,258,1,'Clothing',0,0,'',''),(71,68,255,256,1,'Watches',0,0,'',''),(72,1,248,253,0,'Coins & Stamps',0,0,'',''),(73,72,251,252,1,'Coins',0,0,'',''),(74,72,249,250,1,'Philately',0,0,'',''),(75,1,172,247,0,'Collectibles',0,0,'',''),(76,75,245,246,1,'Advertising',0,0,'',''),(77,75,243,244,1,'Animals',0,0,'',''),(78,75,241,242,1,'Animation',0,0,'',''),(79,75,239,240,1,'Antique Reproductions',0,0,'',''),(80,75,237,238,1,'Autographs',0,0,'',''),(81,75,235,236,1,'Barber Shop',0,0,'',''),(82,75,233,234,1,'Bears',0,0,'',''),(83,75,231,232,1,'Bells',0,0,'',''),(84,75,229,230,1,'Bottles & Cans',0,0,'',''),(85,75,227,228,1,'Breweriana',0,0,'',''),(86,75,225,226,1,'Cars & Motorcycles',0,0,'',''),(87,75,223,224,1,'Cereal Boxes & Premiums',0,0,'',''),(88,75,221,222,1,'Character',0,0,'',''),(89,75,219,220,1,'Circus & Carnival',0,0,'',''),(90,75,217,218,1,'Collector Plates',0,0,'',''),(91,75,215,216,1,'Dolls',0,0,'',''),(92,75,213,214,1,'General',0,0,'',''),(93,75,211,212,1,'Historical & Cultural',0,0,'',''),(94,75,209,210,1,'Holiday & Seasonal',0,0,'',''),(95,75,207,208,1,'Household Items',0,0,'',''),(96,75,205,206,1,'Kitsch',0,0,'',''),(97,75,203,204,1,'Knives & Swords',0,0,'',''),(98,75,201,202,1,'Lunchboxes',0,0,'',''),(99,75,199,200,1,'Magic & Novelty Items',0,0,'',''),(100,75,197,198,1,'Memorabilia',0,0,'',''),(101,75,195,196,1,'Militaria',0,0,'',''),(102,75,193,194,1,'Music Boxes',0,0,'',''),(103,75,191,192,1,'Oddities',0,0,'',''),(104,75,189,190,1,'Paper',0,0,'',''),(105,75,187,188,1,'Pinbacks',0,0,'',''),(106,75,185,186,1,'Porcelain Figurines',0,0,'',''),(107,75,183,184,1,'Railroadiana',0,0,'',''),(108,75,181,182,1,'Religious',0,0,'',''),(109,75,179,180,1,'Rocks, Minerals & Fossils',0,0,'',''),(110,75,177,178,1,'Scientific Instruments',0,0,'',''),(111,75,175,176,1,'Textiles',0,0,'',''),(112,75,173,174,1,'Tobacciana',0,0,'',''),(113,1,154,171,0,'Comics, Cards & Science Fiction',0,0,'',''),(114,113,169,170,1,'Anime & Manga',0,0,'',''),(115,113,167,168,1,'Comic Books',0,0,'',''),(116,113,165,166,1,'General',0,0,'',''),(117,113,163,164,1,'Godzilla',0,0,'',''),(118,113,161,162,1,'Star Trek',0,0,'',''),(119,113,159,160,1,'The X-Files',0,0,'',''),(120,113,157,158,1,'Toys',0,0,'',''),(121,113,155,156,1,'Trading Cards',0,0,'',''),(122,1,144,153,0,'Computers & Software',0,0,'',''),(123,122,151,152,1,'General',0,0,'',''),(124,122,149,150,1,'Hardware',0,0,'',''),(125,122,147,148,1,'Internet Services',0,0,'',''),(126,122,145,146,1,'Software',0,0,'',''),(127,1,132,143,0,'Electronics & Photography',0,0,'',''),(128,127,141,142,1,'Consumer Electronics',0,0,'',''),(129,127,139,140,1,'General',0,0,'',''),(130,127,137,138,1,'Photo Equipment',0,0,'',''),(131,127,135,136,1,'Recording Equipment',0,0,'',''),(132,127,133,134,1,'Video Equipment',0,0,'',''),(133,1,112,131,0,'Home & Garden',0,0,'',''),(134,133,129,130,1,'Baby Items',0,0,'',''),(135,133,127,128,1,'Crafts',0,0,'',''),(136,133,125,126,1,'Furniture',0,0,'',''),(137,133,123,124,1,'Garden',0,0,'',''),(138,133,121,122,1,'General',0,0,'',''),(139,133,119,120,1,'Household Items',0,0,'',''),(140,133,117,118,1,'Pet Supplies',0,0,'',''),(141,133,115,116,1,'Tools & Hardware',0,0,'',''),(142,133,113,114,1,'Weddings',0,0,'',''),(143,1,98,111,0,'Movies & Video',0,0,'',''),(144,143,109,110,1,'Blueray',0,0,'',''),(145,143,107,108,1,'DVD',0,0,'',''),(146,143,105,106,1,'General',0,0,'',''),(147,143,103,104,1,'HD-DVD',0,0,'',''),(148,143,101,102,1,'Laser Discs',0,0,'',''),(149,143,99,100,1,'VHS',0,0,'',''),(150,1,84,97,0,'Music',0,0,'',''),(151,150,95,96,1,'CDs',0,0,'',''),(152,150,93,94,1,'General',0,0,'',''),(153,150,91,92,1,'Instruments',0,0,'',''),(154,150,89,90,1,'Memorabilia',0,0,'',''),(155,150,87,88,1,'Records',0,0,'',''),(156,150,85,86,1,'Tapes',0,0,'',''),(157,1,74,83,0,'Office & Business',0,0,'',''),(158,157,81,82,1,'Briefcases',0,0,'',''),(159,157,79,80,1,'Fax Machines',0,0,'',''),(160,157,77,78,1,'General Equipment',0,0,'',''),(161,157,75,76,1,'Pagers',0,0,'',''),(162,1,58,73,0,'Other Goods & Services',0,0,'',''),(163,162,71,72,1,'General',0,0,'',''),(164,162,69,70,1,'Metaphysical',0,0,'',''),(165,162,67,68,1,'Property',0,0,'',''),(166,162,65,66,1,'Services',0,0,'',''),(167,162,63,64,1,'Tickets & Events',0,0,'',''),(168,162,61,62,1,'Transportation',0,0,'',''),(169,162,59,60,1,'Travel',0,0,'',''),(170,1,50,57,0,'Sports & Recreation',0,0,'',''),(171,170,55,56,1,'Apparel & Equipment',0,0,'',''),(172,170,53,54,1,'Exercise Equipment',0,0,'',''),(173,170,51,52,1,'General',0,0,'',''),(174,1,2,49,0,'Toys & Games',0,0,'',''),(175,174,47,48,1,'Action Figures',0,0,'',''),(176,174,45,46,1,'Beanie Babies & Beanbag Toys',0,0,'',''),(177,174,43,44,1,'Diecast',0,0,'',''),(178,174,41,42,1,'Fast Food',0,0,'',''),(179,174,39,40,1,'Fisher-Price',0,0,'',''),(180,174,37,38,1,'Furby',0,0,'',''),(181,174,35,36,1,'Games',0,0,'',''),(182,174,33,34,1,'General',0,0,'',''),(183,174,31,32,1,'Giga Pet & Tamagotchi',0,0,'',''),(184,174,29,30,1,'Hobbies',0,0,'',''),(185,174,27,28,1,'Marbles',0,0,'',''),(186,174,25,26,1,'My Little Pony',0,0,'',''),(187,174,23,24,1,'Peanuts Gang',0,0,'',''),(188,174,21,22,1,'Pez',0,0,'',''),(189,174,19,20,1,'Plastic Models',0,0,'',''),(190,174,17,18,1,'Plush Toys',0,0,'',''),(191,174,15,16,1,'Puzzles',0,0,'',''),(192,174,13,14,1,'lot Cars',0,0,'',''),(193,174,11,12,1,'Teletubbies',0,0,'',''),(194,174,9,10,1,'Toy Soldiers',0,0,'',''),(195,174,7,8,1,'Vintage',0,0,'',''),(196,174,5,6,1,'Vintage Tin',0,0,'',''),(197,174,3,4,1,'Vintage Vehicles',0,0,'','');
/*!40000 ALTER TABLE `webid_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_categories_translated`
--

DROP TABLE IF EXISTS `webid_categories_translated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_categories_translated` (
  `cat_id` int(4) NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `category` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_categories_translated`
--

LOCK TABLES `webid_categories_translated` WRITE;
/*!40000 ALTER TABLE `webid_categories_translated` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_categories_translated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_comm_messages`
--

DROP TABLE IF EXISTS `webid_comm_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_comm_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `boardid` int(11) NOT NULL DEFAULT '0',
  `msgdate` varchar(14) NOT NULL DEFAULT '',
  `user` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_comm_messages`
--

LOCK TABLES `webid_comm_messages` WRITE;
/*!40000 ALTER TABLE `webid_comm_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_comm_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_community`
--

DROP TABLE IF EXISTS `webid_community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_community` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `messages` int(11) NOT NULL DEFAULT '0',
  `lastmessage` varchar(14) NOT NULL DEFAULT '0',
  `msgstoshow` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_community`
--

LOCK TABLES `webid_community` WRITE;
/*!40000 ALTER TABLE `webid_community` DISABLE KEYS */;
INSERT INTO `webid_community` VALUES (1,'Selling',0,'',30,1),(2,'Buying',0,'',30,1);
/*!40000 ALTER TABLE `webid_community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_community_translated`
--

DROP TABLE IF EXISTS `webid_community_translated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_community_translated` (
  `id` int(4) NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_community_translated`
--

LOCK TABLES `webid_community_translated` WRITE;
/*!40000 ALTER TABLE `webid_community_translated` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_community_translated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_counters`
--

DROP TABLE IF EXISTS `webid_counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_counters` (
  `users` int(11) DEFAULT '0',
  `inactiveusers` int(11) NOT NULL DEFAULT '0',
  `auctions` int(11) DEFAULT '0',
  `closedauctions` int(11) NOT NULL DEFAULT '0',
  `bids` int(11) NOT NULL DEFAULT '0',
  `suspendedauctions` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_counters`
--

LOCK TABLES `webid_counters` WRITE;
/*!40000 ALTER TABLE `webid_counters` DISABLE KEYS */;
INSERT INTO `webid_counters` VALUES (0,0,0,0,0,0);
/*!40000 ALTER TABLE `webid_counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_countries`
--

DROP TABLE IF EXISTS `webid_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_countries` (
  `country_id` int(4) NOT NULL AUTO_INCREMENT,
  `country` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_countries`
--

LOCK TABLES `webid_countries` WRITE;
/*!40000 ALTER TABLE `webid_countries` DISABLE KEYS */;
INSERT INTO `webid_countries` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),(4,'American Samoa'),(5,'Andorra'),(6,'Angola'),(7,'Anguilla'),(8,'Antarctica'),(9,'Antigua And Barbuda'),(10,'Argentina'),(11,'Armenia'),(12,'Aruba'),(13,'Australia'),(14,'Austria'),(15,'Azerbaijan Republic'),(16,'Bahamas'),(17,'Bahrain'),(18,'Bangladesh'),(19,'Barbados'),(20,'Belarus'),(21,'Belgium'),(22,'Belize'),(23,'Benin'),(24,'Bermuda'),(25,'Bhutan'),(26,'Bolivia'),(27,'Bosnia and Herzegowina'),(28,'Botswana'),(29,'Bouvet Island'),(30,'Brazil'),(31,'British Indian Ocean Territory'),(32,'Brunei Darussalam'),(33,'Bulgaria'),(34,'Burkina Faso'),(35,'Burma'),(36,'Burundi'),(37,'Cambodia'),(38,'Cameroon'),(39,'Canada'),(40,'Cape Verde'),(41,'Cayman Islands'),(42,'Central African Republic'),(43,'Chad'),(44,'Chile'),(45,'China'),(46,'Christmas Island'),(47,'Cocos (Keeling) Islands'),(48,'Colombia'),(49,'Comoros'),(50,'Congo'),(51,'Congo, the Democratic Republic'),(52,'Cook Islands'),(53,'Costa Rica'),(54,'Cote d\'Ivoire'),(55,'Croatia'),(56,'Cyprus'),(57,'Czech Republic'),(58,'Denmark'),(59,'Djibouti'),(60,'Dominica'),(61,'Dominican Republic'),(62,'East Timor'),(63,'Ecuador'),(64,'Egypt'),(65,'El Salvador'),(66,'Equatorial Guinea'),(67,'Eritrea'),(68,'Estonia'),(69,'Ethiopia'),(70,'Falkland Islands'),(71,'Faroe Islands'),(72,'Fiji'),(73,'Finland'),(74,'France'),(75,'French Guiana'),(76,'French Polynesia'),(77,'French Southern Territories'),(78,'Gabon'),(79,'Gambia'),(80,'Georgia'),(81,'Germany'),(82,'Ghana'),(83,'Gibraltar'),(84,'Great Britain'),(85,'Greece'),(86,'Greenland'),(87,'Grenada'),(88,'Guadeloupe'),(89,'Guam'),(90,'Guatemala'),(91,'Guinea'),(92,'Guinea-Bissau'),(93,'Guyana'),(94,'Haiti'),(95,'Heard and Mc Donald Islands'),(96,'Honduras'),(97,'Hong Kong'),(98,'Hungary'),(99,'Iceland'),(100,'India'),(101,'Indonesia'),(102,'Ireland'),(103,'Israel'),(104,'Italy'),(105,'Jamaica'),(106,'Japan'),(107,'Jordan'),(108,'Kazakhstan'),(109,'Kenya'),(110,'Kiribati'),(111,'Korea (South)'),(112,'Kuwait'),(113,'Kyrgyzstan'),(114,'Lao People\'s Democratic Republic'),(115,'Latvia'),(116,'Lebanon'),(117,'Lesotho'),(118,'Liberia'),(119,'Liechtenstein'),(120,'Lithuania'),(121,'Luxembourg'),(122,'Macau'),(123,'Macedonia'),(124,'Madagascar'),(125,'Malawi'),(126,'Malaysia'),(127,'Maldives'),(128,'Mali'),(129,'Malta'),(130,'Marshall Islands'),(131,'Martinique'),(132,'Mauritania'),(133,'Mauritius'),(134,'Mayotte'),(135,'Mexico'),(136,'Micronesia, Federated States of'),(137,'Moldova, Republic of'),(138,'Monaco'),(139,'Mongolia'),(140,'Montserrat'),(141,'Morocco'),(142,'Mozambique'),(143,'Namibia'),(144,'Nauru'),(145,'Nepal'),(146,'Netherlands'),(147,'Netherlands Antilles'),(148,'New Caledonia'),(149,'New Zealand'),(150,'Nicaragua'),(151,'Niger'),(152,'Nigeria'),(153,'Niuev'),(154,'Norfolk Island'),(155,'Northern Mariana Islands'),(156,'Norway'),(157,'Oman'),(158,'Pakistan'),(159,'Palau'),(160,'Panama'),(161,'Papua New Guinea'),(162,'Paraguay'),(163,'Peru'),(164,'Philippines'),(165,'Pitcairn'),(166,'Poland'),(167,'Portugal'),(168,'Puerto Rico'),(169,'Qatar'),(170,'Reunion'),(171,'Romania'),(172,'Russian Federation'),(173,'Rwanda'),(174,'Saint Kitts and Nevis'),(175,'Saint Lucia'),(176,'Saint Vincent and the Grenadin'),(177,'Samoa (Independent)'),(178,'San Marino'),(179,'Sao Tome and Principe'),(180,'Saudi Arabia'),(181,'Senegal'),(182,'Serbia'),(183,'Seychelles'),(184,'Sierra Leone'),(185,'Singapore'),(186,'Slovakia'),(187,'Slovenia'),(188,'Solomon Islands'),(189,'Somalia'),(190,'South Africa'),(191,'South Georgia'),(192,'Spain'),(193,'Sri Lanka'),(194,'St. Helena'),(195,'St. Pierre and Miquelon'),(196,'Suriname'),(197,'Svalbard and Jan Mayen Islands'),(198,'Swaziland'),(199,'Sweden'),(200,'Switzerland'),(201,'Taiwan'),(202,'Tajikistan'),(203,'Tanzania'),(204,'Thailand'),(205,'Togo'),(206,'Tokelau'),(207,'Tonga'),(208,'Trinidad and Tobago'),(209,'Tunisia'),(210,'Turkey'),(211,'Turkmenistan'),(212,'Turks and Caicos Islands'),(213,'Tuvalu'),(214,'Uganda'),(215,'Ukraine'),(216,'United Arab Emiratesv'),(217,'United Kingdom'),(218,'United States'),(219,'Uruguay'),(220,'Uzbekistan'),(221,'Vanuatu'),(222,'Venezuela'),(223,'Viet Nam'),(224,'Virgin Islands (British)'),(225,'Virgin Islands (U.S.)'),(226,'Wallis and Futuna Islands'),(227,'Western Sahara'),(228,'Yemen'),(229,'Zambia'),(230,'Zimbabwe'),(231,'Tunisia'),(232,'Turkey'),(233,'Turkmenistan'),(234,'Turks and Caicos Islands'),(235,'Tuvalu'),(236,'Uganda'),(237,'Ukraine'),(238,'United Arab Emiratesv'),(239,'United Kingdom'),(240,'United States'),(241,'Uruguay'),(242,'Uzbekistan'),(243,'Vanuatu'),(244,'Venezuela'),(245,'Viet Nam'),(246,'Virgin Islands (British)'),(247,'Virgin Islands (U.S.)'),(248,'Wallis and Futuna Islands'),(249,'Western Sahara'),(250,'Yemen'),(251,'Zambia'),(252,'Zimbabwe');
/*!40000 ALTER TABLE `webid_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_countries_translated`
--

DROP TABLE IF EXISTS `webid_countries_translated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_countries_translated` (
  `country_id` int(4) NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_countries_translated`
--

LOCK TABLES `webid_countries_translated` WRITE;
/*!40000 ALTER TABLE `webid_countries_translated` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_countries_translated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_currentaccesses`
--

DROP TABLE IF EXISTS `webid_currentaccesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_currentaccesses` (
  `day` char(2) NOT NULL DEFAULT '0',
  `month` char(2) NOT NULL DEFAULT '0',
  `year` char(4) NOT NULL DEFAULT '0',
  `pageviews` int(11) NOT NULL DEFAULT '0',
  `uniquevisitors` int(11) NOT NULL DEFAULT '0',
  `usersessions` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_currentaccesses`
--

LOCK TABLES `webid_currentaccesses` WRITE;
/*!40000 ALTER TABLE `webid_currentaccesses` DISABLE KEYS */;
INSERT INTO `webid_currentaccesses` VALUES ('17','06','2020',5,1,1);
/*!40000 ALTER TABLE `webid_currentaccesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_currentbrowsers`
--

DROP TABLE IF EXISTS `webid_currentbrowsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_currentbrowsers` (
  `month` char(2) NOT NULL DEFAULT '0',
  `year` varchar(4) NOT NULL DEFAULT '0',
  `browser` varchar(255) NOT NULL DEFAULT '0',
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_currentbrowsers`
--

LOCK TABLES `webid_currentbrowsers` WRITE;
/*!40000 ALTER TABLE `webid_currentbrowsers` DISABLE KEYS */;
INSERT INTO `webid_currentbrowsers` VALUES ('06','2020','Opera 68.0.3618.125',5);
/*!40000 ALTER TABLE `webid_currentbrowsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_currentplatforms`
--

DROP TABLE IF EXISTS `webid_currentplatforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_currentplatforms` (
  `month` char(2) NOT NULL DEFAULT '0',
  `year` varchar(4) NOT NULL DEFAULT '0',
  `platform` varchar(50) NOT NULL DEFAULT '0',
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_currentplatforms`
--

LOCK TABLES `webid_currentplatforms` WRITE;
/*!40000 ALTER TABLE `webid_currentplatforms` DISABLE KEYS */;
INSERT INTO `webid_currentplatforms` VALUES ('06','2020','Windows NT 10.0 (Windows 10)',5);
/*!40000 ALTER TABLE `webid_currentplatforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_durations`
--

DROP TABLE IF EXISTS `webid_durations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_durations` (
  `days` double(8,2) NOT NULL DEFAULT '0.00',
  `description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_durations`
--

LOCK TABLES `webid_durations` WRITE;
/*!40000 ALTER TABLE `webid_durations` DISABLE KEYS */;
INSERT INTO `webid_durations` VALUES (1.00,'1 day'),(2.00,'2 days'),(2.50,'2.5 days'),(3.00,'3 days'),(7.00,'1 week'),(14.00,'2 weeks'),(21.00,'3 weeks'),(30.00,'1 month');
/*!40000 ALTER TABLE `webid_durations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_durations_translated`
--

DROP TABLE IF EXISTS `webid_durations_translated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_durations_translated` (
  `days` double(8,2) NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_durations_translated`
--

LOCK TABLES `webid_durations_translated` WRITE;
/*!40000 ALTER TABLE `webid_durations_translated` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_durations_translated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_faqs`
--

DROP TABLE IF EXISTS `webid_faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_faqs`
--

LOCK TABLES `webid_faqs` WRITE;
/*!40000 ALTER TABLE `webid_faqs` DISABLE KEYS */;
INSERT INTO `webid_faqs` VALUES (2,'Registering','To register as a new user, click on Register at the top of the window. You will be asked for your name, a username and password, and contact information, including your email address.\r\n\r\n<B>You must be at least 18 years of age to register.</B>!',1),(4,'Item Watch','<b>Item watch</b> notifies you when someone bids on the auctions that you have added to your Item Watch. ',3),(5,'What is a Dutch auction?','Dutch auction is a type of auction where the auctioneer begins with a high asking price which is lowered until some participant is willing to accept the auctioneer\'s price. The winning participant pays the last announced price.',1);
/*!40000 ALTER TABLE `webid_faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_faqs_translated`
--

DROP TABLE IF EXISTS `webid_faqs_translated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_faqs_translated` (
  `id` int(11) NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `question` varchar(200) NOT NULL DEFAULT '',
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_faqs_translated`
--

LOCK TABLES `webid_faqs_translated` WRITE;
/*!40000 ALTER TABLE `webid_faqs_translated` DISABLE KEYS */;
INSERT INTO `webid_faqs_translated` VALUES (2,'EN','Registering','To register as a new user, click on Register at the top of the window. You will be asked for your name, a username and password, and contact information, including your email address.\r\n\r\n<B>You must be at least 18 years of age to register.</B>!'),(2,'ES','Registrarse','Para registrar un nuevo usuario, haz click en <B>Reg&iacute;ÃƒÂ‚Ã‚Â­strate</B> en la parte superior de la pantalla. Se te preguntar&aacute;n tus datos personales, un nombre de usuario, una contrase&ntilde;a e informacion de contacto como la direccion e-mail.\r\n\r\n<B>Â¡Tienes que ser mayor de edad para poder registrarte!</B>'),(4,'EN','Item Watch','<b>Item watch</b> notifies you when someone bids on the auctions that you have added to your Item Watch. '),(4,'ES','En la Mira','<i><b>En la Mira</b></i> te env&iacute;a una notificacion por e-mail, cada vez que alguien puja en una de las subastas que has a&ntilde;adido a tu lista <i>En la Mira</i>. '),(6,'ES','Auction Watch','<i><B>Auction Watch</b></i> es tu asistente para saber cuando se abre una subasta cuya descripcion contiene palabras clave de tu interes.\r\n\r\nPara usar esta opcion inserta las palabras clave en las que est&aacute;s interesado en la lista de <i>Auction Watch</i>. Todas las palabras claves deben estar separadas por un espacio. Cuando estas palabras claves aparezcan en alg&uacute;n t&iacute;tulo o descripcion de subasta, recibir&aacute;s un e-mail con la informacion de que una subasta que contiene tus palabras claves ha sido creada. Tambi&aacute;n puedas agregar el nombre del usuario como palabra clave. ');
/*!40000 ALTER TABLE `webid_faqs_translated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_faqscat_translated`
--

DROP TABLE IF EXISTS `webid_faqscat_translated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_faqscat_translated` (
  `id` int(11) NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `category` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_faqscat_translated`
--

LOCK TABLES `webid_faqscat_translated` WRITE;
/*!40000 ALTER TABLE `webid_faqscat_translated` DISABLE KEYS */;
INSERT INTO `webid_faqscat_translated` VALUES (3,'EN','Buying'),(3,'ES','Comprar'),(1,'EN','General'),(1,'ES','General'),(2,'EN','Selling'),(2,'ES','Vender');
/*!40000 ALTER TABLE `webid_faqscat_translated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_faqscategories`
--

DROP TABLE IF EXISTS `webid_faqscategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_faqscategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_faqscategories`
--

LOCK TABLES `webid_faqscategories` WRITE;
/*!40000 ALTER TABLE `webid_faqscategories` DISABLE KEYS */;
INSERT INTO `webid_faqscategories` VALUES (1,'General'),(2,'Selling'),(3,'Buying');
/*!40000 ALTER TABLE `webid_faqscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_feedbacks`
--

DROP TABLE IF EXISTS `webid_feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rated_user_id` int(11) DEFAULT NULL,
  `rater_user_nick` varchar(20) DEFAULT NULL,
  `feedback` mediumtext,
  `rate` int(2) DEFAULT NULL,
  `feedbackdate` int(15) NOT NULL,
  `auction_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_feedbacks`
--

LOCK TABLES `webid_feedbacks` WRITE;
/*!40000 ALTER TABLE `webid_feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_fees`
--

DROP TABLE IF EXISTS `webid_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_fees` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `fee_from` double(16,2) NOT NULL DEFAULT '0.00',
  `fee_to` double(16,2) NOT NULL DEFAULT '0.00',
  `fee_type` enum('flat','perc') NOT NULL DEFAULT 'flat',
  `value` double(8,2) NOT NULL DEFAULT '0.00',
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_fees`
--

LOCK TABLES `webid_fees` WRITE;
/*!40000 ALTER TABLE `webid_fees` DISABLE KEYS */;
INSERT INTO `webid_fees` VALUES (1,0.00,0.00,'flat',0.00,'signup_fee'),(2,0.00,0.00,'flat',0.00,'buyer_fee'),(3,0.00,0.00,'flat',0.00,'setup_fee'),(4,0.00,0.00,'flat',0.00,'featured_fee'),(5,0.00,0.00,'flat',0.00,'bold_fee'),(6,0.00,0.00,'flat',0.00,'highlighted_fee'),(7,0.00,0.00,'flat',0.00,'reserve_fee'),(8,0.00,0.00,'flat',0.00,'picture_fee'),(9,0.00,0.00,'flat',0.00,'subtitle_fee'),(10,0.00,0.00,'flat',0.00,'extracat_fee'),(11,0.00,0.00,'flat',0.00,'relist_fee'),(12,0.00,0.00,'flat',0.00,'buynow_fee'),(13,0.00,0.00,'flat',0.00,'endauc_fee');
/*!40000 ALTER TABLE `webid_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_filterwords`
--

DROP TABLE IF EXISTS `webid_filterwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_filterwords` (
  `word` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_filterwords`
--

LOCK TABLES `webid_filterwords` WRITE;
/*!40000 ALTER TABLE `webid_filterwords` DISABLE KEYS */;
INSERT INTO `webid_filterwords` VALUES ('');
/*!40000 ALTER TABLE `webid_filterwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_groups`
--

DROP TABLE IF EXISTS `webid_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_groups` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL DEFAULT '',
  `can_sell` tinyint(1) NOT NULL DEFAULT '0',
  `can_buy` tinyint(1) NOT NULL DEFAULT '0',
  `count` tinyint(11) NOT NULL DEFAULT '0',
  `auto_join` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_groups`
--

LOCK TABLES `webid_groups` WRITE;
/*!40000 ALTER TABLE `webid_groups` DISABLE KEYS */;
INSERT INTO `webid_groups` VALUES (1,'Sellers',1,0,0,1),(2,'Buyers',0,1,0,1);
/*!40000 ALTER TABLE `webid_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_groups_translated`
--

DROP TABLE IF EXISTS `webid_groups_translated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_groups_translated` (
  `id` int(5) NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `group_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_groups_translated`
--

LOCK TABLES `webid_groups_translated` WRITE;
/*!40000 ALTER TABLE `webid_groups_translated` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_groups_translated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_increments`
--

DROP TABLE IF EXISTS `webid_increments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_increments` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `low` double(16,2) DEFAULT '0.00',
  `high` double(16,2) DEFAULT '0.00',
  `increment` double(16,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_increments`
--

LOCK TABLES `webid_increments` WRITE;
/*!40000 ALTER TABLE `webid_increments` DISABLE KEYS */;
INSERT INTO `webid_increments` VALUES (1,0.00,0.99,0.28),(2,1.00,9.99,0.50),(3,10.00,29.99,1.00),(4,30.00,99.99,2.00),(5,100.00,249.99,5.00),(6,250.00,499.99,10.00),(7,500.00,999.99,25.00);
/*!40000 ALTER TABLE `webid_increments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_logs`
--

DROP TABLE IF EXISTS `webid_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_logs` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `type` varchar(5) NOT NULL,
  `message` text NOT NULL,
  `action_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(32) NOT NULL DEFAULT '0',
  `ip` varchar(45) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_logs`
--

LOCK TABLES `webid_logs` WRITE;
/*!40000 ALTER TABLE `webid_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_membertypes`
--

DROP TABLE IF EXISTS `webid_membertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_membertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedbacks` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_membertypes`
--

LOCK TABLES `webid_membertypes` WRITE;
/*!40000 ALTER TABLE `webid_membertypes` DISABLE KEYS */;
INSERT INTO `webid_membertypes` VALUES (14,49,'starY.gif'),(15,99,'starB.gif'),(16,999,'starT.gif'),(17,4999,'starR.gif'),(19,24999,'starFY.gif'),(20,49999,'starFT.gif'),(21,99999,'starFV.gif'),(22,999999,'starFR.gif'),(23,9999,'starG.gif'),(24,9,'transparent.gif');
/*!40000 ALTER TABLE `webid_membertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_messages`
--

DROP TABLE IF EXISTS `webid_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sentto` int(11) NOT NULL DEFAULT '0',
  `sentfrom` int(11) NOT NULL DEFAULT '0',
  `fromemail` varchar(255) NOT NULL DEFAULT '',
  `sentat` varchar(20) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `isread` tinyint(1) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `replied` tinyint(1) NOT NULL DEFAULT '0',
  `reply_of` int(11) NOT NULL DEFAULT '0',
  `question` int(11) NOT NULL DEFAULT '0',
  `public` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_messages`
--

LOCK TABLES `webid_messages` WRITE;
/*!40000 ALTER TABLE `webid_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_news`
--

DROP TABLE IF EXISTS `webid_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `new_date` int(8) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_news`
--

LOCK TABLES `webid_news` WRITE;
/*!40000 ALTER TABLE `webid_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_news_translated`
--

DROP TABLE IF EXISTS `webid_news_translated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_news_translated` (
  `id` int(11) NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_news_translated`
--

LOCK TABLES `webid_news_translated` WRITE;
/*!40000 ALTER TABLE `webid_news_translated` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_news_translated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_online`
--

DROP TABLE IF EXISTS `webid_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_online` (
  `ID` bigint(21) NOT NULL AUTO_INCREMENT,
  `SESSION` varchar(32) NOT NULL DEFAULT '',
  `time` bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_online`
--

LOCK TABLES `webid_online` WRITE;
/*!40000 ALTER TABLE `webid_online` DISABLE KEYS */;
INSERT INTO `webid_online` VALUES (1,'0f4ef556bec7890a0f2f0a21c54e0173',1592359878);
/*!40000 ALTER TABLE `webid_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_payment_options`
--

DROP TABLE IF EXISTS `webid_payment_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_payment_options` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `displayname` varchar(50) NOT NULL DEFAULT '',
  `is_gateway` tinyint(1) NOT NULL DEFAULT '0',
  `gateway_admin_address` varchar(50) NOT NULL DEFAULT '',
  `gateway_admin_password` varchar(50) NOT NULL DEFAULT '',
  `gateway_required` tinyint(1) NOT NULL DEFAULT '0',
  `gateway_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_payment_options`
--

LOCK TABLES `webid_payment_options` WRITE;
/*!40000 ALTER TABLE `webid_payment_options` DISABLE KEYS */;
INSERT INTO `webid_payment_options` VALUES (1,'banktransfer','Bank Transfer',0,'','',0,0),(2,'cheque','Cheque',0,'','',0,0),(3,'paypal','PayPal',1,'','',0,0),(4,'authnet','Authorize.net',1,'','',0,0),(5,'worldpay','WorldPay',1,'','',0,0),(6,'moneybookers','Moneybookers',1,'','',0,0),(7,'toocheckout','2Checkout',1,'','',0,0);
/*!40000 ALTER TABLE `webid_payment_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_pendingnotif`
--

DROP TABLE IF EXISTS `webid_pendingnotif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_pendingnotif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auction_id` int(11) NOT NULL DEFAULT '0',
  `seller_id` int(11) NOT NULL DEFAULT '0',
  `winners` text NOT NULL,
  `auction` text NOT NULL,
  `seller` text NOT NULL,
  `thisdate` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_pendingnotif`
--

LOCK TABLES `webid_pendingnotif` WRITE;
/*!40000 ALTER TABLE `webid_pendingnotif` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_pendingnotif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_proxybid`
--

DROP TABLE IF EXISTS `webid_proxybid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_proxybid` (
  `itemid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `bid` double(16,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_proxybid`
--

LOCK TABLES `webid_proxybid` WRITE;
/*!40000 ALTER TABLE `webid_proxybid` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_proxybid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_rates`
--

DROP TABLE IF EXISTS `webid_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ime` tinytext NOT NULL,
  `valuta` tinytext NOT NULL,
  `symbol` char(3) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_rates`
--

LOCK TABLES `webid_rates` WRITE;
/*!40000 ALTER TABLE `webid_rates` DISABLE KEYS */;
INSERT INTO `webid_rates` VALUES (1,'Great Britain','Pound Sterling ','GBP'),(2,'Argentina','Argentinian Peso','ARS'),(3,'Australia','Australian Dollar ','AUD'),(4,'Burma','Myanmar (Burma) Kyat','MMK'),(5,'Brazil','Brazilian Real ','BRL'),(6,'Chile','Chilean Peso ','CLP'),(7,'China','Chinese Renminbi ','CNY'),(8,'Colombia','Colombian Peso ','COP'),(9,'Neth. Antilles','Neth. Antilles Guilder','ANG'),(10,'Czech. Republic','Czech. Republic Koruna ','CZK'),(11,'Denmark','Danish Krone ','DKK'),(12,'European Union','EURO','EUR'),(13,'Fiji','Fiji Dollar ','FJD'),(14,'Jamaica','Jamaican Dollar','JMD'),(15,'Trinidad & Tobago','Trinidad & Tobago Dollar','TTD'),(16,'Hong Kong','Hong Kong Dollar','HKD'),(17,'Ghana','Ghanaian Cedi','GHC'),(18,'Iceland','Icelandic Krona ','INR'),(19,'India','Indian Rupee','INR'),(20,'Indonesia','Indonesian Rupiah ','IDR'),(21,'Israel','Israeli New Shekel ','ILS'),(22,'Japan','Japanese Yen','JPY'),(23,'Malaysia','Malaysian Ringgit','MYR'),(24,'Mexico','New Peso','MXN'),(25,'Morocco','Moroccan Dirham ','MAD'),(26,'Honduras','Honduras Lempira','HNL'),(27,'Hungaria','Hungarian Forint','HUF'),(28,'New Zealand','New Zealand Dollar','NZD'),(29,'Norway','Norwege Krone','NOK'),(30,'Pakistan','Pakistan Rupee ','PKR'),(31,'Panama','Panamanian Balboa ','PAB'),(32,'Peru','Peruvian New Sol','PEN'),(33,'Philippine','Philippine Peso ','PHP'),(34,'Poland','Polish Zloty','PLN'),(35,'Russian','Russian Rouble','RUR'),(36,'Singapore','Singapore Dollar ','SGD'),(37,'Slovakia','Koruna','SKK'),(38,'Slovenia','Slovenian Tolar','SIT'),(39,'South Africa','South African Rand','ZAR'),(40,'South Korea','South Korean Won','KRW'),(41,'Sri Lanka','Sri Lanka Rupee ','LKR'),(42,'Sweden','Swedish Krona','SEK'),(43,'Switzerland','Swiss Franc','CHF'),(44,'Taiwan','Taiwanese New Dollar ','TWD'),(45,'Thailand','Thailand Thai Baht ','THB'),(46,'Pacific Financial Community','Pacific Financial Community Franc','CFP'),(47,'Tunisia','Tunisisan Dinar','TND'),(48,'Turkey','Turkish Lira','TRL'),(49,'United States','U.S. Dollar','USD'),(50,'Venezuela','Bolivar ','VEB'),(51,'Bahamas','Bahamian Dollar','BSD'),(52,'Croatia','Croatian Kuna','HRK'),(53,'East Caribe','East Caribbean Dollar','XCD'),(54,'CFA Franc (African Financial Community)','African Financial Community Franc','CFA'),(55,'Canadian','Canadian Dollar','CAD'),(56,'Romanian','Romanian Leu','RON');
/*!40000 ALTER TABLE `webid_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_rememberme`
--

DROP TABLE IF EXISTS `webid_rememberme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_rememberme` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `hashkey` char(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_rememberme`
--

LOCK TABLES `webid_rememberme` WRITE;
/*!40000 ALTER TABLE `webid_rememberme` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_rememberme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_reportedauctions`
--

DROP TABLE IF EXISTS `webid_reportedauctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_reportedauctions` (
  `id` int(11) NOT NULL,
  `auction_id` int(11) NOT NULL DEFAULT '0',
  `reason` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_reportedauctions`
--

LOCK TABLES `webid_reportedauctions` WRITE;
/*!40000 ALTER TABLE `webid_reportedauctions` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_reportedauctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_settings`
--

DROP TABLE IF EXISTS `webid_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_settings` (
  `fieldname` varchar(30) NOT NULL,
  `fieldtype` varchar(10) NOT NULL,
  `value` text NOT NULL,
  `modifieddate` int(11) NOT NULL,
  `modifiedby` int(32) NOT NULL,
  PRIMARY KEY (`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_settings`
--

LOCK TABLES `webid_settings` WRITE;
/*!40000 ALTER TABLE `webid_settings` DISABLE KEYS */;
INSERT INTO `webid_settings` VALUES ('aboutus','bool','y',1592359595,1),('aboutustext','str','',1592359596,1),('activationtype','int','1',1592359596,1),('admin_theme','str','adminClassic',1592359611,1),('adminmail','str','',1592359596,1),('ae_extend','int','300',1592359596,1),('ae_status','bool','n',1592359596,1),('ae_timebefore','int','120',1592359596,1),('alert_emails','str','',1592359596,1),('ao_bi_enabled','bool','y',1592359597,1),('ao_hi_enabled','bool','y',1592359597,1),('ao_hpf_enabled','bool','y',1592359597,1),('archiveafter','int','30',1592359597,1),('auction_moderation','int','0',1592359597,1),('autorelist','bool','y',1592359597,1),('autorelist_max','int','10',1592359597,1),('banemail','str','',1592359598,1),('banner_height','int','60',1592359598,1),('banner_width','int','468',1592359598,1),('banners','int','1',1592359598,1),('bidding_visable_to_guest','bool','1',1592359612,1),('bn_only','bool','n',1592359598,1),('bn_only_disable','bool','n',1592359598,1),('bn_only_percent','str','50',1592359598,1),('boards','str','n',1592359599,1),('boardsmsgs','int','0',1592359599,1),('buy_now','int','2',1592359599,1),('buyerprivacy','bool','y',1592359599,1),('cache_theme','bool','y',1592359599,1),('catsorting','str','alpha',1592359599,1),('catstoshow','int','20',1592359599,1),('contactseller','str','always',1592359600,1),('cookiespolicy','bool','y',1592359600,1),('cookiespolicytext','str','',1592359600,1),('copyright','str','',1592359600,1),('counter_auctions','bool','y',1592359600,1),('counter_online','bool','y',1592359600,1),('counter_users','bool','y',1592359601,1),('cron','int','2',1592359601,1),('currency','str','GBP',1592359601,1),('cust_increment','int','2',1592359601,1),('datesformat','str','EUR',1592359601,1),('defaultcountry','str','United Kingdom',1592359601,1),('defaultlanguage','str','EN',1592359602,1),('descriptiontag','str','',1592359602,1),('displayed_feilds','str','a:7:{s:17:\"birthdate_regshow\";s:1:\"y\";s:15:\"address_regshow\";s:1:\"y\";s:12:\"city_regshow\";s:1:\"y\";s:12:\"prov_regshow\";s:1:\"y\";s:15:\"country_regshow\";s:1:\"y\";s:11:\"zip_regshow\";s:1:\"y\";s:11:\"tel_regshow\";s:1:\"y\";}',1592359602,1),('edit_endtime','int','1',1592359602,1),('edit_starttime','int','1',1592359602,1),('email_admin_on_signup','bool','0',1592359612,1),('endingsoonnumber','int','0',1592359602,1),('errortext','str','<p>An unexpected error occurred. The error has been forwarded to our technical team and will be fixed shortly</p>',1592359602,1),('extra_cat','bool','n',1592359602,1),('featuredperpage','int','5',1592359603,1),('fee_disable_acc','bool','y',1592359603,1),('fee_max_debt','str','25.00',1592359603,1),('fee_signup_bonus','str','0.00',1592359603,1),('fee_type','int','1',1592359603,1),('fees','bool','n',1592359603,1),('gallery_max_width_height','int','1500',1592359613,1),('googleanalytics','str','',1592359603,1),('helpbox','int','1',1592359603,1),('homefeaturednumber','int','12',1592359605,1),('hotitemsnumber','int','8',1592359603,1),('hours_countdown','int','24',1592359604,1),('https','bool','n',1592359604,1),('https_url','str','',1592359604,1),('invoice_thankyou','str','Thank you for shopping with us and we hope to see you return soon!',1592359604,1),('invoice_yellow_line','str','',1592359604,1),('keywordstag','str','',1592359604,1),('lastitemsnumber','int','8',1592359605,1),('loginbox','int','1',1592359605,1),('logo','str','logo.png',1592359605,1),('mail_parameter','str','',1592359605,1),('mail_protocol','int','0',1592359605,1),('maintainance_mode_active','bool','0',1592359606,1),('maintainance_text','string','<p><strong>Under maintenance!!!!!!!</strong></p>',1592359606,1),('mandatory_fields','str','a:7:{s:9:\"birthdate\";s:1:\"n\";s:7:\"address\";s:1:\"y\";s:4:\"city\";s:1:\"y\";s:4:\"prov\";s:1:\"y\";s:7:\"country\";s:1:\"y\";s:3:\"zip\";s:1:\"y\";s:3:\"tel\";s:1:\"n\";}',1592359606,1),('maxpictures','int','5',1592359606,1),('maxuploadsize','int','51200',1592359606,1),('moneydecimals','int','2',1592359606,1),('moneyformat','int','1',1592359607,1),('moneysymbol','int','2',1592359607,1),('new_auction_moderation','int','0',1592359597,1),('newsbox','int','1',1592359607,1),('newsletter','int','1',1592359607,1),('newstoshow','int','5',1592359607,1),('payment_gateway_sandbox','bool','0',1592359613,1),('perpage','int','15',1592359607,1),('picturesgallery','int','1',1592359607,1),('privacypolicy','bool','y',1592359607,1),('privacypolicytext','str','',1592359607,1),('proxy_bidding','bool','y',1592359608,1),('prune_unactivated_users','bool','1',1592359608,1),('prune_unactivated_users_days','int','30',1592359608,1),('recaptcha_private','str','',1592359608,1),('recaptcha_public','str','',1592359608,1),('shipping','bool','y',1592359608,1),('sitename','str','WeBid',1592359608,1),('siteurl','str','http://localhost/WeBid-1.2.1/',1592359608,1),('smtp_authentication','bool','n',1592359609,1),('smtp_host','str','',1592359609,1),('smtp_password','str','',1592359609,1),('smtp_port','int','25',1592359609,1),('smtp_security','str','none',1592359609,1),('smtp_username','str','',1592359609,1),('spam_blocked_email_domains','str','0-mail.com\n027168.com\n0815.ru\n0815.ry\n0815.su\n0845.ru\n0clickemail.com\n0wnd.net\n0wnd.org\n0x207.info\n1-8.biz\n100likers.com\n10mail.com\n10mail.org\n10minut.com.pl\n10minutemail.cf\n10minutemail.co.uk\n10minutemail.co.za\n10minutemail.com\n10minutemail.de\n10minutemail.ga\n10minutemail.gq\n10minutemail.ml\n10minutemail.net\n10minutesmail.com\n10x9.com\n123-m.com\n12houremail.com\n12minutemail.com\n12minutemail.net\n140unichars.com\n147.cl\n14n.co.uk\n1ce.us\n1chuan.com\n1fsdfdsfsdf.tk\n1mail.ml\n1pad.de\n1st-forms.com\n1to1mail.org\n1zhuan.com\n20email.eu\n20email.it\n20mail.in\n20mail.it\n20minutemail.com\n2120001.net\n21cn.com\n24hourmail.com\n24hourmail.net\n2fdgdfgdfgdf.tk\n2prong.com\n30minutemail.com\n33mail.com\n36ru.com\n3d-painting.com\n3l6.com\n3mail.ga\n3trtretgfrfe.tk\n4-n.us\n418.dk\n4gfdsgfdgfd.tk\n4mail.cf\n4mail.ga\n4warding.com\n4warding.net\n4warding.org\n5ghgfhfghfgh.tk\n5gramos.com\n5mail.cf\n5mail.ga\n5oz.ru\n5x25.com\n60minutemail.com\n672643.net\n675hosting.com\n675hosting.net\n675hosting.org\n6hjgjhgkilkj.tk\n6ip.us\n6mail.cf\n6mail.ga\n6mail.ml\n6paq.com\n6url.com\n75hosting.com\n75hosting.net\n75hosting.org\n7days-printing.com\n7mail.ga\n7mail.ml\n7tags.com\n80665.com\n8127ep.com\n8mail.cf\n8mail.ga\n8mail.ml\n99experts.com\n9mail.cf\n9ox.net\na-bc.net\na.asu.mx\na.betr.co\na.mailcker.com\na.vztc.com\na45.in\nabakiss.com\nabcmail.email\nabusemail.de\nabyssmail.com\nac20mail.in\nacademiccommunity.com\nacentri.com\nadd3000.pp.ua\nadobeccepdm.com\nadpugh.org\nadsd.org\nadvantimo.com\nadwaterandstir.com\naegia.net\naegiscorp.net\naeonpsi.com\nafrobacon.com\nag.us.to\nagedmail.com\nagtx.net\nahk.jp\najaxapp.net\nakapost.com\nakerd.com\nal-qaeda.us\naligamel.com\nalisongamel.com\nalivance.com\nalldirectbuy.com\nallen.nom.za\nallthegoodnamesaretaken.org\nalph.wtf\nama-trade.de\nama-trans.de\namail.com\namail4.me\namazon-aws.org\namelabs.com\namilegit.com\namiri.net\namiriindustries.com\nampsylike.com\nan.id.au\nanappfor.com\nanappthat.com\nandthen.us\nanimesos.com\nano-mail.net\nanon-mail.de\nanonbox.net\nanonmails.de\nanonymail.dk\nanonymbox.com\nanonymized.org\nanonymousness.com\nansibleemail.com\nanthony-junkmail.com\nantireg.com\nantireg.ru\nantispam.de\nantispam24.de\nantispammail.de\napfelkorps.de\naphlog.com\nappc.se\nappinventor.nl\nappixie.com\narmyspy.com\naron.us\narroisijewellery.com\nartman-conception.com\narvato-community.de\naschenbrandt.net\nasdasd.nl\nasdasd.ru\nashleyandrew.com\nass.pp.ua\nastroempires.info\nat0mik.org\natvclub.msk.ru\naugmentationtechnology.com\nauti.st\nautorobotica.com\nautotwollow.com\naver.com\naxiz.org\nazcomputerworks.com\nazmeil.tk\nb.kyal.pl\nb1of96u.com\nb2cmail.de\nbadgerland.eu\nbadoop.com\nbarryogorman.com\nbasscode.org\nbauwerke-online.com\nbaxomale.ht.cx\nbazaaboom.com\nbcast.ws\nbccto.me\nbearsarefuzzy.com\nbeddly.com\nbeefmilk.com\nbelljonestax.com\nbenipaula.org\nbestchoiceusedcar.com\nbidourlnks.com\nbig1.us\nbigprofessor.so\nbigstring.com\nbigwhoop.co.za\nbinkmail.com\nbio-muesli.info\nbio-muesli.net\nblackmarket.to\nbladesmail.net\nblip.ch\nblogmyway.org\nbluedumpling.info\nbluewerks.com\nbobmail.info\nbobmurchison.com\nbodhi.lawlita.com\nbofthew.com\nbonobo.email\nbookthemmore.com\nbootybay.de\nborged.com\nborged.net\nborged.org\nboun.cr\nbouncr.com\nboxformail.in\nboximail.com\nboxtemp.com.br\nbr.mintemail.com\nbrandallday.net\nbreakthru.com\nbrefmail.com\nbrennendesreich.de\nbriggsmarcus.com\nbroadbandninja.com\nbsnow.net\nbspamfree.org\nbspooky.com\nbst-72.com\nbtb-notes.com\nbtc.email\nbu.mintemail.com\nbuffemail.com\nbugmenever.com\nbugmenot.com\nbulrushpress.com\nbum.net\nbumpymail.com\nbunchofidiots.com\nbund.us\nbundes-li.ga\nbunsenhoneydew.com\nburnthespam.info\nburstmail.info\nbusinessbackend.com\nbusinesssuccessislifesuccess.com\nbuspad.org\nbuymoreplays.com\nbuyordie.info\nbuyusedlibrarybooks.org\nbyebyemail.com\nbyespm.com\nbyom.de\nc.lain.ch\nc2.hu\nc51vsgq.com\ncachedot.net\ncaliforniafitnessdeals.com\ncam4you.cc\ncard.zp.ua\ncasualdx.com\ncbair.com\ncc.liamria\nce.mintemail.com\ncek.pm\ncellurl.com\ncentermail.com\ncentermail.net\nchacuo.net\nchammy.info\ncheatmail.de\nchielo.com\nchildsavetrust.org\nchilkat.com\nchithinh.com\nchogmail.com\nchoicemail1.com\nchong-mail.com\nchong-mail.net\nchong-mail.org\nchumpstakingdumps.com\ncigar-auctions.com\nckiso.com\ncl-cl.org\ncl0ne.net\nclandest.in\nclipmail.eu\nclixser.com\nclrmail.com\ncmail.com\ncmail.net\ncmail.org\ncnamed.com\ncnmsg.net\ncnsds.de\ncodeandscotch.com\ncodivide.com\ncoieo.com\ncoldemail.info\ncompareshippingrates.org\ncompletegolfswing.com\ncomwest.de\nconsumerriot.com\ncool.fr.nf\ncoolandwacky.us\ncoolimpool.org\ncorreo.blogos.net\ncosmorph.com\ncourriel.fr.nf\ncourrieltemporaire.com\ncrankhole.com\ncrapmail.org\ncrastination.de\ncrazespaces.pw\ncrazymailing.com\ncrossroadsmail.com\ncszbl.com\ncubiclink.com\ncurryworld.de\ncust.in\ncuvox.de\ncx.de-a.org\nd.cane.pw\nd.dialogus.com\nd3p.dk\ndacoolest.com\ndaemsteam.com\ndaintly.com\ndammexe.net\ndandikmail.com\ndarkharvestfilms.com\ndaryxfox.net\ndash-pads.com\ndataarca.com\ndatafilehost\ndatarca.com\ndatazo.ca\ndavidkoh.net\ndavidlcreative.com\ndayrep.com\ndbunker.com\ndcemail.com\ndeadaddress.com\ndeadchildren.org\ndeadfake.cf\ndeadfake.ga\ndeadfake.ml\ndeadfake.tk\ndeadspam.com\ndeagot.com\ndealja.com\ndealrek.com\ndeekayen.us\ndefomail.com\ndegradedfun.net\ndelayload.com\ndelayload.net\ndelikkt.de\nder-kombi.de\nderkombi.de\nderluxuswagen.de\ndespam.it\ndespammed.com\ndevnullmail.com\ndharmatel.net\ndiapaulpainting.com\ndigitalmariachis.com\ndigitalsanctuary.com\ndildosfromspace.com\ndingbone.com\ndiscard.cf\ndiscard.email\ndiscard.ga\ndiscard.gq\ndiscard.ml\ndiscard.tk\ndiscardmail.com\ndiscardmail.de\ndispo.in\ndispomail.eu\ndisposable-email.ml\ndisposable.cf\ndisposable.ga\ndisposable.ml\ndisposableaddress.com\ndisposableemailaddresses.com\ndisposableemailaddresses.emailmiser.com\ndisposableinbox.com\ndispose.it\ndisposeamail.com\ndisposemail.com\ndispostable.com\ndivermail.com\ndivismail.ru\ndlemail.ru\ndm.w3internet.co.uk\ndm.w3internet.co.ukexample.com\ndodgeit.com\ndodgemail.de\ndodgit.com\ndodgit.org\ndodsi.com\ndoiea.com\ndolphinnet.net\ndomforfb1.tk\ndomforfb18.tk\ndomforfb19.tk\ndomforfb2.tk\ndomforfb23.tk\ndomforfb27.tk\ndomforfb29.tk\ndomforfb3.tk\ndomforfb4.tk\ndomforfb5.tk\ndomforfb6.tk\ndomforfb7.tk\ndomforfb8.tk\ndomforfb9.tk\ndomozmail.com\ndonemail.ru\ndontreg.com\ndontsendmespam.de\ndoquier.tk\ndotman.de\ndotmsg.com\ndotslashrage.com\ndouchelounge.com\ndozvon-spb.ru\ndr.vankin.de\ndrdrb.com\ndrdrb.net\ndrivetagdev.com\ndroolingfanboy.de\ndropcake.de\ndroplar.com\ndropmail.me\ndspwebservices.com\nduam.net\ndudmail.com\ndukedish.com\ndump-email.info\ndumpandjunk.com\ndumpmail.de\ndumpyemail.com\ndurandinterstellar.com\nduskmail.com\ndw.now.im\ndx.abuser.eu\ndx.allowed.org\ndx.awiki.org\ndx.ez.lv\ndx.sly.io\ndx.soon.it\ndx.z86.ru\ndyceroprojects.com\ndz17.net\ne-mail.com\ne-mail.org\ne.brasx.org\ne.coza.ro\ne.ezfill.com\ne.hecat.es\ne.hpc.tw\ne.incq.com\ne.lee.mx\ne.ohi.tw\ne.runi.ca\ne.sino.tw\ne.spr.io\ne.ubm.md\ne3z.de\ne4ward.com\neasy-trash-mail.com\neasytrashmail.com\nebeschlussbuch.de\nebs.com.ar\necallheandi.com\nedinburgh-airporthotels.com\nedv.to\nee1.pl\nee2.pl\neelmail.com\neinmalmail.de\neinrot.com\neinrot.de\neintagsmail.de\nelearningjournal.org\nelectro.mn\nelitevipatlantamodels.com\nemail-fake.cf\nemail-fake.ga\nemail-fake.gq\nemail-fake.ml\nemail-fake.tk\nemail-jetable.fr\nemail.cbes.net\nemail.net\nemail60.com\nemailage.cf\nemailage.ga\nemailage.gq\nemailage.ml\nemailage.tk\nemaildienst.de\nemailgo.de\nemailias.com\nemailigo.de\nemailinfive.com\nemailisvalid.com\nemaillime.com\nemailmiser.com\nemailproxsy.com\nemailresort.com\nemails.ga\nemailsensei.com\nemailsingularity.net\nemailspam.cf\nemailspam.ga\nemailspam.gq\nemailspam.ml\nemailspam.tk\nemailtemporanea.com\nemailtemporanea.net\nemailtemporar.ro\nemailtemporario.com.br\nemailthe.net\nemailtmp.com\nemailto.de\nemailwarden.com\nemailx.at.hm\nemailxfer.com\nemailz.cf\nemailz.ga\nemailz.gq\nemailz.ml\nemeil.in\nemeil.ir\nemil.com\nemkei.cf\nemkei.ga\nemkei.gq\nemkei.ml\nemkei.tk\neml.pp.ua\nemz.net\nenterto.com\nephemail.net\nephemeral.email\ner.fir.hk\ner.moot.es\nericjohnson.ml\nero-tube.org\nesc.la\nescapehatchapp.com\nesemay.com\nesgeneri.com\nesprity.com\nest.une.victime.ninja\netranquil.com\netranquil.net\netranquil.org\nevanfox.info\nevopo.com\nexample.com\nexitstageleft.net\nexplodemail.com\nexpress.net.ua\nextremail.ru\neyepaste.com\nezstest.com\nf.fuirio.com\nf.fxnxs.com\nf.hmh.ro\nf4k.es\nfacebook-email.cf\nfacebook-email.ga\nfacebook-email.ml\nfacebookmail.gq\nfacebookmail.ml\nfadingemail.com\nfag.wf\nfailbone.com\nfaithkills.com\nfake-email.pp.ua\nfake-mail.cf\nfake-mail.ga\nfake-mail.ml\nfakedemail.com\nfakeinbox.cf\nfakeinbox.com\nfakeinbox.ga\nfakeinbox.ml\nfakeinbox.tk\nfakeinformation.com\nfakemail.fr\nfakemailgenerator.com\nfakemailz.com\nfammix.com\nfangoh.com\nfansworldwide.de\nfantasymail.de\nfarrse.co.uk\nfastacura.com\nfastchevy.com\nfastchrysler.com\nfasternet.biz\nfastkawasaki.com\nfastmazda.com\nfastmitsubishi.com\nfastnissan.com\nfastsubaru.com\nfastsuzuki.com\nfasttoyota.com\nfastyamaha.com\nfatflap.com\nfdfdsfds.com\nfer-gabon.org\nfettometern.com\nfictionsite.com\nfightallspam.com\nfigjs.com\nfigshot.com\nfiifke.de\nfilbert4u.com\nfilberts4u.com\nfilm-blog.biz\nfilzmail.com\nfivemail.de\nfixmail.tk\nfizmail.com\nfleckens.hu\nflemail.ru\nflowu.com\nflurred.com\nfly-ts.de\nflyinggeek.net\nflyspam.com\nfoobarbot.net\nfootard.com\nforecastertests.com\nforgetmail.com\nfornow.eu\nforspam.net\nfoxja.com\nfoxtrotter.info\nfr.ipsur.org\nfr33mail.info\nfrapmail.com\nfree-email.cf\nfree-email.ga\nfreebabysittercam.com\nfreeblackbootytube.com\nfreecat.net\nfreedompop.us\nfreefattymovies.com\nfreeletter.me\nfreemail.hu\nfreemail.ms\nfreemails.cf\nfreemails.ga\nfreemails.ml\nfreeplumpervideos.com\nfreeschoolgirlvids.com\nfreesistercam.com\nfreeteenbums.com\nfreundin.ru\nfriendlymail.co.uk\nfront14.org\nfuckedupload.com\nfuckingduh.com\nfudgerub.com\nfunnycodesnippets.com\nfurzauflunge.de\nfux0ringduh.com\nfw.moza.pl\nfyii.de\ng.airsi.de\ng.asu.su\ng.garizo.com\ng.hmail.us\ng.rbb.org\ng.tefl.ro\ng.tiv.cc\ng.vda.ro\ng4hdrop.us\ngalaxy.tv\ngamegregious.com\ngarbagecollector.org\ngarbagemail.org\ngardenscape.ca\ngarliclife.com\ngarrifulio.mailexpire.com\ngarrymccooey.com\ngav0.com\ngawab.com\ngehensiemirnichtaufdensack.de\ngeldwaschmaschine.de\ngelitik.in\ngenderfuck.net\ngeschent.biz\nget-mail.cf\nget-mail.ga\nget-mail.ml\nget-mail.tk\nget.pp.ua\nget1mail.com\nget2mail.fr\ngetairmail.cf\ngetairmail.com\ngetairmail.ga\ngetairmail.gq\ngetairmail.ml\ngetairmail.tk\ngetmails.eu\ngetonemail.com\ngetonemail.net\ngg.nh3.ro\nghosttexter.de\ngiaiphapmuasam.com\ngiantmail.de\nginzi.be\nginzi.co.uk\nginzi.es\nginzi.net\nginzy.co.uk\nginzy.eu\ngirlsindetention.com\ngirlsundertheinfluence.com\ngishpuppy.com\nglitch.sx\nglobaltouron.com\nglucosegrin.com\ngmal.com\ngmial.com\ngmx.us\ngnctr-calgary.com\ngo.arduino.hk\ngo.cdpa.cc\ngo.irc.so\ngo.jmail.ro\ngo.jwork.ru\ngoemailgo.com\ngomail.in\ngorillaswithdirtyarmpits.com\ngothere.biz\ngotmail.com\ngotmail.net\ngotmail.org\ngotti.otherinbox.com\ngowikibooks.com\ngowikicampus.com\ngowikicars.com\ngowikifilms.com\ngowikigames.com\ngowikimusic.com\ngowikinetwork.com\ngowikitravel.com\ngowikitv.com\ngrandmamail.com\ngrandmasmail.com\ngreat-host.in\ngreensloth.com\ngreggamel.com\ngreggamel.net\ngregorsky.zone\ngregorygamel.com\ngregorygamel.net\ngrr.la\ngs-arc.org\ngsredcross.org\ngsrv.co.uk\ngudanglowongan.com\nguerillamail.biz\nguerillamail.com\nguerillamail.de\nguerillamail.info\nguerillamail.net\nguerillamail.org\nguerillamailblock.com\nguerrillamail.biz\nguerrillamail.com\nguerrillamail.de\nguerrillamail.info\nguerrillamail.net\nguerrillamail.org\nguerrillamailblock.com\ngustr.com\ngynzi.co.uk\ngynzi.es\ngynzy.at\ngynzy.es\ngynzy.eu\ngynzy.gr\ngynzy.info\ngynzy.lt\ngynzy.mobi\ngynzy.pl\ngynzy.ro\ngynzy.sk\nh.mintemail.com\nh8s.org\nhabitue.net\nhacccc.com\nhackthatbit.ch\nhahawrong.com\nhaltospam.com\nharakirimail.com\nhartbot.de\nhat-geld.de\nhatespam.org\nhawrong.com\nhazelnut4u.com\nhazelnuts4u.com\nhazmatshipping.org\nheathenhammer.com\nheathenhero.com\nhellodream.mobi\nhelloricky.com\nhelpinghandtaxcenter.org\nherp.in\nherpderp.nl\nhiddentragedy.com\nhidemail.de\nhidzz.com\nhighbros.org\nhmamail.com\nhoanggiaanh.com\nhochsitze.com\nhopemail.biz\nhot-mail.cf\nhot-mail.ga\nhot-mail.gq\nhot-mail.ml\nhot-mail.tk\nhotmai.com\nhotmial.com\nhotpop.com\nhq.okzk.com\nhulapla.de\nhumaility.com\nhumn.ws.gy\nhungpackage.com\nhush.ai\nhush.com\nhushmail.com\nhushmail.me\nhuskion.net\nhvastudiesucces.nl\nhwsye.net\nibnuh.bz\nicantbelieveineedtoexplainthisshit.com\nicx.in\nieatspam.eu\nieatspam.info\nieh-mail.de\nignoremail.com\nihateyoualot.info\niheartspam.org\nikbenspamvrij.nl\nillistnoise.com\nilovespam.com\nimails.info\nimgof.com\nimgv.de\nimstations.com\ninbax.tk\ninbound.plus\ninbox.si\ninbox2.info\ninboxalias.com\ninboxclean.com\ninboxclean.org\ninboxdesign.me\ninboxed.im\ninboxed.pw\ninboxproxy.com\ninboxstore.me\ninclusiveprogress.com\nincognitomail.com\nincognitomail.net\nincognitomail.org\nindieclad.com\nindirect.ws\nineec.net\ninfocom.zp.ua\ninoutmail.de\ninoutmail.eu\ninoutmail.info\ninoutmail.net\ninsanumingeniumhomebrew.com\ninsorg-mail.info\ninstant-mail.de\ninstantemailaddress.com\ninternetoftags.com\ninterstats.org\nintersteller.com\niozak.com\nip.nm7.cc\nip4.pp.ua\nip6.li\nip6.pp.ua\nipoo.org\nirish2me.com\niroid.com\nironiebehindert.de\nirssi.tv\nis.af\nisukrainestillacountry.com\nit7.ovh\nitunesgiftcodegenerator.com\niwi.net\nj-p.us\nj.svxr.org\njafps.com\njdmadventures.com\njellyrolls.com\njetable.com\njetable.fr.nf\njetable.net\njetable.org\njetable.pp.ua\njnxjn.com\njobbikszimpatizans.hu\njobposts.net\njobs-to-be-done.net\njoelpet.com\njoetestalot.com\njopho.com\njourrapide.com\njp.ftp.sh\njsrsolutions.com\njungkamushukum.com\njunk.to\njunk1e.com\njunkmail.ga\njunkmail.gq\nk.aelo.es\nk.avls.pt\nk.bgx.ro\nk.cylab.org\nk.kaovo.com\nk.kon42.com\nk.vesa.pw\nkakadua.net\nkalapi.org\nkamsg.com\nkariplan.com\nkartvelo.com\nkasmail.com\nkaspop.com\nkcrw.de\nkeepmymail.com\nkeinhirn.de\nkeipino.de\nkemptvillebaseball.com\nkennedy808.com\nkillmail.com\nkillmail.net\nkimsdisk.com\nkingsq.ga\nkiois.com\nkir.ch.tc\nkismail.ru\nkisstwink.com\nkitnastar.com\nklassmaster.com\nklassmaster.net\nkloap.com\nkludgemush.com\nklzlk.com\nkmhow.com\nkommunity.biz\nkook.ml\nkopagas.com\nkopaka.net\nkosmetik-obatkuat.com\nkostenlosemailadresse.de\nkoszmail.pl\nkrypton.tk\nkuhrap.com\nkulturbetrieb.info\nkurzepost.de\nkwift.net\nkwilco.net\nl-c-a.us\nl.logular.com\nl33r.eu\nlabetteraverouge.at\nlackmail.net\nlags.us\nlakelivingstonrealestate.com\nlandmail.co\nlaoeq.com\nlastmail.co\nlastmail.com\nlavabit.com\nlawlita.com\nlazyinbox.com\nleeching.net\nlellno.gq\nletmeinonthis.com\nletthemeatspam.com\nlez.se\nlhsdv.com\nliamcyrus.com\nlifebyfood.com\nlifetotech.com\nligsb.com\nlilo.me\nlindenbaumjapan.com\nlink2mail.net\nlinuxmail.so\nlitedrop.com\nlkgn.se\nllogin.ru\nloadby.us\nlocomodev.net\nlogin-email.cf\nlogin-email.ga\nlogin-email.ml\nlogin-email.tk\nloh.pp.ua\nloin.in\nlol.meepsheep.eu\nlol.ovpn.to\nlolfreak.net\nlolmail.biz\nlookugly.com\nlopl.co.cc\nlortemail.dk\nlosemymail.com\nlovemeleaveme.com\nlpfmgmtltd.com\nlr7.us\nlr78.com\nlroid.com\nlru.me\nluckymail.org\nlukecarriere.com\nlukemail.info\nlukop.dk\nluv2.us\nlyfestylecreditsolutions.com\nm.ddcrew.com\nm21.cc\nm4ilweb.info\nma1l.bij.pl\nmaboard.com\nmac.hush.com\nmacromaid.com\nmagamail.com\nmagicbox.ro\nmaidlow.info\nmail-filter.com\nmail-owl.com\nmail-temporaire.com\nmail-temporaire.fr\nmail.bccto.me\nmail.by\nmail.mezimages.net\nmail.zp.ua\nmail114.net\nmail1a.de\nmail21.cc\nmail2rss.org\nmail2world.com\nmail333.com\nmail4trash.com\nmail666.ru\nmail707.com\nmail72.com\nmailback.com\nmailbidon.com\nmailbiz.biz\nmailblocks.com\nmailbucket.org\nmailcat.biz\nmailcatch.com\nmailchop.com\nmailde.de\nmailde.info\nmaildrop.cc\nmaildrop.cf\nmaildrop.ga\nmaildrop.gq\nmaildrop.ml\nmaildu.de\nmaildx.com\nmaileater.com\nmailed.in\nmailed.ro\nmaileimer.de\nmailexpire.com\nmailfa.tk\nmailforspam.com\nmailfree.ga\nmailfree.gq\nmailfree.ml\nmailfreeonline.com\nmailfs.com\nmailguard.me\nmailhazard.com\nmailhazard.us\nmailhz.me\nmailimate.com\nmailin8r.com\nmailinatar.com\nmailinater.com\nmailinator.co.uk\nmailinator.com\nmailinator.gq\nmailinator.info\nmailinator.net\nmailinator.org\nmailinator.us\nmailinator2.com\nmailincubator.com\nmailismagic.com\nmailita.tk\nmailjunk.cf\nmailjunk.ga\nmailjunk.gq\nmailjunk.ml\nmailjunk.tk\nmailmate.com\nmailme.gq\nmailme.ir\nmailme.lv\nmailme24.com\nmailmetrash.com\nmailmoat.com\nmailms.com\nmailnator.com\nmailnesia.com\nmailnull.com\nmailonaut.com\nmailorc.com\nmailorg.org\nmailpick.biz\nmailproxsy.com\nmailquack.com\nmailrock.biz\nmailsac.com\nmailscrap.com\nmailseal.de\nmailshell.com\nmailsiphon.com\nmailslapping.com\nmailslite.com\nmailtemp.info\nmailtemporaire.com\nmailtemporaire.fr\nmailtome.de\nmailtothis.com\nmailtrash.net\nmailtv.net\nmailtv.tv\nmailzi.ru\nmailzilla.com\nmailzilla.org\nmailzilla.orgmbx.cc\nmakemetheking.com\nmalahov.de\nmalayalamdtp.com\nmanifestgenerator.com\nmansiondev.com\nmanybrain.com\nmarkmurfin.com\nmbx.cc\nmcache.net\nmciek.com\nmega.zik.dj\nmeinspamschutz.de\nmeltmail.com\nmessagebeamer.de\nmesswiththebestdielikethe.rest\nmezimages.net\nmfsa.ru\nmiaferrari.com\nmidcoastcustoms.com\nmidcoastcustoms.net\nmidcoastsolutions.com\nmidcoastsolutions.net\nmidlertidig.com\nmidlertidig.net\nmidlertidig.org\nmierdamail.com\nmigmail.net\nmigmail.pl\nmigumail.com\nmijnhva.nl\nmildin.org.ua\nministry-of-silly-walks.de\nmintemail.com\nmisterpinball.de\nmjukglass.nu\nmkpfilm.com\nml8.ca\nmoakt.com\nmobi.web.id\nmobileninja.co.uk\nmoburl.com\nmockmyid.com\nmohmal.com\nmomentics.ru\nmoncourrier.fr.nf\nmonemail.fr.nf\nmoneypipe.net\nmonmail.fr.nf\nmonumentmail.com\nmoonwake.com\nmor19.uu.gl\nmoreawesomethanyou.com\nmoreorcs.com\nmotique.de\nmountainregionallibrary.net\nmox.pp.ua\nms9.mailslite.com\nmsa.minsmail.com\nmsb.minsmail.com\nmsgos.com\nmspeciosa.com\nmswork.ru\nmsxd.com\nmt2009.com\nmt2014.com\nmt2015.com\nmtmdev.com\nmuathegame.com\nmuchomail.com\nmucincanon.com\nmutant.me\nmwarner.org\nmx0.wwwnew.eu\nmxfuel.com\nmy.efxs.ca\nmy10minutemail.com\nmybitti.de\nmycard.net.ua\nmycleaninbox.net\nmycorneroftheinter.net\nmydemo.equipment\nmyecho.es\nmyemailboxy.com\nmykickassideas.com\nmymail-in.net\nmymailoasis.com\nmynetstore.de\nmyopang.com\nmypacks.net\nmypartyclip.de\nmyphantomemail.com\nmysamp.de\nmyspaceinc.com\nmyspaceinc.net\nmyspaceinc.org\nmyspacepimpedup.com\nmyspamless.com\nmytemp.email\nmytempemail.com\nmytempmail.com\nmytrashmail.com\nmywarnernet.net\nmyzx.com\nn.rabin.ca\nn1nja.org\nnabuma.com\nnakedtruth.biz\nnanonym.ch\nnationalgardeningclub.com\nnaver.com\nnegated.com\nneomailbox.com\nnepwk.com\nnervmich.net\nnervtmich.net\nnetmails.com\nnetmails.net\nnetricity.nl\nnetris.net\nnetviewer-france.com\nnetzidiot.de\nnevermail.de\nnew.apps.dj\nnextstopvalhalla.com\nnfast.net\nnguyenusedcars.com\nnice-4u.com\nnicknassar.com\nnincsmail.hu\nniwl.net\nnmail.cf\nnnh.com\nnnot.net\nno-spam.ws\nno-ux.com\nnoblepioneer.com\nnobugmail.com\nnobulk.com\nnobuma.com\nnoclickemail.com\nnodezine.com\nnogmailspam.info\nnokiamail.com\nnomail.pw\nnomail.xl.cx\nnomail2me.com\nnomorespamemails.com\nnonspam.eu\nnonspammer.de\nnoref.in\nnorseforce.com\nnospam.wins.com.br\nnospam.ze.tc\nnospam4.us\nnospamfor.us\nnospamthanks.info\nnothingtoseehere.ca\nnotmailinator.com\nnotrnailinator.com\nnotsharingmy.info\nnowhere.org\nnowmymail.com\nntlhelp.net\nnubescontrol.com\nnullbox.info\nnurfuerspam.de\nnus.edu.sg\nnuts2trade.com\nnwldx.com\nny7.me\no.cavi.mx\no.civx.org\no.cnew.ir\no.jpco.org\no.mm5.se\no.opp24.com\no.rma.ec\no.sin.cl\no.yedi.org\no2stk.org\no7i.net\nobfusko.com\nobjectmail.com\nobobbo.com\nobxpestcontrol.com\nodaymail.com\nodnorazovoe.ru\noerpub.org\noffshore-proxies.net\nohaaa.de\nokclprojects.com\nokrent.us\nolypmall.ru\nomail.pro\nomnievents.org\none-time.email\noneoffemail.com\noneoffmail.com\nonewaymail.com\nonlatedotcom.info\nonline.ms\nonlineidea.info\nonqin.com\nontyne.biz\noolus.com\noopi.org\nopayq.com\nordinaryamerican.net\noshietechan.link\notherinbox.com\nourklips.com\nourpreviewdomain.com\noutlawspam.com\novpn.to\nowlpic.com\nownsyou.de\noxopoha.com\np.mm.my\npa9e.com\npagamenti.tk\npancakemail.com\npaplease.com\npastebitch.com\npcusers.otherinbox.com\npenisgoes.in\npepbot.com\npeterdethier.com\npetrzilka.net\npfui.ru\nphotomark.net\nphpbb.uu.gl\npi.vu\npimpedupmyspace.com\npinehill-seattle.org\npingir.com\npisls.com\npjjkp.com\nplexolan.de\nplhk.ru\nplw.me\npo.bot.nu\npoczta.onet.pl\npoh.pp.ua\npojok.ml\npokiemobile.com\npolitikerclub.de\npooae.com\npoofy.org\npookmail.com\npoopiebutt.club\npopesodomy.com\npopgx.com\npostacin.com\npostonline.me\npoutineyourface.com\npowered.name\npowlearn.com\npp.ua\nprimabananen.net\nprivacy.net\nprivatdemail.net\nprivy-mail.com\nprivy-mail.de\nprivymail.de\npro-tag.org\nprocrackers.com\nprojectcl.com\npropscore.com\nproxymail.eu\nproxyparking.com\nprtnx.com\nprtz.eu\npub.ftpinc.ca\npunkass.com\npuk.us.to\npurcell.email\npurelogistics.org\nput2.net\nputthisinyourspamdatabase.com\npwrby.com\npx.dhm.ro\nq.awatum.de\nq.tic.ec\nqasti.com\nqipmail.net\nqisdo.com\nqisoa.com\nqoika.com\nqs.dp76.com\nqs.grish.de\nquadrafit.com\nquickinbox.com\nquickmail.nl\nqvy.me\nqwickmail.com\nr.ctos.ch\nr4nd0m.de\nradiku.ye.vc\nraetp9.com\nraketenmann.de\nrancidhome.net\nrandomail.net\nraqid.com\nrax.la\nraxtest.com\nrcpt.at\nrcs.gaggle.net\nreallymymail.com\nrealtyalerts.ca\nreceiveee.chickenkiller.com\nreceiveee.com\nrecipeforfailure.com\nrecode.me\nreconmail.com\nrecyclemail.dk\nredfeathercrow.com\nregbypass.com\nregbypass.comsafe-mail.net\nrejectmail.com\nreliable-mail.com\nremail.cf\nremail.ga\nremarkable.rocks\nremote.li\nreptilegenetics.com\nrevolvingdoorhoax.org\nrhyta.com\nriddermark.de\nrisingsuntouch.com\nrk9.chickenkiller.com\nrklips.com\nrmqkr.net\nrnailinator.com\nrobertspcrepair.com\nronnierage.net\nrotaniliam.com\nrowe-solutions.com\nroyal.net\nroyaldoodles.org\nrppkn.com\nrr.ige.es\nrtrtr.com\nruffrey.com\nrumgel.com\nrustydoor.com\nrx.dred.ru\nrx.qc.to\ns.sast.ro\ns.scay.net\ns0ny.net\ns33db0x.com\nsabrestlouis.com\nsackboii.com\nsafe-mail.net\nsafersignup.de\nsafetymail.info\nsafetypost.de\nsaharanightstempe.com\nsamsclass.info\nsandelf.de\nsandwhichvideo.com\nsanfinder.com\nsanim.net\nsanstr.com\nsatukosong.com\nsausen.com\nsaynotospams.com\nscatmail.com\nschachrol.com\nschafmail.de\nschmeissweg.tk\nschrott-email.de\nsd3.in\nsecmail.pw\nsecretemail.de\nsecure-mail.biz\nsecure-mail.cc\nsecured-link.net\nsecurehost.com.es\nseekapps.com\nsejaa.lv\nselfdestructingmail.com\nselfdestructingmail.org\nsendfree.org\nsendingspecialflyers.com\nsendspamhere.com\nsenseless-entertainment.com\nserver.ms\nservices391.com\nsexforswingers.com\nsexical.com\nsharedmailbox.org\nsharklasers.com\nshhmail.com\nshhuut.org\nshieldedmail.com\nshieldemail.com\nshiftmail.com\nshipfromto.com\nshiphazmat.org\nshipping-regulations.com\nshippingterms.org\nshitmail.de\nshitmail.me\nshitmail.org\nshitware.nl\nshmeriously.com\nshortmail.net\nshotmail.ru\nshowslow.de\nshrib.com\nshut.name\nshut.ws\nsibmail.com\nsify.com\nsimpleitsecurity.info\nsinfiltro.cl\nsinglespride.com\nsinnlos-mail.de\nsiteposter.net\nsizzlemctwizzle.com\nskeefmail.com\nskkk.edu.my\nsky-inbox.com\nsky-ts.de\nslapsfromlastnight.com\nslaskpost.se\nslave-auctions.net\nslopsbox.com\nslothmail.net\nslushmail.com\nsmapfree24.com\nsmapfree24.de\nsmapfree24.eu\nsmapfree24.info\nsmapfree24.org\nsmashmail.de\nsmellfear.com\nsmellrear.com\nsmtp99.com\nsmwg.info\nsnakemail.com\nsneakemail.com\nsneakmail.de\nsnkmail.com\nsocialfurry.org\nsofimail.com\nsofort-mail.de\nsofortmail.de\nsoftpls.asia\nsogetthis.com\nsohu.com\nsoisz.com\nsolvemail.info\nsolventtrap.wiki\nsoodmail.com\nsoodomail.com\nsoodonims.com\nspam-be-gone.com\nspam.la\nspam.org.es\nspam.su\nspam4.me\nspamail.de\nspamarrest.com\nspamavert.com\nspambob.com\nspambob.net\nspambob.org\nspambog.com\nspambog.de\nspambog.net\nspambog.ru\nspambooger.com\nspambox.info\nspambox.irishspringrealty.com\nspambox.org\nspambox.us\nspamcero.com\nspamcon.org\nspamcorptastic.com\nspamcowboy.com\nspamcowboy.net\nspamcowboy.org\nspamday.com\nspamdecoy.net\nspamex.com\nspamfighter.cf\nspamfighter.ga\nspamfighter.gq\nspamfighter.ml\nspamfighter.tk\nspamfree.eu\nspamfree24.com\nspamfree24.de\nspamfree24.eu\nspamfree24.info\nspamfree24.net\nspamfree24.org\nspamgoes.in\nspamherelots.com\nspamhereplease.com\nspamhole.com\nspamify.com\nspaminator.de\nspamkill.info\nspaml.com\nspaml.de\nspamlot.net\nspammotel.com\nspamobox.com\nspamoff.de\nspamsalad.in\nspamslicer.com\nspamspot.com\nspamstack.net\nspamthis.co.uk\nspamthisplease.com\nspamtrail.com\nspamtroll.net\nspeed.1s.fr\nspeedgaus.net\nspikio.com\nspoofmail.de\nspritzzone.de\nspybox.de\nsquizzy.de\nsr.ro.lt\nsry.li\nss.hi5.si\nss.icx.ro\nss.undo.it\nssoia.com\nstanfordujjain.com\nstarlight-breaker.net\nstartfu.com\nstartkeys.com\nstatdvr.com\nstathost.net\nstatiix.com\nsteambot.net\nstinkefinger.net\nstop-my-spam.cf\nstop-my-spam.com\nstop-my-spam.ga\nstop-my-spam.ml\nstop-my-spam.pp.ua\nstop-my-spam.tk\nstreetwisemail.com\nstuffmail.de\nstumpfwerk.com\nsub.internetoftags.com\nsuburbanthug.com\nsuckmyd.com\nsudolife.me\nsudolife.net\nsudomail.biz\nsudomail.com\nsudomail.net\nsudoverse.com\nsudoverse.net\nsudoweb.net\nsudoworld.com\nsudoworld.net\nsuioe.com\nsuper-auswahl.de\nsupergreatmail.com\nsupermailer.jp\nsuperplatyna.com\nsuperrito.com\nsuperstachel.de\nsuremail.info\nsvk.jp\nsweetxxx.de\nswift10minutemail.com\nsylvannet.com\nt.psh.me\ntafmail.com\ntafoi.gr\ntagmymedia.com\ntagyourself.com\ntalkinator.com\ntanukis.org\ntapchicuoihoi.com\ntb-on-line.net\nte.adiq.eu\ntechemail.com\ntechgroup.me\nteewars.org\ntelecomix.pl\nteleworm.com\nteleworm.us\ntemp-mail.com\ntemp-mail.de\ntemp-mail.org\ntemp-mail.ru\ntemp.bartdevos.be\ntemp.emeraldwebmail.com\ntemp.headstrong.de\ntempail.com\ntempalias.com\ntempe-mail.com\ntempemail.biz\ntempemail.co.za\ntempemail.com\ntempemail.net\ntempinbox.co.uk\ntempinbox.com\ntempmail.co\ntempmail.eu\ntempmail.it\ntempmail2.com\ntempmaildemo.com\ntempmailer.com\ntempmailer.de\ntempomail.fr\ntemporarily.de\ntemporarioemail.com.br\ntemporaryemail.net\ntemporaryemail.us\ntemporaryforwarding.com\ntemporaryinbox.com\ntemporarymailaddress.com\ntempsky.com\ntempthe.net\ntempymail.com\ntestudine.com\nth.edgex.ru\nthanksnospam.info\nthankyou2010.com\nthc.st\ntheaviors.com\nthebearshark.com\nthecloudindex.com\nthediamants.org\nthelimestones.com\nthembones.com.au\nthemostemail.com\nthereddoors.online\nthescrappermovie.com\ntheteastory.info\nthietbivanphong.asia\nthisisnotmyrealemail.com\nthismail.net\nthisurl.website\nthnikka.com\nthraml.com\nthrma.com\nthroam.com\nthrott.com\nthrowawayemailaddress.com\nthrowawaymail.com\nthunkinator.org\nthxmate.com\ntilien.com\ntimgiarevn.com\ntimkassouf.com\ntinyurl24.com\ntittbit.in\ntizi.com\ntlpn.org\ntm.tosunkaya.com\ntmail.com\ntmail.ws\ntmailinator.com\ntmpjr.me\ntoddsbighug.com\ntoiea.com\ntokem.co\ntokenmail.de\ntonymanso.com\ntoomail.biz\ntop101.de\ntop1mail.ru\ntop1post.ru\ntopofertasdehoy.com\ntopranklist.de\ntoprumours.com\ntormail.org\ntoss.pw\ntotalvista.com\ntotesmail.com\ntp-qa-mail.com\ntradermail.info\ntranceversal.com\ntrash-amil.com\ntrash-mail.at\ntrash-mail.cf\ntrash-mail.com\ntrash-mail.de\ntrash-mail.ga\ntrash-mail.gq\ntrash-mail.ml\ntrash-mail.tk\ntrash2009.com\ntrash2010.com\ntrash2011.com\ntrashcanmail.com\ntrashdevil.com\ntrashdevil.de\ntrashemail.de\ntrashinbox.com\ntrashmail.at\ntrashmail.com\ntrashmail.de\ntrashmail.me\ntrashmail.net\ntrashmail.org\ntrashmail.ws\ntrashmailer.com\ntrashymail.com\ntrashymail.net\ntrasz.com\ntrayna.com\ntrbvm.com\ntrbvn.com\ntrbvo.com\ntrialmail.de\ntrickmail.net\ntrillianpro.com\ntrollproject.com\ntropicalbass.info\ntrungtamtoeic.com\ntryalert.com\nttszuo.xyz\ntualias.com\nturoid.com\nturual.com\ntwinmail.de\ntwoweirdtricks.com\ntxtadvertise.com\nty.ceed.se\ntyldd.com\nu.42o.org\nu.duk33.com\nu.hs.vc\nu.jdz.ro\nu.mji.ro\nu.qibl.at\nu.oroki.de\nu.ozyl.de\nu.rvb.ro\nu.thex.ro\nu.tkitc.de\nu.wef.gr\nubismail.net\nufacturing.com\nuggsrock.com\nuguuchantele.com\nuhhu.ru\numail.net\nunimark.org\nunit7lahaina.com\nunmail.ru\nupliftnow.com\nuplipht.com\nuploadnolimit.com\nurfunktion.se\nuroid.com\nus.af\nusername.e4ward.com\nutiket.us\nuwork4.us\nux.dob.jp\nux.uk.to\nuyhip.com\nvaati.org\nvalemail.net\nvalhalladev.com\nvenompen.com\nverdejo.com\nveryday.ch\nveryday.eu\nveryday.info\nveryrealemail.com\nvfemail.net\nvg.dab.ro\nvictoriantwins.com\nvidchart.com\nviditag.com\nviewcastmedia.com\nviewcastmedia.net\nviewcastmedia.org\nvikingsonly.com\nvinernet.com\nvipmail.name\nvipmail.pw\nvipxm.net\nviralplays.com\nvixletdev.com\nvkcode.ru\nvmailing.info\nvmani.com\nvmpanda.com\nvo.yoo.ro\nvoidbay.com\nvomoto.com\nvorga.org\nvotiputox.org\nvoxelcore.com\nvp.ycare.de\nvpn.st\nvsimcard.com\nvubby.com\nvztc.com\nwakingupesther.com\nwalala.org\nwalkmail.net\nwalkmail.ru\nwasteland.rfc822.org\nwatch-harry-potter.com\nwatchever.biz\nwatchfull.net\nwatchironman3onlinefreefullmovie.com\nwbml.net\nwe.geteit.com\nwe.ldop.com\nwe.ldtp.com\nwe.qq.my\nwe.vrmtr.com\nwe.wallm.com\nweb-mail.pp.ua\nwebemail.me\nwebm4il.info\nwebtrip.ch\nwebuser.in\nwee.my\nwefjo.grn.cc\nweg-werf-email.de\nwegwerf-email-addressen.de\nwegwerf-email-adressen.de\nwegwerf-email.de\nwegwerf-email.net\nwegwerf-emails.de\nwegwerfadresse.de\nwegwerfemail.com\nwegwerfemail.de\nwegwerfemail.net\nwegwerfemail.org\nwegwerfemailadresse.com\nwegwerfmail.de\nwegwerfmail.info\nwegwerfmail.net\nwegwerfmail.org\nwegwerpmailadres.nl\nwegwrfmail.de\nwegwrfmail.net\nwegwrfmail.org\nwelikecookies.com\nwetrainbayarea.com\nwetrainbayarea.org\nwg0.com\nwh4f.org\nwhatiaas.com\nwhatifanalytics.com\nwhatpaas.com\nwhatsaas.com\nwhiffles.org\nwhopy.com\nwhtjddn.33mail.com\nwhyspam.me\nwibblesmith.com\nwickmail.net\nwidget.gg\nwilemail.com\nwillhackforfood.biz\nwillselfdestruct.com\nwimsg.com\nwinemaven.info\nwmail.cf\nwolfsmail.tk\nwollan.info\nworldspace.link\nwovz.cu.cc\nwr.moeri.org\nwralawfirm.com\nwriteme.us\nwronghead.com\nws.yodx.ro\nwuzup.net\nwuzupmail.net\nwww.bccto.me\nwww.e4ward.com\nwww.gishpuppy.com\nwww.mailinator.com\nwwwnew.eu\nx.ip6.li\nx1x.spb.ru\nx24.com\nxagloo.co\nxagloo.com\nxcompress.com\nxcpy.com\nxemaps.com\nxents.com\nxing886.uu.gl\nxjoi.com\nxmail.com\nxmaily.com\nxn--9kq967o.com\nxoxox.cc\nxrho.com\nxwaretech.com\nxwaretech.info\nxwaretech.net\nxww.ro\nxyzfree.net\ny.bcb.ro\ny.epb.ro\ny.gzb.ro\ny.tyhe.ro\nyanet.me\nyapped.net\nyaqp.com\nye.nonze.ro\nyep.it\nyert.ye.vc\nyhg.biz\nynmrealty.com\nyogamaven.com\nyomail.info\nyopmail.com\nyopmail.fr\nyopmail.gq\nyopmail.net\nyopmail.pp.ua\nyou-spam.com\nyougotgoated.com\nyoumail.ga\nyoumailr.com\nyouneedmore.info\nyourdomain.com\nyourewronghereswhy.com\nyourlms.biz\nypmail.webarnak.fr.eu.org\nyspend.com\nyugasandrika.com\nyui.it\nyuurok.com\nyxzx.net\nz1p.biz\nza.com\nze.gally.jp\nzebins.com\nzebins.eu\nzehnminuten.de\nzehnminutenmail.de\nzepp.dk\nzetmail.com\nzippymail.info\nzipsendtest.com\nzoaxe.com\nzoemail.com\nzoemail.net\nzoemail.org\nzoetropes.org\nzombie-hive.com\nzomg.info\nzumpul.com\nzxcv.com\nzxcvbnm.com\nzzz.com',1592359613,1),('spam_blocked_email_enabled','bool','1',1592359613,1),('spam_register','int','1',1592359609,1),('spam_reportitem','int','1',1592359610,1),('spam_sendtofriend','int','1',1592359610,1),('subtitle','bool','y',1592359610,1),('superuser','string','renlok',1592359610,1),('tax','bool','n',1592359610,1),('taxuser','bool','n',1592359610,1),('terms','bool','y',1592359610,1),('termstext','str','',1592359611,1),('theme','str','modern',1592359611,1),('thumb_list','int','120',1592359611,1),('thumb_show','int','120',1592359611,1),('timezone','str','Europe/London',1592359611,1),('use_moderation','bool','0',1592359611,1),('user_request_seller_permission','bool','0',1592359612,1),('users_email','bool','y',1592359611,1),('usersauth','bool','y',1592359611,1),('version','str','1.2.1',1592359612,1),('version_check','str','stable',1592359612,1),('wordsfilter','bool','y',1592359612,1);
/*!40000 ALTER TABLE `webid_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_statssettings`
--

DROP TABLE IF EXISTS `webid_statssettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_statssettings` (
  `activate` enum('y','n') NOT NULL DEFAULT 'y',
  `accesses` enum('y','n') NOT NULL DEFAULT 'y',
  `browsers` enum('y','n') NOT NULL DEFAULT 'y',
  `domains` enum('y','n') NOT NULL DEFAULT 'y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_statssettings`
--

LOCK TABLES `webid_statssettings` WRITE;
/*!40000 ALTER TABLE `webid_statssettings` DISABLE KEYS */;
INSERT INTO `webid_statssettings` VALUES ('y','y','y','y');
/*!40000 ALTER TABLE `webid_statssettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_tax`
--

DROP TABLE IF EXISTS `webid_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_tax` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(30) NOT NULL,
  `tax_rate` double(16,2) NOT NULL,
  `countries_seller` text NOT NULL,
  `countries_buyer` text NOT NULL,
  `fee_tax` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_tax`
--

LOCK TABLES `webid_tax` WRITE;
/*!40000 ALTER TABLE `webid_tax` DISABLE KEYS */;
INSERT INTO `webid_tax` VALUES (1,'Site Fees',0.00,'','',1);
/*!40000 ALTER TABLE `webid_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_useraccounts`
--

DROP TABLE IF EXISTS `webid_useraccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_useraccounts` (
  `useracc_id` int(11) NOT NULL AUTO_INCREMENT,
  `auc_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  `setup` double(8,2) NOT NULL DEFAULT '0.00',
  `featured` double(8,2) NOT NULL DEFAULT '0.00',
  `bold` double(8,2) NOT NULL DEFAULT '0.00',
  `highlighted` double(8,2) NOT NULL DEFAULT '0.00',
  `subtitle` double(8,2) NOT NULL DEFAULT '0.00',
  `relist` double(8,2) NOT NULL DEFAULT '0.00',
  `reserve` double(8,2) NOT NULL DEFAULT '0.00',
  `buynow` double(8,2) NOT NULL DEFAULT '0.00',
  `picture` double(8,2) NOT NULL DEFAULT '0.00',
  `extracat` double(8,2) NOT NULL DEFAULT '0.00',
  `signup` double(8,2) NOT NULL DEFAULT '0.00',
  `buyer` double(8,2) NOT NULL DEFAULT '0.00',
  `finalval` double(8,2) NOT NULL DEFAULT '0.00',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `total` double(8,2) NOT NULL,
  `paid` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`useracc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_useraccounts`
--

LOCK TABLES `webid_useraccounts` WRITE;
/*!40000 ALTER TABLE `webid_useraccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_useraccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_usergateways`
--

DROP TABLE IF EXISTS `webid_usergateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_usergateways` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `gateway_id` int(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_usergateways`
--

LOCK TABLES `webid_usergateways` WRITE;
/*!40000 ALTER TABLE `webid_usergateways` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_usergateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_users`
--

DROP TABLE IF EXISTS `webid_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `password_type` int(1) NOT NULL DEFAULT '1',
  `hash` varchar(5) DEFAULT '',
  `name` tinytext,
  `address` tinytext,
  `city` varchar(25) DEFAULT '',
  `prov` varchar(20) DEFAULT '',
  `country` varchar(30) DEFAULT '',
  `zip` varchar(10) DEFAULT '',
  `phone` varchar(40) DEFAULT '',
  `email` varchar(50) DEFAULT '',
  `reg_date` int(11) DEFAULT NULL,
  `rate_sum` int(11) NOT NULL DEFAULT '0',
  `rate_num` int(11) NOT NULL DEFAULT '0',
  `birthdate` int(8) DEFAULT '0',
  `suspended` int(1) DEFAULT '0',
  `nletter` int(1) NOT NULL DEFAULT '0',
  `balance` double(16,2) NOT NULL DEFAULT '0.00',
  `auc_watch` text,
  `item_watch` text,
  `endemailmode` enum('one','cum','none') NOT NULL DEFAULT 'one',
  `startemailmode` enum('yes','no') NOT NULL DEFAULT 'yes',
  `emailtype` enum('html','text') NOT NULL DEFAULT 'html',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_details` text,
  `groups` text,
  `bn_only` enum('y','n') NOT NULL DEFAULT 'y',
  `timezone` varchar(50) NOT NULL DEFAULT 'Europe/London',
  `paypal_email` varchar(50) DEFAULT '',
  `authnet_id` varchar(50) DEFAULT '',
  `authnet_pass` varchar(50) DEFAULT '',
  `worldpay_id` varchar(50) DEFAULT '',
  `moneybookers_email` varchar(50) DEFAULT '',
  `toocheckout_id` varchar(50) DEFAULT '',
  `language` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_users`
--

LOCK TABLES `webid_users` WRITE;
/*!40000 ALTER TABLE `webid_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_usersips`
--

DROP TABLE IF EXISTS `webid_usersips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_usersips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `type` enum('first','after') NOT NULL DEFAULT 'first',
  `action` enum('accept','deny') NOT NULL DEFAULT 'accept',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_usersips`
--

LOCK TABLES `webid_usersips` WRITE;
/*!40000 ALTER TABLE `webid_usersips` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_usersips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webid_winners`
--

DROP TABLE IF EXISTS `webid_winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webid_winners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auction` int(11) NOT NULL DEFAULT '0',
  `seller` int(11) NOT NULL DEFAULT '0',
  `winner` int(11) NOT NULL DEFAULT '0',
  `bid` double(16,2) NOT NULL DEFAULT '0.00',
  `auc_title` varchar(70) DEFAULT NULL,
  `auc_shipping_cost` double(16,2) DEFAULT '0.00',
  `auc_payment` tinytext,
  `closingdate` int(11) NOT NULL DEFAULT '0',
  `feedback_win` tinyint(1) NOT NULL DEFAULT '0',
  `feedback_sel` tinyint(1) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '1',
  `paid` int(1) NOT NULL DEFAULT '0',
  `bf_paid` int(1) NOT NULL DEFAULT '0',
  `ff_paid` int(1) NOT NULL DEFAULT '1',
  `shipped` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webid_winners`
--

LOCK TABLES `webid_winners` WRITE;
/*!40000 ALTER TABLE `webid_winners` DISABLE KEYS */;
/*!40000 ALTER TABLE `webid_winners` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:16:36
