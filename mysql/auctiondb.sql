-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: auctiondb
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Genius Admin','admin','admin@gmail.com','0111111111','Bahamas','$2y$10$IqHFJevSztLR7RpeINrZCuMfSZi0XDY4Pyxu3Pfh5bMfmz3rCnMtO','administrator','1491825290645x430-film-animasi-larrikins-borong-bintang-bintang-australia-160604k.jpg','2017-01-24 03:21:40','2017-06-12 15:41:38','4RQmhCTjS8mCQkkrcq5E7oetP9QSAY5xFpe9iGSQHGxxAgYNC0FYR4p97e3M',1),(2,'S Zaman','genius','genius@gmail.com','000000000',NULL,'$2y$10$DozM30vRGMY9aDIh2EKxROmvuJRtBMimO2ox/rF8uXjMBYBjLvVRe','administrator','11822730_1619598781649385_5506560502405630990_n.jpg','2017-01-27 22:35:17','2017-03-06 11:02:08','',1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisements`
--

DROP TABLE IF EXISTS `advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('script','banner') NOT NULL,
  `advertiser_name` varchar(255) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `banner_size` varchar(255) NOT NULL,
  `banner_file` varchar(255) DEFAULT NULL,
  `script` text,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisements`
--

LOCK TABLES `advertisements` WRITE;
/*!40000 ALTER TABLE `advertisements` DISABLE KEYS */;
INSERT INTO `advertisements` VALUES (1,'banner','Banner 3','http://geniusocean.com','728x90','1502034653add.jpg','',0,1);
/*!40000 ALTER TABLE `advertisements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auction_gallery`
--

DROP TABLE IF EXISTS `auction_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auction_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auctionid` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `stasus` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auction_gallery`
--

LOCK TABLES `auction_gallery` WRITE;
/*!40000 ALTER TABLE `auction_gallery` DISABLE KEYS */;
INSERT INTO `auction_gallery` VALUES (1,1,'391501172216Denim-Jumpsuits-For-Spring-Summer-2016-4.jpg',1),(2,1,'8M1501172216ljfsu9-l.jpg',1),(3,7,'OC1502032505featured.jpg',1),(4,7,'G41502032505icon.jpg',1);
/*!40000 ALTER TABLE `auction_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctions`
--

DROP TABLE IF EXISTS `auctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auctions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdby` int(11) NOT NULL DEFAULT '0',
  `owner` enum('admin','user') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `feature_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `condition` enum('New','Used','Recondition') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'New',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `price` float DEFAULT '0',
  `start_amount` float NOT NULL DEFAULT '0',
  `winner` int(11) DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT '0',
  `admin_aproved` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `paid_status` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','open','closed','reject') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctions`
--

LOCK TABLES `auctions` WRITE;
/*!40000 ALTER TABLE `auctions` DISABLE KEYS */;
INSERT INTO `auctions` VALUES (1,0,'admin','Fashion','Testing First Auction','<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id \r\ncongue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta\r\n tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est \r\nsapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam \r\nfeugiat enim id dolor finibus interdum. In elementum nisi eget sem \r\nbibendum elementum. In pharetra auctor augue. Donec nisl dolor, \r\nvenenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante\r\n sed tempus.\r\n</p>\r\n<p>\r\nNunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,\r\n ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat. \r\nQuisque a sapien ultrices, tincidunt velit eget, fringilla erat. \r\nPellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit \r\njusto. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor. \r\nNunc varius tellus id dui eleifend facilisis. Phasellus lectus elit, \r\npulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu \r\nsed metus viverra, id rutrum elit interdum. Nam in pellentesque urna. \r\nInteger ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante, \r\neget consectetur metus mauris commodo erat. Integer pharetra ante vel \r\ndolor convallis, vel tincidunt urna consequat.\r\n</p>','1501172216women-plus-size-2017.jpg','New',NULL,'2017-07-30 00:00:00',2000,800,1,1,'yes','no','2017-07-27 16:16:56','2017-08-01 16:11:38','closed'),(3,2,'user','Fashion','Testing First User Auction','<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id \r\ncongue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta\r\n tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est \r\nsapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam \r\nfeugiat enim id dolor finibus interdum. In elementum nisi eget sem \r\nbibendum elementum. In pharetra auctor augue. Donec nisl dolor, \r\nvenenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante\r\n sed tempus.\r\n</p>\r\n<p>\r\nNunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,\r\n ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat. \r\nQuisque a sapien ultrices, tincidunt velit eget, fringilla erat. \r\nPellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit \r\njusto. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor. \r\nNunc varius tellus id dui eleifend facilisis. Phasellus lectus elit, \r\npulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu \r\nsed metus viverra, id rutrum elit interdum. Nam in pellentesque urna. \r\nInteger ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante, \r\neget consectetur metus mauris commodo erat. Integer pharetra ante vel \r\ndolor convallis, vel tincidunt urna consequat.\r\n</p>','150132540172d783df472ec91220ca7714adf113c6.jpg','New',NULL,'2017-07-31 00:00:00',3000,1200,NULL,1,'yes','no','2017-07-29 10:50:01','2017-07-30 16:49:16','closed'),(4,0,'admin','Fashion','Final User Action 1','<h2 style=\"margin: 0px 0px 10px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px; text-align: left; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">What is Lorem Ipsum?</h2><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','1501673611women-plus-size-2017.jpg','New',NULL,'2017-08-01 00:00:00',1000,400,6,1,'yes','yes','2017-08-02 11:33:31','2017-08-02 17:20:58','closed'),(5,0,'admin','Fashion','Your Auction Title Here','In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.','1501842018Denim-Jumpsuits-For-Spring-Summer-2016-4.jpg','New',NULL,'2017-08-05 10:35:14',1200,600,7,1,'yes','yes','2017-08-04 10:20:18','2018-01-28 16:28:07','closed'),(6,2,'user','Nonprofit','Your Auction Title 2','<strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong><span>&nbsp;</span>is\r\n simply dummy text of the printing and typesetting industry. Lorem Ipsum\r\n has been the industry\'s standard dummy text ever since the 1500s, when \r\nan unknown printer took a galley of type and scrambled it to make a type\r\n specimen book. It has survived not only five centuries, but also the \r\nleap into electronic typesetting, remaining essentially unchanged. It \r\nwas popularised in the 1960s with the release of Letraset sheets \r\ncontaining Lorem Ipsum passages, and more recently with desktop \r\npublishing software like Aldus PageMaker including versions of Lorem \r\nIpsum.','1501842563ljfsu9-l.jpg','New',NULL,'2017-08-05 11:41:36',800,500,8,1,'yes','yes','2017-08-04 10:29:23','2017-08-05 12:44:35','closed'),(7,2,'user','Nonprofit','Test Toru Goru tewst','<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','1502032505featured.jpg','New',NULL,'2018-02-05 00:00:00',50,30,NULL,1,'yes','no','2017-08-06 15:15:05','2018-02-26 15:25:46','closed'),(8,2,'user','Nonprofit','Test Toru Goru','<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','1502032505featured.jpg','New',NULL,'2018-02-05 00:00:00',50,30,NULL,1,'yes','no','2017-08-06 15:15:05','2018-02-06 13:48:41','closed'),(9,0,'admin','Nonprofit','First One Time Auction Testing...gjghj','5etuftgjn iutikughkghj utuytoouyt<br>','1519651386FB_IMG_1518387931102.jpg','New',NULL,'2018-02-28 00:00:00',50,10,NULL,1,'yes','no','2018-02-26 13:23:06','2018-02-26 13:23:06','open'),(10,2,'user','Nonprofit','Third One Time user Auction Testing...','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam, \r\nodioserunt provident maiores consectetur adipisicing elit. Aliquam odio \r\ndese runtesseu provident maiores libero porro dolorem est. Velit \r\nnecessitatibus fugiat error incidunt excepturi doloribus officia \r\naspernatur quod libero Velit necessitatibus fugiat error incidunt \r\nexcepturi doloribus officia','1519660219Donations-min.jpg','New',NULL,'2018-03-07 00:00:00',500,100,NULL,0,'yes','no','2018-02-26 15:50:19','2018-02-26 15:55:15','open');
/*!40000 ALTER TABLE `auctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bids`
--

DROP TABLE IF EXISTS `bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bidder` int(11) DEFAULT NULL,
  `auctionid` int(11) DEFAULT NULL,
  `bid_amount` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `winner` enum('yes','no') NOT NULL DEFAULT 'no',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bids`
--

LOCK TABLES `bids` WRITE;
/*!40000 ALTER TABLE `bids` DISABLE KEYS */;
/*!40000 ALTER TABLE `bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `featured_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'The Blog Title 1','In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.','JVsukaZ4gZZujLWoK4yRYUR6rj.jpg','geniusocean.com',18,'2017-11-28 15:25:10','2018-02-25 12:59:13',1),(2,'The Blog Title 2','In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.','ukaZ4gZZujLWoK4yRYUR6rj.jpg','geniusocean.com',36,'2017-11-28 15:25:10','2018-02-10 16:31:11',1),(3,'The Blog Title 3','In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.','ukaZ4gZZujLWoK4yRYUR6rj.jpg','geniusocean.com',10,'2017-11-28 15:25:10','2018-02-10 16:30:18',1),(4,'The Blog Title 5','In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.','ukaZ4gZZujLWoK4yRYUR6rj.jpg','geniusocean.com',12,'2017-11-28 15:25:10','2018-02-10 16:30:23',1);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdby` int(11) NOT NULL DEFAULT '0',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `feature_image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `video_link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `goal` int(11) DEFAULT NULL,
  `available_fund` float NOT NULL DEFAULT '0',
  `default_amount` float DEFAULT NULL,
  `preloaded_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_after` enum('goal','date') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'goal',
  `featured` int(11) NOT NULL DEFAULT '0',
  `admin_aproved` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','running','closed','reject') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,0,'Health','First Campaign','<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id \r\ncongue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta\r\n tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est \r\nsapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam \r\nfeugiat enim id dolor finibus interdum. In elementum nisi eget sem \r\nbibendum elementum. In pharetra auctor augue. Donec nisl dolor, \r\nvenenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante\r\n sed tempus.\r\n</p>\r\n<p>\r\nNunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,\r\n ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat. \r\nQuisque a sapien ultrices, tincidunt velit eget, fringilla erat. \r\nPellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit \r\njusto. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor. \r\nNunc varius tellus id dui eleifend facilisis. Phasellus lectus elit, \r\npulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu \r\nsed metus viverra, id rutrum elit interdum. Nam in pellentesque urna. \r\nInteger ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante, \r\neget consectetur metus mauris commodo erat. Integer pharetra ante vel \r\ndolor convallis, vel tincidunt urna consequat.\r\n</p>\r\n<p>\r\nAenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra \r\nsem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero. \r\nNullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque. \r\nNam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis, \r\nlibero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi \r\nsagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere \r\nodio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae \r\ntellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus \r\net magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc \r\nut lorem vestibulum fermentum sit amet ac metus.\r\n</p>\r\n<p>\r\nSed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat \r\nconsectetur, nibh neque elementum neque, ac sagittis sapien odio nec \r\nnisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem. \r\nVestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet \r\nturpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel \r\ncommodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.\r\n Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi. \r\nCras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet. \r\nAenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit\r\n amet iaculis facilisis. Praesent scelerisque elit nec accumsan \r\nultricies.\r\n</p>','1496595123first.jpg','https://www.youtube.com/watch?v=WLt2cnu9Hg0',NULL,'2017-06-11 00:00:00',2000,0,20,'20.00,30.00,40.00,50.00','date',1,'yes','2017-06-04 16:52:03','2017-06-12 11:27:31','closed'),(3,2,'Nonprofit','Second User Campaign','<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id \r\ncongue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta\r\n tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est \r\nsapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam \r\nfeugiat enim id dolor finibus interdum. In elementum nisi eget sem \r\nbibendum elementum. In pharetra auctor augue. Donec nisl dolor, \r\nvenenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante\r\n sed tempus.\r\n</p>\r\n<p>\r\nNunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,\r\n ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat. \r\nQuisque a sapien ultrices, tincidunt velit eget, fringilla erat. \r\nPellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit \r\njusto. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor. \r\nNunc varius tellus id dui eleifend facilisis. Phasellus lectus elit, \r\npulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu \r\nsed metus viverra, id rutrum elit interdum. Nam in pellentesque urna. \r\nInteger ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante, \r\neget consectetur metus mauris commodo erat. Integer pharetra ante vel \r\ndolor convallis, vel tincidunt urna consequat.\r\n</p>\r\n<p>\r\nAenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra \r\nsem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero. \r\nNullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque. \r\nNam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis, \r\nlibero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi \r\nsagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere \r\nodio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae \r\ntellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus \r\net magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc \r\nut lorem vestibulum fermentum sit amet ac metus.\r\n</p>\r\n<p>\r\nSed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat \r\nconsectetur, nibh neque elementum neque, ac sagittis sapien odio nec \r\nnisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem. \r\nVestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet \r\nturpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel \r\ncommodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.\r\n Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi. \r\nCras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet. \r\nAenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit\r\n amet iaculis facilisis. Praesent scelerisque elit nec accumsan \r\nultricies.\r\n</p>','1496595123first.jpg','https://www.youtube.com/watch?v=WLt2cnu9Hg0',NULL,'2017-06-12 00:00:00',2100,200,NULL,'20,30,50,60','goal',1,'yes','2017-06-10 15:56:32','2017-06-12 15:58:11','running'),(5,2,'Health','Campaign For Africa','<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id \r\ncongue lorem, sed egestas mauris. Suspendisse euismod mi facilisis porta\r\n tincidunt. Sed in nisi vitae lacus laoreet vulputate. Aenean est \r\nsapien, ullamcorper lacinia eros consequat, laoreet dignissim eros. Nam \r\nfeugiat enim id dolor finibus interdum. In elementum nisi eget sem \r\nbibendum elementum. In pharetra auctor augue. Donec nisl dolor, \r\nvenenatis ac nulla eget, elementum iaculis nunc. Etiam fermentum at ante\r\n sed tempus.\r\n</p>\r\n<p>\r\nNunc porttitor, tellus in aliquam pretium, turpis mauris placerat metus,\r\n ac interdum lorem dolor mattis lectus. Pellentesque sed bibendum erat. \r\nQuisque a sapien ultrices, tincidunt velit eget, fringilla erat. \r\nPellentesque eget erat dolor. Sed eget porta odio, mollis hendrerit \r\njusto. Aenean odio arcu, rhoncus vitae facilisis at, cursus sed tortor. \r\nNunc varius tellus id dui eleifend facilisis. Phasellus lectus elit, \r\npulvinar sed nibh in, porttitor consequat dolor. Cras condimentum arcu \r\nsed metus viverra, id rutrum elit interdum. Nam in pellentesque urna. \r\nInteger ullamcorper, ex nec accumsan sodales, ipsum ipsum congue ante, \r\neget consectetur metus mauris commodo erat. Integer pharetra ante vel \r\ndolor convallis, vel tincidunt urna consequat.\r\n</p>\r\n<p>\r\nAenean diam quam, eleifend sit amet mauris nec, sollicitudin viverra \r\nsem. Duis nisl magna, consectetur ac ullamcorper a, mollis ac libero. \r\nNullam vestibulum ex ac neque efficitur, non finibus nisl pellentesque. \r\nNam ac turpis dolor. Nunc blandit, dolor id pellentesque sagittis, \r\nlibero mauris dignissim ipsum, et dignissim lorem lacus ut lacus. Morbi \r\nsagittis tincidunt finibus. Duis ut rutrum leo. Sed consectetur posuere \r\nodio, ac consectetur diam dapibus ac. Praesent elementum arcu vitae \r\ntellus lacinia, sed molestie ex accumsan. Orci varius natoque penatibus \r\net magnis dis parturient montes, nascetur ridiculus mus. Aenean ut nunc \r\nut lorem vestibulum fermentum sit amet ac metus.\r\n</p>\r\n<p>\r\nSed fringilla et nulla a maximus. Duis accumsan, sapien eu feugiat \r\nconsectetur, nibh neque elementum neque, ac sagittis sapien odio nec \r\nnisi. Morbi porta quis eros quis ornare. Quisque vel iaculis lorem. \r\nVestibulum faucibus, turpis eu hendrerit laoreet, nisl arcu imperdiet \r\nturpis, egestas pretium ante elit at mi. Nulla suscipit at felis vel \r\ncommodo. Nullam quis tempor eros. Nunc aliquet mattis nibh ut ultricies.\r\n Vestibulum enim eros, malesuada sed quam in, malesuada accumsan mi. \r\nCras vel dolor purus. Sed fringilla lectus in justo aliquam imperdiet. \r\nAenean tincidunt libero dictum dapibus rhoncus. Nulla iaculis lectus sit\r\n amet iaculis facilisis. Praesent scelerisque elit nec accumsan \r\nultricies.\r\n</p>','1497277141first.jpg',NULL,NULL,'2017-06-15 00:00:00',100,0,NULL,'20.00,30.00,40.00,50.00','goal',0,'yes','2017-06-12 14:19:01','2017-06-12 15:19:31','closed');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (19,'Nonprofit','nonprofit','future.jpg',1),(20,'Fashion','fashion','1519659678Donations-min.jpg',1),(21,'Foods','foods','future.jpg',1),(22,'Health','health','future.jpg',1),(24,'Innovation','innovation','future.jpg',1),(25,'Sport','sport','future.jpg',1),(26,'Test Name','one-time44','1519583281Donations-min.jpg',1),(27,'Test Name22','one-time4422','1519583332Donations-min.jpg',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code_scripts`
--

DROP TABLE IF EXISTS `code_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `code_scripts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `google_analytics` text NOT NULL,
  `meta_keys` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code_scripts`
--

LOCK TABLES `code_scripts` WRITE;
/*!40000 ALTER TABLE `code_scripts` DISABLE KEYS */;
INSERT INTO `code_scripts` VALUES (1,'<script>\r\n   //Google Analytics Scriptfffffffffffffffffffffffssssfffffs\r\n</script>','Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');
/*!40000 ALTER TABLE `code_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (1,'browser','Windows 8.1',22,0,NULL),(2,'browser','Windows 10',191,0,NULL),(3,'referral','geniusocean.com',1,0,NULL),(4,'browser','Windows 7',3,0,NULL),(5,'browser','Unknown OS Platform',18,0,NULL);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'AF','AFGHANISTAN','Afghanistan','AFG',4,93),(2,'AL','ALBANIA','Albania','ALB',8,355),(3,'DZ','ALGERIA','Algeria','DZA',12,213),(4,'AS','AMERICAN SAMOA','American Samoa','ASM',16,1684),(5,'AD','ANDORRA','Andorra','AND',20,376),(6,'AO','ANGOLA','Angola','AGO',24,244),(7,'AI','ANGUILLA','Anguilla','AIA',660,1264),(9,'AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',28,1268),(10,'AR','ARGENTINA','Argentina','ARG',32,54),(11,'AM','ARMENIA','Armenia','ARM',51,374),(12,'AW','ARUBA','Aruba','ABW',533,297),(13,'AU','AUSTRALIA','Australia','AUS',36,61),(14,'AT','AUSTRIA','Austria','AUT',40,43),(15,'AZ','AZERBAIJAN','Azerbaijan','AZE',31,994),(16,'BS','BAHAMAS','Bahamas','BHS',44,1242),(17,'BH','BAHRAIN','Bahrain','BHR',48,973),(18,'BD','BANGLADESH','Bangladesh','BGD',50,880),(19,'BB','BARBADOS','Barbados','BRB',52,1246),(20,'BY','BELARUS','Belarus','BLR',112,375),(21,'BE','BELGIUM','Belgium','BEL',56,32),(22,'BZ','BELIZE','Belize','BLZ',84,501),(23,'BJ','BENIN','Benin','BEN',204,229),(24,'BM','BERMUDA','Bermuda','BMU',60,1441),(25,'BT','BHUTAN','Bhutan','BTN',64,975),(26,'BO','BOLIVIA','Bolivia','BOL',68,591),(27,'BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',70,387),(28,'BW','BOTSWANA','Botswana','BWA',72,267),(29,'BV','BOUVET ISLAND','Bouvet Island',NULL,NULL,0),(30,'BR','BRAZIL','Brazil','BRA',76,55),(31,'IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory',NULL,NULL,246),(32,'BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',96,673),(33,'BG','BULGARIA','Bulgaria','BGR',100,359),(34,'BF','BURKINA FASO','Burkina Faso','BFA',854,226),(35,'BI','BURUNDI','Burundi','BDI',108,257),(36,'KH','CAMBODIA','Cambodia','KHM',116,855),(37,'CM','CAMEROON','Cameroon','CMR',120,237),(38,'CA','CANADA','Canada','CAN',124,1),(39,'CV','CAPE VERDE','Cape Verde','CPV',132,238),(40,'KY','CAYMAN ISLANDS','Cayman Islands','CYM',136,1345),(41,'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',140,236),(42,'TD','CHAD','Chad','TCD',148,235),(43,'CL','CHILE','Chile','CHL',152,56),(44,'CN','CHINA','China','CHN',156,86),(45,'CX','CHRISTMAS ISLAND','Christmas Island',NULL,NULL,61),(46,'CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands',NULL,NULL,672),(47,'CO','COLOMBIA','Colombia','COL',170,57),(48,'KM','COMOROS','Comoros','COM',174,269),(49,'CG','CONGO','Congo','COG',178,242),(50,'CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',180,242),(51,'CK','COOK ISLANDS','Cook Islands','COK',184,682),(52,'CR','COSTA RICA','Costa Rica','CRI',188,506),(53,'CI','COTE D\'IVOIRE','Cote D\'Ivoire','CIV',384,225),(54,'HR','CROATIA','Croatia','HRV',191,385),(55,'CU','CUBA','Cuba','CUB',192,53),(56,'CY','CYPRUS','Cyprus','CYP',196,357),(57,'CZ','CZECH REPUBLIC','Czech Republic','CZE',203,420),(58,'DK','DENMARK','Denmark','DNK',208,45),(59,'DJ','DJIBOUTI','Djibouti','DJI',262,253),(60,'DM','DOMINICA','Dominica','DMA',212,1767),(61,'DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',214,1809),(62,'EC','ECUADOR','Ecuador','ECU',218,593),(63,'EG','EGYPT','Egypt','EGY',818,20),(64,'SV','EL SALVADOR','El Salvador','SLV',222,503),(65,'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',226,240),(66,'ER','ERITREA','Eritrea','ERI',232,291),(67,'EE','ESTONIA','Estonia','EST',233,372),(68,'ET','ETHIOPIA','Ethiopia','ETH',231,251),(69,'FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',238,500),(70,'FO','FAROE ISLANDS','Faroe Islands','FRO',234,298),(71,'FJ','FIJI','Fiji','FJI',242,679),(72,'FI','FINLAND','Finland','FIN',246,358),(73,'FR','FRANCE','France','FRA',250,33),(74,'GF','FRENCH GUIANA','French Guiana','GUF',254,594),(75,'PF','FRENCH POLYNESIA','French Polynesia','PYF',258,689),(76,'TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories',NULL,NULL,0),(77,'GA','GABON','Gabon','GAB',266,241),(78,'GM','GAMBIA','Gambia','GMB',270,220),(79,'GE','GEORGIA','Georgia','GEO',268,995),(80,'DE','GERMANY','Germany','DEU',276,49),(81,'GH','GHANA','Ghana','GHA',288,233),(82,'GI','GIBRALTAR','Gibraltar','GIB',292,350),(83,'GR','GREECE','Greece','GRC',300,30),(84,'GL','GREENLAND','Greenland','GRL',304,299),(85,'GD','GRENADA','Grenada','GRD',308,1473),(86,'GP','GUADELOUPE','Guadeloupe','GLP',312,590),(87,'GU','GUAM','Guam','GUM',316,1671),(88,'GT','GUATEMALA','Guatemala','GTM',320,502),(89,'GN','GUINEA','Guinea','GIN',324,224),(90,'GW','GUINEA-BISSAU','Guinea-Bissau','GNB',624,245),(91,'GY','GUYANA','Guyana','GUY',328,592),(92,'HT','HAITI','Haiti','HTI',332,509),(93,'HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands',NULL,NULL,0),(94,'VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',336,39),(95,'HN','HONDURAS','Honduras','HND',340,504),(96,'HK','HONG KONG','Hong Kong','HKG',344,852),(97,'HU','HUNGARY','Hungary','HUN',348,36),(98,'IS','ICELAND','Iceland','ISL',352,354),(99,'IN','INDIA','India','IND',356,91),(100,'ID','INDONESIA','Indonesia','IDN',360,62),(101,'IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',364,98),(102,'IQ','IRAQ','Iraq','IRQ',368,964),(103,'IE','IRELAND','Ireland','IRL',372,353),(104,'IL','ISRAEL','Israel','ISR',376,972),(105,'IT','ITALY','Italy','ITA',380,39),(106,'JM','JAMAICA','Jamaica','JAM',388,1876),(107,'JP','JAPAN','Japan','JPN',392,81),(108,'JO','JORDAN','Jordan','JOR',400,962),(109,'KZ','KAZAKHSTAN','Kazakhstan','KAZ',398,7),(110,'KE','KENYA','Kenya','KEN',404,254),(111,'KI','KIRIBATI','Kiribati','KIR',296,686),(112,'KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of','PRK',408,850),(113,'KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',410,82),(114,'KW','KUWAIT','Kuwait','KWT',414,965),(115,'KG','KYRGYZSTAN','Kyrgyzstan','KGZ',417,996),(116,'LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic','LAO',418,856),(117,'LV','LATVIA','Latvia','LVA',428,371),(118,'LB','LEBANON','Lebanon','LBN',422,961),(119,'LS','LESOTHO','Lesotho','LSO',426,266),(120,'LR','LIBERIA','Liberia','LBR',430,231),(121,'LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',434,218),(122,'LI','LIECHTENSTEIN','Liechtenstein','LIE',438,423),(123,'LT','LITHUANIA','Lithuania','LTU',440,370),(124,'LU','LUXEMBOURG','Luxembourg','LUX',442,352),(125,'MO','MACAO','Macao','MAC',446,853),(126,'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',807,389),(127,'MG','MADAGASCAR','Madagascar','MDG',450,261),(128,'MW','MALAWI','Malawi','MWI',454,265),(129,'MY','MALAYSIA','Malaysia','MYS',458,60),(130,'MV','MALDIVES','Maldives','MDV',462,960),(131,'ML','MALI','Mali','MLI',466,223),(132,'MT','MALTA','Malta','MLT',470,356),(133,'MH','MARSHALL ISLANDS','Marshall Islands','MHL',584,692),(134,'MQ','MARTINIQUE','Martinique','MTQ',474,596),(135,'MR','MAURITANIA','Mauritania','MRT',478,222),(136,'MU','MAURITIUS','Mauritius','MUS',480,230),(137,'YT','MAYOTTE','Mayotte',NULL,NULL,269),(138,'MX','MEXICO','Mexico','MEX',484,52),(139,'FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',583,691),(140,'MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',498,373),(141,'MC','MONACO','Monaco','MCO',492,377),(142,'MN','MONGOLIA','Mongolia','MNG',496,976),(143,'MS','MONTSERRAT','Montserrat','MSR',500,1664),(144,'MA','MOROCCO','Morocco','MAR',504,212),(145,'MZ','MOZAMBIQUE','Mozambique','MOZ',508,258),(146,'MM','MYANMAR','Myanmar','MMR',104,95),(147,'NA','NAMIBIA','Namibia','NAM',516,264),(148,'NR','NAURU','Nauru','NRU',520,674),(149,'NP','NEPAL','Nepal','NPL',524,977),(150,'NL','NETHERLANDS','Netherlands','NLD',528,31),(151,'AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',530,599),(152,'NC','NEW CALEDONIA','New Caledonia','NCL',540,687),(153,'NZ','NEW ZEALAND','New Zealand','NZL',554,64),(154,'NI','NICARAGUA','Nicaragua','NIC',558,505),(155,'NE','NIGER','Niger','NER',562,227),(156,'NG','NIGERIA','Nigeria','NGA',566,234),(157,'NU','NIUE','Niue','NIU',570,683),(158,'NF','NORFOLK ISLAND','Norfolk Island','NFK',574,672),(159,'MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',580,1670),(160,'NO','NORWAY','Norway','NOR',578,47),(161,'OM','OMAN','Oman','OMN',512,968),(162,'PK','PAKISTAN','Pakistan','PAK',586,92),(163,'PW','PALAU','Palau','PLW',585,680),(164,'PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied',NULL,NULL,970),(165,'PA','PANAMA','Panama','PAN',591,507),(166,'PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',598,675),(167,'PY','PARAGUAY','Paraguay','PRY',600,595),(168,'PE','PERU','Peru','PER',604,51),(169,'PH','PHILIPPINES','Philippines','PHL',608,63),(170,'PN','PITCAIRN','Pitcairn','PCN',612,0),(171,'PL','POLAND','Poland','POL',616,48),(172,'PT','PORTUGAL','Portugal','PRT',620,351),(173,'PR','PUERTO RICO','Puerto Rico','PRI',630,1787),(174,'QA','QATAR','Qatar','QAT',634,974),(175,'RE','REUNION','Reunion','REU',638,262),(176,'RO','ROMANIA','Romania','ROM',642,40),(177,'RU','RUSSIAN FEDERATION','Russian Federation','RUS',643,70),(178,'RW','RWANDA','Rwanda','RWA',646,250),(179,'SH','SAINT HELENA','Saint Helena','SHN',654,290),(180,'KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',659,1869),(181,'LC','SAINT LUCIA','Saint Lucia','LCA',662,1758),(182,'PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',666,508),(183,'VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',670,1784),(184,'WS','SAMOA','Samoa','WSM',882,684),(185,'SM','SAN MARINO','San Marino','SMR',674,378),(186,'ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',678,239),(187,'SA','SAUDI ARABIA','Saudi Arabia','SAU',682,966),(188,'SN','SENEGAL','Senegal','SEN',686,221),(189,'CS','SERBIA AND MONTENEGRO','Serbia and Montenegro',NULL,NULL,381),(190,'SC','SEYCHELLES','Seychelles','SYC',690,248),(191,'SL','SIERRA LEONE','Sierra Leone','SLE',694,232),(192,'SG','SINGAPORE','Singapore','SGP',702,65),(193,'SK','SLOVAKIA','Slovakia','SVK',703,421),(194,'SI','SLOVENIA','Slovenia','SVN',705,386),(195,'SB','SOLOMON ISLANDS','Solomon Islands','SLB',90,677),(196,'SO','SOMALIA','Somalia','SOM',706,252),(197,'ZA','SOUTH AFRICA','South Africa','ZAF',710,27),(198,'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands',NULL,NULL,0),(199,'ES','SPAIN','Spain','ESP',724,34),(200,'LK','SRI LANKA','Sri Lanka','LKA',144,94),(201,'SD','SUDAN','Sudan','SDN',736,249),(202,'SR','SURINAME','Suriname','SUR',740,597),(203,'SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',744,47),(204,'SZ','SWAZILAND','Swaziland','SWZ',748,268),(205,'SE','SWEDEN','Sweden','SWE',752,46),(206,'CH','SWITZERLAND','Switzerland','CHE',756,41),(207,'SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',760,963),(208,'TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',158,886),(209,'TJ','TAJIKISTAN','Tajikistan','TJK',762,992),(210,'TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',834,255),(211,'TH','THAILAND','Thailand','THA',764,66),(212,'TL','TIMOR-LESTE','Timor-Leste',NULL,NULL,670),(213,'TG','TOGO','Togo','TGO',768,228),(214,'TK','TOKELAU','Tokelau','TKL',772,690),(215,'TO','TONGA','Tonga','TON',776,676),(216,'TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',780,1868),(217,'TN','TUNISIA','Tunisia','TUN',788,216),(218,'TR','TURKEY','Turkey','TUR',792,90),(219,'TM','TURKMENISTAN','Turkmenistan','TKM',795,7370),(220,'TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',796,1649),(221,'TV','TUVALU','Tuvalu','TUV',798,688),(222,'UG','UGANDA','Uganda','UGA',800,256),(223,'UA','UKRAINE','Ukraine','UKR',804,380),(224,'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',784,971),(225,'GB','UNITED KINGDOM','United Kingdom','GBR',826,44),(226,'US','UNITED STATES','United States','USA',840,1),(227,'UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands',NULL,NULL,1),(228,'UY','URUGUAY','Uruguay','URY',858,598),(229,'UZ','UZBEKISTAN','Uzbekistan','UZB',860,998),(230,'VU','VANUATU','Vanuatu','VUT',548,678),(231,'VE','VENEZUELA','Venezuela','VEN',862,58),(232,'VN','VIET NAM','Viet Nam','VNM',704,84),(233,'VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',92,1284),(234,'VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',850,1340),(235,'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',876,681),(236,'EH','WESTERN SAHARA','Western Sahara','ESH',732,212),(237,'YE','YEMEN','Yemen','YEM',887,967),(238,'ZM','ZAMBIA','Zambia','ZMB',894,260),(239,'ZW','ZIMBABWE','Zimbabwe','ZWE',716,263);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'First FAQ Question?','<span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the <br></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the <br></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the </span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the <br><br></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">One of the most beloved song of the 90\'s is here for, brought to you in fine hogh definition by one of the biggest SRK-Kajol fan Abhishek Singh.Hope you all enjoy the full song.Please subscribe as well for more videos.As I am new, you probably wont find much videos from me now. But since the </span><br><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: pre-wrap; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span>',1),(2,'First FAQ Question 23333?','In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br><br>In publishing and graphic design, lorem ipsum is a filler text commonly \r\nused to demonstrate the graphic elements of a document or visual \r\npresentation.<br>',1),(3,'test questionssssss 4344','fdkjfgadbfogj vaduofgbad gousdgojadoufghdakpofgupioadhgfpineqg',1),(4,'test questionssssss','fdkjfgadbfogj vaduofgbad gousdgojadoufghdakpofgupioadhgfpineqg',1);
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_images`
--

DROP TABLE IF EXISTS `gallery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `packageid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_images`
--

LOCK TABLES `gallery_images` WRITE;
/*!40000 ALTER TABLE `gallery_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_settings`
--

DROP TABLE IF EXISTS `page_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contact_email` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `about` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `faq` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `welcome_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `welcome_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `welcome_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `welcome_link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `slider_status` int(11) DEFAULT '1',
  `split_status` int(11) DEFAULT '1',
  `welcome_status` int(11) DEFAULT '1',
  `service_status` int(11) DEFAULT '1',
  `category_status` int(11) DEFAULT '1',
  `counter_status` int(11) DEFAULT '1',
  `latest_status` int(11) DEFAULT '1',
  `featured_status` int(11) DEFAULT '1',
  `portfolio_status` int(11) DEFAULT '1',
  `testimonial_status` int(11) DEFAULT '1',
  `blog_status` int(11) DEFAULT '1',
  `partners_status` int(11) DEFAULT '1',
  `home_reg_status` int(11) DEFAULT '1',
  `w_b_status` int(11) NOT NULL DEFAULT '1',
  `c_status` int(11) NOT NULL,
  `a_status` int(11) NOT NULL,
  `f_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_settings`
--

LOCK TABLES `page_settings` WRITE;
/*!40000 ALTER TABLE `page_settings` DISABLE KEYS */;
INSERT INTO `page_settings` VALUES (1,'Success! Thanks for contacting us, we will get back to you shortly.','admin@geniusocean.com','<div>\r\n<h2>Title number 1<br></h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>\r\n</div><div>\r\n<h2>Title number 2<br></h2>\r\n<p>It is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).</p>\r\n</div><br><div>\r\n<h2>Title number 3<br></h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.</p>\r\n</div>\r\n<h2>Title number 9<br></h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which don\'t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisn\'t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.</p>','<div>\r\n<h2>What is Lorem Ipsum, Really?</h2>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and\r\n typesetting industry. Lorem Ipsum has been the industry\'s standard \r\ndummy text ever since the 1500s, when an unknown printer took a galley \r\nof type and scrambled it to make a type specimen book. It has survived \r\nnot only five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.</p>\r\n</div><div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the\r\n readable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).</p>\r\n</div><br><div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It\r\n has roots in a piece of classical Latin literature from 45 BC, making \r\nit over 2000 years old. Richard McClintock, a Latin professor at \r\nHampden-Sydney College in Virginia, looked up one of the more obscure \r\nLatin words, consectetur, from a Lorem Ipsum passage, and going through \r\nthe cites of the word in classical literature, discovered the \r\nundoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 \r\nof \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by \r\nCicero, written in 45 BC. This book is a treatise on the theory of \r\nethics, very popular during the Renaissance. The first line of Lorem \r\nIpsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section \r\n1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is\r\n reproduced below for those interested. Sections 1.10.32 and 1.10.33 \r\nfrom \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in \r\ntheir exact original form, accompanied by English versions from the 1914\r\n translation by H. Rackham.</p>\r\n</div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have suffered alteration in some form, by injected humour, \r\nor randomised words which don\'t look even slightly believable. If you \r\nare going to use a passage of Lorem Ipsum, you need to be sure there \r\nisn\'t anything embarrassing hidden in the middle of text. All the Lorem \r\nIpsum generators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.</p>','Welcome to FundPro Please Rise your Helping Hand','16T26165752_1605377126220778_1140583099586293990_n.jpg','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam, odioserunt provident maiores consectetur adipisicing elit. Aliquam odio dese runtesseu provident maiores libero porro dolorem est. Velit necessitatibus fugiat error incidunt excepturi doloribus officia aspernatur quod libero Velit necessitatibus fugiat error incidunt excepturi doloribus officia','http://localhost/charityup/campaigns',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `page_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
INSERT INTO `portfolios` VALUES (3,'7uJsingle_project1.png',1),(4,'PRSsingle_project2.png',1),(5,'jIOsingle_project3.png',1),(6,'NRysingle_project5.png',1),(7,'VDjsingle_project6.png',1),(8,'s36single_project7.png',1);
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_titles`
--

DROP TABLE IF EXISTS `section_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_titles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `service_text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `category_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `newcamp_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `newcamp_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `pricing_title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `pricing_text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `portfolio_title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `portfolio_text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `blog_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `testimonial_title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `testimonial_text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_titles`
--

LOCK TABLES `section_titles` WRITE;
/*!40000 ALTER TABLE `section_titles` DISABLE KEYS */;
INSERT INTO `section_titles` VALUES (1,'Our Services','In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.','Auction Categories','In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.','Latest Auction','In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.','Featured Auction','In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentationd.','Latest Projects','In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.','Latest Blog','In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.','Customer Reviews','In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.');
/*!40000 ALTER TABLE `section_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_section`
--

DROP TABLE IF EXISTS `service_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_section`
--

LOCK TABLES `service_section` WRITE;
/*!40000 ALTER TABLE `service_section` DISABLE KEYS */;
INSERT INTO `service_section` VALUES (2,'Service Name Here','Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s','AgVUntitled-1.jpg',1),(3,'Service Name Here','Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s','iN3dIs2.jpg',1),(4,'Service Name Here','Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s','Fz53.jpg',1),(5,'Service Name Here','Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s','1mU4.jpg',1),(6,'Service Name Here','Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s','Eo55.jpg',1),(7,'Service Name Here','Lorem Ipsum is simply dummy text of the printing and typeseatting industry. Lorem Ipsum has been the industry\'s','2m96.jpg',1);
/*!40000 ALTER TABLE `service_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `background` varchar(255) NOT NULL,
  `currency_sign` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '$',
  `currency_code` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'USD',
  `paypal_business` varchar(255) NOT NULL,
  `stripe_key` varchar(255) DEFAULT NULL,
  `stripe_secret` varchar(255) DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `success_msg` text,
  `basic_charge` float NOT NULL DEFAULT '0',
  `featured_charge` float NOT NULL DEFAULT '0',
  `withdraw_charge` int(11) NOT NULL DEFAULT '0',
  `paypal_payment` int(11) DEFAULT NULL,
  `stripe_payment` int(11) DEFAULT NULL,
  `testi_status` int(11) DEFAULT NULL,
  `css_file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'logo.png','209.gif','Auction Script','Fuckcccccc','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae&nbsp;','124/6 Street, Country','00 000 000 000','00 000 000 000','admin@geniusocean.com','COPYRIGHT 2017 <a href=\"http://geniusocean.com\">GeniusOcean.com<br></a>','smm-min2.jpg','$','USD','shaon143-facilitator-1@gmail.com','pk_test_bD5Si0msHNV75sd5R71jSJFb','sk_test_r7zxASOuYYCiuT3svkUtuh6W',NULL,'<h1 class=\"text-center\" style=\"color: green\">Payment Success.<br> Thank You !!</h1>\r\n                        <h2>You Successfully Bought this item.</h2>',0,10,10,1,1,1,'genius1.css');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_language`
--

DROP TABLE IF EXISTS `site_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `home` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_us` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_us` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `faq` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_in` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_up` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `my_account` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgot_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `auctions` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `running_auctions` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `completed_auctions` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditions` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `buy_now` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `auctions_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bids` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `highest_bid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `days_left` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dates` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `withdraw` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `transactions` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscription` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_us_today` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `submit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dashboard` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `change_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `latest_blogs` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recent_posts` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_links` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_documentation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_in_social` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `donate_anonymous` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `enter_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `logout` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_language`
--

LOCK TABLES `site_language` WRITE;
/*!40000 ALTER TABLE `site_language` DISABLE KEYS */;
INSERT INTO `site_language` VALUES (1,'Home','About Us','Contact Us','FAQ','Log In','Sign Up','My Account','Forgot Password','Auctions','Running Auctions','Completed Auctions','Condition','Buy Now','Campaign Details','Bids','Highest BID','Days Left','Created By','Date','Action','Amount','Withdraw','Settings','Transactions','Total','SUBSCRIBE TO OUR NEWSLETTER','Subscribe','Address','Contact Us Today!','Contact Info','Phone','Email','Fax','Submit','Name','Dashboard','Update Profile','Change Password','Latest Blogs','Recent Posts','Footer Links','Read More','Blog','API Documantation','Share','Donate Anonymous','Enter Details','Logout');
/*!40000 ALTER TABLE `site_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `text_position` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (3,'Slider Title 1','Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry','JG6pexels-photo-48726.jpeg','slide_style_left',1),(4,'Slider Title 2','Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry','WtvJG6pexels-photo-48726.jpg','slide_style_right',1),(5,'Slider Title 3','Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry','qvZslider3-min.jpg','slide_style_left',1);
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook` varchar(255) NOT NULL,
  `twiter` varchar(255) NOT NULL,
  `g_plus` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `f_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `t_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `g_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `link_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
INSERT INTO `social_links` VALUES (1,'http://facebook.com/ebangladesh','http://twitter.com/','http://google.com/','http://linkedin.com/','enable','enable','enable','enable');
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `split_section`
--

DROP TABLE IF EXISTS `split_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `split_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `split_section`
--

LOCK TABLES `split_section` WRITE;
/*!40000 ALTER TABLE `split_section` DISABLE KEYS */;
INSERT INTO `split_section` VALUES (1,'fa-music','EXPERT ENGINEERS','<span style=\"color: rgb(51, 51, 51); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias non nulla placeat, odio, qui dicta alias.</span>',1),(2,'fa-heart','EXPERT ENGINEERS','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias non nulla placeat, odio, qui dicta alias.',1),(3,'fa-map-marker','EXPERT ENGINEERS','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias non nulla placeat, odio, qui dicta alias.',1);
/*!40000 ALTER TABLE `split_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `client` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.','eBangladesh','Project Manager'),(2,'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.','The Usual Suspects','Owner');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `auctionid` int(11) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `reason` enum('buy','listing','sell','withdraw') NOT NULL DEFAULT 'buy',
  `featured` enum('yes','no') NOT NULL DEFAULT 'no',
  `method` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed') NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'2a1501340725',2,3,10,'listing','no','Stripe',NULL,NULL,NULL,'Completed','txn_1AkwVULYzRkN5IL2ThmhoUjC','ch_1AkwVULYzRkN5IL22jfekthy','2017-07-29 15:05:32','2017-07-29 15:05:32','completed'),(2,'Fu1501603599',2,1,900,'buy','no','Stripe',NULL,NULL,NULL,'Completed','txn_1Am2tNLYzRkN5IL2Ckw7z6jw','ch_1Am2tNLYzRkN5IL2KojLavWI','2017-08-01 16:06:43','2017-08-01 16:06:43','completed'),(3,'y41501603892',2,1,900,'buy','no','Stripe',NULL,NULL,NULL,'Completed','txn_1Am2y8LYzRkN5IL2sdkRv0YB','ch_1Am2y8LYzRkN5IL2mG6J5I2v','2017-08-01 16:11:38','2017-08-01 16:11:38','completed'),(4,'C21501678512',4,4,10,'listing','yes','Stripe',NULL,NULL,NULL,'Completed','txn_1AmMNhLYzRkN5IL2SuqYnzDt','ch_1AmMNhLYzRkN5IL2Li5dO7Ke','2017-08-02 12:55:19','2017-08-02 12:55:19','completed'),(5,'Xt1501694452',4,4,700,'buy','no','Stripe',NULL,NULL,NULL,'Completed','txn_1AmQWoLYzRkN5IL2Y1RVZZ9m','ch_1AmQWnLYzRkN5IL2rfZEU1HO','2017-08-02 17:20:58','2017-08-02 17:20:58','completed'),(7,'v11501843442',2,6,10,'listing','yes','Paypal',NULL,NULL,NULL,'Completed','4KD700086U496953K',NULL,'2017-08-04 10:44:02','2017-08-04 10:44:38','completed'),(17,'5o1501929772',2,5,1300,'buy','no','Paypal',NULL,NULL,NULL,'Pending',NULL,NULL,'2017-08-05 10:42:52','2017-08-05 10:42:52','pending'),(18,'Ap1501929970',2,5,1300,'buy','no','Paypal','Test Address','Dhaka','1234','Completed','57Y85319L2542591D',NULL,'2017-08-05 10:46:10','2017-08-05 10:46:56','completed'),(20,'wg1501937043',4,6,600,'buy','no','Paypal','Washington DC','NYC','2314','Completed','5EH05171CK155591X',NULL,'2017-08-05 12:44:03','2017-08-05 12:44:35','completed');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `acc_balance` float NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profiles`
--

LOCK TABLES `user_profiles` WRITE;
/*!40000 ALTER TABLE `user_profiles` DISABLE KEYS */;
INSERT INTO `user_profiles` VALUES (2,'User Name',NULL,'22222','324344','user@gmail.com','$2y$10$PdI5luZqAmZyZWZxbjyvlu4R1s.wqMvjthk7we.lEK2X6VlVgWY3.','Afghanistan','sss','ssss','ssss',1260,'2017-05-04 11:59:39','2017-08-05 12:45:36','LUW3pzNOZh06ClQf5PL8XQXcTCMFtR4yLb806VjNhyGNY93as2RSNzc5t2Tf',1),(4,'Shaon Zaman',NULL,'555555555',NULL,'shaoneel@gmail.com','$2y$10$vN5VgKAS0Rtk0FSsKOQ0eerawMSbMIeMg.e86mZl0yf8NwqbUCLda',NULL,NULL,NULL,NULL,0,'2017-07-30 12:21:12','2017-07-30 12:21:12',NULL,1),(5,'Badruddoza Chowdhury',NULL,'1723565773',NULL,'badruddoza.me@gmail.com','$2y$10$GLRyCGfSahoEoIPraiQFzOmMqeGHt0c8JMpsdT5WbwBB0aKeICGby',NULL,NULL,NULL,NULL,0,'2018-02-25 13:05:58','2018-02-25 13:05:58',NULL,1);
/*!40000 ALTER TABLE `user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraws`
--

DROP TABLE IF EXISTS `withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraws` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `acc_email` varchar(255) DEFAULT NULL,
  `acc_phone` varchar(255) DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `acc_name` varchar(255) DEFAULT NULL,
  `address` text,
  `swift` varchar(255) DEFAULT NULL,
  `reference` text,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraws`
--

LOCK TABLES `withdraws` WRITE;
/*!40000 ALTER TABLE `withdraws` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraws` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:01:49
