-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: freelancerdb
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (20,'1','1','png','#',NULL,73,'2018-06-03 19:21:58','2018-06-08 03:49:45'),(21,'1','3','png','#',NULL,0,'2018-06-03 19:22:25','2018-06-03 19:22:25'),(22,'1','2','png','#',NULL,0,'2018-06-03 19:22:56','2018-06-03 19:22:56');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assign_jobs`
--

DROP TABLE IF EXISTS `assign_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assign_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `project_id` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `request` tinyint(4) NOT NULL DEFAULT '0',
  `notify` tinyint(4) NOT NULL DEFAULT '0',
  `deadline` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assign_jobs`
--

LOCK TABLES `assign_jobs` WRITE;
/*!40000 ALTER TABLE `assign_jobs` DISABLE KEYS */;
INSERT INTO `assign_jobs` VALUES (1,2,1,5,0,0,1,'2018-08-20',NULL,'2018-08-01 06:17:47','2018-08-05 09:53:53'),(2,2,4,5,0,0,1,'2018-08-20',NULL,'2018-08-01 06:17:51','2018-08-05 11:09:36'),(3,2,4,4,0,0,1,'2018-08-20',NULL,'2018-08-01 06:18:10','2018-08-05 11:09:36'),(4,2,1,4,0,0,1,'2018-08-20',NULL,'2018-08-01 06:18:15','2018-08-05 09:53:53'),(5,2,4,2,0,0,1,'2018-08-20',NULL,'2018-08-01 06:18:20','2018-08-05 11:09:36'),(6,2,1,2,0,0,1,'2018-08-20',NULL,'2018-08-01 06:18:24','2018-08-05 09:53:53'),(7,2,4,6,0,0,1,'2019-08-22',NULL,'2018-08-01 06:21:18','2018-08-05 11:09:36'),(8,2,1,6,-1,0,1,'2019-08-22','2018-08-19 22:54:07','2018-08-01 06:21:23','2018-08-19 22:54:07'),(9,2,3,6,-1,0,0,'2019-08-22','2018-08-19 10:32:06','2018-08-02 14:48:41','2018-08-19 10:32:06');
/*!40000 ALTER TABLE `assign_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_settings`
--

DROP TABLE IF EXISTS `basic_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `post_approve` tinyint(4) NOT NULL DEFAULT '0',
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
  `about_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_sub_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `short_about_text` blob,
  `about_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `service_sub_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
INSERT INTO `basic_settings` VALUES (1,'Blancer','e74c3c','116fff','+880 123 456 7890','support@thesoftking.com','Company Location, Country','USD','$',0,0,0,0,0,1,0,12,0,2,'3H4X31j1pHswncoeasRjJt7TKBJLZz6ABE','0',_binary '<div align=\"justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). <br></div><div><br></div><div><br></div><ol><li>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</li><li> The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', </li><li>making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as </li><li>their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years,</li><li>&nbsp;sometimes by accident, sometimes on purpose .</li></ol><div><b><br></b><div align=\"justify\"><br></div></div><div><div align=\"justify\"><b>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editor<i>s now use Lorem Ipsum as their default </i></b><i>model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</i><br></div><br><br><div align=\"center\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem .<br></div><br><div align=\"justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<br></div><br><br><br></div>','',NULL,'','Copyright Â© 2018  - All Right Reserved.','<div id=\"fb-root\"></div>\r\n<script>\r\n    (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.12&appId=205856110142667&autoLogAppEvents=1\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n    }(document, \'script\', \'facebook-jssdk\'));\r\n</script>','123','WELCOME TO BLANCER','Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',_binary '<h3 class=\"title\" style=\"font-family: Lato, sans-serif; font-weight: 700; color: rgb(4, 10, 44); margin: 0px 0px 17px; font-size: 30px; padding: 0px; text-transform: uppercase;\" align=\"justify\">AWESOME MARKETPLACE<span class=\"color\"></span></h3><p style=\"margin-bottom: 0px; font-size: 16px; color: rgb(119, 119, 119); line-height: 30px;\" align=\"justify\">Velit esse molestie consequat, vel illum dolore eu feugiat nulla \r\nfacilisis at vero eros et accumsan et iusto odio di gnissim qui blandit \r\npraesent luptatum zzril delenit augu. Mirum est notare quam littera \r\ngothica, quam nunc putamus parum claram, anteposu litterarum formas \r\nhumanitatis per seacula quarta decima et.Velit esse molestie consequat, vel illum dolore eu feugiat nulla \r\nfacilisis at vero eros et accumsan et iusto odio di gnissim qui blandit \r\npraesent luptatum zzril delenit augu. <br></p><p style=\"margin-bottom: 0px; font-size: 16px; color: rgb(119, 119, 119); line-height: 30px;\" align=\"justify\"><br></p>\r\n<p>\r\n<i class=\"fa fa-check-circle\"></i> Rmas \r\nhumanitatis per seacula quarta decima \r\n</p>\r\n<p>\r\n<i class=\"fa fa-check-circle\"></i> Rmas \r\nhumanitatis per seacula quarta decima \r\n</p>\r\n<p>\r\n<i class=\"fa fa-check-circle\"></i> Rmas \r\nhumanitatis per seacula quarta decima \r\n</p>','about_image_1534654498.jpg','https://www.youtube.com/watch?v=1jJP0CcuJyE','HOW IT WORK?','How We Maintain','OUR FEATURES','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit laudantium maxime nulla incidunt voluptates sequi impedit quis repudiandae.Lorem ipsum dolor sit amet, consectetur adipisicing elit.',NULL,'2018-04-26 04:03:19');
/*!40000 ALTER TABLE `basic_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bit_jobs`
--

DROP TABLE IF EXISTS `bit_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bit_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `offer` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bit_jobs`
--

LOCK TABLES `bit_jobs` WRITE;
/*!40000 ALTER TABLE `bit_jobs` DISABLE KEYS */;
INSERT INTO `bit_jobs` VALUES (1,6,4,2,'30','asdasdasdasd',0,'WN4GtpN4vDIhKAgL8Rtf','2018-08-01 05:45:08','2018-08-01 05:45:08'),(2,5,4,2,'123','asdasd',0,'EEF1CfpdN9IOWnVcXT8P','2018-08-01 05:54:20','2018-08-01 05:54:20'),(3,4,4,2,'60','asdsadasdxasd',0,'Bn7PR4FqmnEoOuLFqrhq','2018-08-01 05:54:30','2018-08-01 05:54:30'),(4,2,4,2,'60','sdfsfcdsfc',0,'ckr7Qpl2ucbFxi2b3ngk','2018-08-01 05:54:42','2018-08-01 05:54:42'),(5,2,1,2,'20','sdfsafcdsfc',0,'yFnBshZ7ZYbDeyiiuAFD','2018-08-01 05:56:56','2018-08-01 05:56:56'),(6,4,1,2,'23','wqdwq',0,'UTAkQtKKTfBeuoacolK4','2018-08-01 05:59:09','2018-08-01 05:59:09'),(7,5,1,2,'34','sdafdsfsdf',0,'ufs5tBADpu3gUxUKTRAr','2018-08-01 05:59:20','2018-08-01 05:59:20'),(8,6,1,2,'30','as',0,'9Zdg2sSmErWNsOCjmnwT','2018-08-01 05:59:51','2018-08-01 05:59:51'),(9,6,3,2,'25','hlw ronnie',0,'0dPm0g4qWWhBSs7MYEKf','2018-08-02 14:47:22','2018-08-02 14:47:22'),(10,5,3,2,'30','hlw',0,'K99EDo8tTWeuNw26Mx91','2018-08-02 14:47:34','2018-08-02 14:47:34'),(11,4,3,2,'60','jhhjv nm mjhfuyj nm',0,'TY4qk6HYYBF55NCqpHH1','2018-08-02 14:47:46','2018-08-02 14:47:46'),(12,2,3,2,'20','tdg gf vchn nb vyjhmv mnbv',0,'1APxDqc4d6Me60lob2qZ','2018-08-02 14:48:01','2018-08-02 14:48:01');
/*!40000 ALTER TABLE `bit_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Web Agency',1,'2018-07-01 18:00:00','2018-07-07 07:03:02'),(2,'Digital Markets',1,'2018-07-01 18:00:00','2018-07-07 07:28:27'),(3,'SEO Experts',1,'2018-07-01 18:00:00','2018-07-07 07:28:22'),(4,'Online Purpose',1,'2018-07-01 18:00:00','2018-07-07 07:03:20'),(5,'Office Supplies',1,'2018-07-01 18:00:00','2018-07-07 07:03:25');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
INSERT INTO `deposits` VALUES (1,2,501,'200','2','2.53','0','','73G20mJrQkmkn927',0,0,'2018-07-18 18:39:56','2018-07-18 18:39:56'),(2,2,502,'200','2','2.53','0.00033824','3DCgb8YWNinrwrHagUzypfzmB1SkqgErjc','DhS25Rnjj9o1qHfo',0,0,'2018-07-18 18:40:08','2018-07-18 18:40:12'),(3,2,503,'100','1.4','1.27','0.01395144','31jGvkANuqiRWbwJ9NwR29pmCckBaLPgKw','nOy1X9XUEVXnZsYO',0,0,'2018-07-18 18:40:25','2018-07-18 18:40:29'),(4,2,504,'200','5.55','2.57','670.76958412','A5DtQ4zdeir41kmxjbHfguPoTjXALiPons','DNMKMLwC4lqZMlav',0,0,'2018-07-18 18:40:39','2018-07-18 18:40:46'),(5,2,505,'200','5.55','2.57','0.00034251','3CksckviiJBdZZ9kE8w5tEmvmnkjGBcaBa','9votwW2Vc6SmKxy4',0,0,'2018-07-18 18:41:02','2018-07-18 18:41:06'),(6,2,506,'100','3.0300000000000002','1.29','0.00261071','0x53f58b064fe74cd30882826ba042a57995144115','LesZMonR3nNpzaZK',0,0,'2018-07-18 18:41:22','2018-07-18 18:41:26'),(7,2,507,'100','3.0300000000000002','1.29','0.00148137','1HSQRnkKbSv8uV92J9ypqnLhStHRW6ohL7','6iz83d2R6vdBPA9k',0,0,'2018-07-18 18:41:37','2018-07-18 18:41:40'),(8,2,508,'200','5.55','2.57','0.00951931','XykuN2VhhAeb4gN99t2E8DJdoBRadbqHjU','iXpMDPGFDVqmETXk',0,0,'2018-07-18 18:41:50','2018-07-18 18:41:55'),(9,2,509,'100','3.0300000000000002','1.29','334.90962106','DT5rkupgRhZGsXtVcD8XTrg2gBceSdv9vK','TNeGpUklaL2MxtV0',0,0,'2018-07-18 18:42:09','2018-07-18 18:42:13'),(10,2,510,'100','3.0300000000000002','1.29','0.01413788','LbuKh3AVpndyBQxpmC1rPhR7nCpZeDM9Dy','uzC6QqI7jdj7eYed',0,0,'2018-07-18 18:42:24','2018-07-18 18:42:29'),(11,2,513,'100','10','1.38','0','','1DdLhLbOnq9xLhV0',0,0,'2018-07-18 18:42:42','2018-07-18 18:42:42'),(12,2,512,'100','3','1.29','0','','sOw7IV6AzrDLZsyS',0,0,'2018-07-18 18:43:57','2018-07-18 18:43:57'),(13,2,510,'100','3.0300000000000002','1.29','0.01413788','Lh6pDF45iAGFDAfrMSCxg1uUgiwLuesnnf','bnGXXCNB263XLJuF',0,0,'2018-07-18 18:44:13','2018-07-18 18:44:17'),(14,2,512,'100','3','1.29','0','','qHcgDt6VTjMC6k51',0,0,'2018-07-18 18:44:26','2018-07-18 18:44:26'),(15,2,513,'100','10','1.38','0','','TY10pXp38xhJDlBN',0,0,'2018-07-18 18:44:46','2018-07-18 18:44:46'),(16,2,512,'100','3','1.29','0','','lPOl5S4pkB81XdXO',0,0,'2018-07-18 18:46:33','2018-07-18 18:46:33'),(17,2,103,'500','18','25.9','0','','IL7ypyM2gIMzwxQy',1,0,'2018-08-04 11:46:12','2018-08-04 11:53:19');
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
INSERT INTO `etemplates` VALUES (1,'no-reply@thesoftking.com','+01234567890','<br><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\"><tbody><tr><td style=\"padding: 0; width: 600px;\"><br><div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\"><img style=\"height: auto; width: 100%; border: 0; max-width: 312px;\" src=\"http://i.imgur.com/nNCNPZT.png\" alt=\"\" width=\"312\" height=\"44\"><br></div></td></tr></tbody></table><br><table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\"><tbody><tr><td class=\"column\" style=\"padding: 0; text-align: left; vertical-align: top; color: #60666d; font-size: 14px; line-height: 21px; font-family: sans-serif; width: 600px;\"><br><div style=\"margin-left: 20px; margin-right: 20px;\"><font size=\"4\">Hi {{name}},<br></font><p><strong>{{message}}</strong></p></div><div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\"><br><p class=\"size-14\" style=\"margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 21px;\">Thanks,<br> <strong>THESOFTKING TEAM</strong></p><br></div><br></td></tr></tbody></table><br></div>','https://api.infobip.com/api/v3/sendsms/plain?user=****&password=****&sender=blancer&SMSText={{message}}&GSM={{number}}&type=longSMS','2018-01-09 23:45:09','2018-08-19 23:31:00');
/*!40000 ALTER TABLE `etemplates` ENABLE KEYS */;
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
INSERT INTO `faqs` VALUES (5,'HOW IT WORKS?',_binary 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','2018-06-03 18:00:53','2018-07-03 11:37:00'),(6,'HOW TO PLAY',_binary 'It is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).It is a long established fes by \r\naccident, sometimes on purpose (injected humour and the like).','2018-06-03 18:01:06','2018-06-03 18:01:06'),(7,'How To Deposit?',_binary 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fes by accident, sometimes on purpose (injected humour and the like).<br>','2018-06-03 18:01:17','2018-07-03 11:35:58');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'<i class=\"pe-7s-arc\"></i>','Market Place','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit laudantium maxime nulla incidunt voluptates sequi impedit quis repudiandae.',NULL,'2018-08-19 23:42:31'),(2,'<i class=\"pe-7s-diamond\"></i>','Thousands of Jobs','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit laudantium maxime nulla incidunt voluptates sequi impedit quis repudiandae.',NULL,'2018-08-19 23:42:54'),(3,'<i class=\"pe-7s-hammer\"></i>','Great Law','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit laudantium maxime nulla incidunt voluptates sequi impedit quis repudiandae.','2018-08-19 07:09:36','2018-08-19 23:43:17');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
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
INSERT INTO `gateways` VALUES (101,'PayPal','PayPal','5','1000','0.511','2.52','80','rexrifat636@gmail.com',NULL,1,NULL,'2018-05-31 07:56:40'),(102,'PerfectMoney','Perfect Money','20','20000','2','1','80','U5376900','G079qn4Q7XATZBqyoCkBteGRg',1,NULL,'2018-05-20 11:58:59'),(103,'Stripe','Credit Card','10','50000','3','3','20','sk_test_aat3tzBCCXXBkS4sxY3M8A1B','pk_test_AU3G7doZ1sbdpJLj0NaozPBu',1,NULL,'2018-07-17 10:23:11'),(104,'Skrill','Skrill','10','50000','3','3','80','merchant@skrill','TheSoftKing',1,NULL,'2018-05-20 12:01:09'),(501,'Blockchain.info','BitCoin','1','20000','1','0.5','80','3965f52f-ec19-43af-90ed-d613dc60657eSSS','xpub6DREmHywjNizvs9b4hhNekcjFjvL4rshJjnrHHgtLNCSbhhx5jKFRgqdmXAecLAddEPudDZY4xoDbV1NVHSCeDp1S7NumPCNNjbxB7sGasY0000',1,NULL,'2018-05-21 01:20:29'),(502,'block.io - BTC','BitCoin','1','99999','1','0.5','80','1658-8015-2e5e-9afb','09876softk',1,'2018-01-27 18:00:00','2018-05-31 09:12:55'),(503,'block.io - LTC','LiteCoin','100','10000','0.4','1','80','cb91-a5bc-69d7-1c27','09876softk',1,NULL,'2018-05-31 09:27:34'),(504,'block.io - DOGE','DogeCoin','1','50000','0.51','2.52','80','2daf-d165-2135-5951','09876softk',1,NULL,'2018-05-31 09:28:54'),(505,'CoinPayment - BTC','BitCoin','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:38:33'),(506,'CoinPayment - ETH','Etherium','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(507,'CoinPayment - BCH','Bitcoin Cash','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(508,'CoinPayment - DASH','DASH','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(509,'CoinPayment - DOGE','DOGE','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(510,'CoinPayment - LTC','LTC','1','50000','0.51','2.52','80','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44',1,NULL,'2018-05-31 09:39:04'),(512,'CoinGate','CoinGate','1','1000','1','2','80','Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N',NULL,1,NULL,'2018-07-16 18:00:00'),(513,'CoinPayment-ALL','Coin Payment','10','1000','05','5','80','db1d9f12444e65c921604e289a281c56',NULL,1,NULL,'2018-05-21 01:20:54');
/*!40000 ALTER TABLE `gateways` ENABLE KEYS */;
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
INSERT INTO `menus` VALUES (1,'EXTRA MENU','extra-menu',_binary '<div align=\"justify\">It is a long established fact that a reader will be\r\n distracted by the readable content of a page when looking at its \r\nlayout. The point of using Lorem Ipsum is that it has a more-or-less \r\nnormal distribution of letters, as opposed to using \'Content here, \r\ncontent here\', making it look like readable English. Many desktop \r\npublishing packages and web page editors now use Lorem Ipsum as their \r\ndefault model text, and a search for \'lorem ipsum\' will uncover many web\r\n sites still in their infancy. Various versions have evolved over the \r\nyears, sometimes by accident, sometimes on purpose (injected humour and \r\nthe like). <br></div><div><br></div><div><br></div><ol><li>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</li><li>\r\n The point of using Lorem Ipsum is that it has a more-or-less normal \r\ndistribution of letters, as opposed to using \'Content here, content \r\nhere\', </li><li>making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as </li><li>their\r\n default model text, and a search for \'lorem ipsum\' will uncover many \r\nweb sites still in their infancy. Various versions have evolved over the\r\n years,</li><li>&nbsp;sometimes by accident, sometimes on purpose (injected humour and the like).</li></ol><div><b><br></b><div align=\"justify\"><br></div></div><div><div align=\"justify\"><b>It\r\n is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editor<i>s now use Lorem Ipsum as their default </i></b><i>model \r\ntext, and a search for \'lorem ipsum\' will uncover many web sites still \r\nin their infancy. Various versions have evolved over the years, \r\nsometimes by accident, sometimes on purpose (injected humour and the \r\nlike).</i><br></div><div align=\"center\"><br></div><div align=\"center\">It is a long established\r\n fact that a reader will be distracted by the readable content of a page\r\n when looking at its layout. The point of using Lorem Ipsum is that it \r\nhas a more-or-less normal distribution of letters, as opposed to using \r\n\'Content here, content here\', making it look like readable English. Many\r\n desktop publishing packages and web page editors now use Lorem .<br></div><br><div align=\"justify\">It\r\n is a long established fact that a reader will be distracted by the \r\nreadable content of a page when looking at its layout. The point of \r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of \r\nletters, as opposed to using \'Content here, content here\', making it \r\nlook like readable English. Many desktop publishing packages and web \r\npage editors now use Lorem Ipsum as their default model text, and a \r\nsearch for \'lorem ipsum\' will uncover many web sites still in their \r\ninfancy. Various versions have evolved over the years, sometimes by \r\naccident, sometimes on purpose (injected humour and the like).It is a \r\nlong established fact that a reader will be distracted by the readable \r\ncontent of a page when looking at its layout. The point of using Lorem \r\nIpsum is that it has a more-or-less normal distribution of letters, as \r\nopposed to using \'Content here, content here\', making it look like \r\nreadable English. Many desktop publishing packages and web page editors \r\nnow use Lorem Ipsum as their default model text, and a search for \'lorem\r\n ipsum\' will uncover many web sites still in their infancy. Various \r\nversions have evolved over the years, sometimes by accident, sometimes \r\non purpose (injected humour and the like).<br></div><br><br><br></div>','2018-05-04 08:26:57','2018-07-03 10:48:36');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `receiver_id` int(10) unsigned DEFAULT NULL,
  `project_id` int(10) unsigned DEFAULT NULL,
  `bit_job_id` int(10) unsigned DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,2,4,6,1,'Hlw',1,'2018-08-01 13:02:05','2018-08-02 14:27:33'),(2,2,3,6,9,'Hey Mr',1,'2018-08-02 14:48:49','2018-08-02 15:31:09'),(3,2,3,6,9,'how are you????',1,'2018-08-02 14:48:56','2018-08-02 15:31:09'),(4,2,4,6,1,'Hlw',1,'2018-08-04 11:37:57','2018-08-05 06:45:37'),(5,2,4,6,1,'Hi',1,'2018-08-05 06:45:01','2018-08-05 06:45:37'),(6,4,2,6,1,'Hi',1,'2018-08-05 06:45:49','2018-08-05 06:46:08'),(7,2,4,6,1,'Hi',1,'2018-08-05 06:47:08','2018-08-05 06:47:40'),(8,4,2,6,1,'Hlw',1,'2018-08-05 06:47:44','2018-08-05 06:49:05'),(9,2,4,6,1,'Hi',1,'2018-08-05 06:47:56','2018-08-05 06:48:54'),(10,4,2,6,1,'Hi',1,'2018-08-05 06:48:59','2018-08-05 06:49:05'),(11,2,4,6,1,'Hlw',1,'2018-08-05 06:49:11','2018-08-05 06:51:32'),(12,4,2,6,1,'How r u',1,'2018-08-05 06:49:19','2018-08-05 06:51:29'),(13,2,4,6,1,'Hi',1,'2018-08-05 06:50:50','2018-08-05 06:51:33'),(14,2,4,6,1,'hhsahdhsada',1,'2018-08-05 06:51:41','2018-08-05 06:53:02'),(15,2,4,6,1,'Hi',1,'2018-08-05 06:52:56','2018-08-05 06:53:03'),(16,4,2,6,1,'asdsadasd',1,'2018-08-05 06:53:09','2018-08-05 06:56:42'),(17,2,4,6,1,'hi',1,'2018-08-05 08:59:35','2018-08-05 09:20:27'),(18,2,3,6,9,'Hlw Mr',0,'2018-08-05 08:59:46','2018-08-05 08:59:46'),(19,4,2,6,1,'WHats up',1,'2018-08-05 08:59:35','2018-08-05 11:57:12'),(20,3,2,6,9,'Hlw Mr',1,'2018-08-05 08:59:46','2018-08-05 09:12:37'),(21,4,3,6,9,'Hey',0,'2018-08-05 09:19:09','2018-08-05 09:19:09'),(22,4,2,6,1,'Hi',1,'2018-08-05 09:20:32','2018-08-05 11:57:12'),(23,4,2,6,1,'Hlw',1,'2018-08-05 09:20:38','2018-08-05 11:57:12'),(24,4,2,6,1,'lore sdklfs asdkjf mnsa bfv fdsavsnb nasva smn fcsajkfvka fcsa bmnasfcsabv asdcas,jdka  dncask dcmnaSdasbd a Dmnas DxkmsA VdSV D',1,'2018-08-05 09:21:16','2018-08-05 11:57:12'),(25,2,4,6,1,'its Oky',1,'2018-08-05 11:57:20','2018-08-05 12:34:01'),(26,4,2,6,1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus amet culpa cumque cupiditate et hic ipsam itaque natus nulla totam? Asperiores aut beatae blanditiis commodi culpa cumque cupiditate distinctio dolore dolorem doloribus, eius enim et exercitationem hic illo illum, labore magnam maxime minus natus nemo nesciunt obcaecati porro quasi ratione repellat reprehenderit repudiandae rerum sequi similique soluta sunt ut voluptas. Expedita recusandae reprehenderit temporibus veniam, voluptatem voluptatibus. Assumenda autem debitis delectus deleniti doloribus facilis harum incidunt ipsum labore minima, mollitia, obcaecati odit repudiandae sed sint? At eveniet fugiat iure iusto laudantium maiores nisi officia, omnis quos recusandae. Ab debitis, deleniti esse excepturi fugiat nostrum officiis quia reiciendis saepe? Adipisci aut harum provident quae unde. Amet aperiam assumenda dolorem eaque earum, eos fuga minima modi natus neque nobis obcaecati perferendis quae quidem saepe sapiente totam vel! Corporis maxime omnis quis, sequi unde vero. Aliquam, architecto consequuntur deserunt dolore ea eos error eveniet, expedita laboriosam mollitia nihil nostrum quod quos sed sint tempore ut voluptas voluptate. Assumenda beatae cum distinctio dolore eaque ex expedita fugiat iure laudantium odit, voluptate voluptatem voluptates. Ad aperiam atque aut blanditiis cumque deserunt dolor dolorem doloribus eius fugiat id illo inventore ipsa, iusto laborum nulla pariatur placeat possimus quae quo recusandae, rem repellat sapiente similique soluta tempora vel veritatis! Accusamus ad assumenda distinctio dolore iusto quam tempore totam, unde? A architecto at, dignissimos dolorem error et eum iusto magnam nam? Aut blanditiis deleniti, dignissimos eaque excepturi, fugit libero magni nesciunt officia quasi qui ratione repellat reprehenderit rerum sint suscipit totam voluptate? Ad debitis distinctio ducimus eos esse fuga fugiat id, incidunt maxime modi natus nesciunt officia porro quae quasi quisquam unde ut vitae voluptas voluptate. Atque corporis dignissimos earum iusto laboriosam nulla odio perspiciatis porro possimus totam? Accusamus, asperiores aspernatur atque dolore dolorum earum eius explicabo, fuga hic itaque laudantium magnam magni nostrum nulla officia quaerat quisquam recusandae sit. Ab accusantium consequuntur deserunt eaque exercitationem illo illum incidunt ipsa ipsum odio placeat qui, vel voluptates. Aperiam, dolore facere fuga, officia optio quas quasi ratione recusandae reprehenderit sit, veritatis voluptates. Amet autem commodi debitis, dolorem ea est et illo incidunt ipsam, labore maiores nam non omnis quae quaerat quam qui, quis quisquam quod quos veniam voluptas voluptatum! A, aperiam aut dignissimos dolorem doloremque ducimus enim eos error hic id in maiores nam nostrum nulla numquam quae quod repudiandae sed tempore, ullam unde velit voluptate. Aliquid consequuntur, doloribus earum eveniet facilis ipsa ipsam iusto molestias? Consequuntur dolores harum odit repudiandae sunt? A alias aliquam atque consequatur, dicta dignissimos impedit ipsam iste magnam nihil obcaecati odio pariatur quas saepe unde! Accusamus architecto asperiores aspernatur culpa, dignissimos dolorem eaque esse explicabo non praesentium repudiandae veniam! Alias aliquid amet animi cum cumque doloribus eum ipsum numquam pariatur perspiciatis repellendus, tenetur veniam voluptates. Atque, consequuntur cum cupiditate et eveniet facilis, iure laboriosam laborum maxime nam nisi odio perspiciatis quibusdam, quod reprehenderit repudiandae sapiente voluptatem? Accusantium ad alias aspernatur consequuntur corporis eveniet hic id nihil obcaecati praesentium quaerat recusandae, repellat sint. Laborum, maxime tenetur.',1,'2018-08-05 12:35:37','2018-08-19 09:39:17');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_resets_table',2),(6,'2018_07_04_174206_create_user_resumes_table',3),(7,'2018_07_05_114139_create_categories_table',4),(9,'2018_07_05_140156_create_projects_table',5),(10,'2018_07_09_165740_create_bit_jobs_table',6),(11,'2018_07_12_115236_create_messages_table',7),(12,'2018_07_16_161037_create_assign_jobs_table',8),(14,'2018_08_01_122409_create_milestones_table',9),(15,'2018_08_02_132721_create_reports_table',10),(16,'2018_08_19_123339_create_features_table',11);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `milestones`
--

DROP TABLE IF EXISTS `milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `milestones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `assign_job_id` int(10) unsigned DEFAULT NULL,
  `project_id` int(10) unsigned DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `milestones`
--

LOCK TABLES `milestones` WRITE;
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
INSERT INTO `milestones` VALUES (1,2,1,6,2,'100','asd afcasd sadjksa jas jasdv mniasdv d j',1,1,NULL,'2018-08-01 12:22:43','2018-08-05 10:41:37'),(2,2,4,3,4,'10','as sdgv wweffers',1,1,NULL,'2018-08-01 12:25:47','2018-08-06 03:59:44'),(3,2,1,1,5,'30','sdfdsfsdf',1,1,NULL,'2018-08-01 12:31:10','2018-08-05 10:42:04'),(4,2,1,1,5,'100','sdfsfsdf',-1,1,NULL,'2018-08-01 12:31:16','2018-08-05 10:42:04'),(5,2,1,8,6,'100','WQDEWQDXSAD',-1,1,NULL,'2018-08-01 12:56:17','2018-08-05 10:41:28'),(6,2,4,7,6,'10','WQDEWQDXSAD',1,1,NULL,'2018-08-01 12:57:30','2018-08-05 11:09:48'),(7,2,4,5,2,'10','WQDEWQDXSAD',-1,1,NULL,'2018-08-01 13:00:45','2018-08-06 03:59:39'),(8,2,1,4,4,'100','asdasd',1,1,NULL,'2018-08-01 13:02:28','2018-08-05 10:41:55'),(9,2,1,4,4,'10','asdasdas',1,1,NULL,'2018-08-01 13:02:38','2018-08-05 10:41:55'),(10,2,3,9,6,'30','asdasd',1,0,NULL,'2018-08-02 14:49:30','2018-08-02 14:49:49'),(11,2,3,9,6,'100','WQDEWQDXSAD',-1,0,NULL,'2018-08-02 14:49:42','2018-08-02 15:18:39'),(12,2,1,4,4,'100','WQDEWQDXSAD',0,1,NULL,'2018-08-02 15:04:33','2018-08-06 07:44:56'),(13,2,3,9,6,'10','asdsadsad',0,0,NULL,'2018-08-02 15:13:39','2018-08-02 15:13:39'),(14,2,4,7,6,'500','sadcsasad',-1,1,NULL,'2018-08-05 11:10:43','2018-08-05 12:36:47'),(15,2,4,7,6,'50','asdasdasdasdxasd',0,1,NULL,'2018-08-05 11:11:05','2018-08-05 11:24:02'),(16,2,4,7,6,'50','asdcasdxsad',0,1,NULL,'2018-08-05 11:11:12','2018-08-05 11:24:02'),(17,2,4,7,6,'50','dscsd',-1,1,NULL,'2018-08-06 04:24:11','2018-08-06 07:30:39'),(18,2,3,9,6,'20','asdasdsad',0,0,NULL,'2018-08-06 08:36:09','2018-08-06 08:36:09'),(19,2,3,9,6,'234','sdffcsdfc',0,0,NULL,'2018-08-06 08:36:19','2018-08-06 08:36:19'),(20,2,4,7,6,'100','sadasdasd',0,1,NULL,'2018-09-02 11:11:33','2018-09-02 11:22:38'),(21,2,4,7,6,'10','asdasDasdasdasd',0,1,NULL,'2018-09-02 11:14:58','2018-09-02 11:22:38');
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES (1,'ronnie@gmail.com','IFsbuBWs5ZgZcoQGMivzLXy8XCvOne','2018-05-16 01:28:41',NULL),(2,'ronnie@gmail.com','fHkcBEMW78ef43pmSswx8kVHqLcgDx','2018-05-23 00:19:47',NULL),(3,'ronnie@gmail.com','tNPjzNUcsdEYeSPCutmDy8VfbECMUY','2018-05-23 00:28:28',NULL),(4,'ronniearea@gmail.com','GXtEiyl8MGzNwMR5tNdRCEI7dTyuVX','2018-05-27 16:02:22',NULL),(5,'abirkhan75@gmail.com','Z6sHQHOATk5fluqi0vAJeyqzEd0ZXz','2018-05-27 05:54:38',NULL),(6,'haha@haha.co','IDx0BrjOWN6p0FGFpmOdgG6wrdtqO2','2018-05-28 21:20:01',NULL),(7,'haha@haha.co','dD4UFej2PEFSEmBil48SJPw1l2zUSv','2018-05-28 21:26:54',NULL),(8,'haha@haha.co','gbchqenwrcLnZPhzdjAtpR92V8vwwm','2018-05-28 21:51:15',NULL),(9,'arifroni20@gmail.com','YPdBOWi4rcbIuFWa7AlQT2kmrOjK36','2018-07-02 23:23:58',NULL),(10,'arifroni20@gmail.com','8rW8k0cZESS4lljc89tdCqk2gnU6fy','2018-07-02 23:24:41',NULL),(11,'ronniearea@gmail.com','ZqySAMjj8C7FyiL4wkbbHPh3U5DhcJ','2018-08-04 06:48:16',NULL),(12,'ronniearea@gmail.com','rUI9Gqy7jeexSnymYNIrUUb1quLdJR','2018-08-04 06:48:52',NULL);
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` blob,
  `deadline` date DEFAULT NULL,
  `approve` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,3,2,'Why do we use it?','laravel, web , coder','1530785340_.jpg','1 Years','40 - 80',_binary 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','2018-07-08',1,NULL,'2018-07-05 10:09:00','2018-07-08 07:14:20'),(2,1,2,'Where can I get some?','laravel, web , coder','1530785386_.jpg','2 Years','10 - 20',_binary 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','2018-08-20',1,NULL,'2018-07-05 10:09:46','2018-07-07 07:26:32'),(3,3,2,'The standard Lorem Ipsum passage,','laravel, web , coder','1530785432_.jpg','2 Years','400 -450',_binary 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','2018-08-20',1,NULL,'2018-07-05 10:10:32','2018-07-08 07:14:15'),(4,3,2,'The standard Lorem Ipsum passage,','laravel, web , coder','1530785442_.jpg','2 Years','120 -150',_binary 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','2018-08-20',1,NULL,'2018-07-05 10:10:42','2018-07-07 10:17:32'),(5,3,2,'Looking blog writer for our blog','laravel, web , coder','1530785556_.jpg','2 Years','80 - 100',_binary 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','2018-08-20',1,NULL,'2018-07-05 10:12:36','2018-07-08 07:13:57'),(6,1,2,'Looking Graphic Designer (Logo + UI)','laravel, web , coder','1530793865_.jpg','2 Years','30 -70',_binary 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','2019-08-22',1,NULL,'2018-07-05 10:13:10','2018-07-08 05:44:46'),(7,3,2,'Development Team Lead (Group Wide Technology)','developer, code, Sr engineer','1533393192_.jpg','2 Years','20-30',_binary '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div><br></div>','2018-11-10',1,NULL,'2018-08-04 14:33:12','2018-08-04 14:34:10'),(8,3,2,'Development Team Lead (Group Wide Technology)','developer, code, Sr engineer','1533393222_.jpg','2 Years','20-30',_binary '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div><br></div>','2018-11-10',1,NULL,'2018-08-04 14:33:42','2018-08-04 14:34:05');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `milestone_id` int(10) unsigned NOT NULL,
  `report_from` int(10) unsigned NOT NULL DEFAULT '0',
  `report_against` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `read_type1` tinyint(4) NOT NULL DEFAULT '0',
  `read_type2` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,9,1,2,'10','report to jamal',1,1,0,0,NULL,'2018-08-02 08:12:49','2018-08-02 14:16:16'),(2,9,2,1,'10','report to ronnie',1,1,0,0,NULL,'2018-08-02 08:14:07','2018-08-02 14:16:16'),(3,9,1,2,'10','pida jamal reeeeeee',1,1,0,0,NULL,'2018-08-02 08:24:27','2018-08-02 14:16:16'),(4,9,2,1,'10','batpar k block kore last id 4',1,1,0,0,NULL,'2018-08-02 08:24:50','2018-08-02 14:16:16'),(5,9,2,1,'10','i need money ',1,1,0,0,NULL,'2018-08-02 08:54:50','2018-08-02 14:16:16'),(6,9,1,2,'10','last id 6\r\n\r\nhe could not p[ay monery',1,1,0,0,NULL,'2018-08-02 08:56:08','2018-08-02 14:16:16'),(7,1,1,2,'100','i want back money',1,1,0,0,NULL,'2018-08-02 08:56:58','2018-08-02 14:17:19'),(10,1,1,2,'100','i want to money urgent please',1,1,0,0,NULL,'2018-08-02 08:58:08','2018-08-02 14:17:19'),(11,1,2,1,'100','i want to back money',1,1,0,0,NULL,'2018-08-02 09:00:07','2018-08-02 14:17:19'),(12,1,2,1,'100','please payback money inj my account',1,1,0,0,NULL,'2018-08-02 09:00:15','2018-08-02 14:17:19'),(13,7,2,4,'10','PLease want to back monye in my account',1,1,0,0,NULL,'2018-08-02 09:00:22','2018-08-02 14:22:50'),(14,4,2,1,'100','i need money',1,1,0,0,NULL,'2018-08-02 09:00:28','2018-08-02 14:16:50'),(15,4,2,1,'100','lolzzz',1,1,0,0,NULL,'2018-08-02 09:00:42','2018-08-02 14:16:50'),(16,1,1,2,'100','I want to money',1,1,0,0,NULL,'2018-08-02 09:01:26','2018-08-02 14:17:19'),(17,15,0,0,'50','jamal could notn release my payment jamal could notn release my payment jamal could notn release my payment jamal could notn release my payment',1,1,1,1,NULL,'2018-08-02 09:42:55','2018-08-06 08:42:47'),(18,15,4,2,'50','dfgreyhreyh5ty5y',0,1,1,1,NULL,'2018-08-05 12:37:09','2018-08-06 08:42:47'),(19,15,2,4,'50','fdsdfdsfcdsffcdsa',0,1,1,1,NULL,'2018-08-05 12:40:32','2018-08-06 08:42:47'),(27,16,2,4,'50','asdasdasdasdasd',0,0,1,1,NULL,'2018-08-06 04:24:24','2018-09-02 11:22:45'),(28,17,4,2,'50','asdfsafcdsaf',1,1,0,0,NULL,'2018-08-06 04:30:58','2018-08-06 07:30:42'),(29,16,4,2,'50','sdfcdsfcdsfc',0,0,1,1,NULL,'2018-08-06 04:31:04','2018-09-02 11:22:45'),(30,15,4,2,'50','asfsadfasdfasdf',0,1,1,1,NULL,'2018-08-06 04:31:09','2018-08-06 08:42:47'),(31,15,0,2,'50','sadfsdafc',0,1,1,1,NULL,'2018-08-06 06:49:02','2018-08-19 07:22:09'),(32,15,4,2,'50','asdsadasd',0,1,1,1,NULL,'2018-08-06 06:49:45','2018-08-19 07:22:09'),(33,15,4,2,'50','asdasdas',0,1,1,1,NULL,'2018-08-06 06:49:51','2018-08-19 07:22:09'),(34,15,4,2,'50','dfsgdsfgdfgdfg',0,1,1,1,NULL,'2018-08-06 06:49:56','2018-08-19 07:22:09'),(35,15,4,2,'50','dfgfdgdfg',0,1,1,1,NULL,'2018-08-06 06:50:00','2018-08-19 07:22:09'),(36,15,4,2,'50','asdsaasdsadsadsadasdasdasd',0,1,1,1,NULL,'2018-08-06 06:50:10','2018-08-19 07:22:09'),(37,13,2,3,'10','test req',0,1,0,1,NULL,'2018-08-06 07:04:43','2018-08-06 08:42:57'),(38,17,4,2,'50','rfgfdgvd',1,1,0,0,NULL,'2018-08-06 07:25:24','2018-08-06 07:30:42'),(39,17,2,4,'50','asdasd',1,1,0,0,NULL,'2018-08-06 07:27:48','2018-08-06 07:30:42'),(40,17,2,4,'50','sadasd',1,1,0,0,NULL,'2018-08-06 07:27:52','2018-08-06 07:30:42'),(41,19,2,3,'234','asdasd',0,1,0,1,NULL,'2018-08-06 08:36:24','2018-08-06 08:42:52'),(42,18,2,3,'20','asdasdxsadasdasd',0,1,0,1,NULL,'2018-08-06 08:36:30','2018-08-06 08:43:02'),(43,18,0,0,NULL,'Ki somossa??',0,1,0,1,NULL,'2018-08-06 08:37:53','2018-08-06 08:43:02'),(44,18,0,0,NULL,'sms koros kn???',0,1,0,1,NULL,'2018-08-06 08:38:03','2018-08-06 08:43:02'),(45,19,0,0,NULL,'pida',0,1,0,1,NULL,'2018-08-06 08:38:12','2018-08-06 08:42:52'),(46,13,0,0,NULL,'valo hoye jaaa',0,1,0,1,NULL,'2018-08-06 08:38:22','2018-08-06 08:42:57'),(47,16,2,4,'50','dsfsdf',0,0,1,1,NULL,'2018-09-02 11:21:13','2018-09-02 11:22:45'),(48,16,2,4,'50','asdasdasd',0,0,1,1,NULL,'2018-09-02 11:21:59','2018-09-02 11:22:45'),(49,16,4,2,'50','asasa',0,0,1,1,NULL,'2018-09-02 11:24:37','2018-09-02 11:24:50'),(50,16,4,2,'50','sdsdsd',0,0,1,1,NULL,'2018-09-02 11:26:24','2018-09-02 11:38:33');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
INSERT INTO `services` VALUES (1,'Signup','how_it_works_1531904906.png','<i class=\"fa  fa-search\"></i>','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using','2018-08-19 05:10:28','2018-08-19 05:10:28'),(2,'Enjoy','how_it_works_1531904968.png','<i class=\"fa fa-envelope\"></i>','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using.','2018-08-19 05:11:05','2018-08-19 05:26:30'),(3,'Explore','how_it_works_1531905044.png','<i class=\"fa fa-comments-o\"></i>','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using','2018-08-19 05:11:47','2018-08-19 05:11:47');
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (10,'Awesome Freelancers Are Here','Get Your Project Ready','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit laudantium maxime nulla incidunt voluptates sequi impedit quis repudiandae.','slider_1534686772.jpg','2018-08-19 23:52:52','2018-08-19 23:52:52'),(11,'Thousands of Jobs','Work From Home','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit laudantium maxime nulla incidunt voluptates sequi impedit quis repudiandae.','slider_1534686886.jpg','2018-08-19 23:54:47','2018-08-19 23:54:47');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socials`
--

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
INSERT INTO `socials` VALUES (3,'Facebook','<i class=\"fa fa-facebook\"></i>','#','2018-05-22 22:56:12','2018-08-19 23:34:53'),(4,'Twitter','<i class=\"fa fa-twitter\"></i>','#','2018-05-22 23:57:46','2018-08-19 23:35:00'),(5,'Linkedin','<i class=\"fa fa-linkedin\"></i>','#','2018-05-22 23:58:14','2018-08-19 23:35:06'),(6,'G-Plus','<i class=\"fa fa-google-plus\"></i>','#','2018-05-22 23:58:34','2018-08-19 23:35:14');
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES (1,'ronniearea@gmail.com',1,'2018-08-19 07:44:18','2018-08-19 07:51:17');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'William Hannah','testimonial_1530521922.jpg','founder, themes llc.',_binary 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',NULL,'2018-07-02 09:09:16'),(2,'Remitence Khana','testimonial_1530519624.jpg','Fonder, Zigzag co',_binary 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters','2018-07-02 08:20:24','2018-07-02 09:08:50'),(3,'Neque porro','testimonial_1530521994.jpg','Fonder, Zigzag co',_binary 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain. There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain','2018-07-02 08:59:54','2018-07-02 08:59:54'),(4,'Leo Yaan','testimonial_1533522746.jpg',NULL,_binary 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters','2018-08-06 02:32:26','2018-08-06 02:32:26');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
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
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `main_amo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_submit` tinyint(4) NOT NULL DEFAULT '0',
  `trx` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trxes`
--

LOCK TABLES `trxes` WRITE;
/*!40000 ALTER TABLE `trxes` DISABLE KEYS */;
INSERT INTO `trxes` VALUES (1,4,'10','70','0','+','1',0,'bFsDUc4r9OyDy6gr','2018-08-01 12:37:34','2018-08-01 12:37:34'),(2,2,'10','600','0','-','1',0,'skd5iNW1kTpuBU4i','2018-08-01 12:37:34','2018-08-01 12:37:34'),(3,1,'30','130','0','+','Project Name:  Looking blog writer for our blog',0,'bDFc0pKdXIlnck8X','2018-08-01 12:39:51','2018-08-01 12:39:51'),(4,2,'30','600','0','-','Project Name:  Looking blog writer for our blog',0,'gBMQ9nvJzBYoiZzs','2018-08-01 12:39:51','2018-08-01 12:39:51'),(5,4,'10','80','0','+','Project Name:  Looking Graphic Designer (Logo + UI)',0,'ejtqN3z3uLzkD4fL','2018-08-01 12:58:35','2018-08-01 12:58:35'),(6,2,'10','490','0','-','Project Name:  Looking Graphic Designer (Logo + UI)',0,'OgVjgW295svWTvNj','2018-08-01 12:58:35','2018-08-01 12:58:35'),(7,1,'100','250','0','+','Project Name:  The standard Lorem Ipsum passage,',0,'ql1a7PYf2A82wWo4','2018-08-01 13:03:37','2018-08-01 13:03:37'),(8,2,'100','370','0','-','Project Name:  The standard Lorem Ipsum passage,',0,'r9zDPdBD9qxHh59C','2018-08-01 13:03:37','2018-08-01 13:03:37'),(9,2,'100','470','0','+','Project Name:  Looking Graphic Designer (Logo + UI)',0,'Oo65058sGImCtTz3','2018-08-02 06:55:55','2018-08-02 06:55:55'),(10,2,'10','490','0','+','Added Balance By Admin From The standard Lorem Ipsum passage, Project milestone ',0,'AlchUGgEqBS9fBeW','2018-08-02 14:14:51','2018-08-02 14:14:51'),(11,1,'10','260','0','+','Added Balance By Admin From The standard Lorem Ipsum passage, Project milestone',0,'C0dRTMWnf0LeNwQO','2018-08-02 14:15:19','2018-08-02 14:15:19'),(12,1,'10','270','0','+','Added Balance By Admin From The standard Lorem Ipsum passage, Project milestone',0,'oI93gUugSGAu4ewS','2018-08-02 14:15:55','2018-08-02 14:15:55'),(13,1,'10','280','0','+','Added Balance By Admin From The standard Lorem Ipsum passage, Project milestone',0,'yj1sNfee2r048bg6','2018-08-02 14:16:16','2018-08-02 14:16:16'),(14,2,'100','590','0','+','Added Balance By Admin From Looking blog writer for our blog Project milestone ',0,'Xm8NtsDwX3k1l9G1','2018-08-02 14:16:50','2018-08-02 14:16:50'),(15,1,'100','380','0','+','Added Balance By Admin From Where can I get some? Project milestone',0,'2DuX0FDYhQTgCNfn','2018-08-02 14:17:19','2018-08-02 14:17:19'),(16,2,'10','600','0','+','Added Balance By Admin From Where can I get some? Project milestone ',0,'rRzvqeIDjOI8tlJh','2018-08-02 14:22:50','2018-08-02 14:22:50'),(17,3,'30','110','0','+','Project Name:  Looking Graphic Designer (Logo + UI)',0,'aDglk6FO52CXwFzL','2018-08-02 14:49:49','2018-08-02 14:49:49'),(18,2,'30','470','0','-','Project Name:  Looking Graphic Designer (Logo + UI)',0,'VBJdW7jyRIwtqBga','2018-08-02 14:49:49','2018-08-02 14:49:49'),(19,2,'100','460','0','+','Project Name:  Looking Graphic Designer (Logo + UI)',0,'TGeJ4jcJVKhYGBoW','2018-08-02 15:18:39','2018-08-02 15:18:39'),(20,1,'50','280','50','-','Withdraw Via Skrill',0,'IXAOUAQK0JWACBYFSYFI','2018-08-04 10:06:17','2018-08-04 10:06:17'),(21,1,'100','380','0','+','Withdraw Amount Refunded  ',0,'4SIWWANRR71ZKCZKEEMX','2018-08-04 10:09:20','2018-08-04 10:09:20'),(22,2,'500','960','0','+','Deposit Via Credit Card',0,'IL7ypyM2gIMzwxQy','2018-08-04 11:53:19','2018-08-04 11:53:19'),(23,2,'500','860','0','+','Project Name:  Looking Graphic Designer (Logo + UI)',0,'sSyNQ1rYCLHu2KtD','2018-08-05 12:36:47','2018-08-05 12:36:47'),(24,2,'50','860','0','+','Added Balance By Admin From Looking Graphic Designer (Logo + UI) Project milestone ',0,'EJoiR1ICjjaqDihU','2018-08-06 07:30:39','2018-08-06 07:30:39');
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logins`
--

LOCK TABLES `user_logins` WRITE;
/*!40000 ALTER TABLE `user_logins` DISABLE KEYS */;
INSERT INTO `user_logins` VALUES (1,1,'::1',NULL,NULL,'2018-07-04 07:39:44','2018-07-04 07:39:44'),(2,2,'::1',NULL,NULL,'2018-07-04 07:48:50','2018-07-04 07:48:50'),(3,1,'::1',NULL,NULL,'2018-07-05 05:20:21','2018-07-05 05:20:21'),(4,2,'::1',NULL,NULL,'2018-07-05 05:21:47','2018-07-05 05:21:47'),(5,1,'::1',NULL,NULL,'2018-07-05 06:54:56','2018-07-05 06:54:56'),(6,2,'::1',NULL,NULL,'2018-07-05 07:04:20','2018-07-05 07:04:20'),(7,1,'::1',NULL,NULL,'2018-07-05 11:45:48','2018-07-05 11:45:48'),(8,1,'::1',NULL,NULL,'2018-07-07 05:37:55','2018-07-07 05:37:55'),(9,2,'::1',NULL,NULL,'2018-07-07 07:22:12','2018-07-07 07:22:12'),(10,1,'::1',NULL,NULL,'2018-07-07 14:24:59','2018-07-07 14:24:59'),(11,2,'::1',NULL,NULL,'2018-07-08 07:03:31','2018-07-08 07:03:31'),(12,1,'::1',NULL,NULL,'2018-07-08 07:21:28','2018-07-08 07:21:28'),(13,2,'::1',NULL,NULL,'2018-07-08 07:23:39','2018-07-08 07:23:39'),(14,1,'::1',NULL,NULL,'2018-07-09 05:34:40','2018-07-09 05:34:40'),(15,2,'::1',NULL,NULL,'2018-07-09 06:05:05','2018-07-09 06:05:05'),(16,1,'::1',NULL,NULL,'2018-07-10 05:28:13','2018-07-10 05:28:13'),(17,3,'::1',NULL,NULL,'2018-07-10 07:12:19','2018-07-10 07:12:19'),(18,3,'::1',NULL,NULL,'2018-07-10 07:29:54','2018-07-10 07:29:54'),(19,4,'::1',NULL,NULL,'2018-07-10 07:30:14','2018-07-10 07:30:14'),(20,2,'::1',NULL,NULL,'2018-07-10 07:31:44','2018-07-10 07:31:44'),(21,1,'::1',NULL,NULL,'2018-07-10 07:41:58','2018-07-10 07:41:58'),(22,1,'::1',NULL,NULL,'2018-07-10 10:09:52','2018-07-10 10:09:52'),(23,1,'::1',NULL,NULL,'2018-07-11 10:12:29','2018-07-11 10:12:29'),(24,1,'::1',NULL,NULL,'2018-07-11 10:16:35','2018-07-11 10:16:35'),(25,2,'::1',NULL,NULL,'2018-07-11 10:17:10','2018-07-11 10:17:10'),(26,2,'::1',NULL,NULL,'2018-07-12 05:36:46','2018-07-12 05:36:46'),(27,1,'::1',NULL,NULL,'2018-07-12 06:44:31','2018-07-12 06:44:31'),(28,2,'::1',NULL,NULL,'2018-07-12 07:54:16','2018-07-12 07:54:16'),(29,1,'::1',NULL,NULL,'2018-07-12 11:46:10','2018-07-12 11:46:10'),(30,2,'::1',NULL,NULL,'2018-07-12 12:40:44','2018-07-12 12:40:44'),(31,2,'::1',NULL,NULL,'2018-07-14 05:28:03','2018-07-14 05:28:03'),(32,1,'::1',NULL,NULL,'2018-07-14 05:32:53','2018-07-14 05:32:53'),(33,2,'::1',NULL,NULL,'2018-07-16 05:37:09','2018-07-16 05:37:09'),(34,1,'::1',NULL,NULL,'2018-07-16 05:38:09','2018-07-16 05:38:09'),(35,3,'::1',NULL,NULL,'2018-07-16 07:17:03','2018-07-16 07:17:03'),(36,4,'::1',NULL,NULL,'2018-07-16 07:46:45','2018-07-16 07:46:45'),(37,1,'::1',NULL,NULL,'2018-07-16 07:58:21','2018-07-16 07:58:21'),(38,1,'::1',NULL,NULL,'2018-07-16 12:05:10','2018-07-16 12:05:10'),(39,2,'::1',NULL,NULL,'2018-07-17 05:50:24','2018-07-17 05:50:24'),(40,1,'::1',NULL,NULL,'2018-07-17 05:52:18','2018-07-17 05:52:18'),(41,1,'::1',NULL,NULL,'2018-07-17 06:00:02','2018-07-17 06:00:02'),(42,2,'::1',NULL,NULL,'2018-07-17 06:27:46','2018-07-17 06:27:46'),(43,1,'::1',NULL,NULL,'2018-07-17 12:50:46','2018-07-17 12:50:46'),(44,2,'::1',NULL,NULL,'2018-07-17 12:52:09','2018-07-17 12:52:09'),(45,1,'::1',NULL,NULL,'2018-07-17 13:18:36','2018-07-17 13:18:36'),(46,2,'::1',NULL,NULL,'2018-07-17 13:20:14','2018-07-17 13:20:14'),(47,1,'::1',NULL,NULL,'2018-07-18 05:30:43','2018-07-18 05:30:43'),(48,2,'::1',NULL,NULL,'2018-07-18 06:08:25','2018-07-18 06:08:25'),(49,1,'::1',NULL,NULL,'2018-07-18 12:00:14','2018-07-18 12:00:14'),(50,2,'::1',NULL,NULL,'2018-07-18 14:15:23','2018-07-18 14:15:23'),(51,2,'::1',NULL,NULL,'2018-07-18 17:44:39','2018-07-18 17:44:39'),(52,1,'::1',NULL,NULL,'2018-07-18 18:54:23','2018-07-18 18:54:23'),(53,2,'::1',NULL,NULL,'2018-07-18 18:57:20','2018-07-18 18:57:20'),(54,3,'::1',NULL,NULL,'2018-07-18 19:31:05','2018-07-18 19:31:05'),(55,2,'::1',NULL,NULL,'2018-07-18 19:32:54','2018-07-18 19:32:54'),(56,2,'::1',NULL,NULL,'2018-07-19 05:46:51','2018-07-19 05:46:51'),(57,1,'::1',NULL,NULL,'2018-07-19 07:45:25','2018-07-19 07:45:25'),(58,2,'::1',NULL,NULL,'2018-07-19 08:54:56','2018-07-19 08:54:56'),(59,1,'::1',NULL,NULL,'2018-07-19 09:19:16','2018-07-19 09:19:16'),(60,2,'::1',NULL,NULL,'2018-07-19 09:21:45','2018-07-19 09:21:45'),(61,2,'::1',NULL,NULL,'2018-07-31 06:25:05','2018-07-31 06:25:05'),(62,1,'::1',NULL,NULL,'2018-07-31 06:26:48','2018-07-31 06:26:48'),(63,2,'::1',NULL,NULL,'2018-07-31 07:43:29','2018-07-31 07:43:29'),(64,1,'::1',NULL,NULL,'2018-07-31 07:59:58','2018-07-31 07:59:58'),(65,3,'::1',NULL,NULL,'2018-07-31 09:56:56','2018-07-31 09:56:56'),(66,3,'::1',NULL,NULL,'2018-07-31 10:37:15','2018-07-31 10:37:15'),(67,1,'::1',NULL,NULL,'2018-07-31 11:09:59','2018-07-31 11:09:59'),(68,1,'::1',NULL,NULL,'2018-07-31 13:26:50','2018-07-31 13:26:50'),(69,2,'::1',NULL,NULL,'2018-07-31 13:28:13','2018-07-31 13:28:13'),(70,2,'::1',NULL,NULL,'2018-08-01 05:17:40','2018-08-01 05:17:40'),(71,1,'::1',NULL,NULL,'2018-08-01 05:21:43','2018-08-01 05:21:43'),(72,4,'::1',NULL,NULL,'2018-08-01 05:42:15','2018-08-01 05:42:15'),(73,1,'::1',NULL,NULL,'2018-08-01 11:11:11','2018-08-01 11:11:11'),(74,1,'::1',NULL,NULL,'2018-08-01 12:04:04','2018-08-01 12:04:04'),(75,1,'::1',NULL,NULL,'2018-08-01 12:39:03','2018-08-01 12:39:03'),(76,4,'::1',NULL,NULL,'2018-08-01 12:39:36','2018-08-01 12:39:36'),(77,1,'::1',NULL,NULL,'2018-08-02 05:51:24','2018-08-02 05:51:24'),(78,2,'::1',NULL,NULL,'2018-08-02 05:54:24','2018-08-02 05:54:24'),(79,2,'::1',NULL,NULL,'2018-08-02 08:01:28','2018-08-02 08:01:28'),(80,4,'::1',NULL,NULL,'2018-08-02 14:27:27','2018-08-02 14:27:27'),(81,3,'::1',NULL,NULL,'2018-08-02 14:46:37','2018-08-02 14:46:37'),(82,2,'::1',NULL,NULL,'2018-08-02 14:48:26','2018-08-02 14:48:26'),(83,1,'::1',NULL,NULL,'2018-08-04 06:54:30','2018-08-04 06:54:30'),(84,2,'::1',NULL,NULL,'2018-08-04 11:07:17','2018-08-04 11:07:17'),(85,1,'::1',NULL,NULL,'2018-08-04 11:09:16','2018-08-04 11:09:16'),(86,2,'::1',NULL,NULL,'2018-08-04 13:47:40','2018-08-04 13:47:40'),(87,1,'::1',NULL,NULL,'2018-08-04 14:34:38','2018-08-04 14:34:38'),(88,1,'::1',NULL,NULL,'2018-08-05 05:38:06','2018-08-05 05:38:06'),(89,1,'::1',NULL,NULL,'2018-08-05 06:42:36','2018-08-05 06:42:36'),(90,2,'::1',NULL,NULL,'2018-08-05 06:42:58','2018-08-05 06:42:58'),(91,4,'::1',NULL,NULL,'2018-08-05 06:45:31','2018-08-05 06:45:31'),(92,2,'::1',NULL,NULL,'2018-08-05 07:01:54','2018-08-05 07:01:54'),(93,4,'::1',NULL,NULL,'2018-08-05 09:19:00','2018-08-05 09:19:00'),(94,2,'::1',NULL,NULL,'2018-08-05 09:23:27','2018-08-05 09:23:27'),(95,1,'::1',NULL,NULL,'2018-08-05 09:40:27','2018-08-05 09:40:27'),(96,2,'::1',NULL,NULL,'2018-08-05 10:15:49','2018-08-05 10:15:49'),(97,1,'::1',NULL,NULL,'2018-08-05 10:25:22','2018-08-05 10:25:22'),(98,2,'::1',NULL,NULL,'2018-08-05 11:09:58','2018-08-05 11:09:58'),(99,4,'::1',NULL,NULL,'2018-08-05 11:14:45','2018-08-05 11:14:45'),(100,2,'::1',NULL,NULL,'2018-08-05 11:26:26','2018-08-05 11:26:26'),(101,4,'::1',NULL,NULL,'2018-08-05 11:31:12','2018-08-05 11:31:12'),(102,2,'::1',NULL,NULL,'2018-08-05 11:50:02','2018-08-05 11:50:02'),(103,1,'::1',NULL,NULL,'2018-08-05 11:54:02','2018-08-05 11:54:02'),(104,4,'::1',NULL,NULL,'2018-08-05 11:56:42','2018-08-05 11:56:42'),(105,2,'::1',NULL,NULL,'2018-08-05 11:57:00','2018-08-05 11:57:00'),(106,2,'::1',NULL,NULL,'2018-08-05 12:40:16','2018-08-05 12:40:16'),(107,4,'::1',NULL,NULL,'2018-08-06 03:58:51','2018-08-06 03:58:51'),(108,2,'::1',NULL,NULL,'2018-08-06 04:23:52','2018-08-06 04:23:52'),(109,2,'::1',NULL,NULL,'2018-08-06 07:04:15','2018-08-06 07:04:15'),(110,4,'::1',NULL,NULL,'2018-08-06 07:06:38','2018-08-06 07:06:38'),(111,2,'::1',NULL,NULL,'2018-08-06 07:09:43','2018-08-06 07:09:43'),(112,4,'::1',NULL,NULL,'2018-08-06 07:11:20','2018-08-06 07:11:20'),(113,1,'::1',NULL,NULL,'2018-08-06 07:43:55','2018-08-06 07:43:55'),(114,4,'::1',NULL,NULL,'2018-08-06 07:45:15','2018-08-06 07:45:15'),(115,2,'::1',NULL,NULL,'2018-08-06 08:29:16','2018-08-06 08:29:16'),(116,1,'::1',NULL,NULL,'2018-08-06 08:48:12','2018-08-06 08:48:12'),(117,3,'::1',NULL,NULL,'2018-08-06 08:48:28','2018-08-06 08:48:28'),(118,1,'::1',NULL,NULL,'2018-08-19 08:45:31','2018-08-19 08:45:31'),(119,2,'::1',NULL,NULL,'2018-08-19 09:01:37','2018-08-19 09:01:37'),(120,2,'::1',NULL,NULL,'2018-08-19 09:40:15','2018-08-19 09:40:15'),(121,1,'::1',NULL,NULL,'2018-08-19 11:11:20','2018-08-19 11:11:20'),(122,2,'::1',NULL,NULL,'2018-08-19 11:55:38','2018-08-19 11:55:38'),(123,1,'59.153.30.40',NULL,NULL,'2018-08-19 22:52:49','2018-08-19 22:52:49'),(124,1,'59.153.30.40',NULL,NULL,'2018-08-19 22:55:15','2018-08-19 22:55:15'),(125,1,'::1',NULL,NULL,'2018-09-02 10:13:27','2018-09-02 10:13:27'),(126,8,'::1',NULL,NULL,'2018-09-02 10:47:03','2018-09-02 10:47:03'),(127,2,'::1',NULL,NULL,'2018-09-02 10:47:17','2018-09-02 10:47:17'),(128,2,'::1',NULL,NULL,'2018-09-02 11:09:57','2018-09-02 11:09:57'),(129,4,'::1',NULL,NULL,'2018-09-02 11:22:33','2018-09-02 11:22:33');
/*!40000 ALTER TABLE `user_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_resumes`
--

DROP TABLE IF EXISTS `user_resumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_resumes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `skills` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `minimum_salary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum_salary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_qualification` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `resume_description` blob,
  `language` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_resumes`
--

LOCK TABLES `user_resumes` WRITE;
/*!40000 ALTER TABLE `user_resumes` DISABLE KEYS */;
INSERT INTO `user_resumes` VALUES (1,1,'laravel , php, Zend php','120','2000','institute','edu date','3.55 GPA','Lorem ipsum dolor set amet','Test company','Software Enginner','2015 - 2018','Lorem ipsum dolor set amet',_binary '<div>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div><div><br></div><div><br></div><div><br></div><div>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div><div><br></div><div><br></div><div>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div><div><br></div><div><br></div><div>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div><div><br></div><div><br></div><div>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div><div><br></div>','English , Bangla','2018-07-04 13:02:54','2018-08-04 10:42:15'),(2,3,'laravel , php, Zend php','120','2000','institute','edu date','3.88 CGPA','Lorem ipsum dolor set amet','Test company','SOftware Enginner','2015 - 2018','Lorem ipsum dolor set amet',NULL,'English , Bangla','2018-07-04 13:02:54','2018-07-05 11:53:41');
/*!40000 ALTER TABLE `user_resumes` ENABLE KEYS */;
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
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `refer` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `login_time` datetime DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `zip_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `web` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fb` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `twitter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_plus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `linkedin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cover` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_tagline` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `company_description` blob,
  `category_id` int(11) DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ronnie','ronnie','ronniearea@gmail.com','01825683631','1531305672_ronnie.jpg','$2y$10$kybZr./s0qtHXy9ia/Mx5.t0m9rPsflnxd7uf3XPP9JaJ4ST1FKjK','UDVR7W','VBVWAH',1,1,'2018-07-04 13:32:39','2018-07-04 13:32:39',1,0,NULL,'380',1,'2018-09-02 16:13:27',NULL,'Bangladesh',NULL,NULL,'Freelancer Web Designer & Developer from California','http://thesoftking.com/','https://www.facebook.com/','https://twitter.com/?lang=en','https://plus.google.com/','https://bd.linkedin.com/','1533449397_ronnie_cover.jpg',NULL,NULL,3,'jrWBcTIr5KEjaC3o4B79','dZy1Hpo9cqGOH0iRVwW9siB8STwmU4OviT6EYHstqcUOFqPWCoRTQMPeykrG','2018-07-04 07:27:39','2018-09-02 10:13:27'),(2,'THESOFTKING','jamal','jamal@gmail.com','01756671296','1530772778_jamal.jpg','$2y$10$2duG6kYHybq65SG7QZQmSus17F1HZ7IId4r5tHvbg5e2VBirzYzke','UTMFGK','SXWYOJ',1,1,'2018-07-04 13:33:30','2018-07-04 13:33:30',2,0,NULL,'496',1,'2018-09-02 17:09:57',NULL,'Bangladesh',NULL,NULL,NULL,'http://thesoftking.com/','https://www.facebook.com/','https://twitter.com/?lang=en','https://plus.google.com/','https://bd.linkedin.com/','1531053209_jamal_cover.jpg','A Freelancing Company',_binary 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',1,'zNfHnlCGZuicT4JuNK6P','tsJ4sG6eUGSADgs0Y4CrbLG0zUjYKlxfWJexjJm8KpqiuqkSohcDeQjlv8aG','2018-07-04 07:28:31','2018-09-02 11:14:58'),(3,'Ratul','ratul','ratul@gmail.com','01825683620',NULL,'$2y$10$kyYKfwYt.qJV0UbgzHFzj.oVihn7VRLPJ2D/t2DFFFqZq5nCfIDkW','UDVS7x','VBVsAx',1,1,'2018-07-04 13:32:39','2018-07-04 13:32:39',1,0,NULL,'110',1,'2018-08-06 14:48:28',NULL,NULL,NULL,NULL,'Freelancer Web Designer & Developer from California','http://thesoftking.com/','https://www.facebook.com/','https://twitter.com/?lang=en','https://plus.google.com/','https://bd.linkedin.com/',NULL,NULL,NULL,2,'awGb1OGRs0SsrAj1dfUZ','9adT5TSRc6O4mVmUINOlp3kFdL68LS1dQob2LwrApQsSw9b061HMJWH8JvmF','2018-07-04 07:27:39','2018-08-06 08:48:28'),(4,'Ramim','ramim','ramim@gmail.com','01825683201',NULL,'$2y$10$kyYKfwYt.qJV0UbgzHFzj.oVihn7VRLPJ2D/t2DFFFqZq5nCfIDkW','UDVR7x','VBVWAx',1,1,'2018-07-04 13:32:39','2018-07-04 13:32:39',1,0,NULL,'80',1,'2018-09-02 17:22:33',NULL,NULL,NULL,NULL,'Freelancer Web Designer & Developer from California','http://thesoftking.com/','https://www.facebook.com/','https://twitter.com/?lang=en','https://plus.google.com/','https://bd.linkedin.com/',NULL,NULL,NULL,1,'R4N2LNbJXGLubXcQC0Km','iEAY9ZDntKnPuRhRrvIj2wfOI0hgtL74vmkwEvfPct8EpYa51U6wtS0eWvO6','2018-07-04 07:27:39','2018-09-02 11:22:33'),(5,'SoftHouse Company','softhouse','softhouse@gmail.com','01825636631',NULL,'$2y$10$gyBxheNW5yDwFLX5zSB8weE.Ei96UMt2V9KQmrJgnh1C1ZvnqgPRe','MGHZ9V','OLCUIV',1,1,'2018-07-17 17:43:22','2018-07-17 17:43:22',2,0,NULL,'0',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'7YDUIHMVEFSKZNZROKQD','PXk9dJEqcBOglkx9hqGWFte6LIjfCTKwZHiKuhXMBLssUwdxI4nr5C5CUnql','2018-07-17 11:38:22','2018-07-17 11:38:22'),(6,'TechIt Company','TechIt','techIt@gmail.com','01711171296',NULL,'$2y$10$1DqS292n.C/.TUblbBBAuOa7ehEiXu6hwbKQAe8LRk5VJml7QFq9i','DNXOLI','WMLSRL',1,1,'2018-07-17 17:41:13','2018-07-17 17:45:13',2,0,NULL,'0',1,NULL,NULL,'Barbados',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A fotka Company',_binary 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',4,'SISW7GY5OFKKQIVDIP62','6HjSKvIB9tPomNOlEgBcFeUCBN57ENVXwPYP3v2pcawe7YgoWO9ddUwOm36L','2018-07-17 11:40:13','2018-07-19 05:46:13'),(7,'LeadIt Company','leadit','leadit@gmail.com','01827244399',NULL,'$2y$10$E4mibU3P92Pa2y41SnZIjeQTzPiClljg6q5/sH/Qz8WTimD1Tj2fG','YUMSKB','VC3OX1',1,1,'2018-08-05 13:01:06','2018-08-05 13:01:07',2,0,NULL,'0',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PGDZ2MIUZKBBLAP4Z1I4','QlQa3bi7TrIENlgCCquFbtGaCVEa2AE83cOOqekQHw3enObthB4eUV3KYg30','2018-08-05 07:00:04','2018-08-05 07:00:39'),(8,'Ronnie1','ronnie1','ronnie1@gmail.com','01825683639',NULL,'$2y$10$kybZr./s0qtHXy9ia/Mx5.t0m9rPsflnxd7uf3XPP9JaJ4ST1FKjK','UDVR7W','VBVWAH',1,1,'2018-07-04 13:32:39','2018-07-04 13:32:39',1,0,NULL,'380',1,'2018-09-02 16:47:03',NULL,'Bangladesh',NULL,NULL,'Freelancer Web Designer & Developer from California','http://thesoftking.com/','https://www.facebook.com/','https://twitter.com/?lang=en','https://plus.google.com/','https://bd.linkedin.com/','1533449397_ronnie_cover.jpg',NULL,NULL,3,'jrWBcTIr5KEjaC3o4B79','bZSGaZezU18MT5WNpE36f5pLWAXq6Gkkwen7gzwYicrvmCSBAlRp4uGmIln5','2018-07-04 07:27:39','2018-09-02 10:47:03'),(9,'Zia Uddin','ziauddin','ziauddin@gmail.com','3543141321321',NULL,'$2y$10$2A9OkUmruHmVkEdneVnJfeQqAu/oGt/Wf7wsK9vcjqHdoaxbwRLtS','3DUNDV','MUXMKJ',1,1,'2018-09-02 17:35:47','2018-09-02 17:59:58',1,0,NULL,'0',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VEVKCLFSDHTDKIFUUN5Z','jfrHYYQRmHUWq5Yun8pegC65061XRDMBfrMa2t2CP5N5FxXeUwxTI9s9Ecb7','2018-09-02 11:30:48','2018-09-02 12:00:24');
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
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net_amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_logs`
--

LOCK TABLES `withdraw_logs` WRITE;
/*!40000 ALTER TABLE `withdraw_logs` DISABLE KEYS */;
INSERT INTO `withdraw_logs` VALUES (2,2,3,'YCZRSBTDIQVMQVBK6EVG','50','50','100','cgvdfgv','dfgvdfg',1,'2018-07-17 07:44:59','2018-07-17 07:45:05'),(3,2,5,'NOQZVVMRCT6GULQRADDY','250','13.75','263.75','asa','asdasd',1,'2018-07-17 07:51:37','2018-07-17 07:51:44'),(4,2,7,'D8XXUV2Q9HJQJVTTQNQR','250','25.25','275.25',NULL,NULL,0,'2018-07-17 07:54:40','2018-07-17 07:54:40'),(5,2,3,'ZLV646NIEGBCG9ZU5BSW','50','50','100','My Account number:  232141564541\r\nSavar Branch','I need to money urgently',1,'2018-07-17 07:55:22','2018-07-17 07:56:39'),(6,1,3,'KKEONMO5S1TIPZTE9SLC','50','50','100',NULL,NULL,0,'2018-08-04 08:18:47','2018-08-04 08:18:47'),(7,1,3,'OLZLKKZFCCDMFPIXP6LT','50','50','100',NULL,NULL,0,'2018-08-04 08:19:36','2018-08-04 08:19:36'),(8,1,3,'TYUYK8C3JQTWTUGDP9HY','50','50','100',NULL,NULL,1,'2018-08-04 08:20:55','2018-08-04 08:20:55'),(9,1,3,'VVZLEAQLZXV4U5VHDPHP','50','50','100',NULL,NULL,1,'2018-08-04 08:21:39','2018-08-04 08:21:39'),(10,1,3,'YCB3UWJOGRJ6M9EBRONG','50','50','100',NULL,NULL,1,'2018-08-04 08:22:22','2018-08-04 08:22:22'),(11,1,3,'XKBFLMKWDKZL7TRWOLZ5','50','50','100',NULL,NULL,1,'2018-08-04 08:23:13','2018-08-04 08:23:13'),(12,1,3,'FJSAJJONJXGCN0YFVJNT','50','50','100',NULL,NULL,0,'2018-08-04 08:23:46','2018-08-04 08:23:46'),(13,1,3,'HEEKAATMKLKFTTGZDIBJ','50','50','100',NULL,NULL,0,'2018-08-04 08:25:08','2018-08-04 08:25:08'),(14,1,3,'O6SPCZOXSPZHT6FGHCZM','50','50','100',NULL,NULL,0,'2018-08-04 08:51:22','2018-08-04 08:51:22'),(15,1,3,'HHHSIXLIBWGVOBGNKIAO','50','50','100',NULL,NULL,0,'2018-08-04 08:52:13','2018-08-04 08:52:13'),(16,1,3,'F8HFSVSV2GTO7AT9X6V5','50','50','100',NULL,NULL,0,'2018-08-04 08:53:02','2018-08-04 08:53:02'),(17,1,3,'DRJK6XNX3AARHF4YSV1Z','50','50','100',NULL,NULL,0,'2018-08-04 08:54:39','2018-08-04 08:54:39'),(18,1,3,'WTQIQBZW03M8C2FKWP3A','50','50','100',NULL,NULL,0,'2018-08-04 08:56:02','2018-08-04 08:56:02'),(19,1,3,'01ETSMEBOO1MBJBPM5HP','50','50','100',NULL,NULL,0,'2018-08-04 08:57:38','2018-08-04 08:57:38'),(20,1,3,'AA1ZWK86WWSUE9ZZ2LBA','50','50','100',NULL,NULL,0,'2018-08-04 08:58:19','2018-08-04 08:58:19'),(21,1,3,'ROZOZW246IKSBRDFGDBV','50','50','100',NULL,NULL,0,'2018-08-04 09:58:00','2018-08-04 09:58:00'),(22,1,3,'PQD5YR4G6QRD2L46MGGS','50','50','100',NULL,NULL,0,'2018-08-04 09:58:36','2018-08-04 09:58:36'),(23,1,3,'6U4YKBCRQUYCIZ5DXKYI','50','50','100',NULL,NULL,0,'2018-08-04 09:58:46','2018-08-04 09:58:46'),(24,1,3,'QYGTIVIWUKJZIS2J7DIS','50','50','100',NULL,NULL,1,'2018-08-04 09:59:01','2018-08-04 09:59:01'),(25,1,3,'VPHAMFHBSG1URWQTREUX','50','50','100',NULL,NULL,2,'2018-08-04 09:59:53','2018-08-04 10:09:36'),(26,1,3,'6HL66S9L20SBW5AE79NZ','50','50','100',NULL,NULL,2,'2018-08-04 10:00:18','2018-08-04 10:09:09'),(27,1,3,'KLJ9X9LYDTJRRC1CRN85','50','50','100',NULL,NULL,0,'2018-08-04 10:01:57','2018-08-04 10:01:57'),(28,1,3,'AZM5GRJYJMG9SQWIKQFT','50','50','100',NULL,NULL,0,'2018-08-04 10:02:48','2018-08-04 10:02:48'),(29,1,3,'TCKOHIV5OJ12BSL58TBB','50','50','100',NULL,NULL,0,'2018-08-04 10:03:27','2018-08-04 10:03:27'),(30,1,3,'QDEG3P4AVQHFPO1A8LCB','50','50','100',NULL,NULL,0,'2018-08-04 10:04:39','2018-08-04 10:04:39'),(31,1,3,'H8YOC2EUZAMLZ12OU4LK','50','50','100',NULL,NULL,0,'2018-08-04 10:05:06','2018-08-04 10:05:06'),(32,1,3,'IXAOUAQK0JWACBYFSYFI','50','50','100','sdzfcsdzf','sdfcdsf',3,'2018-08-04 10:06:07','2018-08-04 10:09:19');
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
INSERT INTO `withdraw_methods` VALUES (1,'PayPal','5b13d494ef74c.jpg','500','25000','25','2.25','2',1,'2017-07-28 09:09:41','2018-06-03 21:44:20'),(2,'Perfect Money','5b13d4a81a53a.jpg','100','20000','25','2.30','2',1,'2017-07-28 09:10:00','2018-06-03 21:44:40'),(3,'Skrill','5b13d4d7f25fb.jpg','50','20000','50','0','2',1,'2017-08-09 15:06:21','2018-06-03 21:45:27'),(4,'BitCoin','5b13d598de508.jpg','500','7050000','1','1.5','1',1,'2018-03-12 07:43:54','2018-06-03 21:49:00'),(5,'Ethereum','5b4d9fe12c10d.jpg','250','10000','10','1.5','1',1,'2018-03-13 00:16:14','2018-07-17 07:50:57'),(6,'LiteCoin','5b13da5678c33.jpg','250','10000','20','2.1','1',1,'2018-03-13 00:16:14','2018-06-03 22:08:54'),(7,'Dash','5b13da070dc58.jpg','250','10000','20','2.1','1',1,'2018-03-13 00:16:14','2018-06-03 22:07:35'),(8,'BitCoin Cash','5b13db056c9ab.jpg','200','10000','20','2.1','1',1,'2018-03-13 00:16:14','2018-06-03 22:11:49');
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

-- Dump completed on 2020-10-06 22:06:37
