-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: marketone
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
-- Table structure for table `ad_spaces`
--

DROP TABLE IF EXISTS `ad_spaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad_spaces` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `ad_space` text,
  `ad_code_728` text,
  `ad_code_468` text,
  `ad_code_300` text,
  `ad_code_250` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_spaces`
--

LOCK TABLES `ad_spaces` WRITE;
/*!40000 ALTER TABLE `ad_spaces` DISABLE KEYS */;
INSERT INTO `ad_spaces` VALUES (1,'index_1',NULL,NULL,NULL,NULL),(2,'index_2',NULL,NULL,NULL,NULL),(3,'products',NULL,NULL,NULL,NULL),(4,'products_sidebar',NULL,NULL,NULL,NULL),(5,'product',NULL,NULL,NULL,NULL),(6,'product_bottom',NULL,NULL,NULL,NULL),(7,'profile',NULL,NULL,NULL,NULL),(8,'profile_sidebar',NULL,NULL,NULL,NULL),(9,'blog_1',NULL,NULL,NULL,NULL),(10,'blog_2',NULL,NULL,NULL,NULL),(11,'blog_post_details',NULL,NULL,NULL,NULL),(12,'blog_post_details_sidebar',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ad_spaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_transfers`
--

DROP TABLE IF EXISTS `bank_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` bigint(20) DEFAULT NULL,
  `payment_note` varchar(500) DEFAULT NULL,
  `receipt_path` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `ip_address` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_transfers`
--

LOCK TABLES `bank_transfers` WRITE;
/*!40000 ALTER TABLE `bank_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` tinyint(4) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `category_order` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(5000) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_post_id` (`post_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comments`
--

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_posts`
--

DROP TABLE IF EXISTS `blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` tinyint(4) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `content` longtext,
  `keywords` varchar(500) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local',
  `image_default` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lang_id` (`lang_id`),
  KEY `idx_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_posts`
--

LOCK TABLES `blog_posts` WRITE;
/*!40000 ALTER TABLE `blog_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tags`
--

DROP TABLE IF EXISTS `blog_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tag_slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tags`
--

LOCK TABLES `blog_tags` WRITE;
/*!40000 ALTER TABLE `blog_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `title_meta_tag` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `category_order` mediumint(9) DEFAULT '0',
  `homepage_order` mediumint(9) DEFAULT '5',
  `visibility` tinyint(1) DEFAULT '1',
  `show_on_homepage` tinyint(1) DEFAULT '0',
  `storage` varchar(20) DEFAULT 'local',
  `image` varchar(255) DEFAULT NULL,
  `show_image_on_navigation` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_parent_id` (`parent_id`),
  KEY `idx_visibility` (`visibility`),
  KEY `idx_show_on_homepage` (`show_on_homepage`)
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
-- Table structure for table `categories_lang`
--

DROP TABLE IF EXISTS `categories_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `lang_id` tinyint(4) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_category_id` (`category_id`),
  KEY `idx_lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_lang`
--

LOCK TABLES `categories_lang` WRITE;
/*!40000 ALTER TABLE `categories_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(5000) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_parent_id` (`parent_id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(5000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation_messages`
--

DROP TABLE IF EXISTS `conversation_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversation_messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` varchar(10000) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_conversation_id` (`conversation_id`),
  KEY `idx_sender_id` (`sender_id`),
  KEY `idx_receiver_id` (`receiver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation_messages`
--

LOCK TABLES `conversation_messages` WRITE;
/*!40000 ALTER TABLE `conversation_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversation_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_sender_id` (`sender_id`),
  KEY `idx_receiver_id` (`receiver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `symbol` varchar(10) DEFAULT NULL,
  `hex` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD','US Dollar','$','&#36;'),(2,'EUR','Euro','â‚¬','&#8364;'),(3,'CAD','Canada Dollar','$','&#36;'),(4,'AED','UAE Dirham','Ø¯.Ø¥','&#1583;.&#1573;'),(5,'AFN','Afghanistan Afghani','Af','&#65;&#102;'),(6,'ALL','Albania Lek','Lek','&#76;&#101;&#107;'),(7,'AMD','Armenian Dram','AMD','AMD'),(8,'ANG','Netherlands Antilles Guilder','Æ’','&#402;'),(9,'AOA','Kwanza','Kz','&#75;&#122;'),(10,'ARS','Argentina Peso','$','&#36;'),(11,'AUD','Australia Dollar','$','&#36;'),(12,'AWG','Aruba Guilder','Æ’','&#402;'),(13,'AZN','Azerbaijan New Manat','Ð¼Ð°Ð½','&#1084;&#1072;&#1085;'),(14,'BAM','Bosnia and Herzegovina Convertible Marka','KM','&#75;&#77;'),(15,'BBD','Barbados Dollar','$','&#36;'),(16,'BDT','Bangladeshi taka','à§³','&#2547;'),(17,'BGN','Bulgaria Lev','Ð»Ð²','&#1083;&#1074;'),(18,'BHD','Bahraini Dinar','.Ø¯.Ø¨','.&#1583;.&#1576;'),(19,'BIF','Burundi Franc','FBu','&#70;&#66;&#117;'),(20,'BMD','Bermuda Dollar','$','&#36;'),(21,'BND','Brunei Darussalam Dollar','$','&#36;'),(22,'BOB','Bolivia Boliviano','$b','&#36;&#98;'),(23,'BRL','Brazil Real','R$','&#82;&#36;'),(24,'BSD','Bahamas Dollar','$','&#36;'),(25,'BTN','Ngultrum','Nu.','&#78;&#117;&#46;'),(26,'BWP','Botswana Pula','P','&#80;'),(27,'BYR','Belarus Ruble','p.','&#112;&#46;'),(28,'BZD','Belize Dollar','BZ$','&#66;&#90;&#36;'),(29,'CDF','Congolese Franc','FC','&#70;&#67;'),(30,'CHF','Switzerland Franc','CHF','&#67;&#72;&#70;'),(31,'CLF','Unidad de Fomento','CLF','CLF'),(32,'CLP','Chile Peso','$','&#36;'),(33,'CNY','China Yuan Renminbi','Â¥','&#165;'),(34,'COP','Colombia Peso','$','&#36;'),(35,'CRC','Costa Rica Colon','â‚¡','&#8353;'),(36,'CUP','Cuba Peso','CUP','CUP'),(37,'CVE','Cabo Verde Escudo','$','&#36;'),(38,'CZK','Czech Republic Koruna','KÄ','&#75;&#269;'),(39,'DJF','Djibouti Franc','Fdj','&#70;&#100;&#106;'),(40,'DKK','Denmark Krone','kr','&#107;&#114;'),(41,'DOP','Dominican Republic Peso','RD$','&#82;&#68;&#36;'),(42,'DZD','Algerian Dinar','Ø¯Ø¬','&#1583;&#1580;'),(43,'EGP','Egypt Pound','Â£','&#163;'),(44,'ETB','Ethiopian Birr','Br','&#66;&#114;'),(45,'FJD','Fiji Dollar','$','&#36;'),(46,'FKP','Falkland Islands (Malvinas) Pound','Â£','&#163;'),(47,'GBP','United Kingdom Pound','Â£','&#163;'),(48,'GEL','Lari','áƒš','&#4314;'),(49,'GHS','Ghana Cedi','Â¢','&#162;'),(50,'GIP','Gibraltar Pound','Â£','&#163;'),(51,'GMD','Dalasi','D','&#68;'),(52,'GNF','Guinea Franc','FG','&#70;&#71;'),(53,'GTQ','Guatemala Quetzal','Q','&#81;'),(54,'GYD','Guyana Dollar','$','&#36;'),(55,'HKD','Hong Kong Dollar','$','&#36;'),(56,'HNL','Honduras Lempira','L','&#76;'),(57,'HRK','Croatia Kuna','kn','&#107;&#110;'),(58,'HTG','Gourde','G','&#71;'),(59,'HUF','Hungary Forint','Ft','&#70;&#116;'),(60,'IDR','Indonesia Rupiah','Rp','&#82;&#112;'),(61,'ILS','Israel Shekel','â‚ª','&#8362;'),(62,'INR','India Rupee','â‚¹','&#8377;'),(63,'IQD','Iraqi Dinar','Ø¹.Ø¯','&#1593;.&#1583;'),(64,'IRR','Iran Rial','ï·¼','&#65020;'),(65,'ISK','Iceland Krona','kr','&#107;&#114;'),(66,'JEP','Jersey Pound','Â£','&#163;'),(67,'JMD','Jamaica Dollar','J$','&#74;&#36;'),(68,'JOD','Jordanian Dinar','JD','&#74;&#68;'),(69,'JPY','Japan Yen','Â¥','&#165;'),(70,'KES','Kenyan Shilling','KSh','&#75;&#83;&#104;'),(71,'KGS','Kyrgyzstan Som','Ð»Ð²','&#1083;&#1074;'),(72,'KHR','Cambodia Riel','áŸ›','&#6107;'),(73,'KMF','Comoro Franc','CF','&#67;&#70;'),(74,'KPW','Korea (North) Won','â‚©','&#8361;'),(75,'KRW','Korea (South) Won','â‚©','&#8361;'),(76,'KWD','Kuwaiti Dinar','Ø¯.Ùƒ','&#1583;.&#1603;'),(77,'KYD','Cayman Islands Dollar','$','&#36;'),(78,'KZT','Kazakhstan Tenge','Ð»Ð²','&#1083;&#1074;'),(79,'LAK','Laos Kip','â‚­','&#8365;'),(80,'LBP','Lebanon Pound','Â£','&#163;'),(81,'LKR','Sri Lanka Rupee','â‚¨','&#8360;'),(82,'LRD','Liberia Dollar','$','&#36;'),(83,'LSL','Loti','L','&#76;'),(84,'LTL','Lithuania Litas','Lt','&#76;&#116;'),(85,'LVL','Latvia Lat','Ls','&#76;&#115;'),(86,'LYD','Libyan Dinar','Ù„.Ø¯','&#1604;.&#1583;'),(87,'MAD','Moroccan Dirham','Ø¯.Ù….','&#1583;.&#1605;.'),(88,'MDL','Moldovan Leu','L','&#76;'),(89,'MGA','Malagasy Ariary','Ar','&#65;&#114;'),(90,'MKD','Macedonia Denar','Ð´ÐµÐ½','&#1076;&#1077;&#1085;'),(91,'MMK','Kyat','K','&#75;'),(92,'MNT','Mongolia Tughrik','â‚®','&#8366;'),(93,'MOP','Pataca','MOP$','&#77;&#79;&#80;&#36;'),(94,'MRO','Mauritanian Ouguiya','UM','&#85;&#77;'),(95,'MUR','Mauritius Rupee','â‚¨','&#8360;'),(96,'MVR','Rufiyaa','.Þƒ','.&#1923;'),(97,'MWK','Kwacha','MK','&#77;&#75;'),(98,'MXN','Mexico Peso','$','&#36;'),(99,'MYR','Malaysia Ringgit','RM','&#82;&#77;'),(100,'MZN','Mozambique Metical','MT','&#77;&#84;'),(101,'NAD','Namibia Dollar','$','&#36;'),(102,'NGN','Nigeria Naira','â‚¦','&#8358;'),(103,'NIO','Nicaragua Cordoba','C$','&#67;&#36;'),(104,'NOK','Norway Krone','kr','&#107;&#114;'),(105,'NPR','Nepal Rupee','â‚¨','&#8360;'),(106,'NZD','New Zealand Dollar','$','&#36;'),(107,'OMR','Oman Rial','ï·¼','&#65020;'),(108,'PAB','Panama Balboa','B/.','&#66;&#47;&#46;'),(109,'PEN','Peru Nuevo Sol','S/.','&#83;&#47;&#46;'),(110,'PGK','Kina','K','&#75;'),(111,'PHP','Philippines Peso','â‚±','&#8369;'),(112,'PKR','Pakistan Rupee','â‚¨','&#8360;'),(113,'PLN','Poland Zloty','zÅ‚','&#122;&#322;'),(114,'PYG','Paraguay Guarani','Gs','&#71;&#115;'),(115,'QAR','Qatar Riyal','ï·¼','&#65020;'),(116,'RON','Romania New Leu','lei','&#108;&#101;&#105;'),(117,'RSD','Serbia Dinar','Ð”Ð¸Ð½.','&#1044;&#1080;&#1085;&#46;'),(118,'RUB','Russia Ruble','Ñ€ÑƒÐ±','&#1088;&#1091;&#1073;'),(119,'RWF','Rwanda Franc','Ø±.Ø³','&#1585;.&#1587;'),(120,'SAR','Saudi Arabia Riyal','ï·¼','&#65020;'),(121,'SBD','Solomon Islands Dollar','$','&#36;'),(122,'SCR','Seychelles Rupee','â‚¨','&#8360;'),(123,'SDG','Sudanese Pound','Â£','&#163;'),(124,'SEK','Sweden Krona','kr','&#107;&#114;'),(125,'SGD','Singapore Dollar','$','&#36;'),(126,'SHP','Saint Helena Pound','Â£','&#163;'),(127,'SLL','Leone','Le','&#76;&#101;'),(128,'SOS','Somalia Shilling','S','&#83;'),(129,'SRD','Suriname Dollar','$','&#36;'),(130,'STD','SÃ£o TomÃ© and PrÃ­ncipe Dobra','Db','&#68;&#98;'),(131,'SVC','Salvadoran ColÃ³n','$','&#36;'),(132,'SYP','Syrian Pound','Â£','&#163;'),(133,'SZL','Swazi Lilangeni','L','&#76;'),(134,'THB','Thai Baht','à¸¿','&#3647;'),(135,'TJS','Tajikistani Somoni','TJS','&#84;&#74;&#83;'),(136,'TMT','Turkmenistani Manat','m','&#109;'),(137,'TND','Tunisian Dinar','Ø¯.Øª','&#1583;.&#1578;'),(138,'TOP','Tongan Paâ€™anga','T$','&#84;&#36;'),(139,'TRY','Turkish Lira','â‚º','&#8378'),(140,'TTD','Trinidad and Tobago Dollar','$','&#36;'),(141,'TWD','New Taiwan Dollar','NT$','&#78;&#84;&#36;'),(142,'TZS','Tanzanian Shilling','TZS','TZS'),(143,'UAH','Ukrainian Hryvnia','â‚´','&#8372;'),(144,'UGX','Ugandan Shilling','USh','&#85;&#83;&#104;'),(145,'UYU','Uruguayan Peso','$U','&#36;&#85;'),(146,'UZS','Uzbekistani Som','Ð»Ð²','&#1083;&#1074;'),(147,'VEF','Venezuelan Bolivar','Bs','&#66;&#115;'),(148,'VND','Vietnamese Dong','â‚«','&#8363;'),(149,'VUV','Vanuatu Vatu','VT','&#86;&#84;'),(150,'WST','Samoan TÄlÄ','WS$','&#87;&#83;&#36;'),(151,'XAF','Central African CFA Franc','FCFA','&#70;&#67;&#70;&#65;'),(152,'XCD','East Caribbean Dollar','$','&#36;'),(153,'XOF','West African CFA Franc','XOF','XOF'),(154,'XPF','CFP Franc','F','&#70;'),(155,'YER','Yemeni Rial','ï·¼','&#65020;'),(156,'ZAR','South African Rand','R','&#82;'),(157,'ZMK','Zambian Kwacha','ZK','&#90;&#75;'),(158,'ZWL','Zimbabwean Dollar','Z$','&#90;&#36;');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `field_type` varchar(20) DEFAULT NULL,
  `row_width` varchar(20) DEFAULT 'half',
  `is_required` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `field_order` int(11) DEFAULT '1',
  `is_product_filter` tinyint(1) DEFAULT '0',
  `product_filter_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_category`
--

DROP TABLE IF EXISTS `custom_fields_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_category_id` (`category_id`),
  KEY `idx_field_id` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_category`
--

LOCK TABLES `custom_fields_category` WRITE;
/*!40000 ALTER TABLE `custom_fields_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_lang`
--

DROP TABLE IF EXISTS `custom_fields_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_lang` (
  `id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `lang_id` tinyint(4) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_field_id` (`field_id`),
  KEY `idx_lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_lang`
--

LOCK TABLES `custom_fields_lang` WRITE;
/*!40000 ALTER TABLE `custom_fields_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_options`
--

DROP TABLE IF EXISTS `custom_fields_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_options` (
  `id` int(11) NOT NULL,
  `lang_id` tinyint(4) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  `field_option` varchar(500) DEFAULT NULL,
  `common_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lang_id` (`lang_id`),
  KEY `idx_field_id` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_options`
--

LOCK TABLES `custom_fields_options` WRITE;
/*!40000 ALTER TABLE `custom_fields_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_product`
--

DROP TABLE IF EXISTS `custom_fields_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_product` (
  `id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_filter_key` varchar(255) DEFAULT NULL,
  `field_value` varchar(1000) DEFAULT NULL,
  `selected_option_common_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_field_id` (`field_id`),
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_product`
--

LOCK TABLES `custom_fields_product` WRITE;
/*!40000 ALTER TABLE `custom_fields_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_files`
--

DROP TABLE IF EXISTS `digital_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digital_files` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_files`
--

LOCK TABLES `digital_files` WRITE;
/*!40000 ALTER TABLE `digital_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_sales`
--

DROP TABLE IF EXISTS `digital_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digital_sales` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_title` varchar(500) DEFAULT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `license_key` varchar(255) DEFAULT NULL,
  `purchase_code` varchar(100) NOT NULL,
  `currency` varchar(20) NOT NULL DEFAULT 'USD',
  `price` bigint(20) NOT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_sales`
--

LOCK TABLES `digital_sales` WRITE;
/*!40000 ALTER TABLE `digital_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `earnings`
--

DROP TABLE IF EXISTS `earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `earnings` (
  `id` int(11) NOT NULL,
  `order_number` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `commission_rate` tinyint(4) DEFAULT NULL,
  `shipping_cost` bigint(20) DEFAULT NULL,
  `earned_amount` bigint(20) DEFAULT NULL,
  `currency` varchar(20) DEFAULT 'USD',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `earnings`
--

LOCK TABLES `earnings` WRITE;
/*!40000 ALTER TABLE `earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followers` (
  `id` int(11) NOT NULL,
  `following_id` int(11) DEFAULT NULL,
  `follower_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_following_id` (`following_id`),
  KEY `idx_follower_id` (`follower_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followers`
--

LOCK TABLES `followers` WRITE;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fonts`
--

DROP TABLE IF EXISTS `fonts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fonts` (
  `id` int(11) NOT NULL,
  `font_name` varchar(255) DEFAULT NULL,
  `font_url` varchar(2000) DEFAULT NULL,
  `font_family` varchar(500) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fonts`
--

LOCK TABLES `fonts` WRITE;
/*!40000 ALTER TABLE `fonts` DISABLE KEYS */;
INSERT INTO `fonts` VALUES (1,'Arial',NULL,'font-family: Arial, Helvetica, sans-serif',1),(2,'Arvo','<link href=\"https://fonts.googleapis.com/css?family=Arvo:400,700&display=swap\" rel=\"stylesheet\">\r\n','font-family: \"Arvo\", Helvetica, sans-serif',0),(3,'Averia Libre','<link href=\"https://fonts.googleapis.com/css?family=Averia+Libre:300,400,700&display=swap\" rel=\"stylesheet\">\r\n','font-family: \"Averia Libre\", Helvetica, sans-serif',0),(4,'Bitter','<link href=\"https://fonts.googleapis.com/css?family=Bitter:400,400i,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">\r\n','font-family: \"Bitter\", Helvetica, sans-serif',0),(5,'Cabin','<link href=\"https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\">\r\n','font-family: \"Cabin\", Helvetica, sans-serif',0),(6,'Cherry Swash','<link href=\"https://fonts.googleapis.com/css?family=Cherry+Swash:400,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">\r\n','font-family: \"Cherry Swash\", Helvetica, sans-serif',0),(7,'Encode Sans','<link href=\"https://fonts.googleapis.com/css?family=Encode+Sans:300,400,500,600,700&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\">\r\n','font-family: \"Encode Sans\", Helvetica, sans-serif',0),(8,'Helvetica',NULL,'font-family: Helvetica, sans-serif',1),(9,'Hind','<link href=\"https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">','font-family: \"Hind\", Helvetica, sans-serif',0),(10,'Josefin Sans','<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300,400,600,700&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\">\r\n','font-family: \"Josefin Sans\", Helvetica, sans-serif',0),(11,'Kalam','<link href=\"https://fonts.googleapis.com/css?family=Kalam:300,400,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">\r\n','font-family: \"Kalam\", Helvetica, sans-serif',0),(12,'Khula','<link href=\"https://fonts.googleapis.com/css?family=Khula:300,400,600,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">\r\n','font-family: \"Khula\", Helvetica, sans-serif',0),(13,'Lato','<link href=\"https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">','font-family: \"Lato\", Helvetica, sans-serif',0),(14,'Lora','<link href=\"https://fonts.googleapis.com/css?family=Lora:400,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n','font-family: \"Lora\", Helvetica, sans-serif',0),(15,'Merriweather','<link href=\"https://fonts.googleapis.com/css?family=Merriweather:300,400,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n','font-family: \"Merriweather\", Helvetica, sans-serif',0),(16,'Montserrat','<link href=\"https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n','font-family: \"Montserrat\", Helvetica, sans-serif',0),(17,'Mukta','<link href=\"https://fonts.googleapis.com/css?family=Mukta:300,400,500,600,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">\r\n','font-family: \"Mukta\", Helvetica, sans-serif',0),(18,'Nunito','<link href=\"https://fonts.googleapis.com/css?family=Nunito:300,400,600,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n','font-family: \"Nunito\", Helvetica, sans-serif',0),(19,'Open Sans','<link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">','font-family: \"Open Sans\", Helvetica, sans-serif',0),(20,'Oswald','<link href=\"https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">','font-family: \"Oswald\", Helvetica, sans-serif',0),(21,'Oxygen','<link href=\"https://fonts.googleapis.com/css?family=Oxygen:300,400,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">\r\n','font-family: \"Oxygen\", Helvetica, sans-serif',0),(22,'Poppins','<link href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">\r\n','font-family: \"Poppins\", Helvetica, sans-serif',0),(23,'PT Sans','<link href=\"https://fonts.googleapis.com/css?family=PT+Sans:400,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext\" rel=\"stylesheet\">\r\n','font-family: \"PT Sans\", Helvetica, sans-serif',0),(24,'Raleway','<link href=\"https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">\r\n','font-family: \"Raleway\", Helvetica, sans-serif',0),(25,'Roboto','<link href=\"https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">','font-family: \"Roboto\", Helvetica, sans-serif',0),(26,'Roboto Condensed','<link href=\"https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n','font-family: \"Roboto Condensed\", Helvetica, sans-serif',0),(27,'Roboto Slab','<link href=\"https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,500,600,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n','font-family: \"Roboto Slab\", Helvetica, sans-serif',0),(28,'Rokkitt','<link href=\"https://fonts.googleapis.com/css?family=Rokkitt:300,400,500,600,700&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\">\r\n','font-family: \"Rokkitt\", Helvetica, sans-serif',0),(29,'Source Sans Pro','<link href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">','font-family: \"Source Sans Pro\", Helvetica, sans-serif',0),(30,'Titillium Web','<link href=\"https://fonts.googleapis.com/css?family=Titillium+Web:300,400,600,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">','font-family: \"Titillium Web\", Helvetica, sans-serif',0),(31,'Ubuntu','<link href=\"https://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext\" rel=\"stylesheet\">','font-family: \"Ubuntu\", Helvetica, sans-serif',0),(32,'Verdana',NULL,'font-family: Verdana, Helvetica, sans-serif',1),(33,'Work Sans','<link href=\"https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\"> ','font-family: \"Work Sans\", Helvetica, sans-serif',0),(34,'Libre Baskerville','<link href=\"https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i&display=swap&subset=latin-ext\" rel=\"stylesheet\"> ','font-family: \"Libre Baskerville\", Helvetica, sans-serif',0),(35,'Signika','<link href=\"https://fonts.googleapis.com/css2?family=Signika:wght@300;400;600;700&display=swap\" rel=\"stylesheet\">','font-family: \'Signika\', sans-serif;',0);
/*!40000 ALTER TABLE `fonts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_settings`
--

DROP TABLE IF EXISTS `form_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_settings` (
  `id` int(11) NOT NULL,
  `product_conditions` tinyint(1) DEFAULT '1',
  `product_conditions_required` tinyint(1) DEFAULT '1',
  `quantity` tinyint(1) DEFAULT '1',
  `price` tinyint(1) DEFAULT '1',
  `price_required` tinyint(1) DEFAULT '1',
  `quantity_required` tinyint(1) DEFAULT '1',
  `variations` tinyint(1) DEFAULT '1',
  `shipping` tinyint(1) DEFAULT '1',
  `shipping_required` tinyint(1) DEFAULT '1',
  `product_location` tinyint(1) DEFAULT '1',
  `product_location_required` tinyint(1) DEFAULT '1',
  `physical_demo_url` tinyint(1) DEFAULT '0',
  `physical_video_preview` tinyint(1) DEFAULT '1',
  `physical_audio_preview` tinyint(1) DEFAULT '1',
  `digital_demo_url` tinyint(1) DEFAULT '1',
  `digital_video_preview` tinyint(1) DEFAULT '1',
  `digital_audio_preview` tinyint(1) DEFAULT '1',
  `digital_allowed_file_extensions` varchar(500) DEFAULT 'zip',
  `external_link` tinyint(1) NOT NULL DEFAULT '1',
  `sitemap_frequency` varchar(30) DEFAULT 'monthly',
  `sitemap_last_modification` varchar(30) DEFAULT 'server_response',
  `sitemap_priority` varchar(30) DEFAULT 'automatically',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_settings`
--

LOCK TABLES `form_settings` WRITE;
/*!40000 ALTER TABLE `form_settings` DISABLE KEYS */;
INSERT INTO `form_settings` VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'\"zip\"',1,'daily','server_response','automatically');
/*!40000 ALTER TABLE `form_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `physical_products_system` tinyint(1) DEFAULT '1',
  `digital_products_system` tinyint(1) DEFAULT '1',
  `marketplace_system` tinyint(1) DEFAULT '1',
  `classified_ads_system` tinyint(1) DEFAULT '1',
  `bidding_system` tinyint(1) DEFAULT '1',
  `multi_vendor_system` tinyint(1) DEFAULT '1',
  `vat_status` tinyint(1) DEFAULT '1',
  `site_lang` tinyint(4) DEFAULT '1',
  `timezone` varchar(100) DEFAULT 'America/New_York',
  `application_name` varchar(255) DEFAULT NULL,
  `selected_navigation` tinyint(4) DEFAULT '1',
  `menu_limit` tinyint(4) DEFAULT '9',
  `recaptcha_site_key` varchar(500) DEFAULT NULL,
  `recaptcha_secret_key` varchar(500) DEFAULT NULL,
  `recaptcha_lang` varchar(30) DEFAULT NULL,
  `custom_css_codes` mediumtext,
  `custom_javascript_codes` mediumtext,
  `mail_library` varchar(50) DEFAULT 'swift',
  `mail_protocol` varchar(20) DEFAULT 'smtp',
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(20) DEFAULT NULL,
  `mail_username` varchar(255) DEFAULT NULL,
  `mail_password` varchar(255) DEFAULT NULL,
  `mail_title` varchar(255) DEFAULT NULL,
  `email_verification` tinyint(1) DEFAULT '0',
  `facebook_app_id` varchar(500) DEFAULT NULL,
  `facebook_app_secret` varchar(500) DEFAULT NULL,
  `google_client_id` varchar(500) DEFAULT NULL,
  `google_client_secret` varchar(500) DEFAULT NULL,
  `vk_app_id` varchar(500) DEFAULT NULL,
  `vk_secure_key` varchar(500) DEFAULT NULL,
  `google_analytics` text,
  `promoted_products` tinyint(1) DEFAULT '1',
  `multilingual_system` tinyint(1) DEFAULT '1',
  `product_comments` tinyint(1) DEFAULT '1',
  `comment_approval_system` tinyint(1) DEFAULT '0',
  `reviews` tinyint(1) DEFAULT '1',
  `blog_comments` tinyint(1) DEFAULT '1',
  `slider_status` tinyint(4) DEFAULT '1',
  `slider_type` varchar(30) DEFAULT 'full_width',
  `slider_effect` varchar(30) DEFAULT 'fade',
  `index_categories` tinyint(1) DEFAULT '1',
  `index_promoted_products` tinyint(1) DEFAULT '1',
  `index_promoted_products_count` tinyint(1) DEFAULT '8',
  `index_latest_products` tinyint(1) DEFAULT '1',
  `index_latest_products_count` tinyint(1) DEFAULT '4',
  `index_blog_slider` tinyint(1) DEFAULT '1',
  `product_link_structure` varchar(20) DEFAULT 'slug-id',
  `mds_key` varchar(500) DEFAULT NULL,
  `purchase_code` varchar(500) DEFAULT NULL,
  `site_color` varchar(100) DEFAULT 'default',
  `logo` varchar(255) DEFAULT NULL,
  `logo_email` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `watermark_image_large` varchar(255) DEFAULT NULL,
  `watermark_image_mid` varchar(255) DEFAULT NULL,
  `watermark_image_small` varchar(255) DEFAULT NULL,
  `watermark_vrt_alignment` varchar(20) DEFAULT 'middle',
  `watermark_hor_alignment` varchar(20) DEFAULT 'center',
  `watermark_product_images` tinyint(1) DEFAULT '0',
  `watermark_blog_images` tinyint(1) DEFAULT '0',
  `watermark_thumbnail_images` tinyint(1) DEFAULT '0',
  `facebook_comment` text,
  `facebook_comment_status` tinyint(1) DEFAULT '0',
  `cache_system` tinyint(1) DEFAULT '0',
  `refresh_cache_database_changes` tinyint(1) DEFAULT '0',
  `cache_refresh_time` int(11) DEFAULT '1800',
  `rss_system` tinyint(1) DEFAULT '1',
  `approve_before_publishing` tinyint(1) DEFAULT '1',
  `commission_rate` tinyint(4) DEFAULT '0',
  `send_email_new_product` tinyint(1) DEFAULT '0',
  `send_email_buyer_purchase` tinyint(1) DEFAULT '0',
  `send_email_contact_messages` tinyint(1) DEFAULT '0',
  `send_email_order_shipped` tinyint(1) DEFAULT '0',
  `send_email_shop_opening_request` tinyint(1) DEFAULT '0',
  `send_email_bidding_system` tinyint(1) DEFAULT '0',
  `mail_options_account` varchar(100) DEFAULT NULL,
  `vendor_verification_system` tinyint(1) DEFAULT '1',
  `hide_vendor_contact_information` tinyint(1) DEFAULT '0',
  `guest_checkout` tinyint(1) DEFAULT '0',
  `maintenance_mode_title` varchar(500) DEFAULT NULL,
  `maintenance_mode_description` varchar(2000) DEFAULT NULL,
  `maintenance_mode_status` tinyint(1) DEFAULT '0',
  `max_file_size_image` bigint(20) DEFAULT '10485760',
  `max_file_size_video` bigint(20) DEFAULT '31457280',
  `max_file_size_audio` bigint(20) DEFAULT '10485760',
  `google_adsense_code` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_settings`
--

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` VALUES (1,1,1,1,1,1,1,1,1,'America/New_York','Modesy',1,8,NULL,NULL,'en',NULL,NULL,'swift','smtp',NULL,'587',NULL,NULL,'Modesy',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,'full_width','fade',1,1,8,1,12,1,'slug-id',NULL,NULL,'default',NULL,NULL,NULL,NULL,NULL,NULL,'middle','center',0,0,0,NULL,0,0,0,1800,1,1,10,0,0,0,0,0,0,NULL,1,0,0,'Coming Soon','Our website is under construction. We\'ll be here soon with our new awesome site.',0,5242880,31457280,31457280,NULL);
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_big` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT '0',
  `storage` varchar(20) DEFAULT 'local',
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_is_main` (`is_main`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images_file_manager`
--

DROP TABLE IF EXISTS `images_file_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images_file_manager` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images_file_manager`
--

LOCK TABLES `images_file_manager` WRITE;
/*!40000 ALTER TABLE `images_file_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `images_file_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images_variation`
--

DROP TABLE IF EXISTS `images_variation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images_variation` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variation_option_id` int(11) DEFAULT '0',
  `image_default` varchar(255) DEFAULT NULL,
  `image_big` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT '0',
  `storage` varchar(20) DEFAULT 'local',
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_variation_option_id` (`variation_option_id`),
  KEY `idx_is_main` (`is_main`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images_variation`
--

LOCK TABLES `images_variation` WRITE;
/*!40000 ALTER TABLE `images_variation` DISABLE KEYS */;
/*!40000 ALTER TABLE `images_variation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `order_number` bigint(20) DEFAULT NULL,
  `client_username` varchar(255) DEFAULT NULL,
  `client_first_name` varchar(100) DEFAULT NULL,
  `client_last_name` varchar(100) DEFAULT NULL,
  `client_address` varchar(500) DEFAULT NULL,
  `invoice_items` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`)
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
-- Table structure for table `language_translations`
--

DROP TABLE IF EXISTS `language_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_translations` (
  `id` int(11) NOT NULL,
  `lang_id` smallint(6) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `translation` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lang_id` (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_translations`
--

LOCK TABLES `language_translations` WRITE;
/*!40000 ALTER TABLE `language_translations` DISABLE KEYS */;
INSERT INTO `language_translations` VALUES (1,1,'active','Active'),(2,1,'add_category','Add Category'),(3,1,'add_language','Add Language'),(4,1,'add_page','Add Page'),(5,1,'add_post','Add Post'),(6,1,'add_slider_item','Add Slider Item'),(7,1,'add_country','Add Country'),(8,1,'add_state','Add State'),(9,1,'admin_panel','Admin Panel'),(10,1,'admin_panel_link','Admin Panel Link'),(11,1,'all','All'),(12,1,'approve','Approve'),(13,1,'app_name','Application Name'),(14,1,'app_id','App ID'),(15,1,'app_secret','App Secret'),(16,1,'address','Address'),(17,1,'ask_question','Ask Question'),(18,1,'administrators','Administrators'),(19,1,'add_administrator','Add Administrator'),(20,1,'ad_spaces','Ad Spaces'),(21,1,'appear_on_homepage','Appear on the Homepage'),(22,1,'ban_user','Ban User'),(23,1,'back','Back'),(24,1,'blog','Blog'),(25,1,'blog_comments','Blog Comments'),(26,1,'blog_posts','Blog Posts'),(27,1,'banned','Banned'),(28,1,'banner','Banner'),(29,1,'by','By'),(30,1,'categories','Categories'),(31,1,'categories_all','All Categories'),(32,1,'category','Category'),(33,1,'category_name','Category Name'),(34,1,'category_level','Category Level'),(35,1,'comment','Comment'),(36,1,'comments','Comments'),(37,1,'confirm_category','Are you sure you want to delete this category?'),(38,1,'confirm_comment','Are you sure you want to delete this comment?'),(39,1,'confirm_comments','Are you sure you want to delete selected comments?'),(40,1,'confirm_message','Are you sure you want to delete this conversation?'),(41,1,'confirm_messages','Are you sure you want to delete selected conversations?'),(42,1,'confirm_reviews','Are you sure you want to delete selected reviews?'),(43,1,'confirm_review','Are you sure you want to delete this review?'),(44,1,'confirm_language','Are you sure you want to delete this language?'),(45,1,'confirm_page','Are you sure you want to delete this page?'),(46,1,'confirm_post','Are you sure you want to delete this post?'),(47,1,'confirm_slider_item','Are you sure you want to delete this slider item?'),(48,1,'confirm_product','Are you sure you want to delete this product?'),(49,1,'confirm_products','Are you sure you want to delete selected products?'),(50,1,'confirm_user','Are you sure you want to delete this user?'),(51,1,'confirm_subscriber','Are you sure you want to delete this subscriber?'),(52,1,'content','Content'),(53,1,'custom','Custom'),(54,1,'change_password','Change Password'),(55,1,'contact','Contact'),(56,1,'contact_settings','Contact Settings'),(57,1,'cookies_warning','Cookies Warning'),(58,1,'copyright','Copyright'),(59,1,'contact_text','Contact Text'),(60,1,'client_id','Client ID'),(61,1,'client_secret','Client Secret'),(62,1,'condition','Condition'),(63,1,'close','Close'),(64,1,'contact_message','Contact Message'),(65,1,'contact_messages','Contact Messages'),(66,1,'country','Country'),(67,1,'countries','Countries'),(68,1,'currency','Currency'),(69,1,'choose_plan','Choose Plan'),(70,1,'confirmed','Confirmed'),(71,1,'date','Date'),(72,1,'days_left','days left'),(73,1,'default','Default'),(74,1,'default_language','Default Language'),(75,1,'delete','Delete'),(76,1,'delete_conversation','Delete Conversation'),(77,1,'description','Description'),(78,1,'dont_have_account','Don\'t have an account?'),(79,1,'disable','Disable'),(80,1,'details','Details'),(81,1,'day_count','Number of Days'),(82,1,'daily_plan','Daily Plan'),(83,1,'day','Day'),(84,1,'days','Days'),(85,1,'edit','Edit'),(86,1,'edit_translations','Edit Translations'),(87,1,'email','Email'),(88,1,'email_address','Email Address'),(89,1,'email_settings','Email Settings'),(90,1,'enable','Enable'),(91,1,'enter_email','Enter your email'),(92,1,'end','End'),(93,1,'favicon','Favicon'),(94,1,'file_too_large','File is too large. Max file size:'),(95,1,'filter','Filter'),(96,1,'filter_products','Filter Products'),(97,1,'folder_name','Folder Name'),(98,1,'followers','Followers'),(99,1,'follow','Follow'),(100,1,'following','Following'),(101,1,'footer','Footer'),(102,1,'forgot_password','Forgot Password?'),(103,1,'footer_about_section','Footer About Section'),(104,1,'footer_information','Information'),(105,1,'footer_quick_links','Quick Links'),(106,1,'follow_us','Follow Us'),(107,1,'free_plan','Free Plan'),(108,1,'general_settings','General Settings'),(109,1,'google_recaptcha','Google reCAPTCHA'),(110,1,'gmail_smtp','Gmail SMTP'),(111,1,'google_analytics','Google Analytics Code'),(112,1,'goto_home','Go to the Homepage'),(113,1,'header','Header'),(114,1,'hide','Hide'),(115,1,'home','Home'),(116,1,'homepage_title','Homepage Title'),(117,1,'homepage_order','Homepage Order'),(118,1,'highest_price','Highest Price'),(119,1,'hidden','Hidden'),(120,1,'hidden_products','Hidden Products'),(121,1,'id','Id'),(122,1,'image','Image'),(123,1,'images','Images'),(124,1,'inactive','Inactive'),(125,1,'index_latest_products','Index Latest Products'),(126,1,'index_blog_slider','Index Blog Slider'),(127,1,'index_latest_products_count','Index Number of Latest Products'),(128,1,'index_slider','Index Slider'),(129,1,'index_categories','Index Categories'),(130,1,'keywords','Keywords'),(131,1,'language','Language'),(132,1,'languages','Languages'),(133,1,'language_code','Language Code'),(134,1,'language_settings','Language Settings'),(135,1,'language_name','Language Name'),(136,1,'last_seen','Last seen: '),(137,1,'latest_posts','Latest Posts'),(138,1,'latest_blog_posts','Latest Blog Posts'),(139,1,'latest_blog_posts_exp','Last added blog posts'),(140,1,'latest_reviews','Latest Reviews'),(141,1,'latest_comments','Latest Comments'),(142,1,'latest_products','Latest Products'),(143,1,'latest_products_exp','Last added products'),(144,1,'latest_pending_products','Latest Pending Products'),(145,1,'latest_members','Latest Members'),(146,1,'location','Location'),(147,1,'login','Login'),(148,1,'login_error','Wrong email or password!'),(149,1,'logout','Logout'),(150,1,'logo','Logo'),(151,1,'load_more','Load More'),(152,1,'link','Link'),(153,1,'lowest_price','Lowest Price'),(154,1,'login_with_email','Or login with email'),(155,1,'mail_protocol','Mail Protocol'),(156,1,'mail','Mail'),(157,1,'mail_title','Mail Title'),(158,1,'mail_host','Mail Host'),(159,1,'mail_port','Mail Port'),(160,1,'mail_username','Mail Username'),(161,1,'mail_password','Mail Password'),(162,1,'message','Message'),(163,1,'messages','Messages'),(164,1,'meta_tag','Meta Tag'),(165,1,'member','Member'),(166,1,'most_recent','Most Recent'),(167,1,'members','Members'),(168,1,'my_account','My Account'),(169,1,'msg_category_added','Category successfully added!'),(170,1,'msg_category_deleted','Category successfully deleted!'),(171,1,'msg_comment_deleted','Comment successfully deleted!'),(172,1,'msg_cron_sitemap','With this URL you can automatically update your sitemap.'),(173,1,'msg_review_deleted','Review successfully deleted!'),(174,1,'msg_email_unique_error','The email has already been taken.'),(175,1,'msg_username_unique_error','The username has already been taken.'),(176,1,'msg_slug_unique_error','The slug has already been taken.'),(177,1,'msg_send_confirmation_email','An activation email has been sent to your email address. Please confirm your account.'),(178,1,'msg_confirmed','Your email address has been successfully confirmed!'),(179,1,'msg_default_page_delete','Default pages cannot be deleted!'),(180,1,'msg_default_language_delete','Default language cannot be deleted!'),(181,1,'msg_delete_subcategories','Please delete subcategories belonging to this category first!'),(182,1,'msg_delete_posts','Please delete posts belonging to this category first!'),(183,1,'msg_error','An error occurred please try again!'),(184,1,'msg_language_added','Language successfully added!'),(185,1,'msg_language_deleted','Language successfully deleted!'),(186,1,'msg_page_added','Page successfully added!'),(187,1,'msg_page_deleted','Page successfully deleted!'),(188,1,'msg_post_added','Post successfully added!'),(189,1,'msg_post_deleted','Post successfully deleted!'),(190,1,'msg_product_approved','Product successfully approved!'),(191,1,'msg_product_deleted','Product successfully deleted!'),(192,1,'msg_change_password_success','Your password has been successfully changed!'),(193,1,'msg_change_password_error','There was a problem changing your password!'),(194,1,'msg_wrong_old_password','Wrong old password!'),(195,1,'msg_slider_added','Slider item successfully added!'),(196,1,'msg_slider_deleted','Slider item successfully deleted!'),(197,1,'msg_message_sent','Your message has been successfully sent!'),(198,1,'msg_message_deleted','Message successfully deleted!'),(199,1,'msg_ban_error','Your account has been suspended!'),(200,1,'msg_administrator_added','Administrator successfully added!'),(201,1,'msg_user_deleted','User successfully deleted!'),(202,1,'msg_subscriber_deleted','Subscriber successfully deleted!'),(203,1,'msg_email_sent','Email successfully sent!'),(204,1,'msg_contact_success','Your message has been successfully sent!'),(205,1,'msg_contact_error','There was a problem sending your message!'),(206,1,'msg_sitemap_updated','Sitemap successfully updated!'),(207,1,'msg_newsletter_success','Your email address has been successfully added!'),(208,1,'msg_newsletter_error','Your email address is already registered!'),(209,1,'msg_reset_password_error','We can\'t find a user with that e-mail address!'),(210,1,'msg_recaptcha','Please confirm that you are not a robot!'),(211,1,'msg_updated','Changes successfully saved!'),(212,1,'msg_add_product_success','Your payment has been successfully completed! Once your product is approved, it will be published on our site!'),(213,1,'msg_payment_success','Your payment has been successfully completed!'),(214,1,'msg_payment_error','An error occurred during the payment!'),(215,1,'msg_payment_database_error','Your payment has been successfully completed, but there was a problem with adding our database! Please contact our site management!'),(216,1,'month','Month'),(217,1,'month_count','Number of Months'),(218,1,'monthly_plan','Monthly Plan'),(219,1,'member_since','Member since'),(220,1,'multilingual_system','Multilingual System'),(221,1,'min','Min'),(222,1,'max','Max'),(223,1,'name','Name'),(224,1,'new','New'),(225,1,'next','Next'),(226,1,'no','No'),(227,1,'none','None'),(228,1,'no_messages_found','No messages found!'),(229,1,'newsletter','Newsletter'),(230,1,'no_records_found','No records found!'),(231,1,'no_products_found','No products found!'),(232,1,'no_members_found','No members found!'),(233,1,'order','Order'),(234,1,'options','Options'),(235,1,'old_password','Old Password'),(236,1,'pages','Pages'),(237,1,'panel','Panel'),(238,1,'page_type','Page Type'),(239,1,'pricing','Pricing'),(240,1,'price_per_day','Price Per Day'),(241,1,'price_per_month','Price Per Month'),(242,1,'parent','Parent'),(243,1,'parent_category','Parent Category'),(244,1,'password','Password'),(245,1,'password_confirm','Confirm Password'),(246,1,'pending','Pending'),(247,1,'pending_products','Pending Products'),(248,1,'posts','Posts'),(249,1,'product','Product'),(250,1,'products','Products'),(251,1,'product_details','Product Details'),(252,1,'product_link_structure','Product Link Structure'),(253,1,'phone','Phone'),(254,1,'product_comments','Product Comments'),(255,1,'price','Price'),(256,1,'promote','Promote'),(257,1,'phone_number','Phone Number'),(258,1,'profile','Profile'),(259,1,'page_not_found','Page not found'),(260,1,'page_not_found_sub','The page you are looking for doesn\'t exist.'),(261,1,'password_reset','Password Reset'),(262,1,'primary','Primary'),(263,1,'payments','Payments'),(264,1,'payment_details','Payment Details'),(265,1,'payment_method','Payment Method'),(266,1,'payment_id','Payment Id'),(267,1,'publishable_key','Publishable Key'),(268,1,'product_id','Product Id'),(269,1,'payment_amount','Payment Amount'),(270,1,'payer_email','Payer Email'),(271,1,'payment_status','Payment Status'),(272,1,'purchased_plan','Purchased Plan'),(273,1,'paste_ad_code','Paste Ad Code'),(274,1,'paste_ad_url','Paste Ad URL'),(275,1,'payment_settings','Payment Settings'),(276,1,'paypal','PayPal'),(277,1,'product_promoting_payment','Product Promotion Payment'),(278,1,'product_promoting_payment_exp','Product Promotion Payment'),(279,1,'preferences','Preferences'),(280,1,'please_wait','Please wait...'),(281,1,'register','Register'),(282,1,'register_with_email','Or register with email'),(283,1,'review','Review'),(284,1,'reviews','Reviews'),(285,1,'reply','Reply'),(286,1,'related_posts','Related Posts'),(287,1,'remove_user_ban','Remove User Ban'),(288,1,'reset_password','Reset Password'),(289,1,'remaining_days','Remaining Days'),(290,1,'regular','Regular'),(291,1,'regular_listing','Regular Listing'),(292,1,'save_changes','Save Changes'),(293,1,'search','Search'),(294,1,'search_exp','Search for products or members'),(295,1,'settings','Settings'),(296,1,'send','Send'),(297,1,'short_form','Short Form'),(298,1,'show','Show'),(299,1,'show_breadcrumb','Show Breadcrumb'),(300,1,'show_right_column','Show Right Column'),(301,1,'show_title','Show Title'),(302,1,'show_on_homepage','Show on Homepage'),(303,1,'show_category_image_on_menu','Show Category Image on Menu'),(304,1,'show_my_email','Show my email address'),(305,1,'show_my_phone','Show my phone number'),(306,1,'show_my_location','Show my location'),(307,1,'slug','Slug'),(308,1,'slug_exp','If you leave it blank, it will be generated automatically.'),(309,1,'status','Status'),(310,1,'submit','Submit'),(311,1,'summary','Summary'),(312,1,'sell_now','Sell Now'),(313,1,'social_media','Social Media'),(314,1,'social_media_settings','Social Media Settings'),(315,1,'show_cookies_warning','Show Cookies Warning'),(316,1,'site_key','Site Key'),(317,1,'secret_key','Secret Key'),(318,1,'smtp','SMTP'),(319,1,'slider','Slider'),(320,1,'slider_items','Slider Items'),(321,1,'seo_tools','Seo Tools'),(322,1,'select_language','Select Language'),(323,1,'site_title','Site Title'),(324,1,'site_description','Site Description'),(325,1,'share','Share'),(326,1,'seller','Seller'),(327,1,'send_message','Send Message'),(328,1,'resend_activation_email','Resend Activation Email'),(329,1,'sort_by','Sort By:'),(330,1,'see_more','See more'),(331,1,'subscribe','Subscribe'),(332,1,'subscribers','Subscribers'),(333,1,'settings_language','Settings Language'),(334,1,'send_email_subscribers','Send Email to Subscribers'),(335,1,'subject','Subject'),(336,1,'send_email','Send Email'),(337,1,'select','Select'),(338,1,'select_all','Select All'),(339,1,'select_category','Select Category'),(340,1,'select_image','Select Image'),(341,1,'select_option','Select an option'),(342,1,'select_country','Select Country'),(343,1,'states','States'),(344,1,'store_name','Store Name'),(345,1,'start','Start'),(346,1,'select_ad_space','Select Ad Space'),(347,1,'select_logo','Select Logo'),(348,1,'select_favicon','Select Favicon'),(349,1,'select_payment_option','Select Payment Option'),(350,1,'stripe','Stripe'),(351,1,'stripe_payment_for','Promote payment for'),(352,1,'subcategory','Subcategory'),(353,1,'tag','Tag'),(354,1,'tags','Tags'),(355,1,'title','Title'),(356,1,'terms_conditions_exp','I have read and agree to the'),(357,1,'type','Type'),(358,1,'type_tag','Type tag and hit enter'),(359,1,'timezone','Timezone'),(360,1,'total','Total'),(361,1,'total_amount','Total Amount:'),(362,1,'to','To:'),(363,1,'update_category','Update Category'),(364,1,'update_language','Update Language'),(365,1,'update_page','Update Page'),(366,1,'update_post','Update Post'),(367,1,'update_profile','Update Profile'),(368,1,'user','User'),(369,1,'username','Username'),(370,1,'url','URL'),(371,1,'uploaded','Uploaded'),(372,1,'used','Used'),(373,1,'unfollow','Unfollow'),(374,1,'update_product','Update Product'),(375,1,'update_country','Update Country'),(376,1,'update_state','Update State'),(377,1,'users','Users'),(378,1,'user_id','User Id'),(379,1,'upload_your_banner','Upload Your Banner'),(380,1,'unconfirmed','Unconfirmed'),(381,1,'visibility','Visibility'),(382,1,'visible','Visible'),(383,1,'view_details','View Details'),(384,1,'view_all','View All'),(385,1,'view_profile','View Profile'),(386,1,'view_site','View Site'),(387,1,'visual_settings','Visual Settings'),(388,1,'write_review','Write a Review...'),(389,1,'write_a_message','Write a message...'),(390,1,'yes','Yes'),(391,1,'your_rating','Your Rating:'),(392,1,'zip_code','Zip Code'),(393,1,'january','January'),(394,1,'february','February'),(395,1,'march','March'),(396,1,'april','April'),(397,1,'may','May'),(398,1,'june','June'),(399,1,'july','July'),(400,1,'august','August'),(401,1,'september','September'),(402,1,'october','October'),(403,1,'november','November'),(404,1,'december','December'),(405,1,'sitemap','Sitemap'),(406,1,'download_sitemap','Download Sitemap'),(407,1,'frequency','Frequency'),(408,1,'frequency_exp','This value indicates how frequently the content at a particular URL is likely to change '),(409,1,'always','Always'),(410,1,'hourly','Hourly'),(411,1,'daily','Daily'),(412,1,'weekly','Weekly'),(413,1,'monthly','Monthly'),(414,1,'yearly','Yearly'),(415,1,'never','Never'),(416,1,'last_modification','Last Modification'),(417,1,'last_modification_exp','The time the URL was last modified'),(418,1,'server_response','Server\'s Response'),(419,1,'use_this_date','Use This Date'),(420,1,'priority','Priority'),(421,1,'priority_exp','The priority of a particular URL relative to other pages on the same site'),(422,1,'priority_none','Automatically Calculated Priority'),(423,1,'update_sitemap','Update Sitemap'),(424,1,'facebook_url','Facebook URL'),(425,1,'twitter_url','Twitter URL'),(426,1,'google_url','Google+ URL'),(427,1,'instagram_url','Instagram URL'),(428,1,'pinterest_url','Pinterest URL'),(429,1,'linkedin_url','Linkedin URL'),(430,1,'vk_url','VK URL'),(431,1,'youtube_url','Youtube URL'),(432,1,'index_ad_space_1','Index Ad Space 1'),(433,1,'index_ad_space_2','Index Ad Space 2'),(434,1,'products_ad_space','Products Ad Space'),(435,1,'products_sidebar_ad_space','Products Sidebar Ad Space'),(436,1,'product_ad_space','Product Ad Space'),(437,1,'blog_ad_space_1','Blog Ad Space 1'),(438,1,'blog_ad_space_2','Blog Ad Space 2'),(439,1,'blog_post_details_ad_space','Blog Post Details Ad Space'),(440,1,'blog_post_details_sidebar_ad_space','Blog Post Details Sidebar Ad Space'),(441,1,'profile_ad_space','Profile Ad Space'),(442,1,'profile_sidebar_ad_space','Profile Sidebar Ad Space'),(443,1,'invalid_attempt','Invalid Attempt!'),(444,1,'reset_password_subtitle','Enter your email address'),(445,1,'msg_reset_password_success','We\'ve sent an email for resetting your password to your email address. Please check your email for next steps.'),(446,1,'email_reset_password','Please click on the button below to reset your password.'),(447,1,'new_password','New Password'),(448,1,'dont_want_receive_emails','Don\'t want receive these emails?'),(449,1,'unsubscribe','Unsubscribe'),(450,1,'unsubscribe_successful','Unsubscribe Successful!'),(451,1,'msg_unsubscribe','You will no longer receive emails from us!'),(452,1,'preview','Preview'),(453,1,'custom_fields','Custom Fields'),(454,1,'add_custom_field','Add Custom Field'),(455,1,'update_custom_field','Update Custom Field'),(456,1,'field_name','Field Name'),(457,1,'required','Required'),(458,1,'msg_custom_field_added','Custom field successfully added!'),(459,1,'msg_custom_field_deleted','Custom field successfully deleted!'),(460,1,'confirm_custom_field','Are you sure you want to delete this custom field?'),(461,1,'clear','Clear'),(462,1,'option','Option'),(463,1,'add_option','Add Option'),(464,1,'confirm_user_email','Confirm Email'),(465,1,'new_with_tags','New with Tags'),(466,1,'very_good','Very Good'),(467,1,'good','Good'),(468,1,'satisfactory','Satisfactory'),(469,1,'skip','Skip'),(470,1,'promote_your_product','Promote Your Product'),(471,1,'facebook_comments','Facebook Comments'),(472,1,'facebook_comments_code','Facebook Comments Plugin Code'),(473,1,'cache_system','Cache System'),(474,1,'cache_refresh_time','Cache Refresh Time (Minute)'),(475,1,'cache_refresh_time_exp','After this time, your cache files will be refreshed.'),(476,1,'refresh_cache_database_changes','Refresh Cache Files When Database Changes'),(477,1,'reset_cache','Reset Cache'),(478,1,'msg_reset_cache','All cache files have been deleted!'),(479,1,'rss_feeds','RSS Feeds'),(480,1,'rss_system','RSS System'),(481,1,'row_width','Row Width'),(482,1,'half_width','Half Width'),(483,1,'full_width','Full Width'),(484,1,'external_link','External Link'),(485,1,'buy_button_link','Buy button link'),(486,1,'buy_now','Buy Now'),(487,1,'user_reviews','User Reviews'),(488,1,'no_reviews_found','No reviews found!'),(489,1,'processing','Processing...'),(490,1,'product_location_system','Product Location System'),(491,1,'storage','Storage'),(492,1,'local_storage','Local Storage'),(493,1,'aws_storage','AWS S3 Storage'),(494,1,'aws_key','AWS Access Key'),(495,1,'aws_secret','AWS Secret Key'),(496,1,'bucket_name','Bucket Name'),(497,1,'region','Region'),(498,1,'navigation','Navigation'),(499,1,'navigation_template','Navigation Template'),(500,1,'email_template','Email Template'),(501,1,'deleted_products','Deleted Products'),(502,1,'restore','Restore'),(503,1,'delete_permanently','Delete Permanently'),(504,1,'confirm_product_permanent','Are you sure you want to permanently delete this product?'),(505,1,'mail_library','Mail Library'),(506,1,'email_verification','Email Verification'),(507,1,'approve_before_publishing','Approve Products Before Publishing'),(508,1,'gmail_warning','To send e-mails with Gmail server, please read Email Settings section in our documentation.'),(509,1,'logo_email','Logo Email'),(510,1,'shopping_cart','Shopping Cart'),(511,1,'cart','Cart'),(512,1,'my_cart','My Cart'),(513,1,'add_to_cart','Add to Cart'),(514,1,'keep_shopping','Keep Shopping'),(515,1,'subtotal','Subtotal'),(516,1,'shipping','Shipping'),(517,1,'remove','Remove'),(518,1,'shipping_information','Shipping Information'),(519,1,'first_name','First Name'),(520,1,'last_name','Last Name'),(521,1,'state','State'),(522,1,'city','City'),(523,1,'optional','Optional'),(524,1,'checkout','Checkout'),(525,1,'continue_to_checkout','Continue to Checkout'),(526,1,'continue_to_payment','Continue to Payment'),(527,1,'continue_to_payment_method','Continue to Payment Method'),(528,1,'return_to_cart','Return to cart'),(529,1,'order_summary','Order Summary'),(530,1,'order_details','Order Details'),(531,1,'order_id','Order Id'),(532,1,'item','Item'),(533,1,'your_cart_is_empty','Your cart is empty!'),(534,1,'shop_now','Shop Now'),(535,1,'shipping_address','Shipping Address'),(536,1,'billing_address','Billing Address'),(537,1,'checking_out_as_guest','You are checking out as a guest'),(538,1,'have_account','Have an account?'),(539,1,'payment','Payment'),(540,1,'currency_settings','Currency Settings'),(541,1,'add_currency','Add Currency'),(542,1,'currencies','Currencies'),(543,1,'msg_added','Item successfully added!'),(544,1,'msg_deleted','Item successfully deleted!'),(545,1,'confirm_delete','Are you sure you want to delete this item?'),(546,1,'currency_name','Currency Name'),(547,1,'currency_symbol','Currency Symbol'),(548,1,'currency_code','Currency Code'),(549,1,'currency_hexcode','Currency Hex Code'),(550,1,'update_currency','Update Currency'),(551,1,'currency_format','Currency Format'),(552,1,'currency_symbol_format','Currency Symbol Format'),(553,1,'left','Left'),(554,1,'right','Right'),(555,1,'buyer','Buyer'),(556,1,'completed','Completed'),(557,1,'orders','Orders'),(558,1,'latest_orders','Latest Orders'),(559,1,'sale','Sale'),(560,1,'sales','Sales'),(561,1,'earnings','Earnings'),(562,1,'transactions','Transactions'),(563,1,'latest_transactions','Latest Transactions'),(564,1,'guest','Guest'),(565,1,'unit_price','Unit Price'),(566,1,'quantity','Quantity'),(567,1,'system_settings','System Settings'),(568,1,'commission_rate','Commission Rate'),(569,1,'you_will_earn','You Will Earn'),(570,1,'shipping_cost','Shipping Cost'),(571,1,'shipping_time','Shipping Time'),(572,1,'1_business_day','Ready to ship in 1 Business Day'),(573,1,'2_3_business_days','Ready to ship in 2-3 Business Days'),(574,1,'4_7_business_days','Ready to ship in 4-7 Business Days'),(575,1,'8_15_business_days','Ready to ship in 8-15 Business Days'),(576,1,'mode','Mode'),(577,1,'bank_transfer','Bank Transfer'),(578,1,'ip_address','Ip Address'),(579,1,'promote_plan','Promote Plan'),(580,1,'payment_received','Payment Received'),(581,1,'awaiting_payment','Awaiting Payment'),(582,1,'order_processing','Processing'),(583,1,'shipped','Shipped'),(584,1,'cancelled','Cancelled'),(585,1,'update_order_status','Update Order Status'),(586,1,'place_order','Place Order'),(587,1,'stripe_checkout','Stripe Checkout'),(588,1,'iyzico','Iyzico'),(589,1,'api_key','Api Key'),(590,1,'msg_complete_payment','Please click the button below to complete the payment.'),(591,1,'bank_accounts','Bank Accounts'),(592,1,'msg_bank_transfer_text','Once you have placed your order, you can make your payment to one of these bank accounts. Please add your order number to your payment description.'),(593,1,'msg_bank_transfer_text_order_completed','You can make your payment to one of these bank accounts. Please add your order number to your payment description.'),(594,1,'msg_bank_transfer_text_transaction_completed','You can make your payment to one of these bank accounts. Please add your transaction number to your payment description.'),(595,1,'msg_promote_bank_transfer_text','Once you have placed your order, you can make your payment to one of these bank accounts. Please add your transaction number to your payment description.'),(596,1,'go_to_your_product','Go to Your Product'),(597,1,'active_orders','Active Orders'),(598,1,'completed_orders','Completed Orders'),(599,1,'active_sales','Active Sales'),(600,1,'completed_sales','Completed Sales'),(601,1,'order_number','Order Number'),(602,1,'updated','Updated'),(603,1,'just_now','Just Now'),(604,1,'minute_ago','minute ago'),(605,1,'minutes_ago','minutes ago'),(606,1,'hour_ago','hour ago'),(607,1,'hours_ago','hours ago'),(608,1,'day_ago','day ago'),(609,1,'days_ago','days ago'),(610,1,'month_ago','month ago'),(611,1,'months_ago','months ago'),(612,1,'year_ago','year ago'),(613,1,'years_ago','years ago'),(614,1,'approved','Approved'),(615,1,'decline','Decline'),(616,1,'declined','Declined'),(617,1,'payment_note','Payment Note'),(618,1,'receipt','Receipt'),(619,1,'report_bank_transfer','Report Bank Transfer'),(620,1,'bank_transfer_notifications','Bank Transfers Notifications'),(621,1,'bank_transfer_accepted','Bank transfer accepted'),(622,1,'bank_transfer_declined','Bank transfer declined'),(623,1,'tracking_number','Tracking Number'),(624,1,'add_shipping_tracking_number','Add Shipping Tracking Number'),(625,1,'explanation','Explanation'),(626,1,'use_same_address_for_billing','Use same address for billing address'),(627,1,'balance','Balance'),(628,1,'your_balance','Your Balance'),(629,1,'earned_amount','Earned Amount'),(630,1,'balance_exp','Approved earnings'),(631,1,'payouts','Payouts'),(632,1,'payout_requests','Payout Requests'),(633,1,'completed_payouts','Completed Payouts'),(634,1,'add_payout','Add Payout'),(635,1,'set_payout_account','Set Payout Account'),(636,1,'paypal_email_address','PayPal Email Address'),(637,1,'use_default_payment_account','Use as default payment account'),(638,1,'full_name','Full Name'),(639,1,'bank_name','Bank Name'),(640,1,'iban','IBAN'),(641,1,'iban_long','International Bank Account Number'),(642,1,'swift','SWIFT'),(643,1,'swift_iban','Bank Account Number/IBAN'),(644,1,'postcode','Postcode'),(645,1,'bank_account_holder_name','Bank Account Holder\'s Name'),(646,1,'bank_branch_country','Bank Branch Country'),(647,1,'bank_branch_city','Bank Branch City'),(648,1,'swift_code','SWIFT Code'),(649,1,'withdraw_money','Withdraw Money'),(650,1,'withdraw_amount','Withdrawal Amount'),(651,1,'withdraw_method','Withdrawal Method'),(652,1,'seller_balances','Seller Balances'),(653,1,'update_seller_balance','Update Seller Balance'),(654,1,'number_of_total_sales','Number of total sales'),(655,1,'msg_insufficient_balance','Insufficient balance!'),(656,1,'see_details','See Details'),(657,1,'succeeded','Succeeded'),(658,1,'transaction_number','Transaction Number'),(659,1,'msg_order_completed','Your order has been successfully completed!'),(660,1,'email_options','Email Options'),(661,1,'email_option_product_added','Send email when a new product is added'),(662,1,'email_option_send_order_to_buyer','Send email to buyer after purchase (Send order summary)'),(663,1,'email_option_send_email_order_shipped','Send email to buyer when order shipped'),(664,1,'email_option_send_email_new_message','Send me an email when someone send me a message'),(665,1,'email_option_contact_messages','Send contact messages to email address'),(666,1,'admin_emails_will_send','Admin emails will be sent to this address'),(667,1,'view_product','View Product'),(668,1,'email_text_see_product','Click the button below to see the product.'),(669,1,'email_text_new_product','A new product has been added'),(670,1,'email_text_thank_for_order','Thank you for your order!'),(671,1,'email_text_new_order','Your order has been received and is now processed. Your order details are shown below.'),(672,1,'order_information','Order Information'),(673,1,'you_have_new_message','You have a new message'),(674,1,'your_order_shipped','Your order has been shipped'),(675,1,'shipped_product','Shipped Product'),(676,1,'facebook_login','Facebook Login'),(677,1,'page_views','Page Views'),(678,1,'multi_vendor_system','Multi-Vendor System'),(679,1,'multi_vendor_system_exp','If you disable it, only Admin can add product.'),(680,1,'payout_settings','Payout Settings'),(681,1,'min_poyout_amount','Minimum payout amount'),(682,1,'min_poyout_amounts','Minimum Payout Amounts'),(683,1,'social_login','Social Login'),(684,1,'msg_payment_completed','Payment completed successfully!'),(685,1,'new_message','New'),(686,1,'show_first_search_lists','Show first in search lists'),(687,1,'google_login','Google Login'),(688,1,'connect_with_facebook','Connect with Facebook'),(689,1,'connect_with_google','Connect with Google'),(690,1,'add_to_product_filters','Add to Product Filters'),(691,1,'remove_from_product_filters','Remove from Product Filters'),(692,1,'save_and_continue','Save and Continue'),(693,1,'custom_field','Custom Field'),(694,1,'custom_field_options','Custom Field Options'),(695,1,'show_under_these_categories','Custom field will be displayed under these categories'),(696,1,'edit_options','Edit Options'),(697,1,'listing_type','Listing Type'),(698,1,'product_type','Product Type'),(699,1,'physical','Physical'),(700,1,'physical_exp','A tangible product that you will ship to buyers'),(701,1,'digital','Digital'),(702,1,'digital_exp','A digital file that buyers will download'),(703,1,'drag_drop_images_here','Drag and drop images here or'),(704,1,'drag_drop_file_here','Drag and drop file here or'),(705,1,'product_image_exp','Products with good and clear images are sold faster!'),(706,1,'browse_files','Browse Files'),(707,1,'waiting','Waiting...'),(708,1,'add_product_for_sale','Add a Product for Sale'),(709,1,'add_product_for_sale_exp','Add a product to sell on the site (a commission can be taken)'),(710,1,'add_product_services_listing','Add a Product or Service as an Ordinary Listing'),(711,1,'add_product_services_listing_exp','Add a product or service without buy option'),(712,1,'sell_my_product_on_site','Sell product on the site'),(713,1,'edit_product','Edit Product'),(714,1,'maintenance_mode','Maintenance Mode'),(715,1,'variations','Variations'),(716,1,'variations_exp','Add available options, like color or size that buyers can choose during checkout'),(717,1,'add_variation','Add Variation'),(718,1,'select_existing_variation','Select an Existing Variation'),(719,1,'created_variations','Created Variations'),(720,1,'msg_no_created_variations','You have no created variations.'),(721,1,'edit_variation','Edit Variation'),(722,1,'label','Label'),(723,1,'variation_type','Variation Type'),(724,1,'text','Text'),(725,1,'textarea','Textarea'),(726,1,'number','Number'),(727,1,'checkbox','Checkbox (Multiple Selection)'),(728,1,'radio_button','Radio Button (Single Selection)'),(729,1,'dropdown','Dropdown (Single Selection)'),(730,1,'confirm_variation','Are you sure you want to delete this variation?'),(731,1,'aws_base_url','AWS Base URL'),(732,1,'monday','Monday'),(733,1,'tuesday','Tuesday'),(734,1,'wednesday','Wednesday'),(735,1,'thursday','Thursday'),(736,1,'friday','Friday'),(737,1,'saturday','Saturday'),(738,1,'sunday','Sunday'),(739,1,'add_image','Add Image'),(740,1,'add_video','Add Video'),(741,1,'video','Video'),(742,1,'audio','Audio'),(743,1,'add_iframe','Add Iframe'),(744,1,'upload','Upload'),(745,1,'uploading','Uploading...'),(746,1,'text_editor_language','Text Editor Language'),(747,1,'demo_url','Demo URL'),(748,1,'demo_url_exp','Add a preview URL (i.e. https://demo.com)'),(749,1,'external_link_exp','You can add an external product link. (i.e. https://domain.com/product)'),(750,1,'live_preview','Live Preview'),(751,1,'video_preview','Video Preview'),(752,1,'video_preview_exp','MP4 or WEBM preview video'),(753,1,'audio_preview','Audio Preview'),(754,1,'audio_preview_exp','MP3 or WAV preview audio'),(755,1,'confirm_product_video','Are you sure you want to delete this video?'),(756,1,'confirm_product_audio','Are you sure you want to delete this audio?'),(757,1,'digital_files','Digital Files'),(758,1,'select_file','Select File'),(759,1,'download','Download'),(760,1,'downloads','Downloads'),(761,1,'form_settings','Form Settings'),(762,1,'shipping_options','Shipping Options'),(763,1,'product_conditions','Product Conditions'),(764,1,'add_shipping_option','Add Shipping Option'),(765,1,'edit_shipping_option','Edit Shipping Option'),(766,1,'option_label','Option Label'),(767,1,'msg_option_added','Option successfully added!'),(768,1,'confirm_option','Are you sure you want to delete this option?'),(769,1,'add_product_condition','Add Product Condition'),(770,1,'edit_product_condition','Edit Product Condition'),(771,1,'physical_products','Physical Products'),(772,1,'digital_products','Digital Products'),(773,1,'digital_sales','Digital Sales'),(774,1,'marketplace_selling_product_on_the_site','Marketplace (Selling Products on the Site)'),(775,1,'classified_ads_adding_product_as_listing','Classified Ads (Adding a Product or Service as an Ordinary Listing)'),(776,1,'msg_error_product_type','You must enable at least one product type'),(777,1,'msg_error_selected_system','You must enable at least one system'),(778,1,'default_product_currency','Default Product Currency'),(779,1,'allow_all_currencies_classified_ads','Allow All Currencies for Ordinary Listing'),(780,1,'only_for_ordinary_listing','Only for Ordinary Listing'),(781,1,'instant_download','Instant download'),(782,1,'files_included','Files Included'),(783,1,'files_included_ext','Enter the extensions of the files that you are going to sell (i.e. JPG, MP4, MP3)'),(784,1,'no_shipping','No Shipping'),(785,1,'drafts','Drafts'),(786,1,'draft','Draft'),(787,1,'save_as_draft','Save as Draft'),(788,1,'msg_digital_product_register_error','You must create an account to purchase a digital product.'),(789,1,'menu_limit','Menu Limit'),(790,1,'number_of_links_in_menu','The number of links that appear in the menu'),(791,1,'more','More'),(792,1,'show_image_on_navigation','Show Category Image on the Navigation'),(793,1,'purchase_code','Purchase Code'),(794,1,'ok','OK'),(795,1,'cancel','Cancel'),(796,1,'msg_payout_paypal_error','You must enter your PayPal email address to make this payment request'),(797,1,'msg_accept_bank_transfer','Are you sure you want to set this order as payment received?'),(798,1,'add_tracking_number','Add Tracking Number'),(799,1,'send_email_to_buyer','Send Email to Buyer'),(800,1,'vendors','Vendors'),(801,1,'shop_settings','Shop Settings'),(802,1,'shop_name','Shop Name'),(803,1,'shop_description','Shop Description'),(804,1,'start_selling','Start Selling'),(805,1,'start_selling_exp','In order to sell your products, you must be a verified member. Verification is a one-time process. This verification process is necessary because of spammers and fraud.'),(806,1,'tell_us_about_shop','Tell Us About Your Shop'),(807,1,'shop_opening_requests','Shop Opening Requests'),(808,1,'msg_start_selling','We have received your request. Your store will be open when your request is approved.'),(809,1,'msg_shop_opening_requests','Your request to open a store is under evaluation!'),(810,1,'msg_shop_name_unique_error','The shop name has already been taken.'),(811,1,'msg_shop_request_declined','Your shop opening request has been declined. Thank you for your interest.'),(812,1,'from','From:'),(813,1,'open_user_shop','Open User Shop'),(814,1,'close_user_shop','Close User Shop'),(815,1,'confirm_close_user_shop','Are you sure you want to close this shop?'),(816,1,'cities','Cities'),(817,1,'add_city','Add City'),(818,1,'update_city','Update City'),(819,1,'enter_location','Enter Location'),(820,1,'main','main'),(821,1,'file_upload','File Upload'),(822,1,'max_file_size','Max File Size'),(823,1,'free_listing','Free Listing'),(824,1,'backward','Backward'),(825,1,'play','Play'),(826,1,'pause','Pause'),(827,1,'forward','Forward'),(828,1,'see_order_details','See Order Details'),(829,1,'send_email_item_sold','Send me an email when one of my item is sold'),(830,1,'you_have_new_order','You have a new order'),(831,1,'update_slider_item','Update Slider Item'),(832,1,'msg_message_sent_error','You cannot send message to yourself!'),(833,1,'bidding_system','Bidding System'),(834,1,'bidding_system_request_quote','Bidding System (Request Quote)'),(835,1,'add_product_get_price_requests','Add a Product to Receive Quote (Price) Requests'),(836,1,'bidding_system_emails','Bidding system emails'),(837,1,'add_product_get_price_requests_exp','Add a product without adding a price to get price requests from customers'),(838,1,'quote','Quote'),(839,1,'request_a_quote','Request a Quote'),(840,1,'quote_requests','Quote Requests'),(841,1,'quote_request','Quote Request'),(842,1,'sent_quote_requests','Sent Quote Requests'),(843,1,'received_quote_requests','Received Quote Requests'),(844,1,'msg_quote_request_sent','Your request has been successfully submitted.'),(845,1,'msg_quote_request_error','You cannot request a quote for your own item!'),(846,1,'sellers_bid','Seller\'s Bid'),(847,1,'awaiting_sellers_bid','Awaiting Seller\'s Bid'),(848,1,'accept_quote','Accept Quote'),(849,1,'reject_quote','Reject Quote'),(850,1,'delete_quote','Delete Quote'),(851,1,'confirm_quote_request','Are you sure you want to delete this quote request?'),(852,1,'submit_a_quote','Submit a Quote'),(853,1,'submit_a_new_quote','Submit a New Quote'),(854,1,'update_quote','Update Quote'),(855,1,'new_quote_request','New Quote Request'),(856,1,'you_have_new_quote_request','You have a new quote request.'),(857,1,'your_quote_request_replied','Your quote request has been replied.'),(858,1,'your_quote_accepted','Your quote has been accepted.'),(859,1,'your_quote_rejected','Your quote has been rejected.'),(860,1,'pending_quote','Pending Quote'),(861,1,'pending_payment','Pending Payment'),(862,1,'rejected_quote','Rejected Quote'),(863,1,'closed','Closed'),(864,1,'msg_error_cart_unapproved_products','Unapproved products cannot be added to the cart!'),(865,1,'shop_opening_request','Shop Opening Request'),(866,1,'there_is_shop_opening_request','There is a new shop opening request.'),(867,1,'send_email_shop_opening_request','Send email when there is a new shop opening request'),(868,1,'your_shop_opening_request_approved','Your shop opening request has been approved. You can go to our site and start to sell your items!'),(869,1,'homepage','Homepage'),(870,1,'general','General'),(871,1,'pagseguro','PagSeguro'),(872,1,'token','Token'),(873,1,'production','Production'),(874,1,'sandbox','Sandbox'),(875,1,'credit_card','Credit Card'),(876,1,'name_on_the_card','Name on the Card'),(877,1,'card_number','Card Number'),(878,1,'expiration_date','Expiration Date (MM / YY)'),(879,1,'cvv','CVV'),(880,1,'cvv_exp','Three-digits code on the back of your card'),(881,1,'cpf','CPF'),(882,1,'date_of_birth','Date of Birth'),(883,1,'cell_phone','Cell Phone'),(884,1,'confirm_payment','Confirm Payment'),(885,1,'postal_code','Postal Code'),(886,1,'paystack','PayStack'),(887,1,'public_key','Public Key'),(888,1,'msg_confirmed_required','In order to login to the site, you must confirm your email address.'),(889,1,'msg_confirmation_email','Please click on the button below to confirm your account.'),(890,1,'confirm_your_account','Confirm Your Account'),(891,1,'pay_now','Pay Now'),(892,1,'free_promotion','Free Promotion'),(893,1,'free_product','Free Product'),(894,1,'free','Free'),(895,1,'pay','Pay'),(896,1,'edit_details','Edit Details'),(897,1,'guest_checkout','Guest Checkout'),(898,1,'google_adsense_code','Google Adsense Code'),(899,1,'watermark','Watermark'),(900,1,'watermark_image','Watermark Image'),(901,1,'add_watermark_product_images','Add Watermark to Product Images'),(902,1,'add_watermark_blog_images','Add Watermark to Blog Images'),(903,1,'add_watermark_thumbnail_images','Add Watermark to Thumbnail (Small) Images'),(904,1,'vertical_alignment','Vertical Alignment'),(905,1,'horizontal_alignment','Horizontal Alignment'),(906,1,'top','Top'),(907,1,'middle','Middle'),(908,1,'bottom','Bottom'),(909,1,'center','Center'),(910,1,'translation','Translation'),(911,1,'msg_register_success','Your account has been created successfully!'),(912,1,'license_keys','License Keys'),(913,1,'license_key','License Key'),(914,1,'license_keys_exp','Add your license keys if you want to give an unique license key for each purchase.'),(915,1,'add_license_keys','Add License Keys'),(916,1,'view_license_keys','View License Keys'),(917,1,'add_license_keys_exp','Add all license keys with comma(,) separator. (i.e. License Key, License Key...)'),(918,1,'msg_add_license_keys','License keys successfully added!'),(919,1,'allow_duplicate_license_keys','Allow Duplicate License Keys'),(920,1,'main_files','Main File(s)'),(921,1,'license_certificate','License Certificate'),(922,1,'product_url','Product URL'),(923,1,'cash_on_delivery','Cash on Delivery'),(924,1,'cash_on_delivery_exp','Pay with cash upon delivery.'),(925,1,'cash_on_delivery_warning','You have selected \'Cash on Delivery\' as your payment method. You must pay the total amount when you receive your package. If you accept this payment method, please click the button below to complete your order.'),(926,1,'vendor_verification_system','Vendor Verification System'),(927,1,'vendor_verification_system_exp','Disable if you want to allow all users to add products.'),(928,1,'bank_transfer_exp','Make your payment directly into our bank account.'),(929,1,'confirm_order_received','Confirm Order Received'),(930,1,'confirm_order_received_exp','Confirm if you have received your order.'),(931,1,'confirm_order_received_warning','When you receive your order, please check the products you have purchased. If there is not any problem, click \'Confirm Order Received\' button. After confirming your order, the money will be transferred to the seller.'),(932,1,'confirm_approve_order','Are you sure you want to confirm this order?'),(933,1,'invalid_withdrawal_amount','Invalid withdrawal amount!'),(934,1,'active_payment_request_error','You already have an active payment request! Once this is complete, you can make a new request.'),(935,1,'button','Button'),(936,1,'button_text','Button Text'),(937,1,'animations','Animations'),(938,1,'slider_settings','Slider Settings'),(939,1,'effect','Effect'),(940,1,'boxed','Boxed'),(941,1,'top_menu','Top Menu'),(942,1,'warning','Warning'),(943,1,'route_settings','Route Settings'),(944,1,'route_settings_warning','You cannot use special characters in routes. If your language contains special characters, please be careful when editing routes. If you enter an invalid route, you will not be able to access the related page.'),(945,1,'text_color','Text Color'),(946,1,'button_color','Button Color'),(947,1,'button_text_color','Button Text Color'),(948,1,'font_settings','Font Settings'),(949,1,'site_font','Site Font'),(950,1,'fonts','Fonts'),(951,1,'add_font','Add Font'),(952,1,'font_family','Font Family'),(953,1,'update_font','Update Font'),(954,1,'vat','VAT'),(955,1,'vat_exp','Value-Added Tax'),(956,1,'add_to_wishlist','Add to wishlist'),(957,1,'remove_from_wishlist','Remove from wishlist'),(958,1,'additional_information','Additional Information'),(959,1,'shipping_location','Shipping & Location'),(960,1,'you_may_also_like','You may also like'),(961,1,'wishlist','Wishlist'),(962,1,'allowed_file_extensions','Allowed File Extensions'),(963,1,'type_extension','Type an extension and hit enter '),(964,1,'invalid_file_type','Invalid file type!'),(965,1,'flag','Flag'),(966,1,'add_a_comment','Add a comment'),(967,1,'comment_approval_system','Comment Approval System'),(968,1,'pending_comments','Pending Comments'),(969,1,'approved_comments','Approved Comments'),(970,1,'msg_comment_approved','Comment successfully approved!'),(971,1,'msg_comment_sent_successfully','Your comment has been sent. It will be published after being reviewed by the site management.'),(972,1,'no_comments_found','No comments found for this product. Be the first to comment!'),(973,1,'no_reviews_found','No reviews found.'),(974,1,'rate_this_product','Rate this product'),(975,1,'msg_review_added','Your review has been successfully added!'),(976,1,'vat_included','VAT Included'),(977,1,'product_price','Product Price'),(978,1,'discount_rate','Discount Rate'),(979,1,'no_discount','No Discount'),(980,1,'calculated_price','Calculated Price'),(981,1,'add_space_between_money_currency','Add Space Between Money and Currency'),(982,1,'view_invoice','View Invoice'),(983,1,'invoice','Invoice'),(984,1,'personal_information','Personal Information'),(985,1,'client_information','Client Information'),(986,1,'invoice_currency_warning','All amounts shown on this invoice are in'),(987,1,'print','Print'),(988,1,'invoices','Invoices'),(989,1,'view_options','View Options'),(990,1,'option_name','Option Name'),(991,1,'msg_option_added','Option added successfully!'),(992,1,'use_default_price','Use default price'),(993,1,'color','Color'),(994,1,'stock','Stock'),(995,1,'add_product','Add Product'),(996,1,'edit_option','Edit Option'),(997,1,'msg_option_exists','This option already exists!'),(998,1,'default_option','Default Option'),(999,1,'default_option_exp','This option will be selected by default. It will use the default images and price'),(1000,1,'sku','SKU'),(1001,1,'product_code','Product Code'),(1002,1,'option_display_type','Option Display Type'),(1003,1,'show_option_images_on_slider','Show Option Images on Slider When an Option is Selected'),(1004,1,'in_stock','In Stock'),(1005,1,'out_of_stock','Out of Stock'),(1006,1,'parent_variation','Parent Variation'),(1007,1,'parent_option','Parent Option'),(1008,1,'use_different_price_for_options','Use Different Price for Options'),(1009,1,'location_exp','Modesy allows you to shop from anywhere in the world.'),(1010,1,'select_location','Select Location'),(1011,1,'update_location','Update Location'),(1012,1,'show_all','Show All'),(1013,1,'search_products','Search Products'),(1014,1,'activate_all','Activate All'),(1015,1,'inactivate_all','Inactivate All'),(1016,1,'hide_vendor_contact_information','Hide Vendor Contact Information on the Site'),(1017,1,'online','Online'),(1018,1,'checkout_form','Checkout Form'),(1019,1,'marketplace','Marketplace'),(1020,1,'identity_number','Identity Number'),(1021,1,'submerchant','Submerchant'),(1022,1,'tax_office','Tax Office'),(1023,1,'tax_number','Tax Number'),(1024,1,'company_title','Company Title'),(1025,1,'create_key','Create Key'),(1026,1,'submerchant_key','Submerchant Key'),(1027,1,'vk_login','VKontakte Login'),(1028,1,'secure_key','Secure Key'),(1029,1,'connect_with_vk','Connect with VKontakte'),(1030,1,'edit_user','Edit User'),(1031,1,'digital_product_stock_exp','Enter a high stock value for products with unlimited quantity.'),(1032,1,'shipping_cost_per_additional_product','Shipping Cost for Per Additional Product'),(1033,1,'shipping_cost_per_additional_product_exp','The shipping cost for per additional product if a buyer buys more than one of the same product'),(1034,1,'new_arrivals','New Arrivals'),(1035,1,'featured_products','Featured Products'),(1036,1,'featured_products_exp','Last added featured products'),(1037,1,'featured','Featured'),(1038,1,'featured_badge','Featured Badge'),(1039,1,'index_featured_products','Index Featured Products'),(1040,1,'index_featured_products_count','Index Number of Featured Products'),(1041,1,'add_to_featured','Add to Featured'),(1042,1,'remove_from_featured','Remove from Featured'),(1043,1,'featured_products_transactions','Featured Products Transactions'),(1044,1,'featured_products_payment_currency','Featured Products Payment Currency'),(1045,1,'add_review','Add Review'),(1046,1,'more_from','More from'),(1047,1,'product_bottom_ad_space','Product Bottom Ad Space'),(1048,1,'adsense_head_exp','The codes you add here will be added in the <head></head> tags.'),(1049,1,'custom_css_codes','Custom CSS Codes'),(1050,1,'custom_javascript_codes','Custom JavaScript Codes'),(1051,1,'custom_javascript_codes_exp','These codes will be added to the footer of the site.'),(1052,1,'custom_css_codes_exp','These codes will be added to the header of the site.');
/*!40000 ALTER TABLE `language_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_form` varchar(20) NOT NULL,
  `language_code` varchar(20) NOT NULL,
  `text_direction` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `language_order` tinyint(4) NOT NULL DEFAULT '1',
  `ckeditor_lang` varchar(10) DEFAULT 'en',
  `flag_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en-US','ltr',1,1,'en','uploads/blocks/flag_eng.jpg');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_cities`
--

DROP TABLE IF EXISTS `location_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_cities` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(200) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  `state_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_country_id` (`country_id`),
  KEY `idx_state_id` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_cities`
--

LOCK TABLES `location_cities` WRITE;
/*!40000 ALTER TABLE `location_cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `location_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_countries`
--

DROP TABLE IF EXISTS `location_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_countries` (
  `id` smallint(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_countries`
--

LOCK TABLES `location_countries` WRITE;
/*!40000 ALTER TABLE `location_countries` DISABLE KEYS */;
INSERT INTO `location_countries` VALUES (1,'Afghanistan',1),(2,'Albania',1),(3,'Algeria',1),(4,'American Samoa',1),(5,'Andorra',1),(6,'Angola',1),(7,'Anguilla',1),(8,'Antarctica',1),(9,'Antigua and Barbuda',1),(10,'Argentina',1),(11,'Armenia',1),(12,'Aruba',1),(13,'Australia',1),(14,'Austria',1),(15,'Azerbaijan',1),(16,'Bahamas',1),(17,'Bahrain',1),(18,'Bangladesh',1),(19,'Barbados',1),(20,'Belarus',1),(21,'Belgium',1),(22,'Belize',1),(23,'Benin',1),(24,'Bermuda',1),(25,'Bhutan',1),(26,'Bolivia',1),(27,'Bosnia and Herzegovina',1),(28,'Botswana',1),(29,'Bouvet Island',1),(30,'Brazil',1),(31,'British Indian Ocean Territory',1),(32,'Brunei Darussalam',1),(33,'Bulgaria',1),(34,'Burkina Faso',1),(35,'Burundi',1),(36,'Cambodia',1),(37,'Cameroon',1),(38,'Canada',1),(39,'Cape Verde',1),(40,'Cayman Islands',1),(41,'Central African Republic',1),(42,'Chad',1),(43,'Chile',1),(44,'China',1),(45,'Christmas Island',1),(46,'Cocos (Keeling) Islands',1),(47,'Colombia',1),(48,'Comoros',1),(49,'Congo',1),(50,'Cook Islands',1),(51,'Costa Rica',1),(52,'Croatia (Hrvatska)',1),(53,'Cuba',1),(54,'Cyprus',1),(55,'Czech Republic',1),(56,'Denmark',1),(57,'Djibouti',1),(58,'Dominica',1),(59,'Dominican Republic',1),(60,'East Timor',1),(61,'Ecuador',1),(62,'Egypt',1),(63,'El Salvador',1),(64,'Equatorial Guinea',1),(65,'Eritrea',1),(66,'Estonia',1),(67,'Ethiopia',1),(68,'Falkland Islands (Malvinas)',1),(69,'Faroe Islands',1),(70,'Fiji',1),(71,'Finland',1),(72,'France',1),(73,'France, Metropolitan',1),(74,'French Guiana',1),(75,'French Polynesia',1),(76,'French Southern Territories',1),(77,'Gabon',1),(78,'Gambia',1),(79,'Georgia',1),(80,'Germany',1),(81,'Ghana',1),(82,'Gibraltar',1),(83,'Greece',1),(84,'Greenland',1),(85,'Grenada',1),(86,'Guadeloupe',1),(87,'Guam',1),(88,'Guatemala',1),(89,'Guernsey',1),(90,'Guinea',1),(91,'Guinea-Bissau',1),(92,'Guyana',1),(93,'Haiti',1),(94,'Heard and Mc Donald Islands',1),(95,'Honduras',1),(96,'Hong Kong',1),(97,'Hungary',1),(98,'Iceland',1),(99,'India',1),(100,'Indonesia',1),(101,'Iran',1),(102,'Iraq',1),(103,'Ireland',1),(104,'Isle of Man',1),(105,'Israel',1),(106,'Italy',1),(107,'Ivory Coast',1),(108,'Jamaica',1),(109,'Japan',1),(110,'Jersey',1),(111,'Jordan',1),(112,'Kazakhstan',1),(113,'Kenya',1),(114,'Kiribati',1),(115,'Kosovo',1),(116,'Kuwait',1),(117,'Kyrgyzstan',1),(118,'Lao',1),(119,'Latvia',1),(120,'Lebanon',1),(121,'Lesotho',1),(122,'Liberia',1),(123,'Libyan Arab Jamahiriya',1),(124,'Liechtenstein',1),(125,'Lithuania',1),(126,'Luxembourg',1),(127,'Macau',1),(128,'Macedonia',1),(129,'Madagascar',1),(130,'Malawi',1),(131,'Malaysia',1),(132,'Maldives',1),(133,'Mali',1),(134,'Malta',1),(135,'Marshall Islands',1),(136,'Martinique',1),(137,'Mauritania',1),(138,'Mauritius',1),(139,'Mayotte',1),(140,'Mexico',1),(141,'Micronesia, Federated States of',1),(142,'Moldova, Republic of',1),(143,'Monaco',1),(144,'Mongolia',1),(145,'Montenegro',1),(146,'Montserrat',1),(147,'Morocco',1),(148,'Mozambique',1),(149,'Myanmar',1),(150,'Namibia',1),(151,'Nauru',1),(152,'Nepal',1),(153,'Netherlands',1),(154,'Netherlands Antilles',1),(155,'New Caledonia',1),(156,'New Zealand',1),(157,'Nicaragua',1),(158,'Niger',1),(159,'Nigeria',1),(160,'Niue',1),(161,'Norfolk Island',1),(162,'North Korea',1),(163,'Northern Mariana Islands',1),(164,'Norway',1),(165,'Oman',1),(166,'Pakistan',1),(167,'Palau',1),(168,'Palestine',1),(169,'Panama',1),(170,'Papua New Guinea',1),(171,'Paraguay',1),(172,'Peru',1),(173,'Philippines',1),(174,'Pitcairn',1),(175,'Poland',1),(176,'Portugal',1),(177,'Puerto Rico',1),(178,'Qatar',1),(179,'Reunion',1),(180,'Romania',1),(181,'Russian Federation',1),(182,'Rwanda',1),(183,'Saint Kitts and Nevis',1),(184,'Saint Lucia',1),(185,'Saint Vincent and the Grenadines',1),(186,'Samoa',1),(187,'San Marino',1),(188,'Sao Tome and Principe',1),(189,'Saudi Arabia',1),(190,'Senegal',1),(191,'Serbia',1),(192,'Seychelles',1),(193,'Sierra Leone',1),(194,'Singapore',1),(195,'Slovakia',1),(196,'Slovenia',1),(197,'Solomon Islands',1),(198,'Somalia',1),(199,'South Africa',1),(200,'South Georgia South Sandwich Islands',1),(201,'South Korea',1),(202,'Spain',1),(203,'Sri Lanka',1),(204,'St. Helena',1),(205,'St. Pierre and Miquelon',1),(206,'Sudan',1),(207,'Suriname',1),(208,'Svalbard and Jan Mayen Islands',1),(209,'Swaziland',1),(210,'Sweden',1),(211,'Switzerland',1),(212,'Syrian Arab Republic',1),(213,'Taiwan',1),(214,'Tajikistan',1),(215,'Tanzania',1),(216,'Thailand',1),(217,'Togo',1),(218,'Tokelau',1),(219,'Tonga',1),(220,'Trinidad and Tobago',1),(221,'Tunisia',1),(222,'Turkey',1),(223,'Turkmenistan',1),(224,'Turks and Caicos Islands',1),(225,'Tuvalu',1),(226,'Uganda',1),(227,'Ukraine',1),(228,'United Arab Emirates',1),(229,'United Kingdom',1),(230,'United States',1),(231,'United States minor outlying islands',1),(232,'Uruguay',1),(233,'Uzbekistan',1),(234,'Vanuatu',1),(235,'Vatican City State',1),(236,'Venezuela',1),(237,'Vietnam',1),(238,'Virgin Islands (British)',1),(239,'Virgin Islands (U.S.)',1),(240,'Wallis and Futuna Islands',1),(241,'Western Sahara',1),(242,'Yemen',1),(243,'Zaire',1),(244,'Zambia',1),(245,'Zimbabwe',1);
/*!40000 ALTER TABLE `location_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_states`
--

DROP TABLE IF EXISTS `location_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_states` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(200) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_states`
--

LOCK TABLES `location_states` WRITE;
/*!40000 ALTER TABLE `location_states` DISABLE KEYS */;
INSERT INTO `location_states` VALUES (1,'Badakhshan',1),(2,'Badghis',1),(3,'Baghlan',1),(4,'Balkh',1),(5,'Bamyan',1),(6,'Daykundi',1),(7,'Farah',1),(8,'Faryab',1),(9,'Ghazni',1),(10,'Ghowr',1),(11,'Helmand',1),(12,'Herat',1),(13,'Jowzjan',1),(14,'Kabul',1),(15,'Kandahar',1),(16,'Kapisa',1),(17,'Khowst',1),(18,'Kunar',1),(19,'Kunduz',1),(20,'Laghman',1),(21,'Logar',1),(22,'Nangarhar',1),(23,'Nimroz',1),(24,'Nuristan',1),(25,'Oruzgan',1),(26,'Paktia',1),(27,'Paktika',1),(28,'Panjshir',1),(29,'Parwan',1),(30,'Samangan',1),(31,'Sar-e Pol',1),(32,'Takhar',1),(33,'Vardak',1),(34,'Zabul',1),(35,'Berat',2),(36,'Diber',2),(37,'Durres',2),(38,'Elbasan',2),(39,'Fier',2),(40,'Gjirokaster',2),(41,'Korce',2),(42,'Kukes',2),(43,'Lezhe',2),(44,'Shkoder',2),(45,'Tirane',2),(46,'Vlore',2),(47,'Adrar',3),(48,'Ain Defla',3),(49,'Ain Temouchent',3),(50,'Algiers',3),(51,'Annaba',3),(52,'Batna',3),(53,'Bechar',3),(54,'Bejaia',3),(55,'Biskra',3),(56,'Blida',3),(57,'Bordj Bou Arreridj',3),(58,'Bouira',3),(59,'Boumerdes',3),(60,'Chlef',3),(61,'Constantine',3),(62,'Djelfa',3),(63,'El Bayadh',3),(64,'El Oued',3),(65,'El Tarf',3),(66,'Ghardaia',3),(67,'Guelma',3),(68,'Illizi',3),(69,'Jijel',3),(70,'Khenchela',3),(71,'Laghouat',3),(72,'M\'Sila',3),(73,'Mascara',3),(74,'Medea',3),(75,'Mila',3),(76,'Mostaganem',3),(77,'Naama',3),(78,'Oran',3),(79,'Ouargla',3),(80,'Oum el Bouaghi',3),(81,'Relizane',3),(82,'Saida',3),(83,'Setif',3),(84,'Sidi Bel Abbes',3),(85,'Skikda',3),(86,'Souk Ahras',3),(87,'Tamanrasset',3),(88,'Tebessa',3),(89,'Tiaret',3),(90,'Tindouf',3),(91,'Tipaza',3),(92,'Tissemsilt',3),(93,'Tizi Ouzou',3),(94,'Tlemcen',3),(95,'Andorra la Vella',5),(96,'Canillo',5),(97,'Encamp',5),(98,'Escaldes-Engordany',5),(99,'La Massana',5),(100,'Ordino',5),(101,'Sant Julia de Loria',5),(102,'Bengo',6),(103,'Benguela',6),(104,'Bie',6),(105,'Cabinda',6),(106,'Cuando Cobango',6),(107,'Cuanza Norte',6),(108,'Cunene',6),(109,'Huambo',6),(110,'Huila',6),(111,'Kwanza Sul',6),(112,'Luanda',6),(113,'Luanda Norte',6),(114,'Lunda Sul',6),(115,'Malanje',6),(116,'Moxico',6),(117,'Namibe',6),(118,'Uige',6),(119,'Zaire',6),(120,'Blowing Point',7),(121,'East End',7),(122,'George Hill',7),(123,'Island Harbour',7),(124,'North Hill',7),(125,'North Side',7),(126,'Sandy Ground',7),(127,'Sandy Hill',7),(128,'South Hill',7),(129,'Stoney Ground',7),(130,'The Farrington',7),(131,'The Quarter',7),(132,'The Valley',7),(133,'West End',7),(134,'Barbuda',9),(135,'Redonda',9),(136,'Saint George',9),(137,'Saint John',9),(138,'Saint Mary',9),(139,'Saint Paul',9),(140,'Saint Peter',9),(141,'Saint Philip',9),(142,'Buenos Aires',10),(143,'Buenos Aires F.D.',10),(144,'Catamarca',10),(145,'Chaco',10),(146,'Chubut',10),(147,'Cordoba',10),(148,'Corrientes',10),(149,'Entre Rios',10),(150,'Formosa',10),(151,'Jujuy',10),(152,'La Pampa',10),(153,'La Rioja',10),(154,'Mendoza',10),(155,'Misiones',10),(156,'Neuquen',10),(157,'Rio Negro',10),(158,'Salta',10),(159,'San Juan',10),(160,'San Luis',10),(161,'Santa Cruz',10),(162,'Santa Fe',10),(163,'Santiago del Estero',10),(164,'Tierra del Fuego',10),(165,'Tucuman',10),(166,'Aragatsotn',11),(167,'Ararat',11),(168,'Armavir',11),(169,'Gegharkunik',11),(170,'Kotayk',11),(171,'Lori',11),(172,'Shirak',11),(173,'Syunik',11),(174,'Tavush',11),(175,'Vayots Dzor',11),(176,'Vayots-Dzor',11),(177,'Yerevan',11),(178,'Australian Capital Territory',13),(179,'New South Wales',13),(180,'Northern Territory',13),(181,'Queensland',13),(182,'South Australia',13),(183,'Tasmania',13),(184,'Victoria',13),(185,'Western Australia',13),(186,'Burgenland',14),(187,'Carinthia',14),(188,'Lower Austria',14),(189,'Salzburg',14),(190,'Styria',14),(191,'Tyrol',14),(192,'Upper Austria',14),(193,'Vienna',14),(194,'Vorarlberg',14),(195,'Abseron',15),(196,'Agdam',15),(197,'Agdas',15),(198,'Aghjabadi',15),(199,'Agstafa',15),(200,'Agsu',15),(201,'Astara',15),(202,'Baki',15),(203,'Balakan',15),(204,'Barda',15),(205,'Beylaqan',15),(206,'Bilasuvar',15),(207,'Dashkasan',15),(208,'Fuezuli',15),(209,'Gadabay',15),(210,'Ganja',15),(211,'Goeycay',15),(212,'Goranboy',15),(213,'Goygol Rayon',15),(214,'Haciqabul',15),(215,'Imisli',15),(216,'Ismayilli',15),(217,'Jabrayil',15),(218,'Jalilabad',15),(219,'Kalbajar',15),(220,'Khojavend',15),(221,'Kurdamir',15),(222,'Lacin',15),(223,'Lankaran',15),(224,'Lankaran Sahari',15),(225,'Lerik',15),(226,'Masally',15),(227,'Mingacevir',15),(228,'Naftalan',15),(229,'Nakhchivan',15),(230,'Nakhichevan',15),(231,'Neftcala',15),(232,'Oguz',15),(233,'Qabala',15),(234,'Qakh',15),(235,'Qazax',15),(236,'Qobustan',15),(237,'Quba',15),(238,'Qubadli',15),(239,'Qusar',15),(240,'Saatli',15),(241,'Sabirabad',15),(242,'Salyan',15),(243,'Samaxi',15),(244,'Samux',15),(245,'Shabran',15),(246,'Shaki',15),(247,'Shaki City',15),(248,'Shamkir',15),(249,'Shirvan',15),(250,'Siazan',15),(251,'Sumqayit',15),(252,'Susa',15),(253,'Tartar',15),(254,'Tovuz',15),(255,'Ucar',15),(256,'Xacmaz',15),(257,'Xankandi',15),(258,'Xizi',15),(259,'Xocali',15),(260,'Yardimli',15),(261,'Yevlax',15),(262,'Yevlax City',15),(263,'Zangilan',15),(264,'Zaqatala',15),(265,'Zardab',15),(266,'__h_ri',15),(267,'Acklins',16),(268,'Berry Islands',16),(269,'Bimini',16),(270,'Black Point',16),(271,'Cat Island',16),(272,'Central Abaco',16),(273,'Central Andros',16),(274,'Central Eleuthera',16),(275,'Crooked Island and Long Cay',16),(276,'East Grand Bahama',16),(277,'Exuma',16),(278,'Freeport',16),(279,'Grand Cay',16),(280,'Harbour Island',16),(281,'Hope Town',16),(282,'Inagua',16),(283,'Long Island',16),(284,'Mangrove Cay',16),(285,'Mayaguana',16),(286,'Moore\'s Island',16),(287,'New Providence',16),(288,'North Abaco',16),(289,'North Andros',16),(290,'North Eleuthera',16),(291,'Ragged Island',16),(292,'Rum Cay',16),(293,'San Salvador',16),(294,'South Abaco',16),(295,'South Andros',16),(296,'South Eleuthera',16),(297,'Spanish Wells',16),(298,'West Grand Bahama',16),(299,'Central Governorate',17),(300,'Manama',17),(301,'Muharraq',17),(302,'Northern',17),(303,'Southern Governorate',17),(304,'Barisal',18),(305,'Chittagong',18),(306,'Dhaka',18),(307,'Khulna',18),(308,'Mymensingh Division',18),(309,'Rajshahi',18),(310,'Rangpur Division',18),(311,'Sylhet',18),(312,'Christ Church',19),(313,'Saint Andrew',19),(314,'Saint George',19),(315,'Saint James',19),(316,'Saint John',19),(317,'Saint Joseph',19),(318,'Saint Lucy',19),(319,'Saint Michael',19),(320,'Saint Peter',19),(321,'Saint Philip',19),(322,'Saint Thomas',19),(323,'Brest',20),(324,'Gomel',20),(325,'Grodnenskaya',20),(326,'Minsk',20),(327,'Minsk City',20),(328,'Mogilev',20),(329,'Vitebsk',20),(330,'Brussels Capital',21),(331,'Flanders',21),(332,'Wallonia',21),(333,'Belize',22),(334,'Cayo',22),(335,'Corozal',22),(336,'Orange Walk',22),(337,'Stann Creek',22),(338,'Toledo',22),(339,'Alibori',23),(340,'Atakora',23),(341,'Atlantique',23),(342,'Borgou',23),(343,'Collines',23),(344,'Donga',23),(345,'Kouffo',23),(346,'Littoral',23),(347,'Mono',23),(348,'Oueme',23),(349,'Plateau',23),(350,'Zou',23),(351,'Devonshire',24),(352,'Hamilton',24),(353,'Hamilton city',24),(354,'Paget',24),(355,'Pembroke',24),(356,'Saint George',24),(357,'Saint George\'s',24),(358,'Sandys',24),(359,'Smith\'s',24),(360,'Southampton',24),(361,'Warwick',24),(362,'Bumthang',25),(363,'Chirang',25),(364,'Chukha',25),(365,'Dagana',25),(366,'Gasa',25),(367,'Geylegphug',25),(368,'Haa',25),(369,'Lhuntse',25),(370,'Mongar',25),(371,'Paro',25),(372,'Pemagatshel',25),(373,'Punakha',25),(374,'Samchi',25),(375,'Samdrup Jongkhar',25),(376,'Shemgang',25),(377,'Tashigang',25),(378,'Thimphu',25),(379,'Tongsa',25),(380,'Trashi Yangste',25),(381,'Wangdi Phodrang',25),(382,'Chuquisaca',26),(383,'Cochabamba',26),(384,'El Beni',26),(385,'La Paz',26),(386,'Oruro',26),(387,'Pando',26),(388,'Potosi',26),(389,'Santa Cruz',26),(390,'Tarija',26),(391,'Brcko',27),(392,'Federation of B&H',27),(393,'Srspka',27),(394,'Central',28),(395,'Ghanzi',28),(396,'Kgalagadi',28),(397,'Kgatleng',28),(398,'Kweneng',28),(399,'Ngwaketsi',28),(400,'North-East',28),(401,'North-West',28),(402,'South-East',28),(403,'Acre',30),(404,'Alagoas',30),(405,'AmapÃ¡',30),(406,'Amazonas',30),(407,'Bahia',30),(408,'CearÃ¡',30),(409,'Distrito Federal',30),(410,'EspÃ­rito Santo',30),(411,'GoiÃ¡s',30),(412,'MaranhÃ£o',30),(413,'Mato Grosso',30),(414,'Mato Grosso do Sul',30),(415,'Minas Gerais',30),(416,'ParÃ¡',30),(417,'ParaÃ­ba',30),(418,'ParanÃ¡',30),(419,'Pernambuco',30),(420,'PiauÃ­',30),(421,'Rio de Janeiro',30),(422,'Rio Grande do Norte',30),(423,'Rio Grande do Sul',30),(424,'RondÃ´nia',30),(425,'Roraima',30),(426,'Santa Catarina',30),(427,'SÃ£o Paulo',30),(428,'Sergipe',30),(429,'Tocantins',30),(430,'Belait',32),(431,'Brunei and Muara',32),(432,'Temburong',32),(433,'Tutong',32),(434,'Blagoevgrad',33),(435,'Burgas',33),(436,'Dobrich',33),(437,'Gabrovo',33),(438,'Khaskovo',33),(439,'Kurdzhali',33),(440,'Kyustendil',33),(441,'Lovech',33),(442,'Montana',33),(443,'Pazardzhik',33),(444,'Pernik',33),(445,'Pleven',33),(446,'Plovdiv',33),(447,'Razgrad',33),(448,'Ruse',33),(449,'Shumen',33),(450,'Silistra',33),(451,'Sliven',33),(452,'Smolyan',33),(453,'Sofia',33),(454,'Sofia-Capital',33),(455,'Stara Zagora',33),(456,'Turgovishte',33),(457,'Varna',33),(458,'Veliko Turnovo',33),(459,'Vidin',33),(460,'Vratsa',33),(461,'Yambol',33),(462,'Boucle du Mouhoun',34),(463,'Cascades',34),(464,'Centre',34),(465,'Centre-Est',34),(466,'Centre-Nord',34),(467,'Centre-Ouest',34),(468,'Centre-Sud',34),(469,'Est',34),(470,'Hauts-Bassins',34),(471,'Nord',34),(472,'Plateau-Central',34),(473,'Sahel',34),(474,'Sud-Ouest',34),(475,'Bubanza',35),(476,'Bujumbura Mairie',35),(477,'Bujumbura Rural',35),(478,'Bururi',35),(479,'Cankuzo',35),(480,'Cibitoke',35),(481,'Gitega',35),(482,'Karuzi',35),(483,'Kayanza',35),(484,'Kirundo',35),(485,'Makamba',35),(486,'Muramvya',35),(487,'Muyinga',35),(488,'Mwaro',35),(489,'Ngozi',35),(490,'Rumonge',35),(491,'Rutana',35),(492,'Ruyigi',35),(493,'Banteay Meanchey',36),(494,'Battambang',36),(495,'Kampong Cham',36),(496,'Kampong Chhnang',36),(497,'Kampong Speu',36),(498,'Kampong Thom',36),(499,'Kampot',36),(500,'Kandal',36),(501,'Kep',36),(502,'Koh Kong',36),(503,'Kratie',36),(504,'Mondolkiri',36),(505,'Otar Meanchey',36),(506,'Pailin',36),(507,'Phnom Penh',36),(508,'Preah Sihanouk',36),(509,'Preah Vihear',36),(510,'Prey Veng',36),(511,'Pursat',36),(512,'Ratanakiri',36),(513,'Siem Reap',36),(514,'Stung Treng',36),(515,'Svay Rieng',36),(516,'Takeo',36),(517,'Tboung Khmum',36),(518,'Adamaoua',37),(519,'Centre',37),(520,'East',37),(521,'Far North',37),(522,'Littoral',37),(523,'North',37),(524,'North-West',37),(525,'South',37),(526,'South-West',37),(527,'West',37),(528,'Alberta',38),(529,'British Columbia',38),(530,'Manitoba',38),(531,'New Brunswick',38),(532,'Newfoundland and Labrador',38),(533,'Northwest Territories',38),(534,'Nova Scotia',38),(535,'Nunavut',38),(536,'Ontario',38),(537,'Prince Edward Island',38),(538,'Quebec',38),(539,'Saskatchewan',38),(540,'Yukon',38),(541,'Boa Vista',39),(542,'Brava',39),(543,'Maio',39),(544,'Mosteiros',39),(545,'Paul',39),(546,'Porto Novo',39),(547,'Praia',39),(548,'Ribeira Brava',39),(549,'Ribeira Grande',39),(550,'Ribeira Grande de Santiago',39),(551,'Sal',39),(552,'Santa Catarina',39),(553,'Santa Catarina do Fogo',39),(554,'Santa Cruz',39),(555,'Sao Domingos',39),(556,'Sao Filipe',39),(557,'Sao Lourenco dos Orgaos',39),(558,'Sao Miguel',39),(559,'Sao Salvador do Mundo',39),(560,'Sao Vicente',39),(561,'Tarrafal',39),(562,'Tarrafal de Sao Nicolau',39),(563,'Bodden Town',40),(564,'East End',40),(565,'George Town',40),(566,'North Side',40),(567,'Sister Island',40),(568,'West Bay',40),(569,'Bamingui-Bangoran',41),(570,'Bangui',41),(571,'Basse-Kotto',41),(572,'Haut-Mbomou',41),(573,'Haute-Kotto',41),(574,'Kemo',41),(575,'Lobaye',41),(576,'Mambere-Kadei',41),(577,'Mbomou',41),(578,'Nana-Grebizi',41),(579,'Nana-Mambere',41),(580,'Ombella-M\'Poko',41),(581,'Ouaka',41),(582,'Ouham',41),(583,'Ouham-Pende',41),(584,'Sangha-Mbaere',41),(585,'Vakaga',41),(586,'Barh el Gazel',42),(587,'Batha',42),(588,'Borkou',42),(589,'Chari-Baguirmi',42),(590,'Ennedi-Est',42),(591,'Ennedi-Ouest',42),(592,'Guera',42),(593,'Hadjer-Lamis',42),(594,'Kanem',42),(595,'Lac',42),(596,'Logone Occidental',42),(597,'Logone Oriental',42),(598,'Mandoul',42),(599,'Mayo-Kebbi Est',42),(600,'Mayo-Kebbi Ouest',42),(601,'Moyen-Chari',42),(602,'N\'Djamena',42),(603,'Ouadai',42),(604,'Salamat',42),(605,'Sila',42),(606,'Tandjile',42),(607,'Tibesti',42),(608,'Wadi Fira',42),(609,'Aisen',43),(610,'Antofagasta',43),(611,'Araucania',43),(612,'Arica y Parinacota',43),(613,'Atacama',43),(614,'Biobio',43),(615,'Coquimbo',43),(616,'Los Lagos',43),(617,'Los Rios',43),(618,'Magallanes',43),(619,'Maule',43),(620,'O\'Higgins',43),(621,'Santiago Metropolitan',43),(622,'Tarapaca',43),(623,'Valparaiso',43),(624,'Anhui',44),(625,'Beijing',44),(626,'Chongqing',44),(627,'Fujian',44),(628,'Gansu',44),(629,'Guangdong',44),(630,'Guangxi',44),(631,'Guangxi Zhuang',44),(632,'Guizhou',44),(633,'Hainan',44),(634,'Hebei',44),(635,'Heilongjiang',44),(636,'Henan',44),(637,'Hubei',44),(638,'Hunan',44),(639,'Inner Mongolia',44),(640,'Jiangsu',44),(641,'Jiangxi',44),(642,'Jilin',44),(643,'Liaoning',44),(644,'Nei Mongol',44),(645,'Ningsia Hui Autonomous Region',44),(646,'Ningxia Hui',44),(647,'Qinghai',44),(648,'Shaanxi',44),(649,'Shandong',44),(650,'Shanghai',44),(651,'Shanxi',44),(652,'Sichuan',44),(653,'Tianjin',44),(654,'Tibet',44),(655,'Xinjiang',44),(656,'Xinjiang Uygur',44),(657,'Xizang',44),(658,'Yunnan',44),(659,'Zhejiang',44),(660,'Amazonas',47),(661,'Antioquia',47),(662,'Arauca',47),(663,'Atlantico',47),(664,'Bogota D.C.',47),(665,'Bolivar',47),(666,'Boyaca',47),(667,'Caldas',47),(668,'Caqueta',47),(669,'Casanare',47),(670,'Cauca',47),(671,'Cesar',47),(672,'Choco',47),(673,'Cordoba',47),(674,'Cundinamarca',47),(675,'Guainia',47),(676,'Guaviare',47),(677,'Huila',47),(678,'La Guajira',47),(679,'Magdalena',47),(680,'Meta',47),(681,'Narino',47),(682,'Norte de Santander',47),(683,'Putumayo',47),(684,'Quindio',47),(685,'Risaralda',47),(686,'San Andres y Providencia',47),(687,'Santander',47),(688,'Sucre',47),(689,'Tolima',47),(690,'Valle del Cauca',47),(691,'Vaupes',47),(692,'Vichada',47),(693,'Anjouan',48),(694,'Grande Comore',48),(695,'Moheli',48),(696,'Bouenza',49),(697,'Brazzaville',49),(698,'Cuvette',49),(699,'Cuvette-Ouest',49),(700,'Kouilou',49),(701,'Lekoumou',49),(702,'Likouala',49),(703,'Niari',49),(704,'Plateaux',49),(705,'Pointe-Noire',49),(706,'Pool',49),(707,'Sangha',49),(708,'Alajuela',51),(709,'Cartago',51),(710,'Guanacaste',51),(711,'Heredia',51),(712,'Limon',51),(713,'Puntarenas',51),(714,'San Jose',51),(715,'Bjelovarsko-Bilogorska',52),(716,'City of Zagreb',52),(717,'Dubrovacko-Neretvanska',52),(718,'Istarska',52),(719,'Karlovacka',52),(720,'Koprivnicko-Krizevacka',52),(721,'Krapinsko-Zagorska',52),(722,'Licko-Senjska',52),(723,'Medimurska',52),(724,'Osjecko-Baranjska',52),(725,'Pozesko-Slavonska',52),(726,'Primorsko-Goranska',52),(727,'Sibensko-Kniniska',52),(728,'Sisacko-Moslavacka',52),(729,'Slavonski Brod-Posavina',52),(730,'Splitsko-Dalmatinska',52),(731,'Varazdinska',52),(732,'Virovitick-Podravska',52),(733,'Vukovar-Sirmium',52),(734,'Zadarska',52),(735,'Zagrebacka',52),(736,'Artemisa',53),(737,'Camaguey',53),(738,'Ciego de Avila',53),(739,'Cienfuegos',53),(740,'Granma',53),(741,'Guantanamo',53),(742,'Holguin',53),(743,'Isla de la Juventud',53),(744,'La Habana',53),(745,'Las Tunas',53),(746,'Matanzas',53),(747,'Mayabeque',53),(748,'Pinar del Rio',53),(749,'Sancti Spiritus',53),(750,'Santiago de Cuba',53),(751,'Villa Clara',53),(752,'Ammochostos',54),(753,'Keryneia',54),(754,'Larnaka',54),(755,'Limassol',54),(756,'Nicosia',54),(757,'Pafos',54),(758,'Central Bohemia',55),(759,'Jihocesky',55),(760,'Karlovarsky',55),(761,'Kralovehradecky',55),(762,'Liberecky',55),(763,'Moravskoslezsky',55),(764,'Olomoucky',55),(765,'Pardubicky',55),(766,'Plzensky',55),(767,'Praha',55),(768,'South Moravian',55),(769,'Ustecky',55),(770,'Vysocina',55),(771,'Zlin',55),(772,'Capital Region',56),(773,'Central Jutland',56),(774,'North Denmark',56),(775,'South Denmark',56),(776,'Zealand',56),(777,'Ali Sabieh',57),(778,'Arta',57),(779,'Dikhil',57),(780,'Djibouti',57),(781,'Obock',57),(782,'Tadjourah',57),(783,'Saint Andrew',58),(784,'Saint David',58),(785,'Saint George',58),(786,'Saint John',58),(787,'Saint Joseph',58),(788,'Saint Luke',58),(789,'Saint Mark',58),(790,'Saint Patrick',58),(791,'Saint Paul',58),(792,'Saint Peter',58),(793,'Azua',59),(794,'Baoruco',59),(795,'Barahona',59),(796,'Dajabon',59),(797,'Duarte',59),(798,'El Seibo',59),(799,'Elias Pina',59),(800,'Espaillat',59),(801,'Hato Mayor',59),(802,'Hermanas Mirabal',59),(803,'Independencia',59),(804,'La Altagracia',59),(805,'La Romana',59),(806,'La Vega',59),(807,'Maria Trinidad Sanchez',59),(808,'Monsenor Nouel',59),(809,'Monte Cristi',59),(810,'Monte Plata',59),(811,'Nacional',59),(812,'Pedernales',59),(813,'Peravia',59),(814,'Puerto Plata',59),(815,'Samana',59),(816,'San Cristobal',59),(817,'San Jose de Ocoa',59),(818,'San Juan',59),(819,'San Pedro de Macoris',59),(820,'Sanchez Ramirez',59),(821,'Santiago',59),(822,'Santiago Rodriguez',59),(823,'Santo Domingo',59),(824,'Valverde',59),(825,'Azuay',61),(826,'Bolivar',61),(827,'Canar',61),(828,'Carchi',61),(829,'Chimborazo',61),(830,'Cotopaxi',61),(831,'El Oro',61),(832,'Esmeraldas',61),(833,'Galapagos',61),(834,'Guayas',61),(835,'Imbabura',61),(836,'Loja',61),(837,'Los Rios',61),(838,'Manabi',61),(839,'Morona-Santiago',61),(840,'Napo',61),(841,'Orellana',61),(842,'Pastaza',61),(843,'Pichincha',61),(844,'Santa Elena',61),(845,'Santo Domingo de los Tsachilas',61),(846,'Sucumbios',61),(847,'Tungurahua',61),(848,'Zamora-Chinchipe',61),(849,'Alexandria',62),(850,'Aswan',62),(851,'Asyut',62),(852,'Beheira',62),(853,'Beni Suweif',62),(854,'Cairo',62),(855,'Dakahlia',62),(856,'Damietta',62),(857,'Faiyum',62),(858,'Gharbia',62),(859,'Giza',62),(860,'Ismailia',62),(861,'Kafr el-Sheikh',62),(862,'Luxor',62),(863,'Matruh',62),(864,'Minya',62),(865,'Monufia',62),(866,'New Valley',62),(867,'North Sinai',62),(868,'Port Said',62),(869,'Qalyubia',62),(870,'Qena',62),(871,'Red Sea',62),(872,'Sharqia',62),(873,'Sohag',62),(874,'South Sinai',62),(875,'Suez',62),(876,'Ahuachapan',63),(877,'Cabanas',63),(878,'Chalatenango',63),(879,'Cuscatlan',63),(880,'La Libertad',63),(881,'La Paz',63),(882,'La Union',63),(883,'Morazan',63),(884,'San Miguel',63),(885,'San Salvador',63),(886,'San Vicente',63),(887,'Santa Ana',63),(888,'Sonsonate',63),(889,'Usulutan',63),(890,'Annobon',64),(891,'Bioko Norte',64),(892,'Bioko Sur',64),(893,'Centro Sur',64),(894,'Kie-Ntem',64),(895,'Litoral',64),(896,'Wele-Nzas',64),(897,'Anseba',65),(898,'Debub',65),(899,'Gash-Barka',65),(900,'Maekel',65),(901,'Northern Red Sea',65),(902,'Southern Red Sea',65),(903,'Harjumaa',66),(904,'Hiiumaa',66),(905,'Ida-Virumaa',66),(906,'Jaervamaa',66),(907,'Jogevamaa',66),(908,'Laeaene',66),(909,'Laeaene-Virumaa',66),(910,'Paernumaa',66),(911,'Polvamaa',66),(912,'Raplamaa',66),(913,'Saare',66),(914,'Tartu',66),(915,'Valgamaa',66),(916,'Viljandimaa',66),(917,'Vorumaa',66),(918,'Addis Ababa',67),(919,'Afar',67),(920,'Amhara',67),(921,'Binshangul Gumuz',67),(922,'Dire Dawa',67),(923,'Gambela',67),(924,'Harari',67),(925,'Oromiya',67),(926,'SNNPR',67),(927,'Somali',67),(928,'Tigray',67),(929,'Eysturoy',69),(930,'Nordoyar',69),(931,'Sandoy',69),(932,'Streymoy',69),(933,'Suduroy',69),(934,'Vagar',69),(935,'Central',70),(936,'Eastern',70),(937,'Northern',70),(938,'Rotuma',70),(939,'Western',70),(940,'Central Finland',71),(941,'Central Ostrobothnia',71),(942,'Haeme',71),(943,'Kainuu',71),(944,'Kymenlaakso',71),(945,'Lapland',71),(946,'North Karelia',71),(947,'Northern Ostrobothnia',71),(948,'Northern Savo',71),(949,'Ostrobothnia',71),(950,'Paijanne Tavastia',71),(951,'Pirkanmaa',71),(952,'Satakunta',71),(953,'South Karelia',71),(954,'Southern Ostrobothnia',71),(955,'Southern Savonia',71),(956,'Southwest Finland',71),(957,'Uusimaa',71),(958,'Auvergne-Rhone-Alpes',72),(959,'Bourgogne-Franche-Comte',72),(960,'Brittany',72),(961,'Centre',72),(962,'Corsica',72),(963,'Grand Est',72),(964,'Hauts-de-France',72),(965,'Ile-de-France',72),(966,'Normandy',72),(967,'Nouvelle-Aquitaine',72),(968,'Occitanie',72),(969,'Pays de la Loire',72),(970,'Provence-Alpes-Cote d\'Azur',72),(971,'Guyane',74),(972,'Iles Australes',75),(973,'Iles du Vent',75),(974,'Iles Marquises',75),(975,'Iles Tuamotu-Gambier',75),(976,'Leeward Islands',75),(977,'Crozet',76),(978,'Iles Eparses',76),(979,'Kerguelen',76),(980,'Saint-Paul-et-Amsterdam',76),(981,'Terre-Adelie',76),(982,'Estuaire',77),(983,'Haut-Ogooue',77),(984,'Moyen-Ogooue',77),(985,'Ngouni',77),(986,'Nyanga',77),(987,'Ogooue-Ivindo',77),(988,'Ogooue-Lolo',77),(989,'Ogooue-Maritime',77),(990,'Woleu-Ntem',77),(991,'Banjul',78),(992,'Central River',78),(993,'Lower River',78),(994,'North Bank',78),(995,'Upper River',78),(996,'Western',78),(997,'Abkhazia',79),(998,'Ajaria',79),(999,'Guria',79),(1000,'Imereti',79),(1001,'Kakheti',79),(1002,'Kvemo Kartli',79),(1003,'Mtskheta-Mtianeti',79),(1004,'Racha-Lechkhumi and Kvemo Svaneti',79),(1005,'Samegrelo and Zemo Svaneti',79),(1006,'Samtskhe-Javakheti',79),(1007,'Shida Kartli',79),(1008,'T\'bilisi',79),(1009,'Baden-Wuerttemberg',80),(1010,'Bavaria',80),(1011,'Berlin',80),(1012,'Brandenburg',80),(1013,'Bremen',80),(1014,'Hamburg',80),(1015,'Hesse',80),(1016,'Lower Saxony',80),(1017,'Mecklenburg-Vorpommern',80),(1018,'North Rhine-Westphalia',80),(1019,'Rheinland-Pfalz',80),(1020,'Saarland',80),(1021,'Saxony',80),(1022,'Saxony-Anhalt',80),(1023,'Schleswig-Holstein',80),(1024,'Thuringia',80),(1025,'Ashanti',81),(1026,'Brong-Ahafo',81),(1027,'Central',81),(1028,'Eastern',81),(1029,'Greater Accra',81),(1030,'Northern',81),(1031,'Upper East',81),(1032,'Upper West',81),(1033,'Volta',81),(1034,'Western',81),(1035,'Attica',83),(1036,'Central Greece',83),(1037,'Central Macedonia',83),(1038,'Crete',83),(1039,'East Macedonia and Thrace',83),(1040,'Epirus',83),(1041,'Ionian Islands',83),(1042,'Mount Athos',83),(1043,'North Aegean',83),(1044,'Peloponnese',83),(1045,'South Aegean',83),(1046,'Thessaly',83),(1047,'West Greece',83),(1048,'West Macedonia',83),(1049,'Kujalleq',84),(1050,'Qaasuitsup',84),(1051,'Qeqqata',84),(1052,'Sermersooq',84),(1053,'Carriacou and Petite Martinique',85),(1054,'Saint Andrew',85),(1055,'Saint David',85),(1056,'Saint George',85),(1057,'Saint John',85),(1058,'Saint Mark',85),(1059,'Saint Patrick',85),(1060,'Guadeloupe',86),(1061,'Agana Heights',87),(1062,'Agat',87),(1063,'Asan',87),(1064,'Barrigada',87),(1065,'Chalan Pago-Ordot',87),(1066,'Dededo',87),(1067,'Hagatna',87),(1068,'Inarajan',87),(1069,'Mangilao',87),(1070,'Merizo',87),(1071,'Mongmong-Toto-Maite',87),(1072,'Piti',87),(1073,'Santa Rita',87),(1074,'Sinajana',87),(1075,'Talofofo',87),(1076,'Tamuning',87),(1077,'Umatac',87),(1078,'Yigo',87),(1079,'Yona',87),(1080,'Alta Verapaz',88),(1081,'Baja Verapaz',88),(1082,'Chimaltenango',88),(1083,'Chiquimula',88),(1084,'El Progreso',88),(1085,'Escuintla',88),(1086,'Guatemala',88),(1087,'Huehuetenango',88),(1088,'Izabal',88),(1089,'Jalapa',88),(1090,'Jutiapa',88),(1091,'Peten',88),(1092,'Quetzaltenango',88),(1093,'Quiche',88),(1094,'Retalhuleu',88),(1095,'Sacatepequez',88),(1096,'San Marcos',88),(1097,'Santa Rosa',88),(1098,'Solola',88),(1099,'Suchitepeque',88),(1100,'Totonicapan',88),(1101,'Zacapa',88),(1102,'Boke',90),(1103,'Conakry',90),(1104,'Faranah',90),(1105,'Kankan',90),(1106,'Kindia',90),(1107,'Labe',90),(1108,'Mamou',90),(1109,'Nzerekore',90),(1110,'Bafata',91),(1111,'Biombo',91),(1112,'Bissau',91),(1113,'Bolama and Bijagos',91),(1114,'Cacheu',91),(1115,'Gabu',91),(1116,'Oio',91),(1117,'Quinara',91),(1118,'Tombali',91),(1119,'Barima-Waini',92),(1120,'Cuyuni-Mazaruni',92),(1121,'Demerara-Mahaica',92),(1122,'East Berbice-Corentyne',92),(1123,'Essequibo Islands-West Demerara',92),(1124,'Mahaica-Berbice',92),(1125,'Pomeroon-Supenaam',92),(1126,'Potaro-Siparuni',92),(1127,'Upper Demerara-Berbice',92),(1128,'Upper Takutu-Upper Essequibo',92),(1129,'Artibonite',93),(1130,'Centre',93),(1131,'Grandans',93),(1132,'Nippes',93),(1133,'Nord',93),(1134,'Nord-Est',93),(1135,'Nord-Ouest',93),(1136,'Ouest',93),(1137,'Sud',93),(1138,'Sud-Est',93),(1139,'Atlantida',95),(1140,'Bay Islands',95),(1141,'Choluteca',95),(1142,'Colon',95),(1143,'Comayagua',95),(1144,'Copan',95),(1145,'Cortes',95),(1146,'El Paraiso',95),(1147,'Francisco Morazan',95),(1148,'Gracias a Dios',95),(1149,'Intibuca',95),(1150,'La Paz',95),(1151,'Lempira',95),(1152,'Ocotepeque',95),(1153,'Olancho',95),(1154,'Santa Barbara',95),(1155,'Valle',95),(1156,'Yoro',95),(1157,'Central and Western',96),(1158,'Eastern',96),(1159,'Islands',96),(1160,'Kowloon City',96),(1161,'Kwai Tsing',96),(1162,'Kwun Tong',96),(1163,'North',96),(1164,'Sai Kung',96),(1165,'Sha Tin',96),(1166,'Sham Shui Po',96),(1167,'Southern',96),(1168,'Tai Po',96),(1169,'Tsuen Wan',96),(1170,'Tuen Mun',96),(1171,'Wanchai',96),(1172,'Wong Tai Sin',96),(1173,'Yau Tsim Mong',96),(1174,'Yuen Long',96),(1175,'Bacs-Kiskun',97),(1176,'Baranya',97),(1177,'Bekes',97),(1178,'Borsod-Abauj-Zemplen',97),(1179,'Budapest',97),(1180,'Csongrad',97),(1181,'Fejer',97),(1182,'Gyor-Moson-Sopron',97),(1183,'Hajdu-Bihar',97),(1184,'Heves',97),(1185,'Jasz-Nagykun-Szolnok',97),(1186,'Komarom-Esztergom',97),(1187,'Nograd',97),(1188,'Pest',97),(1189,'Somogy',97),(1190,'Szabolcs-Szatmar-Bereg',97),(1191,'Tolna',97),(1192,'Vas',97),(1193,'Veszprem',97),(1194,'Zala',97),(1195,'Capital Region',98),(1196,'East',98),(1197,'Northeast',98),(1198,'Northwest',98),(1199,'South',98),(1200,'Southern Peninsula',98),(1201,'West',98),(1202,'Westfjords',98),(1203,'Andaman and Nicobar',99),(1204,'Andhra Pradesh',99),(1205,'Arunachal Pradesh',99),(1206,'Assam',99),(1207,'Bihar',99),(1208,'Chandigarh',99),(1209,'Chhattisgarh',99),(1210,'Dadra and Nagar Haveli',99),(1211,'Daman and Diu',99),(1212,'Delhi',99),(1213,'Goa',99),(1214,'Gujarat',99),(1215,'Haryana',99),(1216,'Himachal Pradesh',99),(1217,'Jammu & Kashmir',99),(1218,'Jharkhand',99),(1219,'Karnataka',99),(1220,'Kashmir',99),(1221,'Kerala',99),(1222,'Laccadives',99),(1223,'Lakshadweep',99),(1224,'Madhya Pradesh',99),(1225,'Maharashtra',99),(1226,'Manipur',99),(1227,'Meghalaya',99),(1228,'Mizoram',99),(1229,'Nagaland',99),(1230,'NCT',99),(1231,'Odisha',99),(1232,'Orissa',99),(1233,'Pondicherry',99),(1234,'Punjab',99),(1235,'Rajasthan',99),(1236,'Sikkim',99),(1237,'Tamil Nadu',99),(1238,'Telangana',99),(1239,'Tripura',99),(1240,'Uttar Pradesh',99),(1241,'Uttarakhand',99),(1242,'Uttaranchal',99),(1243,'West Bengal',99),(1244,'Aceh',100),(1245,'Bali',100),(1246,'Bangka-Belitung Islands',100),(1247,'Banten',100),(1248,'Bengkulu',100),(1249,'Central Java',100),(1250,'Central Kalimantan',100),(1251,'Central Sulawesi',100),(1252,'East Java',100),(1253,'East Kalimantan',100),(1254,'East Nusa Tenggara',100),(1255,'Gorontalo',100),(1256,'Jakarta',100),(1257,'Jambi',100),(1258,'Lampung',100),(1259,'Maluku',100),(1260,'North Kalimantan',100),(1261,'North Maluku',100),(1262,'North Sulawesi',100),(1263,'North Sumatra',100),(1264,'Papua',100),(1265,'Riau',100),(1266,'Riau Islands',100),(1267,'South Kalimantan',100),(1268,'South Sulawesi',100),(1269,'South Sumatra',100),(1270,'Southeast Sulawesi',100),(1271,'West Java',100),(1272,'West Kalimantan',100),(1273,'West Nusa Tenggara',100),(1274,'West Papua',100),(1275,'West Sulawesi',100),(1276,'West Sumatra',100),(1277,'Yogyakarta',100),(1278,'Ahmadi va Kohkiluyeh',101),(1279,'Alborz',101),(1280,'Ardabil',101),(1281,'Azarbayjan-e Gharbi',101),(1282,'Azarbayjan-e Sharqi',101),(1283,'Bushehr',101),(1284,'Chaharmahal and Bakhtiari',101),(1285,'Chaharmahal va Bakhtiari',101),(1286,'East Azerbaijan',101),(1287,'Esfahan',101),(1288,'Fars',101),(1289,'Gilan',101),(1290,'Golestan',101),(1291,'Gorgan',101),(1292,'Hamadan',101),(1293,'Hormozgan',101),(1294,'Ilam',101),(1295,'Isfahan',101),(1296,'Kerman',101),(1297,'Kermanshah',101),(1298,'Khorasan-e Jonubi',101),(1299,'Khorasan-e Junoubi',101),(1300,'Khorasan-e Razavi',101),(1301,'Khorasan-e Shomali',101),(1302,'Khuzestan',101),(1303,'Kohgiluyeh va Buyer Ahmad',101),(1304,'Kordestan',101),(1305,'Lorestan',101),(1306,'Markazi',101),(1307,'Mazandaran',101),(1308,'Qazvin',101),(1309,'Qom',101),(1310,'Razavi Khorasan',101),(1311,'Semnan',101),(1312,'Sistan and Baluchestan',101),(1313,'Sistan va Baluchestan',101),(1314,'Tehran',101),(1315,'Yazd',101),(1316,'Zanjan',101),(1317,'Al Muthanna',102),(1318,'Al Qadisiyah',102),(1319,'An Najaf',102),(1320,'Anbar',102),(1321,'Arbil',102),(1322,'As Sulaymaniyah',102),(1323,'Babil',102),(1324,'Baghdad',102),(1325,'Basra',102),(1326,'Dahuk',102),(1327,'Dhi Qar',102),(1328,'Diyala',102),(1329,'Kirkuk',102),(1330,'Maysan',102),(1331,'Muhafazat',102),(1332,'Ninawa',102),(1333,'Salah ad Din',102),(1334,'Wasit',102),(1335,'Connaught',103),(1336,'Leinster',103),(1337,'Munster',103),(1338,'Ulster',103),(1339,'Andreas',104),(1340,'Arbory',104),(1341,'Ballaugh',104),(1342,'Braddan',104),(1343,'Bride',104),(1344,'Castletown',104),(1345,'Douglas',104),(1346,'German',104),(1347,'Jurby',104),(1348,'Laxey',104),(1349,'Lezayre',104),(1350,'Lonan',104),(1351,'Malew',104),(1352,'Marown',104),(1353,'Maughold',104),(1354,'Michael',104),(1355,'Onchan',104),(1356,'Patrick',104),(1357,'Peel',104),(1358,'Port Erin',104),(1359,'Port St Mary',104),(1360,'Ramsey',104),(1361,'Rushen',104),(1362,'Santon',104),(1363,'Central District',105),(1364,'Gaza Strip',105),(1365,'Haifa',105),(1366,'Israel',105),(1367,'Jerusalem',105),(1368,'Northern District',105),(1369,'Southern District',105),(1370,'Tel Aviv',105),(1371,'West Bank',105),(1372,'Abruzzo',106),(1373,'Agrigento',106),(1374,'Alessandria',106),(1375,'Ancona',106),(1376,'Aosta',106),(1377,'Aosta Valley',106),(1378,'Apulia',106),(1379,'Arezzo',106),(1380,'Ascoli Piceno',106),(1381,'Asti',106),(1382,'Avellino',106),(1383,'Bari',106),(1384,'Basilicate',106),(1385,'Belluno',106),(1386,'Benevento',106),(1387,'Bergamo',106),(1388,'Biella',106),(1389,'Bologna',106),(1390,'Bolzano',106),(1391,'Brescia',106),(1392,'Brindisi',106),(1393,'Cagliari',106),(1394,'Calabria',106),(1395,'Caltanissetta',106),(1396,'Campania',106),(1397,'Campobasso',106),(1398,'Carbonia-Iglesias',106),(1399,'Caserta',106),(1400,'Catania',106),(1401,'Catanzaro',106),(1402,'Chieti',106),(1403,'Como',106),(1404,'Cosenza',106),(1405,'Cremona',106),(1406,'Crotone',106),(1407,'Cuneo',106),(1408,'Emilia-Romagna',106),(1409,'Enna',106),(1410,'Ferrara',106),(1411,'Firenze',106),(1412,'Foggia',106),(1413,'Forli-Cesena',106),(1414,'Friuli Venezia Giulia',106),(1415,'Frosinone',106),(1416,'Genova',106),(1417,'Gorizia',106),(1418,'Grosseto',106),(1419,'Imperia',106),(1420,'Isernia',106),(1421,'L\'Aquila',106),(1422,'La Spezia',106),(1423,'Latina',106),(1424,'Latium',106),(1425,'Lecce',106),(1426,'Lecco',106),(1427,'Liguria',106),(1428,'Livorno',106),(1429,'Lodi',106),(1430,'Lombardy',106),(1431,'Lucca',106),(1432,'Macerata',106),(1433,'Mantova',106),(1434,'Massa-Carrara',106),(1435,'Matera',106),(1436,'Medio Campidano',106),(1437,'Messina',106),(1438,'Milano',106),(1439,'Modena',106),(1440,'Molise',106),(1441,'Napoli',106),(1442,'Novara',106),(1443,'Nuoro',106),(1444,'Ogliastra',106),(1445,'Olbia-Tempio',106),(1446,'Oristano',106),(1447,'Padova',106),(1448,'Palermo',106),(1449,'Parma',106),(1450,'Pavia',106),(1451,'Perugia',106),(1452,'Pesaro e Urbino',106),(1453,'Pescara',106),(1454,'Piacenza',106),(1455,'Piedmont',106),(1456,'Pisa',106),(1457,'Pistoia',106),(1458,'Pordenone',106),(1459,'Potenza',106),(1460,'Prato',106),(1461,'Ragusa',106),(1462,'Ravenna',106),(1463,'Reggio Calabria',106),(1464,'Reggio Emilia',106),(1465,'Rieti',106),(1466,'Rimini',106),(1467,'Roma',106),(1468,'Rovigo',106),(1469,'Salerno',106),(1470,'Sardinia',106),(1471,'Sassari',106),(1472,'Savona',106),(1473,'Sicily',106),(1474,'Siena',106),(1475,'Siracusa',106),(1476,'Sondrio',106),(1477,'Taranto',106),(1478,'Teramo',106),(1479,'Terni',106),(1480,'The Marches',106),(1481,'Torino',106),(1482,'Trapani',106),(1483,'Trentino-Alto Adige',106),(1484,'Trento',106),(1485,'Treviso',106),(1486,'Trieste',106),(1487,'Tuscany',106),(1488,'Udine',106),(1489,'Umbria',106),(1490,'Varese',106),(1491,'Veneto',106),(1492,'Venezia',106),(1493,'Verbano Cusio Ossola',106),(1494,'Vercelli',106),(1495,'Verona',106),(1496,'Vibo Valenzia',106),(1497,'Vicenza',106),(1498,'Viterbo',106),(1499,'Abidjan',107),(1500,'Bas-Sassandra',107),(1501,'Comoe',107),(1502,'Denguele',107),(1503,'Goh-Djiboua',107),(1504,'Lacs',107),(1505,'Lagunes',107),(1506,'Montagnes',107),(1507,'Sassandra-Marahoue',107),(1508,'Savanes',107),(1509,'Vallee du Bandama',107),(1510,'Woroba',107),(1511,'Yamoussoukro Autonomous District',107),(1512,'Zanzan',107),(1513,'Clarendon',108),(1514,'Hanover',108),(1515,'Kingston',108),(1516,'Manchester',108),(1517,'Portland',108),(1518,'Saint Catherine',108),(1519,'St Ann',108),(1520,'St. Andrew',108),(1521,'St. Elizabeth',108),(1522,'St. James',108),(1523,'St. Mary',108),(1524,'St. Thomas',108),(1525,'Trelawny',108),(1526,'Westmoreland',108),(1527,'Aichi',109),(1528,'Akita',109),(1529,'Aomori',109),(1530,'Chiba',109),(1531,'Ehime',109),(1532,'Fukui',109),(1533,'Fukuoka',109),(1534,'Fukushima',109),(1535,'Gifu',109),(1536,'Gunma',109),(1537,'Hiroshima',109),(1538,'Hokkaido',109),(1539,'Hyogo',109),(1540,'Ibaraki',109),(1541,'Ishikawa',109),(1542,'Iwate',109),(1543,'Kagawa',109),(1544,'Kagoshima',109),(1545,'Kanagawa',109),(1546,'Kochi',109),(1547,'Kumamoto',109),(1548,'Kyoto',109),(1549,'Mie',109),(1550,'Miyagi',109),(1551,'Miyazaki',109),(1552,'Nagano',109),(1553,'Nagasaki',109),(1554,'Nara',109),(1555,'Niigata',109),(1556,'Oita',109),(1557,'Okayama',109),(1558,'Okinawa',109),(1559,'Osaka',109),(1560,'Saga',109),(1561,'Saitama',109),(1562,'Shiga',109),(1563,'Shimane',109),(1564,'Shizuoka',109),(1565,'Tochigi',109),(1566,'Tokushima',109),(1567,'Tokyo',109),(1568,'Tottori',109),(1569,'Toyama',109),(1570,'Wakayama',109),(1571,'Yamagata',109),(1572,'Yamaguchi',109),(1573,'Yamanashi',109),(1574,'Grouville',110),(1575,'St Clement',110),(1576,'St Helier',110),(1577,'St John',110),(1578,'St Lawrence',110),(1579,'St Martin',110),(1580,'St Mary',110),(1581,'St Ouen',110),(1582,'St Peter',110),(1583,'St Saviour',110),(1584,'St. Brelade',110),(1585,'Trinity',110),(1586,'Ajlun',111),(1587,'Amman',111),(1588,'Aqaba',111),(1589,'Balqa',111),(1590,'Irbid',111),(1591,'Jerash',111),(1592,'Karak',111),(1593,'Ma\'an',111),(1594,'Madaba',111),(1595,'Mafraq',111),(1596,'Tafielah',111),(1597,'Zarqa',111),(1598,'Almaty Oblysy',112),(1599,'Almaty Qalasy',112),(1600,'Aqmola',112),(1601,'Aqtoebe',112),(1602,'Astana Qalasy',112),(1603,'Atyrau',112),(1604,'Baikonur',112),(1605,'Batys Qazaqstan',112),(1606,'East Kazakhstan',112),(1607,'Mangghystau',112),(1608,'Ongtustik Qazaqstan',112),(1609,'Pavlodar',112),(1610,'Qaraghandy',112),(1611,'Qostanay',112),(1612,'Qyzylorda',112),(1613,'Soltustik Qazaqstan',112),(1614,'Zhambyl',112),(1615,'Baringo',113),(1616,'Bomet',113),(1617,'Bungoma',113),(1618,'Busia',113),(1619,'Embu',113),(1620,'Garissa',113),(1621,'Homa Bay',113),(1622,'Isiolo',113),(1623,'Kajiado',113),(1624,'Kakamega',113),(1625,'Kericho',113),(1626,'Kiambu',113),(1627,'Kilifi',113),(1628,'Kirinyaga',113),(1629,'Kisii',113),(1630,'Kisumu',113),(1631,'Kitui',113),(1632,'Kwale',113),(1633,'Laikipia',113),(1634,'Lamu',113),(1635,'Machakos',113),(1636,'Makueni',113),(1637,'Mandera',113),(1638,'Marakwet',113),(1639,'Marsabit',113),(1640,'Meru',113),(1641,'Migori',113),(1642,'Mombasa',113),(1643,'Murang\'a',113),(1644,'Nairobi Area',113),(1645,'Nakuru',113),(1646,'Nandi',113),(1647,'Narok',113),(1648,'Nithi Tharaka',113),(1649,'Nyamira',113),(1650,'Nyandarua',113),(1651,'Nyeri',113),(1652,'Samburu',113),(1653,'Siaya',113),(1654,'Taita Taveta',113),(1655,'Tana River',113),(1656,'Trans Nzoia',113),(1657,'Turkana',113),(1658,'Uasin Gishu',113),(1659,'Vihiga',113),(1660,'Wajir',113),(1661,'West Pokot',113),(1662,'Gilbert Islands',114),(1663,'Line Islands',114),(1664,'Phoenix Islands',114),(1665,'Ferizaj',115),(1666,'Gjakova',115),(1667,'Gjilan',115),(1668,'Mitrovica',115),(1669,'Pec',115),(1670,'Pristina',115),(1671,'Prizren',115),(1672,'Al Ahmadi',116),(1673,'Al Asimah',116),(1674,'Al Farwaniyah',116),(1675,'Hawalli',116),(1676,'Mubarak al Kabir',116),(1677,'Muhafazat al',116),(1678,'Batken',117),(1679,'Bishkek',117),(1680,'Chuy',117),(1681,'Issyk-Kul',117),(1682,'Jalal-Abad',117),(1683,'Naryn',117),(1684,'Osh',117),(1685,'Osh City',117),(1686,'Talas',117),(1687,'Attapu',118),(1688,'Bokeo',118),(1689,'Bolikhamsai',118),(1690,'Champasak',118),(1691,'Houaphan',118),(1692,'Khammouan',118),(1693,'Louangphabang',118),(1694,'Loungnamtha',118),(1695,'Oudomxai',118),(1696,'Phongsali',118),(1697,'Salavan',118),(1698,'Savannahkhet',118),(1699,'Vientiane',118),(1700,'Vientiane Prefecture',118),(1701,'Xaisomboun',118),(1702,'Xekong',118),(1703,'Xiagnabouli',118),(1704,'Xiangkhoang',118),(1705,'Adazi',119),(1706,'Aglona',119),(1707,'Aizkraukles Rajons',119),(1708,'Aizpute',119),(1709,'Akniste',119),(1710,'Aloja',119),(1711,'Alsunga',119),(1712,'Aluksnes Novads',119),(1713,'Amatas',119),(1714,'Apes',119),(1715,'Auces',119),(1716,'Babite',119),(1717,'Baldone',119),(1718,'Baltinava',119),(1719,'Balvu Rajons',119),(1720,'Bauskas Rajons',119),(1721,'Beverina',119),(1722,'Broceni',119),(1723,'Burtnieki',119),(1724,'Carnikava',119),(1725,'Cesu Rajons',119),(1726,'Cesvaine',119),(1727,'Cibla',119),(1728,'Dagda',119),(1729,'Daugavpils',119),(1730,'Daugavpils municipality',119),(1731,'Dobeles Rajons',119),(1732,'Dundaga',119),(1733,'Durbe',119),(1734,'Engure',119),(1735,'Ergli',119),(1736,'Garkalne',119),(1737,'Grobina',119),(1738,'Gulbenes Rajons',119),(1739,'Ikskile',119),(1740,'Ilukste',119),(1741,'Incukalns',119),(1742,'Jaunjelgava',119),(1743,'Jaunpiebalga',119),(1744,'Jaunpils',119),(1745,'Jekabpils',119),(1746,'Jekabpils Municipality',119),(1747,'Jelgava',119),(1748,'Jelgavas Rajons',119),(1749,'Jurmala',119),(1750,'Kandava',119),(1751,'Karsava',119),(1752,'Kegums',119),(1753,'Kekava',119),(1754,'Koceni',119),(1755,'Koknese',119),(1756,'Kraslavas Rajons',119),(1757,'Krimulda',119),(1758,'Krustpils',119),(1759,'Kuldigas Rajons',119),(1760,'Lecava',119),(1761,'Lielvarde',119),(1762,'Liepaja',119),(1763,'Ligatne',119),(1764,'Limbazu Rajons',119),(1765,'Livani',119),(1766,'Lubana',119),(1767,'Ludzas Rajons',119),(1768,'Madonas Rajons',119),(1769,'Malpils',119),(1770,'Marupe',119),(1771,'Mazsalaca',119),(1772,'Mesraga',119),(1773,'Naukseni',119),(1774,'Nereta',119),(1775,'Nica',119),(1776,'Ogre',119),(1777,'Olaine',119),(1778,'Ozolnieku',119),(1779,'Pargaujas',119),(1780,'Pavilostas',119),(1781,'Plavinu',119),(1782,'Preilu Rajons',119),(1783,'Priekule',119),(1784,'Priekuli',119),(1785,'Raunas',119),(1786,'Rezekne',119),(1787,'Rezeknes Rajons',119),(1788,'Riebinu',119),(1789,'Riga',119),(1790,'Rojas',119),(1791,'Ropazu',119),(1792,'Rucavas',119),(1793,'Rugaju',119),(1794,'Rujienas',119),(1795,'Rundales',119),(1796,'Salacgrivas',119),(1797,'Salas',119),(1798,'Salaspils',119),(1799,'Saldus Rajons',119),(1800,'Saulkrastu',119),(1801,'Seja',119),(1802,'Sigulda',119),(1803,'Skriveri',119),(1804,'Skrunda',119),(1805,'Smiltene',119),(1806,'Stopini',119),(1807,'Strenci',119),(1808,'Talsu Rajons',119),(1809,'Tervete',119),(1810,'Tukuma Rajons',119),(1811,'Vainode',119),(1812,'Valkas Rajons',119),(1813,'Valmieras Rajons',119),(1814,'Varaklani',119),(1815,'Varkava',119),(1816,'Vecpiebalga',119),(1817,'Vecumnieki',119),(1818,'Ventspils',119),(1819,'Ventspils Rajons',119),(1820,'Viesite',119),(1821,'Vilaka',119),(1822,'Vilanu',119),(1823,'Zilupes',119),(1824,'Aakkar',120),(1825,'Baalbek-Hermel',120),(1826,'Beqaa',120),(1827,'Beyrouth',120),(1828,'Liban-Nord',120),(1829,'Mont-Liban',120),(1830,'Nabatiye',120),(1831,'South Governorate',120),(1832,'Berea',121),(1833,'Butha-Buthe',121),(1834,'Leribe',121),(1835,'Mafeteng',121),(1836,'Maseru',121),(1837,'Mohale\'s Hoek',121),(1838,'Mokhotlong',121),(1839,'Qacha\'s Nek',121),(1840,'Quthing',121),(1841,'Thaba-Tseka',121),(1842,'Bomi',122),(1843,'Bong',122),(1844,'Gbarpolu',122),(1845,'Grand Bassa',122),(1846,'Grand Cape Mount',122),(1847,'Grand Gedeh',122),(1848,'Grand Kru',122),(1849,'Lofa',122),(1850,'Margibi',122),(1851,'Maryland',122),(1852,'Montserrado',122),(1853,'Nimba',122),(1854,'River Cess',122),(1855,'River Gee',122),(1856,'Sinoe',122),(1857,'Al Jabal al Akhdar',123),(1858,'Al Jufrah',123),(1859,'Al Kufrah',123),(1860,'Al Marj',123),(1861,'Al Marqab',123),(1862,'An Nuqat al Khams',123),(1863,'Az Zawiyah',123),(1864,'Banghazi',123),(1865,'Darnah',123),(1866,'Jabal al Gharbi',123),(1867,'Misratah',123),(1868,'Murzuq',123),(1869,'Sabha',123),(1870,'Sha`biyat al Butnan',123),(1871,'Sha`biyat al Jafarah',123),(1872,'Sha`biyat al Wahat',123),(1873,'Sha`biyat Ghat',123),(1874,'Sha`biyat Nalut',123),(1875,'Sha`biyat Wadi al Hayat',123),(1876,'Surt',123),(1877,'Tripoli',123),(1878,'Wadi ash Shati\'',123),(1879,'Balzers',124),(1880,'Eschen',124),(1881,'Gamprin',124),(1882,'Mauren',124),(1883,'Planken',124),(1884,'Ruggell',124),(1885,'Schaan',124),(1886,'Schellenberg',124),(1887,'Triesen',124),(1888,'Triesenberg',124),(1889,'Vaduz',124),(1890,'Alytus',125),(1891,'Kaunas',125),(1892,'Klaipeda County',125),(1893,'Marijampole County',125),(1894,'Panevezys',125),(1895,'Siauliai',125),(1896,'Taurage County',125),(1897,'Telsiai',125),(1898,'Utena',125),(1899,'Vilnius',125),(1900,'Diekirch',126),(1901,'Grevenmacher',126),(1902,'Luxembourg',126),(1903,'Aerodrom',128),(1904,'Aracinovo',128),(1905,'Berovo',128),(1906,'Bitola',128),(1907,'Bogdanci',128),(1908,'Bogovinje',128),(1909,'Bosilovo',128),(1910,'Brvenica',128),(1911,'Butel',128),(1912,'Cair',128),(1913,'Caska Municipality',128),(1914,'Centar',128),(1915,'Centar Zupa',128),(1916,'Cesinovo-Oblesevo',128),(1917,'Cucer-Sandevo',128),(1918,'Debar',128),(1919,'Debarca',128),(1920,'Delcevo',128),(1921,'Demir Hisar',128),(1922,'Demir Kapija',128),(1923,'Dojran',128),(1924,'Dolneni',128),(1925,'Drugovo',128),(1926,'Gazi Baba',128),(1927,'Gevgelija',128),(1928,'Gostivar',128),(1929,'Gradsko',128),(1930,'Ilinden',128),(1931,'Jegunovce',128),(1932,'Karbinci',128),(1933,'Karpos',128),(1934,'Kavadarci',128),(1935,'Kicevo',128),(1936,'Kisela Voda',128),(1937,'Kocani',128),(1938,'Konce',128),(1939,'Kratovo',128),(1940,'Kriva Palanka',128),(1941,'Krivogastani',128),(1942,'Krusevo',128),(1943,'Kumanovo',128),(1944,'Lozovo',128),(1945,'Makedonska Kamenica',128),(1946,'Makedonski Brod',128),(1947,'Mavrovo and Rostusa',128),(1948,'Mogila',128),(1949,'Negotino',128),(1950,'Novaci',128),(1951,'Novo Selo',128),(1952,'Ohrid',128),(1953,'Opstina Gjorce Petrov',128),(1954,'Opstina Lipkovo',128),(1955,'Opstina Rankovce',128),(1956,'Oslomej',128),(1957,'Pehcevo',128),(1958,'Petrovec',128),(1959,'Plasnica',128),(1960,'Prilep',128),(1961,'Probistip',128),(1962,'Radovis',128),(1963,'Resen',128),(1964,'Rosoman',128),(1965,'Saraj',128),(1966,'Sopiste',128),(1967,'Staro Nagoricane',128),(1968,'Stip',128),(1969,'Struga',128),(1970,'Strumica',128),(1971,'Studenicani',128),(1972,'Suto Orizari',128),(1973,'Sveti Nikole',128),(1974,'Tearce',128),(1975,'Tetovo',128),(1976,'Valandovo',128),(1977,'Vasilevo',128),(1978,'Veles',128),(1979,'Vevcani',128),(1980,'Vinica',128),(1981,'Vranestica',128),(1982,'Vrapciste',128),(1983,'Zajas',128),(1984,'Zelenikovo',128),(1985,'Zelino',128),(1986,'Zrnovci',128),(1987,'Alaotra Mangoro',129),(1988,'Amoron\'i Mania',129),(1989,'Analamanga',129),(1990,'Analanjirofo',129),(1991,'Androy',129),(1992,'Anosy',129),(1993,'Atsimo-Andrefana',129),(1994,'Atsimo-Atsinanana',129),(1995,'Atsinanana',129),(1996,'Betsiboka',129),(1997,'Boeny',129),(1998,'Bongolava',129),(1999,'Diana',129),(2000,'Ihorombe',129),(2001,'Itasy',129),(2002,'Melaky',129),(2003,'Menabe',129),(2004,'Sava',129),(2005,'Sofia',129),(2006,'Upper Matsiatra',129),(2007,'Vakinankaratra',129),(2008,'Vatovavy Fitovinany',129),(2009,'Central Region',130),(2010,'Northern Region',130),(2011,'Southern Region',130),(2012,'Johor',131),(2013,'Kedah',131),(2014,'Kelantan',131),(2015,'Kuala Lumpur',131),(2016,'Labuan',131),(2017,'Melaka',131),(2018,'Negeri Sembilan',131),(2019,'Pahang',131),(2020,'Penang',131),(2021,'Perak',131),(2022,'Perlis',131),(2023,'Putrajaya',131),(2024,'Sabah',131),(2025,'Sarawak',131),(2026,'Selangor',131),(2027,'Terengganu',131),(2028,'Baa Atholhu',132),(2029,'Dhaalu Atholhu',132),(2030,'Faafu Atholhu',132),(2031,'Gaafu Alifu Atholhu',132),(2032,'Gaafu Dhaalu Atholhu',132),(2033,'Gnyaviyani Atoll',132),(2034,'Haa Alifu Atholhu',132),(2035,'Haa Dhaalu Atholhu',132),(2036,'Kaafu Atoll',132),(2037,'Laamu',132),(2038,'Lhaviyani Atholhu',132),(2039,'Meemu Atholhu',132),(2040,'Noonu Atoll',132),(2041,'Northern Ari Atoll',132),(2042,'Raa Atoll',132),(2043,'Seenu',132),(2044,'Shaviyani Atholhu',132),(2045,'Southern Ari Atoll',132),(2046,'Thaa Atholhu',132),(2047,'Vaavu Atholhu',132),(2048,'Bamako',133),(2049,'Gao',133),(2050,'Kayes',133),(2051,'Kidal',133),(2052,'Koulikoro',133),(2053,'Mopti',133),(2054,'Segou',133),(2055,'Sikasso',133),(2056,'Tombouctou',133),(2057,'Attard',134),(2058,'Balzan',134),(2059,'Birkirkara',134),(2060,'Birzebbuga',134),(2061,'Bormla',134),(2062,'Dingli',134),(2063,'Ghajnsielem',134),(2064,'Hal Gharghur',134),(2065,'Hal Ghaxaq',134),(2066,'Haz-Zabbar',134),(2067,'Haz-Zebbug',134),(2068,'Il-Belt Valletta',134),(2069,'Il-Birgu',134),(2070,'Il-Fgura',134),(2071,'Il-Fontana',134),(2072,'Il-Furjana',134),(2073,'Il-Gudja',134),(2074,'Il-Gzira',134),(2075,'Il-Hamrun',134),(2076,'Il-Kalkara',134),(2077,'Il-Marsa',134),(2078,'Il-Mellieha',134),(2079,'Il-Mosta',134),(2080,'Il-Munxar',134),(2081,'Il-Qala',134),(2082,'Il-Qrendi',134),(2083,'In-Nadur',134),(2084,'In-Naxxar',134),(2085,'Ir-Rabat',134),(2086,'Is-Siggiewi',134),(2087,'Is-Swieqi',134),(2088,'Ix-Xaghra',134),(2089,'Ix-Xewkija',134),(2090,'Ix-Xghajra',134),(2091,'Iz-Zebbug',134),(2092,'Iz-Zejtun',134),(2093,'Iz-Zurrieq',134),(2094,'Kirkop',134),(2095,'L-Gharb',134),(2096,'L-Ghasri',134),(2097,'L-Iklin',134),(2098,'L-Imdina',134),(2099,'L-Imgarr',134),(2100,'L-Imqabba',134),(2101,'L-Imsida',134),(2102,'L-Imtarfa',134),(2103,'L-Isla',134),(2104,'Lija',134),(2105,'Luqa',134),(2106,'Marsaskala',134),(2107,'Marsaxlokk',134),(2108,'Paola',134),(2109,'Pembroke',134),(2110,'Qormi',134),(2111,'Safi',134),(2112,'Saint John',134),(2113,'Saint Julian',134),(2114,'Saint Lawrence',134),(2115,'Saint Lucia',134),(2116,'Saint Paul\'s Bay',134),(2117,'Saint Venera',134),(2118,'Sannat',134),(2119,'Ta\' Kercem',134),(2120,'Ta\' Xbiex',134),(2121,'Tal-Pieta',134),(2122,'Tarxien',134),(2123,'Tas-Sliema',134),(2124,'Victoria',134),(2125,'Ailinginae Atoll',135),(2126,'Ailinglaplap Atoll',135),(2127,'Ailuk Atoll',135),(2128,'Arno Atoll',135),(2129,'Aur Atoll',135),(2130,'Bikar Atoll',135),(2131,'Bikini Atoll',135),(2132,'Bokak Atoll',135),(2133,'Ebon Atoll',135),(2134,'Enewetak Atoll',135),(2135,'Erikub Atoll',135),(2136,'Jabat Island',135),(2137,'Jaluit Atoll',135),(2138,'Jemo Island',135),(2139,'Kili Island',135),(2140,'Kwajalein Atoll',135),(2141,'Lae Atoll',135),(2142,'Lib Island',135),(2143,'Likiep Atoll',135),(2144,'Majuro Atoll',135),(2145,'Maloelap Atoll',135),(2146,'Mejit Island',135),(2147,'Mili Atoll',135),(2148,'Namdrik Atoll',135),(2149,'Namu Atoll',135),(2150,'Rongelap Atoll',135),(2151,'Rongrik Atoll',135),(2152,'Taka Atoll',135),(2153,'Ujae Atoll',135),(2154,'Ujelang',135),(2155,'Utrik Atoll',135),(2156,'Wotho Atoll',135),(2157,'Wotje Atoll',135),(2158,'Martinique',136),(2159,'Adrar',137),(2160,'Assaba',137),(2161,'Brakna',137),(2162,'Dakhlet Nouadhibou',137),(2163,'Gorgol',137),(2164,'Guidimaka',137),(2165,'Hodh ech Chargui',137),(2166,'Hodh El Gharbi',137),(2167,'Inchiri',137),(2168,'Nouakchott',137),(2169,'Tagant',137),(2170,'Tiris Zemmour',137),(2171,'Trarza',137),(2172,'Agalega Islands',138),(2173,'Black River',138),(2174,'Cargados Carajos',138),(2175,'Flacq',138),(2176,'Grand Port',138),(2177,'Moka',138),(2178,'Pamplemousses',138),(2179,'Plaines Wilhems',138),(2180,'Port Louis',138),(2181,'Riviere du Rempart',138),(2182,'Rodrigues',138),(2183,'Savanne',138),(2184,'Aguascalientes',140),(2185,'Baja California',140),(2186,'Baja California Sur',140),(2187,'Campeche',140),(2188,'Chiapas',140),(2189,'Chihuahua',140),(2190,'Ciudad de MÃ©xico',140),(2191,'Coahuila de Zaragoza',140),(2192,'Colima',140),(2193,'Durango',140),(2194,'Guanajuato',140),(2195,'Guerrero',140),(2196,'Hidalgo',140),(2197,'Jalisco',140),(2198,'MÃ©xico',140),(2199,'MichoacÃ¡n de Ocampo',140),(2200,'Morelos',140),(2201,'Nayarit',140),(2202,'Nuevo LeÃ³n',140),(2203,'Oaxaca',140),(2204,'Puebla',140),(2205,'QuerÃ©taro',140),(2206,'Quintana Roo',140),(2207,'San Luis PotosÃ­',140),(2208,'Sinaloa',140),(2209,'Sonora',140),(2210,'Tabasco',140),(2211,'Tamaulipas',140),(2212,'Tlaxcala',140),(2213,'Veracruz de Ignacio de la Llave',140),(2214,'YucatÃ¡n',140),(2215,'Zacatecas',140),(2216,'Chuuk',141),(2217,'Kosrae',141),(2218,'Pohnpei',141),(2219,'Yap',141),(2220,'Anenii Noi',142),(2221,'Balti',142),(2222,'Basarabeasca',142),(2223,'Bender Municipality',142),(2224,'Briceni',142),(2225,'Cahul',142),(2226,'Calarasi',142),(2227,'Cantemir',142),(2228,'Causeni',142),(2229,'Chisinau Municipality',142),(2230,'Cimislia',142),(2231,'Criuleni',142),(2232,'Donduseni',142),(2233,'Drochia',142),(2234,'Dubasari',142),(2235,'Falesti',142),(2236,'Floresti',142),(2237,'Gagauzia',142),(2238,'Glodeni',142),(2239,'Hincesti',142),(2240,'Laloveni',142),(2241,'Leova',142),(2242,'Nisporeni',142),(2243,'Orhei',142),(2244,'Raionul Edinet',142),(2245,'Raionul Ocnita',142),(2246,'Raionul Soroca',142),(2247,'Rezina',142),(2248,'Riscani',142),(2249,'Singerei',142),(2250,'Soldanesti',142),(2251,'Stefan-Voda',142),(2252,'Stinga Nistrului',142),(2253,'Straseni',142),(2254,'Taraclia',142),(2255,'Telenesti',142),(2256,'Ungheni',142),(2257,'de',143),(2258,'Arhangay',144),(2259,'Bayan-Olgiy',144),(2260,'Bayanhongor',144),(2261,'Bulgan',144),(2262,'Central Aimak',144),(2263,'Darhan Uul',144),(2264,'Dzabkhan',144),(2265,'East Aimak',144),(2266,'East Gobi Aymag',144),(2267,'Govi-Altay',144),(2268,'Govi-Sumber',144),(2269,'Hentiy',144),(2270,'Hovd',144),(2271,'Hovsgol',144),(2272,'Middle Govi',144),(2273,'OEmnoegovi',144),(2274,'OEvoerhangay',144),(2275,'Orhon',144),(2276,'Selenge',144),(2277,'Suhbaatar',144),(2278,'Ulaanbaatar',144),(2279,'Uvs',144),(2280,'Andrijevica',145),(2281,'Bar',145),(2282,'Berane',145),(2283,'Bijelo Polje',145),(2284,'Budva',145),(2285,'Cetinje',145),(2286,'Danilovgrad',145),(2287,'Herceg Novi',145),(2288,'Kotor',145),(2289,'Mojkovac',145),(2290,'Opstina Kolasin',145),(2291,'Opstina Niksic',145),(2292,'Opstina Plav',145),(2293,'Opstina Pluzine',145),(2294,'Opstina Rozaje',145),(2295,'Opstina Savnik',145),(2296,'Opstina Zabljak',145),(2297,'Pljevlja',145),(2298,'Podgorica',145),(2299,'Tivat',145),(2300,'Ulcinj',145),(2301,'Saint Anthony',146),(2302,'Saint Georges',146),(2303,'Saint Peter',146),(2304,'Beni Mellal-Khenifra',147),(2305,'Casablanca-Settat',147),(2306,'Dakhla-Oued Ed-Dahab',147),(2307,'Draa-Tafilalet',147),(2308,'Fes-Meknes',147),(2309,'Guelmim-Oued Noun',147),(2310,'Laayoune-Sakia El Hamra',147),(2311,'Marrakesh-Safi',147),(2312,'Oriental',147),(2313,'Rabat-Sale-Kenitra',147),(2314,'Souss-Massa',147),(2315,'Tanger-Tetouan-Al Hoceima',147),(2316,'Cabo Delgado',148),(2317,'Gaza',148),(2318,'Inhambane',148),(2319,'Manica',148),(2320,'Maputo',148),(2321,'Maputo City',148),(2322,'Nampula',148),(2323,'Niassa',148),(2324,'Sofala',148),(2325,'Tete',148),(2326,'Zambezia',148),(2327,'Ayeyarwady',149),(2328,'Bago',149),(2329,'Chin',149),(2330,'Kachin',149),(2331,'Kayah',149),(2332,'Kayin',149),(2333,'Magway',149),(2334,'Mandalay',149),(2335,'Mon',149),(2336,'Nay Pyi Taw',149),(2337,'Rakhine',149),(2338,'Sagain',149),(2339,'Shan',149),(2340,'Tanintharyi',149),(2341,'Yangon',149),(2342,'Erongo',150),(2343,'Hardap',150),(2344,'Karas',150),(2345,'Kavango East',150),(2346,'Kavango West',150),(2347,'Khomas',150),(2348,'Kunene',150),(2349,'Ohangwena',150),(2350,'Omaheke',150),(2351,'Omusati',150),(2352,'Oshana',150),(2353,'Oshikoto',150),(2354,'Otjozondjupa',150),(2355,'Zambezi',150),(2356,'Aiwo',151),(2357,'Anabar',151),(2358,'Anetan',151),(2359,'Anibare',151),(2360,'Baiti',151),(2361,'Boe',151),(2362,'Buada',151),(2363,'Denigomodu',151),(2364,'Ewa',151),(2365,'Ijuw',151),(2366,'Meneng',151),(2367,'Nibok',151),(2368,'Uaboe',151),(2369,'Yaren',151),(2370,'11205571',152),(2371,'Central Region',152),(2372,'Eastern Region',152),(2373,'Far Western',152),(2374,'Mid Western',152),(2375,'Western Region',152),(2376,'Drenthe',153),(2377,'Flevoland',153),(2378,'Friesland',153),(2379,'Gelderland',153),(2380,'Groningen',153),(2381,'Limburg',153),(2382,'North Brabant',153),(2383,'North Holland',153),(2384,'Overijssel',153),(2385,'South Holland',153),(2386,'Utrecht',153),(2387,'Zeeland',153),(2388,'Bonaire',154),(2389,'Curacao',154),(2390,'St. Maarten',154),(2391,'Loyalty Islands',155),(2392,'North Province',155),(2393,'South Province',155),(2394,'Auckland',156),(2395,'Bay of Plenty',156),(2396,'Canterbury',156),(2397,'Chatham Islands',156),(2398,'Gisborne',156),(2399,'Hawke\'s Bay',156),(2400,'Manawatu-Wanganui',156),(2401,'Marlborough',156),(2402,'Nelson',156),(2403,'Northland',156),(2404,'Otago',156),(2405,'Southland',156),(2406,'Taranaki',156),(2407,'Tasman',156),(2408,'Waikato',156),(2409,'Wellington',156),(2410,'West Coast',156),(2411,'Atlantico Norte (RAAN)',157),(2412,'Atlantico Sur',157),(2413,'Boaco',157),(2414,'Carazo',157),(2415,'Chinandega',157),(2416,'Chontales',157),(2417,'Esteli',157),(2418,'Granada',157),(2419,'Jinotega',157),(2420,'Leon',157),(2421,'Madriz',157),(2422,'Managua',157),(2423,'Masaya',157),(2424,'Matagalpa',157),(2425,'Nueva Segovia',157),(2426,'Rio San Juan',157),(2427,'Rivas',157),(2428,'Agadez',158),(2429,'Diffa',158),(2430,'Dosso',158),(2431,'Maradi',158),(2432,'Niamey',158),(2433,'Tahoua',158),(2434,'Tillaberi',158),(2435,'Zinder',158),(2436,'Abia',159),(2437,'Adamawa',159),(2438,'Akwa Ibom',159),(2439,'Anambra',159),(2440,'Bauchi',159),(2441,'Bayelsa',159),(2442,'Benue',159),(2443,'Borno',159),(2444,'Cross River',159),(2445,'Delta',159),(2446,'Ebonyi',159),(2447,'Edo',159),(2448,'Ekiti',159),(2449,'Enugu',159),(2450,'FCT',159),(2451,'Gombe',159),(2452,'Imo',159),(2453,'Jigawa',159),(2454,'Kaduna',159),(2455,'Kano',159),(2456,'Katsina',159),(2457,'Kebbi',159),(2458,'Kogi',159),(2459,'Kwara',159),(2460,'Lagos',159),(2461,'Nassarawa',159),(2462,'Niger',159),(2463,'Ogun',159),(2464,'Ondo',159),(2465,'Osun',159),(2466,'Oyo',159),(2467,'Plateau',159),(2468,'Rivers',159),(2469,'Sokoto',159),(2470,'Taraba',159),(2471,'Yobe',159),(2472,'Zamfara',159),(2473,'Chagang-do',162),(2474,'Hamgyong-bukto',162),(2475,'Hamgyong-namdo',162),(2476,'Hwanghae-bukto',162),(2477,'Hwanghae-namdo',162),(2478,'Kangwon-do',162),(2479,'P\'yongan-bukto',162),(2480,'P\'yongan-namdo',162),(2481,'Pyongyang',162),(2482,'Rason',162),(2483,'Yanggang-do',162),(2484,'Northern Islands',163),(2485,'Rota',163),(2486,'Saipan',163),(2487,'Tinian',163),(2488,'Akershus',164),(2489,'Aust-Agder',164),(2490,'Buskerud',164),(2491,'Finnmark',164),(2492,'Hedmark',164),(2493,'Hordaland',164),(2494,'More og Romsdal',164),(2495,'Nord-Trondelag',164),(2496,'Nordland',164),(2497,'Oppland',164),(2498,'Oslo',164),(2499,'Ostfold',164),(2500,'Rogaland',164),(2501,'Sogn og Fjordane',164),(2502,'Sor-Trondelag',164),(2503,'Telemark',164),(2504,'Troms',164),(2505,'Vest-Agder',164),(2506,'Vestfold',164),(2507,'Ad Dakhiliyah',165),(2508,'Al Batinah North',165),(2509,'Al Batinah South',165),(2510,'Al Buraimi',165),(2511,'Al Wusta',165),(2512,'Az Zahirah',165),(2513,'Dhofar',165),(2514,'Musandam',165),(2515,'Muscat',165),(2516,'Northeastern Governorate',165),(2517,'Southeastern Governorate',165),(2518,'Azad Kashmir',166),(2519,'Balochistan',166),(2520,'FATA',166),(2521,'Gilgit-Baltistan',166),(2522,'Islamabad',166),(2523,'Khyber Pakhtunkhwa',166),(2524,'Punjab',166),(2525,'Sindh',166),(2526,'Aimeliik',167),(2527,'Airai',167),(2528,'Angaur',167),(2529,'Hatohobei',167),(2530,'Kayangel',167),(2531,'Koror',167),(2532,'Melekeok',167),(2533,'Ngaraard',167),(2534,'Ngarchelong',167),(2535,'Ngardmau',167),(2536,'Ngaremlengui',167),(2537,'Ngatpang',167),(2538,'Ngchesar',167),(2539,'Ngiwal',167),(2540,'Peleliu',167),(2541,'Sonsorol',167),(2542,'Gaza Strip',168),(2543,'West Bank',168),(2544,'Bocas del Toro',169),(2545,'Chiriqui',169),(2546,'Cocle',169),(2547,'Colon',169),(2548,'Darien',169),(2549,'Embera',169),(2550,'Guna Yala',169),(2551,'Herrera',169),(2552,'Los Santos',169),(2553,'Ngoebe-Bugle',169),(2554,'Panama',169),(2555,'Panama Oeste',169),(2556,'Veraguas',169),(2557,'Bougainville',170),(2558,'Central Province',170),(2559,'Chimbu',170),(2560,'East New Britain',170),(2561,'East Sepik',170),(2562,'Eastern Highlands',170),(2563,'Enga',170),(2564,'Gulf',170),(2565,'Hela',170),(2566,'Jiwaka',170),(2567,'Madang',170),(2568,'Manus',170),(2569,'Milne Bay',170),(2570,'Morobe',170),(2571,'National Capital',170),(2572,'New Ireland',170),(2573,'Northern Province',170),(2574,'Sandaun',170),(2575,'Southern Highlands',170),(2576,'West New Britain',170),(2577,'Western Highlands',170),(2578,'Western Province',170),(2579,'Alto Paraguay',171),(2580,'Alto Parana',171),(2581,'Amambay',171),(2582,'Asuncion',171),(2583,'Boqueron',171),(2584,'Caaguazu',171),(2585,'Caazapa',171),(2586,'Canindeyu',171),(2587,'Central',171),(2588,'Concepcion',171),(2589,'Cordillera',171),(2590,'Guaira',171),(2591,'Itapua',171),(2592,'Misiones',171),(2593,'Neembucu',171),(2594,'Paraguari',171),(2595,'Presidente Hayes',171),(2596,'San Pedro',171),(2597,'Amazonas',172),(2598,'Ancash',172),(2599,'Apurimac',172),(2600,'Arequipa',172),(2601,'Ayacucho',172),(2602,'Cajamarca',172),(2603,'Callao',172),(2604,'Cusco',172),(2605,'Huancavelica',172),(2606,'Huanuco',172),(2607,'Ica',172),(2608,'Junin',172),(2609,'La Libertad',172),(2610,'Lambayeque',172),(2611,'Lima',172),(2612,'Lima region',172),(2613,'Loreto',172),(2614,'Madre de Dios',172),(2615,'Moquegua',172),(2616,'Pasco',172),(2617,'Piura',172),(2618,'Puno',172),(2619,'San Martin',172),(2620,'Tacna',172),(2621,'Tumbes',172),(2622,'Ucayali',172),(2623,'ARMM',173),(2624,'Bicol',173),(2625,'Cagayan Valley',173),(2626,'Calabarzon',173),(2627,'Caraga',173),(2628,'Central Luzon',173),(2629,'Central Visayas',173),(2630,'Cordillera',173),(2631,'Davao',173),(2632,'Eastern Visayas',173),(2633,'Ilocos',173),(2634,'Metro Manila',173),(2635,'Mimaropa',173),(2636,'Negros Island Region',173),(2637,'Northern Mindanao',173),(2638,'Soccsksargen',173),(2639,'Western Visayas',173),(2640,'Zamboanga Peninsula',173),(2641,'Greater Poland',175),(2642,'Kujawsko-Pomorskie',175),(2643,'Lesser Poland Voivodeship',175),(2644,'Lodz Voivodeship',175),(2645,'Lower Silesia',175),(2646,'Lublin',175),(2647,'Lubusz',175),(2648,'Mazovia',175),(2649,'Opole Voivodeship',175),(2650,'Podlasie',175),(2651,'Pomerania',175),(2652,'Silesia',175),(2653,'Subcarpathian Voivodeship',175),(2654,'Swietokrzyskie',175),(2655,'Warmia-Masuria',175),(2656,'West Pomerania',175),(2657,'Aveiro',176),(2658,'Azores',176),(2659,'Beja',176),(2660,'Braga',176),(2661,'Braganca',176),(2662,'Castelo Branco',176),(2663,'Coimbra',176),(2664,'Evora',176),(2665,'Faro',176),(2666,'Guarda',176),(2667,'Leiria',176),(2668,'Lisbon',176),(2669,'Madeira',176),(2670,'Portalegre',176),(2671,'Porto',176),(2672,'Santarem',176),(2673,'Setubal',176),(2674,'Viana do Castelo',176),(2675,'Vila Real',176),(2676,'Viseu',176),(2677,'Adjuntas',177),(2678,'Aguada',177),(2679,'Aguadilla',177),(2680,'Aguas Buenas',177),(2681,'Aibonito',177),(2682,'Anasco',177),(2683,'Arecibo',177),(2684,'Arroyo',177),(2685,'Barceloneta',177),(2686,'Barranquitas',177),(2687,'Bayamon',177),(2688,'Cabo Rojo',177),(2689,'Caguas',177),(2690,'Camuy',177),(2691,'Canovanas',177),(2692,'Carolina',177),(2693,'Catano',177),(2694,'Cayey',177),(2695,'Ceiba',177),(2696,'Ciales',177),(2697,'Cidra',177),(2698,'Coamo',177),(2699,'Comerio',177),(2700,'Corozal',177),(2701,'Culebra',177),(2702,'Dorado',177),(2703,'Fajardo',177),(2704,'Florida',177),(2705,'Guanica',177),(2706,'Guayama',177),(2707,'Guayanilla',177),(2708,'Guaynabo',177),(2709,'Gurabo',177),(2710,'Hatillo',177),(2711,'Hormigueros',177),(2712,'Humacao',177),(2713,'Isabela',177),(2714,'Juana Diaz',177),(2715,'Lajas',177),(2716,'Lares',177),(2717,'Las Marias',177),(2718,'Las Piedras',177),(2719,'Loiza',177),(2720,'Luquillo',177),(2721,'Manati',177),(2722,'Maricao',177),(2723,'Maunabo',177),(2724,'Mayaguez',177),(2725,'Moca',177),(2726,'Morovis',177),(2727,'Municipio de Jayuya',177),(2728,'Municipio de Juncos',177),(2729,'Naguabo',177),(2730,'Naranjito',177),(2731,'Orocovis',177),(2732,'Patillas',177),(2733,'Penuelas',177),(2734,'Ponce',177),(2735,'Quebradillas',177),(2736,'Rincon',177),(2737,'Rio Grande',177),(2738,'Sabana Grande',177),(2739,'Salinas',177),(2740,'San German',177),(2741,'San Juan',177),(2742,'San Lorenzo',177),(2743,'San Sebastian',177),(2744,'Santa Isabel Municipio',177),(2745,'Toa Alta',177),(2746,'Toa Baja',177),(2747,'Trujillo Alto',177),(2748,'Utuado',177),(2749,'Vega Alta',177),(2750,'Vega Baja',177),(2751,'Vieques',177),(2752,'Villalba',177),(2753,'Yabucoa',177),(2754,'Yauco',177),(2755,'Al Khawr',178),(2756,'Al Wakrah',178),(2757,'Baladiyat ad Dawhah',178),(2758,'Baladiyat ar Rayyan',178),(2759,'Baladiyat az Za`ayin',178),(2760,'Baladiyat Umm Salal',178),(2761,'Madinat ash Shamal',178),(2762,'Reunion',179),(2763,'Alba',180),(2764,'Arad',180),(2765,'Arges',180),(2766,'Bacau',180),(2767,'Bihor',180),(2768,'Bistrita-Nasaud',180),(2769,'Botosani',180),(2770,'Braila',180),(2771,'Brasov',180),(2772,'Bucuresti',180),(2773,'Buzau',180),(2774,'Calarasi',180),(2775,'Caras Severin',180),(2776,'Caras-Severin',180),(2777,'Cluj',180),(2778,'Constanta',180),(2779,'Covasna',180),(2780,'Dambovita',180),(2781,'Dolj',180),(2782,'Galati',180),(2783,'Giurgiu',180),(2784,'Gorj',180),(2785,'Harghita',180),(2786,'Hargita',180),(2787,'Hunedoara',180),(2788,'Ialomita',180),(2789,'Iasi',180),(2790,'Ilfov',180),(2791,'Maramures',180),(2792,'Mehedinti',180),(2793,'Mures',180),(2794,'Neamt',180),(2795,'Olt',180),(2796,'Prahova',180),(2797,'Salaj',180),(2798,'Satu Mare',180),(2799,'Sibiu',180),(2800,'Suceava',180),(2801,'Teleorman',180),(2802,'Timis',180),(2803,'Tulcea',180),(2804,'Valcea',180),(2805,'Vaslui',180),(2806,'Vrancea',180),(2807,'Adygeya',181),(2808,'Altai',181),(2809,'Altai Krai',181),(2810,'Amur',181),(2811,'Arkhangelskaya',181),(2812,'Astrakhan',181),(2813,'Bashkortostan',181),(2814,'Belgorod',181),(2815,'Brjansk',181),(2816,'Chechnya',181),(2817,'Chelyabinsk',181),(2818,'Chukot',181),(2819,'Chukotka',181),(2820,'Chuvashia',181),(2821,'Dagestan',181),(2822,'Ingushetiya',181),(2823,'Irkutsk',181),(2824,'Ivanovo',181),(2825,'Jaroslavl',181),(2826,'Jewish Autonomous Oblast',181),(2827,'Kabardino-Balkariya',181),(2828,'Kaliningrad',181),(2829,'Kalmykiya',181),(2830,'Kaluga',181),(2831,'Kamtsjatka',181),(2832,'Karachayevo-Cherkesiya',181),(2833,'Karelia',181),(2834,'Kemerovo',181),(2835,'Khabarovsk',181),(2836,'Khakasiya',181),(2837,'Khanty-Mansia',181),(2838,'Kirov',181),(2839,'Komi',181),(2840,'Kostroma',181),(2841,'Krasnodarskiy',181),(2842,'Krasnoyarskiy',181),(2843,'Kurgan',181),(2844,'Kursk',181),(2845,'Leningradskaya Oblast\'',181),(2846,'Lipetsk',181),(2847,'Magadan',181),(2848,'Mariy-El',181),(2849,'Mordoviya',181),(2850,'Moscow',181),(2851,'Moscow Oblast',181),(2852,'Murmansk',181),(2853,'Nenets',181),(2854,'Nizjnij Novgorod',181),(2855,'North Ossetia',181),(2856,'Novgorod',181),(2857,'Novosibirsk',181),(2858,'Omsk',181),(2859,'Orenburg',181),(2860,'Orjol',181),(2861,'Penza',181),(2862,'Perm',181),(2863,'Primorskiy',181),(2864,'Pskov',181),(2865,'Republic of Tyva',181),(2866,'Respublika Buryatiya',181),(2867,'Rjazan',181),(2868,'Rostov',181),(2869,'Sakhalin',181),(2870,'Samara',181),(2871,'Saratov',181),(2872,'Smolensk',181),(2873,'St.-Petersburg',181),(2874,'Stavropol\'skiy',181),(2875,'Sverdlovsk',181),(2876,'Tambov',181),(2877,'Tatarstan',181),(2878,'Tomsk',181),(2879,'Transbaikal Territory',181),(2880,'Tula',181),(2881,'Tverskaya',181),(2882,'Tyumenskaya',181),(2883,'Udmurtiya',181),(2884,'Ulyanovsk',181),(2885,'Vladimir',181),(2886,'Volgograd',181),(2887,'Vologda',181),(2888,'Voronezj',181),(2889,'Yamalo-Nenets',181),(2890,'Eastern Province',182),(2891,'Kigali',182),(2892,'Northern Province',182),(2893,'Southern Province',182),(2894,'Western Province',182),(2895,'Christ Church Nichola Town',183),(2896,'Middle Island',183),(2897,'Saint Anne Sandy Point',183),(2898,'Saint George Basseterre',183),(2899,'Saint George Gingerland',183),(2900,'Saint James Windwa',183),(2901,'Saint John Capesterre',183),(2902,'Saint John Figtree',183),(2903,'Saint Mary Cayon',183),(2904,'Saint Paul Capesterre',183),(2905,'Saint Paul Charlestown',183),(2906,'Saint Peter Basseterre',183),(2907,'Saint Thomas Lowland',183),(2908,'Trinity Palmetto Point',183),(2909,'Anse-la-Raye',184),(2910,'Canaries',184),(2911,'Castries',184),(2912,'Choiseul',184),(2913,'Dennery',184),(2914,'Gros-Islet',184),(2915,'Laborie',184),(2916,'Micoud',184),(2917,'Soufriere',184),(2918,'Vieux-Fort',184),(2919,'Charlotte',185),(2920,'Grenadines',185),(2921,'Saint Andrew',185),(2922,'Saint David',185),(2923,'Saint George',185),(2924,'Saint Patrick',185),(2925,'A\'ana',186),(2926,'Aiga-i-le-Tai',186),(2927,'Atua',186),(2928,'Fa`asaleleaga',186),(2929,'Gagaifomauga',186),(2930,'Gaga`emauga',186),(2931,'Palauli',186),(2932,'Satupa`itea',186),(2933,'Tuamasaga',186),(2934,'Vaisigano',186),(2935,'Va`a-o-Fonoti',186),(2936,'Acquaviva',187),(2937,'Borgo Maggiore',187),(2938,'Chiesanuova',187),(2939,'Domagnano',187),(2940,'Faetano',187),(2941,'Fiorentino',187),(2942,'Montegiardino',187),(2943,'San Marino',187),(2944,'Serravalle',187),(2945,'Principe',188),(2946,'Sao Tome Island',188),(2947,'\'Asir',189),(2948,'Al Bahah',189),(2949,'Al Jawf',189),(2950,'Al Madinah al Munawwarah',189),(2951,'Al-Qassim',189),(2952,'Ar Riyad',189),(2953,'Eastern Province',189),(2954,'Hai\'l',189),(2955,'Jizan',189),(2956,'Makkah',189),(2957,'Najran',189),(2958,'Northern Borders',189),(2959,'Tabuk',189),(2960,'Dakar',190),(2961,'Diourbel',190),(2962,'Fatick',190),(2963,'Kaffrine',190),(2964,'Kaolack',190),(2965,'Kedougou',190),(2966,'Kolda',190),(2967,'Louga',190),(2968,'Matam',190),(2969,'Saint-Louis',190),(2970,'Sedhiou',190),(2971,'Tambacounda',190),(2972,'Thies',190),(2973,'Ziguinchor',190),(2974,'Central Serbia',191),(2975,'Vojvodina',191),(2976,'Anse Boileau',192),(2977,'Anse Etoile',192),(2978,'Anse Royale',192),(2979,'Anse-aux-Pins',192),(2980,'Au Cap',192),(2981,'Baie Lazare',192),(2982,'Baie Sainte Anne',192),(2983,'Beau Vallon',192),(2984,'Bel Air',192),(2985,'Bel Ombre',192),(2986,'Cascade',192),(2987,'English River',192),(2988,'Glacis',192),(2989,'Grand Anse Mahe',192),(2990,'Grand Anse Praslin',192),(2991,'Inner Islands',192),(2992,'Les Mamelles',192),(2993,'Mont Buxton',192),(2994,'Mont Fleuri',192),(2995,'Plaisance',192),(2996,'Pointe Larue',192),(2997,'Port Glaud',192),(2998,'Roche Caiman',192),(2999,'Saint Louis',192),(3000,'Takamaka',192),(3001,'Eastern Province',193),(3002,'Northern Province',193),(3003,'Southern Province',193),(3004,'Western Area',193),(3005,'Central Singapore',194),(3006,'North East',194),(3007,'North West',194),(3008,'South East',194),(3009,'South West',194),(3010,'Banskobystricky',195),(3011,'Bratislavsky',195),(3012,'Kosicky',195),(3013,'Nitriansky',195),(3014,'Presovsky',195),(3015,'Trenciansky',195),(3016,'Trnavsky',195),(3017,'Zilinsky',195),(3018,'Ajdovscina',196),(3019,'Apace',196),(3020,'Beltinci',196),(3021,'Benedikt',196),(3022,'Bistrica ob Sotli',196),(3023,'Bled',196),(3024,'Bloke',196),(3025,'Bohinj',196),(3026,'Borovnica',196),(3027,'Bovec',196),(3028,'Braslovce',196),(3029,'Brda',196),(3030,'Brezice',196),(3031,'Brezovica',196),(3032,'Cankova',196),(3033,'Celje',196),(3034,'Cerklje na Gorenjskem',196),(3035,'Cerknica',196),(3036,'Cerkno',196),(3037,'Cerkvenjak',196),(3038,'Cirkulane',196),(3039,'Comune di Ancarano',196),(3040,'Crensovci',196),(3041,'Crna na Koroskem',196),(3042,'Crnomelj',196),(3043,'Destrnik',196),(3044,'Divaca',196),(3045,'Dobje',196),(3046,'Dobrepolje',196),(3047,'Dobrna',196),(3048,'Dobrova-Horjul-Polhov Gradec',196),(3049,'Dobrovnik-Dobronak',196),(3050,'Dol pri Ljubljani',196),(3051,'Dolenjske Toplice',196),(3052,'Domzale',196),(3053,'Dornava',196),(3054,'Dravograd',196),(3055,'Duplek',196),(3056,'Gorenja Vas-Poljane',196),(3057,'Gorisnica',196),(3058,'Gorje',196),(3059,'Gornja Radgona',196),(3060,'Gornji Grad',196),(3061,'Gornji Petrovci',196),(3062,'Grad',196),(3063,'Grosuplje',196),(3064,'Hajdina',196),(3065,'Hoce-Slivnica',196),(3066,'Hodos-Hodos',196),(3067,'Horjul',196),(3068,'Hrastnik',196),(3069,'Hrpelje-Kozina',196),(3070,'Idrija',196),(3071,'Ig',196),(3072,'Ilirska Bistrica',196),(3073,'Ivancna Gorica',196),(3074,'Izola-Isola',196),(3075,'Jesenice',196),(3076,'Jezersko',196),(3077,'Jursinci',196),(3078,'Kamnik',196),(3079,'Kanal',196),(3080,'Kidricevo',196),(3081,'Kobarid',196),(3082,'Kobilje',196),(3083,'Kocevje',196),(3084,'Komen',196),(3085,'Komenda',196),(3086,'Koper-Capodistria',196),(3087,'Kostanjevica na Krki',196),(3088,'Kostel',196),(3089,'Kozje',196),(3090,'Kranj',196),(3091,'Kranjska Gora',196),(3092,'Krizevci',196),(3093,'Krsko',196),(3094,'Kungota',196),(3095,'Kuzma',196),(3096,'Lasko',196),(3097,'Lenart',196),(3098,'Lendava-Lendva',196),(3099,'Litija',196),(3100,'Ljubljana',196),(3101,'Ljubno',196),(3102,'Ljutomer',196),(3103,'Log-Dragomer',196),(3104,'Logatec',196),(3105,'Loska Dolina',196),(3106,'Loski Potok',196),(3107,'Lovrenc na Pohorju',196),(3108,'Luce',196),(3109,'Lukovica',196),(3110,'Majsperk',196),(3111,'Makole',196),(3112,'Maribor',196),(3113,'Markovci',196),(3114,'Medvode',196),(3115,'Menges',196),(3116,'Metlika',196),(3117,'Mezica',196),(3118,'Miklavz na Dravskem Polju',196),(3119,'Miren-Kostanjevica',196),(3120,'Mirna',196),(3121,'Mirna Pec',196),(3122,'Mislinja',196),(3123,'Mokronog-Trebelno',196),(3124,'Moravce',196),(3125,'Moravske Toplice',196),(3126,'Mozirje',196),(3127,'Murska Sobota',196),(3128,'Muta',196),(3129,'Naklo',196),(3130,'Nazarje',196),(3131,'Nova Gorica',196),(3132,'Novo Mesto',196),(3133,'Odranci',196),(3134,'Oplotnica',196),(3135,'Ormoz',196),(3136,'Osilnica',196),(3137,'Pesnica',196),(3138,'Piran-Pirano',196),(3139,'Pivka',196),(3140,'Podcetrtek',196),(3141,'Podlehnik',196),(3142,'Podvelka',196),(3143,'Poljcane',196),(3144,'Polzela',196),(3145,'Postojna',196),(3146,'Prebold',196),(3147,'Preddvor',196),(3148,'Prevalje',196),(3149,'Ptuj',196),(3150,'Puconci',196),(3151,'Race-Fram',196),(3152,'Radece',196),(3153,'Radenci',196),(3154,'Radlje ob Dravi',196),(3155,'Radovljica',196),(3156,'Ravne na Koroskem',196),(3157,'Razkrizje',196),(3158,'Recica ob Savinji',196),(3159,'Rence-Vogrsko',196),(3160,'Ribnica',196),(3161,'Ribnica na Pohorju',196),(3162,'Rogaska Slatina',196),(3163,'Rogasovci',196),(3164,'Rogatec',196),(3165,'Ruse',196),(3166,'Salovci',196),(3167,'Selnica ob Dravi',196),(3168,'Semic',196),(3169,'Sempeter-Vrtojba',196),(3170,'Sencur',196),(3171,'Sentilj',196),(3172,'Sentjernej',196),(3173,'Sentjur',196),(3174,'Sentrupert',196),(3175,'Sevnica',196),(3176,'Sezana',196),(3177,'Skocjan',196),(3178,'Skofja Loka',196),(3179,'Skofljica',196),(3180,'Slovenj Gradec',196),(3181,'Slovenska Bistrica',196),(3182,'Slovenska Konjice',196),(3183,'Smarje pri Jelsah',196),(3184,'Smarjeske Toplice',196),(3185,'Smartno ob Paki',196),(3186,'Smartno pri Litiji',196),(3187,'Sodrazica',196),(3188,'Solcava',196),(3189,'Sostanj',196),(3190,'Sredisce ob Dravi',196),(3191,'Starse',196),(3192,'Store',196),(3193,'Straza',196),(3194,'Sv. Trojica v Slov. Goricah',196),(3195,'Sveta Ana',196),(3196,'Sveti Andraz v Slovenskih Goricah',196),(3197,'Sveti Jurij',196),(3198,'Sveti Jurij v Slovenskih Goricah',196),(3199,'Sveti Tomaz',196),(3200,'Tabor',196),(3201,'Tisina',196),(3202,'Tolmin',196),(3203,'Trbovlje',196),(3204,'Trebnje',196),(3205,'Trnovska Vas',196),(3206,'Trzic',196),(3207,'Trzin',196),(3208,'Turnisce',196),(3209,'Velenje',196),(3210,'Velika Polana',196),(3211,'Velike Lasce',196),(3212,'Verzej',196),(3213,'Videm',196),(3214,'Vipava',196),(3215,'Vitanje',196),(3216,'Vodice',196),(3217,'Vojnik',196),(3218,'Vransko',196),(3219,'Vrhnika',196),(3220,'Vuzenica',196),(3221,'Zagorje ob Savi',196),(3222,'Zalec',196),(3223,'Zavrc',196),(3224,'Zelezniki',196),(3225,'Zetale',196),(3226,'Ziri',196),(3227,'Zirovnica',196),(3228,'Zrece',196),(3229,'Zuzemberk',196),(3230,'Central Province',197),(3231,'Choiseul',197),(3232,'Guadalcanal',197),(3233,'Honiara',197),(3234,'Isabel',197),(3235,'Makira',197),(3236,'Malaita',197),(3237,'Rennell and Bellona',197),(3238,'Temotu',197),(3239,'Western Province',197),(3240,'Awdal',198),(3241,'Bakool',198),(3242,'Banaadir',198),(3243,'Bari',198),(3244,'Bay',198),(3245,'Galguduud',198),(3246,'Gedo',198),(3247,'Hiiraan',198),(3248,'Lower Juba',198),(3249,'Lower Shabeelle',198),(3250,'Middle Juba',198),(3251,'Middle Shabele',198),(3252,'Mudug',198),(3253,'Nugaal',198),(3254,'Sanaag',198),(3255,'Sool',198),(3256,'Togdheer',198),(3257,'Woqooyi Galbeed',198),(3258,'Eastern Cape',199),(3259,'Gauteng',199),(3260,'KwaZulu-Natal',199),(3261,'Limpopo',199),(3262,'Mpumalanga',199),(3263,'North-West',199),(3264,'Northern Cape',199),(3265,'Orange Free State',199),(3266,'Western Cape',199),(3267,'Busan',201),(3268,'Chungcheongbuk-do',201),(3269,'Chungcheongnam-do',201),(3270,'Daegu',201),(3271,'Daejeon',201),(3272,'Gangwon-do',201),(3273,'Gwangju',201),(3274,'Gyeonggi-do',201),(3275,'Gyeongsangbuk-do',201),(3276,'Gyeongsangnam-do',201),(3277,'Incheon',201),(3278,'Jeju-do',201),(3279,'Jeollabuk-do',201),(3280,'Jeollanam-do',201),(3281,'Sejong-si',201),(3282,'Seoul',201),(3283,'Ulsan',201),(3284,'A Coruna',202),(3285,'Alava',202),(3286,'Albacete',202),(3287,'Alicante',202),(3288,'Almeria',202),(3289,'Andalusia',202),(3290,'Aragon',202),(3291,'Asturias',202),(3292,'Avila',202),(3293,'Badajoz',202),(3294,'Baleares',202),(3295,'Balearic Islands',202),(3296,'Barcelona',202),(3297,'Basque Country',202),(3298,'Burgos',202),(3299,'Caceres',202),(3300,'Cadiz',202),(3301,'Canary Islands',202),(3302,'Cantabria',202),(3303,'Castellon',202),(3304,'Castille and Leon',202),(3305,'Castille-La Mancha',202),(3306,'Catalonia',202),(3307,'Ceuta',202),(3308,'Ciudad Real',202),(3309,'Cordoba',202),(3310,'Cuenca',202),(3311,'Extremadura',202),(3312,'Galicia',202),(3313,'Girona',202),(3314,'Granada',202),(3315,'Guadalajara',202),(3316,'Guipuzcoa',202),(3317,'Huelva',202),(3318,'Huesca',202),(3319,'Jaen',202),(3320,'La Rioja',202),(3321,'Las Palmas',202),(3322,'Leon',202),(3323,'Lleida',202),(3324,'Lugo',202),(3325,'Madrid',202),(3326,'Malaga',202),(3327,'Melilla',202),(3328,'Murcia',202),(3329,'Navarra',202),(3330,'Navarre',202),(3331,'Ourense',202),(3332,'Palencia',202),(3333,'Pontevedra',202),(3334,'Salamanca',202),(3335,'Santa Cruz de Tenerife',202),(3336,'Segovia',202),(3337,'Sevilla',202),(3338,'Soria',202),(3339,'Tarragona',202),(3340,'Teruel',202),(3341,'Toledo',202),(3342,'Valencia',202),(3343,'Valladolid',202),(3344,'Vizcaya',202),(3345,'Zamora',202),(3346,'Zaragoza',202),(3347,'Central',203),(3348,'Eastern Province',203),(3349,'North Central',203),(3350,'North Western',203),(3351,'Northern Province',203),(3352,'Sabaragamuwa',203),(3353,'Southern',203),(3354,'Uva',203),(3355,'Western',203),(3356,'Ascension',204),(3357,'Saint Helena',204),(3358,'Tristan da Cunha',204),(3359,'Miquelon-Langlade',205),(3360,'Saint-Pierre',205),(3361,'Al Jazirah',206),(3362,'Al Qadarif',206),(3363,'Blue Nile',206),(3364,'Central Darfur',206),(3365,'Eastern Darfur',206),(3366,'Kassala',206),(3367,'Khartoum',206),(3368,'North Kordofan',206),(3369,'Northern Darfur',206),(3370,'Northern State',206),(3371,'Red Sea',206),(3372,'River Nile',206),(3373,'Sinnar',206),(3374,'Southern Darfur',206),(3375,'Southern Kordofan',206),(3376,'West Kordofan State',206),(3377,'Western Darfur',206),(3378,'White Nile',206),(3379,'Brokopondo',207),(3380,'Commewijne',207),(3381,'Coronie',207),(3382,'Marowijne',207),(3383,'Nickerie',207),(3384,'Para',207),(3385,'Paramaribo',207),(3386,'Saramacca',207),(3387,'Sipaliwini',207),(3388,'Wanica',207),(3389,'Jan Mayen',208),(3390,'Svalbard',208),(3391,'Hhohho',209),(3392,'Lubombo',209),(3393,'Manzini',209),(3394,'Shiselweni',209),(3395,'Blekinge',210),(3396,'Dalarna',210),(3397,'Gaevleborg',210),(3398,'Gotland',210),(3399,'Halland',210),(3400,'Jaemtland',210),(3401,'Joenkoeping',210),(3402,'Kalmar',210),(3403,'Kronoberg',210),(3404,'Norrbotten',210),(3405,'OErebro',210),(3406,'OEstergoetland',210),(3407,'Skane',210),(3408,'Soedermanland',210),(3409,'Stockholm',210),(3410,'Uppsala',210),(3411,'Vaermland',210),(3412,'Vaesterbotten',210),(3413,'Vaesternorrland',210),(3414,'Vaestmanland',210),(3415,'Vaestra Goetaland',210),(3416,'Aargau',211),(3417,'Appenzell Ausserrhoden',211),(3418,'Appenzell Innerrhoden',211),(3419,'Basel-City',211),(3420,'Basel-Landschaft',211),(3421,'Bern',211),(3422,'Fribourg',211),(3423,'Geneva',211),(3424,'Glarus',211),(3425,'Grisons',211),(3426,'Jura',211),(3427,'Lucerne',211),(3428,'Neuchatel',211),(3429,'Nidwalden',211),(3430,'Obwalden',211),(3431,'Saint Gallen',211),(3432,'Schaffhausen',211),(3433,'Schwyz',211),(3434,'Solothurn',211),(3435,'Thurgau',211),(3436,'Ticino',211),(3437,'Uri',211),(3438,'Valais',211),(3439,'Vaud',211),(3440,'Zug',211),(3441,'Zurich',211),(3442,'Al-Hasakah',212),(3443,'Aleppo',212),(3444,'Ar-Raqqah',212),(3445,'As-Suwayda',212),(3446,'Daraa',212),(3447,'Deir ez-Zor',212),(3448,'Dimashq',212),(3449,'Hama',212),(3450,'Homs',212),(3451,'Idlib',212),(3452,'Latakia',212),(3453,'Quneitra',212),(3454,'Rif-dimashq',212),(3455,'Tartus',212),(3456,'Fukien',213),(3457,'Taipei',213),(3458,'Taiwan',213),(3459,'Takao',213),(3460,'Dushanbe',214),(3461,'Gorno-Badakhshan',214),(3462,'Khatlon',214),(3463,'Republican Subordination',214),(3464,'Viloyati Sughd',214),(3465,'Arusha',215),(3466,'Dar es Salaam',215),(3467,'Dodoma',215),(3468,'Geita',215),(3469,'Iringa',215),(3470,'Kagera',215),(3471,'Katavi',215),(3472,'Kigoma',215),(3473,'Kilimanjaro',215),(3474,'Lindi',215),(3475,'Manyara',215),(3476,'Mara',215),(3477,'Mbeya',215),(3478,'Morogoro',215),(3479,'Mtwara',215),(3480,'Mwanza',215),(3481,'Njombe',215),(3482,'Pemba North',215),(3483,'Pemba South',215),(3484,'Pwani',215),(3485,'Rukwa',215),(3486,'Ruvuma',215),(3487,'Shinyanga',215),(3488,'Simiyu',215),(3489,'Singida',215),(3490,'Tabora',215),(3491,'Tanga',215),(3492,'Zanzibar Central/South',215),(3493,'Zanzibar North',215),(3494,'Zanzibar Urban/West',215),(3495,'Amnat Charoen',216),(3496,'Ang Thong',216),(3497,'Bangkok',216),(3498,'Buriram',216),(3499,'Chachoengsao',216),(3500,'Chai Nat',216),(3501,'Chaiyaphum',216),(3502,'Changwat Bueng Kan',216),(3503,'Changwat Nong Bua Lamphu',216),(3504,'Changwat Ubon Ratchathani',216),(3505,'Changwat Udon Thani',216),(3506,'Chanthaburi',216),(3507,'Chiang Mai',216),(3508,'Chiang Rai',216),(3509,'Chon Buri',216),(3510,'Chumphon',216),(3511,'Kalasin',216),(3512,'Kamphaeng Phet',216),(3513,'Kanchanaburi',216),(3514,'Khon Kaen',216),(3515,'Krabi',216),(3516,'Lampang',216),(3517,'Lamphun',216),(3518,'Loei',216),(3519,'Lop Buri',216),(3520,'Mae Hong Son',216),(3521,'Maha Sarakham',216),(3522,'Mukdahan',216),(3523,'Nakhon Nayok',216),(3524,'Nakhon Pathom',216),(3525,'Nakhon Phanom',216),(3526,'Nakhon Ratchasima',216),(3527,'Nakhon Sawan',216),(3528,'Nakhon Si Thammarat',216),(3529,'Nan',216),(3530,'Narathiwat',216),(3531,'Nong Khai',216),(3532,'Nonthaburi',216),(3533,'Pathum Thani',216),(3534,'Pattani',216),(3535,'Phangnga',216),(3536,'Phatthalung',216),(3537,'Phayao',216),(3538,'Phetchabun',216),(3539,'Phetchaburi',216),(3540,'Phichit',216),(3541,'Phitsanulok',216),(3542,'Phra Nakhon Si Ayutthaya',216),(3543,'Phrae',216),(3544,'Phuket',216),(3545,'Prachin Buri',216),(3546,'Prachuap Khiri Khan',216),(3547,'Ranong',216),(3548,'Ratchaburi',216),(3549,'Rayong',216),(3550,'Roi Et',216),(3551,'Sa Kaeo',216),(3552,'Sakon Nakhon',216),(3553,'Samut Prakan',216),(3554,'Samut Sakhon',216),(3555,'Samut Songkhram',216),(3556,'Sara Buri',216),(3557,'Satun',216),(3558,'Sing Buri',216),(3559,'Sisaket',216),(3560,'Songkhla',216),(3561,'Sukhothai',216),(3562,'Suphan Buri',216),(3563,'Surat Thani',216),(3564,'Surin',216),(3565,'Tak',216),(3566,'Trang',216),(3567,'Trat',216),(3568,'Uthai Thani',216),(3569,'Uttaradit',216),(3570,'Yala',216),(3571,'Yasothon',216),(3572,'Centrale',217),(3573,'Kara',217),(3574,'Maritime',217),(3575,'Plateaux',217),(3576,'Savanes',217),(3577,'Atafu',218),(3578,'Fakaofo',218),(3579,'Nukunonu',218),(3580,'\'Eua',219),(3581,'Ha`apai',219),(3582,'Niuas',219),(3583,'Tongatapu',219),(3584,'Vava`u',219),(3585,'Borough of Arima',220),(3586,'Chaguanas',220),(3587,'City of Port of Spain',220),(3588,'City of San Fernando',220),(3589,'Couva-Tabaquite-Talparo',220),(3590,'Diego Martin',220),(3591,'Eastern Tobago',220),(3592,'Mayaro',220),(3593,'Penal/Debe',220),(3594,'Point Fortin',220),(3595,'Princes Town',220),(3596,'San Juan/Laventille',220),(3597,'Sangre Grande',220),(3598,'Siparia',220),(3599,'Tobago',220),(3600,'Tunapuna/Piarco',220),(3601,'Al Mahdiyah',221),(3602,'Al Munastir',221),(3603,'Al Qasrayn',221),(3604,'Al Qayrawan',221),(3605,'Ariana',221),(3606,'Bajah',221),(3607,'Banzart',221),(3608,'Bin \'Arus',221),(3609,'Gafsa',221),(3610,'Jundubah',221),(3611,'Kef',221),(3612,'Madanin',221),(3613,'Manouba',221),(3614,'Nabul',221),(3615,'Qabis',221),(3616,'Qibili',221),(3617,'Safaqis',221),(3618,'Sidi Bu Zayd',221),(3619,'Silyanah',221),(3620,'Susah',221),(3621,'Tataouine',221),(3622,'Tawzar',221),(3623,'Tunis',221),(3624,'Zaghwan',221),(3625,'Adana',222),(3626,'Adiyaman',222),(3627,'Afyonkarahisar',222),(3628,'Agri',222),(3629,'Aksaray',222),(3630,'Amasya',222),(3631,'Ankara',222),(3632,'Antalya',222),(3633,'Ardahan',222),(3634,'Artvin',222),(3635,'Aydin',222),(3636,'Balikesir',222),(3637,'Bartin',222),(3638,'Batman',222),(3639,'Bayburt',222),(3640,'Bilecik',222),(3641,'Bingoel',222),(3642,'Bitlis',222),(3643,'Bolu',222),(3644,'Burdur',222),(3645,'Bursa',222),(3646,'Canakkale',222),(3647,'Cankiri',222),(3648,'Corum',222),(3649,'Denizli',222),(3650,'Diyarbakir',222),(3651,'Duzce',222),(3652,'Edirne',222),(3653,'Elazig',222),(3654,'Erzincan',222),(3655,'Erzurum',222),(3656,'Eskisehir',222),(3657,'Gaziantep',222),(3658,'Giresun',222),(3659,'Gumushane',222),(3660,'Hakkari',222),(3661,'Hatay',222),(3662,'Igdir',222),(3663,'Isparta',222),(3664,'Istanbul',222),(3665,'Izmir',222),(3666,'Kahramanmaras',222),(3667,'Karabuk',222),(3668,'Karaman',222),(3669,'Kars',222),(3670,'Kastamonu',222),(3671,'Kayseri',222),(3672,'Kilis',222),(3673,'Kirikkale',222),(3674,'Kirklareli',222),(3675,'Kirsehir',222),(3676,'Kocaeli',222),(3677,'Konya',222),(3678,'Kuetahya',222),(3679,'Malatya',222),(3680,'Manisa',222),(3681,'Mardin',222),(3682,'Mersin',222),(3683,'Mugla',222),(3684,'Mus',222),(3685,'Nevsehir',222),(3686,'Nigde',222),(3687,'Ordu',222),(3688,'Osmaniye',222),(3689,'Rize',222),(3690,'Sakarya',222),(3691,'Samsun',222),(3692,'Sanliurfa',222),(3693,'Siirt',222),(3694,'Sinop',222),(3695,'Sirnak',222),(3696,'Sivas',222),(3697,'Tekirdag',222),(3698,'Tokat',222),(3699,'Trabzon',222),(3700,'Tunceli',222),(3701,'Usak',222),(3702,'Van',222),(3703,'Yalova',222),(3704,'Yozgat',222),(3705,'Zonguldak',222),(3706,'Ahal',223),(3707,'Ashgabat',223),(3708,'Balkan',223),(3709,'Dasoguz',223),(3710,'Lebap',223),(3711,'Mary',223),(3712,'Funafuti',225),(3713,'Nanumanga',225),(3714,'Nanumea',225),(3715,'Niutao',225),(3716,'Nui',225),(3717,'Nukufetau',225),(3718,'Nukulaelae',225),(3719,'Vaitupu',225),(3720,'Central Region',226),(3721,'Eastern Region',226),(3722,'Northern Region',226),(3723,'Western Region',226),(3724,'Cherkasy',227),(3725,'Chernihiv',227),(3726,'Chernivtsi',227),(3727,'Dnipropetrovsk',227),(3728,'Donetsk',227),(3729,'Gorod Sevastopol',227),(3730,'Ivano-Frankivsk',227),(3731,'Kharkiv',227),(3732,'Kherson',227),(3733,'Khmelnytskyi',227),(3734,'Kiev',227),(3735,'Kirovohrad',227),(3736,'Kyiv City',227),(3737,'Luhansk',227),(3738,'Lviv',227),(3739,'Mykolaiv',227),(3740,'Odessa',227),(3741,'Poltava',227),(3742,'Republic of Crimea',227),(3743,'Rivne',227),(3744,'Sumy',227),(3745,'Ternopil',227),(3746,'Transcarpathia',227),(3747,'Vinnyts\'ka',227),(3748,'Volyn',227),(3749,'Zaporizhia',227),(3750,'Zhytomyr',227),(3751,'Abu Dhabi',228),(3752,'Ajman',228),(3753,'Al Fujayrah',228),(3754,'Al Sharjah',228),(3755,'Dubai',228),(3756,'Ras al-Khaymah',228),(3757,'Umm al-Qaywayn',228),(3758,'England',229),(3759,'Northern Ireland',229),(3760,'Scotland',229),(3761,'Wales',229),(3762,'Alabama',230),(3763,'Alaska',230),(3764,'Arizona',230),(3765,'Arkansas',230),(3766,'California',230),(3767,'Colorado',230),(3768,'Connecticut',230),(3769,'Delaware',230),(3770,'District of Columbia',230),(3771,'Florida',230),(3772,'Georgia',230),(3773,'Hawaii',230),(3774,'Idaho',230),(3775,'Illinois',230),(3776,'Indiana',230),(3777,'Iowa',230),(3778,'Kansas',230),(3779,'Kentucky',230),(3780,'Louisiana',230),(3781,'Maine',230),(3782,'Maryland',230),(3783,'Massachusetts',230),(3784,'Michigan',230),(3785,'Minnesota',230),(3786,'Mississippi',230),(3787,'Missouri',230),(3788,'Montana',230),(3789,'Nebraska',230),(3790,'Nevada',230),(3791,'New Hampshire',230),(3792,'New Jersey',230),(3793,'New Mexico',230),(3794,'New York',230),(3795,'North Carolina',230),(3796,'North Dakota',230),(3797,'Ohio',230),(3798,'Oklahoma',230),(3799,'Oregon',230),(3800,'Pennsylvania',230),(3801,'Puerto Rico',230),(3802,'Rhode Island',230),(3803,'South Carolina',230),(3804,'South Dakota',230),(3805,'Tennessee',230),(3806,'Texas',230),(3807,'Utah',230),(3808,'Vermont',230),(3809,'Virginia',230),(3810,'Washington',230),(3811,'West Virginia',230),(3812,'Wisconsin',230),(3813,'Wyoming',230),(3814,'Baker Island',231),(3815,'Howland Island',231),(3816,'Jarvis Island',231),(3817,'Johnston Atoll',231),(3818,'Kingman Reef',231),(3819,'Midway Islands',231),(3820,'Navassa Island',231),(3821,'Palmyra Atoll',231),(3822,'Wake Island',231),(3823,'Artigas',232),(3824,'Canelones',232),(3825,'Cerro Largo',232),(3826,'Colonia',232),(3827,'Durazno',232),(3828,'Flores',232),(3829,'Florida',232),(3830,'Lavalleja',232),(3831,'Maldonado',232),(3832,'Montevideo',232),(3833,'Paysandu',232),(3834,'Rio Negro',232),(3835,'Rivera',232),(3836,'Rocha',232),(3837,'Salto',232),(3838,'San Jose',232),(3839,'Soriano',232),(3840,'Tacuarembo',232),(3841,'Treinta y Tres',232),(3842,'Andijon',233),(3843,'Bukhara',233),(3844,'Fergana',233),(3845,'Jizzax',233),(3846,'Karakalpakstan',233),(3847,'Namangan',233),(3848,'Navoiy',233),(3849,'Qashqadaryo',233),(3850,'Samarqand',233),(3851,'Sirdaryo',233),(3852,'Surxondaryo',233),(3853,'Toshkent',233),(3854,'Toshkent Shahri',233),(3855,'Xorazm',233),(3856,'Malampa',234),(3857,'Penama',234),(3858,'Sanma',234),(3859,'Shefa',234),(3860,'Tafea',234),(3861,'Torba',234),(3862,'Amazonas',236),(3863,'Anzoategui',236),(3864,'Apure',236),(3865,'Aragua',236),(3866,'Barinas',236),(3867,'Bolivar',236),(3868,'Capital',236),(3869,'Carabobo',236),(3870,'Cojedes',236),(3871,'Delta Amacuro',236),(3872,'Dependencias Federales',236),(3873,'Falcon',236),(3874,'Guarico',236),(3875,'Lara',236),(3876,'Merida',236),(3877,'Miranda',236),(3878,'Monagas',236),(3879,'Nueva Esparta',236),(3880,'Portuguesa',236),(3881,'Sucre',236),(3882,'Tachira',236),(3883,'Trujillo',236),(3884,'Vargas',236),(3885,'Yaracuy',236),(3886,'Zulia',236),(3887,'An Giang',237),(3888,'Ba Ria-Vung Tau',237),(3889,'Bac Giang',237),(3890,'Bac Kan',237),(3891,'Bac Lieu',237),(3892,'Bac Ninh',237),(3893,'Ben Tre',237),(3894,'Binh Dinh',237),(3895,'Binh Duong',237),(3896,'Binh Phuoc',237),(3897,'Binh Thuan',237),(3898,'Ca Mau',237),(3899,'Can Tho',237),(3900,'Cao Bang',237),(3901,'Da Nang',237),(3902,'Dac Lak',237),(3903,'Dak Nong',237),(3904,'Dong Nai',237),(3905,'Dong Thap',237),(3906,'Gia Lai',237),(3907,'Ha Giang',237),(3908,'Ha Nam',237),(3909,'Ha Noi',237),(3910,'Ha Tinh',237),(3911,'Hai Duong',237),(3912,'Hai Phong',237),(3913,'Hau Giang',237),(3914,'Ho Chi Minh City',237),(3915,'Hoa Binh',237),(3916,'Hung Yen',237),(3917,'Khanh Hoa',237),(3918,'Kien Giang',237),(3919,'Kon Tum',237),(3920,'Lai Chau',237),(3921,'Lam Dong',237),(3922,'Lang Son',237),(3923,'Lao Cai',237),(3924,'Long An',237),(3925,'Nam Dinh',237),(3926,'Nghe An',237),(3927,'Ninh Binh',237),(3928,'Ninh Thuan',237),(3929,'Phu Tho',237),(3930,'Phu Yen',237),(3931,'Quang Binh',237),(3932,'Quang Nam',237),(3933,'Quang Ngai',237),(3934,'Quang Ninh',237),(3935,'Quang Tri',237),(3936,'Soc Trang',237),(3937,'Son La',237),(3938,'Tay Ninh',237),(3939,'Thai Binh',237),(3940,'Thai Nguyen',237),(3941,'Thanh Hoa',237),(3942,'Thua Thien-Hue',237),(3943,'Tien Giang',237),(3944,'Tinh Dien Bien',237),(3945,'Tra Vinh',237),(3946,'Tuyen Quang',237),(3947,'Vinh Long',237),(3948,'Vinh Phuc',237),(3949,'Yen Bai',237),(3950,'Saint Croix Island',239),(3951,'Saint John Island',239),(3952,'Saint Thomas Island',239),(3953,'Circonscription d\'Alo',240),(3954,'Circonscription d\'Uvea',240),(3955,'Circonscription de Sigave',240),(3956,'Abyan',242),(3957,'Ad Dali\'',242),(3958,'Aden',242),(3959,'Al Hudaydah',242),(3960,'Al Jawf',242),(3961,'Al Mahrah',242),(3962,'Al Mahwit',242),(3963,'Amanat Al Asimah',242),(3964,'Dhamar',242),(3965,'Hajjah',242),(3966,'Ibb',242),(3967,'Lahij',242),(3968,'Ma\'rib',242),(3969,'Muhafazat al',242),(3970,'Muhafazat Hadramawt',242),(3971,'Omran',242),(3972,'Raymah',242),(3973,'Sa\'dah',242),(3974,'Sanaa',242),(3975,'Shabwah',242),(3976,'Soqatra',242),(3977,'Ta\'izz',242),(3978,'Central',244),(3979,'Copperbelt',244),(3980,'Eastern',244),(3981,'Luapula',244),(3982,'Lusaka',244),(3983,'Muchinga',244),(3984,'North-Western',244),(3985,'Northern',244),(3986,'Southern',244),(3987,'Western',244),(3988,'Bulawayo',245),(3989,'Harare',245),(3990,'Manicaland',245),(3991,'Mashonaland Central',245),(3992,'Mashonaland East',245),(3993,'Mashonaland West',245),(3994,'Masvingo',245),(3995,'Matabeleland North',245),(3996,'Matabeleland South',245),(3997,'Midlands',245);
/*!40000 ALTER TABLE `location_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `media_type` varchar(20) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local',
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `buyer_type` varchar(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_type` varchar(20) DEFAULT 'physical',
  `product_title` varchar(500) DEFAULT NULL,
  `product_slug` varchar(500) DEFAULT NULL,
  `product_unit_price` bigint(20) DEFAULT NULL,
  `product_quantity` tinyint(4) DEFAULT NULL,
  `product_currency` varchar(20) DEFAULT NULL,
  `product_vat_rate` smallint(3) DEFAULT '0',
  `product_vat` bigint(20) DEFAULT '0',
  `product_shipping_cost` bigint(20) DEFAULT NULL,
  `product_total_price` bigint(20) DEFAULT NULL,
  `variation_option_ids` varchar(255) DEFAULT NULL,
  `commission_rate` tinyint(4) DEFAULT NULL,
  `order_status` varchar(50) DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT '0',
  `shipping_tracking_number` varchar(255) DEFAULT NULL,
  `shipping_tracking_url` varchar(500) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_seller_id` (`seller_id`),
  KEY `idx_buyer_id` (`buyer_id`),
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_shipping`
--

DROP TABLE IF EXISTS `order_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_shipping` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `shipping_first_name` varchar(255) DEFAULT NULL,
  `shipping_last_name` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `shipping_phone_number` varchar(255) DEFAULT NULL,
  `shipping_address_1` varchar(255) DEFAULT NULL,
  `shipping_address_2` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(255) DEFAULT NULL,
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_zip_code` varchar(20) DEFAULT NULL,
  `billing_first_name` varchar(255) DEFAULT NULL,
  `billing_last_name` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone_number` varchar(255) DEFAULT NULL,
  `billing_address_1` varchar(255) DEFAULT NULL,
  `billing_address_2` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_zip_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_shipping`
--

LOCK TABLES `order_shipping` WRITE;
/*!40000 ALTER TABLE `order_shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `order_number` bigint(20) DEFAULT NULL,
  `buyer_id` int(11) NOT NULL,
  `buyer_type` varchar(20) DEFAULT NULL,
  `price_subtotal` varchar(50) DEFAULT NULL,
  `price_vat` bigint(20) DEFAULT '0',
  `price_shipping` varchar(50) DEFAULT NULL,
  `price_total` varchar(50) DEFAULT NULL,
  `price_currency` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_order_number` (`order_number`),
  KEY `idx_buyer_id` (`buyer_id`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `page_content` longtext,
  `page_order` int(11) DEFAULT '1',
  `visibility` tinyint(1) DEFAULT '1',
  `title_active` tinyint(1) DEFAULT '1',
  `location` varchar(50) DEFAULT 'information',
  `is_custom` tinyint(1) NOT NULL DEFAULT '1',
  `page_default_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,1,'Terms & Conditions','terms-conditions','Terms & Conditions Page','Terms, Conditions, Page',NULL,1,1,1,'information',0,'terms_conditions','2020-05-11 23:22:02'),(2,1,'Contact','contact','Contact Page','Contact, Page',NULL,1,1,1,'top_menu',0,'contact','2020-05-11 23:23:05'),(3,1,'Blog','blog','Blog Page','Blog, Page',NULL,1,1,1,'quick_links',0,'blog','2020-05-11 23:24:01');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `default_product_currency` varchar(30) DEFAULT 'USD',
  `allow_all_currencies_for_classied` tinyint(1) DEFAULT '1',
  `promoted_products_payment_currency` varchar(30) DEFAULT 'USD',
  `currency_format` varchar(30) DEFAULT 'us',
  `currency_symbol_format` varchar(30) DEFAULT 'left',
  `space_between_money_currency` tinyint(1) DEFAULT '0',
  `paypal_enabled` tinyint(1) DEFAULT '0',
  `paypal_mode` varchar(30) DEFAULT 'live',
  `paypal_client_id` varchar(500) DEFAULT NULL,
  `paypal_secret_key` varchar(500) DEFAULT NULL,
  `stripe_enabled` tinyint(1) DEFAULT '0',
  `stripe_publishable_key` varchar(500) DEFAULT NULL,
  `stripe_secret_key` varchar(500) DEFAULT NULL,
  `paystack_enabled` tinyint(1) DEFAULT '0',
  `paystack_secret_key` varchar(500) DEFAULT NULL,
  `paystack_public_key` varchar(500) DEFAULT NULL,
  `razorpay_enabled` tinyint(1) DEFAULT '0',
  `razorpay_key_id` varchar(500) DEFAULT NULL,
  `razorpay_key_secret` varchar(500) DEFAULT NULL,
  `pagseguro_enabled` tinyint(1) DEFAULT '0',
  `pagseguro_mode` varchar(20) DEFAULT 'production',
  `pagseguro_email` varchar(255) DEFAULT NULL,
  `pagseguro_token` varchar(500) DEFAULT NULL,
  `iyzico_enabled` tinyint(1) DEFAULT '0',
  `iyzico_mode` varchar(30) DEFAULT 'live',
  `iyzico_type` varchar(50) DEFAULT 'checkout_form',
  `iyzico_api_key` varchar(500) DEFAULT NULL,
  `iyzico_secret_key` varchar(500) DEFAULT NULL,
  `iyzico_submerchant_key` varchar(255) DEFAULT NULL,
  `bank_transfer_enabled` tinyint(1) DEFAULT '0',
  `bank_transfer_accounts` text,
  `cash_on_delivery_enabled` tinyint(1) DEFAULT '1',
  `price_per_day` bigint(20) DEFAULT '1',
  `price_per_month` bigint(20) DEFAULT '3',
  `free_product_promotion` tinyint(1) DEFAULT '0',
  `payout_paypal_enabled` tinyint(1) DEFAULT '1',
  `payout_iban_enabled` tinyint(1) DEFAULT '1',
  `payout_swift_enabled` tinyint(1) DEFAULT '1',
  `min_payout_paypal` bigint(20) DEFAULT '5000',
  `min_payout_iban` bigint(20) DEFAULT '5000',
  `min_payout_swift` bigint(20) DEFAULT '50000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_settings`
--

LOCK TABLES `payment_settings` WRITE;
/*!40000 ALTER TABLE `payment_settings` DISABLE KEYS */;
INSERT INTO `payment_settings` VALUES (1,'USD',1,'USD','us','left',0,0,'sandbox',NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,'sandbox',NULL,NULL,0,'sandbox','checkout_form',NULL,NULL,NULL,1,NULL,0,10,100,0,1,1,1,5000,5000,50000);
/*!40000 ALTER TABLE `payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `payment_amount` varchar(50) DEFAULT NULL,
  `payer_email` varchar(100) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `purchased_plan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_payment_id` (`payment_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_product_id` (`product_id`)
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
-- Table structure for table `payouts`
--

DROP TABLE IF EXISTS `payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payouts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payout_method` varchar(100) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payouts`
--

LOCK TABLES `payouts` WRITE;
/*!40000 ALTER TABLE `payouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_license_keys`
--

DROP TABLE IF EXISTS `product_license_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_license_keys` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `license_key` varchar(500) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_license_keys`
--

LOCK TABLES `product_license_keys` WRITE;
/*!40000 ALTER TABLE `product_license_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_license_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_options`
--

DROP TABLE IF EXISTS `product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_options` (
  `id` int(11) NOT NULL,
  `common_id` varchar(100) DEFAULT NULL,
  `option_label` varchar(255) DEFAULT NULL,
  `option_key` varchar(255) DEFAULT NULL,
  `lang_id` tinyint(4) DEFAULT NULL,
  `option_type` varchar(20) NOT NULL,
  `shipping_cost` tinyint(1) DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_options`
--

LOCK TABLES `product_options` WRITE;
/*!40000 ALTER TABLE `product_options` DISABLE KEYS */;
INSERT INTO `product_options` VALUES (1,'5d18a5c262c660-27877500-5650333s','Free Shipping','free_shipping',1,'shipping',0,1),(2,'5d18a66435b360-13657409-3311870s','Shipping Included','shipping_included',1,'shipping',0,1),(3,'5d18a6939d6926-77793064-9296191s','Buyer Pays','shipping_buyer_pays',1,'shipping',1,1),(4,'5d18d92a94fdd9-48421309-8629379c','New with Tags','new_with_tags',1,'product_condition',0,1),(5,'5d18d9e45b3432-30246950-5352384c','New','new',1,'product_condition',0,1),(6,'5d18d95938c285-41489303-3045988c','Very Good','very_good',1,'product_condition',0,1),(7,'5d18d967902440-79424298-1563691c','Good','good',1,'product_condition',0,1),(8,'5d18d975a867c4-28077944-7723098c','Satisfactory','satisfactory',1,'product_condition',0,1),(9,'5d18d9a6e16c23-46528035-2884541c','Used','used',1,'product_condition',0,1);
/*!40000 ALTER TABLE `product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `product_type` varchar(20) DEFAULT 'physical',
  `listing_type` varchar(20) DEFAULT 'sell_on_site',
  `sku` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `discount_rate` smallint(3) DEFAULT '0',
  `vat_rate` smallint(3) DEFAULT '0',
  `description` longtext,
  `product_condition` varchar(100) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `zip_code` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_promoted` tinyint(1) DEFAULT '0',
  `promote_start_date` timestamp NULL DEFAULT NULL,
  `promote_end_date` timestamp NULL DEFAULT NULL,
  `promote_plan` varchar(100) DEFAULT NULL,
  `promote_day` int(11) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `rating` varchar(50) DEFAULT '0',
  `hit` int(11) DEFAULT '0',
  `demo_url` varchar(1000) DEFAULT NULL,
  `external_link` varchar(1000) DEFAULT NULL,
  `files_included` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT '1',
  `shipping_time` varchar(100) DEFAULT '2_3_business_days',
  `shipping_cost_type` varchar(100) DEFAULT NULL,
  `shipping_cost` bigint(20) DEFAULT '0',
  `shipping_cost_additional` bigint(20) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_draft` tinyint(1) DEFAULT '0',
  `is_free_product` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_category_id` (`category_id`),
  KEY `idx_country_id` (`country_id`),
  KEY `idx_state_id` (`state_id`),
  KEY `idx_city_id` (`city_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_status` (`status`),
  KEY `idx_is_promoted` (`is_promoted`),
  KEY `idx_visibility` (`visibility`),
  KEY `idx_is_deleted` (`is_deleted`),
  KEY `idx_is_draft` (`is_draft`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promoted_transactions`
--

DROP TABLE IF EXISTS `promoted_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promoted_transactions` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `payment_amount` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `purchased_plan` varchar(255) DEFAULT NULL,
  `day_count` int(11) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promoted_transactions`
--

LOCK TABLES `promoted_transactions` WRITE;
/*!40000 ALTER TABLE `promoted_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promoted_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_requests`
--

DROP TABLE IF EXISTS `quote_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quote_requests` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_title` varchar(500) DEFAULT NULL,
  `product_quantity` mediumint(9) DEFAULT '1',
  `seller_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `price_offered` bigint(20) DEFAULT NULL,
  `price_currency` varchar(20) DEFAULT NULL,
  `shipping_cost` bigint(20) DEFAULT NULL,
  `is_buyer_deleted` tinyint(1) DEFAULT '0',
  `is_seller_deleted` tinyint(1) DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_seller_id` (`seller_id`),
  KEY `idx_buyer_id` (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_requests`
--

LOCK TABLES `quote_requests` WRITE;
/*!40000 ALTER TABLE `quote_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `quote_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` varchar(10000) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `admin` varchar(100) DEFAULT 'admin',
  `blog` varchar(100) DEFAULT 'blog',
  `tag` varchar(100) DEFAULT 'tag',
  `quote_requests` varchar(100) DEFAULT 'quote-requests',
  `sent_quote_requests` varchar(100) DEFAULT 'sent-quote-requests',
  `cart` varchar(100) DEFAULT 'cart',
  `shipping` varchar(100) DEFAULT 'shipping',
  `payment_method` varchar(100) DEFAULT 'payment-method',
  `payment` varchar(100) DEFAULT 'payment',
  `promote_payment_completed` varchar(100) DEFAULT 'promote-payment-completed',
  `orders` varchar(100) DEFAULT 'orders',
  `order_details` varchar(100) DEFAULT 'order',
  `order_completed` varchar(100) DEFAULT 'order-completed',
  `completed_orders` varchar(100) DEFAULT 'completed-orders',
  `messages` varchar(100) DEFAULT 'messages',
  `conversation` varchar(100) DEFAULT 'conversation',
  `profile` varchar(100) DEFAULT 'profile',
  `wishlist` varchar(100) DEFAULT 'wishlist',
  `settings` varchar(100) DEFAULT 'settings',
  `update_profile` varchar(100) DEFAULT 'update-profile',
  `followers` varchar(100) DEFAULT 'followers',
  `following` varchar(100) DEFAULT 'following',
  `sales` varchar(100) DEFAULT 'sales',
  `sale` varchar(100) DEFAULT 'sale',
  `sell_now` varchar(100) DEFAULT 'sell-now',
  `start_selling` varchar(100) DEFAULT 'start-selling',
  `products` varchar(100) DEFAULT 'products',
  `product_details` varchar(100) DEFAULT 'product-details',
  `edit_product` varchar(100) DEFAULT 'edit_product',
  `promote_product` varchar(100) DEFAULT 'promote-product',
  `pending_products` varchar(100) DEFAULT 'pending-products',
  `hidden_products` varchar(100) DEFAULT 'hidden-products',
  `latest_products` varchar(100) DEFAULT 'latest-products',
  `featured_products` varchar(100) DEFAULT 'featured-products',
  `drafts` varchar(100) DEFAULT 'drafts',
  `downloads` varchar(100) DEFAULT 'downloads',
  `seller` varchar(100) DEFAULT 'seller',
  `earnings` varchar(100) DEFAULT 'earnings',
  `payouts` varchar(100) DEFAULT 'payouts',
  `set_payout_account` varchar(100) DEFAULT 'set-payout-account',
  `pricing` varchar(100) DEFAULT 'pricing',
  `reviews` varchar(100) DEFAULT 'reviews',
  `category` varchar(100) DEFAULT 'category',
  `completed_sales` varchar(100) DEFAULT 'completed-sales',
  `shop_settings` varchar(100) DEFAULT 'shop-settings',
  `personal_information` varchar(100) DEFAULT 'personal-information',
  `shipping_address` varchar(100) DEFAULT 'shipping-address',
  `social_media` varchar(100) DEFAULT 'social-media',
  `search` varchar(100) DEFAULT 'search',
  `register` varchar(100) DEFAULT 'register',
  `members` varchar(100) DEFAULT 'members',
  `forgot_password` varchar(100) DEFAULT 'forgot-password',
  `change_password` varchar(100) DEFAULT 'change-password',
  `reset_password` varchar(100) DEFAULT 'reset-password',
  `rss_feeds` varchar(100) DEFAULT 'rss-feeds',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,'admin','blog','tag','quote-requests','sent-quote-requests','cart','shipping','payment-method','payment','promote-payment-completed','orders','order-details','order-completed','completed-orders','messages','conversation','profile','wishlist','settings','update-profile','followers','following','sales','sale','sell-now','start-selling','products','product-details','edit-product','promote-product','pending-products','hidden-products','latest-products','featured-products','drafts','downloads','seller','earnings','payouts','set-payout-account','pricing','reviews','category','completed-sales','shop-settings','personal-information','shipping-address','social-media','search','register','members','forgot-password','change-password','reset-password','rss-feeds');
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT '1',
  `site_font` smallint(6) DEFAULT '19',
  `site_title` varchar(255) DEFAULT NULL,
  `homepage_title` varchar(255) DEFAULT 'Home',
  `site_description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `about_footer` varchar(1000) DEFAULT NULL,
  `contact_text` text,
  `contact_address` varchar(500) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `copyright` varchar(500) DEFAULT NULL,
  `cookies_warning` tinyint(1) DEFAULT '0',
  `cookies_warning_text` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,1,19,'Modesy - Marketplace - Classified Ads Script','Index','Modesy Index Page','index, home, modesy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Copyright Â© 2020 Modesy - All Rights Reserved.',0,'<p>This site uses cookies. By continuing to browse the site, you are agreeing to our use of cookies.</p>','2020-05-11 01:24:25');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `lang_id` tinyint(4) DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `link` text,
  `item_order` smallint(6) DEFAULT '1',
  `button_text` varchar(255) DEFAULT NULL,
  `animation_title` varchar(50) DEFAULT 'none',
  `animation_description` varchar(50) DEFAULT 'none',
  `animation_button` varchar(50) DEFAULT 'none',
  `image` varchar(255) DEFAULT NULL,
  `text_color` varchar(30) DEFAULT '#ffffff',
  `button_color` varchar(30) DEFAULT '#222222',
  `button_text_color` varchar(30) DEFAULT '#ffffff',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_settings`
--

DROP TABLE IF EXISTS `storage_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage_settings` (
  `id` int(11) NOT NULL,
  `storage` varchar(255) DEFAULT 'local',
  `aws_key` varchar(255) DEFAULT NULL,
  `aws_secret` varchar(255) DEFAULT NULL,
  `aws_bucket` varchar(255) DEFAULT NULL,
  `aws_region` varchar(255) DEFAULT 'us-west-2',
  `aws_base_url` varchar(1000) DEFAULT 'https://s3.amazonaws.com/',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_settings`
--

LOCK TABLES `storage_settings` WRITE;
/*!40000 ALTER TABLE `storage_settings` DISABLE KEYS */;
INSERT INTO `storage_settings` VALUES (1,'local',NULL,NULL,NULL,NULL,'https://s3.amazonaws.com/');
/*!40000 ALTER TABLE `storage_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_id` varchar(100) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(30) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `payment_amount` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_payment_id` (`payment_id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_payout_accounts`
--

DROP TABLE IF EXISTS `user_payout_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_payout_accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payout_paypal_email` varchar(255) DEFAULT NULL,
  `iban_full_name` varchar(255) DEFAULT NULL,
  `iban_country_id` varchar(20) DEFAULT NULL,
  `iban_bank_name` varchar(255) DEFAULT NULL,
  `iban_number` varchar(500) DEFAULT NULL,
  `swift_full_name` varchar(255) DEFAULT NULL,
  `swift_address` varchar(500) DEFAULT NULL,
  `swift_state` varchar(255) DEFAULT NULL,
  `swift_city` varchar(255) DEFAULT NULL,
  `swift_postcode` varchar(100) DEFAULT NULL,
  `swift_country_id` varchar(20) DEFAULT NULL,
  `swift_bank_account_holder_name` varchar(255) DEFAULT NULL,
  `swift_iban` varchar(255) DEFAULT NULL,
  `swift_code` varchar(255) DEFAULT NULL,
  `swift_bank_name` varchar(255) DEFAULT NULL,
  `swift_bank_branch_city` varchar(255) DEFAULT NULL,
  `swift_bank_branch_country_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payout_accounts`
--

LOCK TABLES `user_payout_accounts` WRITE;
/*!40000 ALTER TABLE `user_payout_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_payout_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT 'name@domain.com',
  `email_status` tinyint(1) DEFAULT '0',
  `token` varchar(500) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'member',
  `balance` bigint(20) DEFAULT '0',
  `number_of_sales` int(11) DEFAULT '0',
  `user_type` varchar(20) DEFAULT 'registered',
  `facebook_id` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `vkontakte_id` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT '0',
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `about_me` varchar(5000) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `zip_code` varchar(50) DEFAULT NULL,
  `show_email` tinyint(1) DEFAULT '0',
  `show_phone` tinyint(1) DEFAULT '0',
  `show_location` tinyint(1) DEFAULT '0',
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `show_rss_feeds` tinyint(1) DEFAULT '0',
  `send_email_new_message` tinyint(1) DEFAULT '0',
  `shipping_first_name` varchar(255) DEFAULT NULL,
  `shipping_last_name` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(100) DEFAULT NULL,
  `shipping_phone_number` varchar(100) DEFAULT NULL,
  `shipping_address_1` varchar(500) DEFAULT NULL,
  `shipping_address_2` varchar(500) DEFAULT NULL,
  `shipping_country_id` varchar(20) DEFAULT NULL,
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_zip_code` varchar(50) DEFAULT NULL,
  `is_active_shop_request` tinyint(1) DEFAULT '0',
  `send_email_when_item_sold` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `variation_options`
--

DROP TABLE IF EXISTS `variation_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variation_options` (
  `id` int(11) NOT NULL,
  `variation_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `option_names` text,
  `stock` int(11) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `discount_rate` smallint(3) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `use_default_price` tinyint(1) NOT NULL DEFAULT '0',
  `no_discount` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_variation_id` (`variation_id`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_options`
--

LOCK TABLES `variation_options` WRITE;
/*!40000 ALTER TABLE `variation_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `variation_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variations`
--

DROP TABLE IF EXISTS `variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variations` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `label_names` text,
  `variation_type` varchar(50) DEFAULT NULL,
  `insert_type` varchar(10) DEFAULT 'new',
  `option_display_type` varchar(30) DEFAULT 'text',
  `show_images_on_slider` tinyint(1) DEFAULT '0',
  `use_different_price` tinyint(1) DEFAULT '0',
  `is_visible` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_parent_id` (`parent_id`),
  KEY `idx_is_visible` (`is_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variations`
--

LOCK TABLES `variations` WRITE;
/*!40000 ALTER TABLE `variations` DISABLE KEYS */;
/*!40000 ALTER TABLE `variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:08:34
