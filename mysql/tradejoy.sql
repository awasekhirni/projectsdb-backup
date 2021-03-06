-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: tradejoy
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
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `admins` VALUES (1,'Admin Rahman','admin','admin@gmail.com','1523439979.jpg','$2y$10$vzmtdYksO06ie0BS2ylbD.15.QBEdP5ebZpOUv2PYXu7e5fDI6Ay2','0EGJnmjXSGSCyfFozRQtUvSs79MQRPucpROUeC49NDXI0WXiChnhnQsHviii',NULL,'2018-12-22 14:01:13'),(2,'Lone Due','hellohasan','hellomrhasan@gmail.com','1516745190.png','$2y$10$tEEfh1NRmbsv2bjFeH4NK.5uzbh6/mdxFkRWRsc51bm1Jv9jA/N6O','fKVhdSTImg3JXiNXFn5op8VUpX2iSDdYX8IkIZpwPa2HdS6mhqhHbVa8OqPX',NULL,'2018-01-23 22:06:31');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (6,'FOREX','forex',1,'2018-11-11 16:37:18','2018-11-11 16:37:18'),(7,'CRYPTO','crypto',1,'2018-11-11 16:37:26','2018-11-11 16:37:26');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
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
  `currency` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telegram_status` tinyint(1) NOT NULL DEFAULT '0',
  `email_alert` tinyint(1) NOT NULL DEFAULT '0',
  `phone_alert` tinyint(1) NOT NULL DEFAULT '0',
  `email_verify` tinyint(1) NOT NULL DEFAULT '0',
  `phone_verify` tinyint(1) NOT NULL DEFAULT '0',
  `register_status` tinyint(1) NOT NULL DEFAULT '0',
  `google_map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytic` blob,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat` blob,
  `captcha_status` tinyint(1) NOT NULL DEFAULT '0',
  `captcha_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `captcha_site` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `breadcrumb` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribe_bg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_bg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_bg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longblob NOT NULL,
  `terms` longblob NOT NULL,
  `short_about_img` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_about` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` blob NOT NULL,
  `email_body` blob NOT NULL,
  `sms_tem` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smsapi` blob NOT NULL,
  `telegram_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telegram_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tw_api` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `basic_settings` VALUES (1,'Forex Trade Premium Signal','f69021','+123-456-789','softwarezon@hotmail.com','Jalabad, Sonkor Road, Malasia 1260','USD','$',1,1,0,1,0,1,'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.3331687710743!2d90.36636621538977!3d23.806748892537406!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c0d6f1d99d03%3A0xcd82050166bb03db!2sMirpur+10+Bus+Stopage!5e0!3m2!1sen!2sbd!4v1510782736980\" width=\"1900\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>',NULL,'bitcoin trade signal, coinpayment, crypto currency trade, crypto currency trading signal, cryptocurrency trade, forex, forex signal, forex trade, forex trade signal, live trade signal, telegram, telegram signal, trade idea, trade signal, trading signal','Softwarezon','Forex Trade is one of the leading and most professional team in providing Forex trading Signal and Trade',_binary '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/58f855ddf7bbaa72709c73ec/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->',0,'6LdLbDwUAAAAAAJxk9AAI0HkNDAN865s-TSEZNbj','6LdLbDwUAAAAAONd5PuyVZloSLxh3x86tirXpNGx','breadcrumb_1547403379.jpg','subscribe_1509795019.jpg','counter_1512834741.jpg','speciality_1510523084.jpg',_binary '<h1 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-weight: 400; font-family: DauphinPlain; font-size: 70px; line-height: 90px; color: rgb(0, 0, 0); text-align: center;\">About Us</h1><h4 style=\"margin: 10px 10px 5px; padding: 0px; font-weight: 400; text-align: center; line-height: 18px; font-size: 14px; font-style: italic; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"</h4><h5 style=\"margin: 5px 10px 20px; padding: 0px; font-weight: 400; text-align: center; font-size: 12px; line-height: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"</h5><hr style=\"margin: 0px; padding: 0px; border-top: 0px; clear: both; height: 1px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0)); color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" center;\"=\"\"><div id=\"Content\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" center;\"=\"\"><div id=\"bannerL\" style=\"margin: 0px 0px 0px -160px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: left; text-align: right;\"></div><div id=\"bannerR\" style=\"margin: 0px -160px 0px 0px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: right; text-align: left;\"></div><div id=\"Panes\" style=\"margin: 15px 0px 0px; padding: 0px;\"><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; text-align: left; float: left;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br style=\"margin: 0px; padding: 0px; clear: both;\"><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; text-align: left; float: left;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Where can I get some?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p></div></div></div>\r\n\r\n\r\n\r\n<script async=\"\" src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\r\n<script>\r\n     (adsbygoogle = window.adsbygoogle || []).push({\r\n          google_ad_client: \"ca-pub-3634899401571723\",\r\n          enable_page_level_ads: true\r\n     });\r\n</script>\r\n\r\n<script async=\"\" src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\r\n<script>\r\n  (adsbygoogle = window.adsbygoogle || []).push({\r\n    google_ad_client: \"ca-pub-3634899401571723\",\r\n    enable_page_level_ads: true\r\n  });\r\n</script>\r\n\r\n<script async=\"\" src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\r\n<script>\r\n  (adsbygoogle = window.adsbygoogle || []).push({\r\n    google_ad_client: \"ca-pub-3634899401571723\",\r\n    enable_page_level_ads: true\r\n  });\r\n</script>',_binary '<h4 style=\"margin: 10px 10px 5px; padding: 0px; font-weight: 400; text-align: center; line-height: 18px; font-size: 14px; font-style: italic; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"</h4><h5 style=\"margin: 5px 10px 20px; padding: 0px; font-weight: 400; text-align: center; font-size: 12px; line-height: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"</h5><hr style=\"margin: 0px; padding: 0px; border-top: 0px; clear: both; height: 1px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0)); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: center;\"><div id=\"Content\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: center;\"><div id=\"bannerL\" style=\"margin: 0px 0px 0px -160px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: left; text-align: right;\"></div><div id=\"bannerR\" style=\"margin: 0px -160px 0px 0px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: right; text-align: left;\"></div><div id=\"Panes\" style=\"margin: 15px 0px 0px; padding: 0px;\"><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; text-align: left; float: left;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br style=\"margin: 0px; padding: 0px; clear: both;\"><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; text-align: left; float: left;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Where can I get some?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p></div></div></div>','sallhlpSaOvBzywNkuU4.png','About Company','What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page&nbsp;',_binary '<h4 style=\"margin: 10px 10px 5px; padding: 0px; font-weight: 400; text-align: center; line-height: 18px; font-size: 14px; font-style: italic; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"</h4><h5 style=\"margin: 5px 10px 20px; padding: 0px; font-weight: 400; text-align: center; font-size: 12px; line-height: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"</h5><hr style=\"margin: 0px; padding: 0px; border-top: 0px; clear: both; height: 1px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0)); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: center;\"><div id=\"Content\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: center;\"><div id=\"bannerL\" style=\"margin: 0px 0px 0px -160px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: left; text-align: right;\"></div><div id=\"bannerR\" style=\"margin: 0px -160px 0px 0px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: right; text-align: left;\"></div><div id=\"Panes\" style=\"margin: 15px 0px 0px; padding: 0px;\"><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; text-align: left; float: left;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br style=\"margin: 0px; padding: 0px; clear: both;\"><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; text-align: left; float: left;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; text-align: left; float: right;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-weight: 400; line-height: 24px; font-family: DauphinPlain; font-size: 24px;\">Where can I get some?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p></div></div></div>',_binary '<div class=\"wrapper\" style=\"background-color: rgb(242, 242, 242); height: auto; min-height: 100%;\">\r\n<table style=\"border-collapse: collapse; table-layout: fixed; color: #b8b8b8; font-family: Ubuntu,sans-serif;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"preheader__snippet\" style=\"padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n<td class=\"preheader__webversion\" style=\"text-align: right; padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0; width: 600px;\">\r\n<div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\">\r\n<div id=\"emb-email-header\" class=\"logo-left\" style=\"font-size: 0px !important; line-height: 0 !important;\" align=\"left\"></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"column\" style=\"padding: 0px; text-align: left; vertical-align: top; color: rgb(96, 102, 109); line-height: 21px; font-family: sans-serif; width: 600px;\">\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px; margin-top: 24px;\">\r\n<div style=\"line-height: 10px; font-size: 1px;\">&nbsp;</div>\r\n</div>\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px;\">\r\n<h2>Hi {{name}},</h2>\r\n<p><strong>{{message}}</strong></p>\r\n</div>\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px;\"><br></div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\">\r\n<p class=\"size-14\" style=\"margin-top: 0px; margin-bottom: 0px; line-height: 21px;\"><font size=\"3\"><b>Thanks,</b></font><br>\r\n<strong style=\"font-size: 14px;\">{{site_title}}</strong>\r\n</p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table><br><br><br>\r\n</div>','New Trading Signal Send to You. Please check.',_binary 'https://xnnm3.api.infobip.com/sms/1/text/query?username=*********&password=**********&to={{number}}&text={{message}}','520114925:AAGIwms5iE0c4rt2ZmEGUeHCXbulce4P_L8','http://t.me/cryptotsignalTokenBot','JEo5CHsHbjMeNpETZSR7eLFw8Tfmajre','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy. Lorem Ipsum is simply dummy text of the printing typesetting industry Lorem Ipsum is simply.','1503148676.jpg','2017 Â© All Copyright Reserved By&nbsp;<a href=\"http://softwarezon.com/\" title=\"SoftwareZon\" target=\"_blank\">SOFTWAREZON</a>.',NULL,'2019-01-14 21:04:15');
/*!40000 ALTER TABLE `basic_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Cryipto','cryipto',1,'2017-11-19 10:51:20','2017-12-09 03:14:57'),(2,'Forex','forex',1,'2017-11-19 10:55:34','2017-11-27 21:18:25'),(3,'Bitcoin','bitcoin',1,'2017-11-19 10:56:34','2017-11-27 21:18:39'),(4,'International','international',1,'2017-11-19 10:57:01','2017-11-27 22:35:27'),(5,'Market','market',1,'2017-11-27 22:35:46','2017-11-27 22:35:46'),(6,'Currency Exchange','currency-exchange',1,'2017-11-27 22:36:11','2017-11-27 22:36:11'),(7,'Trading','trading',1,'2017-11-27 22:36:29','2017-11-27 22:36:29'),(8,'Freelance','freelance',1,'2017-11-27 22:37:29','2017-11-27 22:37:29'),(9,'Local Market','local-market',1,'2017-11-27 22:38:22','2017-11-27 22:38:22'),(10,'Analysis','analysis',1,'2017-11-27 22:38:42','2017-11-27 22:38:42'),(11,'LightCoin','lightcoin',1,'2017-12-27 13:42:56','2018-01-24 16:14:45');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_backups`
--

DROP TABLE IF EXISTS `database_backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database_backups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_backups`
--

LOCK TABLES `database_backups` WRITE;
/*!40000 ALTER TABLE `database_backups` DISABLE KEYS */;
/*!40000 ALTER TABLE `database_backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_settings`
--

DROP TABLE IF EXISTS `email_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `driver` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_status` tinyint(4) NOT NULL DEFAULT '0',
  `email_body` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_settings`
--

LOCK TABLES `email_settings` WRITE;
/*!40000 ALTER TABLE `email_settings` DISABLE KEYS */;
INSERT INTO `email_settings` VALUES (1,'mail','smtp.mailtrap.io','25','10ce55ec151848','54a9cf8c6068dd','tls',0,_binary '<p>&nbsp;</p>\r\n<div class=\"wrapper\" style=\"background-color: rgb(242, 242, 242); height: auto; min-height: 100%;\">\r\n<table style=\"border-collapse: collapse; table-layout: fixed; color: #b8b8b8; font-family: Ubuntu,sans-serif;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"preheader__snippet\" style=\"padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n<td class=\"preheader__webversion\" style=\"text-align: right; padding: 10px 0 5px 0; vertical-align: top; width: 280px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0; width: 600px;\">\r\n<div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\">\r\n<div id=\"emb-email-header\" class=\"logo-left\" style=\"font-size: 0px !important; line-height: 0 !important;\" align=\"left\"></div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"column\" style=\"padding: 0px; text-align: left; vertical-align: top; color: rgb(96, 102, 109); line-height: 21px; font-family: sans-serif; width: 600px;\">\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px; margin-top: 24px;\">\r\n<div style=\"line-height: 10px; font-size: 1px;\">&nbsp;</div>\r\n</div>\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px;\">\r\n<h2>Hi {{name}},</h2>\r\n<p><strong>{{message}}</strong></p>\r\n</div>\r\n<div style=\"font-size: 14px; margin-left: 20px; margin-right: 20px;\"><br></div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\">\r\n<p class=\"size-14\" style=\"margin-top: 0px; margin-bottom: 0px; line-height: 21px;\"><font size=\"3\"><b>Thanks,</b></font><br> <strong style=\"font-size: 14px;\">{{site_title}}</strong></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table><br>\r\n</div><div class=\"wrapper\" style=\"background-color: rgb(242, 242, 242); height: auto; min-height: 100%;\"><br></div><div class=\"wrapper\" style=\"background-color: rgb(242, 242, 242); height: auto; min-height: 100%;\"><br></div><div class=\"wrapper\" style=\"background-color: rgb(242, 242, 242); height: auto; min-height: 100%;\"><br></div><div class=\"wrapper\" style=\"background-color: rgb(242, 242, 242); height: auto; min-height: 100%;\"><br></div><div class=\"wrapper\" style=\"background-color: rgb(242, 242, 242); height: auto; min-height: 100%;\"><br></div>\r\n<br>\r\n<br>\r\n<br>',NULL,'2019-01-14 21:59:53');
/*!40000 ALTER TABLE `email_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frames`
--

DROP TABLE IF EXISTS `frames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frames` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frames`
--

LOCK TABLES `frames` WRITE;
/*!40000 ALTER TABLE `frames` DISABLE KEYS */;
INSERT INTO `frames` VALUES (1,'M1','m1',1,'2018-11-08 19:07:25','2018-11-08 19:07:43'),(2,'M5','m5',1,'2018-11-08 19:13:07','2018-11-08 19:13:07'),(4,'M15','m15',1,'2018-11-08 19:13:28','2018-11-08 19:13:28'),(5,'M30','m30',1,'2018-11-11 16:31:43','2018-11-11 16:31:43'),(6,'H1','h1',1,'2018-11-11 16:31:50','2018-11-11 16:31:50'),(7,'H4','h4',1,'2018-11-11 16:32:01','2018-11-11 16:32:01'),(8,'D1','d1',1,'2018-11-11 16:32:10','2018-11-11 16:32:10'),(9,'W1','w1',1,'2018-11-11 16:32:17','2018-11-11 16:32:17');
/*!40000 ALTER TABLE `frames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instragram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Habiba Himu','You can relay on our amazing features list and also our customer services will be great experience.','member_1547480059.jpg','CEO','#','#','#','#','2017-12-09 10:40:54','2019-01-14 17:34:19'),(3,'Pump_Dizzel','You can relay on our amazing features list and also our customer services will be great experience.','member_1512978136.jpg','CEO, Softhouse','#','#','#','#','2017-12-11 07:42:18','2017-12-27 13:21:24'),(4,'Harun Rahman','You can relay on our amazing features list and also our customer services will be great experience.','member_1512978158.jpg','CEO, Softhouse','#','#','#','#','2017-12-11 07:42:38','2017-12-27 13:21:31'),(5,'RFL Boss','You can relay on our amazing features list and also our customer services will be great experience.','member_1547480036.jpg','CEO, Softhouse','#','#','#','#','2017-12-11 07:42:58','2019-01-14 17:33:56');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
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
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (3,'FX Live Charts','fx-live-charts',_binary '<link rel=\"stylesheet\" href=\"https://www.ifcmarkets.com/css/amcharts/style.css\" type=\"text/css\"><link rel=\"stylesheet\" href=\"https://www.ifcmarkets.com/css/front/charts.css\" type=\"text/css\"><script type=\"text/javascript\"> var lang_cw = \"en\";var hname_cw = \"www.ifcmarkets.com\";var instrument_list=\"AUDCAD,AUDCHF,AUDJPY,AUDNZD,AUDUSD,CADCHF,CADJPY,CHFJPY,EURAUD,EURCAD,EURCHF,EURCZK,EURGBP,EURHKD,EURJPY,EURMXN,EURNZD,EURPLN,EURRUB,EURSEK,EURTRY,EURUSD,EURZAR,GBPAUD,GBPCAD,GBPCHF,GBPJPY,GBPNZD,GBPSEK,GBPUSD,NZDCAD,NZDCHF,NZDJPY,NZDUSD,USDCAD,USDCHF,USDCZK,USDDKK,USDJPY,USDMXN,USDNOK,USDPLN,USDRUB,USDSEK,USDSGD,USDTRY,USDZAR,DJI,Nd100,NIKKEI,SP500,USDIDX,#C-BRENT,#C-COCOA,#C-COFFEE,#C-COPPER,#C-CORN,#C-COTTON,#C-FCATTLE,#C-HEATOIL,#C-LCATTLE,#C-NATGAS,#C-OATS,#C-ORANGE,#C-SOYB,#C-SOYBM,#C-SUGAR,#C-WHEAT,OIL,#S-AA,#S-AAPL,#S-ADBE,#S-AEP,#S-AES,#S-AIG,#S-AMZN,#S-AXP,#S-BA,#S-BAC,#S-BK,#S-BP,#S-C,#S-CAT,#S-COP,#S-CSCO,#S-CVX,#S-CX,#S-DAL,#S-DIS,#S-EBAY,#S-F,#S-FB,#S-GE,#S-GG,#S-GM,#S-GOOG,#S-GS,#S-GT,#S-HD,#S-HOG,#S-HON,#S-HPQ,#S-HTZ,#S-IBM,#S-INTC,#S-JNJ,#S-JPM,#S-KO,#S-LLY,#S-MA,#S-MAR,#S-MBI,#S-MCD,#S-MET,#S-MMM,#S-MO,#S-MRK,#S-MS,#S-MSFT,#S-NKE,#S-NOK,#S-OXY,#S-PBR,#S-PEP,#S-PFE,#S-PG,#S-PM,#S-RF,#S-T,#S-TM,#S-TOT,#S-TROX,#S-UNH,#S-UTX,#S-V,#S-VZ,#S-WFC,#S-WFT,#S-WMT,#S-WU,#S-XOM,#S-XRX,XAGEUR,XAGUSD,XAUEUR,XAUUSD,XPDUSD,XPTUSD,XAUOIL,XAUSnP,XAUXAG\";var selected_instr_array=\"1:AUDCAD,1:AUDCHF,1:AUDJPY,1:AUDNZD,1:AUDUSD,1:CADCHF,1:CADJPY,1:CHFJPY,1:EURAUD,1:EURCAD,1:EURCHF,1:EURCZK,1:EURGBP,1:EURHKD,1:EURJPY,1:EURMXN,1:EURNZD,1:EURPLN,1:EURRUB,1:EURSEK,1:EURTRY,1:EURUSD,1:EURZAR,1:GBPAUD,1:GBPCAD,1:GBPCHF,1:GBPJPY,1:GBPNZD,1:GBPSEK,1:GBPUSD,1:NZDCAD,1:NZDCHF,1:NZDJPY,1:NZDUSD,1:USDCAD,1:USDCHF,1:USDCZK,1:USDDKK,1:USDJPY,1:USDMXN,1:USDNOK,1:USDPLN,1:USDRUB,1:USDSEK,1:USDSGD,1:USDTRY,1:USDZAR,2:CAC40,2:DAX,2:DJI,2:FTSE100,2:NIKKEI,2:Nd100,2:SP500,2:USDIDX,3:#C-BRENT,3:#C-COCOA,3:#C-COFFEE,3:#C-COPPER,3:#C-CORN,3:#C-COTTON,3:#C-FCATTLE,3:#C-HEATOIL,3:#C-LCATTLE,3:#C-NATGAS,3:#C-OATS,3:#C-ORANGE,3:#C-SOYB,3:#C-SOYBM,3:#C-SUGAR,3:#C-WHEAT,3:OIL,4:#S-AA,4:#S-AAPL,4:#S-ACI,4:#S-ADBE,4:#S-AEP,4:#S-AES,4:#S-AIG,4:#S-AMZN,4:#S-ANR,4:#S-AXP,4:#S-BA,4:#S-BAC,4:#S-BK,4:#S-BP,4:#S-C,4:#S-CAT,4:#S-COP,4:#S-CSCO,4:#S-CVX,4:#S-CX,4:#S-DAL,4:#S-DD,4:#S-DIS,4:#S-DOW,4:#S-EBAY,4:#S-F,4:#S-FB,4:#S-GE,4:#S-GG,4:#S-GM,4:#S-GOOG,4:#S-GS,4:#S-GT,4:#S-HD,4:#S-HOG,4:#S-HON,4:#S-HPQ,4:#S-HTZ,4:#S-IBM,4:#S-INTC,4:#S-JNJ,4:#S-JPM,4:#S-KO,4:#S-LCC,4:#S-LLY,4:#S-MA,4:#S-MAR,4:#S-MBI,4:#S-MCD,4:#S-MET,4:#S-MMM,4:#S-MO,4:#S-MRK,4:#S-MS,4:#S-MSFT,4:#S-NKE,4:#S-NOK,4:#S-OXY,4:#S-PBR,4:#S-PEP,4:#S-PFE,4:#S-PG,4:#S-PM,4:#S-RF,4:#S-SD,4:#S-T,4:#S-TM,4:#S-TOT,4:#S-TROX,4:#S-UNH,4:#S-UTX,4:#S-V,4:#S-VZ,4:#S-WFC,4:#S-WFT,4:#S-WMT,4:#S-WU,4:#S-XOM,4:#S-XRX,4:#S-YHOO,5:XAGEUR,5:XAGUSD,5:XAUEUR,5:XAUUSD,5:XPDUSD,5:XPTUSD,6:XAUOIL,6:XAUSnP,6:XAUXAG\";var vi=document.createElement(\"script\");vi.type = \"text/javascript\";vi.async=true;vi.src = \"https://www.ifcmarkets.com/js/chartsWidgetAM.js\";var s=document.getElementsByTagName(\"script\")[0];s.parentNode.insertBefore(vi,s);</script><div id=\"ifc_widgetcharts\" class=\"ifc_widgetcharts\"></div><div id=\"ifc_nedcharts\" class=\"ifc_nedcharts\">Provided by <a href=\"https://www.ifcmarkets.com/en/informers\" target=\"blank\" rel=\"nofollow\">IFC Markets</a></div>','2019-01-14 17:43:47','2019-01-16 12:16:54'),(4,'Forex Calendar','forex-calendar',_binary '<script type=\"text/javascript\">DukascopyApplet = {\"type\":\"economic_calendar_new\",\"params\":{\"showHeader\":false,\"tableBorderColor\":\"#D92626\",\"defaultTimezone\":0,\"defaultCountries\":\"c:AU,CA,CH,CN,EU,GB,JP,NZ,US,DE,FR,IT,ES\",\"impacts\":[0,1,2],\"dateTab\":2,\"dateFrom\":1459036800000,\"dateTo\":1459555200000,\"showColCountry\":true,\"showColCurrency\":true,\"showColImpact\":true,\"showColPrevious\":true,\"showColForecast\":true,\"width\":\"100%\",\"height\":\"500\",\"adv\":\"popup\"}};</script><script type=\"text/javascript\" src=\"https://freeserv-static.dukascopy.com/2.0/core.js\"></script>','2019-01-16 12:18:27','2019-01-16 12:18:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_12_12_113635_create_signal_plans_table',2),(4,'2018_12_18_013847_create_payment_log_images_table',3),(5,'2018_12_22_022414_create_staff_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'RFL','partner_1512846249.png','2017-11-18 13:04:26','2017-12-09 13:04:09'),(2,'RFL','partner_1512846257.png','2017-11-18 13:04:37','2017-12-09 13:04:17'),(3,'RFL','partner_1512846264.png','2017-11-18 13:04:47','2017-12-09 13:04:24'),(4,'RFL','partner_1512846272.png','2017-11-18 13:04:54','2017-12-09 13:04:32'),(5,'RFL','partner_1512846214.png','2017-11-18 13:05:06','2017-12-09 13:03:35');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
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
INSERT INTO `password_resets` VALUES ('info@malaysia1.my','$2y$10$MofqgINDLyq9/yoxD.iXRuc.n6DqqY.9FZb9DHeGe5ONgRL28My2W',NULL);
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_log_images`
--

DROP TABLE IF EXISTS `payment_log_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_log_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_log_id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_log_images`
--

LOCK TABLES `payment_log_images` WRITE;
/*!40000 ALTER TABLE `payment_log_images` DISABLE KEYS */;
INSERT INTO `payment_log_images` VALUES (1,3,'WlgxgFw6wSVs7EN1.jpg','2019-01-14 21:44:41','2019-01-14 21:44:41'),(2,3,'OaweFk4jD0UzkzLf.jpg','2019-01-14 21:44:42','2019-01-14 21:44:42'),(3,3,'GNjvaY0bP6HgJii2.jpg','2019-01-14 21:44:42','2019-01-14 21:44:42');
/*!40000 ALTER TABLE `payment_log_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `plan_id` int(10) NOT NULL,
  `payment_id` tinyint(4) NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `usd` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `btc_amo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_acc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
INSERT INTO `payment_logs` VALUES (1,11,5,4,'dmIWmNGhNhUKKwA7','199','199',NULL,NULL,NULL,1,'2019-01-14 21:39:23','2019-01-14 21:39:41'),(2,12,5,4,'mt4NW1iNakKgrf1C','199','199',NULL,NULL,NULL,1,'2019-01-14 21:42:55','2019-01-14 21:43:21'),(3,12,6,15,'1qcv07utyrlM7eUd','249','249',NULL,NULL,'Check now and active my account',1,'2019-01-14 21:44:22','2019-01-14 21:45:23');
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `val1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `val2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `val3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'PAYPAL','paypal_1546856534h3.png','1','Ad81CbpAtMZOKPnB9JusO8AJ_AAjgAy1xf_UqgRWlLqhL06a7XOT1XQM_bsCNseXB5GeD23tkJ0lKfDx','EEp--OFpq6vH1OFJwT02bepg-EJEwFtBAqO5MEeBrs7TdAf0AA9vwHse4s610iOFFjUyU5ZiLhjr8Vc_','live',1,NULL,'2019-01-13 22:30:20'),(2,'PERFECT MONEY','perfect_1511850445h4.png','1','U16741300','2B45ZL02BMveaziGzVBtiaebk',NULL,1,NULL,'2019-01-13 22:30:24'),(3,'BTC - (BLOCKCHAIN)','btc_1516988916h5.png','1','382688a1-f034-45ab-9972-808f70b83ba8','xpub6DAmnCaQKkCAoHPvfCUsqNWLHSwHqRBnYYKD3YbwAk2jzDSfrEzhBCkGehUq7oqkwq1XZwcV74qJMrpaD95u3AgPzPjyoUyJnU6QwZtikhv',NULL,1,NULL,'2019-01-13 22:30:28'),(4,'STRIPE - (CARD)','stripe_1511858583h6.png','1','sk_test_aat3tzBCCXXBkS4sxY3M8A1B','pk_test_AU3G7doZ1sbdpJLj0NaozPBu',NULL,1,NULL,'2019-01-09 17:40:22'),(5,'SKRILL','skrill_1516266573h7.png','1','merchant-email@example.com','AU3G7doZ1sbdpJLj0NaozPBu',NULL,1,'2018-01-04 18:00:00','2019-01-13 22:30:33'),(6,'CoinPayment','coin_1516266580h7.png','1','669e817074849967cad1ba0313ea8b3b','ba0313ea8b3b',NULL,1,NULL,'2019-01-13 22:30:39'),(15,'Webmoney USD Wallet','manual_1546878747h8.png','1','Please send payment of your plan to our USD wallet <br>\r\nin webmoney and send us the screenshot or <br>\r\npayment slip our USD wallet : S1442O252F74T12',NULL,NULL,1,'2019-01-07 16:32:27','2019-01-14 21:56:03'),(16,'Bitcoin Wallet Address','manual_1547413492h8.jpg','1','Please send bitcoin equivalent to your plan amount <br>\r\nand send us screenshot or payment slip <br>\r\nour bitcoin Address: <br>\r\n1tRdgPi8623r2EgFioHLoKi9nZRacFcq2W',NULL,NULL,1,'2019-01-07 16:36:05','2019-01-14 21:56:58');
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
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_type` tinyint(1) NOT NULL DEFAULT '0',
  `price_type` tinyint(1) DEFAULT '0',
  `dashboard_status` tinyint(1) NOT NULL DEFAULT '0',
  `telegram_status` tinyint(1) NOT NULL DEFAULT '0',
  `duration` int(11) DEFAULT NULL,
  `sms_status` tinyint(1) NOT NULL DEFAULT '0',
  `coaching_status` tinyint(1) NOT NULL DEFAULT '0',
  `call_status` tinyint(1) NOT NULL DEFAULT '0',
  `email_status` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `support` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'Basic','0','ion-ios-basketball-outline',0,0,1,0,7,0,0,0,0,1,'None','2017-11-23 07:10:18','2019-04-06 19:26:36'),(2,'Silver','49','ion-ios-baseball-outline',0,1,1,1,45,0,0,0,1,1,'24X7','2017-11-23 07:20:49','2019-04-06 20:23:12'),(3,'Bronze','99','ion-ios-flower-outline',0,1,1,1,60,1,0,1,1,1,'Premium','2017-11-23 07:24:43','2019-04-06 20:22:52'),(4,'Economy','149','ion-ios-paw',0,1,1,1,60,1,0,1,1,0,'Premium','2017-11-23 07:25:26','2019-04-06 20:17:53'),(5,'Gold','199','ion-paper-airplane',1,1,1,1,80,1,0,1,1,0,'Pemium','2017-12-11 07:44:16','2019-04-06 20:17:42'),(6,'Diamond','249','ion-radio-waves',1,1,1,1,90,1,0,1,1,0,'Pemium','2017-12-11 07:45:41','2019-04-06 20:17:35');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `fetured` tinyint(4) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,'But I must explain to mistaken','but-i-must-explain-to-mistaken','kd8UqzYTO1Me8AaZZdAU.jpg','a,asd,asdasd,asdas,sad,asdfa,sada','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div><br></div>',1,1,26,'2017-11-19 11:36:45','2018-01-26 10:31:05'),(2,1,1,'\'Doing daily chores can help older women live longer\'','doing-daily-chores-can-help-older-women-live-longer','YGDdu0zhCnEHoJRSBzUB.jpg','as,adsasd,sadsad,asdsad','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div><br></div>',1,1,103,'2017-11-19 11:38:08','2017-12-29 20:00:56'),(3,1,1,'What is Lorem Ipsum?','what-is-lorem-ipsum','AxkYblZe86xPIAkf43uS.jpg','a,asd,asdasd,asdas,sad,asdfa,sada','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div><br></div>',0,1,4,'2017-11-19 11:39:08','2017-12-09 03:25:19'),(4,1,1,'Where does it come from?','where-does-it-come-from','oRZu9uQR1ayT9PQpcQTb.jpg','a,asd,asdasd,asdas,sad,asdfa,sada','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div><br></div>',1,1,24,'2017-11-19 11:40:01','2019-01-13 20:21:37'),(5,1,1,'Bitcoin Price Tops $9,000','bitcoin-price-tops-9000','fUwGNqrLWmy5kCR4tmPk.png','softwarezon,softwarezon.com','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><div><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div><br></div>',1,1,8,'2017-11-19 11:45:16','2017-12-29 20:00:39'),(6,1,1,'As Price Eyes $10,000, Bitcoin','as-price-eyes-10000-bitcoin','XJZ9mTzNjWhX7OQjQueL.jpg','softwarezon,softwarezon.com','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><div><br></div>',1,1,42,'2017-11-19 11:46:19','2017-12-29 20:00:31'),(7,1,3,'1914 translation by H. Rackham','1914-translation-by-h-rackham','awiiUaeknABaPKZD51wT.jpg','sef,asd,aedwqr,wqerwqr,qwrdwqer','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p><div><br></div>',1,0,4,'2017-11-19 11:47:13','2017-12-29 20:00:24'),(8,1,1,'Bitcoin, Ether Prices Surge to Fresh All-Time Highs','bitcoin-ether-prices-surge-to-fresh-all-time-highs','VeSm5vEJ7AIBWe1rNYpt.jpg','softwarezon,softwarezon.com','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p><div><br></div>',1,1,19,'2017-11-19 11:48:19','2018-01-28 10:32:59'),(9,1,3,'$10,000 Today? Bitcoin Price Looks Primed to Break Barrier','10000-today-bitcoin-price-looks-primed-to-break-barrier','oPGyi2FhuhDlGfeRLCWS.jpg','softwarezon,softwarezon.com.','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><div><br></div>',1,1,20,'2017-11-27 02:03:19','2017-12-24 22:28:14'),(10,1,3,'$300 Billion: Bitcoin Price Boosts Crypto','300-billion-bitcoin-price-boosts-crypto','OqyocokyhwqhNzhE6MvX.jpg','softwarezon,softwarezon.com','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><div><br></div>',1,1,37,'2017-11-27 02:04:14','2018-01-26 10:24:00'),(11,1,4,'cumque nihil impedit quo minus id quod maxime','cumque-nihil-impedit-quo-minus-id-quod-maxime','sumhFnGGvS5WKQzo3T3v.jpg','ass,as,d,er,ert','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><div><br></div>',1,0,4,'2017-11-27 02:05:40','2018-01-27 21:56:53'),(12,1,3,'Bitcoin Price Tops $10,000 on Korean Exchanges','bitcoin-price-tops-10000-on-korean-exchanges','jK6aw4awklQnqvlOvAMp.png','softwarezon,softwarezon.com','<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;\"=\"\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p><div><br></div>',1,1,22,'2017-11-27 02:06:23','2018-09-13 09:42:17'),(13,2,3,'Sample Post With Featured Image','sample-post-with-featured-image','VrWkLuFW9Yep8T4R5SCK.jpg','hasan,softwarezon','What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br>',1,1,7,'2017-12-09 02:44:51','2018-01-24 15:45:50');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `speciality_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speciality_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `currency_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `currency_live` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_cal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trading_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trading_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trading_script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `about_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `advertise_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `advertise_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_title` varchar(121) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscriber_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscriber_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `testimonial_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `result_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `result_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'Why We are Special','You can relay on our amazing features list and also our customer services will be great experience for you without doubt and in no-time','Forex Live Rate & Calculator','You can relay on our amazing features list and also our customer services will be greatexperience for you without doubt and in no-time and with great quality for design.','<!-- Live Rates widget by Forextime.com --> <script type=\"text/javascript\" src=\"//www.forextime.com/widget.js?type=live-rates&theme=light&p=&pt=no&l=&h=390&pairs=eurusdusdjpyeurgbpgbpusdeurchfusdcad&\"></script> <!-- Live Rates widget by Forextime.com -->','<!-- Profit Calculator widget by Forextime.com --> <script type=\"text/javascript\" src=\"//www.forextime.com/widget.js?type=profit-calculator&theme=light&p=&pt=no&l=&h=380&\"></script> <!-- Profit Calculator widget by Forextime.com -->','Grow with us','Follow our trading signals and be a winner of Forex trading.\r\nits a perfect option for those who wants to earn massive income  with monthly of 10%-20% profit from your  trading  account with very low risk.','<!-- TradingView Widget BEGIN -->\r\n<div class=\"tradingview-widget-container\">\r\n  <div class=\"tradingview-widget-container__widget\"></div>\r\n  <div class=\"tradingview-widget-copyright\"><a href=\"https://www.tradingview.com/forex-screener/\" rel=\"noopener\" target=\"_blank\"><span class=\"blue-text\">Forex Screener</span></a> by TradingView</div>\r\n  <script type=\"text/javascript\" src=\"https://s3.tradingview.com/external-embedding/embed-widget-screener.js\" async>\r\n  {\r\n  \"width\": \"100%\",\r\n  \"height\": 550px\",\r\n  \"defaultColumn\": \"overview\",\r\n  \"defaultScreen\": \"general\",\r\n  \"market\": \"forex\",\r\n  \"showToolbar\": true,\r\n  \"locale\": \"en\"\r\n}\r\n  </script>\r\n</div>\r\n<!-- TradingView Widget END -->','Why we extra Ordinary','<div style=\"text-align: justify;\"><font size=\"3\">You can relay on our amazing features list and also our customer services will be greatexperience for you without doubt and in no-time and with great quality for design.You can relay on our amazing features list and also our customer services will be greatexperience for you without doubt and in no-time and with great quality for design.relay on our amazing features list and also our customer services will be greatexperience for you without doubt and in no-time and with great quality for design. relay on our amazing features list and also our customer services&nbsp;</font><span style=\"font-size: medium;\">features list and also our customer services</span><br></div><div style=\"text-align: center;\"><font size=\"3\"><br></font></div>','about_image.jpg','counter_image.jpg','100% Trusted Forex Trading Signal provider','We have most experienced Forex Experts. and always analysis charts  and generate trading signal to help you to make good profit.','Best Management Team','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy','Subscribe To Our Newsletter','Dont miss any promotion or news from us','Simple Pricing Plan','We offer 100% satisfaction and Money back Guarantee','Check what our Customers are Saying','You can relay on our amazing features list and also our customer services will be great experience for you without doubt and in no-time','Awesome with Extra Ordinary Flexibility','You can relay on our amazing features list and also our customer services will be great experience for you without doubt and  no-time','Our Performance Statistics','2000+ pips and more than 90% win signals can shows our abilities and stability',NULL,'2019-01-16 13:31:48');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signal_comments`
--

DROP TABLE IF EXISTS `signal_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signal_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `signal_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signal_comments`
--

LOCK TABLES `signal_comments` WRITE;
/*!40000 ALTER TABLE `signal_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `signal_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signal_plans`
--

DROP TABLE IF EXISTS `signal_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signal_plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `signal_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signal_plans`
--

LOCK TABLES `signal_plans` WRITE;
/*!40000 ALTER TABLE `signal_plans` DISABLE KEYS */;
INSERT INTO `signal_plans` VALUES (55,4,1,'2019-01-14 17:32:02','2019-01-14 17:32:02'),(56,4,2,'2019-01-14 17:32:02','2019-01-14 17:32:02'),(57,4,3,'2019-01-14 17:32:03','2019-01-14 17:32:03'),(58,4,4,'2019-01-14 17:32:03','2019-01-14 17:32:03'),(59,4,5,'2019-01-14 17:32:03','2019-01-14 17:32:03'),(60,4,6,'2019-01-14 17:32:03','2019-01-14 17:32:03'),(61,3,1,'2019-01-14 17:32:21','2019-01-14 17:32:21'),(62,3,2,'2019-01-14 17:32:21','2019-01-14 17:32:21'),(63,3,3,'2019-01-14 17:32:21','2019-01-14 17:32:21'),(64,3,4,'2019-01-14 17:32:21','2019-01-14 17:32:21'),(65,3,5,'2019-01-14 17:32:21','2019-01-14 17:32:21'),(66,3,6,'2019-01-14 17:32:22','2019-01-14 17:32:22'),(109,5,1,'2019-01-14 20:54:54','2019-01-14 20:54:54'),(110,5,2,'2019-01-14 20:54:54','2019-01-14 20:54:54'),(111,5,3,'2019-01-14 20:54:54','2019-01-14 20:54:54'),(112,5,4,'2019-01-14 20:54:54','2019-01-14 20:54:54'),(113,5,5,'2019-01-14 20:54:54','2019-01-14 20:54:54'),(114,5,6,'2019-01-14 20:54:54','2019-01-14 20:54:54');
/*!40000 ALTER TABLE `signal_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signal_ratings`
--

DROP TABLE IF EXISTS `signal_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signal_ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `signal_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signal_ratings`
--

LOCK TABLES `signal_ratings` WRITE;
/*!40000 ALTER TABLE `signal_ratings` DISABLE KEYS */;
INSERT INTO `signal_ratings` VALUES (1,-1,3,4,'Good','2019-01-14 19:24:30','2019-01-14 19:24:30');
/*!40000 ALTER TABLE `signal_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signals`
--

DROP TABLE IF EXISTS `signals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_by` int(11) NOT NULL DEFAULT '0',
  `custom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_ids` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` int(11) NOT NULL,
  `symbol_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `frame_id` int(11) NOT NULL,
  `profit` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loss` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `description` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signals`
--

LOCK TABLES `signals` WRITE;
/*!40000 ALTER TABLE `signals` DISABLE KEYS */;
INSERT INTO `signals` VALUES (3,1,'ZALAYUK0Y3DTV3QK','Buy USD','ZALAYUK0Y3DTV3QK.jpg','1;2;3;4;5;6',6,7,1,1,'32.15','25.36','20.25',1,_binary 'Staff Test Signbal','2019-01-14 19:24:12','2019-01-14 17:32:21'),(4,0,'KHNW26JVUKRMPU7K','Buy AUD/CHF','KHNW26JVUKRMPU7K.jpg','1;2;3;4;5;6',6,8,1,2,'32.15','25.36','20.25',4,_binary 'Test Signal','2019-01-14 17:28:40','2019-01-14 17:32:02'),(5,1,'SMGWBGN9KWSR4H7P','Buy AUD/CHF','I2NS0D0PNHCYGQCR.jpg','1;2;3;4;5;6',6,7,1,2,'32.15','25.36','20.25',2,_binary 'adada','2019-01-14 18:11:49','2019-01-14 20:54:54');
/*!40000 ALTER TABLE `signals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (29,'slider_1547645161.jpg','Forex Trade Signal','Forex Trade signal','Lorem Ipsum is simply dummy text of the printing and typesetting industry.','2019-01-16 13:26:01','2019-01-16 13:26:01'),(32,'slider_1547645330.jpg','Forex Trade Signal','Forex Trade signal','Lorem Ipsum is simply dummy text of the printing and typesetting industry.','2019-01-16 13:28:51','2019-01-16 13:28:51');
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
INSERT INTO `socials` VALUES (3,'Facebook','<i class=\"fa fa-facebook\" aria-hidden=\"true\"></i>','https://www.facebook.com/softwarezon','2017-08-19 12:25:30','2019-01-14 17:16:28'),(5,'twitter','<i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>','#','2017-08-19 12:29:52','2018-12-25 19:47:39'),(6,'linkedin','<i class=\"fa fa-linkedin\" aria-hidden=\"true\"></i>','#','2017-08-19 12:30:23','2018-12-25 19:47:32'),(7,'Google plus','<i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i>','#','2017-08-19 12:32:35','2018-12-25 19:47:25'),(8,'Instragram','<i class=\"fa fa-instagram\" aria-hidden=\"true\"></i>','https://www.instagram.com/','2017-12-08 22:38:45','2019-01-14 17:16:36');
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialities`
--

DROP TABLE IF EXISTS `specialities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialities`
--

LOCK TABLES `specialities` WRITE;
/*!40000 ALTER TABLE `specialities` DISABLE KEYS */;
INSERT INTO `specialities` VALUES (2,'Signal Provider','<i class=\"fa fa-line-chart speciality-fa\"></i>','90%+ is our trading signal\'s success rate , so you can earn and grow with us. our signals will be sent to your Telegram , Email, your account in our website and very soon through sms and mobile app','2017-11-23 18:40:49','2019-01-02 08:26:59'),(3,'MQL copy trade','<i class=\"fa fa-indent\"></i>','join our MQL as follower, then Seat ,relax and just withdraw the trading profit any time you want .\r\nour trades will automatically will be copied to your real account through MQL','2017-11-23 18:42:19','2019-01-02 08:27:52'),(4,'PAMM Account','<i class=\"fa fa-sliders\" aria-hidden=\"true\"></i>','Anyone can join our PAMM pool account , in chosen/suggested brokers . \r\neasily find out the list of our brokers and join through our link ,\r\nin Broker  page (main menu).\r\nits based on profit sharing','2017-12-11 07:36:34','2019-01-02 08:37:30'),(5,'Experienced Trading & Analysis Team','<i class=\"fa fa-star-o\" aria-hidden=\"true\"></i>','Provider team is contains of most experienced experts in Forex Trading and analyzing','2017-12-11 07:37:30','2019-01-16 12:03:54'),(6,'Affordable price & High quality services','<i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i>','We love our clients and Proud to our high level service , that anyone can afford and be successful in forex Trading','2017-12-11 07:38:12','2019-01-02 08:54:51'),(7,'Friendly and premium customer support','<i class=\"fa fa-cogs\" aria-hidden=\"true\"></i>','Provide Premium fast client\'s support services .\r\nalso monitoring all support processing to make sure ,will remain perfect','2017-12-11 07:39:14','2019-01-16 12:04:25');
/*!40000 ALTER TABLE `specialities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Staff','staff@gmail.com','+880','01974447300',NULL,1,'$2y$10$On.ELBDdy/d32.tVYmQKkOedbH2PJOLKym.zGEXB3fQyuJgdpfagG','A4xFNd0hEz4pusEvVnsS1FO77fpEGa6q4hymsZNiPPFDY3hpYqXkp19tUi72','2018-12-21 20:41:52','2018-12-21 21:57:13');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'ACTIVE','active',1,'2018-11-08 19:33:51','2018-11-11 16:34:00'),(2,'TAKE PROFIT','take-profit',1,'2018-11-08 19:34:01','2018-11-11 16:33:45'),(3,'CLOSED','closed',1,'2018-11-08 19:34:09','2018-11-08 19:34:09'),(4,'PENDING','pending',1,'2018-11-08 19:34:16','2018-11-08 19:34:16'),(5,'WATCHING','watching',1,'2018-11-08 19:34:26','2018-11-11 16:35:03'),(6,'WON','won',1,'2018-11-11 16:34:24','2018-11-15 06:21:22'),(7,'LOST','lost',1,'2018-11-11 16:34:32','2018-11-15 06:21:57'),(8,'EXPIRED','expired',1,'2018-11-11 16:34:39','2018-11-11 16:34:39'),(9,'TOOK PROFIT','took-profit',1,'2018-11-13 17:42:12','2018-11-13 17:42:12'),(10,'ADD TO POSITION','add-to-position',1,'2018-11-13 17:48:21','2018-11-13 17:48:21');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe_message_cron`
--

DROP TABLE IF EXISTS `subscribe_message_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribe_message_cron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe_message_cron`
--

LOCK TABLES `subscribe_message_cron` WRITE;
/*!40000 ALTER TABLE `subscribe_message_cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribe_message_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe_messages`
--

DROP TABLE IF EXISTS `subscribe_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribe_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `message` blob NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe_messages`
--

LOCK TABLES `subscribe_messages` WRITE;
/*!40000 ALTER TABLE `subscribe_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribe_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribes`
--

DROP TABLE IF EXISTS `subscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribes`
--

LOCK TABLES `subscribes` WRITE;
/*!40000 ALTER TABLE `subscribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symbols`
--

DROP TABLE IF EXISTS `symbols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symbols` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symbols`
--

LOCK TABLES `symbols` WRITE;
/*!40000 ALTER TABLE `symbols` DISABLE KEYS */;
INSERT INTO `symbols` VALUES (7,'AUD/CAD','audcad',1,'2018-11-11 15:45:50','2018-11-11 15:45:50'),(8,'AUD/CHF','audchf',1,'2018-11-11 15:47:02','2018-11-11 15:47:02'),(9,'AUD/JPY','audjpy',1,'2018-11-11 15:47:35','2018-11-11 15:47:35'),(10,'AUD/NZD','audnzd',1,'2018-11-11 15:47:50','2018-11-11 15:47:50'),(11,'AUD/SGD','audsgd',1,'2018-11-11 15:48:04','2018-11-11 15:48:04'),(12,'AUD/USD','audusd',1,'2018-11-11 15:48:14','2018-11-11 15:48:14'),(13,'CAD/CHF','cadchf',1,'2018-11-11 15:48:40','2018-11-11 15:48:40'),(14,'CAD/JPY','cadjpy',1,'2018-11-11 15:48:54','2018-11-11 15:48:54'),(16,'CHF/SGD','chfsgd',1,'2018-11-11 15:49:32','2018-11-11 15:49:32'),(17,'EUR/AUD','euraud',1,'2018-11-11 15:49:53','2018-11-11 15:49:53'),(18,'EUR/CAD','eurcad',1,'2018-11-11 15:50:07','2018-11-11 15:50:07'),(19,'EUR/CHF','eurchf',1,'2018-11-11 15:50:21','2018-11-11 15:50:21'),(20,'EUR/GBP','eurgbp',1,'2018-11-11 15:50:57','2018-11-11 15:50:57'),(21,'EUR/JPY','eurjpy',1,'2018-11-11 15:51:10','2018-11-11 15:51:10'),(22,'EUR/NZD','eurnzd',1,'2018-11-11 15:51:28','2018-11-11 15:51:28'),(23,'EUR/SGD','eursgd',1,'2018-11-11 15:51:48','2018-11-11 15:51:48'),(24,'EUR/USD','eurusd',1,'2018-11-11 15:52:03','2018-11-11 15:52:03'),(25,'GBP/AUD','gbpaud',1,'2018-11-11 15:52:17','2018-11-11 15:52:17'),(26,'GBP/CAD','gbpcad',1,'2018-11-11 15:52:28','2018-11-11 15:52:28'),(27,'GBP/CHF','gbpchf',1,'2018-11-11 15:52:39','2018-11-11 15:52:39'),(28,'GBP/JPY','gbpjpy',1,'2018-11-11 15:52:58','2018-11-11 15:52:58'),(29,'GBP/NZD','gbpnzd',1,'2018-11-11 15:53:09','2018-11-11 15:53:09'),(30,'GBP/SGD','gbpsgd',1,'2018-11-11 15:53:21','2018-11-11 15:53:21'),(31,'GBP/USD','gbpusd',1,'2018-11-11 15:53:37','2018-11-11 15:53:37'),(32,'GOLD','gold',1,'2018-11-11 15:53:51','2018-11-11 15:53:51'),(33,'NZD/CAD','nzdcad',1,'2018-11-11 15:54:24','2018-11-11 15:54:24'),(34,'NZD/CHF','nzdchf',1,'2018-11-11 15:54:36','2018-11-11 15:54:36'),(35,'NZD/JPY','nzdjpy',1,'2018-11-11 15:54:48','2018-11-11 15:54:48'),(36,'NZD/SGD','nzdsgd',1,'2018-11-11 15:54:58','2018-11-11 15:54:58'),(37,'NZD/USD','nzdusd',1,'2018-11-11 15:55:08','2018-11-11 15:55:08'),(38,'SGD/JPY','sgdjpy',1,'2018-11-11 15:55:20','2018-11-11 15:55:20'),(39,'USD/CAD','usdcad',1,'2018-11-11 15:55:31','2018-11-11 15:55:31'),(40,'USD/CHF','usdchf',1,'2018-11-11 15:55:48','2018-11-11 15:55:48'),(41,'USD/JPY','usdjpy',1,'2018-11-11 15:56:01','2018-11-11 15:56:01'),(42,'USD/SGD','usdsgd',1,'2018-11-11 15:56:12','2018-11-11 15:56:12'),(43,'XAG/USD','xagusd',1,'2018-11-11 15:56:24','2018-11-11 15:56:24'),(44,'XAU/USD','xauusd',1,'2018-11-11 15:56:34','2018-11-11 15:56:34'),(46,'BTC/USD','btcusd',1,'2018-11-11 15:59:29','2018-11-11 15:59:29'),(47,'ETH/USD','ethusd',1,'2018-11-11 15:59:44','2018-11-11 15:59:44');
/*!40000 ALTER TABLE `symbols` ENABLE KEYS */;
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
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (3,'Alex','testimonial_1517079811.jpg','Web Developer',_binary 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.',0,'2017-11-27 01:42:10','2018-01-27 19:03:31'),(4,'Paul','testimonial_1547480092.jpg','Cummins',_binary 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.',0,'2017-11-27 01:43:13','2019-01-14 17:34:52'),(5,'Masud Rana','testimonial_1517079621.jpg','CEO, MoniasoftHouse',_binary 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.',0,'2018-01-27 19:00:21','2018-01-27 19:00:21');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_logs`
--

DROP TABLE IF EXISTS `transaction_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `custom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `balance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_balance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_logs`
--

LOCK TABLES `transaction_logs` WRITE;
/*!40000 ALTER TABLE `transaction_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'BUY','buy',1,'2018-11-08 18:53:41','2018-11-10 20:28:26'),(2,'SELL','sell',1,'2018-11-08 18:53:49','2018-11-10 20:28:20'),(3,'BUY LIMIT','buy-limit',1,'2018-11-08 18:54:00','2018-11-10 20:08:12'),(4,'STOP LIMIT','stop-limit',1,'2018-11-08 18:54:09','2018-11-10 20:08:07'),(5,'BUY STOP','buy-stop',1,'2018-11-08 18:54:19','2018-11-10 20:08:02'),(7,'SELL STOP','sell-stop',1,'2018-11-08 18:54:56','2018-11-10 20:07:57'),(9,'ANALYSIS','analysis',1,'2019-01-13 22:11:56','2019-01-13 22:11:56');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_signals`
--

DROP TABLE IF EXISTS `user_signals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_signals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `signal_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `telegram_alert` tinyint(1) NOT NULL DEFAULT '0',
  `email_alert` tinyint(1) NOT NULL DEFAULT '0',
  `sms_alert` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_signals`
--

LOCK TABLES `user_signals` WRITE;
/*!40000 ALTER TABLE `user_signals` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_signals` ENABLE KEYS */;
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
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'user-default.png',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telegram_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_expire` datetime DEFAULT NULL,
  `email_status` tinyint(1) NOT NULL DEFAULT '0',
  `phone_expire` datetime DEFAULT NULL,
  `phone_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_status` tinyint(1) DEFAULT '0',
  `balance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `plan_id` int(11) NOT NULL,
  `plan_status` tinyint(1) NOT NULL DEFAULT '0',
  `free_plan_status` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_status` tinyint(1) DEFAULT '0',
  `signal_status` tinyint(1) NOT NULL DEFAULT '0',
  `amount` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `expire_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `up_status` tinyint(1) NOT NULL DEFAULT '0',
  `up_plan_id` tinyint(1) DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,'Demo user','demouser','user-default.png','user@gmail.com','+880','1974447300','VUORXSPPCLKEPBEQXDWL1JBOJJYQNCBX','468822649','0MNIMI','2019-01-15 03:45:11',1,NULL,'73232',1,'0',1,1,0,0,0,'0','2019-04-14 01:31:08',0,0,NULL,'$2y$10$S66o/I6OtZQW.zhf26MfRe0HTZzPPbYc1wt.mOqWEjo4MjjqDQDNC','eocNHNNl8Wp22PVaG7qs42XxAuBDATlmfeGZCegSlj9xDn6OhDOVdTupHOyt','2019-01-14 21:42:11','2019-04-07 11:33:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:15:08
