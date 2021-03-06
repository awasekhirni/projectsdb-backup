-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: tradingone
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
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'thesoftking','admin','1498665028.png','admin@admin.com','$2y$10$QDM9CsR53UODmQYWpCGK7eR528uMeFIDSGVBFjEZx/rGlc06R95qq','FSp9iGEDy0xvAELXWFBCm7RnI1dYLlD0DfX4WRcItNPuQ8aozq565yS4peIr',NULL,'2017-08-17 18:58:09');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_settings`
--

DROP TABLE IF EXISTS `basic_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_map` blob NOT NULL,
  `start_date` datetime NOT NULL,
  `currency` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deci` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_reg` int(2) NOT NULL DEFAULT '1',
  `email_verify` tinyint(1) NOT NULL,
  `phone_verify` tinyint(1) NOT NULL,
  `withdraw_status` tinyint(1) NOT NULL,
  `repeat_status` tinyint(1) NOT NULL,
  `email_notify` tinyint(1) NOT NULL,
  `phone_notify` tinyint(1) NOT NULL,
  `google_recap` tinyint(1) NOT NULL,
  `google_site_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_secret_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_bonus` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_percent` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` longblob NOT NULL,
  `smsapi` blob NOT NULL,
  `breadcrumb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` blob NOT NULL,
  `footer_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `copy_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `basic_settings` VALUES (1,'Trade','2ecc71','+88-01716-44-17-00','support@thesoftking.com','11/3 Garden Street, Ring Road, Shyamoli, Dhaka 1207, Bangladesh',_binary '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29186.920133680236!2d90.36073541583481!3d23.876671847930258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5d05e7074dd%3A0xd1c58803049f00c7!2sUttara%2C+Dhaka!5e0!3m2!1sen!2sbd!4v1505144892378\"   allowfullscreen></iframe>','2017-07-30 05:00:22','BDT','TK','2',1,0,0,1,1,0,0,0,'6LfJ0DEUAAAAANcRYNIasJigJ-tPzNlCH7JOymB-','6LfJ0DEUAAAAAIGCgkQKHILOyfg6LGcbO4YLM15a','admin','10','5','info@gmail.com',_binary '<p>&nbsp;</p>\r\n<div class=\"wrapper\" style=\"background-color: #f2f2f2;\">\r\n<table style=\"border-collapse: collapse; table-layout: fixed; color: #b8b8b8; font-family: Ubuntu,sans-serif;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"preheader__snippet\" style=\"padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n<td class=\"preheader__webversion\" style=\"text-align: right; padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0; width: 600px;\">\r\n<div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\">\r\n<div id=\"emb-email-header\" class=\"logo-left\" style=\"font-size: 0px !important; line-height: 0 !important;\" align=\"left\"><img style=\"height: auto; width: 100%; border: 0; max-width: 312px;\" src=\"http://i.imgur.com/nNCNPZT.png\" alt=\"\" width=\"312\" height=\"44\"></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"column\" style=\"padding: 0px; text-align: left; vertical-align: top; color: rgb(96, 102, 109); line-height: 21px; font-family: sans-serif; width: 600px;\">\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px; margin-top: 24px;\">\r\n<div style=\"line-height: 10px; font-size: 1px;\">&nbsp;</div>\r\n</div>\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px;\">\r\n<h2>Hi {{name}},</h2>\r\n<p><strong>{{message}}</strong></p>\r\n</div>\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px;\"><br></div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\">\r\n<p class=\"size-14\" style=\"margin-top: 0px; margin-bottom: 0px; line-height: 21px;\"><font size=\"3\">Thanks,</font><br> <strong style=\"font-size: 14px;\">HYIP Investment</strong></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table><br>\r\n</div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div>\r\n<br>\r\n<br>\r\n<br>',_binary 'https://api.infobip.com/api/v3/sendsms/plain?user=****&password=*****&sender=E-Wallet&SMSText={{message}}&GSM={{number}}&type=longSMS','1506121478.jpg',_binary '<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Why do we use it?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br style=\"margin: 0px; padding: 0px; clear: both; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" center;\"=\"\"><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Where does it come from?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Where can I get some?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p></div>','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.','1503148676.jpg','Copyright Â© TSK 2011 - 2017 All Right Reserved.',NULL,'2017-11-07 23:22:31');
/*!40000 ALTER TABLE `basic_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compounds`
--

DROP TABLE IF EXISTS `compounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compounds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `compound` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compounds`
--

LOCK TABLES `compounds` WRITE;
/*!40000 ALTER TABLE `compounds` DISABLE KEYS */;
INSERT INTO `compounds` VALUES (1,'Hourly','1','2017-06-12 18:25:25','2017-06-12 18:25:25'),(2,'Daily','24','2017-06-12 18:31:33','2017-06-12 18:33:14'),(3,'Weekly','168','2017-06-12 18:33:30','2017-06-12 18:33:30'),(4,'Monthly','720','2017-06-12 18:35:58','2017-06-12 18:36:30'),(6,'Yearly','8760','2017-09-21 17:03:37','2017-09-21 17:03:37'),(7,'asdfdsf','10','2017-10-24 10:51:25','2017-10-24 10:51:25'),(8,'asdfsadf','50','2017-10-24 11:10:35','2017-10-24 11:10:35'),(9,'sdfsadf','1450','2017-10-25 07:07:44','2017-10-25 07:08:41');
/*!40000 ALTER TABLE `compounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_images`
--

DROP TABLE IF EXISTS `deposit_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deposit_id` int(11) NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_images`
--

LOCK TABLES `deposit_images` WRITE;
/*!40000 ALTER TABLE `deposit_images` DISABLE KEYS */;
INSERT INTO `deposit_images` VALUES (1,5,'1508664092h3.jpg','2017-10-22 09:21:32','2017-10-22 09:21:32'),(2,7,'1508665283h3.png','2017-10-22 09:41:23','2017-10-22 09:41:23'),(3,8,'1508666469h3.jpg','2017-10-22 10:01:10','2017-10-22 10:01:10'),(4,10,'1508740959h3.jpg','2017-10-23 06:42:39','2017-10-23 06:42:39'),(5,10,'1508740959h3.jpg','2017-10-23 06:42:39','2017-10-23 06:42:39'),(6,11,'1508740982h3.jpg','2017-10-23 06:43:02','2017-10-23 06:43:02'),(7,11,'1508740982h3.jpg','2017-10-23 06:43:03','2017-10-23 06:43:03'),(8,12,'1508818116h3.jpg','2017-10-24 04:08:36','2017-10-24 04:08:36'),(9,12,'1508818116h3.jpg','2017-10-24 04:08:36','2017-10-24 04:08:36'),(10,13,'1508818167h3.jpg','2017-10-24 04:09:27','2017-10-24 04:09:27'),(11,13,'1508818167h3.jpg','2017-10-24 04:09:28','2017-10-24 04:09:28'),(12,14,'1508835560h3.png','2017-10-24 08:59:20','2017-10-24 08:59:20'),(13,14,'1508835560h3.png','2017-10-24 08:59:20','2017-10-24 08:59:20'),(14,15,'1509256980h3.jpg','2017-10-29 06:03:01','2017-10-29 06:03:01'),(15,16,'1509257290h3.jpg','2017-10-29 06:08:10','2017-10-29 06:08:10'),(16,20,'1509267343h3.jpg','2017-10-29 08:55:44','2017-10-29 08:55:44'),(17,25,'1509268858h3.jpg','2017-10-29 09:20:58','2017-10-29 09:20:58'),(18,26,'1509269145h3.jpg','2017-10-29 09:25:45','2017-10-29 09:25:45'),(19,27,'1509269209h3.jpg','2017-10-29 09:26:49','2017-10-29 09:26:49'),(20,29,'1509948752h3.jpg','2017-11-06 06:12:33','2017-11-06 06:12:33');
/*!40000 ALTER TABLE `deposit_images` ENABLE KEYS */;
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
  `transaction_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `charge` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `net_amount` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` tinyint(4) NOT NULL,
  `message` blob,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
INSERT INTO `deposits` VALUES (1,4,'STSJEOFU60STGYAQN3SZ','100','75','5.2','105.2',4,NULL,1,'2017-10-22 04:36:45','2017-10-22 04:36:45'),(2,4,'HEPAYL8ZQMONDTKI0LEJ','150000','75','3303','153303',4,NULL,1,'2017-10-22 06:30:01','2017-10-22 06:30:01'),(3,4,'SOQ8I4HYGZ7E6TBOWTL9','1025','75','25.55','1050.55',4,NULL,1,'2017-10-22 09:15:20','2017-10-22 09:15:20'),(4,4,'FGEBVG7QGN4N7VVSBNMH','1022','75','25.48','1047.484',4,NULL,1,'2017-10-22 09:19:39','2017-10-22 09:19:39'),(5,4,'AQ7QSZI9CSS9SZ1M4XUJ','1025',NULL,'50.63','1075.625',11,_binary 'dsafsdfsadfsdaf<br>',0,'2017-10-22 09:21:32','2017-10-22 09:21:32'),(6,4,'9BYQWDFP2FZW20HPMBVZ','1025','75','25.55','1050.55',4,NULL,1,'2017-10-22 09:39:47','2017-10-22 09:39:47'),(7,4,'KLHAPDY8TBNYPNBQEGQ1','1025',NULL,'50.63','1075.625',11,_binary 'adsfsd<br>',0,'2017-10-22 09:41:23','2017-10-22 09:41:23'),(8,4,'YURKFMQSK1RTGWRNPM22','1025',NULL,'50.63','1075.625',11,_binary 'sdfsadf<br>',0,'2017-10-22 10:01:09','2017-10-22 10:01:09'),(9,5,'ASG8WXJQURV9VCHLHEOT','50000','75','1103','51103',4,NULL,1,'2017-10-22 11:04:35','2017-10-22 11:04:35'),(10,4,'WRUEGA68BHPDZNYJQ2H9','10025',NULL,'280.63','10305.625',10,_binary 'hello world<br>',1,'2017-10-23 06:42:39','2017-10-24 09:14:59'),(11,4,'J7KNXMPUXTPNQKD2MXPO','1025452',NULL,'25666.3','1051118.3',10,_binary '44521320<br>',0,'2017-10-23 06:43:02','2017-10-23 06:43:02'),(12,4,'OGJGJYJJYQZB0RBMXIOZ','500',NULL,'35','535',5,_binary 'HELLO WORLD THIS IS TEST<br>',2,'2017-10-24 04:08:36','2017-11-06 05:09:02'),(13,4,'8OLQITXTO16PS9PKRPUN','450',NULL,'32.5','482.5',5,_binary 'FDFASDF<br>',2,'2017-10-24 04:09:27','2017-10-24 11:56:11'),(14,6,'HWWXYJ6AIT82BOONPIE3','1520',NULL,'86','1606',5,_binary '&nbsp;this is to test<img src=\"https://i.imgur.com/WiFgGJz.jpg\" width=\"366\"><div><br></div>',1,'2017-10-24 08:59:20','2017-10-24 09:29:12'),(15,4,'IDH6TGXKX5OZLKMXZ1UF','1000',NULL,'60','1060',5,_binary 'dsafsdaf<br>',1,'2017-10-29 06:03:00','2017-10-29 06:03:18'),(16,4,'REFQIOTBGPB1LV1OTRBH','1000',NULL,'50','1050',11,_binary 'dfadsfsadf<br>',1,'2017-10-29 06:08:10','2017-10-29 06:08:50'),(17,7,'RM4F97YLZ4MVUF03RDTB','100','75','5.2','105.2',4,NULL,1,'2017-10-29 08:20:57','2017-10-29 08:20:57'),(18,7,'BD8IKLP3CIEKN9P9VQAC','1000','75','25','1025',4,NULL,1,'2017-10-29 08:35:22','2017-10-29 08:35:22'),(19,7,'BD8IKLP3CIEKN9P9VQAC','1000','75','25','1025',4,NULL,1,'2017-10-29 08:35:25','2017-10-29 08:35:25'),(20,7,'UNFUGA1UIPNCBVGH2HOE','1000',NULL,'55','1055',10,_binary 'asdfasdfsd',1,'2017-10-29 08:55:43','2017-10-29 08:56:02'),(21,7,'IA5GLVI2Q56ZKL6X3NY1','1000','75','25','1025',4,NULL,1,'2017-10-29 08:58:34','2017-10-29 08:58:34'),(22,7,'PYFOL1TDU1OI5V4LIDFX','1000','75','25','1025',4,NULL,1,'2017-10-29 09:07:58','2017-10-29 09:07:58'),(23,7,'PYFOL1TDU1OI5V4LIDFX','1000','75','25','1025',4,NULL,1,'2017-10-29 09:07:58','2017-10-29 09:07:58'),(24,7,'SSPPXNJ5Q4QNSG59KULM','1000','75','25','1025',4,NULL,1,'2017-10-29 09:11:35','2017-10-29 09:11:35'),(25,7,'H1SPNG8S01SAYSXDHQRD','1000',NULL,'55','1055',10,_binary 'sadfsd',1,'2017-10-29 09:20:58','2017-10-29 09:21:08'),(26,7,'S6YRREUUULPANHBJKVWD','1000',NULL,'55','1055',10,_binary 'asdfsadfsdaf',1,'2017-10-29 09:25:45','2017-10-29 09:26:07'),(27,7,'MDPC03G7VN07IXPPCHLL','1000',NULL,'55','1055',10,_binary 'asdfsadf&nbsp;',1,'2017-10-29 09:26:49','2017-10-29 09:26:59'),(28,10,'1SKAEOK3WH4L1VR0BCLE','100','75','5.2','105.2',4,NULL,1,'2017-11-06 06:11:56','2017-11-06 06:11:56'),(29,10,'P9DKECZSAKFKAGQYCTIK','100',NULL,'32.5','132.5',10,_binary 'asdfsda sf sdafd',1,'2017-11-06 06:12:32','2017-11-06 06:12:45'),(30,8,'MXEXPCIA3XDCEKMQNHC0','1000','75','25','1025',4,NULL,1,'2017-11-06 07:41:59','2017-11-06 07:41:59'),(31,11,'LZPGG4P0ZZYESTCXEF5L','300','77','9.6','4.020779220779221',103,NULL,1,'2018-07-25 07:44:17','2018-07-25 07:44:17'),(32,11,'BSJF9LHGA6I9DYNMFLP4','500','77','14','6.675324675324675',103,NULL,1,'2018-07-25 08:42:45','2018-07-25 08:42:45');
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'Anim pariatur cliche reprehenderit',_binary 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.','2017-09-22 17:53:37','2017-09-22 17:53:37'),(3,'Lorem Ipsum is simply dummy text of the printing',_binary 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','2017-09-23 08:38:51','2017-09-23 08:38:51'),(4,'Anim pariatur cliche reprehenderit',_binary '<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','2017-09-23 08:38:57','2017-09-23 08:38:57'),(5,'Anim pariatur cliche reprehenderit',_binary '<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','2017-09-23 08:39:03','2017-09-23 08:39:03');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investments`
--

DROP TABLE IF EXISTS `investments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trx_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investments`
--

LOCK TABLES `investments` WRITE;
/*!40000 ALTER TABLE `investments` DISABLE KEYS */;
INSERT INTO `investments` VALUES (1,'TLWRPGZ5XPHQEG9VBEZL',4,1,'1200',0,'2017-10-22 06:31:07','2017-10-22 06:31:07'),(2,'5STYCDDMMPDYRQONVRQU',4,1,'500',1,'2017-10-22 06:33:01','2017-10-22 11:17:07'),(3,'KVPXSHNKYCQUKP6PWISU',4,1,'500',0,'2017-10-22 06:35:13','2017-10-22 06:35:13'),(4,'9ST9G3WPHXL8HQDIZR9T',4,1,'500',0,'2017-10-04 06:48:15','2017-10-06 06:48:15'),(5,'74WYLM4H1DTL0YF3ETCR',4,1,'500',0,'2017-10-22 06:54:14','2017-10-22 06:54:14'),(6,'SABUXJ1WH8XMDCDGQ14U',4,1,'1000',0,'2017-10-22 08:49:17','2017-10-22 08:49:17'),(7,'JPMU5JLUNJ6XKF6RA4KY',4,1,'1025',0,'2017-10-22 09:14:07','2017-10-22 09:14:07'),(8,'ENBXLBB78Z7IYZRDJ9DM',5,1,'1000',0,'2017-10-22 11:05:39','2017-10-22 11:05:39'),(9,'9UOX5XDDTRKSM8ZR0MZC',4,5,'500',0,'2017-10-22 11:18:40','2017-10-22 11:18:40'),(10,'0QS5Q8H4BY7CZNHFEAHL',4,1,'1500',0,'2017-10-23 05:15:58','2017-10-23 05:15:58'),(11,'FZODUGLJ8SCN0HWVSV9Z',4,1,'500',1,'2017-10-24 04:04:36','2017-10-24 10:18:47');
/*!40000 ALTER TABLE `investments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Menu1',_binary '<div><h2>What is Lorem Ipsum?</h2>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div><h2>Why do we use it?</h2>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div><br><div><h2>Where does it come from?</h2>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.1</div>','2017-01-11 08:28:02','2017-04-23 11:26:01');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
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
  `about_subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_leftText` blob,
  `about_rightText` blob,
  `service_subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `plan_subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `investor_subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',_binary 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt 2jlabore et dolore magna aliqua. Ut aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui doloratem.',_binary 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt 2jlabore et dolore magna aliqua. Ut aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui doloratem.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',NULL,'2017-09-27 22:03:33');
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
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `custom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` int(11) NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `charge` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `net_amount` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `usd` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `btc_acc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `try` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
INSERT INTO `payment_logs` VALUES (1,'1','FDR7YPCE1UHNUINM4C9U',3,'500','2.5','502.5','502.5','0.0677627076179945',NULL,0,0,'2018-07-19 12:22:34','2018-07-19 12:22:34'),(2,'1','YHWW9CNXRZROSQLP2LU9',1,'500','9.5','509.5','509.5',NULL,NULL,0,0,'2018-07-19 12:24:49','2018-07-19 12:24:49'),(3,'1','FX29WK4DA1D7K1QHWQ8M',2,'100','5.75','105.75','105.75',NULL,NULL,0,0,'2018-07-19 12:30:37','2018-07-19 12:30:37'),(4,'1','WRL8FF0TDPDULJ52YX7W',101,'100','3.5','103.5','103.5','0.0138845848911569',NULL,0,0,'2018-07-19 14:05:02','2018-07-19 14:05:02'),(5,'1','4WCVJYMHEZYJNAGLJPWZ',101,'500','9.5','7.2785714285714285','7.2785714285714285','0','',0,0,'2018-07-21 07:03:07','2018-07-21 07:03:07'),(6,'1','QUF4GROVNOK9LXQLSHWC',101,'500','9.5','7.2785714285714285','7.2785714285714285','0','',0,0,'2018-07-21 07:03:49','2018-07-21 07:03:49'),(7,'1','WZA3CRWJTNDYF6NLVX3W',102,'100','5.75','105.75','105.75','0','',0,0,'2018-07-21 07:08:46','2018-07-21 07:08:46'),(8,'1','TOMIERYV48JFIUW4O8SJ',101,'300','6.5','4.378571428571429','4.378571428571429','0','',0,0,'2018-07-21 07:33:03','2018-07-21 07:33:03'),(9,'1','WYBSATE9SLZSFSOZRN1G',102,'344','12.46','356.46','356.46','0','',0,0,'2018-07-21 08:17:20','2018-07-21 08:17:20'),(10,'1','VN1T3FYWIYY7GDYTITUD',103,'300','9.6','309.6','309.6','0','',1,0,'2018-07-21 08:25:08','2018-07-21 08:28:21'),(11,'1','RJVRWZDD31F1CEXPPOCH',103,'344','10.57','354.568','354.568','0','',1,0,'2018-07-21 09:10:18','2018-07-21 09:10:36'),(12,'1','XCWFHYY44FPXG0KJD0PG',104,'500','10.75','510.75','510.75','0','',0,0,'2018-07-21 09:17:23','2018-07-21 09:17:23'),(13,'1','RCC7DGNCW6V72CBSRIHO',501,'500','2.5','502.5','502.5','0.06862438','kfjhsajfhkjhsakjfhjksfshjkfhkjdsahfkj',0,0,'2018-07-21 09:20:25','2018-07-21 09:20:31'),(14,'1','G4J8VX8RNK8YP5TZPL9G',502,'500','7','7.242857142857143','7.242857142857143','0.00098728','3G4g4AcxgyBmBQ1qZQGiFseDoJbyKPNZuW',0,2,'2018-07-21 09:27:11','2018-07-21 09:58:38'),(15,'1','9CJ5OUZIZHYG9F3FI1NS',503,'900','11','13.014285714285714','13.014285714285714','0.15850397','37bZngXhjaDHF4xWGGTEybATDFdHHeR881',0,1,'2018-07-21 09:27:32','2018-07-21 09:58:52'),(16,'1','E8W4JP2ZQ0YAUPKCFY1H',504,'344','5.44','4.992','4.992','1470.0858728','A6vHory3HRvD18ByDp6qWCG6wYX8nP9F5j',0,2,'2018-07-21 09:27:47','2018-07-21 09:59:11'),(17,'1','L3LYJF4AEYAAXKXKCYFK',505,'500','7','7.242857142857143','7.242857142857143','0.00099081','3ABa4op8t7GCMMSGxsVFbuV6Qb8nfUL4o9',0,0,'2018-07-21 09:27:59','2018-07-21 09:28:03'),(18,'1','XAJ5L34V2NKASDAIRKE8',506,'500','7','7.242857142857143','7.242857142857143','0.01576752','0x74940151c00201ef20e1db1d6337d32c59c5718a',0,0,'2018-07-21 09:28:13','2018-07-21 09:28:17'),(19,'1','HTELER7UTWZ5AHE48UWS',507,'500','7','7.242857142857143','7.242857142857143','0.00940955','1M25ZsiSqi4moYoKjQK8M41jm9eZ6HYHPq',0,0,'2018-07-21 09:28:25','2018-07-21 09:28:29'),(20,'1','YU5SXGP2UF2ZCDEHLURA',508,'500','7','7.242857142857143','7.242857142857143','0.03029683','XxYhE33rkMkpLpbtBt8jqu9YEAs9RSjHFn',0,0,'2018-07-21 09:28:37','2018-07-21 09:28:40'),(21,'1','U1IW5YM8WDVMKNVH0DKF',510,'500','7','7.242857142857143','7.242857142857143','0.08814180','LM6nmvDwkYn57RskZFK6kpaN1R3vGpscac',0,0,'2018-07-21 09:28:51','2018-07-21 09:28:55'),(22,'1','CXEEZMLIMAM4HIFVCK9M',512,'500','7','7.242857142857143','7.242857142857143','0','',0,0,'2018-07-21 09:29:04','2018-07-21 09:29:04'),(23,'1','74DTJZL1RM7KXN1D4EEJ',513,'100','3','103','103','0','',0,0,'2018-07-21 09:39:46','2018-07-21 09:39:46'),(24,'1','FCIT20FSZZECIDOXIR7E',801,'500','9.5','509.5','6.37',NULL,NULL,0,0,'2018-07-21 09:40:38','2018-07-21 09:40:38'),(25,'1','WPW2FOFQKFIZFMEITPT9',801,'500','9.5','509.5','6.37',NULL,NULL,0,0,'2018-07-21 09:48:49','2018-07-21 09:48:49'),(26,'1','7GWVACIC7EUCKOTDSGIS',802,'500','15.75','515.75','6.45',NULL,NULL,0,0,'2018-07-21 09:52:27','2018-07-21 09:52:27'),(27,'11','9JYZCEXUYMEARDMV9PFF',103,'500','14','514','514',NULL,NULL,0,0,'2018-07-24 14:08:39','2018-07-24 14:08:39'),(28,'11','XSUXQFSBSRYDNNKKMDYR',102,'500','16.75','516.75','516.75','0','',0,0,'2018-07-24 14:13:15','2018-07-24 14:13:15'),(29,'11','0HJ2JSRL36MB3TKPIWNS',101,'500','9.5','7.2785714285714285','7.2785714285714285','0','',0,0,'2018-07-24 14:17:35','2018-07-24 14:17:35'),(30,'11','N9PVDXRMZJ7IWDZTV68U',102,'500','16.75','516.75','516.75','0','',0,0,'2018-07-24 14:18:22','2018-07-24 14:18:22'),(31,'11','AGYWHWBVLBCANTXV4112',103,'500','14','514','514','0','',0,0,'2018-07-25 07:22:39','2018-07-25 07:22:39'),(32,'11','CIUX8KSAJWWUIHMXCRD5',103,'100','5.2','1.3662337662337662','1.3662337662337662','0','',0,0,'2018-07-25 07:24:17','2018-07-25 07:24:17'),(33,'11','LZPGG4P0ZZYESTCXEF5L',103,'300','9.6','4.020779220779221','4.020779220779221','0','',1,0,'2018-07-25 07:28:44','2018-07-25 07:44:17'),(34,'11','UOTD2IIV5N0AEPHCHSXP',101,'500','9.5','7.2785714285714285','7.2785714285714285','0','',0,0,'2018-07-25 07:46:35','2018-07-25 07:46:35'),(35,'11','QSKJGAUVJWZR3TTNVWJW',102,'500','16.75','516.75','516.75','0','',0,0,'2018-07-25 07:48:11','2018-07-25 07:48:11'),(36,'11','V9PI3ASCNLTEBOGXKEUT',104,'100','3.75','103.75','103.75','0','',0,0,'2018-07-25 07:56:47','2018-07-25 07:56:47'),(37,'11','XKQYOCEMSEEHGOYWEXYI',501,'500','2.5','502.5','502.5','0','',0,0,'2018-07-25 07:57:00','2018-07-25 07:57:00'),(38,'11','0EMGFWEUWPY8QSG22ULL',502,'500','7','7.242857142857143','7.242857142857143','0','',0,0,'2018-07-25 07:57:11','2018-07-25 07:57:11'),(39,'11','JKSXBLPASKLKSI1U6WS1',501,'500','2.5','502.5','502.5','0.06028476','fjshadkhfjhsadkjfhjksadhfjksajkdsdaf',0,0,'2018-07-25 07:57:40','2018-07-25 07:57:43'),(40,'11','U0H7CBLGK0YZF1JTPDV2',502,'500','7','7.242857142857143','7.242857142857143','0.00086896','3KZy1tMwrZVfxAcFTdUPi7NQEirNjhev5X',0,0,'2018-07-25 07:59:22','2018-07-25 07:59:26'),(41,'11','Z8IHXR5JQSXC28QSML1U',504,'100','3','1.4714285714285715','1.4714285714285715','424.84107644','A7yy3CioiHbaioorzvwkNuQgENT8NP6etB',0,0,'2018-07-25 07:59:36','2018-07-25 07:59:39'),(42,'11','YVAKCFTXWK4L814NYJ8L',508,'500','7','7.242857142857143','7.242857142857143','0.02889832','XhSM7iiSUHea8QuVo36awTsouojMjkx1gg',0,0,'2018-07-25 07:59:52','2018-07-25 07:59:56'),(43,'11','JLHJNGJTCGGXLWYE3DKJ',512,'500','7','7.242857142857143','7.242857142857143','0','',0,0,'2018-07-25 08:00:05','2018-07-25 08:00:05'),(44,'11','RP8GGYLZC90YCU6QDQ0V',513,'344','5.44','349.44','349.44','0','',0,0,'2018-07-25 08:34:41','2018-07-25 08:34:41'),(45,'11','EDYXZYEJTYLU8VZGUK1M',801,'500','9.5','509.5','6.37',NULL,NULL,0,0,'2018-07-25 08:35:10','2018-07-25 08:35:10'),(46,'11','RF3A85RM9U5JH2PPOQ87',801,'500','9.5','509.5','6.37',NULL,NULL,0,0,'2018-07-25 08:36:12','2018-07-25 08:36:12'),(47,'11','KFCLMLMTNI4Z1W7BSYZO',801,'500','9.5','509.5','6.37',NULL,NULL,0,0,'2018-07-25 08:36:48','2018-07-25 08:36:48'),(48,'11','HCWWHY0CULQFTIJGR9OY',801,'500','9.5','509.5','6.37',NULL,NULL,0,0,'2018-07-25 08:39:28','2018-07-25 08:39:28'),(49,'11','HX20EDCHNREZU7ODOKAD',801,'500','9.5','509.5','6.37',NULL,NULL,0,0,'2018-07-25 08:40:02','2018-07-25 08:40:02'),(50,'11','NGHFBZEPPXZH96GHEGRH',801,'500','9.5','509.5','6.37',NULL,NULL,0,0,'2018-07-25 08:40:19','2018-07-25 08:40:19'),(51,'11','VPMLAOAQDTVEXCCXF7YT',801,'500','9.5','509.5','6.37',NULL,NULL,0,0,'2018-07-25 08:40:36','2018-07-25 08:40:36'),(52,'11','UU612V9FLFSUQWFOSODX',512,'500','7','7.242857142857143','7.242857142857143','0','',0,0,'2018-07-25 08:41:12','2018-07-25 08:41:12'),(53,'11','BSJF9LHGA6I9DYNMFLP4',103,'500','14','6.675324675324675','6.675324675324675','0','',1,0,'2018-07-25 08:41:45','2018-07-25 08:42:45');
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `id` int(10) unsigned NOT NULL,
  `main_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `minamo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `maxamo` varchar(190) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `rate` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fix` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percent` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `val1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `val2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Method Currency',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (101,'PayPal','PayPal','5b56d85b48870.jpg','10','1000','70','2','1.5','rexrifat636@gmail.com',NULL,'Method Currency',1,NULL,'2018-07-24 07:42:19'),(102,'Perfect Money','Perfect Money','5b56d8632d344.jpg','10','1000','1','3','2.75','U5220203','reg4e54h1grt1j','Method Currency',1,NULL,'2018-07-24 07:42:27'),(103,'Stripe','CARD','5b56d86af3351.jpg','5','10000','77','3','2.20','sk_test_aat3tzBCCXXBkS4sxY3M8A1B','pk_test_AU3G7doZ1sbdpJLj0NaozPBu','Method Currency',1,NULL,'2018-07-24 07:42:34'),(104,'Skrill','Skrill','5b56d872061fa.jpg','10','1000','1','2','1.75','support@globeskill.com','jabali2006','Method Currency',1,'2017-12-12 18:00:00','2018-07-24 07:42:42'),(501,'Blockchain.info','Bitcoin Blockchain','5b56da319c2cc.jpg','0','1000','1','0','0.5','8df2e5a0-3798-4b74-871d-973615b57e7b','xpub6CXLqfWXj1xgbYB8Pmg12ET6CGKPKfAJSXaizSWRLzUz9xf9wFJuXR2M4XQ1ThdcgyFN4Ej8zj6BjDoXEf2AikNGiYkSCG8vkCx4ZeFrZah','Method Currency',1,NULL,'2018-07-24 07:50:09'),(502,'block.io - BTC','BitCoin','5b56da3a49537.jpg','50','1000','70','2','1','1658-8015-2e5e-9afb','09876softk','Method Currency',1,'2018-07-18 18:00:00','2018-07-24 07:50:18'),(503,'block.io - LTC','LiteCoin','5b56da5becdb3.jpg','50','1000','70','2','1','cb91-a5bc-69d7-1c27','09876softk','Method Currency',1,'2018-07-18 18:00:00','2018-07-24 07:50:51'),(504,'block.io - DOGE','DogeCoin','5b56da5372395.jpg','50','1000','70','2','1','2daf-d165-2135-5951','09876softk','Method Currency',1,'2018-07-18 18:00:00','2018-07-24 07:50:43'),(505,'CoinPayment - BTC','BitCoin','5b56da6c1b871.jpg','50','1000','70','2','1','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44','Method Currency',1,'2018-07-18 18:00:00','2018-07-24 07:51:08'),(506,'CoinPayment - ETH','Etherium','5b56da74ba141.jpg','50','1000','70','2','1','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44','Method Currency',1,'2018-07-18 18:00:00','2018-07-24 07:51:16'),(507,'CoinPayment - BCH','Bitcoin Cash','5b56da82e20e8.jpg','50','1000','70','2','1','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44','Method Currency',1,'2018-07-18 18:00:00','2018-07-24 07:51:30'),(508,'CoinPayment - DASH','DASH','5b56da8c66107.jpg','50','1000','70','2','1','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44','Method Currency',1,'2018-07-18 18:00:00','2018-07-24 07:51:40'),(509,'CoinPayment - DOGE','DOGE','5b56e45b13947.jpg','50','1000','70','2','1','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44','Method Currency',1,'2018-07-18 18:00:00','2018-07-24 08:33:31'),(510,'CoinPayment - LTC','LITECOIN','5b56e46867a1c.jpg','50','1000','70','2','1','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44','Method Currency',1,'2018-07-18 18:00:00','2018-07-24 08:33:44'),(512,'CoinGate','CoinGate','5b56e4704e2f7.jpg','50','1000','70','2','1','Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N',NULL,'Method Currency',1,'2018-07-18 18:00:00','2018-07-24 08:33:52'),(513,'CoinPayments-ALL','Bitcoin CoinPayment','5b56e478c8e77.jpg','10','1000','1','2','1','db1d9f12444e65c921604e289a281c56',NULL,'Method Currency',1,NULL,'2018-07-24 08:34:00'),(801,'0','City Bank','5b56e49992c02.png','0','0','80','2','1.5','ifsoufiosufg iougiousaioug asguiouasoguoisaugoiug',NULL,'BDT',1,'2018-07-19 13:51:03','2018-07-24 08:34:26'),(802,'0','Perfect Bank','5b56e49992c02.png','0','0','80','2','2.75','fsjlsjfjslkajfklasjf sajflksajflkjsadkljflksajdf sdaklfjlksajdflk',NULL,'BDT',1,'2018-07-19 13:54:13','2018-07-24 08:34:33');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maximum` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `compound_id` int(5) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'Starter','1506089926.png','500','75000','150',1,3,1,'2017-06-13 22:25:33','2017-10-24 07:34:43'),(2,'Silver','1508829595.png','750004','100000','200',1,3,1,'2017-06-13 22:37:42','2017-10-24 07:19:55'),(3,'Gold','1506089898.png','100000','1250000','3',100,1,1,'2017-06-13 22:41:00','2017-09-22 08:18:18'),(4,'Platinum','1506089875.png','1250000','1500000','160',1,4,1,'2017-06-13 22:41:54','2017-09-22 08:17:56'),(5,'test plan','1508837851.png','20','200','10',10,3,1,'2017-10-24 09:37:31','2017-10-24 09:37:31'),(7,'SDFGFG','1508846773.png','5220','120','20',20,1,1,'2017-10-24 12:06:13','2017-10-24 12:06:13');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Metal','2017-11-06 06:47:12','2017-11-06 06:47:12'),(2,'Jewellery','2017-10-29 04:47:33','2017-10-28 06:24:13');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `trade_status` tinyint(4) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Pure Gold','1509014805-product.jpg',1000,'Gold imported from Saudi Arabia this is extended adfsad f df adsf ds df af df df f',1,1,1,'2017-11-06 06:04:41','2017-11-06 06:04:41'),(9,'Diamond','1509014784-product.jpg',150,'this is diamond',1,0,1,'2017-11-06 07:44:13','2017-11-06 07:44:13'),(10,'Ear ring','1509172850-product.jpg',15000,'Ear ring with pure diamond ball in middle',1,1,2,'2017-11-06 09:02:03','2017-11-06 09:02:03'),(11,'Baslet','1509951054-product.jpg',1250,'Diamond Baslet',1,1,1,'2017-11-06 07:40:11','2017-11-06 07:40:11');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (1,'ATXTSVJNPZXQAXZMIDLM','1500',0,4,1,'2017-10-27 15:03:24','2017-10-27 15:03:24'),(2,'1SV0S9AOPSAIKEFHUBU5','1500',0,4,1,'2017-10-27 05:29:30','2017-10-27 05:29:30'),(3,'NDXI1ULEJTMX5E8L311N','1500',0,4,1,'2017-10-27 05:30:16','2017-10-27 05:30:16'),(4,'J5WOKID4SMO4G84PU7YL','1500',0,4,1,'2017-10-27 05:30:43','2017-10-27 05:30:43'),(5,'4UI9A8HZLI2ACBPC8GPU','1500',0,4,1,'2017-10-27 15:03:24','2017-10-27 15:03:24'),(6,'RRJNQUPCTJYHQHWF9YYA','1500',0,4,1,'2017-10-27 05:32:10','2017-10-27 05:32:10'),(7,'6HAOGAJS7OGYXAXPUYQR','1500',0,4,1,'2017-10-28 06:02:56','2017-10-28 06:02:56'),(8,'2TUFGAETLM32AGBNBIFM','1500',0,4,1,'2017-10-27 05:33:06','2017-10-27 05:33:06'),(9,'TUJZMJRGLM5KDIYMARKE','150',0,4,9,'2017-10-27 05:36:14','2017-10-27 05:36:14'),(10,'MQJ8MTURMWAH9PSXIM5N','150',0,4,9,'2017-10-27 05:37:18','2017-10-27 05:37:18'),(11,'CIKI2E1X9UHJZ9RCCFMZ','150',0,4,9,'2017-10-28 06:11:13','2017-10-28 06:11:13'),(12,'FGRDFX9ETMCN5MSLGYDD','1500',0,4,1,'2017-10-27 05:51:22','2017-10-27 05:51:22'),(13,'UQ5IKS5NJWVYHWBUEE0K','1500',0,4,1,'2017-10-27 05:51:48','2017-10-27 05:51:48'),(14,'5Y6QPEGGXK2QTIZEG6ZQ','1500',0,4,1,'2017-10-27 05:51:51','2017-10-27 05:51:51'),(15,'RKGLZ8WVGVAEJC2LFDAC','1500',0,4,1,'2017-10-27 15:04:01','2017-10-27 15:04:01'),(16,'8IH9QEVSKLDXMA92CV8N','1500',0,4,1,'2017-10-27 15:04:01','2017-10-27 15:04:01'),(17,'KDTKP0Q3HESZDTX8JWLY','1500',0,4,1,'2017-10-27 05:52:27','2017-10-27 05:52:27'),(18,'D210VISLCR0DAG16SMVH','1500',0,4,1,'2017-10-27 05:52:41','2017-10-27 05:52:41'),(19,'CB7W6QMIWLPGGB1MLXQI','1500',0,4,1,'2017-10-27 05:52:48','2017-10-27 05:52:48'),(20,'NDL64DI5ZBMAJEX3WO7M','1500',0,4,1,'2017-10-27 05:53:11','2017-10-27 05:53:11'),(21,'A4VROA4UAZESK66RLT4B','1500',0,4,1,'2017-10-27 05:53:14','2017-10-27 05:53:14'),(22,'1OSDXVRPNEYVVOLEMMFG','1500',0,4,1,'2017-10-28 06:02:56','2017-10-28 06:02:56'),(23,'6JMBDGMCTRYYJEWVBDR9','1500',0,4,1,'2017-10-27 05:53:46','2017-10-27 05:53:46'),(24,'IWLICDIX4ECZBCJNU5QJ','1500',0,4,1,'2017-10-27 05:54:07','2017-10-27 05:54:07'),(25,'XGMI1X52KDVZVC8WZRE9','1500',0,4,1,'2017-10-27 05:54:11','2017-10-27 05:54:11'),(26,'4WDH6OIVZM5SZJLA97AY','1500',0,4,1,'2017-10-27 05:55:10','2017-10-27 05:55:10'),(27,'W6O43MSVLJBWGX9CWW1I','1500',0,4,1,'2017-10-27 05:55:12','2017-10-27 05:55:12'),(28,'S0KXP1SRXJHJYIKKDKDF','1500',0,4,1,'2017-10-27 05:55:28','2017-10-27 05:55:28'),(29,'8FKF85NY9X4JUOHCEQCQ','1500',0,4,1,'2017-10-27 05:55:30','2017-10-27 05:55:30'),(30,'FVDY09VCUWRKOEHTL6NE','1500',0,4,1,'2017-10-27 05:55:39','2017-10-27 05:55:39'),(31,'CF953BGLJQDPNNSHMINU','1500',0,4,1,'2017-10-27 05:55:42','2017-10-27 05:55:42'),(32,'PQJSZLKP4EXNRIW8C00D','1500',0,4,1,'2017-10-27 05:55:53','2017-10-27 05:55:53'),(33,'UWMF1OOFW8HPRN3KRITW','1500',0,4,1,'2017-10-27 05:56:09','2017-10-27 05:56:09'),(34,'GVYE9F954CJSS1LAC47T','1500',0,4,1,'2017-10-27 05:56:42','2017-10-27 05:56:42'),(35,'C4Q7UIMTQIBCIMJXBCSY','1500',0,4,1,'2017-10-27 05:56:48','2017-10-27 05:56:48'),(36,'ZJJLGQXKWJXQGFI5B0VH','1500',0,4,1,'2017-10-27 05:56:57','2017-10-27 05:56:57'),(37,'4AAPUYXT20628SVF3WVN','1500',0,4,1,'2017-10-27 05:58:17','2017-10-27 05:58:17'),(38,'7VXYYCA9G2AVHEC8XFSA','150',0,4,9,'2017-10-27 05:58:23','2017-10-27 05:58:23'),(39,'IQ5SZHDWM4PJSGXO7HU8','150',0,4,9,'2017-10-27 05:59:17','2017-10-27 05:59:17'),(40,'DQ0WZNWMA0C3PKRJFUBI','1500',0,4,1,'2017-10-27 05:59:26','2017-10-27 05:59:26'),(41,'TBWGQDV51H2AOM8COEAN','1500',0,4,1,'2017-10-27 06:02:26','2017-10-27 06:02:26'),(42,'SBDVOW4UNHFPLAGNJAXS','150',0,4,9,'2017-10-27 13:32:13','2017-10-27 13:32:13'),(43,'LG625YADAAUTRF6EXGG6','150',0,4,9,'2017-10-27 13:32:20','2017-10-27 13:32:20'),(44,'KXJTBE2BYRZKYYRQE74N','1500',0,4,1,'2017-10-27 13:32:35','2017-10-27 13:32:35'),(45,'FAXKGC29QC1PBONSNQZA','15',0,4,1,'2017-10-28 06:02:56','2017-10-28 06:02:56'),(46,'GO5UZH44HLUKYZ26W32J','150',0,4,9,'2017-10-28 06:11:13','2017-10-28 06:11:13'),(47,'5FIPE2DQEJOPZRANIJ6X','150',0,4,9,'2017-10-28 06:11:13','2017-10-28 06:11:13'),(48,'KVIQX3WCKLRUZJ7JMCM9','53',0,4,1,'2017-10-28 06:02:56','2017-10-28 06:02:56'),(49,'AYBIDD7JAKV133SYI5GX','53',0,4,1,'2017-10-28 06:08:35','2017-10-28 06:08:35'),(50,'UZFVH751U5VCWNY0NO5C','150',0,4,9,'2017-10-28 06:11:13','2017-10-28 06:11:13'),(51,'9PBHCDYS7E4RAI4ABJZM','53',0,4,1,'2017-10-28 06:10:39','2017-10-28 06:10:39'),(52,'JN2GETQR5HHJMZF9RKGX','150',0,4,9,'2017-10-28 06:11:34','2017-10-28 06:11:34'),(53,'BLNFSRCZXDVEYIXRDY7X','15000',0,4,10,'2017-10-28 09:28:08','2017-10-28 09:28:08'),(54,'M1WTHUKDNFTD6OXYUYRI','15000',0,4,10,'2017-10-28 09:28:08','2017-10-28 09:28:08'),(55,'7PXXABKZ45OV6UYZGHPV','15000',0,4,10,'2017-10-28 09:32:56','2017-10-28 09:32:56'),(56,'DI3HPLRUPQU0YMPL3NLY','53',0,4,1,'2017-10-28 09:34:29','2017-10-28 09:34:29'),(57,'KEW4NSRYGAGZIITGNEGI','150',0,4,9,'2017-10-28 09:34:10','2017-10-28 09:34:10'),(58,'SUMME5FMAZ7WZHLQXVQZ','15000',0,4,10,'2017-10-29 05:55:13','2017-10-29 05:55:13'),(59,'IJOKIV2ZELPN2ITGQMZ4','53',0,4,1,'2017-10-29 03:44:37','2017-10-29 03:44:37'),(60,'D5IVEYNHYMYORWJZ4WHP','150',0,4,9,'2017-10-29 05:56:24','2017-10-29 05:56:24'),(61,'2FXZW7OACN5NZN87HFW4','53',0,4,1,'2017-10-29 05:57:59','2017-10-29 05:57:59'),(62,'GHVNFBP9C8LFI7GB0XB5','53',0,7,1,'2017-10-29 08:27:21','2017-10-29 08:27:21'),(63,'NMKBMTITN38FDIONL6YY','53',0,7,1,'2017-10-29 08:36:18','2017-10-29 08:36:18'),(64,'JMLOHCU46D5GFUWT3VZK','53',0,7,1,'2017-10-29 08:41:23','2017-10-29 08:41:23'),(65,'UKTKXVLF2HB5XZSJAP2Q','150',0,4,9,'2017-10-29 08:41:36','2017-10-29 08:41:36'),(66,'7KBGA1WBCBML72RFPKJF','53',0,7,1,'2017-10-29 08:41:23','2017-10-29 08:41:23'),(67,'ZEJWJ24CVDV909IPYCWJ','4000',0,7,1,'2017-10-29 09:07:23','2017-10-29 09:07:23'),(68,'V4TC8R4BBUK9V3GXXCGQ','1000',0,7,1,'2017-10-29 09:11:02','2017-10-29 09:11:02'),(69,'MMI8WYXBA466TVAHWXZL','1000',0,4,1,'2017-10-29 10:16:43','2017-10-29 10:16:43'),(70,'JOJR2OXT8TPWW0EFLTKQ','150',0,4,9,'2017-11-05 09:53:47','2017-11-05 09:53:47'),(71,'RBA0JDJVYHJGLZHW8ENI','150',0,4,9,'2017-11-05 09:54:41','2017-11-05 09:54:41'),(72,'M9M2X4H3X3MQANN7A1QQ','15000',0,4,10,'2017-11-05 10:22:53','2017-11-05 10:22:53'),(73,'PYMBNMEPI59JR8T4JSCH','150',0,7,9,'2017-11-05 10:23:02','2017-11-05 10:23:02'),(74,'I0OLH5Y8U5OJIIKL0FQW','150',0,7,9,'2017-11-05 10:23:02','2017-11-05 10:23:02'),(75,'4P7HTYUQBPTZZP9SAAB5','1000',0,7,1,'2017-11-05 10:23:10','2017-11-05 10:23:10'),(76,'Q3VMCJF0NZIHDN0XDDKH','150',0,7,9,'2017-11-05 10:23:02','2017-11-05 10:23:02'),(77,'6QLNGWMABUBPQXHBGOV2','15000',0,4,10,'2017-11-05 10:22:53','2017-11-05 10:22:53'),(78,'DB6H6QSB6NTLN3HQVFQC','150',0,7,9,'2017-11-05 10:58:02','2017-11-05 10:58:02'),(79,'NLB941DOXPYYCG9VXXEA','15000',0,4,10,'2017-11-05 11:57:37','2017-11-05 11:57:37'),(80,'FJJGKGF8SRVWFTP6ZB0G','15000',0,4,10,'2017-11-06 06:04:57','2017-11-06 06:04:57'),(81,'Z0Z6SXHA1XYC5PLQZKQN','1000',1,4,1,'2017-11-06 06:04:41','2017-11-06 06:04:41'),(82,'ASOHA7FU2W8LCIZJYVYX','150',0,10,9,'2017-11-06 06:53:51','2017-11-06 06:53:51'),(83,'YDK3NPC2UFS7EOIJHH6S','1000',1,7,1,'2017-11-06 06:16:52','2017-11-06 06:16:52'),(84,'YM9PIMYS8U9ENRVB3R5B','1250',1,7,11,'2017-11-06 07:40:11','2017-11-06 07:40:11'),(85,'N5T8KAZ2LYHHLVNTSPQP','150',0,8,9,'2017-11-06 07:44:13','2017-11-06 07:44:13');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repeat_logs`
--

DROP TABLE IF EXISTS `repeat_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repeat_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `trx_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `investment_id` int(11) NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `made_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repeat_logs`
--

LOCK TABLES `repeat_logs` WRITE;
/*!40000 ALTER TABLE `repeat_logs` DISABLE KEYS */;
INSERT INTO `repeat_logs` VALUES (1,4,'NOZTXUT8ZAC3OGWNIPC2',2,'750','2017-10-22 17:17:07','2017-10-22 11:17:07','2017-10-22 11:17:07'),(2,4,'3NSFZT8FEZJMDQFHXU36',9,'750','2017-10-22 17:19:00','2017-10-22 11:19:00','2017-10-22 11:19:00'),(3,4,'RG1WRIBUL6IMPPKWJI9H',9,'750','2017-10-22 17:19:42','2017-10-22 11:19:42','2017-10-22 11:19:42'),(4,4,'9EXDF92GHTGYI3DWJNIP',9,'50','2017-10-24 15:54:07','2017-10-24 09:54:07','2017-10-24 09:54:07'),(5,4,'T03PGRH2CMGTMJVNU5YE',11,'750','2017-10-24 16:18:47','2017-10-24 10:18:47','2017-10-24 10:18:47');
/*!40000 ALTER TABLE `repeat_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repeats`
--

DROP TABLE IF EXISTS `repeats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repeats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `investment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `repeat_time` datetime NOT NULL,
  `made_time` datetime DEFAULT NULL,
  `total_repeat` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repeats`
--

LOCK TABLES `repeats` WRITE;
/*!40000 ALTER TABLE `repeats` DISABLE KEYS */;
INSERT INTO `repeats` VALUES (1,4,'1','2017-10-29 12:31:07',NULL,0,0,'2017-10-22 06:31:07','2017-10-22 06:31:07'),(2,4,'2','2017-10-29 17:17:07','2017-10-22 17:17:07',1,1,'2017-10-22 06:33:01','2017-10-22 11:17:08'),(3,4,'3','2017-10-29 12:35:13',NULL,0,0,'2017-10-22 06:35:13','2017-10-22 06:35:13'),(4,4,'4','2017-10-29 12:48:15',NULL,0,0,'2017-10-22 06:48:15','2017-10-22 06:48:15'),(5,4,'5','2017-10-29 12:54:14',NULL,0,0,'2017-10-22 06:54:14','2017-10-22 06:54:14'),(6,4,'6','2017-10-29 14:49:17',NULL,0,0,'2017-10-22 08:49:17','2017-10-22 08:49:17'),(7,4,'7','2017-10-29 15:14:07',NULL,0,0,'2017-10-22 09:14:07','2017-10-22 09:14:07'),(8,5,'8','2017-10-29 17:05:40',NULL,0,0,'2017-10-22 11:05:40','2017-10-22 11:05:40'),(9,4,'9','2017-10-31 15:54:07','2017-10-24 15:54:07',3,0,'2017-10-22 11:18:40','2017-10-24 09:54:07'),(10,4,'10','2017-10-30 11:15:58',NULL,0,0,'2017-10-23 05:15:58','2017-10-23 05:15:58'),(11,4,'11','2017-10-31 16:18:47','2017-10-24 16:18:47',1,1,'2017-10-24 04:04:36','2017-10-24 10:18:47');
/*!40000 ALTER TABLE `repeats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Supper Fast Repeat','<i class=\"fa fa-rocket\" aria-hidden=\"true\"></i>','2017-09-27 23:35:45','2017-09-27 23:35:45'),(2,'EASY SETUP','<i class=\"fa fa-wrench\" aria-hidden=\"true\"></i>','2017-09-27 23:35:59','2017-11-06 09:13:55'),(3,'INVESTMENT','<i class=\"fa fa-money\" aria-hidden=\"true\"></i>','2017-09-27 23:36:08','2017-11-06 09:14:10'),(4,'WITHDRAW','<i class=\"fa fa-cloud-upload\" aria-hidden=\"true\"></i>','2017-09-27 23:36:15','2017-11-06 09:14:27'),(5,'Buy Trade','<i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>','2017-09-27 23:36:23','2017-11-06 09:15:22'),(6,'Trade Bonus','<i class=\"fa fa-connectdevelop\" aria-hidden=\"true\"></i>','2017-09-27 23:36:30','2017-11-06 09:16:20'),(7,'All Statistics','<i class=\"fa fa-history\" aria-hidden=\"true\"></i>','2017-09-27 23:36:39','2017-11-06 09:16:56'),(8,'Buy Trade','<i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i>','2017-11-06 09:17:15','2017-11-06 09:17:35');
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
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (5,'5a00272bd2ce0.jpg','Trade and Gain','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s','2017-10-17 06:04:53','2017-11-06 09:11:53'),(6,'5a00273936fca.jpg','Easy Deposit','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s','2017-10-17 06:06:15','2017-11-06 09:11:58');
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
INSERT INTO `socials` VALUES (3,'Facebook','<i class=\"fa fa-facebook\" aria-hidden=\"true\"></i>','https://www.facebook.com/thesoftking','2017-08-19 12:25:30','2017-10-17 06:11:24'),(5,'twitter','<i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>','https://twitter.com/thesoftking','2017-08-19 12:29:52','2017-08-19 12:29:52'),(6,'linkedin','<i class=\"fa fa-linkedin\" aria-hidden=\"true\"></i>','http://thesoftking.com/contact#','2017-08-19 12:30:23','2017-08-19 12:30:23'),(7,'google plus','<i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i>','http://thesoftking.com/contact#','2017-08-19 12:32:35','2017-08-19 12:32:35'),(8,'instragram','<i class=\"fa fa-instagram\" aria-hidden=\"true\"></i>','#','2017-08-19 13:28:44','2017-11-06 07:23:43');
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_messages`
--

DROP TABLE IF EXISTS `support_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `support_id` int(11) NOT NULL,
  `ticket_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_messages`
--

LOCK TABLES `support_messages` WRITE;
/*!40000 ALTER TABLE `support_messages` DISABLE KEYS */;
INSERT INTO `support_messages` VALUES (1,1,'JFPTSF0OCSEO','hello this is test issue',1,'2017-10-22 08:36:26','2017-10-22 08:36:26'),(2,1,'JFPTSF0OCSEO','ok i will check it later',2,'2017-10-22 08:36:53','2017-10-22 08:36:53'),(3,2,'09ZWDIJH5ASF','sadfsadf',1,'2017-10-22 08:39:01','2017-10-22 08:39:01'),(4,3,'IHQYV6TRYDJ2','SADF',1,'2017-10-22 08:48:31','2017-10-22 08:48:31'),(5,3,'IHQYV6TRYDJ2','asdfdsaf',1,'2017-10-22 09:36:01','2017-10-22 09:36:01'),(6,4,'GI1AASKVI8NQ','sadf',1,'2017-10-22 09:36:16','2017-10-22 09:36:16');
/*!40000 ALTER TABLE `support_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supports`
--

DROP TABLE IF EXISTS `supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supports`
--

LOCK TABLES `supports` WRITE;
/*!40000 ALTER TABLE `supports` DISABLE KEYS */;
INSERT INTO `supports` VALUES (1,4,'getting some issue','JFPTSF0OCSEO',2,'2017-10-22 08:36:26','2017-10-22 08:36:53'),(2,4,'sadf','09ZWDIJH5ASF',1,'2017-10-22 08:39:01','2017-10-22 08:39:01'),(3,4,'ASDF','IHQYV6TRYDJ2',3,'2017-10-22 08:48:31','2017-10-22 09:36:01'),(4,4,'sadfasdf','GI1AASKVI8NQ',9,'2017-10-22 09:36:16','2017-10-22 09:46:12');
/*!40000 ALTER TABLE `supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` blob NOT NULL,
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
INSERT INTO `testimonials` VALUES (2,'Hasan Rahman','1506617979.jpg','CEO, Night Guard',_binary 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took.','2017-09-28 16:59:39','2017-09-28 16:59:39'),(3,'Usman Khaja','1506618005.png','Night Guard',_binary 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took.<br>','2017-09-28 17:00:05','2017-09-28 17:00:05'),(4,'Usman Khaja','1506618029.png','Night Guard',_binary 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took.<br>','2017-09-28 17:00:29','2017-09-28 17:00:29');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trades`
--

DROP TABLE IF EXISTS `trades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_price` varchar(255) NOT NULL,
  `new_price` varchar(255) NOT NULL,
  `gain_loss` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trades`
--

LOCK TABLES `trades` WRITE;
/*!40000 ALTER TABLE `trades` DISABLE KEYS */;
INSERT INTO `trades` VALUES (2,'12','15','0',1,'2017-10-28 04:48:03','2017-10-27 15:56:11'),(3,'15','20','0',9,'2017-10-28 04:48:07','2017-10-27 15:58:06'),(4,'15','20','0',1,'2017-10-28 04:48:09','2017-10-27 15:58:51'),(5,'15','20','0',1,'2017-10-28 04:48:11','2017-10-27 15:59:15'),(6,'15','20','0',1,'2017-10-28 04:48:13','2017-10-27 15:59:46'),(7,'15','20','0',1,'2017-10-28 04:48:16','2017-10-27 15:59:57'),(8,'15','20','0',9,'2017-10-28 04:48:18','2017-10-27 16:01:52'),(9,'15','25','0',1,'2017-10-28 04:48:21','2017-10-27 16:02:07'),(10,'25','52','0',1,'2017-10-28 04:48:23','2017-10-27 16:13:15'),(11,'52','53','0',9,'2017-10-28 04:48:25','2017-10-28 00:49:08'),(12,'53','55','0',1,'2017-10-28 04:48:27','2017-10-28 04:28:41'),(13,'53','55','-2850',1,'2017-10-28 04:30:40','2017-10-28 04:30:40'),(14,'55','53','-2856',1,'2017-10-28 04:47:39','2017-10-28 04:47:39'),(15,'53','55','-2848',1,'2017-10-28 06:02:56','2017-10-28 06:02:56'),(16,'53','151','0',1,'2017-10-28 06:07:09','2017-10-28 06:07:09'),(17,'53','155','0',1,'2017-10-28 06:07:45','2017-10-28 06:07:45'),(18,'53','52','-1',1,'2017-10-28 06:08:35','2017-10-28 06:08:35'),(19,'53','55','2',1,'2017-10-28 06:10:39','2017-10-28 06:10:39'),(20,'53','41','0',1,'2017-10-28 06:10:45','2017-10-28 06:10:45'),(21,'150','10','-560',9,'2017-10-28 06:11:13','2017-10-28 06:11:13'),(22,'150','1450','1300',9,'2017-10-28 06:11:34','2017-10-28 06:11:34'),(23,'15000','15500','1000',10,'2017-10-28 09:28:08','2017-10-28 09:28:08'),(24,'15000','16000','1000',10,'2017-10-28 09:32:56','2017-10-28 09:32:56'),(25,'150','200','50',9,'2017-10-28 09:34:10','2017-10-28 09:34:10'),(26,'53','153','100',1,'2017-10-28 09:34:29','2017-10-28 09:34:29'),(27,'53','52','-1',1,'2017-10-29 03:44:37','2017-10-29 03:44:37'),(28,'15000','14000','-1000',10,'2017-10-29 05:55:13','2017-10-29 05:55:13'),(29,'150','250','100',9,'2017-10-29 05:56:24','2017-10-29 05:56:24'),(30,'53','44','-9',1,'2017-10-29 05:57:59','2017-10-29 05:57:59'),(31,'53','2','-51',1,'2017-10-29 08:27:21','2017-10-29 08:27:21'),(32,'53','50','-3',1,'2017-10-29 08:36:18','2017-10-29 08:36:18'),(33,'53','52','-2',1,'2017-10-29 08:41:23','2017-10-29 08:41:23'),(34,'150','151','1',9,'2017-10-29 08:41:36','2017-10-29 08:41:36'),(35,'4000','3000','-1000',1,'2017-10-29 09:07:22','2017-10-29 09:07:22'),(36,'1000','500','-500',1,'2017-10-29 09:11:02','2017-10-29 09:11:02'),(37,'1000','900','-100',1,'2017-10-29 10:16:43','2017-10-29 10:16:43'),(38,'150','140','-10',9,'2017-11-05 09:53:47','2017-11-05 09:53:47'),(39,'150','130','-20',9,'2017-11-05 09:54:41','2017-11-05 09:54:41'),(40,'15000','15500','1000',10,'2017-11-05 10:22:53','2017-11-05 10:22:53'),(41,'150','300','450',9,'2017-11-05 10:23:02','2017-11-05 10:23:02'),(42,'1000','300','-700',1,'2017-11-05 10:23:10','2017-11-05 10:23:10'),(43,'150','180','-30',9,'2017-11-05 10:58:02','2017-11-05 10:58:02'),(44,'15000','16000','-1000',10,'2017-11-05 11:57:37','2017-11-05 11:57:37'),(45,'15000','12000','3000',10,'2017-11-06 06:04:57','2017-11-06 06:04:57'),(46,'150','145','5',9,'2017-11-06 06:53:51','2017-11-06 06:53:51'),(47,'150','152','-2',9,'2017-11-06 07:44:13','2017-11-06 07:44:13');
/*!40000 ALTER TABLE `trades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logins`
--

DROP TABLE IF EXISTS `user_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_logins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logins`
--

LOCK TABLES `user_logins` WRITE;
/*!40000 ALTER TABLE `user_logins` DISABLE KEYS */;
INSERT INTO `user_logins` VALUES (1,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-17 07:00:26','2017-10-17 07:00:26'),(2,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-17 07:06:25','2017-10-17 07:06:25'),(3,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-17 07:24:27','2017-10-17 07:24:27'),(4,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-17 09:14:01','2017-10-17 09:14:01'),(5,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-21 06:04:23','2017-10-21 06:04:23'),(6,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-21 08:11:25','2017-10-21 08:11:25'),(7,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-21 08:11:40','2017-10-21 08:11:40'),(8,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-21 08:14:06','2017-10-21 08:14:06'),(9,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-22 05:32:26','2017-10-22 05:32:26'),(10,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-22 05:34:21','2017-10-22 05:34:21'),(11,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-22 09:28:17','2017-10-22 09:28:17'),(12,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-22 10:00:09','2017-10-22 10:00:09'),(13,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-22 10:31:47','2017-10-22 10:31:47'),(14,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-23 04:32:48','2017-10-23 04:32:48'),(15,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-23 06:39:09','2017-10-23 06:39:09'),(16,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-24 06:39:11','2017-10-24 06:39:11'),(17,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-24 08:53:26','2017-10-24 08:53:26'),(18,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-24 10:41:22','2017-10-24 10:41:22'),(19,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-25 04:24:45','2017-10-25 04:24:45'),(20,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-26 09:20:58','2017-10-26 09:20:58'),(21,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-26 11:23:50','2017-10-26 11:23:50'),(22,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-26 11:52:14','2017-10-26 11:52:14'),(23,4,'::1',' -  -  -  ','Firefox on Mac OS X','2017-10-26 16:36:35','2017-10-26 16:36:35'),(24,4,'::1',' -  -  -  ','Chrome on Mac OS X','2017-10-27 03:01:03','2017-10-27 03:01:03'),(25,4,'::1',' -  -  -  ','Firefox on Mac OS X','2017-10-27 13:32:03','2017-10-27 13:32:03'),(26,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-28 05:14:46','2017-10-28 05:14:46'),(27,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-29 03:38:17','2017-10-29 03:38:17'),(28,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-29 05:53:14','2017-10-29 05:53:14'),(29,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-29 11:26:08','2017-10-29 11:26:08'),(30,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-30 05:00:55','2017-10-30 05:00:55'),(31,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-10-30 06:01:06','2017-10-30 06:01:06'),(32,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-11-01 09:37:45','2017-11-01 09:37:45'),(33,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-11-05 09:52:08','2017-11-05 09:52:08'),(34,7,'::1',' -  -  -  ','Chrome on Windows 10','2017-11-05 10:14:39','2017-11-05 10:14:39'),(35,7,'::1',' -  -  -  ','Chrome on Windows 10','2017-11-05 10:19:39','2017-11-05 10:19:39'),(36,7,'::1',' -  -  -  ','Chrome on Windows 10','2017-11-05 10:29:55','2017-11-05 10:29:55'),(37,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-11-05 11:47:47','2017-11-05 11:47:47'),(38,8,'::1',' -  -  -  ','Chrome on Windows 10','2017-11-06 05:07:06','2017-11-06 05:07:06'),(39,4,'::1',' -  -  -  ','Chrome on Windows 10','2017-11-06 05:07:54','2017-11-06 05:07:54'),(40,8,'::1',' -  -  -  ','Firefox on Windows 10','2017-11-06 05:10:08','2017-11-06 05:10:08'),(41,4,'::1',' -  -  -  ','Firefox on Windows 10','2017-11-06 06:15:45','2017-11-06 06:15:45'),(42,7,'::1',' -  -  -  ','Chrome on Windows 10','2017-11-06 06:16:15','2017-11-06 06:16:15'),(43,7,'::1',' -  -  -  ','Chrome on Windows 10','2017-11-06 07:40:04','2017-11-06 07:40:04'),(44,8,'::1',' -  -  -  ','Chrome on Windows 10','2017-11-06 07:41:08','2017-11-06 07:41:08'),(45,4,'::1',' -  -  -  ','Chrome on Windows 10','2017-11-06 08:33:02','2017-11-06 08:33:02'),(46,7,'::1',' -  -  -  ','Chrome on Windows 10','2017-11-06 08:59:04','2017-11-06 08:59:04'),(47,4,'::1',' -  -  -  ','Chrome on Windows 10','2017-11-06 09:34:20','2017-11-06 09:34:20'),(48,8,'59.153.31.22',' - 0 - Bangladesh - BD ','Firefox on Windows 10','2017-11-06 21:43:38','2017-11-06 21:43:38'),(49,4,'103.77.60.30',' - 0 - Bangladesh - BD ','Chrome on Mac OS X','2017-11-07 05:02:24','2017-11-07 05:02:24'),(50,4,'103.77.60.30',' - 0 - Bangladesh - BD ','Chrome on Mac OS X','2017-11-07 05:19:07','2017-11-07 05:19:07'),(51,11,'::1',' -  -  -  ','Chrome on Windows 10','2018-07-24 13:51:58','2018-07-24 13:51:58'),(52,11,'::1',' -  -  -  ','Chrome on Windows 10','2018-07-24 14:03:36','2018-07-24 14:03:36'),(53,11,'::1',' -  -  -  ','Chrome on Windows 10','2018-07-25 07:22:29','2018-07-25 07:22:29');
/*!40000 ALTER TABLE `user_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logs`
--

DROP TABLE IF EXISTS `user_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_type` tinyint(4) NOT NULL,
  `charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_bal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logs`
--

LOCK TABLES `user_logs` WRITE;
/*!40000 ALTER TABLE `user_logs` DISABLE KEYS */;
INSERT INTO `user_logs` VALUES (1,2,'PPMOXSRKDTD3UXCQNW2J','10',3,NULL,'10','10 BDT Bonus For Reference Join. ','2017-10-08 05:08:05','2017-10-08 05:08:05'),(2,4,'STSJEOFU60STGYAQN3SZ','100',1,'5.2','100','Deposit 100 BDT . By Credit Card.','2017-10-22 04:36:45','2017-10-22 04:36:45'),(3,4,'HEPAYL8ZQMONDTKI0LEJ','150000',1,'3303','150100','Deposit 150000 BDT . By Credit Card.','2017-10-22 06:30:01','2017-10-22 06:30:01'),(4,4,'TLWRPGZ5XPHQEG9VBEZL','1200',14,NULL,'148900','1200 BDT Invest Under Starter Plan.','2017-10-22 06:31:07','2017-10-22 06:31:07'),(5,4,'5STYCDDMMPDYRQONVRQU','500',14,NULL,'148400','500 BDT Invest Under Starter Plan.','2017-10-22 06:33:01','2017-10-22 06:33:01'),(6,4,'KVPXSHNKYCQUKP6PWISU','500',14,NULL,'147900','500 BDT Invest Under Starter Plan.','2017-10-22 06:35:13','2017-10-22 06:35:13'),(7,4,'9ST9G3WPHXL8HQDIZR9T','500',14,NULL,'147400','500 BDT Invest Under Starter Plan.','2017-10-22 06:48:15','2017-10-22 06:48:15'),(8,4,'74WYLM4H1DTL0YF3ETCR','500',14,NULL,'146900','500 BDT Invest Under Starter Plan.','2017-10-22 06:54:14','2017-10-22 06:54:14'),(9,4,'SABUXJ1WH8XMDCDGQ14U','1000',14,NULL,'145900','1000 BDT Invest Under Starter Plan.','2017-10-22 08:49:17','2017-10-22 08:49:17'),(10,4,'XLFZERPFSIEKFDS9XBXO','1200',5,'52','144700','1200 BDT Withdraw Request Send. Via bKash','2017-10-22 08:52:34','2017-10-22 08:52:34'),(11,4,'XLFZERPFSIEKFDS9XBXO','52',10,NULL,'144648','52 BDT Charged for Withdraw Request. Via bKash','2017-10-22 08:52:34','2017-10-22 08:52:34'),(12,4,'XLFZERPFSIEKFDS9XBXO','1200',6,NULL,'145848','1200 BDT Withdraw Refunded.','2017-10-22 08:53:09','2017-10-22 08:53:09'),(13,4,'XLFZERPFSIEKFDS9XBXO','52',10,NULL,'145900','52 BDT Withdraw Charge Refunded.','2017-10-22 08:53:09','2017-10-22 08:53:09'),(14,4,'JPMU5JLUNJ6XKF6RA4KY','1025',14,NULL,'144875','1025 BDT Invest Under Starter Plan.','2017-10-22 09:14:07','2017-10-22 09:14:07'),(15,4,'5ORHHBEIARDAANBSPCUJ','1025',5,'48.06','143850','1025 BDT Withdraw Request Send. Via bKash','2017-10-22 09:14:35','2017-10-22 09:14:35'),(16,4,'5ORHHBEIARDAANBSPCUJ','48.06',10,NULL,'143801.94','48.06 BDT Charged for Withdraw Request. Via bKash','2017-10-22 09:14:35','2017-10-22 09:14:35'),(17,4,'SOQ8I4HYGZ7E6TBOWTL9','1025',1,'25.55','144826.94','Deposit 1025 BDT . By Credit Card.','2017-10-22 09:15:20','2017-10-22 09:15:20'),(18,4,'FGEBVG7QGN4N7VVSBNMH','1022',1,'25.48','145848.94','Deposit 1022 BDT . By Credit Card.','2017-10-22 09:19:39','2017-10-22 09:19:39'),(19,4,'7OXOMTZ9DNMJY6FHHBEW','1025',5,'0','144823.94','1025 BDT Withdraw Request Send. Via Dutch Bangla Bank','2017-10-22 09:36:47','2017-10-22 09:36:47'),(20,4,'7OXOMTZ9DNMJY6FHHBEW','0',10,NULL,'144823.94','0 BDT Charged for Withdraw Request. Via Dutch Bangla Bank','2017-10-22 09:36:47','2017-10-22 09:36:47'),(21,4,'M0UV8OZ4TCGUIB97ZCBV','1520',5,'0','143303.94','1520 BDT Withdraw Request Send. Via Dutch Bangla Bank','2017-10-22 09:37:36','2017-10-22 09:37:36'),(22,4,'M0UV8OZ4TCGUIB97ZCBV','0',10,NULL,'143303.94','0 BDT Charged for Withdraw Request. Via Dutch Bangla Bank','2017-10-22 09:37:36','2017-10-22 09:37:36'),(23,4,'9BYQWDFP2FZW20HPMBVZ','1025',1,'25.55','144328.94','Deposit 1025 BDT . By Credit Card.','2017-10-22 09:39:47','2017-10-22 09:39:47'),(24,4,'OTBVGNKAJZPZGPU5UADL','1025',5,'48.58','143303.94','1025 BDT Withdraw Request Send. Via Sure Cash','2017-10-22 10:00:23','2017-10-22 10:00:23'),(25,4,'OTBVGNKAJZPZGPU5UADL','48.58',10,NULL,'143255.36000000002','48.58 BDT Charged for Withdraw Request. Via Sure Cash','2017-10-22 10:00:23','2017-10-22 10:00:23'),(26,4,'0BM3KUQXS2IW70IC5GUS','1500',5,'0','141755.36000000002','1500 BDT Withdraw Request Send. Via Dutch Bangla Bank','2017-10-22 10:53:45','2017-10-22 10:53:45'),(27,4,'0BM3KUQXS2IW70IC5GUS','0',10,NULL,'141755.36000000002','0 BDT Charged for Withdraw Request. Via Dutch Bangla Bank','2017-10-22 10:53:45','2017-10-22 10:53:45'),(28,4,'SZKTXPPZCTJNOXK68FQY','10',3,NULL,'141765.36000000002','10 BDT Bonus For Reference Join. ','2017-10-22 11:02:43','2017-10-22 11:02:43'),(29,5,'ASG8WXJQURV9VCHLHEOT','50000',1,'1103','50000','Deposit 50000 BDT . By Credit Card.','2017-10-22 11:04:35','2017-10-22 11:04:35'),(30,4,'ASG8WXJQURV9VCHLHEOT','2500',3,NULL,'144265.36000000002','Reference Deposit Bonus 2500 BDT . From - pialhh.','2017-10-22 11:04:35','2017-10-22 11:04:35'),(31,5,'ENBXLBB78Z7IYZRDJ9DM','1000',14,NULL,'49000','1000 BDT Invest Under Starter Plan.','2017-10-22 11:05:40','2017-10-22 11:05:40'),(32,4,'NOZTXUT8ZAC3OGWNIPC2','750',15,NULL,'145015.36000000002','Repeat 750 BDT. For Investment Plan - Starter.','2017-10-22 11:17:08','2017-10-22 11:17:08'),(33,4,'9UOX5XDDTRKSM8ZR0MZC','500',14,NULL,'144515.36000000002','500 BDT Invest Under test Plan.','2017-10-22 11:18:40','2017-10-22 11:18:40'),(34,4,'3NSFZT8FEZJMDQFHXU36','750',15,NULL,'145265.36000000002','Repeat 750 BDT. For Investment Plan - test.','2017-10-22 11:19:00','2017-10-22 11:19:00'),(35,4,'RG1WRIBUL6IMPPKWJI9H','750',15,NULL,'146015.36000000002','Repeat 750 BDT. For Investment Plan - test.','2017-10-22 11:19:42','2017-10-22 11:19:42'),(36,4,'7TRRLFFPGT1LU4N7HW8N','500',5,'0','145515.36000000002','500 BDT Withdraw Request Send. Via Dutch Bangla Bank','2017-10-22 11:24:32','2017-10-22 11:24:32'),(37,4,'7TRRLFFPGT1LU4N7HW8N','0',10,NULL,'145515.36000000002','0 BDT Charged for Withdraw Request. Via Dutch Bangla Bank','2017-10-22 11:24:32','2017-10-22 11:24:32'),(38,4,'0QS5Q8H4BY7CZNHFEAHL','1500',14,NULL,'144015.36000000002','1500 BDT Invest Under Starter Plan.','2017-10-23 05:15:58','2017-10-23 05:15:58'),(39,4,'FZODUGLJ8SCN0HWVSV9Z','500',14,NULL,'143515.36000000002','500 BDT Invest Under Starter Plan.','2017-10-24 04:04:36','2017-10-24 04:04:36'),(40,4,'MWQJ9OBMZFCWPQGTI5KF','10',3,NULL,'143525.36000000002','10 BDT Bonus For Reference Join. ','2017-10-24 08:54:10','2017-10-24 08:54:10'),(41,6,'HWWXYJ6AIT82BOONPIE3','1520',1,'86','1520','Deposit 1520 BDT . By Manual BTC.','2017-10-24 09:00:02','2017-10-24 09:00:02'),(42,6,'HWWXYJ6AIT82BOONPIE3','1520',1,'86','1520','Deposit 1520 BDT . By Manual BTC.','2017-10-24 09:03:01','2017-10-24 09:03:01'),(43,6,'HWWXYJ6AIT82BOONPIE3','1520',1,'86','1520','Deposit 1520 BDT . By Manual BTC.','2017-10-24 09:04:24','2017-10-24 09:04:24'),(44,6,'HWWXYJ6AIT82BOONPIE3','1520',1,'86','1520','Deposit 1520 BDT . By Manual BTC.','2017-10-24 09:04:41','2017-10-24 09:04:41'),(45,6,'HWWXYJ6AIT82BOONPIE3','1520',1,'86','1520','Deposit 1520 BDT . By Manual BTC.','2017-10-24 09:10:29','2017-10-24 09:10:29'),(46,4,'WRUEGA68BHPDZNYJQ2H9','10025',1,'280.63','153550.36000000002','Deposit 10025 BDT . By Sonali Bank.','2017-10-24 09:14:58','2017-10-24 09:14:58'),(47,6,'HWWXYJ6AIT82BOONPIE3','1520',1,'86','1520','Deposit 1520 BDT . By Manual BTC.','2017-10-24 09:29:12','2017-10-24 09:29:12'),(48,4,'HWWXYJ6AIT82BOONPIE3','76',3,NULL,'163651.36000000002','Reference Deposit Bonus 76 BDT . From - prantoroy.','2017-10-24 09:29:12','2017-10-24 09:29:12'),(49,4,'9EXDF92GHTGYI3DWJNIP','50',15,NULL,'163701.36000000002','Repeat 50 BDT. For Investment Plan - test plan.','2017-10-24 09:54:07','2017-10-24 09:54:07'),(50,4,'T03PGRH2CMGTMJVNU5YE','750',15,NULL,'164451.36000000002','Repeat 750 BDT. For Investment Plan - Starter.','2017-10-24 10:18:47','2017-10-24 10:18:47'),(51,6,'RPFELFRUPQHFKONTYHK9','120',8,NULL,'3160','Add 120 BDT - For hello','2017-10-24 12:09:23','2017-10-24 12:09:23'),(52,4,'2TUFGAETLM32AGBNBIFM','1500',0,NULL,'162951.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:33:06','2017-10-27 05:33:06'),(53,4,'TUJZMJRGLM5KDIYMARKE','150',0,NULL,'164301.36000000002','Diamond purchaded for 150 BDT','2017-10-27 05:36:14','2017-10-27 05:36:14'),(54,4,'MQJ8MTURMWAH9PSXIM5N','150',0,NULL,'164301.36000000002','Diamond purchaded for 150 BDT','2017-10-27 05:37:18','2017-10-27 05:37:18'),(55,4,'CIKI2E1X9UHJZ9RCCFMZ','150',0,NULL,'164301.36000000002','Diamond purchaded for 150 BDT','2017-10-27 05:48:57','2017-10-27 05:48:57'),(56,4,'FGRDFX9ETMCN5MSLGYDD','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:51:22','2017-10-27 05:51:22'),(57,4,'UQ5IKS5NJWVYHWBUEE0K','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:51:48','2017-10-27 05:51:48'),(58,4,'5Y6QPEGGXK2QTIZEG6ZQ','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:51:51','2017-10-27 05:51:51'),(59,4,'RKGLZ8WVGVAEJC2LFDAC','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:52:03','2017-10-27 05:52:03'),(60,4,'8IH9QEVSKLDXMA92CV8N','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:52:06','2017-10-27 05:52:06'),(61,4,'KDTKP0Q3HESZDTX8JWLY','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:52:27','2017-10-27 05:52:27'),(62,4,'D210VISLCR0DAG16SMVH','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:52:41','2017-10-27 05:52:41'),(63,4,'CB7W6QMIWLPGGB1MLXQI','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:52:48','2017-10-27 05:52:48'),(64,4,'NDL64DI5ZBMAJEX3WO7M','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:53:11','2017-10-27 05:53:11'),(65,4,'A4VROA4UAZESK66RLT4B','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:53:14','2017-10-27 05:53:14'),(66,4,'1OSDXVRPNEYVVOLEMMFG','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:53:16','2017-10-27 05:53:16'),(67,4,'6JMBDGMCTRYYJEWVBDR9','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:53:46','2017-10-27 05:53:46'),(68,4,'IWLICDIX4ECZBCJNU5QJ','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:54:07','2017-10-27 05:54:07'),(69,4,'XGMI1X52KDVZVC8WZRE9','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:54:11','2017-10-27 05:54:11'),(70,4,'4WDH6OIVZM5SZJLA97AY','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:55:10','2017-10-27 05:55:10'),(71,4,'W6O43MSVLJBWGX9CWW1I','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:55:12','2017-10-27 05:55:12'),(72,4,'S0KXP1SRXJHJYIKKDKDF','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:55:28','2017-10-27 05:55:28'),(73,4,'8FKF85NY9X4JUOHCEQCQ','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:55:30','2017-10-27 05:55:30'),(74,4,'FVDY09VCUWRKOEHTL6NE','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:55:39','2017-10-27 05:55:39'),(75,4,'CF953BGLJQDPNNSHMINU','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:55:42','2017-10-27 05:55:42'),(76,4,'PQJSZLKP4EXNRIW8C00D','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:55:53','2017-10-27 05:55:53'),(77,4,'UWMF1OOFW8HPRN3KRITW','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:56:09','2017-10-27 05:56:09'),(78,4,'GVYE9F954CJSS1LAC47T','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:56:42','2017-10-27 05:56:42'),(79,4,'C4Q7UIMTQIBCIMJXBCSY','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:56:48','2017-10-27 05:56:48'),(80,4,'ZJJLGQXKWJXQGFI5B0VH','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:56:57','2017-10-27 05:56:57'),(81,4,'4AAPUYXT20628SVF3WVN','1500',0,NULL,'162801.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:58:17','2017-10-27 05:58:17'),(82,4,'7VXYYCA9G2AVHEC8XFSA','150',0,NULL,'162651.36000000002','Diamond purchaded for 150 BDT','2017-10-27 05:58:23','2017-10-27 05:58:23'),(83,4,'IQ5SZHDWM4PJSGXO7HU8','150',0,NULL,'162501.36000000002','Diamond purchaded for 150 BDT','2017-10-27 05:59:17','2017-10-27 05:59:17'),(84,4,'DQ0WZNWMA0C3PKRJFUBI','1500',0,NULL,'161001.36000000002','Gold purchaded for 1500 BDT','2017-10-27 05:59:26','2017-10-27 05:59:26'),(85,4,'TBWGQDV51H2AOM8COEAN','1500',0,NULL,'159501.36000000002','Gold purchaded for 1500 BDT','2017-10-27 06:02:26','2017-10-27 06:02:26'),(86,4,'SBDVOW4UNHFPLAGNJAXS','150',0,NULL,'159351.36000000002','Diamond purchaded for 150 BDT','2017-10-27 13:32:13','2017-10-27 13:32:13'),(87,4,'LG625YADAAUTRF6EXGG6','150',0,NULL,'159201.36000000002','Diamond purchaded for 150 BDT','2017-10-27 13:32:20','2017-10-27 13:32:20'),(88,4,'KXJTBE2BYRZKYYRQE74N','1500',0,NULL,'157701.36000000002','Gold purchaded for 1500 BDT','2017-10-27 13:32:35','2017-10-27 13:32:35'),(89,4,'FAXKGC29QC1PBONSNQZA','15',0,NULL,'157686.36000000002','Gold purchaded for 15 BDT','2017-10-27 16:01:18','2017-10-27 16:01:18'),(90,4,'GO5UZH44HLUKYZ26W32J','150',0,NULL,'157536.36000000002','Diamond purchaded for 150 BDT','2017-10-28 05:14:59','2017-10-28 05:14:59'),(91,4,'5FIPE2DQEJOPZRANIJ6X','150',0,NULL,'157386.36000000002','Diamond purchaded for 150 BDT','2017-10-28 05:15:26','2017-10-28 05:15:26'),(92,4,'KVIQX3WCKLRUZJ7JMCM9','53',0,NULL,'157333.36000000002','Gold purchaded for 53 BDT','2017-10-28 05:24:09','2017-10-28 05:24:09'),(93,4,'AYBIDD7JAKV133SYI5GX','53',0,NULL,'157280.36000000002','Gold purchaded for 53 BDT','2017-10-28 06:08:11','2017-10-28 06:08:11'),(94,4,'UZFVH751U5VCWNY0NO5C','150',0,NULL,'157130.36000000002','Diamond purchaded for 150 BDT','2017-10-28 06:09:06','2017-10-28 06:09:06'),(95,4,'9PBHCDYS7E4RAI4ABJZM','53',0,NULL,'157077.36000000002','Gold purchaded for 53 BDT','2017-10-28 06:09:14','2017-10-28 06:09:14'),(96,4,'JN2GETQR5HHJMZF9RKGX','150',0,NULL,'156927.36000000002','Diamond purchaded for 150 BDT','2017-10-28 06:11:22','2017-10-28 06:11:22'),(97,4,'BLNFSRCZXDVEYIXRDY7X','15000',0,NULL,'141927.36000000002','Ear ring purchaded for 15000 BDT','2017-10-28 06:50:28','2017-10-28 06:50:28'),(98,4,'M1WTHUKDNFTD6OXYUYRI','15000',0,NULL,'126927.36000000002','Ear ring purchaded for 15000 BDT','2017-10-28 08:45:11','2017-10-28 08:45:11'),(99,4,'7PXXABKZ45OV6UYZGHPV','15000',0,NULL,'111927.36000000002','Ear ring purchaded for 15000 BDT','2017-10-28 09:32:13','2017-10-28 09:32:13'),(100,4,'DI3HPLRUPQU0YMPL3NLY','53',0,NULL,'112874.36000000002','Pure Gold purchaded for 53 BDT','2017-10-28 09:33:18','2017-10-28 09:33:18'),(101,4,'KEW4NSRYGAGZIITGNEGI','150',0,NULL,'112724.36000000002','Diamond purchaded for 150 BDT','2017-10-28 09:33:29','2017-10-28 09:33:29'),(102,4,'SUMME5FMAZ7WZHLQXVQZ','15000',0,NULL,'97874.36000000002','Ear ring purchaded for 15000 BDT','2017-10-29 03:38:33','2017-10-29 03:38:33'),(103,4,'IJOKIV2ZELPN2ITGQMZ4','53',0,NULL,'97821.36000000002','Pure Gold purchaded for 53 BDT','2017-10-29 03:38:40','2017-10-29 03:38:40'),(104,4,'D5IVEYNHYMYORWJZ4WHP','150',0,NULL,'97670.36000000002','Diamond purchaded for 150 BDT','2017-10-29 03:51:00','2017-10-29 03:51:00'),(105,4,'SUMME5FMAZ7WZHLQXVQZ','-1000',0,NULL,'96670.36000000002','1000 BDT earned for the transaction ID SUMME5FMAZ7WZHLQXVQZ','2017-10-29 05:55:13','2017-10-29 05:55:13'),(106,4,'D5IVEYNHYMYORWJZ4WHP','100',0,NULL,'96770.36000000002','100 BDT Earned for the transaction ID D5IVEYNHYMYORWJZ4WHP','2017-10-29 05:56:24','2017-10-29 05:56:24'),(107,4,'2FXZW7OACN5NZN87HFW4','53',0,NULL,'96717.36000000002','Pure Gold purchaded for 53 BDT','2017-10-29 05:57:48','2017-10-29 05:57:48'),(108,4,'2FXZW7OACN5NZN87HFW4','-9',0,NULL,'96708.36000000002','9 BDT Lost for the transaction ID 2FXZW7OACN5NZN87HFW4','2017-10-29 05:57:59','2017-10-29 05:57:59'),(109,4,'IDH6TGXKX5OZLKMXZ1UF','1000',1,'60','97708.36000000002','Deposit 1000 BDT . By Manual BTC.','2017-10-29 06:03:18','2017-10-29 06:03:18'),(110,4,'REFQIOTBGPB1LV1OTRBH','1000',1,'50','99708.36000000002','Deposit 1000 BDT . By Rupali Bank.','2017-10-29 06:08:50','2017-10-29 06:08:50'),(111,4,'C0VAYZ8IM70FQFFV3YQI','10',3,NULL,'100718.36000000002','10 BDT Bonus For Reference Join. ','2017-10-29 06:37:59','2017-10-29 06:37:59'),(112,7,'RM4F97YLZ4MVUF03RDTB','100',1,'5.2','100','Deposit 100 BDT . By Credit Card.','2017-10-29 08:20:58','2017-10-29 08:20:58'),(113,4,'RM4F97YLZ4MVUF03RDTB','5',3,NULL,'100723.36000000002','Reference Deposit Bonus 5 BDT . From - ridoy.','2017-10-29 08:20:58','2017-10-29 08:20:58'),(114,7,'GHVNFBP9C8LFI7GB0XB5','53',0,NULL,'47','Pure Gold purchaded for 53 BDT','2017-10-29 08:22:57','2017-10-29 08:22:57'),(115,7,'GHVNFBP9C8LFI7GB0XB5','-51',0,NULL,'-4','51 BDT Lost for the transaction ID GHVNFBP9C8LFI7GB0XB5','2017-10-29 08:27:21','2017-10-29 08:27:21'),(116,7,'BD8IKLP3CIEKN9P9VQAC','1000',1,'25','996','Deposit 1000 BDT . By Credit Card.','2017-10-29 08:35:22','2017-10-29 08:35:22'),(117,4,'BD8IKLP3CIEKN9P9VQAC','50',3,NULL,'100773.36000000002','Reference Deposit Bonus 50 BDT . From - ridoy.','2017-10-29 08:35:22','2017-10-29 08:35:22'),(118,7,'BD8IKLP3CIEKN9P9VQAC','1000',1,'25','1996','Deposit 1000 BDT . By Credit Card.','2017-10-29 08:35:25','2017-10-29 08:35:25'),(119,4,'BD8IKLP3CIEKN9P9VQAC','50',3,NULL,'100823.36000000002','Reference Deposit Bonus 50 BDT . From - ridoy.','2017-10-29 08:35:25','2017-10-29 08:35:25'),(120,7,'NMKBMTITN38FDIONL6YY','53',0,NULL,'1943','Pure Gold purchaded for 53 BDT','2017-10-29 08:36:02','2017-10-29 08:36:02'),(121,7,'NMKBMTITN38FDIONL6YY','-3',0,NULL,'1940','3 BDT Lost for the transaction ID NMKBMTITN38FDIONL6YY','2017-10-29 08:36:18','2017-10-29 08:36:18'),(122,7,'JMLOHCU46D5GFUWT3VZK','53',0,NULL,'1887','Pure Gold purchaded for 53 BDT','2017-10-29 08:40:28','2017-10-29 08:40:28'),(123,4,'UKTKXVLF2HB5XZSJAP2Q','150',0,NULL,'100673.36000000002','Diamond purchaded for 150 BDT','2017-10-29 08:40:44','2017-10-29 08:40:44'),(124,7,'7KBGA1WBCBML72RFPKJF','53',0,NULL,'1834','Pure Gold purchaded for 53 BDT','2017-10-29 08:41:11','2017-10-29 08:41:11'),(125,7,'JMLOHCU46D5GFUWT3VZK','-1',0,NULL,'1833','1 BDT Lost for the transaction ID JMLOHCU46D5GFUWT3VZK','2017-10-29 08:41:23','2017-10-29 08:41:23'),(126,7,'7KBGA1WBCBML72RFPKJF','-1',0,NULL,'1832','1 BDT Lost for the transaction ID 7KBGA1WBCBML72RFPKJF','2017-10-29 08:41:23','2017-10-29 08:41:23'),(127,4,'UKTKXVLF2HB5XZSJAP2Q','1',0,NULL,'100674.36000000002','1 BDT Earned for the transaction ID UKTKXVLF2HB5XZSJAP2Q','2017-10-29 08:41:36','2017-10-29 08:41:36'),(128,7,'0BGKN6DXGHJ9UZSWYMGV','500',5,'36.25','1332','500 BDT Withdraw Request Send. Via bKash','2017-10-29 08:43:30','2017-10-29 08:43:30'),(129,7,'0BGKN6DXGHJ9UZSWYMGV','36.25',10,NULL,'1295.75','36.25 BDT Charged for Withdraw Request. Via bKash','2017-10-29 08:43:30','2017-10-29 08:43:30'),(130,7,'UNFUGA1UIPNCBVGH2HOE','1000',1,'55','2295.75','Deposit 1000 BDT . By Sonali Bank.','2017-10-29 08:56:02','2017-10-29 08:56:02'),(131,4,'UNFUGA1UIPNCBVGH2HOE','50',3,NULL,'100724.36000000002','Reference Deposit Bonus 50 BDT . From - ridoy.','2017-10-29 08:56:02','2017-10-29 08:56:02'),(132,7,'IA5GLVI2Q56ZKL6X3NY1','1000',1,'25','4295.75','Deposit 1000 BDT . By Credit Card.','2017-10-29 08:58:34','2017-10-29 08:58:34'),(133,4,'IA5GLVI2Q56ZKL6X3NY1','50',3,NULL,'100774.36000000002','Reference Deposit Bonus 50 BDT . From - ridoy.','2017-10-29 08:58:34','2017-10-29 08:58:34'),(134,7,'ZEJWJ24CVDV909IPYCWJ','4000',0,NULL,'295.75','Pure Gold purchaded for 4000 BDT','2017-10-29 09:06:54','2017-10-29 09:06:54'),(135,7,'ZEJWJ24CVDV909IPYCWJ','-1000',0,NULL,'-704.25','1000 BDT Lost for the transaction ID ZEJWJ24CVDV909IPYCWJ','2017-10-29 09:07:22','2017-10-29 09:07:22'),(136,7,'PYFOL1TDU1OI5V4LIDFX','1000',1,'25','295.75','Deposit 1000 BDT . By Credit Card.','2017-10-29 09:07:58','2017-10-29 09:07:58'),(137,4,'PYFOL1TDU1OI5V4LIDFX','50',3,NULL,'100824.36000000002','Reference Deposit Bonus 50 BDT . From - ridoy.','2017-10-29 09:07:58','2017-10-29 09:07:58'),(138,7,'PYFOL1TDU1OI5V4LIDFX','1000',1,'25','1295.75','Deposit 1000 BDT . By Credit Card.','2017-10-29 09:07:58','2017-10-29 09:07:58'),(139,4,'PYFOL1TDU1OI5V4LIDFX','50',3,NULL,'100874.36000000002','Reference Deposit Bonus 50 BDT . From - ridoy.','2017-10-29 09:07:58','2017-10-29 09:07:58'),(140,7,'V4TC8R4BBUK9V3GXXCGQ','1000',0,NULL,'295.75','Pure Gold purchaded for 1000 BDT','2017-10-29 09:10:44','2017-10-29 09:10:44'),(141,7,'V4TC8R4BBUK9V3GXXCGQ','-500',0,NULL,'-204.25','500 BDT Lost for the transaction ID V4TC8R4BBUK9V3GXXCGQ','2017-10-29 09:11:02','2017-10-29 09:11:02'),(142,7,'SSPPXNJ5Q4QNSG59KULM','1000',1,'25','795.75','Deposit 1000 BDT . By Credit Card.','2017-10-29 09:11:35','2017-10-29 09:11:35'),(143,4,'SSPPXNJ5Q4QNSG59KULM','50',3,NULL,'100924.36000000002','Reference Deposit Bonus 50 BDT . From - ridoy.','2017-10-29 09:11:35','2017-10-29 09:11:35'),(144,7,'H1SPNG8S01SAYSXDHQRD','1000',1,'55','1795.75','Deposit 1000 BDT . By Sonali Bank.','2017-10-29 09:21:07','2017-10-29 09:21:07'),(145,4,'H1SPNG8S01SAYSXDHQRD','50',3,NULL,'100974.36000000002','Reference Deposit Bonus 50 BDT . From - ridoy.','2017-10-29 09:21:07','2017-10-29 09:21:07'),(146,7,'S6YRREUUULPANHBJKVWD','1000',1,'55','3795.75','Deposit 1000 BDT . By Sonali Bank.','2017-10-29 09:26:06','2017-10-29 09:26:06'),(147,4,'S6YRREUUULPANHBJKVWD','50',3,NULL,'101024.36000000002','Reference Deposit Bonus 50 BDT . From - ridoy.','2017-10-29 09:26:06','2017-10-29 09:26:06'),(148,7,'MDPC03G7VN07IXPPCHLL','1000',1,'55','4795.75','Deposit 1000 BDT . By Sonali Bank.','2017-10-29 09:26:59','2017-10-29 09:26:59'),(149,4,'MDPC03G7VN07IXPPCHLL','50',3,NULL,'101074.36000000002','Reference Deposit Bonus 50 BDT . From - ridoy.','2017-10-29 09:26:59','2017-10-29 09:26:59'),(150,4,'MMI8WYXBA466TVAHWXZL','1000',17,NULL,'100074.36000000002','Pure Gold purchaded for 1000 BDT','2017-10-29 10:15:17','2017-10-29 10:15:17'),(151,4,'MMI8WYXBA466TVAHWXZL','-100',18,NULL,'99974.36000000002','100 BDT Lost for the transaction ID MMI8WYXBA466TVAHWXZL','2017-10-29 10:16:43','2017-10-29 10:16:43'),(152,4,'JOJR2OXT8TPWW0EFLTKQ','150',17,NULL,'99824.36000000002','Diamond purchaded for 150 BDT','2017-11-05 09:53:32','2017-11-05 09:53:32'),(153,4,'JOJR2OXT8TPWW0EFLTKQ','-10',18,NULL,'99814.36000000002','10 BDT Lost for the transaction ID JOJR2OXT8TPWW0EFLTKQ','2017-11-05 09:53:47','2017-11-05 09:53:47'),(154,4,'RBA0JDJVYHJGLZHW8ENI','150',17,NULL,'99664.36000000002','Diamond purchaded for 150 BDT','2017-11-05 09:54:15','2017-11-05 09:54:15'),(155,4,'RBA0JDJVYHJGLZHW8ENI','-20',18,NULL,'99644.36000000002','20 BDT Lost for the transaction ID RBA0JDJVYHJGLZHW8ENI','2017-11-05 09:54:41','2017-11-05 09:54:41'),(156,4,'M9M2X4H3X3MQANN7A1QQ','15000',17,NULL,'84644.36000000002','Ear ring purchaded for 15000 BDT','2017-11-05 10:12:57','2017-11-05 10:12:57'),(157,7,'PYMBNMEPI59JR8T4JSCH','150',17,NULL,'4645.75','Diamond purchaded for 150 BDT','2017-11-05 10:14:47','2017-11-05 10:14:47'),(158,7,'I0OLH5Y8U5OJIIKL0FQW','150',17,NULL,'4495.75','Diamond purchaded for 150 BDT','2017-11-05 10:19:58','2017-11-05 10:19:58'),(159,7,'4P7HTYUQBPTZZP9SAAB5','1000',17,NULL,'3495.75','Pure Gold purchaded for 1000 BDT','2017-11-05 10:20:18','2017-11-05 10:20:18'),(160,7,'Q3VMCJF0NZIHDN0XDDKH','150',17,NULL,'3345.75','Diamond purchaded for 150 BDT','2017-11-05 10:20:49','2017-11-05 10:20:49'),(161,4,'6QLNGWMABUBPQXHBGOV2','15000',17,NULL,'69644.36000000002','Ear ring purchaded for 15000 BDT','2017-11-05 10:21:25','2017-11-05 10:21:25'),(162,4,'M9M2X4H3X3MQANN7A1QQ','500',18,NULL,'70144.36000000002','500 BDT Earned for the transaction ID M9M2X4H3X3MQANN7A1QQ','2017-11-05 10:22:53','2017-11-05 10:22:53'),(163,4,'6QLNGWMABUBPQXHBGOV2','500',18,NULL,'70644.36000000002','500 BDT Earned for the transaction ID 6QLNGWMABUBPQXHBGOV2','2017-11-05 10:22:53','2017-11-05 10:22:53'),(164,7,'PYMBNMEPI59JR8T4JSCH','150',18,NULL,'3495.75','150 BDT Earned for the transaction ID PYMBNMEPI59JR8T4JSCH','2017-11-05 10:23:02','2017-11-05 10:23:02'),(165,7,'I0OLH5Y8U5OJIIKL0FQW','150',18,NULL,'3645.75','150 BDT Earned for the transaction ID I0OLH5Y8U5OJIIKL0FQW','2017-11-05 10:23:02','2017-11-05 10:23:02'),(166,7,'Q3VMCJF0NZIHDN0XDDKH','150',18,NULL,'3795.75','150 BDT Earned for the transaction ID Q3VMCJF0NZIHDN0XDDKH','2017-11-05 10:23:02','2017-11-05 10:23:02'),(167,7,'4P7HTYUQBPTZZP9SAAB5','-700',18,NULL,'3095.75','700 BDT Lost for the transaction ID 4P7HTYUQBPTZZP9SAAB5','2017-11-05 10:23:10','2017-11-05 10:23:10'),(168,7,'DB6H6QSB6NTLN3HQVFQC','150',17,NULL,'2945.75','Diamond purchaded for 150 BDT','2017-11-05 10:56:11','2017-11-05 10:56:11'),(169,7,'DB6H6QSB6NTLN3HQVFQC','30',18,NULL,'2975.75','30 BDT Earned for the transaction ID DB6H6QSB6NTLN3HQVFQC','2017-11-05 10:58:02','2017-11-05 10:58:02'),(170,7,'ENGOYVQWQGNT8BXAFEGQ','10',3,NULL,'2985.75','10 BDT Bonus For Reference Join. ','2017-11-05 11:35:46','2017-11-05 11:35:46'),(171,7,'SY9YDKFJEPULEU2RMVJ0','10',3,NULL,'2995.75','10 BDT Bonus For Reference Join. ','2017-11-05 11:37:43','2017-11-05 11:37:43'),(172,4,'NLB941DOXPYYCG9VXXEA','15000',17,NULL,'55644.360000000015','Ear ring purchaded for 15000 BDT','2017-11-05 11:57:06','2017-11-05 11:57:06'),(173,4,'NLB941DOXPYYCG9VXXEA','1000',18,NULL,'56644.360000000015','1000 BDT Earned for the transaction ID NLB941DOXPYYCG9VXXEA','2017-11-05 11:57:37','2017-11-05 11:57:37'),(174,4,'FJJGKGF8SRVWFTP6ZB0G','15000',17,NULL,'41644.360000000015','Ear ring purchaded for 15000 BDT','2017-11-06 06:04:35','2017-11-06 06:04:35'),(175,4,'Z0Z6SXHA1XYC5PLQZKQN','1000',17,NULL,'40644.360000000015','Pure Gold purchaded for 1000 BDT','2017-11-06 06:04:41','2017-11-06 06:04:41'),(176,4,'FJJGKGF8SRVWFTP6ZB0G','-3000',18,NULL,'37644.360000000015','3000 BDT Lost for the transaction ID FJJGKGF8SRVWFTP6ZB0G','2017-11-06 06:04:57','2017-11-06 06:04:57'),(177,10,'1SKAEOK3WH4L1VR0BCLE','100',1,'5.2','100','Deposit 100 BDT . By Credit Card.','2017-11-06 06:11:56','2017-11-06 06:11:56'),(178,10,'P9DKECZSAKFKAGQYCTIK','100',1,'32.5','200','Deposit 100 BDT . By Sonali Bank.','2017-11-06 06:12:45','2017-11-06 06:12:45'),(179,10,'ASOHA7FU2W8LCIZJYVYX','150',17,NULL,'50','Diamond purchaded for 150 BDT','2017-11-06 06:14:29','2017-11-06 06:14:29'),(180,8,'ASOHA7FU2W8LCIZJYVYX','7.5',3,NULL,'7.5','Reference Trade Bonus 7.5 BDT . From - dilara.','2017-11-06 06:14:29','2017-11-06 06:14:29'),(181,7,'YDK3NPC2UFS7EOIJHH6S','1000',17,NULL,'1995.75','Pure Gold purchaded for 1000 BDT','2017-11-06 06:16:52','2017-11-06 06:16:52'),(182,4,'YDK3NPC2UFS7EOIJHH6S','50',3,NULL,'37694.360000000015','Reference Trade Bonus 50 BDT . From - ridoy.','2017-11-06 06:16:52','2017-11-06 06:16:52'),(183,10,'ASOHA7FU2W8LCIZJYVYX','-5',18,NULL,'45','5 BDT Lost for the transaction ID ASOHA7FU2W8LCIZJYVYX','2017-11-06 06:53:51','2017-11-06 06:53:51'),(184,7,'YM9PIMYS8U9ENRVB3R5B','1250',17,NULL,'745.75','Baslet purchaded for 1250 BDT','2017-11-06 07:40:11','2017-11-06 07:40:11'),(185,4,'YM9PIMYS8U9ENRVB3R5B','62.5',3,NULL,'37756.860000000015','Reference Trade Bonus 62.5 BDT . From - ridoy.','2017-11-06 07:40:11','2017-11-06 07:40:11'),(186,8,'MXEXPCIA3XDCEKMQNHC0','1000',1,'25','1007.5','Deposit 1000 BDT . By Credit Card.','2017-11-06 07:41:59','2017-11-06 07:41:59'),(187,8,'N5T8KAZ2LYHHLVNTSPQP','150',17,NULL,'857.5','Diamond purchaded for 150 BDT','2017-11-06 07:43:12','2017-11-06 07:43:12'),(188,7,'N5T8KAZ2LYHHLVNTSPQP','7.5',3,NULL,'753.25','Reference Trade Bonus 7.5 BDT . From - saddam.','2017-11-06 07:43:12','2017-11-06 07:43:12'),(189,8,'N5T8KAZ2LYHHLVNTSPQP','2',18,NULL,'859.5','2 BDT Earned for the transaction ID N5T8KAZ2LYHHLVNTSPQP','2017-11-06 07:44:13','2017-11-06 07:44:13'),(190,11,'LZPGG4P0ZZYESTCXEF5L','300',1,'9.6','300','Deposit 300 BDT byCARD','2018-07-25 07:44:17','2018-07-25 07:44:17'),(191,4,'LZPGG4P0ZZYESTCXEF5L','15',3,NULL,'37771.860000000015','Reference Deposit Bonus 15 BDT . From -jpial','2018-07-25 07:44:17','2018-07-25 07:44:17'),(192,11,'BSJF9LHGA6I9DYNMFLP4','500',1,'14','800','Deposit 500 BDT byCARD','2018-07-25 08:42:45','2018-07-25 08:42:45'),(193,4,'BSJF9LHGA6I9DYNMFLP4','25',3,NULL,'37796.860000000015','Reference Deposit Bonus 25 BDT . From -jpial','2018-07-25 08:42:45','2018-07-25 08:42:45');
/*!40000 ALTER TABLE `user_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_trade_logs`
--

DROP TABLE IF EXISTS `user_trade_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_trade_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_trx_id` varchar(255) NOT NULL,
  `old_balance` varchar(255) NOT NULL,
  `new_balance` varchar(255) NOT NULL,
  `new_price` varchar(255) NOT NULL,
  `gain_loss` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trade_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_trade_logs`
--

LOCK TABLES `user_trade_logs` WRITE;
/*!40000 ALTER TABLE `user_trade_logs` DISABLE KEYS */;
INSERT INTO `user_trade_logs` VALUES (1,'6HAOGAJS7OGYXAXPUYQR','157701.36000000002','157716.36000000002','15','15',4,2,'2017-10-27 15:56:11','2017-10-27 15:56:11'),(2,'1OSDXVRPNEYVVOLEMMFG','157701.36000000002','157716.36000000002','15','15',4,2,'2017-10-27 15:56:11','2017-10-27 15:56:11'),(3,'6HAOGAJS7OGYXAXPUYQR','157686.36000000002','156211.36000000002','25','-1475',4,9,'2017-10-27 16:02:07','2017-10-27 16:02:07'),(4,'1OSDXVRPNEYVVOLEMMFG','157686.36000000002','156211.36000000002','25','-1475',4,9,'2017-10-27 16:02:07','2017-10-27 16:02:07'),(5,'FAXKGC29QC1PBONSNQZA','157686.36000000002','157696.36000000002','25','10',4,9,'2017-10-27 16:02:07','2017-10-27 16:02:07'),(6,'6HAOGAJS7OGYXAXPUYQR','157686.36000000002','156238.36000000002','52','-1448',4,10,'2017-10-27 16:13:15','2017-10-27 16:13:15'),(7,'1OSDXVRPNEYVVOLEMMFG','157686.36000000002','156238.36000000002','52','-1448',4,10,'2017-10-27 16:13:15','2017-10-27 16:13:15'),(8,'FAXKGC29QC1PBONSNQZA','157686.36000000002','157723.36000000002','52','37',4,10,'2017-10-27 16:13:15','2017-10-27 16:13:15'),(9,'6HAOGAJS7OGYXAXPUYQR','157686.36000000002','156239.36000000002','53','-1447',4,11,'2017-10-28 00:49:08','2017-10-28 00:49:08'),(10,'1OSDXVRPNEYVVOLEMMFG','157686.36000000002','156239.36000000002','53','-1447',4,11,'2017-10-28 00:49:08','2017-10-28 00:49:08'),(11,'FAXKGC29QC1PBONSNQZA','157686.36000000002','157724.36000000002','53','38',4,11,'2017-10-28 00:49:08','2017-10-28 00:49:08'),(12,'6HAOGAJS7OGYXAXPUYQR','157686.36000000002','156241.36000000002','55','-1445',4,12,'2017-10-28 04:28:41','2017-10-28 04:28:41'),(13,'1OSDXVRPNEYVVOLEMMFG','157686.36000000002','156241.36000000002','55','-1445',4,12,'2017-10-28 04:28:41','2017-10-28 04:28:41'),(14,'FAXKGC29QC1PBONSNQZA','157686.36000000002','157726.36000000002','55','40',4,12,'2017-10-28 04:28:41','2017-10-28 04:28:41'),(15,'6HAOGAJS7OGYXAXPUYQR','157686.36000000002','156241.36000000002','55','-1445',4,13,'2017-10-28 04:30:40','2017-10-28 04:30:40'),(16,'1OSDXVRPNEYVVOLEMMFG','157686.36000000002','156241.36000000002','55','-1445',4,13,'2017-10-28 04:30:40','2017-10-28 04:30:40'),(17,'FAXKGC29QC1PBONSNQZA','157686.36000000002','157726.36000000002','55','40',4,13,'2017-10-28 04:30:40','2017-10-28 04:30:40'),(18,'6HAOGAJS7OGYXAXPUYQR','157686.36000000002','156239.36000000002','53','-1447',4,14,'2017-10-28 04:47:39','2017-10-28 04:47:39'),(19,'1OSDXVRPNEYVVOLEMMFG','157686.36000000002','156239.36000000002','53','-1447',4,14,'2017-10-28 04:47:39','2017-10-28 04:47:39'),(20,'FAXKGC29QC1PBONSNQZA','157686.36000000002','157724.36000000002','53','38',4,14,'2017-10-28 04:47:39','2017-10-28 04:47:39'),(21,'6HAOGAJS7OGYXAXPUYQR','157333.36000000002','155888.36000000002','55','-1445',4,15,'2017-10-28 06:02:56','2017-10-28 06:02:56'),(22,'1OSDXVRPNEYVVOLEMMFG','157333.36000000002','155888.36000000002','55','-1445',4,15,'2017-10-28 06:02:56','2017-10-28 06:02:56'),(23,'FAXKGC29QC1PBONSNQZA','157333.36000000002','157373.36000000002','55','40',4,15,'2017-10-28 06:02:56','2017-10-28 06:02:56'),(24,'KVIQX3WCKLRUZJ7JMCM9','157333.36000000002','157335.36000000002','55','2',4,15,'2017-10-28 06:02:56','2017-10-28 06:02:56'),(25,'AYBIDD7JAKV133SYI5GX','157280.36000000002','157279.36000000002','52','-1',4,18,'2017-10-28 06:08:35','2017-10-28 06:08:35'),(26,'9PBHCDYS7E4RAI4ABJZM','157077.36000000002','157079.36000000002','55','2',4,19,'2017-10-28 06:10:39','2017-10-28 06:10:39'),(27,'CIKI2E1X9UHJZ9RCCFMZ','157077.36000000002','156937.36000000002','10','-140',4,21,'2017-10-28 06:11:12','2017-10-28 06:11:12'),(28,'GO5UZH44HLUKYZ26W32J','157077.36000000002','156937.36000000002','10','-140',4,21,'2017-10-28 06:11:12','2017-10-28 06:11:12'),(29,'5FIPE2DQEJOPZRANIJ6X','157077.36000000002','156937.36000000002','10','-140',4,21,'2017-10-28 06:11:12','2017-10-28 06:11:12'),(30,'UZFVH751U5VCWNY0NO5C','157077.36000000002','156937.36000000002','10','-140',4,21,'2017-10-28 06:11:12','2017-10-28 06:11:12'),(31,'JN2GETQR5HHJMZF9RKGX','156927.36000000002','158227.36000000002','1450','1300',4,22,'2017-10-28 06:11:34','2017-10-28 06:11:34'),(32,'BLNFSRCZXDVEYIXRDY7X','126927.36000000002','127427.36000000002','15500','500',4,23,'2017-10-28 09:28:07','2017-10-28 09:28:07'),(33,'M1WTHUKDNFTD6OXYUYRI','126927.36000000002','127427.36000000002','15500','500',4,23,'2017-10-28 09:28:07','2017-10-28 09:28:07'),(34,'7PXXABKZ45OV6UYZGHPV','111927.36000000002','112927.36000000002','16000','1000',4,24,'2017-10-28 09:32:56','2017-10-28 09:32:56'),(35,'KEW4NSRYGAGZIITGNEGI','112724.36000000002','112774.36000000002','200','50',4,25,'2017-10-28 09:34:10','2017-10-28 09:34:10'),(36,'DI3HPLRUPQU0YMPL3NLY','112774.36000000002','112874.36000000002','153','100',4,26,'2017-10-28 09:34:29','2017-10-28 09:34:29'),(37,'IJOKIV2ZELPN2ITGQMZ4','97821.36000000002','97820.36000000002','52','-1',4,27,'2017-10-29 03:44:36','2017-10-29 03:44:36'),(38,'SUMME5FMAZ7WZHLQXVQZ','97670.36000000002','96670.36000000002','14000','-1000',4,28,'2017-10-29 05:55:13','2017-10-29 05:55:13'),(39,'D5IVEYNHYMYORWJZ4WHP','96670.36000000002','96770.36000000002','250','100',4,29,'2017-10-29 05:56:24','2017-10-29 05:56:24'),(40,'2FXZW7OACN5NZN87HFW4','96717.36000000002','96708.36000000002','44','-9',4,30,'2017-10-29 05:57:59','2017-10-29 05:57:59'),(41,'GHVNFBP9C8LFI7GB0XB5','47','-4','2','-51',7,31,'2017-10-29 08:27:21','2017-10-29 08:27:21'),(42,'NMKBMTITN38FDIONL6YY','1943','1940','50','-3',7,32,'2017-10-29 08:36:18','2017-10-29 08:36:18'),(43,'JMLOHCU46D5GFUWT3VZK','1834','1833','52','-1',7,33,'2017-10-29 08:41:22','2017-10-29 08:41:22'),(44,'7KBGA1WBCBML72RFPKJF','1833','1832','52','-1',7,33,'2017-10-29 08:41:23','2017-10-29 08:41:23'),(45,'UKTKXVLF2HB5XZSJAP2Q','100673.36000000002','100674.36000000002','151','1',4,34,'2017-10-29 08:41:36','2017-10-29 08:41:36'),(46,'ZEJWJ24CVDV909IPYCWJ','295.75','-704.25','3000','-1000',7,35,'2017-10-29 09:07:22','2017-10-29 09:07:22'),(47,'V4TC8R4BBUK9V3GXXCGQ','295.75','-204.25','500','-500',7,36,'2017-10-29 09:11:02','2017-10-29 09:11:02'),(48,'MMI8WYXBA466TVAHWXZL','100074.36000000002','99974.36000000002','900','-100',4,37,'2017-10-29 10:16:43','2017-10-29 10:16:43'),(49,'JOJR2OXT8TPWW0EFLTKQ','99824.36000000002','99814.36000000002','140','-10',4,38,'2017-11-05 09:53:47','2017-11-05 09:53:47'),(50,'RBA0JDJVYHJGLZHW8ENI','99664.36000000002','99644.36000000002','130','-20',4,39,'2017-11-05 09:54:41','2017-11-05 09:54:41'),(51,'M9M2X4H3X3MQANN7A1QQ','69644.36000000002','70144.36000000002','15500','500',4,40,'2017-11-05 10:22:53','2017-11-05 10:22:53'),(52,'6QLNGWMABUBPQXHBGOV2','70144.36000000002','70644.36000000002','15500','500',4,40,'2017-11-05 10:22:53','2017-11-05 10:22:53'),(53,'PYMBNMEPI59JR8T4JSCH','3345.75','3495.75','300','150',7,41,'2017-11-05 10:23:02','2017-11-05 10:23:02'),(54,'I0OLH5Y8U5OJIIKL0FQW','3495.75','3645.75','300','150',7,41,'2017-11-05 10:23:02','2017-11-05 10:23:02'),(55,'Q3VMCJF0NZIHDN0XDDKH','3645.75','3795.75','300','150',7,41,'2017-11-05 10:23:02','2017-11-05 10:23:02'),(56,'4P7HTYUQBPTZZP9SAAB5','3795.75','3095.75','300','-700',7,42,'2017-11-05 10:23:10','2017-11-05 10:23:10'),(57,'DB6H6QSB6NTLN3HQVFQC','2945.75','2975.75','180','30',7,43,'2017-11-05 10:58:01','2017-11-05 10:58:01'),(58,'NLB941DOXPYYCG9VXXEA','55644.360000000015','56644.360000000015','16000','1000',4,44,'2017-11-05 11:57:36','2017-11-05 11:57:36'),(59,'FJJGKGF8SRVWFTP6ZB0G','40644.360000000015','37644.360000000015','12000','-3000',4,45,'2017-11-06 06:04:56','2017-11-06 06:04:56'),(60,'ASOHA7FU2W8LCIZJYVYX','50','45','145','-5',10,46,'2017-11-06 06:53:51','2017-11-06 06:53:51'),(61,'N5T8KAZ2LYHHLVNTSPQP','857.5','859.5','152','2',8,47,'2017-11-06 07:44:13','2017-11-06 07:44:13');
/*!40000 ALTER TABLE `user_trade_logs` ENABLE KEYS */;
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
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user-default.png',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `under_reference` int(11) NOT NULL,
  `email_verify` tinyint(1) NOT NULL,
  `email_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_time` datetime NOT NULL,
  `phone_verify` tinyint(1) NOT NULL,
  `phone_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_time` datetime NOT NULL,
  `balance` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `login_time` datetime DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Rifayet Rifat','thesoftking','thesoftking@gmail.comx','0171617171717','user-default.png','$2y$10$isr001zz3XleM6QMGeszQuFtdG4DexWfcKRVG8ILqV6fF4PUmVxDG','thesoftking',0,1,'WKPE7C','2017-10-06 22:31:43',1,'HBWHUB','2017-10-06 22:31:43','0',0,NULL,'hrw3pl9CKTNFAWsdjlAelskkxW0WUsw3OtuKe61HtYGwX4J6d1duVWKWANcx','2017-10-07 03:26:43','2017-10-24 05:47:23'),(2,'admin','admin','admin@gmail.com','84864815681816185','user-default.png','$2y$10$rEvV9PTGEF0VOSge0xsn0.1Im6tak/koXIB4.7Z6NChMPZkqbm1zS','admin',0,1,'PU9FYH','2017-10-08 00:10:52',1,'BYWO8N','2017-10-08 00:10:52','10',0,NULL,NULL,'2017-10-08 05:05:52','2017-10-08 05:08:05'),(3,'HostRecline','HostRecline','sales@hostrecline.com','HostReclineHostReclineHostRecline','user-default.png','$2y$10$pC3KSJl1JfzWjf7Kz.J3ieoknztPfkD3FuGeXU0ZjBV418xiABQR.','HostRecline',2,1,'ENKIM2','2017-10-08 00:13:05',1,'MTURZZ','2017-10-08 00:13:05','0',0,NULL,NULL,'2017-10-08 05:08:05','2017-10-08 05:08:05'),(4,'riyad uddin','riyad','riyad@gmail.com','1582006532633','user-default.png','$2y$10$qsnIL8ZLFk8FchX4C.XEju/PgyvL0WsdrRDQEw3xx1ONGVBQTam76','riyad',0,1,'HVEMHZ','2017-10-16 10:47:22',1,'DIB4LU','2017-10-16 10:47:22','37796.860000000015',0,'2017-11-06 23:19:07','HagjyMMl3xg4zbKrfdCPMB9huD3tgM2BDLmAuVtGcMcmFBhZKnsv4vDOi59Z','2017-10-16 04:42:22','2018-07-25 08:42:45'),(5,'pial','pialhh','pial@gmail.com','52525522552','user-default.png','$2y$10$09.uJBc/P5/Z17WIX4CreuF8hQRZCCd8ImTwktWdo17LdVYI7XswK','pialhh',4,1,'EWFWWW','2017-10-22 17:07:42',1,'UCMOOS','2017-10-22 17:07:42','49000',0,NULL,NULL,'2017-10-22 11:02:43','2017-10-24 05:47:26'),(6,'Pranto Roy  thesoftking','prantoroy','pranto@live.com','018123655282','prantoroy.jpg','$2y$10$xEntnFm9lJ1ORJ.uvb6i8um5sRIrrHpPb7Fnuuqi4zxog2TvxMEQm','prantoroy',4,1,'UVDVMG','2017-10-24 14:59:10',1,'ZQEYFM','2017-10-24 14:59:10','3160',0,NULL,NULL,'2017-10-24 08:54:10','2017-10-24 12:09:23'),(7,'Ridoy Khan','ridoy','ridoy@gmail.com','01813243878','user-default.png','$2y$10$z2jEbKpjAjN4E6XLiX8c2Oll5rmpuCY4BG.D2FLZc60kJLr4qQ4eW','ridoy',4,1,'WRUQ0D','2017-10-29 12:42:59',1,'Y3GBIP','2017-10-29 12:42:59','753.25',0,'2017-11-06 14:59:04','saqzx0Wir6olh34GDj1iafIdE6RiAfFycyOpR1PAkrVCPrJdBn23qk7qpDl9','2017-10-29 06:37:59','2017-11-06 08:59:04'),(8,'saddam','saddam','saddam@gmail.com','125522103332','user-default.png','$2y$10$hZ0fPuycCsUfu537Cj/XOe9P43Z6jiVyZ.oAAOsKgbY/K6D5QDTrq','saddam',7,1,'VYGQGE','2017-11-05 17:40:46',1,'DK55BT','2017-11-05 17:40:46','859.5',0,'2017-11-06 15:43:38','y31kvsM2JZQIA29dCYSed3QMiTbeQRNDJTbmIaZfWIzuujcw16yl1Q64eNWQ','2017-11-05 11:35:46','2017-11-06 21:43:38'),(9,'sahadat','sahadat','sahadat@gmail.com','1233123312325','user-default.png','$2y$10$LjGScdK/kHEVvC1F9JnYeuY2zfP2KwOs.MyNypsYLxnUJFz8kpiM6','sahadat',7,1,'CVCUK9','2017-11-05 17:42:43',1,'UHIJ0M','2017-11-05 17:42:43','0',0,NULL,'b4ED2ckPk7Y4GsYZ0lkGKSmQkxltqqJg9WVqtkiPojjChxvg3JHi8EzZUl89','2017-11-05 11:37:43','2017-11-05 11:37:43'),(10,'Dilara','dilara','dilara@gmail.com','12545220552','user-default.png','$2y$10$J4HuXeg/Raiu0/V43XM.OuTS.VxFZ1tyazxlarbAHpzNzqSM2sT9G','dilara',8,1,'DRF1E8','2017-11-06 12:15:59',1,'DZRV05','2017-11-06 12:15:59','45',0,NULL,'RkCFUdJmOkmJmYljILVZpu5gBdDuzGLwEAFZP7l9sn41Cjn7Q2eM7mqAkUrs','2017-11-06 06:10:59','2017-11-06 07:26:59'),(11,'Jahangir Pial','jpial','pial@pial.com','905840580948787','user-default.png','$2y$10$B8ULA9JvOWgCVGFMxpa6sOPj2VnigB7kgSkJcRWQZwo43xsYyY7Hy','jpial',4,1,'UHJVWN','2018-07-24 14:44:19',1,'L9OONW','2018-07-24 14:44:19','800',0,'2018-07-25 13:22:29','vOElEbmnICG29SSrOcS031oCfjRXCbtECdNYh3vLKaWQMxDFVytgs7fakTwr','2018-07-24 08:39:19','2018-07-25 08:42:45');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_logs`
--

LOCK TABLES `withdraw_logs` WRITE;
/*!40000 ALTER TABLE `withdraw_logs` DISABLE KEYS */;
INSERT INTO `withdraw_logs` VALUES (1,4,2,'SXUFHWR9DNZLRC837WC4','100','27.3','127.3',NULL,NULL,0,'2017-10-22 06:51:19','2017-10-22 06:51:19'),(2,4,1,'XLFZERPFSIEKFDS9XBXO','1200','52','1252','DFGDFSG','SDFGSDFG',3,'2017-10-22 08:52:18','2017-10-22 08:53:09'),(3,4,1,'5ORHHBEIARDAANBSPCUJ','1025','48.06','1073.06','sdfsdaf','sadfsdf',1,'2017-10-22 09:14:29','2017-10-22 09:14:35'),(4,4,3,'7OXOMTZ9DNMJY6FHHBEW','1025','0','1025','dfasdf','asdfsd',2,'2017-10-22 09:36:41','2017-11-05 12:01:28'),(5,4,3,'M0UV8OZ4TCGUIB97ZCBV','1520','0','1520','asdf','sadf',2,'2017-10-22 09:37:31','2017-11-05 12:01:20'),(6,4,2,'OTBVGNKAJZPZGPU5UADL','1025','48.58','1073.58','f','gfdgf',2,'2017-10-22 10:00:17','2017-11-05 12:01:14'),(7,4,3,'0BM3KUQXS2IW70IC5GUS','1500','0','1500','sadf','asdfsad',2,'2017-10-22 10:53:36','2017-10-22 10:54:42'),(8,4,3,'7TRRLFFPGT1LU4N7HW8N','500','0','500','uj','ui',2,'2017-10-22 11:24:24','2017-11-05 12:01:06'),(9,7,1,'0BGKN6DXGHJ9UZSWYMGV','500','36.25','536.25','dasdfsad','fsafdsdaf',2,'2017-10-29 08:43:21','2017-10-29 08:43:48');
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
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_min` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_max` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_methods`
--

LOCK TABLES `withdraw_methods` WRITE;
/*!40000 ALTER TABLE `withdraw_methods` DISABLE KEYS */;
INSERT INTO `withdraw_methods` VALUES (1,'bKash','1506108954h8.png','500','25000','25','2.25','2',1,'2017-07-28 15:09:41','2017-09-22 13:36:13'),(2,'Sure Cash','1508828617h8.png','100','2000','25','2.30','3',1,'2017-07-28 15:10:00','2017-10-24 07:03:37'),(3,'Dutch Bangla Bank','1506112905h8.png','50','20000','0','0','1',1,'2017-08-09 21:06:21','2017-11-06 07:20:43'),(5,'SADFADSF','1508846467h8.png','100','10000','10','1','10',1,'2017-10-24 12:01:07','2017-11-06 07:20:24');
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

-- Dump completed on 2020-10-06 22:15:18
