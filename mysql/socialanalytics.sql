-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: socialanalytics
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
-- Table structure for table `email_reports`
--

DROP TABLE IF EXISTS `email_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'INSTAGRAM',
  `source_user_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` enum('SUCCESS','FAILED') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_reports_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_reports`
--

LOCK TABLES `email_reports` WRITE;
/*!40000 ALTER TABLE `email_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facebook_logs`
--

DROP TABLE IF EXISTS `facebook_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facebook_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_user_id` int(11) DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facebook_logs_id_uindex` (`id`),
  KEY `facebook_user_id` (`facebook_user_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facebook_logs`
--

LOCK TABLES `facebook_logs` WRITE;
/*!40000 ALTER TABLE `facebook_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `facebook_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facebook_users`
--

DROP TABLE IF EXISTS `facebook_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facebook_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture_url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_verified` int(11) DEFAULT '0',
  `added_date` datetime DEFAULT NULL,
  `last_check_date` datetime DEFAULT NULL,
  `last_successful_check_date` datetime DEFAULT NULL,
  `is_demo` int(11) DEFAULT '0',
  `is_private` int(11) DEFAULT '0',
  `is_featured` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `facebook_users_id_uindex` (`id`),
  UNIQUE KEY `facebook_users_pk` (`username`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facebook_users`
--

LOCK TABLES `facebook_users` WRITE;
/*!40000 ALTER TABLE `facebook_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `facebook_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `source_user_id` int(11) DEFAULT NULL,
  `source` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'INSTAGRAM',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `favorites_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instagram_logs`
--

DROP TABLE IF EXISTS `instagram_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instagram_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instagram_user_id` int(11) DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `following` int(11) DEFAULT NULL,
  `uploads` int(11) DEFAULT NULL,
  `average_engagement_rate` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instagram_logs_id_uindex` (`id`),
  KEY `username` (`username`),
  KEY `instagram_logs_instagram_user_id_index` (`instagram_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instagram_logs`
--

LOCK TABLES `instagram_logs` WRITE;
/*!40000 ALTER TABLE `instagram_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `instagram_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instagram_media`
--

DROP TABLE IF EXISTS `instagram_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instagram_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` bigint(20) DEFAULT NULL,
  `instagram_user_id` int(11) DEFAULT NULL,
  `shortcode` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comments` int(11) DEFAULT NULL,
  `likes` bigint(20) DEFAULT NULL,
  `media_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_image_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('VIDEO','IMAGE','SIDECAR','CAROUSEL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mentions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hashtags` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` datetime DEFAULT NULL,
  `last_check_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instagram_media_id_uindex` (`id`),
  UNIQUE KEY `instagram_media_pk` (`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instagram_media`
--

LOCK TABLES `instagram_media` WRITE;
/*!40000 ALTER TABLE `instagram_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `instagram_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instagram_users`
--

DROP TABLE IF EXISTS `instagram_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instagram_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instagram_id` bigint(20) DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `followers` int(11) DEFAULT NULL,
  `following` int(11) DEFAULT NULL,
  `uploads` int(11) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `last_check_date` datetime DEFAULT NULL,
  `last_successful_check_date` datetime DEFAULT NULL,
  `profile_picture_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` int(11) DEFAULT '0',
  `is_verified` int(11) DEFAULT '0',
  `average_engagement_rate` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `details` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_demo` int(11) DEFAULT '0',
  `is_featured` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `instagram_users_id_uindex` (`id`),
  UNIQUE KEY `instagram_users_pk` (`instagram_id`),
  UNIQUE KEY `username_2` (`username`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instagram_users`
--

LOCK TABLES `instagram_users` WRITE;
/*!40000 ALTER TABLE `instagram_users` DISABLE KEYS */;
INSERT INTO `instagram_users` VALUES (1,25945306,'badgalriri','badgalriri','introducing @savagexfenty lingerie coming MAY.11.2018. sign up now!','http://ri-hanna.io/savagexfenty',62554084,1302,4293,'2018-05-05 18:33:53','2018-05-10 16:04:17',NULL,'https://instagram.fsbz1-1.fna.fbcdn.net/vp/667a62925a82cf1445a7e800239ff35b/5B792186/t51.2885-19/11032926_1049846535031474_260957621_a.jpg',0,1,'3.64','{\"total_likes\":22640490,\"total_comments\":158523,\"average_comments\":\"15,852.30\",\"average_likes\":\"2,264,049.00\",\"top_hashtags\":{\"metgala2018\":1,\"heavenlybodies\":1,\"galliano\":1,\"margiella\":1,\"DAMN\":1},\"top_mentions\":{\"savagexfenty\":3,\"dennisleupold\":1},\"top_posts\":{\"BigJr94lkbM\":\"7.74\",\"Bie_F1EFqnw\":\"5.87\",\"BigMenillsS\":\"4.71\"}}',1,1),(2,232192182,'therock','therock','Gratitude. Mana.','http://www.nbc.com/titans',105741229,235,3548,'2018-05-07 12:35:07','2018-05-10 01:39:35',NULL,'https://instagram.fsbz1-1.fna.fbcdn.net/vp/5eeaf27ff63f2135e91cc8f6501cc098/5B9AE1FC/t51.2885-19/11850309_1674349799447611_206178162_a.jpg',0,1,'1.25','{\"total_likes\":13185786,\"total_comments\":61606,\"average_comments\":\"6,160.60\",\"average_likes\":\"1,318,578.60\",\"top_hashtags\":{\"ProjectRock\":3,\"UnderArmour\":2,\"JungleCruise\":2,\"SKYSCRAPER\":2,\"HardestWorkerInTheRoom\":2,\"PaulGiamatti\":1,\"AllAboard\":1,\"NowGetTheFuckOffMe\":1,\"GetOnMyShoulders\":1,\"AndMyTattoos\":1,\"NobelPeacePrize\":1,\"GlobalGratitude\":1,\"DreamsAintJustForDreamers\":1,\"0\":1,\"GlobalEnterprise\":1},\"top_mentions\":{\"garciacompanies\":2,\"danygarciaco,\":1,\"underarmour\":1,\"kristenrandol\":1,\"kevinhart4real\":1,\"underarmour\\u2019s\":1},\"top_posts\":{\"Bic-vMLlRtW\":\"2.66\",\"Bia-qIKlh-9\":\"2.44\",\"Bigj_-bFPCZ\":\"2.29\"}}',1,1),(3,13164944,'g_eazy','G-Eazy','Endless Summer Tour Tix $20 For National Concert Week | Ends May 8th','http://bit.ly/NCW20GEazy',5959042,918,2992,'2018-05-07 12:35:36','2018-05-10 01:29:16',NULL,'https://instagram.fsbz1-1.fna.fbcdn.net/vp/ad043770b7c57bec2ba5c6e132e7e430/5B7A9259/t51.2885-19/s150x150/23421504_1974793426097273_1903626335624888320_n.jpg',0,1,'5.98','{\"total_likes\":3530163,\"total_comments\":33618,\"average_comments\":\"3,361.80\",\"average_likes\":\"353,016.30\",\"top_hashtags\":{\"TheEndlessSummer\":2,\"TheBeautifulAndDamned\":1},\"top_mentions\":{\"livenation\":2,\"dkessler\":2,\"p_lo\":2,\"tristan_edouard\":2,\"liluzivert\":1,\"tydollasign\":1,\"ybnnahmir\":1,\"murdabeatz\":1},\"top_posts\":{\"BicoovInGXa\":\"11.62\",\"Bih3FuunIeE\":\"10.00\",\"Bijt0LrnSkE\":\"8.37\"}}',1,1);
/*!40000 ALTER TABLE `instagram_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Terms of Service','terms-of-service','<p>&nbsp;</p>\r\n<p>Your terms of service go here..</p>',0),(2,'Frequently Asked Questions','faqs','<p>Here you can write your own FAQ for the website..</p>',1),(3,'About','about','<p>About..</p>',1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` enum('PAYPAL','STRIPE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `currency` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plugins` (
  `identifier` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'black',
  `status` int(11) DEFAULT '0',
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
INSERT INTO `plugins` VALUES ('facebook','Facebook Analyzer','#4268B2',0),('youtube','YouTube Analyzer','#FF0000',0),('twitter','Twitter Analyzer','#1da1f2',1),('instagram','Instagram Analyzer','#f75581',1),('twitch','Twitch Analyzer','#6441a5',0),('pinterest','Pinterest Analyzer','#bd081c',0),('mixer','Mixer Analyzer','#1FBAED',0);
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxies`
--

DROP TABLE IF EXISTS `proxies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxies` (
  `proxy_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` int(11) DEFAULT '0',
  `failed_requests` int(11) DEFAULT '0',
  `successful_requests` int(11) DEFAULT '0',
  `total_failed_requests` int(11) DEFAULT '0',
  `total_successful_requests` int(11) DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `last_date` datetime DEFAULT NULL,
  PRIMARY KEY (`proxy_id`),
  UNIQUE KEY `proxies_id_uindex` (`proxy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxies`
--

LOCK TABLES `proxies` WRITE;
/*!40000 ALTER TABLE `proxies` DISABLE KEYS */;
/*!40000 ALTER TABLE `proxies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `favicon` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `time_zone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'America/New_York',
  `meta_description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `analytics_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_confirmation` int(11) NOT NULL DEFAULT '0',
  `recaptcha` int(11) NOT NULL DEFAULT '1',
  `public_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `private_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_login` int(11) NOT NULL,
  `facebook_app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_app_secret` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_host` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_encryption` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `smtp_auth` int(11) DEFAULT '0',
  `smtp_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_pass` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_from` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_currency` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `store_paypal_client_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store_paypal_secret` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store_paypal_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'live',
  `store_stripe_publishable_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `store_stripe_secret_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `store_stripe_webhook_secret` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `store_unlock_report_price` float DEFAULT '1',
  `store_unlock_report_time` int(11) DEFAULT '0',
  `store_no_ads_price` float NOT NULL DEFAULT '5',
  `store_user_default_points` int(11) DEFAULT '0',
  `report_ad` varchar(2560) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `index_ad` varchar(2560) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `account_sidebar_ad` varchar(2560) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_check_interval` int(11) DEFAULT '1',
  `instagram_minimum_followers` int(11) DEFAULT '5',
  `instagram_calculator_media_count` int(11) DEFAULT '10',
  `cron_queries` int(11) DEFAULT '1',
  `cron_mode` enum('ACTIVE','ALL') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
  `cron_auto_add_missing_logs` int(11) DEFAULT '0',
  `instagram_login` int(11) DEFAULT '0',
  `instagram_client_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_client_secret` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_email_template` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lost_password_email_template` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `credentials_email_template` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_email_notification_emails` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_new_user_email_notification` int(11) DEFAULT '0',
  `admin_new_payment_email_notification` int(11) DEFAULT '0',
  `directory` enum('ALL','LOGGED_IN','DISABLED') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directory_pagination` int(11) DEFAULT '10',
  `proxy` int(11) DEFAULT '0',
  `proxy_exclusive` int(11) DEFAULT '0',
  `proxy_timeout` int(11) DEFAULT '15',
  `proxy_failed_requests_pause` int(11) DEFAULT '3',
  `proxy_pause_duration` int(11) DEFAULT '1440',
  `email_reports` int(11) DEFAULT '0',
  `email_reports_default` int(11) DEFAULT '0',
  `email_reports_frequency` enum('DAILY','WEEKLY','MONTHLY') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'WEEKLY',
  `email_reports_favorites` int(11) DEFAULT '0',
  `default_language` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'english',
  `facebook_check_interval` int(11) DEFAULT '24',
  `facebook_minimum_likes` int(11) DEFAULT '1000',
  `youtube_api_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_check_interval` int(11) DEFAULT '24',
  `youtube_minimum_subscribers` int(11) DEFAULT '100',
  `youtube_check_videos` int(11) DEFAULT '10',
  `twitter_consumer_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_secret_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_oauth_token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_oauth_token_secret` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_check_interval` int(11) DEFAULT '24',
  `twitter_minimum_followers` int(11) DEFAULT '100',
  `twitter_check_tweets` int(11) DEFAULT '15',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'phpAnalyzer.com','','9fa8a623783fd2d277c53e1d216068ce.ico','UTC','','','',0,0,'','',0,'','','',587,'tls',1,'','','','','','','','USD','','','live','','','',1,5,5,0,'','','',1,5,10,1,'ACTIVE',0,0,'','','{\"subject\":\"Welcome {{NAME}}! - Activation email\",\"body\":\"Hey there {{NAME}},<br /><br />We are glad you joined us! <br /><br />One more step and you are ready,<br /><br />you just need to click the following link in order to join {{WEBSITE_TITLE}}<br /><br />{{ACTIVATION_LINK}}<br /><br />Hope you have a great day!\"}','{\"subject\":\"{{WEBSITE_TITLE}} - Reset your password\",\"body\":\"Hey {{NAME}},<br /><br />We know that you might lose your passwords, we are here to help!<br /><br />This is your reset password link: {{LOST_PASSWORD_LINK}}<br /><br />If you did not request this, you can ignore it!<br /><br />All the best from {{WEBSITE_TITLE}}!\"}','{\"subject\":\"Welcome to {{WEBSITE_TITLE}} - Your credentials\",\"body\":\"Hey there {{NAME}},<br /><br />We are glad you joined us! <br /><br />These are your new generated account details:<br /><br />Username: {{ACCOUNT_USERNAME}}<br />Password: {{ACCOUNT_PASSWORD}}<br /><br />And you can login here: {{WEBSITE_LINK}}<br /><br />Hope you have a great day!\"}',NULL,0,0,NULL,10,0,0,15,3,1440,0,0,'WEEKLY',0,'english',24,1000,NULL,24,100,10,NULL,NULL,NULL,NULL,24,100,15);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_logs`
--

DROP TABLE IF EXISTS `twitter_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `twitter_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `twitter_user_id` int(11) NOT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `followers` int(11) NOT NULL,
  `following` int(11) NOT NULL,
  `tweets` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facebook_logs_id_uindex` (`id`),
  KEY `facebook_user_id` (`twitter_user_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_logs`
--

LOCK TABLES `twitter_logs` WRITE;
/*!40000 ALTER TABLE `twitter_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_tweets`
--

DROP TABLE IF EXISTS `twitter_tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `twitter_user_id` int(11) NOT NULL,
  `tweet_id` bigint(20) NOT NULL,
  `text` varchar(280) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `source` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `retweets` int(11) NOT NULL DEFAULT '0',
  `likes` int(11) NOT NULL DEFAULT '0',
  `details` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tweet_id` (`tweet_id`),
  KEY `twitter_user_id` (`twitter_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_tweets`
--

LOCK TABLES `twitter_tweets` WRITE;
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_users`
--

DROP TABLE IF EXISTS `twitter_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `twitter_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `twitter_id` bigint(20) NOT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `full_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `followers` int(11) NOT NULL,
  `following` int(11) NOT NULL,
  `tweets` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `profile_picture_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` tinyint(4) NOT NULL DEFAULT '0',
  `is_verified` tinyint(4) NOT NULL DEFAULT '0',
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `last_check_date` datetime NOT NULL,
  `last_successful_check_date` datetime DEFAULT NULL,
  `is_demo` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `twitter_id_2` (`twitter_id`),
  UNIQUE KEY `username_2` (`username`),
  KEY `twitter_id` (`twitter_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_users`
--

LOCK TABLES `twitter_users` WRITE;
/*!40000 ALTER TABLE `twitter_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unlocked_reports`
--

DROP TABLE IF EXISTS `unlocked_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unlocked_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `source_user_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `expiration_date` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `source` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'INSTAGRAM',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unlocked_reports_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unlocked_reports`
--

LOCK TABLES `unlocked_reports` WRITE;
/*!40000 ALTER TABLE `unlocked_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `unlocked_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_id` bigint(20) DEFAULT NULL,
  `token_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_activation_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lost_password_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  `date` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_activity` datetime DEFAULT NULL,
  `points` float NOT NULL DEFAULT '15',
  `no_ads` int(11) DEFAULT '0',
  `instagram_id` bigint(11) DEFAULT NULL,
  `api_key` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_reports` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2y$10$uFNO0pQKEHSFcus1zSFlveiPCB3EvG9ZlES7XKgJFTAl5JbRGFCWy','mail@mail.com','AltumCode.io',NULL,NULL,'','0',1,1,'','2020-06-22 20:52:25',0,1,NULL,'098f6bcd4621d373cade4e832627b4f6',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youtube_logs`
--

DROP TABLE IF EXISTS `youtube_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `youtube_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `youtube_user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribers` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL,
  `videos` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `youtube_logs_id_uindex` (`id`),
  KEY `youtube_user_id` (`youtube_user_id`),
  KEY `username` (`youtube_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youtube_logs`
--

LOCK TABLES `youtube_logs` WRITE;
/*!40000 ALTER TABLE `youtube_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `youtube_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youtube_users`
--

DROP TABLE IF EXISTS `youtube_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `youtube_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `youtube_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribers` bigint(20) DEFAULT NULL,
  `views` bigint(20) DEFAULT NULL,
  `videos` int(11) DEFAULT NULL,
  `uploads_playlist_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `added_date` datetime DEFAULT NULL,
  `last_check_date` datetime DEFAULT NULL,
  `last_successful_check_date` datetime DEFAULT NULL,
  `is_demo` int(11) DEFAULT '0',
  `is_private` int(11) DEFAULT '0',
  `is_featured` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `youtube_users_id_uindex` (`id`),
  UNIQUE KEY `youtube_id` (`youtube_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youtube_users`
--

LOCK TABLES `youtube_users` WRITE;
/*!40000 ALTER TABLE `youtube_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `youtube_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youtube_videos`
--

DROP TABLE IF EXISTS `youtube_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `youtube_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `youtube_user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `views` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `dislikes` int(11) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `thumbnail_url` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `youtube_videos_id_uindex` (`id`),
  UNIQUE KEY `video_id` (`video_id`),
  KEY `youtube_user_id` (`youtube_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youtube_videos`
--

LOCK TABLES `youtube_videos` WRITE;
/*!40000 ALTER TABLE `youtube_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `youtube_videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:14:14
