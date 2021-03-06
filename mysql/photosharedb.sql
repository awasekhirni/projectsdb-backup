-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: photosharedb
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
-- Table structure for table `pxp_activities`
--

DROP TABLE IF EXISTS `pxp_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `following_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(100) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_activities`
--

LOCK TABLES `pxp_activities` WRITE;
/*!40000 ALTER TABLE `pxp_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_bank_receipts`
--

DROP TABLE IF EXISTS `pxp_bank_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_bank_receipts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `funding_id` int(11) NOT NULL DEFAULT '0',
  `description` tinytext,
  `price` varchar(50) NOT NULL DEFAULT '0',
  `mode` varchar(50) NOT NULL DEFAULT '',
  `approved` int(11) unsigned NOT NULL DEFAULT '0',
  `receipt_file` varchar(250) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approved_at` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_bank_receipts`
--

LOCK TABLES `pxp_bank_receipts` WRITE;
/*!40000 ALTER TABLE `pxp_bank_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_bank_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_blacklist`
--

DROP TABLE IF EXISTS `pxp_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_blacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_blacklist`
--

LOCK TABLES `pxp_blacklist` WRITE;
/*!40000 ALTER TABLE `pxp_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_blocks`
--

DROP TABLE IF EXISTS `pxp_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(15) NOT NULL DEFAULT '0',
  `profile_id` int(15) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `profile_id` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_blocks`
--

LOCK TABLES `pxp_blocks` WRITE;
/*!40000 ALTER TABLE `pxp_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_blog`
--

DROP TABLE IF EXISTS `pxp_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `content` text,
  `description` text,
  `posted` varchar(300) DEFAULT '0',
  `category` int(255) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT 'media/upload/photos/d-blog.jpg',
  `view` int(11) DEFAULT '0',
  `shared` int(11) DEFAULT '0',
  `tags` varchar(300) DEFAULT '',
  `created_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_blog`
--

LOCK TABLES `pxp_blog` WRITE;
/*!40000 ALTER TABLE `pxp_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_business_requests`
--

DROP TABLE IF EXISTS `pxp_business_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_business_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(50) NOT NULL DEFAULT '',
  `site` varchar(200) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `passport` text,
  `photo` text,
  `type` int(11) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_business_requests`
--

LOCK TABLES `pxp_business_requests` WRITE;
/*!40000 ALTER TABLE `pxp_business_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_business_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_chats`
--

DROP TABLE IF EXISTS `pxp_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(15) NOT NULL DEFAULT '0',
  `to_id` int(15) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `from_id` (`from_id`),
  KEY `to_id` (`to_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_chats`
--

LOCK TABLES `pxp_chats` WRITE;
/*!40000 ALTER TABLE `pxp_chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_comments_likes`
--

DROP TABLE IF EXISTS `pxp_comments_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_comments_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `comment_id` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_comments_likes`
--

LOCK TABLES `pxp_comments_likes` WRITE;
/*!40000 ALTER TABLE `pxp_comments_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_comments_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_comments_reply`
--

DROP TABLE IF EXISTS `pxp_comments_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_comments_reply` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `comment_id` int(20) NOT NULL DEFAULT '0',
  `user_id` int(20) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `time` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `comment_id` (`comment_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_comments_reply`
--

LOCK TABLES `pxp_comments_reply` WRITE;
/*!40000 ALTER TABLE `pxp_comments_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_comments_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_comments_reply_likes`
--

DROP TABLE IF EXISTS `pxp_comments_reply_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_comments_reply_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `reply_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `reply_id` (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_comments_reply_likes`
--

LOCK TABLES `pxp_comments_reply_likes` WRITE;
/*!40000 ALTER TABLE `pxp_comments_reply_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_comments_reply_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_config`
--

DROP TABLE IF EXISTS `pxp_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_config`
--

LOCK TABLES `pxp_config` WRITE;
/*!40000 ALTER TABLE `pxp_config` DISABLE KEYS */;
INSERT INTO `pxp_config` VALUES (1,'site_url','http://localhost/pixelphoto_final'),(2,'site_name','PixelPhoto'),(3,'theme','default'),(4,'validation','off'),(5,'ffmpeg_sys','off'),(6,'ffmpeg_binary','/usr/bin/ffmpeg'),(7,'max_video_duration','50'),(8,'yt_api','AIzaSyB3Lc0LpuqDCcv3F5qEMRVwYmfK37Tc9p0'),(9,'giphy_api','EEoFiCosGuyEIWlXnRuw4McTLxfjCrl1'),(10,'upload_images','on'),(11,'upload_videos','on'),(12,'import_videos','on'),(13,'import_images','on'),(14,'story_system','on'),(15,'signup_system','on'),(16,'delete_account','on'),(17,'recaptcha','on'),(18,'recaptcha_key',''),(19,'site_desc','PixelPhoto is a PHP Media Sharing Script, PixelPhoto is the best way to start your own media sharing script!'),(20,'site_email','deendoughouz@gmail.com'),(21,'meta_keywords','social, pixelphoto, social site'),(22,'obscene',''),(23,'max_upload','1000000000'),(24,'caption_len','500'),(25,'comment_len','500'),(27,'language','english'),(28,'smtp_or_mail','mail'),(29,'smtp_host',''),(30,'smtp_username',''),(31,'smtp_password',''),(32,'smtp_port','587'),(33,'smtp_encryption','tls'),(34,'fb_login','off'),(35,'tw_login','off'),(36,'gl_login','off'),(37,'facebook_app_id',''),(38,'facebook_app_key',''),(39,'twitter_app_id',''),(40,'twitter_app_key',''),(41,'google_app_id',''),(42,'google_app_key',''),(43,'site_docs',''),(44,'last_created_sitemap','0000-00-00'),(45,'last_backup','2018-03-07 06:13:18'),(46,'story_duration','10'),(47,'last_clean_db','1575828437'),(48,'email_validation','off'),(49,'amazone_s3','0'),(50,'bucket_name',''),(51,'amazone_s3_key',''),(52,'amazone_s3_s_key',''),(53,'region',''),(54,'ad1',''),(55,'ad2',''),(56,'ad3',''),(57,'google_analytics',''),(58,'ftp_upload','0'),(59,'ftp_host',''),(60,'ftp_username',''),(61,'ftp_password',''),(62,'ftp_port',''),(63,'ftp_endpoint',''),(64,'app_api_id','00d07097aa62be8193482e3b73f7d484'),(65,'app_api_key','ee7c0f1cc992a0140e41e4e270e58b6d'),(66,'wowonder_app_ID',''),(67,'wowonder_app_key',''),(68,'wowonder_domain_uri',''),(69,'wowonder_login','off'),(70,'last_run',''),(71,'config_run','-'),(72,'wowonder_domain_icon',''),(73,'server_key','1539874186'),(74,'playtube_url','https://playtubescript.com'),(75,'recaptcha_site_key',''),(76,'recaptcha_secret_key',''),(77,'watermark','off'),(78,'watermark_link','media/img/icon.png'),(79,'mp4_links','on'),(80,'playtube_links','off'),(81,'face_filter','on'),(82,'push','1'),(83,'push_id',''),(84,'push_key',''),(85,'affiliate_system','1'),(86,'affiliate_type','1'),(87,'amount_ref','0.10'),(88,'amount_percent_ref','0'),(89,'currency','USD'),(90,'credit_card','off'),(91,'stripe_secret',''),(92,'stripe_id',''),(93,'paypal_mode','live'),(94,'paypal_id',''),(95,'paypal_secret',''),(96,'pro_price','4'),(97,'bank_payment','on'),(98,'bank_transfer_note','In order to confirm the bank transfer, you will need to upload a receipt or take a screenshot of your transfer within 1 day from your payment date. If a bank transfer is made but no receipt is uploaded within this period, your order will be cancelled. We will verify and confirm your receipt within 3 working days from the date you upload it.'),(99,'pro_system','off'),(100,'boosted_posts','4'),(101,'ad_c_price','0.05'),(102,'ad_v_price','0.01'),(103,'google_map','off'),(104,'google_map_api',''),(105,'user_ads','on'),(106,'business_account','on'),(107,'withdraw_system','on'),(108,'raise_money','on'),(109,'raise_money_type','1'),(110,'version','1.3'),(111,'bank_description','<div class=\"bank_info\">\n                       <div class=\"dt_settings_header bg_gradient\">\n                           <div class=\"dt_settings_circle-1\"></div>\n                           <div class=\"dt_settings_circle-2\"></div>\n                           <div class=\"bank_info_innr\">\n                               <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path fill=\"currentColor\" d=\"M11.5,1L2,6V8H21V6M16,10V17H19V10M2,22H21V19H2M10,10V17H13V10M4,10V17H7V10H4Z\"></path></svg>\n                               <h4 class=\"bank_name\">Garanti Bank</h4>\n                               <div class=\"row\">\n                                   <div class=\"col col-md-12\">\n                                       <div class=\"bank_account\">\n                                           <p>4796824372433055</p>\n                                           <span class=\"help-block\">Account number / IBAN</span>\n                                       </div>\n                                   </div>\n                                   <div class=\"col col-md-12\">\n                                       <div class=\"bank_account_holder\">\n                                           <p>Antoian Kordiyal</p>\n                                           <span class=\"help-block\">Account name</span>\n                                       </div>\n                                   </div>\n                                   <div class=\"col col-md-6\">\n                                       <div class=\"bank_account_code\">\n                                           <p>TGBATRISXXX</p>\n                                           <span class=\"help-block\">Routing code</span>\n                                       </div>\n                                   </div>\n                                   <div class=\"col col-md-6\">\n                                       <div class=\"bank_account_country\">\n                                           <p>United States</p>\n                                           <span class=\"help-block\">Country</span>\n                                       </div>\n                                   </div>\n                               </div>\n                           </div>\n                       </div>\n                   </div>                            '),(112,'donate_percentage','1'),(113,'logo_extension','png'),(114,'favicon_extension','png'),(115,'clickable_url','on'),(116,'blog_system','on'),(117,'image_sell_system','on'),(118,'min_image_height','768'),(119,'min_image_width','1024'),(120,'watermark_anchor','top center'),(121,'watermark_opacity','0.5');
/*!40000 ALTER TABLE `pxp_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_connectivities`
--

DROP TABLE IF EXISTS `pxp_connectivities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_connectivities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `follower_id` int(25) NOT NULL DEFAULT '0',
  `following_id` int(25) NOT NULL DEFAULT '0',
  `active` int(5) NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL DEFAULT '1',
  `time` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `follower_id` (`follower_id`),
  KEY `following_id` (`following_id`),
  KEY `active` (`active`),
  CONSTRAINT `pxp_connectivities_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `pxp_users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `pxp_connectivities_ibfk_2` FOREIGN KEY (`following_id`) REFERENCES `pxp_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_connectivities`
--

LOCK TABLES `pxp_connectivities` WRITE;
/*!40000 ALTER TABLE `pxp_connectivities` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_connectivities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_funding`
--

DROP TABLE IF EXISTS `pxp_funding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_funding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashed_id` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(600) NOT NULL DEFAULT '',
  `amount` varchar(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(200) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hashed_id` (`hashed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_funding`
--

LOCK TABLES `pxp_funding` WRITE;
/*!40000 ALTER TABLE `pxp_funding` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_funding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_funding_raise`
--

DROP TABLE IF EXISTS `pxp_funding_raise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_funding_raise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `funding_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` varchar(11) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `funding_id` (`funding_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_funding_raise`
--

LOCK TABLES `pxp_funding_raise` WRITE;
/*!40000 ALTER TABLE `pxp_funding_raise` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_funding_raise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_hashtags`
--

DROP TABLE IF EXISTS `pxp_hashtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_hashtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(35) NOT NULL DEFAULT '',
  `tag` varchar(200) NOT NULL DEFAULT '',
  `last_trend_time` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`),
  KEY `tag` (`tag`),
  KEY `last_trend_time` (`last_trend_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_hashtags`
--

LOCK TABLES `pxp_hashtags` WRITE;
/*!40000 ALTER TABLE `pxp_hashtags` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_hashtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_langs`
--

DROP TABLE IF EXISTS `pxp_langs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_langs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '',
  `lang_key` varchar(160) DEFAULT NULL,
  `english` text,
  `arabic` text,
  `dutch` text,
  `french` text,
  `german` text,
  `russian` text,
  `spanish` text,
  `turkish` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=536 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_langs`
--

LOCK TABLES `pxp_langs` WRITE;
/*!40000 ALTER TABLE `pxp_langs` DISABLE KEYS */;
INSERT INTO `pxp_langs` VALUES (1,'','uname_or_email','Username or E-mail','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø£Ùˆ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø§Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','Gebruikersnaam of email','Nom dutilisateur ou email','Benutzername oder E-Mail-Adresse','Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð¸Ð»Ð¸ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹','Nombre de usuario o correo electrÃ³nico','KullanÄ±cÄ± adÄ± ya da email'),(2,'','ur_password','Your Password','ÙƒÙ„Ù…Ø© Ø§Ù„Ø³Ø± Ø®Ø§ØµØªÙƒ','Je wachtwoord','Votre mot de passe','Ihr Passwort','Ð’Ð°Ñˆ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Tu contraseÃ±a','Åžifreniz'),(3,'','forgot_ur_passwd','Forgot your password?','Ù†Ø³ÙŠØª Ø±Ù‚Ù…Ùƒ Ø§Ù„Ø³Ø±ÙŠØŸ','Je wachtwoord vergeten?','Mot de passe oubliÃ©?','Haben Sie Ihr Passwort vergessen?','Ð—Ð°Ð±Ñ‹Ð»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ?','Â¿Olvidaste tu contraseÃ±a?','ParolanÄ±zÄ± mÄ± unuttunuz?'),(4,'','login','Login','ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„','Log in','Sidentifier','Anmeldung','ÐÐ²Ñ‚Ð¾Ñ€Ð¸Ð·Ð¾Ð²Ð°Ñ‚ÑŒÑÑ','Iniciar sesiÃ³n','Oturum aÃ§'),(5,'','new_here','New here?','Ø¬Ø¯ÙŠØ¯ Ù‡Ù†Ø§ØŸ','Nieuw hier?','Nouveau ici?','Neu hier?','ÐÐ¾Ð²ÐµÐ½ÑŒÐºÐ¸Ð¹ Ñ‚ÑƒÑ‚?','Â¿Nuevo aquÃ­?','Burada yeni?'),(6,'','signup_now','Sign up now!','Ø£ÙØªØ­ Ø­Ø³Ø§Ø¨ Ø§Ù„Ø£Ù†!','Meld je nu aan!','Sinscrire maintenant!','Jetzt registrieren!','Ð—Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒÑÑ ÑÐµÐ¹Ñ‡Ð°Ñ!','Â¡RegÃ­strate ahora!','Åžimdi kayÄ±t ol!'),(7,'','enter_ur_n_and_p','Please enter your username and password!','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… ÙˆÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ!','Voer je gebruikersnaam en wachtwoord in!','Veuillez sil vous plaÃ®t entrer votre nom dutilisateur et votre mot de passe!','Bitte gib deinen Benutzernamen und dein Passwort ein!','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð° Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ ÑÐ²Ð¾Ð¹ Ð»Ð¾Ð³Ð¸Ð½ Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ!','Â¡Porfavor introduzca su nombre de usuario y contraseÃ±a!','LÃ¼tfen kullanÄ±cÄ± adÄ±nÄ±zÄ± ve ÅŸifrenizi giriniz!'),(8,'','invalid_un_or_passwd','Invalid username or password!','Ø®Ø·Ø£ ÙÙŠ Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø£Ùˆ ÙƒÙ„Ù…Ø© Ù…Ø±ÙˆØ±!','Ongeldige gebruikersnaam of wachtwoord!','Nom dutilisateur ou mot de passe invalide!','UngÃ¼ltiger Benutzername oder Passwort!','ÐÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð¾Ðµ Ð¸Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð¸Ð»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ!','Â¡Usuario o contraseÃ±a invalido!','GeÃ§ersiz kullanÄ±cÄ± adÄ± veya ÅŸifre!'),(9,'','email_addr','E-mail address','Ø¹Ù†ÙˆØ§Ù† Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','E-mailadres','Adresse e-mail','E-Mail-Addresse','ÐÐ´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹','DirecciÃ³n de correo electrÃ³nico','E'),(10,'','username','Username','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Gebruikersnaam','Nom dutilisateur','Nutzername','Ð¸Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','Nombre de usuario','KullanÄ±cÄ± adÄ±'),(11,'','password','Password','ÙƒÙ„Ù…Ù‡ Ø§Ù„Ø³Ø±','Wachtwoord','Mot de passe','Passwort','Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','ContraseÃ±a','Parola'),(12,'','confirm_passwd','Confirm Password','ØªØ£ÙƒÙŠØ¯ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±','bevestig wachtwoord','Confirmez le mot de passe','BestÃ¤tige das Passwort','ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚Ðµ ÐŸÐ°Ñ€Ð¾Ð»ÑŒ','Confirmar contraseÃ±a','Åžifreyi Onayla'),(13,'','male','Male','Ø§Ù„Ø°ÙƒØ±','Mannetje','MÃ¢le','MÃ¤nnlich','Ð¼ÑƒÐ¶Ñ‡Ð¸Ð½Ð°','Masculino','Erkek'),(14,'','female','Female','Ø¥Ù†Ø§Ø«Ø§','Vrouw','Femelle','Weiblich','Ð¶ÐµÐ½ÑÐºÐ¸Ð¹','Hembra','KadÄ±n'),(15,'','signup','Sign up','Ø³Ø¬Ù„','Aanmelden','Sinscrire','Anmelden','Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒÑÑ','RegÃ­strate','Kaydol'),(16,'','please_fill_fields','Please fill in all required fields','ÙŠØ±Ø¬Ù‰ Ù…Ù„Ø¡ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø­Ù‚ÙˆÙ„ Ø§Ù„Ù…Ø·Ù„ÙˆØ¨Ø©','Vul alle verplichte velden in','Veuillez remplir tous les champs requis','Bitte fÃ¼llen Sie alle geforderten Felder aus','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð·Ð°Ð¿Ð¾Ð»Ð½Ð¸Ñ‚Ðµ Ð²ÑÐµ Ð¾Ð±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ðµ Ð¿Ð¾Ð»Ñ','Por favor, rellene todos los campos obligatorios','LÃ¼tfen tÃ¼m zorunlu alanlarÄ± doldurun'),(17,'','username_is_taken','That username is already taken','Ù‡Ø°Ø§ Ø§Ù„Ø§Ø³Ù… Ù…Ø³ØªØ®Ø¯Ù… Ù…Ù† Ù‚Ø¨Ù„','Die gebruikersnaam is al in gebruik','Ce nom dutilisateur est dÃ©jÃ  pris','Dieser Benutzername ist bereits vergeben','Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ ÑƒÐ¶Ðµ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐµÑ‚ÑÑ','Ese nombre de usuario ya se encuentra en uso','Bu kullanÄ±cÄ± adÄ± Ã¶nceden alÄ±nmÄ±ÅŸ'),(18,'','email_exists','That email already exists','Ù‡Ø°Ø§ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ù…ÙˆØ¬ÙˆØ¯ Ø¨Ø§Ù„ÙØ¹Ù„','Die e-mail bestaat al','Cet email existe dÃ©jÃ ','Diese E-Mail ist bereits vorhanden','Ð­Ñ‚Ð¾ Ð¿Ð¸ÑÑŒÐ¼Ð¾ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚','Ese correo electrÃ³nico ya existe','Bu e-posta zaten mevcut'),(19,'','username_characters_length','Username must be between 4 and 16 characters','ÙŠØ¬Ø¨ Ø£Ù† ÙŠÙƒÙˆÙ† Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø¨ÙŠÙ† 4 Ùˆ 16 Ø­Ø±ÙÙ‹Ø§','Gebruikersnaam moet tussen 4 en 16 tekens lang zijn','Le nom dutilisateur doit comporter entre 4 et 16 caractÃ¨res','Der Benutzername muss zwischen 4 und 16 Zeichen lang sein','Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð´Ð¾Ð»Ð¶Ð½Ð¾ Ð±Ñ‹Ñ‚ÑŒ Ð¾Ñ‚ 4 Ð´Ð¾ 16 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð².','El nombre de usuario debe tener entre 4 y 16 caracteres','KullanÄ±cÄ± adÄ± 4 ile 16 karakter arasÄ±nda olmalÄ±dÄ±r'),(20,'','username_invalid_characters','Username contains invalid characters','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… ÙÙŠÙ‡ Ø£Ø­Ø±Ù ØºÙŠØ± ØµØ§Ù„Ø­Ø©','Gebruikersnaam bevat ongeldige tekens','Nom dutilisateur contient des caractÃ¨res non valides','Benutzername beinhaltet ungÃ¼ltige Zeichen','Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½ÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ðµ ÑÐ¸Ð¼Ð²Ð¾Ð»Ñ‹','Nombre de usuario contiene caracteres invÃ¡lidos','KullanÄ±cÄ± adÄ± geÃ§ersiz karakterler iÃ§eriyor'),(21,'','email_invalid_characters','E-mail contains invalid characters','ÙŠØ­ØªÙˆÙŠ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø¹Ù„Ù‰ Ø£Ø­Ø±Ù ØºÙŠØ± ØµØ§Ù„Ø­Ø©','E-mail bevat ongeldige tekens','E-mail contient des caractÃ¨res non valides','E-Mail enthÃ¤lt ungÃ¼ltige Zeichen','E-mail ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ Ð½ÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ðµ ÑÐ¸Ð¼Ð²Ð¾Ð»Ñ‹','El correo electrÃ³nico contiene caracteres no vÃ¡lidos','E-posta geÃ§ersiz karakterler iÃ§eriyor'),(22,'','password_not_match','Password does not match','ÙƒÙ„Ù…Ø© Ø§Ù„Ø³Ø± ØºÙŠØ± Ù…ØªØ·Ø§Ø¨Ù‚Ø©','Wachtwoord komt niet overeen','Le mot de passe ne correspond pas','Passwort stimmt nicht Ã¼berein','ÐŸÐ°Ñ€Ð¾Ð»ÑŒ Ð½Ðµ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚','Las contraseÃ±as no coinciden','Parola eÅŸleÅŸmiyor'),(23,'','password_is_short','Password is too short','ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ù‚ØµÙŠØ±Ø© Ø¬Ø¯Ø§','Wachtwoord is te kort','Le mot de passe est trop court','Das Passwort ist zu kurz','ÐŸÐ°Ñ€Ð¾Ð»ÑŒ ÑÐ»Ð¸ÑˆÐºÐ¾Ð¼ ÐºÐ¾Ñ€Ð¾Ñ‚ÐºÐ¸Ð¹','La contraseÃ±a es demasiado corta','Åžifre Ã§ok kÄ±sa'),(24,'','successfully_joined_desc','You have successfully joined. Please wait..','Ù„Ù‚Ø¯ Ø§Ù†Ø¶Ù…Ù…Øª Ø¨Ù†Ø¬Ø§Ø­. Ø£Ø±Ø¬Ùˆ Ø§Ù„Ø¥Ù†ØªØ¸Ø§Ø±..','Je bent succesvol toegetreden. Even geduld aub..','Vous avez rejoint avec succÃ¨s. Sil vous plaÃ®t, attendez..','Sie sind erfolgreich beigetreten. Warten Sie mal..','Ð’Ñ‹ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¿Ñ€Ð¸ÑÐ¾ÐµÐ´Ð¸Ð½Ð¸Ð»Ð¸ÑÑŒ. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð´Ð¾Ð¶Ð´Ð¸Ñ‚Ðµ..','Te has unido exitosamente Por favor espera..','BaÅŸarÄ±yla katÄ±ldÄ±. LÃ¼tfen bekle..'),(25,'','notifications','Notifications','Ø¥Ø®Ø·Ø§Ø±Ø§Øª','meldingen','Notifications','Benachrichtigungen','Ð£Ð²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ñ','Notificaciones','Bildirimler'),(26,'','search','Search','Ø¨Ø­Ø«','Zoeken','Chercher','Suche','ÐŸÐ¾Ð¸ÑÐº','Buscar','Arama'),(27,'','u_dont_have_notif','You do not have any notifications','Ù„ÙŠØ³ Ù„Ø¯ÙŠÙƒ Ø£ÙŠ Ø¥Ø®Ø·Ø§Ø±Ø§Øª','Je hebt geen meldingen','Vous navez aucune notification','Sie haben keine Benachrichtigungen','Ð£ Ð²Ð°Ñ Ð½ÐµÑ‚ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ð¹','Usted no tiene ninguna notificaciÃ³n','Bildiriminiz yok'),(28,'','featured_posts','Featured posts','Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª Ù…Ù…ÙŠØ²Ø©','Aanbevolen berichten','Postes en vedette','Beliebte BeitrÃ¤ge','ÐŸÐ¾Ð¿ÑƒÐ»ÑÑ€Ð½Ñ‹Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ','Publicaciones destacadas','Ã–ne Ã§Ä±kan gÃ¶nderiler'),(29,'','stories','Stories','Ù‚ØµØµ','verhalen','Histoires','Geschichten','Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ð¸','Cuentos','Hikayeler'),(30,'','stories_from_people','Here are stories from people you follow.','Ø³ÙˆÙ ØªÙƒÙˆÙ† Ù‡Ù†Ø§Ùƒ Ù‚ØµØµ Ù…Ù† Ø£Ø´Ø®Ø§Øµ ØªØªØ§Ø¨Ø¹Ù‡Ù….','Hier zullen verhalen zijn van mensen die je volgt.','Voici des histoires de personnes que vous suivez.','Hier werden Geschichten von Leuten sein, denen du folgst.','Ð—Ð´ÐµÑÑŒ Ð±ÑƒÐ´ÑƒÑ‚ Ñ€Ð°ÑÑÐºÐ°Ð·Ñ‹ Ð¾Ñ‚ Ð»ÑŽÐ´ÐµÐ¹, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ñ… Ð²Ñ‹ Ð¿Ñ€Ð¸Ð´ÐµÑ€Ð¶Ð¸Ð²Ð°ÐµÑ‚ÐµÑÑŒ.','AquÃ­ habrÃ¡ historias de personas a las que sigues.','Ä°zlediÄŸiniz kiÅŸilerin hikayeleri burada olacak.'),(31,'','terms','Terms','Ø´Ø±ÙˆØ·','Voorwaarden','termes','Begriffe','ÑÑ€Ð¾ÐºÐ¸','Condiciones','ÅŸartlar'),(32,'','privacy_and_policy','Privacy & Policy','Ø§Ù„Ø®ØµÙˆØµÙŠØ© & ampØ› Ø³ÙŠØ§Ø³Ø§Øª','Privacy & amp; Het beleid','ConfidentialitÃ© et ampÃ¨re Politique','Datenschutz & amp; Politik','ÐšÐ¾Ð½Ñ„Ð¸Ð´ÐµÐ½Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾ÑÑ‚ÑŒ Ð¸ amp; Ð¿Ð¾Ð»Ð¸Ñ‚Ð¸ÐºÐ°','Privacidad y amp; PolÃ­tica','Gizlilik ve amp; Politika'),(33,'','language','Language','Ù„ØºØ©','Taal','La langue','Sprache','ÑÐ·Ñ‹Ðº','Idioma','Dil'),(34,'','about','About','Ø­ÙˆÙ„','Over','Sur','Ãœber','ÐžÐºÐ¾Ð»Ð¾','Acerca de','hakkÄ±nda'),(35,'','select_file','Select File','Ø­Ø¯Ø¯ Ù…Ù„Ù','Selecteer bestand','Choisir le dossier','Datei aussuchen','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ñ„Ð°Ð¹Ð»','Seleccione Archivo','Dosya SeÃ§'),(36,'','choose_up210img','Choose up to 10 images','Ø§Ø®ØªØ± Ø­ØªÙ‰ 10 ØµÙˆØ±','Kies maximaal 10 afbeeldingen','Choisissez jusquÃ  10 images','WÃ¤hlen Sie bis zu 10 Bilder','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´Ð¾ 10 Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ð¹','Elige hasta 10 imÃ¡genes','En fazla 10 gÃ¶rÃ¼ntÃ¼ seÃ§in'),(37,'','add_post_caption','Add post caption, #hashtag, or @mention?','Ø¥Ø¶Ø§ÙØ© ØªØ¹Ù„ÙŠÙ‚ Ø¢Ø®Ø± ØŒ #hashtag ..mentionØŸ','Ondertiteling toevoegen, #hashtag .. @mention?','Ajouter une lÃ©gende de message, #hashtag .. @mention?','FÃ¼gen Sie die Untertitel, #hashtag .. @mention hinzu?','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¿Ð¾Ð´Ð¿Ð¸ÑÑŒ, #hashtag .. @mention?','Agregar tÃ­tulo de publicaciÃ³n, #hashtag .. @mention?','GÃ¶nderi ekle, #hashtag .. @mention?'),(38,'','publish','Publish','Ù†Ø´Ø±','Publiceren','Publier','VerÃ¶ffentlichen','ÐŸÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ñ‚ÑŒ','Publicar','YayÄ±nla'),(39,'','close','Close','Ù‚Ø±ÙŠØ¨','Dichtbij','Fermer','SchlieÃŸen','Ð—Ð°ÐºÑ€Ñ‹Ñ‚ÑŒ','Cerca','Kapat'),(40,'','do_not_attach','Do not attach','Ù„Ø§ ØªØ±ÙÙ‚','Niet bevestigen','Nattachez pas','Nicht anhÃ¤ngen','ÐÐµ Ð¿Ñ€Ð¸ÐºÑ€ÐµÐ¿Ð»ÑÑ‚ÑŒ','No adjuntar','Ekleme'),(41,'','unknown_error','An unknown error occurred. Please try again later!','Ø­Ø¯Ø« Ø®Ø·Ø£ ØºÙŠØ± Ù…Ø¹Ø±ÙˆÙ. Ø§Ù„Ø±Ø¬Ø§Ø¡ Ù…Ø¹Ø§ÙˆØ¯Ø© Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© ÙÙŠ ÙˆÙ‚Øª Ù„Ø§Ø­Ù‚!','Een onbekende fout is opgetreden. Probeer het later opnieuw!','Une erreur inconnue est survenue. Veuillez rÃ©essayer plus tard!','Ein unbekannter Fehler ist aufgetreten. Bitte versuchen Sie es spÃ¤ter erneut!','ÐŸÑ€Ð¾Ð¸Ð·Ð¾ÑˆÐ»Ð° Ð½ÐµÐ¸Ð·Ð²ÐµÑÑ‚Ð½Ð°Ñ Ð¾ÑˆÐ¸Ð±ÐºÐ°. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÑƒ Ð¿Ð¾Ð·Ð¶Ðµ!','Un error desconocido ocurriÃ³. Â¡Por favor, intÃ©ntelo de nuevo mÃ¡s tarde!','Bilinmeyen bir hata oluÅŸtu. LÃ¼tfen daha sonra tekrar deneyiniz!'),(42,'','max_upload_limit','Your post exceeds the maximum upload size for this site. Maximum upload size: {{size}}','ØªØªØ¬Ø§ÙˆØ² Ù…Ø´Ø§Ø±ÙƒØªÙƒ Ø§Ù„Ø­Ø¯ Ø§Ù„Ø£Ù‚ØµÙ‰ Ù„Ø­Ø¬Ù… Ø§Ù„ØªØ­Ù…ÙŠÙ„ Ù„Ù‡Ø°Ø§ Ø§Ù„Ù…ÙˆÙ‚Ø¹. Ø§Ù„Ø­Ø¯ Ø§Ù„Ø£Ù‚ØµÙ‰ Ù„Ø­Ø¬Ù… Ø§Ù„ØªØ­Ù…ÙŠÙ„: {{size}}','Je bericht overschrijdt de maximale uploadgrootte voor deze site. Maximale uploadgrootte: {{size}}','Votre message dÃ©passe la taille de tÃ©lÃ©chargement maximale pour ce site. Taille de tÃ©lÃ©chargement maximale: {{size}}','Dein Beitrag Ã¼berschreitet die maximale UploadgrÃ¶ÃŸe fÃ¼r diese Website. Maximale UploadgrÃ¶ÃŸe: {{size}}','Ð’Ð°ÑˆÐµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð¿Ñ€ÐµÐ²Ñ‹ÑˆÐ°ÐµÑ‚ Ð¼Ð°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ñ€Ð°Ð·Ð¼ÐµÑ€ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐ¸ Ð´Ð»Ñ ÑÑ‚Ð¾Ð³Ð¾ ÑÐ°Ð¹Ñ‚Ð°. ÐœÐ°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ñ€Ð°Ð·Ð¼ÐµÑ€ Ð·Ð°Ð³Ñ€ÑƒÐ¶Ð°ÐµÐ¼Ð¾Ð³Ð¾ Ñ„Ð°Ð¹Ð»Ð°: {{size}}','Su publicaciÃ³n excede el tamaÃ±o mÃ¡ximo de carga para este sitio. TamaÃ±o mÃ¡ximo de carga: {{size}}','YayÄ±nÄ±nÄ±z bu sitenin maksimum yÃ¼kleme boyutunu aÅŸÄ±yor. Maksimum yÃ¼kleme boyutu: {{size}}'),(43,'','post_published','Your post has been published successfully','ØªÙ… Ù†Ø´Ø± Ù…Ø´Ø§Ø±ÙƒØªÙƒ Ø¨Ù†Ø¬Ø§Ø­','Uw bericht is met succes gepubliceerd','Votre message a Ã©tÃ© publiÃ© avec succÃ¨s','Dein Beitrag wurde erfolgreich verÃ¶ffentlicht','Ð’Ð°ÑˆÐµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð½Ð¾','Tu publicaciÃ³n ha sido publicada con Ã©xito','YayÄ±nÄ±nÄ±z baÅŸarÄ±yla yayÄ±nlandÄ±'),(44,'','no_file_choosen','No file choosen','Ù„Ù… ÙŠØªÙ… Ø§Ø®ØªÙŠØ§Ø± Ù…Ù„Ù','Geen bestand gekozen','Aucun fichier choisi','Keine Datei ausgewÃ¤hlt','Ð¤Ð°Ð¹Ð» Ð½Ðµ Ð²Ñ‹Ð±Ñ€Ð°Ð½','Sin archivo elegido','HiÃ§bir dosya seÃ§ilmedi'),(45,'','search_gifs','Search for gifs..','Ø§Ø¨Ø­Ø« Ø¹Ù† ØµÙˆØ± ..','Zoeken naar gifs ..','Rechercher des gifs ..','Nach Gifs suchen ..','ÐŸÐ¾Ð¸ÑÐº gifs ..','Buscar gifs ...','Gifleri ArayÄ±n ..'),(46,'','delete_post','Delete post','Ø­Ø°Ù Ø¢Ø®Ø±','Verwijder gepost bericht','Supprimer le message','Beitrag entfernen','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Eliminar mensaje','GÃ¶nderiyi sil'),(47,'','edit_post','Edit post','ØªØ¹Ø¯ÙŠÙ„ Ø§Ù„Ù…Ù†Ø´ÙˆØ±','Bericht bewerken','Modifier le post','Beitrag bearbeiten','Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Editar post','GÃ¶nderiyi dÃ¼zenle'),(48,'','report_post','Report this post','Ø£Ø¨Ù„Øº Ø¹Ù† Ù‡Ø°Ø§ Ø§Ù„Ù…Ù†ØµØ¨','Meld deze post','Signaler ce message','Diesen Post melden','Ð¡Ð¾Ð¾Ð±Ñ‰Ð¸Ñ‚ÑŒ Ð¾Ð± ÑÑ‚Ð¾Ð¼ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¸','Reportar esta publicaciÃ³n','Bu gÃ¶nderiyi ÅŸikayet et'),(49,'','cancel_report','Cancel report','Ø¥Ù„ØºØ§Ø¡ Ø§Ù„ØªÙ‚Ø±ÙŠØ±','Annuleer rapport','Annuler le rapport','Bericht abbrechen','ÐžÑ‚Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¾Ñ‚Ñ‡ÐµÑ‚','Cancelar informe','Raporu iptal et'),(50,'','go2post','Go to post','Ø§Ù„Ø°Ù‡Ø§Ø¨ Ø¥Ù„Ù‰ Ø¢Ø®Ø±','Ga naar bericht','Aller Ã  la publication','Gehe zum Post','ÐŸÐµÑ€ÐµÐ¹Ñ‚Ð¸ Ðº ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÑŽ','Ir a la publicaciÃ³n','GÃ¶nderiye git'),(51,'','likes','Likes','Ø§Ù„Ø¥Ø¹Ø¬Ø§Ø¨Ø§Øª','sympathieÃ«n','Aime','Likes','ÐÑ€Ð°Ð²Ð¸Ñ‚ÑÑ','Gustos','Seviyor'),(52,'','comments','Comments','ØªØ¹Ù„ÙŠÙ‚Ø§Øª','Comments','commentaires','Bemerkungen','ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸','Comentarios','Yorumlar'),(53,'','write_comment','Write a comment','Ø£ÙƒØªØ¨ ØªØ¹Ù„ÙŠÙ‚Ø§','Schrijf een reactie','Ã‰crire un commentaire','Schreibe einen Kommentar','ÐÐ°Ð¿Ð¸ÑÐ°Ñ‚ÑŒ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','Escribir un comentario','Bir yorum Yaz'),(54,'','follow_suggestions','Suggestions For You','Ø§Ù‚ØªØ±Ø§Ø­Ø§Øª Ù„Ùƒ','Suggesties voor jou','Des suggestions pour vous','VorschlÃ¤ge fÃ¼r dich','ÐŸÑ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ñ Ð´Ð»Ñ Ð²Ð°Ñ','Sugerencias para ti','Sizin iÃ§in Ã¶neriler'),(55,'','see_all','See all','Ø§Ø¸Ù‡Ø§Ø± Ø§Ù„ÙƒÙ„','Alles zien','Voir tout','Alles sehen','Ð£Ð²Ð¸Ð´ÐµÑ‚ÑŒ Ð²ÑÐµ','Ver todo','Hepsini gÃ¶r'),(56,'','follow','Follow','Ø¥ØªØ¨Ø¹','Volgen','Suivre','Folgen','ÑÐ»ÐµÐ´Ð¸Ñ‚ÑŒ','Seguir','Takip et'),(57,'','following','Following','Ø§Ù„ØªØ§Ù„ÙŠØ©','Als vervolg op','Suivant','Folgend','Ð¡Ð»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ð¹','Siguiendo','Takip etme'),(58,'','suggested_people','Suggested people to follow','Ø§Ù‚ØªØ±Ø­ Ø¹Ù„Ù‰ Ø§Ù„Ù†Ø§Ø³ Ù„Ù…ØªØ§Ø¨Ø¹Ø©','Voorgestelde mensen om te volgen','Suggestions de personnes Ã  suivre','VorschlÃ¤ge fÃ¼r weitere Personen','Ð ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÐ¼Ñ‹Ðµ Ð»ÑŽÐ´Ð¸','Gente sugerida a seguir','Ã–nerilen kiÅŸiler takip edecek'),(59,'','last_seen','Last seen','Ø§Ø®Ø± Ø¸Ù‡ÙˆØ±','Laatst gezien','DerniÃ¨re vue','Zuletzt gesehen','ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸Ðµ Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÐ½Ð½Ñ‹Ðµ','Ultima vez visto','Son gÃ¶rÃ¼len'),(60,'','followers','Followers','Ù…ØªØ§Ø¨Ø¹ÙˆÙ†','Volgers','Suiveurs','AnhÃ¤nger','Ð§Ð¸Ñ‚Ð°ÑŽÑ‚','Seguidores','Ä°zleyiciler'),(61,'','posts','Posts','Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª','berichten','Des postes','BeitrÃ¤ge','Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹','Publicaciones','Mesajlar'),(62,'','save_post','Save posts','Ø­ÙØ¸ Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª','Bewaar berichten','Enregistrer les messages','BeitrÃ¤ge speichern','Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ Ð·Ð°Ð¿Ð¸ÑÐ¸','Guardar publicaciones','GÃ¶nderiyi kaydet'),(63,'','unsave_post','Unsave posts','Ø¬Ø§Ø±Ù Ø­ÙØ¸ Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª','Posten herstellen','Posts Unsave','BeitrÃ¤ge werden nicht gespeichert','ÐÐµÐ±ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ñ‹Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ','Publicaciones no guardadas','GÃ¶nderimsiz yayÄ±nlar'),(64,'','confirm_del_post','Are you sure you want to delete this post? This action can not be undone.','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ù‡ Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ©ØŸ Ù‡Ø°Ø§ Ø§Ù„Ø¥Ø¬Ø±Ø§Ø¡ Ù„Ø§ ÙŠÙ…ÙƒÙ† Ø§Ù„ØªØ±Ø§Ø¬Ø¹','Weet je zeker dat je dit bericht wilt verwijderen? deze actie kan niet ongedaan worden gemaakt','Es-tu sur de vouloir supprimer cette annonce? cette action ne peut pas Ãªtre annulÃ©e','MÃ¶chten Sie diesen Beitrag wirklich lÃ¶schen? Diese Aktion kann nicht rÃ¼ckgÃ¤ngig gemacht werden','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ñƒ Ð·Ð°Ð¿Ð¸ÑÑŒ? ÑÑ‚Ð¾ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ðµ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð¾Ñ‚Ð¼ÐµÐ½ÐµÐ½Ð¾','Â¿Seguro que quieres eliminar esta publicaciÃ³n? esta acciÃ³n no puede deshacerse','Bu gÃ¶nderiyi silmek istediÄŸinizden emin misiniz? bu iÅŸlem geri alÄ±namaz'),(65,'','cancel','Cancel','Ø¥Ù„ØºØ§Ø¡','Annuleer','Annuler','Stornieren','ÐžÑ‚Ð¼ÐµÐ½Ð°','Cancelar','Ä°ptal etmek'),(66,'','ok','Okey','Ø­Ø³Ù†Ø§','in orde','Bien','Okey','Ð¸ÑÐ¿Ñ€Ð°Ð²Ð½Ñ‹Ð¹','Bueno','tamam mÄ±'),(67,'','delete_comment','Delete comment','Ø­Ø°Ù ØªØ¹Ù„ÙŠÙ‚','Reactie verwijderen','Supprimer le commentaire','Kommentar lÃ¶schen','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','Eliminar comentario','Yorumu sil'),(68,'','confirm_del_comment','Are you sure you want to delete this comment?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ø§ Ø§Ù„ØªØ¹Ù„ÙŠÙ‚ØŸ','Weet je zeker dat je deze reactie wilt verwijderen?','Ãªtes-vous sÃ»r de vouloir supprimer ce commentaire?','MÃ¶chtest du diesen Kommentar wirklich lÃ¶schen?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ð½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾Ñ‚ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹?','Â¿Seguro que quieres eliminar este comentario?','Bu yorumu silmek istediÄŸinizden emin misiniz?'),(69,'','post_added2fav','Post added to your favourites list','Ø¥Ø¶Ø§ÙØ© Ø¥Ù„Ù‰ Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ù…ÙØ¶Ù„Ø© Ù„Ø¯ÙŠÙƒ','Post toegevoegd aan uw favorietenlijst','Message ajoutÃ© Ã  votre liste de favoris','Beitrag wurde zu Ihrer Favoritenliste hinzugefÃ¼gt','Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¾ Ð² Ð²Ð°Ñˆ ÑÐ¿Ð¸ÑÐ¾Ðº Ð¸Ð·Ð±Ñ€Ð°Ð½Ð½Ñ‹Ñ…','Mensaje agregado a tu lista de favoritos','GÃ¶nderi favori listenize eklendi'),(70,'','post_rem_from_fav','Post removed from your favourites list','ØªÙ…Øª Ø¥Ø²Ø§Ù„Ø© Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ© Ù…Ù† Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ù…ÙØ¶Ù„Ø© Ù„Ø¯ÙŠÙƒ','Post verwijderd van uw favorietenlijst','Message retirÃ© de votre liste de favoris','Beitrag wurde aus Ihrer Favoritenliste entfernt','Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ ÑƒÐ´Ð°Ð»ÐµÐ½Ð¾ Ð¸Ð· ÑÐ¿Ð¸ÑÐºÐ° Ð¸Ð·Ð±Ñ€Ð°Ð½Ð½Ñ‹Ñ…','Mensaje eliminado de tu lista de favoritos','GÃ¶nderi favori listenizden kaldÄ±rÄ±ldÄ±'),(71,'','report_sent','Your report has been sent!','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ ØªÙ‚Ø±ÙŠØ±Ùƒ','Uw rapport is verzonden!','Votre rapport a Ã©tÃ© envoyÃ©!','Ihr Bericht wurde gesendet!','Ð’Ð°Ñˆ Ð¾Ñ‚Ñ‡ÐµÑ‚ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½!','Â¡Tu reporte ha sido enviado!','Raporunuz gÃ¶nderildi!'),(72,'','report_canceled','Your report has been canceled!','Ù„Ù‚Ø¯ ØªÙ… Ø¥Ù„ØºØ§Ø¡ ØªÙ‚Ø±ÙŠØ±Ùƒ!','Uw rapport is geannuleerd!','Votre rapport a Ã©tÃ© annulÃ©!','Ihr Bericht wurde storniert!','Ð’Ð°Ñˆ Ð¾Ñ‚Ñ‡ÐµÑ‚ Ð¾Ñ‚Ð¼ÐµÐ½ÐµÐ½!','Â¡Su informe ha sido cancelado!','Raporunuz iptal edildi!'),(73,'','changes_saved','Your changes has been successfully saved!','ØªÙ… Ø­ÙØ¸ ØªØºÙŠÙŠØ±Ø§ØªÙƒ Ø¨Ù†Ø¬Ø§Ø­!','Uw wijzigingen zijn succesvol opgeslagen!','Vos modifications ont Ã©tÃ© enregistrÃ©es avec succÃ¨s!','Ihre Ã„nderungen wurden erfolgreich gespeichert!','Ð’Ð°ÑˆÐ¸ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ Ð±Ñ‹Ð»Ð¸ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ñ‹!','Â¡Tus cambios se han guardado con Ã©xito!','DeÄŸiÅŸiklikleriniz baÅŸarÄ±yla kaydedildi!'),(74,'','explore_posts','Explore posts','Ø§Ø³ØªÙƒØ´Ø§Ù Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª','Verken berichten','Explorez les posts','Erkunden Sie BeitrÃ¤ge','Ð˜ÑÑÐ»ÐµÐ´ÑƒÐ¹Ñ‚Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ','Explorar publicaciones','MesajlarÄ± keÅŸfedin'),(75,'','explore_posts_desc','Explore {{site_name}} photos and videos','Ø§Ø³ØªÙƒØ´Ù {{site_name}} Ø§Ù„ØµÙˆØ± ÙˆÙ…Ù‚Ø§Ø·Ø¹ Ø§Ù„ÙÙŠØ¯ÙŠÙˆ','Verken {{site_name}} fotos en videos','Explorer les {{site_name}} photos et vidÃ©os','Erkunden Sie {{site_name}} Fotos und Videos','Ð˜ÑÑÐ»ÐµÐ´ÑƒÐ¹Ñ‚Ðµ {{site_name}} Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸Ð¸ Ð¸ Ð²Ð¸Ð´ÐµÐ¾Ñ€Ð¾Ð»Ð¸ÐºÐ¸','Explore {{site_name}} fotos y videos','FotoÄŸraflarÄ± ve videolarÄ± {{site_name}} keÅŸfedin'),(76,'','messages','Messages','Ø±Ø³Ø§Ø¦Ù„','berichten','messages','Mitteilungen','Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ','Mensajes','Mesajlar'),(77,'','type_message','Type a message and hit Enter','Ø§ÙƒØªØ¨ Ø±Ø³Ø§Ù„Ø© ÙˆØ§Ø¶ØºØ· Ø¹Ù„Ù‰ Enter','Typ een bericht en druk op Enter','Tapez un message et appuyez sur EntrÃ©e','Geben Sie eine Nachricht ein und drÃ¼cken Sie die Eingabetaste','Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð¸ Ð½Ð°Ð¶Ð¼Ð¸Ñ‚Ðµ Enter.','Escriba un mensaje y presione Enter','Bir mesaj yazÄ±p Enter tuÅŸuna basÄ±n'),(78,'','select_chat','Please select a chat to start messaging','ÙŠØ±Ø¬Ù‰ ØªØ­Ø¯ÙŠØ¯ Ø¯Ø±Ø¯Ø´Ø© Ù„Ø¨Ø¯Ø¡ Ø§Ù„Ù…Ø±Ø§Ø³Ù„Ø©','Selecteer een chat om berichten te verzenden','Veuillez sÃ©lectionner une conversation pour dÃ©marrer la messagerie','Bitte wÃ¤hle einen Chat um die Nachrichten zu starten','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ñ‡Ð°Ñ‚, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð½Ð°Ñ‡Ð°Ñ‚ÑŒ Ð¾Ð±Ð¼ÐµÐ½ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÑÐ¼Ð¸','Seleccione un chat para comenzar a enviar mensajes','LÃ¼tfen mesajlaÅŸmaya baÅŸlamak iÃ§in bir sohbet seÃ§in'),(79,'','clear_messages','Clear messages','Ù…Ø³Ø­ Ø§Ù„Ø±Ø³Ø§Ø¦Ù„','Duidelijke berichten','Effacer les messages','Nachrichten lÃ¶schen','ÐžÑ‡Ð¸ÑÑ‚Ð¸Ñ‚ÑŒ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ','Borrar mensajes','MesajlarÄ± temizle'),(80,'','confirm_clear_messages','Are you sure you want to delete this conversation?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ù…Ù† Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ù‡ Ø§Ù„Ù…Ø­Ø§Ø¯Ø«Ø©ØŸ','Weet je zeker dat je dit gesprek wilt verwijderen?','ÃŠtes-vous sÃ»r de vouloir supprimer cette conversation?','MÃ¶chten Sie diese Unterhaltung wirklich lÃ¶schen?','Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾Ñ‚ Ñ€Ð°Ð·Ð³Ð¾Ð²Ð¾Ñ€?','Â¿Seguro que quieres eliminar esta conversaciÃ³n?','Bu sohbeti silmek istediÄŸinizden emin misiniz?'),(81,'','conversation_deleted','Conversation has been deleted succesfully!','ØªÙ… Ø­Ø°Ù Ø§Ù„Ù…Ø­Ø§Ø¯Ø«Ø© Ø¨Ù†Ø¬Ø§Ø­!','Gesprek is succesvol verwijderd!','La conversation a Ã©tÃ© supprimÃ©e avec succÃ¨s!','Konversation wurde erfolgreich gelÃ¶scht!','Ð Ð°Ð·Ð³Ð¾Ð²Ð¾Ñ€ ÑƒÐ´Ð°Ð»Ñ‘Ð½ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾!','Â¡La conversaciÃ³n ha sido eliminada exitosamente!','KonuÅŸma baÅŸarÄ±yla silindi!'),(82,'','delete_chat','Delete chat','Ø­Ø°Ù Ø§Ù„Ø¯Ø±Ø¯Ø´Ø©','Verwijder chat','Supprimer le chat','Chat lÃ¶schen','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ñ‡Ð°Ñ‚','Eliminar chat','Sohbeti sil'),(83,'','privacy_settings','Privacy settings','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø®ØµÙˆØµÙŠØ©','Privacy instellingen','ParamÃ¨tres de confidentialitÃ©','Datenschutzeinstellungen','ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ ÐºÐ¾Ð½Ñ„Ð¸Ð´ÐµÐ½Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾ÑÑ‚Ð¸','La configuraciÃ³n de privacidad','Gizlilik ayarlarÄ±'),(84,'','confirm_del_chat','Are you sure you want to delete this chat? All conversation will be deleted.','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ù…Ù† Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ù‡ Ø§Ù„Ø¯Ø±Ø¯Ø´Ø©ØŸ Ø³ÙŠØªÙ… Ø­Ø°Ù ÙƒÙ„ Ù…Ø­Ø§Ø¯Ø«ØªÙƒ','Weet je zeker dat je deze chat wilt verwijderen? al je gesprekken worden verwijderd','ÃŠtes-vous sÃ»r de vouloir supprimer ce chat? toute votre conversation sera supprimÃ©e','MÃ¶chtest du diesen Chat wirklich lÃ¶schen? Alle Ihre Konversationen werden gelÃ¶scht','Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾Ñ‚ Ñ‡Ð°Ñ‚? Ð²ÐµÑÑŒ Ð²Ð°Ñˆ Ñ€Ð°Ð·Ð³Ð¾Ð²Ð¾Ñ€ Ð±ÑƒÐ´ÐµÑ‚ ÑƒÐ´Ð°Ð»ÐµÐ½','Â¿Seguro que quieres eliminar este chat? toda tu conversaciÃ³n serÃ¡ eliminada','Bu sohbeti silmek istediÄŸinizden emin misiniz? tÃ¼m konuÅŸmalarÄ±nÄ±z silinecek'),(85,'','delete_messages','Delete messages','Ø­Ø°Ù Ø§Ù„Ø±Ø³Ø§Ø¦Ù„','Verwijder berichten','Supprimer les messages','Nachrichten lÃ¶schen','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ','Eliminar mensajes','MesajlarÄ± sil'),(86,'','delete_selected','Delete selected','Ø§Ø­Ø°Ù Ø§Ù„Ù…Ø®ØªØ§Ø±','Verwijder geselecteerde','Supprimer sÃ©lectionnÃ©e','AusgewÃ¤hlte lÃ¶schen','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ð²Ñ‹Ð±Ñ€Ð°Ð½Ð½Ð¾Ðµ','Eliminar seleccionado','Silme seÃ§ildi'),(87,'','confirm_del_messages','Are you sure you want to delete this messages? confirm to continue','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ù‡ Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ØŸ ØªØ£ÙƒÙŠØ¯ Ù„Ù„Ù…ØªØ§Ø¨Ø¹Ø©','Weet je zeker dat je deze berichten wilt verwijderen? bevestigen om door te gaan','ÃŠtes-vous sÃ»r de vouloir supprimer ce message? confirmer pour continuer','MÃ¶chten Sie diese Nachrichten wirklich lÃ¶schen? BestÃ¤tigen Sie, um fortzufahren','Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ? Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚ÑŒ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ','Â¿Seguro que quieres borrar estos mensajes? confirmar para continuar','Bu mesajlarÄ± silmek istediÄŸinizden emin misiniz? devam etmek iÃ§in onaylayÄ±n'),(88,'','profile_settings','Profile settings','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ','Profielinstellingen','ParamÃ¨tres de profil','Profileinstellungen','ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ','ConfiguraciÃ³n de perfil','Profil ayarlarÄ±'),(89,'','unblock','Unblock','Ø±ÙØ¹ Ø§Ù„Ø­Ø¸Ø±','deblokkeren','DÃ©bloquer','Entsperren','Ð¾Ñ‚ÐºÑ€Ñ‹Ñ‚ÑŒ','Desatascar','engeli kaldÄ±rmak'),(90,'','favourites','Favourites','Ø§Ù„Ù…ÙØ¶Ù„Ø©','favorieten','Favoris','Favoriten','Ð˜Ð·Ð±Ñ€Ð°Ð½Ð½Ñ‹Ðµ','Favoritos','Favoriler'),(91,'','message','Message','Ø±Ø³Ø§Ù„Ø©','Bericht','Message','Botschaft','Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Mensaje','Mesaj'),(92,'','u_blocked_zis_usr','You have blocked this user','Ù„Ù‚Ø¯ Ø­Ø¸Ø±Øª Ù‡Ø°Ø§ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Je hebt deze gebruiker geblokkeerd','Vous avez bloquÃ© cet utilisateur','Sie haben diesen Benutzer blockiert','Ð’Ñ‹ Ð·Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð»Ð¸ ÑÑ‚Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','Has bloqueado a este usuario','Bu kullanÄ±cÄ±yÄ± engellediniz'),(93,'','unblock2see_profile','Unblock to see their photos and videos.','ÙŠÙ…ÙƒÙ†Ùƒ Ø¥Ù„ØºØ§Ø¡ Ø§Ù„Ø­Ø¸Ø± Ù„Ù…Ø´Ø§Ù‡Ø¯Ø© Ø§Ù„ØµÙˆØ± ÙˆÙ…Ù‚Ø§Ø·Ø¹ Ø§Ù„ÙÙŠØ¯ÙŠÙˆ.','Deblokkeer de blokkering van hun fotos en videos.','DÃ©bloquer pour voir leurs photos et vidÃ©os','Entsperren, um ihre Fotos und Videos zu sehen.','Ð Ð°Ð·Ð±Ð»Ð¾ÐºÐ¸Ñ€ÑƒÐ¹Ñ‚Ðµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ ÑƒÐ²Ð¸Ð´ÐµÑ‚ÑŒ Ð¸Ñ… Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸Ð¸ Ð¸ Ð²Ð¸Ð´ÐµÐ¾.','Desbloquear para ver sus fotos y videos.','FotoÄŸraflarÄ±nÄ± ve videolarÄ±nÄ± gÃ¶rmek iÃ§in engellemeyi kaldÄ±r.'),(94,'','profile_is_private','This profile is private','Ù‡Ø°Ø§ Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ Ø®Ø§Øµ','Dit profiel is privÃ©','Ce profil est privÃ©','Dieses Profil ist privat','Ð­Ñ‚Ð¾Ñ‚ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ Ð·Ð°ÐºÑ€Ñ‹Ñ‚','Este perfil es privado','Bu profil gizli'),(95,'','follow2see_profile','Follow to see their photos and videos.','Ø§ØªØ¨Ø¹ Ù„Ø±Ø¤ÙŠØ© ØµÙˆØ±Ù‡Ù… & ampØ› Ø£Ø´Ø±Ø·Ø© Ø§Ù„ÙÙŠØ¯ÙŠÙˆ! Ù‡','Volgen om hun fotos &  videos! e','Suivez pour voir leurs photos & amp; vidÃ©os! e','Folgen Sie, um ihre Fotos zu sehen & amp; Videos! e','Ð¡Ð»ÐµÐ´ÑƒÐ¹Ñ‚Ðµ Ð·Ð° Ð¸Ñ… Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸ÑÐ¼Ð¸ Ð¸ amp; Ð²Ð¸Ð´ÐµÐ¾! Ðµ','Siga para ver sus fotos y amp; videos! e','FotoÄŸraflarÄ±nÄ± gÃ¶rmek iÃ§in izleyin & amp; videolar! e'),(96,'','profile_privacy','Profile privacy','Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø®ØµÙˆØµÙŠØ©','Profiel privacy','ConfidentialitÃ© du profil','Profil Datenschutz','ÐšÐ¾Ð½Ñ„Ð¸Ð´ÐµÐ½Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾ÑÑ‚ÑŒ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ','Privacidad del perfil','Profil gizliliÄŸi'),(97,'','logout','Logout','Ø§Ù„Ø®Ø±ÙˆØ¬','Uitloggen','Connectez - Out','Ausloggen','Ð’Ñ‹Ð¹Ñ‚Ð¸','Cerrar sesiÃ³n','Ã‡Ä±kÄ±ÅŸ Yap'),(98,'','admin_panel','Admin panel','Ù„ÙˆØ­Ø© Ø§Ù„Ø§Ø¯Ø§Ø±Ø©','Administratie Paneel','Panneau dadministration','AdministrationsmenÃ¼','ÐŸÐ°Ð½ÐµÐ»ÑŒ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°','Panel de administrador','Admin Paneli'),(99,'','report_user','Report this user','Ø§Ù„Ø¥Ø¨Ù„Ø§Øº Ø¹Ù† Ù‡Ø°Ø§ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Rapporteer deze gebruiker','Signaler cet utilisateur','Diesen Nutzer melden','Ð¡Ð¾Ð¾Ð±Ñ‰Ð¸Ñ‚ÑŒ Ð¾Ð± ÑÑ‚Ð¾Ð¼ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ðµ','Reportar a este usuario','Bu kullanÄ±cÄ±yÄ± rapor et'),(100,'','block_user','Block this user','Ù…Ù†Ø¹ Ù‡Ø°Ø§ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Blokkeer deze gebruiker','Bloquer cet utilisateur','Diesen Benutzer sperren','Ð—Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑÑ‚Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','Bloquee este usuario','Bu kullanÄ±cÄ±yÄ± engelle'),(101,'','unblock_user','Unblock this user','Ø¥Ù„ØºØ§Ø¡ Ø­Ø¸Ø± Ù‡Ø°Ø§ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Deblokkeer deze gebruiker','DÃ©bloquer cet utilisateur','Entsperren Sie diesen Benutzer','Ð Ð°Ð·Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑÑ‚Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','Desbloquear a este usuario','Bu kullanÄ±cÄ±nÄ±n engellemesini kaldÄ±r'),(102,'','confirm_block_user','Are you sure you want to block this user? They will not be able to see your profile, posts or story','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø¸Ø± Ù‡Ø°Ø§ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ØŸ Ù„Ù† ÙŠØªÙ…ÙƒÙ†ÙˆØ§ Ù…Ù† Ø±Ø¤ÙŠØ© Ù…Ù„ÙÙƒ Ø§Ù„Ø´Ø®ØµÙŠ Ø£Ùˆ Ù…Ø´Ø§Ø±ÙƒØ§ØªÙƒ Ø£Ùˆ Ù‚ØµØªÙƒ','Weet je zeker dat je deze gebruiker wilt blokkeren? Ze kunnen je profiel, berichten of verhaal niet zien','ÃŠtes vous sÃ»r de vouloir bloquer cet utilisateur? Ils ne pourront pas voir votre profil, vos publications ou votre histoire','Sind Sie sicher, dass Sie diesen Benutzer blockieren mÃ¶chten? Sie kÃ¶nnen Ihr Profil, Ihre BeitrÃ¤ge oder Ihre Geschichte nicht sehen','Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ Ð·Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑÑ‚Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ? ÐžÐ½Ð¸ Ð½Ðµ ÑÐ¼Ð¾Ð³ÑƒÑ‚ Ð²Ð¸Ð´ÐµÑ‚ÑŒ Ð²Ð°Ñˆ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ, ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ Ð¸Ð»Ð¸ Ð¸ÑÑ‚Ð¾Ñ€Ð¸ÑŽ','Â¿EstÃ¡s seguro de que quieres bloquear a este usuario? No podrÃ¡n ver tu perfil, publicaciones o historia','Bu kullanÄ±cÄ±yÄ± engellemek istediÄŸinizden emin misiniz? Profilinizi, yayÄ±nlarÄ±nÄ±zÄ± veya hikayenizi gÃ¶remezler.'),(103,'','user_blocked','This profile has been blocked, You can unblock them anytime from their profile.','ØªÙ… Ø­Ø¸Ø± Ù‡Ø°Ø§ Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ ØŒ ÙˆÙŠÙ…ÙƒÙ†Ùƒ Ø¥Ù„ØºØ§Ø¡ Ø­Ø¸Ø±Ù‡ ÙÙŠ Ø£ÙŠ ÙˆÙ‚Øª Ù…Ù† Ù…Ù„ÙÙ‡ Ø§Ù„Ø´Ø®ØµÙŠ.','Dit profiel is geblokkeerd. Je kunt ze op elk gewenst moment uit hun profiel deblokkeren.','Ce profil a Ã©tÃ© bloquÃ©. Vous pouvez les dÃ©bloquer Ã  tout moment depuis leur profil.','Dieses Profil wurde gesperrt. Sie kÃ¶nnen sie jederzeit in ihrem Profil entsperren.','Ð­Ñ‚Ð¾Ñ‚ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ Ð·Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½, Ð²Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ñ€Ð°Ð·Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¸Ñ… Ð² Ð»ÑŽÐ±Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ Ð¸Ð· ÑÐ²Ð¾ÐµÐ³Ð¾ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ.','Este perfil ha sido bloqueado, puedes desbloquearlo en cualquier momento desde su perfil.','Bu profil engellendi, Profillerinden istedikleri zaman engelini kaldÄ±rabilirsiniz.'),(104,'','user_unblocked','This profile has been unblocked, You can block them anytime from their profile.','ØªÙ… Ø¥Ù„ØºØ§Ø¡ Ø­Ø¸Ø± Ù‡Ø°Ø§ Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ ØŒ ÙˆÙŠÙ…ÙƒÙ†Ùƒ Ø­Ø¸Ø±Ù‡ ÙÙŠ Ø£ÙŠ ÙˆÙ‚Øª Ù…Ù† Ù…Ù„ÙÙ‡ Ø§Ù„Ø´Ø®ØµÙŠ.','Dit profiel is gedeblokkeerd, je kunt ze op elk moment uit hun profiel blokkeren.','Ce profil a Ã©tÃ© dÃ©bloquÃ©, vous pouvez les bloquer Ã  tout moment depuis leur profil.','Dieses Profil wurde entsperrt. Sie kÃ¶nnen sie jederzeit von ihrem Profil aus blockieren.','Ð­Ñ‚Ð¾Ñ‚ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ Ñ€Ð°Ð·Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½, Ð²Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð·Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¸Ñ… Ð² Ð»ÑŽÐ±Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ Ð¸Ð· ÑÐ²Ð¾ÐµÐ³Ð¾ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ.','Este perfil ha sido desbloqueado, puedes bloquearlos en cualquier momento desde su perfil.','Bu profil engellemeyi kaldÄ±rdÄ±, dilediÄŸiniz zaman profillerinden engelleyebilirsiniz.'),(105,'','confirm_unblock_user','Are you sure you want to unblock this user? They will now be able to follow you or see your posts','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ù…Ù† Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø¥Ù„ØºØ§Ø¡ Ø­Ø¸Ø± Ù‡Ø°Ø§ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ØŸ Ø³ÙŠØªÙ…ÙƒÙ†ÙˆÙ† Ø§Ù„Ø¢Ù† Ù…Ù† Ù…ØªØ§Ø¨Ø¹ØªÙƒ Ø£Ùˆ Ù…Ø´Ø§Ù‡Ø¯Ø© Ù…Ø´Ø§Ø±ÙƒØ§ØªÙƒ','Weet je zeker dat je deze gebruiker wilt deblokkeren? Ze kunnen je nu volgen of je berichten bekijken','ÃŠtes-vous sÃ»r de vouloir dÃ©bloquer cet utilisateur? Ils seront dÃ©sormais en mesure de vous suivre ou de voir vos messages','MÃ¶chten Sie diesen Benutzer wirklich entsperren? Sie kÃ¶nnen Ihnen jetzt folgen oder Ihre Posts sehen','Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ Ñ€Ð°Ð·Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑÑ‚Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ? Ð¢ÐµÐ¿ÐµÑ€ÑŒ Ð¾Ð½Ð¸ ÑÐ¼Ð¾Ð³ÑƒÑ‚ ÑÐ»ÐµÐ´Ð¸Ñ‚ÑŒ Ð·Ð° Ð²Ð°Ð¼Ð¸ Ð¸Ð»Ð¸ Ð²Ð¸Ð´ÐµÑ‚ÑŒ Ð²Ð°ÑˆÐ¸ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ','Â¿Seguro que quieres desbloquear a este usuario? Ahora podrÃ¡n seguirte o ver tus publicaciones','Bu kullanÄ±cÄ±nÄ±n engellemesini kaldÄ±rmak istediÄŸinizden emin misiniz? ArtÄ±k sizi takip edebilir veya gÃ¶nderilerinizi gÃ¶rebilirler.'),(106,'','report_t1','Account hacking','Ø§Ø®ØªØ±Ø§Ù‚ Ø§Ù„Ø­Ø³Ø§Ø¨','Account hacken','Piratage de compte','Konto hacken','Ð’Ð·Ð»Ð¾Ð¼ ÑƒÑ‡ÐµÑ‚Ð½Ð¾Ð¹ Ð·Ð°Ð¿Ð¸ÑÐ¸','PiraterÃ­a de cuenta','Hesap kesmek'),(107,'','report_t2','Impersonation Accounts','Ø­Ø³Ø§Ø¨Ø§Øª Ø§Ù†ØªØ­Ø§Ù„ Ø§Ù„Ù‡ÙˆÙŠØ©','Imitatie-accounts','Comptes dusurpation didentitÃ©','IdentitÃ¤tswechselkonten','ÐÐºÐºÐ°ÑƒÐ½Ñ‚Ñ‹ Ð¾Ð»Ð¸Ñ†ÐµÑ‚Ð²Ð¾Ñ€ÐµÐ½Ð¸Ñ','Cuentas de suplantaciÃ³n','KimliÄŸe bÃ¼rÃ¼nme hesaplarÄ±'),(108,'','report_t3','Violent threats','ØªÙ‡Ø¯ÙŠØ¯Ø§Øª Ø¹Ù†ÙŠÙØ©','Gewelddadige bedreigingen','Menaces violentes','GewalttÃ¤tige Bedrohungen','ÐÐ°ÑÐ¸Ð»ÑŒÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ðµ ÑƒÐ³Ñ€Ð¾Ð·Ñ‹','Amenazas violentas','Åžiddetli tehditler'),(109,'','report_t4','Sexual content','Ù…Ø­ØªÙˆÙ‰ Ø¬Ù†Ø³ÙŠ','Seksuele inhoud','Contenu sexuel','Sexueller Inhalt','Ð¡ÐµÐºÑÑƒÐ°Ð»ÑŒÐ½Ñ‹Ð¹ ÐºÐ¾Ð½Ñ‚ÐµÐ½Ñ‚','Contenido sexual','Cinsel iÃ§erik'),(110,'','report_t5','Children who have not reached the required age','Ø§Ù„Ø£Ø·ÙØ§Ù„ Ø§Ù„Ø°ÙŠÙ† Ù„Ù… ÙŠØ¨Ù„ØºÙˆØ§ Ø§Ù„Ø³Ù† Ø§Ù„Ù…Ø·Ù„ÙˆØ¨Ø©','Kinderen die de vereiste leeftijd niet hebben bereikt','Enfants qui nont pas atteint lÃ¢ge requis','Kinder, die das erforderliche Alter nicht erreicht haben','Ð”ÐµÑ‚Ð¸, Ð½Ðµ Ð´Ð¾ÑÑ‚Ð¸Ð³ÑˆÐ¸Ðµ Ñ‚Ñ€ÐµÐ±ÑƒÐµÐ¼Ð¾Ð³Ð¾ Ð²Ð¾Ð·Ñ€Ð°ÑÑ‚Ð°','NiÃ±os que no han alcanzado la edad requerida','Gerekli yaÅŸta ulaÅŸmamÄ±ÅŸ Ã§ocuklar'),(111,'','report_t6','Accounts expressing hatred','Ø­Ø³Ø§Ø¨Ø§Øª ØªØ¹Ø¨Ø± Ø¹Ù† Ø§Ù„ÙƒØ±Ø§Ù‡ÙŠØ©','Accounts die haat uitdrukt','Comptes exprimant la haine','Konten zum Ausdruck bringen Hass','Ð¡Ñ‡ÐµÑ‚Ð°, Ð²Ñ‹Ñ€Ð°Ð¶Ð°ÑŽÑ‰Ð¸Ðµ Ð½ÐµÐ½Ð°Ð²Ð¸ÑÑ‚ÑŒ','Cuentas que expresan odio','Nefreti ifade eden hesaplar'),(112,'','report_t7','Spam or Advertizing','Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ù…Ø²Ø¹Ø¬ Ø£Ùˆ Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†','Spam of adverteren','Spam ou publicitÃ©','Spam oder Werbung','Ð¡Ð¿Ð°Ð¼ Ð¸Ð»Ð¸ Ñ€ÐµÐºÐ»Ð°Ð¼Ð°','Spam o publicidad','Spam veya ReklamcÄ±lÄ±k'),(113,'','report_t8','Copyrighted material','Ù…ÙˆØ§Ø¯ Ù…Ø­ÙÙˆØ¸Ø© Ø§Ù„Ø­Ù‚ÙˆÙ‚','Auteursrechtelijk beschermd materiaal','MatÃ©riel protÃ©gÃ© par le droit dauteur','Urheberrechtlich geschÃ¼tztes Material','Ð—Ð°Ñ‰Ð¸Ñ‰ÐµÐ½Ð½Ñ‹Ð¹ Ð°Ð²Ñ‚Ð¾Ñ€ÑÐºÐ¸Ð¼Ð¸ Ð¿Ñ€Ð°Ð²Ð°Ð¼Ð¸','Material con copyright','Telif hakkÄ±yla korunan materyal'),(114,'','no_posted_yet','There are no posts yet.','Ù„Ø§ ØªÙˆØ¬Ø¯ Ù…Ø´Ø§Ø±ÙƒØ§Øª Ø­ØªÙ‰ Ø§Ù„Ø¢Ù†.','Er zijn nog geen berichten.','Il ny a pas encore de publications.','Es gibt noch keine BeitrÃ¤ge.','ÐÐµÑ‚ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹.','No hay publicaciones todavÃ­a','HenÃ¼z hiÃ§ ileti yok.'),(115,'','home_page','Home page','Ø§Ù„ØµÙØ­Ø© Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠØ©','Startpagina','Page daccueil','Startseite','Ð“Ð»Ð°Ð²Ð½Ð°Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð°','PÃ¡gina de inicio','Ana sayfa'),(116,'','explore_people','Explore people','Ø§Ø³ØªÙƒØ´Ø§Ù Ø§Ù„Ù†Ø§Ø³','Verken mensen','Explorer les gens','Erkunden Sie Menschen','Ð˜ÑÑÐ»ÐµÐ´ÑƒÐ¹Ñ‚Ðµ Ð»ÑŽÐ´ÐµÐ¹','Explora personas','Ä°nsanlarÄ± keÅŸfedin'),(117,'','explore_tags','Explore tags','Ø§Ø³ØªÙƒØ´Ø§Ù Ø§Ù„Ø¹Ù„Ø§Ù…Ø§Øª','Verken tags','Explorer les tags','Tags durchsuchen','Ð˜ÑÑÐ»ÐµÐ´ÑƒÐ¹Ñ‚Ðµ Ñ‚ÐµÐ³Ð¸','Explore las etiquetas','Etiketleri keÅŸfedin'),(118,'','general','General','Ø¬Ù†Ø±Ø§Ù„ Ù„ÙˆØ§Ø¡','Algemeen','GÃ©nÃ©ral','Allgemeines','Ð“ÐµÐ½ÐµÑ€Ð°Ð»ÑŒÐ½Ð°Ñ','General','Genel'),(119,'','privacy','Privacy','Ø§Ù„Ø¥Ø¬Ù…Ø§Ù„ÙŠØ©','Privacy','IntimitÃ©','PrivatsphÃ¤re','ÐšÐ¾Ð½Ñ„Ð¸Ð´ÐµÐ½Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾ÑÑ‚ÑŒ','Intimidad','Gizlilik'),(120,'','blocked_users','Blocked users','Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ù…Ø­Ø¬ÙˆØ¨ÙŠÙ†','Geblokkeerde gebruikers','Utilisateurs bloquÃ©s','Blockierte Benutzer','Ð—Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸','Usuarios bloqueados','EngellenmiÅŸ kullanÄ±cÄ±lar'),(121,'','delete_account','Delete account','Ø­Ø°Ù Ø§Ù„Ø­Ø³Ø§Ø¨','Account verwijderen','Supprimer le compte','Konto lÃ¶schen','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚','Borrar cuenta','HesabÄ± sil'),(122,'','change_avatar','Change Profile Avatar','ØªØºÙŠÙŠØ± Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ Ø§Ù„ØµÙˆØ±Ø© Ø§Ù„Ø±Ù…Ø²ÙŠØ©','Profielprofiel wijzigen','Changer le profil Avatar','Profil-Avatar Ã¤ndern','Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ ÐÐ²Ð°Ñ‚Ð°Ñ€','Cambiar perfil Avatar','Profili deÄŸiÅŸtir Avatar'),(123,'','fname','First name','Ø§Ù„Ø§Ø³Ù… Ø§Ù„Ø§ÙˆÙ„','Voornaam','PrÃ©nom','Vorname','Ð˜Ð¼Ñ','Nombre de pila','Ä°sim'),(124,'','lname','Last name','Ø§Ù„ÙƒÙ†ÙŠØ©','Achternaam','Nom de famille','Familienname, Nachname','Ð¤Ð°Ð¼Ð¸Ð»Ð¸Ñ','Apellido','SoyadÄ±'),(125,'','email','E-mail','Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','E-mail','Email','Email','Ð­Ð». Ð¿Ð¾Ñ‡Ñ‚Ð°','Email','E-mail'),(126,'','gender','Gender','Ø¬Ù†Ø³','Geslacht','Le genre','Geschlecht','ÐŸÐ¾Ð»','GÃ©nero','Cinsiyet'),(127,'','country','Country','Ø¨Ù„Ø¯','land','Pays','Land','Ð¡Ñ‚Ñ€Ð°Ð½Ð°','PaÃ­s','Ã¼lke'),(128,'','user_not_exist','User does not exist!','Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… ØºÙŠØ± Ù…ÙˆØ¬ÙˆØ¯!','Gebruiker bestaat niet!','Lutilisateur nexiste pas!','Benutzer existiert nicht!','ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ð½Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚!','Â¡El usuario no existe!','KullanÄ±cÄ± yok!'),(129,'','please_check_details','Please check your details!','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ù…Ø±Ø§Ø¬Ø¹Ø© Ø§Ù„ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ!','Check alsjeblieft je gegevens!','Sil vous plaÃ®t vÃ©rifier vos informations!','Bitte Ã¼berprÃ¼fe deine Details!','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ ÑÐ²Ð¾Ð¸ Ð´Ð°Ð½Ð½Ñ‹Ðµ!','Â¡Por favor comprueba tus detalles!','LÃ¼tfen detaylarÄ±nÄ±zÄ± kontrol edin!'),(130,'','ur_fname','Your first name','Ø§Ø³Ù…Ùƒ Ø§Ù„Ø£ÙˆÙ„','Jouw voornaam','Ton prÃ©nom','Ihr Vorname','Ð¢Ð²Ð¾Ðµ Ð¸Ð¼Ñ','Su nombre','Senin adÄ±n'),(131,'','ur_lname','Your last name','Ø§Ø³Ù…Ùƒ Ø§Ù„Ø§Ø®ÙŠØ±','Je achternaam','Votre nom de famille','Ihr Nachname','Ð’Ð°ÑˆÐ° Ñ„Ð°Ð¼Ð¸Ð»Ð¸Ñ','Tu apellido','Soy adÄ±nÄ±z'),(132,'','ur_email','Your email address','Ø¹Ù†ÙˆØ§Ù† Ø¨Ø±ÙŠØ¯Ùƒ  Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','jouw e-mailadres','Votre adresse email','deine Emailadresse','Ð’Ð°Ñˆ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹','Tu correo electrÃ³nico','e'),(133,'','change_passwd','Change my password','ØªØºÙŠÙŠØ± ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ø®Ø§ØµØ© Ø¨ÙŠ','Verander mijn wachtwoord','Changer mon mot de passe','Ã„ndere mein Passwort','Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Cambiar mi contraseÃ±a','Åžifremi DeÄŸiÅŸtir'),(134,'','old_passwd','Old password','ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ù‚Ø¯ÙŠÙ…Ø©','Oud Wachtwoord','Ancien mot de passe','Altes Passwort','Ð¡Ñ‚Ð°Ñ€Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','ContraseÃ±a anterior','Eski ÅŸifre'),(135,'','ur_curr_passwd','Your current password','ÙƒÙ„Ù…Ø© Ø§Ù„Ø³Ø± Ø§Ù„Ø­Ø§Ù„ÙŠØ© Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ','je huidige wachtwoord','Votre mot de passe actuel','dein aktuelles Passwort','Ð²Ð°Ñˆ Ñ‚ÐµÐºÑƒÑ‰Ð¸Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','tu contraseÃ±a actual','mevcut ÅŸifreniz'),(136,'','new_passwd','New password','ÙƒÙ„Ù…Ø© Ø§Ù„Ø³Ø± Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø©','Nieuw paswoord','Nouveau mot de passe','Neues Kennwort','ÐÐ¾Ð²Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Nueva contraseÃ±a','Yeni Åžifre'),(137,'','ur_new_passwd','Your new password','ÙƒÙ„Ù…Ø© Ø³Ø±Ùƒ Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø©','uw nieuwe wachtwoord','Votre nouveau mot de passe','Dein neues Passwort','Ð²Ð°Ñˆ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Tu nueva contraseÃ±a','Yeni parolanÄ±z'),(138,'','conf_new_passwd','Confirm new password','ØªØ£ÙƒÙŠØ¯ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø©','Bevestig nieuw wachtwoord','Confirmer le nouveau mot de passe','BestÃ¤tige neues Passwort','ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚Ðµ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Confirmar nueva contraseÃ±a','Yeni ÅŸifreyi onayla'),(139,'','conf_ur_new_passwd','Confirm your new password','Ù‚Ù… Ø¨ØªØ£ÙƒÙŠØ¯ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø©','Bevestig uw nieuwe wachtwoord','Confirmez votre nouveau mot de passe','BestÃ¤tigen Sie Ihr neues Passwort','ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚Ðµ ÑÐ²Ð¾Ð¹ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Confirma tu nueva contraseÃ±a','Yeni ÅŸifrenizi onaylayÄ±n'),(140,'','save_changes','Save changes','Ø­ÙØ¸ Ø§Ù„ØªØºÙŠÙŠØ±Ø§Øª','Wijzigingen opslaan','Sauvegarder les modifications','Ã„nderungen speichern','Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ','Guardar cambios','DeÄŸiÅŸiklikleri Kaydet'),(141,'','acc_privacy_settings','Account privacy settings','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø®ØµÙˆØµÙŠØ© Ø§Ù„Ø­Ø³Ø§Ø¨','Account privacy-instellingen','ParamÃ¨tres de confidentialitÃ© du compte','Konto Datenschutzeinstellungen','ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ ÐºÐ¾Ð½Ñ„Ð¸Ð´ÐµÐ½Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾ÑÑ‚Ð¸ ÑƒÑ‡ÐµÑ‚Ð½Ð¾Ð¹ Ð·Ð°Ð¿Ð¸ÑÐ¸','ConfiguraciÃ³n de privacidad de la cuenta','Hesap gizliliÄŸi ayarlarÄ±'),(142,'','p_privacy','Who can view your profile','Ù…Ù† ÙŠÙ…ÙƒÙ†Ù‡ Ù…Ø´Ø§Ù‡Ø¯Ø© Ù…Ù„ÙÙƒ Ø§Ù„Ø´Ø®ØµÙŠ','Wie kan jouw profiel bekijken','Qui peut voir votre profil','Wer kann dein Profil sehen?','ÐšÑ‚Ð¾ Ð¼Ð¾Ð¶ÐµÑ‚ Ð¿Ñ€Ð¾ÑÐ¼Ð°Ñ‚Ñ€Ð¸Ð²Ð°Ñ‚ÑŒ Ð²Ð°Ñˆ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ','QuiÃ©n puede ver tu perfil','Kimler profilinizi gÃ¶rÃ¼ntÃ¼leyebilir?'),(143,'','c_privacy','Who can direct message you','Ù…Ù† ÙŠØ³ØªØ·ÙŠØ¹ ØªÙˆØ¬ÙŠÙ‡ Ø±Ø³Ø§Ù„Ø© Ù„Ùƒ','Wie kan je een bericht sturen?','Qui peut vous adresser un message','Wer kann dir eine Nachricht schicken?','ÐšÑ‚Ð¾ Ð¼Ð¾Ð¶ÐµÑ‚ Ð½Ð°Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ Ð²Ð°Ð¼ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','QuiÃ©n puede enviarte un mensaje directo','MesajÄ± kim yÃ¶nlendirebilir?'),(144,'','everyone','Everyone','ÙƒÙ„ ÙˆØ§Ø­Ø¯','Iedereen','Toutes les personnes','Jeder','Ð’ÑÐµ','Todo el mundo','Herkes'),(145,'','nobody','Nobody','Ù„Ø§ Ø£Ø­Ø¯','Niemand','Personne','Niemand','ÐÐ¸ÐºÑ‚Ð¾','Nadie','Kimse'),(146,'','people_i_follow','People I follow','Ø§Ù„Ù†Ø§Ø³ Ø£ØªØ§Ø¨Ø¹','Mensen die ik volg','Les gens que je suis','Leute, denen ich folge','Ð›ÑŽÐ´Ð¸, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ñ… Ñ ÑÐ»ÐµÐ´ÑƒÑŽ','Gente que sigo','Takip ettiÄŸim kiÅŸiler'),(147,'','notif_settings','Notification settings','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø¥Ø´Ø¹Ø§Ø±','Notificatie instellingen','ParamÃ¨tres de notification','Benachrichtigungseinstellungen','ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ð¹','ConfiguraciÃ³n de las notificaciones','Bildirim ayarlarÄ±'),(148,'','receive_notif_when','Receive notifications when some one','ØªÙ„Ù‚ÙŠ Ø§Ù„Ø¥Ø®Ø·Ø§Ø±Ø§Øª Ø¹Ù†Ø¯Ù…Ø§ ÙˆØ§Ø­Ø¯','Ontvang meldingen wanneer iemand','Recevoir des notifications quand quelquun','Erhalten Sie Benachrichtigungen wenn jemand','ÐŸÐ¾Ð»ÑƒÑ‡Ð°Ñ‚ÑŒ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ñ, ÐºÐ¾Ð³Ð´Ð° ÐºÑ‚Ð¾-Ñ‚Ð¾','Recibir notificaciones cuando alguien','BazÄ±larÄ±nda bildirim al'),(149,'','liked_my_post','Liked my post','Ø§Ø¹Ø¬Ø¨ØªÙ†ÙŠ','Vond mijn bericht leuk','Jai aimÃ© mon message','Mir hat mein Post gefallen','ÐŸÐ¾Ð½Ñ€Ð°Ð²Ð¸Ð»ÑÑ Ð¼Ð¾Ð¹ Ð¿Ð¾ÑÑ‚','Me gustÃ³ mi publicaciÃ³n','GÃ¶nderiyi beÄŸendi'),(150,'','commented_my_post','Commented on my post','ÙˆØ¹Ù„Ù‚ Ø¹Ù„Ù‰ Ù…Ù†ØµØ¨ÙŠ','Gereageerd op mijn bericht','Jai commentÃ© mon message','Hat meinen Beitrag kommentiert','ÐŸÑ€Ð¾ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ð» Ð¼Ð¾Ð¹ Ð¿Ð¾ÑÑ‚','ComentÃ³ en mi publicaciÃ³n','GÃ¶nderi hakkÄ±nda yorum yaptÄ±'),(151,'','followed_me','Followed me','ØªØ§Ø¨Ø¹Ù†ÙŠ','Volgde mij','Ma suivi','Folgte mir','Ð¡Ð»ÐµÐ´Ð¾Ð²Ð°Ð» Ð·Ð° Ð¼Ð½Ð¾Ð¹','Sigueme','Beni takip etti'),(152,'','mentioned_me','Mentioned me','Ø°ÙƒØ±Ù†ÙŠ','Noemde me','Ma mentionnÃ©','ErwÃ¤hnte mich','Ð£Ð¿Ð¾Ð¼Ð¸Ð½Ð°Ð» Ð¼ÐµÐ½Ñ','Me mencionÃ³','Bana bahsetti'),(153,'','followed_u','is now following you','Ù‡Ùˆ Ø§Ù„Ø¢Ù† ÙŠØªØ¨Ø¹Ùƒ','volgt je nu','est maintenant en train de te suivre','folgt dir jetzt','Ñ‚ÐµÐ¿ÐµÑ€ÑŒ ÑÐ»ÐµÐ´ÑƒÐµÑ‚ Ð²Ð°Ð¼','ahora te estÃ¡ siguiendo','seni takip ediyor'),(154,'','liked_ur_post','liked your post','Ø£Ø¹Ø¬Ø¨Ù†ÙŠ Ù…Ø´Ø§Ø±ÙƒØªÙƒ','vond je bericht leuk','aimÃ© votre message','hat deinen Beitrag gefallen','Ð¿Ð¾Ð½Ñ€Ð°Ð²Ð¸Ð»Ð¾ÑÑŒ Ð²Ð°ÑˆÐµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','me gustÃ³ tu publicaciÃ³n','yayÄ±nÄ±nÄ±zÄ± beÄŸendi'),(155,'','commented_ur_post','commented on your post','ÙƒÙ„Ù Ø¹Ù„Ù‰ Ø±Ø³Ø§Ù„ØªÙƒ','verbonden op uw post','commneted sur votre message','kommentared auf Ihrem Post','Ð—Ð°Ð¿Ð¸ÑÐ°Ð½','commneted en su publicaciÃ³n','yayÄ±nÄ±nÄ±zda toplandÄ±'),(156,'','mentioned_u_in_comment','mentioned you in a comment','Ø°ÙƒØ±Ùƒ ÙÙŠ ØªØ¹Ù„ÙŠÙ‚','vermeldde U in een opmerking','vous a mentionnÃ© dans un commentaire','dich in einem Kommentar erwÃ¤hnt','ÑƒÐ¿Ð¾Ð¼ÑÐ½ÑƒÐ» Ð²Ð°Ñ Ð² ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸','Te mencionÃ© en un comentario','Bir yorumda sizden bahsetti'),(157,'','mentioned_u_in_post','mentioned you in a post','Ø°ÙƒØ±Øª Ù„Ùƒ ÙÙŠ ÙˆØ¸ÙŠÙØ©','heeft je in een bericht genoemd','vous a mentionnÃ© dans un message','Sie in einem Beitrag erwÃ¤hnt','ÑƒÐ¿Ð¾Ð¼ÑÐ½ÑƒÐ» Ð²Ð°Ñ Ð² ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¸','te mencionÃ³ en una publicaciÃ³n','senden bir mesajda bahsetti'),(158,'','manage_blocked_users','Manage users that you have blocked','Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ø§Ù„Ø°ÙŠÙ† Ù‚Ù…Øª Ø¨Ø­Ø¸Ø±Ù‡Ù…','Beheer gebruikers die u hebt geblokkeerd','GÃ©rer les utilisateurs que vous avez bloquÃ©s','Verwalten Sie Benutzer, die Sie blockiert haben','Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð·Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¼Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼Ð¸','Administrar usuarios que has bloqueado','EngellediÄŸiniz kullanÄ±cÄ±larÄ± yÃ¶netin'),(159,'','no_blocked_users','No blocked users found','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ù…Ø­Ø¸ÙˆØ±ÙŠÙ†','Geen geblokkeerde gebruikers gevonden','Aucun utilisateur bloquÃ© trouvÃ©','Keine blockierten Benutzer gefunden','ÐÐµ Ð¾Ð±Ð½Ð°Ñ€ÑƒÐ¶ÐµÐ½Ñ‹ Ð·Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸','No se encontraron usuarios bloqueados','Engellenen kullanÄ±cÄ± bulunamadÄ±'),(160,'','confirm_del_account','Are you sure you want to delete your account? All content will be permanently removed!','Ù‡Ù„ Ø§Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø§Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ø­Ø³Ø§Ø¨ÙƒØŸ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ù…Ø­ØªÙˆÙŠØ§Øª Ø¨Ù…Ø§ ÙÙŠ Ø°Ù„Ùƒ Ø§Ù„Ù…Ù†Ø´ÙˆØ±Ø§Øª Ø§Ù„Ù…Ù†Ø´ÙˆØ±Ø© ØŒ Ø³ÙŠØªÙ… Ø¥Ø²Ø§Ù„ØªÙ‡Ø§ Ù†Ù‡Ø§Ø¦ÙŠØ§!','Weet je zeker dat je je account wilt verwijderen? Alle inhoud inclusief gepubliceerde berichten, zal permanent worden verwijderd!','ÃŠtes-vous sÃ»r de vouloir supprimer votre compte? Tout le contenu, y compris les articles publiÃ©s, sera dÃ©finitivement supprimÃ©!','MÃ¶chtest du dein Konto wirklich lÃ¶schen? Alle Inhalte einschlieÃŸlich verÃ¶ffentlichter Posts werden dauerhaft entfernt!','Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÐ²Ð¾ÑŽ ÑƒÑ‡ÐµÑ‚Ð½ÑƒÑŽ Ð·Ð°Ð¿Ð¸ÑÑŒ? Ð’ÐµÑÑŒ ÐºÐ¾Ð½Ñ‚ÐµÐ½Ñ‚, Ð²ÐºÐ»ÑŽÑ‡Ð°Ñ Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð½Ð½Ñ‹Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ, Ð±ÑƒÐ´ÐµÑ‚ ÑƒÐ´Ð°Ð»ÐµÐ½!','Â¿Seguro que quieres eliminar tu cuenta? Â¡Todo el contenido, incluidas las publicaciones publicadas, se eliminarÃ¡ de forma permanente!','HesabÄ±nÄ±zÄ± silmek istediÄŸinizden emin misiniz? YayÄ±nlanmÄ±ÅŸ gÃ¶nderiler dahil tÃ¼m iÃ§erikler kalÄ±cÄ± olarak kaldÄ±rÄ±lacak!'),(161,'','enter_ur_passwd','Enter your password','Ø§Ø¯Ø®Ù„ Ø±Ù‚Ù…Ùƒ Ø§Ù„Ø³Ø±ÙŠ','Voer uw wachtwoord in','Tapez votre mot de passe','Gib dein Passwort ein','Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð²Ð°Ñˆ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Ingresa tu contraseÃ±a','Åžifrenizi girin'),(162,'','continue','Continue','Ø§Ø³ØªÙ…Ø±','Doorgaan met','Continuer','Fortsetzen','ÐŸÑ€Ð¾Ð´Ð¾Ð»Ð¶Ð°Ñ‚ÑŒ','Continuar','Devam et'),(163,'','ur_account_deleted','Your account successfully deleted. Please wait..','ØªÙ… Ø­Ø°Ù Ø­Ø³Ø§Ø¨Ùƒ Ø¨Ù†Ø¬Ø§Ø­. Ø£Ø±Ø¬Ùˆ Ø§Ù„Ø¥Ù†ØªØ¸Ø§Ø±..','Uw account is succesvol verwijderd. Even geduld aub..','Votre compte a bien Ã©tÃ© supprimÃ©. Sil vous plaÃ®t, attendez..','Ihr Konto wurde erfolgreich gelÃ¶scht. Warten Sie mal..','Ð’Ð°ÑˆÐ° ÑƒÑ‡ÐµÑ‚Ð½Ð°Ñ Ð·Ð°Ð¿Ð¸ÑÑŒ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑƒÐ´Ð°Ð»ÐµÐ½Ð°. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð´Ð¾Ð¶Ð´Ð¸Ñ‚Ðµ..','Su cuenta fue eliminada exitosamente. Por favor espera..','HesabÄ±nÄ±z baÅŸarÄ±yla silindi. LÃ¼tfen bekle..'),(164,'','ur_avatar_changed','Your profile avatar has been successfully changed','ØªÙ… ØªØºÙŠÙŠØ± Ø§Ù„ØµÙˆØ±Ø© Ø§Ù„Ø´Ø®ØµÙŠØ© Ù„Ù…Ù„ÙÙƒ Ø§Ù„Ø´Ø®ØµÙŠ Ø¨Ù†Ø¬Ø§Ø­','Je profielavatar is succesvol gewijzigd','Votre avatar de profil a Ã©tÃ© modifiÃ© avec succÃ¨s','Dein Profilavatar wurde erfolgreich geÃ¤ndert','Ð’Ð°Ñˆ Ð°Ð²Ð°Ñ‚Ð°Ñ€ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½','Tu avatar de perfil ha sido cambiado con Ã©xito','Profil avatarÄ±nÄ±z baÅŸarÄ±yla deÄŸiÅŸtirildi'),(165,'','terms_of_use','Terms of use','ØªØ¹Ù„ÙŠÙ…Ø§Øª Ø§Ù„Ø§Ø³ØªØ®Ø¯Ø§Ù…','Gebruiksvoorwaarden','Conditions dutilisation','Nutzungsbedingungen','Ð£ÑÐ»Ð¾Ð²Ð¸Ñ ÑÐºÑÐ¿Ð»ÑƒÐ°Ñ‚Ð°Ñ†Ð¸Ð¸','TÃ©rminos de Uso','KullanÄ±m ÅžartlarÄ±'),(166,'','login_to_lc_post','To like or comment.','Ø£Ø­Ø¨ Ø£Ùˆ ØªØ¹Ù„ÙŠÙ‚.','Leuk vinden of commentaar geven.','Aimer ou commenter','Zu mÃ¶gen oder zu kommentieren.','Ð›ÑŽÐ±Ð¸Ñ‚ÑŒ Ð¸Ð»Ð¸ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ.','Me gusta o comenta','BeÄŸenmek veya yorum yapmak.'),(167,'','page_not_found','Sorry, this page is not available.','Ø¹Ø°Ø±Ø§ØŒ Ù‡Ø°Ù‡ Ø§Ù„ØµÙØ­Ø© ØºÙŠØ± Ù…ØªÙˆÙØ±Ø©.','Sorry, deze pagina is niet beschikbaar.','DÃ©solÃ©, cette page nest pas disponible.','Leider ist diese Seite nicht verfÃ¼gbar.','Ð˜Ð·Ð²Ð¸Ð½Ð¸Ñ‚Ðµ, ÑÑ‚Ð° ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ð½ÐµÐ´Ð¾ÑÑ‚ÑƒÐ¿Ð½Ð°.','Lo sentimos, esta pÃ¡gina no estÃ¡ disponible.','Maalesef, bu sayfa mevcut deÄŸil.'),(168,'','page_link_is_invalid','You may have used an invalid link or the page was deleted','Ø±Ø¨Ù…Ø§ ØªÙƒÙˆÙ† Ù‚Ø¯ Ø§Ø³ØªØ®Ø¯Ù…Øª Ø±Ø§Ø¨Ø·Ù‹Ø§ ØºÙŠØ± ØµØ§Ù„Ø­ Ø£Ùˆ ØªÙ… Ø­Ø°Ù Ø§Ù„ØµÙØ­Ø©','Mogelijk hebt u een ongeldige link gebruikt of is de pagina verwijderd','Vous avez peut-Ãªtre utilisÃ© un lien incorrect ou la page a Ã©tÃ© supprimÃ©e','MÃ¶glicherweise haben Sie einen ungÃ¼ltigen Link verwendet oder die Seite wurde gelÃ¶scht','Ð’Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾, Ð²Ñ‹ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ð»Ð¸ Ð½ÐµÐ²ÐµÑ€Ð½ÑƒÑŽ ÑÑÑ‹Ð»ÐºÑƒ Ð¸Ð»Ð¸ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ð±Ñ‹Ð»Ð° ÑƒÐ´Ð°Ð»ÐµÐ½Ð°','Es posible que haya utilizado un enlace no vÃ¡lido o que la pÃ¡gina haya sido eliminada','GeÃ§ersiz bir baÄŸlantÄ± kullanmÄ±ÅŸ olabilirsiniz veya sayfa silinmiÅŸ'),(169,'','story_system_limit','You reached the daily limit for your story. Maximum limit is 20.','Ù„Ù‚Ø¯ ÙˆØµÙ„Øª Ø¥Ù„Ù‰ Ø§Ù„Ø­Ø¯ Ø§Ù„ÙŠÙˆÙ…ÙŠ Ù„Ù„ØªØ­Ø¯ÙŠØ« Ù„Ù‚ØµØªÙƒ. Ø§Ù„Ø­Ø¯ Ø§Ù„Ø£Ù‚ØµÙ‰ Ù‡Ùˆ 20','U heeft de dagelijkse updatelimiet voor uw verhaal bereikt. maximale limiet is 20','Vous avez atteint la limite de mise Ã  jour quotidienne pour votre histoire. la limite maximale est de 20','Du hast das tÃ¤gliche Aktualisierungslimit fÃ¼r deine Geschichte erreicht. HÃ¶chstgrenze ist 20','Ð’Ñ‹ Ð´Ð¾ÑÑ‚Ð¸Ð³Ð»Ð¸ ÐµÐ¶ÐµÐ´Ð½ÐµÐ²Ð½Ð¾Ð³Ð¾ Ð¿Ñ€ÐµÐ´ÐµÐ»Ð° Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð´Ð»Ñ ÑÐ²Ð¾ÐµÐ¹ Ð¸ÑÑ‚Ð¾Ñ€Ð¸Ð¸. Ð¼Ð°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð¿Ñ€ÐµÐ´ÐµÐ» Ñ€Ð°Ð²ÐµÐ½ 20','Has alcanzado el lÃ­mite de actualizaciÃ³n diaria de tu historia. el lÃ­mite mÃ¡ximo es 20','Hikayeniz iÃ§in gÃ¼nlÃ¼k gÃ¼ncelleme limitine ulaÅŸtÄ±nÄ±z. maksimum sÄ±nÄ±r 20'),(170,'','delete_story','Delete story','Ø§Ø­Ø°Ù Ø§Ù„Ù‚ØµØ©','Verhaal verwijderen','Supprimer lhistoire','Geschichte lÃ¶schen','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ð¸ÑÑ‚Ð¾Ñ€Ð¸ÑŽ','Eliminar historia','Hikayeyi sil'),(171,'','confirm_del_story','Are you sure you want to delete this status? Note all of your followers can not see it after removal','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ù…Ù† Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ù‡ Ø§Ù„Ø­Ø§Ù„Ø©ØŸ Ù„Ø§Ø­Ø¸ Ø£Ù† Ø¬Ù…ÙŠØ¹ Ø§Ù„Ù…ØªØ§Ø¨Ø¹ÙŠÙ† Ù„Ø§ ÙŠÙ…ÙƒÙ†Ù‡Ù… Ø±Ø¤ÙŠØªÙ‡ Ø¨Ø¹Ø¯ Ø§Ù„Ø¥Ø²Ø§Ù„Ø©','Weet je zeker dat je deze status wilt verwijderen? Let op al uw volgers kunnen het niet zien na verwijdering','ÃŠtes-vous sÃ»r de vouloir supprimer ce statut? Notez que tous vos abonnÃ©s ne peuvent pas le voir aprÃ¨s la suppression','MÃ¶chten Sie diesen Status wirklich lÃ¶schen? Beachten Sie, dass alle Ihre Follower es nach dem Entfernen nicht sehen kÃ¶nnen','Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾Ñ‚ ÑÑ‚Ð°Ñ‚ÑƒÑ? ÐžÐ±Ñ€Ð°Ñ‚Ð¸Ñ‚Ðµ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ, Ñ‡Ñ‚Ð¾ Ð²ÑÐµ Ð²Ð°ÑˆÐ¸ ÑÑ‚Ð¾Ñ€Ð¾Ð½Ð½Ð¸ÐºÐ¸ Ð½Ðµ Ð²Ð¸Ð´ÑÑ‚ ÐµÐ³Ð¾ Ð¿Ð¾ÑÐ»Ðµ ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ñ','Â¿EstÃ¡s seguro de que deseas eliminar este estado? Tenga en cuenta que todos sus seguidores no pueden verlo despuÃ©s de la eliminaciÃ³n','Bu durumu silmek istediÄŸinizden emin misiniz? TÃ¼m takipÃ§ileriniz kaldÄ±rÄ±ldÄ±ktan sonra gÃ¶remediÄŸini unutmayÄ±n'),(172,'','people_who_liked','People who liked this post','Ø§Ù„Ù†Ø§Ø³ Ø§Ù„Ø°ÙŠÙ† Ø£Ø­Ø¨ Ù‡Ø°Ø§ Ø§Ù„Ù…Ù†ØµØ¨','Mensen die dit bericht leuk vonden','Personnes qui ont aimÃ© ce post','Leute, die diesen Beitrag mochten','Ð›ÑŽÐ´Ð¸, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ð¼ Ð¿Ð¾Ð½Ñ€Ð°Ð²Ð¸Ð»ÑÑ ÑÑ‚Ð¾Ñ‚ Ð¿Ð¾ÑÑ‚','Gente a la que le gustÃ³ esta publicaciÃ³n','Bu yayÄ±nÄ± beÄŸenenler'),(173,'','show_more','Show more','Ø£Ø¸Ù‡Ø± Ø§Ù„Ù…Ø²ÙŠØ¯','Laat meer zien','Montre plus','Zeig mehr','ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ','Mostrar mÃ¡s','Daha fazla gÃ¶ster'),(174,'','no_more_comments','No more comments','Ù„Ø§ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„ØªØ¹Ù„ÙŠÙ‚Ø§Øª','Geen commentaar meer','Pas dautres commentaires','Keine weiteren Kommentare','Ð‘Ð¾Ð»ÑŒÑˆÐµ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸ÐµÐ² Ð½ÐµÑ‚','No mas comentarios','Daha fazla yorum yok'),(175,'','add_story','Add story','Ø£Ø¶Ù Ù‚ØµØ©','Voeg een verhaal toe','Ajouter une histoire','Geschichte hinzufÃ¼gen','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¸ÑÑ‚Ð¾Ñ€Ð¸ÑŽ','AÃ±adir historia','Hikaye ekle'),(176,'','imp_gif','Embed gif','ØªØ¶Ù…ÙŠÙ† Ù…Ù„Ù gif','Embed gif','IntÃ©grer gif','Gif einbetten','Ð’ÑÑ‚Ð°Ð²Ð¸Ñ‚ÑŒ gif','Insertar gif','Embed gif'),(177,'','imp_vid','Embed video','ØªØ¶Ù…ÙŠÙ† Ø§Ù„ÙÙŠØ¯ÙŠÙˆ','Video insluiten','IntÃ©grer la vidÃ©o','Video einbetten','Ð’ÑÑ‚Ñ€Ð¾ÐµÐ½Ð½Ð¾Ðµ Ð²Ð¸Ð´ÐµÐ¾','Video incrustado','GÃ¶mÃ¼lÃ¼ video'),(178,'','add_vid','Upload video','Ø±ÙØ¹ ÙÙŠØ¯ÙŠÙˆ','Upload video','TÃ©lÃ©charger une video','Video hochladen','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð²Ð¸Ð´ÐµÐ¾','Subir video','Video yÃ¼kle'),(179,'','add_img','Upload image','ØªØ­Ù…ÙŠÙ„ Ø§Ù„ØµÙˆØ±','Afbeelding uploaden','Importer une image','Bild hochladen','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ','Cargar imagen','FotoÄŸraf yÃ¼kleniyor'),(180,'','website','Website','Ù…ÙˆÙ‚Ø¹ Ø§Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','Website','Site Internet','Webseite','Ð’ÐµÐ±-ÑÐ°Ð¹Ñ‚','Sitio web','Web sitesi'),(181,'','facebook','Facebook','ÙÙŠØ³ Ø¨ÙˆÙƒ','Facebook','Facebook','Facebook','facebook','Facebook','Facebook'),(182,'','google','Google','Ø¬ÙˆØ¬Ù„','Google','Google','Google','Google','Google','Google'),(183,'','twitter','Twitter','ØªØºØ±ÙŠØ¯','tjilpen','Gazouillement','Twitter','Ñ‰ÐµÐ±ÐµÑ‚','Gorjeo','heyecan'),(184,'','ur_website','Your website url','Ø¹Ù†ÙˆØ§Ù† Ù…ÙˆÙ‚Ø¹Ùƒ','Jouw website URL','Ladresse URL de votre site','Deine Website URL','URL Ð²Ð°ÑˆÐµÐ³Ð¾ ÑÐ°Ð¹Ñ‚Ð°','URL de tu sitio web','Web sitenizin URLsi'),(185,'','ur_facebook','Your facebook profile url','Ø§Ù„ÙÙŠØ³Ø¨ÙˆÙƒ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ','Je facebook profiel url','Votre URL de profil facebook','Ihre Facebook Profil URL','Ð’Ð°Ñˆ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ facebook','Tu URL de perfil de Facebook','Facebook profil URLâ€™niz'),(186,'','ur_google','Your google-plus profile url','Your google-plus profile url','Uw Google-plus profiel-URL','Votre URL de profil google-plus','Ihre Google-Plus-Profil-URL','Ð’Ð°Ñˆ URL-Ð°Ð´Ñ€ÐµÑ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ google-plus','Tu URL de perfil de google-plus','Google artÄ± profil URLâ€™niz'),(187,'','ur_twitter','Your twitter profile url','Ø±Ø§Ø¨Ø· ØªÙˆÙŠØªØ± Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ','Je twitterprofiel-URL','Votre URL de profil twitter','Deine Twitter-Profil-URL','Ð’Ð°Ñˆ URL Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ Ñ‚Ð²Ð¸Ñ‚Ñ‚ÐµÑ€Ð°','Tu url del perfil de twitter','Twitter profiliniz'),(188,'','about_u','About you','Ø­ÙˆÙ„Ùƒ','Over jou','Au propos de vous','Ãœber dich','Ðž Ñ‚ÐµÐ±Ðµ','Acerca de ti','Senin hakkÄ±nda'),(189,'','fname_is_long','First name is too long Please enter a valid first name','Ø§Ù„Ø§Ø³Ù… Ø§Ù„Ø£ÙˆÙ„ Ø·ÙˆÙŠÙ„ Ø¬Ø¯Ù‹Ø§ Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ Ø§Ø³Ù… Ø£ÙˆÙ„ ØµØ§Ù„Ø­','Voornaam is te lang Voer een geldige voornaam in','Le prÃ©nom est trop long Veuillez entrer un prÃ©nom valide','Vorname ist zu lang Bitte geben Sie einen gÃ¼ltigen Vornamen ein','Ð˜Ð¼Ñ ÑÐ»Ð¸ÑˆÐºÐ¾Ð¼ Ð´Ð»Ð¸Ð½Ð½Ð¾Ðµ ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ Ð¸Ð¼Ñ','El nombre es demasiado largo Por favor ingrese un nombre vÃ¡lido','Ä°sim Ã§ok uzun. LÃ¼tfen geÃ§erli bir ilk isim giriniz'),(190,'','lname_is_long','Last name is too long Please enter a valid last name','Ø§Ù„Ø§Ø³Ù… Ø§Ù„Ø£Ø®ÙŠØ± Ø·ÙˆÙŠÙ„ Ø¬Ø¯Ù‹Ø§ Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ Ø§Ø³Ù… Ø§Ù„Ø¹Ø§Ø¦Ù„Ø© Ø§Ù„ØµØ­ÙŠØ­','Achternaam is te lang Voer een geldige achternaam in','Le nom est trop long Veuillez entrer un nom de famille valide','Nachname ist zu lang Bitte geben Sie einen gÃ¼ltigen Nachnamen ein','Ð¤Ð°Ð¼Ð¸Ð»Ð¸Ñ ÑÐ»Ð¸ÑˆÐºÐ¾Ð¼ Ð´Ð»Ð¸Ð½Ð½Ð°Ñ ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½ÑƒÑŽ Ñ„Ð°Ð¼Ð¸Ð»Ð¸ÑŽ','El apellido es demasiado largo. Ingrese un apellido vÃ¡lido','SoyadÄ± Ã§ok uzun! LÃ¼tfen geÃ§erli bir soyad girin'),(191,'','about_is_long','Your text about you is too long The maximum number of text characters is 150.','Ù†ØµÙƒ Ø¹Ù†Ùƒ Ø·ÙˆÙŠÙ„ Ø¬Ø¯Ù‹Ø§ Ø§Ù„Ø­Ø¯ Ø§Ù„Ø£Ù‚ØµÙ‰ Ù„Ø¹Ø¯Ø¯ Ø£Ø­Ø±Ù Ø§Ù„Ù†Øµ Ù‡Ùˆ 150.','Uw tekst over u is te lang. Het maximale aantal teksttekens is 150.','Votre texte Ã  votre sujet est trop long Le nombre maximum de caractÃ¨res est de 150.','Ihr Text Ã¼ber Sie ist zu lang Die maximale Anzahl an Textzeichen betrÃ¤gt 150.','Ð’Ð°Ñˆ Ñ‚ÐµÐºÑÑ‚ Ð¾ Ð²Ð°Ñ ÑÐ»Ð¸ÑˆÐºÐ¾Ð¼ Ð´Ð»Ð¸Ð½Ð½Ñ‹Ð¹. ÐœÐ°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ð¾Ðµ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ Ñ‚ÐµÐºÑÑ‚Ð¾Ð²Ñ‹Ñ… ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð² - 150.','Su texto sobre usted es demasiado largo. La cantidad mÃ¡xima de caracteres de texto es 150.','Sizinle ilgili metniniz Ã§ok uzun. Maksimum metin karakter sayÄ±sÄ± 150dir.'),(192,'','invalid_webiste_url','Your website url is invalid Please enter a valid url','Ø¹Ù†ÙˆØ§Ù† URL Ù„Ù…ÙˆÙ‚Ø¹Ùƒ ØºÙŠØ± ØµØ§Ù„Ø­ ÙŠØ±Ø¬Ù‰ Ø¥Ø¯Ø®Ø§Ù„ Ø¹Ù†ÙˆØ§Ù† url ØµØ§Ù„Ø­','De url van uw website is ongeldig Voer een geldige URL in','LURL de votre site Web est invalide Veuillez entrer une URL valide','Ihre Website-URL ist ungÃ¼ltig Bitte geben Sie eine gÃ¼ltige URL ein','ÐÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ð¹ URL-Ð°Ð´Ñ€ÐµÑ Ð²Ð°ÑˆÐµÐ³Ð¾ Ð²ÐµÐ±-ÑÐ°Ð¹Ñ‚Ð°. Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ URL-Ð°Ð´Ñ€ÐµÑ','La URL de su sitio web no es vÃ¡lida. Ingrese una URL vÃ¡lida.','Web sitenizin URLsi geÃ§ersiz LÃ¼tfen geÃ§erli bir URL girin'),(193,'','invalid_facebook_url','Your facebook profile url is invalid Please enter a valid url','Ø¹Ù†ÙˆØ§Ù† URL Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ø¹Ù„Ù‰ ÙÙŠØ³Ø¨ÙˆÙƒ ØºÙŠØ± ØµØ§Ù„Ø­ ÙŠØ±Ø¬Ù‰ Ø¥Ø¯Ø®Ø§Ù„ Ø¹Ù†ÙˆØ§Ù† url ØµØ§Ù„Ø­','De URL van je Facebook-profiel is ongeldig Voer een geldige URL in','Votre URL de profil facebook est invalide Veuillez entrer une URL valide','Ihre Facebook-Profil-URL ist ungÃ¼ltig. Bitte geben Sie eine gÃ¼ltige URL ein','Ð’Ð°Ñˆ URL-Ð°Ð´Ñ€ÐµÑ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ facebook Ð½ÐµÐ´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÐµÐ½. Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ URL-Ð°Ð´Ñ€ÐµÑ','Tu URL de perfil de Facebook no es vÃ¡lida. Ingresa una URL vÃ¡lida.','Facebook profile url geÃ§ersiz LÃ¼tfen geÃ§erli bir url girin'),(194,'','invalid_google_url','Your google profile url is invalid Please enter a valid url','Your google profile url is invalid Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ Ø¹Ù†ÙˆØ§Ù† url ØµØ§Ù„Ø­','De URL van uw Google-profiel is ongeldig Voer een geldige URL in','Votre URL de profil Google nest pas valide Veuillez entrer une URL valide','Ihre Google Profil-URL ist ungÃ¼ltig Bitte geben Sie eine gÃ¼ltige URL ein','Ð’Ð°Ñˆ URL-Ð°Ð´Ñ€ÐµÑ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ google Ð½ÐµÐ´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÐµÐ½ ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ URL-Ð°Ð´Ñ€ÐµÑ','Tu URL de perfil de google no es vÃ¡lida. Ingresa una URL vÃ¡lida.','Google profil URLâ€™niz geÃ§ersiz. LÃ¼tfen geÃ§erli bir URL girin'),(195,'','invalid_twitter_url','Your twitter profile url is invalid Please enter a valid url','Ø¹Ù†ÙˆØ§Ù† url Ø§Ù„Ø®Ø§Øµ Ø¨Ù…ÙˆÙ‚Ø¹ twitter Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ ØºÙŠØ± ØµØ§Ù„Ø­ ÙŠØ±Ø¬Ù‰ Ø¥Ø¯Ø®Ø§Ù„ Ø¹Ù†ÙˆØ§Ù† url ØµØ§Ù„Ø­','De URL van je twitterprofiel is ongeldig Voer een geldige URL in','Votre URL de profil twitter est invalide Veuillez entrer une URL valide','Deine Twitter-Profil-URL ist ungÃ¼ltig Bitte gib eine gÃ¼ltige URL ein','ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ URL-Ð°Ð´Ñ€ÐµÑ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ Twitter. Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ URL-Ð°Ð´Ñ€ÐµÑ','Tu URL de perfil de twitter no es vÃ¡lida. Ingresa una URL vÃ¡lida.','Twitter profiliniz geÃ§ersiz. LÃ¼tfen geÃ§erli bir URL girin'),(196,'','time_ago','ago','Ù…Ù†Ø°','geleden','depuis','vor','Ñ‚Ð¾Ð¼Ñƒ Ð½Ð°Ð·Ð°Ð´','hace','Ã¶nce'),(197,'','time_from_now','from now','Ù…Ù† Ø§Ù„Ø§Ù†','vanaf nu','Ã  partir de maintenant','in','Ð¾Ñ‚Ð½Ñ‹Ð½Ðµ','desde ahora','ÅŸu andan itibaren'),(198,'','time_any_moment_now','any moment now','ÙÙŠ Ø§ÙŠ Ù„Ø­Ø¸Ø© Ø§Ù„Ø§Ù†','elk moment nu','Ã  tout moment maintenant','jeden Moment jetzt','Ð² Ð»ÑŽÐ±Ð¾Ð¹ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚ ÑÐµÐ¹Ñ‡Ð°Ñ','en cualquier momento ahora','ÅŸimdi her an'),(199,'','time_just_now','Just now','Ø§Ù„Ø¢Ù† ÙÙ‚Ø·','Net nu','Juste maintenant','Gerade jetzt','ÐŸÑ€ÑÐ¼Ð¾ ÑÐµÐ¹Ñ‡Ð°Ñ','Justo ahora','Åžu anda'),(200,'','time_about_a_minute_ago','about a minute ago','Ù…Ù†Ø° Ø¯Ù‚ÙŠÙ‚Ø© ÙˆØ§Ø­Ø¯Ø©','ongeveer een minuut geleden','Il y a environ une minute','Vor ca. einer Minute','Ð¾ÐºÐ¾Ð»Ð¾ Ð¼Ð¸Ð½ÑƒÑ‚Ñ‹ Ð½Ð°Ð·Ð°Ð´','hace alrededor de un minuto','yaklaÅŸÄ±k bir dakika Ã¶nce'),(201,'','time_minute_ago','%d minutes ago','Ù‚Ø¨Ù„Ùª d Ø¯Ù‚ÙŠÙ‚Ø©','% d minuten geleden','Il y a% d minutes','% d Minuten vor','% d Ð¼Ð¸Ð½ÑƒÑ‚ Ð½Ð°Ð·Ð°Ð´','Hace% d minutos','% d dakika Ã¶nce'),(202,'','time_about_an_hour_ago','about an hour ago','Ù…Ù†Ø° Ø³Ø§Ø¹Ø© ØªÙ‚Ø±ÙŠØ¨Ø§','ongeveer een uur geleden','il y a Ã  peu prÃ¨s une heure','vor ungefÃ¤hr einer Stunde','Ð¾ÐºÐ¾Ð»Ð¾ Ñ‡Ð°ÑÐ° Ð½Ð°Ð·Ð°Ð´','Hace aproximadamente una hora','yaklaÅŸÄ±k bir saat Ã¶nce'),(203,'','time_hours_ago','%d hours ago','Ù‚Ø¨Ù„Ùª d Ø³Ø§Ø¹Ø©','% d uur geleden','Il y a% d heures','% d Stunden vor','% Ñ‡Ð°ÑÐ¾Ð² Ð½Ð°Ð·Ð°Ð´','Hace% d horas','% d saat Ã¶nce'),(204,'','time_a_day_ago','a day ago','Ù‚Ø¨Ù„ ÙŠÙˆÙ…','een dag geleden','il y a un jour','vor einem Tag','Ð´ÐµÐ½ÑŒ Ð½Ð°Ð·Ð°Ð´','Hace un dÃ­a','bir gÃ¼n Ã¶nce'),(205,'','time_a_days_ago','%d days ago','Ù‚Ø¨Ù„Ùª d ÙŠÙˆÙ…Ù‹Ø§','% d dagen geleden','il y a% d jours','% d Tage vor','% Ð´Ð½ÐµÐ¹ Ð½Ð°Ð·Ð°Ð´','hace% d dÃ­as','% d gÃ¼n Ã¶nce'),(206,'','time_about_a_month_ago','about a month ago','Ù‚Ø¨Ù„ Ø´Ù‡Ø± Ù…Ø¶Ù‰','ongeveer een maand geleden','il y a environ un mois','vor ungefÃ¤hr einem Monat','ÐžÐºÐ¾Ð»Ð¾ Ð¼ÐµÑÑÑ†Ð° Ð½Ð°Ð·Ð°Ð´','Hace mÃ¡s o menos un mes','yaklaÅŸÄ±k bir ay Ã¶nce'),(207,'','time_months_ago','%d months ago','Ù‚Ø¨Ù„ Ø´Ù‡Ø± ÙˆØ§Ø­Ø¯','% d maanden geleden','Il y a% d mois','% d Monate zuvor','% d Ð¼ÐµÑÑÑ†ÐµÐ² Ð½Ð°Ð·Ð°Ð´','Hace% d meses','% d ay Ã¶nce'),(208,'','time_about_a_year_ago','about a year ago','Ù‚Ø¨Ù„ Ù†Ø­Ùˆ Ø³Ù†Ø©','ongeveer een jaar geleden','Il ya environ un an','vor ungefÃ¤hr einem Jahr','Ð¾ÐºÐ¾Ð»Ð¾ Ð³Ð¾Ð´Ð° Ð½Ð°Ð·Ð°Ð´','Hace un aÃ±o','yaklaÅŸÄ±k bir yÄ±l Ã¶nce'),(209,'','time_years_ago','%d years ago','Ù‚Ø¨Ù„Ùª d Ø³Ù†Ø©','% d jaar geleden','Il y a% d annÃ©es','% d Jahren','% d Ð»ÐµÑ‚ Ð½Ð°Ð·Ð°Ð´','% d aÃ±os atrÃ¡s','% d yÄ±l Ã¶nce'),(210,'','year','year','Ø¹Ø§Ù…','jaar','an','Jahr','Ð³Ð¾Ð´','aÃ±o','yÄ±l'),(211,'','month','month','Ø´Ù‡Ø±','maand','mois','Monat','Ð¼ÐµÑÑÑ†','mes','ay'),(212,'','day','day','ÙŠÙˆÙ…','dag','journÃ©e','Tag','Ð´ÐµÐ½ÑŒ','dÃ­a','gÃ¼n'),(213,'','hour','hour','Ø³Ø§Ø¹Ø©','uur','heure','Stunde','Ñ‡Ð°Ñ','hora','saat'),(214,'','minute','minute','Ø§Ù„Ù„Ø­Ø¸Ø©','minuut','minute','Minute','Ð¼Ð¸Ð½ÑƒÑ‚','minuto','dakika'),(215,'','second','second','Ø«Ø§Ù†ÙŠØ§','tweede','seconde','zweite','Ð²Ñ‚Ð¾Ñ€Ð¾Ð¹','segundo','ikinci'),(216,'','years','years','Ø³Ù†ÙˆØ§Øª','jaar','annÃ©es','Jahre','Ð»ÐµÑ‚','aÃ±os','yÄ±l'),(217,'','months','months','Ø§Ù„Ø´Ù‡ÙˆØ±','maanden','mois','Monate','Ð¼ÐµÑÑÑ†Ñ‹','meses','ay'),(218,'','days','days','Ø£ÙŠØ§Ù…','dagen','journÃ©es','Tage','Ð´Ð½ÐµÐ¹','dias','gÃ¼nler'),(219,'','hours','hours','Ø³Ø§Ø¹Ø§Øª','uur','heures','Std.','Ñ‡Ð°ÑÐ¾Ð²','horas','saatler'),(220,'','minutes','minutes','Ø§Ù„Ø¯Ù‚Ø§Ø¦Ù‚','notulen','minutes','Protokoll','Ð¼Ð¸Ð½ÑƒÑ‚','minutos','dakika'),(221,'','seconds','seconds','Ø«ÙˆØ§Ù†ÙŠ','seconden','secondes','Sekunden','ÑÐµÐºÑƒÐ½Ð´','segundos','saniye'),(222,'','home','Home','Ø§Ù„ØµÙØ­Ø© Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠØ©','Huis','Accueil','Zuhause','Ð“Ð»Ð°Ð²Ð½Ð°Ñ','Casa','Ev'),(223,'','no_users_yet','There are no users yet','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ù…Ø³ØªØ®Ø¯Ù… Ø¨Ø¹Ø¯','Er zijn nog geen gebruikers','Il n\'y a pas encore d\'utilisateurs','Es gibt noch keine Benutzer','ÐŸÐ¾ÐºÐ° Ð½ÐµÑ‚ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹','TodavÃ­a no hay usuarios','HenÃ¼z hiÃ§ kullanÄ±cÄ± yok'),(224,'','image','Image','ØµÙˆØ±Ø©','Beeld','Image','Bild','ÐžÐ±Ñ€Ð°Ð·','Imagen','gÃ¶rÃ¼ntÃ¼'),(225,'','video','Video','ÙÙŠØ¯ÙŠÙˆ','Video','VidÃ©o','Video','Ð²Ð¸Ð´ÐµÐ¾','VÃ­deo','Video'),(226,'','embed_video','Embed Video','ØªØ¶Ù…ÙŠÙ† Ø§Ù„ÙÙŠØ¯ÙŠÙˆ','Video insluiten','IntÃ©grer la vidÃ©o','Video einbetten','Ð’ÑÑ‚Ñ€Ð¾ÐµÐ½Ð½Ð¾Ðµ Ð²Ð¸Ð´ÐµÐ¾','Video incrustado','GÃ¶mÃ¼lÃ¼ Video'),(227,'','story','Story','Ù‚ØµØ©','Verhaal','RÃ©cit','Geschichte','Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ','Historia','Ã–ykÃ¼'),(228,'','delete','Delete','Ø­Ø°Ù','Verwijder','Effacer','LÃ¶schen','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ','Borrar','silmek'),(229,'','block','Block','Ù…Ù†Ø¹','Blok','Bloc','Block','Ð±Ð»Ð¾Ðº','Bloquear','Blok'),(230,'','explore','Explore','ÙŠÙƒØªØ´Ù','onderzoeken','Explorer','Erkunden','Ð˜ÑÑÐ»ÐµÐ´Ð¾Ð²Ð°Ñ‚ÑŒ','Explorar','keÅŸfetmek'),(231,'','copy_link','Copy Link','Ø§Ù†Ø³Ø® Ø§Ù„Ø±Ø§Ø¨Ø·','Kopieer link','Copier le lien','Link kopieren','ÐšÐ¾Ð¿Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑÑÑ‹Ð»ÐºÑƒ','Copiar link','BaÄŸlantÄ±yÄ± kopyala'),(232,'','about_us','About Us','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø¹Ù†Ø§','Over ons','Ã€ propos de nous','Ãœber uns','Ðž Ð½Ð°Ñ','Sobre nosotros','HakkÄ±mÄ±zda'),(233,'','sign_in','Sign In','ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„','Aanmelden','Se connecter','Anmelden','Ð’Ð¾Ð¹Ñ‚Ð¸ Ð² ÑÐ¸ÑÑ‚ÐµÐ¼Ñƒ','Registrarse','Oturum aÃ§'),(234,'','welcome_to','Welcome to','Ù…Ø±Ø­Ø¨Ø§ Ø¨Ùƒ ÙÙŠ','Welkom bij','Bienvenue Ã ','Willkommen zu','Ð”Ð¾Ð±Ñ€Ð¾ Ð¿Ð¾Ð¶Ð°Ð»Ð¾Ð²Ð°Ñ‚ÑŒ Ð²','Bienvenido a','HoÅŸgeldiniz'),(235,'','welcome_feature_1','Just Like the photos which you found interesting, unique and best.','ØªÙ…Ø§Ù…Ø§ Ù…Ø«Ù„ Ø§Ù„ØµÙˆØ± Ø§Ù„ØªÙŠ ÙˆØ¬Ø¯Øª Ù„Ù„Ø§Ù‡ØªÙ…Ø§Ù… ØŒ ÙˆÙØ±ÙŠØ¯Ø© Ù…Ù† Ù†ÙˆØ¹Ù‡Ø§ ÙˆØ£ÙØ¶Ù„.','Net als de foto\'s die u interessant, uniek en best vond.','Juste comme les photos que vous avez trouvÃ©es intÃ©ressantes, uniques et meilleures.','Genau wie die Fotos, die Sie interessant, einzigartig und am besten fanden.','ÐŸÑ€Ð¾ÑÑ‚Ð¾ ÐºÐ°Ðº Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸Ð¸, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð²Ñ‹ Ð½Ð°ÑˆÐ»Ð¸ Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ½Ñ‹Ð¼Ð¸, ÑƒÐ½Ð¸ÐºÐ°Ð»ÑŒÐ½Ñ‹Ð¼Ð¸ Ð¸ Ð»ÑƒÑ‡ÑˆÐ¸Ð¼Ð¸.','Al igual que las fotos que le parecieron interesantes, Ãºnicas y mejores.','Sadece ilginÃ§, benzersiz ve en iyi bulduÄŸunuz fotoÄŸraflar gibi.'),(236,'','welcome_feature_2','Become a follower of Famous people, celebrities and many more in your area.','Ø£ØµØ¨Ø­ ØªØ§Ø¨Ø¹Ø§ Ù…Ù† Ø§Ù„Ù…Ø´Ø§Ù‡ÙŠØ± ÙˆØ§Ù„Ù…Ø´Ø§Ù‡ÙŠØ± ÙˆØºÙŠØ±Ù‡Ø§ Ø§Ù„ÙƒØ«ÙŠØ± ÙÙŠ Ù…Ù†Ø·Ù‚ØªÙƒ.','Word een volgeling van beroemde mensen, beroemdheden en nog veel meer in jouw omgeving.','Devenir un adepte des personnes cÃ©lÃ¨bres, des cÃ©lÃ©britÃ©s et bien d\'autres dans votre rÃ©gion.','Werden Sie ein AnhÃ¤nger von BerÃ¼hmtheiten, Prominenten und vielen mehr in Ihrer NÃ¤he.','Ð¡Ñ‚Ð°Ð½ÑŒÑ‚Ðµ Ð¿Ð¾ÑÐ»ÐµÐ´Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¼ Ð—Ð½Ð°Ð¼ÐµÐ½Ð¸Ñ‚Ñ‹Ñ… Ð»ÑŽÐ´ÐµÐ¹, Ð·Ð½Ð°Ð¼ÐµÐ½Ð¸Ñ‚Ð¾ÑÑ‚ÐµÐ¹ Ð¸ Ð¼Ð½Ð¾Ð³Ð¸Ñ… Ð´Ñ€ÑƒÐ³Ð¸Ñ… Ð² ÑÐ²Ð¾ÐµÐ¹ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸.','ConviÃ©rtete en seguidor de personajes famosos, celebridades y muchos mÃ¡s en tu Ã¡rea.','ÃœnlÃ¼lerin, Ã¼nlÃ¼lerin ve bÃ¶lgenizdeki daha birÃ§ok kiÅŸinin takipÃ§isi ol.'),(237,'','welcome_feature_3','Immediately Save Images or videos to check them later anytime.','Ø§Ø­ÙØ¸ Ø§Ù„ØµÙˆØ± Ø£Ùˆ Ù…Ù‚Ø§Ø·Ø¹ Ø§Ù„ÙÙŠØ¯ÙŠÙˆ ÙÙˆØ±Ù‹Ø§ Ù„Ù„ØªØ­Ù‚Ù‚ Ù…Ù†Ù‡Ø§ Ù„Ø§Ø­Ù‚Ù‹Ø§ ÙÙŠ Ø£ÙŠ ÙˆÙ‚Øª.','Sla onmiddellijk afbeeldingen of video\'s op om ze later op elk gewenst moment te bekijken.','ImmÃ©diatement enregistrer des images ou des vidÃ©os pour les vÃ©rifier plus tard Ã  tout moment.','Speichern Sie sofort Bilder oder Videos, um sie spÃ¤ter jederzeit zu Ã¼berprÃ¼fen.','ÐÐµÐ¼ÐµÐ´Ð»ÐµÐ½Ð½Ð¾ ÑÐ¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚Ðµ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ Ð¸Ð»Ð¸ Ð²Ð¸Ð´ÐµÐ¾, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ñ€Ð¾Ð²ÐµÑ€Ð¸Ñ‚ÑŒ Ð¸Ñ… Ð¿Ð¾Ð·Ð¶Ðµ Ð² Ð»ÑŽÐ±Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ.','Guarde de inmediato imÃ¡genes o videos para verlos mÃ¡s tarde en cualquier momento.','Hemen gÃ¶rÃ¼ntÃ¼leri veya videolarÄ± istediÄŸiniz zaman kontrol etmek iÃ§in kaydedin.'),(238,'','let_set_up','Let&#039;s get you set up','Ø¯Ø¹Ù†Ø§ Ù†Ù†ØµØ­Ùƒ','Laten we je instellen','Laissez-vous mettre en place','Lass uns dich einrichten','Ð”Ð°Ð´Ð¸Ð¼ Ð²Ð°Ð¼ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¸Ñ‚ÑŒ','Vamos a prepararte','AyarlayalÄ±m'),(239,'','create_acc_proceed','Create your Account to continue to','Ù‚Ù… Ø¨Ø¥Ù†Ø´Ø§Ø¡ Ø­Ø³Ø§Ø¨Ùƒ Ù„Ù„Ø§Ø³ØªÙ…Ø±Ø§Ø±','Maak uw account aan om door te gaan','CrÃ©ez votre compte pour continuer Ã ','Erstellen Sie Ihr Konto, um fortzufahren','Ð¡Ð¾Ð·Ð´Ð°Ð¹Ñ‚Ðµ ÑÐ²Ð¾ÑŽ ÑƒÑ‡ÐµÑ‚Ð½ÑƒÑŽ Ð·Ð°Ð¿Ð¸ÑÑŒ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ','Crea tu cuenta para continuar','Devam etmek iÃ§in HesabÄ±nÄ±zÄ± oluÅŸturun'),(240,'','min_to_get_start','It will take only a couple of minutes to get started.','Ø³ÙˆÙ ÙŠØ³ØªØºØ±Ù‚ Ø§Ù„Ø£Ù…Ø± Ø¨Ø¶Ø¹ Ø¯Ù‚Ø§Ø¦Ù‚ ÙÙ‚Ø· Ù„Ù„Ø¨Ø¯Ø¡.','Het duurt maar een paar minuten om aan de slag te gaan.','Cela ne prendra que quelques minutes pour commencer.','Es dauert nur ein paar Minuten, um loszulegen.','Ð§Ñ‚Ð¾Ð±Ñ‹ Ð½Ð°Ñ‡Ð°Ñ‚ÑŒ Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ, Ð¿Ð¾Ñ‚Ñ€ÐµÐ±ÑƒÐµÑ‚ÑÑ Ð²ÑÐµÐ³Ð¾ Ð½ÐµÑÐºÐ¾Ð»ÑŒÐºÐ¾ Ð¼Ð¸Ð½ÑƒÑ‚.','Solo tomarÃ¡ unos minutos para comenzar.','BaÅŸlamak iÃ§in sadece birkaÃ§ dakika alacak.'),(241,'','reset_password','Reset your Password','Ø§Ø¹Ø¯ Ø¶Ø¨Ø· ÙƒÙ„Ù…Ù‡ Ø§Ù„Ø³Ø±','Stel je wachtwoord opnieuw in','RÃ©initialisez votre mot de passe','Setze dein Passwort zurÃ¼ck','Ð¡Ð±Ñ€Ð¾ÑÐ¸Ñ‚ÑŒ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Restablecer su contraseÃ±a','Åžifrenizi SÄ±fÄ±rla'),(242,'','reset','Reset','Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ†','Reset','RÃ©initialiser','ZurÃ¼cksetzen','Ð¡Ð±Ñ€Ð¾Ñ','Reiniciar','Reset'),(243,'','like','Like','Ù…Ø«Ù„','Graag willen','Comme','MÃ¶gen','Ð¿Ð¾Ð´Ð¾Ð±Ð½Ð¾','Me gusta','Sevmek'),(244,'','save','Save','Ø­ÙØ¸','Opslaan','sauvegarder','sparen','Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ','Salvar','KayÄ±t etmek'),(245,'','select','Select','ØªØ­Ø¯ÙŠØ¯','kiezen','SÃ©lectionner','WÃ¤hlen','Ð’Ñ‹Ð±Ñ€Ð°Ñ‚ÑŒ','Seleccionar','seÃ§mek'),(246,'','email_not_exists','Email not found','Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ ØºÙŠØ± Ù…ÙˆØ¬ÙˆØ¯','e-mail niet gevonden','Email non trouvÃ©','Email wurde nicht gefunden','Ð­Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð°Ñ Ð¿Ð¾Ñ‡Ñ‚Ð° Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð°','El correo electrÃ³nico no encontrado','Email bulunamadÄ±'),(247,'','sent_email','We have sent you an email, please check your inbox or spam folder.','Ù„Ù‚Ø¯ Ø£Ø±Ø³Ù„Ù†Ø§ Ø¥Ù„ÙŠÙƒ Ø¨Ø±ÙŠØ¯Ù‹Ø§ Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠÙ‹Ø§ ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ù…Ø¬Ù„Ø¯ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„ÙˆØ§Ø±Ø¯ Ø£Ùˆ Ù…Ø¬Ù„Ø¯ Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ ØºÙŠØ± Ø§Ù„Ù…Ø±ØºÙˆØ¨ ÙÙŠÙ‡Ø§.','We hebben je een e-mail gestuurd, kijk in je inbox of spam-map.','Nous vous avons envoyÃ© un e-mail, vÃ©rifiez votre boÃ®te de rÃ©ception ou votre dossier de spam.','Wir haben Ihnen eine E-Mail geschickt, Ã¼berprÃ¼fen Sie bitte Ihren Posteingang oder Spam-Ordner.','ÐœÑ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¸ Ð²Ð°Ð¼ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ð¸ÑÑŒÐ¼Ð¾, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ Ð¿Ð°Ð¿ÐºÑƒ Â«Ð’Ñ…Ð¾Ð´ÑÑ‰Ð¸ÐµÂ» Ð¸Ð»Ð¸ Â«Ð¡Ð¿Ð°Ð¼Â».','Le hemos enviado un correo electrÃ³nico, consulte su bandeja de entrada o carpeta de correo no deseado.','Size bir e-posta gÃ¶nderdik, lÃ¼tfen gelen kutunuzu veya spam klasÃ¶rÃ¼nÃ¼zÃ¼ kontrol edin.'),(248,'','account_not_activated','Your account is not activated.','Ø­Ø³Ø§Ø¨Ùƒ ØºÙŠØ± Ù…ÙØ¹Ù„.','Je account is niet geactiveerd.','Votre compte n\'est pas activÃ©.','Dein Konto ist nicht aktiviert.','Ð’Ð°ÑˆÐ° ÑƒÑ‡ÐµÑ‚Ð½Ð°Ñ Ð·Ð°Ð¿Ð¸ÑÑŒ Ð½Ðµ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð°.','Su cuenta no estÃ¡ activada.','HesabÄ±nÄ±z aktif deÄŸil.'),(249,'','click_on_activation_link','Please click on activation link that was sent to your email.','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ù†Ù‚Ø± ÙÙˆÙ‚ Ø±Ø§Ø¨Ø· Ø§Ù„ØªÙ†Ø´ÙŠØ· Ø§Ù„Ø°ÙŠ ØªÙ… Ø¥Ø±Ø³Ø§Ù„Ù‡ Ø¥Ù„Ù‰ Ø¨Ø±ÙŠØ¯Ùƒ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ.','Klik op de activeringslink die naar uw e-mail is verzonden.','Veuillez cliquer sur le lien d\'activation envoyÃ© Ã  votre adresse e-mail.','Bitte klicken Sie auf den Aktivierungslink, der an Ihre E-Mail gesendet wurde.','ÐÐ°Ð¶Ð¼Ð¸Ñ‚Ðµ ÑÑÑ‹Ð»ÐºÑƒ Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸, ÐºÐ¾Ñ‚Ð¾Ñ€Ð°Ñ Ð±Ñ‹Ð»Ð° Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð° â€‹â€‹Ð½Ð° Ð²Ð°Ñˆ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹.','Haga clic en el enlace de activaciÃ³n que se enviÃ³ a su correo electrÃ³nico.','LÃ¼tfen e-postanÄ±za gÃ¶nderilen aktivasyon linkine tÄ±klayÄ±n.'),(250,'','activate_user','Activate User','ØªÙØ¹ÙŠÙ„ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Activeer Gebruiker','Activer l\'utilisateur','Benutzer aktivieren','ÐÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','Activar usuario','KullanÄ±cÄ±yÄ± EtkinleÅŸtir'),(251,'','successfully_loged_in','Successfully logged in, please wait...',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,'','v2_reset_password','Reset Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(253,'','v2_reset_password_msg','To reset your password, please click the link below:',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(254,'','successfully_joined_created','Your account was successfully created. Please check your inbox or spam folder for the activation link.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(255,'','v2_email_confirmed','Email Confirmed',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(256,'','website_use_cookies','This website uses cookies to ensure you get the best experience on our website.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(257,'','got_it','Got it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(258,'','learn_more1','Learn more',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(259,'','views','Views','Ø§Ù„Ø¢Ø±Ø§Ø¡','Keer bekeken','Des vues','Ansichten','ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€Ñ‹','Puntos de vista','GÃ¶rÃ¼nÃ¼mler'),(260,'','verification','Verification','Ø§Ù„ØªØ­Ù‚Ù‚','Verificatie','VÃ©rification','NachprÃ¼fung','Ð²ÐµÑ€Ð¸Ñ„Ð¸ÐºÐ°Ñ†Ð¸Ñ','VerificaciÃ³n','DoÄŸrulama'),(261,'','verify_p','Verification of the profile!','Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ!','Verificatie van het profiel!','VÃ©rification du profil!','ÃœberprÃ¼fung des Profils!','ÐŸÑ€Ð¾Ð²ÐµÑ€ÐºÐ° Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ!','VerificaciÃ³n del perfil!','Profilin doÄŸrulanmasÄ±!'),(262,'','name','Name','Ø§Ø³Ù…','Naam','prÃ©nom','Name','Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ','Nombre','isim'),(263,'','upload_docs','Upload documents','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø³ØªÙ†Ø¯Ø§Øª','Upload documenten','TÃ©lÃ©charger des documents','Dokumente hochladen','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ñ‹','Subir documentos','Belgeleri YÃ¼kle'),(264,'','select_verif_images','Please upload a photo with your passport / ID &amp; your distinct photo','ÙŠØ±Ø¬Ù‰ ØªØ­Ù…ÙŠÙ„ ØµÙˆØ±Ø© Ù…Ø¹ Ø¬ÙˆØ§Ø² Ø³ÙØ±Ùƒ / Ù‡ÙˆÙŠØªÙƒ ÙˆØµÙˆØ±ØªÙƒ Ø§Ù„Ù…Ù…ÙŠØ²Ø©','Upload een foto met uw paspoort / ID en uw afzonderlijke foto','S&#039;il vous plaÃ®t tÃ©lÃ©charger une photo avec votre passeport / ID et votre photo distincte','Bitte lade ein Foto mit deinem Pass / Ausweis und deinem eigenen Foto hoch','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚Ðµ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸ÑŽ Ñ Ð²Ð°ÑˆÐ¸Ð¼ Ð¿Ð°ÑÐ¿Ð¾Ñ€Ñ‚Ð¾Ð¼ / ÑƒÐ´Ð¾ÑÑ‚Ð¾Ð²ÐµÑ€ÐµÐ½Ð¸ÐµÐ¼ Ð»Ð¸Ñ‡Ð½Ð¾ÑÑ‚Ð¸ Ð¸ Ð²Ð°ÑˆÐµÐ¹ Ð¾Ñ‚Ð´ÐµÐ»ÑŒÐ½Ð¾Ð¹ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸ÐµÐ¹','Por favor, cargue una foto con su pasaporte / identificaciÃ³n y su foto distintiva','LÃ¼tfen pasaportunuz / kimliÄŸiniz ve farklÄ± fotoÄŸrafÄ±nÄ±z ile fotoÄŸraf yÃ¼kleyin'),(265,'','your_photo','Your Photo','ØµÙˆØ±ØªÙƒ','Je foto','Ta photo','Dein Foto','Ð¢Ð²Ð¾Ðµ Ñ„Ð¾Ñ‚Ð¾','Tu foto','Senin resmin'),(266,'','your_ip','Passport / id card','Ø¬ÙˆØ§Ø² Ø§Ù„Ø³ÙØ± / Ø¨Ø·Ø§Ù‚Ø© Ø§Ù„Ù‡ÙˆÙŠØ©','Paspoort / identiteitskaart','Passeport / carte d&#039;identitÃ©','Reisepass / ID-Karte','ÐŸÐ°ÑÐ¿Ð¾Ñ€Ñ‚ / ÑƒÐ´Ð¾ÑÑ‚Ð¾Ð²ÐµÑ€ÐµÐ½Ð¸Ðµ Ð»Ð¸Ñ‡Ð½Ð¾ÑÑ‚Ð¸','Pasaporte / tarjeta de identificaciÃ³n','Pasaport / kimlik kartÄ±'),(267,'','send','Send','Ø¥Ø±Ø³Ø§Ù„','Sturen','Envoyer','Senden','Ð¿Ð¾ÑÐ»Ð°Ñ‚ÑŒ','Enviar','gÃ¶ndermek'),(268,'','your_photo_invalid','Your Photo is invalid please select another photo','ØµÙˆØ±ØªÙƒ ØºÙŠØ± ØµØ§Ù„Ø­Ø© ØŒ ÙŠØ±Ø¬Ù‰ ØªØ­Ø¯ÙŠØ¯ ØµÙˆØ±Ø© Ø£Ø®Ø±Ù‰','Uw foto is ongeldig. Selecteer een andere foto','Votre photo n&#039;est pas valide, veuillez sÃ©lectionner une autre photo.','Ihr Foto ist ungÃ¼ltig. Bitte wÃ¤hlen Sie ein anderes Foto aus','Ð’Ð°ÑˆÐ° Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸Ñ Ð½ÐµÐ´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´Ñ€ÑƒÐ³ÑƒÑŽ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸ÑŽ','Tu foto no es vÃ¡lida, selecciona otra foto','FotoÄŸrafÄ±nÄ±z geÃ§ersiz. LÃ¼tfen baÅŸka bir fotoÄŸraf seÃ§'),(269,'','your_ip_invalid','Your ip file is invalid please select another one','Ù…Ù„Ù IP Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ ØºÙŠØ± ØµØ§Ù„Ø­ ØŒ ÙŠØ±Ø¬Ù‰ ØªØ­Ø¯ÙŠØ¯ Ù…Ù„Ù Ø¢Ø®Ø±','Uw IP-bestand is ongeldig. Selecteer een ander bestand','Votre fichier ip n&#039;est pas valide, veuillez en choisir un autre','Ihre IP-Datei ist ungÃ¼ltig. Bitte wÃ¤hlen Sie eine andere aus','Ð’Ð°Ñˆ ip-Ñ„Ð°Ð¹Ð» Ð½ÐµÐ´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÐµÐ½, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ð¹','Su archivo ip no es vÃ¡lido por favor seleccione otro','IP dosyanÄ±z geÃ§ersiz, lÃ¼tfen bir tane daha seÃ§in'),(270,'','request_done','Your verification request soon will be considered!','Ø³ÙŠÙÙ†Ø¸Ø± ÙÙŠ Ø·Ù„Ø¨ Ø§Ù„ØªØ­Ù‚Ù‚ Ù‚Ø±ÙŠØ¨Ù‹Ø§!','Uw verificatieverzoek wordt snel overwogen!','Votre demande de vÃ©rification sera bientÃ´t prise en compte!','Ihre BestÃ¤tigungsanfrage wird bald berÃ¼cksichtigt!','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ðµ ÑÐºÐ¾Ñ€Ð¾ Ð±ÑƒÐ´ÐµÑ‚ Ñ€Ð°ÑÑÐ¼Ð¾Ñ‚Ñ€ÐµÐ½!','Su solicitud de verificaciÃ³n pronto serÃ¡ considerada!','DoÄŸrulama isteÄŸiniz yakÄ±nda dikkate alÄ±nacaktÄ±r!'),(271,'','contact_us','Contact Us','Ø§ØªØµÙ„ Ø¨Ù†Ø§','Neem contact met ons op','Contactez nous','Kontaktiere uns','Ð¡Ð²ÑÐ·Ð°Ñ‚ÑŒÑÑ Ñ Ð½Ð°Ð¼Ð¸','ContÃ¡ctenos','Bizimle iletiÅŸime geÃ§in'),(272,'','email_sent','Your email has been sent','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ','Je e-mail is verzonden','Votre e mail a Ã©tÃ© envoyÃ©','Ihre E-Mail wurde gesendet','Ð’Ð°ÑˆÐµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð±Ñ‹Ð»Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾','Tu correo ha sido enviado','Emailiniz gÃ¶nderildi'),(273,'','embed','Embed','ØªØ¶Ù…ÙŠÙ†','insluiten','IntÃ©grer','Einbetten','Ð²ÑÑ‚Ñ€Ð°Ð¸Ð²Ð°Ñ‚ÑŒ','Empotrar','GÃ¶m'),(274,'','post_m_report','Warning: This post might contain harmful or offensive images or adult (18+) content.','ØªØ­Ø°ÙŠØ±: Ù‚Ø¯ ØªØ­ØªÙˆÙŠ Ù‡Ø°Ù‡ Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ© Ø¹Ù„Ù‰ ØµÙˆØ± Ø¶Ø§Ø±Ø© Ø£Ùˆ Ù…Ø³ÙŠØ¦Ø© Ø£Ùˆ Ù…Ø­ØªÙˆÙ‰ Ù„Ù„Ø¨Ø§Ù„ØºÙŠÙ† (18 Ø¹Ø§Ù…Ù‹Ø§).','Waarschuwing: dit bericht kan schadelijke of aanstootgevende afbeeldingen of inhoud voor volwassenen (18+) bevatten.','Avertissement: Ce message peut contenir des images nuisibles ou offensantes ou du contenu rÃ©servÃ© aux adultes (18 ans et plus).','Warnung: Dieser Beitrag enthÃ¤lt mÃ¶glicherweise schÃ¤dliche oder beleidigende Bilder oder Inhalte fÃ¼r Erwachsene (18+).','ÐŸÑ€ÐµÐ´ÑƒÐ¿Ñ€ÐµÐ¶Ð´ÐµÐ½Ð¸Ðµ. Ð­Ñ‚Ð¾ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ñ‚ÑŒ Ð²Ñ€ÐµÐ´Ð½Ñ‹Ðµ Ð¸Ð»Ð¸ Ð¾ÑÐºÐ¾Ñ€Ð±Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ðµ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ Ð¸Ð»Ð¸ ÐºÐ¾Ð½Ñ‚ÐµÐ½Ñ‚ Ð´Ð»Ñ Ð²Ð·Ñ€Ð¾ÑÐ»Ñ‹Ñ… (18+).','Advertencia: esta publicaciÃ³n puede contener imÃ¡genes daÃ±inas u ofensivas o contenido para adultos (mayores de 18 aÃ±os).','UyarÄ±: Bu yayÄ±n zararlÄ± veya rahatsÄ±z edici resimler veya yetiÅŸkinlere yÃ¶nelik (18+) iÃ§erik barÄ±ndÄ±rÄ±yor olabilir.'),(275,'','skip_step','Or Skip this step for now','Ø£Ùˆ ØªØ®Ø·ÙŠ Ù‡Ø°Ù‡ Ø§Ù„Ø®Ø·ÙˆØ© ÙÙŠ Ø§Ù„ÙˆÙ‚Øª Ø§Ù„Ø­Ø§Ù„ÙŠ','Of sla deze stap nu over','Ou sauter cette Ã©tape pour l&#039;instant','Oder Ãœberspringe diesen Schritt fÃ¼r jetzt','Ð˜Ð»Ð¸ Ð¿Ñ€Ð¾Ð¿ÑƒÑÑ‚Ð¸Ñ‚Ðµ ÑÑ‚Ð¾Ñ‚ ÑˆÐ°Ð³','O Salta este paso por ahora','Veya Åžimdilik bu adÄ±mÄ± atla'),(276,'','save_c','Save &amp; Continue','Ø­ÙØ¸ ÙˆÙ…ØªØ§Ø¨Ø¹Ø©','Opslaan doorgaan','Enregistrer continuer','Speichern fortsetzen','Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ Ð¸ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ','Guardar Continuar','Kaydet ilerle'),(277,'','add_photo_s','Add a photo.','Ø¥Ø¶Ø§ÙØ© ØµÙˆØ±Ø©.','Voeg een foto toe.','Ajouter une photo.','FÃ¼ge ein Foto hinzu.','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ñ„Ð¾Ñ‚Ð¾.','Agregar una foto.','FotoÄŸraf ekle.'),(278,'','tell_us','Tell us about you.','Ø£Ø®Ø¨Ø±Ù†Ø§ Ø¹Ù† Ù†ÙØ³Ùƒ.','Vertel ons over jezelf.','Parlez nous de vous.','ErzÃ¤hl uns von dir.','Ð Ð°ÑÑÐºÐ°Ð¶Ð¸ Ð½Ð°Ð¼ Ð¾ ÑÐµÐ±Ðµ.','CuÃ©ntanos acerca de ti.','Bize hakkÄ±nda bilgi verin.'),(279,'','follow_famous','Follow our famous users.','Ø§ØªØ¨Ø¹ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ø§Ù„Ù…Ø´Ù‡ÙˆØ±ÙŠÙ† Ù„Ø¯ÙŠÙ†Ø§.','Volg onze beroemde gebruikers.','Suivez nos utilisateurs cÃ©lÃ¨bres.','Folge unseren berÃ¼hmten Nutzern.','Ð¡Ð»ÐµÐ´ÑƒÐ¹Ñ‚Ðµ Ð·Ð° Ð½Ð°ÑˆÐ¸Ð¼Ð¸ Ð·Ð½Ð°Ð¼ÐµÐ½Ð¸Ñ‚Ñ‹Ð¼Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼Ð¸.','Sigue a nuestros famosos usuarios.','ÃœnlÃ¼ kullanÄ±cÄ±larÄ±mÄ±zÄ± takip edin.'),(280,'','follow_c','Follow &amp; Continue','Ù…ØªØ§Ø¨Ø¹Ø© ÙˆÙ…ØªØ§Ø¨Ø¹Ø©','Volgen en doorgaan','Suivre et continuer','Folgen Sie und fahren Sie fort','ÐŸÑ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ Ð¸ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ','Seguir, continuar','Takip et ve devam et'),(281,'','manage_sessions','Manage Sessions','Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø¬Ù„Ø³Ø§Øª','Sessies beheren','GÃ©rer les sessions','Sitzungen verwalten','Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐµÐ°Ð½ÑÐ°Ð¼Ð¸','Gestionar sesiones','OturumlarÄ± YÃ¶net'),(282,'','profile_search','Show your profile in search engines','Ø§Ø¹Ø±Ø¶ Ù…Ù„ÙÙƒ Ø§Ù„Ø´Ø®ØµÙŠ ÙÙŠ Ù…Ø­Ø±ÙƒØ§Øª Ø§Ù„Ø¨Ø­Ø«','Toon uw profiel in zoekmachines','Affichez votre profil dans les moteurs de recherche','Zeigen Sie Ihr Profil in Suchmaschinen','ÐŸÐ¾ÐºÐ°Ð·Ñ‹Ð²Ð°Ñ‚ÑŒ ÑÐ²Ð¾Ð¹ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ Ð² Ð¿Ð¾Ð¸ÑÐºÐ¾Ð²Ñ‹Ñ… ÑÐ¸ÑÑ‚ÐµÐ¼Ð°Ñ…','Muestra tu perfil en los buscadores.','Profilinizi arama motorlarÄ±nda gÃ¶ster'),(283,'','reCaptcha_error','Please check the re-captcha','ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ø¥Ø¹Ø§Ø¯Ø© captcha','Controleer de re-captcha','S&#039;il vous plaÃ®t vÃ©rifier le re-captcha','Bitte Ã¼berprÃ¼fe das Re-Captcha','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ Ð¿ÐµÑ€ÐµÐºÐ²Ð°Ð»Ð¸Ñ„Ð¸ÐºÐ°Ñ†Ð¸ÑŽ','Por favor, compruebe el re-captcha','LÃ¼tfen yeniden captchaâ€™yÄ± kontrol edin'),(284,'','username_in_blacklist','The username is blacklisted and not allowed, please choose another username','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ù…Ø¯Ø±Ø¬ ÙÙŠ Ø§Ù„Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø³ÙˆØ¯Ø§Ø¡ ÙˆØºÙŠØ± Ù…Ø³Ù…ÙˆØ­ Ø¨Ù‡ ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ø®ØªÙŠØ§Ø± Ø§Ø³Ù… Ù…Ø³ØªØ®Ø¯Ù… Ø¢Ø®Ø±','De gebruikersnaam staat op de zwarte lijst en is niet toegestaan, kies een andere gebruikersnaam','Le nom d&#039;utilisateur est sur la liste noire et n&#039;est pas autorisÃ©, veuillez choisir un autre nom d&#039;utilisateur.','Der Benutzername ist auf der Blacklist und nicht erlaubt, bitte wÃ¤hle einen anderen Benutzernamen','Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð·Ð°Ð½ÐµÑÐµÐ½Ð¾ Ð² Ñ‡ÐµÑ€Ð½Ñ‹Ð¹ ÑÐ¿Ð¸ÑÐ¾Ðº Ð¸ Ð½Ðµ Ñ€Ð°Ð·Ñ€ÐµÑˆÐµÐ½Ð¾, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ðµ Ð¸Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','El nombre de usuario estÃ¡ en la lista negra y no estÃ¡ permitido, elija otro nombre de usuario','KullanÄ±cÄ± adÄ± kara listede ve izin verilmiyor, lÃ¼tfen baÅŸka bir kullanÄ±cÄ± adÄ± seÃ§in'),(285,'','email_in_blacklist','The email is blacklisted and not allowed, please choose another email','Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ù…Ø¯Ø±Ø¬ ÙÙŠ Ø§Ù„Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø³ÙˆØ¯Ø§Ø¡ ÙˆØºÙŠØ± Ù…Ø³Ù…ÙˆØ­ Ø¨Ù‡ ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ø®ØªÙŠØ§Ø± Ø¨Ø±ÙŠØ¯ Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø¢Ø®Ø±','De e-mail staat op de zwarte lijst en is niet toegestaan, kies een andere e-mail','L&#039;email est sur la liste noire et n&#039;est pas autorisÃ©, veuillez choisir un autre email.','Die E-Mail ist auf der schwarzen Liste und nicht erlaubt. Bitte wÃ¤hlen Sie eine andere E-Mail','Ð­Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð°Ñ Ð¿Ð¾Ñ‡Ñ‚Ð° Ð² Ñ‡ÐµÑ€Ð½Ñ‹Ð¹ ÑÐ¿Ð¸ÑÐ¾Ðº Ð¸ Ð½Ðµ Ñ€Ð°Ð·Ñ€ÐµÑˆÐµÐ½Ð°, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ðµ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ð¸ÑÑŒÐ¼Ð¾','El correo electrÃ³nico estÃ¡ en la lista negra y no estÃ¡ permitido, elija otro correo electrÃ³nico','E-posta kara listeye alÄ±ndÄ± â€‹â€‹ve izin verilmedi, lÃ¼tfen baÅŸka bir e-posta adresi seÃ§in'),(286,'','email_username_in_blacklist','The email or username is blacklisted and not allowed, please choose another email or username','Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø£Ùˆ Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ù…Ø¯Ø±Ø¬ ÙÙŠ Ø§Ù„Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø³ÙˆØ¯Ø§Ø¡ ÙˆØºÙŠØ± Ù…Ø³Ù…ÙˆØ­ Ø¨Ù‡ ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ø®ØªÙŠØ§Ø± Ø¨Ø±ÙŠØ¯ Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø¢Ø®Ø± Ø£Ùˆ Ø§Ø³Ù… Ù…Ø³ØªØ®Ø¯Ù… Ø¢Ø®Ø±','De e-mail of gebruikersnaam staat op de zwarte lijst en is niet toegestaan, kies een andere e-mail of gebruikersnaam','L&#039;email ou le nom d&#039;utilisateur est sur la liste noire et n&#039;est pas autorisÃ©. Veuillez choisir un autre email ou nom d&#039;utilisateur.','Die E-Mail oder der Benutzername ist auf der schwarzen Liste und nicht erlaubt. Bitte wÃ¤hlen Sie eine andere E-Mail oder einen anderen Nutzernamen','Ð­Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð°Ñ Ð¿Ð¾Ñ‡Ñ‚Ð° Ð¸Ð»Ð¸ Ð¸Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð·Ð°Ð½ÐµÑÐµÐ½Ñ‹ Ð² Ñ‡ÐµÑ€Ð½Ñ‹Ð¹ ÑÐ¿Ð¸ÑÐ¾Ðº Ð¸ Ð½Ðµ Ñ€Ð°Ð·Ñ€ÐµÑˆÐµÐ½Ñ‹, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ðµ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ð¸ÑÑŒÐ¼Ð¾ Ð¸Ð»Ð¸ Ð¸Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','El correo electrÃ³nico o nombre de usuario estÃ¡ en la lista negra y no estÃ¡ permitido, elija otro correo electrÃ³nico o nombre de usuario','E-posta veya kullanÄ±cÄ± adÄ± kara listede ve izin verilmiyor, lÃ¼tfen baÅŸka bir e-posta adresi veya kullanÄ±cÄ± adÄ± seÃ§in'),(287,'','ip_in_blacklist','The IP is blacklisted and not allowed','Ø¹Ù†ÙˆØ§Ù† IP Ù…Ø¯Ø±Ø¬ ÙÙŠ Ø§Ù„Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø³ÙˆØ¯Ø§Ø¡ ÙˆØºÙŠØ± Ù…Ø³Ù…ÙˆØ­ Ø¨Ù‡','De IP staat op de zwarte lijst en is niet toegestaan','L&#039;IP est sur la liste noire et non autorisÃ©','Die IP ist auf der schwarzen Liste und nicht erlaubt','IP Ð·Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½ Ð¸ Ð½Ðµ Ñ€Ð°Ð·Ñ€ÐµÑˆÐµÐ½','La IP estÃ¡ en la lista negra y no estÃ¡ permitida','IP kara listede ve izin verilmiyor'),(288,'','click_to_visit','Click to visit','Ø§Ù†Ù‚Ø± Ù„Ø²ÙŠØ§Ø±Ø©','Klik om te bezoeken','Cliquez pour visiter','Klicken Sie, um zu besuchen','ÐÐ°Ð¶Ð¼Ð¸Ñ‚Ðµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ð¾ÑÐµÑ‚Ð¸Ñ‚ÑŒ','Haga clic para visitar','Ziyaret etmek iÃ§in tÄ±klayÄ±n'),(289,'','browser','Browser','Ø§Ù„Ù…ØªØµÙØ­','browser','Navigateur','Browser','Ð±Ñ€Ð°ÑƒÐ·ÐµÑ€','Navegador','TarayÄ±cÄ±'),(290,'','ip_address','IP Address','Ø¹Ù†ÙˆØ§Ù† IP','IP adres','Adresse IP','IP Adresse','ÐÐ¹Ð¿Ð¸ Ð°Ð´Ñ€ÐµÑ','DirecciÃ³n IP','IP adresi'),(291,'','verify_user','Verify User','ØªØ­Ù‚Ù‚ Ù…Ù† Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Verifieer gebruiker','VÃ©rifier l&#039;utilisateur','Benutzer bestÃ¤tigen','ÐŸÑ€Ð¾Ð²ÐµÑ€Ð¸Ñ‚ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','Verificar usuario','KullanÄ±cÄ±yÄ± DoÄŸrula'),(292,'','no_more_activities','No more activities','Ù„Ø§ Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ø£Ù†Ø´Ø·Ø©','Geen activiteiten meer','Pas plus d&#039;activitÃ©s','Keine AktivitÃ¤ten mehr','Ð‘Ð¾Ð»ÑŒÑˆÐµ Ð½Ð¸ÐºÐ°ÐºÐ¸Ñ… Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ð¹','No mas actividades','Daha fazla aktivite yok'),(293,'','activities','Activities','Ø£Ù†Ø´Ø·Ø©','Activiteiten','ActivitÃ©s','AktivitÃ¤ten','Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ','Ocupaciones','faaliyetler'),(294,'','commented_on_post','commented on {user} {post}','Ø¹Ù„Ù‘Ù‚ Ø¹Ù„Ù‰ {user} {post}','hebben gereageerd op {user} {post}','a commentÃ© sur {user} {post}','kommentiert auf {user} {post}','Ð¿Ñ€Ð¾ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ð» {user} {post}','comentÃ³ en {user} {post}','{user} {post} sitesinde yorum yaptÄ±'),(295,'','post','post','Ø¨Ø±ÙŠØ¯','post','poster','Post','ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','enviar','posta'),(296,'','followed_user','started following {user}','Ø¨Ø¯Ø£Øª Ø¨Ø§ØªØ¨Ø§Ø¹ {user}','start met {user}','commencÃ© Ã  suivre {user}','gestartet nach {user}','Ð½Ð°Ñ‡Ð°Ð» {user}','comenzÃ³ a seguir a {user}','{user} takip etmeye baÅŸladÄ±'),(297,'','liked__post','liked {user} {post}','Ø£Ø¹Ø¬Ø¨Ù‡ {user} {post}','vond {user} {post} leuk','aimÃ© {user} {post}','gemocht {user} {post}','Ð¿Ð¾Ð½Ñ€Ð°Ð²Ð¸Ð»Ð¾ÑÑŒ {user} {post}','me gustÃ³ {user} {post}','beÄŸendi {user} {post}'),(298,'','from_camera','Take a picture using webcam','Ø§Ù„ØªÙ‚Ø· ØµÙˆØ±Ø© Ø¨Ø§Ø³ØªØ®Ø¯Ø§Ù… ÙƒØ§Ù…ÙŠØ±Ø§ Ø§Ù„ÙˆÙŠØ¨','Maak een foto met de webcam','Prendre une photo en utilisant webcam','Mach ein Foto mit der Webcam','Ð¡Ð´ÐµÐ»Ð°Ð¹Ñ‚Ðµ ÑÐ½Ð¸Ð¼Ð¾Ðº Ñ Ð¿Ð¾Ð¼Ð¾Ñ‰ÑŒÑŽ Ð²ÐµÐ±-ÐºÐ°Ð¼ÐµÑ€Ñ‹','Toma una foto con la webcam','Web kamerasÄ±nÄ± kullanarak fotoÄŸraf Ã§ek'),(299,'','active','Active','Ù†Ø´ÙŠØ·','Actief','actif','Aktiv','Ð°ÐºÑ‚Ð¸Ð²Ð½Ñ‹Ð¹','Activo','Aktif'),(300,'','no_camera','No camera device found, please make sure the camera is plugged in and the browser has the persmission to use it.','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£ÙŠ ÙƒØ§Ù…ÙŠØ±Ø§ ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªØ£ÙƒØ¯ Ù…Ù† ØªÙˆØµÙŠÙ„ Ø§Ù„ÙƒØ§Ù…ÙŠØ±Ø§ ÙˆØ§Ù„Ù…ØªØµÙØ­ ÙŠØ­ØªÙØ¸ Ø¨Ø§Ø³ØªØ®Ø¯Ø§Ù…Ù‡.','Geen camera-apparaat gevonden, zorg ervoor dat de camera is aangesloten en dat de browser de toestemming heeft om het te gebruiken.','Aucun appareil photo n&#039;a Ã©tÃ© trouvÃ©, assurez-vous que l&#039;appareil photo est branchÃ© et que le navigateur a la permission de l&#039;utiliser.','Kein Kamera-GerÃ¤t gefunden, bitte stellen Sie sicher, dass die Kamera angeschlossen ist und der Browser die Erlaubnis hat, sie zu benutzen.','ÐÐµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾ Ð½Ð¸ Ð¾Ð´Ð½Ð¾Ð³Ð¾ ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð²Ð° ÐºÐ°Ð¼ÐµÑ€Ñ‹, ÑƒÐ±ÐµÐ´Ð¸Ñ‚ÐµÑÑŒ, Ñ‡Ñ‚Ð¾ ÐºÐ°Ð¼ÐµÑ€Ð° Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ð°, Ð¸ Ð±Ñ€Ð°ÑƒÐ·ÐµÑ€ Ð¸Ð¼ÐµÐµÑ‚ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÑŒ ÐµÐ³Ð¾.','No se ha encontrado ningÃºn dispositivo de cÃ¡mara, asegÃºrese de que la cÃ¡mara estÃ© enchufada y que el navegador tenga la capacidad de usarla.','HiÃ§bir kamera cihazÄ± bulunamadÄ±, lÃ¼tfen kameranÄ±n takÄ±lÄ± olduÄŸundan ve tarayÄ±cÄ±nÄ±n onu kullanmak iÃ§in gerekli olduÄŸuna emin olun.'),(301,'','you','You','Ø£Ù†Øª','U','Vous','Sie','Ð’Ñ‹','TÃº','Sen'),(302,'','your','your','Ùƒ','jouw','votre','Ihre','Ð²Ð°Ñˆ','tu','sizin'),(303,'','his','his','Ù„Ù‡','zijn','le sien','seine','ÐµÐ³Ð¾','su','onun'),(304,'','my_affiliates','My Affiliates','Ø§Ù„Ø´Ø±ÙƒØ§Øª Ø§Ù„ØªØ§Ø¨Ø¹Ø© Ù„ÙŠ','Mijn gelieerde partners','Mes affiliÃ©s','Meine Partner','ÐœÐ¾Ð¸ Ñ„Ð¸Ð»Ð¸Ð°Ð»Ñ‹','Mis afiliados','OrtaklarÄ±m'),(305,'','earn_users','Earn up to ${amount} for each user your refer to us !','Ø§Ø±Ø¨Ø­ Ø­ØªÙ‰ $ {ÙƒÙ…ÙŠØ©} Ù„ÙƒÙ„ Ù…Ø³ØªØ®Ø¯Ù… ØªØ­ÙŠÙ„Ù‡ Ø¥Ù„ÙŠÙ†Ø§!','Verdien tot ${amount} voor elke gebruiker die u naar ons verwijst!','Gagnez jusqu&#039;Ã  ${amount} pour chaque utilisateur que vous nous rÃ©fÃ©rez!','Verdienen Sie bis zu ${amount} fÃ¼r jeden Nutzer, den Sie uns empfehlen!','Ð—Ð°Ñ€Ð°Ð±Ð°Ñ‚Ñ‹Ð²Ð°Ð¹Ñ‚Ðµ Ð´Ð¾ ${amount} Ð·Ð° ÐºÐ°Ð¶Ð´Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ, ÐºÐ¾Ñ‚Ð¾Ñ€Ð¾Ð³Ð¾ Ð²Ñ‹ Ð¾Ð±Ñ€Ð°Ñ‰Ð°ÐµÑ‚ÐµÑÑŒ Ðº Ð½Ð°Ð¼!','Â¡Gane hasta ${amount} por cada usuario que nos refiera!','Bize yÃ¶nlendirdiÄŸiniz her kullanÄ±cÄ± iÃ§in ${amount} kadar kazanÄ±n!'),(306,'','earn_users_pro','Earn up to ${amount} for each user your refer to us and will subscribe to any of our pro packages.','Ø§Ø±Ø¨Ø­ Ù…Ø¨Ù„ØºÙ‹Ø§ ÙŠØµÙ„ Ø¥Ù„Ù‰ {{} Ù…Ø¨Ù„Øº Ù„ÙƒÙ„ Ù…Ø³ØªØ®Ø¯Ù… ØªÙ‚ÙˆÙ… Ø¨Ø¥Ø­Ø§Ù„ØªÙ‡ Ø¥Ù„ÙŠÙ†Ø§ ÙˆØ³ÙŠØ´ØªØ±Ùƒ ÙÙŠ Ø£ÙŠ Ù…Ù† Ø­Ø²Ù…Ù†Ø§ Ø§Ù„Ø§Ø­ØªØ±Ø§ÙÙŠØ©.','Verdien tot ${amount} voor elke gebruiker die naar ons verwijst en abonneert zich op een van onze pro-pakketten.','Gagnez jusqu&#039;Ã  ${amount} pour chaque utilisateur que vous nous rÃ©fÃ©rez et vous vous abonner Ã  l&#039;un de nos forfaits professionnels.','Verdienen Sie bis zu ${amount} fÃ¼r jeden Nutzer, den Sie uns nennen, und abonnieren Sie eines unserer Profi-Pakete.','Ð—Ð°Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ð¹Ñ‚Ðµ Ð´Ð¾ ${amount} Ð·Ð° ÐºÐ°Ð¶Ð´Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ, ÐºÐ¾Ñ‚Ð¾Ñ€Ð¾Ð³Ð¾ Ð²Ñ‹ Ð¿Ñ€Ð¸Ð³Ð»Ð°ÑÐ¸Ð»Ð¸, Ð¸ Ð¿Ð¾Ð´Ð¿Ð¸ÑˆÐ¸Ñ‚ÐµÑÑŒ Ð½Ð° Ð»ÑŽÐ±Ð¾Ð¹ Ð¸Ð· Ð½Ð°ÑˆÐ¸Ñ… Ð¿Ñ€Ð¾Ñ„ÐµÑÑÐ¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ñ‹Ñ… Ð¿Ð°ÐºÐµÑ‚Ð¾Ð².','Gane hasta ${amount} por cada usuario que nos refiera y se suscribirÃ¡ a cualquiera de nuestros paquetes profesionales.','Bize yÃ¶nlendirdiÄŸiniz her kullanÄ±cÄ± iÃ§in ${amount} kadar kazanÄ±n ve profesyonel paketlerimize abone olun.'),(307,'','your_ref_link','Your affiliate link is','Ø§Ù„Ø±Ø§Ø¨Ø· Ø§Ù„ØªØ§Ø¨Ø¹ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ù‡Ùˆ','Uw affiliate link is','Votre lien d&#039;affiliÃ© est','Ihr Affiliate-Link lautet','Ð’Ð°ÑˆÐ° Ð¿Ð°Ñ€Ñ‚Ð½ÐµÑ€ÑÐºÐ°Ñ ÑÑÑ‹Ð»ÐºÐ°','Su enlace de afiliado es','OrtaklÄ±k baÄŸlantÄ±nÄ±z'),(308,'','share_to','Share to','Ø­ØµØ© Ù„','Delen naar','Partager Ã ','Teilen mit','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ñ‚ÑŒÑÑ Ñ','Compartir a','PaylaÅŸ'),(309,'','liked_my_comment','liked my comment','Ø£Ø¹Ø¬Ø¨Ù†ÙŠ ØªØ¹Ù„ÙŠÙ‚ÙŠ','vond mijn reactie leuk','aimÃ© mon commentaire','mochte mein Kommentar','Ð¿Ð¾Ð½Ñ€Ð°Ð²Ð¸Ð»ÑÑ Ð¼Ð¾Ð¹ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','me gustÃ³ mi comentario','yorumumu beÄŸendim'),(310,'','liked_ur_comment','liked your comment','Ø£Ø¹Ø¬Ø¨Ùƒ ØªØ¹Ù„ÙŠÙ‚Ùƒ','vond je reactie leuk','aimÃ© ton commentaire','mochte dein Kommentar','Ð¿Ð¾Ð½Ñ€Ð°Ð²Ð¸Ð»ÑÑ Ñ‚Ð²Ð¾Ð¹ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','me gustÃ³ tu comentario','yorumunu beÄŸendim'),(311,'','reply_ur_comment','replied to your comment','Ø±Ø¯ Ø¹Ù„Ù‰ ØªØ¹Ù„ÙŠÙ‚Ùƒ','heeft op je reactie gereageerd','rÃ©pondu Ã  votre commentaire','hat auf deinen Kommentar geantwortet','Ð¾Ñ‚Ð²ÐµÑ‚Ð¸Ð» Ð½Ð° Ð²Ð°Ñˆ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','respondiÃ³ a tu comentario','yorumuna cevap verdi'),(312,'','replied_my_comment','replied to my comment','Ø±Ø¯ Ø¹Ù„Ù‰ ØªØ¹Ù„ÙŠÙ‚ÙŠ','reageerde op mijn opmerking','a rÃ©pondu Ã  mon commentaire','antwortete auf meinen Kommentar','Ð¾Ñ‚Ð²ÐµÑ‚Ð¸Ð» Ð½Ð° Ð¼Ð¾Ð¹ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','respondiÃ³ a mi comentario','yorumuma cevap verdi'),(313,'','go_pro','Go Pro','Ø¬Ùˆ Ø¨Ø±Ùˆ','Ga Pro','Go Pro','Pro gehen','Go Pro','Go Pro','Pro git'),(314,'','upgrade_to_pro','Upgrade To Pro','Ø§Ù„ØªØ·ÙˆØ± Ù„Ù„Ø§Ø­ØªØ±Ø§ÙÙŠØ©','Upgraden naar Pro','Passer Ã  Pro','Upgrade auf Pro','ÐžÐ±Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ð´Ð¾ Pro','Actualizar a Pro','Pro&#039;ya yÃ¼kselt'),(315,'','upgrade','Upgrade','ØªØ·ÙˆÙŠØ±','Upgrade','AmÃ©liorer','Aktualisierung','ÐžÐ±Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ','Mejorar','YÃ¼kselt'),(316,'','choose_method','Choose a payment method','Ø§Ø®ØªÙŠØ§Ø± Ø·Ø±ÙŠÙ‚Ø© Ø§Ù„Ø¯ÙØ¹','Kies een betaal methode','Choisissez une mÃ©thode de paiement','WÃ¤hlen Sie eine Bezahlungsart','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ ÑÐ¿Ð¾ÑÐ¾Ð± Ð¾Ð¿Ð»Ð°Ñ‚Ñ‹','Elija un mÃ©todo de pago','Bir Ã¶deme yÃ¶ntemi seÃ§in'),(317,'','upgraded','Upgraded','ØªØ±Ù‚ÙŠØ©','Upgraded','Mis Ã  niveau','AufgerÃ¼stet','ÐœÐ¾Ð´ÐµÑ€Ð½Ð¸Ð·Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¹','Actualizado','YÃ¼kseltilmiÅŸ'),(318,'','c_payment','Confirming your payment, please wait..','Ù„ØªØ£ÙƒÙŠØ¯ Ø§Ù„Ø¯ÙØ¹ ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ù„Ø§Ù†ØªØ¸Ø§Ø± ..','Bevestiging van uw betaling, even geduld aub ..','Confirmant votre paiement, veuillez patienter ..','BestÃ¤tigung Ihrer Zahlung, bitte warten Sie ..','ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ðµ Ð¾Ð¿Ð»Ð°Ñ‚Ñ‹, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð´Ð¾Ð¶Ð´Ð¸Ñ‚Ðµ ..','Confirmando su pago, por favor espere ..','Ã–demenizi onaylayÄ±n, lÃ¼tfen bekleyin ..'),(319,'','payment_declined','Payment declined, please try again later.','ØªÙ… Ø±ÙØ¶ Ø§Ù„Ø¯ÙØ¹ ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ù…Ø±Ø© Ø£Ø®Ø±Ù‰ Ù„Ø§Ø­Ù‚Ù‹Ø§.','Betaling geweigerd. Probeer het later opnieuw.','Paiement refusÃ©, veuillez rÃ©essayer plus tard.','Zahlung abgelehnt, bitte versuchen Sie es spÃ¤ter erneut.','ÐŸÐ»Ð°Ñ‚ÐµÐ¶ Ð¾Ñ‚ÐºÐ»Ð¾Ð½ÐµÐ½, Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÑƒ Ð¿Ð¾Ð·Ð¶Ðµ.','Pago rechazado, intÃ©ntalo de nuevo mÃ¡s tarde.','Ã–deme reddedildi, lÃ¼tfen daha sonra tekrar deneyin.'),(320,'','bank_transfer','Bank transfer','Ø§Ù„ØªØ­ÙˆÙŠÙ„ Ø§Ù„Ù…ØµØ±ÙÙŠ','overschrijving','virement','BankÃ¼berweisung','Ð±Ð°Ð½ÐºÐ¾Ð²ÑÐºÐ¸Ð¹ Ð¿ÐµÑ€ÐµÐ²Ð¾Ð´','transferencia bancaria','banka transferi'),(321,'','bank_transfer_request','Your request has been successfully sent, we will notify you once it&#039;s approved.','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø·Ù„Ø¨Ùƒ Ø¨Ù†Ø¬Ø§Ø­ ØŒ ÙˆØ³ÙˆÙ Ù†Ø®Ø·Ø±Ùƒ Ø¨Ù…Ø¬Ø±Ø¯ Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„ÙŠÙ‡.','Uw verzoek is succesvol verzonden, wij zullen u op de hoogte brengen zodra het is goedgekeurd.','Votre demande a Ã©tÃ© envoyÃ©e avec succÃ¨s, nous vous en informerons une fois approuvÃ©e.','Ihre Anfrage wurde erfolgreich gesendet, wir werden Sie benachrichtigen, sobald sie genehmigt wurde.','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½, Ð¼Ñ‹ ÑÐ¾Ð¾Ð±Ñ‰Ð¸Ð¼ Ð²Ð°Ð¼, ÐºÐ°Ðº Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ð¾Ð½ Ð±ÑƒÐ´ÐµÑ‚ Ð¾Ð´Ð¾Ð±Ñ€ÐµÐ½.','Su solicitud ha sido enviada exitosamente, le notificaremos una vez que sea aprobada.','Ä°steÄŸiniz baÅŸarÄ±yla gÃ¶nderildi, onaylandÄ±ÄŸÄ±nda size bildireceÄŸiz.'),(322,'','paypal','PayPal','Ø¨Ø§ÙŠ Ø¨Ø§Ù„','PayPal','Pay Pal','PayPal','PayPal','PayPal','PayPal'),(323,'','credit_card','Credit Card','Ø¨Ø·Ø§Ù‚Ø© Ø§Ù„Ø§Ø¦ØªÙ…Ø§Ù†','Kredietkaart','Carte de crÃ©dit','Kreditkarte','ÐšÑ€ÐµÐ´Ð¸Ñ‚Ð½Ð°Ñ ÐºÐ°Ñ€Ñ‚Ð°','Tarjeta de crÃ©dito','Kredi kartÄ±'),(324,'','pro_members','Pro Members','Ø§Ù„Ø£Ø¹Ø¶Ø§Ø¡ Ø§Ù„Ù…Ø­ØªØ±ÙÙŠÙ†','Pro-leden','Membres Pro','Pro Mitglieder','ÐŸÑ€Ð¾ Ð§Ð»ÐµÐ½Ñ‹','Miembros Pro','Pro Ãœyeler'),(325,'','boost_post','Boost Post','ÙŠØ¹Ù„Ù† Ù…Ù†Ø´ÙˆØ±Ø§','Boostpost','Boost Post','Boost Post','Boost Post','Boost Post','GÃ¶nderiyi ArtÄ±r'),(326,'','unboost_post','UnBoost Post','Ø¥Ù„ØºØ§Ø¡ Ù†Ø´Ø± Ø¨ÙˆØ³Øª','UnBoost-bericht','UnBoost Post','UnBoost Post','UnBoost Post','Publicar unBoost','GÃ¶nderiyi KaldÄ±r'),(327,'','new_profile','Pro Profile','Ø¨Ø±Ùˆ Ø§Ù„Ø´Ø®ØµÙŠ','Pro profiel','Profil pro','Pro-Profil','ÐŸÑ€Ð¾ ÐŸÑ€Ð¾Ñ„Ð¸Ð»ÑŒ','Pro Profile','Pro Profili'),(328,'','default_profile','Default Profile','Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ Ø§Ù„Ø§ÙØªØ±Ø§Ø¶ÙŠ','Standaard profiel','Profil par dÃ©faut','Standard Profil','ÐŸÑ€Ð¾Ñ„Ð¸Ð»ÑŒ Ð¿Ð¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ','Perfil por defecto','VarsayÄ±lan Profil'),(329,'','profile_style','Unique Profile Style','Ù†Ù…Ø· Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ Ø§Ù„ÙØ±ÙŠØ¯','Unieke profielstijl','Style de profil unique','Einzigartiger Profilstil','Ð£Ð½Ð¸ÐºÐ°Ð»ÑŒÐ½Ñ‹Ð¹ ÑÑ‚Ð¸Ð»ÑŒ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ','Estilo de perfil Ãºnico','Benzersiz Profil Stili'),(330,'','pro_member','Pro Member','Ø¹Ø¶Ùˆ Ù…Ø­ØªØ±Ù','Pro Lid','Membre Pro','Pro-Mitglied','Pro Member','Miembro Pro','Pro Ãœyesi'),(331,'','boosted_posts','Boosted Posts','Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª Ø§Ù„Ù…Ø¹Ø²Ø²Ø©','Versterkte berichten','Messages boostÃ©s','Boosted Posts','Ð£ÑÐ¸Ð»ÐµÐ½Ð½Ñ‹Ðµ Ð¿Ð¾ÑÑ‚Ñ‹','Publicaciones mejoradas','YÃ¼kseltilmiÅŸ GÃ¶nderiler'),(332,'','wallet','Wallet','Ù…Ø­ÙØ¸Ø© Ù†Ù‚ÙˆØ¯','Portemonnee','Portefeuille','Brieftasche','Ð‘ÑƒÐ¼Ð°Ð¶Ð½Ð¸Ðº','Billetera','CÃ¼zdan'),(333,'','bank_decline','Your bank receipt has been declined!','ØªÙ… Ø±ÙØ¶ Ø¥ÙŠØµØ§Ù„Ùƒ Ø§Ù„Ù…ØµØ±ÙÙŠ!','Uw bankbewijs is geweigerd!','Votre ticket de banque a Ã©tÃ© refusÃ©!','Ihr Bankbeleg wurde abgelehnt!','Ð’Ð°ÑˆÐ° Ð±Ð°Ð½ÐºÐ¾Ð²ÑÐºÐ°Ñ ÐºÐ²Ð¸Ñ‚Ð°Ð½Ñ†Ð¸Ñ Ð±Ñ‹Ð»Ð° Ð¾Ñ‚ÐºÐ»Ð¾Ð½ÐµÐ½Ð°!','Su recibo bancario ha sido rechazado!','Banka dekontunuz reddedildi!'),(334,'','bank_pro','Your bank receipt has been approved!','ØªÙ…Øª Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„Ù‰ Ø¥ÙŠØµØ§Ù„Ùƒ Ø§Ù„Ù…ØµØ±ÙÙŠ!','Uw bank-factuur is goedgekeurd!','Votre reÃ§u de banque a Ã©tÃ© approuvÃ©!','Ihre Bankquittung wurde genehmigt!','Ð’Ð°ÑˆÐ° Ð±Ð°Ð½ÐºÐ¾Ð²ÑÐºÐ°Ñ ÐºÐ²Ð¸Ñ‚Ð°Ð½Ñ†Ð¸Ñ Ð±Ñ‹Ð»Ð° Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð°!','Su recibo bancario ha sido aprobado!','Banka dekontunuz onaylandÄ±!'),(335,'','advertising','Advertising','Ø¥Ø¹Ù„Ø§Ù†','Advertising','La publicitÃ©','Werbung','Ñ€ÐµÐºÐ»Ð°Ð¼Ð°','Publicidad','reklÃ¢m'),(336,'','id','ID','Ù‡ÙˆÙŠØ© Ø´Ø®ØµÙŠØ©','ID kaart','ID','ICH WÃœRDE','Ð¯ Ð‘Ð«','CARNÃ‰ DE IDENTIDAD','Ä°D'),(337,'','company','Company','Ø´Ø±ÙƒØ©','Bedrijf','Entreprise','Unternehmen','ÐšÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ','Empresa','ÅŸirket'),(338,'','bidding','Bidding','Ù…Ø²Ø§ÙŠØ¯Ø©','bod','EnchÃ¨re','Bieten','Ñ‚Ð¾Ñ€Ð³Ð¸','Ofertas','teklif verme'),(339,'','clicks','Clicks','Ù†Ù‚Ø±Ø§Øª','klikken','Clics','Klicks','Ñ‰ÐµÐ»Ñ‡ÐºÐ¸','Clics','TÄ±klanma'),(340,'','views','Views','Ø§Ù„Ø¢Ø±Ø§Ø¡','Keer bekeken','Des vues','Ansichten','ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€Ñ‹','Puntos de vista','GÃ¶rÃ¼nÃ¼mler'),(341,'','status','Status','Ø§Ù„Ø­Ø§Ù„Ø©','staat','Statut','Status','Ð¡Ñ‚Ð°Ñ‚ÑƒÑ','Estado','durum'),(342,'','action','Action','Ø¹Ù…Ù„','Actie','action','Aktion','Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ðµ','AcciÃ³n','Aksiyon'),(343,'','create','Create','Ø®Ù„Ù‚','creÃ«ren','CrÃ©er','Erstellen','Ð¡Ð¾Ð·Ð´Ð°Ð¹Ñ‚Ðµ','Crear','yaratmak'),(344,'','url','Target URL','Ø§Ù„Ø±Ø§Ø¨Ø·','Doel-URL','Cible URL','Ziel-URL','Ð¦ÐµÐ»ÐµÐ²Ð¾Ð¹ URL','URL de destino','Hedef URL'),(345,'','title','Title','Ø¹Ù†ÙˆØ§Ù†','Titel','Titre','Titel','Ð·Ð°Ð³Ð»Ð°Ð²Ð¸Ðµ','TÃ­tulo','BaÅŸlÄ±k'),(346,'','description','Description','ÙˆØµÙ','Omschrijving','La description','Beschreibung','ÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ','DescripciÃ³n','AÃ§Ä±klama'),(347,'','location','Location','Ù…ÙˆÙ‚Ø¹Ùƒ','Plaats','Emplacement','Ort','ÐœÐµÑÑ‚Ð¾ Ð½Ð°Ñ…Ð¾Ð¶Ð´ÐµÐ½Ð¸Ñ','UbicaciÃ³n','yer'),(348,'','pay_per_click','Pay Per Click ({{PRICE}})','Ø§Ù„Ø¯ÙØ¹ Ø¨Ø§Ù„Ù†Ù‚Ø±Ø© ({{PRICE}})','Betaal per klik ({{PRICE}})','Pay Per Click ({{PRIX}})','Pay Per Click ({{PRICE}})','ÐžÐ¿Ð»Ð°Ñ‚Ð° Ð·Ð° ÐºÐ»Ð¸Ðº ({{PRICE}})','Pago por clic ({{PRICE}})','TÄ±klama BaÅŸÄ±na Ã–deme ({{PRICE}})'),(349,'','pay_per_imprssion','Pay Per Impression ({{PRICE}})','Ø§Ù„Ø¯ÙØ¹ Ù„ÙƒÙ„ Ø¸Ù‡ÙˆØ± ({{PRICE}})','Betaal per vertoning ({{PRICE}})','Paiement par impression ({{PRICE}})','Pay Per Impression ({{PRICE}})','ÐžÐ¿Ð»Ð°Ñ‚Ð° Ð·Ð° Ð¿Ð¾ÐºÐ°Ð· ({{PRICE}})','Pago por impresiÃ³n ({{PRICE}})','GÃ¶sterim BaÅŸÄ±na Ã–deme ({{PRICE}})'),(350,'','sidebar','Sidebar','Ø§Ù„Ø´Ø±ÙŠØ· Ø§Ù„Ø¬Ø§Ù†Ø¨ÙŠ','sidebar','Barre latÃ©rale','Seitenleiste','Ð‘Ð¾ÐºÐ¾Ð²Ð°Ñ Ð¿Ð°Ð½ÐµÐ»ÑŒ','Barra lateral','Kenar Ã§ubuÄŸu'),(351,'','placement','Placement','ØªØ­Ø¯ÙŠØ¯ Ù…Ø³ØªÙˆÙ‰','Plaatsing','Placement','Platzierung','Ñ€Ð°Ð·Ð¼ÐµÑ‰ÐµÐ½Ð¸Ðµ','ColocaciÃ³n','YerleÅŸtirme'),(352,'','upload_file','Upload Photo','Ø­Ù…Ù„ Ø§Ù„ØµÙˆØ±Ø©','Upload foto','Envoyer la photo','Foto hochladen','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ñ„Ð¾Ñ‚Ð¾','Subir foto','FotoÄŸraf yÃ¼kle'),(353,'','submit','Submit','Ø®Ø¶Ø¹','voorleggen','Soumettre','einreichen','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ','Enviar','GÃ¶nder'),(354,'','url_invalid','Please use a valid URL.','ÙŠØ±Ø¬Ù‰ Ø§Ø³ØªØ®Ø¯Ø§Ù… Ø¹Ù†ÙˆØ§Ù† URL ØµØ§Ù„Ø­.','Gebruik alstublieft een geldige URL.','Veuillez utiliser une URL valide.','Bitte verwenden Sie eine gÃ¼ltige URL.','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐ¹Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ URL.','Por favor, use una URL vÃ¡lida.','LÃ¼tfen geÃ§erli bir URL kullanÄ±n.'),(355,'','top_wallet','Please top up your wallet.','ÙŠØ±Ø¬Ù‰ ØªØ¹Ø¨Ø¦Ø© Ù…Ø­ÙØ¸ØªÙƒ.','Gelieve uw portemonnee te herladen.','S&#039;il vous plaÃ®t recharger votre portefeuille.','Bitte fÃ¼llen Sie Ihre GeldbÃ¶rse auf.','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð¿Ð¾Ð»Ð½Ð¸Ñ‚Ðµ ÑÐ²Ð¾Ð¹ ÐºÐ¾ÑˆÐµÐ»ÐµÐº.','Por favor recargue su billetera.','LÃ¼tfen cÃ¼zdanÄ±nÄ± doldur.'),(356,'','ad_created','Your ad has been successfully created.','ØªÙ… Ø¥Ù†Ø´Ø§Ø¡ Ø¥Ø¹Ù„Ø§Ù†Ùƒ Ø¨Ù†Ø¬Ø§Ø­.','Uw advertentie is succesvol gemaakt.','Votre annonce a Ã©tÃ© crÃ©Ã©e avec succÃ¨s.','Ihre Anzeige wurde erfolgreich erstellt.','Ð’Ð°ÑˆÐµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ Ð±Ñ‹Ð»Ð¾ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑÐ¾Ð·Ð´Ð°Ð½Ð¾.','Su anuncio ha sido creado con Ã©xito.','ReklamÄ±nÄ±z baÅŸarÄ±yla oluÅŸturuldu.'),(357,'','all','All','Ø§Ù„ÙƒÙ„','Allemaal','Tout','Alles','Ð’ÑÐµ','Todos','HerÅŸey'),(358,'','media_not_supported','Media file is not supported.','Ù…Ù„Ù Ø§Ù„ÙˆØ³Ø§Ø¦Ø· ØºÙŠØ± Ù…Ø¯Ø¹ÙˆÙ….','Mediabestand wordt niet ondersteund.','Le fichier multimÃ©dia n&#039;est pas pris en charge.','Mediendatei wird nicht unterstÃ¼tzt.','ÐœÐµÐ´Ð¸Ð°-Ñ„Ð°Ð¹Ð» Ð½Ðµ Ð¿Ð¾Ð´Ð´ÐµÑ€Ð¶Ð¸Ð²Ð°ÐµÑ‚ÑÑ.','El archivo multimedia no es compatible.','Medya dosyasÄ± desteklenmiyor.'),(359,'','ad_edited','Your ad has been successfully updated.','ØªÙ… ØªØ­Ø¯ÙŠØ« Ø¥Ø¹Ù„Ø§Ù†Ùƒ Ø¨Ù†Ø¬Ø§Ø­.','Uw advertentie is succesvol bijgewerkt.','Votre annonce a Ã©tÃ© mise Ã  jour avec succÃ¨s.','Ihre Anzeige wurde erfolgreich aktualisiert.','Ð’Ð°ÑˆÐµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ Ð±Ñ‹Ð»Ð¾ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¾.','Su anuncio ha sido actualizado con Ã©xito.','ReklamÄ±nÄ±z baÅŸarÄ±yla gÃ¼ncellendi.'),(360,'','ad_not_found','Ad not found.','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†.','Advertentie niet gevonden.','Annonce non trouvÃ©e.','Anzeige nicht gefunden','ÐžÐ±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾.','Anuncio no encontrado.','Reklam bulunamadÄ±.'),(361,'','not_active','Not Active','ØºÙŠØ± Ù†Ø´ÙŠØ·','Niet actief','Pas actif','Nicht aktiv','ÐÐµ Ð°ÐºÑ‚Ð¸Ð²ÐµÐ½','No activo','Aktif deÄŸil'),(362,'','delete_ad','Delete Ad','Ø­Ø°Ù Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†','Advertentie verwijderen','Supprimer une annonce','Anzeige lÃ¶schen','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ','Eliminar anuncio','ReklamÄ± Sil'),(363,'','confirm_del_ad','Are you sure you want to delete this ad? this action can not be undo.','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ø§ Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†ØŸ Ù„Ø§ ÙŠÙ…ÙƒÙ† Ø§Ù„ØªØ±Ø§Ø¬Ø¹ Ø¹Ù† Ù‡Ø°Ø§ Ø§Ù„Ø¥Ø¬Ø±Ø§Ø¡.','Weet je zeker dat je deze advertentie wilt verwijderen? deze actie kan niet ongedaan worden gemaakt.','ÃŠtes-vous sÃ»r de vouloir supprimer cette annonce? cette action ne peut pas Ãªtre annulÃ©e.','MÃ¶chten Sie diese Anzeige wirklich lÃ¶schen? Diese Aktion kann nicht rÃ¼ckgÃ¤ngig gemacht werden.','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ñƒ Ñ€ÐµÐºÐ»Ð°Ð¼Ñƒ? ÑÑ‚Ð¾ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ðµ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð¾Ñ‚Ð¼ÐµÐ½ÐµÐ½Ð¾.','Â¿EstÃ¡s seguro de que quieres eliminar esta publicidad? Esta acciÃ³n no se puede deshacer.','Bu reklamÄ± silmek istediÄŸinize emin misiniz? bu iÅŸlem geri alÄ±namaz.'),(364,'','edit_ad','Edit Ad','ØªØ­Ø±ÙŠØ± Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†','Bewerk advertentie','Modifier une annonce','Anzeige bearbeiten','Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ','Editar Anuncio','ReklamÄ± DÃ¼zenle'),(365,'','sponsored','Sponsored','Ø¨Ø±Ø¹Ø§ÙŠØ©','Sponsored','SponsorisÃ©','Gesponsert','Ð ÐµÐºÐ»Ð°Ð¼Ð½Ñ‹Ðµ','Patrocinado','Sponsor'),(366,'','featured_member','Featured member','Ø¹Ø¶Ùˆ Ù…Ù…ÙŠØ²','Uitgelicht lid','Membre vedette','Vorgestelltes Mitglied','Ð˜Ð·Ð±Ñ€Ð°Ð½Ð½Ñ‹Ð¹ ÑƒÑ‡Ð°ÑÑ‚Ð½Ð¸Ðº','Miembro destacado','Ã–ne Ã§Ä±kan Ã¼ye'),(367,'','verified_badge','Verified badge','Ø´Ø§Ø±Ø© Ø§Ù„ØªØ­Ù‚Ù‚','Geverifieerde badge','Badge vÃ©rifiÃ©','Verifizierter Ausweis','ÐŸÑ€Ð¾Ð²ÐµÑ€ÐµÐ½Ð½Ñ‹Ð¹ Ð·Ð½Ð°Ñ‡Ð¾Ðº','Insignia verificada','DoÄŸrulanmÄ±ÅŸ rozet'),(368,'','posts_promotion','Posts promotion','Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª Ø§Ù„ØªØ±ÙˆÙŠØ¬','Promotie van berichten','Postes en promotion','BeitrÃ¤ge Promotion','ÐŸÑ€Ð¾Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ðµ Ð¿Ð¾ÑÑ‚Ð¾Ð²','Promocion de publicaciones','YayÄ±n promosyonu'),(369,'','profile_Style','Unique Profile Style','Ù†Ù…Ø· Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ Ø§Ù„ÙØ±ÙŠØ¯','Unieke profielstijl','Style de profil unique','Einzigartiger Profilstil','Ð£Ð½Ð¸ÐºÐ°Ð»ÑŒÐ½Ñ‹Ð¹ ÑÑ‚Ð¸Ð»ÑŒ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ','Estilo de perfil Ãºnico','Benzersiz Profil Stili'),(370,'','please_wait','Please Wait..','Ø§Ø±Ø¬ÙˆÙƒ Ø§Ù†ØªØ¸Ø±..','Even geduld aub..','S&#039;il vous plaÃ®t, attendez..','Warten Sie mal..','ÐŸÐ¾Ð´Ð¾Ð¶Ð´Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°..','Por favor espera..','LÃ¼tfen bekle..'),(371,'','business_account','Business account','Ø­Ø³Ø§Ø¨ Ø§Ù„Ø£Ø¹Ù…Ø§Ù„','Zakelijke account','Compte commercial','GeschÃ¤ftskonto','Ð‘Ð¸Ð·Ð½ÐµÑ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚','Cuenta de negocios','Ä°ÅŸ hesabÄ±'),(372,'','account_analytics','Account analytics','ØªØ­Ù„ÙŠÙ„Ø§Øª Ø§Ù„Ø­Ø³Ø§Ø¨','Accountanalyse','Analyse de compte','Kontoanalyse','ÐÐ½Ð°Ð»Ð¸Ñ‚Ð¸ÐºÐ° Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚Ð°','AnÃ¡lisis de cuentas','Hesap analitiÄŸi'),(373,'','today','Today','Ø§Ù„ÙŠÙˆÙ…','Vandaag','Aujourd&#039;hui','Heute','ÑÐµÐ³Ð¾Ð´Ð½Ñ','Hoy','BugÃ¼n'),(374,'','this_week','This Week','Ù‡Ø°Ø§ Ø§Ù„Ø§Ø³Ø¨ÙˆØ¹','Deze week','Cette semaine','Diese Woche','ÐÐ° ÑÑ‚Ð¾Ð¹ Ð½ÐµÐ´ÐµÐ»Ðµ','Esta semana','Bu hafta'),(375,'','this_month','This Month','Ù‡Ø°Ø§ Ø§Ù„Ø´Ù‡Ø±','Deze maand','Ce mois-ci','Diesen Monat','Ð­Ñ‚Ð¾Ñ‚ Ð¼ÐµÑÑÑ†','Este mes','Bu ay'),(376,'','this_year','This Year','Ù‡Ø°Ø§ Ø§Ù„Ø¹Ø§Ù…','Dit jaar','Cette annÃ©e','Dieses Jahr','Ð’ ÑÑ‚Ð¾Ð¼ Ð³Ð¾Ð´Ñƒ','Este aÃ±o','Bu yÄ±l'),(377,'','withdraw','Withdrawal','Ø§Ù†Ø³Ø­Ø§Ø¨','het terugtrekken','Retrait','RÃ¼ckzug','Ð’Ñ‹Ð²Ð¾Ð´','Retirada','Para Ã§ekme'),(378,'','available_balance','Available Balance','Ø§Ù„Ø±ØµÙŠØ¯ Ø§Ù„Ù…ØªÙˆÙØ±','beschikbaar saldo','Solde disponible','VerfÃ¼gbares Guthaben','Ð´Ð¾ÑÑ‚ÑƒÐ¿Ð½Ñ‹Ðµ ÑÑ€ÐµÐ´ÑÑ‚Ð²Ð°','Saldo disponible','Kalan bakiye'),(379,'','paypal_email','PayPal E-mail','Ø¨Ø±ÙŠØ¯ Ø¨Ø§ÙŠ Ø¨Ø§Ù„','Paypal E-mail','Email Paypal','Paypal Email','PayPal E-mail','E-mail de Paypal','PayPal E-posta'),(380,'','amount','Amount','ÙƒÙ…ÙŠØ©','Bedrag','Montant','Menge','ÐšÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾','Cantidad','Miktar'),(381,'','min','Min','Ø¯Ù‚ÙŠÙ‚Ø©','min','Min','Mindest','Min','Min','Min'),(382,'','amount_more_balance','The requested amount can not be more than your actual balance.','Ù„Ø§ ÙŠÙ…ÙƒÙ† Ø£Ù† ÙŠÙƒÙˆÙ† Ø§Ù„Ù…Ø¨Ù„Øº Ø§Ù„Ù…Ø·Ù„ÙˆØ¨ Ø£ÙƒØ«Ø± Ù…Ù† Ø±ØµÙŠØ¯Ùƒ Ø§Ù„ÙØ¹Ù„ÙŠ.','Het gevraagde bedrag kan niet meer zijn dan uw werkelijke saldo.','Le montant demandÃ© ne peut Ãªtre supÃ©rieur Ã  votre solde rÃ©el.','Der angeforderte Betrag kann nicht mehr als Ihr tatsÃ¤chlicher Kontostand betragen.','Ð—Ð°Ð¿Ñ€Ð°ÑˆÐ¸Ð²Ð°ÐµÐ¼Ð°Ñ ÑÑƒÐ¼Ð¼Ð° Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð¿Ñ€ÐµÐ²Ñ‹ÑˆÐ°Ñ‚ÑŒ Ð²Ð°Ñˆ Ñ„Ð°ÐºÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ð¹ Ð±Ð°Ð»Ð°Ð½Ñ.','La cantidad solicitada no puede ser mÃ¡s que su saldo real.','Ä°stenen miktar, gerÃ§ek bakiyenizden fazla olamaz.'),(383,'','amount_less_50','The requested amount can not be less than','Ø§Ù„Ù…Ø¨Ù„Øº Ø§Ù„Ù…Ø·Ù„ÙˆØ¨ Ù„Ø§ ÙŠÙ…ÙƒÙ† Ø£Ù† ÙŠÙƒÙˆÙ† Ø£Ù‚Ù„ Ù…Ù†','Het gevraagde bedrag kan niet kleiner zijn dan','Le montant demandÃ© ne peut Ãªtre infÃ©rieur Ã ','Der angeforderte Betrag kann nicht geringer sein als','Ð—Ð°Ð¿Ñ€Ð°ÑˆÐ¸Ð²Ð°ÐµÐ¼Ð°Ñ ÑÑƒÐ¼Ð¼Ð° Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð¼ÐµÐ½ÑŒÑˆÐµ','La cantidad solicitada no puede ser inferior a','Ä°stenilen miktardan az olamaz'),(384,'','cant_request_withdrawal','You can not submit withdrawal request until the previous requests has been approved / rejected.','Ù„Ø§ ÙŠÙ…ÙƒÙ†Ùƒ Ø¥Ø±Ø³Ø§Ù„ Ø·Ù„Ø¨ Ø§Ù„Ø³Ø­Ø¨ Ø­ØªÙ‰ ØªØªÙ… Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„Ù‰ / Ø±ÙØ¶ Ø§Ù„Ø·Ù„Ø¨Ø§Øª Ø§Ù„Ø³Ø§Ø¨Ù‚Ø©.','U kunt geen opnameverzoek indienen totdat de vorige verzoeken zijn goedgekeurd / afgewezen.','Vous ne pouvez pas soumettre de demande de retrait avant que les demandes prÃ©cÃ©dentes aient Ã©tÃ© approuvÃ©es / rejetÃ©es.','Sie kÃ¶nnen eine Auszahlungsanforderung erst absenden, wenn die vorherigen Anforderungen genehmigt / abgelehnt wurden.','Ð’Ñ‹ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¿Ð¾Ð´Ð°Ñ‚ÑŒ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° ÑÐ½ÑÑ‚Ð¸Ðµ ÑÑ€ÐµÐ´ÑÑ‚Ð², Ð¿Ð¾ÐºÐ° Ð¿Ñ€ÐµÐ´Ñ‹Ð´ÑƒÑ‰Ð¸Ðµ Ð·Ð°Ð¿Ñ€Ð¾ÑÑ‹ Ð½Ðµ Ð±Ñ‹Ð»Ð¸ Ð¾Ð´Ð¾Ð±Ñ€ÐµÐ½Ñ‹ / Ð¾Ñ‚ÐºÐ»Ð¾Ð½ÐµÐ½Ñ‹.','No puede enviar una solicitud de retiro hasta que las solicitudes anteriores hayan sido aprobadas / rechazadas.','Ã–nceki istekler onaylanÄ±p reddedilene kadar para Ã§ekme talebi gÃ¶nderemezsiniz.'),(385,'','withdrawal_request_sent','Your withdrawal request has been successfully sent!','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø·Ù„Ø¨ Ø§Ù„Ø³Ø­Ø¨ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ø¨Ù†Ø¬Ø§Ø­!','Uw opnameverzoek is met succes verzonden!','Votre demande de retrait a Ã©tÃ© envoyÃ©e avec succÃ¨s!','Ihre Auszahlungsanfrage wurde erfolgreich gesendet!','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ð²Ñ‹Ð²Ð¾Ð´ ÑÑ€ÐµÐ´ÑÑ‚Ð² Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½!','Su solicitud de retiro ha sido enviada con Ã©xito!','Para Ã§ekme isteÄŸiniz baÅŸarÄ±yla gÃ¶nderildi!'),(386,'','requested_at','Requested at','Ø·Ù„Ø¨ ÙÙŠ','Gevraagd om','DemandÃ© Ã ','Angefordert bei','Ð—Ð°Ð¿Ñ€Ð¾ÑˆÐµÐ½Ð¾ Ð²','Solicitado en','Talep edildi'),(387,'','paid','Paid','Ø¯ÙØ¹','Betaald','PayÃ©','Bezahlt','Ð¾Ð¿Ð»Ð°Ñ‡ÐµÐ½Ð½Ñ‹Ð¹','Pagado','Ãœcretli'),(388,'','pending','Pending','Ù‚ÙŠØ¯ Ø§Ù„Ø§Ù†ØªØ¸Ø§Ø±','In afwachting','en attendant','steht aus','Ð² Ð¾Ð¶Ð¸Ð´Ð°Ð½Ð¸Ð¸','Pendiente','kadar'),(389,'','declined','Declined','Ø±ÙØ¶','Afgewezen','DiminuÃ©','Abgelehnt','ÐžÑ‚ÐºÐ»Ð¾Ð½ÐµÐ½Ð¾','Rechazado','Reddedilen'),(390,'','raise_money','Raise Money','Ø¬Ù…Ø¹ Ø§Ù„Ù…Ø§Ù„','Geld inzamelen','Amasser de l&#039;argent','Geld sammeln','Ð¡Ð¾Ð±Ð¸Ñ€Ð°Ñ‚ÑŒ Ð´ÐµÐ½ÑŒÐ³Ð¸','Recaudar dinero','Para toplamak'),(391,'','funding_acquisition','Create new funding request','Ø¥Ù†Ø´Ø§Ø¡ Ø·Ù„Ø¨ ØªÙ…ÙˆÙŠÙ„ Ø¬Ø¯ÙŠØ¯','Maak een nieuw financieringsverzoek','CrÃ©er une nouvelle demande de financement','Neue Finanzierungsanfrage erstellen','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð½Ð¾Ð²Ñ‹Ð¹ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ','Crear nueva solicitud de financiaciÃ³n','Yeni fon talebi yarat'),(392,'','funding_created','Funding request has been successfully created.','ØªÙ… Ø¥Ù†Ø´Ø§Ø¡ Ø·Ù„Ø¨ Ø§Ù„ØªÙ…ÙˆÙŠÙ„ Ø¨Ù†Ø¬Ø§Ø­.','Financieringsaanvraag is succesvol aangemaakt.','La demande de financement a Ã©tÃ© crÃ©Ã©e avec succÃ¨s.','Finanzierungsanfrage wurde erfolgreich erstellt.','Ð—Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑÐ¾Ð·Ð´Ð°Ð½.','Solicitud de financiaciÃ³n ha sido creado con Ã©xito.','Finansman isteÄŸi baÅŸarÄ±yla oluÅŸturuldu.'),(393,'','raised_of','Raised of','Ø£Ø«Ø§Ø±Øª Ù…Ù†','Opgeheven van','Ã‰levÃ© de','Angehoben von','ÐŸÐ¾Ð´Ð½ÑÐ» Ð¸Ð·','Planteado de','YÃ¼kseltilmiÅŸ'),(394,'','funding','Create new funding request','Ø¥Ù†Ø´Ø§Ø¡ Ø·Ù„Ø¨ ØªÙ…ÙˆÙŠÙ„ Ø¬Ø¯ÙŠØ¯','Maak een nieuw financieringsverzoek','CrÃ©er une nouvelle demande de financement','Neue Finanzierungsanfrage erstellen','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð½Ð¾Ð²Ñ‹Ð¹ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ','Crear nueva solicitud de financiaciÃ³n','Yeni fon talebi yarat'),(395,'','load_more','Load More','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯','Meer laden','Charger plus','Mehr laden','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸ Ð±Ð¾Ð»ÑŒÑˆÐµ','Carga mÃ¡s','Daha fazla yÃ¼kle'),(396,'','donate','Donate','ØªØ¨Ø±Ø¹','schenken','Faire un don','Spenden','Ð¶ÐµÑ€Ñ‚Ð²Ð¾Ð²Ð°Ñ‚ÑŒ','Donar','baÄŸÄ±ÅŸlamak'),(397,'','fund_not_found','Funding request not found','Ø·Ù„Ø¨ ØªÙ…ÙˆÙŠÙ„ ØºÙŠØ± Ù…ÙˆØ¬ÙˆØ¯','Financieringsaanvraag niet gevonden','Demande de financement non trouvÃ©e','Finanzierungsanfrage nicht gefunden','Ð—Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½','Solicitud de financiaciÃ³n no encontrada','Fon talebi bulunamadÄ±'),(398,'','donated','donated to your request.','ØªØ¨Ø±Ø¹ Ù„Ùƒ','Doneer je','Vous faire un don','Spende dich','ÐŸÐ¾Ð´Ð°Ñ€Ð¸Ñ‚ÑŒ Ñ‚ÐµÐ±Ðµ','Donate','Sana baÄŸÄ±ÅŸ'),(399,'','recent_donations','Recent donations','Ø§Ù„ØªØ¨Ø±Ø¹Ø§Øª Ø§Ù„Ø£Ø®ÙŠØ±Ø©','Recente donaties','Dons rÃ©cents','Letzte Spenden','ÐÐµÐ´Ð°Ð²Ð½Ð¸Ðµ Ð¿Ð¾Ð¶ÐµÑ€Ñ‚Ð²Ð¾Ð²Ð°Ð½Ð¸Ñ','Donaciones recientes','Son baÄŸÄ±ÅŸlar'),(400,'','total_donations','Total donations','Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„ØªØ¨Ø±Ø¹Ø§Øª','Totale donaties','Total des dons','Spenden insgesamt','Ð’ÑÐµÐ³Ð¾ Ð¿Ð¾Ð¶ÐµÑ€Ñ‚Ð²Ð¾Ð²Ð°Ð½Ð¸Ð¹','Donaciones totales','Toplam baÄŸÄ±ÅŸ'),(401,'','user_funding','Funding Requests','Ø·Ù„Ø¨Ø§Øª Ø§Ù„ØªÙ…ÙˆÙŠÙ„','Financieringsverzoeken','Demandes de financement','FinanzierungsantrÃ¤ge','Ð—Ð°Ð¿Ñ€Ð¾ÑÑ‹ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ','Solicitudes de financiaciÃ³n','Finansman Talepleri'),(402,'','no_funding_yet','There are no funding requests yet.','Ù„Ø§ ØªÙˆØ¬Ø¯ Ø·Ù„Ø¨Ø§Øª ØªÙ…ÙˆÙŠÙ„ Ø¨Ø¹Ø¯.','Er zijn nog geen financieringsverzoeken.','Il n&#039;y a pas encore de demande de financement.','Es gibt noch keine FinanzierungsantrÃ¤ge.','ÐŸÐ¾ÐºÐ° Ð½ÐµÑ‚ Ð·Ð°Ð¿Ñ€Ð¾ÑÐ¾Ð² Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ.','No hay solicitudes de financiaciÃ³n todavÃ­a.','HenÃ¼z bir fon talebi yok.'),(403,'','requested','Requested','Ø·Ù„Ø¨','Aangevraagd','DemandÃ©','Beantragt','Ð·Ð°Ð¿Ñ€Ð¾ÑˆÐµÐ½Ð½Ñ‹Ð¹','Pedido','Talep edilen'),(404,'','follow_requests','Follow Requests','Ù…ØªØ§Ø¨Ø¹Ø© Ø§Ù„Ø·Ù„Ø¨Ø§Øª','Volg Verzoeken','Suivre les demandes','Anfragen folgen','Ð¡Ð»ÐµÐ´ÑƒÐ¹Ñ‚Ðµ Ð·Ð°Ð¿Ñ€Ð¾ÑÐ°Ð¼','Seguir Solicitudes','Ä°stekleri takip et'),(405,'','is_following_you','is following you now','ÙŠØªØ§Ø¨Ø¹Ùƒ Ø§Ù„Ø¢Ù†','volgt je nu','vous suit maintenant','folgt dir jetzt','ÑÐ»ÐµÐ´Ð¸Ñ‚ Ð·Ð° Ñ‚Ð¾Ð±Ð¾Ð¹ ÑÐµÐ¹Ñ‡Ð°Ñ','te esta siguiendo ahora','ÅŸimdi seni takip ediyor'),(406,'','accept_request','accepted your follow request','Ù‚Ø¨Ù„Øª Ø·Ù„Ø¨ Ø§Ù„Ù…ØªØ§Ø¨Ø¹Ø© Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ','accepteerde uw volgverzoek','acceptÃ© votre demande de suivi','Ihre Anfrage wurde akzeptiert','Ð¿Ñ€Ð¸Ð½ÑÐ» Ð²Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ','aceptÃ³ su solicitud de seguimiento','takip isteÄŸini kabul et'),(407,'','accept','Accept','Ù‚Ø¨ÙˆÙ„','Aanvaarden','Acceptez','Akzeptieren','Ð¿Ñ€Ð¸Ð½Ð¸Ð¼Ð°Ñ‚ÑŒ','Aceptar','Kabul etmek'),(408,'','u_dont_have_requests','You do not have any requests','Ù„ÙŠØ³ Ù„Ø¯ÙŠÙƒ Ø£ÙŠ Ø·Ù„Ø¨Ø§Øª','U hebt geen verzoeken','Vous n&#039;avez aucune demande','Sie haben keine Anfragen','Ð£ Ð²Ð°Ñ Ð½ÐµÑ‚ Ð·Ð°Ð¿Ñ€Ð¾ÑÐ¾Ð²','No tienes ninguna peticiÃ³n.','Herhangi bir isteÄŸiniz yok'),(409,'','business_name','Business Name','Ø§Ù„Ø§Ø³Ù… Ø§Ù„ØªØ¬Ø§Ø±ÙŠ','Bedrijfsnaam','Nom de l&#039;entreprise','GeschÃ¤ftsname','ÐÐ°Ð¸Ð¼ÐµÐ½Ð¾Ð²Ð°Ð½Ð¸Ðµ Ñ„Ð¸Ñ€Ð¼Ñ‹','Nombre del Negocio','iÅŸ adÄ±'),(410,'','phone_number','Phone Number','Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ','Telefoonnummer','NumÃ©ro de tÃ©lÃ©phone','Telefonnummer','ÐÐ¾Ð¼ÐµÑ€ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð°','NÃºmero de telÃ©fono','Telefon numarasÄ±'),(411,'','bus_request_done','Your request has been submitted and under review.','ØªÙ… ØªÙ‚Ø¯ÙŠÙ… Ø·Ù„Ø¨Ùƒ ÙˆÙ‚ÙŠØ¯ Ø§Ù„Ù…Ø±Ø§Ø¬Ø¹Ø©.','Uw aanvraag is ingediend en wordt beoordeeld.','Votre demande a Ã©tÃ© soumise et en cours de rÃ©vision.','Ihre Anfrage wurde Ã¼bermittelt und wird geprÃ¼ft.','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð±Ñ‹Ð» Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½ Ð¸ Ð½Ð°Ñ…Ð¾Ð´Ð¸Ñ‚ÑÑ Ð½Ð° Ñ€Ð°ÑÑÐ¼Ð¾Ñ‚Ñ€ÐµÐ½Ð¸Ð¸.','Su solicitud ha sido enviada y en revisiÃ³n.','Ä°steÄŸiniz gÃ¶nderildi ve incelendi.'),(412,'','edit_funding','Edit funding request','ØªØ­Ø±ÙŠØ± Ø·Ù„Ø¨ Ø§Ù„ØªÙ…ÙˆÙŠÙ„','Bewerkingsverzoek bewerken','Modifier la demande de financement','Finanzierungsanfrage bearbeiten','Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð·Ð°ÑÐ²ÐºÑƒ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ','Editar solicitud de financiaciÃ³n','Finansman talebini dÃ¼zenle'),(413,'','funding_edited','Funding request has been successfully updated.','ØªÙ… ØªØ­Ø¯ÙŠØ« Ø·Ù„Ø¨ Ø§Ù„ØªÙ…ÙˆÙŠÙ„ Ø¨Ù†Ø¬Ø§Ø­.','Financieringsaanvraag is succesvol bijgewerkt.','La demande de financement a Ã©tÃ© mise Ã  jour avec succÃ¨s.','Finanzierungsanfrage wurde erfolgreich aktualisiert.','Ð—Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½.','Solicitud de financiaciÃ³n se ha actualizado con Ã©xito.','Fon talebi baÅŸarÄ±yla gÃ¼ncellendi.'),(414,'','call_now','Call now','Ø§ØªØµÙ„ Ø§Ù„Ø§Ù†','Bel nu','Appelle maintenant','Jetzt anrufen','ÐŸÐ¾Ð·Ð²Ð¾Ð½Ð¸ ÑÐµÐ¹Ñ‡Ð°Ñ','Llama ahora','Åžimdi ara'),(415,'','go_to','Go to','Ø§Ø°Ù‡Ø¨ Ø¥Ù„Ù‰','Ga naar','Aller Ã ','Gehe zu','Ð˜Ð´Ñ‚Ð¸ Ðº','Ir','Git'),(416,'','send_email','Send email','Ø§Ø±Ø³Ù„ Ø¨Ø±ÙŠØ¯ Ø§Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','Verzend e-mail','Envoyer un email','E-Mail senden','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ Ð¿Ð¸ÑÑŒÐ¼Ð¾','Enviar correo electrÃ³nico','Eposta gÃ¶nder'),(417,'','read_more','Read more','Ù‚Ø±Ø§Ø¡Ø© Ø§Ù„Ù…Ø²ÙŠØ¯','Lees verder','Lire la suite','Weiterlesen','ÐŸÑ€Ð¾Ñ‡Ð¸Ñ‚Ð°Ð¹Ñ‚Ðµ Ð±Ð¾Ð»ÑŒÑˆÐµ','Lee mas','Daha fazla oku'),(418,'','shop_now','Shop now','ØªØ³ÙˆÙ‚ Ø§Ù„Ø¢Ù†','Winkel nu','Achetez maintenant','Jetzt einkaufen','ÐœÐ°Ð³Ð°Ð·Ð¸Ð½ ÑÐµÐ¹Ñ‡Ð°Ñ','Compra ahora','Åžimdi satÄ±n al'),(419,'','view_now','View now','Ø¹Ø±Ø¶ Ø§Ù„Ø¢Ù†','Kijk nu','Voir maintenant','Jetzt ansehen','Ð¡Ð¼Ð¾Ñ‚Ñ€Ð¸ ÑÐµÐ¹Ñ‡Ð°Ñ','Ver ahora','Åžimdi gÃ¶ster'),(420,'','visit_now','Visit now','Ø²ÙŠØ§Ø±Ø© Ø§Ù„Ø¢Ù†','Bezoek nu','Visitez maintenant','Jetzt besuchen','ÐŸÐ¾ÑÐµÑ‚Ð¸Ñ‚Ðµ ÑÐµÐ¹Ñ‡Ð°Ñ','Visitar ahora','Åžimdi ziyaret'),(421,'','book_now','Book now','Ø§Ø­Ø¬Ø² Ø§Ù„Ø¢Ù†','Boek nu','Reserve maintenant','Buchen Sie jetzt','Ð—Ð°Ð±Ñ€Ð¾Ð½Ð¸Ñ€ÑƒÐ¹Ñ‚Ðµ ÑÐµÐ¹Ñ‡Ð°Ñ','Reservar ahora','Åžimdi rezervasyon yap'),(422,'','learn_more','Learn more','Ø£Ø¹Ø±Ù Ø£ÙƒØ«Ø±','Kom meer te weten','Apprendre encore plus','Mehr erfahren','Ð£Ñ‡Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ','Aprende mÃ¡s','Daha fazla bilgi edin'),(423,'','play_now','Play now','Ø§Ù„Ø¹Ø¨ Ø§Ù„Ø§Ù†','Nu afspelen','Joue maintenant','Jetzt spielen','Ð˜Ð³Ñ€Ð°Ñ‚ÑŒ ÑÐµÐ¹Ñ‡Ð°Ñ','Reproducir ahora','Åžimdi oyna'),(424,'','bet_now','Bet now','Ø§Ù„Ø±Ù‡Ø§Ù† Ø§Ù„Ø¢Ù†','Wed nu','Parier maintenant','Wetten Sie jetzt','Ð¡Ñ‚Ð°Ð²ÐºÐ° ÑÐµÐ¹Ñ‡Ð°Ñ','Apuesta ahora','Åžimdi bahis yap'),(425,'','apply_here','Apply here','Ù‚Ø¯Ù… Ù‡Ù†Ø§','Voeg hier toe','Appliquer ici','Hier bewerben','ÐŸÐ¾Ð´Ð°Ñ‚ÑŒ Ð·Ð°ÑÐ²ÐºÑƒ Ð·Ð´ÐµÑÑŒ','Aplicar aquÃ­','Buraya uygula'),(426,'','quote_here','Quote here','Ø§Ù‚ØªØ¨Ø³ Ù‡Ù†Ø§','Quote hier','Citez ici','Hier zitieren','Ð¦Ð¸Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð·Ð´ÐµÑÑŒ','Cita aqui','Burada alÄ±ntÄ± yap'),(427,'','order_now','Order now','Ø§Ø·Ù„Ø¨ Ø§Ù„Ø§Ù†','Bestel nu','Commandez maintenant','Jetzt bestellen','Ð—Ð°ÐºÐ°Ð·Ð°Ñ‚ÑŒ ÑÐµÐ¹Ñ‡Ð°Ñ','Ordenar ahora','Åžimdi sipariÅŸ ver'),(428,'','book_tickets','Book tickets','Ø­Ø¬Ø² Ø§Ù„ØªØ°Ø§ÙƒØ±','Boek tickets','RÃ©server des billets','Tickets buchen','Ð—Ð°Ð±Ñ€Ð¾Ð½Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð±Ð¸Ð»ÐµÑ‚Ñ‹','Reservar pasajes','Kitap biletleri'),(429,'','enroll_now','Enroll now','ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¢Ù†','Schrijf nu in','Inscrivez-vous maintenant','Jetzt anmelden','Ð—Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€ÑƒÐ¹Ñ‚ÐµÑÑŒ ÑÐµÐ¹Ñ‡Ð°Ñ','EnlÃ­state ahora','Åžimdi kayÄ±t'),(430,'','find_card','Find a card','Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø¨Ø·Ø§Ù‚Ø©','Zoek een kaart','Trouver une carte','Eine Karte finden','ÐÐ°Ð¹Ñ‚Ð¸ ÐºÐ°Ñ€Ñ‚Ñƒ','Encontrar una tarjeta','Bir kart bul'),(431,'','get_quote','Get a quote','Ø¥Ù‚ØªØ¨Ø³','Vraag een offerte aan','Obtenir un devis','Ein Angebot bekommen','ÐŸÐ¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ Ñ†Ð¸Ñ‚Ð°Ñ‚Ñƒ','Consigue una cotizaciÃ³n','Bir teklif alÄ±n'),(432,'','get_tickets','Get tickets','Ø£Ø­ØµÙ„ Ø¹Ù„Ù‰ ØªØ°Ø§ÙƒØ±','Krijg kaartjes','Procurez-vous des billets','Tickets bekommen','ÐŸÐ¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ Ð±Ð¸Ð»ÐµÑ‚Ñ‹','Conseguir entradas','Bilet al'),(433,'','locate_dealer','Locate a dealer','ØªØ­Ø¯ÙŠØ¯ Ù…ÙˆÙ‚Ø¹ ØªØ§Ø¬Ø±','Zoek een dealer','Localiser un revendeur','Finden Sie einen HÃ¤ndler','ÐÐ°Ð¹Ð´Ð¸Ñ‚Ðµ Ð´Ð¸Ð»ÐµÑ€Ð°','Encuentra un distribuidor','Bir satÄ±cÄ± bulun'),(434,'','order_online','Order online','Ø§Ø·Ù„Ø¨ Ø¹Ø¨Ø± Ø§Ù„Ø¥Ù†ØªØ±Ù†Øª','Bestel online','Commander en ligne','Online bestellen','Ð—Ð°ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð¾Ð½Ð»Ð°Ð¹Ð½','Comprar online','Online sipariÅŸ ver'),(435,'','preorder_now','Preorder now','Preorder Ø§Ù„Ø¢Ù†','Bestel nu vooraf','PrÃ© commandez maintenant','Jetzt vorbestellen','ÐŸÑ€ÐµÐ´Ð²Ð°Ñ€Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ Ð·Ð°ÐºÐ°Ð· ÑÐµÐ¹Ñ‡Ð°Ñ','Preordenar ahora','Ã–n sipariÅŸ ver'),(436,'','schedule_now','Schedule now','Ø§Ù„Ø¬Ø¯ÙˆÙ„ Ø§Ù„Ø²Ù…Ù†ÙŠ Ø§Ù„Ø¢Ù†','Plan nu','Horaire maintenant','Jetzt planen','Ð Ð°ÑÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ ÑÐµÐ¹Ñ‡Ð°Ñ','Programar ahora','Åžimdi planla'),(437,'','sign_up_now','Sign up now','Ø£ÙØªØ­ Ø­Ø³Ø§Ø¨ Ø§Ù„Ø£Ù†','Meld je nu aan','S&#039;inscrire maintenant','Jetzt registrieren','Ð’Ð¾Ð¹Ñ‚Ð¸ Ð¡ÐµÐ¹Ñ‡Ð°Ñ','RegÃ­strate ahora','Åžimdi kayÄ±t ol'),(438,'','subscribe','Subscribe','Ø§Ù„Ø§Ø´ØªØ±Ø§Ùƒ','abonneren','Souscrire','Abonnieren','ÐŸÐ¾Ð´Ð¿Ð¸ÑÑ‹Ð²Ð°Ð¹ÑÑ','Suscribir','Abone ol'),(439,'','register_now','Register now','Ø³Ø¬Ù„ Ø§Ù„Ø§Ù†','Registreer nu','inscrire maintenant','Jetzt registrieren','Ð—Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒÑÑ','RegÃ­strate ahora','Åžimdi Ã¼ye Ol'),(440,'','call_to_target_url','Call to target url','Ø¯Ø¹ÙˆØ© Ù„Ø§Ø³ØªÙ‡Ø¯Ø§Ù Ø±Ø§Ø¨Ø·','Call naar doel-URL','Appeler pour cibler l&#039;URL','Rufen Sie die Ziel-URL auf','Ð—Ð²Ð¾Ð½Ð¸Ñ‚Ðµ Ð½Ð° Ñ†ÐµÐ»ÐµÐ²Ð¾Ð¹ URL','Llamar a la URL de destino','URL&#039;yi hedeflemek iÃ§in arayÄ±n'),(441,'','call_to_action','Call to action','Ø¯Ø¹ÙˆØ© Ø¥Ù„Ù‰ Ø§Ù„Ø¹Ù…Ù„','Oproep tot actie','Appel Ã  l&#039;action','Aufruf zum Handeln','ÐŸÑ€Ð¸Ð·Ñ‹Ð² Ðº Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸ÑŽ','Llamada a la acciÃ³n','Eylem Ã§aÄŸrÄ±sÄ±'),(442,'','reply','Reply','Ø§Ù„Ø±Ø¯','Antwoord','RÃ©pondre','Antworten','ÐžÑ‚Ð²ÐµÑ‚Ð¸Ñ‚ÑŒ','Respuesta','cevap'),(443,'','how_it_works','How it works','ÙƒÙŠÙ ØªØ¹Ù…Ù„','Hoe het werkt','Comment Ã§a marche','Wie es funktioniert','ÐšÐ°Ðº ÑÑ‚Ð¾ ÑƒÑÑ‚Ñ€Ð¾ÐµÐ½Ð¾','CÃ³mo funciona','NasÄ±l Ã§alÄ±ÅŸÄ±r'),(444,'','earn_money','Earn Money','ÙŠÙƒØªØ³Ø¨ Ù†Ù‚ÙˆØ¯','Geld verdienen','Gagner de l&#039;argent','Geld verdienen','Ð—Ð°Ñ€Ð°Ð±Ð°Ñ‚Ñ‹Ð²Ð°Ð¹Ñ‚Ðµ Ð´ÐµÐ½ÑŒÐ³Ð¸','Ganar dinero','Para kazan'),(445,'','users_register','Users Register','ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†','Gebruikers registreren','Registre des utilisateurs','Benutzer registrieren','Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹','Registro de Usuarios','KullanÄ±cÄ±lar KayÄ±t'),(446,'','share_link','Share Link','Ø­ØµØ© Ø§Ù„Ø±Ø§Ø¨Ø·','Deel link','Lien de partage','Einen Link teilen','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ñ‚ÑŒÑÑ ÑÑÑ‹Ð»ÐºÐ¾Ð¹','Compartir enlace','Linki paylaÅŸ'),(447,'','add','Add','Ø¥Ø¶Ø§ÙØ©','Toevoegen','Ajouter','HinzufÃ¼gen','Ð´Ð¾Ð±Ð°Ð²Ð»ÑÑ‚ÑŒ','AÃ±adir','Eklemek'),(448,'','add_money','Add Money','Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ù…Ø§Ù„','Voeg geld toe','Ajouter de l&#039;argent','Geld hinzufÃ¼gen','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð´ÐµÐ½ÑŒÐ³Ð¸','Agregar dinero','Para ekle'),(449,'','free_member','Free Member','Ø¹Ø¶Ùˆ Ù…Ø¬Ø§Ù†ÙŠ','gratis lid','Membre gratuit','Freies Mitglied','Ð‘ÐµÑÐ¿Ð»Ð°Ñ‚Ð½Ñ‹Ð¹ ÑƒÑ‡Ð°ÑÑ‚Ð½Ð¸Ðº','miembro gratuito','Ãœcretsiz Ãœye'),(450,'','stay_free','Stay Free','Ø§Ø¨Ù‚ Ø­Ø±Ø§','Blijf vrij','Reste libre','Bleibe frei','ÐžÑÑ‚Ð°Ð²Ð°Ð¹ÑÑ ÑÐ²Ð¾Ð±Ð¾Ð´Ð½Ñ‹Ð¼','Mantente Libre','Ãœcretsiz kalÄ±n'),(451,'','enjoy_more_features','Enjoy more Features with out pro package!','Ø§Ø³ØªÙ…ØªØ¹ Ø¨Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…ÙŠØ²Ø§Øª Ù…Ø¹ Ø­Ø²Ù…Ø© Ø®Ø§Ø±Ø¬ Ø§Ù„Ù…ÙˆØ§Ù„ÙŠØ©!','Geniet van meer functies zonder pro-pakket!','Profitez de plus de fonctionnalitÃ©s avec le forfait pro!','GenieÃŸen Sie weitere Funktionen mit unserem Pro-Paket!','ÐÐ°ÑÐ»Ð°Ð¶Ð´Ð°Ð¹Ñ‚ÐµÑÑŒ Ð±Ð¾Ð»ÑŒÑˆÐ¸Ð¼ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾Ð¼ Ñ„ÑƒÐ½ÐºÑ†Ð¸Ð¹ Ð±ÐµÐ· Ð½Ð°ÑˆÐµÐ³Ð¾ Ð¿Ñ€Ð¾Ñ„ÐµÑÑÐ¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ð¾Ð³Ð¾ Ð¿Ð°ÐºÐµÑ‚Ð°!','Disfrute de mÃ¡s caracterÃ­sticas con nuestro paquete pro!','Profesyonel paketi olmayan daha fazla Ã¶zelliÄŸin tadÄ±nÄ± Ã§Ä±karÄ±n!'),(452,'','join_pro','Join Pro!','Ø§Ù†Ø¶Ù…Ø§Ù… Ø¨Ø±Ùˆ!','Word lid van Pro!','Rejoignez Pro!','Pro beitreten','ÐŸÑ€Ð¸ÑÐ¾ÐµÐ´Ð¸Ð½ÑÐ¹Ñ‚ÐµÑÑŒ Ðº Pro!','Ãšnete a Pro!','Pro&#039;ya katÄ±l!'),(453,'','posts_promote_up','Promote up to','ØªØ¹Ø²ÙŠØ² Ù…Ø§ ÙŠØµÙ„ Ø§Ù„Ù‰','Promoot tot','Promouvoir jusqu&#039;Ã ','Bis zu fÃ¶rdern','ÐŸÑ€Ð¾Ð´Ð²Ð¸Ð³Ð°Ñ‚ÑŒ Ð´Ð¾','Promocionar hasta','Kadar terfi'),(454,'','funding_requets','Funding Requests','Ø·Ù„Ø¨Ø§Øª Ø§Ù„ØªÙ…ÙˆÙŠÙ„','Financieringsverzoeken','Demandes de financement','FinanzierungsantrÃ¤ge','Ð—Ð°Ð¿Ñ€Ð¾ÑÑ‹ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ','Solicitudes de financiaciÃ³n','Finansman Talepleri'),(455,'','per_month','per month','ÙƒÙ„ Ø´Ù‡Ø±','per maand','par mois','pro Monat','Ð² Ð¼ÐµÑÑÑ†','por mes','her ay'),(456,'blog_categories','1309','Comedy','ÙƒÙˆÙ…ÙŠØ¯ÙŠØ§','Komedie','La comÃ©die','KomÃ¶die','ÐºÐ¾Ð¼ÐµÐ´Ð¸Ñ','Comedia','Komedi'),(457,'blog_categories','1310','Cars and Vehicles','Ø§Ù„Ø³ÙŠØ§Ø±Ø§Øª ÙˆØ§Ù„Ù…Ø±ÙƒØ¨Ø§Øª','Auto&#39;s en voertuigen','Voitures et vÃ©hicules','Autos und Fahrzeuge','ÐÐ²Ñ‚Ð¾Ð¼Ð¾Ð±Ð¸Ð»Ð¸ Ð¸ Ð¢Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚','Autos y vehiculos','Otomobiller ve AraÃ§lar'),(458,'blog_categories','1311','Economics and Trade','Ø§Ù„Ø§Ù‚ØªØµØ§Ø¯ ÙˆØ§Ù„ØªØ¬Ø§Ø±Ø©','Economie en handel','Ã‰conomie et commerce','Wirtschaft und Handel','Ð­ÐºÐ¾Ð½Ð¾Ð¼Ð¸ÐºÐ° Ð¸ Ñ‚Ð¾Ñ€Ð³Ð¾Ð²Ð»Ñ','EconomÃ­a y comercio','Ekonomi ve Ticaret'),(459,'blog_categories','1312','Education','Ø§Ù„ØªØ¹Ù„ÙŠÙ…','Opleiding','Ã‰ducation','Bildung','Ð¾Ð±Ñ€Ð°Ð·Ð¾Ð²Ð°Ð½Ð¸Ðµ','EducaciÃ³n','EÄŸitim'),(460,'blog_categories','1313','Entertainment','ÙˆØ³Ø§Ø¦Ù„ Ø§Ù„ØªØ±ÙÙŠÙ‡','vermaak','Divertissement','Unterhaltung','Ð Ð°Ð·Ð²Ð»ÐµÑ‡ÐµÐ½Ð¸Ñ','Entretenimiento','EÄŸlence'),(461,'blog_categories','1314','Movies &amp; Animation','Ø£ÙÙ„Ø§Ù…','Films','Films','Filme','ÐšÐ¸Ð½Ð¾','PelÃ­culas','filmler'),(462,'blog_categories','1315','Gaming','Ø§Ù„Ø£Ù„Ø¹Ø§Ø¨','gaming','Gaming','Gaming','Ð°Ð·Ð°Ñ€Ñ‚Ð½Ñ‹Ðµ Ð¸Ð³Ñ€Ñ‹','Juego de azar','kumar'),(463,'blog_categories','1316','History and Facts','Ø§Ù„ØªØ§Ø±ÙŠØ® ÙˆØ§Ù„Ø­Ù‚Ø§Ø¦Ù‚','Geschiedenis en feiten','Histoire et faits','Geschichte und Fakten','Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ Ð¸ Ñ„Ð°ÐºÑ‚Ñ‹','Historia y hechos','TarihÃ§e ve GerÃ§ekler'),(464,'blog_categories','1317','Live Style','Ù†Ù…Ø· Ø§Ù„Ø­ÙŠØ§Ø©','Levensstijl','Style de vie','Lebensstil','Ð¡Ñ‚Ð¸Ð»ÑŒ Ð¶Ð¸Ð·Ð½Ð¸','Estilo de vida','YaÅŸam tarzÄ±'),(465,'blog_categories','1318','Natural','Ø·Ø¨ÙŠØ¹ÙŠ &gt;&gt; ØµÙØ©','natuurlijk','Naturel','NatÃ¼rlich','Ð½Ð°Ñ‚ÑƒÑ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹','Natural','DoÄŸal'),(466,'blog_categories','1319','News and Politics','Ø§Ù„Ø£Ø®Ø¨Ø§Ø± ÙˆØ§Ù„Ø³ÙŠØ§Ø³Ø©','Nieuws en politiek','ActualitÃ©s et politique','Nachrichten und Politik','ÐÐ¾Ð²Ð¾ÑÑ‚Ð¸ Ð¸ ÐŸÐ¾Ð»Ð¸Ñ‚Ð¸ÐºÐ°','Noticias y politica','Haberler ve Politika'),(467,'blog_categories','1320','People and Nations','Ø§Ù„Ù†Ø§Ø³ ÙˆØ§Ù„Ø£Ù…Ù…','Mensen en naties','Les gens et les nations','Menschen und Nationen','Ð›ÑŽÐ´Ð¸ Ð¸ Ð½Ð°Ñ€Ð¾Ð´Ñ‹','Pueblos y naciones','Ä°nsanlar ve Milletler'),(468,'blog_categories','1321','Pets and Animals','Ø§Ù„Ø­ÙŠÙˆØ§Ù†Ø§Øª Ø§Ù„Ø£Ù„ÙŠÙØ© ÙˆØ§Ù„Ø­ÙŠÙˆØ§Ù†Ø§Øª','Huisdieren en dieren','Animaux et animaux','Haustiere und Tiere','Ð”Ð¾Ð¼Ð°ÑˆÐ½Ð¸Ðµ Ð¶Ð¸Ð²Ð¾Ñ‚Ð½Ñ‹Ðµ Ð¸ Ð¶Ð¸Ð²Ð¾Ñ‚Ð½Ñ‹Ðµ','Mascotas y animales','Evcil Hayvanlar ve Hayvanlar'),(469,'blog_categories','1322','Places and Regions','Ø§Ù„Ø£Ù…Ø§ÙƒÙ† ÙˆØ§Ù„Ù…Ù†Ø§Ø·Ù‚','Plaatsen en regio&#39;s','Lieux et rÃ©gions','Orte und Regionen','ÐœÐµÑÑ‚Ð° Ð¸ Ð ÐµÐ³Ð¸Ð¾Ð½Ñ‹','Lugares y Regiones','Yerler ve BÃ¶lgeler'),(470,'blog_categories','1323','Science and Technology','Ø§Ù„Ø¹Ù„ÙˆÙ… ÙˆØ§Ù„ØªÙƒÙ†ÙˆÙ„ÙˆØ¬ÙŠØ§','Wetenschap en technologie','Science et technologie','Wissenschaft und Technik','ÐÐ°ÑƒÐºÐ° Ð¸ Ñ‚ÐµÑ…Ð½Ð¾Ð»Ð¾Ð³Ð¸Ñ','Ciencia y TecnologÃ­a','Bilim ve Teknoloji'),(471,'blog_categories','1324','Sport','Ø±ÙŠØ§Ø¶Ø©','Sport','Sport','Sport','Sport','Deporte','Spor'),(472,'blog_categories','1325','Travel and Events','Ø§Ù„Ø³ÙØ± ÙˆØ§Ù„Ø£Ø­Ø¯Ø§Ø«','Reizen en evenementen','Voyages et Ã©vÃ©nements','Reisen und Veranstaltungen','ÐŸÑƒÑ‚ÐµÑˆÐµÑÑ‚Ð²Ð¸Ñ Ð¸ Ð¡Ð¾Ð±Ñ‹Ñ‚Ð¸Ñ','Viajes y eventos','Seyahat ve Etkinlikler'),(473,'blog_categories','1326','Other','Ø¢Ø®Ø±','anders','Autre','Andere','Ð”Ñ€ÑƒÐ³Ð¸Ðµ','Otro','DiÄŸer'),(474,'','blog','Blog','Ù…Ø¯ÙˆÙ†Ø©','blog','Blog','Blog','Ð‘Ð»Ð¾Ð³','Blog','Blog'),(475,'','explore_blog_desc','Explore all blog posts.','Ø§Ø³ØªÙƒØ´Ø§Ù Ø¬Ù…ÙŠØ¹ Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª Ø¨Ù„ÙˆÙ‚.','Ontdek alle blogberichten.','Explorez tous les articles de blog.','Entdecken Sie alle Blog-BeitrÃ¤ge.','Ð˜Ð·ÑƒÑ‡Ð¸Ñ‚Ðµ Ð²ÑÐµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ Ð² Ð±Ð»Ð¾Ð³Ðµ.','Explore todas las publicaciones de blog.','TÃ¼m blog gÃ¶nderilerini keÅŸfedin.'),(476,'','categories','Categories','Ø§Ù„Ø§Ù‚Ø³Ø§Ù…','CategorieÃ«n','Les catÃ©gories','Kategorien','ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸','CategorÃ­as','Kategoriler'),(477,'store_categories','491','Abstract','Ù†Ø¨Ø°Ø© Ù…Ø®ØªØµØ±Ø©','Abstract','Abstrait','Abstrakt','ÐÐ½Ð½Ð¾Ñ‚Ð°Ñ†Ð¸Ñ','Abstracto','soyut'),(478,'store_categories','492','Animals/Wildlife','Ø§Ù„Ø­ÙŠÙˆØ§Ù†Ø§Øª / Ø§Ù„Ø­ÙŠØ§Ø© Ø§Ù„Ø¨Ø±ÙŠØ©','Animals / Wildlife','Animaux / Faune','Tiere / Wildlife','Ð–Ð¸Ð²Ð¾Ñ‚Ð½Ñ‹Ðµ / Ð”Ð¸ÐºÐ°Ñ Ð¿Ñ€Ð¸Ñ€Ð¾Ð´Ð°','Animales / Fauna','Hayvanlar / VahÅŸi YaÅŸam'),(479,'store_categories','493','Arts','ÙÙ†ÙˆÙ†','Arts','Arts','Kunst','Ð¸ÑÐºÑƒÑÑÑ‚Ð²Ð°','Letras','Sanat'),(480,'store_categories','494','Backgrounds/Textures','Ø®Ù„ÙÙŠØ§Øª / Ø§Ù„Ù‚ÙˆØ§Ù…','Achtergronden / Structuren','ArriÃ¨re-plans / textures','HintergrÃ¼nde / Texturen','Ð¤Ð¾Ð½Ñ‹ / Ð¢ÐµÐºÑÑ‚ÑƒÑ€Ñ‹','Fondos / Texturas','Arka / Dokular'),(481,'store_categories','495','Beauty/Fashion','Ø§Ù„Ø¬Ù…Ø§Ù„ / Ø§Ù„Ù…ÙˆØ¶Ø©','Beauty / Mode','BeautÃ© / Mode','SchÃ¶nheit / Mode','ÐšÑ€Ð°ÑÐ¾Ñ‚Ð° / ÐœÐ¾Ð´Ð°','Belleza / moda','GÃ¼zellik / Moda'),(482,'store_categories','496','Buildings/Landmarks','Ø§Ù„Ù…Ø¨Ø§Ù†ÙŠ / Ù…Ø¹Ø§Ù„Ù…','Gebouwen / Monumenten','BÃ¢timents / Monuments','GebÃ¤ude / SehenswÃ¼rdigkeiten','Ð—Ð´Ð°Ð½Ð¸Ñ / Ð´Ð¾ÑÑ‚Ð¾Ð¿Ñ€Ð¸Ð¼ÐµÑ‡Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ÑÑ‚Ð¸','Edificios / Monumentos','Binalar / Simgesel'),(483,'store_categories','497','Business/Finance','ØªÙ…ÙˆÙŠÙ„ Ø§Ù„Ø£Ø¹Ù…Ø§Ù„ Ø§Ù„ØªØ¬Ø§Ø±ÙŠØ©','Bedrijfsfinanciering','Business/Finance','Unternehmensfinanzierung','Ð”ÐµÐ»Ð¾Ð²Ñ‹Ðµ Ñ„Ð¸Ð½Ð°Ð½ÑÑ‹','FinanciaciÃ³n de las empresas','Ä°ÅŸ finansÄ±'),(484,'store_categories','498','Celebrities','Ù…Ø´Ø§Ù‡ÙŠØ±','Beroemdheden','CÃ©lÃ©britÃ©s','Prominente','Ð—Ð½Ð°Ð¼ÐµÐ½Ð¸Ñ‚Ð¾ÑÑ‚Ð¸','Famosos','ÃœnlÃ¼ler'),(485,'store_categories','499','Education','Ø§Ù„ØªØ¹Ù„ÙŠÙ…','Opleiding','Ã‰ducation','Bildung','Ð¾Ð±Ñ€Ð°Ð·Ð¾Ð²Ð°Ð½Ð¸Ðµ','EducaciÃ³n','EÄŸitim'),(486,'store_categories','500','Food and drink','Ø·Ø¹Ø§Ù… Ùˆ Ø´Ø±Ø§Ø¨','Eten en drinken','Nourriture et boisson','Essen und Trinken','Ð•Ð´Ð° Ð¸ Ð½Ð°Ð¿Ð¸Ñ‚ÐºÐ¸','Comida y bebida','Yiyecek ve iÃ§ecek'),(487,'store_categories','501','Healthcare/Medical','Ø§Ù„Ø±Ø¹Ø§ÙŠØ© Ø§Ù„ØµØ­ÙŠØ© Ø·Ø¨ /','Gezondheidszorg / Medisch','SantÃ© / MÃ©dical','Gesundheitswesen / Medizin','Ð—Ð´Ð¾Ñ€Ð¾Ð²ÑŒÐµ / ÐœÐµÐ´Ð¸Ñ†Ð¸Ð½Ð°','Asistencia sanitaria / mÃ©dica','SaÄŸlÄ±k / TÄ±bbi'),(488,'store_categories','502','Holidays','Ø§Ù„Ø¹Ø·Ù„','Vakantie','Vacances','Ferien','ÐºÐ°Ð½Ð¸ÐºÑƒÐ»Ñ‹','Vacaciones','Bayram'),(489,'store_categories','503','Industrial','ØµÙ†Ø§Ø¹ÙŠ','industrieel','Industriel','Industrie','Ð¿Ñ€Ð¾Ð¼Ñ‹ÑˆÐ»ÐµÐ½Ð½Ñ‹Ðµ','Industrial','Sanayi'),(490,'store_categories','504','Interiors','Ø§Ù„Ø¯Ø§Ø®Ù„ÙŠØ©','Interiors','IntÃ©rieurs','InnenrÃ¤ume','Ð˜Ð½Ñ‚ÐµÑ€ÑŒÐµÑ€Ñ‹','Interiores','Ä°Ã§'),(491,'store_categories','505','Miscellaneous','Ù…ØªÙ†ÙˆØ¹','Diversen','Divers','Sonstiges','Ð Ð°Ð·Ð½Ð¾Ð¾Ð±Ñ€Ð°Ð·Ð½Ñ‹Ð¹','Diverso','Ã‡eÅŸitli'),(492,'store_categories','506','Nature','Ø·Ø¨ÙŠØ¹Ø©','Natuur','Nature','Natur','ÐŸÑ€Ð¸Ñ€Ð¾Ð´Ð°','Naturaleza','DoÄŸa'),(493,'store_categories','507','Objects','Ø´Ø§Ø¡','Voorwerpen','Objets','Objekte','ÐžÐ±ÑŠÐµÐºÑ‚Ñ‹','Objetos','Nesneler'),(494,'store_categories','508','Parks/Outdoor','Ø§Ù„Ø­Ø¯Ø§Ø¦Ù‚ / ÙÙŠ Ø§Ù„Ù‡ÙˆØ§Ø¡ Ø§Ù„Ø·Ù„Ù‚','Parken / Buiten','Parcs / ExtÃ©rieur','Parks / Im Freien','ÐŸÐ°Ñ€ÐºÐ¸ / ÐžÑ‚ÐºÑ€Ñ‹Ñ‚Ñ‹Ð¹','Parques / al aire libre','Parks / AÃ§Ä±k'),(495,'store_categories','509','People','Ø§Ø´Ø®Ø§Øµ','Mensen','Gens','Menschen','Ð»ÑŽÐ´Ð¸','Personas','Ä°nsanlar'),(496,'store_categories','510','Religion','Ø¯ÙŠÙ†','Religie','Religion','Religion','Ñ€ÐµÐ»Ð¸Ð³Ð¸Ñ','ReligiÃ³n','Din'),(497,'store_categories','511','Science','Ø¹Ù„Ù…','Wetenschap','Science','Wissenschaft','ÐÐ°ÑƒÐºÐ°','Ciencia','Bilim'),(498,'store_categories','512','Signs/Symbols','Ø¹Ù„Ø§Ù…Ø§Øª / Ø§Ù„Ø±Ù…ÙˆØ²','Signs / Symbols','Signes / symboles','Zeichen / Symbole','Ð—Ð½Ð°ÐºÐ¸ / Ð¡Ð¸Ð¼Ð²Ð¾Ð»Ñ‹','Signos / SÃ­mbolos','Ä°ÅŸaretler / Simgeler'),(499,'store_categories','513','Sports/Recreation','Ø§Ù„Ø±ÙŠØ§Ø¶Ø© / Ø§Ù„ØªØ±ÙÙŠÙ‡','Sport / Recreatie','Sports/Recreation','Sport &amp; Erholung','Ð¡Ð¿Ð¾Ñ€Ñ‚ / ÐžÑ‚Ð´Ñ‹Ñ…','Deportes y RecreaciÃ³n','Spor ve yenilenme'),(500,'store_categories','514','Technology','ØªÙ‚Ù†ÙŠØ©','Technologie','La technologie','Technologie','Ð¢ÐµÑ…Ð½Ð¾Ð»Ð¾Ð³Ð¸Ñ','TecnologÃ­a','teknoloji'),(501,'store_categories','515','Transportation','ÙˆØ³Ø§Ø¦Ù„ Ø§Ù„Ù†Ù‚Ù„','vervoer','Transport','Transport','Ð¢Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚','Transporte','taÅŸÄ±macÄ±lÄ±k'),(502,'store_categories','516','Vintage','Ø¹ØªÙŠÙ‚','Wijnoogst','Ancien','Jahrgang','Ð¼Ð°Ñ€Ð¾Ñ‡Ð½Ñ‹Ð¹','Vendimia','baÄŸbozumu'),(503,'','store','Store','Ù…ØªØ¬Ø±','Winkel','le magasin','GeschÃ¤ft','Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ','Almacenar','maÄŸaza'),(504,'','upload','Upload','Ø±ÙØ¹','Uploaden','TÃ©lÃ©charger','Hochladen','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ','Subir','YÃ¼kleme'),(505,'','my_store','My Store','Ù…ØªØ¬Ø±ÙŠ','Mijn winkel','Mon magasin','Mein Laden','ÐœÐ¾Ð¹ Ð¼Ð°Ð³Ð°Ð·Ð¸Ð½','Mi tienda','Benim hikayem'),(506,'','price','Price','Ø§Ù„Ø³Ø¹Ø±','Prijs','Prix','Preis','Ð¦ÐµÐ½Ð°','Precio','Fiyat'),(507,'','license_type','License type','Ù†ÙˆØ¹ Ø§Ù„Ø±Ø®ØµØ©','Licentie type','License type','Lizenz-Typ','Ð¢Ð¸Ð¿ Ð»Ð¸Ñ†ÐµÐ½Ð·Ð¸Ð¸','Tipo de licencia','Lisans tÃ¼rÃ¼'),(508,'','rights_managed_license','Rights Managed (RM) License','Ø§Ù„Ø­Ù‚ÙˆÙ‚ Ø§Ù„Ù…Ø¯Ø§Ø±Ø© (RM) Ø§Ù„ØªØ±Ø®ÙŠØµ','Rights Managed (RM) -licentie','Licence Rights Managed (RM)','Lizenz fÃ¼r Rights Managed (RM)','Ð›Ð¸Ñ†ÐµÐ½Ð·Ð¸Ñ Ñ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸ÐµÐ¼ Ð¿Ñ€Ð°Ð²Ð°Ð¼Ð¸ (RM)','Licencia de derechos gestionados (RM)','YÃ¶netilen Haklar (RM) LisansÄ±'),(509,'','editorial_use_license','Editorial Use License','Ø±Ø®ØµØ© Ø§Ø³ØªØ®Ø¯Ø§Ù… Ø§Ù„ØªØ­Ø±ÙŠØ±','Licentie voor redactioneel gebruik','Licence d&#39;utilisation Ã©ditoriale','Lizenz zur redaktionellen Nutzung','Ð›Ð¸Ñ†ÐµÐ½Ð·Ð¸Ñ Ð½Ð° Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð² Ñ€ÐµÐ´Ð°ÐºÑ†Ð¸Ð¸','Licencia de uso editorial','Editoryal KullanÄ±m LisansÄ±'),(510,'','royalty_free_license','Royalty Free License (RF)','Ø§Ù„Ø§ØªØ§ÙˆØ§Øª Ø§Ù„Ø­Ø±Ø© Ø±Ø®ØµØ© (RF)','Royalty-vrije licentie (RF)','Licence libre de droits (RF)','Royalty Free Lizenz (RF)','Ð Ð¾ÑÐ»Ñ‚Ð¸ Ð¤Ñ€Ð¸ Ð›Ð¸Ñ†ÐµÐ½Ð·Ð¸Ñ (Ð Ð¤)','Licencia libre de derechos (RF)','Telif Ãœcretsiz LisansÄ± (RF)'),(511,'','royalty_free_extended_license','Royalty Free Extended License','Ø§Ù„Ø§ØªØ§ÙˆØ§Øª Ø§Ù„Ø­Ø±Ø© Ø§Ù„Ø±Ø®ØµØ© Ø§Ù„Ù…ÙˆØ³Ø¹Ø©','Royalty Free Uitgebreide Licentie','Licence Ã©tendue libre de droits','Royalty Free Erweiterte Lizenz','Ð‘ÐµÑÐ¿Ð»Ð°Ñ‚Ð½Ð°Ñ Ð»Ð¸Ñ†ÐµÐ½Ð·Ð¸Ñ','Licencia Extendida Libre de Derechos','Royalty Free GeniÅŸletilmiÅŸ Lisans'),(512,'','creative_commons_license','Creative Commons License','Ø±Ø®ØµØ© Ø§Ù„Ù…Ø´Ø§Ø¹ Ø§Ù„Ø¥Ø¨Ø¯Ø§Ø¹ÙŠ','Creative Commons-licentie','Licence Creative Commons','Creative Commons License','Ð›Ð¸Ñ†ÐµÐ½Ð·Ð¸Ñ Creative Commons','Licencia Creative Commons','Creative Commons License'),(513,'','public_domain','Public Domain','Ø§Ù„Ù…Ø¬Ø§Ù„ Ø§Ù„Ø¹Ø§Ù…','Publiek domein','Public Domain','Public Domain','Ð’ÑÐµÐ¾Ð±Ñ‰ÐµÐµ Ð´Ð¾ÑÑ‚Ð¾ÑÐ½Ð¸Ðµ','Dominio publico','Kamu malÄ±'),(514,'','none','None','Ù„Ø§ Ø´ÙŠØ¡','Geen','Aucun','Keiner','ÐÐ¸ÐºÑ‚Ð¾','Ninguna','Yok'),(515,'','tags','Tags','Ø§Ù„ÙƒÙ„Ù…Ø§Øª','Tags','Tags','Stichworte','Ð¢ÐµÐ³Ð¸','Etiquetas','Etiketler'),(516,'','category','Category','Ø§Ù„ÙØ¦Ø©','Categorie','CatÃ©gorie','Kategorie','ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ñ','CategorÃ­a','Kategori'),(517,'','image_dimension_error','Image dimension must be more than: {0}px , height : {1}px','ÙŠØ¬Ø¨ Ø£Ù† ÙŠÙƒÙˆÙ† Ø­Ø¬Ù… Ø§Ù„ØµÙˆØ±Ø© Ø£ÙƒØ¨Ø± Ù…Ù†: {0} Ø¨ÙƒØ³Ù„ ØŒ Ø§Ù„Ø§Ø±ØªÙØ§Ø¹: {1} Ø¨ÙƒØ³Ù„','Afbeeldingsdimensie moet groter zijn dan: {0} px, hoogte: {1} px','La dimension de l&#39;image doit Ãªtre supÃ©rieure Ã : {0} px, hauteur: {1} px','Die BildgrÃ¶ÃŸe muss grÃ¶ÃŸer sein als: {0} px, die HÃ¶he: {1} px','Ð Ð°Ð·Ð¼ÐµÑ€ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ Ð´Ð¾Ð»Ð¶ÐµÐ½ Ð±Ñ‹Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ Ñ‡ÐµÐ¼: {0} px, Ð²Ñ‹ÑÐ¾Ñ‚Ð°: {1} px','La dimensiÃ³n de la imagen debe ser mayor que: {0} px, altura: {1} px','Resim boyutu: {0} px, yÃ¼kseklik: {1} px&#39;den bÃ¼yÃ¼k olmalÄ±dÄ±r'),(518,'','img_upload_success','Your image was successfully uploaded. ','ØªÙ… ØªØ­Ù…ÙŠÙ„ ØµÙˆØ±ØªÙƒ Ø¨Ù†Ø¬Ø§Ø­.','Uw afbeelding is succesvol geÃ¼pload.','Votre image a Ã©tÃ© tÃ©lÃ©chargÃ©e avec succÃ¨s.','Ihr Bild wurde erfolgreich hochgeladen.','Ð’Ð°ÑˆÐµ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ Ð±Ñ‹Ð»Ð¾ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð·Ð°Ð³Ñ€ÑƒÐ¶ÐµÐ½Ð¾.','Su imagen se cargÃ³ correctamente.','Resminiz baÅŸarÄ±yla yÃ¼klendi.'),(519,'','downloads','Downloads','Ø§Ù„ØªÙ†Ø²ÙŠÙ„Ø§Øª','downloads','TÃ©lÃ©chargements','Downloads','Ð—Ð°Ð³Ñ€ÑƒÐ·ÐºÐ¸','Descargas','Ä°ndirilenler'),(520,'','buy','Buy','ÙŠØ´ØªØ±Ù‰','Kopen','Acheter','Kaufen','ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ','Comprar','SatÄ±n'),(521,'','sells','Sells','ÙŠØ¨ÙŠØ¹','Sells','Vend','Verkauft','ÐŸÑ€Ð¾Ð´Ð°ÐµÑ‚','Vende','SatÄ±yor'),(522,'','download','Download','ØªØ­Ù…ÙŠÙ„','Download','TÃ©lÃ©charger','Herunterladen','Ð¡ÐºÐ°Ñ‡Ð°Ñ‚ÑŒ','Descargar','Ä°ndir'),(523,'','max','Max','Ù…Ø§ÙƒØ³','Max','Max','Max','ÐœÐ°ÐºÑÐ¸Ð¼ÑƒÐ¼','Max','maksimum'),(524,'','store_purchase','bought one of your images','Ø§Ø´ØªØ±Ù‰ ÙˆØ§Ø­Ø¯Ø© Ù…Ù† Ø§Ù„ØµÙˆØ± Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ','kocht een van je afbeeldingen','achetÃ© une de vos images','kaufte eines Ihrer Bilder','ÐºÑƒÐ¿Ð¸Ð» Ð¾Ð´Ð½Ð¾ Ð¸Ð· Ð²Ð°ÑˆÐ¸Ñ… Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ð¹','comprÃ³ una de tus imÃ¡genes','resimlerinden birini satÄ±n aldÄ±'),(525,'','history','Sales History','ØªØ§Ø±ÙŠØ® Ø§Ù„Ù…Ø¨ÙŠØ¹Ø§Øª','Verkoopgeschiedenis','Historique des ventes','Verkaufsgeschichte','Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ Ð¿Ñ€Ð¾Ð´Ð°Ð¶','Historial de ventas','SatÄ±ÅŸ geÃ§miÅŸi'),(526,'','total_sell','Total Sells','Ù…Ø¬Ù…ÙˆØ¹ Ø¹Ù…Ù„ÙŠØ§Øª Ø§Ù„Ø¨ÙŠØ¹','Totaal verkoopt','Total des ventes','GesamtverkÃ¤ufe','Ð’ÑÐµÐ³Ð¾ Ð¿Ñ€Ð¾Ð´Ð°Ð½Ð¾','Ventas totales','Toplam SatÄ±yor'),(527,'','buyer','Buyer','Ù…Ø´ØªØ±','Koper','Acheteur','KÃ¤ufer','ÐŸÐ¾ÐºÑƒÐ¿Ð°Ñ‚ÐµÐ»ÑŒ','Comprador','AlÄ±cÄ±'),(528,'','date','Transaction date','ØªØ§Ø±ÙŠØ® Ø§Ù„ØµÙÙ‚Ø©','Transactie datum','Transaction date','Transaktionsdatum','Ð”Ð°Ñ‚Ð° ÑÐ´ÐµÐ»ÐºÐ¸','Fecha de TransacciÃ³n','Ä°ÅŸlem gÃ¼nÃ¼'),(529,'','admin_commission','Admin commission','Ù„Ø¬Ù†Ø© Ø§Ù„Ø§Ø¯Ø§Ø±ÙŠØ©','Administratiecommissie','Admin commission','Verwaltungskommission','ÐšÐ¾Ð¼Ð¸ÑÑÐ¸Ñ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð°','ComisiÃ³n administrativa','Admin commission'),(530,'','net_earning','Net earning','ØµØ§ÙÙŠ Ø±Ø¨Ø­','Netto inkomsten','Gain net','Nettoeinkommen','Ð§Ð¸ÑÑ‚Ñ‹Ð¹ Ð´Ð¾Ñ…Ð¾Ð´','Ganancia neta','Net kazanÃ§'),(531,'','sort_by','Sort by','ØªØ±ØªÙŠØ¨ Ø­Ø³Ø¨','Sorteer op','Trier par','Sortiere nach','Ð¡Ð¾Ñ€Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¿Ð¾','Ordenar por','GÃ¶re sÄ±rala'),(532,'','my_downloads','My Downloads','Ø¨Ù„Ø¯ÙŠ Ø§Ù„ØªÙ†Ø²ÙŠÙ„Ø§Øª','Mijn downloads','Mes TÃ©lÃ©chargements','Meine Downloads','ÐœÐ¾Ð¸ Ð—Ð°Ð³Ñ€ÑƒÐ·ÐºÐ¸','Mis descargas','Ä°ndirdiklerim'),(533,'','image_type','Image Type','Ù†ÙˆØ¹ Ø§Ù„ØµÙˆØ±Ø©','Beeldtype','Image Type','Bildtyp','Ð¢Ð¸Ð¿ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ','Tipo de imagen','Resim tÃ¼rÃ¼'),(534,'','resolution','Resolution','Ø§Ù„Ù‚Ø±Ø§Ø±','Resolutie','RÃ©solution','AuflÃ¶sung','Ñ€Ð°Ð·Ñ€ÐµÑˆÐµÐ½Ð¸Ðµ','ResoluciÃ³n','Ã§Ã¶zÃ¼m'),(535,'','toggle_mode','Toggle Mode','ØªØ¨Ø¯ÙŠÙ„ Ø§Ù„ÙˆØ¶Ø¹','Schakelmodus','Toggle Mode','Toggle Mode','Ð ÐµÐ¶Ð¸Ð¼ Ð¿ÐµÑ€ÐµÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ñ','Modo de alternar','GeÃ§iÅŸ Modu');
/*!40000 ALTER TABLE `pxp_langs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_media_files`
--

DROP TABLE IF EXISTS `pxp_media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_media_files` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `post_id` int(30) DEFAULT '0',
  `user_id` int(15) NOT NULL DEFAULT '0',
  `file` varchar(3000) NOT NULL DEFAULT '',
  `extra` varchar(3000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `pxp_media_files_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `pxp_posts` (`post_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_media_files`
--

LOCK TABLES `pxp_media_files` WRITE;
/*!40000 ALTER TABLE `pxp_media_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_messages`
--

DROP TABLE IF EXISTS `pxp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(15) NOT NULL DEFAULT '0',
  `to_id` int(15) NOT NULL DEFAULT '0',
  `text` text,
  `media_file` varchar(3000) NOT NULL DEFAULT '',
  `media_type` varchar(20) NOT NULL DEFAULT '',
  `media_name` varchar(100) NOT NULL DEFAULT '',
  `deleted_fs1` enum('0','1') NOT NULL DEFAULT '0',
  `deleted_fs2` enum('0','1') NOT NULL DEFAULT '0',
  `seen` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0',
  `extra` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `seen` (`seen`),
  KEY `from_id` (`from_id`),
  KEY `to_id` (`to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_messages`
--

LOCK TABLES `pxp_messages` WRITE;
/*!40000 ALTER TABLE `pxp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_notifications`
--

DROP TABLE IF EXISTS `pxp_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notifier_id` int(11) NOT NULL DEFAULT '0',
  `recipient_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(100) NOT NULL DEFAULT '',
  `text` text,
  `url` varchar(3000) NOT NULL DEFAULT '',
  `seen` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0',
  `sent_push` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `type` (`type`),
  KEY `notifier_id` (`notifier_id`),
  CONSTRAINT `pxp_notifications_ibfk_1` FOREIGN KEY (`notifier_id`) REFERENCES `pxp_users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `pxp_notifications_ibfk_2` FOREIGN KEY (`recipient_id`) REFERENCES `pxp_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_notifications`
--

LOCK TABLES `pxp_notifications` WRITE;
/*!40000 ALTER TABLE `pxp_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_payments`
--

DROP TABLE IF EXISTS `pxp_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_payments`
--

LOCK TABLES `pxp_payments` WRITE;
/*!40000 ALTER TABLE `pxp_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_post_comments`
--

DROP TABLE IF EXISTS `pxp_post_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_post_comments` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `post_id` int(20) NOT NULL DEFAULT '0',
  `user_id` int(20) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `time` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `pxp_post_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `pxp_posts` (`post_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_post_comments`
--

LOCK TABLES `pxp_post_comments` WRITE;
/*!40000 ALTER TABLE `pxp_post_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_post_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_post_likes`
--

DROP TABLE IF EXISTS `pxp_post_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_post_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(30) NOT NULL DEFAULT '0',
  `user_id` int(30) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'up',
  `time` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `type` (`type`),
  CONSTRAINT `pxp_post_likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `pxp_posts` (`post_id`) ON DELETE CASCADE,
  CONSTRAINT `pxp_post_likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `pxp_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_post_likes`
--

LOCK TABLES `pxp_post_likes` WRITE;
/*!40000 ALTER TABLE `pxp_post_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_post_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_post_reports`
--

DROP TABLE IF EXISTS `pxp_post_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_post_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(30) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` varchar(1000) NOT NULL DEFAULT '',
  `type` varchar(150) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `pxp_post_reports_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `pxp_posts` (`post_id`) ON DELETE CASCADE,
  CONSTRAINT `pxp_post_reports_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `pxp_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_post_reports`
--

LOCK TABLES `pxp_post_reports` WRITE;
/*!40000 ALTER TABLE `pxp_post_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_post_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_posts`
--

DROP TABLE IF EXISTS `pxp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_posts` (
  `post_id` int(30) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` varchar(3000) NOT NULL DEFAULT '',
  `youtube` varchar(150) NOT NULL DEFAULT '',
  `vimeo` varchar(20) NOT NULL DEFAULT '',
  `dailymotion` varchar(50) NOT NULL DEFAULT '',
  `playtube` varchar(250) NOT NULL DEFAULT '',
  `mp4` text,
  `time` varchar(100) NOT NULL DEFAULT '0',
  `type` varchar(100) NOT NULL DEFAULT '',
  `registered` varchar(32) NOT NULL DEFAULT '0000/0',
  `views` int(11) NOT NULL DEFAULT '0',
  `boosted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `registered` (`registered`),
  CONSTRAINT `pxp_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `pxp_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_posts`
--

LOCK TABLES `pxp_posts` WRITE;
/*!40000 ALTER TABLE `pxp_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_saved_posts`
--

DROP TABLE IF EXISTS `pxp_saved_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_saved_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(15) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `pxp_saved_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `pxp_users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `pxp_saved_posts_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `pxp_posts` (`post_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_saved_posts`
--

LOCK TABLES `pxp_saved_posts` WRITE;
/*!40000 ALTER TABLE `pxp_saved_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_saved_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_sessions`
--

DROP TABLE IF EXISTS `pxp_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(100) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `platform` varchar(30) NOT NULL DEFAULT 'web',
  `platform_details` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `user_id` (`user_id`),
  KEY `platform` (`platform`),
  KEY `time` (`time`),
  CONSTRAINT `pxp_sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `pxp_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_sessions`
--

LOCK TABLES `pxp_sessions` WRITE;
/*!40000 ALTER TABLE `pxp_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_static_pages`
--

DROP TABLE IF EXISTS `pxp_static_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_static_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_static_pages`
--

LOCK TABLES `pxp_static_pages` WRITE;
/*!40000 ALTER TABLE `pxp_static_pages` DISABLE KEYS */;
INSERT INTO `pxp_static_pages` VALUES (1,'terms_of_use','&lt;h4&gt;1- Write your Terms Of Use here.&lt;/h4&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis sdnostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h4&gt;2- Random title&lt;/h4&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;'),(2,'privacy_and_policy','&lt;h2&gt;Who we are?&lt;/h2&gt;&lt;p&gt;Provide name and contact details of the data controller. This will typically be your business or you, if you are a sole trader. Where applicable, you should include the identity and contact details of the controllerâ€™s representative and/or the data protection officer.&lt;/p&gt;&lt;h2&gt;What information do we collect?&lt;/h2&gt;&lt;p&gt;Specify the types of personal information you collect, eg names, addresses, user names, etc. You should include specific details on: how you collect data (eg when a user registers, purchases or uses your services, completes a contact form, signs up to a newsletter, etc) what specific data you collect through each of the data collection method if you collect data from third parties, you must specify categories of data and source if you process sensitive personal data or financial information, and how you handle this&amp;nbsp;&lt;br&gt;&lt;br&gt;You may want to provide the user with relevant definitions in relation to personal data and sensitive personal data.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;How do we use personal information?&lt;/h2&gt;&lt;p&gt;Describe in detail all the service- and business-related purposes for which you will process data. For example, this may include things like: personalisation of content, business information or user experience account set up and administration delivering marketing and events communication carrying out polls and surveys internal research and development purposes providing goods and services legal obligations (eg prevention of fraud) meeting internal audit requirements&amp;nbsp;&lt;br&gt;&lt;br&gt;Please note this list is not exhaustive. You will need to record all purposes for which you process personal data.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;What legal basis do we have for processing your personal data?&lt;/h2&gt;&lt;p&gt;Describe the relevant processing conditions contained within the GDPR. There are six possible legal grounds: consent contract legitimate interests vital interests public task legal obligation&amp;nbsp;&lt;br&gt;&lt;br&gt;Provide detailed information on all grounds that apply to your processing, and why. If you rely on consent, explain how individuals can withdraw and manage their consent. If you rely on legitimate interests, explain clearly what these are.&amp;nbsp;&lt;br&gt;&lt;br&gt;If youâ€™re processing special category personal data, you will have to satisfy at least one of the six processing conditions, as well as additional requirements for processing under the GDPR. Provide information on all additional grounds that apply.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;When do we share personal data?&lt;/h2&gt;&lt;p&gt;Explain that you will treat personal data confidentially and describe the circumstances when you might disclose or share it. Eg, when necessary to provide your services or conduct your business operations, as outlined in your purposes for processing. You should provide information on: how you will share the data what safeguards you will have in place what parties you may share the data with and why&lt;/p&gt;&lt;h2&gt;Where do we store and process personal data?&lt;/h2&gt;&lt;p&gt;If applicable, explain if you intend to store and process data outside of the data subjectâ€™s home country. Outline the steps you will take to ensure the data is processed according to your privacy policy and the applicable law of the country where data is located. If you transfer data outside the European Economic Area, outline the measures you will put in place to provide an appropriate level of data privacy protection. Eg contractual clauses, data transfer agreements, etc.&lt;/p&gt;&lt;h2&gt;How do we secure personal data?&lt;/h2&gt;&lt;p&gt;Describe your approach to data security and the technologies and procedures you use to protect personal information. For example, these may be measures: to protect data against accidental loss to prevent unauthorised access, use, destruction or disclosure to ensure business continuity and disaster recovery to restrict access to personal information to conduct privacy impact assessments in accordance with the law and your business policies to train staff and contractors on data security to manage third party risks, through use of contracts and security reviews&amp;nbsp;&lt;br&gt;&lt;br&gt;Please note this list is not exhaustive. You should record all mechanisms you rely on to protect personal data. You should also state if your organisation adheres to certain accepted standards or regulatory requirements.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;How long do we keep your personal data for?&lt;/h2&gt;&lt;p&gt;Provide specific information on the length of time you will keep the information for in relation to each processing purpose. The GDPR requires you to retain data for no longer than reasonably necessary. Include details of your data or records retention schedules, or link to additional resources where these are published.&amp;nbsp;&lt;br&gt;&lt;br&gt;If you cannot state a specific period, you need to set out the criteria you will apply to determine how long to keep the data for (eg local laws, contractual obligations, etc)&amp;nbsp;&lt;br&gt;&lt;br&gt;You should also outline how you securely dispose of data after you no longer need it.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;Your rights in relation to personal data&lt;/h2&gt;&lt;p&gt;Under the GDPR, you must respect the right of data subjects to access and control their personal data. In your privacy notice, you must outline their rights in respect of: access to personal information correction and deletion withdrawal of consent (if processing data on condition of consent) data portability restriction of processing and objection lodging a complaint with the Information Commissionerâ€™s Office You should explain how individuals can exercise their rights, and how you plan to respond to subject data requests. State if any relevant exemptions may apply and set out any identity verifications procedures you may rely on. Include details of the circumstances where data subject rights may be limited, eg if fulfilling the data subject request may expose personal data about another person, or if youâ€™re asked to delete data which you are required to keep by law.&lt;/p&gt;&lt;h2&gt;Use of automated decision-making and profiling&lt;/h2&gt;&lt;p&gt;Where you use profiling or other automated decision-making, you must disclose this in your privacy policy. In such cases, you must provide details on existence of any automated decision-making, together with information about the logic involved, and the likely significance and consequences of the processing of the individual.&lt;/p&gt;&lt;h2&gt;How to contact us?&lt;/h2&gt;&lt;p&gt;Explain how data subject can get in touch if they have questions or concerns about your privacy practices, their personal information, or if they wish to file a complaint. Describe all ways in which they can contact you â€“ eg online, by email or postal mail.&amp;nbsp;&lt;br&gt;&lt;br&gt;If applicable, you may also include information on:&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;Use of cookies and other technologies&lt;/h2&gt;&lt;p&gt;You may include a link to further information, or describe within the policy if you intend to set and use cookies, tracking and similar technologies to store and manage user preferences on your website, advertise, enable content or otherwise analyse user and usage data. Provide information on what types of cookies and technologies you use, why you use them and how an individual can control and manage them.&amp;nbsp;&lt;br&gt;&lt;br&gt;Linking to other websites / third party content If you link to external sites and resources from your website, be specific on whether this constitutes endorsement, and if you take any responsibility for the content (or information contained within) any linked website.&amp;nbsp;&lt;br&gt;&lt;br&gt;You may wish to consider adding other optional clauses to your privacy policy, depending on your businessâ€™ circumstances.&lt;/p&gt;'),(3,'about_us','&lt;h4&gt;1- Write about your website here.&lt;/h4&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;h4&gt;2- Random title&lt;/h4&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dxzcolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;'),(4,'contact_us','<form id=\"contact_us_form\" class=\"form row pp_sett_form\"><div class=\"col-md-3\">&nbsp;</div><div class=\"col-md-6\"><div class=\"pp_mat_input\"><input class=\"form-control\" name=\"first_name\" required=\"true\" type=\"text\"> <label>First Name*</label></div><div class=\"pp_mat_input\"><input class=\"form-control\" name=\"last_name\" required=\"true\" type=\"text\"> <label>Last Name*</label></div><div class=\"pp_mat_input\" style=\"margin-bottom: 1.7em;\" data-mce-style=\"margin-bottom: 1.7em;\"><input class=\"form-control\" name=\"email\" required=\"true\" type=\"email\"> <label>Email*</label></div><div class=\"pp_mat_input\"><textarea class=\"form-control\" name=\"message\" rows=\"3\"></textarea> <label>Messages</label></div><div class=\"pp_terms\"><input id=\"terms\" name=\"terms\" type=\"checkbox\" onchange=\"activate_Button(this)\" > <label for=\"terms\"> I agree to the <a href=\"http://localhost/pixelphoto/terms-of-use\" data-ajax=\"ajax_loading.php?app=terms&apph=terms&page=terms-of-use\">Terms of use</a></label></div><div class=\"col-md-3\">&nbsp;</div><div class=\"pp_load_loader\"><button id=\"contact_submit\" class=\"btn btn-info pp_flat_btn\" disabled=\"disabled\" type=\"submit\">Send</button></div><div class=\"clear\">&nbsp;</div></div><div class=\"col-md-3\">&nbsp;</div></form>');
/*!40000 ALTER TABLE `pxp_static_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_store`
--

DROP TABLE IF EXISTS `pxp_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(250) DEFAULT '',
  `category` int(11) unsigned DEFAULT NULL,
  `price` int(11) unsigned DEFAULT NULL,
  `license` varchar(50) DEFAULT '',
  `tags` text,
  `small_file` varchar(250) DEFAULT '',
  `full_file` varchar(255) DEFAULT '',
  `sells` int(11) unsigned DEFAULT '0',
  `views` int(11) unsigned DEFAULT '0',
  `downloads` int(11) unsigned DEFAULT '0',
  `created_date` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_store`
--

LOCK TABLES `pxp_store` WRITE;
/*!40000 ALTER TABLE `pxp_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_story`
--

DROP TABLE IF EXISTS `pxp_story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `caption` varchar(500) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT '0',
  `media_file` varchar(3000) NOT NULL DEFAULT '',
  `type` enum('1','2') NOT NULL DEFAULT '1',
  `duration` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `time` (`time`),
  CONSTRAINT `pxp_story_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `pxp_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_story`
--

LOCK TABLES `pxp_story` WRITE;
/*!40000 ALTER TABLE `pxp_story` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_story` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_story_views`
--

DROP TABLE IF EXISTS `pxp_story_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_story_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `story_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `story_id` (`story_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `pxp_story_views_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `pxp_story` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_story_views`
--

LOCK TABLES `pxp_story_views` WRITE;
/*!40000 ALTER TABLE `pxp_story_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_story_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_transactions`
--

DROP TABLE IF EXISTS `pxp_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` varchar(50) NOT NULL DEFAULT '0',
  `admin_com` varchar(50) NOT NULL DEFAULT '0',
  `type` varchar(100) NOT NULL DEFAULT '',
  `item_store_id` int(11) unsigned DEFAULT '0',
  `time` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `admin_com` (`admin_com`),
  KEY `amount` (`amount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_transactions`
--

LOCK TABLES `pxp_transactions` WRITE;
/*!40000 ALTER TABLE `pxp_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_user_reports`
--

DROP TABLE IF EXISTS `pxp_user_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_user_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(15) NOT NULL DEFAULT '0',
  `profile_id` int(15) NOT NULL DEFAULT '0',
  `type` int(5) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `profile_id` (`profile_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_user_reports`
--

LOCK TABLES `pxp_user_reports` WRITE;
/*!40000 ALTER TABLE `pxp_user_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_user_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_userads`
--

DROP TABLE IF EXISTS `pxp_userads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_userads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `headline` varchar(200) NOT NULL DEFAULT '',
  `description` text,
  `location` varchar(1000) NOT NULL DEFAULT 'us',
  `audience` longtext,
  `ad_media` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `gender` varchar(15) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL DEFAULT 'all',
  `bidding` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `clicks` int(15) NOT NULL DEFAULT '0',
  `views` int(15) NOT NULL DEFAULT '0',
  `posted` varchar(15) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '1',
  `appears` varchar(10) NOT NULL DEFAULT 'post',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `appears` (`appears`),
  KEY `user_id` (`user_id`),
  KEY `location` (`location`(255)),
  KEY `gender` (`gender`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_userads`
--

LOCK TABLES `pxp_userads` WRITE;
/*!40000 ALTER TABLE `pxp_userads` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_userads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_users`
--

DROP TABLE IF EXISTS `pxp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `ip_address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(61) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `fname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lname` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'male',
  `email_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `language` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'english',
  `avatar` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'media/img/d-avatar.jpg',
  `cover` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'media/img/d-cover.jpg',
  `country_id` int(11) NOT NULL DEFAULT '0',
  `about` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `google` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `facebook` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `twitter` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `website` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `active` int(11) NOT NULL DEFAULT '0',
  `admin` int(11) NOT NULL DEFAULT '0',
  `verified` int(11) NOT NULL DEFAULT '0',
  `last_seen` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `registered` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0000/0',
  `is_pro` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `p_privacy` enum('2','1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '2',
  `c_privacy` enum('1','2') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `n_on_like` enum('1','0') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `n_on_mention` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `n_on_comment` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `n_on_follow` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `n_on_comment_like` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `n_on_comment_reply` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `startup_avatar` int(11) NOT NULL DEFAULT '0',
  `startup_info` int(11) NOT NULL DEFAULT '0',
  `startup_follow` int(11) NOT NULL DEFAULT '0',
  `src` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `login_token` char(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `search_engines` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `mode` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'day',
  `device_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `balance` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `wallet` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0.00',
  `referrer` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '1',
  `business_account` int(11) NOT NULL DEFAULT '0',
  `paypal_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `b_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `b_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `b_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `b_site` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `b_site_action` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `password` (`password`),
  KEY `last_active` (`last_seen`),
  KEY `admin` (`admin`),
  KEY `active` (`active`),
  KEY `registered` (`registered`),
  KEY `p_privacy` (`p_privacy`),
  KEY `c_privacy` (`c_privacy`),
  KEY `n_on_like` (`n_on_like`),
  KEY `n_on_mention` (`n_on_mention`),
  KEY `n_on_comment` (`n_on_comment`),
  KEY `n_on_follow` (`n_on_follow`),
  KEY `src` (`src`),
  KEY `n_on_comment_like` (`n_on_comment_like`),
  KEY `n_on_comment_reply` (`n_on_comment_reply`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_users`
--

LOCK TABLES `pxp_users` WRITE;
/*!40000 ALTER TABLE `pxp_users` DISABLE KEYS */;
INSERT INTO `pxp_users` VALUES (1,'admin','admin@admin.com','127.0.0.1','$2y$10$tEaYLUCmfl6fn31QaOw0K.vfI9laa6VEa4/Jtz2HLHAK1WSUOeR32','','','male','','english','media/img/d-avatar.jpg','media/img/d-cover.jpg',45,'','','','','',1,1,0,'1556903430','0000/0',0,0,'2','1','1','1','1','1','1','1',1,1,1,'','','1','day','','','',0,0,0,'','','','','','');
/*!40000 ALTER TABLE `pxp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_verification_requests`
--

DROP TABLE IF EXISTS `pxp_verification_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_verification_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `passport` text,
  `photo` text,
  `message` varchar(200) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `time` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_verification_requests`
--

LOCK TABLES `pxp_verification_requests` WRITE;
/*!40000 ALTER TABLE `pxp_verification_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_verification_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pxp_withdrawal_requests`
--

DROP TABLE IF EXISTS `pxp_withdrawal_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pxp_withdrawal_requests` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(200) NOT NULL DEFAULT '',
  `amount` varchar(100) NOT NULL DEFAULT '0',
  `currency` varchar(20) NOT NULL DEFAULT '',
  `requested` varchar(100) NOT NULL DEFAULT '',
  `status` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxp_withdrawal_requests`
--

LOCK TABLES `pxp_withdrawal_requests` WRITE;
/*!40000 ALTER TABLE `pxp_withdrawal_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `pxp_withdrawal_requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:11:54
