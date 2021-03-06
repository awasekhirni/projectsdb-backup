-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: traderjoe
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
INSERT INTO `admins` VALUES (1,'ADMIN','admin','1498665028.png','admin@admin.com','$2y$10$eBYJG3d.tvm5Vj38rdFmwu55x1bR6Op2dyiggvybRibxjTZqvopcq','3YCb60tMnPhAdhvXCvZaP0W9TB0dCj9xaYGS50CoJu41NHBeHA18LUzesKx1',NULL,'2017-08-17 12:58:09');
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
INSERT INTO `basic_settings` VALUES (1,'Hexa Trade','ea0117','+880123456789','software@thesoftking.com','Garden Street, Ring Road, Shyamoli, Dhaka 1207, Bangladesh',_binary '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29186.920133680236!2d90.36073541583481!3d23.876671847930258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5d05e7074dd%3A0xd1c58803049f00c7!2sUttara%2C+Dhaka!5e0!3m2!1sen!2sbd!4v1505144892378\"   allowfullscreen></iframe>','2017-07-30 05:00:22','BDT','TK','2',1,0,0,1,1,0,0,0,'6LfJ0DEUAAAAANcRYNIasJigJ-tPzNlCH7JOymB-','6LfJ0DEUAAAAAIGCgkQKHILOyfg6LGcbO4YLM15a','admin','1','5','info@gmail.com',_binary '<p>&nbsp;</p>\r\n<div class=\"wrapper\" style=\"background-color: #f2f2f2;\">\r\n<table style=\"border-collapse: collapse; table-layout: fixed; color: #b8b8b8; font-family: Ubuntu,sans-serif;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"preheader__snippet\" style=\"padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n<td class=\"preheader__webversion\" style=\"text-align: right; padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0; width: 600px;\">\r\n<div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\">\r\n<div id=\"emb-email-header\" class=\"logo-left\" style=\"font-size: 0px !important; line-height: 0 !important;\" align=\"left\"><img style=\"height: auto; width: 100%; border: 0; max-width: 312px;\" src=\"http://i.imgur.com/nNCNPZT.png\" alt=\"\" width=\"312\" height=\"44\"></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"column\" style=\"padding: 0px; text-align: left; vertical-align: top; color: rgb(96, 102, 109); line-height: 21px; font-family: sans-serif; width: 600px;\">\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px; margin-top: 24px;\">\r\n<div style=\"line-height: 10px; font-size: 1px;\">&nbsp;</div>\r\n</div>\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px;\">\r\n<h2>Hi {{name}},</h2>\r\n<p><strong>{{message}}</strong></p>\r\n</div>\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px;\"><br></div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\">\r\n<p class=\"size-14\" style=\"margin-top: 0px; margin-bottom: 0px; line-height: 21px;\"><font size=\"3\">Thanks,</font><br> <strong style=\"font-size: 14px;\">HYIP Investment</strong></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table><br>\r\n</div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div><div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br></div>\r\n<br>\r\n<br>\r\n<br>',_binary 'https://api.infobip.com/api/v3/sendsms/plain?user=****&password=*****&sender=E-Wallet&SMSText={{message}}&GSM={{number}}&type=longSMS','70.jpg',_binary '<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Why do we use it?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br style=\"margin: 0px; padding: 0px; clear: both; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" center;\"=\"\"><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Where does it come from?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\"><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Where can I get some?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p></div>','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.','1503148676.jpg','Copyright Â© TSK 2011 - 2017 All Right Reserved.',NULL,'2018-01-18 05:42:25');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compounds`
--

LOCK TABLES `compounds` WRITE;
/*!40000 ALTER TABLE `compounds` DISABLE KEYS */;
INSERT INTO `compounds` VALUES (1,'Hourly','1','2017-06-12 12:25:25','2017-06-12 12:25:25'),(2,'Daily','24','2017-06-12 12:31:33','2017-06-12 12:33:14'),(3,'Weekly','168','2017-06-12 12:33:30','2017-06-12 12:33:30'),(4,'Monthly','720','2017-06-12 12:35:58','2017-06-12 12:36:30'),(6,'Yearly','8760','2017-09-21 11:03:37','2017-09-21 11:03:37');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_images`
--

LOCK TABLES `deposit_images` WRITE;
/*!40000 ALTER TABLE `deposit_images` DISABLE KEYS */;
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
  `payment_type` int(11) NOT NULL,
  `message` blob,
  `status` int(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
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
INSERT INTO `faqs` VALUES (1,'Anim pariatur cliche reprehenderit',_binary 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.','2017-09-22 11:53:37','2017-09-22 11:53:37'),(3,'Lorem Ipsum is simply dummy text of the printing',_binary 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','2017-09-23 02:38:51','2017-09-23 02:38:51'),(4,'Anim pariatur cliche reprehenderit',_binary '<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','2017-09-23 02:38:57','2017-09-23 02:38:57'),(5,'Anim pariatur cliche reprehenderit',_binary '<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\">What is Lorem Ipsum?</h2><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','2017-09-23 02:39:03','2017-09-23 02:39:03');
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
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'photo.png',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Client Company',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'5a34452b0c98b.png','Sign up','Sign up as a new user with your Personal details.','2017-11-29 15:25:39','2017-12-16 09:56:59'),(2,'5a34456b10431.png','Deposit & invest','Deposit money to wallet and invest on a plan that suites you','2017-11-29 15:51:50','2017-12-16 09:58:03'),(7,'5a3445ae2deb6.png','Get Profits','Get your Profit as stated on plan, your account will credited automatically','2017-12-04 11:50:08','2017-12-16 23:10:17'),(8,'5a3445d94ef66.png','Withdraw','You can Withdraw anytime, Just withdraw and wait for process.','2017-12-04 11:58:02','2017-12-16 23:10:51');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investments`
--

LOCK TABLES `investments` WRITE;
/*!40000 ALTER TABLE `investments` DISABLE KEYS */;
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
INSERT INTO `menus` VALUES (1,'Menu1',_binary '<div><h2>What is Lorem Ipsum?</h2>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div><h2>Why do we use it?</h2>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div><br><div><h2>Where does it come from?</h2>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.1</div>','2017-01-11 02:28:02','2017-04-23 05:26:01');
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
  `about_leftText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
INSERT INTO `pages` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fDtll-UoTCQ\" frameborder=\"0\" allowfullscreen></iframe>',_binary '222Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temporincididunt 2jlabore et dolore magna aliqua. Ut aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui doloratem.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',NULL,'2017-12-04 12:22:50');
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
INSERT INTO `password_resets` VALUES ('thesoftking@gmail.comx','$2y$10$ulwTblbNsrCNlKMlewxjO.HODYIqLDLWArPd3lrNxTtgRUzSkD8Na',NULL),('thesoftking@gmail.com','$2y$10$2UzvWGZPYFXKJBmfYfPsXOkmw9N7lMyvo1oek8Q1oqVCQRLUyLGk2',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
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
  `main_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
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
INSERT INTO `payment_methods` VALUES (101,'PayPal','PayPal','5b508c2aa9bd6.jpg','10','1000','70','2','1.5','rexrifat636@gmail.com',NULL,'Method Currency',1,NULL,'2018-07-19 13:37:10'),(102,'Perfect Money','Perfect Money','5b508c35ecd42.jpg','10','1000','1','3','2.75','U5220203','reg4e54h1grt1j','Method Currency',1,NULL,'2018-07-19 13:03:49'),(103,'Stripe','CARD','5b508c520c54e.jpg','5','10000','1','3','2.20','sk_test_aat3tzBCCXXBkS4sxY3M8A1B','pk_test_AU3G7doZ1sbdpJLj0NaozPBu','Method Currency',1,NULL,'2018-07-19 13:38:11'),(104,'Skrill','Skrill','magento_skrill_1.jpg','10','1000','1','2','1.75','support@globeskill.com','jabali2006','Method Currency',1,'2017-12-12 18:00:00','2018-07-19 13:35:51'),(501,'Blockchain.info','Bitcoin Blockchain','5b508c5b09a60.jpg','0','1000','1','0','0.5','8df2e5a0-3798-4b74-871d-973615b57e7b','xpub6CXLqfWXj1xgbYB8Pmg12ET6CGKPKfAJSXaizSWRLzUz9xf9wFJuXR2M4XQ1ThdcgyFN4Ej8zj6BjDoXEf2AikNGiYkSCG8vkCx4ZeFrZah','Method Currency',1,NULL,'2018-07-19 13:04:27'),(502,'block.io - BTC','BitCoin','5b508c885d6a8.jpg','50','1000','70','2','1','1658-8015-2e5e-9afb','09876softk','Method Currency',1,'2018-07-18 18:00:00','2018-07-19 13:05:12'),(503,'block.io - LTC','LiteCoin','5b508c923b647.jpg','50','1000','70','2','1','cb91-a5bc-69d7-1c27','09876softk','Method Currency',1,'2018-07-18 18:00:00','2018-07-19 13:05:22'),(504,'block.io - DOGE','DogeCoin','5b508c9d87d26.jpg','50','1000','70','2','1','2daf-d165-2135-5951','09876softk','Method Currency',1,'2018-07-18 18:00:00','2018-07-19 13:05:33'),(505,'CoinPayment - BTC','BitCoin','5b508ca60e7a6.jpg','50','1000','70','2','1','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44','Method Currency',1,'2018-07-18 18:00:00','2018-07-19 13:05:42'),(506,'CoinPayment - ETH','Etherium','5b508cade9863.jpg','50','1000','70','2','1','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44','Method Currency',1,'2018-07-18 18:00:00','2018-07-19 13:05:49'),(507,'CoinPayment - BCH','Bitcoin Cash','5b508cb7da6f2.jpg','50','1000','70','2','1','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44','Method Currency',1,'2018-07-18 18:00:00','2018-07-19 13:05:59'),(508,'CoinPayment - DASH','DASH','5b508cc0577b5.jpg','50','1000','70','2','1','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44','Method Currency',1,'2018-07-18 18:00:00','2018-07-19 13:06:08'),(509,'CoinPayment - DOGE','DOGE','5b508ccc16980.jpg','50','1000','70','2','1','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44','Method Currency',1,'2018-07-18 18:00:00','2018-07-19 13:06:20'),(510,'CoinPayment - LTC','LITECOIN','5b508cd6b4d5e.jpg','50','1000','70','2','1','596f0097ed9d1ab8cfed05eb59c70e9f066513dfe4df64a8fc3917d309328315','7472928395208f70E3cE30B9e10dc882cBDD3e9967b7942AaE492106d9C7bE44','Method Currency',1,'2018-07-18 18:00:00','2018-07-19 13:06:30'),(512,'CoinGate','CoinGate','5b508cdec02d6.jpg','50','1000','70','2','1','Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N',NULL,'Method Currency',1,'2018-07-18 18:00:00','2018-07-19 13:06:38'),(513,'CoinPayments-ALL','Bitcoin CoinPayment','5b508ce75eb78.jpg','10','1000','1','2','1','db1d9f12444e65c921604e289a281c56',NULL,'Method Currency',1,NULL,'2018-07-19 13:06:47'),(801,NULL,'City Bank','1532008263h7.png','0','0','80','2','1.5','ifsoufiosufg iougiousaioug asguiouasoguoisaugoiug',NULL,'BDT',1,'2018-07-19 13:51:03','2018-07-21 09:46:03'),(802,NULL,'Perfect Bank','1532008453h7.png','0','0','80','2','2.75','fsjlsjfjslkajfklasjf sajflksajflkjsadkljflksajdf sdaklfjlksajdflk',NULL,'BDT',1,'2018-07-19 13:54:13','2018-07-21 09:46:12');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'Starter','1506089926.png','5','75000','150',1,3,1,'2017-06-13 16:25:33','2017-12-06 06:38:24'),(2,'Silver','1508829595.png','75000','100000','200',1,3,1,'2017-06-13 16:37:42','2017-12-17 20:37:40'),(3,'Gold','1506089898.png','100000','1250000','3',100,1,1,'2017-06-13 16:41:00','2017-09-22 02:18:18'),(4,'Platinum','1506089875.png','1250000','1500000','160',1,4,1,'2017-06-13 16:41:54','2017-09-22 02:17:56'),(5,'test plan','1508837851.png','20','200','10',10,3,1,'2017-10-24 03:37:31','2017-10-24 03:37:31'),(7,'High Voltage','1508846773.png','1500','3000','20',20,1,1,'2017-10-24 06:06:13','2017-12-17 20:41:20'),(8,'Super Plan','1508846773.png','5000','10000','20',20,1,1,'2017-10-24 06:06:13','2017-12-17 20:39:58'),(9,'Trump Card','1508846773.png','100','500','20',20,1,1,'2017-10-24 06:06:13','2017-12-17 20:42:22');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repeat_logs`
--

LOCK TABLES `repeat_logs` WRITE;
/*!40000 ALTER TABLE `repeat_logs` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repeats`
--

LOCK TABLES `repeats` WRITE;
/*!40000 ALTER TABLE `repeats` DISABLE KEYS */;
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
INSERT INTO `services` VALUES (1,'upper Fast Repeat','<i class=\"fa fa-rocket\" aria-hidden=\"true\"></i>','2017-09-27 17:35:45','2017-12-04 12:18:29'),(2,'EASY SETUP','<i class=\"fa fa-wrench\" aria-hidden=\"true\"></i>','2017-09-27 17:35:59','2017-11-05 00:44:10'),(3,'INVESTMENT','<i class=\"fa fa-money\" aria-hidden=\"true\"></i>','2017-09-27 17:36:08','2017-11-05 00:44:27'),(4,'WITHDRAW','<i class=\"fa fa-money\" aria-hidden=\"true\"></i>','2017-09-27 17:36:15','2017-11-05 00:44:55'),(5,'FULLY DYNAMIC','<i class=\"fa fa-th\" aria-hidden=\"true\"></i>','2017-09-27 17:36:23','2017-11-05 00:45:49'),(6,'ADMIN DASHBOARD','<i class=\"fa fa-th\" aria-hidden=\"true\"></i>','2017-09-27 17:36:30','2017-11-05 00:46:52'),(7,'PLANS','<i class=\"fa fa-th\" aria-hidden=\"true\"></i>','2017-09-27 17:36:39','2017-11-05 00:47:06'),(8,'EASY SETUP','<i class=\"fa fa-wrench\" aria-hidden=\"true\"></i>','2017-11-05 00:47:51','2017-11-05 00:47:51');
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
  `title` blob NOT NULL,
  `subtitle` blob NOT NULL,
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
INSERT INTO `sliders` VALUES (5,'5a25219022749.jpg',_binary '<h1 style=\"margin-top: 0px; margin-bottom: 15px; font-size: 38px; font-family: Montserrat, sans-serif; text-align: center;\"><br></h1><h1 style=\"margin-top: 0px; margin-bottom: 15px; font-size: 38px; font-family: Montserrat, sans-serif; text-align: center;\">Revolutionary Money Making Platform<span style=\"color: rgb(255, 255, 255);\"><div><font color=\"#FF0000\"><span style=\"font-size: 40px; font-weight: 800;\">HexaTrade</span></font><span style=\"font-size: 40px; font-weight: 800;\"> is Growing Money <br><br></span></div></span></h1>',_binary '<br>Grow Your Cryptocurrency With HexaTrade<br><br>','2017-10-17 00:04:53','2017-12-16 23:04:17');
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
INSERT INTO `socials` VALUES (3,'Facebook','<i class=\"fa fa-facebook\" aria-hidden=\"true\"></i>','https://www.facebook.com/thesoftking','2017-08-19 06:25:30','2017-10-17 00:11:24'),(5,'twitter','<i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>','https://twitter.com/thesoftking','2017-08-19 06:29:52','2017-08-19 06:29:52'),(6,'linkedin','<i class=\"fa fa-linkedin\" aria-hidden=\"true\"></i>','http://thesoftking.com/contact#','2017-08-19 06:30:23','2017-08-19 06:30:23'),(7,'google plus','<i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i>','http://thesoftking.com/contact#','2017-08-19 06:32:35','2017-08-19 06:32:35'),(8,'instragram','<i class=\"fa fa-instagram\" aria-hidden=\"true\"></i>','#','2017-08-19 07:28:44','2017-08-19 07:28:44');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_messages`
--

LOCK TABLES `support_messages` WRITE;
/*!40000 ALTER TABLE `support_messages` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supports`
--

LOCK TABLES `supports` WRITE;
/*!40000 ALTER TABLE `supports` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (2,'Angenila Jolly','1513499751.jpg','CEO',_binary 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took.','2017-09-28 10:59:39','2017-12-17 20:36:05'),(3,'Pranto Biswas','1513499727.jpg','Executive',_binary 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took.<br>','2017-09-28 11:00:05','2017-12-17 20:44:07'),(4,'Usman Khaja','1513499702.jpg','Sr. Accountant',_binary 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took.<br>','2017-09-28 11:00:29','2017-12-17 20:35:02'),(5,'Pial Chowdhury','1513499632.jpg','Senior Executive',_binary '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>','2017-12-17 20:33:53','2017-12-17 20:33:53'),(6,'Ketthy Ben','1513499671.jpg','Executive',_binary '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br>','2017-12-17 20:34:31','2017-12-17 20:34:31');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logins`
--

LOCK TABLES `user_logins` WRITE;
/*!40000 ALTER TABLE `user_logins` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logs`
--

LOCK TABLES `user_logs` WRITE;
/*!40000 ALTER TABLE `user_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_logs` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_logs`
--

LOCK TABLES `withdraw_logs` WRITE;
/*!40000 ALTER TABLE `withdraw_logs` DISABLE KEYS */;
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
INSERT INTO `withdraw_methods` VALUES (1,'bKash','1506108954h8.png','500','25000','25','2.25','2',1,'2017-07-28 09:09:41','2017-09-22 07:36:13'),(2,'Sure Cash','1508828617h8.png','100','2000','25','2.30','3',1,'2017-07-28 09:10:00','2017-10-24 01:03:37'),(3,'Dutch Bangla Bank','1506112905h8.png','50','20000','0','0','1',1,'2017-08-09 15:06:21','2017-10-24 01:01:54'),(5,'SADFADSF','1508846467h8.png','10000','10000','10','1','15',1,'2017-10-24 06:01:07','2017-10-24 06:01:07');
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

-- Dump completed on 2020-10-06 22:15:15
