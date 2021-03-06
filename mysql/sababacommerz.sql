-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: sababacommerz
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
-- Table structure for table `tpri_admins`
--

DROP TABLE IF EXISTS `tpri_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `type` enum('admin','moderater') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_admins`
--

LOCK TABLES `tpri_admins` WRITE;
/*!40000 ALTER TABLE `tpri_admins` DISABLE KEYS */;
INSERT INTO `tpri_admins` VALUES (1,'admin','YWRtaW4=','admin@provendor.tk','admin');
/*!40000 ALTER TABLE `tpri_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_adspromotiondetails`
--

DROP TABLE IF EXISTS `tpri_adspromotiondetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_adspromotiondetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `promotionTime` int(11) NOT NULL,
  `promotionTranxId` int(11) NOT NULL,
  `createdDate` int(11) NOT NULL,
  PRIMARY KEY (`id`,`productId`,`promotionTranxId`),
  KEY `promotionItem` (`productId`),
  KEY `promotionTranx` (`promotionTranxId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_adspromotiondetails`
--

LOCK TABLES `tpri_adspromotiondetails` WRITE;
/*!40000 ALTER TABLE `tpri_adspromotiondetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_adspromotiondetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_banners`
--

DROP TABLE IF EXISTS `tpri_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bannerimage` varchar(60) NOT NULL,
  `appbannerimage` varchar(60) NOT NULL,
  `bannerurl` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_banners`
--

LOCK TABLES `tpri_banners` WRITE;
/*!40000 ALTER TABLE `tpri_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_carts`
--

DROP TABLE IF EXISTS `tpri_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_carts` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `merchantId` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `options` varchar(60) DEFAULT NULL,
  `createdDate` int(11) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  KEY `cart_user` (`userId`),
  KEY `cart_product` (`productId`),
  CONSTRAINT `cart_product` FOREIGN KEY (`productId`) REFERENCES `tpri_products` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_user` FOREIGN KEY (`userId`) REFERENCES `tpri_users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_carts`
--

LOCK TABLES `tpri_carts` WRITE;
/*!40000 ALTER TABLE `tpri_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_categories`
--

DROP TABLE IF EXISTS `tpri_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_categories` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentCategory` int(11) DEFAULT NULL,
  `image` varchar(60) NOT NULL,
  `categoryProperty` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_categories`
--

LOCK TABLES `tpri_categories` WRITE;
/*!40000 ALTER TABLE `tpri_categories` DISABLE KEYS */;
INSERT INTO `tpri_categories` VALUES (1,'Electronics',0,'7537-521455.png','{\"itemCondition\":\"disable\",\"exchangetoBuy\":\"enable\",\"buyNow\":\"disable\",\"myOffer\":\"enable\",\"contactSeller\":\"disable\"}','electronic','2017-08-15 23:51:54'),(2,'Mobile',1,'','mobile','','2017-01-12 07:26:52'),(3,'properties',0,'6656-270666.png','{\"itemCondition\":\"enable\",\"exchangetoBuy\":\"disable\",\"buyNow\":\"disable\",\"myOffer\":\"enable\",\"contactSeller\":\"disable\"}','properties','2017-08-15 23:29:56'),(4,'Fashion',0,'Fashion.png','{\"itemCondition\":\"enable\",\"exchangetoBuy\":\"enable\",\"myOffer\":\"disable\",\"contactSeller\":\"enable\"}','fashion','2017-01-12 07:55:56'),(5,'Furnitures',0,'4265-207116.png','{\"itemCondition\":\"enable\",\"exchangetoBuy\":\"disable\",\"buyNow\":\"disable\",\"myOffer\":\"enable\",\"contactSeller\":\"disable\"}','furnitures','2017-08-15 23:59:06'),(6,'Cars and Accessories',0,'4001-465054.png','{\"itemCondition\":\"disable\",\"exchangetoBuy\":\"enable\",\"buyNow\":\"disable\",\"myOffer\":\"disable\",\"contactSeller\":\"disable\"}','carsandacc','2017-08-16 00:02:22'),(7,'Animals',0,'1461-306142.png','{\"itemCondition\":\"enable\",\"exchangetoBuy\":\"disable\",\"buyNow\":\"disable\",\"myOffer\":\"enable\",\"contactSeller\":\"disable\"}','animals','2017-08-16 00:02:33'),(8,'Music and hobbies',0,'2841-184669.png','{\"itemCondition\":\"enable\",\"exchangetoBuy\":\"enable\",\"buyNow\":\"disable\",\"myOffer\":\"enable\",\"contactSeller\":\"disable\"}','musicandho','2017-08-16 00:04:10'),(9,'Job',0,'1609-222567.png','{\"itemCondition\":\"enable\",\"exchangetoBuy\":\"enable\",\"buyNow\":\"disable\",\"myOffer\":\"enable\",\"contactSeller\":\"disable\"}','job','2017-08-16 00:05:40'),(10,'Sports',0,'2270-496449.png','{\"itemCondition\":\"enable\",\"exchangetoBuy\":\"enable\",\"buyNow\":\"disable\",\"myOffer\":\"enable\",\"contactSeller\":\"disable\"}','sports','2017-08-16 00:07:47'),(11,'Cars',6,'','{\"itemCondition\":\"disable\",\"exchangetoBuy\":\"disable\",\"buyNow\":\"disable\",\"myOffer\":\"disable\",\"contactSeller\":\"disable\"}','cars','2017-08-16 00:08:21'),(12,'Motorcycles',6,'','{\"itemCondition\":\"disable\",\"exchangetoBuy\":\"disable\",\"buyNow\":\"disable\",\"myOffer\":\"disable\",\"contactSeller\":\"disable\"}','motorcycle','2017-08-16 00:08:38'),(13,'Accessories',6,'','{\"itemCondition\":\"disable\",\"exchangetoBuy\":\"disable\",\"buyNow\":\"disable\",\"myOffer\":\"disable\",\"contactSeller\":\"disable\"}','accessorie','2017-08-16 00:08:55');
/*!40000 ALTER TABLE `tpri_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_chats`
--

DROP TABLE IF EXISTS `tpri_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_chats` (
  `chatId` int(11) NOT NULL AUTO_INCREMENT,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  `lastMessage` varchar(500) NOT NULL,
  `lastToRead` int(11) NOT NULL,
  `lastContacted` int(11) NOT NULL,
  PRIMARY KEY (`chatId`),
  KEY `user1` (`user1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_chats`
--

LOCK TABLES `tpri_chats` WRITE;
/*!40000 ALTER TABLE `tpri_chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_comments`
--

DROP TABLE IF EXISTS `tpri_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_comments` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `comment` mediumtext,
  `createdDate` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentId`),
  KEY `fk_comments_users1` (`userId`),
  KEY `fk_comments_product1` (`productId`),
  CONSTRAINT `fk_comments_product1` FOREIGN KEY (`productId`) REFERENCES `tpri_products` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_comments_users1` FOREIGN KEY (`userId`) REFERENCES `tpri_users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_comments`
--

LOCK TABLES `tpri_comments` WRITE;
/*!40000 ALTER TABLE `tpri_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_commissions`
--

DROP TABLE IF EXISTS `tpri_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_commissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `percentage` varchar(25) NOT NULL,
  `minRate` varchar(25) NOT NULL,
  `maxRate` varchar(25) NOT NULL,
  `status` int(2) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_commissions`
--

LOCK TABLES `tpri_commissions` WRITE;
/*!40000 ALTER TABLE `tpri_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_country`
--

DROP TABLE IF EXISTS `tpri_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_country` (
  `countryId` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_country`
--

LOCK TABLES `tpri_country` WRITE;
/*!40000 ALTER TABLE `tpri_country` DISABLE KEYS */;
INSERT INTO `tpri_country` VALUES (0,'OT','Others'),(1,'AF','Afghanistan'),(2,'AL','Albania'),(3,'DZ','Algeria'),(4,'AS','American Samoa'),(5,'AD','Andorra'),(6,'AO','Angola'),(7,'AI','Anguilla'),(8,'AQ','Antarctica'),(9,'AG','Antigua and Barbuda'),(10,'AR','Argentina'),(11,'AM','Armenia'),(12,'AW','Aruba'),(13,'AU','Australia'),(14,'AT','Austria'),(15,'AZ','Azerbaijan'),(16,'BS','Bahamas'),(17,'BH','Bahrain'),(18,'BD','Bangladesh'),(19,'BB','Barbados'),(20,'BY','Belarus'),(21,'BE','Belgium'),(22,'BZ','Belize'),(23,'BJ','Benin'),(24,'BM','Bermuda'),(25,'BT','Bhutan'),(26,'BO','Bolivia'),(27,'BA','Bosnia and Herzegovina'),(28,'BW','Botswana'),(29,'BV','Bouvet Island'),(30,'BR','Brazil'),(31,'IO','British Indian Ocean Territory'),(32,'BN','Brunei Darussalam'),(33,'BG','Bulgaria'),(34,'BF','Burkina Faso'),(35,'BI','Burundi'),(36,'KH','Cambodia'),(37,'CM','Cameroon'),(38,'CA','Canada'),(39,'CV','Cape Verde'),(40,'KY','Cayman Islands'),(41,'CF','Central African Republic'),(42,'TD','Chad'),(43,'CL','Chile'),(44,'CN','China'),(45,'CX','Christmas Island'),(46,'CC','Cocos (\',Keeling) Islands'),(47,'CO','Colombia'),(48,'KM','Comoros'),(49,'CG','Congo'),(50,'CD','Congo, The Democratic Republic of the'),(51,'CK','Cook Islands'),(52,'CR','Costa Rica'),(53,'CI','CÃ´te D\'Ivoire'),(54,'HR','Croatia'),(55,'CU','Cuba'),(56,'CY','Cyprus'),(57,'CZ','Czech Republic'),(58,'DK','Denmark'),(59,'DJ','Djibouti'),(60,'DM','Dominica'),(61,'DO','Dominican Republic'),(62,'EC','Ecuador'),(63,'EG','Egypt'),(64,'SV','El Salvador'),(65,'GQ','Equatorial Guinea'),(66,'ER','Eritrea'),(67,'EE','Estonia'),(68,'ET','Ethiopia'),(69,'FK','Falkland Islands (Malvinas)'),(70,'FO','Faroe Islands'),(71,'FJ','Fiji'),(72,'FI','Finland'),(73,'FR','France'),(74,'GF','French Guiana'),(75,'PF','French Polynesia'),(76,'TF','French Southern Territories'),(77,'GA','Gabon'),(78,'GM','Gambia'),(79,'GE','Georgia'),(80,'DE','Germany'),(81,'GH','Ghana'),(82,'GI','Gibraltar'),(83,'GR','Greece'),(84,'GL','Greenland'),(85,'GD','Grenada'),(86,'GP','Guadeloupe'),(87,'GU','Guam'),(88,'GT','Guatemala'),(89,'GG','Guernsey'),(90,'GN','Guinea'),(91,'GW','Guinea-Bissau'),(92,'GY','Guyana'),(93,'HT','Haiti'),(94,'HM','Heard Island and McDonald Islands'),(95,'VA','Holy See (Vatican City State)'),(96,'HN','Honduras'),(97,'HK','Hong Kong'),(98,'HU','Hungary'),(99,'IS','Iceland'),(100,'IN','India'),(101,'ID','Indonesia'),(102,'IR','Iran, Islamic Republic of'),(103,'IQ','Iraq'),(104,'IE','Ireland'),(105,'IM','Isle of Man'),(106,'IL','Israel'),(107,'IT','Italy'),(108,'JM','Jamaica'),(109,'JP','Japan'),(110,'JE','Jersey'),(111,'JO','Jordan'),(112,'KZ','Kazakhstan'),(113,'KE','Kenya'),(114,'KI','Kiribati'),(115,'KP','Korea, Democratic People\'s Republic of'),(116,'KR','Korea, Republic of'),(117,'KW','Kuwait'),(118,'KG','Kyrgyzstan'),(119,'LA','Lao People\'s Democratic Republic'),(120,'LV','Latvia'),(121,'LB','Lebanon'),(122,'LS','Lesotho'),(123,'LR','Liberia'),(124,'LY','Libyan Arab Jamahiriya'),(125,'LI','Liechtenstein'),(126,'LT','Lithuania'),(127,'LU','Luxembourg'),(128,'MO','Macao'),(129,'MK','Macedonia, The Former Yugoslav Republic of'),(130,'MG','Madagascar'),(131,'MW','Malawi'),(132,'MY','Malaysia'),(133,'MV','Maldives'),(134,'ML','Mali'),(135,'MT','Malta'),(136,'MH','Marshall Islands'),(137,'MQ','Martinique'),(138,'MR','Mauritania'),(139,'MU','Mauritius'),(140,'YT','Mayotte'),(141,'MX','Mexico'),(142,'FM','Micronesia, Federated States of'),(143,'MD','Moldova, Republic of'),(144,'MC','Monaco'),(145,'MN','Mongolia'),(146,'ME','Montenegro'),(147,'MS','Montserrat'),(148,'MA','Morocco'),(149,'MZ','Mozambique'),(150,'MM','Myanmar'),(151,'NA','Namibia'),(152,'NR','Nauru'),(153,'NP','Nepal'),(154,'NL','Netherlands'),(155,'AN','Netherlands Antilles'),(156,'NC','New Caledonia'),(157,'NZ','New Zealand'),(158,'NI','Nicaragua'),(159,'NE','Niger'),(160,'NG','Nigeria'),(161,'NU','Niue'),(162,'NF','Norfolk Island'),(163,'MP','Northern Mariana Islands'),(164,'NO','Norway'),(165,'OM','Oman'),(166,'PK','Pakistan'),(167,'PW','Palau'),(168,'PS','Palestinian Territory, Occupied'),(169,'PA','Panama'),(170,'PG','Papua New Guinea'),(171,'PY','Paraguay'),(172,'PE','Peru'),(173,'PH','Philippines'),(174,'PN','Pitcairn'),(175,'PL','Poland'),(176,'PT','Portugal'),(177,'PR','Puerto Rico'),(178,'QA','Qatar'),(179,'RE','Reunion'),(180,'RO','Romania'),(181,'RU','Russian Federation'),(182,'RW','Rwanda'),(183,'BL','Saint BarthÃ©lemy'),(184,'SH','Saint Helena'),(185,'KN','Saint Kitts and Nevis'),(186,'LC','Saint Lucia'),(187,'MF','Saint Martin'),(188,'PM','Saint Pierre and Miquelon'),(189,'VC','Saint Vincent and the Grenadines'),(190,'WS','Samoa'),(191,'SM','San Marino'),(192,'ST','Sao Tome and Principe'),(193,'SA','Saudi Arabia'),(194,'SN','Senegal'),(195,'RS','Serbia'),(196,'SC','Seychelles'),(197,'SL','Sierra Leone'),(198,'SG','Singapore'),(199,'SK','Slovakia'),(200,'SI','Slovenia'),(201,'SB','Solomon Islands'),(202,'SO','Somalia'),(203,'ZA','South Africa'),(204,'GS','South Georgia and the South Sandwich Islands'),(205,'ES','Spain'),(206,'LK','Sri Lanka'),(207,'SD','Sudan'),(208,'SR','Suriname'),(209,'SJ','Svalbard and Jan Mayen'),(210,'SZ','Swaziland'),(211,'SE','Sweden'),(212,'CH','Switzerland'),(213,'SY','Syrian Arab Republic'),(214,'TW','Taiwan, Province Of China'),(215,'TJ','Tajikistan'),(216,'TZ','Tanzania, United Republic of'),(217,'TH','Thailand'),(218,'TL','Timor-Leste'),(219,'TG','Togo'),(220,'TK','Tokelau'),(221,'TO','Tonga'),(222,'TT','Trinidad and Tobago'),(223,'TN','Tunisia'),(224,'TR','Turkey'),(225,'TM','Turkmenistan'),(226,'TC','Turks and Caicos Islands'),(227,'TV','Tuvalu'),(228,'UG','Uganda'),(229,'UA','Ukraine'),(230,'AE','United Arab Emirates'),(231,'GB','United Kingdom'),(232,'US','United States'),(233,'UM','United States Minor Outlying Islands'),(234,'UY','Uruguay'),(235,'UZ','Uzbekistan'),(236,'VU','Vanuatu'),(237,'VE','Venezuela'),(238,'VN','Viet Nam'),(239,'VG','Virgin Islands, British'),(240,'VI','Virgin Islands, U.S.'),(241,'WF','Wallis And Futuna'),(242,'EH','Western Sahara'),(243,'YE','Yemen'),(244,'ZM','Zambia'),(245,'ZW','Zimbabwe');
/*!40000 ALTER TABLE `tpri_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_coupons`
--

DROP TABLE IF EXISTS `tpri_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `couponCode` varchar(15) NOT NULL,
  `sellerId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(150) NOT NULL,
  `couponType` int(11) NOT NULL,
  `couponValue` int(11) NOT NULL,
  `maxAmount` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `status` int(2) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_coupons`
--

LOCK TABLES `tpri_coupons` WRITE;
/*!40000 ALTER TABLE `tpri_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_currencies`
--

DROP TABLE IF EXISTS `tpri_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(50) NOT NULL,
  `currency_shortcode` varchar(10) NOT NULL,
  `currency_image` varchar(100) NOT NULL,
  `currency_symbol` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_currencies`
--

LOCK TABLES `tpri_currencies` WRITE;
/*!40000 ALTER TABLE `tpri_currencies` DISABLE KEYS */;
INSERT INTO `tpri_currencies` VALUES (1,'Euro','EUR','','â‚¬'),(2,'Dolar','USD','','$'),(3,'Pound Sterling','GBP','','Â£'),(4,'Brazilian Real','BRL','','R$');
/*!40000 ALTER TABLE `tpri_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_exchanges`
--

DROP TABLE IF EXISTS `tpri_exchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_exchanges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `requestFrom` int(11) NOT NULL,
  `requestTo` int(11) NOT NULL,
  `mainProductId` int(11) NOT NULL,
  `exchangeProductId` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `slug` varchar(8) NOT NULL,
  `blockExchange` int(2) NOT NULL DEFAULT '0',
  `exchangeHistory` text NOT NULL,
  `reviewFlagSender` int(1) NOT NULL,
  `reviewFlagReceiver` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `requestFrom` (`requestFrom`),
  KEY `requestTo` (`requestTo`),
  KEY `mainProductId` (`mainProductId`),
  KEY `exchangeProductId` (`exchangeProductId`),
  CONSTRAINT `tpri_exchanges_ibfk_1` FOREIGN KEY (`mainProductId`) REFERENCES `tpri_products` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tpri_exchanges_ibfk_2` FOREIGN KEY (`exchangeProductId`) REFERENCES `tpri_products` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_exchanges`
--

LOCK TABLES `tpri_exchanges` WRITE;
/*!40000 ALTER TABLE `tpri_exchanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_exchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_favorites`
--

DROP TABLE IF EXISTS `tpri_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_favorites`
--

LOCK TABLES `tpri_favorites` WRITE;
/*!40000 ALTER TABLE `tpri_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_followers`
--

DROP TABLE IF EXISTS `tpri_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `follow_userId` int(11) NOT NULL,
  `followedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_followers`
--

LOCK TABLES `tpri_followers` WRITE;
/*!40000 ALTER TABLE `tpri_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_helppages`
--

DROP TABLE IF EXISTS `tpri_helppages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_helppages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(60) NOT NULL,
  `pageContent` longtext NOT NULL,
  `slug` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_helppages`
--

LOCK TABLES `tpri_helppages` WRITE;
/*!40000 ALTER TABLE `tpri_helppages` DISABLE KEYS */;
INSERT INTO `tpri_helppages` VALUES (1,'Terms and Policy','<p>Here is the terms and policy of the <strong>ProVendor</strong> <strong>site</strong></p><ol><li>Let have a good relationship</li><li>Let buy the product in awesome rate</li><li>If there is a problem you only responsable</li><li>ProVendor is providing only a platform to make the connection between two person</li><li>So you are responsible for all the things</li><li>Which you are buying or selling</li></ol><p>Thanks for being a part of our site. We are always wants to be straight forward that why we just listed the things in our mind. To be clear in both side</p>','terms-and-policy');
/*!40000 ALTER TABLE `tpri_helppages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_invoices`
--

DROP TABLE IF EXISTS `tpri_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_invoices` (
  `invoiceId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `invoiceNo` varchar(20) DEFAULT NULL,
  `invoiceDate` int(11) DEFAULT NULL,
  `invoiceStatus` varchar(20) DEFAULT NULL,
  `paymentMethod` varchar(100) DEFAULT NULL,
  `paymentTranxid` mediumtext,
  PRIMARY KEY (`invoiceId`,`orderId`),
  KEY `fk_invoices_orders1` (`orderId`),
  CONSTRAINT `fk_invoices_orders1` FOREIGN KEY (`orderId`) REFERENCES `tpri_orders` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_invoices`
--

LOCK TABLES `tpri_invoices` WRITE;
/*!40000 ALTER TABLE `tpri_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_logs`
--

DROP TABLE IF EXISTS `tpri_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('follow','like','comment','add','admin','exchange','myoffer','promote','expromote','order','adminpayment') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `notifyto` tinytext NOT NULL,
  `sourceid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `notifymessage` text NOT NULL,
  `notification_id` int(11) NOT NULL,
  `message` text,
  `createddate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_logs`
--

LOCK TABLES `tpri_logs` WRITE;
/*!40000 ALTER TABLE `tpri_logs` DISABLE KEYS */;
INSERT INTO `tpri_logs` VALUES (1,'add',3,'0',3,3,'added a product',0,NULL,1502842916);
/*!40000 ALTER TABLE `tpri_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_messages`
--

DROP TABLE IF EXISTS `tpri_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_messages` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `chatId` int(11) NOT NULL,
  `senderId` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `messageType` enum('exchange','normal','offer') NOT NULL,
  `createdDate` int(11) NOT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_messages`
--

LOCK TABLES `tpri_messages` WRITE;
/*!40000 ALTER TABLE `tpri_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_orderitems`
--

DROP TABLE IF EXISTS `tpri_orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_orderitems` (
  `orderitemId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `itemName` varchar(150) DEFAULT NULL,
  `itemPrice` varchar(18) DEFAULT NULL,
  `itemSize` varchar(30) DEFAULT NULL,
  `itemQuantity` int(11) DEFAULT NULL,
  `itemunitPrice` varchar(18) DEFAULT NULL,
  `shippingPrice` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`orderitemId`),
  KEY `fk_orderitems_orders1` (`orderId`),
  KEY `fk_orderitems_products1` (`productId`),
  CONSTRAINT `fk_orderitems_orders1` FOREIGN KEY (`orderId`) REFERENCES `tpri_orders` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_orderitems`
--

LOCK TABLES `tpri_orderitems` WRITE;
/*!40000 ALTER TABLE `tpri_orderitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_orders`
--

DROP TABLE IF EXISTS `tpri_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `sellerId` int(11) NOT NULL,
  `totalCost` varchar(18) DEFAULT NULL,
  `totalShipping` varchar(7) DEFAULT NULL,
  `admincommission` varchar(18) NOT NULL,
  `discount` varchar(15) NOT NULL,
  `discountSource` varchar(50) NOT NULL,
  `orderDate` int(11) DEFAULT NULL,
  `shippingAddress` int(11) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `sellerPaypalId` varchar(150) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `statusDate` int(11) NOT NULL,
  `trackPayment` varchar(100) NOT NULL,
  `reviewFlag` int(1) NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `fk_orders_users1` (`userId`),
  KEY `fk_orders_users2` (`sellerId`),
  CONSTRAINT `fk_orders_users1` FOREIGN KEY (`userId`) REFERENCES `tpri_users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_users2` FOREIGN KEY (`sellerId`) REFERENCES `tpri_users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_orders`
--

LOCK TABLES `tpri_orders` WRITE;
/*!40000 ALTER TABLE `tpri_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_photos`
--

DROP TABLE IF EXISTS `tpri_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_photos` (
  `photoId` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `createdDate` int(11) NOT NULL,
  PRIMARY KEY (`photoId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_photos`
--

LOCK TABLES `tpri_photos` WRITE;
/*!40000 ALTER TABLE `tpri_photos` DISABLE KEYS */;
INSERT INTO `tpri_photos` VALUES (1,1,'705c6010a16b63705773795028d76970.jpg',1502842916),(2,1,'a78ba04fb0f80694864e3857dc647f9b.jpg',1502842916),(3,1,'8c9420c61d273a304efa90772b180271.jpg',1502842916);
/*!40000 ALTER TABLE `tpri_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_productconditions`
--

DROP TABLE IF EXISTS `tpri_productconditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_productconditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `condition` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_productconditions`
--

LOCK TABLES `tpri_productconditions` WRITE;
/*!40000 ALTER TABLE `tpri_productconditions` DISABLE KEYS */;
INSERT INTO `tpri_productconditions` VALUES (1,'Brand New');
/*!40000 ALTER TABLE `tpri_productconditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_products`
--

DROP TABLE IF EXISTS `tpri_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_products` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `category` int(11) DEFAULT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `currency` varchar(10) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sizeOptions` mediumtext,
  `productCondition` varchar(100) DEFAULT NULL,
  `createdDate` int(11) DEFAULT NULL,
  `likeCount` int(11) DEFAULT NULL,
  `commentCount` int(11) DEFAULT NULL,
  `chatAndBuy` int(11) NOT NULL,
  `exchangeToBuy` int(11) NOT NULL,
  `instantBuy` int(11) NOT NULL,
  `myoffer` int(11) NOT NULL,
  `paypalid` varchar(150) NOT NULL,
  `shippingTime` varchar(60) NOT NULL,
  `shippingcountry` int(11) NOT NULL,
  `shippingCost` int(11) NOT NULL,
  `soldItem` int(2) NOT NULL,
  `location` varchar(255) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `likes` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `reports` varchar(250) NOT NULL,
  `reportCount` int(11) NOT NULL,
  `promotionType` enum('1','2','3') NOT NULL DEFAULT '3',
  `approvedStatus` int(1) NOT NULL,
  `Initial_approve` int(1) NOT NULL,
  PRIMARY KEY (`productId`),
  KEY `fk_product_users1` (`userId`),
  KEY `fk_product_category1` (`category`),
  KEY `fk_product_category2` (`subCategory`),
  CONSTRAINT `fk_product_category1` FOREIGN KEY (`category`) REFERENCES `tpri_categories` (`categoryId`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_product_category2` FOREIGN KEY (`subCategory`) REFERENCES `tpri_categories` (`categoryId`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `fk_product_users1` FOREIGN KEY (`userId`) REFERENCES `tpri_users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_products`
--

LOCK TABLES `tpri_products` WRITE;
/*!40000 ALTER TABLE `tpri_products` DISABLE KEYS */;
INSERT INTO `tpri_products` VALUES (1,1,'Manual Leather Shifter','&lt;p&gt;Manual Leather Shifter - Momo&lt;/p&gt;',6,13,150,'$-USD',1,NULL,'',1502842916,NULL,NULL,0,1,0,2,'','',0,0,0,'New York, NY, United States',40.7127837,-74.00594130000002,0,3,'',0,'3',1,1);
/*!40000 ALTER TABLE `tpri_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_promotions`
--

DROP TABLE IF EXISTS `tpri_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `days` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_promotions`
--

LOCK TABLES `tpri_promotions` WRITE;
/*!40000 ALTER TABLE `tpri_promotions` DISABLE KEYS */;
INSERT INTO `tpri_promotions` VALUES (1,'1 week',7,20),(5,'2 Week',14,35);
/*!40000 ALTER TABLE `tpri_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_promotiontransaction`
--

DROP TABLE IF EXISTS `tpri_promotiontransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_promotiontransaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `promotionName` varchar(250) NOT NULL,
  `promotionPrice` int(11) NOT NULL,
  `promotionTime` int(11) NOT NULL,
  `status` enum('Live','Expired','Canceled') NOT NULL,
  `tranxId` varchar(250) NOT NULL,
  `createdDate` int(11) NOT NULL,
  `initial_check` int(1) NOT NULL,
  `approvedStatus` int(1) NOT NULL,
  PRIMARY KEY (`id`,`productId`),
  KEY `itemDetails` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_promotiontransaction`
--

LOCK TABLES `tpri_promotiontransaction` WRITE;
/*!40000 ALTER TABLE `tpri_promotiontransaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_promotiontransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_resetpassword`
--

DROP TABLE IF EXISTS `tpri_resetpassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_resetpassword` (
  `resetId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `resetData` varchar(50) NOT NULL,
  `createdDate` int(11) NOT NULL,
  PRIMARY KEY (`resetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_resetpassword`
--

LOCK TABLES `tpri_resetpassword` WRITE;
/*!40000 ALTER TABLE `tpri_resetpassword` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_resetpassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_reviews`
--

DROP TABLE IF EXISTS `tpri_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_reviews` (
  `reviewId` int(11) NOT NULL AUTO_INCREMENT,
  `senderId` int(11) NOT NULL,
  `receiverId` int(11) NOT NULL,
  `reviewTitle` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `review` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rating` int(1) NOT NULL,
  `reviewType` varchar(30) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `createdDate` int(11) NOT NULL,
  PRIMARY KEY (`reviewId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_reviews`
--

LOCK TABLES `tpri_reviews` WRITE;
/*!40000 ALTER TABLE `tpri_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_shipping`
--

DROP TABLE IF EXISTS `tpri_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_shipping` (
  `shippingId` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL,
  `shippingCost` varchar(45) DEFAULT NULL,
  `createdDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`shippingId`),
  KEY `product_shipping` (`productId`),
  KEY `country_details` (`countryId`),
  CONSTRAINT `country_details` FOREIGN KEY (`countryId`) REFERENCES `tpri_country` (`countryId`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `product_shipping` FOREIGN KEY (`productId`) REFERENCES `tpri_products` (`productId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_shipping`
--

LOCK TABLES `tpri_shipping` WRITE;
/*!40000 ALTER TABLE `tpri_shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_shippingaddresses`
--

DROP TABLE IF EXISTS `tpri_shippingaddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_shippingaddresses` (
  `shippingaddressId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address1` varchar(60) DEFAULT NULL,
  `address2` varchar(60) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `countryCode` int(11) DEFAULT NULL,
  PRIMARY KEY (`shippingaddressId`),
  KEY `userId` (`userId`),
  KEY `countryCode` (`countryCode`),
  CONSTRAINT `countryCode` FOREIGN KEY (`countryCode`) REFERENCES `tpri_country` (`countryId`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `tpri_users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_shippingaddresses`
--

LOCK TABLES `tpri_shippingaddresses` WRITE;
/*!40000 ALTER TABLE `tpri_shippingaddresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_shippingaddresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_sitesettings`
--

DROP TABLE IF EXISTS `tpri_sitesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_sitesettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smtpEmail` varchar(150) NOT NULL,
  `smtpPassword` varchar(50) NOT NULL,
  `smtpPort` varchar(10) NOT NULL,
  `smtpHost` varchar(150) NOT NULL,
  `smtpEnable` int(2) NOT NULL,
  `smtpSSL` int(11) NOT NULL,
  `socialLoginDetails` text NOT NULL,
  `logo` varchar(60) NOT NULL,
  `logoDarkVersion` varchar(60) NOT NULL,
  `sitename` varchar(40) NOT NULL,
  `metaData` text NOT NULL,
  `default_userimage` varchar(60) NOT NULL,
  `favicon` varchar(15) NOT NULL,
  `currency_priority` text NOT NULL,
  `category_priority` text NOT NULL,
  `promotionCurrency` tinytext NOT NULL,
  `urgentPrice` int(11) NOT NULL,
  `searchDistance` int(11) NOT NULL,
  `searchType` enum('miles','kilometer') NOT NULL,
  `searchList` varchar(200) NOT NULL,
  `sitepaymentmodes` varchar(250) NOT NULL,
  `commission_status` int(2) NOT NULL,
  `paypal_settings` text NOT NULL,
  `braintree_settings` varchar(250) NOT NULL,
  `api_settings` text NOT NULL,
  `footer_settings` text NOT NULL,
  `tracking_code` text NOT NULL,
  `googleapikey` varchar(100) NOT NULL,
  `account_sid` varchar(100) NOT NULL,
  `auth_token` varchar(100) NOT NULL,
  `sms_number` varchar(50) NOT NULL,
  `facebookshare` int(1) NOT NULL,
  `bannerstatus` int(1) NOT NULL,
  `promotionStatus` int(1) NOT NULL,
  `product_autoapprove` int(1) NOT NULL,
  `androidkey` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_sitesettings`
--

LOCK TABLES `tpri_sitesettings` WRITE;
/*!40000 ALTER TABLE `tpri_sitesettings` DISABLE KEYS */;
INSERT INTO `tpri_sitesettings` VALUES (1,'noreply@provendor.com','CgM=F5bQ','465','smtp.gmail.com',1,1,'{\"facebook\":{\"status\":\"enable\",\"appid\":\"1610870739211757\",\"secret\":\"7024047c939f427a90fe40df30370eb2\"},\"twitter\":{\"status\":\"enable\",\"appid\":\"jfCprDsZbv3VLf64c6YAKd356\",\"secret\":\"LSFB9CERuhZhlqygOTYGzJZBE5ZIZGY81fBV3LnFGqlKYGhKZ1\"},\"google\":{\"status\":\"enable\",\"appid\":\"746575674583-iv7ufchlp31gqib6lknaeq5kscl2e59m.apps.googleusercontent.com\",\"secret\":\"Vl_bFkDWwBmfH2pbsAOI6QhP\"}}','8203_ProVendor-logo.png','7486_ProVendor-logo-dark.png','ProVendor ','{\"metaTitle\":\"Online Classifieds Platform to Buy Sell Locally.\",\"metaDescription\":\"Perfect online classifieds to find stuffs to buy and sell near your locations. Keep connected with you sellers and buyers with instant chat.\",\"metaKeywords\":\"online classifieds\"}','3597_ProVendor-logo.png','favicon.png','[\"27\",\"30\",\"empty\",\"empty\",\"empty\"]','[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"empty\"]',' EUR-â‚¬',30,0,'miles','1,5,10,20,50,700','{\"exchangePaymentMode\":\"1\",\"buynowPaymentMode\":\"0\",\"cancelEnableStatus\":\"processing\",\"sellerClimbEnableDays\":\"0\",\"scrowPaymentMode\":\"1\",\"buynowPlugin\":\"0\"}',1,'{\"paypalType\":\"2\",\"paypalEmailId\":\"rajahussain64@yahoo.com\",\"paypalApiUserId\":null,\"paypalApiPassword\":null,\"paypalApiSignature\":null,\"paypalAppId\":null,\"paypalCcStatus\":null,\"paypalCcClientId\":null,\"paypalCcSecret\":null}','{\"brainTreeType\":\"2\",\"brainTreeMerchantId\":\"wd6v9yqp6syfxwnx\",\"brainTreePublicKey\":\"zbv82z73szs82hyd\",\"brainTreePrivateKey\":\"a88e10291a97c6ce89512a698d4109d8\"}','{\"apicredential\":{\"default\":{\"username\":\"ProVendor\",\"password\":\"0RWK9XM8\"},\"current\":{\"username\":\"ProVendor\",\"password\":\"0RWK9XM8\"}}}','{\"footerDetails\":{\"facebooklink\":\"http:\\/\\/facebook.com\\/\",\"googlelink\":\"http:\\/\\/google.com\\/\",\"twitterlink\":\"http:\\/\\/twitter.com\\/\",\"androidlink\":\"https:\\/\\/play.google.com\\/store\\/apps\\/details?id=com.awsystem.app.provendor\",\"ioslink\":\"http:\\/\\/google.com\\/\",\"footerCopyRightsDetails\":\"\\u00a9 Copyright 2017 AWSystem Limited. All rights reserved.\"}}','<script type=\"application/ld+json\" display=\"none\">\r\n{\r\n  \"@context\": \"http://schema.org/\",\r\n  \"@type\": \"Product\",\r\n  \"name\": \"ProVendor Online Classified\",\r\n  \"image\": \"http://provendor.com/media/logo/460_ProVendor%20logo.png\",\r\n  \"description\": \"Online Classified system to buy and sell things around your locations.\",\r\n  \"mpn\": \"\",\r\n  \"brand\": {\r\n    \"@type\": \"Thing\",\r\n    \"name\": \"ProVendor\"\r\n  },\r\n  \"aggregateRating\": {\r\n    \"@type\": \"AggregateRating\",\r\n    \"ratingValue\": \"4.4\",\r\n    \"reviewCount\": \"89\"\r\n  },\r\n  \"offers\": {\r\n    \"@type\": \"Offer\",\r\n    \"priceCurrency\": \"USD\",\r\n    \"price\": \"119.99\",\r\n    \"priceValidUntil\": \"2020-11-05\",\r\n    \"itemCondition\": \"http://provendor.com/admin\",\r\n    \"availability\": \"http://provendor.com/\",\r\n    \"seller\": {\r\n      \"@type\": \"Organization\",\r\n      \"name\": \"ProVendor Inc\"\r\n    }\r\n  }\r\n}\r\n</script>\r\n<script>\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-82148206-1\', \'auto\');\r\n  ga(\'send\', \'pageview\');\r\n\r\n</script>','AIzaSyCaMl_KhootfGmXzHjXOaPhA7_Qou14_0s','','','',0,0,0,1,'');
/*!40000 ALTER TABLE `tpri_sitesettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_tempaddresses`
--

DROP TABLE IF EXISTS `tpri_tempaddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_tempaddresses` (
  `shippingaddressId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address1` varchar(60) DEFAULT NULL,
  `address2` varchar(60) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `countryCode` int(11) DEFAULT NULL,
  `slug` varchar(20) NOT NULL,
  PRIMARY KEY (`shippingaddressId`),
  KEY `userId` (`userId`),
  KEY `countryCode` (`countryCode`),
  CONSTRAINT `countryCode0` FOREIGN KEY (`countryCode`) REFERENCES `tpri_country` (`countryId`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `userId0` FOREIGN KEY (`userId`) REFERENCES `tpri_users` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_tempaddresses`
--

LOCK TABLES `tpri_tempaddresses` WRITE;
/*!40000 ALTER TABLE `tpri_tempaddresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_tempaddresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_trackingdetails`
--

DROP TABLE IF EXISTS `tpri_trackingdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_trackingdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `status` varchar(150) NOT NULL,
  `merchantid` int(11) NOT NULL,
  `buyername` varchar(250) NOT NULL,
  `buyeraddress` tinytext NOT NULL,
  `shippingdate` int(11) NOT NULL,
  `couriername` varchar(250) NOT NULL,
  `courierservice` varchar(250) DEFAULT NULL,
  `trackingid` varchar(250) NOT NULL,
  `notes` tinytext,
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_trackingdetails`
--

LOCK TABLES `tpri_trackingdetails` WRITE;
/*!40000 ALTER TABLE `tpri_trackingdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_trackingdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_userdevices`
--

DROP TABLE IF EXISTS `tpri_userdevices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_userdevices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deviceToken` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `badge` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `mode` int(11) NOT NULL,
  `lang_type` varchar(50) NOT NULL,
  `cdate` int(11) DEFAULT NULL,
  `deviceId` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_userdevices`
--

LOCK TABLES `tpri_userdevices` WRITE;
/*!40000 ALTER TABLE `tpri_userdevices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpri_userdevices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpri_users`
--

DROP TABLE IF EXISTS `tpri_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpri_users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `phonevisible` int(1) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalcode` varchar(10) DEFAULT NULL,
  `geolocationDetails` varchar(250) NOT NULL,
  `userImage` varchar(50) DEFAULT NULL,
  `userstatus` tinyint(4) DEFAULT NULL,
  `activationStatus` tinyint(4) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `fbdetails` text,
  `facebook_session` text NOT NULL,
  `twitterId` bigint(20) DEFAULT NULL,
  `googleId` varchar(50) DEFAULT NULL,
  `notificationSettings` mediumtext,
  `defaultshipping` int(11) NOT NULL,
  `createdDate` int(11) NOT NULL,
  `lastLoginDate` int(11) NOT NULL,
  `averageRating` int(1) NOT NULL,
  `recently_view_product` text,
  `mobile_verificationcode` int(11) DEFAULT NULL,
  `mobile_status` int(11) NOT NULL DEFAULT '0',
  `unreadNotification` int(11) NOT NULL,
  `country_code` int(10) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpri_users`
--

LOCK TABLES `tpri_users` WRITE;
/*!40000 ALTER TABLE `tpri_users` DISABLE KEYS */;
INSERT INTO `tpri_users` VALUES (1,'ProVendor','ProVendor','MTIzNDU2','user@provendor.tk',NULL,0,NULL,NULL,NULL,NULL,'','5299_avatar1jpg',1,1,NULL,NULL,NULL,'',NULL,NULL,'{\"live\":null,\"comment\":null,\"message\":null,\"offer\":null,\"updates\":null}',0,1496599772,1512943242,0,'[\"1\",\"2\"]',NULL,0,0,0);
/*!40000 ALTER TABLE `tpri_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:13:13
