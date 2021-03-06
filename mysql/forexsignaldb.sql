-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: forexsignaldb
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
  `name` varchar(100) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Admin Rahman','admin','$2y$10$QDM9CsR53UODmQYWpCGK7eR528uMeFIDSGVBFjEZx/rGlc06R95qq','Y0AkANYigJ7ldSSLYGgVPUuMV8eRCh1UwcCYflYYr5Xsc6ZQk859Ky8cBOpq','','2017-03-19 23:46:11');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (5,4,'Lorem Ipsum is simply dummy text of the printing','Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum','2017-03-15 11:50:06','2017-03-15 11:50:06'),(6,3,'Lorem Ipsum is simply dummy text of the printing Lorem Ipsum is simply dummy text of the printing','Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum','2017-03-15 11:50:13','2017-03-15 11:52:56');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'Forex','2017-03-15 14:49:58','2017-03-14 13:45:29','2017-03-15 08:49:58'),(3,'Service','0000-00-00 00:00:00','2017-03-14 13:45:40','2017-03-14 13:45:40'),(4,'Post','0000-00-00 00:00:00','2017-03-14 13:45:49','2017-03-14 13:45:49');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate` int(11) NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD',1,'0000-00-00 00:00:00','2017-01-09 03:04:54','2017-01-09 03:04:54'),(2,'BDT',75,'0000-00-00 00:00:00','2017-01-09 03:05:21','2017-01-09 03:23:09'),(4,'INR',50,'2017-03-15 14:53:10','2017-01-09 03:26:43','2017-03-15 08:53:10');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `favicon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `paypal_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `top_text` blob NOT NULL,
  `facebook` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `google_plus` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `footer_text` blob NOT NULL,
  `footer_bottom_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_settings`
--

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` VALUES (1,'Forex Trading Signal System','logo.png','favicon.png','288feb','11/3 Garden Street, Ring Road, Shyamoli, Dhaka','admin@thesoftking.com','demo@demo.com','+88-01716-441700',_binary 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has&nbsp;','http://www.facebook.com/thesoftking','http://www.twitter/thesoftking','http://linkdin.com/thesoftking','http://plus.google.com/thesoftking','http://youtube.com/thesoftking',_binary 'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Â© All copyright Reserved',NULL,'2017-07-04 12:38:50');
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `service_id` int(11) NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `payment_status` int(2) NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (13,'Hasan','Rahman','hasan@gmail.com','0171619966','hasan','$2y$10$VRTKMwhMvyYkHsVIiEGB6OcNFjtbVPyQRApVAFN16tIr4fI4ElPwu',6,'54058CC3336923A6545',0,1,'wKrfr96sTWuB13vuDqxTN3VRm9gmyZOHBoF9CNZq3nYgX9VBAATjCFEPxGXu','2017-03-17 13:04:22','2017-06-28 14:19:27'),(14,'Hosen','Mahmud','hosen@gmail.com','01716199668','hosen','$2y$10$ogyBZzJOWONl90nO2t1sGOdzmP96Un4.OFah41x6cBJ8OcgTmJ33u',8,'54258CC337A26A67268',0,0,NULL,'2017-03-17 13:05:30','2017-03-17 13:05:30'),(15,'Tanzila','Anni','anni@gmail.com','01716199668','annirpi','$2y$10$1lIXpjN9/RToTuD/Vl1tfuFl7qwwMF1xgVYeyC7gVf3TvM7.92zVu',9,'31258CC33A6EF8EB977',0,0,'nk3XGt6K5G98HiJmsKooEp8htWh7tBPj4DMnVsvCnGuaGZfo44BijbVyabgr','2017-03-17 13:06:14','2017-03-19 00:49:56'),(16,'Mehadi','Hasan','mehadi@gmail.com','01716199668','mehadi','$2y$10$EJzylj9vu8IYeSdl4TdlTODjBkZcH8h/mEF9ab.AzprPr.Wun6wQi',9,'64858CC33E1BA794558',0,0,NULL,'2017-03-17 13:07:13','2017-03-17 13:07:13'),(17,'Hasan','Rahman','hellomrha5san@gmail.com','01716199668','hasanrpi','$2y$10$ALg2YuzMdXr3AAcBT8SA2uPJUfjQvWE1Oyk6tMg25FlKufUXIGFNC',9,'32858CC596ED924E844',0,0,NULL,'2017-03-18 01:47:26','2017-07-04 23:51:37'),(18,'Habiba ','Himu','habiba01@gmail.com','01716819966','habiba01','$2y$10$HvzeyK3U9TENruBLZjSrX.uczCqYiyM5cqv7wkPSNa5kHORlLwo.6',5,'334595410672F967458',0,0,NULL,'2017-06-28 14:24:07','2017-06-28 14:24:07'),(19,'Habiba ','Himu','hasan14@gmail.com','01116199558','annirpi25','$2y$10$ggI7D9rkAEnIwmP5XSZZ7e4fLujQN97wtTf1k18P6YPHLLjPu6l9K',7,'940595B851BAB2BE378',0,1,NULL,'2017-07-04 06:07:55','2017-07-04 11:17:26'),(20,'Habiba ','Himu','hasanxc@gmail.com','01516199558','3dd','$2y$10$7QBdDuvxoZV.ke7.EtmA8O89DCXhp7qj.uyVuBBNfy.OH7ZY80.eq',9,'247595BCE66DCE8B804',0,0,NULL,'2017-07-04 11:20:38','2017-07-04 11:20:38'),(21,'Habiba ','Himu','hasan523@gmail.com','01516199558','admin52','$2y$10$Abdslbf.qY56WyI4dmB3yeSQsdLKxFS3Yt/aGFx/fR4PbsmhjpKeC',5,'281595BE9BC1BC5A843',0,0,'dn3Qy50Ofb9dXvl0eh6ZyvVrCAb7ec37GjVn0MucnIWee7pGh23lF2sd7x4A','2017-07-05 00:17:16','2017-07-05 13:17:22'),(22,'Anjel','Ferdous','thesoftking@gmail.com','01716441700','rifat6361','$2y$10$QQUYi/2Bjbs94IJuP1vN6OEcl3JUZL8zt/09qdYfw8xDmB9diL/Uy',4,'581595C96668D6ED519',0,0,NULL,'2017-07-05 12:33:58','2017-07-05 12:33:58'),(23,'Habiba ','Himu','hellomrhasan25@gmail.com','01116199558','habiba05','$2y$10$y0nxf8Pe0wzlfy4wtQR8r.T.G7/Mf95sLErSoBQqZ44FRmgyAUc76',6,'295595C966880396781',0,0,NULL,'2017-07-05 12:34:00','2017-07-05 12:34:00'),(24,'Habiba ','Himu','25hasan@gmail.com','71716199558','hasan474','$2y$10$dJjSBC/D/cn/xGwi5BOMGOe8TnPfDKm..3uFgNZ0bPaJomi2kv1Su',5,'899595CA10365F6A164',0,0,NULL,'2017-07-05 13:19:15','2017-07-05 13:19:15');
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
  `description` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Menu1',_binary '<div><h2>What is Lorem Ipsum?</h2>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div><h2>Why do we use it?</h2>It is a long established fact that a reade4 will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div><br><div><h2>Where does it come from?</h2>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</div>','2017-01-11 08:28:02','2017-03-16 12:34:02'),(3,'Menu2',_binary '<div><h2>What is Lorem Ipsum?</h2>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div><h2>Why do we use it?</h2>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div><br><div><h2>Where does it come from?</h2>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</div>','2017-01-11 09:04:39','2017-01-11 09:04:39');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2017_03_14_103716_create_signals_table',1),('2017_03_14_105745_create_service_signal_table2',1),('2017_03_14_194007_create_categories_table',2),('2017_03_15_145743_create_articles_table',3),('2017_03_16_172058_create_testimonials_table',4),('2017_03_17_090542_create_members_table',5),('2017_03_17_182451_create_payments_table',6),('2017_06_28_192902_create_password_submits_table',7),('2017_06_28_203203_create_payment_methods_table',8),('2017_07_04_142612_create_payment_logs_table',9);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('hasan@gmail.com','tNQKS9SqVqJpqnLLe46qulDeIVxAPHPnFugBl9ruL1jCq5Dljwf2VOVIeVKZ','2017-06-28 19:26:13');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_submits`
--

DROP TABLE IF EXISTS `password_submits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_submits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_submits`
--

LOCK TABLES `password_submits` WRITE;
/*!40000 ALTER TABLE `password_submits` DISABLE KEYS */;
INSERT INTO `password_submits` VALUES (7,'hasan@gmail.com','4j6rDlQ57zGA4wi9sYgMx8N2C8clYe4CpaLstsLJldFFi0ka2dPzy5kuUwZJ',0,'2017-06-28 14:20:37','2017-06-28 14:20:37'),(8,'hasan@gmail.com','jmZa7jFf7hnoBaHFitiWsV5SbXP9HH93OMqWBL6LVrq1pqKhH92yo4j1NRV1',0,'2017-06-28 14:21:28','2017-06-28 14:21:28'),(9,'hasan@gmail.com','hHpINRfNwKpWQfMNAqNijFtJLSA7GbhDby4LLVRL7QXW3wKVvKX98Drw9zWT',0,'2017-07-04 02:52:10','2017-07-04 02:52:10'),(11,'hellomrhasan@gmail.com','jNNSCx5yWOcPjPkWSQuLvk4P4pXW3PLeqPwU9VLrvvedS0WkgjQvq28pXFrc',0,'2017-07-05 00:09:38','2017-07-05 00:09:38'),(12,'hellomrhasan@gmail.com','3jiYsuPrd34oTRgZQM7hr6zD02sjFJeGqJ1p07IbpyvwBfen5MWSnPYWe2yh',0,'2017-07-05 00:11:22','2017-07-05 00:11:22'),(13,'hellomrhasan@gmail.com','thvs5kPqPDpYm3tw5nKTansCTq6gwtr6qjyR2i14ql4Uhk7VJGRKOUKXCoAz',0,'2017-07-05 00:12:05','2017-07-05 00:12:05'),(14,'hellomrhasan@gmail.com','vcHlReDJRHirY6bczOQN4LvBzDEgpAz0odE8FfMqJ7neXdhc8nLbbTv4zT4p',0,'2017-07-05 00:13:51','2017-07-05 00:13:51');
/*!40000 ALTER TABLE `password_submits` ENABLE KEYS */;
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
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `btc_amo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `btc_acc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
INSERT INTO `payment_logs` VALUES (47,'20','dBExv9fGJJdLqe2cqAykvrTZ1YVEfkoSn2jOKsEI','10',NULL,NULL,'2017-07-04 12:26:57','2017-07-04 12:26:57'),(48,'19','uo2bVXc3Nof0iKoHzqIcJOflxYok6LqXPKHs1goN','30',NULL,NULL,'2017-07-04 12:29:01','2017-07-04 12:29:01'),(49,'21','AxKeqGB8MaUnkAfzFWGeeEJmFVc8SRfl0LdkU6ZM','12','0.00465358','1NakPbysez9QPoqvZ8LuymYo6HASs1uWq9','2017-07-05 00:17:16','2017-07-05 00:41:30'),(50,'22','JjN0HYNyQOctYIYafmgLXVeI8kxApnEUPAuoXqbd','8',NULL,NULL,'2017-07-05 12:33:59','2017-07-05 12:33:59'),(51,'23','aSZIeM2shPyLNjv3hOWehtiPkTlxt2QtAU2wUYPJ','15',NULL,NULL,'2017-07-05 12:34:00','2017-07-05 12:34:00'),(52,'24','HpdxT5yUYNrmTWxBtV8GnoAyfUwfmHjRMSbKwBI4','12',NULL,NULL,'2017-07-05 13:19:17','2017-07-05 13:19:17');
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
  `val1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `val2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'PayPal','1499169709h3.png','thesoftking@gmail.com','',1,NULL,'2017-07-04 08:18:04'),(2,'Perfect Money','1499174088h4.png','U5220203','reg4e54h1grt1j',1,NULL,'2017-07-04 07:16:43'),(3,'BITCOIN','1499174130h5.png','apikey','xpubkey',1,NULL,'2017-07-05 00:21:17'),(4,'CARD','1499174177h6.png','sk_test_aat3tzBCCXXBkS4sxY3M8A1B','pk_test_AU3G7doZ1sbdpJLj0NaozPBu',1,NULL,'2017-07-04 07:16:43');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `start_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expiry_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (3,13,'2017-03-17 00:00:00','2017-04-17 00:00:00',1,'2017-03-17 13:04:22','2017-04-17 14:36:56'),(4,14,'2017-03-17 00:00:00','2017-04-17 00:00:00',0,'2017-03-17 13:05:30','2017-03-17 13:05:30'),(5,15,'2017-03-16 00:00:00','2017-04-17 00:00:00',0,'2017-03-17 13:06:15','2017-04-17 14:36:57'),(6,16,'2017-03-17 00:00:00','2017-04-17 00:00:00',0,'2017-03-17 13:07:13','2017-03-17 13:07:13'),(7,19,'2017-07-04 00:00:00','2017-08-04 00:00:00',1,'2017-07-04 11:17:26','2017-07-04 11:17:26'),(8,19,'2017-07-04 00:00:00','2017-08-04 00:00:00',1,'2017-07-04 11:18:00','2017-07-04 11:18:00');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_signal`
--

DROP TABLE IF EXISTS `service_signal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_signal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int(10) unsigned NOT NULL,
  `signal_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_signal_service_id_foreign` (`service_id`),
  KEY `service_signal_signal_id_foreign` (`signal_id`),
  CONSTRAINT `service_signal_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  CONSTRAINT `service_signal_signal_id_foreign` FOREIGN KEY (`signal_id`) REFERENCES `signals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_signal`
--

LOCK TABLES `service_signal` WRITE;
/*!40000 ALTER TABLE `service_signal` DISABLE KEYS */;
INSERT INTO `service_signal` VALUES (56,4,9,NULL,NULL),(57,5,9,NULL,NULL),(58,6,9,NULL,NULL),(59,7,9,NULL,NULL),(60,8,9,NULL,NULL),(61,9,9,NULL,NULL),(73,4,11,NULL,NULL),(74,5,11,NULL,NULL),(75,6,11,NULL,NULL),(76,7,11,NULL,NULL),(77,8,11,NULL,NULL),(78,9,11,NULL,NULL),(82,4,12,NULL,NULL),(83,5,12,NULL,NULL),(84,6,12,NULL,NULL),(85,7,12,NULL,NULL),(86,8,12,NULL,NULL),(87,9,12,NULL,NULL),(91,4,13,NULL,NULL),(92,5,13,NULL,NULL),(93,6,13,NULL,NULL),(94,7,13,NULL,NULL),(95,8,13,NULL,NULL),(96,9,13,NULL,NULL),(100,4,14,NULL,NULL),(101,5,14,NULL,NULL),(102,6,14,NULL,NULL),(103,7,14,NULL,NULL),(104,8,14,NULL,NULL),(105,9,14,NULL,NULL),(109,4,15,NULL,NULL),(110,5,15,NULL,NULL),(111,6,15,NULL,NULL),(112,7,15,NULL,NULL),(113,8,15,NULL,NULL),(114,9,15,NULL,NULL),(118,4,16,NULL,NULL),(119,5,16,NULL,NULL),(120,6,16,NULL,NULL),(121,7,16,NULL,NULL),(122,8,16,NULL,NULL),(123,9,16,NULL,NULL),(127,4,17,NULL,NULL),(128,5,17,NULL,NULL),(129,6,17,NULL,NULL),(130,7,17,NULL,NULL),(131,8,17,NULL,NULL),(132,9,17,NULL,NULL);
/*!40000 ALTER TABLE `service_signal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `currency_id` int(2) NOT NULL,
  `description1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description5` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description6` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description7` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description8` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description9` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description10` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (4,'MEGA',8,1,'Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','2017-02-06 08:19:56','2017-03-20 03:45:51'),(5,'UNLIMITED',12,1,'Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','2017-02-06 08:20:39','2017-03-20 03:45:20'),(6,'Power',15,1,'Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','2017-02-06 08:21:35','2017-03-20 03:44:48'),(7,'Super Power',30,1,'Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','2017-02-06 08:22:27','2017-03-20 03:43:36'),(8,'Super Plan',20,1,'Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','2017-02-06 08:23:06','2017-03-20 03:43:02'),(9,'Basic Plan',10,1,'Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','Features Details','2017-02-06 08:23:51','2017-03-20 03:41:57');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signals`
--

DROP TABLE IF EXISTS `signals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` blob NOT NULL,
  `created_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signals`
--

LOCK TABLES `signals` WRITE;
/*!40000 ALTER TABLE `signals` DISABLE KEYS */;
INSERT INTO `signals` VALUES (9,'Where does it come from?',_binary '<div><br></div><div><h2>Where does it come from?</h2>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<span>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>','2017-03-17','2017-03-17 10:59:39','2017-03-17 10:59:39'),(11,'Where does it come from?',_binary '<div><br></div><div><h2>Where does it come from?</h2>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<span>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>','2017-03-17','2017-03-17 11:04:36','2017-03-17 11:04:36'),(12,'Where does it come from?',_binary 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<span>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span>','2017-03-17','2017-03-17 11:23:58','2017-03-17 11:23:58'),(13,'Where does it come from?',_binary 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<span>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span>','2017-03-17','2017-03-17 11:24:29','2017-03-17 11:24:29'),(14,'Best Currier Service',_binary '<div><br></div><div><h2>Where does it come from?</h2>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<span>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>','2017-03-17','2017-03-17 11:44:49','2017-03-17 11:44:49'),(15,'Softking Online Survey1',_binary '<div><br></div><div><h2>Where does it come from?</h2>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<span>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>','2017-03-17','2017-03-17 11:47:12','2017-03-17 11:47:12'),(16,'Softking Online Survey1',_binary '<div><br></div><div><h2>Where does it come from?</h2>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</div>','2017-03-17','2017-03-17 11:50:32','2017-03-17 11:50:32'),(17,'Many desktop publishing packages and web page editors',_binary '<h2>Why do we use it?</h2><span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span>','2017-03-17','2017-03-17 15:16:21','2017-03-17 15:16:21');
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
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (18,'Forex Trading Signal','1489968825.jpg','2017-03-20 04:13:45','2017-03-20 04:13:45'),(19,'Forex Trading Signal','1489968886.jpg','2017-03-20 04:14:46','2017-03-20 04:14:46');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (2,'Habiba Himu','lorem ipsum dolor sit amet, consectetur adipisicing elit. quos sint voluptatum sit, perspiciatis ipsa, velit possimus dignissimos magni cum illo ab, dolore consectetur asperiores repellat atque','2017-03-16 11:43:50','2017-03-16 13:20:30'),(3,'Hasan Rahman','lorem ipsum dolor sit amet, consectetur adipisicing elit. quos sint voluptatum sit, perspiciatis ipsa, velit possimus dignissimos magni cum illo ab, dolore consectetur asperiores repellat atque','2017-03-16 11:43:55','2017-03-16 11:43:55'),(4,'Tanzila Anni','lorem ipsum dolor sit amet, consectetur adipisicing elit. quos sint voluptatum sit, perspiciatis ipsa, velit possimus dignissimos magni cum illo ab, dolore consectetur asperiores repellat atque','2017-03-16 11:44:00','2017-03-16 13:20:40'),(5,'Zannatun Naime','lorem ipsum dolor sit amet, consectetur adipisicing elit. quos sint voluptatum sit, perspiciatis ipsa, velit possimus dignissimos magni cum illo ab, dolore consectetur asperiores repellat atque','2017-03-16 11:44:05','2017-03-16 13:20:55'),(6,'Ridoy Candro Modok','lorem ipsum dolor sit amet, consectetur adipisicing elit. quos sint voluptatum sit, perspiciatis ipsa, velit possimus dignissimos magni cum illo ab, dolore consectetur asperiores repellat atque','2017-03-16 11:44:08','2017-03-16 13:21:06'),(7,'Abir Khan','lorem ipsum dolor sit amet, consectetur adipisicing elit. quos sint voluptatum sit, perspiciatis ipsa, velit possimus dignissimos magni cum illo ab, dolore consectetur asperiores repellat atque','2017-03-16 13:21:23','2017-03-16 13:21:23'),(8,'Rex Rifat','lorem ipsum dolor sit amet, consectetur adipisicing elit. quos sint voluptatum sit, perspiciatis ipsa, velit possimus dignissimos magni cum illo ab, dolore consectetur asperiores repellat atque','2017-03-16 13:21:34','2017-03-16 13:21:34');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Hasan Rahman','hasan','$2y$10$QDM9CsR53UODmQYWpCGK7eR528uMeFIDSGVBFjEZx/rGlc06R95qq',NULL,NULL,NULL);
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

-- Dump completed on 2020-10-06 22:06:34
