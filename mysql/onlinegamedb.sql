-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinegamedb
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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'ADMIN','admin@email.com','admin','$2y$10$okgHbIUamU.4OH3NpYXKTOLYv2ZAUdz95QO9Hnxl.Y7vs3zOM8hu.','pd2M25YmkyFD2rVZLJmGF2lw1DnnhOvIoKdEOlu0exLJBVJxNfGva1udrgAV','2018-05-18 18:00:00','2018-05-24 01:23:18'),(2,'Mutasim Billah','milu@milu.com','milu','$2y$10$I1jUox.InsD3v7CV4vACcOHcd0ynHsIucTuMzwsXDr2dl0RKLBCmS',NULL,'2018-05-24 01:17:31','2018-05-24 01:17:31');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgames`
--

DROP TABLE IF EXISTS `bgames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bgames` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `win` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgames`
--

LOCK TABLES `bgames` WRITE;
/*!40000 ALTER TABLE `bgames` DISABLE KEYS */;
INSERT INTO `bgames` VALUES (1,'3','2018-07-01 19:06:00','2018-07-18 21:07:00',2,'2018-07-02 04:35:35','2018-07-03 03:21:36'),(2,NULL,'2018-07-03 18:07:00','2018-12-26 20:08:00',1,'2018-07-04 00:27:23','2018-10-08 07:41:39');
/*!40000 ALTER TABLE `bgames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgsets`
--

DROP TABLE IF EXISTS `bgsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bgsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgsets`
--

LOCK TABLES `bgsets` WRITE;
/*!40000 ALTER TABLE `bgsets` DISABLE KEYS */;
INSERT INTO `bgsets` VALUES (1,'BallGame','<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.</span>','10','1000','4','2018-07-02 04:07:53','2018-07-10 16:00:42');
/*!40000 ALTER TABLE `bgsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bplayers`
--

DROP TABLE IF EXISTS `bplayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bplayers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bgame_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bplayers`
--

LOCK TABLES `bplayers` WRITE;
/*!40000 ALTER TABLE `bplayers` DISABLE KEYS */;
INSERT INTO `bplayers` VALUES (1,1,1,'122','5',2,'2018-07-03 03:01:16','2018-07-03 03:22:07'),(2,1,2,'100','3',1,'2018-07-03 03:02:50','2018-07-03 03:21:36'),(3,1,2,'130','3',1,'2018-07-03 03:03:00','2018-07-03 03:21:54'),(4,1,1,'100','3',1,'2018-07-03 03:03:16','2018-07-03 03:22:07'),(5,1,1,'170','7',2,'2018-07-03 03:03:25','2018-07-03 03:22:07'),(6,1,2,'10','1',2,'2018-07-03 03:03:49','2018-07-03 03:22:07'),(7,2,8,'100','1',0,'2018-07-12 21:15:43','2018-07-12 21:15:43'),(8,2,10,'20','9',0,'2018-07-13 00:57:17','2018-07-13 00:57:17'),(9,2,1,'133','6',0,'2018-08-11 06:45:21','2018-08-11 06:45:21'),(10,2,1,'100','2',0,'2018-10-23 06:15:16','2018-10-23 06:15:16');
/*!40000 ALTER TABLE `bplayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usd_amo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `try` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
INSERT INTO `deposits` VALUES (1,1,103,'600','21','7.76','0','','biAiGuanSO0Pk4xb',1,0,'2018-10-15 06:31:18','2018-10-15 06:33:08'),(2,2,103,'500','18','6.48','0','','2IXv8Zg3mXNS41Be',1,0,'2018-10-15 06:33:59','2018-10-15 06:34:18'),(3,2,502,'100','1.5','1.27','0','','ETsbIJgZpImMfEpQ',0,0,'2018-10-15 06:34:49','2018-10-15 06:34:49');
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egames`
--

DROP TABLE IF EXISTS `egames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `egames` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num4` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `win` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egames`
--

LOCK TABLES `egames` WRITE;
/*!40000 ALTER TABLE `egames` DISABLE KEYS */;
INSERT INTO `egames` VALUES (1,'2','4','5','9','5','2018-05-16 00:00:00','2018-05-16 00:00:00',2,'2018-04-28 01:33:16','2018-05-08 06:19:22'),(2,'31','55','15','9','9','2018-05-07 00:00:00','2018-06-17 00:00:00',2,'2018-04-28 02:40:10','2018-05-23 03:37:41'),(9,'11','22','33','44',NULL,'2018-05-19 00:00:00','2018-05-21 00:00:00',1,'2018-04-30 03:30:36','2018-05-28 03:28:30'),(10,'3','33','34','234','3','2018-04-11 00:00:00','2018-06-07 00:00:00',2,'2018-04-30 04:05:42','2018-07-03 03:32:24'),(11,'3','22','5','44',NULL,'2018-04-26 00:00:00','2018-06-08 00:00:00',1,'2018-04-30 05:09:12','2018-05-31 00:05:46'),(12,'1','2','33','44',NULL,'2018-05-30 00:00:00','2018-06-19 00:00:00',1,'2018-05-28 02:52:37','2018-07-04 04:42:02'),(13,'1','23','33','44',NULL,'2018-05-29 05:01:00','2018-06-20 01:00:00',1,'2018-06-28 05:14:19','2018-06-28 05:14:19'),(14,'1','23','33','44',NULL,'2018-06-28 08:05:00','2018-07-26 05:09:00',1,'2018-06-28 05:23:56','2018-06-28 05:23:56'),(15,'A','J','Q','K',NULL,'2018-07-23 10:20:00','2018-12-24 11:30:00',1,'2018-07-23 18:43:17','2018-10-08 07:41:49');
/*!40000 ALTER TABLE `egames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egsets`
--

DROP TABLE IF EXISTS `egsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `egsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `option` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egsets`
--

LOCK TABLES `egsets` WRITE;
/*!40000 ALTER TABLE `egsets` DISABLE KEYS */;
INSERT INTO `egsets` VALUES (1,'Easy Game','<div><font color=\"#000000\">In Easy Game there are 4 numbers [X],[X],[X],[X] to choose from.</font></div><div><font color=\"#000000\"><br></font></div><div><font color=\"#000000\">At 12pm daily, one number, out of the 4 numbers, is selected by the system as the winning number. The winning number is determined by the system using the winning number selection rule.&nbsp;</font></div><div><font color=\"#000000\"><br></font></div><div><font color=\"#000000\">To win x4 of your stake, choose ONLY 1 number from the 4 options. Your wallet is credited if your chosen number is the winning number for that day.&nbsp;</font></div><div><font color=\"#000000\"><br></font></div><div><font color=\"#000000\">To win x2 of your stake, choose 2 numbers from the 4 options. Your wallet is credited if ANY of the numbers you chose is the winning number for that day.&nbsp;</font></div><div><font color=\"#000000\"><br></font></div><div><font color=\"#000000\">To win 133% of your stake, choose 3 numbers from the 4 options. Your wallet is credited if ANY of the numbers you chose is the winning number for that day.&nbsp;</font></div>','10','1000','4','2','1.33',0,2,3,'2018-04-30 00:53:38','2018-07-12 14:23:36');
/*!40000 ALTER TABLE `egsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eplayers`
--

DROP TABLE IF EXISTS `eplayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eplayers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `egame_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `odd` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eplayers`
--

LOCK TABLES `eplayers` WRITE;
/*!40000 ALTER TABLE `eplayers` DISABLE KEYS */;
INSERT INTO `eplayers` VALUES (79,1,1,'101','2','1.33','HX4ACoN1Dnfw',2,'2018-04-30 04:17:12','2018-04-30 05:08:02'),(80,1,1,'101','4','1.33','HX4ACoN1Dnfw',2,'2018-04-30 04:17:12','2018-04-30 05:08:02'),(81,1,1,'101','5','1.33','HX4ACoN1Dnfw',1,'2018-04-30 04:17:12','2018-04-30 05:08:02'),(82,1,2,'111','2','4','z6VHfOFXXvVq',2,'2018-04-30 04:17:39','2018-04-30 05:08:02'),(83,1,2,'100','2','2','xy1Gl4HuZZbb',2,'2018-04-30 04:17:45','2018-04-30 05:08:02'),(84,1,2,'100','5','2','xy1Gl4HuZZbb',1,'2018-04-30 04:17:45','2018-04-30 05:08:02'),(85,2,1,'100','31','1.33','EMajjMVAetPR',2,'2018-04-30 05:34:01','2018-05-23 03:37:41'),(86,2,1,'100','55','1.33','EMajjMVAetPR',2,'2018-04-30 05:34:01','2018-05-23 03:37:41'),(87,2,1,'100','15','1.33','EMajjMVAetPR',2,'2018-04-30 05:34:01','2018-05-23 03:37:41'),(88,2,1,'100','31','1.33','z7YW2b3wZGwQ',2,'2018-05-16 05:20:31','2018-05-23 03:37:41'),(89,2,1,'100','55','1.33','z7YW2b3wZGwQ',2,'2018-05-16 05:20:31','2018-05-23 03:37:41'),(90,2,1,'100','15','1.33','z7YW2b3wZGwQ',2,'2018-05-16 05:20:31','2018-05-23 03:37:41'),(91,2,1,'100','31','1.33','hUNRbBIrtGwn',2,'2018-05-16 08:44:35','2018-05-23 03:37:41'),(92,2,1,'100','55','1.33','hUNRbBIrtGwn',2,'2018-05-16 08:44:35','2018-05-23 03:37:41'),(93,2,1,'100','15','1.33','hUNRbBIrtGwn',2,'2018-05-16 08:44:35','2018-05-23 03:37:41'),(94,2,1,'15','55','2','S91zK1zUoQSE',2,'2018-05-16 08:44:53','2018-05-23 03:37:42'),(95,2,1,'15','15','2','S91zK1zUoQSE',2,'2018-05-16 08:44:53','2018-05-23 03:37:42'),(96,2,1,'100','31','1.33','EXtKj85RWO5j',2,'2018-05-23 03:09:06','2018-05-23 03:37:42'),(97,2,1,'100','55','1.33','EXtKj85RWO5j',2,'2018-05-23 03:09:06','2018-05-23 03:37:42'),(98,2,1,'100','9','1.33','EXtKj85RWO5j',1,'2018-05-23 03:09:06','2018-05-23 03:37:42'),(99,10,1,'100','3','2','UJyzXbmSY3Bu',1,'2018-05-24 05:42:55','2018-05-26 04:31:39'),(100,10,1,'100','33','2','UJyzXbmSY3Bu',2,'2018-05-24 05:42:55','2018-05-26 04:31:39'),(101,9,1,'100','11','1.33','knBKzivfOYf7',0,'2018-05-27 06:20:32','2018-05-27 06:20:32'),(102,9,1,'100','22','1.33','knBKzivfOYf7',0,'2018-05-27 06:20:32','2018-05-27 06:20:32'),(103,9,1,'100','33','1.33','knBKzivfOYf7',0,'2018-05-27 06:20:32','2018-05-27 06:20:32'),(104,11,1,'120','3','2','ZePNezKMPdfW',0,'2018-06-03 00:54:16','2018-06-03 00:54:16'),(105,11,1,'120','5','2','ZePNezKMPdfW',0,'2018-06-03 00:54:16','2018-06-03 00:54:16'),(106,12,1,'100','1','1.33','H5EwY7HN0p1t',0,'2018-06-03 03:37:38','2018-06-03 03:37:38'),(107,12,1,'100','2','1.33','H5EwY7HN0p1t',0,'2018-06-03 03:37:38','2018-06-03 03:37:38'),(108,12,1,'100','33','1.33','H5EwY7HN0p1t',0,'2018-06-03 03:37:38','2018-06-03 03:37:38'),(109,14,8,'100','23','1.33','LeilZhTMUFxm',0,'2018-07-12 21:05:14','2018-07-12 21:05:14'),(110,14,8,'100','33','1.33','LeilZhTMUFxm',0,'2018-07-12 21:05:14','2018-07-12 21:05:14'),(111,14,8,'100','44','1.33','LeilZhTMUFxm',0,'2018-07-12 21:05:14','2018-07-12 21:05:14'),(112,14,5,'100','1','2','siuX7ElrtVnQ',0,'2018-07-17 00:27:04','2018-07-17 00:27:04'),(113,14,5,'100','33','2','siuX7ElrtVnQ',0,'2018-07-17 00:27:04','2018-07-17 00:27:04'),(114,15,1,'100','A','1.33','GuMD3vyrpd94',0,'2018-08-11 04:50:16','2018-08-11 04:50:16'),(115,15,1,'100','J','1.33','GuMD3vyrpd94',0,'2018-08-11 04:50:16','2018-08-11 04:50:16'),(116,15,1,'100','Q','1.33','GuMD3vyrpd94',0,'2018-08-11 04:50:16','2018-08-11 04:50:16'),(117,15,1,'100','A','1.33','hf2knXT8TbXr',0,'2018-10-23 06:13:21','2018-10-23 06:13:21'),(118,15,1,'100','J','1.33','hf2knXT8TbXr',0,'2018-10-23 06:13:21','2018-10-23 06:13:21'),(119,15,1,'100','K','1.33','hf2knXT8TbXr',0,'2018-10-23 06:13:21','2018-10-23 06:13:21');
/*!40000 ALTER TABLE `eplayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frontends`
--

DROP TABLE IF EXISTS `frontends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frontends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `about_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontends`
--

LOCK TABLES `frontends` WRITE;
/*!40000 ALTER TABLE `frontends` DISABLE KEYS */;
INSERT INTO `frontends` VALUES (1,'What is GameDen?','<div>                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi reiciendis aut natus dicta deleniti, quos voluptas, impedit odio eos voluptatum distinctio omnis, repell endus reprehenderit enim fuga ipsum fugiat maiores q dolores cum <br></div><br><div><b>doloremque corporis!Lorem ip??</b></div><div><br></div><div>m dolor sit amet, consectetur adipisicing elit. Sequi reiciendis aut natus dicta deleniti, quos voluptas, impedit odio!</div><div> <i>eos voluptatum distinctio omnis, repellendus reprehenderit enim fuga ipsum fugiat maiores quod! Mollitia blanditiis magna &nbsp;</i> velit aut hic reprehenderit quisquam dolores cum deserunt alias a minima, numquam voluptatem natus illum, doloremque corporis!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi reiciendis aut natus dicta deleniti, quos voluptas!!<br></div>','5bceec617a7e1.jpg','https://www.youtube.com/watch?v=6NgaP8Y6y8s','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi reiciendis aut natus dicta deleniti, quos voluptas, impedit odio eos voluptatum distinctio omnis<br>','content@email.com','010110010','2018-05-27 01:47:18','2018-10-23 05:52:04');
/*!40000 ALTER TABLE `frontends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateways`
--

DROP TABLE IF EXISTS `gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gateways` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `main_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minamo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=514 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateways`
--

LOCK TABLES `gateways` WRITE;
/*!40000 ALTER TABLE `gateways` DISABLE KEYS */;
INSERT INTO `gateways` VALUES (101,'PayPal','PayPal','5','1000','0.511','2.52','79','rexrifat636@gmail.com',NULL,1,NULL,'2018-07-12 10:17:53'),(102,'PerfectMoney','Perfect Money','20','20000','2','1','80','U5376900','G079qn4Q7XATZBqyoCkBteGRg',1,NULL,'2018-07-01 01:22:11'),(103,'Stripe','Credit Card','10','50000','3','3','80','sk_test_aat3tzBCCXXBkS4sxY3M8A1B','pk_test_AU3G7doZ1sbdpJLj0NaozPBu',1,NULL,'2018-05-27 18:11:50'),(104,'Skrill','Skrill','10','50000','3','3','80','merchant@skrill','TheSoftKing',1,NULL,'2018-05-20 12:01:09'),(501,'Blockchain.info','BitCoin','1','20000','1','0.5','80','3965f52f-ec19-43af-90ed-d613dc60657eSSS','xpub6DREmHywjNizvs9b4hhNekcjFjvL4rshJjnrHHgtLNCSbhhx5jKFRgqdmXAecLAddEPudDZY4xoDbV1NVHSCeDp1S7NumPCNNjbxB7sGasY0000',1,NULL,'2018-05-21 01:20:29'),(502,'block.io - BTC','BitCoin','1','99999','1','0.5','80','a528-2410-1296-395a','09876softk',1,'2018-01-27 18:00:00','2018-05-31 09:12:55'),(503,'block.io - LTC','LiteCoin','100','10000','0.4','1','80','4494-4014-373a-3454','09876softk',1,NULL,'2018-05-31 09:27:34'),(504,'block.io - DOGE','DogeCoin','1','50000','0.51','2.52','80','b224-398b-8054-8325','09876softk',1,NULL,'2018-05-31 09:28:54'),(505,'CoinPayment - BTC','BitCoin','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:38:33'),(506,'CoinPayment - ETH','Etherium','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(507,'CoinPayment - BCH','Bitcoin Cash','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(508,'CoinPayment - DASH','DASH','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(509,'CoinPayment - DOGE','DOGE','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(510,'CoinPayment - LTC','LTC','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(512,'CoinGate','CoinGate','10','1000','05','5','80','Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N',NULL,1,'2018-07-08 18:00:00','2018-05-21 01:20:54'),(513,'CoinPayment-ALL','Coin Payment','10','1000','05','5','80','db1d9f12444e65c921604e289a281c56',NULL,1,NULL,'2018-05-21 01:20:54');
/*!40000 ALTER TABLE `gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generals`
--

DROP TABLE IF EXISTS `generals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Website',
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sub Title',
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '336699',
  `cur` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `cursym` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `reg` int(11) NOT NULL DEFAULT '1',
  `emailver` int(11) NOT NULL DEFAULT '1',
  `smsver` int(11) NOT NULL DEFAULT '1',
  `decimal` int(11) NOT NULL DEFAULT '2',
  `emailnotf` int(11) NOT NULL DEFAULT '1',
  `smsnotf` int(11) NOT NULL DEFAULT '1',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `smsapi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
INSERT INTO `generals` VALUES (1,'GameDen','Play & Win','ff2246','USD','$',1,0,0,2,0,0,'don-not-reply@thesoftking.com','<br><br>\r\n	<div class=\"contents\" style=\"max-width: 600px; margin: 0 auto; border: 2px solid #000036;\">\r\n\r\n<div class=\"header\" style=\"background-color: #000036; padding: 15px; text-align: center;\">\r\n	<div class=\"logo\" style=\"width: 260px;text-align: center; margin: 0 auto;\">\r\n		<img src=\"https://i.imgur.com/4NN55uD.png\" alt=\"THESOFTKING\" style=\"width: 100%;\">\r\n	</div>\r\n</div>\r\n\r\n<div class=\"mailtext\" style=\"padding: 30px 15px; background-color: #f6f6f6; font-family: \'Open Sans\', sans-serif; font-size: 16px; line-height: 26px;\">\r\n\r\nDear {{name}}, <br>{{message}}</div>\r\n\r\n<div class=\"footer\" style=\"background-color: #000036; padding: 15px; text-align: center;\">\r\n\r\n<a href=\"http://abir.khan/tskmail.php#\" class=\"btn\">Copyright : THESOFTKING</a></div></div>','https://api.infobip.com/api/v3/sendsms/plain?user=****&password=*****&sender=Sender&SMSText={{message}}&GSM={{number}}&type=longSMS',NULL,'2018-10-23 03:29:54');
/*!40000 ALTER TABLE `generals` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_04_25_130011_create_egames_table',2),(4,'2018_04_29_101047_create_eplayers_table',3),(5,'2018_04_29_121700_create_generals_table',4),(6,'2018_04_30_060336_create_egsets_table',5),(7,'2018_05_16_063257_create_gateways_table',6),(8,'2018_05_16_094932_create_deposits_table',7),(9,'2018_05_16_143611_create_transactions_table',8),(10,'2018_05_17_083017_create_admins_table',9),(11,'2018_05_24_061444_create_withdraws_table',10),(12,'2018_05_27_071610_create_frontends_table',11),(13,'2018_05_27_093718_create_sliders_table',12),(14,'2018_05_27_112531_create_socials_table',13),(15,'2018_05_28_062805_create_qgsets_table',14),(16,'2018_05_28_065924_create_qgames_table',15),(17,'2018_06_03_075516_create_qplayers_table',16),(18,'2018_06_05_064854_create_ngsets_table',17),(19,'2018_06_05_082301_create_ngames_table',18),(20,'2018_06_07_072919_create_nplayers_table',19),(21,'2018_07_02_074257_create_bgsets_table',20),(22,'2018_07_02_074852_create_bgames_table',21),(23,'2018_07_02_104148_create_bplayers_table',22),(24,'2018_07_10_094035_create_sections_table',23),(26,'2018_08_07_115703_create_sgames_table',24),(27,'2018_08_07_120559_create_sgsets_table',25),(28,'2018_08_07_131440_create_splayers_table',26);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngames`
--

DROP TABLE IF EXISTS `ngames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ngames` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `win1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win4` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win5` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win6` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win7` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win8` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win9` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win10` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngames`
--

LOCK TABLES `ngames` WRITE;
/*!40000 ALTER TABLE `ngames` DISABLE KEYS */;
INSERT INTO `ngames` VALUES (1,'52','53','54','55','56','69','70','71','72',NULL,'2018-07-06 00:00:00','2018-12-20 00:00:00',2,'2018-06-05 03:31:42','2018-10-08 07:42:17'),(2,'26','39','40','41','42','43','44','57','58','71','2018-06-01 00:00:00','2018-06-25 00:00:00',2,'2018-06-05 03:32:14','2018-06-10 00:13:19'),(4,'21','22','31','52','54','55','56','63','73','75','2018-07-02 02:01:00','2018-07-26 19:08:00',2,'2018-07-03 04:37:42','2018-07-03 04:39:56'),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-03 06:06:00','2018-12-27 20:09:00',1,'2018-07-04 00:28:01','2018-10-08 07:43:01'),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-16 00:10:00','2018-07-24 12:00:00',1,'2018-07-23 09:32:28','2018-07-23 09:32:28');
/*!40000 ALTER TABLE `ngames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngsets`
--

DROP TABLE IF EXISTS `ngsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ngsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate4` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate5` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate6` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate7` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate8` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate9` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate10` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `option` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngsets`
--

LOCK TABLES `ngsets` WRITE;
/*!40000 ALTER TABLE `ngsets` DISABLE KEYS */;
INSERT INTO `ngsets` VALUES (1,'Number99','<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur</span>','100','5000','2','4','8','16','32','64','128','256','512','1024',0,1,1,'2018-06-05 02:10:18','2018-08-07 06:30:20');
/*!40000 ALTER TABLE `ngsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nplayers`
--

DROP TABLE IF EXISTS `nplayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nplayers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ngame_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nplayers`
--

LOCK TABLES `nplayers` WRITE;
/*!40000 ALTER TABLE `nplayers` DISABLE KEYS */;
INSERT INTO `nplayers` VALUES (30,2,1,'110','14','bycCMvRhneeM',1,'2018-06-10 00:09:54','2018-06-10 00:13:18'),(31,2,1,'110','27','bycCMvRhneeM',1,'2018-06-10 00:09:54','2018-06-10 00:13:18'),(32,2,1,'110','40','bycCMvRhneeM',1,'2018-06-10 00:09:54','2018-06-10 00:13:18'),(33,2,1,'110','41','bycCMvRhneeM',1,'2018-06-10 00:09:54','2018-06-10 00:13:19'),(34,2,1,'110','42','bycCMvRhneeM',1,'2018-06-10 00:09:54','2018-06-10 00:13:19'),(35,2,1,'110','43','bycCMvRhneeM',1,'2018-06-10 00:09:54','2018-06-10 00:13:19'),(36,2,1,'110','44','bycCMvRhneeM',1,'2018-06-10 00:09:54','2018-06-10 00:13:19'),(37,2,1,'110','45','bycCMvRhneeM',1,'2018-06-10 00:09:54','2018-06-10 00:13:19'),(38,2,1,'110','46','bycCMvRhneeM',1,'2018-06-10 00:09:55','2018-06-10 00:13:19'),(39,2,1,'110','47','bycCMvRhneeM',1,'2018-06-10 00:09:55','2018-06-10 00:13:19'),(40,2,2,'110','45','bycCMvRhneehh',1,'2018-06-10 00:09:54','2018-06-10 00:13:19'),(41,2,2,'110','46','bycCMvRhneehh',1,'2018-06-10 00:09:55','2018-06-10 00:13:19'),(42,2,2,'110','47','bycCMvRhneehh',1,'2018-06-10 00:09:55','2018-06-10 00:13:19'),(43,1,1,'100','65','ZYv4JltelPOn',1,'2018-06-10 01:32:09','2018-06-10 01:32:25'),(44,1,1,'100','66','ZYv4JltelPOn',1,'2018-06-10 01:32:09','2018-06-10 01:32:25'),(45,1,1,'100','67','ZYv4JltelPOn',1,'2018-06-10 01:32:09','2018-06-10 01:32:25'),(46,1,1,'100','68','ZYv4JltelPOn',1,'2018-06-10 01:32:09','2018-06-10 01:32:25'),(47,1,1,'100','69','ZYv4JltelPOn',1,'2018-06-10 01:32:09','2018-06-10 01:32:25'),(48,1,1,'100','70','ZYv4JltelPOn',1,'2018-06-10 01:32:10','2018-06-10 01:32:25'),(49,1,1,'100','71','ZYv4JltelPOn',1,'2018-06-10 01:32:10','2018-06-10 01:32:25'),(50,1,1,'100','72','ZYv4JltelPOn',1,'2018-06-10 01:32:10','2018-06-10 01:32:25'),(51,4,1,'190','33','y7QoQRlMPe4v',1,'2018-07-03 03:51:44','2018-07-03 04:39:56'),(52,4,1,'190','55','y7QoQRlMPe4v',1,'2018-07-03 03:51:44','2018-07-03 04:39:56'),(53,4,1,'190','56','y7QoQRlMPe4v',1,'2018-07-03 03:51:44','2018-07-03 04:39:56'),(54,4,1,'190','57','y7QoQRlMPe4v',1,'2018-07-03 03:51:44','2018-07-03 04:39:56'),(55,3,1,'190','58','y7QoQRlMPe4v',0,'2018-07-03 03:51:44','2018-07-03 03:51:44'),(56,3,1,'190','59','y7QoQRlMPe4v',0,'2018-07-03 03:51:44','2018-07-03 03:51:44'),(57,3,1,'190','67','y7QoQRlMPe4v',0,'2018-07-03 03:51:44','2018-07-03 03:51:44'),(58,3,1,'190','68','y7QoQRlMPe4v',0,'2018-07-03 03:51:44','2018-07-03 03:51:44'),(59,3,1,'190','76','y7QoQRlMPe4v',0,'2018-07-03 03:51:44','2018-07-03 03:51:44'),(60,3,1,'190','77','y7QoQRlMPe4v',0,'2018-07-03 03:51:44','2018-07-03 03:51:44'),(61,5,10,'100','10','RSPYBpDeD5mH',2,'2018-07-13 01:11:47','2018-07-22 19:13:55'),(62,5,10,'100','26','RSPYBpDeD5mH',2,'2018-07-13 01:11:47','2018-07-22 19:13:55'),(63,5,10,'100','35','RSPYBpDeD5mH',2,'2018-07-13 01:11:47','2018-07-22 19:13:55'),(64,5,10,'100','41','RSPYBpDeD5mH',2,'2018-07-13 01:11:47','2018-07-22 19:13:55'),(65,5,10,'100','42','RSPYBpDeD5mH',2,'2018-07-13 01:11:47','2018-07-22 19:13:55'),(66,5,10,'100','43','RSPYBpDeD5mH',2,'2018-07-13 01:11:47','2018-07-22 19:13:55'),(67,5,10,'100','47','RSPYBpDeD5mH',2,'2018-07-13 01:11:47','2018-07-22 19:13:55'),(68,5,10,'100','48','RSPYBpDeD5mH',2,'2018-07-13 01:11:47','2018-07-22 19:13:55'),(69,5,10,'100','54','RSPYBpDeD5mH',2,'2018-07-13 01:11:47','2018-07-22 19:13:55'),(70,5,10,'100','59','RSPYBpDeD5mH',2,'2018-07-13 01:11:47','2018-07-22 19:13:55');
/*!40000 ALTER TABLE `nplayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES (1,'pialneel@gmail.com','laiuBfT82j1STacvhKYVqTXACmLAXqbR',0,'2018-10-15 06:41:52','2018-10-15 06:41:52');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qgames`
--

DROP TABLE IF EXISTS `qgames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qgames` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `num4` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `win1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win4` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `win5` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qgames`
--

LOCK TABLES `qgames` WRITE;
/*!40000 ALTER TABLE `qgames` DISABLE KEYS */;
INSERT INTO `qgames` VALUES (1,'1','23','33','4','1','23','33','23','23','2018-05-25 00:00:00','2018-06-23 00:00:00',2,'2018-05-28 03:49:40','2018-06-04 04:32:20'),(2,'2','23','11','4','11','11','11','11','11','2018-06-28 00:00:00','2018-07-13 00:00:00',2,'2018-05-29 00:01:19','2018-07-10 05:13:42'),(3,'2','23','11','44','2','23','11','11','44','2018-04-29 02:00:00','2018-07-26 03:02:00',2,'2018-06-28 06:53:39','2018-06-30 03:45:52'),(4,'4','8','12','16',NULL,NULL,NULL,NULL,NULL,'2018-06-30 07:08:00','2018-09-23 12:00:00',1,'2018-06-30 06:13:13','2018-07-22 20:02:16'),(5,'0','1','2','3','0','0','0','0','0','2018-07-23 00:00:00','2018-07-24 11:30:00',2,'2018-07-23 18:45:47','2018-07-23 18:49:17'),(6,'0','1','2','3',NULL,NULL,NULL,NULL,NULL,'2018-07-23 11:30:00','2018-07-23 13:30:00',1,'2018-07-23 21:25:02','2018-07-23 21:25:02'),(7,'0','1','2','3',NULL,NULL,NULL,NULL,NULL,'2018-07-23 11:30:00','2018-12-24 11:30:00',1,'2018-07-23 21:25:43','2018-10-08 07:42:08');
/*!40000 ALTER TABLE `qgames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qgsets`
--

DROP TABLE IF EXISTS `qgsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qgsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `option` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qgsets`
--

LOCK TABLES `qgsets` WRITE;
/*!40000 ALTER TABLE `qgsets` DISABLE KEYS */;
INSERT INTO `qgsets` VALUES (1,'Quick Game','<div><div><font face=\"Lato, sans-serif\" color=\"#000000\"><b>Quick cash starts every 5 hours.</b><br></font></div><div><font face=\"Lato, sans-serif\" color=\"#000000\"><br></font></div><div><font face=\"Lato, sans-serif\" color=\"#000000\">At draw time, the system randomly selects one number from each line as the winning number.</font></div><div><font face=\"Lato, sans-serif\" color=\"#000000\"><br></font></div><div><font face=\"Lato, sans-serif\" color=\"#000000\">You can play by selecting one, two or three numbers from any of the lines, for an odd of 4, 2 and 1.33 respectively.</font></div><div><font face=\"Lato, sans-serif\" color=\"#000000\"><br></font></div><div><font face=\"Lato, sans-serif\" color=\"#000000\">To win on a line, any of the numbers you selected on that line must match the winning number on that line.</font></div><div><font face=\"Lato, sans-serif\" color=\"#000000\"><br></font></div><div><font face=\"Lato, sans-serif\" color=\"#000000\">You can play on only one line or you can accumulate multiple lines.</font></div><div><font face=\"Lato, sans-serif\" color=\"#000000\"><br></font></div><div><font face=\"Lato, sans-serif\" color=\"#000000\">Your odds multiply down the lines as you select numbers from multiple lines.</font></div><div><font face=\"Lato, sans-serif\" color=\"#000000\"><br></font></div><div><font face=\"Lato, sans-serif\" color=\"#000000\">You must win on all your selected lines to win the ticket.</font></div></div>','50','50','6','6','6',0,1,1,'2018-05-28 00:58:08','2018-07-23 21:27:40');
/*!40000 ALTER TABLE `qgsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qplayers`
--

DROP TABLE IF EXISTS `qplayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qplayers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qgame_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `line` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `odd` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qplayers`
--

LOCK TABLES `qplayers` WRITE;
/*!40000 ALTER TABLE `qplayers` DISABLE KEYS */;
INSERT INTO `qplayers` VALUES (1,1,1,'100','1','1','4','SvA3JmDb8IPM',2,'2018-06-03 04:06:47','2018-06-04 04:29:13'),(2,1,1,'100','23','2','4','SvA3JmDb8IPM',2,'2018-06-03 04:06:47','2018-06-04 04:29:13'),(3,1,1,'100','23','3','2','SvA3JmDb8IPM',2,'2018-06-03 04:06:47','2018-06-04 04:29:14'),(4,1,1,'100','4','3','2','SvA3JmDb8IPM',2,'2018-06-03 04:06:47','2018-06-04 04:29:14'),(5,1,1,'100','23','4','2','SvA3JmDb8IPM',2,'2018-06-03 04:06:47','2018-06-04 04:29:14'),(6,1,1,'100','4','4','2','SvA3JmDb8IPM',2,'2018-06-03 04:06:47','2018-06-04 04:29:14'),(7,1,1,'100','33','5','4','SvA3JmDb8IPM',2,'2018-06-03 04:06:47','2018-06-04 04:29:14'),(8,1,1,'100','33','3','4','QjRGhlxks1d5',2,'2018-06-03 04:13:14','2018-06-04 04:29:14'),(9,1,1,'100','1','5','4','QjRGhlxks1d5',2,'2018-06-03 04:13:14','2018-06-04 04:29:14'),(20,1,2,'40','33','3','4','vDZsS5SBhq7w',1,'2018-06-03 04:15:00','2018-06-04 04:29:14'),(23,1,2,'12','1','1','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:31','2018-06-04 04:29:14'),(24,1,2,'12','33','1','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:31','2018-06-04 04:29:14'),(25,1,2,'12','4','1','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:31','2018-06-04 04:29:14'),(26,1,2,'12','1','2','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:31','2018-06-04 04:29:14'),(27,1,2,'12','33','2','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:31','2018-06-04 04:29:14'),(28,1,2,'12','4','2','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:32','2018-06-04 04:29:14'),(29,1,2,'12','1','3','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:32','2018-06-04 04:29:14'),(30,1,2,'12','33','3','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:32','2018-06-04 04:29:14'),(31,1,2,'12','4','3','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:32','2018-06-04 04:29:14'),(32,1,2,'12','1','4','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:32','2018-06-04 04:29:15'),(33,1,2,'12','33','4','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:32','2018-06-04 04:29:15'),(34,1,2,'12','4','4','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:32','2018-06-04 04:29:15'),(35,1,2,'12','1','5','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:32','2018-06-04 04:29:15'),(36,1,2,'12','33','5','1.33','lyowe0HAE1JI',2,'2018-06-03 04:15:32','2018-06-04 04:29:15'),(37,1,3,'12','4','5','1.33','lyowe0HAE1JI',1,'2018-06-03 04:15:32','2018-06-04 04:29:15'),(38,2,1,'100','23','1','4','VYeldUpIEZfX',2,'2018-06-05 00:25:13','2018-07-10 05:13:39'),(39,2,1,'100','4','2','4','VYeldUpIEZfX',2,'2018-06-05 00:25:13','2018-07-10 05:13:39'),(40,2,1,'100','11','3','4','VYeldUpIEZfX',2,'2018-06-05 00:25:13','2018-07-10 05:13:39'),(41,2,1,'100','11','4','4','VYeldUpIEZfX',2,'2018-06-05 00:25:14','2018-07-10 05:13:40'),(42,2,1,'100','11','5','4','VYeldUpIEZfX',2,'2018-06-05 00:25:14','2018-07-10 05:13:40'),(43,2,1,'100','23','1','2','4Uer31Onl6Ar',2,'2018-06-05 00:28:07','2018-07-10 05:13:40'),(44,2,1,'100','4','1','2','4Uer31Onl6Ar',2,'2018-06-05 00:28:07','2018-07-10 05:13:40'),(45,2,1,'100','23','2','4','4Uer31Onl6Ar',2,'2018-06-05 00:28:07','2018-07-10 05:13:40'),(46,2,1,'100','23','3','1.33','4Uer31Onl6Ar',2,'2018-06-05 00:28:07','2018-07-10 05:13:40'),(47,2,1,'100','11','3','1.33','4Uer31Onl6Ar',2,'2018-06-05 00:28:07','2018-07-10 05:13:40'),(48,2,1,'100','4','3','1.33','4Uer31Onl6Ar',2,'2018-06-05 00:28:07','2018-07-10 05:13:40'),(49,2,1,'100','2','4','1.33','4Uer31Onl6Ar',2,'2018-06-05 00:28:07','2018-07-10 05:13:40'),(50,2,1,'100','23','4','1.33','4Uer31Onl6Ar',2,'2018-06-05 00:28:07','2018-07-10 05:13:40'),(51,2,1,'100','11','4','1.33','4Uer31Onl6Ar',2,'2018-06-05 00:28:07','2018-07-10 05:13:40'),(52,2,1,'100','23','5','2','4Uer31Onl6Ar',2,'2018-06-05 00:28:08','2018-07-10 05:13:40'),(53,2,1,'100','11','5','2','4Uer31Onl6Ar',2,'2018-06-05 00:28:08','2018-07-10 05:13:40'),(54,2,1,'120','2','1','2','hSkEzs8ScNPq',2,'2018-06-05 00:28:18','2018-07-10 05:13:40'),(55,2,1,'120','23','1','2','hSkEzs8ScNPq',2,'2018-06-05 00:28:18','2018-07-10 05:13:40'),(56,2,1,'120','23','2','2','hSkEzs8ScNPq',2,'2018-06-05 00:28:18','2018-07-10 05:13:40'),(57,2,1,'120','11','2','2','hSkEzs8ScNPq',2,'2018-06-05 00:28:18','2018-07-10 05:13:40'),(58,2,1,'120','23','3','2','hSkEzs8ScNPq',2,'2018-06-05 00:28:18','2018-07-10 05:13:40'),(59,2,1,'120','11','3','2','hSkEzs8ScNPq',2,'2018-06-05 00:28:18','2018-07-10 05:13:40'),(60,2,1,'120','11','4','4','hSkEzs8ScNPq',2,'2018-06-05 00:28:18','2018-07-10 05:13:40'),(61,2,1,'120','23','5','4','hSkEzs8ScNPq',2,'2018-06-05 00:28:18','2018-07-10 05:13:40'),(62,2,1,'100','2','1','1.33','84LmXie68q4u',2,'2018-06-06 01:02:14','2018-07-10 05:13:40'),(63,2,1,'100','23','1','1.33','84LmXie68q4u',2,'2018-06-06 01:02:14','2018-07-10 05:13:40'),(64,2,1,'100','11','1','1.33','84LmXie68q4u',2,'2018-06-06 01:02:14','2018-07-10 05:13:40'),(65,2,1,'100','4','2','4','84LmXie68q4u',2,'2018-06-06 01:02:14','2018-07-10 05:13:40'),(66,2,1,'100','23','3','1.33','84LmXie68q4u',2,'2018-06-06 01:02:14','2018-07-10 05:13:40'),(67,2,1,'100','11','3','1.33','84LmXie68q4u',2,'2018-06-06 01:02:14','2018-07-10 05:13:41'),(68,2,1,'100','4','3','1.33','84LmXie68q4u',2,'2018-06-06 01:02:14','2018-07-10 05:13:41'),(69,2,1,'100','23','4','2','84LmXie68q4u',2,'2018-06-06 01:02:14','2018-07-10 05:13:41'),(70,2,1,'100','11','4','2','84LmXie68q4u',2,'2018-06-06 01:02:15','2018-07-10 05:13:41'),(71,2,1,'100','11','5','4','84LmXie68q4u',2,'2018-06-06 01:02:15','2018-07-10 05:13:41'),(72,2,1,'100','23','1','4','ji1lD22XgWlR',2,'2018-06-06 01:02:20','2018-07-10 05:13:41'),(73,2,1,'100','11','2','4','ji1lD22XgWlR',2,'2018-06-06 01:02:20','2018-07-10 05:13:41'),(74,2,1,'100','11','3','4','ji1lD22XgWlR',2,'2018-06-06 01:02:20','2018-07-10 05:13:41'),(75,2,1,'100','11','4','4','ji1lD22XgWlR',2,'2018-06-06 01:02:20','2018-07-10 05:13:41'),(76,2,1,'100','11','5','4','ji1lD22XgWlR',2,'2018-06-06 01:02:20','2018-07-10 05:13:41'),(77,2,1,'100','2','1','4','UsFwaX2iHZcy',2,'2018-06-10 03:46:16','2018-07-10 05:13:41'),(78,2,1,'100','23','2','4','UsFwaX2iHZcy',2,'2018-06-10 03:46:16','2018-07-10 05:13:41'),(79,2,1,'100','11','3','4','UsFwaX2iHZcy',2,'2018-06-10 03:46:16','2018-07-10 05:13:41'),(80,2,1,'100','23','4','2','UsFwaX2iHZcy',2,'2018-06-10 03:46:16','2018-07-10 05:13:41'),(81,2,1,'100','11','4','2','UsFwaX2iHZcy',2,'2018-06-10 03:46:16','2018-07-10 05:13:41'),(82,2,1,'100','11','5','4','UsFwaX2iHZcy',2,'2018-06-10 03:46:16','2018-07-10 05:13:41'),(83,2,1,'100','2','1','4','6DuPaT8LfIaV',2,'2018-07-02 00:17:38','2018-07-10 05:13:41'),(84,2,1,'100','23','2','2.4','6DuPaT8LfIaV',2,'2018-07-02 00:17:38','2018-07-10 05:13:41'),(85,2,1,'100','11','2','2.4','6DuPaT8LfIaV',2,'2018-07-02 00:17:38','2018-07-10 05:13:41'),(86,2,1,'100','23','3','2.4','6DuPaT8LfIaV',2,'2018-07-02 00:17:38','2018-07-10 05:13:41'),(87,2,1,'100','11','3','2.4','6DuPaT8LfIaV',2,'2018-07-02 00:17:38','2018-07-10 05:13:41'),(88,2,1,'100','11','4','4','6DuPaT8LfIaV',2,'2018-07-02 00:17:38','2018-07-10 05:13:41'),(89,2,1,'100','11','5','4','6DuPaT8LfIaV',2,'2018-07-02 00:17:38','2018-07-10 05:13:41'),(90,2,1,'100','2','1','2.4','SyIlakLGf3rJ',2,'2018-07-04 02:06:25','2018-07-10 05:13:41'),(91,2,1,'100','11','1','2.4','SyIlakLGf3rJ',2,'2018-07-04 02:06:25','2018-07-10 05:13:41'),(92,2,1,'100','2','2','2.4','SyIlakLGf3rJ',2,'2018-07-04 02:06:26','2018-07-10 05:13:41'),(93,2,1,'100','11','2','2.4','SyIlakLGf3rJ',2,'2018-07-04 02:06:26','2018-07-10 05:13:41'),(94,2,1,'100','2','3','2.4','SyIlakLGf3rJ',2,'2018-07-04 02:06:26','2018-07-10 05:13:41'),(95,2,1,'100','11','3','2.4','SyIlakLGf3rJ',2,'2018-07-04 02:06:26','2018-07-10 05:13:41'),(96,2,1,'100','2','4','2.4','SyIlakLGf3rJ',2,'2018-07-04 02:06:26','2018-07-10 05:13:41'),(97,2,1,'100','11','4','2.4','SyIlakLGf3rJ',2,'2018-07-04 02:06:26','2018-07-10 05:13:41'),(98,2,1,'100','2','5','2.4','SyIlakLGf3rJ',2,'2018-07-04 02:06:26','2018-07-10 05:13:41'),(99,2,1,'100','11','5','2.4','SyIlakLGf3rJ',2,'2018-07-04 02:06:26','2018-07-10 05:13:41'),(100,2,1,'100','2','1','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:12','2018-07-10 05:13:41'),(101,2,1,'100','23','1','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:12','2018-07-10 05:13:42'),(102,2,1,'100','11','1','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:12','2018-07-10 05:13:42'),(103,2,1,'100','2','2','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:12','2018-07-10 05:13:42'),(104,2,1,'100','23','2','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:12','2018-07-10 05:13:42'),(105,2,1,'100','11','2','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:12','2018-07-10 05:13:42'),(106,2,1,'100','2','3','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:12','2018-07-10 05:13:42'),(107,2,1,'100','23','3','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:12','2018-07-10 05:13:42'),(108,2,1,'100','11','3','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:13','2018-07-10 05:13:42'),(109,2,1,'100','2','4','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:13','2018-07-10 05:13:42'),(110,2,1,'100','23','4','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:13','2018-07-10 05:13:42'),(111,2,1,'100','11','4','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:13','2018-07-10 05:13:42'),(112,2,1,'100','2','5','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:13','2018-07-10 05:13:42'),(113,2,1,'100','23','5','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:13','2018-07-10 05:13:42'),(114,2,1,'100','11','5','1.33','IDHkfikL0iyg',2,'2018-07-04 02:07:13','2018-07-10 05:13:42'),(115,4,2,'100','44','1','4','cNsyDhylYz1C',0,'2018-07-10 05:16:50','2018-07-10 05:16:50'),(116,4,2,'100','44','2','4','cNsyDhylYz1C',0,'2018-07-10 05:16:50','2018-07-10 05:16:50'),(117,4,2,'100','44','3','4','cNsyDhylYz1C',0,'2018-07-10 05:16:50','2018-07-10 05:16:50'),(118,4,2,'100','44','4','4','cNsyDhylYz1C',0,'2018-07-10 05:16:51','2018-07-10 05:16:51'),(119,4,2,'100','44','5','4','cNsyDhylYz1C',0,'2018-07-10 05:16:51','2018-07-10 05:16:51'),(120,4,2,'100','22','1','4','ninOiQ6k4Ka4',0,'2018-07-10 05:18:11','2018-07-10 05:18:11'),(121,4,2,'100','33','2','4','ninOiQ6k4Ka4',0,'2018-07-10 05:18:11','2018-07-10 05:18:11'),(122,4,2,'100','33','3','4','ninOiQ6k4Ka4',0,'2018-07-10 05:18:11','2018-07-10 05:18:11'),(123,4,2,'100','44','4','4','ninOiQ6k4Ka4',0,'2018-07-10 05:18:11','2018-07-10 05:18:11'),(124,4,2,'100','55','5','4','ninOiQ6k4Ka4',0,'2018-07-10 05:18:11','2018-07-10 05:18:11'),(125,4,8,'100','22','1','4','hsffnnhbV39D',0,'2018-07-12 21:10:00','2018-07-12 21:10:00'),(126,4,8,'100','44','2','4','hsffnnhbV39D',0,'2018-07-12 21:10:00','2018-07-12 21:10:00'),(127,4,8,'100','44','3','4','hsffnnhbV39D',0,'2018-07-12 21:10:00','2018-07-12 21:10:00'),(128,4,8,'100','33','4','4','hsffnnhbV39D',0,'2018-07-12 21:10:00','2018-07-12 21:10:00'),(129,4,8,'100','55','5','4','hsffnnhbV39D',0,'2018-07-12 21:10:00','2018-07-12 21:10:00'),(130,4,10,'10','44','1','4','YiRMWeUiJNPF',0,'2018-07-13 00:49:46','2018-07-13 00:49:46'),(131,4,10,'10','33','2','4','YiRMWeUiJNPF',0,'2018-07-13 00:49:46','2018-07-13 00:49:46'),(132,4,10,'10','44','3','4','YiRMWeUiJNPF',0,'2018-07-13 00:49:46','2018-07-13 00:49:46'),(133,4,10,'10','33','4','4','YiRMWeUiJNPF',0,'2018-07-13 00:49:46','2018-07-13 00:49:46'),(134,4,10,'10','55','5','4','YiRMWeUiJNPF',0,'2018-07-13 00:49:46','2018-07-13 00:49:46'),(135,4,5,'100','22','1','4','bTparTSEAPeH',0,'2018-07-17 00:27:55','2018-07-17 00:27:55'),(136,4,5,'100','33','2','4','bTparTSEAPeH',0,'2018-07-17 00:27:55','2018-07-17 00:27:55'),(137,4,5,'100','44','3','4','bTparTSEAPeH',0,'2018-07-17 00:27:55','2018-07-17 00:27:55'),(138,4,5,'100','44','4','4','bTparTSEAPeH',0,'2018-07-17 00:27:55','2018-07-17 00:27:55'),(139,4,5,'100','55','5','4','bTparTSEAPeH',0,'2018-07-17 00:27:55','2018-07-17 00:27:55'),(140,4,1,'50','4','1','6','B4E7szs3xgLg',0,'2018-08-11 05:09:30','2018-08-11 05:09:30'),(141,4,1,'50','8','2','6','B4E7szs3xgLg',0,'2018-08-11 05:09:30','2018-08-11 05:09:30'),(142,4,1,'50','12','3','6','B4E7szs3xgLg',0,'2018-08-11 05:09:30','2018-08-11 05:09:30'),(143,4,1,'50','12','4','6','B4E7szs3xgLg',0,'2018-08-11 05:09:31','2018-08-11 05:09:31'),(144,4,1,'50','12','5','6','B4E7szs3xgLg',0,'2018-08-11 05:09:31','2018-08-11 05:09:31');
/*!40000 ALTER TABLE `qplayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'Service 1','5bcf00e465ece.png','consectetur adipisicing elit. Sequi reicie ndis aut natus dicta deleniti, quos voluptas!','2018-07-10 04:20:08','2018-10-23 05:45:56'),(2,'Service 2','5bcf09d3c9974.png','consectetur adipisicing elit. Sequi reicie ndis aut natus dicta deleniti, quos voluptas!','2018-07-10 04:20:20','2018-10-23 05:45:23'),(3,'Service 3','5bcf0a01377fd.png','consectetur adipisicing elit. Sequi reicie ndis aut natus dicta deleniti, quos voluptas!','2018-08-09 07:22:56','2018-10-23 05:46:09'),(4,'Play Game','users','All users of your app will become eligible after agreeing during install','2018-07-10 04:20:08','2018-10-15 05:30:01'),(5,'Brain Strome','bolt','All users of your app will become eligible after agreeing during install','2018-07-10 04:20:20','2018-10-15 05:30:17'),(6,'Earn Money','credit-card','All users of your app will become eligible after agreeing during install','2018-08-09 07:22:56','2018-10-15 05:30:25'),(7,'Invest Money','cube','All users of your app will become eligible after agreeing during install eligible after agreeing during install','2018-07-10 04:20:08','2018-10-15 05:30:35'),(8,'Feature 5','cog','All users of your app will become eligible after agreeing during install','2018-07-10 04:20:20','2018-10-15 03:28:07'),(9,'Feature 6','cogs','All users of your app will become eligible after agreeing during install','2018-08-09 07:22:56','2018-10-15 03:28:12');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sgames`
--

DROP TABLE IF EXISTS `sgames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sgames` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `winA` int(2) DEFAULT NULL,
  `winB` int(2) DEFAULT NULL,
  `winC` int(2) DEFAULT NULL,
  `start` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sgames`
--

LOCK TABLES `sgames` WRITE;
/*!40000 ALTER TABLE `sgames` DISABLE KEYS */;
INSERT INTO `sgames` VALUES (1,2,5,6,'2018-08-06 19:07:00','2018-08-30 12:07:00',2,'2018-08-07 06:44:42','2018-08-08 07:31:10'),(2,3,5,4,'2018-08-08 02:01:00','2018-08-31 15:02:00',2,'2018-08-09 02:27:12','2018-08-09 03:22:13'),(3,7,5,6,'2018-08-06 18:07:00','2018-12-24 16:06:00',2,'2018-08-09 03:29:47','2018-10-15 06:27:51'),(4,NULL,NULL,NULL,'2018-10-14 18:06:00','2018-12-30 03:05:00',1,'2018-10-15 06:29:44','2018-10-15 06:29:44');
/*!40000 ALTER TABLE `sgames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sgsets`
--

DROP TABLE IF EXISTS `sgsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sgsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `option` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sgsets`
--

LOCK TABLES `sgsets` WRITE;
/*!40000 ALTER TABLE `sgsets` DISABLE KEYS */;
INSERT INTO `sgsets` VALUES (1,'SpinNumber','Rules of Game','10','1000','10','100','1000',0,1,1,'2018-08-07 06:28:57','2018-08-07 06:29:29');
/*!40000 ALTER TABLE `sgsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (2,'5bceebd1d0b11.png','users','Play & Win Real Cash','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore, magni nostrum! Veniam perspiciatis ut quibusdam, quas ..','2018-05-27 04:56:43','2018-10-23 03:37:22'),(3,'5b0aa36deed85.jpg','cog','SeccondSlide','Earn Money','2018-05-27 04:57:11','2018-07-07 09:25:39'),(5,'5b34b85b2173e.jpg','cube','SeccondSlide','Be a Winner','2018-06-28 04:28:44','2018-07-07 09:25:48');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socials`
--

DROP TABLE IF EXISTS `socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socials`
--

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
INSERT INTO `socials` VALUES (2,'facebook-square','https://www.facebook.com/pgu','2018-05-27 05:41:27','2018-05-27 05:45:35'),(3,'twitter','https://www.facebook.com/pguk','2018-05-27 05:41:57','2018-05-27 05:41:57'),(4,'linkedin','https://www.linkedin.com','2018-05-27 05:42:12','2018-10-15 04:57:43');
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `splayers`
--

DROP TABLE IF EXISTS `splayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `splayers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sgame_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `line` int(11) NOT NULL,
  `odd` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `splayers`
--

LOCK TABLES `splayers` WRITE;
/*!40000 ALTER TABLE `splayers` DISABLE KEYS */;
INSERT INTO `splayers` VALUES (1,1,1,'200','2',1,'1000','dCqMhe0VP6gR',2,'2018-08-08 05:56:53','2018-08-08 07:31:10'),(2,1,1,'200','5',2,'1000','dCqMhe0VP6gR',2,'2018-08-08 05:56:53','2018-08-08 07:31:10'),(3,1,1,'200','6',3,'1000','dCqMhe0VP6gR',1,'2018-08-08 05:56:53','2018-08-08 07:31:10'),(4,1,1,'100','2',1,'100','HfS1CcHiu0gF',2,'2018-08-08 06:15:24','2018-08-08 07:31:10'),(5,1,1,'100','8',3,'100','HfS1CcHiu0gF',2,'2018-08-08 06:15:24','2018-08-08 07:31:10'),(6,2,1,'300','1',1,'1000','MB0O02MNGhBH',2,'2018-08-09 02:59:13','2018-08-09 03:22:12'),(7,2,1,'300','5',2,'1000','MB0O02MNGhBH',2,'2018-08-09 02:59:14','2018-08-09 03:22:12'),(8,2,1,'300','2',3,'1000','MB0O02MNGhBH',2,'2018-08-09 02:59:14','2018-08-09 03:22:12'),(9,2,1,'100','5',2,'10','Y08JQYD3C060',1,'2018-08-09 03:21:24','2018-08-09 03:22:13'),(10,3,1,'100','3',1,'1000','Bk01g4NVNWJA',2,'2018-08-11 06:02:23','2018-10-15 06:27:51'),(11,3,1,'100','5',2,'1000','Bk01g4NVNWJA',2,'2018-08-11 06:02:23','2018-10-15 06:27:51'),(12,3,1,'100','2',3,'1000','Bk01g4NVNWJA',2,'2018-08-11 06:02:23','2018-10-15 06:27:51'),(13,3,1,'100','6',1,'1000','7aEXouGG2dc5',2,'2018-08-11 06:47:50','2018-10-15 06:27:51'),(14,3,1,'100','7',2,'1000','7aEXouGG2dc5',2,'2018-08-11 06:47:50','2018-10-15 06:27:51'),(15,3,1,'100','4',3,'1000','7aEXouGG2dc5',2,'2018-08-11 06:47:50','2018-10-15 06:27:51');
/*!40000 ALTER TABLE `splayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trxid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,'600','200000009305.13','1','Deposit Via Credit Card','TAuZgs2mA19Js0cU','2018-10-15 06:33:08','2018-10-15 06:33:08'),(2,2,'500','1098','1','Deposit Via Credit Card','hylB4pCtYLmpjQOa','2018-10-15 06:34:18','2018-10-15 06:34:18'),(3,1,'100','200000009205.13','0','Played Easy Game','ARMtUceSa9EZGtUm','2018-10-23 06:13:21','2018-10-23 06:13:21'),(4,1,'100','200000009105.13','0','Played BallGame','N1Oey0m9JOUl4OAH','2018-10-23 06:15:16','2018-10-23 06:15:16');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tauth` int(11) NOT NULL DEFAULT '0',
  `tfver` int(11) NOT NULL DEFAULT '1',
  `emailv` int(11) NOT NULL,
  `smsv` int(11) NOT NULL,
  `refer` int(11) NOT NULL DEFAULT '0',
  `balance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `vsent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vercode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secretcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jahangir Pial','pialneel@gmail.com','pial','$2y$10$nQeyE07EKKr4w.qr6jL92.RIZkU1pCsbX6rGc5Zm.lRjG0hPy0BVa','Bangladesh','Dhaka','0109131232',0,1,1,1,0,'200000009105.13',1,'0','QKprPGb5Yu',NULL,'7jIr0GdOYAMhnOR7y2nW8MSRtxNz0HqJuXyzrBFN00aHFWzTMaCUUHgL7ezt','2018-04-25 04:51:18','2018-10-23 06:15:16'),(2,'Pratik','prr@ss.assa','prat','$2y$10$R1qRE/YRskKtTkyfjrbe6eOi4VCbCLvcgcG9jwVPydWGX.SPrldSW','JHsda','DFsaf','43254235423',0,1,1,1,0,'1098',1,NULL,NULL,NULL,'c5gRc3tRj9wN8xT7t9180b3WFUUFMNeCiymHIti1c2noRvaJaN3oVbD4qBrt','2018-04-29 08:14:10','2018-10-15 06:34:18'),(3,'Nee Uerka','nee@gg.aa','nee','$2y$10$YGXVvhbtqlPW.EtC6Iy1YuPoQod7r3SGsm/p3Y1rM33zMC7nSXeJK','DFaf','asAD','435245255',0,1,1,1,0,'0',0,NULL,NULL,NULL,NULL,'2018-05-10 00:48:51','2018-06-28 03:50:55'),(4,'Tajhd Hasdasddas','dsfdf@sff.fs','fsdhh','$2y$10$UCMVoW6SEePaFWeS.GQwN.SJPR6QHOAwXWvoyDAIr6Hik5iC4z2O2','Gaaj','Ahagaa','454543254325',0,1,1,1,0,'0',1,NULL,NULL,NULL,NULL,'2018-05-22 01:42:33','2018-05-22 01:42:33'),(5,'Donald','donytex4u@gmail.com','Donukaps','$2y$10$xbBA3BVpY5e7elwZGkFTa.AWWTHt/knOoGNypP4Z.kxx04LqRd4gC','Nigeria','Enugu','+2347065239015',0,1,1,1,0,'4800',1,NULL,NULL,NULL,NULL,'2018-06-10 15:05:40','2018-07-17 00:27:55'),(6,'Jahangir Kabir','haha@tara.cc','alery','$2y$10$jBM4xUNUIet2le/OA80SiuWRPHDDG1eGtM90KsSy1Lm2v.6.xP2Fa','Gaaj','Ahagaa','423423423432',0,1,1,1,0,'1000',1,'0','AgyftfGLSe',NULL,'pp3WLZFsgfAbz7nGiEtWTHhQT9vxntwVexGFKJBtG564NAOqH2kM5SfKksdh','2018-07-04 04:44:55','2018-07-09 06:58:58'),(7,'hfdh','dfh@ad.asdf','fgh','$2y$10$7ohDz2NI5N/BIIG7MELI/OBmjgLAQV8bZvTvdJ64EWmphqS9BYrYa','fdh','fgh','6754',0,1,0,0,0,'0',1,NULL,NULL,NULL,'Zp0hykiixfNVFOTdzTz78oM4eIEhMmQqUeONXClmOeBnqTR5IBFQdH0Yjd3w','2018-07-07 08:54:21','2018-07-07 08:54:21'),(8,'Jude Iloekwe','judesma@yahoo.com','judesma','$2y$10$Z2XZJnkjiOg5TRCuHu2ExuqGGy0WEadid9MdQKgo36wi7lcPCnkqC','Nigeria','Asaba','08168875045',0,1,1,1,0,'200',1,'1531414191','71iJiAW1',NULL,NULL,'2018-07-10 18:45:59','2018-07-12 21:15:43'),(9,'user','user@gmail.com','user','$2y$10$ZbTQ2UTcKiP1D4LNfYQaxesa/c1ImW.nDa1Q571dFWntlSMuapv52','user','user','user',0,1,0,0,0,'0',1,NULL,NULL,NULL,'uLGlvWxVizFSxh0XEKvrONIP3h3uaLXZN9CN3oPEhiI9QO49PIN42PrQ8ih8','2018-07-12 10:32:42','2018-07-12 10:32:42'),(10,'Okoye','okoyechikastanley@yahoo.com','Chikamane','$2y$10$r82V67lCKQau7.D/vG12ueDZv7.0XdQ4jrhFmG2R6RFv3J7c2TATG','Nigeria','Awka','07039440271',0,1,1,1,0,'917.25',1,'1531400199','MK07Bfsc',NULL,NULL,'2018-07-12 14:02:32','2018-07-13 01:11:47'),(11,'Anucoin','anucoinorg@gmail.com','anucoin','$2y$10$KvMpPvFzldqEIB7RC44JMeXxIA2hr8J6YTO2J.xXX1tny7mNT967O','singapore','singapore','82654259',1,1,1,1,0,'0',1,'1532020230','1RjqngcW',NULL,'ZGTcXxIS4kiZDLd5RtjO49bmyXFGlepCbPANBLcUg1TG5FCaI7KyTpcnnjef','2018-07-19 20:06:49','2018-07-22 19:49:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraws`
--

DROP TABLE IF EXISTS `withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraws` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `wmethod_id` int(11) NOT NULL DEFAULT '1',
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraws`
--

LOCK TABLES `withdraws` WRITE;
/*!40000 ALTER TABLE `withdraws` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wmethods`
--

DROP TABLE IF EXISTS `wmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wmethods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minamo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `maxamo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `fixed_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `percent_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `val1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wmethods`
--

LOCK TABLES `wmethods` WRITE;
/*!40000 ALTER TABLE `wmethods` DISABLE KEYS */;
INSERT INTO `wmethods` VALUES (1,'Citi Bank','50','1000','2','1.5','88','rexrifat6sds36@gmail.com',1,'2018-07-07 06:30:23','2018-07-07 09:04:36'),(2,'Woori Bank','500','10000','2','2.52','77','jfkldsfjkldsjfklsjd fdsalkjfklsdajfljsakldjfl',1,'2018-07-07 06:34:18','2018-07-07 06:34:24'),(3,'State Bank','50','1000','2','3.52','80','rexrifat6sds3aa6@gmail.com',1,'2018-07-07 06:35:00','2018-07-07 06:35:00');
/*!40000 ALTER TABLE `wmethods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:10:26
