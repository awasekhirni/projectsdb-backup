-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: accessmgmtdb
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
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `image` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth_provider` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth_uid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_type` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '1=> Normal, 2=>Google',
  `image_flag` tinyint(1) NOT NULL DEFAULT '0',
  `role` int(10) DEFAULT NULL,
  `status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','Admin','admin','admin@gmail.com','2019-01-01','','e10adc3949ba59abbe56e057f20f883e','{\"test\":\"test\"}','DtH3W5xFzPouEwsy4OdiyIBJFnBqWmkRHgAemY0L2clQapTZj1KE2hCubNh7Ywc8UXrSD1KVAITnMUfN',NULL,NULL,NULL,NULL,NULL,'1',0,1,'1','2019-04-09 18:08:00','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'Test18','Test 18','test18','test18@gmail.com','2019-02-26',NULL,'e10adc3949ba59abbe56e057f20f883e','{\"test\":\"\",\"teskgy\":\"No\",\"test_module\":\"fdb\"}',NULL,NULL,NULL,NULL,NULL,NULL,'1',0,3,'1',NULL,'2019-03-28 05:50:35','2019-03-28 05:50:35'),(80,'user45','user45','user45','user45@gmail.com','2019-02-13',NULL,'e10adc3949ba59abbe56e057f20f883e','{\"test\":\"\",\"teskgy\":\"No\",\"test_module\":\"tghntfg\"}',NULL,NULL,NULL,NULL,NULL,NULL,'1',0,3,'1',NULL,'2019-03-28 05:51:35','2019-03-28 05:51:35');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ban_ip`
--

DROP TABLE IF EXISTS `ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ban_ip` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `IP` varchar(210) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban_ip`
--

LOCK TABLES `ban_ip` WRITE;
/*!40000 ALTER TABLE `ban_ip` DISABLE KEYS */;
INSERT INTO `ban_ip` VALUES (1,'123.0.0.1'),(2,'124.2.3.6'),(3,'125.6.6.5');
/*!40000 ALTER TABLE `ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms`
--

DROP TABLE IF EXISTS `cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms`
--

LOCK TABLES `cms` WRITE;
/*!40000 ALTER TABLE `cms` DISABLE KEYS */;
INSERT INTO `cms` VALUES (1,'About us','about-us','<div class=\"gmail_default\"><span xss=removed><strong>Elsner PHP secure login script is a user Management</strong> Login Script with a backend Admin Panel.</span></div>\r\n<div class=\"gmail_default\"><span xss=removed>Â </span></div>\r\n<div class=\"gmail_default\"><span xss=removed>The script can easily be merged into an existing website.Â Â </span></div>\r\n<div class=\"gmail_default\"><span xss=removed>The example pages and scripts (login, registration, forgotten password, etc.) included in the script can be customized to be used in your own website or can fit neatly in to your existing website.</span></div>\r\n<div class=\"gmail_default\"><span xss=removed>Â </span></div>\r\n<div class=\"gmail_default\">Â </div>\r\n<div class=\"gmail_default\"><span xss=removed><img src=\"https://login-panel.fmv.cc/uploads/1.jpg\" alt=\"\" width=\"1920\" height=\"3972\">Â </span></div>\r\n<div class=\"gmail_default\">Â </div>\r\n<div class=\"gmail_default\"><span xss=removed>The administration panel allows you to administer your users and change various site settings. As an ad, min you can add, edit or delete users.Â </span></div>\r\n<div class=\"gmail_default\"><span xss=removed>It is built on Bootstrap and is fully customizable.</span></div>\r\n<div class=\"gmail_default\"><span xss=removed>Â </span></div>\r\n<ul>\r\n<li class=\"gmail_default\"><span xss=removed>Can be added in your website easily.</span></li>\r\n<li class=\"gmail_default\"><span xss=removed>Protect your siteâ€™s pages or sections of pages by login status.</span></li>\r\n<li class=\"gmail_default\"><span xss=removed>User login using PHP sessions, navigate across pages and stay logged on.</span></li>\r\n<li class=\"gmail_default\"><span xss=removed>Promote regular users to admins who will have some admin functions.</span></li>\r\n<li class=\"gmail_default\"><span xss=removed>Users can change profile settings, change passwords, e-mail addresses.</span></li>\r\n<li class=\"gmail_default\"><span xss=removed>Forgot Password feature.</span></li>\r\n<li class=\"gmail_default\"><span xss=removed>Admin can add, activate, ban, edit or delete users.</span></li>\r\n<li class=\"gmail_default\"><span xss=removed>View and display Active Users.</span></li>\r\n<li class=\"gmail_default\"><span xss=removed>Passwords are individually hashed.</span></li>\r\n<li class=\"gmail_default\"><span xss=removed>Confirm password & e-mail address on registration.</span></li>\r\n<li class=\"gmail_default\"><span xss=removed>Customizable Admin Skin which uses Bootstrap CSS.</span></li>\r\n<li class=\"gmail_default\"><span xss=removed>Fully customizable script with each function commneted.</span></li>\r\n</ul>\r\n<div class=\"gmail_default\"><span xss=removed>Â </span></div>\r\n<div class=\"gmail_default\"><strong><span xss=removed>Demo</span></strong></div>\r\n<div class=\"gmail_default\"><span xss=removed>Try the online demo <a target=\"_blank\" href=\"https://login-panel.fmv.cc/\">here at the demo website</a>. Login as admin with username: admin / password: 123456</span></div>\r\n<div class=\"gmail_default\">Â </div>\r\n<div class=\"gmail_default\"><span xss=removed><img src=\"https://login-panel.fmv.cc/uploads/2.jpg\" alt=\"\" width=\"1920\" height=\"2434\"></span></div>\r\n<div class=\"gmail_default\"><span xss=removed>Â </span></div>\r\n<div class=\"gmail_default\"><strong><span xss=removed>Support</span></strong></div>\r\n<div class=\"gmail_default\"><span xss=removed>Support is provided by the author. Click on the support tab and e-mail us if you are having any issues with the script or you can post any general queries or observations in the comments section. There are also detailed instructions provided with the script.</span></div>\r\n<div class=\"gmail_default\"><span xss=removed>Â </span></div>\r\n<div class=\"gmail_default\">Â </div>\r\n<div class=\"gmail_default\"><span xss=removed><img src=\"https://login-panel.fmv.cc/uploads/3.jpg\" alt=\"\" width=\"1920\" height=\"1182\"></span></div>'),(29,'test','test','<p>`dljsvk cvnsd</p><p><br></p>'),(30,'dcfsf','dcfsf','dsvvcsds'),(31,'scvsacf','scvsacf','cscsdcsdcsdcds');
/*!40000 ALTER TABLE `cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_settings`
--

DROP TABLE IF EXISTS `module_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `module_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `data` longtext,
  `validate_attr` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `page` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_settings`
--

LOCK TABLES `module_settings` WRITE;
/*!40000 ALTER TABLE `module_settings` DISABLE KEYS */;
INSERT INTO `module_settings` VALUES (1,'test','text(short field)',NULL,'{\"rules\":[\"required\",\"min_length[2]\",\"max_length[12]\"]}','test','user','2019-03-27 12:10:16','2019-03-27 12:10:16'),(2,'teskgy','radio(select one)','{\"attributevalue\":[\"Yes\",\"No\"]}','{\"rules\":[\"required\"]}','teskgy','user','2019-03-28 04:45:10','2019-03-28 04:45:10'),(3,'test module','text(short field)',NULL,'{\"rules\":[\"trim\"]}','test_module','user','2019-03-28 05:26:28','2019-04-04 13:00:40'),(4,'superadmin','email',NULL,'{\"rules\":[\"required\",\"xss_clean\"]}','superadmin','user','2019-04-09 12:38:34','2019-04-09 12:38:34');
/*!40000 ALTER TABLE `module_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `permissions` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Super Admin','{\"users\":{\"view\":true,\"create\":true,\"edit\":true,\"delete\":true},\"cms\":{\"view\":true,\"create\":true,\"edit\":true,\"delete\":true},\"setting\":{\"view\":true,\"create\":false,\"edit\":true,\"delete\":false},\"role\":{\"view\":true,\"create\":true,\"edit\":true,\"delete\":true},\"banip\":{\"view\":true,\"create\":true,\"edit\":true,\"delete\":true},\"module\":{\"view\":true,\"create\":true,\"edit\":true,\"delete\":true}}','2019-02-14 07:30:50','2019-02-14 07:30:50'),(2,'Admin','{\"users\":{\"view\":true,\"create\":false,\"edit\":true,\"delete\":true},\"cms\":{\"view\":true,\"create\":true,\"edit\":false,\"delete\":true},\"setting\":{\"view\":true,\"create\":false,\"edit\":true,\"delete\":false}}','2019-02-14 08:29:05','2019-02-14 08:29:05'),(3,'User','{\"cms\":{\"view\":true,\"create\":false,\"edit\":false,\"delete\":false}}','2019-02-14 08:29:20','2019-02-14 08:29:20');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `footer_text` varchar(100) NOT NULL,
  `showcms` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'','1546594706_logo.png','1546594752_favicon.png','Â© Copyright 2006 â€“ 2018','1');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking`
--

DROP TABLE IF EXISTS `tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracking` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `agent` text,
  `info` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking`
--

LOCK TABLES `tracking` WRITE;
/*!40000 ALTER TABLE `tracking` DISABLE KEYS */;
INSERT INTO `tracking` VALUES (1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/65.0.3325.181 Chrome/65.0.3325.181 Safari/537.36',',','2019-03-28 10:12:52'),(2,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36',',','2019-04-09 18:07:54');
/*!40000 ALTER TABLE `tracking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:01:22
