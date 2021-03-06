-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: miraclebet
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
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `login_time` datetime DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Jhon Doe','admin','admin@gmail.com','8801825683631','admin_1526539271.jpg',1,'2018-05-04 14:36:07','$2y$10$bYa23M2DS8SHgJufrKnIPOG6Mxg4wDduuAxTKVEUhtLbOMDIMV.bi','gARxq5mwvI22lhusgt4aCCQ0WDmZpJDru7VKxMIZuL3xvM9ZHTMrODcU3Du0','2018-03-26 06:08:23','2018-05-17 00:41:11'),(2,NULL,'Jamal','user@user.com','017 000 00 000',NULL,1,'2018-04-28 03:33:58','$2y$10$.TXTntjqdgdyudcbaiwQMew/JQCcY88qhLigaJJqJ0yT0UCVY3r/m','ELp1rBoMGsKzDSIvp7dtTcnECWv9YCVhAWBLovzBLPRu2sgNCz6WD0QiVwPB','2018-03-31 00:35:52','2018-04-27 21:33:58');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `src` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `views` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (20,'1','1','png','#',NULL,73,'2018-06-03 19:21:58','2018-06-08 03:49:45'),(21,'1','3','png','#',NULL,0,'2018-06-03 19:22:25','2018-06-03 19:22:25'),(22,'1','2','png','#',NULL,0,'2018-06-03 19:22:56','2018-06-03 19:22:56'),(23,'1','1','jpg','https://thesoftking.com',NULL,0,'2018-07-29 13:06:54','2018-07-29 13:06:54'),(24,'1','3','png','https://thesoftking.com',NULL,0,'2018-07-29 13:07:08','2018-07-29 13:07:08');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_settings`
--

DROP TABLE IF EXISTS `basic_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_sym` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `email_verification` tinyint(1) NOT NULL DEFAULT '0',
  `sms_verification` tinyint(1) NOT NULL DEFAULT '0',
  `email_notification` tinyint(1) NOT NULL DEFAULT '0',
  `sms_notification` tinyint(4) NOT NULL DEFAULT '0',
  `withdraw_status` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_charge` double DEFAULT '0',
  `captcha` tinyint(4) NOT NULL DEFAULT '0',
  `decimal` int(2) NOT NULL,
  `adminWallet` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refcom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `about` blob NOT NULL,
  `policy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `terms` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_settings`
--

LOCK TABLES `basic_settings` WRITE;
/*!40000 ALTER TABLE `basic_settings` DISABLE KEYS */;
INSERT INTO `basic_settings` VALUES (1,'Bet Lar','0b4f60','14805E','+880-0000-000000','support@thesoftking.com','Sector# 11, Uttara, Dhaka 1230, Bangladesh','BDT','Tk',1,1,1,1,1,1,12,0,2,'3H4X31j1pHswncoeasRjJt7TKBJLZz6ABE','10',_binary '<div align=\"justify\"><p style=\"margin-bottom: 15px; padding: 0px;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</font></p><p></p><p></p><p style=\"margin-bottom: 15px; padding: 0px;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-weight: 700;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;</span>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</font></p><p style=\"margin-bottom: 15px; padding: 0px;\"><span style=\"font-weight: 700;\"><br></span></p><p style=\"margin-bottom: 15px; padding: 0px;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-weight: 700;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem .</span></font></p><p style=\"margin-bottom: 15px; padding: 0px;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><br></font></p><p style=\"margin-bottom: 15px; padding: 0px;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</font></p><div><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><br></font></div></div>','',NULL,'','Copyright Â© 2018  - All Right Reserved.','<div id=\"fb-root\"></div>\r\n<script>\r\n    (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.12&appId=205856110142667&autoLogAppEvents=1\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n    }(document, \'script\', \'facebook-jssdk\'));\r\n</script>','123',NULL,'2018-04-26 04:03:19');
/*!40000 ALTER TABLE `basic_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bet_invests`
--

DROP TABLE IF EXISTS `bet_invests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bet_invests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `betoption_id` int(11) NOT NULL,
  `match_id` int(11) DEFAULT NULL,
  `invest_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bet_invests`
--

LOCK TABLES `bet_invests` WRITE;
/*!40000 ALTER TABLE `bet_invests` DISABLE KEYS */;
INSERT INTO `bet_invests` VALUES (1,1,13,2,'2','6.00',0,'2018-07-29 12:22:33','2018-07-29 12:22:33');
/*!40000 ALTER TABLE `bet_invests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bet_options`
--

DROP TABLE IF EXISTS `bet_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bet_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `invest_amount` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.001',
  `return_amount` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.001',
  `min_amo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.001',
  `ratio1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ratio2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bet_options`
--

LOCK TABLES `bet_options` WRITE;
/*!40000 ALTER TABLE `bet_options` DISABLE KEYS */;
INSERT INTO `bet_options` VALUES (1,1,1,'Switzerland','0.001','0.001','2','1','2',1,'2018-06-02 14:10:30','2018-06-02 14:10:30'),(2,1,1,'Brazil','0.001','0.001','2','1','3',1,'2018-06-02 14:10:30','2018-06-02 14:10:30'),(3,1,1,'Draw','0.001','0.001','3','2','3',1,'2018-06-02 14:10:30','2018-06-02 14:10:30'),(4,5,5,'Belgium','0.001','0.001','1','1','2',1,'2018-06-02 14:11:23','2018-06-02 14:11:23'),(5,5,5,'England','0.001','0.001','2','1','3',1,'2018-06-02 14:11:23','2018-06-02 14:11:23'),(6,5,5,'Draw','0.001','0.001','1.6','2','3',1,'2018-06-02 14:11:23','2018-06-02 14:11:23'),(7,4,4,'Germany','0.001','0.001','2','2','3',1,'2018-06-02 14:12:09','2018-06-02 14:12:09'),(8,4,4,'Sweden','0.001','0.001','3','2','3',1,'2018-06-02 14:12:10','2018-06-02 14:12:10'),(9,4,4,'Draw','0.001','0.001','1.6','1','3',1,'2018-06-02 14:12:10','2018-06-02 14:12:10'),(10,3,3,'Argentina','0.001','0.001','2','1','3',1,'2018-06-02 14:13:12','2018-06-02 14:13:12'),(11,3,3,'Croatia','0.001','0.001','1','1','2',1,'2018-06-02 14:13:12','2018-06-02 14:13:12'),(12,2,2,'France','0.001','0.001','1.6','1','3',1,'2018-06-02 14:13:51','2018-06-02 14:13:51'),(13,2,2,'Peru','0.001','0.001','1.8','1','3',1,'2018-06-02 14:13:51','2018-06-02 14:13:51'),(14,6,6,'South Africa','0.001','0.001','2','1','3',1,'2018-06-02 14:18:42','2018-06-02 14:18:42'),(15,6,6,'West Indies','0.001','0.001','1.6','1','2',1,'2018-06-02 14:18:42','2018-06-02 14:18:42'),(16,7,7,'Australia','0.001','0.001','1','1','3',1,'2018-06-02 14:19:18','2018-06-02 14:19:18'),(17,7,7,'Zimbabwe','0.001','0.001','1.6','2','3',1,'2018-06-02 14:19:18','2018-06-02 14:19:18'),(18,8,8,'Bangladesh','0.001','0.001','2','1','3',1,'2018-06-02 14:19:56','2018-06-02 14:19:56'),(19,8,8,'West Indies','0.001','0.001','3','1','3',1,'2018-06-02 14:19:56','2018-06-02 14:19:56'),(20,9,9,'Australia','0.001','0.001','3','2','3',1,'2018-06-02 14:20:33','2018-06-02 14:20:33'),(21,9,9,'England','0.001','0.001','1.8','2','3',1,'2018-06-02 14:20:33','2018-06-02 14:20:33'),(22,10,13,'Real Madrid','0.001','0.001','1.3','2','3',1,'2018-06-02 14:33:59','2018-06-02 14:33:59'),(23,10,13,'Liverpool','0.001','0.001','2.6','2','3',1,'2018-06-02 14:34:00','2018-06-02 14:34:00'),(24,11,12,'Barcelona','0.001','0.001','2','1','3',1,'2018-06-02 14:34:40','2018-06-02 14:34:40'),(25,11,12,'Real Madrid','0.001','0.001','2','1','2',1,'2018-06-02 14:34:40','2018-06-02 14:34:40'),(26,12,11,'Arsenal','0.001','0.001','2','1','3',1,'2018-06-02 14:35:18','2018-06-02 14:35:18'),(27,12,11,'Menchester City','0.001','0.001','3','1','2',1,'2018-06-02 14:35:18','2018-06-02 14:35:18'),(28,13,10,'Arsenal','0.001','0.001','3','1','2',1,'2018-06-02 14:35:52','2018-06-02 14:35:52'),(29,13,10,'Burnley','0.001','0.001','2.5','1','3',1,'2018-06-02 14:35:52','2018-06-02 14:35:52'),(30,17,14,'MI','0.001','0.001','2','2','3',1,'2018-06-02 14:45:55','2018-06-02 14:45:55'),(31,17,14,'CSK','0.001','0.001','1.6','1','2',1,'2018-06-02 14:45:55','2018-06-02 14:45:55'),(32,14,17,'SRH','0.001','0.001','2','1.5','4',1,'2018-06-02 14:47:01','2018-06-02 14:47:01'),(33,14,17,'CSK','0.001','0.001','1','2','3',1,'2018-06-02 14:47:01','2018-06-02 14:47:01'),(34,15,16,'KXIP','0.001','0.001','2','1','3',1,'2018-06-02 14:47:42','2018-06-02 14:47:42'),(35,15,16,'DD','0.001','0.001','3','1','3',1,'2018-06-02 14:47:42','2018-06-02 14:47:42'),(36,16,15,'RR','0.001','0.001','3','1','2',1,'2018-06-02 14:48:09','2018-06-02 14:48:09'),(37,16,15,'KXIP','0.001','0.001','1','1','3',1,'2018-06-02 14:48:10','2018-06-02 14:48:10'),(38,18,18,'Barcelona','0.001','0.001','2','2','3',1,'2018-06-02 14:54:57','2018-06-02 14:54:57'),(39,18,18,'Real Madrid','0.001','0.001','1.6','1','3',1,'2018-06-02 14:54:57','2018-06-02 14:54:57'),(40,19,19,'Deportivo','0.001','0.001','3','1','3',1,'2018-06-02 14:55:33','2018-06-02 14:55:33'),(41,19,19,'Real Madrid','0.001','0.001','2','1','2',1,'2018-06-02 14:55:33','2018-06-02 14:55:33'),(42,20,20,'Bercalona','0.001','0.001','3','2','3',1,'2018-06-02 14:56:20','2018-06-02 14:56:20'),(43,20,20,'Deportivo Alaves','0.001','0.001','2','2','3',1,'2018-06-02 14:56:20','2018-06-02 14:56:20');
/*!40000 ALTER TABLE `bet_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bet_questions`
--

DROP TABLE IF EXISTS `bet_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bet_questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `match_id` int(11) DEFAULT NULL,
  `question` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `result` tinyint(4) NOT NULL DEFAULT '0',
  `end_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bet_questions`
--

LOCK TABLES `bet_questions` WRITE;
/*!40000 ALTER TABLE `bet_questions` DISABLE KEYS */;
INSERT INTO `bet_questions` VALUES (1,1,'Who Will be Won??',1,0,'2019-06-02 20:08:30','2018-06-02 14:08:43','2018-06-02 14:08:43'),(2,2,'Who Will be Won??',1,0,'2019-06-02 20:08:50','2018-06-02 14:08:54','2018-06-02 14:08:54'),(3,3,'Who Will be Won??',1,0,'2019-06-02 20:09:01','2018-06-02 14:09:06','2018-06-02 14:09:06'),(4,4,'Who Will be Won??',1,0,'2019-06-02 20:09:12','2018-06-02 14:09:16','2018-06-02 14:09:16'),(5,5,'Who Will be Won??',1,0,'2019-06-02 20:09:22','2018-06-02 14:09:29','2018-06-02 14:09:29'),(6,6,'Who Will be Won??',1,0,'2019-01-01 20:14:28','2018-06-02 14:14:48','2018-06-02 14:14:48'),(7,7,'Who Will be Won??',1,0,'2019-01-02 20:14:55','2018-06-02 14:15:19','2018-06-02 14:15:19'),(8,8,'Who Will be Won??',1,0,'2019-03-02 20:16:16','2018-06-02 14:16:35','2018-06-02 14:16:35'),(9,9,'Who Will be Won??',1,0,'2019-03-02 20:17:34','2018-06-02 14:17:44','2018-06-02 14:17:44'),(10,13,'Who Will be Won??',1,0,'2020-06-20 20:31:55','2018-06-02 14:32:02','2018-06-02 14:32:02'),(11,12,'Who Will be Won??',1,0,'2020-06-02 20:32:10','2018-06-02 14:32:17','2018-06-02 14:32:17'),(12,11,'Who Will be Won??',1,0,'2020-06-02 20:32:26','2018-06-02 14:32:31','2018-06-02 14:32:31'),(13,10,'Who Will be Won??',1,0,'2019-03-02 20:33:03','2018-06-02 14:33:14','2018-06-02 14:33:14'),(14,17,'Who Will be Won??',1,0,'2019-06-04 20:44:13','2018-06-02 14:44:20','2018-06-02 14:44:20'),(15,16,'Who Will be Won??',1,0,'2019-06-04 19:44:29','2018-06-02 14:44:37','2018-06-02 14:44:37'),(16,15,'Who Will be Won??',1,0,'2019-06-04 19:44:44','2018-06-02 14:44:57','2018-06-02 14:44:57'),(17,14,'Who Will be Won??',1,0,'2019-06-04 20:45:07','2018-06-02 14:45:15','2018-06-02 14:45:15'),(18,18,'Who Will be Won??',1,0,'2019-06-03 20:53:25','2018-06-02 14:53:30','2018-06-02 14:53:30'),(19,19,'Who Will be Won??',1,0,'2019-06-03 20:53:35','2018-06-02 14:53:43','2018-06-02 14:53:43'),(20,20,'Who Will be Won??',1,0,'2019-06-03 20:53:46','2018-06-02 14:53:50','2018-06-02 14:53:50');
/*!40000 ALTER TABLE `bet_questions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
INSERT INTO `deposits` VALUES (1,6,103,'100','6','1.33','0','','hhEyiybN7FBml0Cv',1,0,'2018-07-29 14:06:18','2018-07-29 14:06:37'),(2,6,103,'5050','154.5','65.06','0','','0lfKxkV2GXY4FDog',1,0,'2018-07-29 14:08:58','2018-07-29 14:09:18'),(3,1,103,'200','9','2.61','0','','6eXqGxoOYjWNrKEf',1,0,'2018-07-29 14:12:21','2018-07-29 14:12:42'),(4,6,103,'100','6','1.33','0','','SvSVJnB5wYEdsJrg',1,0,'2018-07-29 14:13:02','2018-07-29 14:13:20');
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etemplates`
--

DROP TABLE IF EXISTS `etemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `esender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emessage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smsapi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etemplates`
--

LOCK TABLES `etemplates` WRITE;
/*!40000 ALTER TABLE `etemplates` DISABLE KEYS */;
INSERT INTO `etemplates` VALUES (1,'no-reply@thesoftking.com','+01234567890','<br><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\"><tbody><tr><td style=\"padding: 0; width: 600px;\"><br><div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\"><img style=\"height: auto; width: 100%; border: 0; max-width: 312px;\" src=\"http://i.imgur.com/nNCNPZT.png\" alt=\"\" width=\"312\" height=\"44\"><br></div></td></tr></tbody></table><br><table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\"><tbody><tr><td class=\"column\" style=\"padding: 0; text-align: left; vertical-align: top; color: #60666d; font-size: 14px; line-height: 21px; font-family: sans-serif; width: 600px;\"><br><div style=\"margin-left: 20px; margin-right: 20px;\"><font size=\"4\">Hi {{name}},<br></font><p><strong>{{message}}</strong></p></div><div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\"><br><p class=\"size-14\" style=\"margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 21px;\">Thanks,<br> <strong>THESOFTKING TEAM</strong></p><br></div><br></td></tr></tbody></table><br></div>','https://api.infobip.com/api/v3/sendsms/plain?user=****&password=****&sender=BETLAR&SMSText={{message}}&GSM={{number}}&type=longSMS','2018-01-09 23:45:09','2018-06-03 17:53:45');
/*!40000 ALTER TABLE `etemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'FIFA World Cup 2018','fifa-world-cup-2018',1,'2018-06-02 13:46:35','2018-06-02 13:46:35'),(2,'T20 World Cup','t20-world-cup',1,'2018-06-02 13:47:09','2018-06-02 13:47:09'),(3,'IPL','ipl',1,'2018-06-02 13:47:35','2018-06-02 13:47:35'),(4,'LA LiGA','la-liga',1,'2018-06-02 13:48:02','2018-06-02 13:48:02'),(5,'El Clasico 2018','el-clasico-2018',1,'2018-06-02 13:50:00','2018-06-02 13:50:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'WELCOME TO BETLAR',_binary '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div>','2018-04-15 02:14:58','2018-07-29 10:42:48'),(2,'BUILD YOUR DREAM WEBSITE WITH',_binary '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div>','2018-04-15 02:15:11','2018-07-29 10:42:41'),(3,'Why do we use it?',_binary '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div>','2018-05-22 22:36:44','2018-07-29 10:42:33'),(4,'WHY THIS PLATFORM ?',_binary '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div>','2018-06-03 18:00:39','2018-07-29 10:42:26'),(5,'HOW IT WORKS?',_binary '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div>','2018-06-03 18:00:53','2018-07-29 10:42:16'),(6,'HOW TO PLAY',_binary '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div><div><br></div>','2018-06-03 18:01:06','2018-07-29 10:42:09'),(7,'How To Deposit?',_binary '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><br></div>','2018-06-03 18:01:17','2018-07-29 10:41:40');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
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
INSERT INTO `gateways` VALUES (101,'PayPal','PayPal','5','1000','0.511','2.52','80','rexrifat636@gmail.com',NULL,1,NULL,'2018-05-31 07:56:40'),(102,'PerfectMoney','Perfect Money','20','20000','2','1','80','U5376900','G079qn4Q7XATZBqyoCkBteGRg',1,NULL,'2018-05-20 11:58:59'),(103,'Stripe','Credit Card','10','50000','3','3','80','sk_test_aat3tzBCCXXBkS4sxY3M8A1B','pk_test_AU3G7doZ1sbdpJLj0NaozPBu',1,NULL,'2018-05-27 18:11:50'),(104,'Skrill','Skrill','10','50000','3','3','80','merchant@gmail.com','TheSoftKing',1,NULL,'2018-05-20 12:01:09'),(501,'Blockchain.info','BitCoin','1','20000','1','0.5','80','3965f52f-ec19-43af-90ed-d613dc60657eSSS','xpub6DREmHywjNizvs9b4hhNekcjFjvL4rshJjnrHHgtLNCSbhhx5jKFRgqdmXAecLAddEPudDZY4xoDbV1NVHSCeDp1S7NumPCNNjbxB7sGasY0000',1,NULL,'2018-05-21 01:20:29'),(502,'block.io - BTC','BitCoin','1','99999','1','0.5','80','1658-8015-2e5e-9afb','09876softk',1,'2018-01-27 18:00:00','2018-05-31 09:12:55'),(503,'block.io - LTC','LiteCoin','100','10000','0.4','1','80','cb91-a5bc-69d7-1c27','09876softk',1,NULL,'2018-05-31 09:27:34'),(504,'block.io - DOGE','DogeCoin','1','50000','0.51','2.52','80','2daf-d165-2135-5951','09876softk',1,NULL,'2018-05-31 09:28:54'),(505,'CoinPayment - BTC','BitCoin','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:38:33'),(506,'CoinPayment - ETH','Etherium','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(507,'CoinPayment - BCH','Bitcoin Cash','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(508,'CoinPayment - DASH','DASH','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(509,'CoinPayment - DOGE','DOGE','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(510,'CoinPayment - LTC','LTC','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(512,'CoinGate','CoinGate','10','1000','5','5','80','Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N',NULL,1,NULL,NULL),(513,'CoinPayment-ALL','Coin Payment','10','1000','05','5','80','db1d9f12444e65c921604e289a281c56',NULL,1,NULL,'2018-05-21 01:20:54');
/*!40000 ALTER TABLE `gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `src` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (1,1,'Brazil vs	Switzerland','brazil-vsswitzerland','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/yx09UsrM2Dw\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 19:53:00','2020-06-02 19:53:00',1,'2018-06-02 13:53:50','2018-06-02 13:53:50'),(2,1,'France Vs Peru','france-vs-peru','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ghYwR_aC4qg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 19:53:00','2020-06-02 19:53:00',1,'2018-06-02 13:54:52','2018-06-02 13:54:52'),(3,1,'Argentina Vs Croatia','argentina-vs-croatia','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5tOA79nppoY\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 19:53:00','2021-06-02 19:53:00',1,'2018-06-02 13:57:31','2018-06-02 13:57:31'),(4,1,'Germany vs	Sweden','germany-vssweden','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/E8HKL22PIkQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 19:53:00','2021-06-02 19:53:00',1,'2018-06-02 13:58:41','2018-06-02 13:58:41'),(5,1,'England	vs Belgium','englandvs-belgium','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OMkVSSFLGiU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 19:53:00','2021-06-02 19:53:00',1,'2018-06-02 14:00:45','2018-06-02 14:00:45'),(6,2,'South Africa vs West Indies','south-africa-vs-west-indies','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CnSBj2TtW3E\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2019-06-02 19:53:00','2019-06-02 19:53:00',1,'2018-06-02 14:03:53','2018-06-02 14:03:53'),(7,2,'Australia vs Zimbabwe','australia-vs-zimbabwe','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VM6NTYKM3a8\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2019-06-02 19:53:00','2019-06-02 19:53:00',1,'2018-06-02 14:05:11','2018-06-02 14:05:11'),(8,2,'Bangladesh vs West Indies','bangladesh-vs-west-indies','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3pkb9-aNc9M\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2019-06-02 19:53:00','2019-06-02 19:53:00',1,'2018-06-02 14:06:23','2018-06-02 14:06:23'),(9,2,'Australia Vs England','australia-vs-england','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/7w9hIg2BRR4\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2019-06-02 19:53:00','2019-06-02 19:53:00',1,'2018-06-02 14:07:23','2018-06-02 14:07:23'),(10,5,'Real Madrid VS Liverpool','real-madrid-vs-liverpool','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TFNVtGXKAxw\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 20:23:00','2019-06-02 20:24:00',1,'2018-06-02 14:24:16','2018-06-02 14:24:16'),(11,5,'Barcelona vs Real Madrid','barcelona-vs-real-madrid','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TFNVtGXKAxw\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 20:23:00','2021-06-02 20:24:00',1,'2018-06-02 14:25:23','2018-06-02 14:25:23'),(12,5,'Arsenal Vs Menchester City','arsenal-vs-menchester-city','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TFNVtGXKAxw\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 20:23:00','2021-06-02 20:24:00',1,'2018-06-02 14:29:03','2018-06-02 14:29:03'),(13,5,'Burnley Vs Arsenal','burnley-vs-arsenal','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TFNVtGXKAxw\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 20:23:00','2021-06-02 20:24:00',1,'2018-06-02 14:30:29','2018-06-02 14:30:29'),(14,3,'Sunrisers Hyderabad VS Chennai Super Kings','sunrisers-hyderabad-vs-chennai-super-kings','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/G-bbJZUS2Qw\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 21:03:05','2019-06-05 20:39:00',1,'2018-06-02 14:40:00','2018-06-02 14:40:00'),(15,3,'Delhi Daredevils VS Kings XI Punjab','delhi-daredevils-vs-kings-xi-punjab','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/UQj7WEkrDs0\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 21:02:57','2019-06-05 20:39:00',1,'2018-06-02 14:41:09','2018-06-02 14:41:09'),(16,3,'Rajasthan Royals VS Kings XI Punjab','rajasthan-royals-vs-kings-xi-punjab','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LYfqLDvkr9w\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 21:02:52','2019-06-05 20:39:00',1,'2018-06-02 14:42:23','2018-06-02 14:42:23'),(17,3,'Mumbai Indians vs Chennai Super Kings','mumbai-indians-vs-chennai-super-kings','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oMRlIO3ICRU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 21:02:47','2019-06-05 20:39:00',1,'2018-06-02 14:43:37','2018-06-02 14:43:37'),(18,4,'Barcelona Vs Real Madrid','barcelona-vs-real-madrid','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/yxDL1EuEnng\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 21:02:40','2019-06-04 20:50:00',1,'2018-06-02 14:50:50','2018-06-02 14:50:50'),(19,4,'Deportivo vs Real Madrid','deportivo-vs-real-madrid','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/yxDL1EuEnng\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 21:02:36','2019-06-04 20:50:00',1,'2018-06-02 14:51:26','2018-06-02 14:51:26'),(20,4,'Bercalona vs Deportivo Alaves','bercalona-vs-deportivo-alaves','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/yxDL1EuEnng\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2018-06-02 21:02:31','2019-06-04 20:50:00',1,'2018-06-02 14:52:20','2018-06-02 14:52:20');
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'EXTRA MENU','extra-menu',_binary '<div align=\"justify\"><div align=\"justify\"><p style=\"margin-bottom: 15px; padding: 0px;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;</font></p><p></p><p></p><p style=\"margin-bottom: 15px; padding: 0px;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><b>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </b>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</font></p><p style=\"margin-bottom: 15px; padding: 0px;\"><b><br></b></p><p style=\"margin-bottom: 15px; padding: 0px;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><b>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem .</b></font></p><p style=\"margin-bottom: 15px; padding: 0px;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><br></font></p><p style=\"margin-bottom: 15px; padding: 0px;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</font></p><p style=\"margin-bottom: 15px; padding: 0px;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><br></font></p><p style=\"margin-bottom: 15px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></p></div></div>','2018-05-04 08:26:57','2018-07-29 10:13:03');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',2),(3,'2018_05_15_060641_create_events_table',2),(4,'2018_05_15_073146_create_matches_table',3),(5,'2018_05_15_130147_create_bet_questions_table',4),(7,'2018_05_16_060816_create_bet_options_table',5),(8,'2018_05_23_102456_create_bet_invests_table',6),(9,'2018_07_29_151129_create_commission_logs_table',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES (1,'ronnie@gmail.com','IFsbuBWs5ZgZcoQGMivzLXy8XCvOne','2018-05-16 01:28:41',NULL),(2,'ronnie@gmail.com','fHkcBEMW78ef43pmSswx8kVHqLcgDx','2018-05-23 00:19:47',NULL),(3,'ronnie@gmail.com','tNPjzNUcsdEYeSPCutmDy8VfbECMUY','2018-05-23 00:28:28',NULL),(4,'ronniearea@gmail.com','GXtEiyl8MGzNwMR5tNdRCEI7dTyuVX','2018-05-27 16:02:22',NULL),(5,'abirkhan75@gmail.com','Z6sHQHOATk5fluqi0vAJeyqzEd0ZXz','2018-05-27 05:54:38',NULL),(6,'haha@haha.co','IDx0BrjOWN6p0FGFpmOdgG6wrdtqO2','2018-05-28 21:20:01',NULL),(7,'haha@haha.co','dD4UFej2PEFSEmBil48SJPw1l2zUSv','2018-05-28 21:26:54',NULL),(8,'haha@haha.co','gbchqenwrcLnZPhzdjAtpR92V8vwwm','2018-05-28 21:51:15',NULL);
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'<i class=\"fa fa-headphones\"></i>','24/7 Customer Support',NULL,'2018-04-24 12:26:35'),(2,'<i class=\"fa fa-envelope\"></i>','support@thesoftking.com',NULL,NULL),(3,'<i class=\"fa fa-comments-o\"></i>','\r\nFriendly Support Ticket',NULL,NULL),(4,'<i class=\"fa fa-phone\"></i>','+88-0100-44-22-00',NULL,'2018-05-27 05:35:16');
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (2,'WELCOME TO MAMA SERVER','Why do we use it?','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,','slider_1523783387.jpg','2018-04-15 03:09:48','2018-04-15 03:09:48'),(3,'THR SOFT KING','Why do we use it?','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,','slider_1523783406.jpg','2018-04-15 03:10:06','2018-04-15 03:10:06'),(4,'BUILD YOUR DREAM WEBSITE WITH','Why do we use it?','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,','slider_1523783431.jpg','2018-04-15 03:10:32','2018-04-15 03:10:32');
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
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socials`
--

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
INSERT INTO `socials` VALUES (3,'Facebook','<i class=\"fa fa-facebook\"></i>','http://thesoftking.com/contact#asda','2018-05-22 22:56:12','2018-05-22 22:57:20'),(4,'Twitter','<i class=\"fa fa-twitter\"></i>','http://thesoftking.com/contact#asda','2018-05-22 23:57:46','2018-05-22 23:57:46'),(5,'Linkedin','<i class=\"fa fa-linkedin\"></i>','http://thesoftking.com/contact#asda','2018-05-22 23:58:14','2018-05-22 23:58:14'),(6,'G-Plus','<i class=\"fa fa-google-plus\"></i>','http://thesoftking.com/contact#asda','2018-05-22 23:58:34','2018-05-23 00:15:44'),(8,'pinterest','<i class=\"fa fa-pinterest\"></i>','http://thesoftking.com/contact#asda','2018-07-30 14:18:38','2018-07-30 14:18:38');
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trxes`
--

DROP TABLE IF EXISTS `trxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `refer_id` int(11) NOT NULL DEFAULT '0',
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `main_amo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trxes`
--

LOCK TABLES `trxes` WRITE;
/*!40000 ALTER TABLE `trxes` DISABLE KEYS */;
INSERT INTO `trxes` VALUES (1,1,6,'10','10','0','+','10 BDT Added  Your account by hridoy','hhEyiysd7FBml0Cv','2018-07-29 14:06:37','2018-07-29 14:06:37'),(2,6,0,'100','100','0','+','Deposit Via Credit Card','hhEyiybN7FBml0Cv','2018-07-29 14:06:37','2018-07-29 14:06:37'),(3,1,6,'505','515','0','+','505 BDT Added  Your account by hridoy','xLqHDQDJ1mRUvErX','2018-07-29 14:09:18','2018-07-29 14:09:18'),(4,6,0,'5050','5150','0','+','Deposit Via Credit Card','0lfKxkV2GXY4FDog','2018-07-29 14:09:18','2018-07-29 14:09:18'),(5,1,0,'200','715','0','+','Deposit Via Credit Card','6eXqGxoOYjWNrKEf','2018-07-29 14:12:42','2018-07-29 14:12:42'),(6,1,6,'10','725','0','+','10 BDT you got referral bonus  by hridoy','9ICigPqktzoVE3KG','2018-07-29 14:13:20','2018-07-29 14:13:20'),(7,6,0,'100','5250','0','+','Deposit Via Credit Card','SvSVJnB5wYEdsJrg','2018-07-29 14:13:20','2018-07-29 14:13:20');
/*!40000 ALTER TABLE `trxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logins`
--

DROP TABLE IF EXISTS `user_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_logins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logins`
--

LOCK TABLES `user_logins` WRITE;
/*!40000 ALTER TABLE `user_logins` DISABLE KEYS */;
INSERT INTO `user_logins` VALUES (1,1,'::1',NULL,NULL,'2018-07-29 07:26:15','2018-07-29 07:26:15'),(2,1,'::1',NULL,NULL,'2018-07-29 12:15:20','2018-07-29 12:15:20'),(3,6,'::1',NULL,NULL,'2018-07-29 13:48:24','2018-07-29 13:48:24'),(4,1,'59.152.98.98',NULL,NULL,'2018-07-30 14:19:24','2018-07-30 14:19:24'),(5,6,'59.152.98.98',NULL,NULL,'2018-07-30 14:20:06','2018-07-30 14:20:06');
/*!40000 ALTER TABLE `user_logins` ENABLE KEYS */;
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
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verify` tinyint(4) NOT NULL DEFAULT '0',
  `email_verify` tinyint(4) NOT NULL DEFAULT '0',
  `email_time` datetime DEFAULT NULL,
  `phone_time` datetime DEFAULT NULL,
  `refer` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `login_time` datetime DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `users` VALUES (1,'Ronnie Area','ronnie','ronniarea@gmail.com','01825683631','1532867585_ronnie.jpg','$2y$10$33dV/IFlMsMzkNTHEhX66OKPLwYo1qO.YnHzC09UL/ev7PxJHpHGa','SGOLBP','EOGHOK',1,1,'2018-07-29 13:18:02','2018-07-29 13:18:03',0,'ronnie','725',1,'2018-07-30 10:19:24','DHaka','1230','Uttara','Armenia','ZemhRnV0vw99lmnsXSMClvlpQAVlG5nuJzbQ93QzCskCkk7vSDMUsZ4BC4qN','2018-07-29 07:16:02','2018-07-30 14:19:24'),(2,'Jamal Uddin','jamal','jamal@gmail.com','01820083631',NULL,'$2y$10$HFVnUeVW0.XKNgLGRSdleecqIHDm49xiAP0hd7HI9TzMHGAV6q742','EDGYKJ','PDIA9F',1,1,'2018-07-29 13:22:01','2018-07-29 13:22:02',1,NULL,'0',1,NULL,NULL,NULL,NULL,NULL,'A2ZCGBT7KrqIDvMNF6xg0fowvzhVkaFG7pFh4om3QRJEeYweER2Jcb2txtkC','2018-07-29 07:20:01','2018-07-29 07:20:28'),(3,'Hasin','hasin','hasin@gmail.com','01946545341',NULL,'$2y$10$9q6P/xZWijy0vZQbxl7zK.a.zTMkzmNn8BRCC0L4ew5PNHnXiJGe6','J8TUL2','8IBZLY',1,1,'2018-07-29 13:23:47','2018-07-29 13:23:48',2,NULL,'0',1,NULL,NULL,NULL,NULL,NULL,NULL,'2018-07-29 07:21:47','2018-07-29 07:21:48'),(4,'Sourov','sourov','sourov@gmail.com','01825585555',NULL,'$2y$10$FiQ0nNgrKlUhZRBmN3mJJ.3zJr3OuVR.DjqFQLrfOPvcQSjyFOGY.','G98LDH','ZZIGVL',1,1,'2018-07-29 13:24:48','2018-07-29 13:24:49',2,NULL,'0',1,NULL,NULL,NULL,NULL,NULL,'xulaRDpt3opYj22nqOSLiamNVFjmShxAN1lDFC4wgaVZnSERmM4VJmfhuTsU','2018-07-29 07:22:48','2018-07-29 07:22:49'),(5,'Ontor Roy','ontor','ontor@gmail.com','01558558258',NULL,'$2y$10$HNpo1LrCVOwpzUtq.zjp2ecMOVVtEnAw/Bb7XE2ig72THBo.Oc512','QK30VQ','HURG6I',1,1,'2018-07-29 13:27:10','2018-07-29 13:27:11',2,NULL,'0',1,NULL,NULL,NULL,NULL,NULL,'7S7wgShO3HVzT6Kl0JZhmeNsx2b4zh1AqWBxNKKnw3IXd950ELBVXycdIkzJ','2018-07-29 07:25:10','2018-07-29 07:25:11'),(6,'hridoy','hridoy','hridoy@gmail.com','0182555555454',NULL,'$2y$10$3A7P8VPgSiB8gKrgk3NveO.qAUfJ364ZQ3LW6.rdf4pPYJy3TkoMu','VD2H11','Y64EFY',1,1,'2018-07-29 13:29:08','2018-07-29 13:29:09',1,NULL,'5250',1,'2018-07-30 10:20:06',NULL,NULL,NULL,NULL,NULL,'2018-07-29 07:27:08','2018-07-30 14:20:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_logs`
--

DROP TABLE IF EXISTS `withdraw_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `method_id` int(11) NOT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `net_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_logs`
--

LOCK TABLES `withdraw_logs` WRITE;
/*!40000 ALTER TABLE `withdraw_logs` DISABLE KEYS */;
INSERT INTO `withdraw_logs` VALUES (1,1,3,'WDAZVIMTK3IBQWGPYJNX','50','50','100',NULL,NULL,0,'2018-07-29 12:37:13','2018-07-29 12:37:13'),(2,1,3,'58VCEMWOZQT2DUNOL1XD','50','50','100',NULL,NULL,0,'2018-07-29 12:38:57','2018-07-29 12:38:57'),(3,1,3,'OHPAYED4IX2VLA0YD7YD','50','50','100',NULL,NULL,0,'2018-07-29 12:39:49','2018-07-29 12:39:49'),(4,1,3,'P9ALBY7EYLN3PV7LWLSO','50','50','100',NULL,NULL,0,'2018-07-29 12:40:10','2018-07-29 12:40:10'),(5,1,3,'G0BIO4QAF3TM43GQ7DLB','50','50','100',NULL,NULL,0,'2018-07-29 12:40:14','2018-07-29 12:40:14'),(6,1,3,'GCFBCFWASDNLMJVCWUXY','50','50','100',NULL,NULL,0,'2018-07-29 12:40:32','2018-07-29 12:40:32'),(7,1,3,'8V01PQ9W7QJLBGLQQNBV','50','50','100',NULL,NULL,0,'2018-07-29 12:41:17','2018-07-29 12:41:17'),(8,1,3,'ZM3UEVU5AHO7IN0GMGII','50','50','100',NULL,NULL,0,'2018-07-29 12:41:30','2018-07-29 12:41:30');
/*!40000 ALTER TABLE `withdraw_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_methods`
--

DROP TABLE IF EXISTS `withdraw_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdraw_min` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_max` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_methods`
--

LOCK TABLES `withdraw_methods` WRITE;
/*!40000 ALTER TABLE `withdraw_methods` DISABLE KEYS */;
INSERT INTO `withdraw_methods` VALUES (1,'PayPal','5b13d494ef74c.jpg','500','25000','25','2.25','2',1,'2017-07-28 09:09:41','2018-06-03 21:44:20'),(2,'Perfect Money','5b13d4a81a53a.jpg','100','20000','25','2.30','2',1,'2017-07-28 09:10:00','2018-06-03 21:44:40'),(3,'Skrill','5b13d4d7f25fb.jpg','50','20000','50','0','2',1,'2017-08-09 15:06:21','2018-06-03 21:45:27'),(4,'BitCoin','5b13d598de508.jpg','500','7050000','1','1.5','1',1,'2018-03-12 07:43:54','2018-06-03 21:49:00'),(5,'Ethereum','5b5d944e32041.jpg','250','10000','10','1.5','1',1,'2018-03-13 00:16:14','2018-07-29 10:17:50'),(6,'LiteCoin','5b13da5678c33.jpg','250','10000','20','2.1','1',1,'2018-03-13 00:16:14','2018-06-03 22:08:54'),(7,'Dash','5b13da070dc58.jpg','250','10000','20','2.1','1',1,'2018-03-13 00:16:14','2018-06-03 22:07:35'),(8,'BitCoin Cash','5b13db056c9ab.jpg','200','10000','20','2.1','1',1,'2018-03-13 00:16:14','2018-06-03 22:11:49');
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

-- Dump completed on 2020-10-06 22:09:00
