-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: wondersocialdb
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
-- Table structure for table `bank_receipts`
--

DROP TABLE IF EXISTS `bank_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_receipts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `fund_id` int(11) NOT NULL DEFAULT '0',
  `description` tinytext NOT NULL,
  `price` varchar(50) NOT NULL DEFAULT '0',
  `mode` varchar(50) NOT NULL DEFAULT '',
  `approved` int(11) unsigned NOT NULL DEFAULT '0',
  `receipt_file` varchar(250) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approved_at` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_receipts`
--

LOCK TABLES `bank_receipts` WRITE;
/*!40000 ALTER TABLE `bank_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_activities`
--

DROP TABLE IF EXISTS `wo_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL DEFAULT '0',
  `post_id` int(255) NOT NULL DEFAULT '0',
  `reply_id` int(11) unsigned DEFAULT '0',
  `comment_id` int(11) unsigned DEFAULT '0',
  `follow_id` int(11) NOT NULL DEFAULT '0',
  `activity_type` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `activity_type` (`activity_type`),
  KEY `order1` (`user_id`,`id`),
  KEY `order2` (`post_id`,`id`),
  KEY `comment_id` (`comment_id`),
  KEY `reply_id` (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_activities`
--

LOCK TABLES `wo_activities` WRITE;
/*!40000 ALTER TABLE `wo_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_admininvitations`
--

DROP TABLE IF EXISTS `wo_admininvitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_admininvitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(300) NOT NULL DEFAULT '0',
  `posted` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `code` (`code`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_admininvitations`
--

LOCK TABLES `wo_admininvitations` WRITE;
/*!40000 ALTER TABLE `wo_admininvitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_admininvitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_ads`
--

DROP TABLE IF EXISTS `wo_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL DEFAULT '',
  `code` text,
  `active` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_ads`
--

LOCK TABLES `wo_ads` WRITE;
/*!40000 ALTER TABLE `wo_ads` DISABLE KEYS */;
INSERT INTO `wo_ads` VALUES (1,'header','','0'),(2,'sidebar','','0'),(4,'footer','','0'),(5,'post_first','','0'),(6,'post_second','','0'),(7,'post_third','','0');
/*!40000 ALTER TABLE `wo_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_affiliates_requests`
--

DROP TABLE IF EXISTS `wo_affiliates_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_affiliates_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` varchar(100) NOT NULL DEFAULT '0',
  `full_amount` varchar(100) NOT NULL DEFAULT '',
  `iban` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `full_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `swift_code` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(600) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `time` (`time`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_affiliates_requests`
--

LOCK TABLES `wo_affiliates_requests` WRITE;
/*!40000 ALTER TABLE `wo_affiliates_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_affiliates_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_agoravideocall`
--

DROP TABLE IF EXISTS `wo_agoravideocall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_agoravideocall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT 'video',
  `room_name` varchar(50) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `from_id` (`from_id`),
  KEY `to_id` (`to_id`),
  KEY `type` (`type`),
  KEY `room_name` (`room_name`),
  KEY `time` (`time`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_agoravideocall`
--

LOCK TABLES `wo_agoravideocall` WRITE;
/*!40000 ALTER TABLE `wo_agoravideocall` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_agoravideocall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_albums_media`
--

DROP TABLE IF EXISTS `wo_albums_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_albums_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `order1` (`post_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_albums_media`
--

LOCK TABLES `wo_albums_media` WRITE;
/*!40000 ALTER TABLE `wo_albums_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_albums_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_announcement`
--

DROP TABLE IF EXISTS `wo_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text,
  `time` int(32) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_announcement`
--

LOCK TABLES `wo_announcement` WRITE;
/*!40000 ALTER TABLE `wo_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_announcement_views`
--

DROP TABLE IF EXISTS `wo_announcement_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_announcement_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `announcement_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `announcement_id` (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_announcement_views`
--

LOCK TABLES `wo_announcement_views` WRITE;
/*!40000 ALTER TABLE `wo_announcement_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_announcement_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_apps`
--

DROP TABLE IF EXISTS `wo_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_apps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_user_id` int(11) NOT NULL DEFAULT '0',
  `app_name` varchar(32) NOT NULL,
  `app_website_url` varchar(55) NOT NULL,
  `app_description` text NOT NULL,
  `app_avatar` varchar(100) NOT NULL DEFAULT 'upload/photos/app-default-icon.png',
  `app_callback_url` varchar(255) NOT NULL,
  `app_id` varchar(32) NOT NULL,
  `app_secret` varchar(55) NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_apps`
--

LOCK TABLES `wo_apps` WRITE;
/*!40000 ALTER TABLE `wo_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_apps_hash`
--

DROP TABLE IF EXISTS `wo_apps_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_apps_hash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash_id` varchar(200) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `hash_id` (`hash_id`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_apps_hash`
--

LOCK TABLES `wo_apps_hash` WRITE;
/*!40000 ALTER TABLE `wo_apps_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_apps_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_apps_permission`
--

DROP TABLE IF EXISTS `wo_apps_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_apps_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_apps_permission`
--

LOCK TABLES `wo_apps_permission` WRITE;
/*!40000 ALTER TABLE `wo_apps_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_apps_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_appssessions`
--

DROP TABLE IF EXISTS `wo_appssessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_appssessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(120) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `platform_details` text,
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_id` (`session_id`),
  KEY `user_id` (`user_id`),
  KEY `platform` (`platform`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_appssessions`
--

LOCK TABLES `wo_appssessions` WRITE;
/*!40000 ALTER TABLE `wo_appssessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_appssessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_audiocalls`
--

DROP TABLE IF EXISTS `wo_audiocalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_audiocalls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `call_id` varchar(30) NOT NULL DEFAULT '0',
  `access_token` text,
  `call_id_2` varchar(30) NOT NULL DEFAULT '',
  `access_token_2` text,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `room_name` varchar(50) NOT NULL DEFAULT '',
  `active` int(11) NOT NULL DEFAULT '0',
  `called` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `declined` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `to_id` (`to_id`),
  KEY `from_id` (`from_id`),
  KEY `call_id` (`call_id`),
  KEY `called` (`called`),
  KEY `declined` (`declined`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_audiocalls`
--

LOCK TABLES `wo_audiocalls` WRITE;
/*!40000 ALTER TABLE `wo_audiocalls` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_audiocalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_bad_login`
--

DROP TABLE IF EXISTS `wo_bad_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_bad_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) NOT NULL DEFAULT '',
  `time` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_bad_login`
--

LOCK TABLES `wo_bad_login` WRITE;
/*!40000 ALTER TABLE `wo_bad_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_bad_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_banned_ip`
--

DROP TABLE IF EXISTS `wo_banned_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_banned_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip_address` (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_banned_ip`
--

LOCK TABLES `wo_banned_ip` WRITE;
/*!40000 ALTER TABLE `wo_banned_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_banned_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_blocks`
--

DROP TABLE IF EXISTS `wo_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blocker` int(11) NOT NULL DEFAULT '0',
  `blocked` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blocker` (`blocker`),
  KEY `blocked` (`blocked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_blocks`
--

LOCK TABLES `wo_blocks` WRITE;
/*!40000 ALTER TABLE `wo_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_blog`
--

DROP TABLE IF EXISTS `wo_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `content` text,
  `description` text,
  `posted` varchar(300) DEFAULT '0',
  `category` int(255) DEFAULT '0',
  `thumbnail` varchar(100) DEFAULT 'upload/photos/d-blog.jpg',
  `view` int(11) DEFAULT '0',
  `shared` int(11) DEFAULT '0',
  `tags` varchar(300) DEFAULT '',
  `active` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `title` (`title`),
  KEY `category` (`category`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_blog`
--

LOCK TABLES `wo_blog` WRITE;
/*!40000 ALTER TABLE `wo_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_blog_reaction`
--

DROP TABLE IF EXISTS `wo_blog_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_blog_reaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `reply_id` int(11) NOT NULL DEFAULT '0',
  `reaction` varchar(50) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `blog_id` (`blog_id`),
  KEY `comment_id` (`comment_id`),
  KEY `reply_id` (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_blog_reaction`
--

LOCK TABLES `wo_blog_reaction` WRITE;
/*!40000 ALTER TABLE `wo_blog_reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_blog_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_blogcommentreplies`
--

DROP TABLE IF EXISTS `wo_blogcommentreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_blogcommentreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comm_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `likes` int(11) NOT NULL DEFAULT '0',
  `posted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `comm_id` (`comm_id`),
  KEY `blog_id` (`blog_id`),
  KEY `order1` (`comm_id`,`id`),
  KEY `order2` (`blog_id`,`id`),
  KEY `order3` (`user_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_blogcommentreplies`
--

LOCK TABLES `wo_blogcommentreplies` WRITE;
/*!40000 ALTER TABLE `wo_blogcommentreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_blogcommentreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_blogcomments`
--

DROP TABLE IF EXISTS `wo_blogcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_blogcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `likes` int(11) NOT NULL DEFAULT '0',
  `posted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_blogcomments`
--

LOCK TABLES `wo_blogcomments` WRITE;
/*!40000 ALTER TABLE `wo_blogcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_blogcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_blogmoviedislikes`
--

DROP TABLE IF EXISTS `wo_blogmoviedislikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_blogmoviedislikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_comm_id` int(20) NOT NULL DEFAULT '0',
  `blog_commreply_id` int(20) NOT NULL DEFAULT '0',
  `movie_comm_id` int(20) NOT NULL DEFAULT '0',
  `movie_commreply_id` int(20) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(50) NOT NULL DEFAULT '0',
  `movie_id` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blog_comm_id` (`blog_comm_id`),
  KEY `movie_comm_id` (`movie_comm_id`),
  KEY `user_id` (`user_id`),
  KEY `blog_commreply_id` (`blog_commreply_id`),
  KEY `movie_commreply_id` (`movie_commreply_id`),
  KEY `blog_id` (`blog_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_blogmoviedislikes`
--

LOCK TABLES `wo_blogmoviedislikes` WRITE;
/*!40000 ALTER TABLE `wo_blogmoviedislikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_blogmoviedislikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_blogmovielikes`
--

DROP TABLE IF EXISTS `wo_blogmovielikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_blogmovielikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_comm_id` int(20) NOT NULL DEFAULT '0',
  `blog_commreply_id` int(20) NOT NULL DEFAULT '0',
  `movie_comm_id` int(20) NOT NULL DEFAULT '0',
  `movie_commreply_id` int(20) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(50) NOT NULL DEFAULT '0',
  `movie_id` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_comm_id`),
  KEY `movie_id` (`movie_comm_id`),
  KEY `user_id` (`user_id`),
  KEY `blog_commreply_id` (`blog_commreply_id`),
  KEY `movie_commreply_id` (`movie_commreply_id`),
  KEY `blog_id_2` (`blog_id`),
  KEY `movie_id_2` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_blogmovielikes`
--

LOCK TABLES `wo_blogmovielikes` WRITE;
/*!40000 ALTER TABLE `wo_blogmovielikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_blogmovielikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_blogs_categories`
--

DROP TABLE IF EXISTS `wo_blogs_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_blogs_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(160) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_blogs_categories`
--

LOCK TABLES `wo_blogs_categories` WRITE;
/*!40000 ALTER TABLE `wo_blogs_categories` DISABLE KEYS */;
INSERT INTO `wo_blogs_categories` VALUES (2,'1421'),(3,'1424'),(4,'1427'),(5,'1430'),(6,'1433'),(7,'1436'),(8,'1439'),(9,'1442'),(10,'1445'),(11,'1448'),(12,'1451'),(13,'1454'),(14,'1457'),(15,'1460'),(16,'1463'),(17,'1466'),(18,'1469');
/*!40000 ALTER TABLE `wo_blogs_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_codes`
--

DROP TABLE IF EXISTS `wo_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '',
  `app_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `user_id` (`user_id`),
  KEY `app_id` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_codes`
--

LOCK TABLES `wo_codes` WRITE;
/*!40000 ALTER TABLE `wo_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_colored_posts`
--

DROP TABLE IF EXISTS `wo_colored_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_colored_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color_1` varchar(50) NOT NULL DEFAULT '',
  `color_2` varchar(50) NOT NULL DEFAULT '',
  `text_color` varchar(50) NOT NULL DEFAULT '',
  `image` varchar(250) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_colored_posts`
--

LOCK TABLES `wo_colored_posts` WRITE;
/*!40000 ALTER TABLE `wo_colored_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_colored_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_comment_replies`
--

DROP TABLE IF EXISTS `wo_comment_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_comment_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `c_file` varchar(300) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `comment_id` (`comment_id`),
  KEY `user_id` (`user_id`,`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_comment_replies`
--

LOCK TABLES `wo_comment_replies` WRITE;
/*!40000 ALTER TABLE `wo_comment_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_comment_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_comment_replies_likes`
--

DROP TABLE IF EXISTS `wo_comment_replies_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_comment_replies_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reply_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reply_id` (`reply_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_comment_replies_likes`
--

LOCK TABLES `wo_comment_replies_likes` WRITE;
/*!40000 ALTER TABLE `wo_comment_replies_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_comment_replies_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_comment_replies_wonders`
--

DROP TABLE IF EXISTS `wo_comment_replies_wonders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_comment_replies_wonders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reply_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `reply_id` (`reply_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_comment_replies_wonders`
--

LOCK TABLES `wo_comment_replies_wonders` WRITE;
/*!40000 ALTER TABLE `wo_comment_replies_wonders` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_comment_replies_wonders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_commentlikes`
--

DROP TABLE IF EXISTS `wo_commentlikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_commentlikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `comment_id` (`comment_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_commentlikes`
--

LOCK TABLES `wo_commentlikes` WRITE;
/*!40000 ALTER TABLE `wo_commentlikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_commentlikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_comments`
--

DROP TABLE IF EXISTS `wo_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `record` varchar(255) NOT NULL DEFAULT '',
  `c_file` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `page_id` (`page_id`),
  KEY `order1` (`user_id`,`id`),
  KEY `order2` (`page_id`,`id`),
  KEY `order3` (`post_id`,`id`),
  KEY `order4` (`user_id`,`id`),
  KEY `order5` (`post_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_comments`
--

LOCK TABLES `wo_comments` WRITE;
/*!40000 ALTER TABLE `wo_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_commentwonders`
--

DROP TABLE IF EXISTS `wo_commentwonders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_commentwonders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `comment_id` (`comment_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_commentwonders`
--

LOCK TABLES `wo_commentwonders` WRITE;
/*!40000 ALTER TABLE `wo_commentwonders` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_commentwonders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_config`
--

DROP TABLE IF EXISTS `wo_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` varchar(20000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_config`
--

LOCK TABLES `wo_config` WRITE;
/*!40000 ALTER TABLE `wo_config` DISABLE KEYS */;
INSERT INTO `wo_config` VALUES (1,'siteName','WoWonder'),(2,'siteTitle','WoWonder'),(3,'siteKeywords','social, wowonder, social site'),(4,'siteDesc','WoWonder v3.0.2 is a Social Networking Platform. With our new feature, user can wonder posts, photos,'),(5,'siteEmail','deendoughouz@gmail.com'),(6,'defualtLang','english'),(7,'emailValidation','0'),(8,'emailNotification','0'),(9,'fileSharing','1'),(10,'seoLink','1'),(11,'cacheSystem','0'),(12,'chatSystem','1'),(13,'useSeoFrindly','1'),(14,'reCaptcha','0'),(15,'reCaptchaKey',''),(16,'user_lastseen','1'),(17,'age','1'),(18,'deleteAccount','1'),(19,'connectivitySystem','0'),(20,'profileVisit','1'),(21,'maxUpload','96000000'),(22,'maxCharacters','640'),(23,'message_seen','1'),(24,'message_typing','1'),(25,'google_map_api','AIzaSyBOfpaMO_tMMsuvS2T4zx4llbtsFqMuT9Y'),(26,'allowedExtenstion','jpg,png,jpeg,gif,mkv,docx,zip,rar,pdf,doc,mp3,mp4,flv,wav,txt,mov,avi,webm,wav,mpeg'),(27,'censored_words',''),(28,'googleAnalytics',''),(29,'AllLogin','0'),(30,'googleLogin','0'),(31,'facebookLogin','0'),(32,'twitterLogin','0'),(33,'linkedinLogin','0'),(34,'VkontakteLogin','0'),(35,'facebookAppId',''),(36,'facebookAppKey',''),(37,'googleAppId',''),(38,'googleAppKey',''),(39,'twitterAppId',''),(40,'twitterAppKey',''),(41,'linkedinAppId',''),(42,'linkedinAppKey',''),(43,'VkontakteAppId',''),(44,'VkontakteAppKey',''),(45,'theme','wowonder'),(46,'second_post_button','reaction'),(47,'instagramAppId',''),(48,'instagramAppkey',''),(49,'instagramLogin','0'),(50,'header_background','#1e2321'),(51,'header_hover_border','#333333'),(52,'header_color','#ffffff'),(53,'body_background','#f9f9f9'),(54,'btn_color','#ffffff'),(55,'btn_background_color','#a84849'),(56,'btn_hover_color','#ffffff'),(57,'btn_hover_background_color','#c45a5b'),(58,'setting_header_color','#ffffff'),(59,'setting_header_background','#a84849'),(60,'setting_active_sidebar_color','#ffffff'),(61,'setting_active_sidebar_background','#a84849'),(62,'setting_sidebar_background','#ffffff'),(63,'setting_sidebar_color','#444444'),(64,'logo_extension','png'),(65,'online_sidebar','1'),(66,'background_extension','jpg'),(67,'profile_privacy','1'),(68,'video_upload','1'),(69,'audio_upload','1'),(70,'smtp_or_mail','mail'),(71,'smtp_username',''),(72,'smtp_host',''),(73,'smtp_password',''),(74,'smtp_port','587'),(75,'smtp_encryption','tls'),(76,'sms_or_email','mail'),(77,'sms_username',''),(78,'sms_password',''),(79,'sms_phone_number',''),(80,'is_ok','1'),(81,'pro','1'),(82,'paypal_id',''),(83,'paypal_secret',''),(84,'paypal_mode','sandbox'),(85,'weekly_price','3'),(86,'monthly_price','8'),(87,'yearly_price','89'),(88,'lifetime_price','259'),(89,'post_limit','40'),(90,'user_limit','10'),(91,'css_upload','0'),(92,'smooth_loading','1'),(93,'header_search_color','#0f1110'),(94,'header_button_shadow','#ffffff'),(95,'currency','USD'),(97,'games','1'),(98,'last_backup','00-00-0000'),(99,'pages','1'),(100,'groups','1'),(101,'order_posts_by','0'),(102,'btn_disabled','#a84849'),(103,'developers_page','1'),(104,'user_registration','1'),(105,'maintenance_mode','0'),(106,'video_chat','0'),(107,'video_accountSid',''),(108,'video_apiKeySid',''),(109,'video_apiKeySecret',''),(110,'video_configurationProfileSid',''),(111,'eapi',''),(112,'favicon_extension','png'),(113,'monthly_boosts','5'),(114,'yearly_boosts','20'),(115,'lifetime_boosts','40'),(116,'chat_outgoing_background','#fff9f9'),(117,'windows_app_version','1.0'),(118,'widnows_app_api_id','4bdde3b3317ae7e40a884fe280e0c72b'),(119,'widnows_app_api_key','d1283b82c0fd79aabbe18003dcc51adb'),(120,'stripe_id',''),(121,'stripe_secret',''),(122,'credit_card','no'),(123,'bitcoin','no'),(124,'m_withdrawal','50'),(125,'amount_ref','0.10'),(126,'affiliate_type','0'),(127,'affiliate_system','1'),(128,'classified','1'),(129,'amazone_s3','0'),(130,'bucket_name',''),(131,'amazone_s3_key',''),(132,'amazone_s3_s_key',''),(133,'region','us-east-1'),(134,'alipay','no'),(135,'is_utf8','1'),(136,'sms_t_phone_number',''),(137,'audio_chat','0'),(138,'sms_twilio_username',''),(139,'sms_twilio_password',''),(140,'sms_provider','twilio'),(141,'footer_background',''),(142,'footer_background_2',''),(143,'footer_text_color',''),(144,'classified_currency','USD'),(145,'classified_currency_s','$'),(146,'mime_types','text/plain,video/mp4,video/mov,video/mpeg,video/flv,video/avi,video/webm,audio/wav,audio/mpeg,video/quicktime,audio/mp3,image/png,image/jpeg,image/gif,application/pdf,application/msword,application/zip,application/x-rar-compressed,text/pdf,application/x-pointplus,text/css'),(147,'footer_background_n',''),(148,'blogs','1'),(149,'can_blogs','1'),(150,'push','0'),(151,'android_m_push_id',''),(152,'android_m_push_key',''),(153,'events','1'),(154,'forum','1'),(155,'last_update','1554124551'),(156,'movies','1'),(157,'yandex_translation_api','trnsl.1.1.20170601T212421Z.5834b565b8d47a18.2620528213fbf6ee3335f750659fc342e0ea7923'),(158,'update_db_15','1503149537'),(159,'ad_v_price','0.01'),(160,'ad_c_price','0.05'),(161,'emo_cdn','https://cdnjs.cloudflare.com/ajax/libs/emojione/2.1.4/assets/png/'),(162,'user_ads','1'),(163,'user_status','1'),(164,'date_style','m/d/y'),(165,'stickers','1'),(166,'giphy_api','420d477a542b4287b2bf91ac134ae041'),(167,'find_friends','1'),(168,'update_db_152','1504450479'),(169,'android_push_native','0'),(170,'android_push_messages','0'),(171,'update_db_153','updated'),(172,'ads_currency','USD'),(173,'web_push','0'),(174,'playtube_url','https://playtubescript.com'),(175,'connectivitySystemLimit','5000'),(176,'video_ad_skip','6'),(177,'update_user_profile','120'),(178,'cache_sidebar','1'),(179,'android_n_push_id',''),(180,'android_n_push_key',''),(181,'ftp_host',''),(182,'ftp_port','21'),(183,'ftp_username',''),(184,'ftp_password',''),(185,'ftp_upload','0'),(186,'ftp_endpoint',''),(187,'ftp_path','./'),(188,'transaction_log','yes'),(189,'coinpayments_secret',''),(190,'coinpayments_id',''),(191,'infobip_username',''),(192,'infobip_password',''),(193,'updatev2','done'),(194,'amount_percent_ref','0'),(195,'gift_system','0'),(196,'social_share_twitter','1'),(197,'social_share_google','1'),(198,'social_share_facebook','1'),(199,'social_share_whatsup','1'),(200,'social_share_pinterest','1'),(201,'social_share_linkedin','1'),(202,'social_share_telegram','1'),(203,'stickers_system','0'),(204,'dollar_to_point_cost','1000'),(205,'comments_point','10'),(206,'likes_point','5'),(207,'dislikes_point','2'),(208,'wonders_point','3'),(209,'reaction_point','5'),(210,'createpost_point','15'),(211,'point_allow_withdrawal','0'),(212,'sticky_video_player','0'),(213,'point_level_system','0'),(214,'comment_reports','1'),(215,'popular_posts','1'),(216,'auto_friend_users',''),(217,'spaces_key',''),(218,'spaces_secret',''),(219,'space_name',''),(220,'space_region',''),(221,'spaces','0'),(222,'watermark','0'),(223,'google_map','1'),(224,'login_auth','0'),(225,'two_factor','1'),(226,'two_factor_type','email'),(227,'last_notification_delete_run','1590239556'),(228,'ios_push_messages','0'),(229,'ios_m_push_id',''),(230,'ios_m_push_key',''),(231,'ios_push_native','0'),(232,'ios_n_push_id',''),(233,'ios_n_push_key',''),(234,'web_push_id',''),(235,'web_push_key',''),(236,'profile_back','0'),(237,'free_day_limit','1000'),(238,'adult_images','0'),(239,'adult_images_action','1'),(240,'adult_images_file',''),(241,'pro_day_limit','2000'),(242,'vision_api_key',''),(243,'bank_payment','yes'),(244,'bank_transfer_note','In order to confirm the bank transfer, you will need to upload a receipt or take a screenshot of your transfer within 1 day from your payment date. If a bank transfer is made but no receipt is uploaded within this period, your order will be cancelled. We will verify and confirm your receipt within 3 working days from the date you upload it.'),(245,'bank_description','<div class=\"bank_info\">\r\n                        <div class=\"dt_settings_header bg_gradient\">\r\n                            <div class=\"dt_settings_circle-1\"></div>\r\n                            <div class=\"dt_settings_circle-2\"></div>\r\n                            <div class=\"bank_info_innr\">\r\n                                <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path fill=\"currentColor\" d=\"M11.5,1L2,6V8H21V6M16,10V17H19V10M2,22H21V19H2M10,10V17H13V10M4,10V17H7V10H4Z\"></path></svg>\r\n                                <h4 class=\"bank_name\">Garanti Bank</h4>\r\n                                <div class=\"row\">\r\n                                    <div class=\"col col-md-12\">\r\n                                        <div class=\"bank_account\">\r\n                                            <p>4796824372433055</p>\r\n                                            <span class=\"help-block\">Account number / IBAN</span>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"col col-md-12\">\r\n                                        <div class=\"bank_account_holder\">\r\n                                            <p>Antoian Kordiyal</p>\r\n                                            <span class=\"help-block\">Account name</span>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"col col-md-6\">\r\n                                        <div class=\"bank_account_code\">\r\n                                            <p>TGBATRISXXX</p>\r\n                                            <span class=\"help-block\">Routing code</span>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"col col-md-6\">\r\n                                        <div class=\"bank_account_country\">\r\n                                            <p>United States</p>\r\n                                            <span class=\"help-block\">Country</span>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>'),(246,'recaptcha_secret_key',''),(247,'createblog_point','15'),(248,'deepsound_url','https://deepsoundscript.com'),(249,'english','1'),(250,'arabic','1'),(251,'dutch','1'),(252,'french','1'),(253,'german','1'),(254,'italian','1'),(255,'portuguese','1'),(256,'russian','1'),(257,'spanish','1'),(258,'turkish','1'),(259,'currency_array','[\"USD\",\"EUR\",\"JPY\",\"TRY\",\"GBP\",\"RUB\",\"PLN\",\"ILS\",\"BRL\",\"INR\"]'),(260,'currency_symbol_array','{\"USD\":\"$\",\"EUR\":\"u20ac\",\"TRY\":\"u20ba\",\"GBP\":\"u00a3\",\"RUB\":\"u0440u0443u0431\",\"PLN\":\"zu0142\",\"ILS\":\"u20aa\",\"BRL\":\"R$\",\"INR\":\"u20b9\"}'),(261,'paypal_currency','USD'),(262,'stripe_currency','USD'),(263,'2checkout_currency','USD'),(264,'version','3.0.2'),(265,'forum_visibility','1'),(266,'events_visibility','1'),(267,'product_visibility','1'),(268,'paypal','no'),(269,'poke_system','1'),(270,'afternoon_system','1'),(271,'providers_array',''),(272,'colored_posts_system','0'),(273,'checkout_payment','no'),(274,'checkout_mode','sandbox'),(275,'checkout_seller_id',''),(276,'checkout_publishable_key',''),(277,'checkout_private_key',''),(278,'job_system','1'),(279,'weather_widget','1'),(280,'common_things','1'),(281,'funding_system','1'),(282,'weather_key',''),(283,'funding_request','all'),(284,'donate_percentage','0'),(285,'post_approval','0'),(286,'auto_page_like',''),(287,'auto_group_join',''),(288,'memories_system','1'),(289,'membership_system','0'),(290,'recurring_payment','off'),(291,'who_upload','all'),(292,'Who_call','all'),(293,'blog_approval','0'),(294,'refund_system','on'),(295,'paystack_payment','no'),(296,'paystack_secret_key',''),(297,'cashfree_payment','no'),(298,'cashfree_client_key',''),(299,'cashfree_secret_key',''),(300,'msg91_authKey',''),(301,'offer_system','1'),(302,'nearby_shop_system','1'),(303,'nearby_business_system','1'),(304,'prevent_system','1'),(305,'bad_login_limit','4'),(306,'lock_time','10'),(307,'password_complexity_system','0'),(308,'invite_links_system','0'),(309,'user_links_limit','10'),(310,'expire_user_links','month'),(311,'shout_box_system','1'),(312,'bank_withdrawal_system','1'),(313,'live_video','0'),(314,'live_token',''),(315,'live_account_id',''),(316,'razorpay_payment','no'),(317,'razorpay_key_id',''),(318,'razorpay_key_secret',''),(319,'paysera_payment','no'),(320,'paysera_project_id',''),(321,'paysera_sign_password',''),(322,'paysera_mode','1'),(323,'cloud_upload','0'),(324,'cloud_file_path',''),(325,'cloud_bucket_name',''),(326,'live_video_save','0'),(327,'notify_new_post','0'),(328,'agora_app_id',''),(329,'agora_live_video','0'),(330,'millicast_live_video','0'),(331,'agora_customer_id',''),(332,'agora_customer_certificate',''),(333,'yahoo_consumer_key',''),(334,'yahoo_consumer_secret',''),(335,'cashfree_mode','sandBox'),(336,'amazone_s3_2','0'),(337,'bucket_name_2',''),(338,'amazone_s3_key_2',''),(339,'amazone_s3_s_key_2',''),(340,'region_2','eu-west-1');
/*!40000 ALTER TABLE `wo_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_custom_fields`
--

DROP TABLE IF EXISTS `wo_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(50) DEFAULT '',
  `length` int(11) NOT NULL DEFAULT '0',
  `placement` varchar(50) NOT NULL DEFAULT '',
  `required` varchar(11) NOT NULL DEFAULT 'on',
  `options` text,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_custom_fields`
--

LOCK TABLES `wo_custom_fields` WRITE;
/*!40000 ALTER TABLE `wo_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_custompages`
--

DROP TABLE IF EXISTS `wo_custompages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_custompages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `page_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_custompages`
--

LOCK TABLES `wo_custompages` WRITE;
/*!40000 ALTER TABLE `wo_custompages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_custompages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_egoing`
--

DROP TABLE IF EXISTS `wo_egoing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_egoing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_egoing`
--

LOCK TABLES `wo_egoing` WRITE;
/*!40000 ALTER TABLE `wo_egoing` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_egoing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_einterested`
--

DROP TABLE IF EXISTS `wo_einterested`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_einterested` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_einterested`
--

LOCK TABLES `wo_einterested` WRITE;
/*!40000 ALTER TABLE `wo_einterested` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_einterested` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_einvited`
--

DROP TABLE IF EXISTS `wo_einvited`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_einvited` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `inviter_id` int(11) NOT NULL,
  `invited_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `inviter_id` (`invited_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_einvited`
--

LOCK TABLES `wo_einvited` WRITE;
/*!40000 ALTER TABLE `wo_einvited` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_einvited` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_emails`
--

DROP TABLE IF EXISTS `wo_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_to` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_emails`
--

LOCK TABLES `wo_emails` WRITE;
/*!40000 ALTER TABLE `wo_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_events`
--

DROP TABLE IF EXISTS `wo_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '',
  `location` varchar(300) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `poster_id` int(11) NOT NULL,
  `cover` varchar(500) NOT NULL DEFAULT 'upload/photos/d-cover.jpg',
  PRIMARY KEY (`id`),
  KEY `poster_id` (`poster_id`),
  KEY `name` (`name`),
  KEY `start_date` (`start_date`),
  KEY `start_time` (`start_time`),
  KEY `end_time` (`end_time`),
  KEY `end_date` (`end_date`),
  KEY `order1` (`poster_id`,`id`),
  KEY `order2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_events`
--

LOCK TABLES `wo_events` WRITE;
/*!40000 ALTER TABLE `wo_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_family`
--

DROP TABLE IF EXISTS `wo_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `member` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `requesting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_family`
--

LOCK TABLES `wo_family` WRITE;
/*!40000 ALTER TABLE `wo_family` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_followers`
--

DROP TABLE IF EXISTS `wo_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `following_id` int(11) NOT NULL DEFAULT '0',
  `follower_id` int(11) NOT NULL DEFAULT '0',
  `is_typing` int(11) NOT NULL DEFAULT '0',
  `active` int(255) NOT NULL DEFAULT '1',
  `notify` int(11) NOT NULL DEFAULT '0',
  `time` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `following_id` (`following_id`),
  KEY `follower_id` (`follower_id`),
  KEY `active` (`active`),
  KEY `order1` (`following_id`,`id`),
  KEY `order2` (`follower_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_followers`
--

LOCK TABLES `wo_followers` WRITE;
/*!40000 ALTER TABLE `wo_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_forum_sections`
--

DROP TABLE IF EXISTS `wo_forum_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_forum_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(300) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `section_name` (`section_name`),
  KEY `description` (`description`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_forum_sections`
--

LOCK TABLES `wo_forum_sections` WRITE;
/*!40000 ALTER TABLE `wo_forum_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_forum_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_forum_threads`
--

DROP TABLE IF EXISTS `wo_forum_threads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_forum_threads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `headline` varchar(300) NOT NULL DEFAULT '',
  `post` text NOT NULL,
  `posted` varchar(20) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0',
  `forum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `views` (`views`),
  KEY `posted` (`posted`),
  KEY `headline` (`headline`(255)),
  KEY `forum` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_forum_threads`
--

LOCK TABLES `wo_forum_threads` WRITE;
/*!40000 ALTER TABLE `wo_forum_threads` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_forum_threads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_forums`
--

DROP TABLE IF EXISTS `wo_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_forums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  `sections` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `description` (`description`(255)),
  KEY `posts` (`posts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_forums`
--

LOCK TABLES `wo_forums` WRITE;
/*!40000 ALTER TABLE `wo_forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_forumthreadreplies`
--

DROP TABLE IF EXISTS `wo_forumthreadreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_forumthreadreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) NOT NULL DEFAULT '0',
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `poster_id` int(11) NOT NULL DEFAULT '0',
  `post_subject` varchar(300) NOT NULL DEFAULT '',
  `post_text` text NOT NULL,
  `post_quoted` int(11) NOT NULL DEFAULT '0',
  `posted_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `thread_id` (`thread_id`),
  KEY `forum_id` (`forum_id`),
  KEY `poster_id` (`poster_id`),
  KEY `post_subject` (`post_subject`(255)),
  KEY `post_quoted` (`post_quoted`),
  KEY `posted_time` (`posted_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_forumthreadreplies`
--

LOCK TABLES `wo_forumthreadreplies` WRITE;
/*!40000 ALTER TABLE `wo_forumthreadreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_forumthreadreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_funding`
--

DROP TABLE IF EXISTS `wo_funding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_funding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashed_id` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(600) NOT NULL DEFAULT '',
  `amount` varchar(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(200) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hashed_id` (`hashed_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_funding`
--

LOCK TABLES `wo_funding` WRITE;
/*!40000 ALTER TABLE `wo_funding` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_funding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_funding_raise`
--

DROP TABLE IF EXISTS `wo_funding_raise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_funding_raise` (
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
-- Dumping data for table `wo_funding_raise`
--

LOCK TABLES `wo_funding_raise` WRITE;
/*!40000 ALTER TABLE `wo_funding_raise` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_funding_raise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_games`
--

DROP TABLE IF EXISTS `wo_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(50) NOT NULL,
  `game_avatar` varchar(100) NOT NULL,
  `game_link` varchar(100) NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_games`
--

LOCK TABLES `wo_games` WRITE;
/*!40000 ALTER TABLE `wo_games` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_games_players`
--

DROP TABLE IF EXISTS `wo_games_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_games_players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `game_id` int(11) NOT NULL DEFAULT '0',
  `last_play` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`game_id`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_games_players`
--

LOCK TABLES `wo_games_players` WRITE;
/*!40000 ALTER TABLE `wo_games_players` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_games_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_gender`
--

DROP TABLE IF EXISTS `wo_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_id` varchar(50) NOT NULL DEFAULT '0',
  `image` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `gender_id` (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_gender`
--

LOCK TABLES `wo_gender` WRITE;
/*!40000 ALTER TABLE `wo_gender` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_gifts`
--

DROP TABLE IF EXISTS `wo_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_gifts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `media_file` varchar(250) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_gifts`
--

LOCK TABLES `wo_gifts` WRITE;
/*!40000 ALTER TABLE `wo_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_group_members`
--

DROP TABLE IF EXISTS `wo_group_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_group_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_group_members`
--

LOCK TABLES `wo_group_members` WRITE;
/*!40000 ALTER TABLE `wo_group_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_group_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_groupadmins`
--

DROP TABLE IF EXISTS `wo_groupadmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_groupadmins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `general` int(11) NOT NULL DEFAULT '1',
  `privacy` int(11) NOT NULL DEFAULT '1',
  `avatar` int(11) NOT NULL DEFAULT '1',
  `members` int(11) NOT NULL DEFAULT '0',
  `analytics` int(11) NOT NULL DEFAULT '1',
  `delete_group` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_groupadmins`
--

LOCK TABLES `wo_groupadmins` WRITE;
/*!40000 ALTER TABLE `wo_groupadmins` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_groupadmins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_groupchat`
--

DROP TABLE IF EXISTS `wo_groupchat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_groupchat` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_name` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(3000) NOT NULL DEFAULT 'upload/photos/d-group.jpg',
  `time` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_groupchat`
--

LOCK TABLES `wo_groupchat` WRITE;
/*!40000 ALTER TABLE `wo_groupchat` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_groupchat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_groupchatusers`
--

DROP TABLE IF EXISTS `wo_groupchatusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_groupchatusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `active` enum('1','0') NOT NULL DEFAULT '1',
  `last_seen` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `group_id` (`group_id`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_groupchatusers`
--

LOCK TABLES `wo_groupchatusers` WRITE;
/*!40000 ALTER TABLE `wo_groupchatusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_groupchatusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_groups`
--

DROP TABLE IF EXISTS `wo_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(32) NOT NULL DEFAULT '',
  `group_title` varchar(40) NOT NULL DEFAULT '',
  `avatar` varchar(120) NOT NULL DEFAULT 'upload/photos/d-group.jpg ',
  `cover` varchar(120) NOT NULL DEFAULT 'upload/photos/d-cover.jpg  ',
  `about` varchar(550) NOT NULL DEFAULT '',
  `category` int(11) NOT NULL DEFAULT '1',
  `sub_category` varchar(50) NOT NULL DEFAULT '',
  `privacy` enum('1','2') NOT NULL DEFAULT '1',
  `join_privacy` enum('1','2') NOT NULL DEFAULT '1',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `registered` varchar(32) NOT NULL DEFAULT '0/0000',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `privacy` (`privacy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_groups`
--

LOCK TABLES `wo_groups` WRITE;
/*!40000 ALTER TABLE `wo_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_groups_categories`
--

DROP TABLE IF EXISTS `wo_groups_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_groups_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(160) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_groups_categories`
--

LOCK TABLES `wo_groups_categories` WRITE;
/*!40000 ALTER TABLE `wo_groups_categories` DISABLE KEYS */;
INSERT INTO `wo_groups_categories` VALUES (2,'1420'),(3,'1423'),(4,'1426'),(5,'1429'),(6,'1432'),(7,'1435'),(8,'1438'),(9,'1441'),(10,'1444'),(11,'1447'),(12,'1450'),(13,'1453'),(14,'1456'),(15,'1459'),(16,'1462'),(17,'1465'),(18,'1468');
/*!40000 ALTER TABLE `wo_groups_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_hashtags`
--

DROP TABLE IF EXISTS `wo_hashtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_hashtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) NOT NULL DEFAULT '',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `last_trend_time` int(11) NOT NULL DEFAULT '0',
  `trend_use_num` int(11) NOT NULL DEFAULT '0',
  `expire` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `last_trend_time` (`last_trend_time`),
  KEY `trend_use_num` (`trend_use_num`),
  KEY `tag` (`tag`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_hashtags`
--

LOCK TABLES `wo_hashtags` WRITE;
/*!40000 ALTER TABLE `wo_hashtags` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_hashtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_hiddenposts`
--

DROP TABLE IF EXISTS `wo_hiddenposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_hiddenposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_hiddenposts`
--

LOCK TABLES `wo_hiddenposts` WRITE;
/*!40000 ALTER TABLE `wo_hiddenposts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_hiddenposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_invitation_links`
--

DROP TABLE IF EXISTS `wo_invitation_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_invitation_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `invited_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(300) NOT NULL DEFAULT '',
  `time` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `code` (`code`(255)),
  KEY `invited_id` (`invited_id`),
  KEY `time` (`time`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_invitation_links`
--

LOCK TABLES `wo_invitation_links` WRITE;
/*!40000 ALTER TABLE `wo_invitation_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_invitation_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_job`
--

DROP TABLE IF EXISTS `wo_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `location` varchar(100) NOT NULL DEFAULT '',
  `lat` varchar(50) NOT NULL DEFAULT '',
  `lng` varchar(50) NOT NULL DEFAULT '',
  `minimum` varchar(50) NOT NULL DEFAULT '0',
  `maximum` varchar(50) NOT NULL DEFAULT '0',
  `salary_date` varchar(50) NOT NULL DEFAULT '',
  `job_type` varchar(50) NOT NULL DEFAULT '',
  `category` varchar(50) NOT NULL DEFAULT '',
  `question_one` varchar(200) NOT NULL DEFAULT '',
  `question_one_type` varchar(100) NOT NULL DEFAULT '',
  `question_one_answers` text,
  `question_two` varchar(200) NOT NULL DEFAULT '',
  `question_two_type` varchar(100) NOT NULL DEFAULT '',
  `question_two_answers` text,
  `question_three` varchar(200) NOT NULL DEFAULT '',
  `question_three_type` varchar(100) NOT NULL DEFAULT '',
  `question_three_answers` text,
  `description` text,
  `image` varchar(300) NOT NULL DEFAULT '',
  `image_type` varchar(11) NOT NULL DEFAULT '',
  `currency` varchar(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `time` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_job`
--

LOCK TABLES `wo_job` WRITE;
/*!40000 ALTER TABLE `wo_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_job_apply`
--

DROP TABLE IF EXISTS `wo_job_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_job_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `job_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(100) NOT NULL DEFAULT '',
  `phone_number` varchar(50) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `question_one_answer` varchar(200) NOT NULL DEFAULT '',
  `question_two_answer` varchar(200) NOT NULL DEFAULT '',
  `question_three_answer` varchar(200) NOT NULL DEFAULT '',
  `position` varchar(100) NOT NULL DEFAULT '',
  `where_did_you_work` varchar(100) NOT NULL DEFAULT '',
  `experience_description` varchar(300) NOT NULL DEFAULT '',
  `experience_start_date` varchar(50) NOT NULL DEFAULT '',
  `experience_end_date` varchar(50) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `job_id` (`job_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_job_apply`
--

LOCK TABLES `wo_job_apply` WRITE;
/*!40000 ALTER TABLE `wo_job_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_job_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_job_categories`
--

DROP TABLE IF EXISTS `wo_job_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_job_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(160) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_job_categories`
--

LOCK TABLES `wo_job_categories` WRITE;
/*!40000 ALTER TABLE `wo_job_categories` DISABLE KEYS */;
INSERT INTO `wo_job_categories` VALUES (1,'1580'),(2,'1581'),(3,'1582'),(4,'1583'),(5,'1584'),(6,'1585'),(7,'1586'),(8,'1587'),(9,'1588'),(10,'1589'),(11,'1590'),(12,'1591'),(13,'1592'),(14,'1593'),(15,'1594'),(16,'1595'),(17,'1596'),(18,'1597'),(19,'1598'),(20,'1599'),(21,'1600'),(22,'1601'),(23,'1602');
/*!40000 ALTER TABLE `wo_job_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_langs`
--

DROP TABLE IF EXISTS `wo_langs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_langs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(160) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) NOT NULL DEFAULT '',
  `english` text,
  `arabic` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `dutch` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `french` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `german` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `italian` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `portuguese` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `russian` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `spanish` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `turkish` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lang_key` (`lang_key`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=1790 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_langs`
--

LOCK TABLES `wo_langs` WRITE;
/*!40000 ALTER TABLE `wo_langs` DISABLE KEYS */;
INSERT INTO `wo_langs` VALUES (1,'login','','Login','ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„','Inloggen','S&#39;identifier','Anmelden','Entra','Login','Ð’Ñ…Ð¾Ð´','Acceder','GiriÅŸ'),(2,'register','','Register','Ø§Ù„ØªØ³Ø¬ÙŠÙ„','Registereren','Enregistrez','Registrieren','Iscriviti','Registrar','Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ','Registrar','KayÄ±t'),(3,'guest','','Guest','Ø²Ø§Ø¦Ø±','Gast','Client','Gast','Ospite','Visitante','Ð“Ð¾ÑÑ‚ÑŒ','HuÃ©sped','Konuk'),(4,'username','','Username','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Gebruikersnaam','le nom d&#39;utilisateur','Benutzername','Nome Utente','Nome de usu&amp;aacute;rio','Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','Nombre de Usuario','KullanÄ±cÄ± adÄ±'),(5,'email','','E-mail','Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','E-mail','E-mail','Email','E-mail','E-mail','E-mail Ð°Ð´Ñ€ÐµÑ','E-mail','E-posta'),(6,'password','','Password','ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±','Wachtwoord','Mot de passe','Passwort','Password','Senha','ÐŸÐ°Ñ€Ð¾Ð»ÑŒ','ContraseÃ±a','Åžifre'),(7,'new_password','','New password','ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø©','Nieuw wachtwoord','Nouveau mot de passe','Neues Passwort','Nuova password','Nova senha','ÐÐ¾Ð²Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Nueva ContraseÃ±a','Yeni Åžifre'),(8,'remember_me','','Remember me','ØªØ°ÙƒØ±Ù†ÙŠ','Onthoud mij','Souviens-toi de moi','Angemeldet bleiben','Resta collegato','Lembrar','Ð—Ð°Ð¿Ð¾Ð¼Ð½Ð¸Ñ‚ÑŒ Ð¼ÐµÐ½Ñ','Recordarme','Beni hatÄ±rla'),(9,'or_login_with','','Or login with','Ø£Ùˆ Ø£Ø¯Ø®Ù„ Ø¹Ù† Ø·Ø±ÙŠÙ‚','Of login met','Ou connectez-vous avec','oder Anmeldung mit','o entra con','Ou ent&amp;atilde;o fa&amp;ccedil;a login por','Ð˜Ð»Ð¸ Ð²Ð¾Ð¹Ð´Ð¸Ñ‚Ðµ Ñ‡ÐµÑ€ÐµÐ·','O Acceder con:','Ya ile giriÅŸ'),(10,'forget_password','','Forgot Password?','Ù‡Ù„ Ù†Ø³ÙŠØª ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±ØŸ','Wachtwoord vergeten?','Mot de passe oubliÃ©?','Passwort Vergessen?','Password dimenticata?','Esqueceu sua senha?','Ð—Ð°Ð±Ñ‹Ð»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ?','Â¿Olvidaste tu ContraseÃ±a?','ParolanÄ±zÄ± unuttunuz mu?'),(11,'email_address','','E-mail address','Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','Email','E-mail address','Emailadresse','Indirizo email','E-mail','E-mail Ð°Ð´Ñ€ÐµÑ','Direcci&amp;oacute; de E-mail','E-posta'),(12,'confirm_password','','Confirm Password','ØªØ£ÙƒÙŠØ¯ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±','Bevestig wachtwoord','Confirmez le mot de passe','Passwort bestÃ¤tigen','Conferma Password','Confirmar senha','ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚Ðµ ÐŸÐ°Ñ€Ð¾Ð»ÑŒ','Confirmar ContraseÃ±a','Åžifreyi Onayla'),(13,'lets_go','','Let&#039;s Go !','ØªØ³Ø¬ÙŠÙ„','Ga verder!','Allons-y!','Los gehts!','Andiamo! !','Vamos l&amp;aacute;!','Ð’Ð¾Ð¹Ñ‚Ð¸!','Â¡Vamos!','Haydi gidelim !'),(14,'recover_password','','Recover','Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ†','Recover','RÃ©cupÃ©rer','Passwort wiederherstellen','Recuperare','Recuperar','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ','Recuperar','Kurtarmak'),(15,'reset_new_password_label','','Reset Your Password','Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ† ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±','Reset Je Wachtwoord','RÃ©initialisez votre mot de passe','Passwort zurÃ¼cksetzen','Resetta la tua password','Redefinir senha','Ð¡Ð±Ñ€Ð¾ÑÐ¸Ñ‚ÑŒ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Reiniciar ContraseÃ±a','Åžifrenizi sÄ±fÄ±rlamak'),(16,'reset_password','','Reset','Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ†','Reset','RÃ©initialiser','ZurÃ¼cksetzen','Resetta','Resetar','Ð¡Ð±Ñ€Ð¾Ñ','Reiniciar','Reset'),(17,'invalid_token','','Invalid Token','Ø±Ø§Ø¨Ø· Ø®Ø§Ø·Ø£','Verkeerde sleutel','Jeton Invalide','UngÃ¼ltiges Zeichen','Gettone non valido','Token inv&amp;aacute;lido','ÐÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ð¹ Ð¼Ð°Ñ€ÐºÐµÑ€','Token Invalido','GeÃ§ersiz Jetonu'),(18,'incorrect_username_or_password_label','','Incorrect username or password','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø£Ùˆ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± ØºÙŠØ± ØµØ­ÙŠØ­','Gebruikersnaam of wachtwoord klopt niet','Identifiant ou mot de passe incorrect','Benutzername oder Passwort falsch','Nome utente o password errati','Nome de usu&amp;aacute;rio ou senha incorreto','ÐÐµÐ²ÐµÑ€Ð½Ð¾Ðµ Ð¸Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð¸Ð»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Usuario y/o ContraseÃ±a incorrectos','YanlÄ±ÅŸ kullanÄ±cÄ± adÄ± ya da parola'),(19,'account_disbaled_contanct_admin_label','','Your account has been disabled, please contact us .','Ù„Ù‚Ø¯ ØªÙ… Ø¥ÙŠÙ‚Ø§Ù Ø­Ø³Ø§Ø¨Ùƒ Ù…Ø¤Ù‚ØªØ§ÙŽ , ÙŠØ±Ø¬Ù‰ Ø§Ù„Ø¥ØªØµØ§Ù„ Ø¨Ù†Ø§ .','Je account is inactief gesteld. Neem contact op met account@babster.nl.','Votre compte a Ã©tÃ© dÃ©sactivÃ©, s&#39;il vous plaÃ®t contactez-nous .','Dein Konto wurde deaktiviert. Bitte setze dich mit uns in Verbindung.','Il tuo account Ã¨ stato disabilitato, non esitate a contattarci.','Sua conta foi desativada.','Ð’Ð°Ñˆ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚ Ð±Ñ‹Ð» Ð¾Ñ‚ÐºÐ»ÑŽÑ‡ÐµÐ½, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, ÑÐ²ÑÐ¶Ð¸Ñ‚ÐµÑÑŒ Ñ Ð½Ð°Ð¼Ð¸.','Tu cuenta ha sido des habilitada, por favor cont&amp;aacute;ctanos .','HesabÄ±nÄ±z devre dÄ±ÅŸÄ± bÄ±rakÄ±ldÄ±, lÃ¼tfen bize ulaÅŸÄ±n.'),(20,'account_not_active_label','','You have to activate your account.','ÙŠØ¬Ø¨ Ø¹Ù„ÙŠÙƒ ØªÙØ¹ÙŠÙ„ Ø§Ù„Ø­Ø³Ø§Ø¨','Je moet je account eerst activeren.','Vous devez activer votre compte.','Bitte aktiviere dein Konto.','Devi attivare il tuo account.','Voc&amp;ecirc; tem que ativar sua conta.','Ð’Ñ‹ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑÐ²Ð¾ÑŽ ÑƒÑ‡ÐµÑ‚Ð½ÑƒÑŽ Ð·Ð°Ð¿Ð¸ÑÑŒ.','Primero debes activar tu cuenta.','HesabÄ±nÄ±zÄ± etkinleÅŸtirmek gerekiyor.'),(21,'successfully_logged_label','','Successfully Logged in, Please wait..','ØªÙ… ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„ .. Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ø¥Ù†ØªØ¸Ø§Ø±','Succesvol ingelogt, een momentje..','ConnectÃ© avec succÃ¨s, S&#39;il vous plaÃ®t attendre..','Erfolgreich angemeldet, bitte warten..','Collegato con successo, Siete pregati di attendere..','Login efetuado com sucesso. Por favor aguarde...','Ð£ÑÐ¿ÐµÑˆÐ½Ñ‹Ð¹ Ð²Ñ…Ð¾Ð´. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð´Ð¾Ð¶Ð´Ð¸Ñ‚Ðµ...','Acceso permitido, por favor espere..','BaÅŸarÄ±yla Girildi, lÃ¼tfen bekleyin ..'),(22,'please_check_details','','Please check your details.','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ù…Ø±Ø§Ø¬Ø¹Ø© Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„ØªÙŠ Ø£Ø¯Ø®Ù„ØªÙ‡Ø§','Controleer je details.','S&#39;il vous plaÃ®t vÃ©rifier vos coordonnÃ©es.','Bitte Ã¼berprÃ¼fe deine Angaben.','Si prega di verificare i tuoi dati.','Por favor marque os detalhes','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ ÑÐ²Ð¾Ð¸ Ð´Ð°Ð½Ð½Ñ‹Ðµ.','Por favor revisa tus detalles.','Bilgilerinizi kontrol edin.'),(23,'username_exists','','Username is already exists.','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ù…ÙˆØ¬ÙˆØ¯ Ø¨Ø§Ù„ÙØ¹Ù„','Gebruikersnaam bestaad al.','Nom d&#39;utilisateur est existe dÃ©jÃ .','Benutzername existiert bereits.','Il nome utente Ã¨ giÃ  esistente.','Desculpe, este nome de usu&amp;aacute;rio j&amp;aacute; esta em uso.','Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.','Nombre de usuario ya existe.','KullanÄ±cÄ± adÄ± zaten var olduÄŸunu.'),(24,'username_characters_length','','Username must be between 5 / 32','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… ÙŠØ¬Ø¨ Ø§Ù† ÙŠÙƒÙˆÙ† Ø¨ÙŠÙ† 5 Ø¥Ù„Ù‰ 32 Ø­Ø±Ù','Gebruikersnaam moet tussen de 5 en 32 tekens lang zijn','Nom d&#39;utilisateur doit Ãªtre comprise entre 5/32','Benutzername muss zwischen 5 und 32 Zeichen sein','Nome utente deve essere compresa tra 5 a 32 lettere','O nome de usu&amp;aacute;rio deve conter entre 5 / 32 caracteres.','Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð´Ð¾Ð»Ð¶Ð½Ð¾ Ð±Ñ‹Ñ‚ÑŒ Ð¼ÐµÐ¶Ð´Ñƒ 5/32 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð°Ð¼Ð¸','Nombre de usuario debe ser de entre 5 / 32 caracteres','KullanÄ±cÄ± adÄ± 5/32 arasÄ±nda olmalÄ±dÄ±r'),(25,'username_invalid_characters','','Invalid username characters','ØµÙŠØºØ© Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø®Ø§Ø·Ø¦Ø©ØŒ Ø§Ù„Ø±Ø¬Ø§Ø¡ ÙƒØªØ§Ø¨Ø© Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø¨Ø§Ù„Ø¥Ù†Ø¬Ù„ÙŠØ²ÙŠØ© ÙˆØ¨Ù„Ø§ Ù…Ø³Ø§ÙØ© Ù…Ø«Ø§Ù„ enbrash','Ongeldige tekens in je gebruikersnaam','CaractÃ¨res de nom d&#39;utilisateur non valides','Benutzername enthÃ¤lt unzulÃ¤ssige Zeichen','Caratteri Nome utente non valido','Caracteres inv&amp;aacute;lidos','ÐÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ðµ ÑÐ¸Ð¼Ð²Ð¾Ð»Ñ‹ Ð² Ð˜Ð¼ÐµÐ½Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','Caracteres Inv&amp;aacute;lidos','GeÃ§ersiz kullanÄ±cÄ± adÄ± karakterleri'),(26,'password_invalid_characters','','Invalid password characters','ØµÙŠØºØ© ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø®Ø§Ø·Ø¦Ø©','Ongeldige tekens in je wachtwoord','CaractÃ¨res de mot de passe invalide','Passwort enthÃ¤lt unzulÃ¤ssige Zeichen','Caratteri della password non validi','Caracteres inv&amp;aacute;lidos','ÐÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ðµ ÑÐ¸Ð¼Ð²Ð¾Ð»Ñ‹ Ð² Ð¿Ð°Ñ€Ð¾Ð»Ðµ','Caracteres Inv&amp;aacute;lidos','GeÃ§ersiz ÅŸifre karakteri'),(27,'email_exists','','This e-mail is already in use','Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ù…Ø³ØªØ®Ø¯Ù… Ø¨Ø§Ù„ÙØ¹Ù„','Dit email adres is al ingebruik.','Cet e-mail est dÃ©jÃ  utilisÃ©e','Emailadresse wird bereits benutzt','Questa e-mail Ã¨ giÃ  in uso','J&amp;aacute; existe uma conta registrar nesse e-mail.','E-mail Ð°Ð´Ñ€Ðµ ÑƒÐ¶Ðµ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐµÑ‚ÑÑ','Este correo ya est&amp;aacute; en uso','E-posta kullanÄ±mda'),(28,'email_invalid_characters','','This e-mail is invalid.','ØµÙŠØºØ© Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø®Ø§Ø·Ø¦Ø©','Dit is een ongeldige email.','Cet e-mail est invalide.','UngÃ¼ltige Emailadresse.','Questa e-mail non Ã¨ valido.','E-mail inv&amp;aacute;lido.','ÐÐµÐ´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹.','Este correo es invalido.','E-posta geÃ§ersiz.'),(29,'password_short','','Password is too short.','ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ù‚ØµÙŠØ±Ø© Ø¬Ø¯Ø§ÙŽ','Wachtwoord is te kort.','Mot de passe est trop court.','Passwort ist zu kurz.','La password Ã¨ troppo corta.','Senha muito pequena.','ÐŸÐ°Ñ€Ð¾Ð»ÑŒ ÑÐ»Ð¸ÑˆÐºÐ¾Ð¼ ÐºÐ¾Ñ€Ð¾Ñ‚ÐºÐ¸Ð¹.','Contrase&amp;ntilde;a muy corta.','Åžifre Ã§ok kÄ±sa.'),(30,'password_mismatch','','Password not match.','ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± ØºÙŠØ± Ù…ØªØ·Ø§Ø¨Ù‚Ø©','Wachtwoorden komen niet overeen.','Mot de passe ne correspond.','PasswÃ¶rter stimmen nicht Ã¼berein.','La password non corrisponde.','As senhas n&amp;atilde;o conferem.','ÐŸÐ°Ñ€Ð¾Ð»Ð¸ Ð½Ðµ ÑÐ¾Ð²Ð¿Ð°Ð´Ð°ÑŽÑ‚.','Contrase&amp;ntilde; diferente.','Åžifre eÅŸleÅŸmiyor.'),(31,'reCaptcha_error','Please check the re-captcha.','Please check the re-captcha.','ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ø¥Ø¹Ø§Ø¯Ø© Ø§Ø®ØªØ¨Ø§Ø± captcha.','Controleer de re-captcha.','S&#039;il vous plaÃ®t vÃ©rifier le re-captcha.','Bitte Ã¼berprÃ¼fen Sie das Captcha erneut.','Si prega di controllare il re-captcha.','Por favor, verifique o re-captcha.','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð½ÑƒÑŽ ÐºÐ°Ð¿Ñ‡Ñƒ.','Por favor, compruebe el re-captcha.','LÃ¼tfen re-captcha&#039;yÄ± kontrol edin.'),(32,'successfully_joined_label','','Successfully joined, Please wait..','ØªÙ… Ø§Ù„Ø¥Ø´ØªØ±Ø§Ùƒ Ø¨Ù†Ø¬Ø§Ø­ , Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ø¥Ù†ØªØ¸Ø§Ø± ..','Succesvol geregistreerd, een momentje..','RÃ©ussir rejoint, S&#39;il vous plaÃ®t attendre..','Erfolgreich beigetreten, bitte warten..','Iscrizione con sucesso, attendere prego..','Registrado com sucesso, Por favor aguarde..','Ð£ÑÐ¿ÐµÑˆÐ½Ñ‹Ð¹ Ð²Ñ…Ð¾Ð´. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð´Ð¾Ð¶Ð´Ð¸Ñ‚Ðµ...','Unido satisfactoriamente, Por favor espera..','BaÅŸarÄ±yla katÄ±ldÄ±! LÃ¼tfen bekleyin ..'),(33,'account_activation','','Account Activation','ØªÙØ¹ÙŠÙ„ Ø§Ù„Ø­Ø³Ø§Ø¨','Account activicatie','Activation de compte','Konto Aktivierung','Account attivato','Ativa&amp;ccedil;&amp;atilde;o de Conta','ÐÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ñ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚Ð°','Activaci&amp;oacute;n de cuenta','Hesap Aktivasyonu'),(34,'successfully_joined_verify_label','','Registration successful! We have sent you an email, Please check your inbox/spam to verify your email.','ØªÙ… Ø§Ù„Ø¥Ø´ØªØ±Ø§Ùƒ Ø¨Ù†Ø¬Ø§Ø­! Ù„Ù‚Ø¯ ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø±Ù…Ø² Ø§Ù„ØªØ¹ÙŠÙ„ Ø¥Ù„Ù‰ Ø¨Ø±ÙŠØ¯Ùƒ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','Succesvol geregistreerd, check je inbox/spam voor de activicatie mail.','Inscription rÃ©ussi! Nous vous avons envoyÃ© un e-mail, S&#39;il vous plaÃ®t vÃ©rifier votre boÃ®te de rÃ©ception / spam pour vÃ©rifier votre email.','Registrierung war erfolgreich! Wir haben dir eine Email gesandt: Bitte Ã¼berprÃ¼fe dein Postfach und Spamordner zum aktivieren deines Kontos.','Registrazione di successo! Ti abbiamo inviato una e-mail, controlla la tua posta in arrivo / spam per verificare la tua email.','Registrado com sucesso! Enviamos um email, verifique a caixa de entrada/spam para verificar seu e-mail.','ÐŸÐ¾Ð·Ð´Ñ€Ð°Ð²Ð»ÑÐµÐ¼ Ð²Ñ‹ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð»Ð¸ÑÑŒ! ÐœÑ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¸ Ð’Ð°Ð¼ Ð¿Ð¸ÑÑŒÐ¼Ð¾ Ñ ÑÑÑ‹Ð»ÐºÐ¾Ð¹ Ð´Ð»Ñ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ Ð²Ð°Ñˆ Ð¿Ð¾Ñ‡Ñ‚Ð¾Ð²Ñ‹Ð¹ ÑÑ‰Ð¸Ðº. Ð ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÐ¼ Ð¿Ñ€Ð¾Ð²ÐµÑ€Ð¸Ñ‚ÑŒ Ð¿Ð°Ð¿ÐºÑƒ Â«Ð¡Ð¿Ð°Ð¼Â» â€” Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ Ð¿Ð¸ÑÑŒÐ¼Ð¾ Ð¿Ð¾Ð¿Ð°Ð»Ð¾ Ñ‚ÑƒÐ´Ð°.','Registro exitoso, te hemos enviado un correo de verificaci&amp;oacute;n, Revisa tu bandeja de entrada de correo.','KayÄ±t baÅŸarÄ±lÄ±! Size bir e-posta gÃ¶nderdik, e-postanÄ±zÄ± doÄŸrulamak iÃ§in gelen / spam kontrol edin.'),(35,'email_not_found','','We can&#039;t find this email.','Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ ØºÙŠØ± Ù…ÙˆØ¬ÙˆØ¯','We kunnen deze email niet vinden.','Nous ne pouvons pas trouver cet e-mail.','Email konnte nicht gefunden werden.','Non e possibile trovare questo indirizzo mail.','n&amp;atilde;o podemos encontrar este e-mail.','ÐœÑ‹ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÐ¼ Ð½Ð°Ð¹Ñ‚Ð¸ ÑÑ‚Ð¾Ñ‚ E-mail.','No encontramos este E-mail.','Biz bu e-postayÄ± bulamÄ±yor.'),(36,'password_rest_request','','Password reset request','Ø·Ù„Ø¨ Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ† ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±','Wachtwoord reset aanvraag','Demande de rÃ©initialisation de mot','Passwort-Reset-Anfrage','Richiesta di reimpostazione della password','Pedido para resetar senha','Ð—Ð°Ð¿Ñ€Ð¾Ñ Ð’Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð°Ñ€Ð¾Ð»Ñ','Solicitud de reinicio de contraseÃ±a','Parola sÄ±fÄ±rlama isteÄŸi'),(37,'email_sent','','E-mail has been sent successfully','Ù„Ù‚Ø¯ ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø±Ø³Ø§Ù„Ø©','Email is succesvol verzonden','Le courriel a Ã©tÃ© envoyÃ© avec succÃ¨s','Email wurde erfolgreich versendet','E-mail Ã¨ stata inviata con successo','E-mail enviado com sucesso.','ÐŸÐ¸ÑÑŒÐ¼Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾','Correo enviado correctamente','E-posta baÅŸarÄ±yla gÃ¶nderildi'),(38,'processing_error','','An error found while processing your request, please try again later.','Ø­Ø¯Ø« Ø®Ø·Ø£ Ø¹Ù†Ø¯ Ø§Ù„Ù…Ø¹Ø§Ù„Ø¬Ø© , Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ù„Ø§Ø­Ù‚Ø§ÙŽ','Er is een fout opgetreden, probeer het later nog eens.','Une erreur est survenue lors du traitement de votre demande, s&#39;il vous plaÃ®t rÃ©essayer plus tard.','In der Bearbeitung wurde ein Fehler festgestellt. Bitte versuche es spÃ¤ter noch einmal.','Un errore durante l&#039;elaborazione della richiesta, riprova piÃ¹ tardi.','Algo de errado aconteceu. Por favor, tente novamente mais tarde.','ÐžÐ±Ð½Ð°Ñ€ÑƒÐ¶ÐµÐ½Ð° Ð¾ÑˆÐ¸Ð±ÐºÐ° Ð¿Ñ€Ð¸ Ð¾Ð±Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐµ Ð²Ð°ÑˆÐµÐ³Ð¾ Ð·Ð°Ð¿Ñ€Ð¾ÑÐ°, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ ÐµÑ‰Ðµ Ñ€Ð°Ð·','Un error a ocurrido procesando tu solicitud, Intenta de nuevo mas tarde.','Ä°steÄŸiniz iÅŸlenirken hata, lÃ¼tfen tekrar deneyiniz bulundu'),(39,'password_changed','','Password successfully changed !','ØªÙ… ØªØºÙŠÙŠØ± ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø¨Ù†Ø¬Ø§Ø­','Wachtwoord succesvol gewijzigd !','Mot de passe changÃ© avec succÃ¨s !','Passwort erfolgreich geÃ¤ndert!','Password cambiata con successo!','Senha trocada com sucesso !','ÐŸÐ°Ñ€Ð¾Ð»ÑŒ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½!','Â¡ Contrase&amp;ntilde;a modificada correctamente !','Åžifre baÅŸarÄ±yla deÄŸiÅŸtirildi !'),(40,'please_choose_correct_date','','Please choose a correct date.','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø£Ø®ØªÙŠØ§Ø± ØªØ§Ø±ÙŠØ® Ø§Ù„Ù…ÙŠÙ„Ø§Ø¯ Ø§Ù„ØµØ­ÙŠØ­','Selecteer een geldige datum.','S&#39;il vous plaÃ®t choisir une date correcte.','Bitte gebe ein korrektes Datum an.','Scegliere una data corretta.','Selecione uma data correta.','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½ÑƒÑŽ Ð´Ð°Ñ‚Ñƒ.','Por favor elige una fecha correcta.','DoÄŸru tarih seÃ§iniz.'),(41,'setting_updated','','Setting successfully updated !','ØªÙ… ØªØ­Ø¯ÙŠØ« Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø¨Ù†Ø¬Ø§Ø­ !','Instellingen succesvol gewijzigd!','RÃ©glage de mise Ã  jour avec succÃ¨s !','Einstellungen erfolgreich Ã¼bernommen!','Impostazioni aggiornate correttamente!','Configura&amp;ccedil;&amp;otilde;es atualizadas !','ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ñ‹!','Â¡ Configuraci&amp;oacute;n correctamente guardada !','Ayar BaÅŸarÄ±yla GÃ¼ncellendi!'),(42,'current_password_mismatch','','Current password not match','ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ø­Ø§Ù„ÙŠØ© ØºÙŠØ± ØµØ­ÙŠØ­Ø©','Huidig wachtwoord komt niet overeen','Mot de passe actuel ne correspond pas','Aktuelles Passwort stimmt nicht','Password corrente non corrisponde','Sua senha atual n&amp;atilde;o confere','Ð¢ÐµÐºÑƒÑ‰Ð¸Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ Ð½Ðµ ÑÐ¾Ð²Ð¿Ð°Ð´Ð°ÐµÑ‚','Contrase&amp;ntilde;a actual diferente','Mevcut ÅŸifre eÅŸleÅŸmiyor'),(43,'website_invalid_characters','','Website is invalid.','ØµÙŠØºØ© Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ ØºÙŠØ± ØµØ­ÙŠØ­Ø©','Website is niet geldig.','Site Web est invalide.','Webseite ist ungÃ¼ltig.','Sito web non Ã¨ valido.','Site inv&amp;aacute;lido.','ÐÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ðµ ÑÐ¸Ð¼Ð²Ð¾Ð»Ñ‹ Ð² ÑÐ°Ð¹Ñ‚Ðµ.','El sitio web es invalido.','Web sitesi geÃ§ersiz.'),(44,'account_deleted','','Account successfully deleted, please wait..','ØªÙ… Ø­Ø°Ù Ø­Ø³Ø§Ø¨Ùƒ Ù†Ù‡Ø§Ø¦ÙŠØ§ÙŽ , Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ø¥Ù†ØªØ¸Ø§Ø± ..','Account is succesvol gewijzigd, een momentje..','Compte supprimÃ© avec succÃ¨s, s&#39;il vous plaÃ®t patienter..','Konto erfolgreich gelÃ¶scht, bitte warten..','Account cancellato con successo, si prega di attendere..','Conta deletada, por favor aguarde..','ÐÐºÐºÐ°ÑƒÐ½Ñ‚ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑƒÐ´Ð°Ð»ÐµÐ½, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð´Ð¾Ð¶Ð´Ð¸Ñ‚Ðµ...','Cuenta eliminada correctamente, por favor espere..','BaÅŸarÄ±yla silindi Hesap, lÃ¼tfen bekleyin ..'),(45,'home','','Home','Ø§Ù„ØµÙØ­Ø© Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠØ©','Home','Domicile','Start','Home','In&amp;iacute;cio','Ð“Ð»Ð°Ð²Ð½Ð°Ñ','Inicio','Ana Sayfa'),(46,'advanced_search','','Advanced Search','Ø§Ù„Ø¨Ø­Ø« Ø§Ù„Ù…ØªÙ‚Ø¯Ù…','Uitgebreid zoeken','Recherche AvancÃ©e','Erweiterte Suche','Ricerca avanzata','Pesquisa avan&amp;ccedil;ada','Ð Ð°ÑÑˆÐ¸Ñ€ÐµÐ½Ð½Ñ‹Ð¹ Ð¿Ð¾Ð¸ÑÐº','B&amp;uacute;squeda Avanzada','GeliÅŸmiÅŸ Arama'),(47,'search_header_label','','Search for people, pages, groups and #hashtags','Ø¥Ø¨Ø­Ø« Ø¹Ù† Ø£Ø¹Ø¶Ø§Ø¡, #Ù‡Ø§Ø´ØªØ§Øº','Zoek mensen, #hastags en andere dingen..','Recherche de personnes, et les choses #hashtags','Suche Personen, #hashtags und Dinge','Cerca per persone, cose e #hashtags','Procurar pessoas, #hashtags ou coisas','ÐŸÐ¾Ð¸ÑÐº Ð»ÑŽÐ´ÐµÐ¹, Ð¼ÐµÑÑ‚ Ð¸Ð»Ð¸ #Ñ…ÑÑˆÑ‚ÐµÐ³Ð¾Ð²','Buscar Otakus, #hashtags y lolis','KiÅŸiler, #hashtags ve ÅŸeyler ara'),(48,'no_result','','No result to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£ÙŠ Ù†ØªØ§Ø¦Ø¬','Geen resultaten gevonden','Aucun rÃ©sultat trouvÃ©','Leider keine Ergebnisse','Nessun risultato trovato','Nada encontrado','ÐÐµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾ Ð½Ð¸ Ð¾Ð´Ð½Ð¾Ð³Ð¾ Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚Ð°','Sin resultados','Herhangi bir Ã¼rÃ¼n bulunamadÄ±'),(49,'last_seen','','Last Seen:','Ø¢Ø®Ø± Ø¸Ù‡ÙˆØ±:','Laatst gezien:','DerniÃ¨re Visite:','Zuletzt online vor:','Ultimo accesso:','Visto por &amp;uacute;ltimo:','Ð‘Ñ‹Ð»@:','Hace','Son GÃ¶rÃ¼len:'),(50,'accept','','Accept','Ù‚Ø¨ÙˆÙ„','Accepteren','Acceptez','Akzeptieren','Accettare','Aceitar','Ð¿Ñ€Ð¸Ð½Ð¸Ð¼Ð°Ñ‚ÑŒ','Aceptar','Kabul etmek'),(51,'cancel','','Cancel','Ø¥Ù„ØºØ§Ø¡','Weiger','Annuler','Abbruch','Cancella','Cancelar','ÐžÑ‚Ð¼ÐµÐ½Ð°','Cancelar','Iptal'),(52,'delete','','Delete','Ø­Ø°Ù','Verwijder','Effacer','LÃ¶schen','Ellimina','Deletar','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ','Eliminar','Sil'),(53,'my_profile','','My Profile','ØµÙØ­ØªÙŠ Ø§Ù„Ø´Ø®ØµÙŠØ©','Mijn Profiel','Mon profil','Mein Profil','Mio Profilo','Meu Perfil','ÐœÐ¾Ð¹ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ','Mi Perfil','Profilim'),(54,'saved_posts','','Saved Posts','Ø§Ù„Ù…Ù†Ø´ÙˆØ±Ø§Øª Ø§Ù„Ù…Ø­ÙÙˆØ¸Ø©','Opgeslagen berichten','Messages EnregistrÃ©s','Gespeicherte BeitrÃ¤ge','Post Salvati','Posts Salvos','Ð¡Ð¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ð½Ñ‹Ðµ Ð·Ð°Ð¼ÐµÑ‚ÐºÐ¸','Posts Guardados','KayÄ±tlÄ± Mesajlar'),(55,'setting','','Settings','Ø§Ù„Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª','Instellingen','RÃ©glage','Einstellungen','Impostazioni','Configura&amp;ccedil;&amp;otilde;es','ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸','Configuraci&amp;oacute;n','Ayarlar'),(56,'admin_area','','Admin Area','Ù„ÙˆØ­Ø© Ø§Ù„Ù…Ø¯ÙŠØ±','Beheerpaneel','Admin Area','Administration','Area Administratore','Admin','ÐÐ´Ð¼Ð¸Ð½ÐºÐ°','Ãrea del Admin','YÃ¶netici AlanÄ±'),(57,'log_out','','Log Out','ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø®Ø±ÙˆØ¬','Uitloggen','Se dÃ©connecter','Abmelden','Esci','Sair','Ð’Ñ‹Ð¹Ñ‚Ð¸','Cerrar SesiÃ³n','Ã‡Ä±kÄ±ÅŸ Yap'),(58,'no_new_notification','','You do not have any notifications','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø¥Ø´Ø¹Ø§Ø±Ø§Øª','Je hebt geen meldingen','Vous ne disposez pas de toutes les notifications','Derzeit keine neuen Benachrichtigungen','Non avete notifiche','Voc&amp;ecirc; tem 0 notifica&amp;ccedil;&amp;otilde;es','ÐÐµÑ‚ Ð½Ð¾Ð²Ñ‹Ñ… ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ð¹','No tienes nuevas notificaciones','Bildirim yok'),(59,'no_new_requests','','You do not have any requests','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø·Ù„Ø¨Ø§Øª ØµØ¯Ø§Ù‚Ø©','Je hebt geen verzoeken','Vous ne disposez pas de toutes les demandes','Derzeit keine neuen Anfragen','Non avete alcuna richiesta','Voc&amp;ecirc; tem 0 pedidos de amizade','ÐÐµÑ‚ Ð½Ð¾Ð²Ñ‹Ñ… Ð·Ð°Ð¿Ñ€Ð¾ÑÐ¾Ð²','No tienes nuevas solicitudes','Istekler yok'),(60,'followed_you','','followed you','ØªØ§Ø¨Ø¹Ùƒ','volgt je','je t&#39;ai suivi','folgt dir jetzt','Ti segue','Seguiu voc&amp;ecirc;','Ð¿Ð¾ÑÐ»ÐµÐ´Ð¾Ð²Ð°Ð»@ Ð·Ð° Ñ‚Ð¾Ð±Ð¾Ð¹','te ha seguido','Seni takip etti.'),(61,'comment_mention','','mentioned you on a comment.','Ø£Ø´Ø§Ø± Ù„Ùƒ ÙÙŠ ØªØ¹Ù„ÙŠÙ‚','heeft je vermeld in een reactie.','vous avez mentionnÃ© sur un commentaire.','hat dich in einem Kommentar erwÃ¤hnt.','lei ha citato un commento.','mencionou voc&amp;ecirc; em um coment&amp;aacute;rio.','ÑƒÐ¿Ð¾Ð¼ÑÐ½ÑƒÐ»@ Ð²Ð°Ñ Ð² ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸.','te ha mencionado en un comentario.','Bir yorumum sizden bahsetti.'),(62,'post_mention','','mentioned you on a post.','Ø£Ø´Ø§Ø± Ù„Ùƒ ÙÙŠ Ù…Ù†Ø´ÙˆØ±','heeft je vermeld in een bericht.','vous avez mentionnÃ© sur un poteau.','hat dich in einem Beitrag erwÃ¤hnt.','lei ha citato in un post.','mencionou voc&amp;ecirc; em um post.','ÑƒÐ¿Ð¾Ð¼ÑÐ½ÑƒÐ»@ Ð²Ð°Ñ Ð² Ð·Ð°Ð¼ÐµÑ‚ÐºÐµ.','te menciono en una publicaci&amp;oacute;.','Bir yayÄ±nda sizden bahsetti.'),(63,'posted_on_timeline','','posted on your timeline.','Ù†Ø´Ø± Ø¹Ù„Ù‰ Ø­Ø§Ø¦Ø·Ùƒ','heeft een krabbel op je tijdlijn geplaats.','postÃ© sur votre timeline.','hat an deine Pinwand geschrieben.','pubblicato sulla timeline.','postou algo em sua linha do tempo.','ÐŸÑƒÐ±Ð»Ð¸ÐºÐ°Ñ†Ð¸Ñ Ð½Ð° ÑÑ‚ÐµÐ½Ðµ','publico en tu timeline.','Zaman Ã§izelgesi YayÄ±nlanan.'),(64,'profile_visted','','visited your profile.','Ø²Ø§Ø± ØµÙØ­ØªÙƒ Ø§Ù„Ø´Ø®ØµÙŠØ©','heeft je profiel bezocht.','visitÃ© votre profil.','hat dein Profil besucht.','ha visitato il tuo profilo.','te visitou.','Ð¿Ð¾ÑÐµÑ‚Ð¸Ð»@ Ð²Ð°Ñˆ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ.','visitÃ³ tu perfil','Profilinizi ziyaret etti.'),(65,'accepted_friend_request','','accepted your friend request.','Ù‚Ø¨Ù„ Ø·Ù„Ø¨ Ø§Ù„ØµØ¯Ø§Ù‚Ø©','heeft je vriendschapsverzoek geaccepteerd.','acceptÃ© votre demande d&#39;ami.','hat deine Freundschaftsanfrage akzeptiert.','ha accettato la tua richiesta di amicizia.','aceitou seu pedido de amizade.','Ð¿Ñ€Ð¸Ð½ÑÐ»@ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð¾ Ð´Ñ€ÑƒÐ¶Ð±Ðµ.','acepto tu solicitud de amistad.','ArkadaÅŸlÄ±k isteÄŸin kabul edildi.'),(66,'accepted_follow_request','','accepted your follow request.','Ù‚Ø¨Ù„ Ø·Ù„Ø¨ Ø§Ù„Ù…ØªØ§Ø¨Ø¹Ø©','heeft je volgverzoek geaccepteerd.','acceptÃ© votre demande de suivi.','hat deine Folgenanfrage akzeptiert.','ha accettato la tua richiesta di follow/segumento.','aceitou que voc&amp;ecirc; siga ele.','Ð¿Ñ€Ð¸Ð½ÑÑ‚ÑŒ Ð·Ð°Ð¿Ñ€Ð¾Ñ.','acepto tu solicitud de seguimiento.','Senin takip talebi kabul etti.'),(67,'liked_comment','','liked your comment &quot;{comment}&quot;','Ø£Ø¹Ø¬Ø¨ Ø¨ØªØ¹Ù„ÙŠÙ‚Ùƒ &quot;{comment}&quot;','respecteerd je reactie &quot;{comment}&quot;','aimÃ© votre commentaire &quot;{comment}&quot;','gefÃ¤llt dein Kommentar &quot;{comment}&quot;','piace il tuo commento &quot;{comment}&quot;','curtiu seu coment&amp;aacute;rio &quot;{comment}&quot;','Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ Ð’Ð°Ñˆ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹ &quot;{comment}&quot;','le gusta tu comentario &quot;{comment}&quot;','Yorumunuzu BeÄŸendi &quot;{comment}&quot;'),(68,'wondered_comment','','wondered your comment &quot;{comment}&quot;','ØªØ¹Ø¬Ø¨ Ù…Ù† ØªØ¹Ù„ÙŠÙ‚Ùƒ &quot;{comment}&quot;','wondered je reactie &quot;{comment}&quot;','demandÃ© votre commentaire &quot;{comment}&quot;','wundert sich Ã¼ber deinen Kommentar &quot;{comment}&quot;','si chiedeva il tuo commento &quot;{comment}&quot;','n&amp;atilde;o curtiu seu coment&amp;aacute;rio &quot;{comment}&quot;','Ð½Ðµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ &quot;{comment}&quot;','le sorprendioo tu comentario &quot;{comment}&quot;','Yorumunuzu merak etti &quot;{comment}&quot;'),(69,'liked_post','','liked your {postType} {post}','Ø£Ø¹Ø¬Ø¨ Ø¨ {postType} Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ {post}','respecteerd je {postType} {post}','aimÃ© votre {postType} {post}','gefÃ¤llt dein {postType} {post}','piace il {postType} {post}','curtiu seu {postType} {post}','Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ {postType} {post}','le gusta tu {postType} {post}','Senin {postType} BeÄŸendi {post}'),(70,'wondered_post','','wondered your {postType} {post}','ØªØ¹Ø¬Ø¨ Ø¨ {postType} Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ {post}','wondered je {postType} {post}','demandÃ© votre {postType} {post}','wundert sich Ã¼ber deinen {postType} {post}','si chiedeva il tuo {postType} {post}','n&amp;atilde;o curtiu seu {postType} {post}','Ð½Ðµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ {postType} {post}','le sorprendio tu {postType} {post}','Senin {postType} merak etti {post}'),(71,'share_post','','shared your {postType} {post}','Ø´Ø§Ø±Ùƒ {postType} Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ {post}','deelde je {postType} {post}','partagÃ© votre {postType} {post}','hat deinen {postType} {post} geteilt','ha condiviso il tuo {postType} {post}','compartilhou {postType} {post}','ÑÐ´ÐµÐ»Ð°Ð»@ Ð¿ÐµÑ€ÐµÐ¿Ð¾ÑÑ‚ {postType} {post}','ha compartido tu {postType} {post}','Senin {postType} paylaÅŸtÄ± {post}'),(72,'commented_on_post','','commented on your {postType} {post}','Ø¹Ù„Ù‚ Ø¹Ù„Ù‰ {postType} {post}','reageerde op je {postType} {post}','commentÃ© sur votre {postType} {post}','hat deinen {postType} {post} kommentiert','ha commentato il tuo {postType} {post}','comentou em seu {postType} {post}','Ð¿Ñ€Ð¾ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ð» {postType} {post}','comento en tu {postType} {post}','Senin {postType} yorumlananlar {post}'),(73,'activity_liked_post','','liked {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','Ø£Ø¹Ø¬Ø¨ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Ø¨Ù…Ù†Ø´ÙˆØ±&lt;/a&gt; {user}.','respecteerd {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bericht&lt;/a&gt;.','aimÃ© {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.','gefÃ¤llt {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Beitrag&lt;/a&gt;.','piace {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','curtiu {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Ð·Ð°Ð¼ÐµÑ‚ÐºÐ°&lt;/a&gt; {user}.','le gust&amp;oacute; la &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;publicaci&amp;oacute;n&lt;/a&gt; de {user} .','{user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt; beÄŸendi.'),(74,'activity_wondered_post','','wondered {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','ØªØ¹Ø¬Ø¨ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Ø¨Ù…Ù†Ø´ÙˆØ±&lt;/a&gt; {user}.','wondered {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bericht&lt;/a&gt;.','demandÃ© {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.','wundert sich Ã¼ber {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Beitrag&lt;/a&gt;.','chiedeva {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','n&amp;atilde;o curtiu {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','Ð½Ðµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Ð·Ð°Ð¼ÐµÑ‚ÐºÐ°&lt;/a&gt; {user}.','le sorprendio la &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;publicaci&amp;oacute;n&lt;/a&gt; de {user} .','Wondered {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.'),(75,'activity_share_post','','shared {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','Ø´Ø§Ø±Ùƒ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Ù…Ù†Ø´ÙˆØ±&lt;/a&gt; {user}.','deelde {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bericht&lt;/a&gt;.','partagÃ© {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.','hat {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Beitrag&lt;/a&gt; geteilt.','condiviso {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','compartilhou {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','Ð¿Ð¾Ð´ÐµÐ»Ð¸Ð»ÑÑ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Ð·Ð°Ð¼ÐµÑ‚ÐºÐ¾Ð¹&lt;/a&gt; {user}.','compartio la &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;publicaci&amp;oacute;n&lt;/a&gt; de {user} .','Shared {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.'),(76,'activity_commented_on_post','','commented on {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','Ø¹Ù„Ù‚ Ø¹Ù„Ù‰ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Ù…Ù†Ø´ÙˆØ±&lt;/a&gt; {user}.','reageerde op {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bericht&lt;/a&gt;.','commentÃ© sur {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.','hat {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Beitrag&lt;/a&gt; kommentiert.','ha commentato in {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','Comentou no {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','Ð¿Ñ€Ð¾ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ð»@ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Ð·Ð°Ð¼ÐµÑ‚ÐºÑƒ&lt;/a&gt; {user}.','comento en la &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;publicaci&amp;oacute;n de &lt;/a&gt;{user} .','Commented on {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.'),(77,'video_n_label','','video.','Ø§Ù„ÙÙŠØ¯ÙŠÙˆ','video.','vidÃ©o.','Video','video.','v&amp;iacute;deo.','Ð²Ð¸Ð´ÐµÐ¾.','video.','video'),(78,'post_n_label','','post.','Ø§Ù„Ù…Ù†Ø´ÙˆØ±','bericht.','poster.','Beitrag','post.','post.','Ð¿Ð¾ÑÑ‚.','post.','post'),(79,'photo_n_label','','photo.','Ø§Ù„ØµÙˆØ±Ø©','foto.','photo.','Foto','imagini.','foto.','Ñ„Ð¾Ñ‚Ð¾.','foto.','fotoÄŸraf'),(80,'file_n_label','','file.','Ø§Ù„Ù…Ù„Ù','bestand.','fichier.','Datei','file.','arquivo.','Ñ„Ð°Ð¹Ð».','archivo.','dosya'),(81,'vine_n_label','','vine video.','ÙÙŠØ¯ÙŠÙˆ Ø§Ù„ÙØ§ÙŠÙ†','vine video.','vine vidÃ©o.','Vine-Video','vine video.','Vine.','Ð²Ð¸Ð´ÐµÐ¾.','vine.','vine video'),(82,'sound_n_label','','sound.','Ø§Ù„Ù…Ù„Ù Ø§Ù„ØµÙˆØªÙŠ','muziek.','du son.','Musik','musica.','som.','Ð°ÑƒÐ´Ð¸Ð¾.','sonido.','ses'),(83,'avatar_n_label','','profile picture.','ØµÙˆØ±ØªÙƒ Ø§Ù„Ø´Ø®ØµÙŠØ©','profiel foto.','Photo de profil.','Profilbild','imagine di profilo.','imagem de perfil.','Ð¤Ð¾Ñ‚Ð¾ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ','foto de perfil.','profil fotoÄŸrafÄ±'),(84,'error_not_found','','404 Error','Ø®Ø·Ø£ 404','404 Error','404 Erreur','404 Fehler','404 Errore','Erro 404','ÐžÑˆÐ¸Ð±ÐºÐ° 404','Error 404','404 HatasÄ±'),(85,'sorry_page_not_found','','Sorry, page not found!','Ø¹Ø°Ø±Ø§ÙŽ , Ø§Ù„ØµÙØ­Ø© Ø§Ù„Ù…Ø·Ù„ÙˆØ¨Ø© ØºÙŠØ± Ù…ÙˆØ¬ÙˆØ¯Ø© .','Sorry, pagina niet gevonden!','DÃ©solÃ©, page introuvable!','Entschuldigung: Seite wurde nicht gefunden!','la pagina non trovata!','P&amp;aacute;gina n&amp;atilde;o encontrada!','Ð˜Ð·Ð²Ð¸Ð½Ð¸Ñ‚Ðµ, ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ð½Ðµ Ð¾Ð±Ð½Ð°Ñ€ÑƒÐ¶ÐµÐ½Ð°!','Gommen ne, pagina no encontrada!','Maalesef sayfa bulunamadÄ±!'),(86,'page_not_found','','The page you are looking for could not be found. Please check the link you followed to get here and try again.','Ø§Ù„ØµÙØ­Ø© Ø§Ù„ØªÙŠ Ø·Ù„Ø¨ØªÙ‡Ø§ ØºÙŠØ± Ù…ÙˆØ¬ÙˆØ¯Ø© , Ø§Ù„Ø±Ø¬Ø§Ø¡ ÙØ­Øµ Ø§Ù„Ø±Ø§Ø¨Ø· Ù…Ø±Ø© Ø£Ø®Ø±Ù‰','The page you are looking for could not be found. Please check the link you followed to get here and try again.','La page que vous recherchez n&#39;a pu Ãªtre trouvÃ©e. S&#39;il vous plaÃ®t vÃ©rifier le lien que vous avez suivi pour arriver ici et essayez Ã  nouveau.','Die Seite die du besuchen mÃ¶chtest, wurde nicht gefunden. Bitte Ã¼berprÃ¼fe den Link auf Richtigkeit und versuche es erneut.','La pagina che stai cercando non Ã¨ stato trovato. Si prega di controllare il link che hai seguito per arrivare qui e riprovare.','A p&amp;aacute;gina que voc&amp;ecirc; esta procurando n&amp;atilde;o foi encontrada. Confira o link e tente novamente.','Ð£Ð¿Ñ! ÐœÑ‹ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÐ¼ Ð½Ð°Ð¹Ñ‚Ð¸ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñƒ, ÐºÐ¾Ñ‚Ð¾Ñ€ÑƒÑŽ Ð²Ñ‹ Ð¸Ñ‰ÐµÑ‚Ðµ. Ð’Ñ‹ Ð²Ð²ÐµÐ»Ð¸ Ð½ÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ñ‹Ð¹ Ð°Ð´Ñ€ÐµÑ, Ð¸Ð»Ð¸ Ñ‚Ð°ÐºÐ°Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ð±Ð¾Ð»ÑŒÑˆÐµ Ð½Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.','La p&amp;aacute;gina que est&amp;aacute;s buscando no se encuentra. Por favor revisa el link y vuelve a intentar.','AradÄ±ÄŸÄ±nÄ±z sayfa bulunamadÄ±. Buraya ve tekrar denemek iÃ§in izlenen linki kontrol edin.'),(87,'your_account_activated','','Your account have been successfully activated!','Ù„Ù‚Ø¯ ØªÙ… ØªÙØ¹ÙŠÙ„ Ø­Ø³Ø§Ø¨Ùƒ Ø¨Ù†Ø¬Ø§Ø­ !','Je account is succesvol geactiveerd!','Votre compte a Ã©tÃ© activÃ© avec succÃ¨s!','Dein Konto wurde erfolgreich aktiviert!','Il tuo account Ã¨ stato attivato con successo!','Conta ativada!','Ð’Ð°ÑˆÐ° ÑƒÑ‡ÐµÑ‚Ð½Ð°Ñ Ð·Ð°Ð¿Ð¸ÑÑŒ Ð±Ñ‹Ð»Ð° ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð°!','Â¡Tu cuenta ha sido activada exitosamente!','HesabÄ±nÄ±z baÅŸarÄ±yla aktive edildi!'),(88,'free_to_login','','You&#039;r free to &lt;a href=&quot;{site_url}&quot;&gt;{login}&lt;/a&gt; !','ÙŠÙ…ÙƒÙ†Ùƒ Ø§Ù„Ø¢Ù† &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !','Je kan &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !','Votre libre &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !','Bitte hier &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !','Siete liberi di  &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !','Fa&amp;ccedil;a &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !','Ð’Ñ‹&#039;r Ð²Ð¾Ð¹Ñ‚Ð¸ &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !','Eres libre de &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !','Sen serbestsin &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; ! iÃ§in'),(89,'general_setting','','General Setting','Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„Ø¹Ø§Ù…Ø©','General Setting','Cadre gÃ©nÃ©ral','Allgemeine Einstellungen','Impostazioni Generali','Configura&amp;ccedil;&amp;otilde;es gerais','ÐžÐ±Ñ‰Ð¸Ðµ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸','Configuraci&amp;oacute;n General','Genel Ayar'),(90,'login_setting','','Login Setting','Ù…Ù„Ø¹ÙˆÙ…Ø§Øª Ø§Ù„Ø¯Ø®ÙˆÙ„','Login Setting','Connexion Cadre','Anmeldungseinstellungen','Impostazioni di accesso','Configura&amp;ccedil;&amp;otilde;es de login','Ð’Ð¾Ð¹Ñ‚Ð¸ ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸','Configuraci&amp;oactute;n de Acceso','Ãœye GiriÅŸi AyarÄ±'),(91,'manage_users','','Manage Users','Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†','Manage Users','gÃ©rer les utilisateurs','Benutzer verwalten','Gestisci Utenti','Editar usu&amp;aacute;rios','Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼Ð¸','Manejar Usuarios','KullanÄ±cÄ±larÄ± YÃ¶net'),(92,'manage_posts','','Manage Posts','Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ù†Ø´ÙˆØ±Ø§Øª','Manage Posts','gÃ©rer les messages','BeitrÃ¤ge verwalten','Gestisci Posts','Editar posts','Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ','Manejar Publicaciones','Mesajlar YÃ¶net'),(93,'manage_reports','','Manage Reports','Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ØªØ¨Ù„ÙŠØºØ§Øª','Manage Reports','gÃ©rer les rapports','Meldungen verwalten','Gestisci Segnalazioni','Vizualizar reports','Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¾Ñ‚Ñ‡ÐµÑ‚Ð°Ð¼Ð¸','Manenjar Reportes','Raporlar YÃ¶net'),(94,'advertisement','','Advertisement','Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†Ø§Øª','Advertisement','PublicitÃ©','Werbung','Publicita','Divulga&amp;ccedil;&amp;atilde;o','Ð ÐµÐºÐ»Ð°Ð¼Ð°','Aviso','ReklÃ¢m'),(95,'more','','More','Ø£ÙƒØ«Ø±','Meer','Plus','mehr','PiÃ¹','Mais','ÐµÑ‰Ðµ','MÃ¡s informaciÃ³n','daha'),(96,'cache_system','','Cache System','Ù†Ø¸Ø§Ù… Ø§Ù„ÙƒØ§Ø´','Cache System','SystÃ¨me de cache','Cachsystem','Cache di Systema','Cache','ÑÐ¸ÑÑ‚ÐµÐ¼Ð° ÐºÑÑˆÐ°','Cache','Ã–nbellek Sistemi'),(97,'chat_system','','Chat System','Ù†Ø¸Ø§Ù… Ø§Ù„Ø¯Ø±Ø¯Ø´Ø©','Chat System','systÃ¨me chat','Chatsystem','Sistema Chat','Sistema do chat','Ð§Ð°Ñ‚ ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹','Chat','Sohbet Sistemi'),(98,'email_validation','','Email validation','ØªØ£ÙƒÙŠØ¯ Ø§Ù„Ø­Ø³Ø§Ø¨ Ø¹Ø¨Ø± Ø§Ù„Ø§ÙŠÙ…ÙŠÙ„','Email validation','Email de validation','EmailbestÃ¤tigung','Email di convalida','Valida&amp;ccedil;&amp;atilde;o de Email','E-mail Ð²Ð°Ð»Ð¸Ð´Ð°Ñ†Ð¸Ð¸','Validaci&amp;oacute;n de correo','E-posta DoÄŸrulama'),(99,'email_notification','','Email notification','Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø¥Ø´Ø¹Ø§Ø±Ø§Øª Ø¹Ø¨Ø± Ø§Ù„Ø§ÙŠÙ…ÙŠÙ„','Email notification','Notification par courriel','Email-Benachrichtigungen','Notifiche Email','Notifica&amp;ccedil;&amp;atilde;o de Email','E-mail ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ñ','Notificaciones','E-posta Bildirimi'),(100,'smooth_links','','Smooth links','Ø§Ù„Ø±ÙˆØ§Ø¨Ø· Ø§Ù„Ù‚ØµÙŠØ±Ø©','Smooth links','liens lisses','Einfache Links','Collegamenti Smooth','Links permitidos','Ð“Ð»Ð°Ð´ÐºÐ¸Ðµ Ð¡ÑÑ‹Ð»ÐºÐ¸','Smooth links','PÃ¼rÃ¼zsÃ¼z BaÄŸlantÄ±lar'),(101,'seo_friendly_url','','SEO friendly url','Ø§Ù„Ø±ÙˆØ§Ø¨Ø· Ø§Ù„Ø¯Ø§Ø¹Ø© Ù„Ù…ÙˆØ§Ù‚Ø¹ Ø§Ù„Ø¨Ø­Ø«','SEO friendly url','SEO URL conviviale','SEO freundliche URL','SEO amicizie url','URL','SEO Ð”Ñ€ÑƒÐ¶ÐµÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ðµ ÑÑÑ‹Ð»ÐºÐ¸','url amigable para SEO','SEO dost URL'),(102,'file_sharing','','File sharing','Ù…Ø´Ø§Ø±ÙƒØ© Ø§Ù„Ù…Ù„ÙØ§Øª','File sharing','Partage de fichier','Datenaustausch','Condivisione di file','Compartilhar arquivo','Ð¾Ð±Ð¼ÐµÐ½Ð° Ñ„Ð°Ð¹Ð»Ð°Ð¼Ð¸','Compartir Archivos','Dosya paylaÅŸÄ±mak'),(103,'themes','','Themes','Ø´ÙƒÙ„ Ø§Ù„Ù…ÙˆÙ‚Ø¹','Themes','thÃ¨mes','Design','Temi','Temas','Ð¢ÐµÐ¼Ñ‹','Temas','Temalar'),(104,'user_setting','','User Settings','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Gebruikersinstellingen','ParamÃ¨tres utilisateur','Benutzereinstellungen','Impostazioni utente','ConfiguraÃ§Ãµes do usuÃ¡rio','ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒÑÐºÐ¸Ðµ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸','Ajustes de usuario','KullanÄ±cÄ± ayarlarÄ±'),(105,'site_setting','','Site Setting','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ù…ÙˆÙ‚Ø¹','Site Setting','site Cadre','Seiteneinstellungen','impostazioni del sito','Configura&amp;ccedil;&amp;otilde;es do site','Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° ÑÐ°Ð¹Ñ‚Ð°','Configuraci&amp;oacute;n de sitio','Sitede AyarÄ±'),(106,'cache_setting_info','','Enable cache system to speed up your website, Recommended more than 10,000 active users.','ÙØ¹Ù„ Ù†Ø¸Ø§Ù… Ø§Ù„ÙƒØ§Ø´ Ù„ØªØ³Ø±ÙŠØ¹ Ø§Ù„Ù…ÙˆÙ‚Ø¹, ÙŠØ³ØªØ­Ø³Ù† Ø¥Ø³ØªØ®Ø¯Ø§Ù…Ù‡ Ù„Ø£ÙƒØ«Ø± Ù…Ù† 10 Ø¢Ù„Ø§Ù Ù…Ø³ØªØ®Ø¯Ù….','Enable cache system to speed up your website, Recommended more than 10,000 active users.','Activer systÃ¨me de cache pour accÃ©lÃ©rer votre site, a recommandÃ© plus de 10.000 utilisateurs actifs.','Aktiviere das Cachesystem um die Seiten schneller zu machen, Empfehlenswert ab 10,000 aktiven Benutzern.','Abilita sistema di cache per velocizzare il tuo sito web, consigliato piÃ¹ di 10.000 utenti attivi.','Ativar o cache para aumentar a velocidade do site, Recomendado se tiver mais de 10,000 usu&amp;aacute;rios ativos.','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ ÑÐ¸ÑÑ‚ÐµÐ¼Ñƒ ÐºÑÑˆ Ð´Ð»Ñ ÑƒÑÐºÐ¾Ñ€ÐµÐ½Ð¸Ñ Ð²Ð°ÑˆÐµÐ³Ð¾ ÑÐ°Ð¹Ñ‚Ð°, Ð ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÐ¼ Ð±Ð¾Ð»ÐµÐµ 10000 Ð°ÐºÑ‚Ð¸Ð²Ð½Ñ‹Ñ… Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹.','Habilitar cache para aumentar la velocidad de tu sitio, Recomendado para m&amp;aacute;s de 10,000 usuarios activos.','Web sitenizi hÄ±zlandÄ±rmak iÃ§in Ã¶nbellek sistemi etkinleÅŸtirin, 10.000 &#039;den fazla aktif kullanÄ±cÄ± Ã¶nerilir.'),(107,'chat_setting_info','','Enable chat system to chat with friends on the buttom of the page','ÙØ¹Ù„ Ù†Ø¸Ø§Ù… Ø§Ù„Ø¯Ø±Ø¯Ø´Ø© Ù„Ù„Ø¯Ø±Ø¯Ø´Ø© Ù…Ø¹ Ø§Ù„Ø¥ØµØ¯Ù‚Ø§Ø¡ ÙÙŠ ÙŠÙ…ÙŠÙ† Ø£Ø³ÙÙ„ Ø§Ù„ØµÙØ­Ø©.','Enable chat system to chat with friends on the buttom of the page','Activer systÃ¨me chat pour discuter avec des amis sur le fond de la page','Aktiviere das Chatsystem zum chatten mit Freunden','Attivare il sistema chat per chiacchierare con gli amici in fondo alla pagina','Ativar sistema de chat para conversas com seus amigos no rodap&amp;eacute; da p&amp;aacute;gina','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ñ‡Ð°Ñ‚ ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹ Ð´Ð»Ñ Ð¾Ð±Ñ‰Ð°Ñ‚ÑŒÑÑ Ñ Ð´Ñ€ÑƒÐ·ÑŒÑÐ¼Ð¸ Ð½Ð° Ð´Ð½Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','Habilitar cache de chat, para hablar con amigos al pie del sitio','SayfanÄ±n altÄ±ndaki arkadaÅŸlarÄ±nÄ±zla sohbet etmek iÃ§in sohbet sistemini etkinleÅŸtirme'),(108,'email_validation_info','','Enable email validation to send activation link when user registred.','Ù„Ø¥Ø±Ø³Ø§Ù„ Ø±Ù…Ø² Ø§Ù„ØªØ§ÙƒÙŠØ¯ Ø¹Ø¨Ø± Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø¹Ù†Ø¯Ù…Ø§ ÙŠØ³Ø¬Ù„ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù….','Enable email validation to send activation link when user registred.','Activer la validation de messagerie pour envoyer le lien d&#39;activation lorsque l&#39;utilisateur rÃ©fÃ©rencÃ©e.','Aktiviere Email-Aktivierung zum Senden eines Aktivierungslinks wenn sich ein Benutzer registriert.','Abilitare la convalida e-mail per inviare link di attivazione quando utente registrato.','Ativar valida&amp;ccedil;&amp;atilde;o de e-mail quando um usu&amp;aacute;rio se registrar.','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÑƒ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ ÑÑÑ‹Ð»ÐºÑƒ Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸, ÐºÐ¾Ð³Ð´Ð° Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¹ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ.','Habilitar validaci&amp;oacute;n de correo para usuarios registrados.','KullanÄ±cÄ± kayÄ±t sÄ±rasÄ±nda aktivasyon baÄŸlantÄ±sÄ±nÄ± gÃ¶ndermek iÃ§in e-posta doÄŸrulama etkinleÅŸtirin.'),(109,'email_notification_info','','Enable email notification to send user notification via email.','Ù„Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø¥Ø´Ø¹Ø§Ø±Ø§Øª Ø¹Ø¨Ø± Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ.','Enable email notification to send user notification via email.','Activer la notification par e-mail pour envoyer une notification par e-mail de l&#39;utilisateur.','Aktiviere Email-Benachrichtigungen zum Senden von Benachrichtigungen an die Benutzer.','Abilita notifica e-mail per inviare via e-mail di notifica all&#039;utente.','Enviar notifica&amp;ccedil;&amp;otilde;es por e-mail.','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ðµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð¿Ð¾ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ðµ.','Habilitar notificaci&amp;oacute;n por correo para enviar al usuario.','E-posta yoluyla kullanÄ±cÄ± bildirim gÃ¶ndermek iÃ§in e-posta bildirimi etkinleÅŸtirin.'),(110,'smooth_links_info','','Enable smooth links, e.g.{site_url}/home.','Ù„Ø¥Ø³ØªØ®Ø¯Ø§Ù… Ø§Ù„Ø±ÙˆØ§Ø¨Ø· Ø§Ù„Ù‚ØµÙŠØ±Ø©, Ù…Ø«Ø§Ù„: http://localhost/wowonder_update/home.','Enable smooth links, e.g.http://localhost/wowonder_update/home.','Activer les liens lisses, e.g.http://localhost/wowonder_update/home.','Aktiviere Einfache Links, z.B.http://localhost/wowonder_update/start','Abilita collegamenti regolari, e.g.http://localhost/wowonder_update/home.','Ativar links limpos, exemplo.http://localhost/wowonder_update/home.','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ð³Ð»Ð°Ð´ÐºÐ¸Ðµ ÑÑÑ‹Ð»ÐºÐ¸, Ð½Ð°Ð¿Ñ€Ð¸Ð¼ÐµÑ€http://localhost/wowonder_update/home.','Habilitar smooth links, e.g.http://localhost/wowonder_update/home.','PÃ¼rÃ¼zsÃ¼z baÄŸlantÄ±larÄ± etkinleÅŸtirme, e.g.http://localhost/wowonder_update/home.'),(111,'seo_frindly_info','','Enable SEO friendly url, e.g.{site_url}//1_hello-how-are-you-doing.html','Ù„Ø¥Ø³ØªØ®Ø¯Ø§Ù… Ø§Ù„Ø±ÙˆØ§Ø¨Ø· Ø§Ù„Ù…Ø³Ø§Ø¹Ø¯Ø© Ù„Ù…ÙˆØ§Ù‚Ø¹ Ø§Ù„Ø¨Ø­Ø«, Ù…Ø«Ø§Ù„: http://localhost/wowonder_update/1_hello-how-are-you-doing.html','Enable SEO friendly url, e.g.http://localhost/wowonder_update//1_hello-how-are-you-doing.html','Activer SEO URL conviviale, e.g.http://localhost/wowonder_update//1_hello-how-are-you-doing.html','Aktiviere SEO freundliche URL, z.B.http://localhost/wowonder_update//1_hallo-was-machst-du-gerade.html','Abilita SEO friendly url, e.g.http://localhost/wowonder_update//1_hello-how-are-you-doing.html','Ativar SEO URL, exemplo.http://localhost/wowonder_update//1_hello-how-are-you-doing.html','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ SEO Ð”Ñ€ÑƒÐ¶ÐµÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ðµ ÑÑÑ‹Ð»ÐºÐ¸, Ð½Ð°Ð¿Ñ€Ð¸Ð¼ÐµÑ€http://localhost/wowonder_update//1_hello-how-are-you-doing.html','Habilitar url amigable para SEO, e.g.http://localhost/wowonder_update//1_hello-how-are-you-doing.html','SEO dostu url etkinleÅŸtirme, e.g.http://localhost/wowonder_update//1_hello-how-are-you-doing.html'),(112,'file_sharing_info','','Enable File sharing to share &amp; upload videos,images,files,sounds, etc..','Ù„Ù…Ø´Ø§Ø±ÙƒØ© Ø§Ù„Ù…Ù„ÙØ§Øª : ØµÙˆØª , ÙÙŠØ¯ÙŠÙˆ , ØµÙˆØ±Ø© , Ø§Ù„Ø® ..','Enable File sharing to share &amp; upload videos,images,files,sounds, etc..','Activez le partage de fichiers pour partager et tÃ©lÃ©charger des vidÃ©os, des images, des fichiers, des sons, etc...','Aktiviere Datenaustausch zum teilen und hochladen von: Videos, Bildern, Dateien, Musik, etc..','Attivare la condivisione di file per condividere e caricare video, immagini, file, suoni, ecc..','Ativar o compartilhamento de arquivos, para compartilhar videos,imagens,arquivos,sons,etc..','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ð¾Ð±Ñ‰Ð¸Ð¹ Ð´Ð¾ÑÑ‚ÑƒÐ¿ Ðº Ñ„Ð°Ð¹Ð»Ð°Ð¼, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ñ€Ð°Ð·Ð´ÐµÐ»Ð¸Ñ‚ÑŒ Ð¸ Ð·Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð²Ð¸Ð´ÐµÐ¾, Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ, Ñ„Ð°Ð¹Ð»Ñ‹, Ð·Ð²ÑƒÐºÐ¸ Ð¸ Ñ‚.Ð´ ..','Habilitar compartir archivos, para subir v&amp;iacute;deos, sonido, im&amp;aacute;genes , etc..','PaylaÅŸmak &amp; vb video, gÃ¶rÃ¼ntÃ¼, dosyalarÄ±, sesler, yÃ¼klemek iÃ§in Dosya paylaÅŸÄ±mÄ±nÄ± etkinleÅŸtirin ..'),(113,'cache','','Cache','Ø§Ù„ÙƒØ§Ø´','Cache','Cache','Cache','Cache','Cache','ÐºÑÑˆ','Cache','Ã–nbellek'),(114,'site_information','','Site Information','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„Ù…ÙˆÙ‚Ø¹','Site Information','Informations sur le site','Seiteninformationen','Informazioni sul sito','Informa&amp;ccedil;&amp;otilde;es do Site','Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ Ð¾ ÑÐ°Ð¹Ñ‚Ðµ','Informaci&amp;oacute;n del sitio','Site Bilgileri'),(115,'site_title_name','','Site Name &amp; Title:','Ø§Ø³Ù… Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ùˆ Ø¹Ù†ÙˆØ§Ù†Ù‡:','Site Name &amp; Title:','Site Nom et titre:','Seitenname und Titel:','Nome del sito &amp; Titolo:','Nome e t&amp;iacute;tulo do Site:','ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ ÑÐ°Ð¹Ñ‚Ð° Ð¸ Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº:','Nombre y t&amp;iacute;tulo del sitio:','Site AdÄ± &amp; BaÅŸlÄ±k:'),(116,'site_name','','Site name','Ø§Ø³Ù… Ø§Ù„Ù…ÙˆÙ‚Ø¹','Site name','Nom du site','Seitenname','Nome del sito','Nome do Site','ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ ÑÐ°Ð¹Ñ‚Ð°','Nombre del sitio','Site adÄ±'),(117,'site_title','','Site title','Ø¹Ù†ÙˆØ§Ù† Ø§Ù„Ù…ÙˆÙ‚Ø¹','Site title','Titre du site','Seitentitel','Titolo del sito','T&amp;iacute;tulo do Site','Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº ÑÐ°Ð¹Ñ‚Ð°','T&amp;iacute;tulo del sitio','Site baÅŸlÄ±ÄŸÄ±'),(118,'site_keywords_description','','Site Keywords &amp; Description:','ÙˆØµÙ Ø§Ù„Ù…ÙˆÙ‚Ø¹ ÙˆØ§Ù„ÙƒÙ„Ù…Ø§Øª Ø§Ù„Ù…ÙØªØ§Ø­ÙŠØ©:','Site Keywords &amp; Description:','Site Mots-clÃ©s et description:','Seiten-SchlÃ¼sselwÃ¶rter und Beschreibung:','Chave di ricerca e descrizione del sito:','Descri&amp;ccedil;&amp;atilde;o das palavras-chaves:','Ð¡Ð°Ð¹Ñ‚ ÐšÐ»ÑŽÑ‡ÐµÐ²Ñ‹Ðµ ÑÐ»Ð¾Ð²Ð° Ð¸ ÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ:','Palabras clave y Descripci&amp;oacute;:','Sitede Anahtar kelimeler ve AÃ§Ä±klama:'),(119,'site_keywords','','Site Keywords','ÙƒÙ„Ù…Ø§Øª Ù…ÙØªØ§Ø­ÙŠØ©, Ù…Ø«Ø§Ù„: Ù…ÙˆÙ‚Ø¹, ØªÙˆØ§ØµÙ„ Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠ, Ø§Ù„Ø® ..','Site Keywords (eg: social,wownder ..)','site Mots-clÃ©s (eg: social,wownder ..)','Seiten-SchlÃ¼sselwÃ¶rter (z.B: social,wundern ..)','Parole chiave del sito (ad esempio: il mio social network, social etc ..)','Palavras-chaves do site','ÐšÐ»ÑŽÑ‡ÐµÐ²Ñ‹Ðµ ÑÐ»Ð¾Ð²Ð° Ð¡Ð°Ð¹Ñ‚ (Ð½Ð°Ð¿Ñ€Ð¸Ð¼ÐµÑ€: ÑÐ¾Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð°Ñ, Ð»ÑƒÑ‡ÑˆÐµ ..)','Palabras clave (ej: social,wownder ..)','Site Anahtar kelimeler (eg: social,wownder ..)'),(120,'site_description','','Site Description','ÙˆØµÙ Ø§Ù„Ù…ÙˆÙ‚Ø¹','Site Description','description du site','Seitenbeschreibung','Descrizione del stio','Descri&amp;ccedil;&amp;atilde;o do site','Ð¾Ð¿Ð¸ÑÐ°Ð½Ð¸Ðµ ÑÐ°Ð¹Ñ‚Ð°','Descripci&amp;oacute;n del sitio','Site AÃ§Ä±klamasÄ±'),(121,'site_email','','Site E-mail','Ø¨Ø±ÙŠØ¯ Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ:','Site E-mail','Site E-mail','System-Email','Indirizo email del sito','E-mail do site','Ð¡Ð°Ð¹Ñ‚ E-mail','E-mail del sitio','Site E-posta'),(122,'site_lang','','Default Language','Ø§Ù„Ù„ØºØ© Ø§Ù„Ø£Ø³Ø§Ø³ÙŠØ©:','Default Language','Langage par dÃ©faut','Standard-Sprache','Lingua di default','Linguagem padr&amp;ccedil;o','Ð¯Ð·Ñ‹Ðº Ð¿Ð¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ','Lenguaje por defecto','VarsayÄ±lan dil'),(123,'theme_setting','','Theme Setting','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø´ÙƒÙ„ Ø§Ù„Ù…ÙˆÙ‚Ø¹','Theme Setting','thÃ¨me Cadre','Design Einstellungen','Impostazione tema','Configura&amp;ccedil;&amp;otilde;es do tema','Ñ‚ÐµÐ¼Ð° Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ°','Configuraci&amp;oacute;n de Tema','Tema AyarÄ±'),(124,'activeted','','Activated','Ù…ÙØ¹Ù„','Activeted','Activeted','Aktiviert','Attiva','Ativado','Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð»','Activado','Aktif'),(125,'version','','Version:','Ø§Ù„Ø¥ØµØ¯Ø§Ø±:','Version:','Version:','Version:','Versione:','Vers&amp;ccedil;o:','Ð’ÐµÑ€ÑÐ¸Ñ:','Versi&amp;oacute;n:','SÃ¼rÃ¼m:'),(126,'author','','Author:','Ø§Ù„Ù…Ø§Ù„Ùƒ:','Author:','Auteur:','Autor:','Author:','Autor:','ÐÐ²Ñ‚Ð¾Ñ€:','Autor:','Yazar:'),(127,'user_status','','User status','Ø­Ø§Ù„Ø© Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','User status','Le statut de l&#39;utilisateur','Benutzerstatus','Status del utente','Status do usu&amp;aacute;rio','Ð¡Ñ‚Ð°Ñ‚ÑƒÑ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ','Estatus de usuario','KullanÄ±cÄ± durumu'),(128,'online_lastseen','','(online/last seen)','(Ù…ØªØµÙ„ / Ø¢Ø®Ø± Ø¸Ù‡ÙˆØ±)','(online/last seen)','(en ligne / vu la derniÃ¨re fois)','(online/zuletzt online)','(Attvo/Ultima visita)','(online/visto por &amp;uacute;ltimo)','(Ð¾Ð½Ð»Ð°Ð¹Ð½ / Ð² Ð¿Ð¾ÑÐ»ÐµÐ´Ð½Ð¸Ð¹ Ñ€Ð°Ð· Ð±Ñ‹Ð»@)','(En linea/visto hace)','(Ã§evrimiÃ§i / son gÃ¶rÃ¼ldÃ¼ÄŸÃ¼)'),(129,'enable','','Enable','ØªÙØ¹ÙŠÙ„','Enable','Activer','Aktivieren','Attiva','Ativar','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ','Habilitado','EtkinleÅŸtirmek'),(130,'disable','','Disable','Ø¥Ù„ØºØ§Ø¡ Ø§Ù„ØªÙØ¹ÙŠÙ„','Disable','dÃ©sactiver','Deaktivieren','Disattiva','Desativar','ÐžÑ‚ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ','Des habilitado','Devre dÄ±ÅŸÄ±'),(131,'allow_users_to_delete','','Allow users to delete their account','Ø§Ù„Ø³Ù…Ø§Ø­ Ù„Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø¨Ø­Ø°Ù Ø­Ø³Ø§Ø¨Ù‡ØŸ','Allow users to delete their account:','Autoriser les utilisateurs Ã  supprimer son compte:','Benutzern erlauben ihr Konto zu lÃ¶schen:','Consentire agli utenti di cancellare il proprio account:','Permitir que usu&amp;uacute;rios deletem suas contas','Ð Ð°Ð·Ñ€ÐµÑˆÐ¸Ñ‚ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼ ÑƒÐ´Ð°Ð»ÑÑ‚ÑŒ ÑÐ²Ð¾Ð¹ ÑÑ‡ÐµÑ‚:','Permitir a usuarios eliminar su cuenta:','KullanÄ±cÄ±larÄ±n kendi hesabÄ±nÄ± silmek iÃ§in izin verin:'),(132,'profile_visit_notification','','Profile visit notification','ØªÙ„Ù‚ÙŠ Ø§Ù„Ø¥Ø´Ø¹Ø§Ø±Ø§Øª Ø¹Ù†Ø¯ Ø²ÙŠØ§Ø±Ø© Ø§Ù„ØµÙØ­Ø© Ø§Ù„Ø´Ø®ØµÙŠØ©ØŸ','Profile visit notification:','Profil notification de visite:','Profilbesucher Benachrichtigung:','Notifiche sula visita del tuo profilo:','Notifica&amp;ccedil;&amp;atilde;o de visita no perfil','ÐŸÑ€Ð¾Ñ„Ð¸Ð»ÑŒ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ðµ Ð²Ð¸Ð·Ð¸Ñ‚:','Notificaci&amp;oacute;n de visita de perfil:','Profil ziyaret bildirimi:'),(133,'display_user_age_as','','Display user age as','Ø£Ø¸Ù‡Ø§Ø± Ø§Ù„Ø¹Ù…Ø± ÙƒØŸ','Display user age as:','Display user d&#39;Ã¢ge:','Zeige das Alter eines Users als:','Mostra eta utente come:','Mostrar idade como','ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð²Ð¾Ð·Ñ€Ð°ÑÑ‚ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ, ÐºÐ°Ðº:','Mostrar edad de usuario como:','Ekran kullanÄ±cÄ± yaÅŸÄ± olarak:'),(134,'date','','Date','Ø§Ù„ØªØ§Ø±ÙŠØ®','Date','Rendez-vous amoureux','Datum','Data','Data','Ð”Ð°Ñ‚Ð°','Fecha','Tarih'),(135,'age','','Age','Ø§Ù„Ø¹Ù…Ø±','Age','Ã‚ge','Alter','Eta','Idade','Ð’Ð¾Ð·Ñ€Ð°ÑÑ‚','Edad','YaÅŸ'),(136,'connectivity_system','','Connectivity System','Ù†Ø¸Ø§Ù… Ø§Ù„ØµØ¯Ø§Ù‚Ø©:','Connectivity System:','SystÃ¨me de connectivitÃ©:','Communityart:','ConnettivitÃ  del Sistema:','Conectividade do sistema','Ð¡Ð²ÑÐ·ÑŒ ÑÐ¸ÑÑ‚ÐµÐ¼Ð°:','Sistema de Conectividad:','BaÄŸlantÄ± Sistemi:'),(137,'connectivity_system_note','','&lt;span style=&quot;color:red;&quot;&gt;Note:&lt;/span&gt; If you change the system to another one, all existing followings, followers, friends will be deleted.&lt;/small&gt;','&lt;span style=&quot;color:red;&quot;&gt;Ù…Ù„Ø§Ø­Ø¸Ø©:&lt;/span&gt; Ø¹Ù†Ø¯ ØªØºÙŠÙŠØ± Ù†Ø¸Ø§Ù… Ø§Ù„ØµØ¯Ø§Ù‚Ø© ÙƒÙ„ Ø§Ù„ØµØ¯Ø§Ù‚Ø§Øª , Ø§Ù„Ù…ØªØ§Ø¨Ø¹Ø§Øª Ø³ÙˆÙ ØªØ­Ø°Ù Ù…Ù† Ù‚Ø§Ø¹Ø¯Ø© Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª , Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ø­Ø°Ø± !&lt;/small&gt;','&lt;span style=&quot;color:red;&quot;&gt;Note:&lt;/span&gt; If you migrate from one system to another, all existing followings, followers, friends, memberships will be deleted to avoid issues.&lt;/small&gt;','&lt;span style=&quot;color:red;&quot;&gt;Note:&lt;/span&gt; If you migrate from one system to another, all existing followings, followers, friends, memberships will be deleted to avoid issues.&lt;/small&gt;','&lt;span style=&quot;color:red;&quot;&gt;Achtung:&lt;/span&gt; Wenn Du von einem System zu einem anderen migrierst, werden alle existierenden: Folger, Verfolger, Freunde, Mitgliedschaften gelÃ¶scht um Probleme zu vermeiden.&lt;/small&gt;','&lt;span style=&quot;color:red;&quot;&gt;Nota:&lt;/span&gt; Se si esegue la migrazione da un sistema all&#039;altro, tutti i seguenti esistenti, seguaci, amici, appartenenze verranno eliminati per evitare problemi.&lt;/small&gt;','&lt;span style=&quot;color:red;&quot;&gt;Observa&amp;ccedil;&amp;atilde;o:&lt;/span&gt; Se voc&amp;ecirc; mudar o sistema, todos aqueles que voc&amp;ecirc; segue, que te seguem e seus amigos ser&amp;ccedil;o perdidos.&lt;/small&gt;','&lt;span style=&quot;color:red;&quot;&gt;ÐŸÑ€Ð¸Ð¼ÐµÑ‡Ð°Ð½Ð¸Ðµ:&lt;/span&gt;  ÐŸÑ€Ð¸ Ð¿ÐµÑ€ÐµÑ…Ð¾Ð´Ðµ Ð¾Ñ‚ Ð¾Ð´Ð½Ð¾Ð¹ ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹ Ðº Ð´Ñ€ÑƒÐ³Ð¾Ð¹, Ð²ÑÐµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÑŽÑ‰Ð¸Ðµ ÐŸÐ¾Ð´Ð¿Ð¸ÑÐ°Ð½, Ð¿Ð¾ÑÐ»ÐµÐ´Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸, Ð´Ñ€ÑƒÐ·ÑŒÑ, Ñ‡Ð»ÐµÐ½ÑÑ‚Ð²Ð¾ Ð±ÑƒÐ´ÐµÑ‚ ÑƒÐ´Ð°Ð»ÐµÐ½, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¸Ð·Ð±ÐµÐ¶Ð°Ñ‚ÑŒ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼.&lt;/small&gt;','&lt;span style=&quot;color:red;&quot;&gt;Nota:&lt;/span&gt; Si migras de un sistema a otro, Toda la informaci&amp;oacute;n existente, seguidos, seguidores, etc.., ser&amp;aacute; eliminada para evitar conflictos.&lt;/small&gt;','&lt;span style=&quot;color:red;&quot;&gt;Not:&lt;/span&gt; EÄŸer bir sistemden diÄŸerine gÃ¶Ã§, tÃ¼m mevcut followings, takipÃ§ileri, arkadaÅŸlar, Ã¼yelikleri sorunlarÄ± Ã¶nlemek iÃ§in silinir.&lt;/small&gt;'),(138,'friends_system','','Friends system','Ù†Ø¸Ø§Ù… Ø§Ù„ØµØ¯Ø§Ù‚Ø© Ù…Ø«Ù„ ÙÙŠØ³Ø¨ÙˆÙƒ','Friends system','SystÃ¨me d&#39;amis','Freundesystem','Sistema Amici','Sistema de amigos','Ð”Ñ€ÑƒÐ·ÑŒÑ ÑÐ¸ÑÑ‚ÐµÐ¼Ð°','Sistema de amigos','ArkadaÅŸlar Sistemi'),(139,'follow_system','','Follow system','Ù†Ø¸Ø§Ù… Ø§Ù„Ù…ØªØ§Ø¨Ø¹Ø© Ù…Ø«Ù„ ØªÙˆÙŠØªØ±','Follow system','systÃ¨me de suivi','Folgensystem','Sistema con seguire/Follow','Sistema de seguidores','Ð¡Ð»ÐµÐ´ÑƒÐ¹Ñ‚Ðµ ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹','Sistema de seguidores','Takip Sistemi'),(140,'max_upload_size','','Max upload size for videos, images, sounds, and files','Ø§Ù„Ø­Ø¯ Ø§Ù„Ø£Ù‚ØµÙ‰ Ù„Ø­Ø¬Ù… Ø§Ù„Ø±ÙØ¹:','Max upload size:','Taille maximale de tÃ©lÃ©chargement:','Maximale DateigrÃ¶ÃŸe zum hochladen:','Dimensione massima di upload:','Tamanho m&amp;aacute;ximo de v&amp;iacute;deos, imagens, sons e arquivos','ÐœÐ°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ñ€Ð°Ð·Ð¼ÐµÑ€ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐ¸:','Limite de subida:','Max upload size:'),(141,'max_characters_length','','Max characters length','Ø§Ù„Ø­Ø¯ Ø§Ù„Ø£Ù‚ØµÙ‰ Ù„Ø¹Ø¯Ø¯ Ø§Ù„Ø£Ø­Ø±Ù:','Max characters length:','Max longueur des caractÃ¨res:','Maximale ZeichenlÃ¤nge:','Lunghezza massima caratteri:','Max characters length','ÐœÐ°ÐºÑ ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð² Ð´Ð»Ð¸Ð½Ð¾Ð¹:','Limite de caracteres:','Maksimum yÃ¼kleme boyutu:'),(142,'allowed_extenstions','','Allowed extenstions','ØµÙŠØº Ø§Ù„Ù…Ù„ÙØ§Øª Ø§Ù„Ù…Ø³ÙˆÙ…Ø­ ÙŠÙ‡Ø§:','Allowed extenstions:','extensions autorisÃ©es:','Erlaubte Endungen:','Estensioni ammessi:','Extens&amp;otilde;es permitidas','Ð”Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ðµ Ñ€Ð°ÑÑˆÐ¸Ñ€ÐµÐ½Ð¸Ñ:','Extensiones permitidas:','Ä°zin UzantÄ±larÄ±:'),(143,'reCaptcha_setting','','reCaptcha Setting','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø±ÙŠÙƒØ§Ø¨ØªØ§','reCaptcha Setting','reCaptcha Cadre','reCaptcha Einstellungen','reCaptcha Impostazioni','Configura&amp;ccedil;&amp;atilde;o do reCaptcha','Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° ReCaptcha','Configuraci&amp;oacute;n reCaptcha','Tuttum AyarÄ±'),(144,'reCaptcha_key_is_required','','reCaptcha key is required','Ù…ÙØªØ§Ø­ Ø§Ù„Ø±ÙŠÙƒØ§Ø¨ØªØ´Ø§ Ù…Ø·Ù„ÙˆØ¨','reCaptcha key is required','reCaptcha clÃ© est nÃ©cessaire','reCaptcha schlÃ¼ÃŸel ist erforderlich','reCaptcha Chiave e richesta','a chave do reCaptcha &amp;eacute; necess&amp;aacute;ria','ÐšÐ»ÑŽÑ‡ ReCaptcha Ñ‚Ñ€ÐµÐ±ÑƒÐµÑ‚ÑÑ','Llave de reCaptcha es requerida','Tuttum anahtarÄ± gereklidir'),(145,'reCaptcha_key','','reCaptcha Key','Ù…ÙØªØ§Ø­ Ø§Ù„Ø±ÙŠÙƒØ§Ø¨ØªØ´Ø§:','reCaptcha Key :','reCaptcha clÃ© :','reCaptcha SchlÃ¼ÃŸel :','reCaptcha chiave :','chave do reCaptcha','ÐšÐ»ÑŽÑ‡ ReCaptcha :','Llave de reCaptcha :','Tuttum AnahtarÄ±:'),(146,'google_analytics','','Google Analytics','ØªØ­Ù„ÙŠÙ„ ØºÙˆØºÙ„','Google Analytics','Google Analytics','Google Analytics','Google Analytics','Google Analytics','Ð“ÑƒÐ³Ð» ÐÐ½Ð°Ð»Ð¸Ñ‚Ð¸ÐºÐ°','Google Analytics','Google Analiz'),(147,'google_analytics_code','','Google analytics code','ÙƒÙˆØ¯ Ù„ØªØ­Ù„ÙŠÙ„ ØºÙˆØºÙ„','Google analytics code:','Google code Google Analytics:','Google Analytics Code:','Google analytics Codice:','C&amp;oacute;digo do Google analytics','Ð“ÑƒÐ³Ð» ÐÐ½Ð°Ð»Ð¸Ñ‚Ð¸ÐºÐ° ÐºÐ¾Ð´:','Google analytics code:','Google Analytics Kodu:'),(148,'cache_setting','','Cache Setting','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ÙƒØ§Ø´','Cache Setting','cache Cadre','Cache Einstellungen','Cache Impostazioni','Configura&amp;ccedil;&amp;atilde;o de Cache','Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° ÐºÑÑˆÐ°','Configuraci&amp;oacute;n de Cache','Ã–nbellek AyarÄ±'),(149,'cache_recomended_clear','','It&#039;s highly recommended to clear the cache.','Ø§Ù†Ù‡ Ù…Ù† Ø§Ù„Ù…Ø³ØªØ­ÙŠÙ† Ø£Ù† ØªÙ…Ø³Ø­ Ø§Ù„ÙƒØ§Ø´.','It&#039;s highly recommended to clear the cache.','Il est fortement recommandÃ© de vider le cache.','Es ist sehr empfehlenswert den Cache zu sÃ¤ubern.','Si raccomanda di cancellare la cache.','&amp;eacute; recomend&amp;aacute;vel que voc&amp;ecirc; limpe o cache.','Ð­Ñ‚Ð¾ Ñ€ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÑ‚ÑÑ Ð¾Ñ‡Ð¸ÑÑ‚Ð¸Ñ‚ÑŒ ÐºÑÑˆ.','Es altamente recomendado limpiar la cache.','OldukÃ§a Ã¶nbelleÄŸi temizlemek iÃ§in tavsiye edilir.'),(150,'cache_size','','Cache Size:','Ø­Ø¬Ù… Ø§Ù„ÙƒØ§Ø´:','Cache Size:','Taille du cache:','CachegrÃ¶ÃŸe:','Cache Dimensioni:','Tamanho do cache:','Ð Ð°Ð·Ð¼ÐµÑ€ ÐºÑÑˆÐ°:','TamaÃ±o de Cache:','Ã–nbellek Boyutu:'),(151,'clear_cache','','Clear Cache','Ù…Ø³Ø­ Ø§Ù„ÙƒØ§Ø´','Clear Cache','Vider le cache','Cache sÃ¤ubern','Pulisci Cache','Limpar Cache','ÐžÑ‡Ð¸ÑÑ‚Ð¸Ñ‚ÑŒ ÐºÑÑˆ','Limpiar Cache','Ã–nbelleÄŸi'),(152,'social_login','','Social login','Ø¯Ø®ÙˆÙ„ Ø§Ù„ØªÙˆØ§ØµÙ„ Ø§Ù„Ø¥Ø¬ØªÙ…Ø§Ø¹ÙŠ','Social login','Social login','Social Anmeldung','Social login','Login','Ð¡Ð¾Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð²Ñ…Ð¾Ð´','Social login','Sosyal giriÅŸ'),(153,'social_login_api','','Social login API&#039;S','Ø§Ù„ API Ø§Ù„Ø®Ø§Øµ Ø¨ Ø§Ù„Ø¯Ø®ÙˆÙ„ Ø¨Ø¥Ø³ØªØ®Ø¯Ø§Ù… Ø§Ù„ØªÙˆØ§ØµÙ„ Ø§Ù„Ø¥Ø¬ØªÙ…Ø§Ø¹ÙŠ','Social login API&#039;S','Social login API&#39;S','Social Anmeldung API&#039;S','Social login API&#039;S','Login API','Ð¡Ð¾Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð²Ñ…Ð¾Ð´ API &#039;S','APIS sociales','Sosyal giriÅŸ APIler'),(154,'facebook','','Facebook','Ø§Ù„ÙØ³Ø¨ÙˆÙƒ','Facebook','Facebook','Facebook','Facebook','Facebook','Facebook','Facebook','Facebook'),(155,'google','','Google+','ØºÙˆØºÙ„ Ø¨Ù„Ø§Ø³','Google+','Google+','Google+','Google+','Google+','Google+','Google+','Google+'),(156,'twitter','','Twitter','ØªÙˆÙŠØªØ±','Twitter','Twitter','Twitter','Twitter','Twitter','Ð¢Ð²Ð¸Ñ‚Ñ‚ÐµÑ€','Twitter','Twitter'),(157,'linkedin','','Linkedin','Ù„ÙŠÙ†ÙƒØ¯ Ø¥Ù†','Linkedin','Linkedin','Linkedin','Linkedin','Linkedin','Linkedin','Linkedin','Linkedin'),(158,'vkontakte','','Vkontakte','ÙÙŠ ÙƒÙŠÙ†ØªØ§ÙƒØªØ§','Vkontakte','Vkontakte','Vkontakte','Vkontakte','Vkontakte','Ð’ÐºÐ¾Ð½Ñ‚Ð°ÐºÑ‚Ðµ','Vkontakte','Vkontakte'),(159,'facebook_api','','Facebook API','ÙÙŠØ³Ø¨ÙˆÙƒ API','Facebook API','Facebook API','Facebook API','Facebook API','Facebook API','Facebook API','Facebook API','Facebook API'),(160,'google_api','','Google API','ØºÙˆØºÙ„ API','Google API','Google API','Google API','Google API','Google API','Google API','Google API','Google API'),(161,'twitter_api','','Twitter API','ØªÙˆÙŠØªØ± API','Twitter API','Twitter API','Twitter API','Twitter API','Twitter API','Ð¢Ð²Ð¸Ñ‚Ñ‚ÐµÑ€ API','Twitter API','Twitter API'),(162,'linkedin_api','','Linkedin API','Ù„ÙŠÙ†ÙƒØ¯ Ø¥Ù† API','Linkedin API','Linkedin API','Linkedin API','Linkedin API','Linkedin API','Linkedin API','Linkedin API','Linkedin API'),(163,'vkontakte_api','','Vkontakte API','ÙÙŠ ÙƒÙŠÙ†ØªØ§ÙƒØªØ§ API','Vkontakte API','Vkontakte API','Vkontakte API','Vkontakte API','Vkontakte API','Vkontakte API','Vkontakte API','Vkontakte API'),(164,'app_id','','App ID','Ø±Ù‚Ù… Ø§Ù„ØªØ·Ø¨ÙŠÙ‚','App ID','App ID','App ID','App ID','App ID','App ID','ID de aplicaci&amp;oacute;n','App KimliÄŸi'),(165,'app_secret_key','','App Secret Key','Ù…ÙØªØ§Ø­ Ø§Ù„ØªØ·Ø¨ÙŠÙ‚','App Secret Key','App Secret Key','App Geheim SchlÃ¼ssel','Chiave segreta delle app','Chave Secreta APP','App Ð¡ÐµÐºÑ€ÐµÑ‚Ð½Ñ‹Ð¹ ÐºÐ»ÑŽÑ‡','Llave secreta de aplicaci&amp;oacute;n','App Gizli AnahtarÄ±'),(166,'login_with','','Login with','ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„ Ø¹Ù† Ø·Ø±ÙŠÙ‚:','Login with','Connectez-vous avec','Anmelden mit','Entra con','Logar com','Ð’Ð¾Ð¹Ð´Ð¸Ñ‚Ðµ Ñ','Ingresar con','Ä°le giriÅŸ'),(167,'id','','ID','ID','ID','ID','ID','ID','ID','ID','ID','ID'),(168,'source','','Source','Ø§Ù„Ù…ØµØ¯Ø±','Source','La source','Quelle','Fonte','Source','Ð˜ÑÑ‚Ð¾Ñ‡Ð½Ð¸Ðº','Fuente','Kaynak'),(169,'status','','Status','Ø§Ù„Ø­Ø§Ù„Ø©','Status','statut','Status','Stato','Status','Ð¡Ð¾ÑÑ‚Ð¾ÑÐ½Ð¸Ðµ','Estado','StatÃ¼'),(170,'pending','','Pending','Ù‚ÙŠØ¯ Ø§Ù„Ø¥Ù†ØªØ¸Ø§Ø±','Pending','en attendant','Anstehend','In atesa','Pendente','Ð’ Ð¾Ð¶Ð¸Ð´Ð°Ð½Ð¸Ð¸','Pendiente','Bekleyen'),(171,'first_name','','First name','Ø§Ù„Ø¥Ø³Ù…','First name','PrÃ©nom','Vorname','Nome','Primeiro nome','Ð˜Ð¼Ñ','Nombre','Ä°sim'),(172,'last_name','','Last name','Ø§Ù„ÙƒÙ†ÙŠØ©','Last name','Nom de famille','Nachname','Cognome','&amp;uacute;ltimo nome','Ð¤Ð°Ð¼Ð¸Ð»Ð¸Ñ','Apellido','SoyadÄ±'),(173,'about_me','','About me','Ø¹Ù†ÙŠ','About me','A propos de moi','Ãœber mich','Su di me','Sobre','ÐžÐ±Ð¾ Ð¼Ð½Ðµ','Sobre mi','Benim hakkÄ±mda'),(174,'website','','Website','Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','Website','Website','Webseite','Sito Web','Website','Ð’ÐµÐ±-ÑÐ°Ð¹Ñ‚','Website','Web Sitesi'),(175,'action','','Action','Ø¹Ù…Ù„ ','Actie','action','Aktion','Azione','AÃ§ao','Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ðµ','AcciÃ³n','Aksiyon'),(176,'show_more_users','','Show more users','Ø¹Ø±Ø¶ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†','Show more users','Afficher plus d&#39;utilisateurs','Zeige mehr Benutzer','Mostra piu utenti','Mostrar mais usu&amp;uacute;rios','ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹','Mostrar m&amp;aacute;s usuarios','Daha fazla kullanÄ±cÄ± gÃ¶ster'),(177,'no_more_users_to_show','','No more users to show','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø§Ù„Ù…Ø²ÙŠØ¯','No more users to show','Pas plus aux utilisateurs d&#39;afficher','Keine weiteren Benutzer','Nessun altro utente da mostrare','N&amp;atilde;o me mostre mais usu&amp;uacute;rios','ÐÐµÑ‚ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ','No hay m&amp;aacute;s usuarios','ArtÄ±k kullanÄ±cÄ±lar gÃ¶stermek iÃ§in'),(178,'user_delete_confirmation','','Are you sure you want to delete this user?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ù…Ù† Ø­ÙØ° Ù‡Ø°Ø§ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ØŸ','Are you sure you want to delete this user?','ÃŠtes-vous sÃ»r de vouloir supprimer cet utilisateur?','Diesen Benutzer wirklich lÃ¶schen?','Sei sicuro di voler eliminare questo utente?','Gostaria mesmo de deletar esse usu&amp;uacute;rio?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ?','Â¿Seguro que deseas eliminar este amigo?','Bu kullanÄ±cÄ±yÄ± silmek istediÄŸinizden emin misiniz?'),(179,'post_delete_confirmation','','Are you sure you want to delete this post?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ù…Ù† Ø­ÙØ° Ù‡Ø°Ø§ Ø§Ù„Ù…Ù†Ø´ÙˆØ±ØŸ','Are you sure you want to delete this post?','Es-tu sur de vouloir supprimer cette annonce?','Diesen Beitrag wirklich lÃ¶schen?','Sei sicuro di voler eliminare questo post?','Gostaria mesmo de deletar esse post?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ?','Â¿Seguro que deseas eliminar est&amp;aacute; punlicaci&amp;oacute;n?','Bu mesajÄ± silmek istediÄŸinizden emin misiniz?'),(180,'show_more_posts','','Show more posts','Ø¹Ø±Ø¶ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ù†Ø´ÙˆØ±Ø§Øª','Show more posts','Montrer plus d&#39;articles','Zeige mehr BeitrÃ¤ge','Mostra gli altri messaggi','Mostrar mais posts','ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ ÐµÑ‰Ðµ Ð·Ð°Ð¿Ð¸ÑÐ¸','Mostrar m&amp;aacute;s publicaciones','Daha fazla mesajlarÄ± gÃ¶ster'),(181,'no_more_posts','','No more posts','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø§Ù„Ù…Ø²ÙŠØ¯','No more posts','Pas plus de postes','Keine weiteren BeitrÃ¤ge','Non ci sono altri post','N&amp;atilde;o me mostre mais posts','ÐÐµÑ‚ Ð·Ð°Ð¼ÐµÑ‚Ð¾Ðº Ð´Ð»Ñ Ð¾Ñ‚Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ','No hay mas publicaciones','Daha mesajlar yok'),(182,'no_posts_found','','No posts to show','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ù…Ù†Ø´ÙˆØ±Ø§Øª','No posts found','Aucun post trouvÃ©','Keine BeitrÃ¤ge gefunden','nesun post trovato','Nenhum post encontrado','Ð—Ð°Ð¼ÐµÑ‚ÐºÐ¸ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ‹','Publicaci&amp;oacute;n no encontrada','Mesajlar yok'),(183,'publisher','','Publisher','Ø§Ù„Ù†Ø§Ø´Ø±','Publisher','Ã‰diteur','Herausgeber','Editore','Publicador','Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð»@','Editor','YayÄ±mcÄ±'),(184,'there_are_not_new_posts_for_now','','There are not new post for now','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ù…Ù†Ø´ÙˆØ±Ø§Øª Ø¬Ø¯ÙŠØ¯Ø©','There are not new post for now','Il n&#39;y a pas pour le moment nouveau poste','Derzeit keine neuen BeitrÃ¤ge','Nessun nuovo post per ora','Nenhum post novo','ÐÐ° Ð´Ð°Ð½Ð½Ñ‹Ð¹ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚ Ð½ÐµÑ‚ Ð½Ð¾Ð²Ñ‹Ñ… ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹','No hay mas publicaciones por ahora','HenÃ¼z okunmamÄ±ÅŸ Mesaja vardÄ±r'),(185,'post_link','','Post link','Ø±Ø§Ø¨Ø· Ø§Ù„Ù…Ù†Ø´ÙˆØ±','Post link','lien Poster','Beitragslink','Post link','Link do post','Ð—Ð°Ð¼ÐµÑ‚ÐºÐ° ÑÑÑ‹Ð»ÐºÐ°','Publicar link','Mesaj baÄŸlantÄ±'),(186,'time','','Time','Ø§Ù„ÙˆÙ‚Øª','Time','Temps','Zeit','Orario','Tempo','Ð’Ñ€ÐµÐ¼Ñ','Hora','Zaman'),(187,'post','','Post','Ø§Ù„Ù…Ù†Ø´ÙˆØ±','Post','Poster','Beitrag','Post','Post','Ð—Ð°Ð¼ÐµÑ‚ÐºÐ°','Publicacion','Mesaj'),(188,'no_posts_yet','','{name} has not posted anything yet','{name} Ù„Ù… ÙŠÙ†Ø´Ø± Ø£ÙŠ Ù…Ù†Ø´ÙˆØ± Ø¨Ø¹Ø¯.','{name} has not posted anything yet','{name} n&#39;a pas encore postÃ© rien','{name} hat noch keine BeitrÃ¤ge erstellt','{name} non ha pubblicato ancora nulla','{name} n&amp;atilde;o postou nada ainda','{name} ÐµÑ‰Ðµ Ð½Ð¸Ñ‡ÐµÐ³Ð¾ Ð½Ðµ Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð½Ð¾','{name} no ha publicado nada a&amp;uacute;n','{name} bir ÅŸey yayÄ±nlamadÄ±'),(189,'search','','Search','Ø¨Ø­Ø«','Search','Recherche','Suche','Cerca','Procurar','ÐŸÐ¾Ð¸ÑÐº','Buscar','Aramak'),(190,'on','','On','ØªÙØ¹ÙŠÙ„','On','Sur','An','Attivo','On','ÐžÑ‚ÐºÑ€Ñ‹Ñ‚','Encender','AÃ§Ä±k'),(191,'off','','Off','Ø¥Ø§Ù„ØºØ§Ø¡','Off','De','Aus','Spento','Off','Ð—Ð°ÐºÑ€Ñ‹Ñ‚','Apagar','KapalÄ±'),(192,'save','','Save','Ø­ÙØ¸','Save','sauvegarder','Speichern','Salva','Salvar','Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ','Guardar','Kaydet'),(193,'saved','','Saved !','ØªÙ… Ø§Ù„Ø­ÙØ¸ !','Saved !','EnregistrÃ© !','Gespeichert!','Salvato !','Salvo !','Ð¡Ð¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ð¾!','Â¡ Guardado !','Kaydedilen!'),(194,'reporter','','Reporter','Ø§Ù„Ø¨Ø§Ù„Øº','Reporter','Journaliste','Meldungen','Rapporter','Usu&amp;uacute;rio','ÐžÑ‚Ñ‡ÐµÑ‚','Reportes','Muhabir'),(195,'time_reported','','Time Reported','Ø²Ù…Ù† Ø§Ù„ØªØ¨Ù„ÙŠØº','Time Reported','temps RapportÃ©','Meldungs Zeit','Tempo Segnalato','Hor&amp;aacute;rio','Ð’Ñ€ÐµÐ¼Ñ Ð¾Ñ‚Ñ‡ÐµÑ‚Ð°','Hora reportada','Bildiren Zaman'),(196,'there_are_no_new_reports','','There are no new reports for now.','Ù„Ø§ ÙŠÙˆØ¬Ø¯ ØªØ¨Ù„ÙŠØºØ§Øª Ø¬Ø¯ÙŠØ¯Ø©','There are no new reports for now.','Il n&#39;y a pas de nouveaux rapports pour l&#39;instant.','Derzeit keine neuen Meldungen.','Non ci sono nuovi report per ora.','Nenhum report novo.','ÐÐ° Ð´Ð°Ð½Ð½Ñ‹Ð¹ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚ Ð½ÐµÑ‚ Ð½Ð¾Ð²Ñ‹Ñ… Ð¾Ñ‚Ñ‡ÐµÑ‚Ð¾Ð².','No hay nuevos reportes por ahora.','HenÃ¼z yeni raporlar vardÄ±r.'),(197,'open_post','','Open Post','Ø£ÙØªØ­ Ø§Ù„Ù…Ù†Ø´ÙˆØ±','Open Post','Ouvrir Poste','Beitrag Ã¶ffnen','Apri il post','Abrir Post','ÐžÑ‚ÐºÑ€Ñ‹Ñ‚ÑŒ Ð·Ð°Ð¼ÐµÑ‚ÐºÑƒ','Abrir publicaci&amp;oacute;n','HenÃ¼z Raporlar VardÄ±r Yeni.'),(198,'mark_safe','','Mark Safe','ØªØ¹ÙŠÙŠÙ† ÙƒØ¢Ù…Ù†','Mark Safe','Mark Safe','Als sicher markieren','Mark sicuro','Marcar como seguro','Ð‘ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ð¾','Marcar como seguro','Mark GÃ¼venli'),(199,'delete_post','','Delete Post','Ø­Ø°Ù','Delete Post','Delete Post','Beitrag lÃ¶schen','Cancella questo Post','Deletar Post','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ð·Ð°Ð¼ÐµÑ‚ÐºÑƒ','Eliminar publicaci&amp;oacute;n','Sil'),(200,'advertisement_setting','','Advertisement Setting','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†Ø§Øª','Advertisement Setting','Cadre PublicitÃ©','Werbeeinstellungen','Impostazione PubblicitÃ ','Configura&amp;ccedil;&amp;otilde;es de divulga&amp;ccedil;&amp;atilde;o','Ð ÐµÐºÐ»Ð°Ð¼Ð° Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸','Configuraci&amp;oacuten; de avisos','Reklam AyarÄ±'),(201,'more_setting','','More Setting','Ø§Ù„Ù…Ø²ÙŠØ¯','More Setting','plus Cadre','Mehr Einstellungen','Piu Impostazioni','Mais configura&amp;ccedil;&amp;otilde;es','Ð Ð°ÑÑˆÐ¸Ñ€ÐµÐ½Ð½Ñ‹Ðµ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸','M&amp;aacute;s configuraciones','Daha Ayar'),(202,'mailing_users','','Mailing list','Ø§Ù„Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø¨Ø±ÙŠØ¯ÙŠØ©','Mailing list','Liste de diffusion','Mail an alle User','Lista di email','Lista dos emails','Ð¡Ð¿Ð¸ÑÐ¾Ðº Ñ€Ð°ÑÑÑ‹Ð»ÐºÐ¸','Lista de correos','Mail listesi'),(203,'send','','Send','Ø¥Ø±Ø³Ø§Ù„','Send','Envoyer','Senden','Invia','Enviar','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ','Enviar','GÃ¶nder'),(204,'mailing_subject','','Subject..','Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹..','Subject..','Assujettir..','Gegenstand..','Subject..','T&amp;iacute;tulo..','Ð¢ÐµÐ¼Ð°..','Tema..','Konu ..'),(205,'mailing_message','','Message..','Ø§Ù„Ø±Ø³Ø§Ù„Ø©..','Message..','Message..','Nachricht..','Messaggio..','Mensagem..','Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ..','Mensaje..','Mesaj..'),(206,'announcement','','Announcement','ØªØµØ±ÙŠØ­','Announcement:','Annonce:','AnkÃ¼ndigung:','Annuncio:','Aviso','ÐžÐ±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ:','Anuncio:','Duyuru:'),(207,'new_announcement','','New announcement','ØªØµØ±ÙŠØ­ Ø¬Ø¯ÙŠØ¯','New announcement ..','nouvelle annonce ..','Neue AnkÃ¼ndigung ..','Nuovo annuncio ..','Novo aviso','ÐÐ¾Ð²Ð¾Ðµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ...','Nuevo anuncio ..','Yeni duyuru ..'),(208,'add','','Add','Ø¥Ø¶Ø§ÙØ©','Add','Ajouter','HinzufÃ¼gen','Aggiungi','Add','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ','Agregar','Ekle'),(209,'views','','Views','Ø§Ù„Ø¢Ø±Ø§Ø¡','Uitzichten','Vues','Ansichten','Visualizzazioni','VisualizaÃ§Ãµes','ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€Ñ‹','Puntos de vista','GÃ¶rÃ¼ntÃ¼ler'),(210,'there_are_no_active_announcements','','There are no active announcements.','Ù„Ø§ ÙŠÙˆØ¬Ø¯ ØªØµØ±ÙŠØ­Ø§Øª Ù…ÙØ¹Ù„Ø©','There are no active announcements.','Il n&#39;y a pas d&#39;annonces actives.','Derzeit keine aktiven AnkÃ¼ndigungen.','Non ci sono annunci attivi.','Nenhum aviso novo.','ÐÐµÑ‚ Ð°ÐºÑ‚Ð¸Ð²Ð½Ñ‹Ñ… Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ð¹.','No hay avisos activos.','Aktif duyurular hiÃ§ yok.'),(211,'there_are_no_inactive_announcements','','There are no inactive announcements.','Ù„Ø§ÙŠÙˆØ¬Ø¯ ØªØµØ±ÙŠØ­Ø§Øª ØºÙŠØ± Ù…ÙØ¹Ù„Ø©','There are no inactive announcements.','Il n&#39;y a aucune annonce inactifs.','Derzeit keine Inaktiven AnkÃ¼ndigungen.','Non ci sono annunci inattivi.','Nenhum aviso inativo.','ÐÐµÑ‚ Ð½ÐµÐ°ÐºÑ‚Ð¸Ð²Ð½Ñ‹Ñ… Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ñ.','No hay avisos inactivos.','Aktif deÄŸil duyurular hiÃ§ yok.'),(212,'add_friend','','Add Friend','Ø¥Ø¶Ø§ÙØ© ØµØ¯ÙŠÙ‚','Voeg toe','Ajouter','Als Freund','Aggiungi Amico','Adicionar como amigo','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð´Ñ€ÑƒÐ³Ð°','Agregar amigo','ArkadaÅŸ ekle'),(213,'follow','','Follow','Ù…ØªØ§Ø¨Ø¹Ø©','Volgen','Suivre','folgen','Segui','Seguir','Ð¡Ð»ÐµÐ´Ð¾Ð²Ð°Ñ‚ÑŒ','Seguir','Takip et'),(214,'following','','Following','Ù…ØªØ§Ø¨ÙŽØ¹ÙˆÙ†','Volgend','Suivant','folgt','Following','Seguindo','Ð¡Ð»ÐµÐ´ÑƒÑŽ','Siguiendo','AÅŸaÄŸÄ±daki'),(215,'following_btn','','Following','Ù…ØªØ§Ø¨Ø¹','Volgend','Suivant','folgt','Following','Seguindo','Ð¡Ð»ÐµÐ´ÑƒÑŽ','Siguiendo','AÅŸaÄŸÄ±daki'),(216,'followers','','Followers','Ù…ØªØ§Ø¨ÙØ¹ÙˆÙ†','Volgers','Les adeptes','verfolger','Followers','Seguidores','ÐŸÐ¾Ð´Ð¿Ð¸ÑÑ‡Ð¸ÐºÐ¸','Seguidores','Ä°zleyiciler'),(217,'message','','Message','Ø±Ø³Ø§Ù„Ø©','Stuur bericht','Message','Nachricht','Messaggio','Mensagem','Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Mensaje','Mesaj'),(218,'requested','','Requested','Ø·Ù„Ø¨','Aangevraagd','DemandÃ©','GewÃ¼nscht','richiesto','Requeridos','Ð·Ð°Ð¿Ñ€Ð¾ÑˆÐµÐ½Ð½Ñ‹Ð¹','Pedido','Ä°stenen'),(219,'friends_btn','','Friends','Ø§Ù„Ø¥ØµØ¯Ù‚Ø§Ø¡','Vrienden','Friends','Freunde','Amici','Amigos','Ð”Ñ€ÑƒÐ·ÑŒÑ','Amigos','ArkadaÅŸlar'),(220,'online','','Online','Ù…ØªØµÙ„','Online','Online','Online','In Linea','Online','ÐžÐ½Ð»Ð°Ð¹Ð½','Conectado','Ã‡evrimiÃ§i'),(221,'offline','','Offline','ØºÙŠØ± Ù…ØªØµÙ„','Offline','Offline','Offline','Offline','Offline','ÐžÑ„Ñ„Ð»Ð°Ð¹Ð½','Desconectado','Ã‡evrimdÄ±ÅŸÄ±'),(222,'you_are_currently_offline','','You are currently offline, turn on the chat to start chatting.','ØºÙŠØ± Ù…ØªØµÙ„','Je bent momenteel offline','Vous Ãªtes actuellement dÃ©connectÃ©','Du wirst als Offline angezeigt!','Attualmente sei offline','Voc&amp;ecirc; esta offline','ÐÐ° Ð´Ð°Ð½Ð½Ñ‹Ð¹ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚ Ð²Ñ‹ Ð² Ð¾Ñ„Ñ„Ð»Ð°Ð¹Ð½','Est&amp;aacute;s actualmente desconectado.','Åžu anda Ã§evrimdÄ±ÅŸÄ± olan'),(223,'no_offline_users','','No offline users.','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø£ØµØ¯Ù‚Ø§Ø¡ ØºÙŠØ± Ù…ØªØµÙ„ÙŠÙ†','Geen offline mensen.','Aucun utilisateur hors ligne.','Freunde Offline.','Nessun utente in offline.','Nenhum usu&amp;uacute;rio offline.','ÐÐµÑ‚ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹ Ð¾Ñ„Ñ„Ð»Ð°Ð¹Ð½.','Sin usuarios desconectados.','HiÃ§bir Ã§evrimdÄ±ÅŸÄ± kullanÄ±cÄ±larÄ±.'),(224,'no_online_users','','No online users.','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø£ØµØ¯Ù‚Ø§Ø¡ Ù…ØªØµÙ„ÙŠÙ†','Geen online mensen.','Aucun membre en ligne.','Freunde Online.','Nessun utente in linea.','Nenhum usu&amp;uacute;rio Online.','ÐÐµÑ‚ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹ Ð¾Ð½Ð»Ð°Ð¹Ð½.','Sin usuarios conectados.','HiÃ§bir online kullanÄ±cÄ±lar.'),(225,'search_for_users','','Search for users','Ø¥Ø¨Ø­Ø« Ø¹Ù† Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†','Zoek mensen','Recherche d&#39;utilisateurs','Freund suchen','Cerca per utente','Procurar usu&amp;uacute;rios','ÐŸÐ¾Ð¸ÑÐº Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹','Buscar usuarios','KullanÄ±cÄ±larÄ± iÃ§in ara'),(226,'no_users_found','','No users to show','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ù†ØªØ§Ø¦Ø¬','Geen mensen gevonden.','Aucun utilisateur trouvÃ©.','Leider kein Treffer.','nessun utente trovato.','Nenhum usu&amp;uacute;rio encontrado.','ÐÐµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾ Ð½Ð¸ Ð¾Ð´Ð½Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ.','Usuario no encontrado.','KullanÄ±cÄ± bulunamadÄ±.'),(227,'seen','','Seen','ØªÙ…Øª Ø§Ù„Ù‚Ø±Ø§Ø¡Ø©','Gezien','vu','Gesehen','Visto','Visto','Ð¿Ð¾ÑÐµÑ‰ÐµÐ½Ð¸Ð¹','Visto','GÃ¶rÃ¼lme'),(228,'load_more_posts','','Load more posts','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ù†Ø´ÙˆØ±Ø§Øª','Laad meer berichten','Chargez plus de postes','Mehr BeitrÃ¤ge laden','Carica piu notizie','Carregar mais posts','Ð—Ð°Ð³Ñ€ÑƒÐ·ÐºÐ° Ð·Ð°Ð¼ÐµÑ‚Ð¾Ðº','Cargar m&amp;aacute;s publicaciones','Daha fazla MesajlarÄ± yÃ¼kle'),(229,'load_more_users','','Load more users','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†','Laad meer mensen','Charger plusieurs utilisateurs','Mehr Benutzer laden','Carica piu utenti','Carregar mais usu&amp;uacute;rios','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ','Cargar m&amp;aacute;S usuarios','Daha fazla kullanÄ±cÄ± yÃ¼kle'),(230,'there_are_no_tags_found','','No results found for your query.','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ù…Ù†Ø´ÙˆØ±Ø§Øª Ø­ÙˆÙ„ Ù‡Ø°Ù‡ Ø§Ù„ØªØ§Øº','Geen resultaten gevonden.','Aucun rÃ©sultat n&#39;a Ã©tÃ© trouvÃ© pour votre recherche.','Keine Ergebnisse fÃ¼r deine Anfrage gefunden.','Nessun risultato corrisponde alla tua richiesta.','Nenhum resultado encontrado.','ÐÐµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾ Ð½Ð¸ Ð¾Ð´Ð½Ð¾Ð¹ Ð¼ÐµÑ‚ÐºÐ¸.','Sin resultados para tu b&amp;uacute;squeda.','Bulunan hiÃ§bir etiket bulunmamaktadÄ±r.'),(231,'there_are_no_saved_posts','','You don&#039;t have any saved posts.','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ù…Ù†Ø´ÙˆØ±Ø§Øª Ù…Ø­ÙÙˆØ¸Ø©','Je hebt geen opgeslagen berichten.','Vous ne disposez pas de messages enregistrÃ©s.','Keine gespeicherten BeitrÃ¤ge.','Non avete nessun post salvato.','Voc&amp;ecirc; n&amp;atilde;o tem nenhum post salvo.','ÐÐµÑ‚ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ð½Ñ‹Ñ… Ð·Ð°Ð¼ÐµÑ‚Ð¾Ðº.','No tienes ning&amp;uacute;na publicaci&amp;oacute;n guardada.','KaydedilmiÅŸ bir konu bulunmuyor.'),(232,'messages','','Messages','Ø§Ù„Ø±Ø³Ø§Ø¦Ù„','Berichten','Messages','Nachrichten','Messaggi','Mensagens','ÐŸÐµÑ€ÐµÐ¿Ð¸ÑÐºÐ°','Mensajes','Mesajlar'),(233,'write_something','','Write Something ..','Ø£ÙƒØªØ¨ Ø±Ø³Ø§Ù„Ø© ..','Schrijf iets ..','Ã‰crire quelque chose ..','Schreibe etwas..','Scrivi qualcosa ..','Escreva algo ..','ÐÐ°Ð¿Ð¸ÑˆÐ¸Ñ‚Ðµ Ñ‡Ñ‚Ð¾-Ð½Ð¸Ð±ÑƒÐ´ÑŒ...','Escribe algo ..','Bir ÅŸey yaz ..'),(234,'no_more_message_to_show','','No more message','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø±Ø³Ø§Ø¦Ù„','Geen berichten om weer te geven','Pas plus un message','Keine weiteren Nachrichten','Niente piÃ¹ messaggi','Nenhuma mensagem nova','ÐÐµÑ‚ Ð±Ð¾Ð»ÑŒÑˆÐµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹','No hay mensajes','ArtÄ±k mesajÄ±'),(235,'view_more_messages','','View more messages','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ø±Ø³Ø§Ø¦Ù„','Bekijk meer berichten','Voir plus de messages','Mehr Nachrichten ansehen','Vedi piÃ¹ messaggi','Ver mais mensagens','ÐŸÐ¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹','Ver m&amp;aacute;s mensajes','Daha fazla ileti gÃ¶rÃ¼ntÃ¼le'),(236,'sorry_cant_reply','','Sorry, you can&#039;t reply to this user.','Ø¹Ø°Ø±Ø§ÙŽ Ù„Ø§ ÙŠÙ…ÙƒÙ†Ùƒ Ø¥Ø±Ø³Ø§Ù„ Ø±Ø³Ø§Ù„Ø© Ù„Ù‡Ø°Ø§ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù….','Sorry, je kan niet reageren op dit bericht.','DÃ©solÃ©, vous ne pouvez pas rÃ©pondre Ã  cet utilisateur.','Du kannst diesem Benutzer nicht antworten.','Siamo spiacenti, non Ã¨ possibile rispondere a questo utente.','Voc&amp;ecirc; n&amp;atilde;o pode responder este usu&amp;uacute;rio.','Ð˜Ð·Ð²Ð¸Ð½Ð¸Ñ‚Ðµ, Ð²Ñ‹ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¾Ñ‚Ð²ÐµÑ‚Ð¸Ñ‚ÑŒ.','Disculpa, no puedes responder a este usuario.','Maalesef, bu kullanÄ±cÄ± cevap veremezsiniz.'),(237,'choose_one_of_your_friends','','Choose one of your friends','Ø£Ø®Ù†Ø± ÙˆØ§Ø­Ø¯Ø§ÙŽ Ù…Ù† Ø£ØµØ¯Ù‚Ø§Ø¦Ùƒ','Selecteer een van je vrienden','Choisissez un de vos amis','WÃ¤hle einen deiner Freunde','Scegli uno dei tuoi amici','Escolha um de seus amigos','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð¾Ð´Ð½Ð¾Ð³Ð¾ Ð¸Ð· Ð²Ð°ÑˆÐ¸Ñ… Ð´Ñ€ÑƒÐ·ÐµÐ¹','Elige uno de tus amigos','ArkadaÅŸlarÄ±nÄ±zla birini seÃ§in'),(238,'and_say_hello','','And Say Hello !','Ùˆ Ù‚Ù„ Ù„Ù‡ Ù…Ø±Ø­Ø¨Ø§Ù‹ !','En zeg Hallo !','Et dire Bonjour !','und sage Hallo!','E dire Ciao !','E diga ol&amp;aacute; !','Ð˜ ÑÐºÐ°Ð¶Ð¸Ñ‚Ðµ Ñ‡Ñ‚Ð¾-Ð½Ð¸Ð±ÑƒÐ´ÑŒ!','Â¡ Y dile algo!','Ve Merhaba Deyin!'),(239,'download','','Download','ØªØ­Ù…ÙŠÙ„','Download','TÃ©lÃ©charger','Herunterladen','Download','Download','Ð¡ÐºÐ°Ñ‡Ð°Ñ‚ÑŒ','Descargar','Ä°ndir'),(240,'update_your_info','','Update your info','ØªØ­Ø¯ÙŠØ« Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ','Update je informatie','Mettre Ã  jour vos informations','Aktualisiere deine Informationen','Aggiorna le tue informazioni','Atualizar sua informa&amp;ccedil;&amp;atilde;o','ÐžÐ±Ð½Ð¾Ð²Ð¸Ñ‚Ðµ ÑÐ²Ð¾ÑŽ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸ÑŽ','Actualizar tu informaci&amp;oacute;n','Bilgilerinizi gÃ¼ncelleyin'),(241,'choose_your_username','','Choose your username:','Ø£Ø®ØªØ± Ø§Ø³Ù… Ù…Ø³ØªØ®Ø¯Ù… Ø®Ø§Øµ Ø¨Ùƒ :','Kies een gebruikersnaam:','Choisissez votre nom d&#39;utilisateur:','WÃ¤hle deinen Benutzernamen:','Scegli il tuo username:','Escolha seu nome de usu&amp;uacute;rio:','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð²Ð°ÑˆÐµ Ð¸Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ:','Escoje tu nombre de usuario:','KullanÄ±cÄ± adÄ±nÄ±zÄ± seÃ§in:'),(242,'create_your_new_password','','Create your new password:','Ø£Ù†Ø´Ø¡ ÙƒÙ…Ù„Ù†Ø© Ø§Ù„Ù…Ø±ÙˆØ±:','Geef een nieuw wachtwoord op:','CrÃ©er votre nouveau mot de passe:','Erstelle dein neues Passwort:','Crea la tua nuova password:','Nova Senha:','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ:','Crear tu nueva contrase&amp;ntilde;a:','Yeni ÅŸifrenizi oluÅŸturun:'),(243,'update','','Update','ØªØ­Ø¯ÙŠØ«','Update','Mettre Ã  jour','Aktualisieren','Aggiorna','Atualizar','ÐžÐ±Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ','Actualizar','GÃ¼ncelleme'),(244,'delete_comment','','Delete Comment','Ø­Ø°Ù Ø§Ù„ØªØ¹Ù„ÙŠÙ‚','Verwijder reactie','supprimer les commentaires','Kommentar lÃ¶schen','Ellimina il commento','Deletar coment&amp;aacute;rio','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','Eliminar comentario','Yorum Sil'),(245,'confirm_delete_comment','','Are you sure that you want to delete this comment ?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ§ÙƒØ¯ Ù…Ù† Ø­Ø°Ù Ù‡Ø°Ø§ Ø§Ù„ØªØ¹Ù„ÙŠÙ‚ ØŸ','Weet je zeker dat je deze reactie wil verwijderen?','Etes-vous sÃ»r que vous voulez supprimer ce commentaire ?','Diesen Kommentar wirklich lÃ¶schen ?','Sei sicuro di voler eliminare questo commento ?','Deletar coment&amp;aacute;rio ?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾Ñ‚ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹?','Â¿ Seguro que deseas eliminar est&amp;eacute; comentario ?','Bu yorumu silmek istediÄŸinizden emin misiniz?'),(246,'confirm_delete_post','','Are you sure that you want to delete this post ?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ§ÙƒØ¯ Ù…Ù† Ø­Ø°Ù Ù‡Ø°Ø§ Ø§Ù„Ù…Ù†Ø´ÙˆØ± ØŸ','Weet je zeker dat je dit bericht wil verwijderd?','Etes-vous sÃ»r que vous voulez supprimer ce message ?','Diesen Beitrag wirklich lÃ¶schen ?','Sei sicuro di voler eliminare questo post?','Deletar post ?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ñƒ Ð·Ð°Ð¼ÐµÑ‚ÐºÑƒ?','Â¿ Seguro que deseas eliminar est&amp;aacute; publicaci&amp;oacute;n?','EÄŸer bu mesajÄ± silmek istediÄŸinizden emin misiniz?'),(247,'edit_post','','Edit Post','ØªØ¹Ø¯ÙŠÙ„','Wijzig bericht','Modifier le message','Betrag bearbeiten','Modifica Post','Editar Post','Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð·Ð°Ð¼ÐµÑ‚ÐºÑƒ','Editar Publicaci&amp;oacute;n','DÃ¼zenle'),(248,'session_expired','','Session Expired','Ø§Ù†ØªÙ‡Øª Ø§Ù„Ø¬Ù„Ø³Ø© !','Sessie is verlopen','La session a expirÃ©','Sitzung abgelaufen','Sessione scaduta','Sess&amp;ccedil;o expirada','Ð’Ñ€ÐµÐ¼Ñ ÑÐµÑÑÐ¸Ð¸ Ð¸ÑÑ‚ÐµÐºÐ»Ð¾','Sesi&amp;oacute;n Expirada','Oturum sÃ¼resi doldu'),(249,'session_expired_message','','Your Session has been expired, please login again.','Ù„Ù‚Ø¯ ØªÙ… Ø£Ù†ØªÙ‡Ø§Ø¡ Ø¬Ù„Ø³ØªÙƒ, Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ø¯Ø®ÙˆÙ„ Ù…Ø±Ø© Ø£Ø®Ø±Ù‰','Je sessie is verlopen, log opnieuw in.','Votre session a expirÃ©, s&#39;il vous plaÃ®t vous connecter Ã  nouveau.','Deine Sitzung ist abgelaufen, bitte melde dich erneut an.','La tua sessione Ã¨ scaduta, effettua il login di nuovo.','Sess&amp;ccedil;o expirada. Fa&amp;ccedil;a login para continuar.','Ð’Ñ€ÐµÐ¼Ñ ÑÐµÑÑÐ¸Ð¸ Ð¸ÑÑ‚ÐµÐºÐ»Ð¾, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð¾Ð¹Ð´Ð¸Ñ‚Ðµ ÐµÑ‰Ðµ Ñ€Ð°Ð·.','Tu sesi&amp;oacute;n ha expirado, ingresa nuevamente.','Sizin Oturum sÃ¼resi dolmuÅŸ olmasÄ±, tekrar giriÅŸ yapÄ±nÄ±z.'),(250,'country','','Country','Ø§Ù„Ø¨Ù„Ø¯','Land','Pays','Land','Nazione','Pa&amp;iacute;s','Ð¡Ñ‚Ñ€Ð°Ð½Ð°','Pa&amp;iacute;s','Ãœlke'),(251,'all','','All','Ø§Ù„ÙƒÙ„','Alle','Tous','Alle','Tutti','Tudo','Ð’ÑÐµ','Todo','Hepsi'),(252,'gender','','Gender','Ø§Ù„Ø¬Ù†Ø³','Geslacht','Genre','Geschlecht','Genere','Genero','ÐŸÐ¾Ð»','Genero','Cinsiyet'),(253,'female','gender','Female','Ø£Ù†Ø«Ù‰','Vrouw','Femelle','Weiblich','Femmina','Mulher','Ð–ÐµÐ½ÑÐºÐ¸Ð¹','Mujer','DiÅŸi'),(254,'male','gender','Male','Ø°ÙƒØ±','Man','MÃ¢le','MÃ¤nnlich','Maschio','Homem','ÐœÑƒÐ¶ÑÐºÐ¾Ð¹','Hombre','Erkek'),(255,'profile_picture','','Profile Picture','Ø§Ù„ØµÙˆØ±Ø© Ø§Ù„Ø´Ø®ØµÙŠØ©','Profielfoto','Photo de profil','Profilfoto','Immagine del profilo','Imagem de Perfil','ÐŸÑ€Ð¾Ñ„Ð¸Ð»ÑŒ Ñ„Ð¾Ñ‚Ð¾','Imagen de perfil','Profil fotoÄŸrafÄ±'),(256,'result','','Result','Ø§Ù„Ù†ØªØ§Ø¦Ø¬:','Resultaat:','RÃ©sultat:','Ergebnis:','Risultato:','Resultado','Ð ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚:','Resultado:','SonuÃ§:'),(257,'yes','','Yes','Ù†Ø¹Ù…','Ja','Oui','Ja','Si','Sim','Ð”Ð°','Si','Evet'),(258,'no','','No','Ù„Ø§','Nee','Non','Nein','No','N&amp;atilde;o','ÐÐµÑ‚','No','HayÄ±r'),(259,'verified_user','','Verified User','Ø­Ø³Ø§Ø¨ Ù…ÙˆØ«Ù‘Ù‚','Bekende Babster','vÃ©rifiÃ© utilisateur','Verifiziertes Mitglied','Utente Verificato','Contribuidor','ÐŸÑ€Ð¾Ð²ÐµÑ€ÐµÐ½Ð½Ñ‹Ð¹ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ','Usuario Verificado','DoÄŸrulanmÄ±ÅŸ KullanÄ±cÄ±'),(260,'change_password','','Change Password','ØªØºÙŠØ± ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±','Wijzig Wachtwoord','Changer le mot de passe','Passwort Ã¤ndern','Cambiare la password','Mudar Senha','Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Cambiar contrase&amp;ntilde;a','Åžifre deÄŸiÅŸtir'),(261,'current_password','','Current Password','ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ø­Ø§Ù„ÙŠØ©','Huidig wachtwoord','Mot de passe actuel','Aktuelles Passwort','Password attuale','Senha Atual','Ð¢ÐµÐºÑƒÑ‰Ð¸Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Contrase&amp;ntilde;a actual','Åžifreniz'),(262,'repeat_password','','Repeat password','Ø£Ø¹Ø§Ø¯Ø© ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±','Herhaal wachtwoord','RÃ©pÃ©ter le mot de passe','Passwort wiederholen','Ripeti la password','Confirme sua senha atual','ÐŸÐ¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ','Repetir contrase&amp;ntilde;a','Åžifreyi tekrar girin'),(263,'general','','General','Ø§Ù„Ø¹Ø§Ù…Ø©','Algemeen','GÃ©nÃ©ral','Allgemein','Generale','Geral','ÐžÑÐ½Ð¾Ð²Ð½Ñ‹Ðµ','General','Genel'),(264,'profile','','Profile','Ø§Ù„ØµÙØ­Ø© Ø§Ù„Ø´Ø®ØµÙŠØ©','Profiel','Profil','Profil','Profilo','Perfil','ÐŸÑ€Ð¾Ñ„Ð¸Ð»ÑŒ','Perfil','Profil'),(265,'privacy','','Privacy','Ø§Ù„Ø®ØµÙˆØµÙŠØ©','Privacy','IntimitÃ©','PrivatsphÃ¤re','Privacy','Privacidade','ÐšÐ¾Ð½Ñ„Ð¸Ð´ÐµÐ½Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾ÑÑ‚ÑŒ','Privacidad','Gizlilik'),(266,'delete_account','','Delete Account','Ø­Ø°Ù Ø§Ù„Ø­Ø³Ø§Ø¨','Verwijder je account','Effacer le compte','Konto lÃ¶schen','Ellimina Account','Deletar conta','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚','Eliminar cuenta','HesabÄ±m sil'),(267,'delete_account_confirm','','Are You sure that you want to delete your account, and leave our network ?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ù…Ù† Ø­Ø°Ù Ø­Ø³Ø§Ø¨Ùƒ , ÙˆØªØ±Ùƒ Ù…ÙˆÙ‚Ø¹Ù†Ø§ ØŸ','Weet je zeker dat je je account voor goed wil verwijderen?','Etes-vous sÃ»r que vous voulez supprimer votre compte, et de laisser notre rÃ©seau ?','MÃ¶chtest du Dein Konto wirklich lÃ¶schen und &quot;wen-kennt-wer&quot; verlassen?','Sei sicuro di voler eliminare il tuo account, e lasciare la nostra rete?','Deletar conta e sair da nossa rede social ?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÐ²Ð¾Ð¹ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚, Ð¸ Ð¾ÑÑ‚Ð°Ð²Ð¸Ñ‚ÑŒ Ð½Ð°ÑˆÑƒ ÑÐµÑ‚ÑŒ?','Â¿ Seguro que deseas eliminar tu cuenta ?','HesabÄ±nÄ±zÄ± silmek ve aÄŸÄ±mÄ±zÄ± ayrÄ±lmak istediÄŸinizden emin misiniz?'),(268,'delete_go_back','','No, I&#039;ll Think','Ù„Ø§ , Ù„ÙŠØ³ Ø§Ù„Ø¢Ù†.','Nee, liever niet','Non, je vais y rÃ©flÃ©chir','Ich mÃ¶chte nochmal eine Nacht drÃ¼ber schlafen','No, ci penserÃ²','N&amp;atilde;o, irei pensar melhor.','ÐÐµÑ‚, Ñ Ð¿Ð¾Ð´ÑƒÐ¼Ð°ÑŽ','No, fue un error','HayÄ±r, bence olacak'),(269,'verified','','Verified','ØªÙˆØ«ÙŠÙ‚','Geverifieerd','vÃ©rifiÃ©','Verifiziert','Verificato','Verificado','ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½','Verificado','DoÄŸrulanmÄ±ÅŸ'),(270,'not_verified','','Not verified','ØºÙŠØ± Ù…ÙˆØ«Ù‘Ù‚','Niet Geverifieerd','non vÃ©rifiÃ©','Nicht verifiziert','Non Verificato','N&amp;atilde;o &amp;eacute; verificado','ÐÐµ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½','No verificado','DoÄŸrulanmadÄ±'),(271,'admin','','Admin','Ù…Ø¯ÙŠØ±','Admin','Administrateur','Admin','Administratore','Admin','ÐÐ´Ð¼Ð¸Ð½','Administrador','YÃ¶netici'),(272,'user','','User','Ù…Ø³ØªØ®Ø¯Ù…','Gebruiker','Utilisateur','Benutzer','Utente','Usu&amp;uacute;rio','ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ','Usuario','KullanÄ±cÄ±'),(273,'verification','','Verification','Ø§Ù„ØªØ£ÙƒÙŠØ¯','Verificatie','VÃ©rification','Verifizierung','Verifica','Verifica&amp;ccedil;&amp;atilde;o','Ð’ÐµÑ€Ð¸Ñ„Ð¸ÐºÐ°Ñ†Ð¸Ñ','Verificaci&amp;oacute;n','DoÄŸrulama'),(274,'type','','Type','Ø§Ù„Ù†ÙˆØ¹','Type','Type','Typ','Tipo','Tipo','Ð¢Ð¸Ð¿','Tipo','Tip'),(275,'birthday','','Birthday','ØªØ§Ø±ÙŠØ® Ø§Ù„Ù…ÙŠÙ„Ø§Ø¯','Geboortedatum','Anniversaire','Geburtstag','Compleano','Anivers&amp;aacute;rio','Ð”Ð°Ñ‚Ð° Ñ€Ð¾Ð¶Ð´ÐµÐ½Ð¸Ñ','Cumplea&amp;ntilde;os','DoÄŸum GÃ¼nÃ¼'),(276,'active','','Active','Ù…ÙØ¹Ù„','Actief','actif','Aktiv','Attivo','Ativo','ÐÐºÑ‚Ð¸Ð²Ð½Ñ‹Ð¹','Activo','Aktif'),(277,'inactive','','inactive','ØºÙŠØ± Ù…ÙØ¹Ù„','Inactief','inactif','Inaktiv','Innativo','Desativar Login','ÐÐµÐ°ÐºÑ‚Ð¸Ð²Ð½Ñ‹Ð¹','Inactivo','Pasif'),(278,'privacy_setting','','Privacy Setting','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø®ØµÙˆØµÙŠØ©','Privacy Instellingen','ParamÃ¨tre de confidentialitÃ©','PrivatsphÃ¤re Einstellungen','Impostazione di Privacy','Configura&amp;ccedil;&amp;otilde;es de privacidade','ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ ÐºÐ¾Ð½Ñ„Ð¸Ð´ÐµÐ½Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾ÑÑ‚Ð¸','Configuraci&amp;oacute;n de privacidad','Gizlilik ayarÄ±'),(279,'follow_privacy_label','','Who can follow me ?','Ù…Ù† ÙŠØ³ØªØ·ÙŠØ¹ Ù…ØªØ§Ø¨Ø¹ØªÙŠ ØŸ','Wie kan mij volgen?','Qui peut me suivre ?','Wer darf mir folgen?','Chi puÃ² seguirmi?','Quem pode me seguir ?','ÐšÑ‚Ð¾ Ð¼Ð¾Ð¶ÐµÑ‚ ÑÐ»ÐµÐ´Ð¾Ð²Ð°Ñ‚ÑŒ Ð·Ð° Ð¼Ð½Ð¾Ð¹?','Â¿ Qui&amp;eacute;n puede seguirme ?','Kim beni takip edebilirim?'),(280,'everyone','','Everyone','Ø§Ù„ÙƒÙ„','Iedereen','Toutes les personnes','Jeder','Tutti','Todos','Ð’ÑÐµ','Todos pueden ver','Herkes'),(281,'my_friends','','My Friends','Ø£ØµØ¯Ù‚Ø§Ø¦ÙŠ','Mijn vrienden','Mes amis','Meine Freunde','Miei amici','Amigos','ÐœÐ¾Ð¸ Ð´Ñ€ÑƒÐ·ÑŒÑ','Mis Amigos','ArkadaÅŸlarÄ±m'),(282,'no_body','','No body','Ù„Ø§ Ø£Ø­Ø¯','Niemand','Personne','Niemand','Nessuno','Ningu&amp;eacute;m','ÐÐ¸ÐºÑ‚Ð¾','Nadie','hiÃ§bir vÃ¼cut'),(283,'people_i_follow','','People I Follow','Ø£Ø¹Ø¶Ø§Ø¡ Ø£ØªØ§Ø¨Ø¹Ù‡Ù…','Mensen die ik volg','Les gens que je suivre','Personen denen ich folge','Persone che Seguo','Pessoas que eu sigo','Ð—Ð° ÐºÐµÐ¼ Ñ ÑÐ»ÐµÐ´ÑƒÑŽ','Personas que sigo','Ä°nsanlar izleyin'),(284,'people_follow_me','','People Follow Me','Ø£Ø¹Ø¶Ø§Ø¡ ÙŠØªØ§Ø¨Ø¹ÙˆÙ†Ù†ÙŠ','Mensen die mij volgen','Les gens Follow Me','Persone die mir folgen','Persone che mi seguono','Pessoas que me seguem','ÐšÑ‚Ð¾ ÑÐ»ÐµÐ´ÑƒÐµÑ‚ Ð·Ð° Ð¼Ð½Ð¾Ð¹','Personas que me sigue','Ä°nsanlar beni takip etti'),(285,'only_me','','Only me','Ø£Ù†Ø§ ÙÙ‚Ø·','Alleen ik','Seulement moi','Nur ich','Solo Io','apenas eu','Ð¢Ð¾Ð»ÑŒÐºÐ¾ Ð¼Ð½Ðµ','Solo yo','Sadece ben'),(286,'message_privacy_label','','Who can message me ?','Ù…Ù† ÙŠØ³ØªØ·ÙŠØ¹ Ø¥Ø±Ø³Ø§Ù„ Ø±Ø³Ø§Ù„Ø© Ù„ÙŠ ØŸ','Wie kan mij een bericht sturen?','Qui peut me message ?','Wer darf mir Nachrichten schreiben?','Chi puÃ² inviarmi i messaggi?','quem pode me enviar mensagem ?','ÐšÑ‚Ð¾ Ð¼Ð¾Ð¶ÐµÑ‚ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð¼Ð½Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ?','Â¿Qui&amp;eacute;n puede enviarme mensajes?','Kim bana mesaj olabilir?'),(287,'timeline_post_privacy_label','','Who can post on my timeline ?','Ù…Ù† ÙŠØ³ØªØ·ÙŠØ¹ Ø§Ù„Ù†Ø´Ø± Ø¹Ù„Ù‰ Ø­Ø§Ø¦Ø·ÙŠ ØŸ','Wie kan mij krabbelen?','Qui peut poster sur mon calendrier ?','Wer darf an meine Pinwand schreiben?','Chi puÃ² postare su mia timeline?','quem pode postar na minha linha do tempo ?','ÐšÑ‚Ð¾ Ð¼Ð¾Ð¶ÐµÑ‚ Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ñ‚ÑŒ Ð½Ð° Ð¼Ð¾ÐµÐ¹ ÑÑ‚ÐµÐ½Ðµ?','Â¿Qui&amp;eacute;n puede publicar en mi perfil?','Benim zaman Ã§izelgesi Ã¼zerinde kim gÃ¶nderebilir?'),(288,'activities_privacy_label','','Show my activities ?','Ø¥Ø¶Ù‡Ø§Ø± Ø¥Ù†Ø´Ø·ØªÙŠ','Laat mijn activiteiten zien?','Afficher mes activitÃ©s ?','Zeige meine AktivitÃ¤ten?','Visualizza le mie attivitÃ ?','Mostrar minhas atividades ?','ÐŸÐ¾ÐºÐ°Ð·Ñ‹Ð²Ð°Ñ‚ÑŒ Ð¼Ð¾ÑŽ Ð´ÐµÑÑ‚ÐµÐ»ÑŒÐ½Ð¾ÑÑ‚ÑŒ?','Â¿Mostrar mi actividad?','Benim faaliyetleri gÃ¶ster?'),(289,'show','','Show','Ø¥Ø¸Ù‡Ø§Ø±','Ja','Montrer','Zeigen','Mostra','Mostrar','ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ','Mostrar','GÃ¶ster'),(290,'hide','','Hide','Ø£Ø®ÙÙŠ','Nee','Cache','Verstecken','Nascondi','Esconder','Ð¡ÐºÑ€Ñ‹Ð²Ð°Ñ‚ÑŒ','Ocultar','Gizl'),(291,'confirm_request_privacy_label','','Confirm request when someone follows you ?','Ù‚Ø¨ÙˆÙ„ Ø§Ù„Ø·Ù„Ø¨ Ø£Ùˆ Ø±ÙØ¶Ù‡ Ø¹Ù†Ø¯Ù…Ø§ ÙŠØªØ§Ø¨Ø¹Ùƒ Ù…Ø³ØªØ®Ø¯Ù… ØŸ','Bevestig verzoek wanneer iemand jou volgt?','Confirmer la demande quand quelqu&#39;un vous suit ?','Anfrage bestÃ¤tigen wenn mir jemand folgen mÃ¶chte?','Confermare richiesta quando qualcuno ti segue?','Aceitar que a pessoa te siga ?','ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´Ð°Ñ‚ÑŒ Ð·Ð°Ð¿Ñ€Ð¾Ñ ÐºÐ¾Ð³Ð´Ð° ÐºÑ‚Ð¾-Ñ‚Ð¾ ÑÐ»ÐµÐ´ÑƒÐµÑ‚ Ð·Ð° Ð²Ð°Ð¼Ð¸?','Â¿Confirmar cuando alguien te sigue?','Birisi size izlediÄŸinde isteÄŸi onaylayÄ±n?'),(292,'lastseen_privacy_label','','Show my last seen ?','Ø¥Ø¸Ù‡Ø§Ø± Ø£Ø®Ø± Ø¸Ù‡ÙˆØ± ØŸ','Laat mijn laatst gezien zien?','Afficher mon derniÃ¨re fois ?','Zeigen was ich zuletzt gesehen habe?','Mostra mia ultima visita?','Mostrar a &amp;uacute;ltima vez que voc&amp;ecirc; foi visto ?','ÐŸÐ¾ÐºÐ°Ð·Ñ‹Ð²Ð°Ñ‚ÑŒ Ð¼Ð¾Ð¹ Ð¿Ð¾ÑÐ»ÐµÐ´Ð½Ð¸Ð¹ Ð²Ð¸Ð·Ð¸Ñ‚?','Â¿Mostrar mi &amp;uacute;ltima conexi&amp;oacute;n?','Benim son gÃ¶rÃ¼ldÃ¼ÄŸÃ¼ gÃ¶ster?'),(293,'site_eg','','(e.g: http://www.siteurl.com)','(Ù…Ø«Ø§Ù„: http://www.enbrash.com)','(e.g: http://www.siteurl.com)','(e.g: http://www.siteurl.com)','(z.B.: http://www.meine-seite.de)','(Esempio: http://www.siteurl.com)','(exemplo: http://www.siteurl.com)','(Ð½Ð°Ð¿Ñ€Ð¸Ð¼ÐµÑ€: http://www.siteurl.com)','(e.j: http://www.siteurl.com)','(Ã¶rneÄŸin: http://www.siteurl.com)'),(294,'profile_setting','','Profile Setting','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØµÙØ­Ø© Ø§Ù„Ø´Ø®ØµÙŠØ©','Profiel Instellingen','Profile Setting','Profil Einstellungen','Impostazioni Profilo','Configura&amp;ccedil;&amp;otilde;es de Perfil','ÐŸÑ€Ð¾Ñ„Ð¸Ð»ÑŒ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸','Configuraci&amp;oacute;n de perfil','Profil AyarÄ±'),(295,'pinned_post','','Pinned','Ù…Ø«Ø¨Øª','Vastgezete Bericht','Ã©pinglÃ©','Angepinnt','Appuntato','Fixo','Ð’Ð°Ð¶Ð½Ð°Ñ','Anotado','SabitlenmiÅŸ'),(296,'pin_post','','Pin Post','ØªØ«Ø¨ÙŠØª','Vastzetten','Pin Poster','Beitrag Anpinnen','Appunta un Post','Fixar post','Ð—Ð°ÐºÑ€ÐµÐ¿Ð¸Ñ‚ÑŒ Ð·Ð°Ð¼ÐµÑ‚ÐºÑƒ','Anotar publicaci&amp;oacute;n','Pim'),(297,'unpin_post','','Unpin Post','Ø¥Ù„ØºØ§Ø¡ ØªØ«Ø¨ÙŠØª','Niet meer vastzetten','DÃ©tacher Poster','Beitrag Abpinnen','Rimuovi il Post Appuntato','Desafixar Post','Ð¡Ð½ÑÑ‚ÑŒ Ð·Ð°Ð¼ÐµÑ‚ÐºÑƒ','Des anotar publicaci&amp;oacute;n','KaldÄ±rÄ±lÄ±ncaya'),(298,'open_post_in_new_tab','','Open post in new tab','Ø£ÙØªØ­ ÙÙŠ ØµÙØ­Ø© Ø¬Ø¯ÙŠØ¯Ø©','Open bericht in nieuw tapblad','Ouvrir dans un nouvel onglet aprÃ¨s','Beitrag in neuem Fenster Ã¶ffnen','Alberino aperto in una nuova scheda','Abrir post em uma nova aba','ÐžÑ‚ÐºÑ€Ñ‹Ñ‚ÑŒ Ð² Ð½Ð¾Ð²Ð¾Ð¹ Ð²ÐºÐ»Ð°Ð´ÐºÐµ','Abrir en nueva pestaÃ±a','Yeni sekmede aÃ§ sonrasÄ±'),(299,'unsave_post','','Unsave Post','Ø¥Ù„ØºØ§Ø¡ Ø­ÙØ¸ Ø§Ù„Ù…Ù†Ø´ÙˆØ±','Verwijderen','unsave Poster','Beitrag nicht mehr speichern','Non salvare post','N&amp;atilde;o salvar post','ÐÐµ ÑÐ¾Ñ…Ñ€Ð°Ð½ÑÑ‚ÑŒ Ð·Ð°Ð¼ÐµÑ‚ÐºÑƒ','No guardar publicaci&amp;oacute;n','Kaydetme SeÃ§eneÄŸini'),(300,'save_post','','Save Post','Ø­ÙØ¸ Ø§Ù„Ù…Ù†Ø´ÙˆØ±','Opslaan','Sauvegarder Poster','Beitrag speichern','Salva Post','Salvar Post','Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ Ð·Ð°Ð¼ÐµÑ‚ÐºÑƒ','Guardar publicaci&amp;oacute;n','Kaydet Mesaj'),(301,'unreport_post','','Unreport Post','Ø¥Ù„ØºØ§Ø¡ Ø§Ù„ØªØ¨Ù„ÙŠØº','Verwijder Aangeven','Unreport Poster','Beitrag nicht mehr melden','Ellimina segnalazione di questo Post','N&amp;atilde;o reportar Post','ÐÐµ Ð¶Ð°Ð»Ð¾Ð²Ð°Ñ‚ÑŒÑÑ','Quitar reporte','Rapor sil'),(302,'report_post','','Report Post','ØªØ¨Ù„ÙŠØº Ø§Ù„Ù…Ù†Ø´ÙˆØ±','Bericht aangeven','Signaler le message','Beitrag melden','Segnala questo Post','Reportar Post','ÐŸÐ¾Ð¶Ð°Ð»Ð¾Ð²Ð°Ñ‚ÑŒÑÑ','Reportar publicaci&amp;oacute;n','Rapor'),(303,'shared_this_post','','Shared this post','Ø´Ø§Ø±Ùƒ Ù‡Ø°Ø§ Ø§Ù„Ù…Ù†Ø´ÙˆØ±','Heeft dit bericht gedeeld','PartagÃ© ce post','hat diesen Beitrag geteilt','Condividi questo Post','Compartilhar post','Ð¿Ð¾Ð´ÐµÐ»Ð¸Ð»ÑÑ ÑÑ‚Ð¾Ð¹ Ð·Ð°Ð¿Ð¸ÑÑŒÑŽ','Comparti&amp;oacute; est&amp;aacute; publicaci&amp;oacute;n','Bu yazÄ± paylaÅŸtÄ±'),(304,'changed_profile_picture_male','','changed his profile picture','ØºÙŠØ± ØµÙˆØ±ØªÙ‡ Ø§Ù„Ø´Ø®ØµÙŠØ©','Heeft zijn profielfoto gewijzigd','ChangÃ© sa photo de profil','hat sein Profilbild geÃ¤ndert','Cambiato l&#039;immagine del profilo','Mudou sua imagem de perfil','Ð¸Ð·Ð¼ÐµÐ½Ð¸Ð» ÑÐ²Ð¾ÑŽ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸ÑŽ','Cambio su foto de perfil','Onun profil resimlerini deÄŸiÅŸtirdi'),(305,'changed_profile_picture_female','','changed her profile picture','ØºÙŠØ±Øª ØµÙˆØ±ØªÙ‡Ø§ Ø§Ù„Ø´Ø®ØµÙŠØ©','Heeft haar profielfoto gewijzigd','A changÃ© sa photo de profil','hat ihr Profilbild geÃ¤ndert','Cambiato sua immagine del profilo','Mudou sua imagem de perfil','Ð¸Ð·Ð¼ÐµÐ½Ð¸Ð»Ð° ÑÐ²Ð¾ÑŽ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸ÑŽ','Cambio su foto de perfil','Onun profil resimlerini deÄŸiÅŸtirdi'),(306,'post_login_requriement','','Please log in to like, wonder, share and comment!','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ø¯Ø®ÙˆÙ„ Ù„Ø¹Ù…Ù„ Ø¥Ø¹Ø¬Ø§Ø¨ , ØªØ¹Ø¬Ø¨ , ÙˆÙƒÙˆÙ…Ù†Øª !','Login om te respecteren, te reageren!','S&#039;il vous plaÃ®t vous connecter Ã  aimer, Ã©tonnant, partager et commenter !','Bitte melde dich zuerst an!','Effettua il login per piacere, meraviglia, condividere e commentare!','Fa&amp;ccedil;a login para compartilhar, curtir, comentar, etc !','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð° Ð²Ð¾Ð¹Ð´Ð¸Ñ‚Ðµ Ð¸Ð»Ð¸ Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€ÑƒÐ¹Ñ‚ÐµÑÑŒ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð´Ð¾Ð±Ð°Ð²Ð»ÑÑ‚ÑŒ &quot;ÐœÐ½Ðµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ&quot; Ð¸ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸!','Â¡ Ingresa para dar Like, Comentar, Seguir y muchas cosas m&amp;aacute;s !','Merak, pay gibi ve Yorumlamak iÃ§in giriÅŸ yapÄ±nÄ±z!'),(307,'likes','','Likes','Ø§Ù„Ø¥Ø¹Ø¬Ø§Ø¨Ø§Øª','Respects','Aime','GefÃ¤llt mir','Mi piace','Curtiu','ÐÑ€Ð°Ð²Ð¸Ñ‚ÑÑ','Me gusta','BeÄŸeniler'),(308,'like','','Like','Ø¥Ø¹Ø¬Ø§Ø¨','Respect!','Aimer','GefÃ¤llt mir','Mi piace','Curtir','ÐœÐ½Ðµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ','Me gusta','BeÄŸen'),(309,'wonder','','Wonder','ØªØ¹Ø¬Ø¨','Wonder','Merveille','Wundert mich','Wonder','N&amp;atilde;o curtir','Ð£Ð´Ð¸Ð²Ð»ÑÑ‚ÑŒÑÑ!','Me sorprende','Merak et'),(310,'wonders','','Wonders','Ø§Ù„ØªØ¹Ø¬Ø¨Ø§Øª','Super Respects','Merveilles','Verwundert','Wonders','Dislikes','Ð£Ð´Ð¸Ð²Ð»ÑÑ‚ÑŒÑÑ','Me sorprende','Merakler'),(311,'share','','Share','Ø´Ø§Ø±Ùƒ','Delen','Partagez','Teilen','Condividi','Compartilhar','ÐŸÐµÑ€ÐµÐ¿Ð¾ÑÑ‚','Compartir','PaylaÅŸ'),(312,'comments','','Comments','Ø§Ù„ØªØ¹Ù„ÙŠÙ‚Ø§Øª','Reacties','commentaires','Kommentare','Commenti','Coment&amp;aacute;rios','ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸','Comentarios','Yorumlar'),(313,'no_likes','','No likes yet','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø¥Ø¹Ø¬Ø§Ø¨Ø§Øª','Geen respects','Aucune aime encore','Noch keine GefÃ¤llt mir Angaben','Non hai ancora un mi piace','Nenhuma curtida ainda','ÐŸÐ¾ÐºÐ° Ð½ÐµÑ‚ &quot;ÐœÐ½Ðµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ&quot;','Sin Me Gusta','HiÃ§ beÄŸeniler yok'),(314,'no_wonders','','No wonders yet','Ù„Ø§ ÙŠÙˆØ¬Ø¯ ØªØ¹Ø¬Ø¨Ø§Øª','Geen super respects','Pas encore wondres','Noch keine Verwunderungen','Ancora nessun wondres','Nenhum dislike ainda','ÐÐµÑƒÐ´Ð¸Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾, Ð¿Ð¾ÐºÐ°','Sin Me Sorprende','HiÃ§ merakler yok'),(315,'write_comment','','Write a comment and press enter','Ø§ÙƒØªØ¨ ØªØ¹Ù„ÙŠÙ‚ ÙˆØ£Ø¶ØºØ· Ø£Ù†ØªØ± ..','Schrijf je reactie en druk dan op enter','Ecrire un commentaire et appuyez sur EntrÃ©e','Schreibe einen Kommentar und drÃ¼cke Enter','Scrivi un commento e premere invio','Escreva um coment&amp;aacute;rio e d&amp;ecirc; enter','ÐÐ°Ð¿Ð¸ÑˆÐ¸Ñ‚Ðµ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹ Ð¸ Ð½Ð°Ð¶Ð¼Ð¸Ñ‚Ðµ ÐºÐ»Ð°Ð²Ð¸ÑˆÑƒ Ð’Ð’ÐžÐ”','Escribe un comentario y presiona enter','Bir yorum yazÄ±n ve enter tuÅŸuna basÄ±n ..'),(316,'view_more_comments','','View more comments','Ø¥Ø¸Ù‡Ø§Ø± Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„ØªØ¹Ù„ÙŠÙ‚Ø§Øª','Bekijk meer reacties','Voir plus de commentaires','Mehr Kommentare zeigen','Visualizza piÃ¹ commenti','Vizualizar mais coment&amp;aacute;rios','ÐŸÐ¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸ÐµÐ²','Ver m&amp;aacute;s comentarios','Daha fazla yorum'),(317,'welcome_to_news_feed','','Welcome to your News Feed !','Ø£Ù‡Ù„Ø§ Ø¨Ùƒ ÙÙŠ ØµÙØ­Ø© Ø£Ø­Ø¯Ø« Ø§Ù„Ù…Ù†Ø´ÙˆØ±Ø§Øª !','Welkom op je tijdlijn !','Bienvenue Ã  votre Nouvelles RSS!','Willkkommen in deinem News-Feed!','Benvenuto nel tuo News Feed!','Bem vindo as nossa not&amp;iacute;cias !','Ð”Ð¾Ð±Ñ€Ð¾ Ð¿Ð¾Ð¶Ð°Ð»Ð¾Ð²Ð°Ñ‚ÑŒ Ð² Ð»ÐµÐ½Ñ‚Ñƒ Ð½Ð¾Ð²Ð¾ÑÑ‚ÐµÐ¹!','Â¡ Bienvenido a tu muro de noticias !','HoÅŸ geldiniz!'),(318,'say_hello','','Say Hello !','Ù‚Ù„ Ù…Ø±Ø­Ø¨Ø§Ù‹ !','Zeg snel Hallo !','Dis bonjour !','Sag Hallo!','Saluta !','Diga Ol&amp;aacute; !','Ð¡ÐºÐ°Ð¶Ð¸ Ð¿Ñ€Ð¸Ð²ÐµÑ‚!','Â¡ Di hola !','Merhaba de !'),(319,'publisher_box_placeholder','','What&#039;s going on? #Hashtag.. @Mention.. Link..','Ù…Ø§ Ø§Ù„Ø°ÙŠ ÙŠØ­ØµÙ„ Ø§Ù„Ø¢Ù† ØŸ #Ù‡Ø§Ø´ØªØ§Øº .. @Ø¥Ø´Ø§Ø±Ø©','Hoe gaat het vandaag? #Hashtag.. @Vermeld..','Ce qui se passe? #hashtag ..@Mention..','Was ist los? #Hashtag.. @ErwÃ¤hnen..','A cosa sti pensando? ..','O que voc&amp;ecirc; esta fazendo? #Hashtag.. @Mencione.. Link..','Ð§Ñ‚Ð¾ Ñƒ Ð’Ð°Ñ Ð½Ð¾Ð²Ð¾Ð³Ð¾? #Ð¥ÑÑˆÑ‚ÐµÐ³Ð¾Ð¼... @Ð£Ð¿Ð¾Ð¼Ð¸Ð½Ð°Ð½Ð¸Ðµ...','Â¿ Que est&amp;aacute;s pensando ? #Anime #lolis.. @Otakus..','Ne sÃ¶ylemek istersin ? #Hashtag .. @Mansiyon ..'),(320,'youtube_link','','Youtube Link','Ø±Ø§Ø¨Ø· Ø§Ù„ÙŠÙˆØªÙŠÙˆØ¨','Youtube Link','Youtube Link','Youtube Link','Youtube Link','Youtube Link','Youtube Ð¡ÑÑ‹Ð»ÐºÐ°','Link de Youtube','Youtube BaÄŸlantÄ±sÄ±k'),(321,'vine_link','','Vine Link','Ø±Ø§Ø¨Ø· Ø§Ù„ÙØ§ÙŠÙ†','Vine Link','Vine Link','Vine Link','Vine Link','Vine Link','Vine Ð¡ÑÑ‹Ð»ÐºÐ°','Link de Vine','Vine BaÄŸlantÄ±'),(322,'soundcloud_link','','SoundCloud Link','Ø±Ø§Ø¨Ø· Ø§Ù„Ø³Ø§ÙˆÙ†Ø¯ÙƒÙ„Ø§ÙˆØ¯','SoundCloud Link','SoundCloud Link','SoundCloud Link','SoundCloud Link','SoundCloud Link','SoundCloud Ð¡ÑÑ‹Ð»ÐºÐ°','Link de SoundCloud','Soundcloud BaÄŸlantÄ±'),(323,'maps_placeholder','','Where are you ?','Ø£ÙŠÙ† Ø£Ù†Øª Ø§Ù„Ø¢Ù† ØŸ','Waar ben je ?','OÃ¹ es tu?','Wo bist du?','Dove ti trovi?','Onde voc&amp;ecirc; esta ?','Ð­Ñ‚Ð¾ Ð³Ð´Ðµ?','Â¿ Donde est&amp;aacute;s ?','Neredesin ?'),(324,'post_label','','Post','Ù†Ø´Ø±','Plaats','Poster','LOS','Post','Post','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ','Publicar','GÃ¶nder'),(325,'text','','Text','Ø§Ù„Ù†ØµÙˆØµ','Tekst','Envoyer des textos','Text','Testo','Texto','Ð—Ð°Ð¼ÐµÑ‚ÐºÐ¸','Texto','Metin'),(326,'photos','','Photos','Ø§Ù„ØµÙˆØ±','Foto&#039;s','Photos','Fotos','Foto','Fotos','Ð¤Ð¾Ñ‚Ð¾','Fotos','Resimler'),(327,'sounds','','Sounds','Ø§Ù„Ù…ÙˆØ³ÙŠÙ‚Ù‰','muziek','Des sons','Musik','Musica','Sons','ÐÑƒÐ´Ð¸Ð¾','Sonidos','Sesler'),(328,'videos','','Videos','Ø§Ù„ÙÙŠØ¯ÙŠÙˆ','Video&#039;s','Les vidÃ©os','Videos','Video','V&amp;iacute;deos','Ð’Ð¸Ð´ÐµÐ¾','Videos','Videolar'),(329,'maps','','Maps','Ø§Ù„Ø®Ø±Ø§Ø¦Ø·','Maps','Plans','Karten','Mappe','Mapas','ÐšÐ°Ñ€Ñ‚Ñ‹','Mapas','Haritalar'),(330,'files','','Files','Ø§Ù„Ù…Ù„ÙØ§Øª','Files','Dossiers','Dateien','File','Arquivos','Ð¤Ð°Ð¹Ð»Ñ‹','Archivos','Dosyalar'),(331,'not_following','','Not following any user','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ù…ØªØ§Ø¨ÙØ¹ÙŠÙ†','Volgt nog geen mensen','Ne pas suivre tout utilisateur','folgt niemandem','Non seguire qualsiasi utente','N&amp;atilde;o segue ningu&amp;eacute;m','ÐÐµ ÑÐ»ÐµÐ´Ð¾Ð²Ð°Ñ‚ÑŒ','No sigues a ning&amp;uacute;n usuario','Herhangi kullanÄ±cÄ±larÄ± takip DeÄŸil'),(332,'no_followers','','No followers yet','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ù…ØªØ§Ø¨ÙŽØ¹ÙŠÙ†','Heeft geen volgers','Pas encore adeptes','hat keine Verfolger','Non hai ancora nessuno che ti segue','Nenhum seguidor ainda','ÐŸÐ¾ÐºÐ° Ð½ÐµÑ‚ Ð¿Ð¾ÑÐ»ÐµÐ´Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹','Sin seguidores','HenÃ¼z takipÃ§ileri'),(333,'details','','Details','Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„Ø¹Ø§Ù…Ø©','Details','DÃ©tails','Einzelheiten','Detagli','Detalhes','Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ','Detalles','Detaylar'),(334,'social_links','','Social Links','Ø§Ù„Ø±ÙˆØ§Ø¨Ø· Ø§Ù„Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠØ©','Sociale Links','Liens sociaux','Sociallinks','Link Sociali','Redes Sociais','Ð¡Ð¾Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ðµ ÑÑÑ‹Ð»ÐºÐ¸','Enlaces Sociales','Sosyal BaÄŸlantÄ±lar'),(335,'online_chat','','Chat','Ø§Ù„Ø£ØµØ¯Ù‚Ø§Ø¡ Ø§Ù„Ù…ØªØµÙ„ÙŠÙ†','Online vrienden','amis en ligne','Freunde Online','Utenti Attivi','Amigos Online','Ð”Ñ€ÑƒÐ·ÑŒÑ Ð¾Ð½Ð»Ð°Ð¹Ð½','Amigos Conectados','Ã‡evrimiÃ§i arkadaÅŸ'),(336,'about','','About','Ø­ÙˆÙ„','About','Sur','Ãœber Uns','Su di noi','Sobre','Ðž Ð½Ð°Ñ','Pin','YaklaÅŸÄ±k'),(337,'contact_us','','Contact Us','Ø¥ØªØµÙ„ Ø¨Ù†Ø§','Contact Us','Contactez nous','Kontaktiere uns','Contattaci','Contato','ÐšÐ¾Ð½Ñ‚Ð°ÐºÑ‚Ñ‹','Contacto','Bize UlaÅŸÄ±n'),(338,'privacy_policy','','Privacy Policy','Ø³ÙŠØ§Ø³Ø© Ø§Ù„Ø®ØµÙˆØµÙŠØ©','Privacy Policy','politique de confidentialitÃ©','Datenschutz','Privacy Policy','Privacidade','ÐŸÐ¾Ð»Ð¸Ñ‚Ð¸ÐºÐ°','Pol&amp;iacute;tica','Gizlilik PolitikasÄ±'),(339,'terms_of_use','','Terms of Use','Ø´Ø±ÙˆØ· Ø§Ù„Ø§Ø³ØªØ®Ø¯Ø§Ù…','Terms of Use','Conditions d&#39;utilisation','Nutzungsbedingungen','Condizioni d&#039;uso','Termos de Uso','Ð£ÑÐ»Ð¾Ð²Ð¸Ñ','Condiciones','KullanÄ±m ÅžartlarÄ±'),(340,'developers','','Developers','Ø§Ù„Ù…Ø·ÙˆØ±ÙŠÙ†','Developers','DÃ©veloppeurs','Entwickler','Sviluppatori','Desenvolvedores','Ð Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚Ñ‡Ð¸ÐºÐ°Ð¼','Developers','GeliÅŸtiriciler'),(341,'language','','Language','Ø§Ù„Ù„ØºØ©','Language','Langue','Sprache','Lingua','Linguagem','Ð¯Ð·Ñ‹Ðº','Idioma','Dil'),(342,'copyrights','','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}'),(343,'year','','year','Ø³Ù†Ø©','jaar','an','Jahr','Anno','ano','Ð³Ð¾Ð´','A&amp;ntilde;o','yÄ±l'),(344,'month','','month','Ø´Ù‡Ø±','maand','mois','Monat','mese','m&amp;ecirc;s','Ð¼ÐµÑÑÑ†','mes','ay'),(345,'day','','day','ÙŠÙˆÙ…','dag','jour','Tag','giorno','dia','Ð´ÐµÐ½ÑŒ','d&amp;iacute;a','gÃ¼n'),(346,'hour','','hour','Ø³Ø§Ø¹Ø©','uur','heure','Stunde','ora','hora','Ñ‡Ð°Ñ','hora','saat'),(347,'minute','','minute','Ø¯Ù‚ÙŠÙ‚Ø©','minuut','minute','Minute','minuto','minuto','Ð¼Ð¸Ð½ÑƒÑ‚','minuto','dakika'),(348,'second','','second','Ø«Ø§Ù†ÙŠØ©','seconde','deuxiÃ¨me','Sekunde','secondo','segundo','ÑÐµÐºÑƒÐ½Ð´','segundo','saniye'),(349,'years','','years','Ø³Ù†ÙˆØ§Øª','jaren','annÃ©es','Jahre','anni','anos','Ð»ÐµÑ‚','a&amp;ntilde;os','yÄ±llar'),(350,'months','','months','Ø§Ø´Ù‡Ø±','maanden','mois','Monate','messi','meses','Ð¼ÐµÑÑÑ†ÐµÐ²','meses','aylar'),(351,'days','','days','Ø£ÙŠØ§Ù…','dagen','jours','Tage','giorni','dias','Ð´Ð½ÐµÐ¹','d&amp;iacute;as','gÃ¼nler'),(352,'hours','','hours','Ø³Ø§Ø¹Ø§Øª','uren','des heures','Stunden','ore','horas','Ñ‡Ð°ÑÐ¾Ð²','horas','saatler'),(353,'minutes','','minutes','Ø¯Ù‚Ø§Ø¦Ù‚','minuten','minutes','Minuten','minuti','minutos','Ð¼Ð¸Ð½ÑƒÑ‚','minutos','dakika'),(354,'seconds','','seconds','Ø«Ø§Ù†ÙŠØ©','seconden','secondes','Sekunden','secondi','segundos','ÑÐµÐºÑƒÐ½Ð´','segundos','saniye'),(355,'time_ago','','ago','Ù…Ù†Ø°','geleden','depuis','','fa','atr&amp;aacute;s','Ð½Ð°Ð·Ð°Ð´','','Ã¶nce'),(356,'time_from_now','','from now','Ù…Ù† Ø§Ù„Ø¢Ù†','van nu','Ã  partir de maintenant','ab jetzt','da adesso','agora','Ð¡ ÑÑ‚Ð¾Ð³Ð¾ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚Ð°','desde ahora','ÅŸu andan itibaren'),(357,'time_any_moment_now','','any moment now','ÙÙŠ Ø£ÙŠ Ù„Ø­Ø¸Ø© Ø§Ù„Ø¢Ù†','een moment geleden','d un moment','jeden Moment','da un momento all&#039;altro','algum tempo atr&amp;aacute;s','Ð’ Ð»ÑŽÐ±Ð¾Ð¹ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚','cualquier momento','Åžimdi her an'),(358,'time_just_now','','Just now','Ø£Ù„Ø¢Ù†','Net geplaats','Juste maintenant','Gerade eben','Proprio adesso','Neste momento','ÐŸÑ€ÑÐ¼Ð¾ ÑÐµÐ¹Ñ‡Ð°Ñ','Ahora','Åžu anda'),(359,'time_about_a_minute_ago','','about a minute ago','Ù…Ù†Ø° Ø¯Ù‚ÙŠÙ‚Ø©','een minuut geleden','Il ya environ une minute','Vor einer Minute','circa un minuto fa','minuto atr&amp;aacute;s','Ð¼Ð¸Ð½ÑƒÑ‚Ñƒ Ð½Ð°Ð·Ð°Ð´','Hace un minuto','yaklaÅŸÄ±k bir dakika Ã¶nce'),(360,'time_minute_ago','','%d minutes ago','Ù…Ù†Ø° %d Ø¯Ù‚Ø§Ø¦Ù‚','%d minuten geleden','%d il y a quelques minutes','vor %d Minuten','%d minuti fa','%d minutos atras','%d Ð¼Ð¸Ð½ÑƒÑ‚ Ð½Ð°Ð·Ð°Ð´','hace %d minutos','%d dakika Ã¶nce'),(361,'time_about_an_hour_ago','','about an hour ago','Ù…Ù†Ø° Ø³Ø§Ø¹Ø©','een uur geleden','il y a Ã  peu prÃ¨s une heure','Vor einer Stunde','circa un&#039;ora fa','uma hora atr&amp;aacute;s','Ð¾ÐºÐ¾Ð»Ð¾ Ñ‡Ð°ÑÐ° Ð½Ð°Ð·Ð°Ð´','Hace una hora','yaklaÅŸÄ±k bir saat Ã¶nce'),(362,'time_hours_ago','','%d hours ago','Ù…Ù†Ø° %d Ø³Ø§Ø¹Ø§Øª','%d uren geleden','%d il y a des heures','vor %d Stunden','%d ore fa','%d horas atras','%d Ñ‡Ð°ÑÐ¾Ð² Ð½Ð°Ð·Ð°Ð´','Hace %d horas','%d saatler Ã¶nce'),(363,'time_a_day_ago','','a day ago','Ù…Ù†Ø° ÙŠÙˆÙ…','a dag geleden','a Il ya jour','Gestern','a giorni fa','dia atr&amp;aacute;s','Ð´ÐµÐ½ÑŒ Ð½Ð°Ð·Ð°Ð´','Hace un dia','bir gÃ¼n Ã¶nce'),(364,'time_a_days_ago','','%d days ago','Ù…Ù†Ø° %d Ø£ÙŠØ§Ù…','%d dagen geleden','%d il y a quelques jours','vor %d Tagen','%d giorni fa','%d dias atras','%d Ð´Ð½ÐµÐ¹ Ð½Ð°Ð·Ð°Ð´','Hace %d dias','%d gÃ¼n Ã¶nce'),(365,'time_about_a_month_ago','','about a month ago','Ù…Ù†Ø° Ø´Ù‡Ø±','een maand geleden','il y a environ un mois','vor einem Monat','circa un mese fa','um m&amp;ecirc;s atr&amp;aacute;s','ÐžÐºÐ¾Ð»Ð¾ Ð¼ÐµÑÑÑ†Ð° Ð½Ð°Ð·Ð°Ð´','Hace un mes','yaklaÅŸÄ±k bir ay Ã¶nce'),(366,'time_months_ago','','%d months ago','Ù…Ù†Ø° %d Ø£Ø´Ù‡Ø±','%d maanden geleden','%d il y a des mois','vor %d Monaten','%d mesi fa','%d meses atr&amp;aacute;s','%d Ð¼ÐµÑÑÑ† Ð½Ð°Ð·Ð°Ð´','Hace %d meses','%d aylar Ã¶nce'),(367,'time_about_a_year_ago','','about a year ago','Ù…Ù†Ø° Ø³Ù†Ø©','een jaar geleden','Il ya environ un an','vor einem Jahr','circa un anno fa','um ano atr&amp;aacute;s','Ð¾ÐºÐ¾Ð»Ð¾ Ð³Ð¾Ð´Ð° Ð½Ð°Ð·Ð°Ð´','Hace un aÃ±o','yaklaÅŸÄ±k bir yÄ±l Ã¶nce'),(368,'time_years_ago','','%d years ago','Ù…Ù†Ø° %d Ø³Ù†ÙˆØ§Øª','%d jaar geleden','%d il y a des annÃ©es','vor %d Jahren','%d anni fa','%d anos atr&amp;aacute;s','%d Ð¼Ð½Ð¾Ð³Ð¾ Ð»ÐµÑ‚ Ð½Ð°Ð·Ð°Ð´','Hace %d aÃ±os','%d yÄ±llar Ã¶nce'),(369,'latest_activities','','Latest Activities','Ø¢Ø®Ø± Ø§Ù„Ù†Ø´Ø§Ø·Ø§Øª','Laatste Activiteiten','DerniÃ¨res activitÃ©s','Letzte AktivitÃ¤ten','Ultimi AttivitÃ ','&amp;uacute;ltimas atividades','ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸Ð¸ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ','Actividad reciente','Son Aktiviteler'),(370,'no_activities','','No new activities','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ù†Ø´Ø§Ø·Ø§Øª','Geen nieuwe activiteiten','Pas de nouvelles activitÃ©s','Keine neuen AktivitÃ¤ten','Non ci sono nuove attivitÃ ','Nenhuma atividade nova','ÐÐµÑ‚ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ð¹','No hay actividad reciente','Aktiviteler yok'),(371,'trending','','Trending !','Ø§Ù„Ù‡Ø§Ø´ØªØ§ØºØ§Øª Ø§Ù„Ù†Ø´Ø·Ø© !','Populair!','Trending !','Im Trend!','Tendenza !','Assunto do momento !','Ð¢ÐµÐ½Ð´ÐµÐ½Ñ†Ð¸Ð¸!','Â¡ Popular !','Trend!'),(372,'load_more_activities','','Load more activities','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù†Ø´Ø§Ø·Ø§Øª','Laad meer activiteiten','Chargez plus d&#39;activitÃ©s','Weitere AktivitÃ¤ten laden','Carica altri attivitÃ ','Carregar mais atividades','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ','Cargar mas actividad','Daha fazla faaliyetleri yÃ¼kle'),(373,'no_more_actitivties','','No more actitivties','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù†Ø´Ø§Ø·Ø§Øª','Geen andere activiteiten','Pas plus d&#39;activitÃ©s','Keine weiteren AktivitÃ¤ten','Nessun altro attivitÃ ','Nenhuma atividade nova','ÐÐµÑ‚ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ð¹','No hay mas actividad','Daha faaliyetler yok'),(374,'people_you_may_know','','People you may know','Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ù‚Ø¯ ØªØ¹Ø±ÙÙ‡Ù…','Mensen die je misschien kent','Les gens que vous connaissez peut-Ãªtre','Personen die Du vielleicht kennst','Persone che Potresti Conoscere','Pessoas que voc&amp;ecirc; talvez conhe&amp;ccedil;a','Ð›ÑŽÐ´Ð¸, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ñ… Ð²Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð·Ð½Ð°Ñ‚ÑŒ','Personas que tal vez conozcas','TanÄ±yor olabileceÄŸin kiÅŸiler'),(375,'too_long','','Too long','Ø·ÙˆÙŠÙ„ Ø¬Ø¯Ø§ÙŽ','Te lang','Trop long','Zu Lang','Troppo lungo','Muito grande.','Ð¡Ð»Ð¸ÑˆÐºÐ¾Ð¼ Ð´Ð»Ð¸Ð½Ð½Ñ‹Ð¹','Muy largo','Too long'),(376,'too_short','','Too short.','Ù‚ØµÙŠØ± Ø¬Ø¯Ø§ÙŽ','To kort.','Trop court.','Zu Kurz.','Troppo corto.','Muito curto.','Ð¡Ð»Ð¸ÑˆÐºÐ¾Ð¼ ÐºÐ¾Ñ€Ð¾Ñ‚ÐºÐ¸Ð¹.','Muy corto.','Too short.'),(377,'available','','Available !','Ù…ØªØ§Ø­ !','Beschikbaar!','Disponible !','VerfÃ¼gbar!','A disposizione !','Available !','Ð”Ð¾ÑÑ‚ÑƒÐ¿Ð½Ñ‹Ð¹!','Â¡ Disponible !','Available !'),(378,'in_use','','In use.','Ù…Ø³ØªØ®Ø¯Ù…','In gebruik.','En service.','In Benutzung.','In uso.','Em uso.','Ð’ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ð½Ð¸Ð¸.','En uso.','In use.'),(379,'username_invalid_characters_2','','Username should not contain any special characters, symbols or spaces.','ÙŠØ¬Ø¨ Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø£Ù† Ù„Ø§ ÙŠØ­ØªÙˆÙŠ Ø¹Ù„Ù‰ Ø£ÙŠØ© Ø£Ø­Ø±Ù Ø®Ø§ØµØ© Ø£Ùˆ Ø±Ù…ÙˆØ² Ø£Ùˆ Ù…Ø³Ø§ÙØ§Øª.','Gebruikersnaam mag geen speciale tekens bevatten.','Nom d&#39;utilisateur ne doit pas contenir de caractÃ¨res, symboles ou espaces spÃ©ciaux.','Bitte keine Sonder- oder Leerzeichen verwenden.','Nome utente non deve contenere caratteri speciali, simboli o spazi.','O nome de usu&amp;uacute;rio N&amp;atilde;o deve conter nenhum carectere especial, s&amp;iacute;mbolo ou espa&amp;ccedil;os.','Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð½Ðµ Ð´Ð¾Ð»Ð¶Ð½Ð¾ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ñ‚ÑŒ ÐºÐ°ÐºÐ¸Ñ…-Ð»Ð¸Ð±Ð¾ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ñ… ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð² Ð¸Ð»Ð¸ Ð¿Ñ€Ð¾Ð±ÐµÐ»Ð¾Ð².','Nombre de usuario no valido, no debe contener s&amp;iacute;mbolos, caracteres especiales o espacios.','Username should not contain any special characters, symbols or spaces.'),(380,'liked','','Liked','Ù…Ø¹Ø¬Ø¨','Vond','A aimÃ©','gefÃ¤llt dir','Piacuto','Curtiu','ÐÑ€Ð°Ð²Ð¸Ñ‚ÑÑ','Me gusta','BeÄŸendim'),(381,'my_pages','','My Pages','ØµÙØ­Ø§ØªÙŠ','Mijn pagina&#039;s','Mes Pages','Meine Seiten','Mie Pagine','Minhas P&amp;aacute;ginas','ÐœÐ¾Ð¸ Ð¡Ñ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','Mis pÃ¡ginas','Benim Sayfalar'),(382,'liked_page','','Liked your page ({page_name})','Ø£Ø¹Ø¬Ø¨ Ø¨ØµÙØ­ØªÙƒ ({page_name})','Vond je pagina ({page_name})','a aimÃ© votre page ({page_name})','gefÃ¤llt Deine Seite ({page_name})','Piaciuto tua pagina ({page_name})','Curtiu sua p&amp;aacute;gina ({page_name})','Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ Ð²Ð°ÑˆÐ° ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° ({page_name})','Me gustÃ³ tu pÃ¡gina ({page_name})','SayfanÄ±zÄ± BeÄŸendi ({page_name})'),(383,'this_week','','This week','Ø¥Ø¹Ø¬Ø§Ø¨Ø§Øª Ù‡Ø°Ø§ Ø§Ù„Ø¥Ø³Ø¨ÙˆØ¹','Deze week','Cette semaine','in dieser Woche','Questa settimana','Essa semana','ÐÐ° ÑÑ‚Ð¾Ð¹ Ð½ÐµÐ´ÐµÐ»Ðµ','Esta semana','Bu hafta'),(384,'posts','','posts','Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª ','posts','des postes','BeitrÃ¤ge','messaggi','Postagens','ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹','Mensajes','MesajlarÄ±'),(385,'located_in','','Located in','Ù…ÙˆØ¬ÙˆØ¯ ÙÙŠ','Gelegen in','SituÃ© dans','Wohnt in','Situata in','Localiza&amp;ccedil;&amp;atilde;o','Ð“Ð¾Ñ€Ð¾Ð´','Situado en','Bulunan'),(386,'phone_number','','Phone','Ø§Ù„Ù‡Ø§ØªÙ','Telefoon','TÃ©lÃ©phone','Telefon','Telefono','Telefone','Ð¢ÐµÐ»ÐµÑ„Ð¾Ð½','TelÃ©fono','Telefon'),(387,'company','','Company','Ø´Ø±ÙƒØ©','Bedrijf','Compagnie','Unternehmen','Azienda','Empresa','ÐšÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ','Empresa','ÅŸirket'),(388,'category','','Category','Ø§Ù„Ù‚Ø³Ù…','Categorie','CatÃ©gorie','Kategorie','Categoria','Categoria','ÐšÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ñ','CategorÃ­a','Kategori'),(389,'search_for_posts','','Search for posts','Ø¥Ø¨Ø­Ø« Ø¹Ù† Ù…Ù†Ø´ÙˆØ±Ø§Øª','Zoeken naar berichten','Rechercher les messages','Nach BeitrÃ¤gen suchen','Cerca messaggi','Procurar posts','ÐŸÐ¾Ð¸ÑÐº Ð·Ð°Ð¼ÐµÑ‚Ð¾Ðº','Buscar mensajes','MesajlarÄ± ara'),(390,'create_new_page','','Create New Page','Ø¥Ù†Ø´Ø§Ø¡ ØµÙØ­Ø© Ø¬Ø¯ÙŠØ¯Ø©','Nieuwe pagina','CrÃ©er une page','Neue Seite erstellen','Crea nuova pagina','Criar uma nova p&amp;aacute;gina','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñƒ','Crear nueva pÃ¡gina','Yeni Sayfa OluÅŸtur'),(391,'page_name','','Page name','Ø¥Ø³Ù… Ø§Ù„ØµÙØ­Ø© (Ø§Ù„Ø°ÙŠ ÙŠØ¸Ù‡Ø± ÙÙŠ Ø±Ø§Ø¨Ø· Ø§Ù„ØµÙØ­Ø©)','Pagina naam','Nom de la page','Seitenname','Nome della Pagina','Nome da p&amp;aacute;gina','ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ','Nombre de la pÃ¡gina','Sayfa adÄ±'),(392,'page_title','','Page title','Ø¹Ù†ÙˆØ§Ù† Ø§Ù„ØµÙØ­Ø©','Pagina titel','Titre de la page','Seitentitel','Titolo della Pagina','T&amp;iacute;tulo da p&amp;aacute;gina','Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº','TÃ­tulo de la pÃ¡gina','Sayfa baÅŸlÄ±ÄŸÄ±'),(393,'your_page_title','','Your page title','Ø¹Ù†ÙˆØ§Ù† ØµÙØ­ØªÙƒ','Uw pagina titel','Votre titre de la page','Dein Seitentitel','Il tuo titolo della Pagina','T&amp;iacute;tulo da sua p&amp;aacute;gina','Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','Tu pÃ¡gina de tÃ­tulo','Sizin sayfa baÅŸlÄ±k'),(394,'page_category','','Page Category','Ø§Ù„Ù‚Ø³Ù…','Pagina Categorie','page CatÃ©gorie','Seiten-Kategorie','Categoria','Categoria da p&amp;aacute;gina','ÐšÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ñ','PÃ¡gina CategorÃ­a','Sayfa Kategori'),(395,'page_description','','Page description','Ø­ÙˆÙ„ Ø§Ù„ØµÙØ­Ø©','Pagina beschrijving','Description de la page','Seitenbeschreibung','Descrivi la tua pagina','Descri&amp;ccedil;&amp;atilde;o da p&amp;aacute;gina','ÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','DescripciÃ³n de la pÃ¡gina','Sayfa aÃ§Ä±klamasÄ±'),(396,'page_description_info','','Your Page description, Between 10 and 200 characters max.','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø­ÙˆÙ„ ØµÙØ­ØªÙƒ','Uw pagina beschrijving, tussen de 10 en 200 karakters max.','Votre description de la page, entre 10 et 200 caractÃ¨res max.','Deine Seitenbeschreibung, zwischen 10 und 200 Zeichen max.','La tua descrizione pagina, tra i 10 ei 200 caratteri massimo.','A descri&amp;ccedil;&amp;atilde;o da sua p&amp;aacute;gina deve conter entre 10 e 200 caracteres.','ÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹ Ð¼ÐµÐ¶Ð´Ñƒ 10 Ð¸ 200 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð² Ð¼Ð°ÐºÑ.','Su descripciÃ³n de pÃ¡gina, entre 10 y 200 caracteres mÃ¡x.','10 ve 200 karakter max ArasÄ±nda SayfanÄ±z aÃ§Ä±klama'),(397,'create','','Create','Ø¥Ù†Ø´Ø§Ø¡','CreÃ«ren','CrÃ©er','Erstellen','Crea','Criar','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ','Crear','Yarat'),(398,'page_name_exists','','Page name is already exists.','Ø¥Ø³Ù… Ø§Ù„ØµÙØ­Ø© Ù…Ø³ØªØ®Ø¯Ù… Ø¨Ù„ Ø§Ù„ÙØ¹Ù„','Pagina naam is al bestaat.','Nom de la page est existe dÃ©jÃ .','Seitenname ist bereits vorhanden.','Nome della pagina Ã¨ esiste giÃ .','O nome dessa p&amp;aacute;gina j&amp;aacute; esta sendo usado.','ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.','Nombre de la pÃ¡gina es que ya existe.','Sayfa adÄ± zaten var olduÄŸunu.'),(399,'page_name_characters_length','','Page name must be between 5 / 32','Ø¥Ø³Ù… Ø§Ù„ØµÙØ­Ø© ÙŠØ¬Ø¨ Ø§Ù† ÙŠÙƒÙˆÙ† Ø¨ÙŠÙ† 5 Ø§Ù„Ù‰ 32 Ø­Ø±Ù','Pagina naam moet tussen 5/32','Nom de la page doit Ãªtre comprise entre 5/32','Seitenname muss zwischen 5 und 32 Zeichen bestehen','Nome della pagina deve essere compresa tra 5/32','O nome da p&amp;aacute;gina deve conter entre 5 / 32 caracteres','ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹ Ð´Ð¾Ð»Ð¶Ð½Ð¾ Ð±Ñ‹Ñ‚ÑŒ Ð¼ÐµÐ¶Ð´Ñƒ 5/32 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð°Ð¼Ð¸','Nombre de la pÃ¡gina debe estar entre 5/32','Sayfa adÄ± 5/32 arasÄ±nda olmalÄ±dÄ±r'),(400,'page_name_invalid_characters','','Invalid page name characters','ØµÙŠØºØ© Ø§Ø³Ù… Ø§Ù„ØµÙØ­Ø© Ø®Ø§Ø·Ø¦Ø©','Ongeldige pagina naam tekens','Invalides nom de la page caractÃ¨res','UngÃ¼ltige Zeichen vorhanden','Caratteri del nome di pagina non valida','Caracteres inv&amp;aacute;lidos','ÐÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ðµ ÑÐ¸Ð¼Ð²Ð¾Ð»Ñ‹ Ð² ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ð¸ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','Caracteres del nombre de la pÃ¡gina no vÃ¡lidos','GeÃ§ersiz sayfa adÄ± karakterleri'),(401,'edit','','Edit','ØªØµØ­ÙŠØ­','Bewerk','modifier','Bearbeiten','Modifica','Editar','Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ','Editar','DÃ¼zenleme'),(402,'page_information','','Page Information','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„ØµÙØ­Ø©','Pagina Informatie','Informations sur la page','Seiteninformationen','Informazioni pagina','Informa&amp;ccedil;&amp;otilde;es da p&amp;aacute;gina','Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ Ð¾ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ðµ','PÃ¡gina de informaciÃ³n','Sayfa Bilgileri'),(403,'delete_page','','Delete Page','Ø­Ø°Ù Ø§Ù„ØµÙØ­Ø©','Pagina Verwijderen','supprimer la page','Seite lÃ¶schen','Ellimina Pagina','Deletar p&amp;aacute;gina','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñƒ','Eliminar pÃ¡gina','SayfayÄ± Sil'),(404,'location','','Location','Ù…ÙˆÙ‚Ø¹','Plaats','Emplacement','Lage','Posizione','localizaÃ§Ã£o','Ð Ð°ÑÐ¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ','UbicaciÃ³n','Konum'),(405,'pages_you_may_like','','Pages you may like','ØµÙØ­Ø§Øª Ù‚Ø¯ ØªØ¹Ø¬Ø¨Ùƒ','Pagina&#039;s die je misschien graag','Pages que vous aimerez','Seiten, die Dir gefallen','Pagine che potete gradire','P&amp;aacute;ginas que talvez voc&amp;ecirc; goste','Ð ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÐ¼Ñ‹Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','PÃ¡ginas que le gustarÃ¡','EÄŸer gibi olabilir Sayfalar'),(406,'show_more_pages','','Show more pages','Ø£Ø¸Ù‡Ø± Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ø«ÙØ­Ø§Øª','Toon meer pagina&#039;s','Voir plus de pages','Zeige mehr Seiten','Mostra piÃ¹ pagine','Mostrar mais p&amp;aacute;ginas','ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†','Mostrar mÃ¡s pÃ¡ginas','Daha fazla sayfa gÃ¶ster'),(407,'no_more_pages','','No more pages to show','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø§Ù„Ù…Ø²ÙŠØ¯','Geen pagina te tonen','No more pages to show','Keine weiteren Seiten vorhanden,','Niente piÃ¹ pagine per mostrare','Nenhuma p&amp;aacute;gina nova para mostrar','ÐÐµÑ‚ Ð±Ð¾Ð»ÑŒÑˆÐµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†','No mÃ¡s pÃ¡ginas para mostrar','Yok daha fazla sayfa gÃ¶stermek iÃ§in'),(408,'page_delete_confirmation','','Are you sure you want to delete this page?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ù‡ Ø§Ù„ØµÙØ­Ø© ØŸ','Bent u zeker dat u deze pagina wilt verwijderen?','Etes-vous sÃ»r de vouloir supprimer cette page?','Bist Du sicher das Du diese Seite lÃ¶schen mÃ¶chtest?','Sei sicuro di voler cancellare questa pagina?','Deletar p&amp;aacute;gina?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ñƒ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñƒ?','Â¿Seguro que quieres borrar esta pÃ¡gina?','Bu sayfayÄ± silmek istediÄŸinizden emin misiniz?'),(409,'manage_pages','','Manage Pages','Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ØµÙØ­Ø§Øª','Pagina&#039;s beheren','gÃ©rer les pages','Seiten verwalten','Gestisci Pagine','Editar p&amp;aacute;ginas','Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð°Ð¼Ð¸','Gestionar pÃ¡ginas','SayfalarÄ± YÃ¶net'),(410,'owner','','Owner','Ø§Ù„Ù…Ø¯ÙŠØ±','Eigenaar','PropriÃ©taire','Inhaber','Proprietario','Dono','Ð’Ð»Ð°Ð´ÐµÐ»ÐµÑ†','Propietario','Sahib'),(411,'no_pages_found','','No pages to show','Ù„Ø§ ÙŠÙˆØ¬Ø¯ ØµÙØ­Ø§Øª','Geen pagina&#039;s gevonden','Aucune page trouvÃ©','Keine Seiten gefunden','Nessuna pagina trovata','Nenhuma p&amp;aacute;gina encontrada','ÐÐµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾ Ð½Ð¸ Ð¾Ð´Ð½Ð¾Ð¹ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','No se encontraron pÃ¡ginas','HiÃ§bir sayfalar bulunamadÄ±'),(412,'welcome_wonder','','Wonder','ØªØ¹Ø¬Ø¨','Wonder','Merveille','Wundern','Wonder','N&amp;atilde;o curtiu','Pintter','Pintter','ÅŸaÅŸkÄ±nlÄ±k'),(413,'welcome_connect','','Connect','Ø¥ØªØµÙ„','Aansluiten','connecter','Verbinden','Connettiti','Conectar','ÐŸÐ¾Ð´ÐºÐ»ÑŽÑ‡Ð°Ð¹Ñ‚ÐµÑÑŒ','Conectar','BaÄŸlamak'),(414,'welcome_share','','Share','Ø´Ø§Ø±Ùƒ','Delen','Partagez','Teilen','Condividi','Compartilhar','Ð”ÐµÐ»Ð¸Ñ‚ÐµÑÑŒ','Compartir','Pay'),(415,'welcome_discover','','Discover','Ø¥Ø³ØªÙƒØ´Ù','Ontdekken','DÃ©couvrir','Entdecken','Scoprire','Descobrir','Ð—Ð½Ð°ÐºÐ¾Ð¼ÑŒÑ‚ÐµÑÑŒ','Descubrir','KeÅŸfedin'),(416,'welcome_find_more','','Find more','Ø¬Ø¯ Ø§Ù„Ù…Ø²ÙŠØ¯','Vind meer','Trouve plus','Mehr fnden','Trova piÃ¹','Procurar mais','ÐÐ°Ð¹Ð´Ð¸Ñ‚Ðµ Ð±Ð¾Ð»ÑŒÑˆÐµ','Encuentra mÃ¡s','Daha fazla bul'),(417,'welcome_mobile','','Mobile Friendly','Ù…ØªÙ†Ø§Ø³Ù‚ Ù…Ø¹ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø£Ø¬Ù‡Ø²Ø©','Mobile Vriendelijk','mobile bienvenus','100% Mobilfreundlich','Mobile Friendly','Amigos pelo celular','ÐÐ´Ð°Ð¿Ñ‚Ð¸Ð²Ð½Ñ‹Ð¹ Ð´Ð¸Ð·Ð°Ð¹Ð½','Mobile Amistoso','Mobil Dostu'),(418,'welcome_wonder_text','','Wonder (NEW), ability to wonder a post if you don&#039;t like it.','ØªØ¹Ø¬Ø¨ (Ø¬Ø¯ÙŠØ¯), Ù…ÙŠØ²Ø© Ø¬Ø¯ÙŠØ¯Ø© ØªØ³ØªØ·ÙŠØ¹ Ù…Ù† Ø®Ù„Ø§Ù„Ù‡Ø§ Ø§Ù„ØªØ¹Ø¬Ø¨ Ø¨Ù„ Ø§Ù„Ù…Ù†Ø´ÙˆØ±Ø§Øª.','Wonder (NEW), de mogelijkheid om een bericht af of je niet bevalt.','Wonder (NOUVEAU), la capacitÃ© Ã  se demander un poste si vous ne l&#39;aimez pas.','(NEU) Wundern, die MÃ¶glichkeit, einen Beitrag zu markieren, in Frage zu stellen, weil Du es nicht glaubst oder verstehst.','Wonder (NEW), capacitÃ  di stupirsi un post, se non ti piace.','N&amp;atilde;o curtir (NEW), abilidade para N&amp;atilde;o curtir um post.','Ð¡Ð²Ð¾Ð±Ð¾Ð´Ð½Ð¾ Ð¸ Ð±ÐµÐ· Ð¾Ð³Ñ€Ð°Ð½Ð¸Ñ‡ÐµÐ½Ð¸Ð¹, Ð´ÐµÐ»Ð¸Ñ‚ÐµÑÑŒ ÑÐ²Ð¾Ð¸Ð¼Ð¸ Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ°Ñ†Ð¸ÑÐ¼Ð¸ ÑÐ¾ Ð²ÑÐµÐ¼ Ð¼Ð¸Ñ€Ð¾Ð¼.','Libre y sin restricciones, asombroso para compartir tus publicaciones en todo el mundo.','EÄŸer beÄŸenmezseniz bir yazÄ± merak (YENÄ°), yetenek Wonder.'),(419,'welcome_connect_text','','Connect with your family and friends and share your moments.','ØªÙˆØ§ØµÙ„ Ù…Ø¹ Ø¹Ø§Ø¦Ù„ØªÙƒ ÙˆØ£ØµØ¯Ù‚Ø§Ø¦Ùƒ Ø´Ø§Ø±Ùƒ Ø§Ù„Ù„Ø­Ø¸Ø§Øª Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ.','Verbinden met je familie en vrienden en deel je momenten.','Connectez-vous avec votre famille et vos amis et partager vos moments.','Ein modernes soziales Netzwerk fÃ¼r den Kontakt zu Deiner Familie und Freunden.','Connettiti con la tua famiglia e gli amici e condividere i tuoi momenti.','Conecte com seus amigos e fam&amp;iacute;lia, e compartilhe seus momentos.','ÐžÐ±Ñ‰Ð°Ð¹Ñ‚ÐµÑÑŒ Ñ Ð²Ð°ÑˆÐµÐ¹ ÑÐµÐ¼ÑŒÐµÐ¹ Ð¸ Ð´Ñ€ÑƒÐ·ÑŒÑÐ¼Ð¸, Ð¿Ð¾Ð´ÐµÐ»Ð¸Ñ‚ÐµÑÑŒ ÑÐ²Ð¾Ð¸Ð¼Ð¸ Ð»ÑƒÑ‡ÑˆÐ¸Ð¼Ð¸ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚Ð°Ð¼Ð¸.','ConÃ©ctate con tu familia y amigos para compartir los mejores momentos.','Aileniz ve arkadaÅŸlarÄ±nÄ±zla baÄŸlamak ve anlarÄ± paylaÅŸmak.'),(420,'welcome_share_text','','Share what&#039;s new and life moments with your friends.','Ø´Ø§Ø±Ùƒ Ø§Ù„Ø­Ø¸Ø§Øª Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø© ÙÙŠ Ø­ÙŠØ§ØªÙƒ Ù…Ø¹ Ø£ØµØ¯Ù‚Ø§Ø¦Ùƒ.','Deel wat nieuw is en het leven momenten met je vrienden.','Partager ce sont des moments de nouvelles et de la vie avec vos amis.','Teile mit Deinen Freunden, Nachbarn und Kollegen alles was neu ist. Zeige was Dir gefÃ¤llt.','Condividi ciÃ² che Ã¨ nuovo e la vita momenti con i tuoi amici.','Compartilhe o que acontece em sua vida com seus amigos.','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ñ‚ÐµÑÑŒ ÑÐ²Ð¾Ð¸Ð¼ ÐºÐ¾Ð½Ñ‚ÐµÐ½Ñ‚Ð¾Ð¼ Ñ Ð¿Ð¾Ð¼Ð¾Ñ‰ÑŒÑŽ Pintter Ð¸ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚Ðµ ÑÐ°Ð¼Ð¾Ðµ Ð»ÑƒÑ‡ÑˆÐµÐµ Ð¿Ñ€Ð¾Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ðµ.','Comparte todos tus contenidos a travÃ©s de Pintter y consigue la mejor promociÃ³n.','ArkadaÅŸlarÄ±nÄ±zla yeni ve yaÅŸam anlarÄ± ne paylaÅŸÄ±n.'),(421,'welcome_discover_text','','Discover new people, create new connections and make new friends.','Ø¥ÙƒØªØ´Ù Ø£Ø´Ø®Ø§Øµ Ø¬Ø¯Ø¯ØŒ ÙˆØ£Ù†Ø´Ù‰Ø¡ Ø§ØªØµØ§Ù„Ø§Øª Ø¬Ø¯ÙŠØ¯Ø© ÙˆÙƒÙˆÙ† ØµØ¯Ø§Ù‚Ø§Øª Ø¬Ø¯ÙŠØ¯Ø©.','Ontdek nieuwe mensen, nieuwe verbindingen te maken en nieuwe vrienden maken.','DÃ©couvrez de nouvelles personnes, crÃ©er de nouvelles connexions et de faire de nouveaux amis.','Entdecke neue Leute, neue Verbindungen und neue Freunde.','Scoprire nuove persone, creare nuove connessioni e fare nuove amicizie.','Descubra novas pessoas, fa&amp;ccedil;a amigos e se divirta!','ÐžÑ‚ÐºÑ€Ð¾Ð¹Ñ‚Ðµ Ð´Ð»Ñ ÑÐµÐ±Ñ Ð½Ð¾Ð²Ñ‹Ñ… Ð»ÑŽÐ´ÐµÐ¹, ÑÐ¾Ð·Ð´Ð°Ð²Ð°Ð¹Ñ‚Ðµ ÑÐ²ÑÐ·Ð¸ Ð¸ Ð·Ð°Ð²Ð¾Ð´Ð¸Ñ‚Ðµ Ð½Ð¾Ð²Ñ‹Ñ… Ð´Ñ€ÑƒÐ·ÐµÐ¹.','Descubre nuevas personas, haz nuevas conexiones y nuevos contactos.','Yeni insanlarla keÅŸfedin, yeni baÄŸlantÄ±lar oluÅŸturmak ve yeni arkadaÅŸlar.'),(422,'welcome_find_more_text','','Find more of what you&#039;re looking for with WoWonder Search.','Ø£Ø¨Ø­Ø« Ø¹Ù† Ù…Ø§ ØªØ±ÙŠØ¯ Ù…Ø¹  Ù†Ø¸Ø§Ù… Ø¨Ø­Ø« ÙˆØ§ÙˆØ§Ù†Ø¯Ø±','Vind meer van wat je zoekt met WoWonder Search.','Trouver plus de ce que vous n &#39;Ãªtes Ã  la recherche d&#39;avec WoWonder Recherche.','Finde viel mehr, was Du mit wen-kennt-wer-Suche suchst.','Trova piÃ¹ di quello che stai cercando con WoWonder Ricerca.','Veja mais do que voc&amp;ecirc; esta procurando com o WoWonder Search.','Ð£Ð·Ð½Ð°Ð¹Ñ‚Ðµ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð¾ Ñ‚Ð¾Ð¼, Ñ‡Ñ‚Ð¾ Ð²Ñ‹ Ð¸Ñ‰ÐµÑ‚Ðµ Ñ Ð¿Ð¾Ð¼Ð¾Ñ‰ÑŒÑŽ Ñ„ÑƒÐ½ÐºÑ†Ð¸Ð¸ Ð¿Ð¾Ð¸ÑÐºÐ° Pintter.','Encuentras mÃ¡s de lo que estÃ¡s buscando con el nuevo Pintter Buscador.','EÄŸer WoWonder Arama ile aradÄ±ÄŸÄ±nÄ±zÄ± daha bulun.'),(423,'welcome_mobile_text','','100% screen adaptable on all tablets and smartphones.','100% Ù…ØªÙ†Ø§Ø³Ù‚ Ù…Ø¹ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø£Ø¬Ù‡Ø²Ø© Ù…Ù† Ø§Ù„Ù‡ÙˆØ§ØªÙ Ø§Ù„Ø°ÙƒÙŠØ© ÙˆØ§Ù„ØªØ§Ø¨Ù„Øª','100% scherm passen op alle tablets en smartphones.','Ã‰cran 100% adaptable sur toutes les tablettes et les smartphones.','100% fÃ¼r Dein Tablet und Smartphone angepasst.','Schermo100%  adattato su tutti i tablet e smartphone.','Tela 100% adapt&amp;aacute;vel em todos os tablets e smartphones.','100% Ð°Ð´Ð°Ð¿Ñ‚Ð¸Ñ€ÑƒÐµÑ‚ÑÑ Ðº Ð»ÑŽÐ±Ð¾Ð¼Ñƒ Ð¼Ð¾Ð±Ð¸Ð»ÑŒÐ½Ð¾Ð¼Ñƒ ÑÐºÑ€Ð°Ð½Ñƒ, Ñ‚Ð°Ð±Ð»ÐµÑ‚Ñƒ Ð¸Ð»Ð¸ ÑÐ¼Ð°Ñ€Ñ‚-ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð²Ñƒ.','100% adaptable a cualquier pantalla mÃ³vil, tabletas o dispositivo inteligentes.','TÃ¼m tabletler ve akÄ±llÄ± telefonlarda uyarlanabilir %100 ekran.'),(424,'working_at','','Working at','ÙŠØ¹Ù…Ù„ ÙÙŠ','Werken bij','Travailler Ã ','Arbeitet bei','Lavorare in','Trabalhando em','Ð Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð²','Trabajando en','Ã‡alÄ±ÅŸmak'),(425,'relationship','','Relationship','Ø§Ù„Ø­Ø§Ù„Ø© Ø§Ù„Ø¥Ø¬ØªÙ…Ø§Ø¹ÙŠØ©','Verhouding','Relation','Beziehung','Relazione','Relacionamento','ÐžÑ‚Ð½Ð¾ÑˆÐµÐ½Ð¸Ñ','RelaciÃ³n','iliÅŸki'),(426,'none','','None','ØºÙŠØ± Ù…Ø­Ø¯Ø¯','Geen','Aucun','Keine','Nessuna','Nenhum','ÐÐµ Ð²Ñ‹Ð±Ñ€Ð°Ð½Ð¾','Ninguno','HiÃ§biri'),(427,'avatar','','Avatar','Ø§Ù„ØµÙˆØ±Ø© Ø§Ù„Ø´Ø®ØµÙŠØ©','Avatar','Avatar','Profilbild','Avatar','Avatar','ÐÐ²Ð°Ñ‚Ð°Ñ€','Avatar','Avatar'),(428,'cover','','Cover','Ø§Ù„ØºÙ„Ø§Ù','Deksel','Couverture','Titelbild','Immagine di copertura','Capa','ÐžÐ±Ð»Ð¾Ð¶ÐºÐ°','Fondo','Kapak'),(429,'background','','Background','Ø®Ù„ÙÙŠØ© ØµÙØ­ØªÙƒ Ø§Ù„Ø´Ø­ØµÙŠØ©','Achtergrond','Contexte','Hintergrund','Sfondo','Fundo','Ð—Ð°Ð´Ð½Ð¸Ð¹ Ð¿Ð»Ð°Ð½','Fondo de Pantalla','GeÃ§miÅŸ'),(430,'theme','','Theme','Ø§Ù„Ø«ÙŠÙ…','Thema','ThÃ¨me','Thema','Temi','Tema','Ð¢ÐµÐ¼Ð°','Tema','Tema'),(431,'deafult','','Default','Ø§Ù„Ø¥ÙØªØ±Ø§Ø¶ÙŠ','Standaard','DÃ©faut','Standard','Predefinito','Padr&amp;ccedil;o','ÐŸÐ¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ','Defecto','Standart'),(432,'my_background','','My Background','Ø§Ù„Ø®Ø§Øµ Ø¨ÙŠ','Mijn Achtergrond','Mon arriÃ¨re-plan','Mein Hintergrund','Mio Sfondo','Meu fundo','ÐœÐ¾Ð¹ Ñ„Ð¾Ð½','Mi pasado','Benim Arkaplan'),(433,'company_website','','Company website','Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ù„Ù„Ø¹Ù…Ù„','Bedrijfs websitee','Site Web de l&#39;entreprise','Unternehmenswebseite','Sito Sociaeta','Site da empresa','Ð’ÐµÐ±-ÑÐ°Ð¹Ñ‚ ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ð¸','PÃ¡gina Web de la compaÃ±Ã­a','Åžirket Web Sitesi'),(434,'liked_my_page','','Liked My Page','Ù…Ø¹Ø¬Ø¨ÙŠÙ† Ø¨ØµÙØ­ØªÙŠ','Vond Mijn pagina','AimÃ© Ma Page','gefÃ¤llt meine Seite','Mi Ã¨ piaciuta la mia pagina','Curtiu minha p&amp;aacute;gina','ÐŸÐ¾Ð½Ñ€Ð°Ð²Ð¸Ð»Ð°ÑÑŒ Ð¼Ð¾Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð°','Me gustÃ³ mi pÃ¡gina','Benim Sayfam BeÄŸendi'),(435,'dislike','','Dislike','Ø¹Ø¯Ù… Ø§Ù„Ø¥Ø¹Ø¬Ø§Ø¨','Afkeer','Aversion','nicht gefallen','Antipatia','N&amp;atilde;o curtir','ÐÐµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ','No me gusta','BeÄŸenmeme'),(436,'dislikes','','Dislikes','ØºÙŠØ± Ù…Ø¹Ø¬Ø¨ÙŠÙ†','AntipathieÃ«n','DÃ©goÃ»ts','Unbeliebt','Antipatia','N&amp;atilde;o curtiu','ÐÐµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ','No le gusta','Sevmedikleri'),(437,'disliked_post','','disliked your {postType} {post}','Ù„Ù… ÙŠØ¹Ø¬Ø¨ {postType} {post}','hekel aan je {postType} {post}','dÃ©testÃ© votre {postType} {post}','gefÃ¤llt dein Beitrag {postType} {post} nicht','antipatia tuo {postType} {post}','N&amp;atilde;o curtiu seu {postType} {post}','Ð½Ðµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ {postType} {post}','no le gusta tu {postType} {post}','senin {postType} sevmiyordu {post}'),(438,'disliked_comment','','disliked your comment &quot;{comment}&quot;','Ù„Ù… ÙŠØ¹Ø¬Ø¨ Ø¨ØªØ¹Ù„ÙŠÙ‚Ùƒ &quot;{comment}&quot;','hekel aan je reactie &quot;{comment}&quot;','dÃ©testÃ© votre commentaire &quot;{comment}&quot;','gefÃ¤llt dein Kommentar &quot;{comment}&quot;','antipatia tuo commento &quot;{comment}&quot;','N&amp;atilde;o curtiu seu coment&amp;aacute;rio &quot;{comment}&quot;','Ð½Ðµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ Ð²Ð°Ñˆ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹ &quot;{comment}&quot;','no le gustaba su comentario &quot;{comment}&quot;','sevilmeyen Yorumunuzu &quot;{comment}&quot;'),(439,'activity_disliked_post','','disliked {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','Ù„Ù… ÙŠØ¹Ø¬Ø¨ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Ø¨Ù…Ù†Ø´ÙˆØ±&lt;/a&gt; {user} .','hekel {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','dÃ©testÃ© {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','unbeliebt {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt; Beitrag &lt;/a&gt;.','antipatia {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','N&amp;atilde;o curtiu {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','{user} Ð½Ðµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Ð¿Ð¾ÑÑ‚&lt;/a&gt;.','No me gustÃ³ {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt; posterior &lt;/a&gt;.','SevmediÄŸi {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt; yazÄ±lan &lt;/a&gt;.'),(440,'second_button_type','','Second post button type','Ù†ÙˆØ¹ Ø§Ù„Ø²Ø± Ø§Ù„Ø«Ø§Ù†ÙŠ Ù„Ù„Ù…Ù†Ø´ÙˆØ±','Tweede post type knop','DeuxiÃ¨me poste de type bouton','Zweiter Likebutton','Secondo palo tipo di pulsante','Segundo tipo de bot&amp;ccedil;o','Ð’Ñ‚Ð¾Ñ€Ð¾Ð¹ Ñ‚Ð¸Ð¿ ÐºÐ½Ð¾Ð¿ÐºÐ¸','Segundo mensaje de tipo botÃ³n','Ä°kinci sonrasÄ± dÃ¼ÄŸmesi tipi'),(441,'group_name','','Group name','Ø¥Ø³Ù… Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Groepsnaam','Nom de groupe','Gruppenname','Nome del gruppo','Nome do grupo','URL Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','Nombre del grupo','Grup ismi'),(442,'group_title','','Group title','Ø¹Ù†ÙˆØ§Ù† Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Groep titel','Titre de groupe','Gruppentitel','Titolo del gruppo','T&amp;iacute;tulo do grupo','ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','TÃ­tulo del Grupo','Grup baÅŸlÄ±k'),(443,'my_groups','','My Groups','Ù…Ø¬Ù…ÙˆØ¹Ø§ØªÙŠ','Mijn Groepen','Mes Groupes','Meine Gruppen','I miei gruppi','Meus grupos','ÐœÐ¾Ð¸ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','Mis grupos','Gruplar'),(444,'school','','School','Ø§Ù„Ù…Ø¯Ø±Ø³Ø©','School','L&#39;Ã©cole','Schule','Scuola','Escola','Ð¨ÐºÐ¾Ð»Ð°','Colegio','Okul'),(445,'site_keywords_help','','Example: social, wowonder, social site','Example: social, wowonder, social site','Example: social, wowonder, social site','Example: social, wowonder, social site','Beispiel: soziale, wen-kennt-wer, soziale Website','Esempio: sociale, wowonder, sito di social','Exemplo: social, wowonder, site social','ÐŸÑ€Ð¸Ð¼ÐµÑ€: ÑÐ¾Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð°Ñ ÑÐµÑ‚ÑŒ, pintter, ÑÐ¾Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ ÑÐ°Ð¹Ñ‚','Ejemplo:, wowonder, sitio social sociales','Ã–rnek: Sosyal, wowonder, sosyal sitesi'),(446,'message_seen','','Message Seen','Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù…Ù‚Ø±ÙˆØ¦Ø©','Bericht Seen','Vu message','Nachricht gesehen','Messaggio Visto','Mensagem lida','ÐŸÑ€Ð¾Ñ‡Ð¸Ñ‚Ð°Ð»@','Mensaje Seen','Ä°leti Seen'),(447,'recommended_for_powerful','','Recommended for powerful servers','Ù…Ø³ØªØ­Ø³Ù† Ù„Ù„Ø§Ø³ÙŠØ±ÙØ±Ø§Øª Ø§Ù„Ù‚ÙˆÙŠØ©','Aanbevolen voor krachtige servers','RecommandÃ© pour les puissants serveurs','Empfohlen fÃ¼r leistungsstarke Server','Consigliato per potenti server','Recomendado para servi&amp;ccedil;os pesados','Ð ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÑ‚ÑÑ Ð´Ð»Ñ Ð¼Ð¾Ñ‰Ð½Ñ‹Ñ… ÑÐµÑ€Ð²ÐµÑ€Ð¾Ð²','Recomendado para servidores de gran alcance','GÃ¼Ã§lÃ¼ sunucular iÃ§in Ã¶nerilen'),(448,'message_typing','','Chat typing system','Ù†Ø¸Ø§Ù… &quot;ÙŠÙƒØªØ¨&quot; Ù„Ù„Ø´Ø§Øª','Chat typering systeem','SystÃ¨me de typage chat','Chat Typisierungssystem','Sistema di digitazione Chat','Sistema de digita&amp;ccedil;&amp;atilde;o','ÐÐ°Ð±Ð¸Ñ€Ð°ÐµÑ‚ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Sistema de tipificaciÃ³n de Chat','Sohbet yazarak sistemi'),(449,'reCaptcha','','reCaptcha','reCaptcha','reCaptcha','reCaptcha','reCaptcha','reCaptcha','reCaptcha','ReCaptcha','reCaptcha','Tuttum'),(450,'instagram','Instagram','Instagram','Ø¥ÙŠÙ†Ø³ØªØ§Ø¬Ø±Ø§Ù…','Instagram','Instagram','Instagram','Instagram','Instagram','Instagram','Instagram','Instagram'),(451,'profile_visit_notification_help','','if you don&#039;t share your visit event , you won&#039;t be able to see other people visiting your profile.','Ø§Ø°Ø§ Ù„Ù… ØªÙØ¹Ù„ Ø²ÙŠØ§Ø±Ø© Ø§Ù„ØµÙØ­Ø© , ÙØ§Ù†Ùƒ Ù„Ù† ØªÙƒÙˆÙ† Ù‚Ø§Ø¯Ø±Ø§ Ø¹Ù„Ù‰ Ø±Ø¤ÙŠØ© Ø§Ù„Ø§Ø®Ø±ÙŠÙ† ÙˆÙ‡Ù… ÙŠØ²ÙˆØ±ÙˆÙ† ØµÙØ­ØªÙƒ.','als u niet uw bezoek evenement te delen, zult u niet in staat zijn om andere mensen een bezoek aan uw profiel te zien.','si vous ne partagez pas votre Ã©vÃ©nement de la visite, vous ne serez pas en mesure de voir d&#39;autres gens qui visitent votre profil.','Wenn Du Deine Profilbesuche nicht teilen willst, kÃ¶nnen andere nicht sehen wenn du ihr Profil besucht hast.','se non si condivide il vostro evento visita, non sarÃ  in grado di vedere altre persone che visitano il tuo profilo.','Se voc&amp;ecirc; N&amp;atilde;o abilitar a notifica&amp;ccedil;&amp;atilde;o de perfil, voc&amp;ecirc; N&amp;atilde;o poder&amp;aacute; ver quem visitou seu perfil.','Ð•ÑÐ»Ð¸ Ð¾Ñ‚ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ðµ, Ð²Ñ‹ Ð½Ðµ Ð±ÑƒÐ´ÐµÑ‚Ðµ Ð¿Ð¾Ð»ÑƒÑ‡Ð°Ñ‚ÑŒ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ñ Ð¾ Ñ‚Ð¾Ð¼ ÐºÑ‚Ð¾ Ð¿Ð¾ÑÐµÑ‰Ð°Ð» Ð²Ð°Ñˆ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ.','Si desactivas esta notificaciÃ³n tu tampoco recibirÃ¡s avisos de visita de otros usuarios.','EÄŸer ziyaret olayÄ± paylaÅŸmak yoksa, profilinizi ziyaret eden diÄŸer kiÅŸileri gÃ¶rmek mÃ¼mkÃ¼n olmayacaktÄ±r.'),(452,'account_delete','','Delete Account','Ø­Ø°Ù Ø§Ù„Ø­Ø³Ø§Ø¨','Account verwijderen','Effacer le compte','Konto lÃ¶schen','Eliminare l&#039;account','Deletar conta','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚','Borrar cuenta','HesabÄ± sil'),(453,'ip_address','','IP Address','IP Ø¹Ù†ÙˆØ§Ù†','IP Address','Adresse IP','IP Adresse','Indirizzo IP','Endere&amp;ccedil;o IP','ÐÐ¹Ð¿Ð¸ Ð°Ð´Ñ€ÐµÑ','DirecciÃ³n IP','IP adresi'),(454,'manage_groups','','Manage Groups','Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø§Øª','Groepen beheren','GÃ©rer les groupes','Gruppen verwalten','Gestisci gruppi','Editar grupos','Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð³Ñ€ÑƒÐ¿Ð¿Ð°Ð¼Ð¸','Administrar grupos','GruplarÄ± YÃ¶net'),(455,'group_delete_confirmation','','Are you sure you want to delete this group?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ù‡ Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©ØŸ','Bent u zeker dat u deze groep wilt verwijderen?','ÃŠtes-vous sÃ»r de vouloir supprimer ce groupe?','Bist Du sicher das Du diese Gruppe lÃ¶schen mÃ¶chtest?','Sei sicuro di voler eliminare questo gruppo?','Deletar este grupo?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ñƒ Ð³Ñ€ÑƒÐ¿Ð¿Ñƒ?','Â¿Seguro que quieres borrar este grupo?','Bu grubu silmek istediÄŸinizden emin misiniz?'),(456,'no_more_groups','','No more groups to show','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø§Øª','Geen groepen tonen','Pas de plusieurs groupes pour montrer','Keine weiteren Gruppen,','Nessun altro gruppo per mostrare','Nenhum grupo para mostrar','ÐÐµÑ‚ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð³Ñ€ÑƒÐ¿Ð¿ Ð´Ð»Ñ Ð¾Ñ‚Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ','No hay mÃ¡s grupos que mostrar','ArtÄ±k gruplar gÃ¶stermek iÃ§in'),(457,'show_more_groups','','Show more groups','Ø¹Ø±Ø¶ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø§Øª','Toon meer groepen','Montrer plus de groupes','Mehrere Gruppen anzeigen','Mostra piÃ¹ gruppi','Mostrar mais grupos','ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð³Ñ€ÑƒÐ¿Ð¿','Mostrar mÃ¡s grupos','Daha fazla gruplar gÃ¶ster'),(458,'members','','Members','Ø£ÙØ±Ø§Ø¯','leden','Membres','Mitglieder','Utenti','Membros','Ñ‡Ð»ÐµÐ½Ñ‹','Miembros','Ãœyeler'),(459,'verifications_requests','','Verification Requests','Ø·Ù„Ø¨Ø§Øª Ø§Ù„Ø­Ø³Ø§Ø¨Ø§Øª Ø§Ù„Ù…Ø¤ÙƒØ¯Ø©','Verificatie Verzoeken','Demandes de vÃ©rification','Verifizierungsanfragen','Richieste di verifica','Pedidos de verifica&amp;ccedil;&amp;atilde;o','Ð—Ð°Ð¿Ñ€Ð¾ÑÑ‹','Solicitudes verificaciÃ³n','DoÄŸrulama Ä°stekleri'),(460,'verify','','Verify','ØªØ£ÙƒÙŠØ¯','VerifiÃ«ren','VÃ©rifier','ÃœberprÃ¼fen','Verificare','Verificar','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ','Verificar','DoÄŸrulamak'),(461,'ignore','','Ignore','ØªØ¬Ø§Ù‡Ù„','Negeren','Ignorer','Ignorieren','Ignorare','Ignorar','Ð˜Ð³Ð½Ð¾Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ','Ignorar','Ignore'),(462,'page','','Page','ØµÙØ­Ø©','Pagina','Page','Seite','Pagina','P&amp;aacute;gina','Ð¡Ñ‚Ñ€Ð°Ð½Ð¸Ñ†Ð°','PÃ¡gina','Sayfa'),(463,'no_new_verification_requests','','No new verification requests','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø·Ù„Ø¨Ø§Øª Ø¬Ø¯ÙŠØ¯Ø© Ù„Ù„ØªØ­Ù‚Ù‚','Geen nieuwe verificatie aanvragen','Aucune nouvelle demande de vÃ©rification','Keine neuen Verifizierungsanfragen','Non ci sono nuove richieste di verifica','Nenhum pedido de verifica&amp;ccedil;&amp;atilde;o','ÐÐµÑ‚ Ð½Ð¾Ð²Ñ‹Ñ… Ð·Ð°Ð¿Ñ€Ð¾ÑÐ¾Ð²','No hay nuevas solicitudes de verificaciÃ³n','Yeni doÄŸrulama istekleri'),(464,'ban_user','','Ban User','Ø­Ø¸Ø± Ø§Ù„Ø¹Ø¶Ùˆ','Ban gebruiker','Ban User','Gesperrte Benutzer','Ban utente','Banir usu&amp;uacute;rio','Ð—Ð°Ð±Ð°Ð½Ð¸Ñ‚ÑŒ','Ban usuario','Ban User'),(465,'banned','','Banned','Ø§Ù„Ù…Ø­Ø¸ÙˆØ±','Verboden','Banned','Verboten','Vietato','Banido','Ð—Ð°Ð±Ð°Ð½ÐµÐ½','Banned','YasaklÄ±'),(466,'there_are_no_banned_ips','','There are no banned ips.','Ù„Ø§ ÙŠÙˆØ¬Ø¯ ips Ù…Ø­Ø·ÙˆØ±Ø©','Er zijn geen verboden ips.','Il n&#39;y a pas ips interdits.','Es sind keine gesperrte IPs.','Non ci sono ips vietati.','Nenhum IP banido.','ÐÐµÑ‚ Ð·Ð°Ð±Ð°Ð½ÐµÐ½Ð½Ñ‹Ñ… IPS.','No hay ips prohibidas.','HiÃ§bir yasak ips bulunmamaktadÄ±r.'),(467,'invalid_ip','','Invalid ip address.','Ø¹Ù†ÙˆØ§Ù† IP ØºÙŠØ± ØµØ§Ù„Ø­.','Ongeldig IP-adres.','Adresse IP non valide.','UngÃ¼ltige IP-Adresse.','Indirizzo IP non valido.','IP inv&amp;aacute;lido.','ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ IP Ð°Ð´Ñ€ÐµÑ.','DirecciÃ³n IP no vÃ¡lida.','GeÃ§ersiz IP adresi.'),(468,'ip_banned','','IP address successfully banned.','Ø¹Ù†ÙˆØ§Ù† IP Ø­Ø¸Ø±Øª Ø¨Ù†Ø¬Ø§Ø­.','IP-adres succesvol verbannen.','Adresse IP banni avec succÃ¨s.','IP-Adresse erfolgreich verboten.','Indirizzo IP vietato con successo.','IP banido.','IP-Ð°Ð´Ñ€ÐµÑ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð·Ð°Ð±Ð°Ð½ÐµÐ½.','DirecciÃ³n IP prohibida Ã©xito.','IP adresi baÅŸarÄ±yla yasaklandÄ±.'),(469,'ip_exist','','IP address already exist','Ø¹Ù†ÙˆØ§Ù† IP Ù…ÙˆØ¬ÙˆØ¯Ø© Ø¨Ø§Ù„ÙØ¹Ù„','IP-adres bestaan','Adresse IP existent dÃ©jÃ ','Bereits vorhanden IP-Adresse','Indirizzo IP giÃ  esistente','J&amp;aacute; existe este IP','IP-Ð°Ð´Ñ€ÐµÑ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚','DirecciÃ³n IP ya existen','IP adresi zaten mevcut'),(470,'please_add_ip','','Please add an ip address','ÙŠØ±Ø¬Ù‰ Ø¥Ø¶Ø§ÙØ© Ø¹Ù†ÙˆØ§Ù† IP','Voeg een ip-adres','S&#39;il vous plaÃ®t ajouter une adresse ip','Bitte fÃ¼ge eine IP-Adresse hinzu','Si prega di aggiungere un indirizzo IP','Adicione um IP','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð´Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ IP Ð°Ð´Ñ€ÐµÑ','Por favor, aÃ±ada una direcciÃ³n IP','Bir ip adresinizi ekleyiniz'),(471,'ip_deleted','','IP address successfully deleted','Ø¹Ù†ÙˆØ§Ù† IP Ø­Ø°Ù Ø¨Ù†Ø¬Ø§Ø­','IP-adres succesvol verwijderd','Adresse IP supprimÃ© avec succÃ¨s','IP-Adresse erfolgreich gelÃ¶scht','Indirizzo IP eliminato','IP deletado','IP-Ð°Ð´Ñ€ÐµÑ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑƒÐ´Ð°Ð»ÐµÐ½','DirecciÃ³n IP eliminado correctamente','IP adresi baÅŸarÄ±yla silindi'),(472,'email_me_when','','Email me when','Ø£Ø±Ø³Ù„ Ù„ÙŠ Ø¹Ù†Ø¯Ù…Ø§','E-mail me als','Envoyez-moi lorsque','Email-Bnachrichtigung, wenn:','Inviami una email quando','Enviar e-mail quando algu&amp;eacute;m','ÐÐ°Ð¿Ð¸ÑˆÐ¸Ñ‚Ðµ, ÐºÐ¾Ð³Ð´Ð°','EnvÃ­ame un email:','Bana e-posta'),(473,'e_likes_my_posts','','Someone liked my posts','Ø´Ø®Øµ Ø§Ø¹Ø¬Ø¨ Ø¨Ù…Ù†Ø´ÙˆØ±ÙŠ','Iemand hield van mijn berichten','Quelqu&#39;un aimait mes messages','Jemand wundert sich Ã¼ber meinen Beitrag','Qualcuno Ã¨ piaciuto miei post','Curtir meus posts','ÐÑ€Ð°Ð²ÑÑ‚ÑÑ Ð¼Ð¾Ð¸ Ð·Ð°Ð¼ÐµÑ‚ÐºÐ¸','Cuando a alguien le gusta mis posts','Birisi MesajlarÄ± sevdim'),(474,'e_wondered_my_posts','','Someone wondered my posts','Ø´Ø®Øµ ØªØ¹Ø¬Ø¨ Ø¨Ù…Ù†Ø´ÙˆØ±ÙŠ','Iemand vroeg me af van mijn berichten','Quelqu&#39;un demanda mes messages','Jemand mag meine BeitrÃ¤ge nicht','Qualcuno chiese miei post','Dar dislike em meus posts','ÐÐµ Ð½Ñ€Ð°Ð²ÑÑ‚ÑÑ Ð¼Ð¾Ð¸ Ð·Ð°Ð¼ÐµÑ‚ÐºÐ¸','Cuando alguien pregunta en mis posts','Birisi MesajlarÄ± merak'),(475,'e_commented_my_posts','','Someone commented on my posts','Ø´Ø®Øµ Ø¹Ù„Ù‚ Ø¹Ù„Ù‰ Ù…Ù†Ø´ÙˆØ±Ø§ØªÙŠ','Iemand heeft gereageerd op mijn berichten','Quelqu&#39;un a commentÃ© mes messages','Jemand kommentiert meine BeitrÃ¤ge','Qualcuno ha commentato i miei post','Comentar meus posts','ÐŸÑ€Ð¾ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ð»Ð¸ Ð¼Ð¾Ð¸ Ð·Ð°Ð¼ÐµÑ‚ÐºÐ¸','Cuando alguien comenta mis posts','Birisi benim mesajlar yorumladÄ±'),(476,'e_shared_my_posts','','Someone shared on my posts','Ø´Ø®Øµ Ø´Ø§Ø±Ùƒ Ù…Ù†Ø´ÙˆØ±Ø§ØªÙŠ','Iemand gedeeld op mijn berichten','Quelqu&#39;un partagÃ© sur mes posts','Jemand teilt meine BeitrÃ¤ge','Qualcuno ha condiviso i miei post','Compartilhar meus posts','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ð»Ð¸ÑÑŒ Ð¼Ð¾Ð¸Ð¼Ð¸ Ð·Ð°Ð¼ÐµÑ‚ÐºÐ°Ð¼Ð¸','Cuando alguien comparte mis posts','Birisi benim yazÄ±larda paylaÅŸtÄ±'),(477,'e_followed_me','','Someone followed me','Ø´Ø®Øµ ØªØ§Ø¨Ø¹Ù†ÙŠ','Iemand volgde mij','Quelqu&#39;un m&#39;a suivi','Jemand folgt mir','Qualcuno mi ha seguito','Me seguir','Ð¡Ð»ÐµÐ´ÑƒÑŽÑ‚ Ð·Ð° Ð¼Ð½Ð¾Ð¹','Cuando alguien me sigue','Biri beni takip'),(478,'e_liked_page','','Someone liked my pages','Ø´Ø®Øµ Ø£Ø¹Ø¬Ø¨ Ø¨ØµÙØ­Ø© Ø®Ø§ØµØ© Ø¨ÙŠ','Iemand hield van mijn pagina&#039;s','Quelqu&#39;un aimait mes pages','Jemand gefÃ¤llt meine Seiten','Qualcuno Ã¨ piaciuto mie pagine','Curtir minha p&amp;aacute;gina','ÐÑ€Ð°Ð²Ð¸Ñ‚ÑÑ Ð¼Ð¾Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð°','Cuando a alguien le gusta mis pÃ¡ginas','Birisi sayfalarÄ±nÄ± sevdim'),(479,'e_visited_my_profile','','Someone visited my profile','Ø´Ø®Øµ Ø²Ø§Ø± ØµÙØ­ØªÙŠ Ø§Ù„Ø´Ø®ØµÙŠØ©','Iemand bezocht mijn profiel','Quelqu&#39;un a visitÃ© mon profil','Jemand hat mein Profil besucht','Qualcuno ha visitato il mio profilo','Visitar meu perfil','ÐŸÐ¾ÑÐµÑ‚Ð¸Ð»Ð¸ Ð¼Ð¾Ð¹ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ','Cuando alguien ha visitÃ³ mi perfil','Birisi profilimi ziyaret'),(480,'e_mentioned_me','','Someone mentioned me','Ø´Ø®Øµ Ø°ÙƒØ±Ù†ÙŠ','Iemand noemde me','Quelqu&#39;un a parlÃ© de moi','Jemand erwÃ¤hnte mich','Qualcuno mi ha detto','Te mencionar','Ð£Ð¿Ð¾Ð¼ÑÐ½ÑƒÐ»Ð¸ Ð¼ÐµÐ½Ñ','Cuando alguien me menciona','Biri bana sÃ¶z'),(481,'e_joined_group','','Someone joined my groups','Ø´Ø®Øµ Ø§Ù†Ø¶Ù… Ø§Ù„Ù‰ Ù…Ø¬Ù…ÙˆØ¹Ø§ØªÙŠ','Iemand trad mijn groepen','Quelqu&#39;un a rejoint mes groupes','Jemand ist meiner Gruppe beigetreten','Qualcuno Ã¨ entrato miei gruppi','Entrar no meu grupo','Ð’ÑÑ‚ÑƒÐ¿Ð¸Ð»Ð¸ Ð² Ð¼Ð¾ÑŽ Ð³Ñ€ÑƒÐ¿Ð¿Ñƒ','Cuando alguien se une a mis grupos','Birisi gruplarÄ± katÄ±ldÄ±'),(482,'e_accepted','','Someone accepted my friend/follow requset','Ø´Ø®Øµ Ù‚Ø¨Ù„ Ø·Ù„Ø¨ ØµØ§Ø¯Ù‚ØªÙŠ/Ù…ØªØ§Ø¨Ø¹ØªÙŠ','Iemand aanvaard mijn vriend / follow verzoek','Quelqu&#39;un a acceptÃ© mon ami / suivre la demande','Jemand akzeptiert mein Freundschaftsanfrage','Qualcuno ha accettato il mio amico / seguire la richiesta','Aceitar o meu pedido para seguir/adicionar aos amigos','ÐŸÑ€Ð¸Ð½ÑÐ»Ð¸ Ð´Ñ€ÑƒÐ¶Ð±Ñƒ / Ð·Ð°Ð¿Ñ€Ð¾Ñ ÑÐ»ÐµÐ´Ð¾Ð²Ð°Ñ‚ÑŒ','Cuando alguien acepta mi peticiÃ³n','Birisi arkadaÅŸÄ±m / takip et requset kabul'),(483,'e_profile_wall_post','','Someone posted on my timeline','Ø´Ø®Øµ Ù†Ø´Ø± Ø¹Ù„Ù‰ ØµÙØ­ØªÙŠ Ø§Ù„Ø´Ø®ØµÙŠØ©','Iemand gepost op mijn timeline','Quelqu&#39;un a postÃ© sur mon calendrier','Jemand hat etwas in mein Profil geschrieben','Qualcuno ha postato su mia timeline','Postar em sua linha do tempo','ÐŸÑƒÐ±Ð»Ð¸ÐºÐ°Ñ†Ð¸Ñ Ð½Ð° ÑÑ‚ÐµÐ½Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ','Cuando alguien escribe en mi muro','Birisi benim zaman Ã§izelgesi yayÄ±nlanan'),(484,'no_groups_found','','No groups to show','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ù…Ø¬Ù…ÙˆØ¹Ø§Øª','Geen groepen gevonden','Pas de groupes trouvÃ©s','Keine Gruppen gefunden','Nessun gruppo trovato','Nenhum grupo encontrado','Ð“Ñ€ÑƒÐ¿Ð¿Ñ‹ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ‹','No se encontraron grupos','Grup bulunamadÄ±'),(485,'group_information','','Group information','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Groep informatie','L&#39;information de groupe','Gruppenthemen','Informazioni Gruppo','Informa&amp;ccedil;&amp;otilde;es do grupo','Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ Ð¾ Ð³Ñ€ÑƒÐ¿Ð¿Ðµ','InformaciÃ³n del Grupo','Grup bilgileri'),(486,'delete_group','','Delete Group','Ø­Ø°Ù Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Groep verwijderen','Supprimer le groupe','Gruppe lÃ¶schen','Elimina gruppo','Deletar grupo','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ð³Ñ€ÑƒÐ¿Ð¿Ñƒ','Eliminar grupo','Grubu Sil'),(487,'group_name_exists','','Group name is already exists.','Ø§Ø³Ù… Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø© Ù…ÙˆØ¬ÙˆØ¯ Ø¨Ø§Ù„ÙØ¹Ù„.','Groepsnaam is al bestaat.','Le nom du groupe est existe dÃ©jÃ .','Gruppenname ist bereits vorhanden.','Il nome del gruppo Ã¨ giÃ  esistente.','Nome do grupo j&amp;aacute; esta em uso.','ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.','El nombre del grupo es ya existe.','Grup adÄ± zaten var olduÄŸunu.'),(488,'group_name_invalid_characters','','Invalid group name characters','Ø£Ø­Ø±Ù Ø§Ø³Ù… Ù…Ø¬Ù…ÙˆØ¹Ø© ØºÙŠØ± ØµØ§Ù„Ø­Ø©','Ongeldige naam van de groep tekens','Invalides nom de groupe caractÃ¨res','UngÃ¼ltige Gruppenname Zeichen','Caratteri del nome del gruppo non validi','Caracteres inv&amp;aacute;lidos','ÐÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ðµ ÑÐ¸Ð¼Ð²Ð¾Ð»Ñ‹ Ð² URL Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','Caracteres del nombre de grupo no vÃ¡lido','GeÃ§ersiz grup adÄ± karakter'),(489,'group_name_characters_length','','Group name must be between 5 / 32','ÙŠØ¬Ø¨ Ø£Ù† ÙŠÙƒÙˆÙ† Ø§Ø³Ù… Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø© Ø¨ÙŠÙ† 5/32 Ø­Ø±Ù','Groepsnaam moet tussen 5/32','Le nom du groupe doit Ãªtre comprise entre 5/32','Gruppenname muss zwischen 5 und 32 Zeichen bestehen','Il nome del gruppo deve essere compresa tra 5/32','O nome do grupo deve conter entre 5 / 32 caracteres','URL Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹ Ð´Ð¾Ð»Ð¶ÐµÐ½ Ð±Ñ‹Ñ‚ÑŒ Ð¼ÐµÐ¶Ð´Ñƒ 5/32 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð°Ð¼Ð¸','Nombre del grupo debe estar entre 5/32','Grup ismi 5/32 arasÄ±nda olmalÄ±dÄ±r'),(490,'no_requests_found','','No requests to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£ÙŠØ© Ø·Ù„Ø¨Ø§Øª!','Geen verzoeken gevonden!','Aucune demande trouvÃ©e!','Keine Anfragen gefunden!','Nessuna richiesta trovata!','NÃ£o foram encontrados pedidos!','Ð—Ð°Ð¿Ñ€Ð¾ÑÐ¾Ð² Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾!','No se han encontrado solicitudes!','Ä°stek bulunamadÄ±!'),(491,'remove','','Remove','Ø¥Ø²Ø§Ù„Ø©','Verwijderen','Enlever','Entfernen','Rimuovere','Remover','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ','Eliminar','KaldÄ±r'),(492,'no_members_found','','No members to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£ÙŠ Ø£Ø¹Ø¶Ø§Ø¡ ','Er zijn geen leden gevonden','Aucun membre trouvÃ©','Keine Mitglieder gefunden','Nessun membro trovato','Nenhum membro encontrado','Ð£Ñ‡Ð°ÑÑ‚Ð½Ð¸ÐºÐ¸ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ‹','No se encontraron miembros','Ãœye bulunamadÄ±'),(493,'group_deleted','','Group successfully deleted','ØªÙ… Ø­Ø°Ù Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø© Ø¨Ù†Ø¬Ø§Ø­','Groep succesvol verwijderd','Groupe supprimÃ© avec succÃ¨s','Gruppe erfolgreich gelÃ¶scht','Gruppo cancellato con successo','Grupo deletado','Ð“Ñ€ÑƒÐ¿Ð¿Ð° ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑƒÐ´Ð°Ð»ÐµÐ½Ð°','Grupo eliminado correctamente','Grup baÅŸarÄ±yla silindi'),(494,'create_new_group','','Create New Group','Ø¥Ù†Ø´Ø§Ø¡ Ù…Ø¬Ù…ÙˆØ¹Ø© Ø¬Ø¯ÙŠØ¯Ø©','Nieuwe groep','CrÃ©er un nouveau groupe','Neue Gruppe erstellen','Crea nuovo gruppo','Criar novo grupo','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð½Ð¾Ð²ÑƒÑŽ Ð³Ñ€ÑƒÐ¿Ð¿Ñƒ','Crear nuevo grupo','Yeni Grup OluÅŸtur'),(495,'my_games','','My Games','Ø£Ù„Ø¹Ø§Ø¨ÙŠ','Mijn games','Mes Jeux','Meine Spiele','I miei giochi','Meus jogos','ÐœÐ¾Ð¸ Ð¸Ð³Ñ€Ñ‹','Mis juegos','Benim Oyunlar'),(496,'no_games_found','','No games to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£Ù„Ø¹Ø§Ø¨','Geen games gevonden','Pas de jeux trouvÃ©s','Keine Spiele gefunden','Nessun gioco trovato','Nenhum jogo encontrado','Ð˜Ð³Ñ€Ñ‹ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ‹','No se han encontrado juegos','HiÃ§bir oyun bulunamadÄ±'),(497,'groups','','Groups','Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø§Øª','Groepen','Groupes','Gruppen','Gruppi','Grupos','Ð“Ñ€ÑƒÐ¿Ð¿Ñ‹','Grupos','Gruplar'),(498,'no_friends','','No friends yet','Ù„ÙŠØ³ Ù„Ø¯ÙŠÙ‡ Ø£ØµØ¯Ù‚Ø§Ø¡ Ø­ØªÙ‰ Ø§Ù„Ø¢Ù†','Nog geen vriendent','Pas encore d&#39;amis','Noch keine Freunde','Non ci sono ancora amici','Nenhum amigo','ÐÐµÑ‚ Ð´Ñ€ÑƒÐ·ÐµÐ¹','No tiene amigos todavÃ­a','HiÃ§ arkadaÅŸÄ±m yok'),(499,'no_groups','','Didn&#039;t join any groups yet','Ù„Ù… ÙŠÙ†Ø¶Ù… Ø£ÙŠ Ù…Ø¬Ù…ÙˆØ¹Ø© Ø­ØªÙ‰ Ø§Ù„Ø¢Ù†','Heeft een groep nog niet mee','N&#39;a pas encore de rejoindre les groupes','Hat noch keiner Gruppe beigetreten','Non ha ancora aderire a nessun gruppo','N&amp;atilde;o entrou em nenhum grupo','ÐÐµ Ð²ÑÑ‚ÑƒÐ¿Ð°Ñ‚ÑŒ Ð½Ð¸ Ð² ÐºÐ°ÐºÐ¸Ðµ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','No unirse a ningÃºn grupo todavÃ­a','HenÃ¼z hiÃ§bir gruba katÄ±lmadÄ±'),(500,'load_more_pages','','Load more pages','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„ØµÙØ­Ø§Øª','Laad meer pagina&#039;s','Chargez plus de pages','Weitere Seiten laden','Caricare piÃ¹ pagine','Carregar mais p&amp;aacute;ginas','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†','Cargar mÃ¡s pÃ¡ginas','Daha fazla sayfalarÄ± yÃ¼k'),(501,'load_more_groups','','Load more groups','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø§Øª','Laad meer groepen','Chargez plusieurs groupes','Weitere Gruppen laden','Carica altri gruppi','Carregar mais grupos','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð³Ñ€ÑƒÐ¿Ð¿','Cargar mÃ¡s grupos','Daha fazla gruplar yÃ¼kle'),(502,'joined_group','','Joined your group ({group_name})','Ø¥Ù†Ø¶Ù… Ø§Ù„Ù‰ Ù…Ø¬Ù…ÙˆØ¹ØªÙƒ ({group_name})','Toegetreden tot de groep ({group_name})','Rejoint notre groupe ({group_name})','ist deiner Gruppe ({group_name}) beigetreten','Iscritto il nostro gruppo ({group_name})','Entrou no seu grupo ({group_name})','Ð²ÑÑ‚ÑƒÐ¿Ð¸Ð»@ Ð² ({group_name})','Se ha unido a tu grupo ({group_name})','KayÄ±t grup ({group_name})'),(503,'happy','','Happy','Ø§Ù„Ø³Ø¹Ø§Ø¯Ø©','Blij','Heureux','glÃ¼cklich','Contento','Feliz','Ð¡Ñ‡Ð°ÑÑ‚Ð»Ð¸Ð²Ñ‹Ð¹','Feliz','Mutlu'),(504,'loved','','Loved','Ø§Ù„Ø­Ø¨','Hield','AimÃ©','begeistert','Amato','Apaixonado','Ð’Ð»ÑŽÐ±Ð»ÐµÐ½Ð½Ñ‹Ð¹','Me encantaron','Sevilen'),(505,'sad','','Sad','Ø­Ø²ÙŠÙ†','verdrietig','Triste','Traurig','Triste','Triste','Ð“Ñ€ÑƒÑÑ‚Ð½Ñ‹Ð¹','Triste','ÃœzgÃ¼n'),(506,'so_sad','','Very sad','Ø§Ù„Ø­Ø²Ù† Ø§Ù„Ø´Ø¯ÙŠØ¯','Zeer triest','TrÃ¨s triste','sehr traurig','Molto triste','Muito triste','ÐžÑ‡ÐµÐ½ÑŒ Ð³Ñ€ÑƒÑÑ‚Ð½Ñ‹Ð¹','Muy triste','Ã‡ok Ã¼zgÃ¼n'),(507,'angry','','Angry','ØºØ§Ø¶Ø¨','Boos','En colÃ¨re','WÃ¼tend','Arrabbiato','Bravo','Ð¡ÐµÑ€Ð´Ð¸Ñ‚Ñ‹Ð¹','Enojado','kÄ±zgÄ±n'),(508,'confused','','Confused','Ø§Ù„Ø­ÙŠØ±Ø©','Verward','Confus','verwirrt','Confuso','Confuso','Ð’ Ð·Ð°Ð¼ÐµÑˆÐ°Ñ‚ÐµÐ»ÑŒÑÑ‚Ð²Ðµ','Confuso','ÅžaÅŸkÄ±n'),(509,'smirk','','Hot','Ø³Ø§Ø®Ù†','Warm','Chaud','HeiÃŸ','Caldo','Sexy','Ð“Ð¾Ñ€ÑÑ‡Ð¸Ð¹','Caliente','SÄ±cak'),(510,'broke','','Broken','Ø§Ù„Ø§Ø­Ø¨Ø§Ø·','Gebroken','BrisÃ©','am Boden zerstÃ¶rt','Rotte','Tra&amp;iacute;do','Ð¡Ð»Ð¾Ð¼Ð°Ð½Ð½Ñ‹Ð¹','Roto','Broken'),(511,'expressionless','','expressionless','Ù…Ø³ØªØºØ±Ø¨','Wezenloos','Inexpressif','ausdruckslos','Inespressivo','Sem express&amp;atilde;o','Ð‘ÐµÐ· Ð²Ñ‹Ñ€Ð°Ð¶ÐµÐ½Ð¸Ð¹','inexpresivo','ifadesiz'),(512,'cool','','Cool','Ø§Ù„Ø±ÙˆØ¹Ø©','Koel','Bien','cool','Bene','Legal','ÐšÑ€ÑƒÑ‚Ð¾','Guay','GÃ¼zel'),(513,'funny','','Funny','Ø§Ù„Ø¶Ø­Ùƒ','Grappig','Amusant','komisch','Divertente','Divertido','Ð’ÐµÑÐµÐ»Ð°Ñ','Divertido','Komik'),(514,'tired','','Tired','Ø§Ù„ØªØ¹Ø¨','Moe','FatiguÃ©','mÃ¼de','Stanco','Cansado','Ð£ÑÑ‚Ð°Ð»Ð°','Cansado','Yorgun'),(515,'lovely','','Lovely','Ù…Ø­Ø¨','Heerlijk','Charmant','sehr verliebt','Bello','Amavel','ÐŸÑ€ÐµÐºÑ€Ð°ÑÐ½Ñ‹Ð¹','Encantador','GÃ¼zel'),(516,'blessed','','Blessed','Ø§Ù„Ù…Ù†Ø­Ø©','Gezegend','BÃ©ni','gesegnet','Benedetto','AbeN&amp;atilde;oado','Ð‘Ð»Ð°Ð³Ð¾ÑÐ»Ð¾Ð²ÐµÐ½Ð½Ñ‹Ð¹','Bendito','MÃ¼barek'),(517,'shocked','','Shocked','Ø§Ù„ØµØ¯Ù…Ø©','Geschokt','ChoquÃ©','schockiert','Scioccato','Chocado','Ð’ ÑˆÐ¾ÐºÐµ','Conmocionado','Åžokta'),(518,'sleepy','','Sleepy','Ø§Ù„Ù†Ø¹Ø§Ø³','Slaperig','Somnolent','schlÃ¤frig','Assonnato','Dormindo','Ð¡Ð¾Ð½Ð½Ñ‹Ð¹','SoÃ±oliento','Uykulu'),(519,'pretty','','Pretty','Ø§Ù„Ø¬Ù…Ø§Ù„','Mooi','Assez','hÃ¼bsch','Bella','Bonito','ÐœÐ¸Ð»Ð°Ñ','bastante','OldukÃ§a'),(520,'bored','','Bored','Ø§Ù„Ù…Ù„Ù„','Verveeld','EnnuyÃ©','gelangweilt','Annoiato','Entediado','Ð¡ÐºÑƒÑ‡Ð°ÑŽÑ‰Ð¸Ð¹','aburrido','BÄ±kkÄ±n'),(521,'total_users','','Total Users','ÙƒÙ„ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†','Totaal aantal leden','Nombre d&#39;utilisateurs','Benutzer insgesamt','Totale Utenti','Total de usu&amp;uacute;rios','Ð’ÑÐµÐ³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹','Total de usuarios','Toplam KullanÄ±cÄ±lar'),(522,'users','','Users','Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†','Gebruikers','Utilisateurs','Benutzer','Utenti','Usu&amp;uacute;rios','ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸','Usuarios','KullanÄ±cÄ±lar'),(523,'pages','','Pages','Ø§Ù„ØµÙØ­Ø§Øª','Pagina&#039;s','Pages','Seiten','Pagine','P&amp;aacute;ginas','Ð¡Ñ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','PÃ¡ginas','Sayfalar'),(524,'games','','Games','Ø§Ù„Ø£Ù„Ø¹Ø§Ø¨','Spelen','Jeux','Spiele','Giochi','Jogos','Ð˜Ð³Ñ€Ñ‹','Juegos','Oyunlar'),(525,'online_users','','Online Users','Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ø§Ù„Ù…ØªØµÙ„ÙŠÙ†','Online Gebruikers','Utilisateurs en ligne','User online','Utenti Online','Usu&amp;uacute;rios online','Ð¡ÐµÐ¹Ñ‡Ð°Ñ Ð½Ð° ÑÐ°Ð¹Ñ‚Ðµ','Usuarios en lÃ­nea','Ã‡evrimiÃ§i KullanÄ±cÄ±lar'),(526,'recent_searches','','Recent Searches','Ø¹Ù…Ù„ÙŠØ§Øª Ø§Ù„Ø¨Ø­Ø« Ø§Ù„Ø£Ø®ÙŠØ±Ø©','Recente zoekopdrachten','Recherches rÃ©centes','Letzte Suche','Ricerche recenti','Procuras recentes','ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸Ðµ Ð¿Ð¾Ð¸ÑÐºÐ¾Ð²Ñ‹Ðµ Ð·Ð°Ð¿Ñ€Ð¾ÑÑ‹','BÃºsquedas recientes','Son aramalar'),(527,'clear','','Clear','Ù…Ø³Ø­','Duidelijk','Clair','Klar','Chiaro','Limpar','ÐžÑ‡Ð¸ÑÑ‚Ð¸Ñ‚ÑŒ','Claro','AÃ§Ä±k'),(528,'search_filter','','Search filter','Ø§Ù„Ø¨Ø­Ø« Ø§Ù„Ù…ØªÙ‚Ø¯Ù…','Search filter','Filtre de recherche','Suchfilter','Filtro di ricerca','Filtro de pesquisa','Ð¤Ð¸Ð»ÑŒÑ‚Ñ€ Ð¿Ð¾Ð¸ÑÐºÐ°','Filtro de bÃºsqueda','Arama filtresi'),(529,'keyword','','Keyword','Ø§Ù„ÙƒÙ„Ù…Ø©','Zoekfilter','Mot-clÃ©','Stichwort','Parola chiave','Palavra-chave','ÐšÐ»ÑŽÑ‡ÐµÐ²Ð¾Ðµ ÑÐ»Ð¾Ð²Ð¾','Palabra clave','Kelime'),(530,'what_are_looking_for','','What are looking for ?','Ø¹Ù† Ù…Ø§Ø°Ø§ ØªØ¨Ø­Ø«ØŸ','Wat zoekt?','Que cherchez?','Was suchst du?','Quello che sono in cerca di ?','O que voc&amp;ecirc; esta procurando ?','Ð§Ñ‚Ð¾ Ð²Ñ‹ Ð¸Ñ‰ÐµÑ‚Ðµ?','Â¿Que estÃ¡n buscando ?','Ne arÄ±yorsun?'),(531,'changed_profile_cover_picture_male','','changed his profile cover','ØºÙŠØ± ØµÙˆØ±Ø© Ø§Ù„ØºÙ„Ø§Ù Ø§Ù„Ø®Ø§Øµ Ø¨Ù‡','Veranderd zijn profiel deksel','ChangÃ© sa couverture de profil','hat sein Titelbild geÃ¤ndert','Cambiato la sua copertura del profilo','Trocou sua capa de perfil','Ð¡Ð¼ÐµÐ½Ð¸Ð» Ð¾Ð±Ð»Ð¾Ð¶ÐºÑƒ','CambiÃ³ su foto de perfil','Onun profil kapaÄŸÄ± DeÄŸiÅŸtirildi'),(532,'changed_profile_cover_picture_female','','changed her profile cover','ØºÙŠØ±Øª ØµÙˆØ±Ø© Ø§Ù„ØºÙ„Ø§Ù Ø§Ù„Ø®Ø§ØµØ© Ø¨Ù‡Ø§','Veranderde haar profiel deksel','ChangÃ© son profil couvercle','hat ihr Titelbild geÃ¤ndert','Cambiato suo profilo baiar','Trocou sua capa de perfil','Ð¡Ð¼ÐµÐ½Ð¸Ð»Ð° Ð¾Ð±Ð»Ð¾Ð¶ÐºÑƒ','CambiÃ³ su foto de perfil','Onun profil kapaÄŸÄ± DeÄŸiÅŸtirildi'),(533,'latest_games','','Latest games','Ø¢Ø®Ø± Ø§Ù„Ø£Ù„Ø¹Ø§Ø¨','Nieuwste games','Derniers jeux','Neueste Spiele','Ultimi giochi','Jogos novos','ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸Ðµ Ð¸Ð³Ñ€Ñ‹','Ãšltimos Juegos','Son Eklenen Oyunlar'),(534,'no_albums_found','','You haven&#39;t created any albums yet.','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø§Ù„Ø¨ÙˆÙ…Ø§Øª','Geen albums gevonden','Aucun album n&#39;a Ã©tÃ© trouvÃ©','Kein Album gefunden','Nessun album trovato','Nenhum &amp;aacute;lbum encontrado','ÐÐ»ÑŒÐ±Ð¾Ð¼Ð¾Ð² Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾','No hay Ã¡lbumes encontrados','AlbÃ¼m bulunamadÄ±'),(535,'create_album','','Create album','Ø¥Ù†Ø´Ø§Ø¡ Ø£Ù„Ø¨ÙˆÙ…','Maak een album','CrÃ©er un album','Album erstellen','Creare album','Criar &amp;aacute;lbum','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð°Ð»ÑŒÐ±Ð¾Ð¼','Crear albÃºm','AlbÃ¼m oluÅŸtur'),(536,'my_albums','','My Albums','Ø§Ù„Ø¨ÙˆÙ…Ø§ØªÙŠ','Mijn Albums','Mes albums','Meine Alben','I miei album','Meus &amp;aacute;lbuns','ÐœÐ¾Ð¸ Ð°Ð»ÑŒÐ±Ð¾Ð¼Ñ‹','Mis Ã¡lbumes','AlbÃ¼mlerim'),(537,'album_name','','Album name','Ø§Ø³Ù… Ø§Ù„Ø§Ù„Ø¨ÙˆÙ…','Albumnaam','Nom de l&#39;album','Name des Albums','Nome album','Nome do &amp;aacute;lbum','ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ Ð°Ð»ÑŒÐ±Ð¾Ð¼Ð°','Nombre del Ã¡lbum','AlbÃ¼m adÄ±'),(538,'upload','','Upload','Ø±ÙØ¹','Uploaden','TÃ©lÃ©charger','Hochladen','Caricare','Carregar','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ','Subir','YÃ¼kleme'),(539,'add_photos','','Add photos','Ø¥Ø¶Ø§ÙØ© ØµÙˆØ±','Foto&#039;s toevoegen','Ajouter des photos','Fotos hinzufÃ¼gen','Aggiungi foto','Adicionar fotos','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸Ð¸','Agregar fotos','FotoÄŸraf ekle'),(540,'replies','','Replies','Ø±Ø¯ÙˆØ¯','Antwoorden','RÃ©ponses','Antworten','risposte','Respostas','ÐžÑ‚Ð²ÐµÑ‚Ñ‹','Respuestas','Cevaplar'),(541,'reply_to_comment','','Reply to comment','Ø±Ø¯Ø¹Ù„Ù‰ Ø§Ù„ØªØ¹Ù„ÙŠÙ‚','Reageer op reactie','RÃ©pondre au commentaire','Auf Kommentar antworten','Rispondi al commento','Responder o coment&amp;aacute;rio','ÐžÑ‚Ð²ÐµÑ‚Ð¸Ñ‚ÑŒ Ð½Ð° ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','Responder al comentario','Yorumu yanÄ±tla'),(542,'replied_to_comment','','replied to your comment &quot;{comment}&quot;','Ø±Ø¯ Ø¹Ù„Ù‰ ØªØ¹Ù„ÙŠÙ‚Ùƒ &quot;{comment}&quot;','beantwoord je reactie &quot;{comment}&quot;','rÃ©pondu Ã  votre commentaire &quot;{comment}&quot;','hat auf Deinen Kommentar geantwortet &quot;{comment}&quot;','Risposto al tuo commento &quot;{comment}&quot;','respondeu seu coment&amp;aacute;rio &quot;{comment}&quot;','Ð¾Ñ‚Ð²ÐµÑ‚Ð¸Ð»@ Ð½Ð° Ð²Ð°Ñˆ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹ &quot;{comment}&quot;','respondiÃ³ a tu comentario &quot;{comment}&quot;','YorumlarÄ±nÄ±z yanÄ±tladÄ± &quot;{comment}&quot;'),(543,'comment_reply_mention','','mentioned you in a reply &quot;{comment}&quot;','Ø°ÙƒØ±Ùƒ ÙÙŠ Ø±Ø¯ Ø¹Ù„Ù‰ ØªØ¹Ù„ÙŠÙ‚ &quot;{comment}&quot;','je genoemd in een antwoord &quot;{comment}&quot;','vous avez mentionnÃ© dans une rÃ©ponse &quot;{comment}&quot;','hat dich in einer Antwort erwÃ¤hnt &quot;{comment}&quot;','ti ha menzionato in una risposta &quot;{comment}&quot;','mencionou voc&amp;ecirc; em uma resposta &quot;{comment}&quot;','ÑƒÐ¿Ð¾Ð¼ÑÐ½ÑƒÐ»@ Ð²Ð°Ñ Ð² ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸ &quot;{comment}&quot;','te ha mencionado en una respuesta &quot;{comment}&quot;','bir cevapta sizden bahsetti &quot;{comment}&quot;'),(544,'also_replied','','replied to the comment &quot;{comment}&quot;','Ø±Ø¯ Ø¹Ù„Ù‰ Ø§Ù„ØªØ¹Ù„ÙŠÙ‚ &quot;{comment}&quot;','antwoordde op de reactiefeed &quot;{comment}&quot;','rÃ©pondu au commentaire &quot;{comment}&quot;','hat auf den Kommentar zurÃ¼ck kommentiert &quot;{comment}&quot;','risposto al commento &quot;{comment}&quot;','respondeu o coment&amp;aacute;rio &quot;{comment}&quot;','Ð¾Ñ‚Ð²ÐµÑ‚Ð¸Ð»@ Ð½Ð° ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹ &quot;{comment}&quot;','respondiÃ³ al comentario &quot;{comment}&quot;','yorumuna cevap verdi, &quot;{comment}&quot;'),(545,'liked_reply_comment','','liked your reply &quot;{comment}&quot;','Ø£Ø¹Ø¬Ø¨ Ø¨Ø±Ø¯Ùƒ &quot;{comment}&quot;','vond uw antwoord &quot;{comment}&quot;','aimÃ© votre rÃ©ponse &quot;{comment}&quot;','gefÃ¤lt deine Antwort &quot;{comment}&quot;','piaciuto vostra risposta &quot;{comment}&quot;','curtiu sua resposta &quot;{comment}&quot;','Ð¿Ð¾Ð½Ñ€Ð°Ð²Ð¸Ð»ÑÑ Ð²Ð°Ñˆ Ð¾Ñ‚Ð²ÐµÑ‚ &quot;{comment}&quot;','gustado su respuesta &quot;{comment}&quot;','CevabÄ±nÄ±zÄ± &quot;{comment}&quot; sevdi'),(546,'wondered_reply_comment','','wondered your reply &quot;{comment}&quot;','ØªØ¹Ø¬Ø¨ Ø¨Ø±Ø¯Ùƒ &quot;{comment}&quot;','afgevraagd uw antwoord &quot;{comment}&quot;','demandÃ© votre rÃ©ponse &quot;{comment}&quot;','wundert sich Ã¼ber deine Antwort &quot;{comment}&quot;','wondered la tua risposta &quot;{comment}&quot;','n&amp;atilde;o curtiu sua resposta &quot;{comment}&quot;','ÐÐµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ Ð²Ð°Ñˆ Ð¾Ñ‚Ð²ÐµÑ‚ &quot;{comment}&quot;','preguntÃ³ su respuesta &quot;{comment}&quot;','CevabÄ±nÄ±zÄ± &quot;{comment}&quot; merak'),(547,'disliked_reply_comment','','disliked your reply &quot;{comment}&quot;','Ù„Ù… ÙŠØ¹Ø¬Ø¨ Ø¨Ø±Ø¯Ùƒ &quot;{comment}&quot;','hekel aan uw antwoord &quot;{comment}&quot;','dÃ©testÃ© votre rÃ©ponse &quot;{comment}&quot;','gefÃ¤llt deine Antwort &quot;{comment}&quot;','non amava la sua risposta &quot;{comment}&quot;','n&amp;atilde;o curtiu sua resposta &quot;{comment}&quot;','ÐÐµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ Ð¾Ñ‚Ð²ÐµÑ‚ &quot;{comment}&quot;','no le gustaba su respuesta &quot;{comment}&quot;','CevabÄ±nÄ±zÄ± &quot;{comment}&quot; sevmiyordu'),(548,'profile_visit_notification_p','','Send users a notification when i visit their profile?','Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ø¥Ø®Ø·Ø§Ø±Ø§ Ø¹Ù†Ø¯Ù…Ø§ Ø£Ù‚ÙˆÙ… Ø¨Ø²ÙŠØ§Ø±Ø© ØµÙØ­ØªÙ‡ Ø§Ù„Ø´Ø®ØµÙŠØ©ØŸ','Stuur gebruikers een melding wanneer ik bezoek hun profiel?','Envoyer utilisateurs une notification lorsque je visite son profil?','Benutzern eine Benachrichtigung senden, wenn ich ihr Profil besucht habe?','Inviare agli utenti una notifica durante la mia visita il loro profilo?','Enviar notifica&amp;ccedil;&amp;atilde;o para usu&amp;uacute;rios quando visitar o perfil?','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ñ, ÐºÐ¾Ð³Ð´Ð° Ñ Ð¿Ð¾ÑÐµÑ‰Ð°ÑŽ Ð¸Ñ… Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ð¸?','Â¿Enviar a los usuarios aviso de visita?','Ben kendi profilini ziyaret ettiÄŸinizde kullanÄ±cÄ±lara bir bildirim gÃ¶nder?'),(549,'showlastseen_help','','if you don&#039;t share your last seen , you won&#039;t be able to see other people last seen.','Ø§Ø°Ø§ Ù„Ù… ØªØ´Ø§Ø±Ùƒ Ø§Ø®Ø± Ø¸Ù‡ÙˆØ± Ù„Ùƒ , ÙØ§Ù†Ùƒ Ù„Ù† ØªÙƒÙˆÙ† Ù‚Ø§Ø¯Ø±Ø§ Ø¹Ù„Ù‰ Ø±Ø¤ÙŠØ© Ø§Ø®Ø± Ø¸Ù‡ÙˆØ± Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†.','als je het niet eens met je voor het laatst gezien, zult u niet in staat zijn om andere mensen het laatst gezien.','si vous ne partagez pas votre derniÃ¨re fois, vous ne serez pas en mesure de voir d&#39;autres personnes la derniÃ¨re fois.','wenn du nicht teilen willst was du dir als letztes angesehen hast, kannst Du auch nicht sehen was andere sich angesehen haben.','se non si condivide il visto l&#039;ultima volta, non sarÃ  in grado di vedere altre persone visto l&#039;ultima volta.','Se voc&amp;ecirc; N&amp;atilde;o compartilhar a &amp;uacute;ltima vez que voc&amp;ecirc; foi visto, voc&amp;ecirc; tamb&amp;eacute;m N&amp;atilde;o poder&amp;aacute; ver a ultima vez que os outros usu&amp;uacute;rios foram vistos.','Ð•ÑÐ»Ð¸ Ð¾Ñ‚ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ðµ, Ð²Ñ‹ Ð½Ðµ ÑÐ¼Ð¾Ð¶ÐµÑ‚Ðµ Ð²Ð¸Ð´ÐµÑ‚ÑŒ Ð¿Ð¾ÑÐ»ÐµÐ´Ð½ÐµÐµ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ðµ Ð´Ñ€ÑƒÐ³Ð¸Ñ… Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹..','Si desactivas esta notificaciÃ³n tu tampoco podrÃ¡s ver la conexiÃ³n de otros usuarios.','EÄŸer son gÃ¶rÃ¼ldÃ¼ÄŸÃ¼ paylaÅŸmak yoksa, son gÃ¶rÃ¼ldÃ¼ÄŸÃ¼ diÄŸer insanlarÄ± gÃ¶rmek mÃ¼mkÃ¼n olmayacaktÄ±r.'),(550,'timeline_birthday_label','','Who can see my birthday?','Ù…Ù† ÙŠÙ…ÙƒÙ†Ù‡ Ø±Ø¤ÙŠØ© ØªØ§Ø±ÙŠØ® Ù…ÙŠÙ„Ø§Ø¯ÙŠØŸ','Wie kan mijn verjaardag zien?','Qui peut voir mon anniversaire?','Wer kann mein Geburtstag sehen?','Chi puÃ² vedere il mio compleanno?','Quem pode ver a data do meu anivers&amp;aacute;rio?','ÐšÑ‚Ð¾ Ð¼Ð¾Ð¶ÐµÑ‚ Ð²Ð¸Ð´ÐµÑ‚ÑŒ Ð¼Ð¾Ð¹ Ð´ÐµÐ½ÑŒ Ñ€Ð¾Ð¶Ð´ÐµÐ½Ð¸Ñ?','Â¿QuiÃ©n puede ver mi cumpleaÃ±os?','Kim benim doÄŸum gÃ¼nÃ¼m gÃ¶rebilir?'),(551,'people_likes_this','','people like this','Ù…Ø³ØªØ®Ø¯Ù… Ù…Ø¹Ø¬Ø¨ÙŠÙ† Ø¨Ù‡Ø°Ø§','mensen vinden dit leuk','personnes aiment ce','â€žGefÃ¤llt mirâ€œ Angaben','persone piace questo','pessoas gostaram disso','ÐÑ€Ð°Ð²Ð¸Ñ‚ÑÑ','Me gusta','Bu gibi insanlar'),(552,'page_inviate_label','','Invite friends to like this Page','Ø¥Ø¯Ø¹Ùˆ Ø£ØµØ¯Ù‚Ø§Ø¦Ùƒ Ù„Ù„Ø¥Ø¬Ø§Ø¨ Ø¨Ù‡Ø°Ù‡ Ø§Ù„ØµÙØ­Ø©','Vrienden uitnodigen om deze pagina graag','Inviter des amis Ã  aimer cette page','Freunde einladen, denen diese Seite gefallen kÃ¶nnte','Invita gli amici a piacere questa Pagina','Convidar pessoas para curtir essa p&amp;aacute;gina','ÐŸÑ€Ð¸Ð³Ð»Ð°ÑÐ¸Ñ‚ÑŒ Ð´Ñ€ÑƒÐ·ÐµÐ¹','Invitar amigos','Sayfaya sevmeye arkadaÅŸlarÄ±nÄ±zÄ± davet edin'),(553,'invite_your_frineds','','Invite your friends/followers','Ø¥Ø¯Ø¹ÙˆØ§ Ø§ØµØ¯Ù‚Ø§Ø¦Ùƒ/Ù…ØªØ§Ø¨Ø¹ÙŠÙ†Ùƒ','Nodig je vrienden / volgelingen','Invitez vos amis / followers','Laden Sie Ihre Freunde / Follower','Invita i tuoi amici / seguaci','Convidar seus amigos/seguidores','ÐŸÑ€Ð¸Ð³Ð»Ð°ÑÐ¸Ñ‚ÑŒ Ð´Ñ€ÑƒÐ·ÐµÐ¹','Invita a tus amigos / seguidores para ver si les gusta esto','ArkadaÅŸlarÄ±n / takipÃ§ileri davet'),(554,'not_invite','','You don&#039;t have any more friends to invite','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù„Ù„Ø¯Ø¹ÙˆØ©','U hoeft niet meer vrienden uitnodigen','Vous ne disposez pas d&#39;autres amis Ã  inviter','Du hast keine weiteren Freunde eingeladen','On avete piÃ¹ amici per invitare','Voc&amp;ecirc; j&amp;aacute; convidou todos seus amigos','Ð£ Ð’Ð°Ñ Ð½ÐµÑ‚ Ð´Ñ€ÑƒÐ·ÐµÐ¹, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ñ€Ð¸Ð³Ð»Ð°ÑÐ¸Ñ‚ÑŒ','No tienes mÃ¡s amigos que invitar...','Davet etmek artÄ±k arkadaÅŸ yok'),(555,'invite','','Invite','Ø¥Ø¯Ø¹Ùˆ','Nodigen','Invitez','Einladen','Invitare','Convidar','ÐŸÑ€Ð¸Ð³Ð»Ð°ÑÐ¸Ñ‚ÑŒ','InvitaciÃ³n','Davet etmek'),(556,'invited_page','','invited you to like ({page_name})','Ø¯Ø¹Ø§Ùƒ Ù„Ù„Ø§Ø¹Ø¬Ø§Ø¨ Ø¨Ù„ Ø§Ù„ØµÙØ­Ø© ({page_name})','u uitgenodigd om te willen ({page_name})','vous invite Ã  aimer ({page_name})','Ich mÃ¶chte dich gerne zu ({page_name}) einladen','invitato a piacere ({page_name})','Convidou voc&amp;ecirc; para curtir ({page_name})','Ð¿Ñ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÑ‚ Ð²Ð°Ð¼ Ð¾Ñ‚Ð¼ÐµÑ‚Ð¸Ñ‚ÑŒ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñƒ ({page_name}) ÐºÐ°Ðº Ð¿Ð¾Ð½Ñ€Ð°Ð²Ð¸Ð²ÑˆÑƒÑŽÑÑ','te invito para ver si te gusta ({page_name})','HoÅŸunuza davet etti ({page_name})'),(557,'accepted_invited_page','','accepted your request to like ({page_name})','Ù‚Ø¨Ù„ Ø¯Ø¹ÙˆØªÙƒ Ù„Ù„Ø¥Ø¬Ø§Ø¨ Ø¨ ({page_name})','aanvaard uw verzoek te willen ({page_name})','acceptÃ© votre demande d&#39;aimer ({page_name})','Deine Beitrittsanfrage fÃ¼r die Seite ({page_name}) wurde genehmigt','accettato la richiesta di piacere ({page_name})','aceitou sua solicita&amp;ccedil;&amp;atilde;o para curtir ({page_name})','Ð¿Ñ€Ð¸Ð½ÑÐ»@ Ð²Ð°ÑˆÐµ Ð¿Ñ€Ð¸Ð³Ð»Ð°ÑˆÐµÐ½Ð¸Ðµ Ð² ({page_name})','acepto tu invitaciÃ³n a ({page_name})','Ä°steÄŸiniz sevmeye kabul edilir ({page_name})'),(558,'call_to_action','','Call to action','Call to action','Oproep tot actie','Appel Ã  l&#39;action','Was mÃ¶chtest du tun?','Chiamare all&#039;azione','Ligar a&amp;ccedil;&amp;atilde;o','ÐŸÑ€Ð¸Ð·Ñ‹Ð² Ðº Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸ÑŽ','Llamar a la acciÃ³n','Eylem Ã§aÄŸrÄ±sÄ±'),(559,'call_to_action_target','','Call to target url','Call to target url','Bellen om url richten','Appel Ã  l&#39;URL cible','Rufe das URL-Ziel auf','Chiama per indirizzare url','Ligar a uma URL definida','Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ URL ÑÐ°Ð¹Ñ‚Ð°','Insertar url','Url hedef Ã‡aÄŸrÄ±'),(560,'call_action_type_url_invalid','','Call to action website is invalid','Call to action website is invalid','Oproep tot actie website is ongeldig','Appel Ã  l&#39;action est site de invalide','Es besteht Handlungsbedarf, Website ist ungÃ¼ltig','Chiama per il sito di azione non Ã¨ valido','Website inv&amp;aacute;lido','ÐÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ñ‹Ð¹ URL','Llamado a la pÃ¡gina web de acciÃ³n no es vÃ¡lido','Eylem web Ã‡aÄŸrÄ± geÃ§ersiz'),(561,'avatar_and_cover','','Avatar &amp; Cover','Ø§Ù„ØµÙˆØ±Ø© Ø§Ù„Ø´Ø®ØµÙŠØ© ÙˆØ§Ù„ØºÙ„Ø§Ù','Avatar &amp; Cover','Avatar &amp; Cover','Profil- und Titelbild','Avatar &amp; Coprire','Avatar &amp; Capa','ÐÐ²Ð°Ñ‚Ð°Ñ€ Ð¸ Ð¾Ð±Ð»Ð¾Ð¶ÐºÐ°','Avatar y Fondo','Avatar &amp; Kapak'),(562,'online_sidebar_admin_label','','Enable online users to show active users in sidebar.','Ù…ÙƒÙ† Ù„Ø¥Ø¸Ù‡Ø§Ø± Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ø§Ù„Ù†Ø´Ø·ÙŠÙ† ÙÙŠ Ø§Ù„Ø´Ø±ÙŠØ· Ø§Ù„Ø¬Ø§Ù†Ø¨ÙŠ.','Toelaten online gebruikers actieve gebruikers te laten zien in de zijbalk.','Permettre aux utilisateurs en ligne pour montrer aux utilisateurs actifs dans la barre latÃ©rale.','Aktivieren Internetuser zu aktiven Nutzern in Seitenleiste zeigen.','Abilita utenti per mostrare agli utenti attivi in sidebar.','Permitir que usu&amp;uacute;rios vizualizem os usu&amp;uacute;rios ativos na sidebar.','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ð¾Ð½Ð»Ð°Ð¹Ð½-Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹, Ð¿Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð°ÐºÑ‚Ð¸Ð²Ð½Ñ‹Ñ… Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹ Ð² Ð±Ð¾ÐºÐ¾Ð²Ð¾Ð¹ Ð¿Ð°Ð½ÐµÐ»Ð¸.','Permita que los usuarios en lÃ­nea para usuarios activos mostrar en la barra lateral.','Kenar Ã§ubuÄŸundaki aktif kullanÄ±cÄ±ya gÃ¶stermek iÃ§in Ã§evrimiÃ§i kullanÄ±cÄ±larÄ± etkinleÅŸtirin.'),(563,'not_active','','Not active','ØºÙŠØ± ÙØ¹Ø§Ù„','Niet actief','Pas actif','Nicht aktiv','Non attivo','NÃ£o ativo','ÐÐµ Ð°ÐºÑ‚Ð¸Ð²ÐµÐ½','No activo','Aktif deÄŸil'),(564,'females','','Females','Ø§Ù„Ø¥Ù†Ø§Ø«','Niet geactiveerd','Femmes','Frauen','Femmine','Mulheres','Ð–ÐµÐ½Ñ‰Ð¸Ð½Ñ‹','Las hembras','DiÅŸiler'),(565,'males','','Males','Ø§Ù„Ø°ÙƒÙˆØ±','Mannetjes','Les mÃ¢les','MÃ¤nnlich','Maschi','Homens','ÐœÑƒÐ¶Ñ‡Ð¸Ð½Ñ‹','Los machos','Erkekler'),(566,'dashboard','','Dashboard','Ø§Ù„Ù„ÙˆØ­Ø© Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠØ©','Dashboard','Tableau de bord','Ãœbersicht','Cruscotto','Painel','Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð°Ñ Ð¿Ð°Ð½ÐµÐ»ÑŒ','Tablero de instrumentos','Dashboard'),(567,'albums','','Albums','Ø§Ù„Ø£Ù„Ø¨ÙˆÙ…Ø§Øª','Albums','Albums','Alben','Albums','&amp;aacute;lbuns','ÐÐ»ÑŒÐ±Ð¾Ð¼Ñ‹','Ãlbumes','AlbÃ¼mler'),(568,'name','','Name','Ø§Ù„Ø¥Ø³Ù…','Naam','PrÃ©nom','Name','Nome','Nome','Ð˜Ð¼Ñ','Nombre','Isim'),(569,'players','','Players','Ø§Ù„Ù„Ø§Ø¹Ø¨ÙŠÙ†','Spelers','Des joueurs','Spieler','Giocatori','Jogadores','Ð˜Ð³Ñ€Ð¾ÐºÐ¸','Jugadores','Oyuncular'),(570,'add_new_game','','Add New Game','Ø¥Ø¶Ø§ÙØ© Ù„Ø¹Ø¨Ø© Ø¬Ø¯ÙŠØ¯Ø©','Voeg een nieuwe game','Ajouter un nouveau jeu','Neues Spiel hinzufÃ¼gen','Aggiungi nuovo gioco','Adicionar um novo jogo','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð½Ð¾Ð²ÑƒÑŽ Ð¸Ð³Ñ€Ñƒ','AÃ±adir Nuevo Juego','Yeni Oyun Ekle'),(571,'game_added','','Game added','ØªÙ… Ø§Ù„Ø¥Ø¶Ø§ÙØ© Ø¨Ù†Ø¬Ø§Ø­','Spel toegevoegd','jeu ajoutÃ©','Spiel hinzugefÃ¼gt','Gioco aggiunto','Jogo adicionado','Ð˜Ð³Ñ€Ð° Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð°','Juego aÃ±adiÃ³','Oyun eklendi'),(572,'url_not_supported_game','','This url is not supported','Ù‡Ø°Ø§ Ø§Ù„Ø±Ø§Ø¨Ø· ØºÙŠØ± Ù…Ø¯Ø¹ÙˆÙ…','Deze url wordt niet ondersteund','Cet URL est pas pris en charge','Diese URL wird nicht unterstÃ¼tzt','Questo URL non Ã¨ supportata','URL inv&amp;aacute;lida','Ð­Ñ‚Ð¾Ñ‚ URL-Ð°Ð´Ñ€ÐµÑ Ð½Ðµ Ð¿Ð¾Ð´Ð´ÐµÑ€Ð¶Ð¸Ð²Ð°ÐµÑ‚ÑÑ','Esta url no es compatible','Bu url desteklenmiyor'),(573,'please_add_a_game','','Please add a game url','ÙŠØ±Ø¬Ù‰ Ø¥Ø¶Ø§ÙØ© Ø±Ø§Ø¨Ø· Ù„Ø¹Ø¨Ø©','Voeg dan een spel url','S&#39;il vous plaÃ®t ajouter une url de jeu','Bitte fÃ¼ge ein Spiel hinzu','Si prega di aggiungere un URL di gioco','Please add a game url','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð´Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ Ð¸Ð³Ñ€Ñƒ URL','Por favor, aÃ±ada una url juego','Bir oyun url ekleyin'),(574,'active_announcements','','Active announcements','Ø¥Ø¹Ù„Ø§Ù†Ø§Øª Ù†Ø´Ø·Ø©','actieve aankondigingen','Annonces actives','Aktive AnkÃ¼ndigungen','Annunci attivi','Avisos ativos','ÐÐºÑ‚Ð¸Ð²Ð½Ñ‹Ðµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ñ','Anuncios activos','Aktif duyurular'),(575,'inactive_announcements','','Inactive announcements','Ø¥Ø¹Ù„Ø§Ù†Ø§Øª ØºÙŠØ± Ù†Ø´Ø·Ø©','inactief aankondigingen','Annonces inactifs','Inaktive AnkÃ¼ndigungen','Annunci inattivi','Avisos in&amp;aacute;tivos','ÐÐµÐ°ÐºÑ‚Ð¸Ð²Ð½Ñ‹Ðµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ñ','Anuncios inactivos','Etkin olmayan duyurular'),(576,'ban','','Ban','Ø­Ø¸Ø±','Ban','Ban','Verbot','Bandire','Ban','Ð—Ð°Ð¿Ñ€ÐµÑ‚','ProhibiciÃ³n','Yasak'),(577,'new_email','','New E-mail','Ø±Ø³Ø§Ù„Ø© Ø¬Ø¯ÙŠØ¯Ø©','Nieuwe E-mail','Nouveau E-mail','Neue Email','Nuova Email','Novo e-mail','ÐÐ¾Ð²Ñ‹Ð¹ E-mail','Nuevo Email','Yeni e-posta'),(578,'html_allowed','','Html allowed','Ø§Ù„ html Ù…Ø³Ù…ÙˆØ­','Html toegestaan','HTML autorisÃ©e','HTML erlaubt','Html permesso','HTML permitida','HTML Ñ€Ð°Ð·Ñ€ÐµÑˆÐµÐ½Ð¾','Html permitido','Html izin'),(579,'send_me_to_my_email','','Send to my email','Ø§Ø±Ø³Ù„ Ø§Ù„Ù‰ Ø¨Ø±ÙŠØ¯ÙŠ Ø§Ù„Ø§Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','Stuur naar mijn e-mail','Envoyer Ã  mon e-mail','An meine Emailadresse senden','Invia alla mia email','Enviar para o meu email','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ Ð½Ð° Ð¼Ð¾ÑŽ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½ÑƒÑŽ Ð¿Ð¾Ñ‡Ñ‚Ñƒ','Enviar a mi correo electrÃ³nico','Benim e-posta gÃ¶nder'),(580,'test_message','','Test message','Ø¬Ø±Ø¨ Ø§Ù„Ø±Ø§Ø³Ù„Ø© Ø£ÙˆÙ„Ø§','Test bericht','Message test','Testnachricht','Messaggio di testo','Mensagem teste','Ð¢ÐµÑÑ‚Ð¾Ð²Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Mensaje de prueba','Deney mesajÄ±'),(581,'joined_members','','Joined Members','Ø§Ù„Ø£Ø¹Ø¶Ø§Ø¡','Toegetreden leden','Membres Inscrit','Registrierte Mitglieder','Iscritto membri','Membros','Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹','Miembros AntigÃ¼edad','KatÄ±lÄ±m Ãœyeler'),(582,'join_requests','','Join Requests','Ø·Ù„Ø¨Ø§Øª Ø§Ù„Ø¥Ù†Ø¶Ù…Ø§Ù…','Join Verzoeken','Rejoignez Demandes','Registrierte Anfragen','Join Richieste','Pedidos para entrar','Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ Ð·Ð°Ð¿Ñ€Ð¾ÑÐ¾Ð²','Ãšnete Solicitudes','Ä°stekler katÄ±lÄ±n'),(583,'verified_pages','','Verified Pages','Ø§Ù„ØµÙØ­Ø§ØªØ§Ù„Ø¤ÙƒØ¯Ø©','Verified Pages','Pages VÃ©rifiÃ©','Verifizierte Seiten','Verificato Pagine','P&amp;aacute;ginas verificadas','ÐžÑ„Ð¸Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','Verificado PÃ¡ginas','DoÄŸrulanmÄ±ÅŸ Sayfalar'),(584,'file_sharing_extenstions','','File sharing extensions (separated with comma,)','Ù…Ù„Ø­Ù‚Ø§Øª ØªØ¨Ø§Ø¯Ù„ Ø§Ù„Ù…Ù„ÙØ§Øª (Ù…ÙØµÙˆÙ„Ø© Ø¨ÙØ§ØµÙ„Ø©ØŒ)','Sharing bestandsextensies (gescheiden met een komma,)','','Daten-Transfer-Erweiterungen (mit Komma getrennt,)','Estensioni di file sharing (separati da una virgola,)','Compartilhar arquivos (separados por uma v&amp;iacute;rgula,)','Ð Ð°ÑÑˆÐ¸Ñ€ÐµÐ½Ð¸Ñ Ð¾Ð±Ð¼ÐµÐ½Ð° Ñ„Ð°Ð¹Ð»Ð¾Ð² (Ñ‡ÐµÑ€ÐµÐ· Ð·Ð°Ð¿ÑÑ‚ÑƒÑŽ,)','Extensiones de intercambio de archivos (separados con comas,)','Dosya paylaÅŸÄ±mÄ± uzantÄ±larÄ± (virgÃ¼l ile ayrÄ±lmÄ±ÅŸ)'),(585,'word_cons','','Words to be censored, separated by a comma (,)','ÙƒÙ„Ù…Ø§Øª Ø§Ù„Ø¨Ø°ÙŠØ¦Ø©ØŒ Ù…ÙØµÙˆÙ„Ø© Ø¨ÙØ§ØµÙ„Ø© (ØŒ)','Woorden worden gecensureerd, gescheiden door een komma (,)','Partage de fichiers extensions (sÃ©parÃ©es par des virgules,)','Zensierte Worte mit einem Komma trennen, (,)','Parole da censurati, separati da una virgola (,)','Palavras censuradas, separadas por v&amp;iacute;rgula (,)','Ð¡Ð»Ð¾Ð²Ð° Ð¿Ð¾Ð´Ð²ÐµÑ€Ð³Ð°Ñ‚ÑŒÑÑ Ñ†ÐµÐ½Ð·ÑƒÑ€Ðµ, Ñ€Ð°Ð·Ð´ÐµÐ»ÐµÐ½Ð½Ñ‹Ñ… Ð·Ð°Ð¿ÑÑ‚Ñ‹Ð¼Ð¸ (,)','Palabras para ser censurados, separados por una coma (,)','Kelimeler sansÃ¼r edilmesi, virgÃ¼lle ayrÄ±lmÄ±ÅŸ (,)'),(586,'join','','Join','Ø£Ù†Ø¶Ù…','Toetreden','Joindre','Beitreten','Aderire','Entrar','Ð’ÑÑ‚ÑƒÐ¿Ð¸Ñ‚ÑŒ','Unirse','KatÄ±lmak'),(587,'joined','','Joined','Ù…Ù†Ø¶Ù…','Geregistreerd','Inscrit','Beigetreten','Iscritto','Entrou','Ð’Ñ‹Ð¹Ñ‚Ð¸','Unido','KatÄ±lÄ±m'),(588,'request','','Request','Ø§Ø·Ù„Ø¨','Verzoek','Demande','Anfordern','Richiesta','Solicitar','Ð—Ð°Ð¿Ñ€Ð¾Ñ','PeticiÃ³n','Ä°stek'),(589,'edit_comment','','Edit comment','ØªØ­Ø±ÙŠØ± ØªØ¹Ù„ÙŠÙ‚','Reactie bewerken','Modifier commentaire','Kommentar bearbeiten','Modifica commento','Editar coment&amp;aacute;rio','Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','Editar comentario','DÃ¼zenleme Yorum'),(590,'last_play','','Last Play:','Ø¢Ø®Ø± Ù†Ø´Ø§Ø·','Laatste Play:','DerniÃ¨re lecture:','Letztes Spiel:','Ultimo Gioco:','&amp;uacute;ltimo jogo:','ÐŸÐ¾ÑÐ»ÐµÐ´Ð½ÑÑ Ð¸Ð³Ñ€Ð°:','Ãšltimo juego:','Son Oyun:'),(591,'play','','Play','Ø§Ù„Ø¹Ø¨','Spelen','Joue','Spielen','Giocare','Jogar','Ð˜Ð³Ñ€Ð°Ñ‚ÑŒ','Jugar','Oyna'),(592,'confirm_request_group_privacy_label','','Confirm request when someone joining this group ?','Ø¥Ø±Ø³Ø§Ù„ Ø·Ù„Ø¨ Ø¹Ù†Ø¯Ù…Ø§ ÙŠÙ‚ÙˆÙ… Ø´Ø®Øµ Ø¨Ù„ Ø§Ù„Ø¥Ù†Ø¶Ù…Ø§Ù… Ù„Ù‡Ø°Ù‡ Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©ØŸ','Bevestigt aanvraag als iemand mee deze groep?','Confirmer la demande lorsque quelqu&#39;un se joindre Ã  ce groupe?','Anfrage bestÃ¤tigen, wenn jemand dieser Gruppe beitreten will?','Confermare richiesta quando qualcuno entrare in questo gruppo ?','Confirmar solicita&amp;ccedil;&amp;atilde;o quando algu&amp;eacute;m quiser fazer parte do grupo ?','ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´Ð°Ñ‚ÑŒ Ð·Ð°Ð¿Ñ€Ð¾Ñ ÐºÐ¾Ð³Ð´Ð°, ÐºÑ‚Ð¾-Ñ‚Ð¾ Ñ…Ð¾Ñ‡ÐµÑ‚ Ð¿Ñ€Ð¸ÑÐ¾ÐµÐ´Ð¸Ð½Ð¸Ñ‚ÑŒÑÑ Ðº ÑÑ‚Ð¾Ð¹ Ð³Ñ€ÑƒÐ¿Ð¿Ðµ?','Confirmar pedido cuando alguien unirse a este grupo?','Birisi bu gruba katÄ±lmadan isteÄŸi onaylayÄ±n?'),(593,'who_can_see_group_posts','','Who can see group&#039;s posts ?','Who can see group&#039;s posts ?','Wie kan groepen berichten zien?','Qui peut voir des groupes messages?','Wer kann GruppenbeitrÃ¤ge sehen?','Chi puÃ² vedere gruppi di messaggi?','Quem pode ver os posts do grupo ?','ÐšÑ‚Ð¾ Ð¼Ð¾Ð¶ÐµÑ‚ Ð²Ð¸Ð´ÐµÑ‚ÑŒ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹?','Â¿QuiÃ©n puede ver los mensajes de este grupo?','Kim grubun mesajlarÄ± gÃ¶rebilirim?'),(594,'joined_users','','Joined users','Ø§Ù„Ø£Ø¹Ø´Ø§Ø¡ Ø§Ù„Ù…Ù†Ø¶Ù…ÙŠÙ†','Geregistreerd gebruikers','Inscrit utilisateurs','Registriert Nutzer','Iscritto utenti','Usu&amp;uacute;rios','Ð’ÑÑ‚ÑƒÐ¿Ð¸Ð²ÑˆÐ¸Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸','Usuarios AntigÃ¼edad','KatÄ±lÄ±m kullanÄ±cÄ±lar'),(595,'living_in','','Living in','ÙŠØ³ÙƒÙ† ÙÙŠ','Leven in','Vivre dans','Lebt in','Residente a','Morando em','Ð¡Ñ‚Ñ€Ð°Ð½Ð°','Viviendo en','YaÅŸayan'),(596,'design','','Design','ØªØµÙ…ÙŠÙ…','Design','Design','Design','Design','Design','Ð´Ð¸Ð·Ð°Ð¹Ð½','DesiÃ±o','Dizayn'),(597,'people_you_may_want_to_meet','','People you may want to meet','PØ£Ø¹Ø¶Ø§Ø¡ Ù‚Ø¯ ØªØ±ØºÙ„ ÙÙŠ Ù„Ù‚Ø§Ø¦Ù‡Ù…','Mensen die je misschien wilt ontmoeten','Les personnes que vous pouvez rencontrer','Vielleicht kennst du','La gente si consiglia di rispettare','Pessoas que voc&amp;ecirc; talvez conhe&amp;ccedil;a','Ð›ÑŽÐ´Ð¸, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ñ… Ð²Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð·Ð½Ð°Ñ‚ÑŒ','La gente es posible que desee conocer','Ä°nsanlar karÅŸÄ±lamak isteyebilirsiniz'),(598,'added_new_photos_to','','added new photos to','Ø£Ø¶Ø§Ù ØµÙˆØ± Ø¬Ø¯ÙŠØ¯Ø© Ø§Ù„Ù‰','Toegevoegd nieuwe foto&#039;s aan','ajoutÃ©s nouvelles photos Ã ','hat neue Fotos hinzugefÃ¼gt','aggiunte nuove foto','adicionou novas fotos','Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ð½Ð¾Ð²Ñ‹Ðµ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸Ð¸ Ð²','aÃ±adido nuevas fotos a','eklenen yeni fotoÄŸraf'),(599,'is_feeling','','is feeling','ÙŠØ´Ø¹Ø± Ø¨','is het gevoel','est le sentiment','ist','Ã¨ la sensazione','se sentindo','ÑÑ‚Ð¾ Ñ‡ÑƒÐ²ÑÑ‚Ð²Ð¾','es la sensaciÃ³n','duygu olduÄŸunu'),(600,'is_traveling','','is traveling to','ÙŠØ³Ø§ÙØ± Ø¥Ù„Ù‰','is reizen naar','se rend Ã ','ist auf Reisen','Ã¨ un viaggio in','viajando para','ÐµÐ´ÐµÑ‚ Ð²','estÃ¡ viajando a','iÃ§in seyahat ediyor'),(601,'is_listening','','is listening to','ÙŠØ³ØªÙ…Ø¹ Ø¥Ù„Ù‰','luistert naar','Ã©coute','hÃ¶rt zu','Ã¨ l&#039;ascolto','ouvindo','ÑÐ»ÑƒÑˆÐ°ÐµÑ‚','estÃ¡ escuchando','dinliyor'),(602,'is_playing','','is playing','ÙŠÙ„Ø¹Ø¨ Ø¨','speelt','est en train de jouer','spielt','sta giocando','jogando','Ð¸Ð³Ñ€Ð°ÐµÑ‚','estÃ¡ jugando','oynuyor'),(603,'is_watching','','is watching','ÙŠØ´Ø§Ù‡Ø¯','is aan het kijken','regarde','beobachtet','sta guardando','assistindo','ÑÐ¼Ð¾Ñ‚Ñ€Ð¸Ñ‚','esta viendo','izliyor'),(604,'feeling','','Feeling','ÙŠØ´Ø¹Ø±','Gevoel','Sentiment','GefÃ¼hl','Sensazione','Sentindo','ÐÐ°ÑÑ‚Ñ€Ð¾ÐµÐ½Ð¸Ðµ','SensaciÃ³n','Duygu'),(605,'traveling','','Traveling to','ÙŠØ³Ø§ÙØ±','Reizen naar','Voyager Ã ','Reisen','In viaggio verso','Viajando para','ÐŸÑƒÑ‚ÐµÑˆÐµÑÑ‚Ð²ÑƒÑŽ','Viajando a','Seyahat'),(606,'watching','','Watching','ÙŠØ´Ø§Ù‡Ø¯','Kijken','En train de regarder','Ansehen','Guardando','Assistindo','Ð¡Ð¼Ð¾Ñ‚Ñ€ÑŽ','Acecho','Ä°zlenen'),(607,'playing','','Playing','ÙŠÙ„Ø¹Ø¨','Spelen','En jouant','Spielend','Giocando','Jogando','Ð˜Ð³Ñ€Ð°ÑŽ','Jugando','Oynama'),(608,'listening','','Listening to','ÙŠØ³ØªÙ…Ø¹ Ø¥Ù„Ù‰','Luisteren naar','Ã‰couter','HÃ¶ren','Ascoltare','ouvindo','Ð¡Ð»ÑƒÑˆÐ°ÑŽ','Escuchar','Dinliyorum'),(609,'feeling_q','','What are you feeling ?','Ø¨Ù…Ø§Ø°Ø§ ØªØ¹Ø´Ø±ØŸ','Wat voel je ?','Que ressentez vous ?','Was fÃ¼hlst du ?','Cosa senti ?','Como voc&amp;ecirc; esta se sentindo ?','Ð§Ñ‚Ð¾ Ñ‡ÑƒÐ²ÑÑ‚Ð²ÑƒÐµÑ‚Ðµ?','Que estÃ¡s sintiendo ?','Ne hissediyorsun ?'),(610,'traveling_q','','Where are you traveling ?','Ø§Ù„Ù‰ Ø£ÙŠÙ† ØªØ³Ø§ÙØ±','Waar wilt u verblijven?','OÃ¹ Ãªtes-vous?','Wohin mÃ¶chtest du reisen?','Dove si viaggia ?','Para onde esta viajando ?','ÐšÑƒÐ´Ð° ÐµÐ´Ð¸Ñ‚Ðµ?','A donde viajas ?','Nereye seyahat?'),(611,'watching_q','','What are you watching ?','Ù…Ø§Ø°Ø§ ØªØ´Ø§Ù‡Ø¯ØŸ','Waar ben je naar aan het kijken ?','Qu&#39;est-ce que vous regardez ?','Was schaust Du ?','Cosa stai guardando ?','O que esta assistindo ?','Ð§Ñ‚Ð¾ ÑÐ¼Ð¾Ñ‚Ñ€Ð¸ÑˆÑŒ?','QuÃ© estÃ¡s viendo ?','Ne izliyorsun ?'),(612,'playing_q','','What are you Playing ?','Ù…Ø§Ø°Ø§ ØªÙ„Ø¹Ø¨ØŸ','Wat ben je aan het spelen ?','A quoi tu joues ?','Was spielst du ?','A cosa stai giocando ?','O que esta jogando ?','Ð’Ð¾ Ñ‡Ñ‚Ð¾ Ð¸Ð³Ñ€Ð°ÐµÑˆÑŒ?','Â¿A quÃ© juegas?','Ne oynuyorsun ?'),(613,'listening_q','','What are you Listening to ?','Ø¥Ù„Ù‰ Ù…Ø§Ø°Ø§ ØªØ³ØªÙ…Ø¹ØŸ','Waar ben je naar aan het luisteren ?','Qu&#39;Ã©coutes-tu ?','Was hÃ¶rst du ?','Cosa stai ascoltando ?','O que esta ouvindo ?','Ð§Ñ‚Ð¾ ÑÐ»ÑƒÑˆÐ°ÐµÑˆÑŒ?','QuÃ© estÃ¡s escuchando ?','Ne dinliyorsun ?'),(614,'feel_d','','What are you doing ?','Ù…Ø§Ø°Ø§ ØªØºØ¹Ù„ØŸ','Wat ben je aan het doen ?','Qu&#39;est-ce que tu fais ?','Was machst Du?','Che stai facendo?','O que esta fazendo ?','Ð§Ñ‚Ð¾ Ð´ÐµÐ»Ð°ÐµÑ‚Ðµ?','Que estas haciendo ?','Ne yapÄ±yorsun ?'),(615,'studying_at','','Studying at','ÙŠØ¯Ø±Ø³ ÙÙŠ','Studeren aan','Etudier Ã ','Studiert an','Studiare a','Estudando em','ÐžÐ±Ñ€Ð°Ð·Ð¾Ð²Ð°Ð½Ð¸Ðµ','Estudiando en','Ã–ÄŸrenim'),(616,'company_website_invalid','','Company website is invalid','Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø´Ø±ÙƒØ© ØºÙŠØ± ØµØ§Ù„Ø­','Website van het bedrijf is ongeldig','Site de la sociÃ©tÃ© est invalide','Unternehmens-Website ist ungÃ¼ltig','Sito internet della SocietÃ  non Ã¨ valido','Site da empresa inv&amp;aacute;lido','Ð’ÐµÐ±-ÑÐ°Ð¹Ñ‚ ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ð¸ ÑÐ²Ð»ÑÐµÑ‚ÑÑ Ð½ÐµÐ´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¼','PÃ¡gina web de la empresa no es vÃ¡lido','Åžirket web sitesi geÃ§ersiz'),(617,'page_deleted','','Page deleted successfully','Ø§Ù„ØµÙØ­Ø© Ø­Ø°ÙØª Ø¨Ù†Ø¬Ø§Ø­','Pagina succesvol verwijderd','Page supprimÃ©e avec succÃ¨s','Seite erfolgreich gelÃ¶scht','Pagina eliminato con successo','P&amp;aacute;gina deletada','Ð¡Ñ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑƒÐ´Ð°Ð»ÐµÐ½Ð°','PÃ¡gina eliminado correctamente','Sayfa baÅŸarÄ±yla silindi'),(618,'cover_n_label','','cover image.','ØµÙˆØ±Ø© Ø§Ù„ØºÙ„Ø§Ù.','Bedekken afbeelding.','Image de couverture.','Titelbild.','immagine di copertina.','Capa.','Ð¾Ð±Ð»Ð¾Ð¶ÐºÐ°.','Imagen de portada.','Kapak resmi.'),(619,'suggested_groups','','Suggested groups','Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø§Øª Ø§Ù„Ù…Ù‚ØªØ±Ø­Ø©','Voorgestelde groepen','Groupes suggÃ©rÃ©s','Vorgeschlagene Gruppen','Gruppi suggeriti','Grupos sugeridos','Ð ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÐ¼Ñ‹Ðµ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','Grupos sugeridos','Ã–nerilen gruplar'),(620,'accepted_join_request','','accepted your request to join ({group_name})','Ù‚Ø¨Ù„ Ø·Ù„Ø¨ Ù„Ù„Ø¥Ù†Ø¶Ù…Ø§Ù… Ø§Ù„Ù‰ ({group_name})','aanvaard uw verzoek om lid te worden ({group_name})','acceptÃ© votre demande d&#39;adhÃ©sion ({group_name})','Deine Beitrittsanfrage wurde akzeptiert ({group_name})','accettato tua richiesta di iscrizione ({group_name})','aceitou sua solicita&amp;ccedil;&amp;atilde;o para se juntar ao ({group_name})','Ð—Ð°Ð¿Ñ€Ð¾Ñ Ð¿Ñ€Ð¸Ð½ÑÑ‚ Ð½Ð° Ð²ÑÑ‚ÑƒÐ¿Ð»ÐµÐ½Ð¸Ðµ Ð² ({group_name})','aceptÃ³ su solicitud para unirse ({group_name})','Ä°steÄŸiniz katÄ±lmak iÃ§in kabul edilir ({group_name})'),(621,'requested_to_join_group','','requested to join your group','Ø·Ù„Ø¨ Ù…Ù†Ùƒ Ø§Ù„Ø¥Ù†Ø¶Ù…Ø§Ù… Ø§Ù„Ù‰ Ù…Ø¬Ù…ÙˆØ¹ØªÙƒ','verzocht om uw groep aan te sluiten','demandÃ© Ã  rejoindre votre groupe','lÃ¤dt dich ein, dieser Gruppe beizutreten','richiesto di unirsi al vostro gruppo','pediu para entrar no seu grupo','Ñ…Ð¾Ñ‡ÐµÑ‚ Ð¿Ñ€Ð¸ÑÐ¾ÐµÐ´Ð¸Ð½Ð¸Ñ‚ÑŒÑÑ Ðº Ð²Ð°ÑˆÐµÐ¹ Ð³Ñ€ÑƒÐ¿Ð¿Ðµ','solicitado a unirse a su grupo','senin gruba katÄ±lmak istedi'),(622,'no_one_posted','','No posts to show','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø§ÙŠ Ù…Ù†Ø´ÙˆØ± Ø¨Ø¹Ø¯','Maar niemand geplaatst','Personne encore postÃ©','Doch niemand geschrieben','Nessuno ha scritto ancora','Nenhum post ainda','Ð•Ñ‰Ðµ Ð½Ð¸Ñ‡ÐµÐ³Ð¾ Ð½Ðµ Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð½Ð¾','Nadie ha escrito todavÃ­a','HenÃ¼z hiÃ§ kimse gÃ¶nderildi'),(623,'add_your_frineds','','Add your friends to this group','Ø¥Ø¶Ø§ÙØ© Ø£ØµØ¯Ù‚Ø§Ø¦Ùƒ Ø¥Ù„Ù‰ Ù‡Ø°Ù‡ Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Voeg uw vrienden aan deze groep','Ajouter Ã  vos amis de ce groupe','FÃ¼ge deine Freunde zu dieser Gruppe hinzu','Aggiungi ai tuoi amici di questo gruppo','Adicionar amigos Ã  este grupo','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð´Ñ€ÑƒÐ·ÐµÐ¹ Ð² ÑÑ‚Ñƒ Ð³Ñ€ÑƒÐ¿Ð¿Ñƒ','AÃ±adir amigos a este grupo','Bu gruba arkadaÅŸlarÄ±nÄ±zÄ± ekleyin'),(624,'added_all_friends','','There are no friends to add them','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø£ØµØ¯Ù‚Ø§Ø¡ Ù„Ù„Ø¥Ø¶Ø§ÙØ©','Er zijn geen vrienden om ze toe te voegen','Il n&#39;y a aucun ami Ã  les ajouter','Es gibt keine Freunde, um sie hinzuzufÃ¼gen','Non ci sono amici da aggiungere loro','Nenhum amigo dispon&amp;iacute;vel para ser adicionado','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð²ÑÐµÑ… Ð´Ñ€ÑƒÐ·ÐµÐ¹','No hay amigos para agregarlos','Eklemek iÃ§in hiÃ§bir arkadaÅŸ yok'),(625,'added_you_to_group','','added you to the group ({group_name})','Ø£Ø¶Ø§ÙÙƒ Ø§Ù„Ù‰ Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø© ({group_name})','u hebt toegevoegd aan de groep ({group_name})','vous ajoutÃ© au groupe ({group_name})','hat dich zur Gruppe ({group_name}) hinzugefÃ¼gt','ti ha aggiunto al gruppo ({group_name})','adicionado ao grupo ({group_name})','Ð´Ð¾Ð±Ð°Ð²Ð¸Ð»@ Ð²Ð°Ñ Ð² Ð³Ñ€ÑƒÐ¿Ð¿Ñƒ ({group_name})','te agrego al grupo ({group_name})','sizi grubuna ekledi ({group_name})'),(626,'group_type','','Group type','Ù†ÙˆØ¹ Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','groepstype','Type de groupe','Gruppentyp','Tipo di gruppo','Estilo do Grupo','Ð¢Ð¸Ð¿ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','Tipo de grupo','Grup tÃ¼rÃ¼'),(627,'public','','Public','Ø¹Ø§Ù…','Openbaar','Public','Ã–ffentlichkeit','Pubblico','P&amp;uacute;blico','ÐžÑ‚ÐºÑ€Ñ‹Ñ‚Ð°Ñ Ð³Ñ€ÑƒÐ¿Ð¿Ð°','PÃºblico','Kamu'),(628,'private','','Private','Ø®Ø§Øµ','Private','PrivÃ©','Privat','Privato','Privado','Ð—Ð°ÐºÑ€Ñ‹Ñ‚Ð°Ñ Ð³Ñ€ÑƒÐ¿Ð¿Ð°','Privado','Ã–zel'),(629,'reports','','Reports','Ø§Ù„Ø¥Ø¨Ù„Ø§ØºØ§Øª','Rapporten','Rapports','Meldungen','Rapporti','Reportes','ÐžÑ‚Ñ‡ÐµÑ‚Ñ‹','Informes','Raporlar'),(630,'no_dislikes','','No dislikes yet','Ù„Ø§ ÙŠÙˆØ¬Ø¯ ØºÙŠØ± Ù…Ø¹Ø¬Ø¨ÙŠÙ†','nog geen hekel','Pas encore aversions','Keiner dem das nicht gefÃ¤llt','Non hai ancora un antipatie','Nenhum dislike ainda','ÐŸÐ¾ÐºÐ° Ð½ÐµÑ‚ &quot;ÐÐµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ&quot;','Sin embargo no le gusta','HenÃ¼z sevmeyen'),(631,'disliked','','Disliked','ØºÙŠØ± Ù…Ø¹Ø¬Ø¨','Bevallen','N&#39;a pas aimÃ©','unbeliebt','Malvisto','N&amp;atilde;o curtiu','ÐÐµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ','No me gustÃ³','SevmediÄŸi'),(632,'wondered','','Wondered','Ù…ØªØ¹Ø¬Ø¨','Afgevraagd','DemandÃ©','Verwundert','Si chiese','N&amp;atilde;o curtiu','ÐÐµ Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑÑ','Se preguntÃ³','Merak eti'),(633,'terms','','Terms Pages','ØµÙØ­Ø§Øª Ø§Ù„Ù…ÙˆÙ‚Ø¹','Algemene Pagina','Conditions Pages','Allgemeine Seiten','Condizioni Pagine','Termos','ÐŸÑ€Ð°Ð²Ð¸Ð»Ð° Ð¸ ÑƒÑÐ»Ð¾Ð²Ð¸Ñ','Condiciones PÃ¡ginas','Åžartlar Sayfalar'),(634,'profile_privacy','','User Profile Privacy','Ø®ØµÙˆØµÙŠØ© Ø§Ù„Ø­Ø³Ø§Ø¨ Ø§Ù„Ø´Ø®ØµÙŠ','User Profile Privacy','Profil de confidentialitÃ©','Benutzerprofil Datenschutz','Profilo Utente Privacy','Privacidade do perfil','ÐŸÑ€Ð¾Ñ„Ð¸Ð»ÑŒ ÐºÐ¾Ð½Ñ„Ð¸Ð´ÐµÐ½Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾ÑÑ‚Ð¸','Perfil de usuario de Privacidad','KullanÄ±cÄ± Profili Gizlilik'),(635,'profile_privacy_info','','Enable it to allow non logged users to view users profiles.','Ù…ÙƒÙ† Ù‡Ø°Ù‡ Ø§Ù„Ù…ÙŠØ²Ø© Ù„Ù„Ø³Ù…Ø§Ø­ Ø¨Ø¹Ø±Ø¶ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ù„ØºÙŠØ± Ø§Ù„Ù…Ø³Ø¬Ù„ÙŠÙ†.','In staat stellen om niet-aangemelde gebruikers gebruikers profielen te bekijken.','Activer qu&#39;il permette non connectÃ© aux utilisateurs de voir les profils des utilisateurs.','Aktivieren Sie es, damit nicht angemeldete Benutzer, um Benutzer Profile anzusehen.','Consentirle di consentire agli utenti non registrati di visualizzare profili utenti.','Permitir usu&amp;uacute;rios que N&amp;atilde;o est&amp;ccedil;o logados de ver os perfils.','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚Ðµ ÐµÐ³Ð¾, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð½Ðµ ÑÐ²Ð»ÑÑŽÑ‰Ð¸Ñ…ÑÑ Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸ Ð´Ð»Ñ Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€Ð° Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹.','Activar para permitir que los usuarios no iniciar sesiÃ³n para ver los perfiles de los usuarios.','Olmayan aÃ§mÄ±ÅŸ olan kullanÄ±cÄ±lar profillerini gÃ¶rÃ¼ntÃ¼lemek iÃ§in izin iÃ§in etkinleÅŸtirin.'),(636,'video_upload','','Video Upload','Ø±ÙØ¹ Ø§Ù„ÙÙŠØ¯ÙŠÙˆ','Video uploaden','Video Upload','Video hochladen','Carica video','Carregar v&amp;iacute;deo','Ð’Ð¸Ð´ÐµÐ¾ Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ','VÃ­deo Subir','Video YÃ¼kleme'),(637,'video_upload_info','','Enable video upload to share &amp; upload videos to the site.','Ù…ÙƒÙ† Ù‡Ø°Ù‡ Ø§Ù„Ù…ÙŠØ²Ø©  Ù„ØªØ­Ù…ÙŠÙ„ ÙˆØªØ¨Ø§Ø¯Ù„ Ø§Ù„ÙÙŠØ¯ÙŠÙˆ Ø¹Ù„Ù‰ Ø§Ù„Ù…ÙˆÙ‚Ø¹.','Enable video uploaden om te delen en video&#039;s uploaden naar de site.','Activer tÃ©lÃ©charger la vidÃ©o pour partager et tÃ©lÃ©charger des vidÃ©os sur le site.','Aktivieren Sie Video-Upload zu teilen und Videos auf der Website.','Abilita video upload per condividere e caricare i video al sito.','Carregar v&amp;iacute;deo e compartilhar ele no site.','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ð²Ð¸Ð´ÐµÐ¾ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐ¸, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ñ€Ð°Ð·Ð´ÐµÐ»Ð¸Ñ‚ÑŒ Ð¸ Ð·Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð²Ð¸Ð´ÐµÐ¾ Ð½Ð° ÑÐ°Ð¹Ñ‚.','Habilitar subida de vÃ­deo para compartir y subir videos al sitio.','PaylaÅŸmak ve siteye video yÃ¼klemek iÃ§in video upload etkinleÅŸtirin.'),(638,'audio_upload','','Audio Upload','Ø±ÙØ¹ Ø§Ù„Ù…ÙˆØ³ÙŠÙ‚Ù‰','Audio uploaden','Audio Upload','Audio hochladen','Audio Upload','Carregar audio','ÐÑƒÐ´Ð¸Ð¾ Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ','Audio Subir','Ses YÃ¼kleme'),(639,'audio_upload_info','','Enable audio upload to share &amp; upload sounds to the site.','Ù…ÙƒÙ† Ù‡Ø°Ù‡ Ø§Ù„Ù…ÙŠØ²Ø©  Ù„ØªØ­Ù…ÙŠÙ„ ÙˆØªØ¨Ø§Ø¯Ù„ Ø§Ù„ØµÙˆØªÙŠØ§Øª Ø¹Ù„Ù‰ Ø§Ù„Ù…ÙˆÙ‚Ø¹.','Enable audio uploaden om te delen en uploaden geluiden naar de site.','Activer audio upload pour partager et tÃ©lÃ©charger des sons sur le site.','Aktivieren Sie Audio-Upload zu teilen und Upload-Sounds auf der Website.','Abilita audio upload per condividere e caricare i suoni al sito.','Carregar audios e compartilhar no site.','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ð°ÑƒÐ´Ð¸Ð¾ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐ¸, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ñ€Ð°Ð·Ð´ÐµÐ»Ð¸Ñ‚ÑŒ Ð¸ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐ¸ Ð·Ð²ÑƒÑ‡Ð¸Ñ‚ Ð½Ð° ÑÐ°Ð¹Ñ‚.','Habilitar audio upload compartir y cargar suena al sitio.','PaylaÅŸmak ses yÃ¼kleme etkinleÅŸtirin ve upload sitesine geliyor.'),(640,'read_more','','Read more','Ø§Ù„Ù…Ø²ÙŠØ¯ ..','Lees Meer..','En lire plus..','Weiterlesen','Leggi di piÃ¹..','Ler mais','ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð¿Ð¾Ð»Ð½Ð¾ÑÑ‚ÑŒÑŽ...','Lee mas..','Daha fazla..'),(641,'read_less','','Read less','Ø£Ø®ÙØ§Ø¡ ..','Lees Minder..','Lire moins..','Weniger lesen','Leggi meno..','Ler menos','Ð¡Ð²ÐµÑ€Ð½ÑƒÑ‚ÑŒ...','Cerrar..','Az Oku..'),(642,'add_photo','','Add a photo.','Ø£Ø¶ÙÙ ØµÙˆØ±Ø©.','Voeg een foto toe.','Ajouter une photo.','FÃ¼ge ein Bild hinzu.','Aggiungi una foto.','Adicionar foto.','Ð”Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸ÑŽ.','AÃ±ade una foto.','Bir fotoÄŸraf ekle.'),(643,'add_photo_des','','Show your unique personality and style.','Ø£Ø¸Ù‡ÙØ± Ø´Ø®ØµÙŠÙ‘ØªÙƒ ÙˆØ£Ø³Ù„ÙˆØ¨Ùƒ Ø§Ù„ÙØ±ÙŠØ¯.','Voeg een foto toe.','Affichez votre personnalitÃ© et votre style uniques.','Zeige Deine einzigartige PersÃ¶nlichkeit und Deinen Stil.','Mostra la tua personalitÃ  e il tuo stile.','Mostrar sua personalidade e estilo.','ÐŸÑ€Ð¾Ð´ÐµÐ¼Ð¾Ð½ÑÑ‚Ñ€Ð¸Ñ€ÑƒÐ¹Ñ‚Ðµ ÑÐ²Ð¾ÑŽ Ð¸Ð½Ð´Ð¸Ð²Ð¸Ð´ÑƒÐ°Ð»ÑŒÐ½Ð¾ÑÑ‚ÑŒ Ð¸ Ð½ÐµÐ¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ð¼Ñ‹Ð¹ ÑÑ‚Ð¸Ð»ÑŒ.','Muestra tu estilo y personalidad Ãºnica.','EÅŸsiz karakterini ve tarzÄ±nÄ± yansÄ±t.'),(644,'start_up_skip','','Or Skip this step for now.','ØªØ®Ø·Ù‘Ù‰ Ù‡Ø°Ù‡ Ø§Ù„Ø®Ø·ÙˆØ© Ø§Ù„Ø¢Ù†','Deze stap voor nu overslaan','Sauter cette Ã©tape pour le moment','Diesen Schritt vorerst Ã¼berspringen','Salta questo passaggio per ora','Pular.','ÐŸÑ€Ð¾Ð¿ÑƒÑÑ‚Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾Ñ‚ ÑˆÐ°Ð³','Omitir este paso por ahora','Bu adÄ±mÄ± ÅŸimdilik atla'),(645,'start_up_continue','','Save &amp; Continue','Ø§Ù„Ù…ØªØ§Ø¨Ø¹Ø©','Opslaan &amp; Doorgaan','Enregistrer &amp; Continuer','Speichern und weiter','Salva e continua','Salvar e continuar','Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ &amp; ÐŸÑ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ','Guardar y Continuar','Kaydet ve Devam Et'),(646,'tell_us','','Tell us about you.','Ø£Ø®Ø¨Ø±Ù†Ø§ Ø¹Ù†Ùƒ.','Vertel ons over jou.','Parlez-nous de vous.','ErzÃ¤hlen Sie uns von Ihnen.','Parlaci di te.','Fale sobre voc&amp;ecirc;.','Ð Ð°ÑÑÐºÐ°Ð¶Ð¸Ñ‚Ðµ Ð¾ ÑÐµÐ±Ðµ.','CuÃ©ntanos acerca de ti.','Senin hakkÄ±nda bilgi verin.'),(647,'tell_us_des','','Share your information with our community.','ØªØ¨Ø§Ø¯Ù„ Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ Ù…Ø¹ Ù…Ø¬ØªÙ…Ø¹Ù†Ø§.','Deel je informatie met onze gemeenschap.','Partager vos informations avec notre communautÃ©.','Ihre Daten an unsere Community.','Condividere le informazioni con la nostra comunitÃ .','Compartilhe informa&amp;ccedil;&amp;otilde;es.','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ñ‚ÐµÑÑŒ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸ÐµÐ¹ Ñ Ð½Ð°ÑˆÐ¸Ð¼ ÑÐ¾Ð¾Ð±Ñ‰ÐµÑÑ‚Ð²Ð¾Ð¼.','Comparta su informaciÃ³n con nuestra comunidad.','Eden ile bilgilerinizi paylaÅŸÄ±n.'),(648,'get_latest_activity','','Get latest activities from our popular users.','Ø§Ù„Ø­ØµÙˆÙ„ Ø¹Ù„Ù‰ Ø£Ø­Ø¯Ø« Ø§Ù„Ø£Ù†Ø´Ø·Ø© Ù…Ù† Ø£ÙƒØ«Ø± Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ø´Ø¹Ø¨ÙŠØ© Ù„Ø¯ÙŠÙ†Ø§.','Ontvang de meest recente activiteiten van onze populaire gebruikers.','Obtenir les derniÃ¨res activitÃ©s de nos utilisateurs populaires.','Holen Sie sich aktuelle AktivitÃ¤ten aus unserer beliebten Nutzer.','Ottenere ultime attivitÃ  dei nostri utenti popolari.','Veja novas informa&amp;ccedil;&amp;otilde;es dos usu&amp;uacute;rios mais populares.','Ð¡Ð»ÐµÐ´Ð¸Ñ‚Ðµ Ð·Ð° Ð¿Ð¾ÑÐ»ÐµÐ´Ð½Ð¸Ð¼Ð¸ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸ÑÐ¼Ð¸ Ð¿Ð¾Ð¿ÑƒÐ»ÑÑ€Ð½Ñ‹Ñ… Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹.','Obtener las Ãºltimas actividades de los usuarios populares.','Bizim popÃ¼ler kullanÄ±cÄ±lardan son faaliyetleri alÄ±n.'),(649,'follow_head','','Follow our famous users.','ØªØ§Ø¨Ø¹ Ø£Ø´Ù‡Ø± Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†.','Volg onze beroemde gebruikers.','Suivez nos utilisateurs cÃ©lÃ¨bres.','Folgen Sie unseren berÃ¼hmten Nutzer.','Segui i nostri utenti famosi.','Siga os usu&amp;uacute;rios famosos.','Ð¡Ð»ÐµÐ´ÑƒÐ¹Ñ‚Ðµ Ð·Ð° Ð½Ð°ÑˆÐ¸Ð¼Ð¸ Ð·Ð½Ð°Ð¼ÐµÐ½Ð¸Ñ‚Ñ‹Ð¼Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼Ð¸.','Siga nuestros usuarios mÃ¡s populares.','Bizim Ã¼nlÃ¼ kullanÄ±cÄ±larÄ± izleyin.'),(650,'follow_num','','Follow {number} &amp; Finish','ØªØ§Ø¨Ø¹ {number} ÙˆØ¥Ø³ØªÙ…Ø±','Volg {number} &amp; Finish','Suivez {number} &amp; Terminer','Folgen Sie {number} &amp; Finish','Seguire {number} &amp; Finitura','Seguir {number} &amp; terminar','Ð¡Ð»ÐµÐ´Ð¾Ð²Ð°Ñ‚ÑŒ Ð·Ð° {number}','Siga {number} y Finalizar','{number} Takip et ve bit'),(651,'looks_good','','Looks good.','ÙŠØ¨Ø¯Ùˆ Ø¬ÙŠÙ‘Ø¯Ù‹Ø§.','Ziet er goed uit.','Ã‡a a l&#39;air bien.','Sieht gut aus.','Sembra buono.','Parece legal.','ÐÐµÐ¿Ð»Ð¾Ñ…Ð¾.','Se ve bien.','Ä°yi gÃ¶rÃ¼nÃ¼yor.'),(652,'looks_good_des','','You&#039;ll be able to add more to your profile later.','Ø³ØªÙƒÙˆÙ† Ù‚Ø§Ø¯Ø±Ù‹Ø§ Ø¹Ù„Ù‰ Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ù…Ø²ÙŠØ¯ Ù„Ù…Ù„ÙÙƒ Ø§Ù„Ø´Ø®ØµÙŠÙ‘ Ù„Ø§Ø­Ù‚Ù‹Ø§.','Je kunt later meer toevoegen aan je profiel.','Vous serez en mesure de complÃ©ter votre profil ultÃ©rieurement.','Du wirst spÃ¤ter mehr zu Deinem Profil hinzufÃ¼gen kÃ¶nnen.','PiÃ¹ tardi potrai aggiungere altro al tuo profilo.','Voc&amp;ecirc; poder&amp;aacute; adicionar mais em seu perfil depois.','Ð’Ñ‹ ÑÐ¼Ð¾Ð¶ÐµÑ‚Ðµ Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð´Ñ€ÑƒÐ³ÑƒÑŽ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸ÑŽ Ð² ÑÐ²Ð¾Ð¹ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ Ð¿Ð¾Ð·Ð¶Ðµ.','PodrÃ¡s aÃ±adir mÃ¡s a tu perfil despuÃ©s.','Daha sonra profiline yeni ÅŸeyler ekleyebilirsin.'),(653,'upload_your_photo','','Upload your photo','Ø¥Ø±ÙØ¹ ØµÙˆØ±ØªÙƒ','Upload je foto','TÃ©lÃ©chargez votre photo','Lade Dein Bild hoch','Carica la tua foto','Carregar foto','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚Ðµ Ð²Ð°ÑˆÑƒ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸ÑŽ','Sube tu foto','FotoÄŸrafÄ±nÄ± yÃ¼kle'),(654,'please_wait','','Please wait..','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ø¥Ù†ØªØ¸Ø§Ø±..','Even geduld aub..','S&#39;il vous plaÃ®t, attendez..','Warten Sie mal..','Attendere prego..','Aguarde..','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð° Ð¿Ð¾Ð´Ð¾Ð¶Ð´Ð¸Ñ‚Ðµ..','Por favor espera..','LÃ¼tfen bekleyin..'),(655,'username_or_email','','Username or E-mail','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø£Ùˆ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','Gebruikersnaam of E-mail','Nom d&#39;utilisateur ou email','Benutzername oder E-Mail-Adresse','Nome utente o E-mail','Nome de usuÃ¡rio ou E-mail','ÐÐ¸ÐºÐ½ÐµÐ¹Ð¼ Ð¸Ð»Ð¸ E-mail Ð°Ð´Ñ€ÐµÑ','Usuario o correo electrÃ³nico','KullanÄ±cÄ± adÄ± ya da email'),(656,'email_setting','','E-mail Setting','Ø¥Ø¹Ø¯Ø§Ø¯ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','E-mail instellen','E-mail RÃ©glage','E-Mail Einstellung','E-mail Impostazione','ConfiguraÃ§Ã£o de E-mail','Ð­Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð°Ñ Ð¿Ð¾Ñ‡Ñ‚Ð° ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ°','Ajuste de Correo','E-posta AyarÄ±'),(657,'years_old','','years old','Ø³Ù†ÙˆØ§Øª','jaar oud','ans','Jahre alt','Anni','anos','Ð»ÐµÑ‚','aÃ±os','yaÅŸÄ±nda'),(658,'friends_birthdays','','Friends Birthdays','Ø§Ø¹ÙŠØ§Ø¯ Ù…ÙŠÙ„Ø§Ø¯ Ø§Ù„Ø§ØµØ¯Ù‚Ø§Ø¡','Verjaardagen van vrienden','Annivarsaire d&#39;amis','Geburtstage von Freunden','amici Compleanni','AniversÃ¡rios de Amigos','Ð”Ñ€ÑƒÐ·ÑŒÑ Ð”Ð½Ð¸ Ñ€Ð¾Ð¶Ð´ÐµÐ½Ð¸Ñ','CumpleaÃ±os de amigos','ArkadaÅŸlarÄ±nÄ±n DoÄŸumgÃ¼nÃ¼'),(659,'sms_setting','','SMS Setting','Ø§Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù‚ØµÙŠØ±Ø©','SMS Instellingen','ParamÃ¨tres SMS','SMS Einstellungen','Impostazione SMS','ConfiguraÃ§Ã£o de SMS','SMS ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ°','ConfiguraciÃ³n SMS','SMS AyarlarÄ±'),(660,'smooth_loading','','Smooth Loading','ØªØ­Ù…Ø¨Ù„ Ø³Ù„Ø³','Gelijdelijk laden','Chargement rÃ©gulier','Schnelles Laden','Smooth Caricamento','Carregamento Suave','Ð“Ð»Ð°Ð´ÐºÐ°Ñ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐ°','Cargando','DÃ¼zgÃ¼n YÃ¼kleme'),(661,'boosted_pages_viewable','','Boosted pages are already viewable by all our community members.','Ø§Ù„ØµÙØ­Ø§Øª Ø§Ù„Ù…Ø¹Ø²Ø²Ø© ÙŠØªÙ… Ù…Ø´Ø§Ù‡Ø¯ØªÙ‡Ø§ Ù…Ù† Ù‚Ø¨Ù„ Ø¬Ù…ÙŠØ¹ Ø§ÙØ±Ø§Ø¯ Ø§Ù„Ù…Ø¬ØªÙ…Ø¹','Omhoog geplaatste pagina&#039;s zijn al zichtbaar voor leden.','Les pages boostÃ©es sont dÃ©jÃ  visibles par tous les membres de votre communautÃ©','Hervorgehobene Seiten sind sofort fÃ¼r alle Mitglieder der Community Sichtbar.','pagine potenziato sono giÃ  visualizzabili da tutti i membri della community.','PÃ¡ginas impulsionadas jÃ¡ estÃ£o visÃ­veis por todos os membros da nossa comunidade.','Ð£ÑÐ¸Ð»ÐµÐ½Ð½Ñ‹Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹ ÑƒÐ¶Ðµ Ð´Ð¾ÑÑ‚ÑƒÐ¿Ð½Ñ‹ Ð´Ð»Ñ Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€Ð° Ð²ÑÐµÐ¼Ð¸ Ð½Ð°ÑˆÐ¸Ð¼Ð¸ Ñ‡Ð»ÐµÐ½Ð°Ð¼Ð¸ ÑÐ¾Ð¾Ð±Ñ‰ÐµÑÑ‚Ð²Ð°.','Tus paginas promocionadas seran vistas en toda la comunidad.','YÃ¼kseltilen sayfalar tÃ¼m kullanÄ±cÄ±larÄ±mÄ±z tarafÄ±ndan gÃ¶rÃ¼ntÃ¼lenebilir.'),(662,'boost_page_in_same_time','','You&#039;re a {type_name}, You&#039;re just able to boost {can_boost} pages at the same time.','ØµÙØ­Ø© ÙÙŠ Ù†ÙØ³ Ø§Ù„ÙˆÙ‚Øª{can_boost}Ø¨Ø§Ù…ÙƒØ§Ù†Ùƒ ÙÙ‚Ø· ØªØ³Ø±ÙŠØ¹ ,{type_name} Ø§Ù†Øª','Je bent {type_name}, Je kan nu  {can_boost} omhoog plaatsen.','Vous Ãªtes un {type_name}, vous pouvez booster {can_boost} pages en mÃªme temps.','Du nutzt einen {type_name} Account, Du kannst nicht {can_boost} Seiten zur selben Zeit hervorheben.','Sei un {type_name}, Sei solo in grado di aumentare {can_boost} pagine in tempo stesso.','VocÃª Ã© um {type_name}, VocÃªÃ© apenas capaz de impulsionar {pode_impulsionar} pÃ¡ginas ao mesmo tempo.','Ð¢Ñ‹ {type_name}, Ð’Ñ‹ Ð¿Ñ€Ð¾ÑÑ‚Ð¾ Ð² ÑÐ¾ÑÑ‚Ð¾ÑÐ½Ð¸Ð¸ Ð¿Ð¾Ð²Ñ‹ÑÐ¸Ñ‚ÑŒ {can_boost} Ð¼Ð¾Ð¶ÐµÑ‚ ÑƒÐ²ÐµÐ»Ð¸Ñ‡Ð¸Ñ‚ÑŒ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹ Ð² Ñ‚Ð¾ Ð¶Ðµ ÑÐ°Ð¼Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ.','Tu {type_name}, solo puedes promocionar {can_boost} paginas al mismo tiempo.','Sen bir {type_name}, aynÄ± zamanda {can_boost} sadece sayfalarÄ± yÃ¼kseltebilirsin.'),(663,'boost_posts_in_same_time','','You&#039;re a {type_name}, You&#039;re just able to boost {can_boost} posts at the same time.','ØµÙØ­Ø© ÙÙŠ Ù†ÙØ³ Ø§Ù„ÙˆÙ‚Øª{can_boost}Ø¨Ø§Ù…ÙƒØ§Ù†Ùƒ ÙÙ‚Ø· ØªØ³Ø±ÙŠØ¹ ,{type_name} Ø§Ù†Øª','Je bent {type_name}, Je kan nu {can_boost} berichten omhoog plaatsen.','You&#39;re a {type_name}, vous pouvez booster {can_boost} posts en mÃªme temps.','Du nutzt einen {type_name} Account, Du kannst nicht  {can_boost} BeitrÃ¤ge zur selben Zeit hervorheben.','Sei un {type_name}, Sei solo in grado di aumentare {can_boost} messaggi in tempo stesso.','VocÃª Ã© um {type_name}, VocÃªÃ© apenas capaz de impulsionar {pode_impulsionar} postagens ao mesmo tempo.','Ð¢Ñ‹ {type_name}, Ð’Ñ‹ Ð¿Ñ€Ð¾ÑÑ‚Ð¾ Ð² ÑÐ¾ÑÑ‚Ð¾ÑÐ½Ð¸Ð¸ Ð¿Ð¾Ð²Ñ‹ÑÐ¸Ñ‚ÑŒ {can_boost} Ð¼Ð¾Ð¶ÐµÑ‚ ÑƒÐ²ÐµÐ»Ð¸Ñ‡Ð¸Ñ‚ÑŒ Ð¿Ð¾ÑÑ‚Ñ‹ Ð² Ñ‚Ð¾ Ð¶Ðµ ÑÐ°Ð¼Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ.','Tu {type_name}, solo puedes promocionar {can_boost} posts al mismo tiempo.','Sen bir {type_name}, aynÄ± zamanda {can_boost} sadece mesajlarÄ± yÃ¼kseltebilirsin.'),(664,'there_are_no_boosted_pages','','There are no boosted pages yet.','Ù„Ø§ ÙŠÙˆØ¬Ø¯ ØµÙØ­Ø§Øª Ù…Ø¹Ø²Ø²Ø© Ø§Ù„Ø§Ù†','Er zijn geen omhoog geplaatste pagina&#039;s.','Il n&#39;y a pas encore de pages boostÃ©es.','Es gibt zu Zeit keine hervorgehobenen Seiten.','Non ci sono ancora pagine potenziati.','NÃ£o hÃ¡ pÃ¡ginas impulsionadas ainda.','Ð¢Ð°Ð¼ Ð½ÐµÑ‚ Boosted ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ† Ð¿Ð¾ÐºÐ°.','No hay paginas promocionados aÃºn.','HenÃ¼z yÃ¼kseltilmiÅŸ sayfa bulunmuyor.'),(665,'there_are_no_boosted_posts','','There are no boosted posts yet.','Ù„Ø§ ÙŠÙˆØ¬Ø¯ ØµÙØ­Ø§Øª Ù…Ø¹Ø²Ø²Ø© Ø§Ù„Ø§Ù†','Er zijn geen omhoog geplaatste berichten.','Il n&#39;y a pas encore de posts boostÃ©s.','Es gibt zur Zeit noch keine hervorgehobenen BeitrÃ¤ge.','Non ci sono ancora messaggi potenziati.','NÃ£o hÃ¡ postagens impulsionadas ainda.','Ð¢Ð°Ð¼ Ð½ÐµÑ‚ Boosted ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹ Ð¿Ð¾ÐºÐ°.','No hay post promocionados aÃºn.','HenÃ¼z yÃ¼kseltilmiÅŸ mesaj bulunmuyor.'),(666,'discover_pro_types','','Discover more features with {sitename} PRO packages !','Ø§ÙƒØªØ´Ø§Ù Ø§Ù„Ù…Ø²ÙŠØ¯ Ù„Ù„Ù…Ø­ØªØ±ÙÙŠÙ† Ù…Ù† Ø§Ù„Ù…ÙŠØ²Ø§Øª Ù…Ø¹ Ø­Ø²Ù… {sitename}','Ontdek meer opties met {sitename} PRO!','DÃ©couvrez plus de fonctionnalitÃ©s avec {sitename} PRO !','Entdecke mehr Funktionen mit dem {sitename} Pro-Paket !','Scopri di piÃ¹ caratteristiche con WoWonder pacchetti PRO !','Descubra mais recursos com WoWonder PRO packages !','ÐžÑ‚ÐºÑ€Ð¾Ð¹Ñ‚Ðµ Ð´Ð»Ñ ÑÐµÐ±Ñ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÐµÐ¹ Ñ WoWonder Ð¿Ð°ÐºÐµÑ‚Ð°Ð¼Ð¸ PRO !','Descubre mas {sitename} funciones con los nuevos paquetes!','{sitename} PRO paketleri ile daha fazla Ã¶zellik keÅŸfedin !'),(667,'star','','Star','Ø¨Ø±ÙˆÙ†Ø²ÙŠ','Ster','Etoile','Star','Star','Estrela','Star','Star','YÄ±ldÄ±z'),(668,'hot','','Hot','ÙØ¶ÙŠ','Heet','Hot','Hot','Hot','Quente','Hot','Hot','SÄ±cak'),(669,'ultima','','Ultima','Ø°Ù‡Ø¨ÙŠ','Ultimate','Ultima','Ultima','Ultima','Ultima','Ultima','Ultima','Ultima'),(670,'vip','','Vip','Ù…Ø§Ø³ÙŠ','VIP','Vip','Vip','Vip','Vip','Vip','Vip','Vip'),(671,'featured_member','','Featured member','Ø¹Ø¶Ùˆ Ù…ØªÙ…ÙŠØ²','Aanbevolen lid','Membres en vedette','Besonderes Mitglied','membro In primo piano','Membro em destaque','ÐŸÐ¾ÐºÐ°Ð·Ð°Ð½Ð½Ñ‹Ð¹ Ñ‡Ð»ÐµÐ½','Miembros destacados','Ã–nerilen Ã¼ye'),(672,'see_profile_visitors','','See profile visitors','Ø±Ø£ÙŠØª ØµÙØ­Ø§Øª Ø§Ù„Ø´Ø®ØµÙŠØ© Ù„Ù„Ø²ÙˆØ§Ø±','Bekijk profiel bezoekers','Voir le profil des visiteurs','Sehe wer dein Profil besucht hat','Vedi visitatori profilo','Veja os perfis de visitantes','Ð¡Ð¼ Ð¿Ð¾ÑÐµÑ‚Ð¸Ñ‚ÐµÐ»ÐµÐ¹ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ','Ver visitantes en su perfil','Profil ziyaretÃ§ilerini gÃ¶r'),(673,'show_hide_lastseen','','Show / Hide last seen','Ø§Ø¸Ù‡Ø§Ø±/Ø¥Ø®ÙØ§Ø¡ Ø£Ø®Ø± Ø¸Ù‡ÙˆØ±','Verberg laatst gezien','Voir / Cacher la derniÃ¨re fois vu','Anzeigen oder Verstecke zuletzt gesehen','Mostra / Nascondi visto l&#039;ultima volta','Mostra / Esconder visto por Ãºltimo','ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ / Ð¡ÐºÑ€Ñ‹Ñ‚ÑŒ Ð¿Ð¾ÑÐ»ÐµÐ´Ð½Ð¸Ð¹ Ñ€Ð°Ð· Ð²Ð¸Ð´ÐµÐ»Ð¸','Ver / Ocultar ultimas visitas','Son gÃ¶rÃ¼nmeyi GÃ¶ster / Gizle'),(674,'verified_badge','','Verified badge','Ø´Ø§Ø±Ø© Ø§Ù„ØªØ­Ù‚Ù‚','Vericatie Badge','Badge VÃ©rifiÃ©','Verifiziert Abzeichen','distintivo verificato','CrachÃ¡ verificado','ÐŸÑ€Ð¾Ð²ÐµÑ€ÐµÐ½Ð½Ñ‹Ðµ Ð·Ð½Ð°Ñ‡Ð¾Ðº','Cuenta Verificada','OnaylanmÄ±ÅŸ rozet'),(675,'post_promotion_star','','Posts promotion&lt;br&gt;','Ù†Ø´Ø± ØªØ±ÙŠØ¬&lt;br&gt;&lt;small&gt;(ØºÙŠØ± Ù…ØªØ§Ø­)&lt;/small&gt;','Bericht promotie&lt;br&gt;&lt;small&gt;(Niet beschikbaar)&lt;/small&gt;','Promotion de post&lt;br&gt;&lt;small&gt;(Indisponible)&lt;/small&gt;','Beitrags Promotion&lt;br&gt;&lt;small&gt;(Nicht verfÃ¼gbar)&lt;/small&gt;','la promozione Messaggio&lt;br&gt;&lt;small&gt;(Non disponibile)&lt;/small&gt;','PÃ³s promoÃ§Ã£o&lt;br&gt;&lt;small&gt;(NÃ£o disponÃ­vel)&lt;/small&gt;','Ð¿Ñ€Ð¾Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ&lt;br&gt;&lt;small&gt;(ÐÐµÐ´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½)&lt;/small&gt;','Promocionar publicaciÃ³n&lt;br&gt;&lt;small&gt;(No Disponible)&lt;/small&gt;','Mesaj tanÄ±tÄ±mÄ±&lt;br&gt;&lt;small&gt;(Mevcut deÄŸil)&lt;/small&gt;'),(676,'page_promotion_star','','Pages promotion&lt;br&gt;','ØµÙØ­Ø© Ø§Ù„ØªØ±ÙˆÙŠØ¬&lt;br&gt;&lt;small&gt;(ØºÙŠØ± Ù…ØªØ§Ø­Ø©)&lt;/small&gt;','Pagina promotie&lt;br&gt;&lt;small&gt;(Niet beschkbaar)&lt;/small&gt;','Promotion de page&lt;br&gt;&lt;small&gt;(Indisponible)&lt;/small&gt;','Seiten Promotion&lt;br&gt;&lt;small&gt;(Nicht verfÃ¼gbar)&lt;/small&gt;','promozione pagina&lt;br&gt;&lt;small&gt;(Non disponibile)&lt;/small&gt;','PrÃ© promoÃ§Ã£o&lt;br&gt;&lt;small&gt;(NÃ£o disponÃ­vel)&lt;/small&gt;','Ð¿Ñ€Ð¾Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ðµ Page&lt;br&gt;&lt;small&gt;(ÐÐµÐ´Ð¾ÑÑ‚ÑƒÐ¿ÐµÐ½)&lt;/small&gt;','Promocionar pagina&lt;br&gt;&lt;small&gt;(No Disponible)&lt;/small&gt;','Sayfa tanÄ±tÄ±mÄ±&lt;br&gt;&lt;small&gt;(Mevcut deÄŸil)&lt;/small&gt;'),(677,'0_discount','','0% discount','0% ØªØ®ÙÙŠØ¶','0% korting','0% de rÃ©duction','0% Nachlass','0% sconto','0% de desconto','0% ÑÐºÐ¸Ð´ÐºÐ°','0% descuento','0% indirim'),(678,'10_discount','','10% discount','10% ØªØ®ÙÙŠØ¶','10% korting','10% de rÃ©duction','10% Nachlass','10% sconto','10% de desconto','10% ÑÐºÐ¸Ð´ÐºÐ°','10% descuento','10% indirim'),(679,'20_discount','','20% discount','20% ØªØ®ÙÙŠØ¶','20% korting','20% de rÃ©duction','20% Nachlass','20% dsconto','20% de desconto','20% ÑÐºÐ¸Ð´ÐºÐ°','20% descuento','20% indirim'),(680,'60_discount','','60% discount','60% ØªØ®ÙÙŠØ¶','60% korting','60% de rÃ©duction','60% Nachlass','60% sconto','60% de desconto','60% ÑÐºÐ¸Ð´ÐºÐ°','60% descuento','60% indirim'),(681,'per_week','Per Week','Per Week','ÙÙŠ Ø§Ù„Ø§Ø³Ø¨ÙˆØ¹','Per week','Par semaine','Pro Woche','A settimana','Por semana','Ð’ Ð½ÐµÐ´ÐµÐ»ÑŽ','Por semana','Haftada'),(682,'per_month','Per Month','Per Month','ÙƒÙ„ Ø´Ù‡Ø±','Per maand','Par mois','Pro Monat','Al mese','Por mÃªs','Ð’ Ð¼ÐµÑÑÑ†','Por mes','Her ay'),(683,'per_year','Per Year','Per Year','ÙƒÙ„ Ø³Ù†Ø©','Per jaar','Par an','Pro Jahr','Per anno','Por ano','Ð’ Ð³Ð¾Ð´','Por aÃ±o','YÄ±l baÅŸÄ±na'),(684,'life_time','','life time','Ù…Ø¯Ù‰ Ø§Ù„Ø­ÙŠØ§Ø©','levens lang','Ã  vie','Lebenslang','tutta la vita','tempo de vida','Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ÑÑ‚ÑŒ Ð¶Ð¸Ð·Ð½Ð¸','de por vida','Ã¶mÃ¼r boyu'),(685,'upgrade_now','','Upgrade Now','ØªØ±Ù‚ÙŠØ© Ø§Ù„Ø§Ù†','Upgrade Nu','Mise Ã  jour maintenant','Jetzt Upgraden','Aggiorna ora','Atualize Agora','ÐžÐ±Ð½Ð¾Ð²Ð¸ ÑÐµÐ¹Ñ‡Ð°Ñ','Actualiza ahora','Hemen YÃ¼kselt'),(686,'boosted_posts','','Boosted Posts','Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª Ø§Ù„Ù…Ø¹Ø²Ø²Øª','Omhoog geplaatse berichten','Posts boostÃ©s','hervorgehobene BeitrÃ¤ge','Messaggi potenziato','Postagens Impulsionadas','Ð£ÑÐ¸Ð»ÐµÐ½Ð½Ñ‹Ðµ Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹','Promocionar Posts','yÃ¼kseltÄ±lan Mesajlar'),(687,'boosted_pages','','Boosted Pages','Ø§Ù„ØµÙØ­Ø§Øª Ø§Ù„Ù…Ø¹Ø²Ø²Øª','Omhoog geplaatsen pagina&#039;s','Pages boostÃ©es','hervorgehobene Seiten','Pagine potenziato','PÃ¡ginas Impulsionadas','Ð£ÑÐ¸Ð»ÐµÐ½Ð½Ñ‹Ðµ Ð¡Ñ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','Promocionar Paginas','yÃ¼kseltÄ±lan Sayfalar'),(688,'put_me_here','','Put Me Here','Ø¶Ø¹Ù†ÙŠ Ù‡Ù†Ø§','Zet mij hier nier','Me mettre ici','Setze mich Hier','Mettimi qui','Me Coloque Aqui','Put Me Ð—Ð´ÐµÑÑŒ','Poner aqui','buraya koy'),(689,'promoted','','Promoted','Ù…Ø¹Ø²Ø²','Advertenties','Promoted','Promotions','Promossa','Promovido','ÐŸÐ¾Ð²Ñ‹ÑˆÐµÐ½','Promocionar','TanÄ±tÄ±lan'),(690,'oops_something_went_wrong','','Oops ! Something went wrong.','Oops ! Ø­Ø¯Ø« Ø®Ø·Ø£ Ù…Ø§','Oeps ! Er ging iets mis.','Oops ! Quelquechose s&#39;est mal passÃ©.','Oops ! Irgendetwas ist schief gegangen.','Oops! Qualcosa Ã¨ andato storto.','Oops! Algo deu errado.','Ðš ÑÐ¾Ð¶Ð°Ð»ÐµÐ½Ð¸ÑŽ! Ð§Ñ‚Ð¾-Ñ‚Ð¾ Ð¿Ð¾ÑˆÐ»Ð¾ Ð½Ðµ Ñ‚Ð°Ðº.','Oops ! Algo salio mal.','Hata ! Bir ÅŸeyler yanlÄ±ÅŸ gitti.'),(691,'try_again','','Try again','Ø­Ø§ÙˆÙ„ Ù…Ø¬Ø¯Ø¯Ø§','Probeer het opnieuw','Essayez encore','Versuche es erneut','Riprova','Tente novamente','ÐŸÐ¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹ ÐµÑ‰Ðµ Ñ€Ð°Ð·','Trata de nuevo','Tekrar deneyin'),(692,'boost_page','','Boost Page','Ø§Ø¶Ø§ÙØ© ØµÙØ­Ø©','Plaats pagina omhoog','Booster Page','Seite hervorheben','Boost Pagina','PÃ¡gina Impulsionada','ÐŸÐ¾Ð²Ñ‹ÑˆÐµÐ½Ð¸Ðµ Page','Promocionar Pagina','Sayfa yÃ¼kselt'),(693,'page_boosted','','Page Boosted','Ø§Ù„ØµÙØ­Ø© Ø§Ù„Ù…Ø¹Ø²Ø²Ø©','Pagina omhoog geplaatst','Page BoostÃ©e','Die Seite wurde hervorgehoben','pagina potenziato','PÃ¡gina Impulsionada','Ð¡Ñ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Boosted','Pagina promocionada','yÃ¼kseltÄ±lan Sayfa'),(694,'un_boost_page','','Un-Boost Page','Ø§Ù„ØµÙØ­Ø© Ø§Ù„ØºÙŠØ± Ù…Ø¹Ø²Ø²Ø©','Verwijder omhoog plaatsing','Un-Boost Page','Seite nicht mehr hervorheben','Un-Boost Pagina','Desimpulsionar PÃ¡gina','Un-Ð½Ð°Ð´Ð´ÑƒÐ² Page','Des-promover pagina','SayfayÄ± yÃ¼kseltma'),(695,'edit_page_settings','','Edit Page Settings','ØªØ¹Ø¯ÙŠÙ„ Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØµÙØ­Ø©','Verander pagina instellingen','Editer paramÃ¨tres de la Page','Seiten Einstellungen bearbeiten','Modifica impostazioni pagina','Editar as configuraÃ§Ãµes de pÃ¡gina','Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','Editar ajustes de pÃ¡gina','Sayfa AyarlarÄ±nÄ± DÃ¼zenle'),(696,'blocked_users','','Blocked Users','Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ø§Ù„Ù…Ø­Ø¸ÙˆØ±ÙŠÙ†','Geblokkerde Gebruikers','Utilisateurs bloquÃ©s','Blockierte Mitglieder','Gli utenti bloccati','UsuÃ¡rios Bloqueados','Ð—Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸','Blockear usuario','Bloklu KullanÄ±cÄ±lar'),(697,'un_block','','Un-Block','ØºÙŠØ± Ù…Ø­Ø¶ÙˆØ±','Deblokkeer','DÃ©bloquer','Blockierung aufheben','Sbloccare','Desbloquear','Ð¾Ñ‚ÐºÑ€Ñ‹Ñ‚ÑŒ','Des-blockear','Blok yÃ¼kselt'),(698,'css_file','','CSS file','CSS Ù…Ù„Ù','CSS bestand','fichier CSS','CSS Datei','file CSS','arquivo CSS','Ñ„Ð°Ð¹Ð» CSS','Archivo CCS','CSS dosyasÄ±'),(699,'css_status_default','','Default design','Ø§Ù„ØªØµÙ…ÙŠÙ… Ø§Ù„Ø§ÙˆÙ„ÙŠ','Standaard design','Design par dÃ©faut','Standart Design','disegno predefinito','Design padrÃ£o','Ð´Ð¸Ð·Ð°Ð¹Ð½ ÐŸÐ¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ','diseÃ±o por defecto','VarsayÄ±lan dizayn'),(700,'css_status_my','','My CSS file','Ø§Ù„Ø®Ø§Øµ Ø¨ÙŠ CSS Ù…Ù„Ù','Mijn CSS bestand','Mon fichier CSS','Meine CSS Datei','Il mio file CSS','Meu arquivo CSS','ÐœÐ¾Ð¹ Ñ„Ð°Ð¹Ð» CSS','Mi CSS','CSS dosyam'),(701,'css_file_info','','You can fully design your profile by uploading your own CSS file','CSS Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ ÙŠÙ…ÙƒÙ†Ùƒ ØªØµÙ…ÙŠÙ… ÙƒØ§Ù…Ù„ Ù…Ù„Ù Ø§Ù„ØªØ¹Ø±ÙŠÙ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ø¹Ù† Ø·Ø±ÙŠÙ‚ ØªØ­Ù…ÙŠÙ„ Ù…Ù„Ù','Je kan je profiel helemaal pimpen door je eigen CSS bestand te uploaden','Vous pouvez modifier le design de votre profil via le tÃ©lÃ©versement de votre propre fichier CSS','Du kannst dein Profil komplett selbst Designen in dem du deine CSS Datei hoch lÃ¤dst','Ãˆ possibile progettare completamente il proprio profilo caricando il proprio file CSS','VocÃª pode projetar totalmente o seu perfil atravÃ©s de upload do seu prÃ³prio arquivo CSS','Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¿Ð¾Ð»Ð½Ð¾ÑÑ‚ÑŒÑŽ ÑÐ¾Ð·Ð´Ð°Ñ‚ÑŒ ÑÐ²Ð¾Ð¹ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ, Ð·Ð°Ð³Ñ€ÑƒÐ·Ð¸Ð² ÑÐ²Ð¾Ð¹ ÑÐ¾Ð±ÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ð¹ Ñ„Ð°Ð¹Ð» CSS','Ahora puedes rediseÃ±ar tu perfil con tu propio estilo (Css)','Kendi Css dosyanÄ±zÄ± yÃ¼kleyerek profilinizi tamamen siz tasarlayabilirsiniz.'),(702,'invite_your_frineds_home','','Invite Your Friends','Ø¯Ø¹ÙˆØ© Ø§ØµØ¯Ù‚Ø§Ø¦Ùƒ','Nodig je vrienden uit','Inviter vos amis','Lade deine Freunde ein','Invita i tuoi amici','Convidar Seus Amigos','ÐŸÑ€Ð¸Ð³Ð»Ð°ÑÐ¸Ñ‚ÑŒ Ð´Ñ€ÑƒÐ·ÐµÐ¹','Invita a tus amigos','ArkadaÅŸlarÄ±nÄ± Davet Et'),(703,'send_invitation','','Send Invitation','Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø¯Ø¹ÙˆØ©','Verstuur','Envoyer Invitation','Einladung Versenden','Spedire un invito','Enviar Convite','Ð’Ñ‹ÑÐ»Ð°Ñ‚ÑŒ Ð¿Ñ€Ð¸Ð³Ð»Ð°ÑÐ¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ','Enviar invitaciÃ³n','Davetiye gÃ¶nder'),(704,'boost_post','','Boost Post','ØªØ¹Ø²ÙŠØ² Ø§Ù„Ù…Ù†Ø´ÙˆØ±','Plaast bericht omhoog','Boost Post','Beitrag Hervorheben','Boost Messaggio','Impulsionar Postagem','ÐŸÐ¾Ð²Ñ‹ÑÑŒÑ‚Ðµ Post','Promocionar post','Boost Post'),(705,'unboost_post','','UnBoost Post','Ø¹Ø¯Ù… ØªØ¹Ø²ÙŠØ² Ø§Ù„Ù…Ù†Ø´ÙˆØ±','Verwijder','Un-Boost Post','Beitrag nicht mehr Hervorheben','UnBoost Messaggio','Desimpulsionar Postagem','UnBoost ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Des-promocionar post','Un-Boost Post'),(706,'drag_to_re','','Drag to reposition cover','Ø§Ø³Ø­Ø¨ Ù„ØªØ¹Ø¯ÙŠÙ„ Ø§Ù„ØµÙˆØ±Ø©','Sleep naar de juiste positie','Faites glisser pour repositionner la couverture','Ziehe das Cover mit der Maus um es neu zu Positionieren','Trascinare per riposizionare la copertura','Arraste para reposicionar a cobertura','ÐŸÐµÑ€ÐµÑ‚Ð°Ñ‰Ð¸Ñ‚Ðµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¸Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ ÐºÑ€Ñ‹ÑˆÐºÐ¸','Arrastra la portada para recortarla','KapaÄŸÄ± yeniden konumlandÄ±rmak iÃ§in sÃ¼rÃ¼kleyin'),(707,'block_user','','Block User','Ø­Ø¶Ø± Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Blokkeer gebruiker','Bloquer l&#39;utilisateur','Mitglied Blocken','Blocca utente','Bloquear UsuÃ¡rio','Ð—Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','Blockear usuario','KullanÄ±cÄ± Blok'),(708,'edit_user','','Edit User','ØªØ¹Ø¯ÙŠÙ„ Ø­Ø³Ø§Ø¨ Ø§Ù„Ø¹Ø¶Ùˆ','Wijzig gebruiker','Editer Utilisateur','Mitglied Bearbeiten','Modifica utente','Editar UsuÃ¡rio','Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ','Editar usuario','KullanÄ±cÄ±yÄ± DÃ¼zenle'),(709,'cong','','Congratulations ! You&#039;re now a &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}','Ù…Ø¨Ø±ÙˆÙƒ! Ø§Ù†Øª Ø§Ù„Ø§Ù† &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}','Gefeliciteerd ! Je bent nu een &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}','FÃ©licitation ! Vous Ãªtes maintenant un &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}','Herzlichen GlÃ¼ckwunsch! Du bist nun ein &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}','Complimenti ! Ora sei un &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}','ParabÃ©ns ! VocÃª Ã© agora um &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}','ÐŸÐ¾Ð·Ð´Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ñ ! Ð¢Ñ‹ Ñ‚ÐµÐ¿ÐµÑ€ÑŒ &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}','Felicidades! Ahora &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}','Tebrikler ! ArtÄ±k sen bir &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}'),(710,'cong_2','','Start browsing the new features','Ø¨Ø¯Ø¡ ØªØµÙØ­ Ø§Ù„Ù…ÙŠØ²Ø§Øª Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø©','Bekijk nu je nieuwe opties','Commencer Ã  naviguer sur les nouvelles fonctionnalitÃ©s','Beginne dir die neuen Funktionen anzusehen','Avviare la navigazione le nuove funzionalitÃ ','ComeÃ§e a navegar os novos recursos','ÐÐ°Ñ‡Ð°Ñ‚ÑŒ Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ð½Ð¾Ð²Ñ‹Ñ… Ñ„ÑƒÐ½ÐºÑ†Ð¸Ð¹','Comiencza a utilizar las nuevas funciones','Yeni Ã¶zellikleri taramaya baÅŸlayÄ±n'),(711,'activation_oops','','Oops, looks like your account is not activated yet.','Oops, .ÙŠØ¨Ø¯Ùˆ Ø§Ù†Ù‡ Ù„Ù… ÙŠØªÙ… ØªÙ†Ø´ÙŠØ· Ø­Ø³Ø§Ø¨Ùƒ Ø¨Ø¹Ø¯','Oeps, het lijkt er op of je account nog niet is geactiveerd.','Oops, votre compte n&#39;est pas encore activÃ©.','Oops, so wie es aussieht wurde dein Account Nachbericht aktiviert.','Spiacenti, sembra che il tuo account non Ã¨ ancora attivato.','Oops, parece que sua conta nÃ£o estÃ¡ ativada ainda.','Ðš ÑÐ¾Ð¶Ð°Ð»ÐµÐ½Ð¸ÑŽ, Ð¿Ð¾Ñ…Ð¾Ð¶Ðµ, Ð²Ð°ÑˆÐ° ÑƒÑ‡ÐµÑ‚Ð½Ð°Ñ Ð·Ð°Ð¿Ð¸ÑÑŒ ÐµÑ‰Ðµ Ð½Ðµ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð°.','Oops, Parece que su cuenta no estÃ¡ activada aÃºn.','Hata, hesabÄ±nÄ±z henÃ¼z aktif edilmemiÅŸ gibi gÃ¶rÃ¼nÃ¼yor.'),(712,'activation_method','','Please choose a method below to activate your account.','.ÙŠØ±Ø¬Ù‰ Ø§Ø®ØªÙŠØ§Ø± Ø·Ø±ÙŠÙ‚Ø© Ù„ØªÙØ¹ÙŠÙ„ Ø­Ø³Ø§Ø¨Ùƒ Ø£Ø¯Ù†Ø§Ù‡','Selecteer een optie om je account te activeren.','Merci de choisir une mÃ©thode ci*dessous pour activer votre compte.','Bitte suche dir eine unten stehende Methode aus um dein Account zu aktivieren.','Si prega di scegliere un metodo seguito per attivare il tuo account.','Por favor escolha um mÃ©todo abaixo para ativar sua conta.','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð¼ÐµÑ‚Ð¾Ð´ Ð½Ð¸Ð¶Ðµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑƒÑ‡ÐµÑ‚Ð½ÑƒÑŽ Ð·Ð°Ð¿Ð¸ÑÑŒ.','Por favor trata con otro metodo para activar tu cuenta.','HesabÄ±nÄ±zÄ± etkinleÅŸtirmek iÃ§in aÅŸaÄŸÄ±da ki yÃ¶ntemlerden birini seÃ§iniz.'),(713,'activation_email','','Via E-mail','Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø¨Ø±ÙŠØ¯','Via E-mail','Par E-mail','Via E-mail','Via posta elettronica','Via E-mail','ÐŸÐ¾ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ðµ','Via E-mail','E-mail ile'),(714,'activation_phone','','Via Phone Number','Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„Ù‡Ø§ØªÙ','Via Telefoonnummer','Par tÃ©lÃ©phone','Via Telefonnummer','Via Numero di telefono','Via NÃºmero de Telefone','Via Ð½Ð¾Ð¼ÐµÑ€Ñƒ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð°','Via SMS','Telefon NumarasÄ± ile'),(715,'activation_or','','Or','Ø£Ùˆ','Of','Ou','Oder','O','Ou','Ð˜Ð»Ð¸','O','yada'),(716,'activation_send_code','','Send Confirmation Code','Ø¥Ø±Ø³Ø§Ù„ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯','Stuur activatie code','Envoyer le code confirmation','Sende uns deinen BestÃ¤tigungs Code Manuell','Invia codice di conferma','Enviar ConfirmaÃ§Ã£o do CÃ³digo','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ ÐºÐ¾Ð´ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ','Enviar cÃ³digo de activaciÃ³n','Onay Kodu GÃ¶nder'),(717,'activation_get_code_again','','Didn&#039;t get the code?','Ù„Ù… ÙŠØªÙ… Ø§Ø³ØªÙ‚Ø¨Ø§Ù„ Ø§Ù„Ø±Ù…Ø²ØŸ','Code niet ontvangen?','Didn&#39;t get the code?','Du hast keinen Code erhalten?','Non avere il codice?','NÃ£o obteve o cÃ³digo?','ÐÐµ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ ÐºÐ¾Ð´?','No he recivido cÃ³digo?','Onay kodunu almadÄ±nÄ±z mÄ±?'),(718,'activation_resend','','Resend','Ø§Ø¹Ø§Ø¯Øª Ø§Ø±Ø³Ø§Ù„','Verstuur opnieuw','Renvoyer','Erneut Senden','inviare di nuovo','Re-enviar','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ','Re-enviar','Tekrar gÃ¶nder'),(719,'activation_should_receive','','You should receive the code within','ÙŠØ¬Ø¨ Ø§Ø³ØªÙ‚Ø¨Ø§Ù„ Ø§Ù„Ø±Ù…Ø² ÙÙŠ Ù…Ø¯Ø©','Je zult de code ontvangen','You should receive the code within','Du solltest den Code in KÃ¼rze erhalten.','Si dovrebbe ricevere il codice all&#039;interno','VocÃª deve receber o cÃ³digo dentro de','Ð’Ñ‹ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ ÐºÐ¾Ð´ Ð²Ð½ÑƒÑ‚Ñ€Ð¸','DeberÃ­a recibir el cÃ³digo dentro de','iÃ§inde kodu almalÄ±sÄ±nÄ±z'),(720,'confirm','','Confirm','ØªØ£ÙƒÙŠØ¯','Bevestig','Confirmer','BestÃ¤tigen','Confermare','Confirmar','Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚ÑŒ','Confirmar','Onayla'),(721,'phone_num_ex','','Phone number (eg. +905...)','(eg. +905...) Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ','Telefoonnumer (bijv. +31...)','NumÃ©ro de tÃ©lÃ©phone (eg. +33...)','Telefonnummer  (z.b +49...)','Numero di telefono (eg. +905...)','NÃºmero de telefone (ex. +905...)','ÐÐ¾Ð¼ÐµÑ€ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð° (eg. +905...)','Numero de Telefono (eg. +001...)','Telefon NumarasÄ± (Ã¶rn. +905...)'),(722,'error_while_activating','','Error while activating your account.','.Ø®Ø·Ø£ Ø£Ø«Ù†Ø§Ø¡ ØªÙØ¹ÙŠÙ„ Ø­Ø³Ø§Ø¨Ùƒ','Error tijdens het activeren van uw account.','Error while activating your account.','Fehler beim aktivieren deines Accounts.','Errore durante l&#039;attivazione dell&#039;account.','Erro ao ativar a sua conta.','ÐžÑˆÐ¸Ð±ÐºÐ° Ð¿Ñ€Ð¸ Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸ ÑƒÑ‡ÐµÑ‚Ð½Ð¾Ð¹ Ð·Ð°Ð¿Ð¸ÑÐ¸.','Error al activar su cuenta.','HesabÄ±nÄ±zÄ± onaylarken hata oluÅŸtu.'),(723,'wrong_confirmation_code','','Wrong confirmation code.','.Ø®Ø·Ø£ ÙÙŠ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯','Ongeldige code.','Code de confirmation erronÃ©.','Falscher bestÃ¤tigungs Code.','codice di conferma errato.','CÃ³digo de confirmaÃ§Ã£o incorreto.','ÐÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ñ‹Ð¹ ÐºÐ¾Ð´ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ.','Este cÃ³digo no es valido.','YanlÄ±ÅŸ onay kodu.'),(724,'failed_to_send_code','','Failed to send the confirmation code.','.ÙØ´Ù„ ÙÙŠ Ø¥Ø±Ø³Ø§Ù„ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯','Het is niet gelukt de code te verzenden.','Impossible d&#39;envoyer le code de confirmation.','Fehler beim senden des bestÃ¤tigungs Code.','Impossibile inviare il codice di conferma.','NÃ£o foi possÃ­vel enviar o cÃ³digo de confirmaÃ§Ã£o.','ÐÐµ ÑƒÐ´Ð°Ð»Ð¾ÑÑŒ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ ÐºÐ¾Ð´ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ.','No se pudo enviar cÃ³digo de activaciÃ³n.','Onay kodu gÃ¶nderilirken hata oluÅŸtu.'),(725,'worng_phone_number','','Wrong phone number.','.Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ Ø®Ø§Ø·Ø¦','Geen geldige telefoonnummer.','NumÃ©ro de tÃ©lÃ©phone erronÃ©.','Falsche Telefonnummer.','numero di telefono sbagliato.','NÃºmero de telefone incorreto.','ÐÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ñ‹Ð¹ Ð½Ð¾Ð¼ÐµÑ€ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð°.','Numero incorrecto.','YanlÄ±ÅŸ telefon numarasÄ±.'),(726,'phone_already_used','','Phone number already used.','.Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ Ù…ÙˆØ¬ÙˆØ¯','Telefoonnummer is al in gebruik.','NumÃ©ro de tÃ©lÃ©phone dÃ©jÃ  utilisÃ©.','Die angebene Telefonnummer wird bereits verwendet.','Numero di telefono giÃ  in uso.','NÃºmero de telefone jÃ¡ em uso.','ÐÐ¾Ð¼ÐµÑ€ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð° ÑƒÐ¶Ðµ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐµÑ‚ÑÑ.','Este nuemero ya a sido usado.','Telefon numarasÄ± kullanÄ±lÄ±yor.'),(727,'sms_has_been_sent','','SMS has been sent successfully.','.ØªÙ… Ø§Ø±Ø³Ø§ Ø§Ù„Ø±Ø³Ø§Ù„Ø© Ø§Ù„Ù†ØµÙŠØ© Ø¨Ù†Ø¬Ø§Ø­','SMS is succsesvol verzonden.','SMS envoyÃ© avec succÃ¨s.','Die SMS wurde erfolgreich versendet.','SMS Ã¨ stato inviato con successo.','SMS foi enviado com sucesso.','SMS Ð±Ñ‹Ð»Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾.','El cÃ³digo de activaciÃ³n a sido enviado.','SMS baÅŸarÄ±yla gÃ¶nderildi.'),(728,'error_while_sending_sms','','Error while sending the SMS, please try another number.','.Ø®Ø·Ø£ Ø£Ø«Ù†Ø§Ø¡ Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø±Ø³Ø§Ù„Ø© Ø§Ù„Ù‚ØµÙŠØ±Ø©ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ø¨Ø§Ø³ØªØ®Ø¯Ø§Ù… Ø±Ù‚Ù… Ø¢Ø®Ø±','We konden de SMS niet versturen, probeer een ander nummer.','Erreur lors de l&#39;envooi du SMS, merci d&#39;essayer un autre numÃ©ro de tÃ©lÃ©phone.','Fehler beim Versenden der SMS, bitte versuche eine andere Telefonnummer.','Errore durante l&#039;invio del SMS, prova un altro numero.','Erro ao enviar o SMS, por favor tente outro nÃºmero.','ÐžÑˆÐ¸Ð±ÐºÐ° Ð¿Ñ€Ð¸ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²ÐºÐµ SMS, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ð¹ Ð½Ð¾Ð¼ÐµÑ€.','Error al enviar cÃ³digo de activacion, por favor trata con otro numero .','SMS gÃ¶nderilemiyor, lÃ¼tfen farklÄ± numara deneyiniz.'),(729,'failed_to_send_code_fill','','Failed to send the confirmation code, please select one of the activation methods.','.ÙØ´Ù„ ÙÙŠ Ø¥Ø±Ø³Ø§Ù„ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯ØŒ ÙŠØ±Ø¬Ù‰ Ù…Ù„Ø¡ Ø¥Ø­Ø¯Ù‰ Ø®Ø§Ù†Ø§Øª Ø§Ù„ØªÙ†Ø´ÙŠØ·','Het is niet gelukt de code te versturen, probeer een andere methoda.','Impossible d&#39;envoyer le code de confirmation, essayez une des mÃ©thodes d&#39;activation.','Fehler beim Versenden des bestÃ¤tigungs Code, bitte wÃ¤hlen eine andere aktivierungs Methode.','Impossibile inviare il codice di conferma, selezionare uno dei metodi di attivazione.','NÃ£o foi possÃ­vel enviar o cÃ³digo de confirmaÃ§Ã£o, por favor preencha um dos mÃ©todos de ativaÃ§Ã£o.','ÐÐµ ÑƒÐ´Ð°Ð»Ð¾ÑÑŒ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ ÐºÐ¾Ð´ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð¾Ð´Ð¸Ð½ Ð¸Ð· Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð½Ñ‹Ñ… ÑÐ¿Ð¾ÑÐ¾Ð±Ð¾Ð² Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸.','Error al enviar cÃ³digo de activacion, por favor trata con otro metodo.','Onay kodu gÃ¶nderilemiyor, lÃ¼tfen aktivasyon yÃ¶ntemlerinden birini seÃ§iniz.'),(730,'email_sent_successfully','','E-mail has been sent successfully, please check your inbox or spam folder for the activation link.','.ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø¨Ù†Ø¬Ø§Ø­ØŒ ÙŠØ±Ø¬Ù‰ Ù…Ø±Ø§Ø¬Ø¹Ø© Ù…Ø¬Ù„Ø¯ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„ÙˆØ§Ø±Ø¯ Ø£Ùˆ Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ ØºÙŠØ± Ø§Ù„Ù…Ø±ØºÙˆØ¨ ÙÙŠÙ‡Ø§ Ù„Ø±Ø§Ø¨Ø· Ø§Ù„ØªÙØ¹ÙŠÙ„','E-mail is succesvol verzonden, kijk ook in uw spam/ongewenste inbox.','E-mail envoyÃ© avec succÃ¨s, merci de vÃ©rifier votre boite de rÃ©ception et dossier spam pour le lien d&#39;activation.','Es wurde dir eine Email gesendet, bitte Ã¼berprÃ¼fe deinen Postfach und gegebenfalls auch den Spam Ordner.','E-mail Ã¨ stata inviata con successo, controllare la cartella Posta in arrivo o spam per il link di attivazione.','E-mail foi enviado com sucesso, verifique a sua pasta caixa de entrada ou de spam para o link de ativaÃ§Ã£o.','Ð­Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð°Ñ Ð¿Ð¾Ñ‡Ñ‚Ð° Ð±Ñ‹Ð»Ð° ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð°, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ ÑÐ²Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ð¾Ð²Ñ‹Ð¹ ÑÑ‰Ð¸Ðº Ð¸Ð»Ð¸ ÑÐ¿Ð°Ð¼ Ð¿Ð°Ð¿ÐºÑƒ Ð´Ð»Ñ ÑÑÑ‹Ð»ÐºÐ¸ Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸.','El correo a sido enviado, por favor check your inbox or spam folder for the activation link.','E-mail gÃ¶nderildi, aktivasyon linki iÃ§in lÃ¼tfen mesaj kutunuzu yada spam kutusunu kontrol ediniz.'),(731,'limit_exceeded','','Limit exceeded, please try again later.','.Ù„Ù‚Ø¯ ØªØ¬Ø§ÙˆØ²Øª Ø§Ù„Ø­Ø¯ Ø§Ù„Ù…Ø³Ù…ÙˆØ­ Ø¨Ù‡ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ù…Ø±Ø© Ø£Ø®Ø±Ù‰ ÙÙŠ ÙˆÙ‚Øª Ù„Ø§Ø­Ù‚','Te vaak geprobeerd, probeer het later nog eens.','Limite dÃ©passÃ©, merci de rÃ©essayer plus tard.','Anzahl an versuche Ã¼berschritten , bitte versuche es spÃ¤ter nochmal..','Limite superato, riprova piÃ¹ tardi.','Limite excedido, tente novamente mais tarde.','ÐŸÑ€ÐµÐ²Ñ‹ÑˆÐµÐ½ Ð»Ð¸Ð¼Ð¸Ñ‚, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÑƒ Ð¿Ð¾Ð·Ð¶Ðµ.','LÃ­mite excedido, por favor trata mas tarde.','Limit aÅŸÄ±ldÄ±, lÃ¼tfen daha sonra tekrar deneyin.'),(732,'failed_to_send_code_email','','Error while sending the SMS, please try another number or activate your account via email by logging into your account.','.Ø®Ø·Ø£ Ø£Ø«Ù†Ø§Ø¡ Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù‚ØµÙŠØ±Ø©ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ø±Ù‚Ù… Ø¢Ø®Ø± Ø£Ùˆ ØªÙØ¹ÙŠÙ„ Ø­Ø³Ø§Ø¨Ùƒ Ø¹Ø¨Ø± Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø¯Ø®ÙˆÙ„ ÙÙŠ Ø­Ø³Ø§Ø¨Ùƒ','Probeer je account te verifiÃ«ren via de e-mail, we konden geen sms sturen.','Erreur lors de l&#39;envoi du SMS, merci d&#39;essayer un autre numÃ©ro ou activer votre compte par e-mail en vous connectant Ã  votre compte.','Fehler beim Versenden der SMS, bitte benutze eine andere Telefonnummer  oder aktiviere deinen Account via Email, indem  du dich mit deinem Account Anmeldest.','Errore durante l&#039;invio del SMS, prova un altro numero o attivare il tuo account tramite e-mail accedendo al proprio conto.','Erro ao enviar o SMS, tente outro nÃºmero ou ativar sua conta via e-mail, entrando em sua conta.','ÐžÑˆÐ¸Ð±ÐºÐ° Ð¿Ñ€Ð¸ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²ÐºÐµ SMS, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ð¹ Ð½Ð¾Ð¼ÐµÑ€ Ð¸Ð»Ð¸ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑÐ²Ð¾ÑŽ ÑƒÑ‡ÐµÑ‚Ð½ÑƒÑŽ Ð·Ð°Ð¿Ð¸ÑÑŒ Ñ‡ÐµÑ€ÐµÐ· ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½ÑƒÑŽ Ð¿Ð¾Ñ‡Ñ‚Ñƒ, Ð²Ð¾Ð¹Ð´Ñ Ð² ÑÐ²Ð¾Ð¹ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚.','Error al enviar cÃ³digo de activacion, por favor trata con otro numero o activa tu cuenta via email accediendo a tu cuenta .','SMS gÃ¶nderilemiyor, lÃ¼tfen baÅŸka bir numara deneyiniz yada hesabÄ±nÄ±za giriÅŸ yaparak hesabÄ±nÄ±zÄ± mail ile etkinleÅŸtiriniz.'),(733,'free_member','','Free Member','Ø¹Ø¶Ùˆ Ø¹Ø§Ø¯ÙŠ','Gratis Lid','Free member','Kostenlose Mitgliedschaft','Free Member','Membro grÃ¡tis','Free Member','Usuario gratis','Ãœcretsiz Ã¼ye'),(734,'star_member','','Star Member','Ø¹Ø¶Ùˆ Ø¨Ø±ÙˆÙ†Ø²ÙŠ','Ster Lid','Star Member','Star Mitgliedschaft','Star Member','Membro estrela','Star Member','Usuario star','YÄ±ldÄ±z Ã¼ye'),(735,'hot_member','','Hot Member','Ø¹Ø¶Ùˆ ÙØ¶ÙŠ','Hot Lid','Hot Member','Hot Mitgliedschaft','Hot Member','Membro Quente','Hot Member','Usuario hot','SÄ±cak Ãœye'),(736,'ultima_member','','Ultima Member','Ø¹Ø¶Ùˆ Ø°Ù‡Ø¨ÙŠ','Ultimate Lid','Ultima Member','Ultima Mitgliedschaft','Ultima Member','Ultima Member','Ultima Member','Usuario ultima','Ultima Ãœye'),(737,'vip_member','','Vip Member','Ø¹Ø¶Ùˆ Ù…Ø§Ø³ÙŠ','VIP Lid','Vip Member','Vip Mitgliedschaft','Vip Member','Membro Vip','Vip Member','Usuario VIP','Vip Ãœye'),(738,'moderator','','Moderator','Ù…Ø´Ø±Ù','Moderator','ModÃ©rateur','Moderator','Moderator','Moderador','Moderator','Moderador','Moderator'),(739,'member_type','','Member Type','Ù†ÙˆØ¹ Ø§Ù„Ø¹Ø¶ÙˆÙŠØ©','Member soort','Type de membres','Mitglieds Typ','Member Type','Tipo de Membro','Member Type','Tipo de menbresia','Ãœye TÃ¼rÃ¼'),(740,'membership','','Membership','Ø§Ù„Ø¹Ø¶ÙˆÙŠØ©','Membership','Membership','Mitgliedschaft','membri','FiliaÃ§Ã£o','Ñ‡Ð»ÐµÐ½ÑÑ‚Ð²Ð¾','Membresia','Ãœyelik'),(741,'upgrade','','Upgrade','Ø§Ù„ØªØ±Ù‚ÙŠØ©','Upgrade','Mise Ã  jour','Upgrade','aggiornamento','AtualizaÃ§Ã£o','ÐžÐ±Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ','ActualizaciÃ³n','YÃ¼kselt'),(742,'error_please_try_again','','Error, Please try again later.','.Ø®Ø·Ø¦, ÙŠØ±Ø¬Ù‰ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ù„Ø§Ø­Ù‚Ø§','Error, probeer het later opnieuw.','Erreur, merci de rÃ©essayer plus tard.','Fehler, bitte versuche es spÃ¤ter nochmal.','Errore, riprova piÃ¹ tardi.','Erro, Por favor tente novamente.','ÐžÑˆÐ¸Ð±ÐºÐ°, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÑƒ Ð¿Ð¾Ð·Ð¶Ðµ.','Error, trata de nuevo.','Hata, LÃ¼tfen daha sonra tekrar deneyin.'),(743,'upgrade_to_pro','','Upgrade To Pro','Ù„ØªØ±Ù‚ÙŠØ© Ø§Ù„Ù‰ Ù…Ø²Ø§ÙŠØ§ Ø£ÙƒØ«Ø±','Upgraden naar Pro','Passer Ã  Pro','Upgrade auf Pro','Aggiornamento a Pro','Upgrade To Pro','ÐžÐ±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð´Ð¾ Pro','Para actualizar Pro','Pro&#039;ya yÃ¼kselt'),(744,'no_answer','','No answer','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø±Ø¯','Geen antwoord','Pas de rÃ©ponse','Keine Antwort','Nessuna risposta','Sem resposta','ÐÐµÑ‚ Ð¾Ñ‚Ð²ÐµÑ‚Ð°','Sin respuesta','Cevap yok'),(745,'please_try_again_later','','Please try again later.','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ù„Ø§Ø­Ù‚Ø§.','Probeer het later opnieuw.','Veuillez rÃ©essayer plus tard.','Bitte versuchen Sie es spÃ¤ter noch einmal.','Per favore riprova piÃ¹ tardi.','Por favor, tente novamente mais tarde.','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÑƒ Ð¿Ð¾Ð·Ð¶Ðµ.','Por favor, intÃ©ntelo de nuevo mÃ¡s tarde.','LÃ¼tfen daha sonra tekrar deneyiniz.'),(746,'answered','','Answered !','ØªÙ… Ø§Ù„Ø±Ø¯ !','Beantwoord !','rÃ©pondre !','Beantwortet !','Risposte !','Respondidas !','ÐžÑ‚Ð²ÐµÑ‚Ð¸Ð» !','Contestada !','YanÄ±tlanan !'),(747,'call_declined','','Call declined','ØªÙ… ÙØµÙ„ Ø§Ù„Ø¥ØªØµØ§Ù„ Ù…Ù† Ù‚Ø¨Ù„ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Call gedaald','Appel refusÃ©','Anruf abgelehnt','chiamata rifiutato','chamada diminuiu','Ð’Ñ‹Ð·Ð¾Ð² Ð¾Ñ‚ÐºÐ°Ð·Ð°Ð»ÑÑ','Llamar declinÃ³','Ã§aÄŸrÄ± reddedildi'),(748,'call_declined_desc','','The recipient has declined the call, please try again later.','ØªÙ… ÙØµÙ„ Ø§Ù„Ø¥ØªØµØ§Ù„ Ù…Ù† Ù‚Ø¨Ù„ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…, Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ù„Ø§Ø­Ù‚Ø§.','De ontvanger heeft de oproep geweigerd, probeer het later opnieuw.','Le destinataire a refusÃ© l&#39;appel, s&#39;il vous plaÃ®t essayer Ã  nouveau plus tard.','Der EmpfÃ¤nger hat den Anruf abgelehnt, bitte versuchen Sie es spÃ¤ter noch einmal.','Il destinatario ha rifiutato la chiamata, si prega di riprovare piÃ¹ tardi.','O destinatÃ¡rio recusou a chamada, por favor tente novamente mais tarde.','ÐŸÐ¾Ð»ÑƒÑ‡Ð°Ñ‚ÐµÐ»ÑŒ Ð¾Ñ‚ÐºÐ»Ð¾Ð½Ð¸Ð» Ð²Ñ‹Ð·Ð¾Ð², Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÑƒ Ð¿Ð¾Ð·Ð¶Ðµ.','El receptor ha rechazado la llamada, por favor intente de nuevo mÃ¡s tarde.','AlÄ±cÄ± Ã§aÄŸrÄ±yÄ± reddetti, daha sonra tekrar deneyin.'),(749,'new_video_call','','New video call','Ø¥ØªØµØ§Ù„ ÙÙŠØ¯ÙŠÙˆ','Nieuwe video-oproep','Nouvel appel vidÃ©o','Neue Videoanruf','Nuovo video chiamata','chamada de vÃ­deo novo','ÐÐ¾Ð²Ð¾Ðµ Ð²Ð¸Ð´ÐµÐ¾ Ð²Ñ‹Ð·Ð¾Ð²Ð°','Nueva llamada de video','Yeni video gÃ¶rÃ¼ÅŸmesi'),(750,'new_video_call_desc','','wants to video chat with you.','ÙŠØ±ÙŠØ¯ Ø§Ù† ÙŠØ­Ø¯Ø«Ùƒ Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„ÙÙŠØ¯ÙŠÙˆ.','wil video chatten met je.','veut le chat vidÃ©o avec vous.','mÃ¶chte mit Ihnen Video-Chat.','vuole chat video con te.','quer vÃ­deo chat com vocÃª.','Ñ…Ð¾Ñ‡ÐµÑ‚ Ð²Ð¸Ð´ÐµÐ¾-Ñ‡Ð°Ñ‚ Ñ Ð²Ð°Ð¼Ð¸.','quiere chatear con video con usted.','Sizinle gÃ¶rÃ¼ntÃ¼lÃ¼ sohbet etmek istiyor.'),(751,'decline','','Decline','ÙØµÙ„','Afwijzen','DÃ©clin','Ablehnen','Declino','DeclÃ­nio','ÑÐ½Ð¸Ð¶ÐµÐ½Ð¸Ðµ','DisminuciÃ³n','dÃ¼ÅŸÃ¼ÅŸ'),(752,'accept_and_start','','Accept &amp; Start','Ø§Ù„Ù‚Ø¨ÙˆÙ„ &amp; Ø§Ù„Ø¨Ø¯Ø£','Accepteer &amp; Start','Accepter &amp; Start','Akzeptieren &amp; Start','Accetta &amp; Start','Aceitar &amp; Start','Ð¿Ñ€Ð¸Ð½Ð¸Ð¼Ð°Ñ‚ÑŒ','Aceptar &amp; Start','Kabul Et ve BaÅŸlaÄ±'),(753,'calling','','Calling','ÙŠØªÙ… Ø§Ù„Ø¥ØªØµØ§Ù„','Roeping','Appel','Berufung','chiamata','chamada','Ð¿Ñ€Ð¸Ð·Ð²Ð°Ð½Ð¸Ðµ','VocaciÃ³n','Ã§aÄŸrÄ±'),(754,'calling_desc','','Please wait for your friend answer.','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ø¥Ù†ØªØ¸Ø§Ø± Ù„Ø­ÙŠÙ† ÙŠØªÙ… Ø§Ù„Ø±Ø¯ Ù…Ù† Ù‚Ø¨Ù„ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù….','Wacht tot je vriend antwoord op de video chat starten.','S&#39;il vous plaÃ®t attendre votre ami rÃ©pondre Ã  dÃ©marrer le chat vidÃ©o.','Bitte warten Sie, Ihr Freund das Video-Chat zu starten beantworten.','Si prega di attendere per il vostro amico a rispondere per avviare la chat video.','Por favor aguarde o amigo responder para iniciar o bate-papo de vÃ­deo.','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð´Ð¾Ð¶Ð´Ð¸Ñ‚Ðµ, Ð²Ð°Ñˆ Ð´Ñ€ÑƒÐ³ Ð¾Ñ‚Ð²ÐµÑ‚Ð¸Ñ‚ÑŒ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð½Ð°Ñ‡Ð°Ñ‚ÑŒ Ð²Ð¸Ð´ÐµÐ¾ Ñ‡Ð°Ñ‚.','Por favor, espere a que su amigo responde a iniciar el chat de vÃ­deo.','ArkadaÅŸÄ±nÄ±z, video sohbet baÅŸlatmak iÃ§in cevap iÃ§in bekleyin.'),(755,'your_friends_chat','','You&#039;re friends on {site_name}','Ø£Ù†ØªÙ… Ø£ØµØ¯Ù‚Ø§Ø¡ ÙÙŠ {site_name}','Je bent vrienden op {site_name}','Vous Ãªtes amis sur {site_name}','Sie sind freunde auf {site_name}','Sei amici su {site_name}','VocÃª Ã© amigos {site_name}','Ð’Ñ‹ Ð´Ñ€ÑƒÐ·ÑŒÑ Ð½Ð° {site_name}','Eres amigos en {site_name}','Ãœzerinde dostuz {site_name}'),(756,'your_following','','You&#039;re following','Ø£Ù†Øª ØªØªØ§Ø¨Ø¹','Je volgt','Vous suivez','Sie folgen','Stai seguendo','VocÃª estÃ¡ seguindo','Ð’Ñ‹ ÑÐ»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ðµ','Usted estÃ¡ siguiendo','Ä°zlediÄŸiniz'),(757,'see_all','','See all','Ø§Ù„ÙƒÙ„','alles zien','Voir tout','Alles sehen','Vedi tutti','Ver todos','Ð£Ð²Ð¸Ð´ÐµÑ‚ÑŒ Ð²ÑÐµ','Ver todo','Hepsini gÃ¶r'),(758,'me','','Me','Ø£Ù†Ø§','Me','Moi','Mich','Me','Mim','Ð¼ÐµÐ½Ñ','Yo','Ben'),(759,'post_promotion_hot','','Boost up to {monthly_boosts} posts&lt;br&gt;','Ù†Ø´Ø± Ø§ÙƒØ«Ø± Ù…Ù† {monthly_boosts} Ù…Ù†Ø´ÙˆØ±Ø§Øª &lt;br&gt;&lt;small&gt;({monthly_boosts} ÙÙŠ Ù†ÙØ³ Ø§Ù„ÙˆÙ‚Øª 7/24)&lt;/small&gt;','{monthly_boosts} berichten omhoog plaatsen&lt;br&gt;&lt;small&gt;({monthly_boosts} tegelijk 7/24)&lt;/small&gt;','Boost up to {monthly_boosts} posts&lt;br&gt;&lt;small&gt;({monthly_boosts} in same time 7/24)&lt;/small&gt;','Bis zu {monthly_boosts} BeitrÃ¤ge hervorheben&lt;br&gt;&lt;small&gt;({monthly_boosts} BeitrÃ¤ge gleichen Zeit 7/24)&lt;/small&gt;','Boost fino a {monthly_boosts} posti&lt;br&gt;&lt;small&gt;({monthly_boosts} nel contempo 7/24)&lt;/small&gt;','Impulsionar atÃ© {monthly_boosts} postagens&lt;br&gt;&lt;small&gt;({monthly_boosts} ao mesmo tempo 7/24)&lt;/small&gt;','ÐŸÐ¾Ð²Ñ‹ÑˆÐµÐ½Ð¸Ðµ Ð´Ð¾ {monthly_boosts} ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹&lt;br&gt;&lt;small&gt;({monthly_boosts} Ð² Ñ‚Ð¾ Ð¶Ðµ Ð²Ñ€ÐµÐ¼Ñ 7/24)&lt;/small&gt;','Promociona asta {monthly_boosts} posts&lt;br&gt;&lt;small&gt;({monthly_boosts} al mismo tiempo 7/24)&lt;/small&gt;','{monthly_boosts} mesaj yÃ¼kselt&lt;br&gt;&lt;small&gt;({monthly_boosts} aynÄ± zamanda 7/24)&lt;/small&gt;'),(760,'page_promotion_hot','','Boost up to {monthly_boosts} pages&lt;br&gt;','Ù†Ø´Ø± Ø§ÙƒØ«Ø± Ù…Ù† {monthly_boosts} ØµÙØ­Ø§Øª&lt;br&gt;&lt;small&gt;({monthly_boosts} ÙÙŠ Ù†ÙØ³ Ø§Ù„ÙˆÙ‚Øª 7/24)&lt;/small&gt;','{monthly_boosts} pagina&#039;s omhoog plaatsen&lt;br&gt;&lt;small&gt;({monthly_boosts} tegelijk 7/24)&lt;/small&gt;','Boost up to {monthly_boosts} pages&lt;br&gt;&lt;small&gt;({monthly_boosts} in same time 7/24)&lt;/small&gt;','Bis zu {monthly_boosts} Seiten hervorheben&lt;br&gt;&lt;small&gt;({monthly_boosts} Seiten zur gleichen Zeit 7/24)&lt;/small&gt;','Boost fino a {monthly_boosts} pagine&lt;br&gt;&lt;small&gt;({monthly_boosts} nel contempo 7/24)&lt;/small&gt;','Impulsionar atÃ© {monthly_boosts} pÃ¡ginas&lt;br&gt;&lt;small&gt;({monthly_boosts} ao mesmo tempo 7/24)&lt;/small&gt;','ÐŸÐ¾Ð²Ñ‹ÑˆÐµÐ½Ð¸Ðµ Ð´Ð¾ {monthly_boosts} ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†&lt;br&gt;&lt;small&gt;({monthly_boosts} Ð² Ñ‚Ð¾ Ð¶Ðµ Ð²Ñ€ÐµÐ¼Ñ 7/24)&lt;/small&gt;','Promociona asta {monthly_boosts} paginas&lt;br&gt;&lt;small&gt;({monthly_boosts} al mismo tiempo 7/24)&lt;/small&gt;','{monthly_boosts} sayfa yÃ¼kselt&lt;br&gt;&lt;small&gt;({monthly_boosts} aynÄ± zamanda 7/24)&lt;/small&gt;'),(761,'post_promotion_ultima','','Boost up to {yearly_boosts} posts&lt;br&gt;','Ù†Ø´Ø± Ø§ÙƒØ«Ø± Ù…Ù† {yearly_boosts} Ù…Ù†Ø´ÙˆØ±Ø§Øª&lt;br&gt;&lt;small&gt;({yearly_boosts} ÙÙŠ Ù†ÙØ³ Ø§Ù„ÙˆÙ‚Øª 7/24)&lt;/small&gt;','{yearly_boosts} berichten omhoog plaatsen&lt;br&gt;&lt;small&gt;({yearly_boosts} tegelijk 7/24)&lt;/small&gt;','Boost up to {yearly_boosts} posts&lt;br&gt;&lt;small&gt;({yearly_boosts} in same time 7/24)&lt;/small&gt;','Bis zu {yearly_boosts} BeitrÃ¤ge hervorheben&lt;br&gt;&lt;small&gt;({yearly_boosts} BeitrÃ¤ge zur gleichen Zeit 7/24)&lt;/small&gt;','Boost fino a {yearly_boosts} posti&lt;br&gt;&lt;small&gt;({yearly_boosts} nel contempo 7/24)&lt;/small&gt;','Impulsionar atÃ© {yearly_boosts} postagens&lt;br&gt;&lt;small&gt;({yearly_boosts} ao mesmo tempo 7/24)&lt;/small&gt;','ÐŸÐ¾Ð²Ñ‹ÑÐ¸Ñ‚ÑŒ Ð´Ð¾ {yearly_boosts} Ð´Ð¾Ð»Ð¶Ð½Ð¾ÑÑ‚ÐµÐ¹&lt;br&gt;&lt;small&gt;({yearly_boosts} Ð² Ñ‚Ð¾ Ð¶Ðµ Ð²Ñ€ÐµÐ¼Ñ 7/24)&lt;/small&gt;','Promociona asta {yearly_boosts} posts&lt;br&gt;&lt;small&gt;({yearly_boosts} al mismo tiempo 7/24)&lt;/small&gt;','{yearly_boosts} mesaj yÃ¼kselt&lt;br&gt;&lt;small&gt;({yearly_boosts} aynÄ± zamanda 7/24)&lt;/small&gt;'),(762,'page_promotion_ultima','','Boost up to {yearly_boosts} pages&lt;br&gt;','Ù†Ø´Ø± Ø§ÙƒØ«Ø± Ù…Ù† {yearly_boosts} ØµÙØ­Ø§Øª&lt;br&gt;&lt;small&gt;({yearly_boosts} ÙÙŠ Ù†ÙØ³ Ø§Ù„ÙˆÙ‚Øª 7/24)&lt;/small&gt;','{yearly_boosts} pagina&#039;s omhoog plaatsen&lt;br&gt;&lt;small&gt;({yearly_boosts} tegelijk 7/24)&lt;/small&gt;','Boost up to {yearly_boosts} pages&lt;br&gt;&lt;small&gt;({yearly_boosts} in same time 7/24)&lt;/small&gt;','Bis zu {yearly_boosts} Seiten hervorheben&lt;br&gt;&lt;small&gt;({yearly_boosts} Seiten zur gleichen Zeit 7/24)&lt;/small&gt;','Boost fino a {yearly_boosts} pagine&lt;br&gt;&lt;small&gt;({yearly_boosts} nel contempo 7/24)&lt;/small&gt;','Impulsionar atÃ© {yearly_boosts} pÃ¡ginas&lt;br&gt;&lt;small&gt;({yearly_boosts} ao mesmo tempo 7/24)&lt;/small&gt;','ÐŸÐ¾Ð²Ñ‹ÑˆÐµÐ½Ð¸Ðµ Ð´Ð¾ {yearly_boosts} ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†&lt;br&gt;&lt;small&gt;({yearly_boosts} Ð² Ñ‚Ð¾ Ð¶Ðµ Ð²Ñ€ÐµÐ¼Ñ 7/24)&lt;/small&gt;','Promociona asta {yearly_boosts} paginas&lt;br&gt;&lt;small&gt;({yearly_boosts} al mismo tiempo 7/24)&lt;/small&gt;','{yearly_boosts} sayfa yÃ¼kselt&lt;br&gt;&lt;small&gt;({yearly_boosts} aynÄ± zamanda 7/24)&lt;/small&gt;'),(763,'post_promotion_vip','','Boost up to {lifetime_boosts} posts&lt;br&gt;','Ù†Ø´Ø± Ø§ÙƒØ«Ø± Ù…Ù† {lifetime_boosts} Ù…Ù†Ø´ÙˆØ±Ø§Øª&lt;br&gt;&lt;small&gt;({lifetime_boosts} ÙÙŠ Ù†ÙØ³ Ø§Ù„ÙˆÙ‚Øª 7/24)&lt;/small&gt;','Boost up to {lifetime_boosts} posts&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;','Boost up to {lifetime_boosts} posts&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;','Bis zu {lifetime_boosts} BeitrÃ¤ge hervorheben&lt;br&gt;&lt;small&gt;({lifetime_boosts} BeitrÃ¤ge zur gleichen Zeit 7/24)&lt;/small&gt;','Boost fino a {lifetime_boosts} posti&lt;br&gt;&lt;small&gt;({lifetime_boosts} nel contempo 7/24)&lt;/small&gt;','Impulsionar atÃ© {lifetime_boosts} postagens&lt;br&gt;&lt;small&gt;({lifetime_boosts} ao mesmo tempo 7/24)&lt;/small&gt;','ÐŸÐ¾Ð²Ñ‹ÑÐ¸Ñ‚ÑŒ Ð´Ð¾ {lifetime_boosts} Ð´Ð¾Ð»Ð¶Ð½Ð¾ÑÑ‚ÐµÐ¹&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;','Promociona asta {lifetime_boosts} posts&lt;br&gt;&lt;small&gt;({lifetime_boosts} al mismo tiempo 7/24)&lt;/small&gt;','{lifetime_boosts} mesaj yÃ¼kselt&lt;br&gt;&lt;small&gt;({lifetime_boosts} aynÄ± zamanda 7/24)&lt;/small&gt;'),(764,'page_promotion_vip','','Boost up to {lifetime_boosts} pages&lt;br&gt;','Ù†Ø´Ø± Ø§ÙƒØ«Ø± Ù…Ù† {lifetime_boosts} ØµÙØ­Ø§Øª&lt;br&gt;&lt;small&gt;({lifetime_boosts} ÙÙŠ Ù†ÙØ³ Ø§Ù„ÙˆÙ‚Øª 7/24)&lt;/small&gt;','Boost up to {lifetime_boosts} pages&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;','Boost up to {lifetime_boosts} pages&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;','Bis zu {lifetime_boosts} Seiten hervorheben&lt;br&gt;&lt;small&gt;({lifetime_boosts} Seiten zur gleichen Zeit 7/24)&lt;/small&gt;','Boost fino a {lifetime_boosts} pagine&lt;br&gt;&lt;small&gt;({lifetime_boosts} nel contempo 7/24)&lt;/small&gt;','Impulsionar atÃ© {lifetime_boosts} pÃ¡ginas&lt;br&gt;&lt;small&gt;({lifetime_boosts} ao mesmo tempo 7/24)&lt;/small&gt;','ÐŸÐ¾Ð²Ñ‹ÑˆÐµÐ½Ð¸Ðµ Ð´Ð¾ {lifetime_boosts} ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†&lt;br&gt;&lt;small&gt;({lifetime_boosts} Ð² Ñ‚Ð¾ Ð¶Ðµ Ð²Ñ€ÐµÐ¼Ñ 7/24)&lt;/small&gt;','Promociona asta {lifetime_boosts} paginas&lt;br&gt;&lt;small&gt;({lifetime_boosts} al mismo tiempo 7/24)&lt;/small&gt;','{lifetime_boosts} sayfa yÃ¼kselt&lt;br&gt;&lt;small&gt;({lifetime_boosts} aynÄ± zamanda 7/24)&lt;/small&gt;'),(765,'sign_up','','Sign up','Ø§Ù„ØªØ³Ø¬ÙŠÙ„','Aanmelden','S&#39;inscrire','Anmelden','Registrazione','inscrever-se','Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒÑÑ','RegÃ­strate','Kaydol'),(766,'youtube','','YouTube','ÙŠÙˆØªÙŠÙˆØ¨','YouTube','YouTube','YouTube','YouTube','Youtube','YouTube','Youtube','YouTube'),(767,'my_products','','My Products','Ù…Ù†ØªØ¬Ø§ØªÙŠ','mijn producten','Mes produits','Meine Produkte','I miei prodotti','meus produtos','ÐœÐ¾Ð¸ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚Ñ‹','Mis productos','ÃœrÃ¼nlerim'),(768,'choose_a_payment_method','','Choose a payment method','Ø§Ø®ØªØ± Ø·Ø±ÙŠÙ‚Ø© Ø§Ù„Ø¯ÙØ¹','Kies een betaalmethode','Choisissez une mÃ©thode de paiement','WÃ¤hlen Sie eine Zahlungsmethode','Scegliere un metodo di pagamento','Escolha um mÃ©todo de pagamento','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ ÑÐ¿Ð¾ÑÐ¾Ð± Ð¾Ð¿Ð»Ð°Ñ‚Ñ‹','Elija un mÃ©todo de pago','Bir Ã¶deme yÃ¶ntemi seÃ§in'),(769,'paypal','','PayPal','Ø¨Ø§ÙŠ Ø¨Ø§Ù„','PayPal','PayPal','PayPal','PayPal','PayPal','PayPal','PayPal','PayPal'),(770,'credit_card','','Credit Card','Ø¨Ø·Ø§Ù‚Ø© Ø§Ø¦ØªÙ…Ø§Ù†','Credit Card','Credit Card','Kreditkarte','Carta di credito','CartÃ£o de crÃ©dito','ÐšÑ€ÐµÐ´Ð¸Ñ‚Ð½Ð°Ñ ÐºÐ°Ñ€Ñ‚Ð°','Tarjeta de crÃ©dito','Kredi KartÄ±'),(771,'bitcoin','','Bitcoin','Ø¨ÙŠØªÙƒÙˆÙŠÙ†','Bitcoin','Bitcoin','Bitcoin','Bitcoin','Bitcoin','Bitcoin','Bitcoin','Bitcoin'),(772,'categories','','Categories','Ø§Ù„Ø¥Ù‚Ø³Ø§Ù…','CategorieÃ«n','CatÃ©gories','Kategorien','Categorie','Categorias','ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ð¸','CategorÃ­as','Kategoriler'),(773,'latest_products','','Latest Products','Ø¢Ø®Ø± Ø§Ù„Ù…Ù†ØªØ¬Ø§Øª','nieuwste producten','Derniers produits','Neueste Produkte','Gli ultimi prodotti','Produtos Mais recentes','ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸Ðµ Ð¿Ð¾ÑÑ‚ÑƒÐ¿Ð»ÐµÐ½Ð¸Ñ','Ãºltimos productos','Yeni Ã¼rÃ¼nler'),(774,'search_for_products_main','','Search for products','Ø¥Ø¨Ø­Ø« Ø¹Ù† Ù…Ù†ØªØ¬','Zoeken naar producten','Recherche de produits','Suche nach Produkten','Ricerca di prodotti','Pesquisa de produtos','ÐŸÐ¾Ð¸ÑÐº Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ†Ð¸Ð¸','BÃºsqueda de productos','ÃœrÃ¼n ara'),(775,'search_for_products','','Search for products in {category_name}','Ø¨Ø­Ø« Ø¹Ù† Ù…Ù†ØªØ¬ ÙÙŠ {category_name}','Zoeken naar producten in {category_name}','Recherche de produits dans {category_name}','Suche nach Produkten im {category_name}','Ricerca di prodotti in {category_name}','Pesquisa para os produtos em {category_name}','ÐŸÐ¾Ð¸ÑÐº Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ†Ð¸Ð¸ Ð² {category_name}','BÃºsqueda de productos en {category_name}','ÃœrÃ¼nlerde ara {category_name}'),(776,'no_available_products','','No available products to show.','Ù„Ø§ ØªÙˆØ¬Ø¯ Ù…Ù†ØªØ¬Ø§Øª Ù…ØªØ§Ø­Ø©.','Geen beschikbare tonend.','Pas de produits disponibles pour afficher.','Keine verfÃ¼gbaren Produkte zu zeigen.','Non ci sono prodotti disponibili da mostrare.','NÃ£o hÃ¡ produtos disponÃ­veis para mostrar.','ÐÐµÑ‚ Ð´Ð¾ÑÑ‚ÑƒÐ¿Ð½Ñ‹Ñ… Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚Ð¾Ð² Ð´Ð»Ñ Ð¾Ñ‚Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ.','No hay productos disponibles para mostrar.','KullanÄ±labilir bir Ã¼rÃ¼n bulunamadÄ±'),(777,'load_more_products','','Load more products','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ù†ØªØ¬Ø§Øª','Laad meer producten','Chargez plus de produits','Laden Sie weitere Produkte','Caricare piÃ¹ prodotti','Carregar mais produtos','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚Ð¾Ð²','Cargar mÃ¡s productos','Daha fazla Ã¼rÃ¼n gÃ¶ster'),(778,'sell_new_product','','Sell new product','Ø¨ÙŠØ¹ Ù…Ù†ØªØ¬ Ø¬Ø¯ÙŠØ¯','Verkoop een nieuw product','Vente nouveau produit','Verkauf neuer Produkte','Vendita nuovo prodotto','Vender novo produto','ÐŸÑ€Ð¾Ð´Ð°ÐµÐ¼ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚','Vender nuevos productos','Yeni bir Ã¼rÃ¼n sat'),(779,'description','','Description','Ø§Ù„ÙˆØµÙ','Beschrijving','La description','Beschreibung','Descrizione','DescriÃ§Ã£o','ÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ','DescripciÃ³n','AÃ§Ä±klama'),(780,'please_describe_your_product','','Please describe your product.','ÙŠØ±Ø¬Ù‰ ÙˆØµÙ Ø§Ù„Ù…Ù†ØªØ¬ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ.','Beschrijf uw product.','S&#39;il vous plaÃ®t dÃ©crire votre produit.','Bitte beschreiben Sie Ihr Produkt.','Si prega di descrivere il tuo prodotto.','Por favor, descreva o seu produto.','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¾Ð¿Ð¸ÑˆÐ¸Ñ‚Ðµ Ð²Ð°Ñˆ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚.','Por favor describa su producto.','ÃœrÃ¼nÃ¼nÃ¼zÃ¼ aÃ§Ä±klayÄ±n'),(781,'used','','Used','Ù…Ø³ØªØ¹Ù…Ù„','Gebruikt','UtilisÃ©','Benutzt','Usato','Usava','Ð˜ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐµÐ¼Ñ‹Ð¹','Usado','KullanÄ±lan'),(782,'new','','New','Ø¬Ø¯ÙŠØ¯','Nieuwe','Nouveau','Neu','Nuovo','Novo','Ð½Ð¾Ð²Ñ‹Ð¹','Nuevo','Yeni'),(783,'price','','Price','Ø§Ù„Ø³Ø¹Ø±','Prijs','Prix','Preis','Prezzo','PreÃ§o','Ð¦ÐµÐ½Ð°','Precio','Fiyat'),(784,'your_product_price','','Your product price in USD currency ($), e.g (10.99)','Ø³Ø¹Ø± Ø§Ù„Ù…Ù†ØªØ¬ ÙÙŠ Ø§Ù„Ø¯ÙˆÙ„Ø§Ø± ($), Ù…Ø«Ø§Ù„ (10.99)','Uw product prijs in USD valuta ($), e.g (10.99)','Votre prix du produit en monnaie USD ($), e.g (10.99)','Ihr Produktpreis in USD ($), e.g (10.99)','Il prezzo del prodotto in valuta USD ($), e.g (10.99)','Seu preÃ§o do produto em USD ($), por exemplo (10,99)','Ð’Ð°ÑˆÐ° Ñ†ÐµÐ½Ð° Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚Ð° Ð² USD Ð²Ð°Ð»ÑŽÑ‚Ðµ ($) Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸, Ð½Ð°Ð¿Ñ€Ð¸Ð¼ÐµÑ€ (10,99)','Su precio del producto en USD ($), por ejemplo (10.99)','ÃœrÃ¼n fiyatÄ± dolar para birimi cinsinden ($), Ã¶r: (10.99)'),(785,'edit_product','','Edit product','ØªØ­Ø±ÙŠØ± Ø§Ù„Ù…Ù†ØªØ¬','Product bewerken','Modifier le produit','Bearbeiten Produkt','Modifica del prodotto','Editar produto','Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚','Editar producto','ÃœrÃ¼n dÃ¼zenle'),(786,'publish','','Publish','Ù†Ø´Ø±','Publiceren','Publier','VerÃ¶ffentlichen','Pubblicare','Publicar','ÐŸÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ñ‚ÑŒ','Publicar','YayÄ±nla'),(787,'more_info','','More info','Ø§Ù„Ù…Ø²ÙŠØ¯','Meer informatie','More info','Mehr Infos','Ulteriori informazioni','Mais informaÃ§Ãµes','Ð‘Ð¾Ð»ÑŒÑˆÐµ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¸','MÃ¡s informaciÃ³n','Daha fazla bilgi'),(788,'contact_seller','','Contact seller','ØªÙˆØ§ØµÙ„ Ù…Ø¹ Ø§Ù„Ø¨Ø§Ø¦Ø¹','De aanbieders contacteren','Contacter le vendeur','VerkÃ¤ufer kontaktieren','Contatta il venditore','Contactar fornecedor','Ð¡Ð²ÑÐ·Ð°Ñ‚ÑŒÑÑ Ñ Ð¿Ñ€Ð¾Ð´Ð°Ð²Ñ†Ð¾Ð¼','Contacte al vendedor','SatÄ±cÄ± olmak iÃ§in baÅŸvurun'),(789,'by_product','','By &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, posted {product_time}, in &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;','Ø¨ÙˆØ§Ø³Ø·Ø© &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, Ù†Ø´Ø± {product_time}, ÙÙŠ &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;','Door &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, gepost {product_time}, in &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;','Par &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, postÃ© {product_time}, dans &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;','Durch &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, gesendet {product_time}, im &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;','Di &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, postato {product_time}, in &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;','Por &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, postou {product_time}, em &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;','ÐŸÐ¾ &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, Ñ€Ð°Ð·Ð¼ÐµÑ‰ÐµÐ½Ð½Ð¾Ð¼ {product_time}, Ð² &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;','Por &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, publicado {product_time}, en &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;','SatÄ±ÅŸda olan Ã¼rÃ¼n: &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, SatÄ±ÅŸa baÅŸladÄ±ÄŸÄ± zaman: {product_time}, SatÄ±ÅŸ kategorisi: &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;'),(790,'payment_declined','','Payment declined, please try again later.','Ø­Ø¯Ø«Øª Ù…Ø´ÙƒÙ„Ø© ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ù…Ø±Ø© Ø£Ø®Ø±Ù‰ ÙÙŠ ÙˆÙ‚Øª Ù„Ø§Ø­Ù‚.','Betaling geweigerd, probeer het later opnieuw.','Paiement refusÃ©, s&#39;il vous plaÃ®t essayer Ã  nouveau plus tard.','Zahlung abgelehnt, bitte versuchen Sie es spÃ¤ter noch einmal.','Pagamento rifiutato, riprova piÃ¹ tardi.','Pagamento recusado, por favor tente novamente mais tarde.','ÐŸÐ»Ð°Ñ‚ÐµÐ¶ Ð¾Ñ‚ÐºÐ»Ð¾Ð½ÐµÐ½, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÑƒ Ð¿Ð¾Ð·Ð¶Ðµ.','Pago rechazado, por favor intente de nuevo mÃ¡s tarde.','Ã–deme reddedildi, lÃ¼tfen daha sonra tekrar deneyin.'),(791,'c_payment','','Confirming payment, please wait..','ØªØ£ÙƒÙŠØ¯ Ø§Ù„Ø¯ÙØ¹ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ù„Ø§Ù†ØªØ¸Ø§Ø± ..','Bevestiging van de betaling, even geduld aub ..','paiement confirmant, s&#39;il vous plaÃ®t patienter ..','BestÃ¤tigen Zahlung, bitte warten ..','Confermando il pagamento, si prega di attendere ..','ConfirmaÃ§Ã£o do pagamento, aguarde por favor ..','ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ðµ Ð¾Ð¿Ð»Ð°Ñ‚Ñ‹, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð´Ð¾Ð¶Ð´Ð¸Ñ‚Ðµ ..','Confirmar el pago, por favor espere ..','Ã–deme kontrol ediliyor, lÃ¼tfen bekleyin.'),(792,'earn_users','','Earn up to ${amount} for each user your refer to us !','Ø¥ÙƒØ³Ø¨ Ù…Ø§ ÙŠØµÙ„ Ø§Ù„Ù‰ ${amount} Ù„ÙƒÙ„ Ù…Ø³ØªØ®Ø¯Ù… ÙŠØ³Ø¬Ù„ Ù…Ù† Ø¬Ø§Ù†Ø¨Ùƒ !','Verdien tot ${amount} voor elke gebruiker je verwijzen naar ons!','Gagnez jusqu&#39;Ã  ${amount} pour chaque utilisateur de votre rÃ©fÃ©rence Ã  nous!','Verdienen Sie bis zu ${amount} FÃ¼r jeden Benutzer beziehen Ihr uns!','Guadagna fino a ${amount} per ogni utente il vostro si riferiscono a noi!','Ganhe atÃ© ${amount} para cada usuÃ¡rio sua referem-se a nÃ³s!','Ð—Ð°Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ð¹Ñ‚Ðµ Ð´Ð¾ ${amount} Ð´Ð»Ñ ÐºÐ°Ð¶Ð´Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð²Ð°ÑˆÐµÐ³Ð¾ Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ñ‚ÐµÑÑŒ Ðº Ð½Ð°Ð¼!','Gane hasta ${amount} para cada usuario su refieren a nosotros!','Her kullanÄ±cÄ±dan ${amount} daha fazla kazanmak iÃ§in bizi izleyin.'),(793,'earn_users_pro','','Earn up to ${amount} for each user your refer to us and will subscribe to any of our pro packages.','Ø¥ÙƒØ³Ø¨ Ù…Ø§ ÙŠØµÙ„ Ø§Ù„Ù‰ ${amount} Ù„ÙƒÙ„ Ù…Ø³ØªØ®Ø¯Ù… ÙŠØ³Ø¬Ù„ Ù…Ù† Ø¬Ø§Ù†Ø¨Ùƒ ÙˆÙŠØ´ØªØ±Ùƒ Ø¨Ø§Ø­Ø¯Ù‰ Ø¹Ø±ÙˆØ¶Ù†Ø§','Verdien tot ${amount} voor elke gebruiker je verwijzen naar ons en zal zich abonneren op een van onze propakketten.','Gagnez jusqu&#39;Ã  ${amount} pour chaque utilisateur de votre rÃ©fÃ©rence Ã  nous et souscrira Ã  un de nos forfaits pro.','Verdienen Sie bis zu ${amount} FÃ¼r jeden Benutzer beziehen Ihr fÃ¼r uns und wird zu einem unserer Pro-Pakete abonnieren.','Guadagna fino a ${amount} per ogni utente il vostro si riferiscono a noi e sottoscriverÃ  uno qualsiasi dei nostri pacchetti pro.','Ganhe atÃ© ${amount} para cada usuÃ¡rio sua referem-se a nÃ³s e vai inscrever-se a qualquer um dos nossos profissionais pacotes.','Ð—Ð°Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ð¹Ñ‚Ðµ Ð´Ð¾ ${amount} Ð´Ð»Ñ ÐºÐ°Ð¶Ð´Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð²Ð°ÑˆÐµÐ³Ð¾ Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ñ‚ÐµÑÑŒ Ðº Ð½Ð°Ð¼ Ð¸ Ð¿Ð¾Ð´Ð¿Ð¸ÑÐ°Ñ‚ÑŒÑÑ Ð½Ð° Ð»ÑŽÐ±Ð¾Ð¹ Ð¸Ð· Ð½Ð°ÑˆÐ¸Ñ… Ð¿Ñ€Ð¾Ñ„ÐµÑÑÐ¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ñ‹Ñ… Ð¿Ð°ÐºÐµÑ‚Ð¾Ð².','Gane hasta ${amount} para cada usuario su refieren a nosotros y suscribirse a cualquiera de nuestros redactores paquetes.','Her kullanÄ±cÄ±dan ${amount} kazanmak iÃ§in daha fazla pro paketlerimize abone olacak.'),(794,'my_affiliates','','My Affiliates','Ø¯Ø¹ÙˆØ© Ø§Ù„Ø£ØµØ¯Ù‚Ø§Ø¡ Ø¨Ø§Ù„Ù…ÙƒØ§ÙØ£Ø©','Mijn Affiliates','Mes AffiliÃ©s','Meine Affiliates','I miei affiliati','meus Afiliados','ÐœÐ¾Ð¸ Ð¤Ð¸Ð»Ð¸Ð°Ð»Ñ‹','Mis Afiliados','Benim referanslarÄ±m'),(795,'my_balance','','Current balance','Ø±ØµÙŠØ¯ÙŠ','Mijn balans','Mon solde','Mein Gleichgewicht','Il mio equilibrio','Meu saldo','ÐœÐ¾Ð¹ Ð±Ð°Ð»Ð°Ð½Ñ','Mi balance','Bakiyem'),(796,'your_ref_link','','Your affiliate link is','Ø§Ù„Ù„ÙŠÙ†Ùƒ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ù‡Ùˆ','Uw affiliate link is','Votre lien d&#39;affiliation est','Ihre Affiliate Link ist','Il tuo link:','Sua ligaÃ§Ã£o da filial Ã©','Ð’Ð°ÑˆÐ° Ð¿Ð°Ñ€Ñ‚Ð½ÐµÑ€ÑÐºÐ°Ñ ÑÑÑ‹Ð»ÐºÐ°','Su red de afiliados es','Referans adresi'),(797,'your_balance','','Your balance is ${balance}, minimum withdrawal request is ${m_withdrawal}','Ø±ØµÙŠØ¯Ùƒ Ù‡Ùˆ ${balance}, Ø§Ù„Ø­Ø¯ Ø§Ù„Ø£Ø¯Ù†Ù‰ Ù„Ø·Ù„Ø¨ Ø§Ù„Ø³Ø­Ø¨ ${m_withdrawal}','Uw saldo is ${balance}, minimum een verzoek tot uitbetaling ${m_withdrawal}','Votre solde est ${balance}, demande de retrait minimum est ${m_withdrawal}','Ihre Waage ist ${balance}, minimum withdrawal request is ${m_withdrawal}','La bilancia Ã¨ ${balance}, richiesta di prelievo minimo Ã¨ ${m_withdrawal}','Seu saldo Ã© de R ${balance} equilÃ­brio, o pedido de retirada mÃ­nima Ã© de R ${m_withdrawal}','Ð’Ð°Ñˆ Ð±Ð°Ð»Ð°Ð½Ñ ÑÐ¾ÑÑ‚Ð°Ð²Ð»ÑÐµÑ‚ ${balance} Ð±Ð°Ð»Ð°Ð½Ñ, Ð¼Ð¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ð²Ñ‹Ð²Ð¾Ð´ ÑÑ€ÐµÐ´ÑÑ‚Ð² ÑÐ¾ÑÑ‚Ð°Ð²Ð»ÑÐµÑ‚ ${m_withdrawal}','Su saldo es de ${balance} equilibrio, la solicitud de retiro mÃ­nimo es ${m_withdrawal}','Bakiyeniz ${balance}, minimum Ã§ekebileceÄŸiniz tutar ${m_withdrawal}'),(798,'your_balance_is','','Your balance is','Ø±ØµÙŠØ¯Ùƒ Ù‡Ùˆ','Uw saldo is','Votre solde est','Ihre waage ist','La bilancia Ã¨','Seu saldo Ã©','Ð’Ð°Ñˆ Ð±Ð°Ð»Ð°Ð½Ñ','Su saldo es','Bakiyeniz'),(799,'paypal_email','','PayPal email','Ø£ÙŠÙ…ÙŠÙ„ Ø§Ù„Ø¨Ø§ÙŠØ¨Ø§Ù„ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ','PayPal email','PayPal email','PayPal email','PayPal email','Email do Paypal','PayPal Ð¿Ð¾ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ðµ','E-mail de Paypal','PayPal e-posta adresi'),(800,'amount_usd','','Amount (USD)','Ø§Ù„Ù‚ÙŠÙ…Ø© (Ø¯ÙˆÙ„Ø§Ø± Ø§Ù…Ø±ÙŠÙƒÙŠ)','Bedrag (USD)','Montant (USD)','Menge (USD)','QuantitÃ  (USD)','Montante (USD)','Ð¡ÑƒÐ¼Ð¼Ð° (USD)','Monto (USD)','Tutar (USD)'),(801,'request_withdrawal','','Request withdrawal','Ø§Ø³Ø­Ø¨ Ø§Ù„Ø±ØµÙŠØ¯','verzoek tot uitbetaling','Demande de retrait','Antrag rÃ¼ckzug','richiesta di prelievo','pedido de retirada','Ð—Ð°Ð¿Ñ€Ð¾Ñ Ð²Ñ‹Ð²Ð¾Ð´Ð°','solicitud de retiro','Para Ã§ekme talebi'),(802,'payment_history','','Payment History','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¯ÙØ¹','Betaalgeschiedenis','Historique de paiement','Zahlungshistorie','Storico dei pagamenti','HistÃ³rico de pagamento','Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ Ð¿Ð»Ð°Ñ‚ÐµÐ¶ÐµÐ¹','historial de pagos','Ã–deme tarihi'),(803,'amount','','Amount','Ø§Ù„Ù‚ÙŠÙ…Ø©','Bedrag','Montant','Menge','QuantitÃ ','Quantidade','ÐšÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾','Cantidad','Tutar'),(804,'declined','','Declined','ØªÙ… Ø§Ù„Ø±ÙØ¶','Afgewezen','RefusÃ©e','Abgelehnt','Rifiutato','Recusado','ÐžÑ‚ÐºÐ»Ð¾Ð½ÐµÐ½Ð¾','disminuido','Reddedildi'),(805,'approved','','Approved','Ù… Ø§Ù„Ù‚Ø¨ÙˆÙ„','Aangenomen','A approuvÃ©','Genehmigt','Approvato','aprovado','ÑƒÑ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð½Ñ‹Ð¹','Aprobado','OnaylandÄ±'),(806,'total_votes','','Total votes','Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„Ø£ØµÙˆØ§Øª','Totaal aantal stemmen','Des votes','Anzahl der Kundenbewertungen','Totale voti','total de votos','Ð’ÑÐµÐ³Ð¾ Ð³Ð¾Ð»Ð¾ÑÐ¾Ð²','Total de votos','Toplam oy'),(807,'mark_as_sold','','Mark Product As Sold','ØªÙ… Ø¨ÙŠØ¹ Ø§Ù„Ù…Ù†ØªØ¬','Mark Product zoals verkocht','Marque produit vendu','Mark erhÃ¤ltliche Erzeugnis','Mark prodotto commerciale','Mark produto comercializado','ÐœÐ°Ñ€ÐºÐ¸Ñ€Ð¾Ð²ÐºÐ° Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚Ð° ÐšÐ°Ðº ÐŸÑ€Ð¾Ð´Ð°Ð½Ð¾','Marca de producto comercializado','SatÄ±lan Ã¼rÃ¼n'),(808,'added_new_product_for_sell','','added new product for sell.','Ø¶Ø§Ù Ù…Ù†ØªØ¬ Ø¬Ø¯ÙŠØ¯ Ù„Ù„Ø¨ÙŠØ¹.','toegevoegd nieuw product voor verkoopt.','nouveau produit ajoutÃ© pour vendre.','hinzugefÃ¼gt neues Produkt zu verkaufen.','nuovo prodotto aggiunto per vendere.','adicionou novo produto para vender.','Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚ Ð´Ð»Ñ Ð¿Ñ€Ð¾Ð´Ð°Ð¶Ð¸.','aÃ±adido nuevo producto para la venta.','Yeni Ã¼rÃ¼n satÄ±ÅŸ iÃ§in eklendi'),(809,'product_name','','Product Name','Ø§Ø³Ù… Ø§Ù„Ù…Ù†ØªØ¬','productnaam','Nom du produit','Produktname','nome del prodotto','Nome do Produto','Ð½Ð°Ð¸Ð¼ÐµÐ½Ð¾Ð²Ð°Ð½Ð¸Ðµ Ñ‚Ð¾Ð²Ð°Ñ€Ð°','nombre del producto','ÃœrÃ¼n adÄ±'),(810,'in_stock','','In stock','Ù…ØªØ§Ø­','Op voorraad','en magasin','Auf Lager','Disponibile','Em estoque','Ð’ Ð½Ð°Ð»Ð¸Ñ‡Ð¸Ð¸','En stock','Stokda kaÃ§ adet var'),(811,'sold','','Sold','ØªÙ… Ø§Ù„Ø¨ÙŠØ¹','Uitverkocht','Vendu','Verkauft','Venduto','Vendido','ÐŸÑ€Ð¾Ð´Ð°Ð½','Vendido','SatÄ±lan'),(812,'answer','','Answer','Ø§Ù„Ø¬ÙˆØ§Ø¨','Antwoord','RÃ©pondre','Antworten','Risposta','Responda','ÐžÑ‚Ð²ÐµÑ‚','Responder','Cevap'),(813,'add_answer','','Add answer','Ø¥Ø¶Ø§ÙØ© Ø¬ÙˆØ§Ø¨','Antwoord toevoegen','Ajouter une rÃ©ponse','In Antwort','Aggiungi risposta','Adicionar resposta','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¾Ñ‚Ð²ÐµÑ‚','AÃ±adir respuesta','Cevap ekle'),(814,'authenticating','','Authenticating','Ø¬Ø§Ø±ÙŠ ØªØ¯Ù‚ÙŠÙ‚ Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª','Authentiserende','Authentifier','Authentifizieren','autenticazione','autenticaÃ§Ã£o','ÑƒÐ´Ð¾ÑÑ‚Ð¾Ð²ÐµÑ€','de autenticaciÃ³n','Kimlik doÄŸrulama'),(815,'welcome_back','','Welcome back!','Ø£Ù‡Ù„Ø§ Ø¨Ùƒ!','Welkom terug!','Nous saluons le retour!','Willkommen zurÃ¼ck!','Ben tornato!','Bem vindo de volta!','Ð”Ð¾Ð±Ñ€Ð¾ Ð¿Ð¾Ð¶Ð°Ð»Ð¾Ð²Ð°Ñ‚ÑŒ!','Â¡Dar una buena acogida!','Tekrar hoÅŸgeldiniz!'),(816,'welcome_','','Welcome!','Ø£Ù‡Ù„Ø§ Ø¨Ùƒ!','Welkom!','Bienvenue!','Willkommen!','Benvenuto!','Bem vinda!','Ð”Ð¾Ð±Ñ€Ð¾ Ð¿Ð¾Ð¶Ð°Ð»Ð¾Ð²Ð°Ñ‚ÑŒ!','Â¡Bienvenido!','HoÅŸgediniz!'),(817,'connect_with_people','','Connect with people.','ØªÙˆØ§ØµÙ„ Ù…Ø¹ Ø§Ù„Ù†Ø§Ø³.','Contact maken met mensen.','Communiquer avec les gens.','Verbinden Sie sich mit Menschen.','Connettiti con persone.','Conectar com as pessoas.','ÐžÐ±Ñ‰Ð°Ð¹Ñ‚ÐµÑÑŒ Ñ Ð»ÑŽÐ´ÑŒÐ¼Ð¸.','Conectar con la gente.','Ä°nsanlarla sÃ¼rekli baÄŸlantÄ±da ol.'),(818,'make_new_friends','','Make new friends.','ÙƒÙˆÙ† ØµØ¯Ø§Ù‚Ø§Øª Ø¬Ø¯ÙŠØ¯Ø©.','Maak nieuwe vrienden.','Se faire de nouveaux amis.','Neue Freunde finden.','Fare nuovi amici.','Fazer novos amigos.','Ð—Ð°Ð²ÐµÑÑ‚Ð¸ Ð½Ð¾Ð²Ñ‹Ñ… Ð´Ñ€ÑƒÐ·ÐµÐ¹.','Hacer nuevos amigos.','Yeni arkadaÅŸlar edin.'),(819,'share_your_memories','','Share your memories.','Ø´Ø§Ø±Ùƒ Ø°ÙƒØ±ÙŠØ§ØªÙƒ.','Deel je herinneringen.','Partagez vos souvenirs.','Teilen Sie Ihre Erinnerungen.','Condividi i tuoi ricordi.','Partilhar as suas memÃ³rias.','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ñ‚ÐµÑÑŒ ÑÐ²Ð¾Ð¸Ð¼Ð¸ Ð²Ð¾ÑÐ¿Ð¾Ð¼Ð¸Ð½Ð°Ð½Ð¸ÑÐ¼Ð¸.','Compartir sus recuerdos.','AnÄ±larÄ±nÄ± paylaÅŸ.'),(820,'create_new_relationships','','Create new relationships.','Ø£Ù†Ø´Ù‰Ø¡ Ø¹Ù„Ø§Ù‚Ø§Øª Ø¬Ø¯ÙŠØ¯Ø©.','Maak nieuwe relaties.','CrÃ©er de nouvelles relations.','Erstellen Sie neue Beziehungen.','Crea nuove relazioni.','Criar novos relacionamentos.','Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ð½Ð¾Ð²Ñ‹Ñ… Ð¾Ñ‚Ð½Ð¾ÑˆÐµÐ½Ð¸Ð¹.','Crear nuevas relaciones.','Yeni bir iliÅŸki oluÅŸtur.'),(821,'discover_new_places','','Discover new places.','Ø¥ÙƒØªØ´Ù Ø£Ù…Ø§ÙƒÙ† Ø¬Ø¯ÙŠØ¯Ø©.','Ontdek nieuwe plaatsen.','DÃ©couvrez de nouveaux endroits.','Entdecken Sie neue Orte.','Scoprire posti nuovi.','Descubra novos lugares.','ÐžÑ‚ÐºÑ€Ð¾Ð¹Ñ‚Ðµ Ð´Ð»Ñ ÑÐµÐ±Ñ Ð½Ð¾Ð²Ñ‹Ðµ Ð¼ÐµÑÑ‚Ð°.','Descubrir nuevos lugares.','Yeni yerler keÅŸfet.'),(822,'forgot_your_password','','Forgot your password?','Ù‡Ù„ Ù†Ø³ÙŠØª ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±?','Je wachtwoord vergeten?','Mot de passe oubliÃ©?','Haben Sie Ihr Passwort vergessen','Hai dimenticato la password?','Esqueceu sua senha?','Ð—Ð°Ð±Ñ‹Ð»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ?','Â¿Olvidaste tu contraseÃ±a?','Åžifreni mi unuttun?'),(823,'invalid_markup','','Invalid markup, please try to reset your password again','Ø§Ù„Ø¹Ù„Ø§Ù…Ø© ØºÙŠØ± ØµØ§Ù„Ø­Ø©ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ù„Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ† ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ Ù…Ø±Ø© Ø£Ø®Ø±Ù‰','Ongeldige markup, dan kunt u proberen om uw wachtwoord opnieuw in te resetten','balisage non valide, s&#39;il vous plaÃ®t essayez de rÃ©initialiser votre mot de passe','UngÃ¼ltige Markup, versuchen Sie Ihr Passwort wieder zurÃ¼cksetzen','markup non valido, provare a reimpostare nuovamente la password','marcaÃ§Ã£o invÃ¡lida, por favor, tente redefinir sua senha novamente','ÐÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ð°Ñ Ñ€Ð°Ð·Ð¼ÐµÑ‚ÐºÐ°, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ ÑÐ±Ñ€Ð¾ÑÐ¸Ñ‚ÑŒ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ ÐµÑ‰Ðµ Ñ€Ð°Ð·','marcado no vÃ¡lido, intenta restablecer la contraseÃ±a de nuevo','GeÃ§ersiz karakter kullandÄ±nÄ±z lÃ¼tfen tekrar deneyin.'),(824,'go_back','','Go back','Ø§Ù„Ø±Ø¬ÙˆØ¹','Go back','Go back','Geh zurÃ¼ck','Go back','Volte','Ð’Ð¾Ð·Ð²Ñ€Ð°Ñ‰Ð°Ñ‚ÑŒÑÑ','Regresa','Geri git'),(825,'terms_agreement','','By creating your account, you agree to our','Ù‚Ø¨Ù„ Ø¥Ù†Ø´Ø§Ø¡ Ø§Ù„Ø­Ø³Ø§Ø¨ Ø§Ù„Ø®Ø§Øµ Ø¨ÙƒØŒ ÙØ¥Ù†Ùƒ ØªÙˆØ§ÙÙ‚ Ø¹Ù„Ù‰','Door het maken van uw account, gaat u akkoord met onze','En crÃ©ant votre compte, vous acceptez nos','Durch die Erstellung Ihres Kontos stimmen Sie unseren','Creando il tuo account, accettate la nostra','Ao criar sua conta, vocÃª concorda com a nossa','ÐŸÑ€Ð¸ ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ð¸ ÑƒÑ‡ÐµÑ‚Ð½Ð¾Ð¹ Ð·Ð°Ð¿Ð¸ÑÐ¸, Ð²Ñ‹ ÑÐ¾Ð³Ð»Ð°ÑÐ½Ñ‹ Ñ Ð½Ð°ÑˆÐ¸Ð¼Ð¸','Al crear su cuenta, usted estÃ¡ de acuerdo con nuestra','HesabÄ±nÄ±zÄ± oluÅŸturduÄŸunuzda gizlilik ÅŸartlarÄ±mÄ±zÄ± kabul etmiÅŸ sayÄ±lÄ±rsÄ±nÄ±z.'),(826,'please_choose_price','','Please choose a price for your product','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ø®ØªÙŠØ§Ø± Ø³Ø¹Ø± Ø§Ù„Ù…Ù†ØªØ¬ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ','Kies een prijs voor uw product','S&#39;il vous plaÃ®t choisir un prix pour votre produit','Bitte wÃ¤hlen Sie einen Preis fÃ¼r Ihr Produkt','Scegliere un prezzo per il prodotto','Por favor, escolha um preÃ§o para seu produto','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ñ†ÐµÐ½Ñƒ Ð´Ð»Ñ Ð²Ð°ÑˆÐµÐ³Ð¾ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚Ð°','Por favor, elija un precio para su producto','LÃ¼tfen dÃ¼rtmek iÃ§in bir fiyat seÃ§iniz'),(827,'please_choose_c_price','','Please choose a correct value for your price','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ø®ØªÙŠØ§Ø± Ø§Ù„Ù‚ÙŠÙ…Ø© Ø§Ù„ØµØ­ÙŠØ­Ø© Ù„Ù„Ø³Ø¹Ø± Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ','Kies een juiste waarde voor uw prijs','S&#39;il vous plaÃ®t choisir une valeur correcte pour votre prix','Bitte wÃ¤hlen Sie einen korrekten Wert fÃ¼r Ihr Preis','Scegliere un valore corretto per il vostro prezzo','Por favor, escolha um valor correto para o seu preÃ§o','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð´Ð»Ñ Ð²Ð°ÑˆÐµÐ¹ Ñ†ÐµÐ½Ðµ','Por favor, elija un valor correcto para el precio','LÃ¼tfen fiyatÄ± gÃ¼ncellerken bir deÄŸer giriniz'),(828,'please_upload_image','','Please upload at least 1 photo','ÙŠØ±Ø¬Ù‰ ØªØ­Ù…ÙŠÙ„ ØµÙˆØ±Ø© ÙˆØ§Ø­Ø¯ ÙƒØ­Ø¯ Ø§Ø¯Ù†Ù‰','Upload ten minste 1 foto','S&#39;il vous plaÃ®t tÃ©lÃ©charger au moins 1 photo','Bitte laden Sie mindestens 1 Foto','Carica almeno 1 foto','FaÃ§a o upload de pelo menos 1 foto','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð·Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚Ðµ Ð¿Ð¾ ÐºÑ€Ð°Ð¹Ð½ÐµÐ¹ Ð¼ÐµÑ€Ðµ 1 Ñ„Ð¾Ñ‚Ð¾','Sube al menos 1 foto','LÃ¼tfen en az bir fotoÄŸraf yÃ¼kleyin'),(829,'you_have_already_voted','','You have already voted this poll.','Ù„Ù‚Ø¯ Ù‚Ù…Øª Ø¨Ø§Ù„ØªØµÙˆÙŠØª Ø¨Ø§Ù„ÙØ¹Ù„ Ù„Ù‡Ø°Ø§ Ø§Ù„Ø¥Ø³ØªØ·Ù„Ø§Ø¹.','Je hebt al deze poll gestemd.','Vous avez dÃ©jÃ  votÃ© ce sondage.','Sie haben bereits abgestimmt diese Umfrage.','Hai giÃ  votato questo sondaggio.','VocÃª jÃ¡ votou nesta enquete.','Ð’Ñ‹ ÑƒÐ¶Ðµ Ð³Ð¾Ð»Ð¾ÑÐ¾Ð²Ð°Ð»Ð¸ ÑÑ‚Ð¾Ñ‚ Ð¾Ð¿Ñ€Ð¾Ñ.','Ya ha votado esta encuesta.','Zaten bu ankete oy kullandÄ±n'),(830,'you_have_pending_request','','You have already a pending request.','Ù„Ø¯ÙŠÙƒ Ø¨Ø§Ù„ÙØ¹Ù„ Ø·Ù„Ø¨ Ù…Ø¹Ù„Ù‚.','U heeft al een aanvraag in behandeling.','Vous avez dÃ©jÃ  une demande en attente.','Sie haben bereits eine ausstehende Anforderung.','Hai giÃ  una richiesta in sospeso.','VocÃª jÃ¡ tem um pedido pendente.','Ð£ Ð²Ð°Ñ ÐµÑÑ‚ÑŒ ÑƒÐ¶Ðµ Ð¾Ñ‚Ð»Ð¾Ð¶ÐµÐ½Ð½Ñ‹Ð¹ Ð·Ð°Ð¿Ñ€Ð¾Ñ.','Ya tiene una solicitud pendiente.','Bekleyen bir isteÄŸin var'),(831,'invalid_amount_value','','Invalid amount value','Ù‚ÙŠÙ…Ø© ØºÙŠØ± ØµØ§Ù„Ø­Ø©','Ongeldig bedrag waarde','valeur de quantitÃ© non valide','UngÃ¼ltige Betragswert','valore di importo non valido','valor montante invÃ¡lido','ÐÐµÐ²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ ÑÑƒÐ¼Ð¼Ñ‹','valor de la cantidad no vÃ¡lida','GeÃ§ersiz bir miktar yazdÄ±n'),(832,'invalid_amount_value_your','','Invalid amount value, your amount is:','Ù‚ÙŠÙ…Ø© ØºÙŠØ± ØµØ§Ù„Ø­Ø©, Ø±ØµÙŠØ¯Ùƒ Ù‡Ùˆ:','Ongeldig bedrag waarde, uw bedrag is:','Valeur de quantitÃ© non valide, le montant est:','UngÃ¼ltige Menge Wert, Ihre Menge ist:','valore di importo non valido, l&#039;importo Ã¨:','valor montante invÃ¡lido, o valor Ã©:','ÐÐµÐ²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ ÑÑƒÐ¼Ð¼Ñ‹, Ð²Ð°ÑˆÐ° ÑÑƒÐ¼Ð¼Ð°:','valor de la cantidad no vÃ¡lida, su cantidad es:','GeÃ§ersiz bir miktar yazdÄ±nÄ±z, bu tutar geÃ¶erli deÄŸildir:'),(833,'invalid_amount_value_withdrawal','','Invalid amount value, minimum withdrawal request is:','Ù‚ÙŠÙ…Ø© ØºÙŠØ± ØµØ§Ù„Ø­Ø©, Ø§Ù„Ø­Ø¯ Ø§Ù„Ø£Ø¯Ù†Ù‰ Ù„Ø·Ù„Ø¨ Ø§Ù„Ø³Ø­Ø¨:','Ongeldig bedrag waarde, minimum een verzoek tot uitbetaling:','valeur de quantitÃ© non valide, demande de retrait minimum est de:','UngÃ¼ltige Betragswert , mindestauszahlungs anforderung ist:','Invalid amount value, minimum withdrawal request is:','valor montante invÃ¡lido, o pedido de retirada mÃ­nima Ã©:','ÐÐµÐ²ÐµÑ€Ð½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ ÑÑƒÐ¼Ð¼Ñ‹, Ð¼Ð¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ð²Ñ‹Ð²Ð¾Ð´ ÑÑ€ÐµÐ´ÑÑ‚Ð² ÑÐ²Ð»ÑÐµÑ‚ÑÑ:','valor de la cantidad no vÃ¡lida, la solicitud de retiro mÃ­nimo es:','GeÃ§ersiz tutar yazdÄ±nÄ±z minimum para Ã§ekme talebi:'),(834,'you_request_sent','','Your request has been sent, you&#039;ll receive an email regarding the payment details soon.','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø·Ù„Ø¨ÙƒØŒ Ø³ÙˆÙ ØªØªÙ„Ù‚Ù‰ Ø±Ø³Ø§Ù„Ø© Ø¨Ø±ÙŠØ¯ Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø­ÙˆÙ„ ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ù…Ø¨Ù„Øº ÙÙŠ ÙˆÙ‚Øª Ù‚Ø±ÙŠØ¨.','Uw aanvraag is verzonden, zult u een e-mail met betrekking tot de betalingsgegevens binnenkort.','Votre demande a Ã©tÃ© envoyÃ©e, vous recevrez un e-mail concernant les dÃ©tails de paiement bientÃ´t.','Ihre Anfrage gesendet wurde, erhalten Sie eine E-Mail in Bezug auf die Zahlungsdetails erhalten bald.','La vostra richiesta Ã¨ stata inviata, riceverai una e-mail per quanto riguarda i dati di pagamento al piÃ¹ presto.','O seu pedido foi enviado, vocÃª receberÃ¡ um e-mail sobre os detalhes de pagamento em breve.','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð±Ñ‹Ð» Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½, Ð²Ñ‹ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚Ðµ Ð¿Ð¾ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ðµ Ð¾ Ð´ÐµÑ‚Ð°Ð»ÑÑ… Ð¿Ð»Ð°Ñ‚ÐµÐ¶Ð° Ð² Ð±Ð»Ð¸Ð¶Ð°Ð¹ÑˆÐµÐµ Ð²Ñ€ÐµÐ¼Ñ.','Su solicitud ha sido enviado, recibirÃ¡ un correo electrÃ³nico con respecto a los datos de pago pronto.','Para Ã§ekme isteÄŸiniz baÅŸarÄ± bir ÅŸekilde bize ulaÅŸtÄ± yakÄ±nda bununla ilgili bir e-posta gÃ¶ndereceÄŸiz.'),(835,'turn_off_notification','','Turn off notification sound','Ø¥ÙŠÙ‚Ø§Ù ØµÙˆØª Ø§Ù„Ø¥Ø¹Ù„Ø§Ù…','Schakel meldingsgeluid','DÃ©sactiver la notification sonore','Schalten Sie eine Benachrichtigung Sound','Disattiva suono di notifica','Desligar o som de notificaÃ§Ã£o','Ð’Ñ‹ÐºÐ»ÑŽÑ‡Ð¸Ñ‚Ðµ Ð·Ð²ÑƒÐº ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ñ','Desactivar el sonido de notificaciÃ³n','Bildirim sesini kapat'),(836,'turn_on_notification','','Turn on notification sound','ØªØ´ØºÙŠÙ„ ØµÙˆØª Ø§Ù„Ø¥Ø¹Ù„Ø§Ù…','Zet meldingsgeluid','Activer la notification sonore','Schalten Sie eine Benachrichtigung Sound','Accendere il suono di notifica','Ligar som de notificaÃ§Ã£o','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚Ðµ Ð·Ð²ÑƒÐº ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ñ','Activar el sonido de notificaciÃ³n','Bildirim sesini aÃ§'),(837,'view_more_posts','','View {count} new posts','Ø¥Ø¸Ù‡Ø§Ø± {count} Ù…Ù†Ø´ÙˆØ± Ø¬Ø¯ÙŠØ¯','Uitzicht {count} nieuwe berichten','Vue {count} de nouveaux messages','Aussicht {count} neuen beitrÃ¤ge','Vista {count} nuovo messaggio','Veja {count} novas mensagens','ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ {count} Ð½Ð¾Ð²Ñ‹Ñ… ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹','Ver {count} mensajes nuevos','Yeni mesajlarÄ± gÃ¶rÃ¼ntÃ¼le {count}'),(838,'store_posts_by','','Store posts by','ØµÙ†Ù Ø§Ù„Ù…Ù†Ø´ÙˆØ±Ø§Øª','Store berichten van','postes de magasins par','Zeige BeitrÃ¤ge','Visualizza i messaggi di','mensagens de loja por','ÐœÐ°Ð³Ð°Ð·Ð¸Ð½ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ Ð¾Ñ‚','almacenar mensajes de','MaÄŸazada paylaÅŸan'),(839,'new_audio_call','','New audio call','Ø¥ØªØµØ§Ù„ Ø¬Ø¯ÙŠØ¯','Nieuwe audiogesprek','Nouveau appel audio','Neuer Audioanruf','Nuova chiamata audio','Nova chamada de Ã¡udio','ÐÐ¾Ð²Ñ‹Ð¹ Ð°ÑƒÐ´Ð¸Ð¾ Ð²Ñ‹Ð·Ð¾Ð²','Nueva llamada de audio','Yeni sesli Ã§aÄŸrÄ±'),(840,'new_audio_call_desc','','wants to talk with you.','ÙŠØ±ÙŠØ¯ Ø§Ù„ØªØ­Ø¯Ø« Ù…Ø¹Ùƒ.','wil met je praten.','Veut parler avec vous','MÃ¶chte mit Ihnen sprechen.','vuole parlare con te.','Quer falar com vocÃª','Ñ…Ð¾Ñ‡ÐµÑ‚ Ð¿Ð¾Ð³Ð¾Ð²Ð¾Ñ€Ð¸Ñ‚ÑŒ Ñ Ð²Ð°Ð¼Ð¸.','Quiere hablar contigo','Seninle konuÅŸmak istiyor.'),(841,'audio_call','','Audio call','Ù…ÙƒØ§Ù„Ù…Ø© ØµÙˆØªÙŠØ©','audio oproep','Appel audio','Audioanruf','chiamata audio','Chamada de Ã¡udio','ÐÑƒÐ´Ð¸Ð¾Ð²Ñ‹Ð·Ð¾Ð²','llamada de audio','Sesli arama'),(842,'audio_call_desc','','talking with','ÙŠØªØ­Ø¯Ø« Ù…Ø¹','praten met','parler avec','sprechen mit','parlando con','conversando com','Ð³Ð¾Ð²Ð¾Ñ€Ð¸Ñ‚ÑŒ Ñ','Hablando con','ile konuÅŸmak'),(843,'market','','Market','Ø§Ù„Ø³ÙˆÙ‚','Markt','MarchÃ©','Markt','Mercato','Mercado','Ñ€Ñ‹Ð½Ð¾Ðº','Mercado','Piyasa'),(844,'comment_post_label','','Comment','Ø¹Ù„Ù‚','Kommentar','Commentaire','Kommentar','Commento','Comentario','ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','Comentario','Yorum Yap'),(846,'by','','By','Ø¨ÙˆØ§Ø³Ø·Ø©','Door','Par','Durch','Di','De','ÐžÑ‚','Por','TarafÄ±ndan'),(847,'load_more_blogs','','Load more articles','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ù‚Ø§Ù„Ø§Øª','Laad meer artikelen',NULL,'Laden Sie weitere Artikel','Carica altri articoli','Carregar mais artigos','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð´Ñ€ÑƒÐ³Ð¸Ðµ ÑÑ‚Ð°Ñ‚ÑŒÐ¸','Cargar mÃ¡s artÃ­culos','Daha fazla makale yÃ¼kle'),(848,'blog','','Blog','Ù…Ø¯ÙˆÙ†Ø©','blog','Blog','Blog','blog','Blog','Ð‘Ð»Ð¾Ð³','Blog','Blog'),(849,'no_blogs_found','','No articles found','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£ÙŠØ© Ù…Ù‚Ø§Ù„Ø§Øª','Geen artikelen gevonden','Aucun article trouvÃ©','Keine Artikel gefunden','Nessun articolo trovato','Nenhum artigo encontrado','Ð¡Ñ‚Ð°Ñ‚ÑŒÐ¸ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ‹','No se encontraron artÃ­culos','Makale bulunamadÄ±'),(850,'most_recent_art','','Most recent articles','Ø£Ø­Ø¯Ø« Ø§Ù„Ù…Ù‚Ø§Ù„Ø§Øª','Meest recente artikelen','Articles les plus rÃ©cents','Die neuesten Artikel','Articoli piÃ¹ recenti','Artigos mais recentes','ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸Ðµ ÑÑ‚Ð°Ñ‚ÑŒÐ¸','ArtÃ­culos mÃ¡s recientes','En yeni makaleler'),(851,'create_new_article','','Create new article','Ø¥Ù†Ø´Ø§Ø¡ Ù…Ù‚Ø§Ù„Ø© Ø¬Ø¯ÙŠØ¯Ø©','Nieuwe artikel','CrÃ©er un nouvel article','Erstellen Sie einen neuen Artikel','Crea un nuovo articolo','Criar novo artigo','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð½Ð¾Ð²ÑƒÑŽ ÑÑ‚Ð°Ñ‚ÑŒÑŽ','Crear un nuevo artÃ­culo','Yeni makale oluÅŸtur'),(852,'my_articles','','My articles','Ù…Ù‚Ø§Ù„Ø§ØªÙŠ','mijn artikelen','Mes articles','Meine Artikel','I miei articoli','Meus artigos','ÐœÐ¾Ð¸ ÑÑ‚Ð°Ñ‚ÑŒÐ¸','Mis artÃ­culos','Makalelerim'),(853,'title','','Title','Ø¹Ù†ÙˆØ§Ù†','Titel','Titre','Titel','Titolo','TÃ­tulo','Ð·Ð°Ð³Ð»Ð°Ð²Ð¸Ðµ','TÃ­tulo','BaÅŸlÄ±k'),(854,'content','','Content','ÙŠØ­ØªÙˆÙ‰','Inhoud','Contenu','Inhalt','Soddisfare','ConteÃºdo','Ð¡Ð¾Ð´ÐµÑ€Ð¶Ð°Ð½Ð¸Ðµ','Contenido','Ä°Ã§erik'),(855,'select','','Select','ØªØ­Ø¯ÙŠØ¯','kiezen','SÃ©lectionner','WÃ¤hlen','Selezionare','Selecionar','Ð’Ñ‹Ð±Ñ€Ð°Ñ‚ÑŒ','Seleccionar','SeÃ§'),(856,'tags','','Tags','Ø§Ù„Ø¹Ù„Ø§Ù…Ø§Øª','Tags','Mots clÃ©s','Tags','tag','Tag','Ð¢ÐµÐ³Ð¸','Etiquetas','Etiketler'),(857,'thumbnail','','Thumbnail','ØµÙˆØ±Ø© Ù…ØµØºØ±Ø©','thumbnail','La vignette','Miniaturansicht','Thumbnail','Miniatura','Ð—Ð½Ð°Ñ‡Ð¾Ðº Ð²Ð¸Ð´ÐµÐ¾','Miniatura','KÃ¼Ã§Ã¼k resim'),(858,'published','','Published','Ù†Ø´Ø±Øª','Gepubliceerd','PubliÃ©','VerÃ¶ffentlicht','Pubblicato','Publicados','ÐžÐ¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð½Ð¾','Publicado','YayÄ±nlanan'),(859,'views','','Views','Ø§Ù„Ø¢Ø±Ø§Ø¡','Uitzichten','Vues','Ansichten','Visualizzazioni','VisualizaÃ§Ãµes','ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€Ñ‹','Puntos de vista','GÃ¶rÃ¼ntÃ¼ler'),(860,'article_updated','','Your article has been successfully updated','ØªÙ… ØªØ­Ø¯ÙŠØ« Ù…Ù‚Ø§Ù„ØªÙƒ Ø¨Ù†Ø¬Ø§Ø­','Uw artikel is bijgewerkt','Votre article a Ã©tÃ© mis Ã  jour avec succÃ¨s','Ihr Artikel wurde erfolgreich aktualisiert','Il tuo articolo Ã¨ stato aggiornato con successo','Seu artigo foi atualizado com sucesso','Ð’Ð°ÑˆÐ° ÑÑ‚Ð°Ñ‚ÑŒÑ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð°','Su artÃ­culo ha sido actualizado con Ã©xito','Makaleniz baÅŸarÄ±yla gÃ¼ncellendi'),(861,'article_added','','Your article has been successfully added','ØªÙ…Øª Ø¥Ø¶Ø§ÙØ© Ù…Ù‚Ø§Ù„ØªÙƒ Ø¨Ù†Ø¬Ø§Ø­','Uw artikel is succesvol toegevoegd','Votre article a Ã©tÃ© ajoutÃ© avec succÃ¨s','Ihr Artikel wurde erfolgreich hinzugefÃ¼gt','Il tuo articolo Ã¨ stato aggiunto','Seu artigo foi adicionado com Ãªxito','Ð’Ð°ÑˆÐ° ÑÑ‚Ð°Ñ‚ÑŒÑ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð°','Su artÃ­culo ha sido aÃ±adido correctamente','Makalen baÅŸarÄ±yla eklendi'),(862,'title_more_than10','','Title should be more than 10 characters','ÙŠØ¬Ø¨ Ø£Ù† ÙŠÙƒÙˆÙ† Ø§Ù„Ø¹Ù†ÙˆØ§Ù† Ø£ÙƒØ«Ø± Ù…Ù† 10 Ø£Ø­Ø±Ù','Titel moet meer zijn dan 10 tekens','Le titre doit comporter plus de 10 caractÃ¨res','Titel sollte mehr als 10 Zeichen sein','Il titolo dovrebbe essere piÃ¹ di 10 caratteri','O tÃ­tulo deve ter mais de 10 caracteres','Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº Ð´Ð¾Ð»Ð¶ÐµÐ½ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ñ‚ÑŒ Ð±Ð¾Ð»ÐµÐµ 10 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð².','El tÃ­tulo debe tener mÃ¡s de 10 caracteres','BaÅŸlÄ±k en fazla 10 karakter olmalÄ±dÄ±r'),(863,'desc_more_than32','','Description should be more than 32 characters','ÙŠØ¬Ø¨ Ø£Ù† ÙŠÙƒÙˆÙ† Ø§Ù„ÙˆØµÙ Ø£ÙƒØ«Ø± Ù…Ù† 32 Ø­Ø±ÙØ§','Beschrijving moet meer zijn dan 32 tekens','La description doit comporter plus de 32 caractÃ¨res','Beschreibung sollte mehr als 32 Zeichen sein','Descrizione dovrebbe essere piÃ¹ di 32 caratteri','A descriÃ§Ã£o deve ter mais de 32 caracteres','ÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ Ð´Ð¾Ð»Ð¶Ð½Ð¾ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ñ‚ÑŒ Ð±Ð¾Ð»ÐµÐµ 32 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð².','La descripciÃ³n debe tener mÃ¡s de 32 caracteres','AÃ§Ä±klama 32 karakterden uzun olmalÄ±'),(864,'please_fill_tags','','Please fill the tags field','ÙŠØ±Ø¬Ù‰ Ù…Ù„Ø¡ Ø­Ù‚Ù„ Ø§Ù„Ø¹Ù„Ø§Ù…Ø§Øª','Vul het veld labels','Remplissez le champ tags','Bitte fÃ¼llen Sie das Etikettenfeld aus','Si prega di compilare il campo tag','Preencha o campo de tags','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð·Ð°Ð¿Ð¾Ð»Ð½Ð¸Ñ‚Ðµ Ð¿Ð¾Ð»Ðµ Ñ‚ÐµÐ³Ð¾Ð²','Por favor rellene el campo de etiquetas','LÃ¼tfen etiketler alanÄ±nÄ± doldurun'),(865,'error_found','','Error found, please try again later','Ø­Ø¯Ø« Ø®Ø·Ø£ØŒ ÙŠØ±Ø¬Ù‰ Ø¥Ø¹Ø§Ø¯Ø© Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ù„Ø§Ø­Ù‚Ø§','Fout gevonden, probeer het later opnieuw','Une erreur a Ã©tÃ© trouvÃ©e, rÃ©essayez plus tard','Fehler gefunden, bitte spÃ¤ter nochmal versuchen','Errore trovato, si prega di riprovare piÃ¹ tardi','Ocorreu um erro, tente novamente mais tarde','ÐžÑˆÐ¸Ð±ÐºÐ° Ð½Ð°Ð¹Ð´ÐµÐ½Ð°. ÐŸÐ¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÑƒ Ð¿Ð¾Ð·Ð¶Ðµ.','Error encontrado. Vuelve a intentarlo mÃ¡s tarde.','Hata bulundu, lÃ¼tfen daha sonra tekrar deneyin.'),(866,'posted_on_blog','','Posted {BLOG_TIME} in {CATEGORY_NAME}.','Ù†Ø´Ø± {BLOG_TIME} ÙÙŠ {CATEGORY_NAME}.','Posted {BLOG_TIME} in {CATEGORY_NAME}.','Posted {BLOG_TIME} in {CATEGORY_NAME}.','Posted {BLOG_TIME} in {CATEGORY_NAME}.','Posted {BLOG_TIME} in {CATEGORY_NAME}.','Posted {BLOG_TIME} in {CATEGORY_NAME}.','Posted {BLOG_TIME} in {CATEGORY_NAME}.','Posted {BLOG_TIME} in {CATEGORY_NAME}.','YayÄ±nlanan {BLOG_TIME} {CATEGORY_NAME} da.'),(867,'created_new_blog','','created a new article','Ø¥Ù†Ø´Ø§Ø¡ Ù…Ù‚Ø§Ù„Ø© Ø¬Ø¯ÙŠØ¯Ø©','creÃ«erde nieuwe artikel','Nouvel article crÃ©Ã©','Erstellt neuen Artikel','nuovo articolo creato','Criou um novo artigo','Ð¡Ð¾Ð·Ð´Ð°Ð» Ð½Ð¾Ð²ÑƒÑŽ ÑÑ‚Ð°Ñ‚ÑŒÑŽ','CreÃ³ nuevo artÃ­culo','Yeni makale yazdÄ±'),(868,'forum','','Forum','Ù…Ù†ØªØ¯Ù‰','Forum','Forum','Forum','Forum','FÃ³rum','Ð¤Ð¾Ñ€ÑƒÐ¼','Foro','forum'),(869,'replies','','Replies','Ø±Ø¯ÙˆØ¯','Antwoorden','RÃ©ponses','Antworten','risposte','Respostas','ÐžÑ‚Ð²ÐµÑ‚Ñ‹','Respuestas','Cevaplar'),(870,'last_post','','Last Post','Ø¢Ø®Ø± Ù…Ø´Ø§Ø±ÙƒØ©','Laatste bericht','Dernier commentaire','Letzter Beitrag','Ultimo messaggio','Ãšltima postagem','ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸Ð¹ Ð¿Ð¾ÑÑ‚','Ultima publicaciÃ³n','Son Posta'),(871,'topic','','topic','Ù…ÙˆØ¶ÙˆØ¹','onderwerp','sujet','Thema','argomento','tema','Ñ‚ÐµÐ¼Ð°','tema','konu'),(872,'thread_search','','Threads search','Ø¨Ø­Ø« Ø§Ù„Ù…ÙˆØ§Ø¶ÙŠ ','Zoek naar discussies','Recherche de threads','Threads suchen','Ricerca di thread','Pesquisa de Threads','ÐŸÐ¾Ð¸ÑÐº Ð¿Ð¾ Ñ‚ÐµÐ¼Ð°Ð¼','BÃºsqueda de hilos','Konular arama'),(873,'create_new_topic','','Create new topic','Ø¥Ù†Ø´Ø§Ø¡ Ù…ÙˆØ¶ÙˆØ¹ Ø¬Ø¯ÙŠØ¯ ','Maak een nieuw onderwerp aan','CrÃ©er un nouveau sujet','Neues Thema erstellen','Crea nuovo argomento','Criar novo tÃ³pico','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð½Ð¾Ð²ÑƒÑŽ Ñ‚ÐµÐ¼Ñƒ','Crear nuevo tema','Yeni konu oluÅŸtur'),(874,'jump_to','','Jump to','Ø§Ù†ØªÙ‚Ù„ Ø§Ù„Ù‰ ','Spring naar','Sauter Ã ','Springen zu','Salta a','Pule para','ÐŸÐµÑ€ÐµÐ¹Ñ‚Ð¸ Ðº','Salta a','Atlamak'),(875,'my_threads','','My Threads','Ø§Ù„Ù…ÙˆØ§Ø¶ÙŠØ¹ ','Mijn draden','Mes fils','Meine FÃ¤den','I miei fili','Meus tÃ³picos','ÐœÐ¾Ð¸ Ñ‚ÐµÐ¼Ñ‹','Mis hilos','KonularÄ± ekle'),(876,'my_messages','','My Messages','Ø±Ø³Ø§Ø¦Ù„ÙŠ ','Mijn berichten','Mes messages','Meine Nachrichten','I miei messaggi','Minhas mensagens','ÐœÐ¾Ð¸ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ','Mis mensajes','MesajlarÄ±m'),(877,'headline','','Headline','Ø§Ù„Ø¹Ù†ÙˆØ§Ù† ','opschrift','Gros titre','Ãœberschrift','Titolo','TÃ­tulo','Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº','Titular','manÅŸet'),(878,'your_post','','Your post','Ù…Ù†Ø´ÙˆØ±Ùƒ ','Uw bericht','Votre publication','Deine Post','Il tuo post','Sua postagem','Ð’Ð°ÑˆÐµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Tu mensaje','Senin gÃ¶nderin'),(879,'reply','','Reply','Ø§Ù„Ø±Ø¯ ','Antwoord','RÃ©pondre','Antworten','rispondere','Resposta','ÐžÑ‚Ð²ÐµÑ‚Ð¸Ñ‚ÑŒ','Respuesta','cevap'),(880,'started_by','','Started by','Ø¨Ø¯Ø£ Ø¨ ','Begonnen door','CommencÃ© par','Angefangen von','Iniziato da','ComeÃ§ado por','ÐÐ°Ñ‡Ð°Ñ‚Ð¾','Comenzado por','BaÅŸlatan'),(881,'site_admin','','Site Admin','Ù…Ø³Ø¤ÙˆÙ„ Ø§Ù„Ù…ÙˆÙ‚Ø¹ ','Site Admin','Administrateur du site','Site Admin','Amministrazione del sito','Administrador do Site','ÐÐ´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€ ÑÐ°Ð¹Ñ‚Ð°','Administrador del sitio','Site YÃ¶neticisi'),(882,'registered','','Registered','Ù…Ø³Ø¬Ù„ ','Geregistreerd','Inscrit','Eingetragen','Registrato','Registrado','Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¹','Registrado','KayÄ±tlÄ±'),(883,'posts','','posts','Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª ','posts','des postes','BeitrÃ¤ge','messaggi','Postagens','ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹','Mensajes','MesajlarÄ±'),(884,'reply_to_topic','','Reply to this topic','Ø§Ù„Ø±Ø¯ Ø¹Ù„Ù‰ Ù‡Ø°Ø§ Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹ ','Antwoord op dit onderwerp','RÃ©pondre Ã  ce sujet','Antwort auf dieses Thema','Rispondi a questo argomento','Responder a este tÃ³pico','ÐžÑ‚Ð²ÐµÑ‚Ð¸Ñ‚ÑŒ Ð² ÑÑ‚Ñƒ Ñ‚ÐµÐ¼Ñƒ ÐžÑ‚ÐºÑ€Ñ‹Ñ‚ÑŒ Ð½Ð¾Ð²ÑƒÑŽ Ñ‚ÐµÐ¼Ñƒ','Responder a este tema','Bu konuyu cevapla'),(885,'topic_review','','Topic review','Ù…Ø±Ø§Ø¬Ø¹Ø© Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹ ','Onderwerp review','Examen de sujet','Thema Bewertung','Revisione degli argomenti','RevisÃ£o do tÃ³pico','ÐžÐ±Ð·Ð¾Ñ€ Ñ‚ÐµÐ¼Ñ‹','RevisiÃ³n de temas','Konu incelemesi'),(886,'your_reply','','Your Reply','Ø±Ø¯Ùƒ ','Uw reactie','Votre rÃ©ponse','Deine Antwort','La tua risposta','Sua resposta','Ð’Ð°Ñˆ Ð¾Ñ‚Ð²ÐµÑ‚','Tu respuesta','CevabÄ±nÄ±zÄ±'),(887,'list_of_users','','List of users','Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† ','Lijst van gebruikers','Liste des utilisateurs','Liste der Benutzer','Elenco degli utenti','Lista de usuÃ¡rios','Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹','Lista de usuarios','KullanÄ±cÄ± listesi'),(888,'post_count','','Posts count','Ø¹Ø¯Ø¯ Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª ','Berichten tellen','Nombre de postes','BeitrÃ¤ge zÃ¤hlen','I numeri contano','Posts count','ÐšÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹','Los posts cuentan','Mesaj sayÄ±sÄ±'),(889,'referrals','','Referrals','Ø§Ù„Ø¥Ø­Ø§Ù„Ø§Øª ','Verwijzingen','Renvois','Verweise','Referenti','ReferÃªncias','ÐŸÐµÑ€ÐµÑ…Ð¾Ð´Ð¾Ð²','Referencias','Tavsiye'),(890,'last_visit','','Last visit','Ø§Ù„Ø²ÙŠØ§Ø±Ø© Ø§Ù„Ø£Ø®ÙŠØ±Ø© ','Laatste bezoek','Derniere visite','Letzter Besuch','Lultima visita','Ultima visita','ÐŸÐ¾ÑÐ»ÐµÐ´Ð½ÐµÐµ Ð¿Ð¾ÑÐµÑ‰ÐµÐ½Ð¸Ðµ','Ãšltima visita','Son ziyaret'),(891,'general_search_terms','','General search terms','Ø¹Ø¨Ø§Ø±Ø§Øª Ø§Ù„Ø¨Ø­Ø« Ø§Ù„Ø¹Ø§Ù…Ø© ','Algemene zoektermen','Conditions gÃ©nÃ©rales de recherche','Allgemeine Suchbegriffe','Termini di ricerca generali','Termos gerais de pesquisa','ÐžÐ±Ñ‰Ð¸Ðµ ÑƒÑÐ»Ð¾Ð²Ð¸Ñ Ð¿Ð¾Ð¸ÑÐºÐ°','TÃ©rminos generales de bÃºsqueda','Genel arama terimleri'),(892,'search_for_term','','Search for term','Ø§Ù„Ø¨Ø­Ø« Ø¹Ù† Ù…ØµØ·Ù„Ø­ ','Zoek naar term','Rechercher un terme','Suche nach Begriff','Cerca termine','Pesquisar termo','ÐŸÐ¾Ð¸ÑÐº Ñ‚ÐµÑ€Ð¼Ð¸Ð½Ð°','Buscar tÃ©rmino','Terimi ara'),(893,'search_in','','Search in','Ø¨Ø­Ø« ÙÙŠ ','Zoek in','Rechercher dans','Suchen in','Cerca nel','Procure em','ÐŸÐ¾Ð¸ÑÐº Ð²','Busca en','AraÅŸtÄ±r'),(894,'search_in_forums','','Search Forums','Ø§Ù„Ø¨Ø­Ø« ÙÙŠ Ø§Ù„Ù…Ù†ØªØ¯ÙŠØ§Øª ','Zoeken in forums','Rechercher dans les forums','Foren durchsuchen','Cerca i forum','Pesquisar FÃ³runs','ÐŸÐ¾Ð¸ÑÐº Ð¿Ð¾ Ñ„Ð¾Ñ€ÑƒÐ¼Ñƒ Ð“Ð»Ð°Ð²Ð½Ð°Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ñ„Ð¾Ñ€ÑƒÐ¼Ð° Ð¤Ð¾Ñ€ÑƒÐ¼','Buscar en los foros','Forumlarda Ara'),(895,'search_in_threads','','Search in threads','Ø§Ù„Ø¨Ø­Ø« ÙÙŠ Ø§Ù„Ù…ÙˆØ§Ø¶ÙŠØ¹ ','Zoek in discussies','Rechercher dans les discussions','Suche in Threads','Cerca nei thread','Pesquisar nos tÃ³picos','Ð˜ÑÐºÐ°Ñ‚ÑŒ Ð² Ñ‚ÐµÐ¼Ð°Ñ…','Buscar en temas','KonularÄ± ara'),(896,'search_in_messages','','Search in messages','Ø§Ù„Ø¨Ø­Ø« ÙÙŠ Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ ','Zoek in berichten','Rechercher dans les messages','Suche in Nachrichten','Cerca nei messaggi','Pesquisar em mensagens','Ð˜ÑÐºÐ°Ñ‚ÑŒ Ð² ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÑÑ…','Buscar en mensajes','Mesajlarda ara'),(897,'search_subject_only','','Search subject only','Ù…ÙˆØ¶ÙˆØ¹ Ø§Ù„Ø¨Ø­Ø« ÙÙ‚Ø· ','Zoek alleen onderwerp','Rechercher uniquement sur le sujet','Nur Suchbegriff suchen','Cerca solo il soggetto','Procurar somente assunto','Ð¢Ð¾Ð»ÑŒÐºÐ¾ Ð¿Ð¾Ð¸ÑÐº','Solo tema de bÃºsqueda','Sadece konu ara'),(898,'threads','','threads','Ø§Ù„Ø®ÙŠÙˆØ· ','threads','Fils','FÃ¤den','fili','tÃ³picos','Ð¿Ð¾Ñ‚Ð¾ÐºÐ¸','trapos','ipler'),(899,'action','','Action','Ø¹Ù…Ù„ ','Actie','action','Aktion','Azione','AÃ§ao','Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ðµ','AcciÃ³n','Aksiyon'),(900,'posted','','Posted','ØªÙ… Ø§Ù„Ù†Ø´Ø± ','Geplaatst','PubliÃ©','Gesendet','Pubblicato','Postou','Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Al corriente','GÃ¶nderildi'),(901,'no_forums_found','','No forums to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ù…Ù†ØªØ¯ÙŠØ§Øª ','Geen forums gevonden','Aucun forum trouvÃ©','Keine Foren gefunden','Nessun forum trovato','Nenhum fÃ³rum encontrado','Ð¤Ð¾Ñ€ÑƒÐ¼ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½','No se encontraron foros','HiÃ§bir forum bulunamadÄ±'),(902,'never','','Never','Ø£Ø¨Ø¯Ø§ ','Nooit','Jamais','Nie','Mai','Nunca','ÐÐ¸ÐºÐ¾Ð³Ð´Ð°','Nunca','Asla'),(903,'no_replies_found','','No replies to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£ÙŠØ© Ø±Ø¯ÙˆØ¯ ','Geen antwoorden gevonden','Aucune rÃ©ponse trouvÃ©e','Keine Antworten gefunden','Nessuna risposta trovata','Nenhuma resposta encontrada','ÐÐµÑ‚ Ð¾Ñ‚Ð²ÐµÑ‚Ð¾Ð²','No se encontraron respuestas','YanÄ±t bulunamadÄ±'),(904,'no_threads_found','','No threads to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø³Ù„Ø§Ø³Ù„ Ù…Ø­Ø§Ø¯Ø«Ø§Øª ','Geen discussies gevonden','Aucun sujet trouvÃ©','Keine FÃ¤den gefunden','Non sono stati trovati thread','Nenhum tÃ³pico encontrado','Ð¢ÐµÐ¼Ñ‹ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ‹','No se encontraron hilos','Konu bulunamadÄ±'),(905,'no_members_found','','No members to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£ÙŠ Ø£Ø¹Ø¶Ø§Ø¡ ','Er zijn geen leden gevonden','Aucun membre trouvÃ©','Keine Mitglieder gefunden','Nessun membro trovato','Nenhum membro encontrado','Ð£Ñ‡Ð°ÑÑ‚Ð½Ð¸ÐºÐ¸ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ‹','No se encontraron miembros','Ãœye bulunamadÄ±'),(906,'no_sections_found','','No sections to show',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(907,'wrote','','wrote','ÙƒØªØ¨ ','schreef','a Ã©crit','schrieb','ha scritto','escrevi','Ð¿Ð¸ÑÐ°Ð»','EscribiÃ³','yazdÄ±'),(908,'edit','','Edit','ØªØµØ­ÙŠØ­','Bewerk','modifier','Bearbeiten','Modifica','Editar','Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ','Editar','DÃ¼zenleme'),(909,'edit_topic','','Edit topic','ØªØ¹Ø¯ÙŠÙ„ Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹ ','Bewerk onderwerp','Modifier le sujet','Thema bearbeiten','Modifica argomento','Editar tÃ³pico','Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ñ‚ÐµÐ¼Ñƒ','Editar tema','Konuyu dÃ¼zenle'),(910,'reply_saved','','Your reply was successfully saved','ØªÙ… Ø­ÙØ¸ Ø±Ø¯Ùƒ Ø¨Ù†Ø¬Ø§Ø­ ','Uw antwoord is succesvol opgeslagen','Votre rÃ©ponse a Ã©tÃ© enregistrÃ©e avec succÃ¨s','Ihre Antwort wurde erfolgreich gespeichert','La tua risposta Ã¨ stata salvata correttamente','Sua resposta foi salva com Ãªxito','Ð’Ð°Ñˆ Ð¾Ñ‚Ð²ÐµÑ‚ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½','Tu respuesta se ha guardado correctamente.','YanÄ±tÄ±nÄ±z baÅŸarÄ±yla kaydedildi'),(911,'reply_added','','Your reply was successfully added','ØªÙ…Øª Ø¥Ø¶Ø§ÙØ© Ø±Ø¯Ùƒ Ø¨Ù†Ø¬Ø§Ø­','Je antwoord is succesvol toegevoegd','Votre rÃ©ponse a Ã©tÃ© ajoutÃ©e avec succÃ¨s','Ihre Antwort wurde erfolgreich hinzugefÃ¼gt','La tua risposta Ã¨ stata aggiunta con successo','Sua resposta foi adicionada com Ãªxito','Ð’Ð°Ñˆ Ð¾Ñ‚Ð²ÐµÑ‚ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½','Tu respuesta se ha agregado correctamente.','YanÄ±tÄ±nÄ±z baÅŸarÄ±yla eklendi'),(912,'forum_post_added','','Your forum has been successfully added','ØªÙ…Øª Ø¥Ø¶Ø§ÙØ© Ù…Ø´Ø§Ø±ÙƒØ© Ø§Ù„Ù…Ù†ØªØ¯Ù‰ Ø¨Ù†Ø¬Ø§Ø­ ','Uw forum is succesvol toegevoegd','Votre forum a Ã©tÃ© ajoutÃ© avec succÃ¨s','Dein Forum wurde erfolgreich hinzugefÃ¼gt','Il tuo forum Ã¨ stato aggiunto con successo','Seu fÃ³rum foi adicionado com sucesso','Ð’Ð°Ñˆ Ñ„Ð¾Ñ€ÑƒÐ¼ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½','Tu foro se ha agregado correctamente','Forumunuz baÅŸarÄ±yla eklendi'),(913,'members','','Members','Ø£ÙØ±Ø§Ø¯','leden','Membres','Mitglieder','Utenti','Membros','Ñ‡Ð»ÐµÐ½Ñ‹','Miembros','Ãœyeler'),(914,'help','','Help','Ù…Ø³Ø§Ø¹Ø¯Ø© ','Helpen','Aidez-moi','Hilfe','Aiuto','Socorro','ÐŸÐ¾Ð¼Ð¾Ñ‰ÑŒ','Ayuda','yardÄ±m et'),(915,'search_terms_more4','','Type in one or more search terms, each must be at least 4 characters','Ø§ÙƒØªØ¨ Ø¹Ø¨Ø§Ø±Ø© Ø¨Ø­Ø« ÙˆØ§Ø­Ø¯Ø© Ø£Ùˆ Ø£ÙƒØ«Ø±ØŒ ÙˆÙŠØ¬Ø¨ Ø£Ù„Ø§ ÙŠÙ‚Ù„ Ø¹Ø¯Ø¯ Ø§Ù„Ø£Ø­Ø±Ù Ø¹Ù† 4 Ø£Ø­Ø±Ù ','Typ Ã©Ã©n of meer zoektermen, ieder moet minstens 4 karakters','Tapez un ou plusieurs termes de recherche, chacun doit Ãªtre dau moins 4 caractÃ¨res','Geben Sie einen oder mehrere Suchbegriffe ein, die jeweils muss mindestens 4 Zeichen lang sein','Geben Sie einen oder mehrere Suchbegriffe ein, die jeweils muss mindestens 4 Zeichen lang sein','Digite um ou mais termos de pesquisa, cada um deve ter pelo menos 4 caracteres','Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð¾Ð´Ð½Ð¾ Ð¸Ð»Ð¸ Ð½ÐµÑÐºÐ¾Ð»ÑŒÐºÐ¾ Ð¿Ð¾Ð¸ÑÐºÐ¾Ð²Ñ‹Ñ… Ñ‚ÐµÑ€Ð¼Ð¸Ð½Ð¾Ð², ÐºÐ°Ð¶Ð´Ñ‹Ð¹ Ð¸Ð· Ð½Ð¸Ñ… Ð´Ð¾Ð»Ð¶ÐµÐ½ Ð±Ñ‹Ñ‚ÑŒ Ð½Ðµ Ð¼ÐµÐ½ÐµÐµ 4-Ñ… ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð²','Tipo de uno o mÃ¡s tÃ©rminos de bÃºsqueda, cada uno debe tener al menos 4 caracteres','Bir veya daha fazla arama terimi girin, her En Az 4 karakter olmalÄ±dÄ±r'),(916,'events','','Events','Ø£Ø­Ø¯Ø§Ø«','Evenementen','Ã‰vÃ©nements','Veranstaltungen','eventi','Eventos','ÐœÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ','Eventos','Olaylar'),(917,'going','','Going','Ø°Ø§Ù‡Ø¨','gaand','Aller','Gehen','Andando','Indo','ÐŸÐ¾Ð¹Ð´Ñƒ','Yendo','gidiÅŸ'),(918,'interested','','Interested','ÙŠØ³ØªÙØ¯','GeÃ¯nteresseerd','IntÃ©ressÃ©','Interessiert','Interessato','Interessado','Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ½Ð¾Ðµ','Interesado','ilgili'),(919,'past','','Pastor','Ø§Ù„Ù…Ø§Ø¶ÙŠ','Verleden','PassÃ©','Vergangenheit','Passato','Passado','Ð¿Ñ€Ð¾ÑˆÐ»Ñ‹Ðµ','Pasado','geÃ§miÅŸ'),(920,'invited','','invited','Ø¯Ø¹ÙˆØ©','Uitgenodigd','InvitÃ©','Eingeladen','Invitato','Convidamos','Ð¿Ñ€Ð¸Ð³Ð»Ð°ÑˆÐµÐ½Ð½Ð¸','Invitado','Davetli'),(921,'you_are_going','','You are going','Ø§Ù†Øª Ø°Ø§Ù‡Ø¨','Jij gaat','Vous allez','Du gehst','Stai andando','VocÃª estÃ¡ indo','Ð’Ñ‹ ÑÐ¾Ð±Ð¸Ñ€Ð°ÐµÑ‚ÐµÑÑŒ','Usted va','Gidiyorsun'),(922,'you_are_interested','','You are interested','ÙƒÙ†Øª Ù…Ù‡ØªÙ…Ø§','Je bent geÃ¯nteresseerd','Tu es intÃ©ressÃ©','Sie sind interessiert','Sei interessato','VocÃª estÃ¡ interessado','Ð’Ñ‹ Ð·Ð°Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ¾Ð²Ð°Ð½Ñ‹','TÃº estÃ¡s interesado','Ä°lgilisin'),(923,'start_date','','Start date','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¨Ø¯Ø¡','Begin datum','Date de dÃ©but','Anfangsdatum','Data dinizio','Data de inÃ­cio','Ð”Ð°Ñ‚Ð° Ð½Ð°Ñ‡Ð°Ð»Ð°','Fecha de inicio','BaÅŸlangÄ±Ã§ tarihi'),(924,'end_date','','End date','ØªØ§Ø±ÙŠØ® Ø§Ù„Ø§Ù†ØªÙ‡Ø§Ø¡','Einddatum','Date de fin','Enddatum','Data di fine','Data final','Ð”Ð°Ñ‚Ð° Ð¾ÐºÐ¾Ð½Ñ‡Ð°Ð½Ð¸Ñ','Fecha final','BitiÅŸ tarihi'),(925,'location','','Location','Ù…ÙˆÙ‚Ø¹','Plaats','Emplacement','Lage','Posizione','localizaÃ§Ã£o','Ð Ð°ÑÐ¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ','UbicaciÃ³n','Konum'),(926,'event','','Event','Ù‡Ø¯Ù','Evenement','un Ã©vÃ©nement','Event','Evento','Evento','ÐœÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ðµ','Evento','Olay'),(927,'no_events_found','','No events to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£ÙŠØ© Ø£Ø­Ø¯Ø§Ø«','Geen evenementen gevonden','Aucun Ã©vÃ©nement trouvÃ©','Keine Veranstaltungen gefunden','Nessun evento trovato','Nenhum evento encontrado','Ð¡Ð¾Ð±Ñ‹Ñ‚Ð¸Ñ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ‹','No se han encontrado eventos','Etkinlik bulunamadÄ±'),(928,'event_you_may_like','','Events you may like','Ø§Ù„Ø£Ø­Ø¯Ø§Ø« Ø§Ù„ØªÙŠ Ù‚Ø¯ ØªØ¹Ø¬Ø¨Ùƒ','Evenementen die je misschien leuk vindt','Ã‰vÃ©nements que vous aimeriez','Veranstaltungen, die Sie mÃ¶gen kÃ¶nnen','Eventi che ti piacciono','Eventos que vocÃª pode gostar','ÐœÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð¼Ð¾Ð³ÑƒÑ‚ Ð²Ð°Ð¼ Ð¿Ð¾Ð½Ñ€Ð°Ð²Ð¸Ñ‚ÑŒÑÑ','Eventos que te pueden gustar','BeÄŸeneceÄŸiniz etkinlikler'),(929,'going_people','','Going people','Ø§Ù„Ø°Ù‡Ø§Ø¨ Ø§Ù„Ù†Ø§Ø³','Mensen gaan','Aller aux gens','Leute gehen','Andando gente','Indo as pessoas','Ð˜Ð´ÑƒÑ‰Ð¸Ðµ Ð»ÑŽÐ´Ð¸','Personas que van','Ä°nsanlara gidiyor'),(930,'interested_people','','Interested people','Ø§Ù„Ù†Ø§Ø³ Ø§Ù„Ù…Ù‡ØªÙ…ÙŠÙ†','GeÃ¯nteresseerde mensen','Les personnes intÃ©ressÃ©es','Interessierte Leute','Persone interessate','Pessoas interessadas','Ð—Ð°Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ¾Ð²Ð°Ð½Ð½Ñ‹Ðµ Ð»Ð¸Ñ†Ð°','Personas interesadas','Ä°lgilenen insanlar'),(931,'invited_people','','Invited people','Ø§Ù„Ø£Ø´Ø®Ø§Øµ Ø§Ù„Ù…Ø¯Ø¹ÙˆÙˆÙ†','Uitgenodigde mensen','Personnes invitÃ©es','Eingeladene Leute','Persone invitate','Pessoas convidadas','ÐŸÑ€Ð¸Ð³Ð»Ð°ÑˆÐµÐ½Ð½Ñ‹Ðµ Ð»ÑŽÐ´Ð¸','Personas invitadas','Davet edilenler'),(932,'event_added','','Your event was successfully added','ØªÙ…Øª Ø¥Ø¶Ø§ÙØ© Ù‡Ø°Ø§ Ø§Ù„Ø­Ø¯Ø« Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ø¨Ù†Ø¬Ø§Ø­','Uw evenement is toegevoegd','Votre Ã©vÃ©nement a Ã©tÃ© ajoutÃ© avec succÃ¨s','Ihre Veranstaltung wurde erfolgreich hinzugefÃ¼gt','Il vostro evento Ã¨ stato aggiunto','Seu evento foi adicionado com sucesso','Ð’Ð°ÑˆÐµ Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ðµ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¾','Su caso se ha aÃ±adido con Ã©xito','EtkinliÄŸiniz baÅŸarÄ±yla eklendi'),(933,'event_saved','','Your event was successfully saved.','ØªÙ… Ø­ÙØ¸ Ù‡Ø°Ø§ Ø§Ù„Ø­Ø¯Ø« Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ','Uw evenement is opgeslagen','Votre Ã©vÃ©nement a Ã©tÃ© enregistrÃ©','Ihre Veranstaltung wurde gespeichert','Il vostro evento Ã¨ stato salvato','Seu evento foi salvo','Ð’Ð°ÑˆÐµ Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ðµ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ð¾','Su caso se ha guardado','Etkinlik kaydedildi'),(934,'confirm_delete_event','','You are sure that you want to delete this event','ÙƒÙ†Øª Ù…ØªØ£ÙƒØ¯Ø§ Ù…Ù† Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ø§ Ø§Ù„Ø­Ø¯Ø«','Bent u zeker dat u wilt dit evenement verwijderen','Vous Ãªtes sÃ»r que vous voulez supprimer cet Ã©vÃ©nement','Sie sind sicher, dass Sie dieses Ereignis lÃ¶schen mÃ¶chten','Sei sicuro di voler eliminare questo evento','VocÃª tem certeza de que deseja excluir este evento','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹ Ñ‡Ñ‚Ð¾ Ð’Ñ‹ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ðµ','EstÃ¡ seguro de que desea eliminar este evento','Sen bu etkinliÄŸi silmek istediÄŸinizden emin misiniz'),(935,'load_more','','Load more','ØªØ­Ù…ÙŠÙ„ Ø£ÙƒØ«Ø±','Meer laden','Chargez plus','laden Sie mehr','caricare piÃ¹','Coloque mais','ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ ÐµÑ‰Ðµ','Cargar mÃ¡s','daha fazla yÃ¼kle'),(936,'subject','','Subject','Ù…ÙˆØ¶ÙˆØ¹','Onderwerpen','Assujettir','Fach','Soggetto','Sujeito','ÐŸÑ€ÐµÐ´Ð¼ÐµÑ‚','Tema','konu'),(937,'go','','Go','Ø§Ø°Ù‡Ø¨','Gaan','Aller','Gehen','Partire','Ir','Ð˜Ð´Ñ‚Ð¸','Ir','Gitmek'),(938,'created_new_event','','created new event','Ø­Ø¯Ø« Ø¬Ø¯ÙŠØ¯','Aangemaakt nieuw evenement','Nouvel Ã©vÃ©nement crÃ©Ã©','Neue Veranstaltung erstellt','Ha creato un nuovo evento','Criou um novo evento','Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¾ Ð½Ð¾Ð²Ð¾Ðµ Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ðµ','CreÃ³ nuevo evento','Yeni bir etkinlik yarattÄ±'),(939,'my_events','','My events','Ø£Ø­Ø¯Ø§Ø«ÙŠ','Mijn gebeurtenissen','Mes Ã©vÃ©nements','Meine ereignisse','I miei eventi','Meus eventos','ÐœÐ¾Ð¸ Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ','Mis eventos','Etkinliklerim'),(940,'is_interested','','is interested on your event \"{event_name}\"','Ù…Ù‡ØªÙ… Ø¨Ø­Ø¯Ø«Ùƒ \"{event_name}\"','Is geÃ¯nteresseerd in je evenement \"{event_name}\"','Est intÃ©ressÃ© par votre Ã©vÃ©nement \"{event_name}\"','Interessiert sich fÃ¼r deine Veranstaltung \"{event_name}\"','Ãˆ interessato al tuo evento \"{event_name}\"','EstÃ¡ interessado no seu evento \"{event_name}\"','Ð—Ð°Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ¾Ð²Ð°Ð½Ð¾ Ð² Ð²Ð°ÑˆÐµÐ¼ Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ð¸ \"{event_name}\"','EstÃ¡ interesado en su evento \"{event_name}\"','\"{Event_name}\" etkinliÄŸinizle ilgileniyor.'),(941,'is_going','','is going to your event \"{event_name}\"','Ù‡Ùˆ Ø§Ù„Ø°Ù‡Ø§Ø¨ Ø¥Ù„Ù‰ Ø§Ù„Ø­Ø¯Ø« \"{event_name}\"','Gaat naar je evenement \"{event_name}\"','Va Ã  votre Ã©vÃ©nement \"{event_name}\"','Geht zu deiner Veranstaltung \"{event_name}\"','Sta andando al tuo evento \"{event_name}\"','EstÃ¡ indo para o seu evento \"{event_name}\"','Ð˜Ð´ÐµÑ‚ Ð½Ð° Ð²Ð°ÑˆÐµ Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ðµ \"{event_name}\"','Va a su evento \"{event_name}\"','\"{Event_name}\" etkinliÄŸine gidiyor'),(942,'invited_you_event','','invited you to go the event \"{event_name}\"','Ø¯Ø¹Ø§Ùƒ Ø¥Ù„Ù‰ Ø§Ù„Ø°Ù‡Ø§Ø¨ Ø¥Ù„Ù‰ Ø§Ù„Ø­Ø¯Ø« \"{event_name}\"','Heeft u uitgenodigd om het evenement te gaan \"{event_name}\"',NULL,'Lud dich ein, die Veranstaltung zu starten \"{event_name}\"',NULL,'Convidou vocÃª para ir ao evento \"{event_name}\"','ÐŸÑ€Ð¸Ð³Ð»Ð°ÑˆÐ°ÐµÑ‚ Ð²Ð°Ñ Ð½Ð° Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ðµ \"{event_name}\"','Te invitÃ³ a ir al evento \"{event_name}\"','Sizi \"{event_name}\" etkinliÄŸine davet etti.'),(943,'replied_to_topic','','replied to your topic','Ø£Ø¬Ø§Ø¨ Ø¹Ù„Ù‰ Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹','Antwoordde op je onderwerp','A rÃ©pondu Ã  votre sujet','Antwortete auf dein Thema','Ha risposto al tuo argomento','Respondeu ao seu tÃ³pico','ÐžÑ‚Ð²ÐµÑ‚Ð¸Ð» Ð½Ð° Ð²Ð°ÑˆÑƒ Ñ‚ÐµÐ¼Ñƒ','RespondiÃ³ a su tema','CevabÄ±nÄ±z cevaplandÄ±'),(944,'movies','','Movies','Ø£ÙÙ„Ø§Ù…','Dioscoop','Films','Kino','Film','Filmes','ÐšÐ¸Ð½Ð¾','PelÃ­culas','Filmler'),(945,'translate','','Translate','ØªØ±Ø¬Ù…','Vertalen','Traduire','Ã¼bersetzen','Tradurre','Traduzir','Ð¿ÐµÑ€ÐµÐ²ÐµÑÑ‚Ð¸','Traducciones','Ã§evirmek'),(946,'genre','','Genre','Ù†ÙˆØ¹ Ø£Ø¯Ø¨ÙŠ','Genre','Genre','Genre','Genere','GÃªnero','Ð–Ð°Ð½Ñ€','Genre','tarz'),(947,'recommended','','Recommended','Ù…ÙˆØµÙ‰ Ø¨Ù‡','Aanbevolen','RecommandÃ©','empfohlen','Raccomandato','Recomendado','Ð ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÐ¼Ñ‹Ðµ','Se recomienda','Tavsiye'),(948,'most_watched','','Most watched','Ø§Ù„Ø£ÙƒØ«Ø± Ù…Ø´Ø§Ù‡Ø¯Ø©','Meest bekeken','Le plus regardÃ©','Die meisten angeschaut ','PiÃ¹ visto','Mais visto','ÐŸÐ¾Ð½Ñ€Ð°Ð²Ð¸Ð²ÑˆÐ¸ÐµÑÑ','MÃ¡s informaciÃ³n','En Ã§ok izlenen'),(949,'stars','','Stars','Ù†Ø¬ÙˆÙ…','Stars','Etoiles','Sterne','Stars','Estrelas','Ð—Ð²ÐµÐ·Ð´Ñ‹','Estrellas','yÄ±ldÄ±z'),(950,'more','','More','Ø£ÙƒØ«Ø±','Meer','Plus','mehr','PiÃ¹','Mais','ÐµÑ‰Ðµ','MÃ¡s informaciÃ³n','daha'),(951,'no_movies_found','','No movies to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø§Ù„Ø£ÙÙ„Ø§Ù…','Geen films gevonden','Pas de films trouvÃ©s','Keine Filme gefunden','Nessun film trovato','NÃ£o hÃ¡ filmes encontrados','Ð¤Ð¸Ð»ÑŒÐ¼Ñ‹ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ‹','No movies found','Filmlerde Bulunan'),(952,'producer','','Producer','Ù…Ù†ØªØ¬','Producent','Producteur','Produzent','Produttore','Produtor','ÐŸÑ€Ð¾Ð´ÑŽÑÐµÑ€','Producer','yapÄ±mcÄ±'),(953,'release','','Release','Ø¥Ø·Ù„Ø§Ù‚','Vrijlating','Sortie','VerÃ¶ffentlichung','Rilascio','LanÃ§amento','Ð ÐµÐ»Ð¸Ð·','VersiÃ³n','salÄ±verme'),(954,'quality','','Quality','Ø¬ÙˆØ¯Ø©','Kwaliteit','QualitÃ©','QualitÃ¤t','QualitÃ ','Qualidade','ÐšÐ°Ñ‡ÐµÑÑ‚Ð²Ð¾','Calidad','kalite'),(955,'more_like_this','','More like this','Ø£ÙƒØ«Ø± Ù…Ù† Ù‡Ø°Ø§ Ø§Ù„Ù‚Ø¨ÙŠÙ„','Meer in deze trant','Plus darticles','Ã„hnliche Titel','Altri risultati simili','Mais como este','ÐŸÐ¾Ñ…Ð¾Ð¶Ð¸Ðµ Ñ„Ð¸Ð»ÑŒÐ¼Ñ‹','MÃ¡s informaciÃ³n','Buna benzer'),(956,'wallet','','Wallet','Ù…Ø­ÙØ¸Ø© Ù†Ù‚ÙˆØ¯','Portemonnee','Portefeuille','Brieftasche','Portafoglio','Carteira','Ð‘ÑƒÐ¼Ð°Ð¶Ð½Ð¸Ðº','Billetera','CÃ¼zdan'),(957,'company','','Company','Ø´Ø±ÙƒØ©','Bedrijf','Compagnie','Unternehmen','Azienda','Empresa','ÐšÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ','Empresa','ÅŸirket'),(958,'bidding','','Bidding','Ù…Ø²Ø§ÙŠØ¯Ø©','bod','EnchÃ¨re','Bieten','offerta','LicitaÃ§Ã£o','Ñ‚Ð¾Ñ€Ð³Ð¸','Ofertas','teklif verme'),(959,'clicks','','Clicks','Ù†Ù‚Ø±Ø§Øª','klikken','Clics','Klicks','clic','Cliques','Ñ‰ÐµÐ»Ñ‡ÐºÐ¸','Clics','TÄ±klanma'),(960,'url','','Url','Ø±Ø§Ø¨Ø·','url','Url','Url','url','Url','Ð’ÐµÐ±-ÑÐ°Ð¹Ñ‚','Url','URL'),(961,'audience','','Audience','Ø¬Ù…Ù‡ÙˆØ±','Publiek','Public','Publikum','Pubblico','PÃºblico','ÐÑƒÐ´Ð¸Ñ‚Ð¾Ñ€Ð¸Ñ','Audiencia','seyirci'),(962,'select_image','','Select an image','Ø­Ø¯Ø¯ ØµÙˆØ±Ø©','Selecteer een afbeelding','SÃ©lectionnez une image','WÃ¤hlen Sie ein Bild aus','Selezionare unimmagine','Selecione uma imagem','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ','Seleccione una imagen','Bir resim seÃ§in'),(963,'my_balance','','Current balance','Ø±ØµÙŠØ¯ÙŠ','Mijn balans','Mon solde','Mein Gleichgewicht','Il mio equilibrio','Meu saldo','ÐœÐ¾Ð¹ Ð±Ð°Ð»Ð°Ð½Ñ','Mi balance','Bakiyem'),(964,'replenish_my_balance','','Replenish my balance','ØªØ¬Ø¯ÙŠØ¯ Ø±ØµÙŠØ¯ Ø¨Ù„Ø¯ÙŠ','Herstel mijn saldo','RÃ©cupÃ©rer mon solde','FÃ¼lle meine Balance auf','Riempire il mio equilibrio','ReabasteÃ§a meu saldo','ÐŸÐ¾Ð¿Ð¾Ð»Ð½Ð¸Ñ‚ÑŒ Ð±Ð°Ð»Ð°Ð½Ñ','Reponer mi saldo','Bakiyemi yenile'),(965,'continue','','Continue','Ø§Ø³ØªÙ…Ø±','voortzetten','Continuer','Fortsetzen','Continua','Continuar','ÐŸÑ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ','Continuar','Devam et'),(966,'replenishment_notif','','Your balance has been replenished by','ØªÙ…Øª Ø¥Ø¹Ø§Ø¯Ø© ØªØ¬Ø¯ÙŠØ¯ Ø±ØµÙŠØ¯Ùƒ Ø¨ÙˆØ§Ø³Ø·Ø©','Uw saldo is aangevuld door','Votre solde a Ã©tÃ© reconstituÃ© par','Ihr Gleichgewicht wurde ergÃ¤nzt durch','Il tuo equilibrio Ã¨ stato riempito da','Seu saldo foi reabastecido por','Ð’Ð°Ñˆ Ð±Ð°Ð»Ð°Ð½Ñ Ð±Ñ‹Ð» Ð¿Ð¾Ð¿Ð¾Ð»Ð½ÐµÐ½','Tu saldo ha sido reabastecido por','Bakiyeniz, tarafÄ±ndan yeniden dolduruldu.'),(967,'ads','','Advertising','Ø¥Ø¹Ù„Ø§Ù†','Reclame','PublicitÃ©','Werbung','PubblicitÃ ','Publicidade','Ð ÐµÐºÐ»Ð°Ð¼Ð°','Publicidad','Ilan'),(968,'confirm_delete_ad','','Are you sure that you want to delete this campaign? This action can&#39;t be undo.','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ø§ Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†','Weet u zeker dat u deze advertentie wilt verwijderen','ÃŠtes-vous sÃ»r de vouloir supprimer cette annonce?','MÃ¶chten Sie diese Anzeige wirklich lÃ¶schen?','Sei sicuro di voler cancellare questo annuncio','Tem certeza de que quer apagar este anÃºncio','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ñƒ Ñ€ÐµÐºÐ»Ð°Ð¼Ñƒ','EstÃ¡s seguro de que quieres eliminar esta publicidad','Bu reklamÄ± silmek istediÄŸinizden emin misiniz'),(969,'delete_ad','','Delete campaign','Ø­Ø°Ù Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†','Verwijder advertentie','Supprimer lannonce','Anzeige lÃ¶schen','Elimina annuncio','Eliminar anÃºncio','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ','Eliminar anuncio','ReklamÄ± sil'),(970,'no_ads_found','','No ads found. Create new ad and start getting traffic!','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£ÙŠØ© Ø¥Ø¹Ù„Ø§Ù†Ø§Øª','Geen advertenties gevonden','Aucune annonce na Ã©tÃ© trouvÃ©e','Keine Anzeigen gefunden','Nessun annuncio trovato','Nenhum anÃºncio encontrado','ÐžÐ±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ñ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ‹','No se han encontrado anuncios','HiÃ§ ilan bulunamadÄ±'),(971,'not_active','','Not active','ØºÙŠØ± ÙØ¹Ø§Ù„','Niet actief','Pas actif','Nicht aktiv','Non attivo','NÃ£o ativo','ÐÐµ Ð°ÐºÑ‚Ð¸Ð²ÐµÐ½','No activo','Aktif deÄŸil'),(972,'appears','','Placement','ØªØ­Ø¯ÙŠØ¯ Ù…Ø³ØªÙˆÙ‰','Plaatsing','Placement','Platzierung','Posizionamento','ColocaÃ§Ã£o','Ñ€Ð°Ð·Ð¼ÐµÑ‰ÐµÐ½Ð¸Ðµ','ColocaciÃ³n','YerleÅŸtirme'),(973,'sidebar','','Sidebar','Ø§Ù„Ø´Ø±ÙŠØ· Ø§Ù„Ø¬Ø§Ù†Ø¨ÙŠ','sidebar','Barre latÃ©rale','Seitenleiste','Sidebar','Barra Lateral','Ð‘Ð¾ÐºÐ¾Ð²Ð°Ñ Ð¿Ð°Ð½ÐµÐ»ÑŒ','Barra lateral','Kenar Ã§ubuÄŸu'),(974,'select_a_page_or_link','','Select a page or enter a link to your site','Ø­Ø¯Ø¯ ØµÙØ­Ø© Ø£Ùˆ Ø£Ø¯Ø®Ù„ Ø±Ø§Ø¨Ø·Ø§ Ø¥Ù„Ù‰ Ù…ÙˆÙ‚Ø¹Ùƒ','Selecteer een pagina of voer een link in op uw site','SÃ©lectionnez une page ou entrez un lien vers votre site','WÃ¤hlen Sie eine Seite aus oder geben Sie einen Link zu Ihrer Website ein','Seleziona una pagina o inserisci un link al tuo sito','Selecione uma pÃ¡gina ou insira um link para o seu site','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñƒ Ð¸Ð»Ð¸ Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ ÑÑÑ‹Ð»ÐºÑƒ Ð½Ð° ÑÐ²Ð¾Ð¹ ÑÐ°Ð¹Ñ‚','Seleccione una pÃ¡gina o ingrese un enlace a su sitio','Bir sayfa seÃ§in veya sitenize bir baÄŸlantÄ± girin'),(975,'story','','Story','Ù‚ØµØ©','Verhaal','RÃ©cit','Geschichte','Storia','HistÃ³ria','Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ','Historia','Ã–ykÃ¼'),(976,'max_number_status','','The maximum number can not exceed 20 files at a time!','Ø§Ù„Ø­Ø¯ Ø§Ù„Ø£Ù‚ØµÙ‰ Ù„Ø¹Ø¯Ø¯ Ù„Ø§ ÙŠÙ…ÙƒÙ† Ø£Ù† ÙŠØªØ¬Ø§ÙˆØ² 20 Ù…Ù„ÙØ§Øª ÙÙŠ ÙˆÙ‚Øª ÙˆØ§Ø­Ø¯!','Het maximaal aantal kan niet meer dan 20 bestanden tegelijkertijd overschrijden!','Le nombre maximal ne peut pas dÃ©passer 20 fichiers Ã  la fois!','Die maximale Anzahl darf maximal 20 Dateien nicht Ã¼berschreiten!','Il numero massimo non puÃ² superare 20 file alla volta!','O nÃºmero mÃ¡ximo nÃ£o pode exceder 20 arquivos de cada vez!','ÐœÐ°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ð¾Ðµ Ñ‡Ð¸ÑÐ»Ð¾ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð¿Ñ€ÐµÐ²Ñ‹ÑˆÐ°Ñ‚ÑŒ 20 Ñ„Ð°Ð¹Ð»Ð¾Ð² Ð·Ð° Ñ€Ð°Ð·!','Â¡El nÃºmero mÃ¡ximo no puede superar los 20 archivos a la vez!','Maksimum sayÄ±, aynÄ± anda 20 dosya aÅŸamaz!'),(977,'status_added','','Your status has been successfully added!','ØªÙ…Øª Ø¥Ø¶Ø§ÙØ© Ø­Ø§Ù„ØªÙƒ Ø¨Ù†Ø¬Ø§Ø­!','Uw status is succesvol toegevoegd!','Votre statut a Ã©tÃ© ajoutÃ© avec succÃ¨s!','Ihr Status wurde erfolgreich hinzugefÃ¼gt!','Il tuo stato Ã¨ stato aggiunto con successo!','Seu status foi adicionado com sucesso!','Ð’Ð°Ñˆ ÑÑ‚Ð°Ñ‚ÑƒÑ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½!','Â¡Tu estado se ha agregado correctamente!','Durumunuz baÅŸarÄ±yla eklendi!'),(978,'create_new_status','','Create New Status','Ø¥Ù†Ø´Ø§Ø¡ Ø­Ø§Ù„Ø© Ø¬Ø¯ÙŠØ¯Ø©','Maak een nieuwe status aan','CrÃ©er un nouvel Ã©tat','Neuen Status anlegen','Crea nuovo stato','Criar novo status','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð½Ð¾Ð²Ñ‹Ð¹ ÑÑ‚Ð°Ñ‚ÑƒÑ','Crear nuevo estado','Yeni Durum OluÅŸtur'),(979,'sponsored','','Sponsored','Ø¨Ø±Ø¹Ø§ÙŠØ©','Sponsored','SponsorisÃ©','GefÃ¶rdert','sponsorizzati','Patrocinadas','Ð ÐµÐºÐ»Ð°Ð¼Ð½Ñ‹Ðµ','Patrocinado','Sponsor'),(980,'notification_sent','','Your notification has been sent successfully','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø¥Ø´Ø¹Ø§Ø± Ø¨Ù†Ø¬Ø§Ø­','Uw melding is succesvol verzonden','Votre notification a Ã©tÃ© envoyÃ©e avec succÃ¨s','Ihre Benachrichtigung wurde erfolgreich gesendet','La tua notifica Ã¨ stata inviata correttamente','Sua notificaÃ§Ã£o foi enviada com sucesso','Ð’Ð°ÑˆÐµ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ðµ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾','Tu notificaciÃ³n se ha enviado correctamente','Bildiriminiz baÅŸarÄ±yla gÃ¶nderildi'),(981,'hide_post','','Hide post','Ø¢Ø®Ø± Ø§Ø®ÙØ§Ø¡','Verberg post','Masquer la publication','Beitrag ausblenden','Nascondi post','Ocultar postagem','Ð¡ÐºÑ€Ñ‹Ñ‚ÑŒ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Esconder la publicaciÃ³n','PostayÄ± gizle'),(982,'verification_sent','','Your verification request  soon will be considered!','Ø³ÙŠØªÙ… Ø§Ù„Ù†Ø¸Ø± ÙÙŠ Ø·Ù„Ø¨ Ø§Ù„ØªØ­Ù‚Ù‚ Ù‚Ø±ÙŠØ¨Ø§!','Uw verificatieaanvraag zal binnenkort worden overwogen!','Votre demande de vÃ©rification sera bientÃ´t prise en considÃ©ration!','Ihre BestÃ¤tigungsanforderung wird bald berÃ¼cksichtigt!','La tua richiesta di verifica sarÃ  presto presa in considerazione!','Seu pedido de verificaÃ§Ã£o em breve serÃ¡ considerado!','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ðµ ÑÐºÐ¾Ñ€Ð¾ Ð±ÑƒÐ´ÐµÑ‚ Ñ€Ð°ÑÑÐ¼Ð¾Ñ‚Ñ€ÐµÐ½!','Su solicitud de verificaciÃ³n pronto serÃ¡ considerada!','DoÄŸrulama isteÄŸiniz yakÄ±nda deÄŸerlendirilecek!'),(983,'profile_verification','','Verification of the profile!','Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ!','Verificatie van het profiel!','VÃ©rification du profil!','ÃœberprÃ¼fung des Profils!','Verifica del profilo!','VerificaÃ§Ã£o do perfil!','ÐŸÑ€Ð¾Ð²ÐµÑ€ÐºÐ° Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ!','VerificaciÃ³n del perfil!','Profilin doÄŸrulanmasÄ±!'),(984,'verification_complete','','Congratulations your profile is verified!','ØªÙ‡Ø§Ù†ÙŠÙ†Ø§ ØªÙ… Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ù…Ù„ÙÙƒ Ø§Ù„Ø´Ø®ØµÙŠ!','Gefeliciteerd, uw profiel is geverifieerd!','FÃ©licitations, votre profil est vÃ©rifiÃ©!','Herzlichen GlÃ¼ckwunsch, Ihr Profil wird bestÃ¤tigt!','Complimenti il â€‹â€‹tuo profilo Ã¨ verificato!','ParabÃ©ns seu perfil estÃ¡ verificado!','ÐŸÐ¾Ð·Ð´Ñ€Ð°Ð²Ð»ÑÐµÐ¼ Ð’Ð°Ñˆ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐµÐ½!','Â¡Felicidades tu perfil estÃ¡ verificado!','Tebrikler, profiliniz doÄŸrulandÄ±!'),(985,'upload_docs','','Upload documents','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø³ØªÙ†Ø¯Ø§Øª','Documenten uploaden','TÃ©lÃ©charger des documents','Dokumente hochladen','Carica i documenti','Carregar documentos','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ñ‹','Subir documentos','Belgeleri yÃ¼kle'),(986,'select_verif_images','','Please upload a photo with your passport / ID  & your distinct photo','ÙŠØ±Ø¬Ù‰ ØªØ­Ù…ÙŠÙ„ ØµÙˆØ±Ø© Ù…Ø¹ Ø¬ÙˆØ§Ø² Ø³ÙØ±Ùƒ / Ø¥Ø¯ & Ø£Ù…Ø¨Ø› ØµÙˆØ±ØªÙƒ Ø§Ù„Ù…Ù…ÙŠØ²Ø©','Upload een foto met uw paspoort / ID & amp; Jouw eigen foto','Veuillez tÃ©lÃ©charger une photo avec votre passeport / ID & amp; Votre photo distincte','Bitte laden Sie ein Foto mit Ihrem Pass / ID & amp; Ihr eigenes Foto','Carica una foto con il tuo passaporto / ID & amp; La tua foto distinta','Carregue uma foto com seu passaporte / ID & amp; Sua foto distinta','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð·Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚Ðµ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸ÑŽ Ñ Ð²Ð°ÑˆÐ¸Ð¼ Ð¿Ð°ÑÐ¿Ð¾Ñ€Ñ‚Ð¾Ð¼ / ID Ð¸ amp; Ð¢Ð²Ð¾Ñ Ð¾Ñ‚Ð»Ð¸Ñ‡Ð½Ð°Ñ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸Ñ','Cargue una foto con su pasaporte / ID & amp; Tu foto distinta','LÃ¼tfen pasaportunuzla bir fotoÄŸraf yÃ¼kleyin / kimliÄŸi ve amp; FarklÄ± fotoÄŸrafÄ±n'),(987,'passport_id','','Copy of your passport or ID card','Ø¬ÙˆØ§Ø² Ø§Ù„Ø³ÙØ± / Ø¨Ø·Ø§Ù‚Ø© Ø§Ù„Ù‡ÙˆÙŠØ©','Paspoort / ID kaart','Passeport / carte didentitÃ©','Pass / ID-Karte','Passaporto / id carta','Passaporte / cartÃ£o de identificaÃ§Ã£o','ÐŸÐ°ÑÐ¿Ð¾Ñ€Ñ‚ / ÑƒÐ´Ð¾ÑÑ‚Ð¾Ð²ÐµÑ€ÐµÐ½Ð¸Ðµ Ð»Ð¸Ñ‡Ð½Ð¾ÑÑ‚Ð¸','Pasaporte / tarjeta de identificaciÃ³n','Pasaport / kimlik kartÄ±'),(988,'your_photo','','Your photo','ØµÙˆØ±ØªÙƒ','Je foto','Ta photo','Dein Foto','La tua foto','Sua foto','Ð¢Ð²Ð¾Ðµ Ñ„Ð¾Ñ‚Ð¾','Tu foto','Senin resmin'),(989,'please_select_passport_id','','Please select your passport/id and photo!','ÙŠØ±Ø¬Ù‰ ØªØ­Ø¯ÙŠØ¯ Ø¬ÙˆØ§Ø² Ø§Ù„Ø³ÙØ± / Ù…Ø¹Ø±Ù ÙˆØ§Ù„ØµÙˆØ±Ø©!','Selecteer alstublieft uw paspoort / id en foto!','SÃ©lectionnez votre passeport / id et photo!','Bitte wÃ¤hlen Sie Ihren Pass / id und Foto!','Seleziona il tuo passaporto / id e foto!','Selecione seu passaporte / id e foto!','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ ÑÐ²Ð¾Ð¹ Ð¿Ð°ÑÐ¿Ð¾Ñ€Ñ‚ / ÑƒÐ´Ð¾ÑÑ‚Ð¾Ð²ÐµÑ€ÐµÐ½Ð¸Ðµ Ð»Ð¸Ñ‡Ð½Ð¾ÑÑ‚Ð¸ Ð¸ Ñ„Ð¾Ñ‚Ð¾!','Por favor, seleccione su pasaporte / identificaciÃ³n y foto!','LÃ¼tfen pasaportunuzun / kimlik numaranÄ±zÄ± ve fotoÄŸrafÄ±nÄ±zÄ± seÃ§in!'),(990,'passport_id_invalid','','The passport/id picture must be an image','ÙŠØ¬Ø¨ Ø£Ù† ØªÙƒÙˆÙ† ØµÙˆØ±Ø© Ø§Ù„Ø¬ÙˆØ§Ø² / Ø§Ù„ØµÙˆØ±Ø© ØµÙˆØ±Ø©','De paspoort / id foto moet een afbeelding zijn','Limage passeport / id doit Ãªtre une image','Das Pass / id Bild muss ein Bild sein','Limmagine del passaporto / id deve essere unimmagine','A imagem de passaporte / id deve ser uma imagem','ÐŸÐ°ÑÐ¿Ð¾Ñ€Ñ‚ / Ð¸Ð´ÐµÐ½Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ‚Ð¾Ñ€ Ð´Ð¾Ð»Ð¶ÐµÐ½ Ð±Ñ‹Ñ‚ÑŒ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸ÐµÐ¼','La imagen del pasaporte / id debe ser una imagen','Pasaport / id resmi bir resim olmalÄ±dÄ±r'),(991,'user_picture_invalid','','The user picture must be an image','ÙŠØ¬Ø¨ Ø£Ù† ØªÙƒÙˆÙ† ØµÙˆØ±Ø© Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… ØµÙˆØ±Ø©','De gebruikersfoto moet een afbeelding zijn','Limage utilisateur doit Ãªtre une image','Das Benutzerbild muss ein Bild sein','Limmagine dellutente deve essere unimmagine','A imagem do usuÃ¡rio deve ser uma imagem','Ð˜Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð´Ð¾Ð»Ð¶Ð½Ð¾ Ð±Ñ‹Ñ‚ÑŒ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸ÐµÐ¼','La imagen del usuario debe ser una imagen','KullanÄ±cÄ± resmi bir resim olmalÄ±dÄ±r'),(992,'verification_request_sent','','Your request was successfully sent, in the very near future we will consider it!','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø·Ù„Ø¨Ùƒ Ø¨Ù†Ø¬Ø§Ø­ØŒ ÙÙŠ Ø§Ù„Ù…Ø³ØªÙ‚Ø¨Ù„ Ø§Ù„Ù‚Ø±ÙŠØ¨ Ø¬Ø¯Ø§ Ø³ÙˆÙ Ù†Ù†Ø¸Ø± ÙÙŠÙ‡!','Uw aanvraag is succesvol verzonden, in de nabije toekomst zullen we het overwegen!','Votre demande a Ã©tÃ© envoyÃ©e avec succÃ¨s, dans un avenir trÃ¨s proche, nous lexaminerons!','Ihre Anfrage wurde erfolgreich gesendet, in naher Zukunft werden wir es betrachten!','La tua richiesta Ã¨ stata inviata con successo, nel prossimo futuro lo considereremo!','Seu pedido foi enviado com sucesso, no futuro muito prÃ³ximo, vamos considerÃ¡-lo!','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½, Ð² ÑÐ°Ð¼Ð¾Ð¼ Ð±Ð»Ð¸Ð¶Ð°Ð¹ÑˆÐµÐ¼ Ð±ÑƒÐ´ÑƒÑ‰ÐµÐ¼ Ð¼Ñ‹ ÑÑ‚Ð¾ Ñ€Ð°ÑÑÐ¼Ð¾Ñ‚Ñ€Ð¸Ð¼!','Su solicitud fue enviada con Ã©xito, en un futuro muy prÃ³ximo lo consideraremos!','Ä°steÄŸiniz baÅŸarÄ±yla gÃ¶nderildi, Ã§ok yakÄ±n bir zamanda bunu dÃ¼ÅŸÃ¼nÃ¼yoruz!'),(993,'shared','','shared','Ù…Ø´ØªØ±Ùƒ','gedeelde','partagÃ©','Geteilt','diviso','Compartilhado','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ð»ÑÑ','Compartido','PaylaÅŸÄ±lan'),(994,'post_shared','','Post was successfully added to your timeline!','ØªÙ…Øª Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ© Ø¨Ù†Ø¬Ø§Ø­ Ø¥Ù„Ù‰ Ø§Ù„Ù…Ø®Ø·Ø· Ø§Ù„Ø²Ù…Ù†ÙŠ!','Post is succesvol toegevoegd aan je tijdlijn!','Le message a Ã©tÃ© ajoutÃ© avec succÃ¨s Ã  votre calendrier!','Post wurde erfolgreich zu deinem Zeitplan hinzugefÃ¼gt!','Lalberino Ã¨ stato aggiunto con successo alla tua timeline!','O post foi adicionado com sucesso Ã  sua linha de tempo!','Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð±Ñ‹Ð»Ð¾ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¾ Ð½Ð° Ð²Ð°Ñˆ Ð³Ñ€Ð°Ñ„Ð¸Ðº!','Â¡Se ha agregado el mensaje a tu lÃ­nea de tiempo!','Mesaj, zaman Ã§izelgesine baÅŸarÄ±yla eklendi!'),(995,'important','','Important!','Ù…Ù‡Ù…!','Belangrijk!','Important!','Wichtig!','Importante!','Importante!','Ð’Ð°Ð¶Ð½Ð¾!','Â¡Importante!','Ã–nemli!'),(996,'unverify','','Please note that if you change the username you will lose verification','ÙŠØ±Ø¬Ù‰ Ù…Ù„Ø§Ø­Ø¸Ø© Ø£Ù†Ù‡ ÙÙŠ Ø­Ø§Ù„Ø© ØªØºÙŠÙŠØ± Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ØŒ ÙØ³ØªÙÙ‚Ø¯ Ø§Ù„ØªØ­Ù‚Ù‚','Houd er rekening mee dat als u de gebruikersnaam wijzigt, u de verificatie verliest','Veuillez noter que si vous modifiez le nom dutilisateur, vous allez perdre la vÃ©rification','Bitte beachten Sie, dass Sie bei der Ã„nderung des Benutzernamens die BestÃ¤tigung verlieren','Si prega di notare che se si modifica il nome utente perderÃ  la verifica','Observe que se vocÃª alterar o nome de usuÃ¡rio, vocÃª perderÃ¡ a verificaÃ§Ã£o','ÐžÐ±Ñ€Ð°Ñ‚Ð¸Ñ‚Ðµ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ, Ñ‡Ñ‚Ð¾ ÐµÑÐ»Ð¸ Ð²Ñ‹ Ð¸Ð·Ð¼ÐµÐ½Ð¸Ñ‚Ðµ Ð¸Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ, Ð²Ñ‹ Ð¿Ð¾Ñ‚ÐµÑ€ÑÐµÑ‚Ðµ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ðµ','Tenga en cuenta que si cambia el nombre de usuario, perderÃ¡ la verificaciÃ³n','KullanÄ±cÄ± adÄ±nÄ± deÄŸiÅŸtirirseniz doÄŸrulamayÄ± kaybedeceÄŸinizi lÃ¼tfen unutmayÄ±n'),(997,'friend_privacy','','Who can see my friends?','Ø§Ù„Ø°ÙŠÙ† ÙŠÙ…ÙƒÙ† Ø£Ù† Ù†Ø±Ù‰ Ø£ØµØ¯Ù‚Ø§Ø¦ÙŠ','Wie kan mijn vrienden zien','Qui peut voir mes amis','Wer kann meine Freunde sehen','Chi puÃ² vedere i miei amici','Quem pode ver meus amigos','ÐšÑ‚Ð¾ Ð¼Ð¾Ð¶ÐµÑ‚ Ð²Ð¸Ð´ÐµÑ‚ÑŒ Ð¼Ð¾Ð¸Ñ… Ð´Ñ€ÑƒÐ·ÐµÐ¹','Â¿QuiÃ©n puede ver a mis amigos?','ArkadaÅŸlarÄ±mÄ± kim gÃ¶rebilir?'),(998,'added_group_admin','','added you group admin','Ø£Ø¶Ø§ÙÙƒ Ù…Ø´Ø±Ù Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Toegevoegd je groep admin','Ajoute ton administrateur de groupe','FÃ¼gte Ihnen gruppe admin hinzu',NULL,'Adicionou vocÃª administrador do grupo','Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','AgregÃ³ tu grupo de administraciÃ³n','Grup yÃ¶neticisi ekledi'),(999,'added_page_admin','','added you page admin','Ø£Ø¶Ø§ÙÙƒ Ù…Ø´Ø±Ù Ø§Ù„ØµÙØ­Ø©','Toegevoegd u pagina admin','A ajoutÃ© votre page admin','FÃ¼gte Ihnen die Seite admin hinzu',NULL,'Adicionou vocÃª admin da pÃ¡gina','Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¾ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð¾Ð¼ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','AgregÃ³ tu pÃ¡gina admin','Size sayfa admin ekledi'),(1000,'no_messages','','No messages yet here.','Ù„Ø§ ØªÙˆØ¬Ø¯ Ø±Ø³Ø§Ø¦Ù„ Ø­ØªÙ‰ Ø§Ù„Ø¢Ù†.','Nog geen berichten hier.',NULL,'Noch keine Nachrichten.','Non ci sono ancora messaggi qui.','Ainda nÃ£o hÃ¡ mensagens aqui.','ÐŸÐ¾ÐºÐ° ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹ Ð½ÐµÑ‚.','AÃºn no hay mensajes.','HenÃ¼z mesaj yok.'),(1001,'conversation_deleted','','Conversation has been deleted!','ØªÙ… Ø­Ø°Ù Ø§Ù„Ù…Ø­Ø§Ø¯Ø«Ø©!','Conversatie is verwijderd!','La conversation a Ã©tÃ© supprimÃ©e!','Konversation wurde gelÃ¶scht!','La conversazione Ã¨ stata cancellata!','A conversa foi excluÃ­da!','Ð Ð°Ð·Ð³Ð¾Ð²Ð¾Ñ€ ÑƒÐ´Ð°Ð»ÐµÐ½!','Â¡Se ha eliminado la conversaciÃ³n!','Ä°leti dizisi silindi!'),(1002,'close','','Close','Ù‚Ø±ÙŠØ¨','Dichtbij','Fermer','SchlieÃŸen','Vicino','Fechar','Ð—Ð°ÐºÑ€Ñ‹Ñ‚ÑŒ','Cerca','Kapat'),(1003,'members','','Members','Ø£ÙØ±Ø§Ø¯','leden','Membres','Mitglieder','Utenti','Membros','Ñ‡Ð»ÐµÐ½Ñ‹','Miembros','Ãœyeler'),(1004,'exit_group','','Exit group','Ø®Ø±ÙˆØ¬ Ù…Ù† Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Exitgroep','Groupe de sortie','Exit-Gruppe','Esci dal gruppo','Grupo de saÃ­da','Ð“Ñ€ÑƒÐ¿Ð¿Ð° Ð²Ñ‹Ñ…Ð¾Ð´Ð°','Salir del grupo','Grubundan Ã§Ä±k'),(1005,'clear_history','','Clear history','ØªØ§Ø±ÙŠØ® ÙˆØ§Ø¶Ø­','Geschiedenis wissen','Histoire claire','Geschichte lÃ¶schen','Cancellare la cronologia','Apagar o histÃ³rico','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ð¿ÐµÑ€ÐµÐ¿Ð¸ÑÐºÑƒ','Borrar historial','GeÃ§miÅŸi temizle'),(1006,'group_members','','Group members','Ø£Ø¹Ø¶Ø§Ø¡ Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Groepsleden','Les membres du groupe','Gruppenmitglieder','Membri del gruppo','Membros do grupo','Ð£Ñ‡Ð°ÑÑ‚Ð½Ð¸ÐºÐ¸ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','Miembros del grupo','Grup Ã¼yeleri'),(1007,'add_parts','','Add participant','Ø¥Ø¶Ø§ÙØ© Ù…Ø´Ø§Ø±Ùƒ','Voeg deelnemer toe','Ajouter un participant','Teilnehmer hinzufÃ¼gen','Aggiungi partecipante','Adicionar participante','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ ÑƒÑ‡Ð°ÑÑ‚Ð½Ð¸ÐºÐ°','AÃ±ada participante','KatÄ±lÄ±mcÄ± ekle'),(1008,'unreport','','Cancel Report','Ø¥Ù„ØºØ§Ø¡ Ø§Ù„ØªÙ‚Ø±ÙŠØ±','Annuleren rapport','Annuler le rapport','Bericht abbrechen','Annulla rapporto','Cancelar relatÃ³rio','ÐžÑ‚Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¾Ñ‚Ñ‡ÐµÑ‚','Cancelar informe','Raporu Ä°ptal Et'),(1009,'report_user','','Report this User','Ø§Ù„Ø¥Ø¨Ù„Ø§Øº Ø¹Ù† Ù‡Ø°Ø§ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Rapporteer deze gebruiker','Signaler cet utilisateur','Diesen Nutzer melden','Segnala questo utente','Denunciar este usuÃ¡rio','Ð¡Ð¾Ð¾Ð±Ñ‰Ð¸Ñ‚ÑŒ Ð¾Ð± ÑÑ‚Ð¾Ð¼ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ðµ','Reportar a este usuario','Bu kullanÄ±cÄ±yÄ± rapor et'),(1010,'report_page','','Report this Page','Ø§Ù„Ø¥Ø¨Ù„Ø§Øº Ø¹Ù† Ù‡Ø°Ù‡ Ø§Ù„ØµÙØ­Ø©','Meld deze pagina aan','Signaler cette page','Diese Seite melden','Segnala questa pagina','Informe esta pÃ¡gina','Ð¡Ð¾Ð¾Ð±Ñ‰Ð¸Ñ‚ÑŒ Ð¾Ð± ÑÑ‚Ð¾Ð¹ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ðµ','Informar sobre esta pÃ¡gina','Bu sayfayÄ± bildir'),(1011,'report_group','','Report this Group','Ø§Ù„Ø¥Ø¨Ù„Ø§Øº Ø¹Ù† Ù‡Ø°Ù‡ Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Meld deze groep aan','Signaler ce groupe','Diese Gruppe melden','Segnala questo gruppo','Denunciar este grupo','Ð¡Ð¾Ð¾Ð±Ñ‰Ð¸Ñ‚ÑŒ Ð¾Ð± ÑÑ‚Ð¾Ð¹ Ð³Ñ€ÑƒÐ¿Ð¿Ðµ','Reportar este grupo','Bu Grubu Rapor Et'),(1012,'page_rated','','You have already rated this page!','Ù„Ù‚Ø¯ Ù‚ÙŠÙ…Øª Ù‡Ø°Ù‡ Ø§Ù„ØµÙØ­Ø© Ù…Ù† Ù‚Ø¨Ù„!','U heeft deze pagina al beoordeeld!','Vous avez dÃ©jÃ  notÃ© cette page!','Sie haben diese Seite bereits bewertet!','Hai giÃ  valutato questa pagina!','VocÃª jÃ¡ avaliou esta pÃ¡gina!','Ð’Ñ‹ ÑƒÐ¶Ðµ Ð¾Ñ†ÐµÐ½Ð¸Ð»Ð¸ ÑÑ‚Ñƒ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñƒ!','Â¡Ya has calificado esta pÃ¡gina!','Bu sayfaya zaten puan verdiniz!'),(1013,'rating','','Rating','ØªÙ‚ÙŠÙŠÙ…','Beoordeling','Ã‰valuation','Bewertung','Valutazione','AvaliaÃ§Ã£o','Ð ÐµÐ¹Ñ‚Ð¸Ð½Ð³','ClasificaciÃ³n','DeÄŸerlendirme'),(1014,'reviews','','Reviews','Ø§Ù„ØªØ¹Ù„ÙŠÙ‚Ø§Øª','beoordelingen','Avis','Bewertungen','Recensioni','Rever','ÐžÑ‚Ð·Ñ‹Ð²Ñ‹','Comentarios','yorumlar'),(1015,'rate','','Rate','Ù…Ø¹Ø¯Ù„','tarief','Taux','Preis','Vota','Taxa','Ð¡Ñ‚Ð°Ð²ÐºÐ°','Tarifa','oran'),(1016,'your_review','','Write your review.','Ø§ÙƒØªØ¨ Ù…Ø±Ø§Ø¬Ø¹ØªÙƒ.','Schrijf je beoordeling.','Donnez votre avis.','Schreiben Sie eine Bewertung.','Scrivi la tua recensione.','Escreva sua revisÃ£o.','ÐÐ°Ð¿Ð¸ÑˆÐ¸Ñ‚Ðµ ÑÐ²Ð¾Ð¹ Ð¾Ñ‚Ð·Ñ‹Ð².','Escribe tu reseÃ±a.','Yorumunuzu yazÄ±n.'),(1017,'ad_saved','','Your ad has been successfully saved!','ØªÙ… Ø­ÙØ¸ Ø¥Ø¹Ù„Ø§Ù†Ùƒ Ø¨Ù†Ø¬Ø§Ø­!','Uw advertentie is succesvol opgeslagen!','Votre annonce a Ã©tÃ© enregistrÃ©e avec succÃ¨s!','Ihre Anzeige wurde erfolgreich gespeichert!','Il tuo annuncio Ã¨ stato salvato con successo!','Seu anÃºncio foi salvo com sucesso!','Ð’Ð°ÑˆÐµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ð¾!','Tu anuncio se ha guardado correctamente.','ReklamÄ±nÄ±z baÅŸarÄ±yla kaydedildi!'),(1018,'ad_added','','Your ad has been successfully added!','ØªÙ…Øª Ø¥Ø¶Ø§ÙØ© Ø¥Ø¹Ù„Ø§Ù†Ùƒ Ø¨Ù†Ø¬Ø§Ø­!','Uw advertentie is succesvol toegevoegd!','Votre annonce a Ã©tÃ© ajoutÃ©e avec succÃ¨s!','Ihre Anzeige wurde erfolgreich hinzugefÃ¼gt!','Il tuo annuncio Ã¨ stato aggiunto con successo!','Seu anÃºncio foi adicionado com sucesso!','Ð’Ð°ÑˆÐµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ Ð±Ñ‹Ð»Ð¾ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¾!','Su anuncio se ha agregado correctamente.','ReklamÄ±nÄ±z baÅŸarÄ±yla eklendi!'),(1019,'invalid_ad_picture','','The ads picture must be an image!','ÙŠØ¬Ø¨ Ø£Ù† ØªÙƒÙˆÙ† ØµÙˆØ±Ø© Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†Ø§Øª ØµÙˆØ±Ø©!','De advertentie foto moet een afbeelding zijn!',NULL,'Das Anzeigenbild muss ein Bild sein!',NULL,'A imagem dos anÃºncios deve ser uma imagem!','Ð˜Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ñ Ð´Ð¾Ð»Ð¶Ð½Ð¾ Ð±Ñ‹Ñ‚ÑŒ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸ÐµÐ¼!','Â¡La imagen de los anuncios debe ser una imagen!','Reklam resimleri bir resim olmalÄ±dÄ±r!'),(1020,'enter_valid_desc','','Please enter a valid description!','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ ÙˆØµÙ ØµØ§Ù„Ø­!','Vul alstublieft een geldige omschrijving in!','Entrez une description valable!','Bitte geben Sie eine gÃ¼ltige Beschreibung ein!','Inserisci una descrizione valida!','Digite uma descriÃ§Ã£o vÃ¡lida!','Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ Ð¾Ð¿Ð¸ÑÐ°Ð½Ð¸Ðµ!','Por favor ingrese una descripciÃ³n vÃ¡lida!','LÃ¼tfen geÃ§erli bir aÃ§Ä±klama girin!'),(1021,'enter_valid_titile','','Please enter a valid title!','ÙŠØ±Ø¬Ù‰ Ø¥Ø¯Ø®Ø§Ù„ Ø¹Ù†ÙˆØ§Ù† ØµØ§Ù„Ø­!','Vul alstublieft een geldige titel in!','Entrez un titre valide!','Bitte geben Sie einen gÃ¼ltigen Titel ein!','Si prega di inserire un titolo valido!','Digite um tÃ­tulo vÃ¡lido!','Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ Ð·Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº!','Â¡Por favor ingrese un tÃ­tulo vÃ¡lido!','LÃ¼tfen geÃ§erli bir baÅŸlÄ±k girin!'),(1022,'enter_valid_url','','Please enter a valid link!','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ Ø±Ø§Ø¨Ø· ØµØ§Ù„Ø­!','Vul alstublieft een geldige link in!','Veuillez entrer un lien valide!','Bitte geben Sie einen gÃ¼ltigen Link ein!','Inserisci un link valido!','Digite um link vÃ¡lido!','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²ÑƒÑŽÑ‰ÑƒÑŽ ÑÑÑ‹Ð»ÐºÑƒ!','Ingrese un enlace vÃ¡lido!','LÃ¼tfen geÃ§erli bir baÄŸlantÄ± girin!'),(1023,'invalid_company_name','','Please enter a valid company name!','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ Ø§Ø³Ù… Ø´Ø±ÙƒØ© ØµØ§Ù„Ø­!','Vul alstublieft een geldige bedrijfsnaam in!',NULL,'Bitte geben Sie einen gÃ¼ltigen Firmennamen ein!','Inserisci un nome aziendale valido!','Digite um nome vÃ¡lido da empresa!','Ð£ÐºÐ°Ð¶Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ð¸!','Introduzca un nombre de empresa vÃ¡lido!','LÃ¼tfen geÃ§erli bir ÅŸirket adÄ± girin!'),(1024,'mother','','Mother','Ø£Ù…','Moeder','MÃ¨re','Mutter','Madre','MÃ£e','ÐœÐ°Ð¼Ð°','Madre','anne'),(1025,'father','','Father','Ø§Ù„Ø¢Ø¨','Vader','PÃ¨re','Vater','Padre','Pai','ÐžÑ‚ÐµÑ†','Padre','baba'),(1026,'daughter','','Daughter','Ø§Ø¨Ù†Ø©','Dochter','Fille','Tochter','Figlia','Filha','Ð”Ð¾Ñ‡ÑŒ','Hija','KÄ±z evlat'),(1027,'son','','Son','Ø§Ø¨Ù†','Zoon','Fils','Sohn','Figlio','Filho','Ð¡Ñ‹Ð½','Hijo','OÄŸul'),(1028,'sister','','Sister','Ø£Ø®Øª','Zus','SÅ“ur','Schwester','Sorella','IrmÃ£','Ð¡ÐµÑÑ‚Ñ€Ð°','Hermana','KÄ±z kardeÅŸ'),(1029,'brother','','Brother','Ø´Ù‚ÙŠÙ‚','Broer','FrÃ¨re','Bruder','Fratello','IrmÃ£o','Ð‘Ñ€Ð°Ñ‚','Hermano','Erkek kardeÅŸ'),(1030,'auntie','','Auntie','Ø¹Ù…Ø©','Tante','Tata','Tante','Auntie','Tia','Ñ‚ÐµÑ‚ÑƒÑˆÐºÐ°','TÃ­a','teyzeciÄŸim'),(1031,'uncle','','Uncle','Ø§Ø®Ùˆ Ø§Ù„Ø§Ù…','Oom','Oncle','Onkel','Zio','Tio','Ð”ÑÐ´Ñ','TÃ­o','Amca dayÄ±'),(1032,'niece','','Niece','Ø§Ø¨Ù†Ø© Ø§Ù„Ø§Ø®','Nicht','NiÃ¨ce','Nichte','Nipote','Sobrinha','ÐŸÐ»ÐµÐ¼ÑÐ½Ð½Ð¸Ñ†Ð°','Sobrina','YeÄŸen'),(1033,'nephew','','Nephew','Ø§Ø¨Ù† Ø£Ø®','Neef','Neveu','Neffe','Nipote','Sobrinho','ÐŸÐ»ÐµÐ¼ÑÐ½Ð½Ð¸Ðº','Sobrino','Erkek yeÄŸen'),(1034,'cousin_female','','Cousin (female)','Ø§Ø¨Ù† Ø¹Ù… (Ø£Ù†Ø«Ù‰)','Neef (vrouwelijk)','Cousine)','Cousine)','Cugina)','Prima)','Ð”Ð²Ð¾ÑŽÑ€Ð¾Ð´Ð½Ð°Ñ ÑÐµÑÑ‚Ñ€Ð°)','Prima)','Kuzenim (kadÄ±n)'),(1035,'cousin_male','','Cousin (male)','Ø§Ø¨Ù† Ø¹Ù… (Ø°ÙƒÙˆØ±)','Neef)','Cousin Male)','Cousin)','Cugino maschio)','Primo)','Ð”Ð²Ð¾ÑŽÑ€Ð¾Ð´Ð½Ñ‹Ð¹ Ð±Ñ€Ð°Ñ‚)','Primo varÃ³n)','Erkek kuzen)'),(1036,'grandmother','','Grandmother','Ø¬Ø¯Ø©','Grootmoeder','Grand-mÃ¨re','Oma','Nonna','AvÃ³','Ð‘Ð°Ð±ÑƒÑˆÐºÐ°','Abuela','bÃ¼yÃ¼kanne'),(1037,'grandfather','','Grandfather','Ø¬Ø¯','Grootvader','Grand-pÃ¨re','GroÃŸvater','Nonno','AvÃ´','Ð”ÐµÐ´','Abuelo','BÃ¼yÃ¼k baba'),(1038,'granddaughter','','Granddaughter','Ø­ÙÙŠØ¯Ø©','Kleindochter','Petite fille','Enkelin','Nipotina','Neta','Ð’Ð½ÑƒÑ‡ÐºÐ°','Nieta','KÄ±z torun'),(1039,'grandson','','Grandson','Ø­ÙÙŠØ¯','Kleinzoon','Petit fils','Enkel','Nipote','Neto','Ð’Ð½ÑƒÐº','Nieto','Erkek torun'),(1040,'stepsister','','Stepsister','Ù…Ø«Ù„ Ø§Ø®ØªÙŠ','Stiefzuster','Demi-soeur','Stiefschwester','Sorellastra','Meia-irmÃ£','Ð¡Ð²Ð¾Ð´Ð½Ð°Ñ ÑÐµÑÑ‚Ñ€Ð°','Hermanastra','Ãœvey kÄ±zkardeÅŸ'),(1041,'stepbrother','','Stepbrother','Ø£Ø® ØºÙŠØ± Ø´Ù‚ÙŠÙ‚','stiefbroeder','Beau-frÃ¨re','Stiefbruder','Fratellastro','Meio-irmÃ£o','Ð¡Ð²Ð¾Ð´Ð½Ñ‹Ð¹ Ð±Ñ€Ð°Ñ‚','Hermanastro','Ãœvey erkek kardeÅŸ'),(1042,'stepmother','','Stepmother','Ø²ÙˆØ¬Ø© Ø§Ù„Ø£Ø¨','Stiefmoeder','Stepmother','Stiefmutter','Matrigna','Madrasta','ÐœÐ°Ñ‡ÐµÑ…Ð°','Madrastra','Ã¼vey anne'),(1043,'stepfather','','Stepfather','Ø²ÙˆØ¬ Ø§Ù„Ø£Ù…','Stiefvader','Beau-pÃ¨re','Stiefvater','Patrigno','Padrasto','ÐžÑ‚Ñ‡Ð¸Ð¼','Padrastro','Ã¼vey baba'),(1044,'stepdaughter','','Stepdaughter','Ø±Ø¨ÙŠØ¨Ø©','Stiefdochter','Belle fille','Stieftochter','Figliastra','Enteada','ÐŸÐ°Ð´Ñ‡ÐµÑ€Ð¸Ñ†Ð°','Hijastra','Ã¼vey kÄ±z'),(1045,'sister_in_law','','Sister-in-law','Ø£Ø®Øª Ø§Ù„Ø²ÙˆØ¬ Ø£Ùˆ Ø§Ø®Øª Ø§Ù„Ø²ÙˆØ¬Ø©','Schoonzuster','Belle-soeur','SchwÃ¤gerin','Cognata','Cunhada','Ð—Ð¾Ð»Ð¾Ð²ÐºÐ°','CuÃ±ada','BaldÄ±z'),(1046,'brother_in_law','','Brother-in-law','Ø´Ù‚ÙŠÙ‚ Ø§Ù„Ø²ÙˆØ¬','Zwager','Beau-frÃ¨re','Schwager','Cognato','Cunhado','Ð¨ÑƒÑ€Ð¸Ð½','CuÃ±ado','KayÄ±nbirader'),(1047,'mother_in_law','','Mother-in-law','Ø­Ù…Ø§Ø© \" Ø£Ù… Ø§Ù„Ø²ÙˆØ¬ Ø£Ùˆ Ø£Ù… Ø§Ù„Ø²ÙˆØ¬Ø©','Schoonmoeder','Belle-mÃ¨re','Schwiegermutter','Suocera','Sogra','Ð¡Ð²ÐµÐºÑ€Ð¾Ð²ÑŒ','Suegra','KayÄ±nvalide'),(1048,'father_in_law','','Father-in-law','ÙˆÙˆØ§Ù„Ø¯ Ø¨Ø§Ù„ØªØ¨Ù†Ù‰','Schoonvader','Beau-pÃ¨re','Schwiegervater','Suocero','Sogro','Ð¢ÐµÑÑ‚ÑŒ','Suegro','KayÄ±npeder'),(1049,'daughter_in_law','','Daughter-in-law','Ø§Ø¨Ù†Ø© Ø¨Ø§Ù„Ù†Ø³Ø¨','Schoondochter','Belle-fille','Schwiegertochter','Nuora','Nora','ÐÐµÐ²ÐµÑÑ‚ÐºÐ°','Hijastra','Gelin'),(1050,'son_in_law','','Son-in-law','Ø§Ø¨Ù†Ù‡ Ù‚Ø§Ù†ÙˆÙ†ÙŠØ§Ù‹','Schoonzoon','Beau fils','Schwiegersohn','Genero','Genro','Ð—ÑÑ‚ÑŒ','Yerno','Damat'),(1051,'sibling_gender_neutral','','Sibling (gender neutral)','Ø§Ù„Ø£Ø®ÙˆØ© (Ù…Ø­Ø§ÙŠØ¯Ø© Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Broers en zussen (geslachtsneutraal)','Sibling (genre neutre)','Geschwister (geschlechtsneutral)','Fidanzamento (genere neutro)','IrmÃ£o (neutro em termos de gÃªnero)','Ð¡Ð¸Ð±Ð»Ð¸Ð½Ð³ (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹)','Hermano (neutral de gÃ©nero)','KardeÅŸlik (cinsiyete dayalÄ±)'),(1052,'parent_gender_neutral','','Parent (gender neutral)','Ø§Ù„ÙˆØ§Ù„Ø¯ (Ù…Ø­Ø§ÙŠØ¯ Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Ouder (geslachtsneutraal)','Parent (genre neutre)','Elternteil (geschlechtsneutral)','Genitore (genere neutro)','Pais (neutro em termos de gÃªnero)','Ð Ð¾Ð´Ð¸Ñ‚ÐµÐ»ÑŒ (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹)','Padre (neutral de gÃ©nero)','Ebeveyn (cinsiyete dayalÄ±)'),(1053,'child_gender_neutral','','Child (gender neutral)','Ø§Ù„Ø·ÙÙ„ (Ù…Ø­Ø§ÙŠØ¯ Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Kind (geslachtsneutraal)','Enfant (genre neutre)','Kind (geschlechtsneutral)','Bambino (sesso neutro)','CrianÃ§a (neutro em termos de gÃªnero)','Ð ÐµÐ±ÐµÐ½Ð¾Ðº (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹)','NiÃ±o (neutral de gÃ©nero)','Ã‡ocuk (cinsiyete dayalÄ±)'),(1054,'sibling_of_parent_gender_neutral','','Sibling of Parent (gender neutral)','Ø´Ù‚ÙŠÙ‚ Ø§Ù„ÙˆØ§Ù„Ø¯ (Ù…Ø­Ø§ÙŠØ¯ Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Broers en zussen van ouder (geslachtsneutraal)','Sibling of Parent (genre neutre)','Geschwister der Eltern (geschlechtsneutral)','Fratellanza del genitore (neutralitÃ  di genere)','Sibling of Parent (neutro em termos de gÃªnero)','Ð‘Ñ€Ð°Ñ‚ÑÑ‚Ð²Ð¾ Ñ€Ð¾Ð´Ð¸Ñ‚ÐµÐ»ÐµÐ¹ (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹)','Hermano de padre (neutral de gÃ©nero)','Ebeveynin KardeÅŸliÄŸi (cinsiyete dayalÄ±)'),(1055,'child_of_sibling_gender_neutral','','Child of Sibling (gender neutral)','Ø·ÙÙ„ Ø§Ù„Ø£Ø®ÙˆØ© (Ù…Ø­Ø§ÙŠØ¯ Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Kind van broer en zus (geslachtsneutraal)','Enfant de fratrie (genre neutre)','Kind des Geschwisters (geschlechtsneutral)','Bambino di fratelli (neutralitÃ  di genere)','CrianÃ§a do irmÃ£o (neutro em termos de gÃªnero)','Ð ÐµÐ±ÐµÐ½Ð¾Ðº Ð¡Ð¸Ð±Ð»Ð¸Ð½Ð³Ð° (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹)','Hijo de hermano (neutral de gÃ©nero)','KardeÅŸlik Ã§ocuÄŸu (cinsiyete dayalÄ± tarafsÄ±z)'),(1056,'cousin_gender_neutral','','Cousin (gender neutral)','Ø§Ø¨Ù† Ø¹Ù… (Ù…Ø­Ø§ÙŠØ¯Ø© Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Neef (geslachtsneutraal)','Cousin (genre neutre)','Cousin (geschlechtsneutral)','Cugino (neutralitÃ  di genere)','Primo (neutro em termos de gÃªnero)','ÐšÑƒÐ·ÐµÐ½ (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹)','Primo (neutral de gÃ©nero)','Kuzenim (cinsiyete aykÄ±rÄ±)'),(1057,'grandparent_gender_neutral','','Grandparent (gender neutral)','Ø§Ù„Ø¬Ø¯ (Ù…Ø­Ø§ÙŠØ¯ Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Grootouder (geslachtsneutraal)','Grandparent (genre neutre)','GroÃŸeltern (geschlechtsneutral)','Nonno (neutralitÃ  di genere)','AvÃ³s (neutro em termos de gÃªnero)','Ð‘Ð°Ð±ÑƒÑˆÐºÐ° Ð¸ Ð´ÐµÐ´ÑƒÑˆÐºÐ° (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ñ‹Ð¹ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒ)','Abuelo (neutral de gÃ©nero)','BÃ¼yÃ¼kbaba (cinsiyet eÅŸitliÄŸi yok)'),(1058,'grandchild_gender_neutral','','Grandchild (gender neutral)','Ø­ÙÙŠØ¯ (Ù…Ø­Ø§ÙŠØ¯ Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Grootkind (geslachtsneutraal)','Petit-fils (genre neutre)','Enkelkind (geschlechtsneutral)','Nipote (neutralitÃ  di genere)','Neto (neutro em termos de gÃªnero)','Ð’Ð½ÑƒÐºÐ¸ (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ðµ)','Nieto (neutral de gÃ©nero)','Torun (cinsiyete dayalÄ±)'),(1059,'step_sibling_gender_neutral','','Step-sibling (gender neutral)','Ø£Ø®ÙˆØ© Ø§Ù„Ø®Ø·ÙˆØ© (Ù…Ø­Ø§ÙŠØ¯Ø© Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Step-sibling (gender neutraal)','Ã‰chec-frÃ¨re (genre neutre)','Schritt-Geschwister (geschlechtsneutral)','Step-sibling (gender neutral)','IrmÃ£o-irmÃ£o (neutro em termos de gÃªnero)','Step-sibling (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹)','Hermanastro (neutral de gÃ©nero)','AdÄ±m kardeÅŸ (cinsiyete dayalÄ±)'),(1060,'step_parent_gender_neutral','','Step-parent (gender neutral)','Ø§Ù„Ø®Ø·ÙˆØ© Ø§Ù„ÙˆØ§Ù„Ø¯ (Ù…Ø­Ø§ÙŠØ¯Ø© Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Step-parent (gender neutraal)','Step-parent (genre neutre)','Schritt-Elternteil (geschlechtsneutral)','Step-parent (neutralitÃ  di genere)','Etapa-pai (neutro em termos de gÃªnero)','ÐŸÐ¾ÑˆÐ°Ð³Ð¾Ð²Ñ‹Ð¹ (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹)','El padrastro (neutral de gÃ©nero)','Veli-ebeveyn (cinsiyete dayalÄ±)'),(1061,'stepchild_gender_neutral','','Stepchild (gender neutral)','Ø³ØªÙŠØ¨Ø´ÙŠÙ„Ø¯ (Ù…Ø­Ø§ÙŠØ¯ Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Stepchild (gender neutraal)','Stepchild (genre neutre)','Stepchild (geschlechtsneutral)','Stepchild (genere neutro)','Stepchild (neutro em termos de gÃªnero)','Stepchild (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹)','Stepchild (neutral de gÃ©nero)','Ãœvey Ã§ocuk (cinsiyete aykÄ±rÄ±)'),(1062,'sibling_in_law_gender_neutral','','Sibling-in-law (gender neutral)','Ø´Ù‚ÙŠÙ‚ Ø§Ù„Ø²ÙˆØ¬ (Ù…Ø­Ø§ÙŠØ¯ Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Sibling-in-law (gender neutraal)','Sage-frÃ¨re (genre neutre)','Schwangerschaft (geschlechtsneutral)','Sibling-in-law (gender neutral)','IrmÃ£o-irmÃ£o (neutro em termos de gÃªnero)','Ð¡Ð¸Ð±Ð»Ð¸Ð½Ð³ Ð² Ð·Ð°ÐºÐ¾Ð½Ðµ (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹)','CuÃ±ados (neutral de gÃ©nero)','KayÄ±n Ã¼stÃ¼ (cinsiyete dayalÄ±)'),(1063,'parent_in_law_gender_neutral','','Parent-in-law (gender neutral)','Ø§Ù„ÙˆØ§Ù„Ø¯ (Ù…Ø­Ø§ÙŠØ¯ Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Schoonmoeder (geslachtsneutraal)','Parent-en-loi (neutre pour le genre)','Schwiegertochter (geschlechtsneutral)','Genitore di sesso (neutralitÃ  di genere)','Sogro (neutro em termos de gÃªnero)','Ð—ÑÑ‚ÑŒ (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹)','Suegro (neutral de gÃ©nero)','KayÄ±nvalides (cinsiyet eÅŸitli deÄŸil)'),(1064,'child_in_law_gender_neutral','','Child-in-law (gender neutral)','ØµÙ‡Ø± Ø§Ù„Ø·ÙÙ„ (Ù…Ø­Ø§ÙŠØ¯ Ø¬Ù†Ø³Ø§Ù†ÙŠØ§)','Schoonzoon (geslachtsneutraal)','Bien-Ãªtre (genre neutre)','Schwiegervater (geschlechtsneutral)','Suono (neutrale di genere)','Nora (neutro em termos de gÃªnero)','Ð¢ÐµÐ´ (Ð³ÐµÐ½Ð´ÐµÑ€Ð½Ð¾ Ð½ÐµÐ¹Ñ‚Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ð¹)','NiÃ±o (s) (gÃ©nero neutral)','KayÄ±n-kuÅŸun (cinsiyet eÅŸitli)'),(1065,'add_to_family','','Add to family','Ø¥Ø¶Ø§ÙØ© Ø¥Ù„Ù‰ Ø§Ù„Ø£Ø³Ø±Ø©','Voeg toe aan familie','Ajouter Ã  la famille','Zu Familie hinzufÃ¼gen','Aggiungi alla famiglia','Adicionar Ã  famÃ­lia','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð² Ð¿Ð¾Ð´Ð±Ð¾Ñ€ÐºÑƒ','AÃ±adir a la familia','Ailenize ekleyin'),(1066,'accept','','Accept','Ù‚Ø¨ÙˆÙ„','Accepteren','Acceptez','Akzeptieren','Accettare','Aceitar','Ð¿Ñ€Ð¸Ð½Ð¸Ð¼Ð°Ñ‚ÑŒ','Aceptar','Kabul etmek'),(1067,'family_member','','Family Member','Ø¹Ø¶Ùˆ Ø§Ù„Ø£Ø³Ø±Ø©','Familielid','Membre de la famille','Familienmitglied','Membro della famiglia','Membro da famÃ­lia','Ð§Ð»ÐµÐ½ ÑÐµÐ¼ÑŒÐ¸','Miembro de la familia','Aile Ã¼yesi'),(1068,'family_members','','Family members','Ø£ÙØ±Ø§Ø¯ Ø§Ù„Ø£Ø³Ø±Ø©','Familieleden','Membres de la famille','Familienmitglieder','Membri della famiglia','Membros da famÃ­lia','Ð§Ð»ÐµÐ½Ñ‹ ÑÐµÐ¼ÑŒÐ¸','Miembros de la familia','Aile Ã¼yeleri'),(1069,'add_as','','Add as','Ø£Ø¶ÙÙ‡ Ùƒ','Toevoegen als','Ajouter comme','HinzufÃ¼gen Als','Aggiungi come','Adicionar como','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ ÐºÐ°Ðº','Agregar como','Olarak ekle'),(1070,'confirm_remove_family_member','','Are you sure that you want to remove this member from your family?','Ù‡Ù„ ØªØ±ÙŠØ¯ Ø¨Ø§Ù„ØªØ£ÙƒÙŠØ¯ Ø¥Ø²Ø§Ù„Ø© Ù‡Ø°Ø§ Ø§Ù„Ø¹Ø¶Ùˆ Ù…Ù† Ø¹Ø§Ø¦Ù„ØªÙƒØŸ','Weet u zeker dat u dit lid van uw familie wilt verwijderen?','ÃŠtes-vous sÃ»r de vouloir supprimer ce membre de votre famille?','Sind Sie sicher, dass Sie dieses Mitglied aus Ihrer Familie entfernen mÃ¶chten?','Sei sicuro di voler rimuovere questo membro dalla tua famiglia?','Tem certeza de que deseja remover esse membro da sua famÃ­lia?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾Ð³Ð¾ ÑƒÑ‡Ð°ÑÑ‚Ð½Ð¸ÐºÐ° Ð¸Ð· ÑÐ²Ð¾ÐµÐ¹ ÑÐµÐ¼ÑŒÐ¸?','Â¿EstÃ¡s seguro de que deseas eliminar este miembro de tu familia?','Bu Ã¼yeyi ailenden kaldÄ±rmak istediÄŸinizden emin misiniz?'),(1071,'family_member_added','','New member was successfully added to your family list!','ØªÙ…Øª Ø¥Ø¶Ø§ÙØ© Ø¹Ø¶Ùˆ Ø¬Ø¯ÙŠØ¯ Ø¨Ù†Ø¬Ø§Ø­ Ø¥Ù„Ù‰ Ù‚Ø§Ø¦Ù…Ø© Ø¹Ø§Ø¦Ù„ØªÙƒ!','Nieuw lid is succesvol toegevoegd aan je familielijst!','Un nouveau membre a Ã©tÃ© ajoutÃ© avec succÃ¨s Ã  votre liste de famille!','Neues Mitglied wurde erfolgreich zu Ihrer Familienliste hinzugefÃ¼gt!','Nuovo membro Ã¨ stato aggiunto con successo alla tua lista di famiglia!','Novo membro foi adicionado com sucesso Ã  sua lista de famÃ­lia!','ÐÐ¾Ð²Ñ‹Ð¹ Ñ‡Ð»ÐµÐ½ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ Ð² ÑÐ¿Ð¸ÑÐ¾Ðº Ð²Ð°ÑˆÐ¸Ñ… ÑÐµÐ¼ÐµÐ¹!','Â¡El nuevo miembro se agregÃ³ a su lista de familia!','Yeni Ã¼ye, aileniz listesine baÅŸarÄ±yla eklendi!'),(1072,'request_sent','','Your request was successfully sent!','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø·Ù„Ø¨Ùƒ Ø¨Ù†Ø¬Ø§Ø­!','Uw verzoek is succesvol verzonden!','Votre demande a Ã©tÃ© envoyÃ©e avec succÃ¨s!','Ihre Anfrage wurde erfolgreich gesendet!','La tua richiesta Ã¨ stata inviata con successo!','Seu pedido foi enviado com sucesso!','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½!','Â¡Su solicitud ha sido enviada correctamente!','Talebiniz baÅŸarÄ±yla gÃ¶nderildi!'),(1073,'request_accepted','','Accepted your request to be your @','Ù‚Ø¨Ù„Øª Ø·Ù„Ø¨Ùƒ Ù„ÙŠÙƒÙˆÙ† Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ @','Geaccepteerd uw verzoek om uw @','A acceptÃ© votre demande pour Ãªtre votre @','Akzeptiert Ihre Anfrage zu Ihrem @','Accettato la tua richiesta per essere il tuo @','Aceitou seu pedido para ser seu @','ÐŸÑ€Ð¸Ð½ÑÐ» Ð²Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ ÐºÐ°Ðº Ð²Ð°Ñˆ @','Aceptado su solicitud para ser su @','@ Olmak isteÄŸinizi kabul ettiniz'),(1074,'sent_u_request','','Listed you as his @','Ø§Ù„Ù…Ø¯Ø±Ø¬Ø© Ù„Ùƒ ÙƒÙ…Ø§ Ù„Ù‡ @','Heb je gezien als zijn @',NULL,'Listed Sie als seine @','Ti ha elencato come suo @','Listou vocÃª como seu @','ÐŸÐµÑ€ÐµÑ‡Ð¸ÑÐ»Ð¸Ð» Ð²Ð°Ñ ÐºÐ°Ðº ÐµÐ³Ð¾ @','Listado como su @','Seni onun @'),(1075,'requests','','Requests','Ø·Ù„Ø¨Ø§Øª','verzoeken','Demandes','Anfragen','richieste','solicitaÃ§Ãµes de','Ð—Ð°Ð¿Ñ€Ð¾ÑÑ‹','Peticiones','Ä°stekler'),(1076,'no_requests_found','','No requests to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£ÙŠØ© Ø·Ù„Ø¨Ø§Øª!','Geen verzoeken gevonden!','Aucune demande trouvÃ©e!','Keine Anfragen gefunden!','Nessuna richiesta trovata!','NÃ£o foram encontrados pedidos!','Ð—Ð°Ð¿Ñ€Ð¾ÑÐ¾Ð² Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾!','No se han encontrado solicitudes!','Ä°stek bulunamadÄ±!'),(1077,'relation_with','','In relations with ','ÙÙŠ Ø§Ù„Ø¹Ù„Ø§Ù‚Ø§Øª Ù…Ø¹','In relaties met','En relation avec','Im Zusammenhang mit','Nelle relazioni con','Em relaÃ§Ã£o com','Ð’ Ð¾Ñ‚Ð½Ð¾ÑˆÐµÐ½Ð¸ÑÑ… Ñ','En las relaciones con','Ile iliÅŸkilerinde'),(1078,'married_to','','Married to ','Ù…ØªØ²ÙˆØ¬ Ù…Ù†','Getrouwd met','MariÃ© Ã ','Verheiratet mit','Sposato con','Casado com','Ð’ Ð±Ñ€Ð°ÐºÐµ Ñ','Casado con','Evli'),(1079,'engaged_to','','Engaged to ','Ù…Ø®Ø·ÙˆØ¨ Ù„','verloofd met','FiancÃ© Ã ','verlobt mit','fidanzato con','noivo de','ÐŸÐ¾Ð¼Ð¾Ð»Ð²Ð»ÐµÐ½Ñ‹ Ñ','comprometido con','EtkileÅŸim kurdu'),(1080,'relationship_status','','Relationship Status ','Ø§Ù„Ø­Ø§Ù„Ø© Ø§Ù„Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠØ©','Relatie status','Statut de la relation','Beziehungsstatus','stato delle relazioni','status de relacionamento','Ð¡ÐµÐ¼ÐµÐ¹Ð½Ð¾Ðµ Ð¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ','estado civil','iliÅŸki durumu'),(1081,'relationship_request','','Relationship request ','Ø·Ù„Ø¨ Ø§Ù„Ø¹Ù„Ø§Ù‚Ø©','Verzoek om relatie','Demande de relation','Beziehungsanfrage','Richiesta di relazione','Pedido de relacionamento','Ð—Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ð¾Ñ‚Ð½Ð¾ÑˆÐµÐ½Ð¸Ð¸','Solicitud de relaciÃ³n','IliÅŸki talebi'),(1082,'relhip_request_accepted','','Accepted your request @ ','Ù‚Ø¨Ù„ Ø·Ù„Ø¨Ùƒ @','Geaccepteerd uw aanvraag @','A acceptÃ© votre demande @','Akzeptiert Ihre Anfrage @','Accettato la tua richiesta @','Aceitou seu pedido @','ÐŸÑ€Ð¸Ð½ÑÐ»(Ð°) Ð²Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ @','Aceptado su solicitud @','Ä°steÄŸiniz kabul edildi @'),(1083,'relation_rejected','','rejected your relation request @','Ø±ÙØ¶ Ø·Ù„Ø¨ Ø¹Ù„Ø§Ù‚ØªÙƒ @','Heeft uw relatieverzoek geweigerd @','RejetÃ© votre demande de relation @','Abgelehnt Ihre Beziehung Anfrage @','Ha respinto la tua richiesta di relazione @','Rejeitou sua solicitaÃ§Ã£o de relacionamento @','ÐžÑ‚ÐºÐ»Ð¾Ð½Ð¸Ð»(a) Ð²Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð¾Ñ‚Ð½Ð¾ÑˆÐµÐ½Ð¸Ñ @','RechazÃ³ su solicitud de relaciÃ³n @','IliÅŸki isteÄŸini reddetti @'),(1084,'file_too_big','','File size error: The file exceeds allowed the limit ({file_size}) and can not be uploaded.','Ø®Ø·Ø£ ÙÙŠ Ø­Ø¬Ù… Ø§Ù„Ù…Ù„Ù: ÙŠØªØ¬Ø§ÙˆØ² Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø­Ø¯ Ø§Ù„Ù…Ø³Ù…ÙˆØ­ Ø¨Ù‡ ({file_size}) ÙˆÙ„Ø§ ÙŠÙ…ÙƒÙ† ØªØ­Ù…ÙŠÙ„Ù‡.','Bestandsgrootte fout: Het bestand overschrijdt de limiet toegestaan â€‹â€‹({file_size}) en kan niet worden geÃ¼pload.','Erreur de taille de fichier: le fichier dÃ©passe autorisÃ© la limite ({image_fichier}) et ne peut pas Ãªtre tÃ©lÃ©chargÃ©.','DateigrÃ¶ÃŸenfehler: Die Datei Ã¼berschreitet die Begrenzung ({file_size}) und kann nicht hochgeladen werden.','Errore di dimensione del file: il file supera il limite consentito ({file_size}) e non puÃ² essere caricato.','Erro de tamanho de arquivo: o arquivo excede permitido o limite ({file_size}) e nÃ£o pode ser carregado.','ÐžÑˆÐ¸Ð±ÐºÐ° Ñ€Ð°Ð·Ð¼ÐµÑ€Ð° Ñ„Ð°Ð¹Ð»Ð°: Ñ„Ð°Ð¹Ð» Ð¿Ñ€ÐµÐ²Ñ‹ÑˆÐ°ÐµÑ‚ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ð¹ Ð¿Ñ€ÐµÐ´ÐµÐ» ({file_size}) Ð¸ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð·Ð°Ð³Ñ€ÑƒÐ¶ÐµÐ½.','Error de tamaÃ±o de archivo: El archivo excede el lÃ­mite permitido ({file_size}) y no se puede cargar.','Dosya boyutu hatasÄ±: Dosya limiti aÅŸtÄ± ({file_size}) ve yÃ¼klenemiyor.'),(1085,'file_not_supported','','Unable to upload a file: This file type is not supported.','ØªØ¹Ø°Ø± ØªØ­Ù…ÙŠÙ„ Ù…Ù„Ù: Ù†ÙˆØ¹ Ø§Ù„Ù…Ù„Ù Ù‡Ø°Ø§ ØºÙŠØ± Ù…ØªÙˆØ§ÙÙ‚.','Kan een bestand niet uploaden: dit bestandstype wordt niet ondersteund.',NULL,'Kann eine Datei nicht hochladen: Dieser Dateityp wird nicht unterstÃ¼tzt.','Impossibile caricare un file: questo tipo di file non Ã¨ supportato.','NÃ£o Ã© possÃ­vel carregar um arquivo: esse tipo de arquivo nÃ£o Ã© suportado.','ÐÐµ ÑƒÐ´Ð°Ð»Ð¾ÑÑŒ Ð·Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ñ„Ð°Ð¹Ð». Ð­Ñ‚Ð¾Ñ‚ Ñ‚Ð¸Ð¿ Ñ„Ð°Ð¹Ð»Ð° Ð½Ðµ Ð¿Ð¾Ð´Ð´ÐµÑ€Ð¶Ð¸Ð²Ð°ÐµÑ‚ÑÑ.','No se puede cargar un archivo: este tipo de archivo no es compatible.','Dosya yÃ¼klenemiyor: Bu dosya tÃ¼rÃ¼ desteklenmiyor.'),(1086,'years_old','','years old','Ø³Ù†ÙˆØ§Øª','jaar oud','ans','Jahre alt','Anni','anos','Ð»ÐµÑ‚','aÃ±os','yaÅŸÄ±nda'),(1087,'find_friends_nearby','','Find friends','Ø§Ù„Ø¨Ø­Ø« Ø¹Ù† Ø£ØµØ¯Ù‚Ø§Ø¡','Zoek vrienden','Retrouver des amis','Freunde finden','Trova amici','Encontrar amigos','ÐÐ°Ð¹Ñ‚Ð¸ Ð´Ñ€ÑƒÐ·ÐµÐ¹','Encontrar amigos','ArkadaÅŸlarÄ± bul'),(1088,'location_dist','','Location distance','Ù…Ø³Ø§ÙØ© Ø§Ù„Ù…ÙˆÙ‚Ø¹','Locatie afstand','Distance demplacement','Standortabstand','Distanza della posizione','DistÃ¢ncia de localizaÃ§Ã£o','ÐœÐµÑÑ‚Ð¾Ñ€Ð°ÑÐ¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ','UbicaciÃ³n distancia','Yer mesafesi'),(1089,'close_to_u','','close to you','Ù‚Ø±ÙŠØ¨ Ù…Ù†Ùƒ','dicht bij jou','prÃ¨s de vous','nah bei dir','vicino a te','perto de vocÃª','Ð±Ð»Ð¸Ð·ÐºÐ¾ Ðº Ñ‚ÐµÐ±Ðµ','cerca de usted','sana yakÄ±n'),(1090,'find_friends','','Find friends','Ø§Ù„Ø¨Ø­Ø« Ø¹Ù† Ø£ØµØ¯Ù‚Ø§Ø¡','Zoek vrienden','Trouver des amis','Freunde finden','Trova amici','Encontrar amigos','ÐÐ°Ð¹Ñ‚Ð¸ Ð´Ñ€ÑƒÐ·ÐµÐ¹','Encontrar amigos','ArkadaÅŸlarÄ± bul'),(1091,'distance','','distance','Ù…Ø³Ø§ÙÙ‡: Ø¨Ø¹Ø¯','afstand','distance','Entfernung','distanza','distÃ¢ncia','Ñ€Ð°ÑÑÑ‚Ð¾ÑÐ½Ð¸Ðµ','distancia','mesafe'),(1092,'distance_from_u','','distance from you','Ø§Ù„Ù…Ø³Ø§ÙØ© Ù…Ù†Ùƒ','Afstand van jou','Distance de vous','Entfernung von Ihnen','Distanza da te','DistÃ¢ncia de vocÃª','Ð Ð°ÑÑÑ‚Ð¾ÑÐ½Ð¸Ðµ Ð¾Ñ‚ Ð²Ð°Ñ','Distancia de ti','Senden uzaklÄ±k'),(1093,'show_location','','Show location','Ø¥Ø¸Ù‡Ø§Ø± Ø§Ù„Ù…ÙˆÙ‚Ø¹','Toon locatie',NULL,'Lage anzeigen','Mostra la posizione','Mostrar localizaÃ§Ã£o','ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð½Ð° ÐºÐ°Ñ€Ñ‚Ðµ','Mostrar ubicaciÃ³n','Yeri gÃ¶ster'),(1094,'share_my_location','','Share my location with public?','Ù‡Ù„ ØªØ±ÙŠØ¯ Ù…Ø´Ø§Ø±ÙƒØ© Ù…ÙˆÙ‚Ø¹ÙŠ Ù…Ø¹ Ø§Ù„Ø¬Ù…Ù‡ÙˆØ±ØŸ','Deel mijn locatie met publiek?','Partagez mon emplacement avec le public?','Teilen Sie meinen Standort mit der Ã–ffentlichkeit?','Condividi la mia posizione con il pubblico?','Compartilhe minha localizaÃ§Ã£o com o pÃºblico?','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ñ‚ÐµÑÑŒ ÑÐ²Ð¾Ð¸Ð¼ Ð¼ÐµÑÑ‚Ð¾Ð¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð¸ÐµÐ¼ Ñ Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð¹?','Compartir mi ubicaciÃ³n con pÃºblico?','Konumumu halkla paylaÅŸmak mÄ± istiyorsunuz?'),(1095,'enter_valid_title','','Please enter a valid title','ÙŠØ±Ø¬Ù‰ Ø¥Ø¯Ø®Ø§Ù„ Ø¹Ù†ÙˆØ§Ù† ØµØ§Ù„Ø­','Vul alstublieft een geldige titel in','Entrez un titre valide','Bitte geben Sie einen gÃ¼ltigen Titel ein','Si prega di inserire un titolo valido','Insira um tÃ­tulo vÃ¡lido','Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ','Ingrese un tÃ­tulo vÃ¡lido','LÃ¼tfen geÃ§erli bir baÅŸlÄ±k girin'),(1096,'pay_per_click','','Pay Per Click (${{PRICE}})','Ø§Ù„Ø¯ÙØ¹ Ù„ÙƒÙ„ Ù†Ù‚Ø±Ø© (${{PRICE}})','Betaal per klik (${{PRICE}})','Pay Per Click (${{PRICE}})','Pay Per Click (${{PRICE}})','Pay Per Click (${{PRICE}})','Pay Per Click (${{PRICE}})','ÐŸÐ»Ð°Ñ‚Ð¸Ñ‚ÑŒ Ð·Ð° ÐºÐ»Ð¸Ðº (${{PRICE}})','Pago por clic (${{PRICE}})','TÄ±klama baÅŸÄ±na Ã–de (${{PRICE}})'),(1097,'pay_per_imprssion','','Pay Per Impression (${{PRICE}})','Ø§Ù„Ø¯ÙØ¹ Ù„ÙƒÙ„ Ø¸Ù‡ÙˆØ± (${{PRICE}})','Betaal per indruk (${{PRICE}})','Pay per Impression (${{PRICE}})','Pay per Impression (${{PRICE}})','Pay Per Impression (${{PRICE}})','Pague por impressÃ£o (${{PRICE}})','ÐŸÐ»Ð°Ñ‚Ð¸Ñ‚ÑŒ Ð·Ð° Ð¿Ð¾ÐºÐ°Ð· (${{PRICE}})','Pago por impresiÃ³n (${{PRICE}})','GÃ¶sterim BaÅŸÄ±na Ã–deme (${{PRICE}})'),(1098,'top_up','','Top up','ÙÙˆÙ‚ Ø­ØªÙ‰','Top up','Remplir','NachfÃ¼llen','Riempire','Completar','ÐŸÐ¾Ð¿Ð¾Ð»Ð½Ð¸Ñ‚ÑŒ','Completar','Ekleyin'),(1099,'balance_is_0','','Your current wallet balance is: 0, please top up your wallet to continue.','Ø±ØµÙŠØ¯ Ø§Ù„Ù…Ø­ÙØ¸Ø© Ø§Ù„Ø­Ø§Ù„ÙŠ Ù‡Ùˆ: 0ØŒ ÙŠØ±Ø¬Ù‰ Ù…ØªØ§Ø¨Ø¹Ø© Ù…Ø­ÙØ¸ØªÙƒ Ù„Ù„Ù…ØªØ§Ø¨Ø¹Ø©.','Uw huidige portemonneebalans is: 0, vul uw portemonnee aan om door te gaan.','Votre solde de portefeuille actuel est: 0, veuillez complÃ©ter votre portefeuille pour continuer.','Ihre aktuelle Brieftasche Gleichgewicht ist: 0, bitte nach oben Ihre Brieftasche, um fortzufahren.','Il tuo saldo attuale del portafoglio Ã¨: 0, ti preghiamo di riempire il portafoglio per continuare.','Seu saldo de carteira atual Ã©: 0, por favor, complete sua carteira para continuar.','Ð’Ð°Ñˆ Ñ‚ÐµÐºÑƒÑ‰Ð¸Ð¹ Ð±Ð°Ð»Ð°Ð½Ñ ÐºÐ¾ÑˆÐµÐ»ÑŒÐºÐ°: 0, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð¿Ð¾Ð»Ð½Ð¸Ñ‚Ðµ ÑÐ²Ð¾Ð¹ ÐºÐ¾ÑˆÐµÐ»ÐµÐº, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ.','Su saldo de cartera actual es: 0, por favor, recargue su cartera para continuar.','Mevcut cÃ¼zdan bakiyeniz: 0, devam etmek iÃ§in lÃ¼tfen cÃ¼zdanÄ±nÄ±zÄ± doldurun.'),(1100,'messages_delete_confirmation','','Are you sure you want to delete this conversation?','Ù‡Ù„ ØªØ±ÙŠØ¯ Ø¨Ø§Ù„ØªØ£ÙƒÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ù‡ Ø§Ù„Ù…Ø­Ø§Ø¯Ø«Ø©ØŸ','Weet u zeker dat u dit gesprek wilt verwijderen?','ÃŠtes-vous sÃ»r de vouloir supprimer cette conversation?','Sind Sie sicher, dass Sie diese Konversation lÃ¶schen mÃ¶chten?','Sei sicuro di voler eliminare questa conversazione?','Tem certeza de que deseja excluir esta conversa?','Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾Ñ‚ Ñ€Ð°Ð·Ð³Ð¾Ð²Ð¾Ñ€?','Â¿Seguro que quieres eliminar esta conversaciÃ³n?','Bu sohbeti silmek istediÄŸinizden emin misiniz?'),(1101,'currency','','Currency','Ø¯Ù‚Ø©','Valuta','Devise','WÃ¤hrung','Moneta','Moeda','Ð²Ð°Ð»ÑŽÑ‚Ð°','Moneda','Para birimi'),(1102,'friends_stories','','Friends Stories','Ù‚ØµØµ Ø§Ù„Ø£ØµØ¯Ù‚Ø§Ø¡','Vriendenverhalen',NULL,'Freunde Geschichten','Storie di amici','HistÃ³rias de amigos','Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ð¸ Ð´Ñ€ÑƒÐ·ÐµÐ¹','Historias de amigos','ArkadaÅŸ Hikayeleri'),(1103,'no_messages_here_yet','','No messages yet here.','Ù„Ø§ ØªÙˆØ¬Ø¯ Ø±Ø³Ø§Ø¦Ù„ Ø­ØªÙ‰ Ø§Ù„Ø¢Ù†.','Nog geen berichten hier.',NULL,'Noch keine Mitteilungen.','Non ci sono ancora messaggi qui.','Ainda nÃ£o hÃ¡ mensagens aqui.','ÐŸÐ¾ÐºÐ° ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹ Ð½ÐµÑ‚.','AÃºn no hay mensajes.','HenÃ¼z mesaj yok.'),(1104,'conver_deleted','','Conversation has been deleted.','ØªÙ… Ø­Ø°Ù Ø§Ù„Ù…Ø­Ø§Ø¯Ø«Ø©.','Conversatie is verwijderd.','La conversation a Ã©tÃ© supprimÃ©e.','Konversation wurde gelÃ¶scht.','La conversazione Ã¨ stata eliminata.','A conversa foi excluÃ­da.','Ð Ð°Ð·Ð³Ð¾Ð²Ð¾Ñ€ ÑƒÐ´Ð°Ð»ÐµÐ½.','Se ha eliminado la conversaciÃ³n.','Sohbet silindi.'),(1105,'group_name_limit','','Group name must be 4/15 characters','ÙŠØ¬Ø¨ Ø£Ù† ÙŠÙƒÙˆÙ† Ø§Ø³Ù… Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø© 4/15 Ø­Ø±ÙØ§','De groepsnaam moet 4/15 karakters zijn','Le nom du groupe doit comporter 4/15 caractÃ¨res','Der Gruppenname muss 4/15 Zeichen lang sein','Il nome del gruppo deve essere di 4/15 caratteri','O nome do grupo deve ser de 4/15 caracteres','Ð˜Ð¼Ñ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹ Ð´Ð¾Ð»Ð¶Ð½Ð¾ Ð±Ñ‹Ñ‚ÑŒ 4/15 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð²','El nombre del grupo debe tener 4/15 caracteres','Grup adÄ± 4/15 karakter olmalÄ±dÄ±r'),(1106,'group_avatar_image','','Group avatar must be an image','ÙŠØ¬Ø¨ Ø£Ù† ØªÙƒÙˆÙ† Ø§Ù„ØµÙˆØ±Ø© Ø§Ù„Ø±Ù…Ø²ÙŠØ© Ù„Ù„Ù…Ø¬Ù…ÙˆØ¹Ø© ØµÙˆØ±Ø©','Groep avatar moet een afbeelding zijn',NULL,'Gruppen-Avatar muss ein Bild sein',NULL,'O avatar do grupo deve ser uma imagem','Ð“Ñ€ÑƒÐ¿Ð¿Ð¾Ð²Ð¾Ð¹ Ð°Ð²Ð°Ñ‚Ð°Ñ€ Ð´Ð¾Ð»Ð¶ÐµÐ½ Ð±Ñ‹Ñ‚ÑŒ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸ÐµÐ¼','El avatar del grupo debe ser una imagen','Grup avatar bir resim olmalÄ±'),(1107,'explore','','Explore','Ø¥Ø³ØªÙƒØ´Ø§Ù','Onderzoeken','Explorer','Erforschen','Esplorare','Explorar','Ð˜ÑÑÐ»ÐµÐ´Ð¾Ð²Ð°Ñ‚ÑŒ','Explorar','KeÅŸfetmek'),(1108,'format_image','','File Format image','ØªÙ†Ø³ÙŠÙ‚ Ù…Ù„Ù Ø§Ù„ØµÙˆØ±Ø©','Bestandsformaat afbeelding','Image au format du fichier','Dateiformat Bild','Immagine del formato file','Imagem do formato do arquivo','Ð˜Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ð° Ñ„Ð°Ð¹Ð»Ð°','Imagen de formato de archivo','Dosya BiÃ§imi resmi'),(1109,'format_video','','File Format video','ØªÙ†Ø³ÙŠÙ‚ Ù…Ù„Ù Ø§Ù„ÙÙŠØ¯ÙŠÙˆ','Bestandsformaat video','Format de fichier vidÃ©o','Dateiformatvideo','Formato file video','VÃ­deo do formato do arquivo','Ð¤Ð¾Ñ€Ð¼Ð°Ñ‚ Ñ„Ð°Ð¹Ð»Ð° Ð²Ð¸Ð´ÐµÐ¾','Formato de archivo video','Dosya BiÃ§imi videosu'),(1110,'video','','Video','ÙÙŠØ¯ÙŠÙˆ','Video','VidÃ©o','Video','video','VÃ­deo','Ð²Ð¸Ð´ÐµÐ¾','VÃ­deo','Video'),(1111,'video_player','','VideoPlayer','Ù…Ø´ØºÙ„ ÙØ¯ÙŠÙˆÙ‡Ø§Øª','Video speler','Lecteur vidÃ©o','Videoplayer','Lettore video','VideoPlayer','Ð’Ð¸Ð´ÐµÐ¾ Ð¿Ñ€Ð¾Ð¸Ð³Ñ€Ñ‹Ð²Ð°Ñ‚ÐµÐ»ÑŒ','Reproductor de video','Video oynatÄ±cÄ±'),(1112,'no_file_chosen','','No file chosen','Ù„Ù… ØªÙ‚Ù… Ø¨Ø§Ø®ØªÙŠØ§Ø± Ù…Ù„Ù','Geen bestand gekozen','Aucun fichier choisi','Keine Datei ausgewÃ¤hlt','Nessun file scelto','Nenhum arquivo selecionado','Ð¤Ð°Ð¹Ð» Ð½Ðµ Ð²Ñ‹Ð±Ñ€Ð°Ð½','NingÃºn archivo elegido','Dosya seÃ§ili deÄŸil'),(1113,'choose_file','','Choose File','Ø§Ø®ØªØ± Ù…Ù„Ù','Kies bestand','Choisir le fichier','Datei wÃ¤hlen','Scegli il file','Escolher arquivo','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ñ„Ð°Ð¹Ð»','Elija el archivo','Dosya seÃ§in'),(1114,'media','','Media File','Ù…Ù„Ù ÙˆØ³Ø§Ø¦Ø·','Media bestand','Fichier multimÃ©dia','Mediendatei','File multimediale','Arquivo de mÃ­dia','Ð¤Ð°Ð¹Ð» Ð¼ÑƒÐ»ÑŒÑ‚Ð¸Ð¼ÐµÐ´Ð¸Ð°','Archivo multimedia','Medya dosyasÄ±'),(1115,'select_valid_img_vid','','Media file is invalid. Please select a valid image or video','Ù…Ù„Ù Ø§Ù„ÙˆØ³Ø§Ø¦Ø· ØºÙŠØ± ØµØ§Ù„Ø­. Ø§Ù„Ø±Ø¬Ø§Ø¡ ØªØ­Ø¯ÙŠØ¯ ØµÙˆØ±Ø© Ø£Ùˆ ÙÙŠØ¯ÙŠÙˆ ØµØ§Ù„Ø­ÙŠÙ†','Mediabestand is ongeldig. Selecteer een geldige afbeelding of video','Le fichier multimÃ©dia est invalide. Veuillez sÃ©lectionner une image ou une vidÃ©o valide','Mediendatei ist ungÃ¼ltig. Bitte wÃ¤hlen Sie ein gÃ¼ltiges Bild oder Video aus','Il file multimediale non Ã¨ valido. Si prega di selezionare unimmagine o un video valido','O arquivo de mÃ­dia Ã© invÃ¡lido. Selecione uma imagem ou vÃ­deo vÃ¡lido','ÐÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ð¹ Ñ„Ð°Ð¹Ð» Ð¼ÑƒÐ»ÑŒÑ‚Ð¸Ð¼ÐµÐ´Ð¸Ð°. Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ Ð¸Ð»Ð¸ Ð²Ð¸Ð´ÐµÐ¾','El archivo multimedia no es vÃ¡lido. Seleccione una imagen o video vÃ¡lido','Medya dosyasÄ± geÃ§ersiz. LÃ¼tfen geÃ§erli bir resim veya video seÃ§in'),(1116,'select_valid_img','','Media file is invalid. Please select a valid image','Ù…Ù„Ù Ø§Ù„ÙˆØ³Ø§Ø¦Ø· ØºÙŠØ± ØµØ§Ù„Ø­. Ø§Ù„Ø±Ø¬Ø§Ø¡ ØªØ­Ø¯ÙŠØ¯ ØµÙˆØ±Ø© ØµØ§Ù„Ø­Ø©','Mediabestand is ongeldig. Selecteer een geldige afbeelding','Le fichier multimÃ©dia est invalide. Veuillez sÃ©lectionner une image valide','Mediendatei ist ungÃ¼ltig. Bitte wÃ¤hlen Sie ein gÃ¼ltiges Bild','Il file multimediale non Ã¨ valido. Si prega di selezionare unimmagine valida','O arquivo de mÃ­dia Ã© invÃ¡lido. Selecione uma imagem vÃ¡lida','ÐÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ð¹ Ñ„Ð°Ð¹Ð» Ð¼ÑƒÐ»ÑŒÑ‚Ð¸Ð¼ÐµÐ´Ð¸Ð°. Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ','El archivo multimedia no es vÃ¡lido. Seleccione una imagen vÃ¡lida','Medya dosyasÄ± geÃ§ersiz. LÃ¼tfen geÃ§erli bir resim seÃ§in'),(1117,'select_valid_vid','','Media file is invalid. Please select a valid video','Ù…Ù„Ù Ø§Ù„ÙˆØ³Ø§Ø¦Ø· ØºÙŠØ± ØµØ§Ù„Ø­. Ø§Ù„Ø±Ø¬Ø§Ø¡ ØªØ­Ø¯ÙŠØ¯ ÙÙŠØ¯ÙŠÙˆ ØµØ§Ù„Ø­','Mediabestand is ongeldig. Selecteer een geldige video','Le fichier multimÃ©dia est invalide. Veuillez sÃ©lectionner une vidÃ©o valide','Mediendatei ist ungÃ¼ltig. Bitte wÃ¤hlen Sie ein gÃ¼ltiges Video aus','Il file multimediale non Ã¨ valido. Si prega di selezionare un video valido','O arquivo de mÃ­dia Ã© invÃ¡lido. Selecione um vÃ­deo vÃ¡lido','ÐÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ð¹ Ñ„Ð°Ð¹Ð» Ð¼ÑƒÐ»ÑŒÑ‚Ð¸Ð¼ÐµÐ´Ð¸Ð°. Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ Ð²Ð¸Ð´ÐµÐ¾','El archivo multimedia no es vÃ¡lido. Seleccione un video vÃ¡lido','Medya dosyasÄ± geÃ§ersiz. LÃ¼tfen geÃ§erli bir video seÃ§in'),(1118,'drop_img_here','','Drop Image Here','Ø¥Ø³Ù‚Ø§Ø· Ø§Ù„ØµÙˆØ±Ø© Ù‡Ù†Ø§','Zet hier een afbeelding neer','DÃ©poser limage ici','Bild hier ablegen','Rilascia limmagine qui','Largue a imagem aqui','ÐžÑ‚Ð±Ñ€Ð¾ÑÑŒÑ‚Ðµ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ Ð·Ð´ÐµÑÑŒ','Dejar caer la imagen aquÃ­','Buraya Resim AÃ§'),(1119,'or','','OR','Ø£Ùˆ','OF','OU','ODER','O','OU','Ð˜Ð›Ð˜','O','VEYA'),(1120,'browse_to_upload','','Browse To Upload','ØªØµÙØ­ Ù„ØªØ­Ù…ÙŠÙ„','Blader naar uploaden','Parcourir pour tÃ©lÃ©charger','Durchsuchen zum Hochladen','Sfoglia per caricare','Navegue para carregar','ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐ¸','Buscar para cargar','YÃ¼klemeye GÃ¶zat'),(1121,'pr_completion','','Profile Completion','Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ Ø§Ù„Ø§Ù†ØªÙ‡Ø§Ø¡','Profiel voltooiing','AchÃ¨vement du profil','Profil Fertigstellung','Completamento del profilo','ConclusÃ£o do perfil','Ð—Ð°Ð²ÐµÑ€ÑˆÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ','TerminaciÃ³n del perfil','Profil Tamamlama'),(1122,'ad_pr_picture','','Add your profile picture','Ø¥Ø¶Ø§ÙØ© ØµÙˆØ±Ø© Ù…Ù„ÙÙƒ Ø§Ù„Ø´Ø®ØµÙŠ','Voeg je profielfoto toe','Ajouter votre photo de profil','FÃ¼gen Sie Ihr Profilbild hinzu','Aggiungi la tua immagine del profilo','Adicione sua foto de perfil','Ð”Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ ÑÐ²Ð¾Ðµ Ñ„Ð¾Ñ‚Ð¾ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ','Agrega tu foto de perfil','Profil resmini ekle'),(1123,'add_ur_name','','Add your name','Ø£Ø¶Ù Ø§Ø³Ù…Ùƒ','Voeg je naam toe','Ajoutez votre nom','FÃ¼gen Sie Ihren Namen hinzu','Aggiungi il tuo nome','Adicione seu nome','Ð”Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ ÑÐ²Ð¾Ðµ Ð¸Ð¼Ñ','Agrega tu nombre','AdÄ±nÄ±zÄ± ekleyin'),(1124,'ad_ur_workplace','','Add your workplace','Ø£Ø¶Ù Ù…ÙƒØ§Ù† Ø¹Ù…Ù„Ùƒ','Voeg uw werkplek toe','Ajoutez votre lieu de travail','FÃ¼gen Sie Ihren Arbeitsplatz hinzu','Aggiungi il tuo posto di lavoro','Adicione seu local de trabalho','Ð”Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ ÑÐ²Ð¾Ðµ Ñ€Ð°Ð±Ð¾Ñ‡ÐµÐµ Ð¼ÐµÑÑ‚Ð¾','Agregue su lugar de trabajo','Ä°ÅŸ yerinizi ekleyin'),(1125,'ad_ur_country','','Add your country','Ø£Ø¶Ù Ø¨Ù„Ø¯Ùƒ','Voeg uw land toe','Ajoutez votre pays','FÃ¼gen Sie Ihr Land hinzu','Aggiungi il tuo paese','Adicione seu paÃ­s','Ð”Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ ÑÐ²Ð¾ÑŽ ÑÑ‚Ñ€Ð°Ð½Ñƒ','Agrega tu paÃ­s','Ãœlkenizi ekle'),(1126,'ad_ur_address','','Add your address','Ø£Ø¶Ù Ø¹Ù†ÙˆØ§Ù†Ùƒ','Voeg uw adres toe','Ajoutez votre adresse','FÃ¼gen Sie Ihre Adresse hinzu','Aggiungi il tuo indirizzo','Adicione seu endereÃ§o','Ð”Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ ÑÐ²Ð¾Ð¹ Ð°Ð´Ñ€ÐµÑ','Agrega tu direcciÃ³n','Adresinizi ekleyin'),(1127,'e_sent_msg','','Someone Send me a message','Ø´Ø®Øµ Ø£Ø±Ø³Ù„ Ù„ÙŠ Ø±Ø³Ø§Ù„Ø©','Iemand Stuur mij een bericht','Quelquun Envoyez moi un message','Jemand Senden Sie mir eine Nachricht','Qualcuno Inviami un messaggio','AlguÃ©m Envie-me uma mensagem','ÐšÑ‚Ð¾-Ð½Ð¸Ð±ÑƒÐ´ÑŒ ÐŸÐ¾ÑÐ»Ð°Ñ‚ÑŒ Ð¼Ð½Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Alguien me envÃ­a un mensaje','Birisi bana bir mesaj gÃ¶nder'),(1128,'send_money','','Send money','Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø£Ù…ÙˆØ§Ù„','Stuur geld','Envoyer de largent','Geld schicken','Inviare soldi','Enviar dinheiro','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð´ÐµÐ½ÑŒÐ³Ð¸','Enviar dinero','Para gÃ¶ndermek'),(1129,'u_send_money','','You can send money to your friends, acquaintances or anyone','ÙŠÙ…ÙƒÙ†Ùƒ Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø£Ù…ÙˆØ§Ù„ Ø¥Ù„Ù‰ Ø£ØµØ¯Ù‚Ø§Ø¦ÙƒØŒ Ù…Ø¹Ø§Ø±ÙÙƒ Ø£Ùˆ Ø£ÙŠ Ø´Ø®Øµ','Je kunt geld sturen naar je vrienden, kennissen of wie dan ook','Vous pouvez envoyer de largent Ã  vos amis, connaissances ou nimporte qui','Sie kÃ¶nnen Geld an Ihre Freunde, Bekannten oder irgendjemanden senden','Puoi inviare denaro ai tuoi amici, conoscenti o chiunque altro','VocÃª pode enviar dinheiro para seus amigos, conhecidos ou qualquer um','Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð´ÐµÐ½ÑŒÐ³Ð¸ ÑÐ²Ð¾Ð¸Ð¼ Ð´Ñ€ÑƒÐ·ÑŒÑÐ¼, Ð·Ð½Ð°ÐºÐ¾Ð¼Ñ‹Ð¼ Ð¸Ð»Ð¸ ÐºÐ¾Ð¼Ñƒ-Ð»Ð¸Ð±Ð¾','Puede enviar dinero a sus amigos, conocidos o cualquier persona','ArkadaÅŸlarÄ±nÄ±z, tanÄ±dÄ±klarÄ±nÄ±z veya herhangi birisine para gÃ¶nderebilirsiniz.'),(1130,'available_balance','','Available balance','Ø§Ù„Ø±ØµÙŠØ¯ Ø§Ù„Ù…ØªÙˆÙØ±','Beschikbaar saldo','Solde disponible','VerfÃ¼gbares Guthaben','Saldo disponibile','Saldo disponÃ­vel','Ð”Ð¾ÑÑ‚ÑƒÐ¿Ð½Ñ‹Ðµ ÑÑ€ÐµÐ´ÑÑ‚Ð²Ð°','Saldo disponible','Kalan bakiye'),(1131,'send_to','','To who you want to send?','Ø§Ø±Ø³Ù„ Ø¥Ù„Ù‰','Verzenden naar','Envoyer Ã ','Senden an','Inviare a','Enviar para','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ','Enviar a','GÃ¶nderildi'),(1132,'search_name_or_email','','Search by username or email','Ø§Ù„Ø¨Ø­Ø« Ø¹Ù† Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ØŒ ÙˆØ§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','Zoeken naar gebruikersnaam, e-mail','Recherche de nom dutilisateur, e-mail','Suchen Sie nach Benutzername, E-Mail','Cerca nome utente, e-mail','Procure por nome de usuÃ¡rio, e-mail','ÐŸÐ¾Ð¸ÑÐº Ð¸Ð¼ÐµÐ½Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ, ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹','Buscar nombre de usuario, correo electrÃ³nico','KullanÄ±cÄ± adÄ±nÄ±, e-postasÄ±nÄ± ara'),(1133,'money_sent_to','','Your money was successfully sent to','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø£Ù…ÙˆØ§Ù„Ùƒ Ø¨Ù†Ø¬Ø§Ø­ Ø¥Ù„Ù‰','Uw geld is succesvol verzonden naar','Votre argent a Ã©tÃ© envoyÃ© avec succÃ¨s Ã ','Ihr Geld wurde erfolgreich an gesendet','Il tuo denaro Ã¨ stato inviato con successo','Seu dinheiro foi enviado com sucesso para','Ð’Ð°ÑˆÐ¸ Ð´ÐµÐ½ÑŒÐ³Ð¸ Ð±Ñ‹Ð»Ð¸ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ñ‹','Su dinero fue enviado exitosamente a','ParanÄ±z baÅŸarÄ±yla gÃ¶nderildi'),(1134,'sent_you','','Sent you','Ø§Ø±Ø³Ù„Øª Ù„Ùƒ','Stuurde je','Vous a envoyÃ©','Hat dich geschickt','Ti ho inviato','Enviei a vocÃª','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾ Ð’Ð°Ð¼','Enviado','Seni gÃ¶nderdi'),(1135,'amount_exceded','','The amount exceded your current balance!','Ø§Ù„Ù…Ø¨Ù„Øº Ø§Ù„Ù…Ø³ØªØ­Ù‚ Ø±ØµÙŠØ¯Ùƒ Ø§Ù„Ø­Ø§Ù„ÙŠ!','Het bedrag overschreed je huidige saldo!','Le montant a dÃ©passÃ© votre solde actuel!','Der Betrag Ã¼bertraf Ihr aktuelles Guthaben!','Limporto ha superato il tuo saldo attuale!','O valor excedeu o seu saldo atual!','Ð¡ÑƒÐ¼Ð¼Ð° Ð¿Ñ€ÐµÐ²Ñ‹ÑÐ¸Ð»Ð° Ð²Ð°Ñˆ Ñ‚ÐµÐºÑƒÑ‰Ð¸Ð¹ Ð±Ð°Ð»Ð°Ð½Ñ!','Â¡La cantidad excediÃ³ su saldo actual!','Miktar, ÅŸu anki bakiyenizi aÅŸtÄ±!'),(1136,'custom_thumbnail','','Custom Thumbnail','ØµÙˆØ±Ø© Ù…ØµØºØ±Ø© Ù…Ø®ØµØµØ©','Aangepaste miniatuur','Miniature personnalisÃ©e','Benutzerdefiniertes Miniaturbild','Miniatura personalizzata','Miniatura personalizada','ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒÑÐºÐ°Ñ Ð¼Ð¸Ð½Ð¸Ð°Ñ‚ÑŽÑ€Ð°','Miniatura personalizada','Ã–zel KÃ¼Ã§Ã¼k Boy'),(1137,'cntc_limit_reached','','You have reached your limit of {{CNTC_LIMIT}} friends!','Ù„Ù‚Ø¯ Ø¨Ù„ØºØª Ø§Ù„Ø­Ø¯ Ø§Ù„Ù…Ø³Ù…ÙˆØ­ Ø¨Ù‡ Ù„Ø¹Ø¯Ø¯ {{CNTC_LIMIT}} Ù…Ù† Ø§Ù„Ø£ØµØ¯Ù‚Ø§Ø¡!','U heeft uw limiet van {{CNTC_LIMIT}} vrienden bereikt!','Vous avez atteint la limite de vos amis {{CNTC_LIMIT}}!','Du hast dein Limit von {{CNTC_LIMIT}} Freunden erreicht!','Hai raggiunto il limite di {{CNTC_LIMIT}} amici!','VocÃª atingiu seu limite de amigos {{CNTC_LIMIT}}!','Ð’Ñ‹ Ð´Ð¾ÑÑ‚Ð¸Ð³Ð»Ð¸ ÑÐ²Ð¾ÐµÐ³Ð¾ Ð¿Ñ€ÐµÐ´ÐµÐ»Ð° {{CNTC_LIMIT}} Ð´Ñ€ÑƒÐ·ÐµÐ¹!','Â¡Has alcanzado el lÃ­mite de {{CNTC_LIMIT}} amigos!','{{CNTC_LIMIT}} arkadaÅŸÄ±nÄ±zla ilgili sÄ±nÄ±rÄ±nÄ±za ulaÅŸtÄ±nÄ±z!'),(1150,'people','','People','Ø§Ø´Ø®Ø§Øµ','Mensen','Gens','Menschen','Persone','Ludzie','Ð»ÑŽÐ´Ð¸','Gente','Ä°nsanlar'),(1151,'nature','','Nature','Ø·Ø¨ÙŠØ¹Ø©','Natuur','La nature','Natur','Natura','Natura','ÐŸÑ€Ð¸Ñ€Ð¾Ð´Ð°','Naturaleza','DoÄŸa'),(1152,'share_to','','Share to','Ù…Ø´Ø§Ø±ÙƒØ© Ù„','Delen naar','Partager Ã ','Teilen mit','Condividere a','DzieliÄ‡ siÄ™ z','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ñ‚ÑŒÑÑ Ñ','Compartir a','Ile paylaÅŸ'),(1153,'timeline','','Timeline','Ø§Ù„Ø¬Ø¯ÙˆÙ„ Ø§Ù„Ø²Ù…Ù†ÙŠ','Tijdlijn','Chronologie','Zeitleiste','Sequenza temporale','OÅ› czasu','Ð“Ñ€Ð°Ñ„Ð¸Ðº','CronologÃ­a','Zaman Ã§izelgesi'),(1154,'pinterest','','Pinterest','Ù…ÙˆÙ‚Ø¹ Pinterest','Pinterest','Pinterest','Pinterest','Pinterest','Pinterest','Pinterest','Pinterest','pinterest'),(1155,'group','','Group','Ù…Ø¬Ù…ÙˆØ¹Ø©','Groep','Groupe','Gruppe','Gruppo','Grupa','Ð³Ñ€ÑƒÐ¿Ð¿Ð°','Grupo','grup'),(1156,'pro_members','','Pro Members','Ø§Ù„Ø£Ø¹Ø¶Ø§Ø¡ Ø§Ù„Ù…Ø­ØªØ±ÙÙˆÙ†','Pro-leden','Membres Pro','Pro Mitglieder','Membri Pro','Pro CzÅ‚onkowie','ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸','Miembros Pro','Profesyonel Ãœyeler'),(1157,'copyrights','','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}','Â© {date} {site_name}'),(1158,'popular_posts','','Popular Posts','Ù…Ù†Ø´ÙˆØ±Ø§Øª Ø´Ø§Ø¦Ø¹Ø©','populaire posts','Messages populaires','Beliebte BeitrÃ¤ge','Post popolari','popularne posty','Ð¿Ð¾Ð¿ÑƒÐ»ÑÑ€Ð½Ñ‹Ðµ Ð¿Ð¾ÑÑ‚Ñ‹','entradas populares','popÃ¼ler gÃ¶nderiler'),(1159,'duration','','Duration','Ø§Ù„Ù…Ø¯Ø© Ø§Ù„Ø²Ù…Ù†ÙŠØ©','Looptijd','DurÃ©e','Dauer','Durata','Trwanie','Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ÑÑ‚ÑŒ','DuraciÃ³n','sÃ¼re'),(1160,'pro_feature_control_profile','','Pro features give you complete control over your profile.','ØªÙ…Ù†Ø­Ùƒ Ø§Ù„Ù…ÙŠØ²Ø§Øª Ø§Ù„Ø§Ø­ØªØ±Ø§ÙÙŠØ© ØªØ­ÙƒÙ…Ù‹Ø§ ÙƒØ§Ù…Ù„Ø§Ù‹ ÙÙŠ Ù…Ù„ÙÙƒ Ø§Ù„Ø´Ø®ØµÙŠ.','Pro-functies geven u volledige controle over uw profiel.','Les fonctionnalitÃ©s Pro vous donnent un contrÃ´le total sur votre profil.','Pro-Funktionen geben Ihnen die vollstÃ¤ndige Kontrolle Ã¼ber Ihr Profil.','Le funzionalitÃ  Pro ti danno il controllo completo sul tuo profilo.','Funkcje Pro zapewniajÄ… peÅ‚nÄ… kontrolÄ™ nad Twoim profilem.','Ð¤ÑƒÐ½ÐºÑ†Ð¸Ð¸ Pro Ð´Ð°ÑŽÑ‚ Ð²Ð°Ð¼ Ð¿Ð¾Ð»Ð½Ñ‹Ð¹ ÐºÐ¾Ð½Ñ‚Ñ€Ð¾Ð»ÑŒ Ð½Ð°Ð´ Ð²Ð°ÑˆÐ¸Ð¼ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÐµÐ¼.','Las funciones Pro le brindan un control total sobre su perfil.','Pro Ã¶zellikleri profilinizde tam kontrol saÄŸlar.'),(1161,'why_choose_pro','','Why Choose PRO?','Ù„Ù…Ø§Ø°Ø§ Ø§Ø®ØªØ±Øª Ù„Ù„Ù…Ø­ØªØ±ÙÙŠÙ†ØŸ','Waarom kiezen voor PRO?','Pourquoi choisir PRO?','Warum wÃ¤hlen Sie PRO?','PerchÃ© scegliere PRO?','Dlaczego warto wybraÄ‡ PRO?','ÐŸÐ¾Ñ‡ÐµÐ¼Ñƒ Ð²Ñ‹Ð±Ð¸Ñ€Ð°ÑŽÑ‚ PRO?','Â¿Por quÃ© elegir PRO?','PRO Neden Tercih Edilir?'),(1162,'whatsapp','','WhatsApp','Ø§Ù„ WhatsApp','WhatsApp','WhatsApp','WhatsApp','WhatsApp','Whatsapp','WhatsApp','WhatsApp','Naber'),(1163,'whatsapp','','WhatsApp','Ø§Ù„ WhatsApp','WhatsApp','WhatsApp','WhatsApp','WhatsApp','Whatsapp','WhatsApp','WhatsApp','Naber'),(1164,'post_login_requriement_dislike','','Please log in to like, dislike, share and comment!','Ø§Ù„Ø±Ø¬Ø§Ø¡ ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„ Ù„Ø¥Ø¨Ø¯Ø§Ø¡ Ø§Ù„Ø¥Ø¹Ø¬Ø§Ø¨ ØŒ ÙˆØ¹Ø¯Ù… Ø§Ù„Ø¥Ø¹Ø¬Ø§Ø¨ ØŒ ÙˆØ§Ù„Ù…Ø´Ø§Ø±ÙƒØ© ÙˆØ§Ù„ØªØ¹Ù„ÙŠÙ‚!','Meld u aan om leuk te vinden, niet leuk te vinden, te delen en te reageren!','Veuillez vous connecter pour aimer, ne pas aimer, partager et commenter!','Bitte einloggen um zu mÃ¶gen, nicht mÃ¶gen, teilen und kommentieren!','Effettua il login per piacere, non mi piace, condividi e commenta!','Por favor, faÃ§a o login para curtir, nÃ£o gostar, compartilhar e comentar!','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð¾Ð¹Ð´Ð¸Ñ‚Ðµ Ð² ÑÐ¸ÑÑ‚ÐµÐ¼Ñƒ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð½Ðµ Ð»ÑŽÐ±Ð¸Ñ‚ÑŒ, Ð´ÐµÐ»Ð¸Ñ‚ÑŒÑÑ Ð¸ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ!','Por favor inicie sesiÃ³n para gustar, no me gusta, compartir y comentar!','LÃ¼tfen beÄŸenmek, beÄŸenmemek, paylaÅŸmak ve yorum yapmak iÃ§in giriÅŸ yapÄ±n!'),(1165,'post_login_requriement_none','','Please log in to like, share and comment!','ÙŠØ±Ø¬Ù‰ ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„ Ù„Ø¥Ø¨Ø¯Ø§Ø¡ Ø§Ù„Ø¥Ø¹Ø¬Ø§Ø¨ ÙˆØ§Ù„Ù…Ø´Ø§Ø±ÙƒØ© ÙˆØ§Ù„ØªØ¹Ù„ÙŠÙ‚!','Log in om leuk te vinden, delen en reageren!','Veuillez vous connecter pour aimer, partager et commenter!','Bitte einloggen um zu liken, teilen und kommentieren!','Effettua il login per piacere, condividere e commentare!','Por favor, faÃ§a o login para curtir, compartilhar e comentar!','Ð’Ð¾Ð¹Ð´Ð¸Ñ‚Ðµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ, Ð¿Ð¾Ð´ÐµÐ»Ð¸Ñ‚ÑŒÑÑ Ð¸ Ð¿Ñ€Ð¾ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ!','Por favor inicie sesiÃ³n para gustar, compartir y comentar!','LÃ¼tfen beÄŸenmek, paylaÅŸmak ve yorum yapmak iÃ§in giriÅŸ yapÄ±n!'),(1166,'e_disliked_my_posts','','Someone disliked my posts','Ø´Ø®Øµ Ù„Ù… ÙŠØ¹Ø¬Ø¨Ù†ÙŠ Ù…Ø´Ø§Ø±ÙƒØ§ØªÙŠ','Iemand vond mijn berichten niet leuk',NULL,'Jemand hat meine BeitrÃ¤ge nicht gemocht','A qualcuno non sono piaciuti i miei post','AlguÃ©m nÃ£o gostou de minhas postagens','ÐšÑ‚Ð¾-Ñ‚Ð¾ Ð½Ðµ Ð»ÑŽÐ±Ð¸Ð» Ð¼Ð¾Ð¸ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ','A alguien no le gustÃ³ mis publicaciones','Birisi yayÄ±nlarÄ±mÄ± beÄŸenmedi'),(1167,'edit_ads','','Edit campaign','ØªØ­Ø±ÙŠØ± Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†Ø§Øª','Bewerk advertenties','Modifier les annonces','Anzeigen bearbeiten','Modifica annunci','Editar anÃºncios','Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ñ','Editar anuncios','ReklamlarÄ± dÃ¼zenle'),(1168,'manage_ads','','Manage ads','Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†Ø§Øª','Advertenties beheren','Gerer annonces','Anzeigen verwalten','Gestisci annunci','Gerenciar anÃºncios','Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸ÑÐ¼Ð¸','Administrar anuncios','ReklamlarÄ± yÃ¶net'),(1169,'create_new_ads','','New campaign','Ø¥Ù†Ø´Ø§Ø¡ Ø¥Ø¹Ù„Ø§Ù† Ø¬Ø¯ÙŠØ¯','Maak een nieuwe advertentie','CrÃ©er une nouvelle annonce','Erstellen Sie eine neue Anzeige','Crea un nuovo annuncio','Crie um novo anÃºncio','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð½Ð¾Ð²Ð¾Ðµ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ','Crear nuevo anuncio','Yeni reklam oluÅŸtur'),(1170,'create_events','','Create new event','Ø­Ø¯Ø« Ø¬Ø¯ÙŠØ¯ Craete','Craete nieuw evenement','Craete nouvel Ã©vÃ©nement','Craete neues Ereignis','Craete nuovo evento','Novo evento Craete','ÐÐ¾Ð²Ð¾Ðµ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ðµ Craete','Nuevo evento de Craete','Craete yeni etkinlik'),(1171,'edit_event','','Edit event','ØªØ­Ø±ÙŠØ± Ø§Ù„Ø­Ø¯Ø«','Gebeurtenis bewerken','Modifier l&#039;Ã©vÃ©nement','Veranstaltung bearbeiten','Modifica evento','Editar evento','Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ðµ','Editar evento','EtkinliÄŸi dÃ¼zenle'),(1172,'event_going','','Events Going','Ø£Ø­Ø¯Ø§Ø« Ø§Ù„Ø°Ù‡Ø§Ø¨','Evenementen gaan','EvÃ©nements','Veranstaltungen gehen','Eventi in corso','Eventos indo','Ð¡Ð¾Ð±Ñ‹Ñ‚Ð¸Ñ','Eventos en marcha','Olaylar Gidiyor'),(1173,'event_intersted','','Events Interested','Ø§Ù„Ø£Ø­Ø¯Ø§Ø« Ø§Ù„Ù…Ù‡ØªÙ…Ø©','Evenementen GeÃ¯nteresseerd','Ã‰vÃ©nements intÃ©ressÃ©s','Veranstaltungen interessiert','Eventi interessati','Eventos Interessados','Ð¡Ð¾Ð±Ñ‹Ñ‚Ð¸Ñ','Eventos Interesados','Ä°lgi AlanlarÄ±'),(1174,'event_invited','','Invited','Ø¯Ø¹ÙˆØ©','Uitgenodigd','InvitÃ©','Eingeladen','Invitato','Convidamos','Ð¿Ñ€Ð¸Ð³Ð»Ð°ÑˆÐµÐ½Ð½Ñ‹Ð¹','Invitado','Davetli'),(1175,'events_past','','Past Events','Ø§Ù„Ø£Ø­Ø¯Ø§Ø« Ø§Ù„Ù…Ø§Ø¶ÙŠØ©','Vorige evenementen','Ã‰vÃ©nements passÃ©s','Vergangene Ereignisse','Eventi passati','Eventos passados','ÐŸÑ€Ð¾ÑˆÐµÐ´ÑˆÐ¸Ðµ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ñ','Eventos pasados','GeÃ§miÅŸ Etkinlikler'),(1176,'events_upcoming','','Upcoming Events','Ø§Ù„Ø£Ø­Ø¯Ø§Ø« Ø§Ù„Ù‚Ø§Ø¯Ù…Ø©','aankomende evenementen','Ã©vÃ¨nements Ã  venir','Kommende Veranstaltungen','Prossimi eventi','prÃ³ximos eventos','ÐŸÑ€ÐµÐ´ÑÑ‚Ð¾ÑÑ‰Ð¸Ðµ Ð¡Ð¾Ð±Ñ‹Ñ‚Ð¸Ñ','PrÃ³ximos Eventos','YaklaÅŸan Etkinlikler'),(1177,'crop_your_avatar','','Crop your avatar','Ø§Ù‚ØªØµØ§Øµ Ø§Ù„ØµÙˆØ±Ø© Ø§Ù„Ø±Ù…Ø²ÙŠØ© Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ','Snijd je avatar bij','Recadrez votre avatar','Beschneide deinen Avatar','Ritaglia il tuo avatar','Recorte seu avatar','ÐžÐ±Ñ€ÐµÐ·Ð°Ñ‚ÑŒ Ð°Ð²Ð°Ñ‚Ð°Ñ€','Recorta tu avatar','AvatarÄ±nÄ± kÄ±rp'),(1178,'cookie_message','','This website uses cookies to ensure you get the best experience on our website.','ÙŠØ³ØªØ®Ø¯Ù… Ù…ÙˆÙ‚Ø¹ Ø§Ù„ÙˆÙŠØ¨ Ù‡Ø°Ø§ Ù…Ù„ÙØ§Øª ØªØ¹Ø±ÙŠÙ Ø§Ù„Ø§Ø±ØªØ¨Ø§Ø· Ù„Ø¶Ù…Ø§Ù† Ø­ØµÙˆÙ„Ùƒ Ø¹Ù„Ù‰ Ø£ÙØ¶Ù„ ØªØ¬Ø±Ø¨Ø© Ø¹Ù„Ù‰ Ù…ÙˆÙ‚Ø¹Ù†Ø§.','Deze website maakt gebruik van cookies om ervoor te zorgen dat u de beste ervaring op onze website krijgt.','Ce site utilise des cookies pour vous assurer la meilleure expÃ©rience sur notre site.','Diese Website verwendet Cookies, um sicherzustellen, dass Sie die beste Erfahrung auf unserer Website erhalten.','Questo sito Web utilizza i cookie per assicurarti di ottenere la migliore esperienza sul nostro sito web.','Este site usa cookies para garantir que vocÃª obtenha a melhor experiÃªncia em nosso site.','ÐÐ° ÑÑ‚Ð¾Ð¼ Ð²ÐµÐ±-ÑÐ°Ð¹Ñ‚Ðµ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÑŽÑ‚ÑÑ Ñ„Ð°Ð¹Ð»Ñ‹ cookie, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð²Ñ‹ Ð¼Ð¾Ð³Ð»Ð¸ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ Ð»ÑƒÑ‡ÑˆÐ¸Ð¹ Ð¾Ð¿Ñ‹Ñ‚ Ð½Ð° Ð½Ð°ÑˆÐµÐ¼ Ð²ÐµÐ±-ÑÐ°Ð¹Ñ‚Ðµ.','Este sitio web utiliza cookies para garantizar que obtenga la mejor experiencia en nuestro sitio web.','Bu web sitesi, web sitemizde en iyi deneyimi yaÅŸamanÄ±zÄ± saÄŸlamak iÃ§in Ã§erezleri kullanÄ±r.'),(1179,'cookie_dismiss','','Got It!','ÙÙ‡Ù…ØªÙƒ!','Begrepen!','Je l&#039;ai!','Ich habs!','Fatto!','Consegui!','ÐŸÐ¾Ð½ÑÐ»!','Â¡Lo tengo!','AnladÄ±m!'),(1180,'cookie_link','','Learn More','Ø£Ø¹Ø±Ù Ø£ÙƒØ«Ø±','Kom meer te weten','Apprendre encore plus','Erfahren Sie mehr','Per saperne di piÃ¹','Saber mais','Ð’Ñ‹ÑƒÑ‡Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ','Aprende mÃ¡s','Daha fazla bilgi edin'),(1181,'terms_accept','','Please agree to the Terms of use & Privacy Policy','ÙŠØ±Ø¬Ù‰ Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„Ù‰ Ø´Ø±ÙˆØ· Ø§Ù„Ø§Ø³ØªØ®Ø¯Ø§Ù… ÙˆØ³ÙŠØ§Ø³Ø© Ø§Ù„Ø®ØµÙˆØµÙŠØ©','Ga akkoord met de gebruiksvoorwaarden en het privacybeleid','Veuillez accepter les conditions d&#039;utilisation et la politique de confidentialitÃ©','Bitte stimme den Nutzungsbedingungen und Datenschutzrichtlinien zu','Si prega di accettare i Termini d&#039;uso e l&#039;informativa sulla privacy','Por favor, aceite os Termos de Uso e PolÃ­tica de Privacidade','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, ÑÐ¾Ð³Ð»Ð°ÑˆÐ°Ð¹Ñ‚ÐµÑÑŒ Ñ Ð£ÑÐ»Ð¾Ð²Ð¸ÑÐ¼Ð¸ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ð½Ð¸Ñ Ð¸ ÐŸÐ¾Ð»Ð¸Ñ‚Ð¸ÐºÐ¾Ð¹ ÐºÐ¾Ð½Ñ„Ð¸Ð´ÐµÐ½Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾ÑÑ‚Ð¸','Acepta los TÃ©rminos de uso y la PolÃ­tica de privacidad','LÃ¼tfen KullanÄ±m KoÅŸullarÄ± ve Gizlilik PolitikasÄ±nÄ± kabul edin'),(1182,'good_morning','','Good morning','ØµØ¨Ø§Ø­ Ø§Ù„Ø®ÙŠØ±','Goedemorgen','Bonjour','Guten Morgen','Buongiorno','Bom Dia','Ð”Ð¾Ð±Ñ€Ð¾Ðµ ÑƒÑ‚Ñ€Ð¾','Buenos dÃ­as','GÃ¼naydÄ±n'),(1183,'good_afternoon','','Good afternoon','Ø·Ø§Ø¨ Ù…Ø³Ø§Ø¦Ùƒ','Goedenmiddag','bonne aprÃ¨s-midi','guten Tag','Buon pomeriggio','Boa tarde','Ð”Ð¾Ð±Ñ€Ñ‹Ð¹ Ð´ÐµÐ½ÑŒ','Buenas tardes','TÃ¼naydÄ±n'),(1184,'good_evening','','Good evening','Ù…Ø³Ø§Ø¡ Ø§Ù„Ø®ÙŠØ±','Goedenavond','Bonsoir','Guten Abend','Buonasera','Boa noite','Ð”Ð¾Ð±Ñ€Ñ‹Ð¹ Ð²ÐµÑ‡ÐµÑ€','Buenas tardes','Ä°yi akÅŸamlar'),(1185,'create_ads','','Create advertisement','Ø¥Ù†Ø´Ø§Ø¡ Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†','Maak advertentie','CrÃ©er une publicitÃ©','Erstellen Sie Werbung','Crea pubblicitÃ ','Criar anÃºncio','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ñ€ÐµÐºÐ»Ð°Ð¼Ñƒ','Crear publicidad','Reklam oluÅŸtur'),(1186,'find_friends_nearby','','Find friends','Ø§Ù„Ø¨Ø­Ø« Ø¹Ù† Ø£ØµØ¯Ù‚Ø§Ø¡','Zoek vrienden','Retrouver des amis','Freunde finden','Trova amici','Encontrar amigos','ÐÐ°Ð¹Ñ‚Ð¸ Ð´Ñ€ÑƒÐ·ÐµÐ¹','Encontrar amigos','ArkadaÅŸlarÄ± bul'),(1187,'phonenumber_exists','','phone number already exists.','Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ Ù…ÙˆØ¬ÙˆØ¯ Ø¨Ø§Ù„ÙØ¹Ù„.','telefoonnummer bestaat al','le numÃ©ro de tÃ©lÃ©phone existe dÃ©jÃ .','Telefonnummer existiert bereits.','il numero di telefono ÃƒÂ¨ giÃƒ  esistente','nÃºmero de telefone jÃ¡ existe.','Ð½Ð¾Ð¼ÐµÑ€ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð° ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.','nÃºmero de telÃ©fono ya existe','telefon numarasÄ± zaten mevcut.'),(1188,'recover_password_by_email','','Recover by email','Ø§Ù„Ø§Ø³ØªØ±Ø¯Ø§Ø¯ Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ','Herstel per e-mail','RÃ©cupÃ©rer par email','Wiederherstellen per E-Mail','Recupera per email','Recuperar por email','Ð’Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ðµ','Recuperar por correo electrÃ³nico','E-posta ile kurtar'),(1189,'recover_password_by_sms','','Recover by SMS','Ø§Ø³ØªØ±Ø¯Ø§Ø¯ Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù‚ØµÙŠØ±Ø©','Herstel via sms','RÃ©cupÃ©rer par sms','Wiederherstellen per SMS','Recupera per sms','Recuperar por sms','Ð’Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾ SMS','Recuperar por SMS','Sms ile kurtarma'),(1190,'phonenumber_not_found','','The phone number is not found','Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ ØºÙŠØ± Ù…ÙˆØ¬ÙˆØ¯','Het telefoonnummer kan niet worden gevonden','Le numÃ©ro de tÃ©lÃ©phone est introuvable','Die Telefonnummer wurde nicht gefunden','Il numero di telefono non ÃƒÂ¨ stato trovato','O nÃºmero de telefone nÃ£o foi encontrado','ÐÐ¾Ð¼ÐµÑ€ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð° Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½','El nÃºmero de telÃ©fono no se encuentra','Telefon numarasÄ± bulunamadÄ±'),(1191,'phone_invalid_characters','','The phone number is invalid','Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ ØºÙŠØ± ØµØ§Ù„Ø­ Ø£Ùˆ ÙŠØ­ØªÙˆÙŠ Ø¹Ù„Ù‰ Ø£Ø­Ø±Ù','Het telefoonnummer is ongeldig of heeft tekens','Le numÃ©ro de tÃ©lÃ©phone est invalide ou contient des caractÃ¨res','Die Telefonnummer ist ungÃ¼ltig oder hat Zeichen','Il numero di telefono non ÃƒÂ¨ valido o contiene caratteri','O nÃºmero de telefone Ã© invÃ¡lido ou tem caracteres','ÐÐµÐ´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ð¹ Ð½Ð¾Ð¼ÐµÑ€ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð°.','El nÃºmero telefÃ³nico es invÃ¡lido','Telefon numarasÄ± geÃ§ersiz veya karakterleri var'),(1192,'recoversms_sent','','Recover SMS has been sent successfully','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø±Ø³Ø§Ù„Ø© SMS Ø§Ù„Ø§Ø³ØªØ±Ø¯Ø§Ø¯ Ø¨Ù†Ø¬Ø§Ø­','Recover SMS is succesvol verzonden','RÃ©cupÃ©rer des SMS a Ã©tÃ© envoyÃ© avec succÃ¨s','SMS wiederherstellen wurde erfolgreich gesendet','Recover SMS ÃƒÂ¨ stato inviato con successo','Recuperar SMS foi enviado com sucesso','Ð’Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ SMS Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾','Recuperar SMS ha sido enviado con Ã©xito','Recover SMS baÅŸarÄ±yla gÃ¶nderildi'),(1193,'transaction_log','','Transactions','Ø§Ù„Ù…Ø¹Ø§Ù…Ù„Ø§Øª','transacties','Transactions','Transaktionen','Le transazioni','TransaÃ§Ãµes','Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¸','Actas','iÅŸlemler'),(1194,'v2latest_activities','','Latest activities','Ø£Ø­Ø¯Ø« Ø§Ù„Ø£Ù†Ø´Ø·Ø©','Laatste activiteiten','DerniÃ¨res activitÃ©s','Neueste AktivitÃ¤ten','Ultime attivitÃƒ','Ãšltimas atividades','ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸Ðµ Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ','Ãšltimas actividades','Son etkinlikler'),(1195,'v2wallettopup','','Wallet Topup','Wallet Topup','Portemonnee-opwaardering','Portefeuille Topup','Brieftasche aufladen','Portafoglio Topup','Carteira Topup','Ð’ ÐºÐ¾Ñ€Ð·Ð¸Ð½Ñƒ','Ãšltima recarga de billetera','CÃ¼zdan ToplamasÄ±'),(1196,'v2adsspentdaily','','Ads spent daily','Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†Ø§Øª Ø§Ù„ØªÙŠ ØªÙ†ÙÙ‚ ÙŠÙˆÙ…ÙŠØ§','Advertenties die dagelijks worden besteed','Annonces dÃ©pensÃ©es quotidiennement','Anzeigen tÃ¤glich ausgegeben','Annunci spesi ogni giorno','AnÃºncios gastos diariamente','ÐžÐ±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ñ, Ð¿Ð¾Ñ‚Ñ€Ð°Ñ‡ÐµÐ½Ð½Ñ‹Ðµ ÐµÐ¶ÐµÐ´Ð½ÐµÐ²Ð½Ð¾','Anuncios gastados diariamente','GÃ¼nlÃ¼k olarak harcanan reklamlar'),(1197,'v2prosystemtransactions','','Pro system transactions','Ù…Ø¹Ø§Ù…Ù„Ø§Øª Ù†Ø¸Ø§Ù… Ø¨Ø±Ùˆ','Pro systeemtransacties','Transactions systÃ¨me pro','Pro System Transaktionen','Transazioni di sistema Pro','TransaÃ§Ãµes do sistema Pro','ÐŸÑ€Ð¾ ÑÐ¸ÑÑ‚ÐµÐ¼Ð½Ñ‹Ðµ Ñ‚Ñ€Ð°Ð½Ð·Ð°ÐºÑ†Ð¸Ð¸','Transacciones del sistema Pro','Pro sistem iÅŸlemleri'),(1198,'no_transactions_found','','Looks like you don&#39;t have any transaction yet!','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£ÙŠ Ù…Ø¹Ø§Ù…Ù„Ø§Øª','Geen transacties gevonden','Aucune transaction trouvÃ©e','Keine Transaktionen gefunden','Nessuna transazione trovata','Nenhuma transaÃ§Ã£o encontrada','ÐÐµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾ Ñ‚Ñ€Ð°Ð½Ð·Ð°ÐºÑ†Ð¸Ð¹','No se encontraron transacciones','Ä°ÅŸlem bulunamadÄ±'),(1199,'estimated_reach','','Estimated reach','Ø§Ù„ÙˆØµÙˆÙ„ Ø§Ù„Ù…Ù‚Ø¯Ø±','Geschat bereik','PortÃ©e estimÃ©e','GeschÃ¤tzte Reichweite','Portata stimata','Alcance estimado','ÐŸÑ€ÐµÐ´Ð¿Ð¾Ð»Ð°Ð³Ð°ÐµÐ¼Ñ‹Ð¹ Ð¾Ñ…Ð²Ð°Ñ‚','Alcance estimado','Tahmini eriÅŸim'),(1200,'confirmation_code_is','','Your confirmation code is','Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ù‡Ùˆ','Uw bevestigingscode is','Votre code de confirmation est','Ihr BestÃ¤tigungscode lautet','Il tuo codice di conferma ÃƒÂ¨','Seu cÃ³digo de confirmaÃ§Ã£o Ã©','Ð’Ð°Ñˆ ÐºÐ¾Ð´ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ','Tu cÃ³digo de confirmaciÃ³n es','Onay kodunuz'),(1201,'website_use_cookies','','This website uses cookies to ensure you get the best experience on our website.','ÙŠØ³ØªØ®Ø¯Ù… Ù…ÙˆÙ‚Ø¹ Ø§Ù„ÙˆÙŠØ¨ Ù‡Ø°Ø§ Ù…Ù„ÙØ§Øª ØªØ¹Ø±ÙŠÙ Ø§Ù„Ø§Ø±ØªØ¨Ø§Ø· Ù„Ø¶Ù…Ø§Ù† Ø­ØµÙˆÙ„Ùƒ Ø¹Ù„Ù‰ Ø£ÙØ¶Ù„ ØªØ¬Ø±Ø¨Ø© Ø¹Ù„Ù‰ Ù…ÙˆÙ‚Ø¹Ù†Ø§.','Deze website maakt gebruik van cookies om ervoor te zorgen dat u de beste ervaring op onze website krijgt.','Ce site utilise des cookies pour vous garantir la meilleure expÃ©rience sur notre site.','Diese Website verwendet Cookies, um sicherzustellen, dass Sie die beste Erfahrung auf unserer Website erhalten.','Questo sito Web utilizza i cookie per assicurarti di ottenere la migliore esperienza sul nostro sito web.','Este site usa cookies para garantir que vocÃª obtenha a melhor experiÃªncia em nosso site.','ÐÐ° ÑÑ‚Ð¾Ð¼ Ð²ÐµÐ±-ÑÐ°Ð¹Ñ‚Ðµ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÑŽÑ‚ÑÑ Ñ„Ð°Ð¹Ð»Ñ‹ cookie, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð²Ñ‹ Ð¼Ð¾Ð³Ð»Ð¸ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ Ð»ÑƒÑ‡ÑˆÐ¸Ð¹ Ð¾Ð¿Ñ‹Ñ‚ Ð½Ð° Ð½Ð°ÑˆÐµÐ¼ Ð²ÐµÐ±-ÑÐ°Ð¹Ñ‚Ðµ.','Este sitio web utiliza cookies para garantizar que obtenga la mejor experiencia en nuestro sitio web.','Bu web sitesi, web sitemizde en iyi deneyimi yaÅŸamanÄ±zÄ± saÄŸlamak iÃ§in Ã§erezleri kullanÄ±r.'),(1202,'got_it','','Got it!','ÙÙ‡Ù…ØªÙƒ!','Begrepen!','Je l&#039;ai!','Ich habs!','Fatto!','Consegui!','ÐŸÐ¾Ð½ÑÐ»!','Lo tengo !','AnladÄ±m!'),(1203,'learn_more1','','Learn more','Ø£Ø¹Ø±Ù Ø£ÙƒØ«Ø±','Kom meer te weten','Apprendre encore plus','Mehr erfahren','Per saperne di piÃƒÂ¹','Saber mais','Ð’Ñ‹ÑƒÑ‡Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ','Aprende mÃ¡s','Daha fazla bilgi edin'),(1204,'poke_user','','Poke','Ù†ÙƒØ²','Por','PoussÃ©e','Sack','colpire','Cutucar','ÑÐ¾Ð²Ð°Ñ‚ÑŒ','Meter','dÃ¼rtme'),(1205,'you_have_poked','','You have poked','Ù„Ù‚Ø¯ Ù†Ù‚Ø²Øª','Je hebt geplooid','Vous avez fourrÃ©','Du hast Poked','Hai poked','VocÃª cutucou','Ð’Ñ‹ Ñ‚ÐºÐ½ÑƒÐ»Ð¸','Has pinchado','poked var'),(1206,'no_pokes_found','','No pokes to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ù†Ø¯Ø§Ø¡Ø§Øª','Geen pokes gevonden','Aucun coup trouvÃ©','Keine Stichel gefunden','Nessun problema trovato','Nenhum poke encontrado','ÐÐ¸Ñ‡ÐµÐ³Ð¾ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾','No se encontraron golpes','Poke bulunamadÄ±'),(1207,'people_who_poked_you','','People who poked you','Ø§Ù„Ù†Ø§Ø³ Ø§Ù„Ø°ÙŠÙ† Ø·Ø¹Ù†Ùƒ','Mensen die je hebben gepakt','Les gens qui vous ont piquÃ©','Leute, die dich angestupst haben','Persone che ti hanno stuzzicato','Pessoas que te cutucaram','Ð›ÑŽÐ´Ð¸, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ñ‚ÐºÐ½ÑƒÐ»Ð¸ Ð²Ð°Ñ','Gente que te pinchÃ³','Seni dÃ¼ren insanlar'),(1208,'poke_back','','Poke back','Ø£Ø¹Ø¯ Ø§Ù„Ù†Ø¸Ø±','Terug prikken','Envoyer un poke en retour','ZurÃ¼ckstupsen','Colpisci','Puxar de volta','ÐžÑ‚ÐºÐ¸Ð½ÑƒÑ‚ÑŒ Ð½Ð°Ð·Ð°Ð´','Empujar hacia atrÃ¡s','Geri dÃ¼rt'),(1209,'txt_poked','','Poked!','Ù…Ø·Ø¹ÙˆÙ†!','Prikte!','FourrÃ©!','Stocherte!','InfilÃƒÂ²!','Cutucado!','Ñ‚Ñ‹ÐºÐ°Ñ‚!','meter!','DÃ¼rttÃ¼!'),(1210,'pokes','','Pokes','Ø§Ù„ÙˆØ®Ø²Ø§Øª','Pokes','Pokes','Pokes','poke','PuxÃµes','Ñ‚Ñ‹ÐºÐ°Ñ‚','meter','DÃ¼rtmeler'),(1211,'popular_posts_comments','','Popular posts &amp; comments','Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª Ø§Ù„Ø´Ø¹Ø¨ÙŠØ© ÙˆØ§Ù„ØªØ¹Ù„ÙŠÙ‚Ø§Øª','Populaire berichten en reacties','Messages et commentaires populaires','Beliebte Posts &amp; Kommentare','Post e commenti popolari','Posts e comentÃ¡rios populares','ÐŸÐ¾Ð¿ÑƒÐ»ÑÑ€Ð½Ñ‹Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ Ð¸ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸','Publicaciones populares y comentarios','PopÃ¼ler yazÄ±lar ve yorumlar'),(1212,'load_more_videos','','Load more videos','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø£Ø´Ø±Ø·Ø© Ø§Ù„ÙÙŠØ¯ÙŠÙˆ','Laad meer video&#039;s','Charger plus de vidÃ©os','Laden Sie mehr Videos','Carica altri video','Carregar mais vÃ­deos','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð²Ð¸Ð´ÐµÐ¾','Cargar mÃ¡s videos','Daha fazla video yÃ¼kle'),(1213,'load_more_photos','','Load more photos','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„ØµÙˆØ±','Laad meer foto&#039;s','Charger plus de photos','Laden Sie mehr Fotos','Carica piÃƒÂ¹ foto','Carregar mais fotos','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸Ð¹','Cargar mÃ¡s fotos','Daha fazla fotoÄŸraf yÃ¼kle'),(1214,'no_more_videos_to_show','','No more videos to show','Ù„Ø§ Ù…Ø²ÙŠØ¯ Ù…Ù† Ù…Ù‚Ø§Ø·Ø¹ Ø§Ù„ÙÙŠØ¯ÙŠÙˆ Ù„Ù„Ø¹Ø±Ø¶','geen video&#039;s meer om te laten zien','plus de vidÃ©os Ã  montrer','keine weiteren Videos zu zeigen','non piÃƒÂ¹ video da mostrare','nÃ£o hÃ¡ mais vÃ­deos para mostrar','Ð‘Ð¾Ð»ÑŒÑˆÐµ Ð½ÐµÑ‚ Ð²Ð¸Ð´ÐµÐ¾ Ð´Ð»Ñ Ð¿Ð¾ÐºÐ°Ð·Ð°','No mÃ¡s videos para mostrar','gÃ¶sterilecek video yok'),(1215,'no_more_photos_to_show','','No more photos to show','Ù„Ø§ Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„ØµÙˆØ± Ù„Ù„Ø¹Ø±Ø¶','geen foto&#039;s meer om te laten zien','plus de photos Ã  montrer','keine weiteren Fotos zu zeigen','non piÃƒÂ¹ foto da mostrare','nÃ£o hÃ¡ mais fotos para mostrar','Ð‘Ð¾Ð»ÑŒÑˆÐµ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸Ð¹, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ','No mÃ¡s fotos para mostrar','gÃ¶sterilecek baÅŸka fotoÄŸraf yok'),(1216,'poked_you','','Poked you','ÙˆÙƒØ²ØªÙƒ','Prikte jou','Vous a PokÃ©','Hat dich gestoÃŸen','Ti ho mandato un poke','Tocou em vocÃª','Ð¢Ð¾Ð»ÐºÐ½ÑƒÐ» Ñ‚ÐµÐ±Ñ','Te pinchÃ³','Seni dÃ¼rttÃ¼'),(1217,'gift_added','','Gift added successfully','Ø¥Ø¶Ø§ÙØ© Ù‡Ø¯ÙŠØ© Ø¨Ù†Ø¬Ø§Ø­','Gift toevoegen succesvol','Cadeau ajouter avec succÃ¨s','Geschenk wurde erfolgreich hinzugefÃ¼gt','Regalo aggiunto con successo','Dom adicionar com sucesso','ÐŸÐ¾Ð´Ð°Ñ€Ð¾Ðº ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½','Regalo agregado con Ã©xito','Hediye baÅŸarÄ±yla eklendi'),(1218,'error_while_add_gift','','Error while adding the gift','Ø®Ø·Ø£ Ø£Ø«Ù†Ø§Ø¡ Ø¥Ø¶Ø§ÙØ© Ù‡Ø¯ÙŠØ©','Fout bij het toevoegen van een cadeau','Erreur lors de l&#039;ajout d&#039;un cadeau','Fehler beim HinzufÃ¼gen eines Geschenks','Errore durante l&#039;aggiunta di un regalo','Erro ao adicionar um presente','ÐžÑˆÐ¸Ð±ÐºÐ° Ð¿Ñ€Ð¸ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ð¸ Ð¿Ð¾Ð´Ð°Ñ€ÐºÐ°','Error al agregar el regalo','Hediye eklerken hata oluÅŸtu'),(1219,'send_a_gift','','Send a gift','Ø§Ø±Ø³Ù„ Ù‡Ø¯ÙŠØ©','Verstuur een cadeau','Envoyer un cadeau','Ein Geschenk senden','Manda un regalo','Envie um presente','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ Ð¿Ð¾Ð´Ð°Ñ€Ð¾Ðº','Enviar un regalo','Hediye gÃ¶nder'),(1220,'gift_sent_succesfully','','Gift sent successfully','Ø§Ù„Ù‡Ø¯ÙŠØ© Ø§Ø±Ø³Ù„Øª Ø¨Ù†Ø¬Ø§Ø­','Gift met succes verzonden','Cadeau envoyÃ© avec succÃ¨s','Geschenk erfolgreich gesendet','Regalo inviato con successo','Presente enviado com sucesso','ÐŸÐ¾Ð´Ð°Ñ€Ð¾Ðº ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½','Regalo enviado con Ã©xito','Hediye baÅŸarÄ±yla gÃ¶nderildi'),(1221,'send_gift_to_you','','sent you a gift','Ø£Ø±Ø³Ù„ Ù„Ùƒ Ù‡Ø¯ÙŠØ©','Heeft je een geschenk gestuurd','Vous a envoyÃ© un cadeau','Sende dir ein Geschenk','Ti ho mandato un regalo','Te mandei um presente','Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð» Ð²Ð°Ð¼ Ð¿Ð¾Ð´Ð°Ñ€Ð¾Ðº','te enviÃ³ un regalo','Sana bir hediye gÃ¶nderdi'),(1222,'my_pokes','','My Pokes','Ø¨Ù„Ø¯ÙŠ Pokes','Mijn porren','Mes coups de coude','Meine Pokes','I miei PokÃƒÂ©','Meus puxÃµes','ÐœÐ¾Ð¸ Ð¿Ð¾Ñ€Ñ‹','My Pokes','Benim Pokes'),(1223,'telegram','','Telegram','Ø¨Ø±Ù‚ÙŠØ©','Telegram','Telegram','Telegram','Telegramma','Telegram','Ð¢ÐµÐ»ÐµÐ³Ñ€Ð°Ð¼Ð¼Ð°','Telegrama','Telgraf'),(1224,'no_more_posts_to_show','','No more posts to show','Ù„Ø§ Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ§Øª Ù„Ù„Ø¹Ø±Ø¶','Geen posts meer om te laten zien','Plus de messages Ã  afficher','Keine weiteren Posts zum Anzeigen','Non ci sono piÃƒÂ¹ post da mostrare','NÃ£o hÃ¡ mais postagens para mostrar','ÐÐµÑ‚ Ð±Ð¾Ð»ÑŒÑˆÐµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¹ Ð´Ð»Ñ Ð¾Ñ‚Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ','No hay mÃ¡s publicaciones para mostrar','GÃ¶sterilecek baÅŸka yayÄ±n yok'),(1225,'keyboard_shortcut_help','','Keyboard shortcut help','ØªØ¹Ù„ÙŠÙ…Ø§Øª Ø§Ø®ØªØµØ§Ø± Ù„ÙˆØ­Ø© Ø§Ù„Ù…ÙØ§ØªÙŠØ­','Help voor sneltoetsen','Aide sur le raccourci clavier','TastaturkÃ¼rzel Hilfe','Guida rapida alla tastiera','Ajuda de atalhos de teclado','ÐšÑ€Ð°Ñ‚ÐºÐ¸Ð¹ ÑÐ¿Ñ€Ð°Ð²Ð¾Ñ‡Ð½Ð¸Ðº Ð¿Ð¾ ÐºÐ»Ð°Ð²Ð¸Ð°Ñ‚ÑƒÑ€Ðµ','Ayuda contextual de teclado','Klavye KÄ±sayolu YardÄ±mÄ±'),(1226,'keyboard_shortcut_j','','Scroll to the next post','Ø§Ù†ØªÙ‚Ù„ Ø¥Ù„Ù‰ Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ© Ø§Ù„ØªØ§Ù„ÙŠØ©','Ga naar het volgende bericht','Faites dÃ©filer jusqu&#039;au prochain message','Scrolle zum nÃ¤chsten Beitrag','Scorri fino al prossimo post','VÃ¡ atÃ© a prÃ³xima postagem','ÐŸÐµÑ€ÐµÐ¹Ð´Ð¸Ñ‚Ðµ Ðº ÑÐ»ÐµÐ´ÑƒÑŽÑ‰ÐµÐ¼Ñƒ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÑŽ','Desplazarse a la siguiente publicaciÃ³n','Bir sonraki gÃ¶nderiye git'),(1227,'keyboard_shortcut_k','','Scroll to the previous post','Ø§Ù†ØªÙ‚Ù„ Ø¥Ù„Ù‰ Ø§Ù„ÙˆØ¸ÙŠÙØ© Ø§Ù„Ø³Ø§Ø¨Ù‚Ø©','Ga naar het vorige bericht','Faites dÃ©filer jusqu&#039;au message prÃ©cÃ©dent','Scrollen Sie zum vorherigen Beitrag','Scorri fino al post precedente','Role atÃ© a postagem anterior','ÐŸÐµÑ€ÐµÐ¹Ð´Ð¸Ñ‚Ðµ Ðº Ð¿Ñ€ÐµÐ´Ñ‹Ð´ÑƒÑ‰ÐµÐ¼Ñƒ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÑŽ','Desplazarse a la publicaciÃ³n anterior','Ã–nceki yayÄ±na git'),(1228,'sticker_added','','Sticker added successfully','ØªÙ…Øª Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ù…Ù„ØµÙ‚ Ø¨Ù†Ø¬Ø§Ø­','Sticker met succes toegevoegd','Autocollant ajoutÃ© avec succÃ¨s','Aufkleber erfolgreich hinzugefÃ¼gt','Adesivo aggiunto con successo','Etiqueta adicionada com sucesso','Ð¡Ñ‚Ð¸ÐºÐµÑ€ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾','Adhesivo agregado con Ã©xito','Sticker baÅŸarÄ±yla eklendi'),(1229,'error_while_add_sticker','','Error while adding the sticker','Ø­Ø¯Ø« Ø®Ø·Ø£ Ø£Ø«Ù†Ø§Ø¡ Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ù…Ù„ØµÙ‚','Fout tijdens het toevoegen van de sticker','Erreur lors de l&#039;ajout de l&#039;autocollant','Fehler beim HinzufÃ¼gen des Aufklebers','Errore durante l&#039;aggiunta dell&#039;adesivo','Erro ao adicionar o adesivo','ÐžÑˆÐ¸Ð±ÐºÐ° Ð¿Ñ€Ð¸ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ð¸ Ð½Ð°ÐºÐ»ÐµÐ¹ÐºÐ¸','Error al agregar la pegatina','Ã‡Ä±kartma eklenirken hata oluÅŸtu'),(1230,'reacted_to_your_post','','reacted to your post','Ø±Ø¯ Ø¹Ù„Ù‰ Ù…Ø´Ø§Ø±ÙƒØªÙƒ','reageerde op je bericht','rÃ©agi Ã  votre message','reagierte auf Ihren Posten','ha reagito al tuo post','reagiu ao seu post','Ð¾Ñ‚Ñ€ÐµÐ°Ð³Ð¸Ñ€Ð¾Ð²Ð°Ð» Ð½Ð° Ð²Ð°Ñˆ Ð¿Ð¾ÑÑ‚','reaccionado a tu publicaciÃ³n','yayÄ±na tepki gÃ¶sterdi'),(1231,'points','','Points','Ù†Ù‚Ø§Ø·','punten','Points','Punkte','Punti','Pontos','Ð¢Ð¾Ñ‡ÐºÐ¸','Puntos','makas'),(1232,'my_points','','My Points','Ù†Ù‚Ø§Ø·ÙŠ','Mijn punten','Mes points','Meine Punkte','I miei punti','Meus pontos','ÐœÐ¾Ð¸ Ð¾Ñ‡ÐºÐ¸','Mis puntos','PuanlarÄ±m'),(1233,'my_earnings','','My Earnings','Ø£Ø¬ÙˆØ±ÙŠ','mijn Inkomens','Mes gains','mein Einkommen','I miei guadagni','meus ganhos','Ð¼Ð¾Ð¹ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚Ð¾Ðº','Mis Ganancias','KazanÃ§larÄ±m'),(1234,'earn_text_like','','Earn %d points by liking any post','Ø§Ø±Ø¨Ø­  %d Ù†Ù‚Ø·Ø© Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø¥Ø¹Ø¬Ø§Ø¨ Ø¨Ø£ÙŠ Ù…Ø´Ø§Ø±ÙƒØ©','Verdien %d punten door een post te waarderen','Gagnez %d points en aimant n&#039;importe quel poste','Verdiene %d Punkte, indem du jeden Beitrag magst','Guadagna %d punti gradendo qualsiasi post','Ganhe %d pontos por gostar de qualquer postagem','Ð·Ð°Ñ€Ð°Ð±Ð°Ñ‚Ñ‹Ð²Ð°Ñ‚ÑŒ %d Ð¾Ñ‡ÐºÐ¾Ð², Ð»ÑŽÐ±Ñ Ð»ÑŽÐ±ÑƒÑŽ Ð·Ð°Ð¿Ð¸ÑÑŒ','Ganar %d puntos por dar me gusta a cualquier publicaciÃ³n','Herhangi bir gÃ¶nderiyi beÄŸenerek %d puan kazan'),(1235,'earn_text_dislike','','Earn %d points by disliking any post','Ø§Ø±Ø¨Ø­  %d Ù…Ù† Ø§Ù„Ù†Ù‚Ø§Ø· Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø¹Ø¯Ù… Ø§Ù„Ø¥Ø¹Ø¬Ø§Ø¨ Ø¨Ø£ÙŠ Ù…Ø´Ø§Ø±ÙƒØ©','Verdien %d punten door een post te negeren','Gagnez %d points en ne dÃ©testant aucun message','Verdienen Sie %d Punkte, indem Sie einen Beitrag ablehnen','Guadagna %d punti non amando nessun post','Ganhe %d pontos por nÃ£o gostar de nenhum post','Ð·Ð°Ñ€Ð°Ð±Ð°Ñ‚Ñ‹Ð²Ð°Ñ‚ÑŒ %d Ð¾Ñ‡ÐºÐ¾Ð², Ð½Ðµ Ð¿Ñ€Ð¸Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÑ Ð»ÑŽÐ±ÑƒÑŽ Ð´Ð¾Ð»Ð¶Ð½Ð¾ÑÑ‚ÑŒ','Ganar %d puntos por desagradar cualquier publicaciÃ³n','Herhangi bir gÃ¶nderiyi beÄŸenmediÄŸinizde %d puan kazanÄ±n'),(1236,'earn_text_comment','','Earn %d points by commenting any post','Ø§Ø±Ø¨Ø­  %d Ù…Ù† Ø®Ù„Ø§Ù„ ØªØ¹Ù„ÙŠÙ‚ Ø£ÙŠ Ù…Ø´Ø§Ø±ÙƒØ©','Verdien %d punten door een bericht te becommentariÃ«ren','Gagnez %d points en commentant n&#039;importe quel article','Verdiene %d Punkte, indem du einen Beitrag kommentierst','Guadagna %d punti commentando qualsiasi post','Ganhe %d pontos comentando qualquer post','Ð·Ð°Ñ€Ð°Ð±Ð°Ñ‚Ñ‹Ð²Ð°Ñ‚ÑŒ %d ÑƒÐºÐ°Ð·Ñ‹Ð²Ð°ÐµÑ‚, ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð¸Ñ€ÑƒÑ Ð»ÑŽÐ±ÑƒÑŽ Ð·Ð°Ð¿Ð¸ÑÑŒ','Ganar %d puntos al comentar cualquier publicaciÃ³n','Herhangi bir gÃ¶nderiye yorum yaparak %d puan kazan'),(1237,'earn_text_wonder','','Earn %d points by wondering any post','Ø£Ø±Ø¨Ø­  %d Ù…Ù† Ø§Ù„Ù†Ù‚Ø§Ø· Ø¨Ø§Ù„ØªØ¹Ø¬Ø¨ Ø¹Ù† Ø£ÙŠ Ù…Ø´Ø§Ø±ÙƒØ©','Verdien %d punten door een bericht te vragen','Gagnez %d points en vous demandant n&#039;importe quel message','Verdienen Sie %d Punkte, indem Sie sich jeden Post fragen','Guadagna %d punti chiedendo qualsiasi post','Ganhe %d pontos imaginando qualquer postagem','Ð·Ð°Ñ€Ð°Ð±Ð°Ñ‚Ñ‹Ð²Ð°Ñ‚ÑŒ %d Ð¾Ñ‡ÐºÐ¾Ð², Ð·Ð°Ð´Ð°Ð²Ð°ÑÑÑŒ Ð²Ð¾Ð¿Ñ€Ð¾ÑÐ¾Ð¼ Ð¾ Ð»ÑŽÐ±Ð¾Ð¼ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ð¸','Ganar %d puntos al preguntarse cualquier publicaciÃ³n','Herhangi bir gÃ¶nderiyi merak ederek %d puan kazanÄ±n'),(1238,'earn_text_create_post','','Earn %d points by creating a new post','Ø§Ø±Ø¨Ø­  %d Ù†Ù‚Ø·Ø© Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø¥Ù†Ø´Ø§Ø¡ Ù…Ù†Ø´ÙˆØ± Ø¬Ø¯ÙŠØ¯','Verdien %d punten door een nieuw bericht te maken','Gagnez %d points en crÃ©ant un nouveau message','Verdiene %d Punkte, indem du einen neuen Beitrag erstellst','Guadagna %d punti creando nuovi post','Ganhe %d pontos criando nova postagem','Ð·Ð°Ñ€Ð°Ð±Ð°Ñ‚Ñ‹Ð²Ð°Ñ‚ÑŒ %d Ð¿ÑƒÑ‚ÐµÐ¼ ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ñ Ð½Ð¾Ð²Ð¾Ð³Ð¾ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ','Ganar %d puntos al crear una nueva publicaciÃ³n','Yeni gÃ¶nderi oluÅŸturarak %d puan kazanÄ±n'),(1239,'earn_text_reaction','','Earn %d points by reacting on any post','Ø§Ø±Ø¨Ø­  %d Ù†Ù‚Ø·Ø© Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„ØªÙØ§Ø¹Ù„ Ø¹Ù„Ù‰ Ø£ÙŠ Ù…Ø´Ø§Ø±ÙƒØ©','Verdien %d punten door op een bericht te reageren','Gagnez %d points en rÃ©agissant Ã  n&#039;importe quel poste','Verdiene %d Punkte, indem du auf jeden Post reagierst','Guadagna %d punti reagendo su qualsiasi post','Ganhe %d pontos ao reagir em qualquer postagem','Ð·Ð°Ñ€Ð°Ð±Ð°Ñ‚Ñ‹Ð²Ð°Ñ‚ÑŒ %d Ð¾Ñ‡ÐºÐ¾Ð², Ñ€ÐµÐ°Ð³Ð¸Ñ€ÑƒÑ Ð½Ð° Ð»ÑŽÐ±ÑƒÑŽ Ð´Ð¾Ð»Ð¶Ð½Ð¾ÑÑ‚ÑŒ','Ganar %d puntos al reaccionar en cualquier publicaciÃ³n','Herhangi bir gÃ¶nderiye yanÄ±t vererek %d puan kazanÄ±n'),(1240,'no_reactions','','No reactions yet','Ù„Ø§ Ø±Ø¯ÙˆØ¯ Ø£ÙØ¹Ø§Ù„ Ø­ØªÙ‰ Ø§Ù„Ø¢Ù†','Nog geen reacties','Aucune rÃ©action encore','Noch keine Reaktionen','Nessuna reazione ancora','Nenhuma reaÃ§Ã£o ainda','Ð•Ñ‰Ðµ Ð½ÐµÑ‚ Ñ€ÐµÐ°ÐºÑ†Ð¸Ð¹','AÃºn no hay reacciones','HenÃ¼z tepki yok'),(1241,'love','','Love','Ø­Ø¨','Liefde','Amour','Liebe','Amore','Ame','Ð›ÑŽÐ±Ð»ÑŽ','Amor','AÅŸk'),(1242,'haha','','HaHa','Ù‡Ù‡Ù‡Ù‡','HaHa','HaHa','HaHa','HaHa','HaHa','HaHa','HaHa','HaHa'),(1243,'wow','','WoW','Ø±Ø§Ø¦Ø¹','Wauw','Sensationnel','Beeindruckend','Wow','Uau','WoW','WoW','Vay'),(1244,'sad','','Sad','Ø­Ø²ÙŠÙ†','verdrietig','Triste','Traurig','Triste','Triste','Ð“Ñ€ÑƒÑÑ‚Ð½Ñ‹Ð¹','Triste','ÃœzgÃ¼n'),(1245,'angry','','Angry','ØºØ§Ø¶Ø¨','Boos','En colÃ¨re','WÃ¼tend','Arrabbiato','Bravo','Ð¡ÐµÑ€Ð´Ð¸Ñ‚Ñ‹Ð¹','Enojado','kÄ±zgÄ±n'),(1246,'reacted_to_your_comment','','reacted to your comment','Ø±Ø¯ Ø¹Ù„Ù‰ ØªØ¹Ù„ÙŠÙ‚Ùƒ','reageerde op je reactie','rÃ©agi Ã  ton commentaire','reagierte auf Ihren Kommentar','ha reagito al tuo commento','reagiu ao seu comentÃ¡rio','Ð¾Ñ‚Ñ€ÐµÐ°Ð³Ð¸Ñ€Ð¾Ð²Ð°Ð» Ð½Ð° Ð²Ð°Ñˆ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','reaccionÃ³ a tu comentario','Yorumunuza tepki gÃ¶sterdi'),(1247,'reacted_to_your_replay','','reacted to your reply','Ø±Ø¯ Ø¹Ù„Ù‰ Ø±Ø¯Ùƒ','reageerde op je antwoord','rÃ©agi Ã  votre rÃ©ponse','reagierte auf Ihre Antwort','ha reagito alla tua risposta','reagiu Ã  sua resposta','Ð¾Ñ‚Ñ€ÐµÐ°Ð³Ð¸Ñ€Ð¾Ð²Ð°Ð» Ð½Ð° Ð²Ð°Ñˆ Ð¾Ñ‚Ð²ÐµÑ‚','reaccionado a tu respuesta','cevabÄ±nÄ±za tepki gÃ¶sterdi'),(1248,'activity_reacted_post','','reacted to {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','Ø§ÙØªØ¹Ù„ Ø¹Ù„Ù‰  {user} &lt;a class=\\&quot;main-color\\&quot; href=\\&quot;{post}\\&quot;&gt;Ù…Ù†Ø´ÙˆØ±&lt;/a&gt;.','reageerde op {user} &lt;a class=\\&quot;main-color\\&quot; href=\\&quot;{post}\\&quot;&gt;post&lt;/a&gt;.','rÃ©agi Ã  {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt; poster &lt;/a&gt;.','reagierte auf {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.','ha reagito a {user} &lt;a class=\\&quot;main-color\\&quot; href=\\&quot;{post}\\&quot;&gt;post&lt;/a&gt;.','reagiu a {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt; postagem &lt;/a&gt;.','Ð¾Ñ‚Ñ€ÐµÐ°Ð³Ð¸Ñ€Ð¾Ð²Ð°Ð» Ð½Ð° {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;Ð¿Ð¾ÑÐ»Ðµ&lt;/a&gt;.','reaccionado a {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;enviar&lt;/a&gt;.','{user} &lt;a class=\\&quot;main-color\\&quot; href=\\&quot;{post}\\&quot;&gt;yayÄ±na&lt;/a&gt; tepki gÃ¶sterdi.'),(1249,'comment_reported','','Comment reported successfully.','ØªÙ… Ø§Ù„Ø¥Ø¨Ù„Ø§Øº Ø¹Ù† Ø§Ù„ØªØ¹Ù„ÙŠÙ‚ Ø¨Ù†Ø¬Ø§Ø­.','Reactie succesvol gerapporteerd.','Commentaire signalÃ© avec succÃ¨s.','Kommentar erfolgreich gemeldet','Commento riportato con successo.','ComentÃ¡rio relatado com sucesso.','ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¿ÐµÑ€ÐµÐ´Ð°Ð½.','Comentario reportado con Ã©xito','Yorum baÅŸarÄ±yla bildirildi.'),(1250,'report_comment','','Report comment','Ø§Ù„Ø¥Ø¨Ù„Ø§Øº Ø¹Ù† ØªØ¹Ù„ÙŠÙ‚','Rapporteer commentaar','Rapport de commentaire','Kommentar melden','Segnala commento','Reportar comentÃ¡rio','Ð¡Ð¾Ð¾Ð±Ñ‰Ð¸Ñ‚ÑŒ Ð¼Ð¾Ð´ÐµÑ€Ð°Ñ‚Ð¾Ñ€Ñƒ','Informar comentario','Yorumu bildir'),(1251,'comment_unreported','','Report deleted successfully','ØªÙ‚Ø±ÙŠØ± ØªØ¹Ù„ÙŠÙ‚ Ø­Ø°Ù Ø¨Ù†Ø¬Ø§Ø­','Commentaarrapport succesvol verwijderd','Supprimer le rapport de commentaire avec succÃ¨s','Kommentarbericht erfolgreich lÃ¶schen','Il rapporto di commento cancella con successo','ComentÃ¡rio comentÃ¡rio excluir com sucesso','ÐžÑ‚Ñ‡ÐµÑ‚ ÑƒÐ´Ð°Ð»Ñ‘Ð½ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾','Informe borrado con Ã©xito','Yorum raporu baÅŸarÄ±yla silinsin'),(1252,'suggested_pages','','Suggested pages','Ø§Ù„ØµÙØ­Ø§Øª Ø§Ù„Ù…Ù‚ØªØ±Ø­Ø©','Voorgestelde pagina&#039;s','Pages suggÃ©rÃ©es','Vorgeschlagene Seiten','Pagine suggerite','PÃ¡ginas sugeridas','ÐŸÑ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÐ¼Ñ‹Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','PÃ¡ginas sugeridas','Ã–nerilen sayfalar'),(1253,'suggested_groups','','Suggested groups','Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø§Øª Ø§Ù„Ù…Ù‚ØªØ±Ø­Ø©','Voorgestelde groepen','Groupes suggÃ©rÃ©s','Vorgeschlagene Gruppen','Gruppi suggeriti','Grupos sugeridos','Ð ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÐ¼Ñ‹Ðµ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','Grupos sugeridos','Ã–nerilen gruplar'),(1254,'unverified','','Unverified','ØºÙŠØ± Ù…Ø«Ø¨Øª Ø¹Ù„ÙŠÙ‡','geverifieerde','Non vÃ©rifiÃ©','Nicht Ã¼berprÃ¼ft','Non verificato','NÃ£o verificado','Ð½ÐµÐ¿Ñ€Ð¾Ð²ÐµÑ€ÐµÐ½Ð½Ñ‹Ð¹','Inconfirmado','DoÄŸrulanmamÄ±ÅŸ'),(1255,'mutual_friends','','Mutual Friends','Ø§Ù„Ø§ØµØ¯Ù‚Ø§Ø¡ Ø§Ù„Ù…Ø´ØªØ±ÙƒÙ‡','Gemeenschappelijke vrienden','Amis communs','Gemeinsame Freunde','Amici in comune','Amigos em comum','ÐžÐ±Ñ‰Ð¸Ðµ Ð´Ñ€ÑƒÐ·ÑŒÑ','Amigos en comÃºn','Ortak arkadaÅŸlar'),(1256,'no_mutual_friends','','No mutual friends to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø£ØµØ¯Ù‚Ø§Ø¡ Ù…Ø´ØªØ±ÙƒÙŠÙ†','Geen wederzijdse vrienden gevonden','Aucun ami commun trouvÃ©','Keine gemeinsamen Freunde gefunden','Nessun amico comune trovato','Nenhum amigo em comum encontrado','ÐžÐ±Ñ‰Ð¸Ñ… Ð´Ñ€ÑƒÐ·ÐµÐ¹ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾','No se encontraron amigos en comÃºn','KarÅŸÄ±lÄ±klÄ± arkadaÅŸ bulunamadÄ±'),(1257,'viewed_your_story','','viewed your story','ÙŠÙ†Ø¸Ø± Ù‚ØµØªÙƒ','heb je verhaal bekeken','vu votre histoire','habe deine Geschichte gesehen','ho visto la tua storia','viu sua histÃ³ria','Ð¿Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÐ» Ð²Ð°Ñˆ Ñ€Ð°ÑÑÐºÐ°Ð·','visto tu historia','hikayeni inceledi'),(1258,'commented_on_blog','','commented on your article','Ø¹Ù„Ù‚ Ø¹Ù„Ù‰ Ù…Ù‚Ø§Ù„Ùƒ','hebben gereageerd op je artikel','a commentÃ© votre article','hat deinen Artikel kommentiert','ha commentato il tuo articolo','comentou no seu artigo','Ð¿Ñ€Ð¾ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ð» Ð²Ð°ÑˆÑƒ ÑÑ‚Ð°Ñ‚ÑŒÑŽ','comentÃ³ tu artÃ­culo','makaleniz hakkÄ±nda yorum yaptÄ±'),(1259,'are_you_sure_unfriend','','Are you sure you want to unfriend?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ ØºÙŠØ± ØµØ¯ÙŠÙ‚ØŸ','Weet je zeker dat je wilt ontvrienden?','ÃŠtes-vous sÃ»r de vouloir vous libÃ©rer?','Bist du sicher, dass du dich unfreundst?','Sei sicuro di voler disapprovare?','Tem certeza de que quer desamor?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ Ð½ÐµÐ´Ð¾Ð±Ñ€Ð¾ÑÐ¾Ð²ÐµÑÑ‚Ð½Ð¾?','Â¿EstÃ¡s seguro de que quieres unirte?','ArkadaÅŸlÄ±k etmek istediÄŸinden emin misin?'),(1260,'manage_sessions','','Manage Sessions','Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø¬Ù„Ø³Ø§Øª','Sessies beheren','GÃ©rer les sessions','Sitzungen verwalten','Gestisci sessioni','Gerenciar SessÃµes','Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐµÐ°Ð½ÑÐ°Ð¼Ð¸','Administrar Sesiones','OturumlarÄ± YÃ¶net'),(1261,'platform','','Platform','Ø¨Ø±Ù†Ø§Ù…Ø¬','Platform','Plate-forme','Plattform','piattaforma','Plataforma','ÐŸÐ»Ð°Ñ‚Ñ„Ð¾Ñ€Ð¼Ð°','Plataforma','platform'),(1262,'browser','','Browser','Ø§Ù„Ù…ØªØµÙØ­','browser','Navigateur','Browser','Browser','Navegador','Ð±Ñ€Ð°ÑƒÐ·ÐµÑ€','Navegador','TarayÄ±cÄ±'),(1263,'last_active','','Last active','Ø§Ù„Ù…Ø§Ø¶ÙŠ Ù†Ø´Ø·','Laatst actief','DerniÃ¨re activitÃ©','Letzte AktivitÃ¤t','Ultimo attivo','Ativo pela Ãºltima vez','ÐŸÐ¾ÑÐ»ÐµÐ´Ð½ÐµÐµ Ð¿Ð¾ÑÐµÑ‰ÐµÐ½Ð¸Ðµ','Ãšltimo Activo','Son aktif'),(1264,'notification_settings','','Notification Settings','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø¥Ø´Ø¹Ø§Ø±','Notificatie instellingen','ParamÃ¨tres de notification','Benachrichtigungseinstellungen','Impostazioni di notifica','ConfiguraÃ§Ãµes de notificaÃ§Ã£o','ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ð¹','ConfiguraciÃ³n de las notificaciones','Bildirim ayarlarÄ±'),(1265,'notify_me_when','','Notify me when','Ø§Ø¹Ù„Ù…Ù†ÙŠ Ø¹Ù†Ø¯Ù…Ø§','Laat me weten wanneer','Me prÃ©venir quand','Benachrichtigen Sie mich, wenn','Avvisami quando','Notifique-me quando','Ð£Ð²ÐµÐ´Ð¾Ð¼Ð¸Ñ‚ÑŒ Ð¼ÐµÐ½Ñ, ÐºÐ¾Ð³Ð´Ð°','NotifÃ­came cuando','Ne zaman bana bildir'),(1266,'username_is_banned','','The username is blacklisted and not allowed, please choose another username.','Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ù…Ø¯Ø±Ø¬ ÙÙŠ Ø§Ù„Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø³ÙˆØ¯Ø§Ø¡ ÙˆØºÙŠØ± Ù…Ø³Ù…ÙˆØ­ Ø¨Ù‡ ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ø®ØªÙŠØ§Ø± Ø§Ø³Ù… Ù…Ø³ØªØ®Ø¯Ù… Ø¢Ø®Ø±.','De gebruikersnaam staat op de zwarte lijst en is niet toegestaan, kies een andere gebruikersnaam.','Le nom d&#039;utilisateur est sur liste noire et n&#039;est pas autorisÃ©, veuillez choisir un autre nom d&#039;utilisateur.','Der Benutzername ist auf der Blacklist und nicht erlaubt, bitte wÃ¤hle einen anderen Benutzernamen.','Il nome utente ÃƒÂ¨ nella lista nera e non ÃƒÂ¨ permesso, per favore scegli un altro nome utente.','O nome de usuÃ¡rio estÃ¡ na lista negra e nÃ£o Ã© permitido, por favor, escolha outro nome de usuÃ¡rio.','Ð˜Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð·Ð°Ð½ÐµÑÐµÐ½Ð¾ Ð² Ñ‡ÐµÑ€Ð½Ñ‹Ð¹ ÑÐ¿Ð¸ÑÐ¾Ðº Ð¸ Ð½Ðµ Ñ€Ð°Ð·Ñ€ÐµÑˆÐµÐ½Ð¾, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ðµ Ð¸Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ.','El nombre de usuario estÃ¡ en la lista negra y no estÃ¡ permitido, elija otro nombre de usuario.','KullanÄ±cÄ± adÄ± kara listede ve izin verilmiyor, lÃ¼tfen baÅŸka bir kullanÄ±cÄ± adÄ± seÃ§in.'),(1267,'email_is_banned','','The email address is blacklisted and not allowed, please choose another email.','Ø¹Ù†ÙˆØ§Ù† Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ù…Ø¯Ø±Ø¬ ÙÙŠ Ø§Ù„Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø³ÙˆØ¯Ø§Ø¡ ÙˆØºÙŠØ± Ù…Ø³Ù…ÙˆØ­ Ø¨Ù‡ ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ø®ØªÙŠØ§Ø± Ø¨Ø±ÙŠØ¯ Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø¢Ø®Ø±.','Het e-mailadres staat op de zwarte lijst en is niet toegestaan, kies een andere e-mail.','L&#039;adresse e-mail est sur liste noire et n&#039;est pas autorisÃ©e, veuillez choisir un autre e-mail.','Die E-Mail-Adresse ist auf der schwarzen Liste und nicht erlaubt. Bitte wÃ¤hlen Sie eine andere E-Mail.','L&#039;indirizzo email ÃƒÂ¨ nella lista nera e non ÃƒÂ¨ consentito, per favore scegli un&#039;altra email.','O endereÃ§o de e-mail estÃ¡ na lista negra e nÃ£o Ã© permitido, por favor, escolha outro e-mail.','ÐÐ´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹ Ð·Ð°Ð½ÐµÑÐµÐ½ Ð² Ñ‡ÐµÑ€Ð½Ñ‹Ð¹ ÑÐ¿Ð¸ÑÐ¾Ðº Ð¸ Ð½Ðµ Ñ€Ð°Ð·Ñ€ÐµÑˆÐµÐ½, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ðµ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ð¸ÑÑŒÐ¼Ð¾.','La direcciÃ³n de correo electrÃ³nico estÃ¡ en la lista negra y no estÃ¡ permitida, elija otro correo electrÃ³nico.','E-posta adresi kara listeye alÄ±nmÄ±ÅŸ ve izin verilmemiÅŸtir, lÃ¼tfen baÅŸka bir e-posta adresi seÃ§in.'),(1268,'activities','','Activities','Ø£Ù†Ø´Ø·Ø©','Activiteiten','ActivitÃ©s','AktivitÃ¤ten','attivitÃƒ','actividades','Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ','Ocupaciones','faaliyetler'),(1269,'activity_is_following','','started following {user}','ÙŠØªØ§Ø¨Ø¹ {user}','volgt {user}','suit {user}','folgt {user}','sta seguendo {utente}','estÃ¡ seguindo {user}','Ð½Ð°Ñ‡Ð°Ð» ÑÐ»ÐµÐ´Ð¾Ð²Ð°Ñ‚ÑŒ {user}','comenzÃ³ a seguir {user}','{user} takip ediyor'),(1270,'activity_is_friend','','become friends with {user}','Ø£ØµØ¨Ø­ Ø£ØµØ¯Ù‚Ø§Ø¡ Ù…Ø¹ {user}','word vrienden met {user}','devenir amis avec {user}','Freunde werden mit {user}','diventare amici con {utente}','tornar-se amigo de {user}','Ð´Ñ€ÑƒÐ¶Ð¸Ñ‚ÑŒ Ñ {user}','hacerse amigo de {user}','{user} ile arkadaÅŸ olun'),(1271,'index_my_page_privacy','','Allow search engines to index my profile and posts?','Ø§Ù„Ø³Ù…Ø§Ø­ Ù„Ù…Ø­Ø±ÙƒØ§Øª Ø§Ù„Ø¨Ø­Ø« Ø¨ÙÙ‡Ø±Ø³Ø© Ù…Ù„ÙÙŠ Ø§Ù„Ø´Ø®ØµÙŠ ÙˆØ§Ù„Ù…Ø´Ø§Ø±ÙƒØ§ØªØŸ','Sta zoekmachines toe mijn profiel en berichten te indexeren?','Autoriser les moteurs de recherche Ã  indexer mon profil et mes publications?','Lassen Suchmaschinen mein Profil und BeitrÃ¤ge indizieren?','Permetti ai motori di ricerca di indicizzare il mio profilo e i miei post?','Permitir que os mecanismos de pesquisa indexem meu perfil e minhas postagens?','Ð Ð°Ð·Ñ€ÐµÑˆÐ¸Ñ‚ÑŒ Ð¿Ð¾Ð¸ÑÐºÐ¾Ð²Ñ‹Ð¼ ÑÐ¸ÑÑ‚ÐµÐ¼Ð°Ð¼ Ð¸Ð½Ð´ÐµÐºÑÐ¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¼Ð¾Ð¹ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ Ð¸ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ?','Â¿Permitir que los motores de bÃºsqueda indexen mi perfil y mis publicaciones?','Arama motorlarÄ±nÄ±n profilimi ve yayÄ±nlarÄ±mÄ± dizine eklemesine izin verilsin mi?'),(1272,'mark_all_as_read','','Mark all conversations as read','Ø§Ø¬Ø¹Ù„ ÙƒÙ„ Ø§Ù„Ù…Ø­Ø§Ø¯Ø«Ø§Øª Ù…Ù‚Ø±ÙˆØ¡Ø©','Markeer alle gesprekken als gelezen','Marquer toutes les conversations comme lues','Markieren Sie alle Konversationen als gelesen','Segna tutte le conversazioni come letti','Marcar todas as conversas como lidas','ÐžÑ‚Ð¼ÐµÑ‚Ð¸Ñ‚ÑŒ Ð²ÑÐµ Ñ€Ð°Ð·Ð³Ð¾Ð²Ð¾Ñ€Ñ‹ ÐºÐ°Ðº Ð¿Ñ€Ð¾Ñ‡Ð¸Ñ‚Ð°Ð½Ð½Ñ‹Ðµ','Marcar todas las conversaciones como leÃ­das','TÃ¼m konuÅŸmalarÄ± okundu olarak iÅŸaretle'),(1273,'havent_finished_post','','You haven&#039;t finished your post yet. Do you want to leave without finishing?','Ù„Ù… ØªÙ†ØªÙ‡ Ù…Ø´Ø§Ø±ÙƒØªÙƒ Ø¨Ø¹Ø¯. Ù‡Ù„ ØªØ±ÙŠØ¯ Ø§Ù„Ù…ØºØ§Ø¯Ø±Ø© Ø¯ÙˆÙ† Ø§Ù„Ø§Ù†ØªÙ‡Ø§Ø¡ØŸ','Je hebt je bericht nog niet voltooid. Wil je vertrekken zonder te eindigen?','Vous n&#039;avez pas encore terminÃ© votre message. Voulez-vous partir sans finir?','Du hast deinen Beitrag noch nicht beendet. Willst du ohne zu beenden gehen?','Non hai ancora finito il tuo post. Vuoi andartene senza finire?','VocÃª ainda nÃ£o terminou sua postagem. VocÃª quer sair sem terminar?','Ð¢Ñ‹ ÐµÑ‰Ðµ Ð½Ðµ Ð·Ð°ÐºÐ¾Ð½Ñ‡Ð¸Ð» ÑÐ²Ð¾Ð¹ Ð¿Ð¾ÑÑ‚. Ð’Ñ‹ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ¹Ñ‚Ð¸, Ð½Ðµ Ð·Ð°ÐºÐ¾Ð½Ñ‡Ð¸Ð²?','AÃºn no has terminado tu publicaciÃ³n. Â¿Quieres irte sin terminar?','MesajÄ±nÄ±zÄ± henÃ¼z bitirmediniz. Bitirmeden ayrÄ±lmak ister misin?'),(1274,'earned_points_goto','','Your earned points will automatically go to','Ø³ÙˆÙ ØªØ°Ù‡Ø¨ ØªÙ„Ù‚Ø§Ø¦ÙŠØ§ Ø§Ù„Ù†Ù‚Ø§Ø· Ø§Ù„Ø®Ø§ØµØ© Ø¨Ùƒ','Je verdiende punten gaan automatisch naar','Vos points gagnÃ©s iront automatiquement Ã ','Ihre gesammelten Punkte werden automatisch an','I tuoi punti guadagnati andranno automaticamente a','Seus pontos ganhos irÃ£o automaticamente para','Ð’Ð°ÑˆÐ¸ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ð½Ð½Ñ‹Ðµ Ð¾Ñ‡ÐºÐ¸ Ð°Ð²Ñ‚Ð¾Ð¼Ð°Ñ‚Ð¸Ñ‡ÐµÑÐºÐ¸ Ð¿ÐµÑ€ÐµÐ¹Ð´ÑƒÑ‚ Ð½Ð°','Tus puntos ganados irÃ¡n automÃ¡ticamente a','KazanÄ±lan puanlarÄ±nÄ±z otomatik olarak'),(1275,'night_mode','','Night mode','Ø§Ù„ÙˆØ¶Ø¹ Ø§Ù„Ù„ÙŠÙ„ÙŠ','Nachtstand','Mode nuit','Nacht-Modus','ModalitÃƒ  notturna','Modo noturno','ÐÐ¾Ñ‡Ð½Ð¾Ð¹ Ñ€ÐµÐ¶Ð¸Ð¼','Modo nocturno','Gece modu'),(1276,'light_mode','','Light mode','ÙˆØ¶Ø¹ Ø§Ù„Ø¥Ø¶Ø§Ø¡Ø©','Lichtmodus','Mode lÃ©ger','Lichtmodus','ModalitÃƒ  luce','Modo de luz','Ð ÐµÐ¶Ð¸Ð¼ Ð¾ÑÐ²ÐµÑ‰ÐµÐ½Ð¸Ñ','Modo de luz','IÅŸÄ±k modu'),(1277,'keyboard_shortcuts','','Keyboard shortcuts','Ø§Ø®ØªØµØ§Ø±Ø§Øª Ù„ÙˆØ­Ø© Ø§Ù„Ù…ÙØ§ØªÙŠØ­','Toetsenbord sneltoetsen','Raccourcis clavier','TastatÃ¼rkÃ¼rzel','Tasti rapidi','Atalhos do teclado','Ð“Ð¾Ñ€ÑÑ‡Ð¸Ðµ ÐºÐ»Ð°Ð²Ð¸ÑˆÐ¸','Atajos de teclado','Klavye kÄ±sayollarÄ±'),(1278,'comment','','Comment','ØªØ¹Ù„ÙŠÙ‚','Commentaar','Commentaire','Kommentar','Commento','Comente','ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','Comentario','Yorum Yap'),(1279,'write_something_here','','Write something here..','Ø§ÙƒØªØ¨ Ø´ÙŠØ¦Ù‹Ø§ Ù‡Ù†Ø§ ..','Schrijf hier iets ...','Ecrivez quelque chose ici ..','Schreib etwas hier ..','Scrivi qualcosa qui ..','Escreva alguma coisa aqui ..','ÐÐ°Ð¿Ð¸ÑˆÐ¸Ñ‚Ðµ Ñ‡Ñ‚Ð¾-Ð½Ð¸Ð±ÑƒÐ´ÑŒ Ð·Ð´ÐµÑÑŒ.','Escribe algo aquÃ­ ..','Burada bir ÅŸeyler yaz.'),(1280,'view_profile','','View Profile','Ø¹Ø±Ø¶ Ø§Ù„ØµÙØ­Ø© Ø§Ù„Ø´Ø®ØµÙŠØ©','Bekijk profiel','Voir le profil','Profil anzeigen','Vedi profilo','Ver perfil','ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ','Ver perfil','Profili GÃ¶rÃ¼ntÃ¼le'),(1281,'block','','Block','Ù…Ù†Ø¹','Blok','Bloc','Block','Bloccare','Quadra','Ð±Ð»Ð¾Ðº','Bloquear','Blok'),(1282,'create_page','','Create Page','Ø§Ù†Ø´Ø§Ø¡ ØµÙØ­Ø©','CreÃ«er pagina','CrÃ©er une page','Seite erstellen','Crea pagina','Criar pÃ¡gina','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñƒ','Crear pÃ¡gina','Sayfa oluÅŸtur'),(1283,'create_group','','Create Group','Ø¥Ù†Ø´Ø§Ø¡ Ù…Ø¬Ù…ÙˆØ¹Ø©','Maak een groep','CrÃ©er un groupe','Gruppe erstellen','Creare un gruppo','Criar grupo','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð³Ñ€ÑƒÐ¿Ð¿Ñƒ','Crea un grupo','Grup oluÅŸtur'),(1284,'create_event','','Create Event','Ø§Ù†Ø´Ø§Ø¡ Ø­Ø¯Ø«','CreÃ«er evenement','CrÃ©er un Ã©vÃ¨nement','Ereignis erstellen','Crea Evento','Criar Evento','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ðµ','Crear evento','Etkinlik oluÅŸturmak'),(1285,'create_ad','','Create Ad','Ø£Ø¹Ù„Ù†','Maak advertentie','CrÃ©er une publicitÃ©','Anzeige erstellen','Crea annuncio','Criar um anÃºncio','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ','Crear anuncio','Reklam oluÅŸtur'),(1286,'create_blog','','Create Blog','Ø§Ù†Ø´Ø§Ø¡ Ù…Ø¯ÙˆÙ†Ø©','Maak een blog','CrÃ©er un blog','Blog erstellen','Crea blog','Criar Blog','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð±Ð»Ð¾Ð³','Blog creativo','Blog yarat'),(1287,'good_morning_quote','','Every new day is a chance to change your life.','ÙƒÙ„ ÙŠÙˆÙ… Ø¬Ø¯ÙŠØ¯ Ù‡Ùˆ ÙØ±ØµØ© Ù„ØªØºÙŠÙŠØ± Ø­ÙŠØ§ØªÙƒ.','Elke nieuwe dag is een kans om je leven te veranderen.','Chaque nouveau jour est une chance de changer de vie.','Jeder neue Tag ist eine Chance, dein Leben zu verÃ¤ndern.','Ogni nuovo giorno ÃƒÂ¨ un&#039;opportunitÃƒ  per cambiare la tua vita.','Todo novo dia Ã© uma chance de mudar sua vida.','ÐšÐ°Ð¶Ð´Ñ‹Ð¹ Ð½Ð¾Ð²Ñ‹Ð¹ Ð´ÐµÐ½ÑŒ - ÑÑ‚Ð¾ ÑˆÐ°Ð½Ñ Ð¸Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð²Ð°ÑˆÑƒ Ð¶Ð¸Ð·Ð½ÑŒ.','Cada nuevo dÃ­a es una oportunidad para cambiar tu vida.','Her yeni gÃ¼nde hayatÄ±nÄ±zÄ± deÄŸiÅŸtirmek iÃ§in bir ÅŸans.'),(1288,'good_afternoon_quote','','May this afternoon be light, blessed, enlightened, productive and happy.','Ù†Ø±Ø¬Ùˆ Ø£Ù† ÙŠÙƒÙˆÙ† Ù‡Ø°Ø§ Ø§Ù„Ù…Ø³Ø§Ø¡ Ø®ÙÙŠÙÙ‹Ø§ ÙˆÙ…Ø¨Ø§Ø±ÙƒÙ‹Ø§ ÙˆÙ…Ø³ØªÙ†ÙŠØ±Ù‹Ø§ ÙˆÙ…Ù†ØªØ¬Ù‹Ø§ ÙˆØ³Ø¹ÙŠØ¯Ù‹Ø§.','Moge vanmiddag licht, gezegend, verlicht, productief en gelukkig zijn.','Puisse cet aprÃ¨s-midi Ãªtre lÃ©ger, bÃ©ni, Ã©clairÃ©, productif et heureux.','MÃ¶ge heute Nachmittag hell, gesegnet, erleuchtet, produktiv und glÃ¼cklich sein.','Possa questo pomeriggio essere leggero, benedetto, illuminato, produttivo e felice.','Que esta tarde seja leve, abenÃ§oada, iluminada, produtiva e feliz.','ÐŸÑƒÑÑ‚ÑŒ ÑÐµÐ³Ð¾Ð´Ð½Ñ Ð´Ð½ÐµÐ¼ ÑÐ²ÐµÑ‚Ð»Ñ‹Ð¹, Ð±Ð»Ð°Ð³Ð¾ÑÐ»Ð¾Ð²ÐµÐ½Ð½Ñ‹Ð¹, Ð¿Ñ€Ð¾ÑÐ²ÐµÑ‰ÐµÐ½Ð½Ñ‹Ð¹, Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚Ð¸Ð²Ð½Ñ‹Ð¹ Ð¸ ÑÑ‡Ð°ÑÑ‚Ð»Ð¸Ð²Ñ‹Ð¹.','Que esta tarde sea luz, bendita, iluminada, productiva y feliz.','Bu Ã¶ÄŸleden sonra hafif, kutsanmÄ±ÅŸ, aydÄ±nlanmÄ±ÅŸ, Ã¼retken ve mutlu olabilir.'),(1289,'good_evening_quote','','Evenings are lifeâ€™s way of saying that you are closer to your dreams.','Ø§Ù„Ø£Ù…Ø³ÙŠØ§Øª Ù‡ÙŠ Ø·Ø±ÙŠÙ‚Ø© Ø§Ù„Ø­ÙŠØ§Ø© Ù„Ù„Ù‚ÙˆÙ„ Ø¨Ø£Ù†Ùƒ Ø£Ù‚Ø±Ø¨ Ø¥Ù„Ù‰ Ø£Ø­Ù„Ø§Ù…Ùƒ.','Avonden zijn de manier om te zeggen dat je dichter bij je dromen bent.','Les soirÃ©es sont la maniÃ¨re de la vie de dire que vous Ãªtes plus proche de vos rÃªves.','Abende sind die Lebensart zu sagen, dass Sie Ihren TrÃ¤umen nÃ¤her sind.','Le sere sono il modo in cui la vita ti dice che sei piÃƒÂ¹ vicino ai tuoi sogni.','As noites sÃ£o a maneira da vida de dizer que vocÃª estÃ¡ mais perto de seus sonhos.','Ð’ÐµÑ‡ÐµÑ€Ð° - ÑÑ‚Ð¾ ÑÐ¿Ð¾ÑÐ¾Ð± Ð¶Ð¸Ð·Ð½Ð¸ ÑÐºÐ°Ð·Ð°Ñ‚ÑŒ, Ñ‡Ñ‚Ð¾ Ð²Ñ‹ Ð±Ð»Ð¸Ð¶Ðµ Ðº ÑÐ²Ð¾Ð¸Ð¼ Ð¼ÐµÑ‡Ñ‚Ð°Ð¼.','Las noches son la forma en que la vida dice que estÃ¡s mÃ¡s cerca de tus sueÃ±os.','AkÅŸamlar yaÅŸamÄ±n, hayallerinize daha yakÄ±n olduÄŸunuzu sÃ¶yleme biÃ§imidir.'),(1290,'day_mode','','Day mode','ÙˆØ¶Ø¹ Ø§Ù„ÙŠÙˆÙ…','Dagmodus','Mode jour','Tagesmodus','ModalitÃƒ  giorno','Modo dia','Ð”Ð½ÐµÐ²Ð½Ð¾Ð¹ Ñ€ÐµÐ¶Ð¸Ð¼','Modo dÃ­a','GÃ¼ndÃ¼z modu'),(1291,'disable_comments','','Disable comments','ØªØ¹Ø·ÙŠÙ„ Ø§Ù„ØªØ¹Ù„ÙŠÙ‚Ø§Øª','Schakel opmerkingen uit','DÃ©sactiver les commentaires','Kommentare deaktivieren','Disabilita commenti','Desativar comentÃ¡rios','ÐžÑ‚ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸','Desactivar Comentarios','YorumlarÄ± devre dÄ±ÅŸÄ± bÄ±rak'),(1292,'enable_comments','','Enable comments','ØªÙ…ÙƒÙŠÙ† Ø§Ù„ØªØ¹Ù„ÙŠÙ‚Ø§Øª','Reacties inschakelen','Activer les commentaires','Kommentare aktivieren','Abilita commenti','Ativar comentÃ¡rios','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸','Habilitar comentarios','YorumlarÄ± etkinleÅŸtir'),(1293,'comments_disabled','','Comments are disabled by %d','Ø§Ù„ØªØ¹Ù„ÙŠÙ‚Ø§Øª Ù…Ø¹Ø·Ù„Ø© Ø¨ÙˆØ§Ø³Ø·Ø© d%','Reacties zijn uitgeschakeld door %d','Les commentaires sont dÃ©sactivÃ©s par %d','Kommentare sind von %d deaktiviert','I commenti sono disabilitati da %d','ComentÃ¡rios desativados por %d','ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¸ Ð¾Ñ‚ÐºÐ»ÑŽÑ‡ÐµÐ½Ñ‹ Ð½Ð° %d','Los comentarios estÃ¡n deshabilitados por %d','Yorumlar %d tarafÄ±ndan devre dÄ±ÅŸÄ± bÄ±rakÄ±ldÄ±'),(1294,'confirm_your_account','','Confirm your account','Ø§ÙƒØ¯ Ø­Ø³Ø§Ø¨Ùƒ','Bevestig je account','Confirmez votre compte','BestÃ¤tigen Sie ihr Konto','Conferma il tuo account','Confirme sua conta','ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚Ðµ ÑÐ²Ð¾Ð¹ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚','Confirme su cuenta','HesabÄ±nÄ± onayla'),(1295,'sign_in_attempt','','Your sign in attempt seems a little different than usual, This could be because you are signing in from a different device or a different location.','ØªØ¨Ø¯Ùˆ Ù…Ø­Ø§ÙˆÙ„Ø© ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„ Ù…Ø®ØªÙ„ÙØ© Ù‚Ù„ÙŠÙ„Ø§Ù‹ Ø¹Ù† Ø§Ù„Ù…Ø¹ØªØ§Ø¯ ØŒ ÙˆÙ‚Ø¯ ÙŠØ±Ø¬Ø¹ Ù‡Ø°Ø§ Ø¥Ù„Ù‰ Ø£Ù†Ùƒ ØªÙ‚ÙˆÙ… Ø¨ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„ Ù…Ù† Ø¬Ù‡Ø§Ø² Ù…Ø®ØªÙ„Ù Ø£Ùˆ Ù…ÙˆÙ‚Ø¹ Ù…Ø®ØªÙ„Ù.','Uw inlogpoging lijkt een beetje anders dan anders. Dit zou kunnen zijn omdat u zich aanmeldt vanaf een ander apparaat of een andere locatie.','Votre tentative de connexion semble lÃ©gÃ¨rement diffÃ©rente de celle habituelle. Cela peut Ãªtre dÃ» au fait que vous vous connectez depuis un autre appareil ou un autre emplacement.','Ihr Anmeldeversuch scheint ein wenig anders als sonst. Dies kÃ¶nnte daran liegen, dass Sie sich von einem anderen GerÃ¤t oder einem anderen Standort aus anmelden.','Il tuo tentativo di accesso sembra leggermente diverso dal solito. CiÃ² potrebbe essere dovuto al fatto che stai effettuando l&#039;accesso da un dispositivo diverso o da un&#039;altra posizione.','Sua tentativa de login parece um pouco diferente do normal. Isso pode ter ocorrido porque vocÃª estÃ¡ fazendo login de um dispositivo diferente ou de um local diferente.','Ð’Ð°ÑˆÐ° Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÐ° Ð²Ñ…Ð¾Ð´Ð° Ð²Ñ‹Ð³Ð»ÑÐ´Ð¸Ñ‚ Ð½ÐµÐ¼Ð½Ð¾Ð³Ð¾ Ð¸Ð½Ð°Ñ‡Ðµ, Ñ‡ÐµÐ¼ Ð¾Ð±Ñ‹Ñ‡Ð½Ð¾. Ð­Ñ‚Ð¾ Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ ÑÐ²ÑÐ·Ð°Ð½Ð¾ Ñ Ñ‚ÐµÐ¼, Ñ‡Ñ‚Ð¾ Ð²Ñ‹ Ð²Ñ…Ð¾Ð´Ð¸Ñ‚Ðµ Ñ Ð´Ñ€ÑƒÐ³Ð¾Ð³Ð¾ ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð²Ð° Ð¸Ð»Ð¸ Ð² Ð´Ñ€ÑƒÐ³Ð¾Ðµ Ð¼ÐµÑÑ‚Ð¾.','El intento de inicio de sesiÃ³n parece un poco diferente de lo habitual. Esto podrÃ­a deberse a que se estÃ¡ iniciando desde un dispositivo diferente o desde una ubicaciÃ³n diferente.','Oturum aÃ§ma giriÅŸiminiz normalden biraz farklÄ± gÃ¶rÃ¼nÃ¼yor, Bunun nedeni farklÄ± bir cihazdan veya farklÄ± bir konumdan oturum aÃ§manÄ±z olabilir.'),(1296,'we_have_sent_you_code','','We have sent you an email with the confirmation code.','Ù„Ù‚Ø¯ Ø£Ø±Ø³Ù„Ù†Ø§ Ù„Ùƒ Ø±Ø³Ø§Ù„Ø© Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ© ØªØ­ØªÙˆÙŠ Ø¹Ù„Ù‰ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯.','We hebben u een e-mail gestuurd met de bevestigingscode.','Nous vous avons envoyÃ© un email avec le code de confirmation.','Wir haben Ihnen eine E-Mail mit dem BestÃ¤tigungscode gesendet.','Ti abbiamo inviato un&#039;e-mail con il codice di conferma.','Enviamos um e-mail para vocÃª com o cÃ³digo de confirmaÃ§Ã£o.','ÐœÑ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¸ Ð²Ð°Ð¼ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ð¸ÑÑŒÐ¼Ð¾ Ñ ÐºÐ¾Ð´Ð¾Ð¼ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ.','Te hemos enviado un correo electrÃ³nico con el cÃ³digo de confirmaciÃ³n.','Onay kodunu iÃ§eren bir e-posta gÃ¶nderdik.'),(1297,'two_factor','','Two-factor authentication','ØªÙˆØ«ÙŠÙ‚ Ø°Ùˆ Ø¹Ø§Ù…Ù„ÙŠÙ†','Twee-factor-authenticatie','Authentification Ã  deux facteurs','Zwei-Faktor-Authentifizierung','Autenticazione a due fattori','AutenticaÃ§Ã£o de dois fatores','Ð”Ð²ÑƒÑ…Ñ„Ð°ÐºÑ‚Ð¾Ñ€Ð½Ð°Ñ Ð°ÑƒÑ‚ÐµÐ½Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ†Ð¸Ñ','AutenticaciÃ³n de dos factores','Ä°ki faktÃ¶rlÃ¼ kimlik doÄŸrulama'),(1298,'to_log_in_two_factor','','To log in, you need to verify your identity.','Ù„ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„ ØŒ ØªØ­ØªØ§Ø¬ Ø¥Ù„Ù‰ Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ù‡ÙˆÙŠØªÙƒ.','Om u aan te melden, moet u uw identiteit verifiÃ«ren.','Pour vous connecter, vous devez vÃ©rifier votre identitÃ©.','Um sich einzuloggen, mÃ¼ssen Sie Ihre IdentitÃ¤t bestÃ¤tigen.','Per accedere, Ã¨ necessario verificare la propria identitÃ .','Para fazer login, vocÃª precisa verificar sua identidade.','Ð§Ñ‚Ð¾Ð±Ñ‹ Ð²Ð¾Ð¹Ñ‚Ð¸ Ð² ÑÐ¸ÑÑ‚ÐµÐ¼Ñƒ, Ð²Ð°Ð¼ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚ÑŒ ÑÐ²Ð¾ÑŽ Ð»Ð¸Ñ‡Ð½Ð¾ÑÑ‚ÑŒ.','Para iniciar sesiÃ³n, necesita verificar su identidad.','GiriÅŸ yapmak iÃ§in kimliÄŸinizi doÄŸrulamanÄ±z gerekir.'),(1299,'sent_two_factor_both','','We have sent you the confirmation code to your phone and to your email address.','Ù„Ù‚Ø¯ Ø£Ø±Ø³Ù„Ù†Ø§ Ø¥Ù„ÙŠÙƒ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯ Ø¥Ù„Ù‰ Ù‡Ø§ØªÙÙƒ ÙˆØ¥Ù„Ù‰ Ø¹Ù†ÙˆØ§Ù† Ø¨Ø±ÙŠØ¯Ùƒ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ.','We hebben je de bevestigingscode gestuurd naar je telefoon en naar je e-mailadres.','Nous vous avons envoyÃ© le code de confirmation sur votre tÃ©lÃ©phone et sur votre adresse e-mail.','Wir haben Ihnen den BestÃ¤tigungscode an Ihr Telefon und an Ihre E-Mail-Adresse gesendet.','Ti abbiamo inviato il codice di conferma sul tuo telefono e sul tuo indirizzo email.','Enviamos o cÃ³digo de confirmaÃ§Ã£o para o seu telefone e para o seu endereÃ§o de e-mail.','ÐœÑ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¸ Ð²Ð°Ð¼ ÐºÐ¾Ð´ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ Ð½Ð° Ð²Ð°Ñˆ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½ Ð¸ Ð½Ð° Ð²Ð°Ñˆ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹.','Le hemos enviado el cÃ³digo de confirmaciÃ³n a su telÃ©fono y a su direcciÃ³n de correo electrÃ³nico.','Size onay kodunu telefonunuza ve e-posta adresinize gÃ¶nderdik.'),(1300,'sent_two_factor_email','','We have sent you the confirmation code to your email address.','Ù„Ù‚Ø¯ Ø£Ø±Ø³Ù„Ù†Ø§ Ø¥Ù„ÙŠÙƒ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯ Ø¥Ù„Ù‰ Ø¹Ù†ÙˆØ§Ù† Ø¨Ø±ÙŠØ¯Ùƒ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ.','We hebben je de bevestigingscode gestuurd naar je e-mailadres.','Nous vous avons envoyÃ© le code de confirmation Ã  votre adresse e-mail.','Wir haben Ihnen den BestÃ¤tigungscode an Ihre E-Mail-Adresse gesendet.','Ti abbiamo inviato il codice di conferma al tuo indirizzo email.','NÃ³s lhe enviamos o cÃ³digo de confirmaÃ§Ã£o para o seu endereÃ§o de e-mail.','ÐœÑ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¸ Ð²Ð°Ð¼ ÐºÐ¾Ð´ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ Ð½Ð° Ð²Ð°Ñˆ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹.','Le hemos enviado el cÃ³digo de confirmaciÃ³n a su direcciÃ³n de correo electrÃ³nico.','Size e-posta adresinize onay kodunu gÃ¶nderdik.'),(1301,'sent_two_factor_phone','','We have sent you the confirmation code to your phone number.','Ù„Ù‚Ø¯ Ø£Ø±Ø³Ù„Ù†Ø§ Ø¥Ù„ÙŠÙƒ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯ Ø¥Ù„Ù‰ Ø±Ù‚Ù… Ù‡Ø§ØªÙÙƒ.','We hebben je de bevestigingscode naar je telefoonnummer gestuurd.','Nous vous avons envoyÃ© le code de confirmation sur votre numÃ©ro de tÃ©lÃ©phone.','Wir haben Ihnen den BestÃ¤tigungscode an Ihre Telefonnummer gesendet.','Ti abbiamo inviato il codice di conferma al tuo numero di telefono.','Enviamos o cÃ³digo de confirmaÃ§Ã£o para o seu nÃºmero de telefone.','ÐœÑ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¸ Ð²Ð°Ð¼ ÐºÐ¾Ð´ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ Ð½Ð° Ð²Ð°Ñˆ Ð½Ð¾Ð¼ÐµÑ€ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð°.','Le hemos enviado el cÃ³digo de confirmaciÃ³n a su nÃºmero de telÃ©fono.','Telefon numaranÄ±za onay kodunu gÃ¶nderdik.'),(1302,'two_factor_description','','Turn on 2-step login to level-up your account&#039;s security, Once turned on, you&#039;ll use both your password and a 6-digit security code sent to your phone or email to log in.','Ø´ØºÙ‘Ù„ ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„ Ø§Ù„Ù…ÙƒÙˆÙŽÙ‘Ù† Ù…Ù† Ø®Ø·ÙˆØªÙŠÙ† Ù„ØªØ­Ø³ÙŠÙ† Ù…Ø³ØªÙˆÙ‰ Ø£Ù…Ø§Ù† Ø­Ø³Ø§Ø¨Ùƒ ØŒ ÙˆØ¨Ù…Ø¬Ø±Ø¯ ØªØ´ØºÙŠÙ„Ù‡ ØŒ Ø³ØªØ³ØªØ®Ø¯Ù… ÙƒÙ„ Ù…Ù† ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± ÙˆØ±Ù…Ø² Ø§Ù„Ø£Ù…Ø§Ù† Ø§Ù„Ù…ÙƒÙˆÙ† Ù…Ù† 6 Ø£Ø±Ù‚Ø§Ù… ÙˆØ§Ù„Ù…Ø±Ø³Ù„ÙŠÙ† Ø¥Ù„Ù‰ Ù‡Ø§ØªÙÙƒ Ø£Ùˆ Ø¨Ø±ÙŠØ¯Ùƒ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ù„ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„.','Schakel authenticatie in 2 stappen in om de beveiliging van uw account te verbeteren. Wanneer u eenmaal bent ingeschakeld, gebruikt u zowel uw wachtwoord als een uit 6 cijfers bestaande beveiligingscode die naar uw telefoon of e-mailadres is gestuurd om in te loggen.','Activez la connexion en deux Ã©tapes pour renforcer la sÃ©curitÃ© de votre compte. Une fois activÃ©, vous utiliserez votre mot de passe et un code de sÃ©curitÃ© Ã  6 chiffres envoyÃ© Ã  votre tÃ©lÃ©phone ou Ã  un courrier Ã©lectronique pour vous connecter.','Aktivieren Sie die 2-stufige Anmeldung, um die Sicherheit Ihres Kontos zu erhÃ¶hen. Nach dem Einschalten verwenden Sie sowohl Ihr Passwort als auch einen 6-stelligen Sicherheitscode, der an Ihr Telefon oder Ihre E-Mail-Adresse gesendet wird, um sich anzumelden.','Attiva l&#039;accesso in due passaggi per aumentare la sicurezza del tuo account. Una volta attivato, utilizzerai sia la tua password sia un codice di sicurezza a 6 cifre inviato al tuo telefono o e-mail per accedere.','Ative o login em duas etapas para aumentar o nÃ­vel de seguranÃ§a da sua conta. Depois de ativada, vocÃª usarÃ¡ a senha e um cÃ³digo de seguranÃ§a de seis dÃ­gitos enviados para o seu telefone ou e-mail para fazer login.','Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚Ðµ Ð´Ð²ÑƒÑ…ÑÑ‚Ð°Ð¿Ð½Ñ‹Ð¹ Ð²Ñ…Ð¾Ð´ Ð´Ð»Ñ Ð¿Ð¾Ð²Ñ‹ÑˆÐµÐ½Ð¸Ñ Ð±ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ð¾ÑÑ‚Ð¸ ÑÐ²Ð¾ÐµÐ¹ ÑƒÑ‡ÐµÑ‚Ð½Ð¾Ð¹ Ð·Ð°Ð¿Ð¸ÑÐ¸. ÐŸÐ¾ÑÐ»Ðµ Ð²ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ñ Ð²Ñ‹ Ð±ÑƒÐ´ÐµÑ‚Ðµ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÑŒ ÐºÐ°Ðº ÑÐ²Ð¾Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ, Ñ‚Ð°Ðº Ð¸ 6-Ð·Ð½Ð°Ñ‡Ð½Ñ‹Ð¹ ÐºÐ¾Ð´ Ð±ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ð¾ÑÑ‚Ð¸, Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð½Ñ‹Ð¹ Ð½Ð° Ð²Ð°Ñˆ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½ Ð¸Ð»Ð¸ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½ÑƒÑŽ Ð¿Ð¾Ñ‡Ñ‚Ñƒ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð²Ð¾Ð¹Ñ‚Ð¸ Ð² ÑÐ¸ÑÑ‚ÐµÐ¼Ñƒ.','Active el inicio de sesiÃ³n en 2 pasos para subir de nivel la seguridad de su cuenta. Una vez que lo haya hecho, utilizarÃ¡ su contraseÃ±a y un cÃ³digo de seguridad de 6 dÃ­gitos que se le enviarÃ¡ a su telÃ©fono o correo electrÃ³nico para iniciar sesiÃ³n.','HesabÄ±nÄ±zÄ±n gÃ¼venliÄŸini artÄ±rmak iÃ§in 2 adÄ±mlÄ± giriÅŸ Ã¶zelliÄŸini aÃ§Ä±n. AÃ§tÄ±ktan sonra, giriÅŸ yapmak iÃ§in hem ÅŸifrenizi hem de telefonunuza veya e-posta adresinize gÃ¶nderilen 6 basamaklÄ± bir gÃ¼venlik kodunu kullanÄ±rsÄ±nÄ±z.'),(1303,'my_campaigns','','Campaigns','Ø­Ù…Ù„Ø§ØªÙŠ','Mijn campagnes','Mes campagnes','Meine Kampagnen','Le mie campagne','Minhas Campanhas','ÐœÐ¾Ð¸ ÐšÐ°Ð¼Ð¿Ð°Ð½Ð¸Ð¸','Mis campaÃ±as','KampanyalarÄ±m'),(1304,'my_wallet','','Wallet & Credits','Ù…Ø­ÙØ¸ØªÙ‰','Mijn portemonnee','Mon portefeuille','Mein Geldbeutel','Il mio portafoglio','Minha carteira','ÐœÐ¾Ð¹ Ð±ÑƒÐ¼Ð°Ð¶Ð½Ð¸Ðº','Mi billetera','CÃ¼zdanÄ±m'),(1305,'stats','','Analytics','Ø§Ø­ØµØ§Ø¦ÙŠØ§Øª','Stats','Statistiques','Statistiken','Statistiche','EstatÃ­sticas','Ð¡Ñ‚Ð°Ñ‚Ð¸ÑÑ‚Ð¸ÐºÐ°','EstadÃ­sticas','Ä°statistikleri'),(1306,'choose_audience','','Choose Audience','Ø§Ø®ØªØ± Ø§Ù„Ø¬Ù…Ù‡ÙˆØ±','Kies Doelgroep','Choisissez l&#039;audience','WÃ¤hlen Sie Zielgruppe','Scegli il pubblico','Escolher AudiÃªncia','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð°ÑƒÐ´Ð¸Ñ‚Ð¾Ñ€Ð¸ÑŽ','Elegir audiencia','Kitle SeÃ§'),(1307,'launch_ad','','Launch Ad','Ø¥Ø·Ù„Ø§Ù‚ Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†','Advertentie lanceren','Annonce de lancement','Anzeige starten','Avvia annuncio','AnÃºncio de lanÃ§amento','Ð—Ð°Ð¿ÑƒÑÑ‚Ð¸Ñ‚ÑŒ Ð¾Ð±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ','Anuncio de lanzamiento','ReklamÄ± BaÅŸlat'),(1308,'pay_per_clicks','','Pay Per Click','ØªØ¯ÙØ¹ Ø¹Ù† ÙƒÙ„ Ù†Ù‚Ø±Ø©','Betaal per klik','Payer avec un clic','Pay Per Click','Pay per click','Pago por clique','ÐžÐ¿Ð»Ð°Ñ‚Ð° Ð·Ð° ÐºÐ»Ð¸Ðº','Pago por clic','TÄ±klama baÅŸÄ±na Ã¶deme'),(1309,'pay_per_imprssions','','Pay Per Impression','Ø§Ø¯ÙØ¹ Ù„ÙƒÙ„ Ø§Ù†Ø·Ø¨Ø§Ø¹','Betaal per indruk','Pay Per Impression','Pay Per Impression','Paga per impressione','Pay Per Impression','ÐžÐ¿Ð»Ð°Ñ‚Ð° Ð·Ð° Ð¿Ð¾ÐºÐ°Ð·','Pago por impresiÃ³n','GÃ¶sterim BaÅŸÄ±na Ã–deme'),(1310,'explore_latest_articles','','Explore the latest articles','Ø§Ø³ØªÙƒØ´Ø§Ù Ø£Ø­Ø¯Ø« Ø§Ù„Ù…Ù‚Ø§Ù„Ø§Øª','Ontdek de nieuwste artikelen','Explorez les derniers articles','Entdecken Sie die neuesten Artikel','Esplora gli ultimi articoli','Explore os artigos mais recentes','ÐžÐ·Ð½Ð°ÐºÐ¾Ð¼ÑŒÑ‚ÐµÑÑŒ Ñ Ð¿Ð¾ÑÐ»ÐµÐ´Ð½Ð¸Ð¼Ð¸ ÑÑ‚Ð°Ñ‚ÑŒÑÐ¼Ð¸','Explora los Ãºltimos artÃ­culos','En son makaleleri keÅŸfedin'),(1311,'search_for_article','','Search for articles','Ø§Ù„Ø¨Ø­Ø« Ø¹Ù† Ø§Ù„Ù…Ù‚Ø§Ù„Ø§Øª ..','Zoeken naar artikelen ..','Rechercher des articles ..','Artikel suchen ..','Cerca articoli ..','Procure por artigos ..','ÐŸÐ¾Ð¸ÑÐº ÑÑ‚Ð°Ñ‚ÐµÐ¹ ..','BÃºsqueda de artÃ­culos ..','Makaleleri arayÄ±n ..'),(1312,'authors','','Authors','Ø§Ù„Ù…Ø¤Ù„ÙÙˆÙ†','auteurs','Auteurs','Autoren','autori','Autores','ÐÐ²Ñ‚Ð¾Ñ€Ñ‹','Autores','Yazarlar'),(1313,'news_feed','','News Feed','ØªØºØ°ÙŠØ© Ø§Ù„Ø£Ø®Ø¨Ø§Ø±','Nieuwsfeed','Fil d&#039;actualitÃ©','Neuigkeiten','Notizie','NotÃ­cias','ÐÐ¾Ð²Ð¾ÑÑ‚Ð½Ð°Ñ Ð»ÐµÐ½Ñ‚Ð°','Noticias','Haber akÄ±ÅŸÄ±'),(1314,'video_call','','Video call','Ù…ÙƒØ§Ù„Ù…Ø© ÙÙŠØ¯ÙŠÙˆ','Video-oproep','Appel vidÃ©o','Videoanruf','Video chiamata','Video chamada','Ð’Ð¸Ð´ÐµÐ¾Ð·Ð²Ð¾Ð½Ð¾Ðº','Videollamada','GÃ¶rÃ¼ntÃ¼lÃ¼ arama'),(1315,'open_in_new_tab','','Open in new tab','ÙØªØ­ ÙÙŠ Ø¹Ù„Ø§Ù…Ø© ØªØ¨ÙˆÙŠØ¨ Ø¬Ø¯ÙŠØ¯Ø©','Openen in nieuw tabblad','Ouvrir dans un nouvel onglet','In neuem Tab Ã¶ffnen','Apri in una nuova scheda','Abrir em nova aba','ÐžÑ‚ÐºÑ€Ñ‹Ñ‚ÑŒ Ð² Ð½Ð¾Ð²Ð¾Ð¹ Ð²ÐºÐ»Ð°Ð´ÐºÐµ','Abrir en una pestaÃ±a nueva','Yeni sekmede aÃ§'),(1316,'change_color','','Change color','ØºÙŠØ± Ø§Ù„Ù„ÙˆÙ†','Verander kleur','Changer de couleur','Farbe Ã¤ndern','Cambia colore','Mudar cor','Ð¡Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ñ†Ð²ÐµÑ‚','Cambiar el color','Rengi deÄŸiÅŸtir'),(1317,'image','','Image','ØµÙˆØ±Ø©','Beeld','Image','Bild','Immagine','Imagem','ÐžÐ±Ñ€Ð°Ð·','Imagen','gÃ¶rÃ¼ntÃ¼'),(1318,'voice','','Voice','ØµÙˆØª','Stem','Voix','Stimme','Voce','Voz','Ð³Ð¾Ð»Ð¾Ñ','Voz','ses'),(1319,'gif','','GIF','GIF','GIF','GIF','GIF','GIF','GIF','GIF','GIF','GIF'),(1320,'stickers','','Stickers','Ù…Ù„ØµÙ‚Ø§Øª','stickers','Des autocollants','Aufkleber','Adesivi','Adesivos','ÐÐ°ÐºÐ»ÐµÐ¹ÐºÐ¸','Pegatinas','Ã‡Ä±kartma'),(1321,'stop','','Stop','ØªÙˆÙ‚Ù','Hou op','ArrÃªtez','Halt','Stop','Pare','Ð¡Ñ‚Ð¾Ð¿','Detener','durdurmak'),(1322,'contact_help','','Let us help you solve your issue.','Ø¯Ø¹Ù†Ø§ Ù†Ø³Ø§Ø¹Ø¯Ùƒ ÙÙŠ Ø­Ù„ Ù…Ø´ÙƒÙ„ØªÙƒ.','Laat ons u helpen met het oplossen van uw probleem.','Laissez-nous vous aider Ã  rÃ©soudre votre problÃ¨me.','Lassen Sie sich von uns bei der LÃ¶sung Ihres Problems unterstÃ¼tzen.','Lascia che ti aiutiamo a risolvere il tuo problema.','Deixe-nos ajudar vocÃª a resolver seu problema.','ÐŸÐ¾Ð·Ð²Ð¾Ð»ÑŒÑ‚Ðµ Ð½Ð°Ð¼ Ð¿Ð¾Ð¼Ð¾Ñ‡ÑŒ Ð²Ð°Ð¼ Ñ€ÐµÑˆÐ¸Ñ‚ÑŒ Ð²Ð°ÑˆÑƒ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñƒ.','PermÃ­tanos ayudarle a resolver su problema.','Sorununuzu Ã§Ã¶zmenize yardÄ±mcÄ± olalÄ±m.'),(1323,'info','','Info','Ù…Ø¹Ù„ÙˆÙ…Ø§Øª','info','Info','Info','Informazioni','Info','Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ','InformaciÃ³n','Bilgi'),(1324,'users_found','','users found','ÙˆØ¬Ø¯Øª Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†','gebruikers gevonden','utilisateurs trouvÃ©s','Benutzer gefunden','utenti trovati','usuÃ¡rios encontrados','Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸ Ð½Ð°ÑˆÐ»Ð¸','usuarios encontrados','kullanÄ±cÄ±lar bulundu'),(1325,'users_playing','','users playing','ÙŠÙ„Ø¹Ø¨ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙˆÙ†','gebruikers spelen','utilisateurs jouant','spielende Benutzer','utenti che giocano','usuÃ¡rios jogando','Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸ Ð¸Ð³Ñ€Ð°ÑŽÑ‚','usuarios jugando','oynayan kullanÄ±cÄ±lar'),(1326,'popular_games','','Popular Games','Ø§Ù„Ø¹Ø§Ø¨ Ø´Ø¹Ø¨ÙŠØ©','Populaire spellen','Jeux populaires','Beliebte Spiele','Giochi popolari','Jogos Populares','ÐŸÐ¾Ð¿ÑƒÐ»ÑÑ€Ð½Ñ‹Ðµ Ð¸Ð³Ñ€Ñ‹','Juegos populares','PopÃ¼ler Oyunlar'),(1327,'whats_happening','','What&#039;s happening','Ù…Ø§Ø°Ø§ ÙŠØ­Ø¯Ø«','Wat is er gaande','Que ce passe-t-il','Was ist los','Cosa sta succedendo','O que estÃ¡ acontecendo','Ð§Ñ‚Ð¾ Ð¿Ñ€Ð¾Ð¸ÑÑ…Ð¾Ð´Ð¸Ñ‚','QuÃ© esta pasando','Ne oluyor'),(1328,'discount','','Discount','Ø®ØµÙ…','Korting','Remise','Rabatt','Sconto','Desconto','ÑÐºÐ¸Ð´ÐºÐ°','Descuento','Ä°ndirim'),(1329,'pick_your_plan','','Pick your Plan','Ø§Ø®ØªØ± Ø®Ø·ØªÙƒ','Kies je plan','Choisissez votre plan','WÃ¤hle deinen Plan aus','Scegli il tuo piano','Escolha seu plano','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ ÑÐ²Ð¾Ð¹ Ð¿Ð»Ð°Ð½','Elige tu plan','PlanÄ±nÄ± SeÃ§'),(1330,'trusted_payment_methods','','Trusted payment methods','Ø·Ø±Ù‚ Ø§Ù„Ø¯ÙØ¹ Ø§Ù„Ù…ÙˆØ«ÙˆÙ‚Ø©','Betrouwbare betaalmethoden','Modes de paiement approuvÃ©s','VertrauenswÃ¼rdige Zahlungsmethoden','Metodi di pagamento affidabili','MÃ©todos de pagamento confiÃ¡veis','Ð”Ð¾Ð²ÐµÑ€ÐµÐ½Ð½Ñ‹Ðµ ÑÐ¿Ð¾ÑÐ¾Ð±Ñ‹ Ð¾Ð¿Ð»Ð°Ñ‚Ñ‹','MÃ©todos de pago de confianza','GÃ¼venilir Ã¶deme yÃ¶ntemleri'),(1331,'secure_payments','','Secure payments','Ø§Ù„Ù…Ø¯ÙÙˆØ¹Ø§Øª Ø§Ù„Ø¢Ù…Ù†Ø©','Veilige betalingen','Paiements sÃ©curisÃ©s','Sichere Zahlungen','Pagamenti sicuri','Pagamentos Seguros','Ð‘ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ñ‹Ðµ Ð¿Ð»Ð°Ñ‚ÐµÐ¶Ð¸','Pagos seguros','GÃ¼venli Ã¶demeler'),(1332,'group_settings','','Group Settings','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Groepsinstellingen','ParamÃ¨tres de groupe','Gruppeneinstellungen','Impostazioni di gruppo','ConfiguraÃ§Ãµes de Grupo','ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','Ajustes de grupo','Grup ayarlarÄ±'),(1333,'page_settings','','Page Settings','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØµÙØ­Ø©','Pagina-instellingen','ParamÃ¨tres de page','Seiteneinstellungen','Impostazioni della pagina','ConfiguraÃ§Ãµes de pÃ¡gina','ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','ConfiguraciÃ³n de pÃ¡gina','Sayfa AyarlarÄ±'),(1334,'user_setting','','User Settings','Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…','Gebruikersinstellingen','ParamÃ¨tres utilisateur','Benutzereinstellungen','Impostazioni utente','ConfiguraÃ§Ãµes do usuÃ¡rio','ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒÑÐºÐ¸Ðµ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸','Ajustes de usuario','KullanÄ±cÄ± ayarlarÄ±'),(1335,'security','','Security','Ø§Ù„Ø£Ù…Ø§Ù†','Veiligheid','SÃ©curitÃ©','Sicherheit','Sicurezza','SeguranÃ§a','Ð‘ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ð¾ÑÑ‚ÑŒ','Seguridad','GÃ¼venlik'),(1336,'earnings','','Earnings','Ø£Ø±Ø¨Ø§Ø­','verdiensten','Gains','Verdienste','guadagni','Ganhos','Ð¿Ñ€Ð¸Ð±Ñ‹Ð»ÑŒ','Ganancias','KazanÃ§'),(1337,'open_original','','Open original','ÙØªØ­ Ø§Ù„Ø£ØµÙ„ÙŠ','Open het origineel','Ouvrir l&#039;original','Original Ã¶ffnen','Apri originale','Abrir original','ÐžÑ‚ÐºÑ€Ñ‹Ñ‚ÑŒ Ð¾Ñ€Ð¸Ð³Ð¸Ð½Ð°Ð»','Abrir original','Orijinali aÃ§'),(1338,'no_comments_found','','No comments to show','Ù„Ø§ ØªÙˆØ¬Ø¯ ØªØ¹Ù„ÙŠÙ‚Ø§Øª','Geen reacties gevonden','Aucun commentaire trouvÃ©','Keine Kommentare gefunden','Nessun commento trovato','Nenhum comentÃ¡rio encontrado','ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸ÐµÐ² Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾','No se encontraron comentarios','Yorum bulunamadÄ±'),(1339,'delete_conversation','','Delete Conversation','Ù…Ø³Ø­ Ø§Ù„Ù…Ø­Ø§Ø¯Ø«Ø©','Verwijder gesprek','Supprimer la conversation','Konversation lÃ¶schen','Cancella la conversazione','Apagar conversa','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ð±ÐµÑÐµÐ´Ñƒ','Eliminar la conversaciÃ³n','KonuÅŸmayÄ± sil'),(1340,'images','','Images','ØµÙˆØ±','Afbeeldingen','Images','Bilder','immagini','Imagens','Ð˜Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ð¹','ImÃ¡genes','GÃ¶rÃ¼ntÃ¼ler'),(1341,'topics','','Topics','Ø§Ù„Ù…ÙˆØ§Ø¶ÙŠØ¹','Onderwerpen','Les sujets','Themen','Temi','TÃ³picos','Ñ‚ÐµÐ¼Ñ‹','Los temas','BaÅŸlÄ±klar'),(1342,'search_type','','Search type','Ù†ÙˆØ¹ Ø§Ù„Ø¨Ø­Ø«','Zoektype','Type de recherche','Suchtyp','Tipo di ricerca','Tipo de pesquisa','Ð¢Ð¸Ð¿ Ð¿Ð¾Ð¸ÑÐºÐ°','Tipo de bÃºsqueda','Arama Tipi'),(1343,'search_section','','Search section','Ù‚Ø³Ù… Ø§Ù„Ø¨Ø­Ø«','Zoek sectie','Section de recherche','Suchbereich','Sezione di ricerca','SeÃ§Ã£o de pesquisa','Ð Ð°Ð·Ð´ÐµÐ» Ð¿Ð¾Ð¸ÑÐºÐ°','SecciÃ³n de bÃºsqueda','Arama bÃ¶lÃ¼mÃ¼'),(1344,'watch_now','','Watch Now','Ø´Ø§Ù‡Ø¯ Ø§Ù„Ø¢Ù†','Kijk nu','Regarde maintenant','Schau jetzt','Guarda ora','Assista agora','Ð¡Ð¼Ð¾Ñ‚Ñ€Ð¸','Ver ahora','Ä°zle ÅŸimdi'),(1345,'new_product','','New Product','Ù…Ù†ØªØ¬ Ø¬Ø¯ÙŠØ¯','Nieuw product','Nouveau produit','Neues Produkt','Nuovo prodotto','Novo produto','ÐÐ¾Ð²Ñ‹Ð¹ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚','Nuevo producto','Yeni Ã¼rÃ¼n'),(1346,'latest','','Latest','Ø¢Ø®Ø±','Laatste','Dernier','Neueste','PiÃ¹ recente','Mais recentes','Ð¡Ð°Ð¼Ñ‹Ð¹ Ð¿Ð¾ÑÐ»ÐµÐ´Ð½Ð¸Ð¹','Ãšltimo','son'),(1347,'price_low','','Price Low','Ø³Ø¹Ø± Ù…Ù†Ø®ÙØ¶','Prijs laag','Prix â€‹â€‹bas','Preis niedrig','Prezzo basso','PreÃ§o baixo','ÐÐ¸Ð·ÐºÐ°Ñ Ñ†ÐµÐ½Ð°','Precio bajo','Fiyat DÃ¼ÅŸÃ¼k'),(1348,'price_high','','Price High','Ø³Ø¹Ø± Ù…Ø±ØªÙØ¹','Prijs hoog','Prix â€‹â€‹haut','Preis hoch','Prezzo alto','PreÃ§o alto','Ð’Ñ‹ÑÐ¾ÐºÐ°Ñ Ñ†ÐµÐ½Ð°','Precio alto','Fiyat yÃ¼ksek'),(1349,'view','','View','Ø±Ø£ÙŠ','Uitzicht','Vue','Aussicht','vista','VisÃ£o','ÐŸÐ¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ','Ver','GÃ¶rÃ¼nÃ¼m'),(1350,'buy','','Buy','ÙŠØ´ØªØ±Ù‰','Kopen','Acheter','Kaufen','Acquistare','Comprar','ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ','Comprar','satÄ±n almak'),(1351,'community','','Community','ØªÙˆØ§ØµÙ„ Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠ','Gemeenschap','CommunautÃ©','Gemeinschaft','ComunitÃ ','Comunidade','ÑÐ¾Ð¾Ð±Ñ‰ÐµÑÑ‚Ð²Ð¾','Comunidad','Topluluk'),(1352,'skip','','Skip','ØªØ®Ø·Ù‰','Overspringen','Sauter','Ãœberspringen','Salta','Pular','ÐŸÑ€Ð¾Ð¿ÑƒÑÐºÐ°Ñ‚ÑŒ','Omitir','atlamak'),(1353,'choose_image','','Choose Image','Ø§Ø®ØªØ± ØµÙˆØ±Ø©','Kies Afbeelding','Choisir une image','Bild auswÃ¤hlen','Scegli immagine','Escolher imagem','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ','Elegir imagen','Resim SeÃ§'),(1354,'upload_images','','Upload Images','ØªØ­Ù…ÙŠÙ„ Ø§Ù„ØµÙˆØ±','upload afbeeldingen','Importer des images','Bilder hochladen','Carica immagini','Enviar imagens','Ð·Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ','Subir imagenes','Resim YÃ¼kle'),(1355,'create_poll','','Create Poll','Ø¥Ù†Ø´Ø§Ø¡ Ø§Ø³ØªØ·Ù„Ø§Ø¹','Maak peiling','CrÃ©er un sondage','Umfrage erstellen','Crea sondaggio','Criar enquete','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð¾Ð¿Ñ€Ð¾Ñ','Crear encuesta','Anket Yarat'),(1356,'upload_video','','Upload Video','Ø±ÙØ¹ ÙÙŠØ¯ÙŠÙˆ','Upload video','TÃ©lÃ©charger une video','Video hochladen','Carica video','Envio vÃ­deo','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð²Ð¸Ð´ÐµÐ¾','Subir video','Video yÃ¼kle'),(1357,'create_post','','Create post','Ø¥Ù†Ø´Ø§Ø¡ Ù…Ù†Ø´ÙˆØ±','Maak bericht','CrÃ©er un post','Beitrag erstellen','Crea un post','Criar post','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð¿Ð¾ÑÑ‚','Crear publicaciÃ³n','GÃ¶nderi oluÅŸtur'),(1358,'record_voice','','Record voice','Ø³Ø¬Ù„ ØµÙˆØª','Spraak opnemen','Enregistrer la voix','Aufnahmestimme','Registra la voce','Gravar voz','Ð—Ð°Ð¿Ð¸ÑÑŒ Ð³Ð¾Ð»Ð¾ÑÐ°','Grabar voz','Ses kaydÄ±'),(1359,'feelings','','Feelings','Ù…Ø´Ø§Ø¹Ø±','Gevoelens','Sentiments','GefÃ¼hle','sentimenti','Sentimentos','Ð§ÑƒÐ²ÑÑ‚Ð²Ð°','Sentimientos','duygular'),(1360,'sell_product','','Sell product','Ø¨ÙŠØ¹ Ø§Ù„Ù…Ù†ØªØ¬','Verkoop product','Vendre un produit','Produkt verkaufen','Vendere il prodotto','Vender produto','ÐŸÑ€Ð¾Ð´Ð°Ñ‚ÑŒ Ñ‚Ð¾Ð²Ð°Ñ€','Vender producto','ÃœrÃ¼n satmak'),(1361,'upload_files','','Upload Files','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ù„ÙØ§Øª','Upload bestanden','TÃ©lÃ©charger des fichiers','Daten hochladen','Caricare files','Fazer upload de arquivos','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ñ„Ð°Ð¹Ð»Ñ‹','Subir archivos','DosyalarÄ± yÃ¼kle'),(1362,'stories','','Stories','Ù‚ØµØµ','verhalen','Histoires','Geschichten','Storie','HistÃ³rias','Ð Ð°ÑÑÐºÐ°Ð·Ñ‹','Cuentos','Hikayeler'),(1363,'create_story','','Create new story','Ø®Ù„Ù‚ Ù‚ØµØ© Ø¬Ø¯ÙŠØ¯Ø©','Maak een nieuw verhaal','CrÃ©er une nouvelle histoire','Erstelle eine neue Geschichte','Crea una nuova storia','Crie uma nova histÃ³ria','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð½Ð¾Ð²ÑƒÑŽ Ð¸ÑÑ‚Ð¾Ñ€Ð¸ÑŽ','Crear nueva historia','Yeni hikaye oluÅŸtur'),(1364,'no_more_views','','No more views','Ù„Ø§ Ù…Ø²ÙŠØ¯ Ù…Ù† ÙˆØ¬Ù‡Ø§Øª Ø§Ù„Ù†Ø¸Ø±','Geen zicht meer','Pas plus de vues','Keine weiteren Ansichten','Niente piÃ¹ visualizzazioni','NÃ£o hÃ¡ mais vistas','ÐÐµÑ‚ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€Ð¾Ð²','No mas vistas','BaÅŸka gÃ¶rÃ¼ntÃ¼ yok'),(1365,'whats_going','','What is going on','Ù…Ø§ Ø§Ù„Ø°ÙŠ ÙŠØ¬Ø±ÙŠ','Wat is er aan de hand','Que se passe-t-il','Was ist los','Cosa sta succedendo','O que estÃ¡ acontecendo','Ð§Ñ‚Ð¾ Ð·Ð´ÐµÑÑŒ Ð¿Ñ€Ð¾Ð¸ÑÑ…Ð¾Ð´Ð¸Ñ‚','Que esta pasando','Ne oluyor'),(1366,'view_more_post','','View {count} new post','Ø¹Ø±Ø¶ {count} Ù…Ø´Ø§Ø±ÙƒØ© Ø¬Ø¯ÙŠØ¯Ø©','Bekijk {count} nieuwe post','Voir {count} new post','{count} neuen Beitrag anzeigen','Visualizza {count} nuovo post','Ver {count} nova postagem','ÐŸÐ¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ {count} Ð½Ð¾Ð²Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Ver {count} nueva publicaciÃ³n','{count} yeni yayÄ±nÄ±nÄ± gÃ¶rÃ¼ntÃ¼leyin'),(1367,'my_info','','My Information','Ù…Ø¹Ù„ÙˆÙ…Ø§ØªÙŠ','Mijn informatie','Mon information','Meine Information','Le mie informazioni','Minha informaÃ§Ã£o','ÐœÐ¾Ñ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ','Mi informacion','Benim bilgim'),(1368,'to_download','','Please choose which information you would like to download','ÙŠØ±Ø¬Ù‰ Ø§Ø®ØªÙŠØ§Ø± Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„ØªÙŠ ØªØ±ØºØ¨ ÙÙŠ ØªÙ†Ø²ÙŠÙ„Ù‡Ø§','Kies alstublieft welke informatie u wilt downloaden','Veuillez choisir les informations que vous souhaitez tÃ©lÃ©charger','Bitte wÃ¤hlen Sie aus, welche Informationen Sie herunterladen mÃ¶chten','Si prega di scegliere quali informazioni si desidera scaricare','Por favor escolha qual informaÃ§Ã£o vocÃª gostaria de baixar','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ, ÐºÐ°ÐºÑƒÑŽ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸ÑŽ Ð²Ñ‹ Ñ…Ð¾Ñ‚ÐµÐ»Ð¸ Ð±Ñ‹ ÑÐºÐ°Ñ‡Ð°Ñ‚ÑŒ','Por favor, elija la informaciÃ³n que desea descargar','LÃ¼tfen hangi bilgileri indirmek istediÄŸinizi seÃ§in'),(1369,'download_file','','Download','ØªØ­Ù…ÙŠÙ„','Download','TÃ©lÃ©charger','Herunterladen','Scaricare','Baixar','Ð¡ÐºÐ°Ñ‡Ð°Ñ‚ÑŒ','Descargar','Ä°ndir'),(1370,'file_ready','','Your file is ready to download!','Ù…Ù„ÙÙƒ Ø¬Ø§Ù‡Ø² Ù„Ù„ØªÙ†Ø²ÙŠÙ„!','Uw bestand is klaar om te downloaden!','Votre fichier est prÃªt Ã  Ãªtre tÃ©lÃ©chargÃ©!','Ihre Datei steht zum Download bereit!','Il tuo file Ã¨ pronto per il download!','Seu arquivo estÃ¡ pronto para download!','Ð’Ð°Ñˆ Ñ„Ð°Ð¹Ð» Ð³Ð¾Ñ‚Ð¾Ð² Ðº Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐµ!','Su archivo estÃ¡ listo para descargar!','DosyanÄ±z indirilmeye hazÄ±r!'),(1371,'my_information','','My Information','Ù…Ø¹Ù„ÙˆÙ…Ø§ØªÙŠ','Mijn informatie','Mon information','Meine Information','Le mie informazioni','Minha informaÃ§Ã£o','ÐœÐ¾Ñ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ','Mi informacion','Benim bilgim'),(1372,'generate_file','','Generate file','ØªÙˆÙ„ÙŠØ¯ Ø§Ù„Ù…Ù„Ù','Genereer bestand','GÃ©nÃ©rer un fichier','Datei generieren','Genera file','Gerar arquivo','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ñ„Ð°Ð¹Ð»','Generar archivo','Dosya oluÅŸtur'),(1373,'edit_group','Edit group','Edit group','ØªØ­Ø±ÙŠØ± Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Groep bewerken','Editer le groupe','Gruppe bearbeiten','Modifica gruppo','Editar grupo','Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð³Ñ€ÑƒÐ¿Ð¿Ñƒ','Editar grupo','Grubu dÃ¼zenle'),(1374,'adult_image_file','We have detected some adult content on the image you uploaded, therefore we have declined your uploa','We have detected some adult content on the image you uploaded, therefore we have declined your upload process.','Ù„Ù‚Ø¯ Ø§ÙƒØªØ´ÙÙ†Ø§ Ø¨Ø¹Ø¶ Ù…Ø­ØªÙˆÙ‰ Ø§Ù„Ø¨Ø§Ù„ØºÙŠÙ† Ø¹Ù„Ù‰ Ø§Ù„ØµÙˆØ±Ø© Ø§Ù„ØªÙŠ Ù‚Ù…Øª Ø¨ØªØ­Ù…ÙŠÙ„Ù‡Ø§ ØŒ ÙˆØ¨Ø§Ù„ØªØ§Ù„ÙŠ ÙÙ‚Ø¯ Ø±ÙØ¶Ù†Ø§ Ø¹Ù…Ù„ÙŠØ© Ø§Ù„ØªØ­Ù…ÙŠÙ„.','We hebben een aantal inhoud voor volwassenen gevonden in de afbeelding die je hebt geÃ¼pload. Daarom hebben we je uploadproces geweigerd.','Nous avons dÃ©tectÃ© du contenu rÃ©servÃ© aux adultes sur l&#039;image que vous avez tÃ©lÃ©chargÃ©e. Par consÃ©quent, nous avons refusÃ© votre processus de tÃ©lÃ©chargement.','Wir haben in dem von Ihnen hochgeladenen Bild einige Inhalte fÃ¼r Erwachsene gefunden. Daher haben wir Ihren Upload-Vorgang abgelehnt.','Abbiamo rilevato alcuni contenuti per adulti nell&#039;immagine caricata, pertanto abbiamo rifiutato la procedura di caricamento.','DetetÃ¡mos algum conteÃºdo adulto na imagem que carregou, por isso, recusÃ¡mos o seu processo de carregamento.','ÐœÑ‹ Ð¾Ð±Ð½Ð°Ñ€ÑƒÐ¶Ð¸Ð»Ð¸ ÐºÐ¾Ð½Ñ‚ÐµÐ½Ñ‚ Ð´Ð»Ñ Ð²Ð·Ñ€Ð¾ÑÐ»Ñ‹Ñ… Ð½Ð° Ð·Ð°Ð³Ñ€ÑƒÐ¶ÐµÐ½Ð½Ð¾Ð¼ Ð²Ð°Ð¼Ð¸ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ð¸, Ð¿Ð¾ÑÑ‚Ð¾Ð¼Ñƒ Ð¼Ñ‹ Ð¾Ñ‚ÐºÐ»Ð¾Ð½Ð¸Ð»Ð¸ Ð¿Ñ€Ð¾Ñ†ÐµÑÑ Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐ¸.','Hemos detectado contenido para adultos en la imagen que subiste, por lo tanto, hemos rechazado tu proceso de carga.','YÃ¼klediÄŸiniz resimdeki bazÄ± yetiÅŸkinlere uygun iÃ§erik tespit ettik, bu nedenle yÃ¼kleme iÅŸleminizi reddetti.'),(1375,'view_image','View Image','View Image','Ø¹Ø±Ø¶ Ø§Ù„ØµÙˆØ±Ø©','Bekijk afbeelding','Voir l&#039;image','Bild ansehen','Guarda l&#039;immagine','Ver imagem','ÐŸÐ¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ','Ver imagen','Resmi gÃ¶rÃ¼ntÃ¼le'),(1376,'phone_number_error','Phone number should be as this format: +90..','Phone number should be as this format: +90..','ÙŠØ¬Ø¨ Ø£Ù† ÙŠÙƒÙˆÙ† Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ Ø¨Ù‡Ø°Ø§ Ø§Ù„Ø´ÙƒÙ„: +90 ..','Het telefoonnummer moet de volgende indeling hebben: +90 ..','Le numÃ©ro de tÃ©lÃ©phone doit Ãªtre au format suivant: +90 ..','Die Telefonnummer sollte folgendes Format haben: +90 ..','Il numero di telefono deve essere in questo formato: +90 ..','NÃºmero de telefone deve ser como este formato: +90 ..','ÐÐ¾Ð¼ÐµÑ€ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð° Ð´Ð¾Ð»Ð¶ÐµÐ½ Ð±Ñ‹Ñ‚ÑŒ Ð² Ñ‚Ð°ÐºÐ¾Ð¼ Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ðµ: +90 ..','El nÃºmero de telÃ©fono debe tener este formato: +90 ..','Telefon numarasÄ± ÅŸu ÅŸekilde olmalÄ±dÄ±r: +90 ..'),(1377,'something_wrong','Something went wrong, please try again later.','Something went wrong, please try again later.','Ù‡Ù†Ø§Ùƒ Ø´Ø¦ Ø®Ø§Ø·Ø¦ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© ÙÙ‰ ÙˆÙ‚Øª Ù„Ø§Ø­Ù‚.','Er is iets misgegaan. Probeer het later opnieuw.','Quelque chose c&#039;est mal passÃ©. Merci d&#039;essayer plus tard.','Etwas ist schief gelaufen, bitte versuchen Sie es spÃ¤ter erneut.','Qualcosa Ã¨ andato storto, ti preghiamo di riprovare piÃ¹ tardi.','Algo deu errado, por favor, tente novamente mais tarde.','Ð§Ñ‚Ð¾-Ñ‚Ð¾ Ð¿Ð¾ÑˆÐ»Ð¾ Ð½Ðµ Ñ‚Ð°Ðº. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÑƒ Ð¿Ð¾Ð·Ð¶Ðµ.','Algo saliÃ³ mal, por favor intente de nuevo mÃ¡s tarde.','Bir ÅŸeyler yanlÄ±ÅŸ oldu. LÃ¼tfen sonra tekrar deneyiniz.'),(1378,'confirmation_code','Confirmation code','Confirmation code','ØªØ£ÙƒÙŠØ¯ Ø§Ù„ÙƒÙˆØ¯','Bevestigingscode','Code de confirmation','BestÃ¤tigungscode','Codice di conferma','CÃ³digo de confirmaÃ§Ã£o','ÐšÐ¾Ð´ Ð´Ð»Ñ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ','CÃ³digo de confirmaciÃ³n','Onay kodu'),(1379,'your_phone_verified','Your phone number has been successfully verified.','Your phone number has been successfully verified.','ØªÙ… Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ø±Ù‚Ù… Ù‡Ø§ØªÙÙƒ Ø¨Ù†Ø¬Ø§Ø­.','Uw telefoonnummer is succesvol geverifieerd.','Votre numÃ©ro de tÃ©lÃ©phone a Ã©tÃ© vÃ©rifiÃ© avec succÃ¨s.','Ihre Telefonnummer wurde erfolgreich verifiziert.','Il tuo numero di telefono Ã¨ stato verificato con successo.','Seu nÃºmero de telefone foi confirmado com sucesso.','Ð’Ð°Ñˆ Ð½Ð¾Ð¼ÐµÑ€ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð° Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½.','Su nÃºmero de telÃ©fono ha sido verificado con Ã©xito.','Telefon numaranÄ±z baÅŸarÄ±yla doÄŸrulandÄ±.'),(1380,'your_email_verified','Your E-mail has been successfully verified.','Your E-mail has been successfully verified.','ØªÙ… Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ø¨Ø±ÙŠØ¯Ùƒ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø¨Ù†Ø¬Ø§Ø­.','Uw e-mail is succesvol geverifieerd.','Votre courriel a Ã©tÃ© vÃ©rifiÃ© avec succÃ¨s.','Ihre E-Mail-Adresse wurde erfolgreich verifiziert.','La tua e-mail Ã¨ stata verificata con successo.','Seu e-mail foi verificado com sucesso.','Ð’Ð°Ñˆ E-mail Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½.','Su correo electrÃ³nico ha sido verificado con Ã©xito.','E-posta adresiniz baÅŸarÄ±yla doÄŸrulandÄ±.'),(1381,'your_phone_email_verified','Your phone number and E-mail have been successfully verified.','Your phone number and E-mail have been successfully verified.','ØªÙ… Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ø±Ù‚Ù… Ù‡Ø§ØªÙÙƒ ÙˆØ§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø¨Ù†Ø¬Ø§Ø­.','Uw telefoonnummer en e-mail zijn succesvol geverifieerd.','Votre numÃ©ro de tÃ©lÃ©phone et votre adresse e-mail ont Ã©tÃ© vÃ©rifiÃ©s avec succÃ¨s.','Ihre Telefonnummer und E-Mail-Adresse wurden erfolgreich verifiziert.','Il tuo numero di telefono e l&#039;e-mail sono stati verificati con successo.','Seu nÃºmero de telefone e e-mail foram verificados com sucesso.','Ð’Ð°Ñˆ Ð½Ð¾Ð¼ÐµÑ€ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð° Ð¸ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹ Ð±Ñ‹Ð»Ð¸ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐµÐ½Ñ‹.','Su nÃºmero de telÃ©fono y correo electrÃ³nico se han verificado con Ã©xito.','Telefon numaranÄ±z ve E-posta adresiniz baÅŸarÄ±yla doÄŸrulandÄ±.'),(1382,'confirmation_email_sent','A confirmation email has been sent.','A confirmation email has been sent.','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø±Ø³Ø§Ù„Ø© ØªØ£ÙƒÙŠØ¯ Ø¨Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ.','Er is een bevestigingsmail verzonden.','Un email de confirmation a Ã©tÃ© envoyÃ©.','Eine BestÃ¤tigungs-E-Mail wurde gesendet.','Ãˆ stata inviata una email di conferma.','Um email de confirmaÃ§Ã£o foi enviado.','ÐŸÐ¸ÑÑŒÐ¼Ð¾ Ñ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸ÐµÐ¼ Ð±Ñ‹Ð»Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾.','Un correo electrÃ³nico de confirmaciÃ³n ha sido enviado.','Bir onay e-postasÄ± gÃ¶nderildi.'),(1383,'confirmation_message_sent','A confirmation message was sent.','A confirmation message was sent.','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø±Ø³Ø§Ù„Ø© ØªØ£ÙƒÙŠØ¯.','Er is een bevestigingsbericht verzonden.','Un message de confirmation a Ã©tÃ© envoyÃ©.','Eine BestÃ¤tigungsnachricht wurde gesendet.','Ãˆ stato inviato un messaggio di conferma.','Uma mensagem de confirmaÃ§Ã£o foi enviada.','ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ðµ Ð±Ñ‹Ð»Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾.','Se enviÃ³ un mensaje de confirmaciÃ³n.','Bir onay mesajÄ± gÃ¶nderildi.'),(1384,'confirmation_message_email_sent','A confirmation message and email were sent.','A confirmation message and email were sent.','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø±Ø³Ø§Ù„Ø© ØªØ£ÙƒÙŠØ¯ ÙˆØ§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ.','Een bevestigingsbericht en e-mail zijn verzonden.','Un message de confirmation et un email ont Ã©tÃ© envoyÃ©s.','Eine BestÃ¤tigungsnachricht und eine E-Mail wurden gesendet.','Sono stati inviati un messaggio di conferma e un&#039;e-mail.','Uma mensagem de confirmaÃ§Ã£o e email foram enviados.','ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ðµ Ð¸ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ð¸ÑÑŒÐ¼Ð¾ Ð±Ñ‹Ð»Ð¸ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ñ‹.','Se enviÃ³ un mensaje de confirmaciÃ³n y correo electrÃ³nico.','Bir onay mesajÄ± ve e-posta gÃ¶nderildi.'),(1385,'confirmation_email','We have sent an email that contains the confirmation code to verify your new email.','We have sent an email that contains the confirmation code to verify your new email.','Ù„Ù‚Ø¯ Ø£Ø±Ø³Ù„Ù†Ø§ Ø±Ø³Ø§Ù„Ø© Ø¨Ø±ÙŠØ¯ Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ ØªØ­ØªÙˆÙŠ Ø¹Ù„Ù‰ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯ Ù„Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ø¨Ø±ÙŠØ¯Ùƒ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø§Ù„Ø¬Ø¯ÙŠØ¯.','We hebben een e-mail gestuurd met de bevestigingscode om uw nieuwe e-mailadres te verifiÃ«ren.','Nous avons envoyÃ© un email contenant le code de confirmation pour vÃ©rifier votre nouvel email.','Wir haben eine E-Mail mit dem BestÃ¤tigungscode zur BestÃ¤tigung Ihrer neuen E-Mail gesendet.','Abbiamo inviato un&#039;email che contiene il codice di conferma per verificare la tua nuova email.','EnviÃ¡mos um email com o cÃ³digo de confirmaÃ§Ã£o para confirmar o seu novo email.','ÐœÑ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¸ Ð¿Ð¸ÑÑŒÐ¼Ð¾, ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ñ‰ÐµÐµ ÐºÐ¾Ð´ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚ÑŒ Ð²Ð°Ñˆ Ð½Ð¾Ð²Ñ‹Ð¹ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹.','Hemos enviado un correo electrÃ³nico que contiene el cÃ³digo de confirmaciÃ³n para verificar su nuevo correo electrÃ³nico.','Yeni e-postanÄ±zÄ± doÄŸrulamak iÃ§in onay kodunu iÃ§eren bir e-posta gÃ¶nderdik.'),(1386,'confirmation_message','We have sent a message that contains the confirmation code to verify your new phone.','We have sent a message that contains the confirmation code to verify your new phone.','Ù„Ù‚Ø¯ Ø£Ø±Ø³Ù„Ù†Ø§ Ø±Ø³Ø§Ù„Ø© ØªØ­ØªÙˆÙŠ Ø¹Ù„Ù‰ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯ Ù„Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ù‡Ø§ØªÙÙƒ Ø§Ù„Ø¬Ø¯ÙŠØ¯.','We hebben een bericht verzonden met de bevestigingscode om je nieuwe telefoon te verifiÃ«ren.','Nous avons envoyÃ© un message contenant le code de confirmation pour vÃ©rifier votre nouveau tÃ©lÃ©phone.','Wir haben eine Nachricht mit dem BestÃ¤tigungscode zur BestÃ¤tigung Ihres neuen Telefons gesendet.','Abbiamo inviato un messaggio che contiene il codice di conferma per verificare il tuo nuovo telefono.','Enviamos uma mensagem que contÃ©m o cÃ³digo de confirmaÃ§Ã£o para confirmar seu novo telefone.','ÐœÑ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¸ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ñ ÐºÐ¾Ð´Ð¾Ð¼ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ Ð´Ð»Ñ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ Ð²Ð°ÑˆÐµÐ³Ð¾ Ð½Ð¾Ð²Ð¾Ð³Ð¾ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ð°.','Hemos enviado un mensaje que contiene el cÃ³digo de confirmaciÃ³n para verificar su nuevo telÃ©fono.','Yeni telefonunuzu doÄŸrulamak iÃ§in onay kodunu iÃ§eren bir mesaj gÃ¶nderdik.'),(1387,'confirmation_email_message_text','We have sent a message and an email that contain the confirmation code to enable two-factor authenti','We have sent a message and an email that contain the confirmation code to enable two-factor authentication.','Ù„Ù‚Ø¯ Ø£Ø±Ø³Ù„Ù†Ø§ Ø±Ø³Ø§Ù„Ø© ÙˆØ±Ø³Ø§Ù„Ø© Ø¨Ø±ÙŠØ¯ Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ ØªØ­ØªÙˆÙŠ Ø¹Ù„Ù‰ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯ Ù„ØªÙ…ÙƒÙŠÙ† Ø§Ù„Ù…ØµØ§Ø¯Ù‚Ø© Ø§Ù„Ø«Ù†Ø§Ø¦ÙŠØ©.','We hebben een bericht en een e-mail verzonden met de bevestigingscode om verificatie met twee factoren mogelijk te maken.','Nous avons envoyÃ© un message et un courrier Ã©lectronique contenant le code de confirmation pour permettre une authentification Ã  deux facteurs.','Wir haben eine Nachricht und eine E-Mail mit dem BestÃ¤tigungscode fÃ¼r die Zwei-Faktor-Authentifizierung gesendet.','Abbiamo inviato un messaggio e un&#039;email contenente il codice di conferma per abilitare l&#039;autenticazione a due fattori.','Enviamos uma mensagem e um email que contÃ©m o cÃ³digo de confirmaÃ§Ã£o para ativar a autenticaÃ§Ã£o de dois fatores.','ÐœÑ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¸ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð¸ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ð¸ÑÑŒÐ¼Ð¾ Ñ ÐºÐ¾Ð´Ð¾Ð¼ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð²ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ð´Ð²ÑƒÑ…Ñ„Ð°ÐºÑ‚Ð¾Ñ€Ð½ÑƒÑŽ Ð°ÑƒÑ‚ÐµÐ½Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ†Ð¸ÑŽ.','Hemos enviado un mensaje y un correo electrÃ³nico que contiene el cÃ³digo de confirmaciÃ³n para habilitar la autenticaciÃ³n de dos factores.','Ä°ki faktÃ¶rlÃ¼ kimlik doÄŸrulamayÄ± etkinleÅŸtirmek iÃ§in onay kodunu iÃ§eren bir mesaj ve e-posta gÃ¶nderdik.'),(1388,'confirmation_email_text','We have sent an email that contains the confirmation code to enable Two-factor authentication.','We have sent an email that contains the confirmation code to enable Two-factor authentication.','Ù„Ù‚Ø¯ Ø£Ø±Ø³Ù„Ù†Ø§ Ø±Ø³Ø§Ù„Ø© Ø¨Ø±ÙŠØ¯ Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ ØªØ­ØªÙˆÙŠ Ø¹Ù„Ù‰ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯ Ù„ØªÙ…ÙƒÙŠÙ† Ø§Ù„Ù…ØµØ§Ø¯Ù‚Ø© Ø§Ù„Ø«Ù†Ø§Ø¦ÙŠØ©.','We hebben een e-mail gestuurd met de bevestigingscode om Two-factor-authenticatie in te schakelen.','Nous avons envoyÃ© un courrier Ã©lectronique contenant le code de confirmation pour activer l&#039;authentification Ã  deux facteurs.','Wir haben eine E-Mail mit dem BestÃ¤tigungscode fÃ¼r die Zwei-Faktor-Authentifizierung gesendet.','Abbiamo inviato un messaggio di posta elettronica contenente il codice di conferma per abilitare l&#039;autenticazione a due fattori.','Enviamos um email que contÃ©m o cÃ³digo de confirmaÃ§Ã£o para ativar a autenticaÃ§Ã£o de dois fatores.','ÐœÑ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¸ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ð¸ÑÑŒÐ¼Ð¾ Ñ ÐºÐ¾Ð´Ð¾Ð¼ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ Ð´Ð»Ñ Ð²ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ñ Ð´Ð²ÑƒÑ…Ñ„Ð°ÐºÑ‚Ð¾Ñ€Ð½Ð¾Ð¹ Ð°ÑƒÑ‚ÐµÐ½Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ†Ð¸Ð¸.','Hemos enviado un correo electrÃ³nico que contiene el cÃ³digo de confirmaciÃ³n para habilitar la autenticaciÃ³n de dos factores.','Ä°ki faktÃ¶rlÃ¼ kimlik doÄŸrulamayÄ± etkinleÅŸtirmek iÃ§in onay kodunu iÃ§eren bir e-posta gÃ¶nderdik.'),(1389,'confirmation_message_text','We have sent a message that contains the confirmation code to enable Two-factor authentication.','We have sent a message that contains the confirmation code to enable Two-factor authentication.','Ù„Ù‚Ø¯ Ø£Ø±Ø³Ù„Ù†Ø§ Ø±Ø³Ø§Ù„Ø© ØªØ­ØªÙˆÙŠ Ø¹Ù„Ù‰ Ø±Ù…Ø² Ø§Ù„ØªØ£ÙƒÙŠØ¯ Ù„ØªÙ…ÙƒÙŠÙ† Ø§Ù„Ù…ØµØ§Ø¯Ù‚Ø© Ø§Ù„Ø«Ù†Ø§Ø¦ÙŠØ©.','We hebben een bericht verzonden met de bevestigingscode om tweeledige verificatie in te schakelen.','Nous avons envoyÃ© un message contenant le code de confirmation pour activer l&#039;authentification Ã  deux facteurs.','Wir haben eine Nachricht mit dem BestÃ¤tigungscode zur Aktivierung der Zwei-Faktor-Authentifizierung gesendet.','Abbiamo inviato un messaggio che contiene il codice di conferma per abilitare l&#039;autenticazione a due fattori.','Enviamos uma mensagem que contÃ©m o cÃ³digo de confirmaÃ§Ã£o para ativar a autenticaÃ§Ã£o de dois fatores.','ÐœÑ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¸ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ñ ÐºÐ¾Ð´Ð¾Ð¼ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ Ð´Ð»Ñ Ð²ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ñ Ð´Ð²ÑƒÑ…Ñ„Ð°ÐºÑ‚Ð¾Ñ€Ð½Ð¾Ð¹ Ð°ÑƒÑ‚ÐµÐ½Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ†Ð¸Ð¸.','Hemos enviado un mensaje que contiene el cÃ³digo de confirmaciÃ³n para habilitar la autenticaciÃ³n de dos factores.','Ä°ki faktÃ¶rlÃ¼ kimlik doÄŸrulamayÄ± etkinleÅŸtirmek iÃ§in onay kodunu iÃ§eren bir mesaj gÃ¶nderdik.'),(1390,'share_post_on_group','Share post on a group','Share post on a group','Ù…Ø´Ø§Ø±ÙƒØ© Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ© Ø¹Ù„Ù‰ Ù…Ø¬Ù…ÙˆØ¹Ø©','Deel bericht over een groep','Partager un post sur un groupe','Post in einer Gruppe teilen','Condividi post su un gruppo','Compartilhar postagem em um grupo','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ñ‚ÑŒÑÑ Ð¿Ð¾ÑÑ‚Ð¾Ð¼ Ð² Ð³Ñ€ÑƒÐ¿Ð¿Ðµ','Compartir publicaciÃ³n en un grupo','Bir gruptaki yayÄ±nÄ± paylaÅŸ'),(1391,'please_group_name','Please write the group name','Please write the group name','ÙŠØ±Ø¬Ù‰ ÙƒØªØ§Ø¨Ø© Ø§Ø³Ù… Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Schrijf de groepsnaam op','S&#039;il vous plaÃ®t Ã©crivez le nom du groupe','Bitte geben Sie den Gruppennamen an','Si prega di scrivere il nome del gruppo','Por favor, escreva o nome do grupo','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð½Ð°Ð¿Ð¸ÑˆÐ¸Ñ‚Ðµ Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','Por favor escriba el nombre del grupo','LÃ¼tfen grup adÄ±nÄ± yazÄ±nÄ±z'),(1392,'share_post_on_page','Share to a page','Share to a page','Ù…Ø´Ø§Ø±ÙƒØ© Ø¥Ù„Ù‰ ØµÙØ­Ø©','Deel naar een pagina','Partager sur une page','Teilen Sie auf einer Seite','Condividi su una pagina','Compartilhar para uma pÃ¡gina','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ñ‚ÑŒÑÑ Ð½Ð° ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ðµ','Compartir en una pÃ¡gina','Bir sayfada paylaÅŸ'),(1393,'please_page_name','Please type the page name','Please type the page name','ÙŠØ±Ø¬Ù‰ ÙƒØªØ§Ø¨Ø© Ø§Ø³Ù… Ø§Ù„ØµÙØ­Ø©','Voer de paginanaam in','Veuillez taper le nom de la page','Bitte geben Sie den Seitennamen ein','Si prega di digitare il nome della pagina','Por favor, digite o nome da pÃ¡gina','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','Por favor escriba el nombre de la pÃ¡gina','LÃ¼tfen sayfa adÄ±nÄ± yazÄ±n'),(1394,'share_post_on_user','Share to user','Share to user','Ø­ØµØ© Ù„Ù„Ù…Ø³ØªØ®Ø¯Ù…','Deel met gebruiker','Partager avec l&#039;utilisateur','FÃ¼r den Benutzer freigeben','Condividi per l&#039;utente','Compartilhar para o usuÃ¡rio','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ñ‚ÑŒÑÑ Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¼','Compartir al usuario','KullanÄ±cÄ±ya paylaÅŸ'),(1395,'post_shared_successfully','Post has been successfully shared.','Post has been successfully shared.','ØªÙ…Øª Ù…Ø´Ø§Ø±ÙƒØ© Ø§Ù„Ù…Ø´Ø§Ø±ÙƒØ© Ø¨Ù†Ø¬Ø§Ø­.','Post is succesvol gedeeld.','La publication a Ã©tÃ© partagÃ©e avec succÃ¨s.','Beitrag wurde erfolgreich geteilt.','Post Ã¨ stato condiviso con successo.','Post foi compartilhado com sucesso.','ÐŸÐ¾ÑÑ‚ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð½.','La publicaciÃ³n ha sido compartida con Ã©xito.','YayÄ±n baÅŸarÄ±yla paylaÅŸÄ±ldÄ±.'),(1396,'to','To','To','Ø¥Ù„Ù‰','Naar','Ã€','Zu','A','Para','Ðº','A','iÃ§in'),(1397,'share_new_post','Share the post on','Share the post on','Ù…Ø´Ø§Ø±ÙƒØ© Ø§Ù„Ù…Ù†Ø´ÙˆØ± Ø¹Ù„Ù‰','Deel het bericht op','Partager le post sur','Teilen Sie den Beitrag auf','Condividi il post su','Compartilhe a postagem em','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ñ‚ÑŒÑÑ Ð¿Ð¾ÑÑ‚Ð¾Ð¼ Ð½Ð°','Comparte la publicaciÃ³n en','YayÄ±nÄ± paylaÅŸ'),(1398,'shared_a_post','shared a','shared a','Ø´Ø§Ø±Ùƒ','gedeeld','partagÃ© un','geteilt a','condiviso a','compartilhou um','Ð¿Ð¾Ð´ÐµÐ»Ð¸Ð»ÑÑ','compartiÃ³ un','paylaÅŸtÄ±'),(1399,'shared_your_post','shared your post','shared your post','Ø´Ø§Ø±Ùƒ Ù…Ø´Ø§Ø±ÙƒØªÙƒ','heeft je bericht gedeeld','partagÃ© votre post','hat deinen Beitrag geteilt','ha condiviso il tuo post','compartilhou sua postagem','Ð¿Ð¾Ð´ÐµÐ»Ð¸Ð»ÑÑ ÑÐ²Ð¾Ð¸Ð¼ Ð¿Ð¾ÑÑ‚Ð¾Ð¼','compartiÃ³ su publicaciÃ³n','yayÄ±nÄ±nÄ±zÄ± paylaÅŸtÄ±'),(1400,'shared_a_post_in_timeline','shared a post to your timeline','shared a post to your timeline','Ø´Ø§Ø±Ùƒ Ù…Ù†Ø´ÙˆØ±Ù‹Ø§ ÙÙŠ Ø§Ù„Ø¬Ø¯ÙˆÙ„ Ø§Ù„Ø²Ù…Ù†ÙŠ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ','heeft een bericht gedeeld op je tijdlijn','partagÃ© un post sur votre timeline','hat einen Beitrag auf Ihrer Timeline geteilt','ha condiviso un post sulla tua cronologia','compartilhou uma postagem na sua linha do tempo','Ð¿Ð¾Ð´ÐµÐ»Ð¸Ð»ÑÑ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¼ Ñ Ð²Ð°ÑˆÐµÐ¹ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð½Ð¾Ð¹ ÑˆÐºÐ°Ð»Ð¾Ð¹','compartiÃ³ una publicaciÃ³n en su lÃ­nea de tiempo','zaman Ã§izelgenize bir yayÄ±n paylaÅŸtÄ±'),(1401,'no_shared','No shares yet','No shares yet','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ø³Ù‡Ù… Ø­ØªÙ‰ Ø§Ù„Ø¢Ù†','Nog geen aandelen','Pas encore d&#039;actions','Noch keine Aktien','Nessuna azione ancora','Ainda sem aÃ§Ãµes','Ð•Ñ‰Ðµ Ð½ÐµÑ‚ Ð°ÐºÑ†Ð¸Ð¹','No hay acciones aÃºn','HenÃ¼z paylaÅŸÄ±m yok'),(1402,'member','Member','Member','Ø¹Ø¶Ùˆ','Lid','Membre','Mitglied','Membro','Membro','Ñ‡Ð»ÐµÐ½','Miembro','Ã¼ye'),(1403,'pro_con','Congratulations ! You&#039;re now a','Congratulations ! You&#039;re now a','ØªÙ‡Ø§Ù†ÙŠÙ†Ø§ ! Ø§Ù†Øª Ø§Ù„Ø§Ù†','Gefeliciteerd! Je bent nu een','Toutes nos fÃ©licitations ! Vous Ãªtes maintenant un','Herzliche GlÃ¼ckwÃ¼nsche ! Du bist jetzt ein','Congratulazioni! Ora sei un','ParabÃ©ns! VocÃª Ã© agora um','ÐŸÐ¾Ð·Ð´Ñ€Ð°Ð²Ð»ÑÑŽ! Ð¢ÐµÐ¿ÐµÑ€ÑŒ Ñ‚Ñ‹','Felicidades ! Ahora eres un','Tebrikler! Sen ÅŸimdi'),(1404,'other','Other','Other','Ø¢Ø®Ø±','anders','Autre','Andere','Altro','De outros','Ð”Ñ€ÑƒÐ³Ð¾Ð¹','Otro','DiÄŸer'),(1405,'all_','All','All','Ø§Ù„ÙƒÙ„','Allemaal','Tout','Alles','Tutti','Todos','Ð’ÑÐµ','Todos','HerÅŸey'),(1406,'users_liked_post','People liked this post','People liked this post','Ø£Ø­Ø¨ Ø§Ù„Ù†Ø§Ø³ Ù‡Ø°Ø§ Ø§Ù„Ù…Ù†ØµØ¨','Mensen vonden deze post leuk','Les gens ont aimÃ© ce post','Die Leute mochten diesen Beitrag','Alla gente Ã¨ piaciuto questo post','Pessoas gostaram deste post','Ð›ÑŽÐ´ÑÐ¼ Ð¿Ð¾Ð½Ñ€Ð°Ð²Ð¸Ð»ÑÑ ÑÑ‚Ð¾Ñ‚ Ð¿Ð¾ÑÑ‚','A la gente le ha gustado esta publicaciÃ³n.','Ä°nsanlar bu yayÄ±nÄ± beÄŸendi'),(1407,'users_wondered_post','People wondered this post','People wondered this post','ØªØ³Ø§Ø¡Ù„ Ø§Ù„Ù†Ø§Ø³ Ù‡Ø°Ø§ Ø§Ù„Ù…Ù†ØµØ¨','Mensen vroegen zich af deze post','Les gens se demandaient ce post','Die Leute wunderten sich Ã¼ber diesen Beitrag','La gente si chiedeva questo post','As pessoas se perguntaram este post','Ð›ÑŽÐ´Ð¸ Ð·Ð°Ð´Ð°Ð²Ð°Ð»Ð¸ÑÑŒ Ð²Ð¾Ð¿Ñ€Ð¾ÑÐ¾Ð¼ ÑÑ‚Ð¾Ñ‚ Ð¿Ð¾ÑÑ‚','La gente se preguntaba esta publicaciÃ³n.','Ä°nsanlar bu yayÄ±nÄ± merak etti'),(1408,'users_shared_post','People shared this post','People shared this post','Ø´Ø§Ø±Ùƒ Ø§Ù„Ù†Ø§Ø³ Ù‡Ø°Ø§ Ø§Ù„Ù…Ù†Ø´ÙˆØ±','Mensen hebben dit bericht gedeeld','Les gens ont partagÃ© ce post','Die Leute haben diesen Beitrag geteilt','Le persone hanno condiviso questo post','As pessoas compartilharam esta postagem','Ð›ÑŽÐ´Ð¸ Ð¿Ð¾Ð´ÐµÐ»Ð¸Ð»Ð¸ÑÑŒ ÑÑ‚Ð¸Ð¼ Ð¿Ð¾ÑÑ‚Ð¾Ð¼','Personas compartieron esta publicaciÃ³n','Ä°nsanlar bu yayÄ±nÄ± paylaÅŸtÄ±'),(1409,'users_reacted_post','People reacted to this post','People reacted to this post','ÙƒØ§Ù† Ø±Ø¯ ÙØ¹Ù„ Ø§Ù„Ù†Ø§Ø³ Ø¹Ù„Ù‰ Ù‡Ø°Ø§ Ø§Ù„Ù…Ù†ØµØ¨','Mensen reageerden op dit bericht','Les gens ont rÃ©agi Ã  ce post','Die Leute haben auf diesen Beitrag reagiert','Le persone hanno reagito a questo post','As pessoas reagiram a este post','Ð›ÑŽÐ´Ð¸ Ð¾Ñ‚Ñ€ÐµÐ°Ð³Ð¸Ñ€Ð¾Ð²Ð°Ð»Ð¸ Ð½Ð° ÑÑ‚Ð¾Ñ‚ Ð¿Ð¾ÑÑ‚','La gente reaccionÃ³ a este post.','Ä°nsanlar bu yayÄ±na yanÄ±t verdi'),(1410,'users_wondered_comment','People wondered this comment','People wondered this comment','ØªØ³Ø§Ø¡Ù„ Ø§Ù„Ù†Ø§Ø³ Ù‡Ø°Ø§ Ø§Ù„ØªØ¹Ù„ÙŠÙ‚','Mensen vroegen zich af deze opmerking','Les gens se demandaient ce commentaire','Die Leute wunderten sich Ã¼ber diesen Kommentar','La gente si chiedeva questo commento','As pessoas se perguntaram esse comentÃ¡rio','Ð›ÑŽÐ´Ð¸ Ð·Ð°Ð´Ð°Ð²Ð°Ð»Ð¸ÑÑŒ Ð²Ð¾Ð¿Ñ€Ð¾ÑÐ¾Ð¼ ÑÑ‚Ð¾Ñ‚ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','La gente se pregunta este comentario.','Ä°nsanlar bu yorumu merak etti'),(1411,'users_liked_comment','People liked this comment','People liked this comment','Ø£Ø­Ø¨ Ø§Ù„Ù†Ø§Ø³ Ù‡Ø°Ø§ Ø§Ù„ØªØ¹Ù„ÙŠÙ‚','Mensen vonden deze reactie leuk','Les gens ont aimÃ© ce commentaire','Die Leute mochten diesen Kommentar','Alla gente Ã¨ piaciuto questo commento','Pessoas gostaram deste comentÃ¡rio','Ð›ÑŽÐ´ÑÐ¼ Ð¿Ð¾Ð½Ñ€Ð°Ð²Ð¸Ð»ÑÑ ÑÑ‚Ð¾Ñ‚ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹','La gente ha gustado este comentario.','Ä°nsanlar bu yorumu beÄŸendi'),(1412,'reCaptcha_error','Please check the re-captcha.','Please check the re-captcha.','ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ø¥Ø¹Ø§Ø¯Ø© Ø§Ø®ØªØ¨Ø§Ø± captcha.','Controleer de re-captcha.','S&#039;il vous plaÃ®t vÃ©rifier le re-captcha.','Bitte Ã¼berprÃ¼fen Sie das Captcha erneut.','Si prega di controllare il re-captcha.','Por favor, verifique o re-captcha.','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð½ÑƒÑŽ ÐºÐ°Ð¿Ñ‡Ñƒ.','Por favor, compruebe el re-captcha.','LÃ¼tfen re-captcha&#039;yÄ± kontrol edin.'),(1413,'my','My','My','Ù„ÙŠ','Mijn','ma','Meine','Mio','Minhas','Ð¼Ð¾Ð¹','Mi','Benim'),(1414,'bank_transfer','Bank transfer','Bank transfer','Ø§Ù„ØªØ­ÙˆÙŠÙ„ Ø§Ù„Ù…ØµØ±ÙÙŠ','overschrijving','virement','BankÃ¼berweisung','trasferimento bancario','transferÃªncia bancÃ¡ria','Ð±Ð°Ð½ÐºÐ¾Ð²ÑÐºÐ¸Ð¹ Ð¿ÐµÑ€ÐµÐ²Ð¾Ð´','transferencia bancaria','banka transferi'),(1415,'bank_transfer_request','Your request has been successfully sent, we will notify you once it&#039;s approved','Your request has been successfully sent, we will notify you once it&#039;s approved','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø·Ù„Ø¨Ùƒ Ø¨Ù†Ø¬Ø§Ø­ ØŒ ÙˆØ³ÙˆÙ Ù†Ø®Ø·Ø±Ùƒ Ø¨Ù…Ø¬Ø±Ø¯ Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„ÙŠÙ‡','Uw verzoek is succesvol verzonden, wij zullen u op de hoogte brengen zodra het is goedgekeurd','Votre demande a Ã©tÃ© envoyÃ©e avec succÃ¨s, nous vous en informerons une fois approuvÃ©e','Ihre Anfrage wurde erfolgreich gesendet, wir werden Sie benachrichtigen, sobald sie genehmigt wurde','La tua richiesta Ã¨ stata inviata con successo, ti avviseremo una volta approvata','O seu pedido foi enviado com sucesso, iremos notificÃ¡-lo assim que for aprovado','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½, Ð¼Ñ‹ ÑÐ¾Ð¾Ð±Ñ‰Ð¸Ð¼ Ð²Ð°Ð¼, ÐºÐ°Ðº Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ð¾Ð½ Ð±ÑƒÐ´ÐµÑ‚ Ð¾Ð´Ð¾Ð±Ñ€ÐµÐ½','Su solicitud ha sido enviada exitosamente, le notificaremos una vez que sea aprobada.','Ä°steÄŸiniz baÅŸarÄ±yla gÃ¶nderildi, onaylandÄ±ktan sonra sizi bilgilendireceÄŸiz'),(1416,'bank_pro','Your bank receipt has been approved!','Your bank receipt has been approved!','ØªÙ…Øª Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„Ù‰ Ø¥ÙŠØµØ§Ù„Ùƒ Ø§Ù„Ù…ØµØ±ÙÙŠ!','Uw bank-factuur is goedgekeurd!','Votre facture bancaire a Ã©tÃ© approuvÃ©e!','Ihre Bankquittung wurde genehmigt!','La tua ricevuta bancaria Ã¨ stata approvata!','Seu recibo bancÃ¡rio foi aprovado!','Ð’Ð°ÑˆÐ° Ð±Ð°Ð½ÐºÐ¾Ð²ÑÐºÐ°Ñ ÐºÐ²Ð¸Ñ‚Ð°Ð½Ñ†Ð¸Ñ Ð±Ñ‹Ð»Ð° Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð°!','Su recibo bancario ha sido aprobado!','Banka dekontunuz onaylandÄ±!'),(1417,'bank_decline','Your bank receipt has been declined!','Your bank receipt has been declined!','ØªÙ… Ø±ÙØ¶ Ø¥ÙŠØµØ§Ù„Ùƒ Ø§Ù„Ù…ØµØ±ÙÙŠ!','Uw bankbewijs is geweigerd!','Votre facture bancaire a Ã©tÃ© refusÃ©e!','Ihr Bankbeleg wurde abgelehnt!','La tua ricevuta bancaria Ã¨ stata rifiutata!','Seu recibo bancÃ¡rio foi recusado!','Ð’Ð°ÑˆÐ° Ð±Ð°Ð½ÐºÐ¾Ð²ÑÐºÐ°Ñ ÐºÐ²Ð¸Ñ‚Ð°Ð½Ñ†Ð¸Ñ Ð±Ñ‹Ð»Ð° Ð¾Ñ‚ÐºÐ»Ð¾Ð½ÐµÐ½Ð°!','Su recibo bancario ha sido rechazado!','Banka dekontunuz reddedildi!'),(1418,'my_timeline','My Timeline','My Timeline','Ø¨Ù„Ø¯ÙŠ Ø§Ù„Ø¬Ø¯ÙˆÙ„ Ø§Ù„Ø²Ù…Ù†ÙŠ','Mijn tijdlijn','Ma chronologie','Mein Zeitplan','La mia cronologia','Minha linha do tempo','ÐœÐ¾Ð¹ Ð³Ñ€Ð°Ñ„Ð¸Ðº','Mi lÃ­nea de tiempo','Benim zaman Ã§izelgem'),(1419,'1419','category','Cars and Vehicles','Ø§Ù„Ø³ÙŠØ§Ø±Ø§Øª ÙˆØ§Ù„Ù…Ø±ÙƒØ¨Ø§Øª','Cars and Vehicles','Voitures et VÃ©hicules','Autos und Fahrzeuge','Motori','Carros e Ve&iacute;culos','ÐÐ²Ñ‚Ð¾Ð¼Ð¾Ð±Ð¸Ð»Ð¸ Ð¸ Ñ‚Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚','AutomÃ³viles y VehÃ­culos','Otomobil ve AraÃ§lar'),(1420,'1420','category','Cars and Vehicles','Ø§Ù„Ø³ÙŠØ§Ø±Ø§Øª ÙˆØ§Ù„Ù…Ø±ÙƒØ¨Ø§Øª','Cars and Vehicles','Voitures et VÃ©hicules','Autos und Fahrzeuge','Motori','Carros e Ve&iacute;culos','ÐÐ²Ñ‚Ð¾Ð¼Ð¾Ð±Ð¸Ð»Ð¸ Ð¸ Ñ‚Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚','AutomÃ³viles y VehÃ­culos','Otomobil ve AraÃ§lar'),(1421,'1421','category','Cars and Vehicles','Ø§Ù„Ø³ÙŠØ§Ø±Ø§Øª ÙˆØ§Ù„Ù…Ø±ÙƒØ¨Ø§Øª','Cars and Vehicles','Voitures et VÃ©hicules','Autos und Fahrzeuge','Motori','Carros e Ve&iacute;culos','ÐÐ²Ñ‚Ð¾Ð¼Ð¾Ð±Ð¸Ð»Ð¸ Ð¸ Ñ‚Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚','AutomÃ³viles y VehÃ­culos','Otomobil ve AraÃ§lar'),(1422,'1422','category','Comedy','ÙƒÙˆÙ…ÙŠØ¯ÙŠØ§','Comedy','ComÃ©die','KomÃ¶die','Commedia','Com&eacute;dia','ÐšÐ¾Ð¼ÐµÐ´Ð¸Ñ','Negocios y Oportunidades','Komedi'),(1423,'1423','category','Comedy','ÙƒÙˆÙ…ÙŠØ¯ÙŠØ§','Comedy','ComÃ©die','KomÃ¶die','Commedia','Com&eacute;dia','ÐšÐ¾Ð¼ÐµÐ´Ð¸Ñ','Negocios y Oportunidades','Komedi'),(1424,'1424','category','Comedy','ÙƒÙˆÙ…ÙŠØ¯ÙŠØ§','Comedy','ComÃ©die','KomÃ¶die','Commedia','Com&eacute;dia','ÐšÐ¾Ð¼ÐµÐ´Ð¸Ñ','Negocios y Oportunidades','Komedi'),(1425,'1425','category','Economics and Trade','Ø§Ù„Ø§Ù‚ØªØµØ§Ø¯ ÙˆØ§Ù„ØªØ¬Ø§Ø±Ø©','Economics and Trade','Economie et Commerce','Wirtschaft und Handel','Economia e commercio','Com&eacute;rcio e Economia','Ð­ÐºÐ¾Ð½Ð¾Ð¼Ð¸ÐºÐ° Ð¸ Ñ‚Ð¾Ñ€Ð³Ð¾Ð²Ð»Ñ','EconomÃ­a y Comercio','Ekonomi ve Ticaret'),(1426,'1426','category','Economics and Trade','Ø§Ù„Ø§Ù‚ØªØµØ§Ø¯ ÙˆØ§Ù„ØªØ¬Ø§Ø±Ø©','Economics and Trade','Economie et Commerce','Wirtschaft und Handel','Economia e commercio','Com&eacute;rcio e Economia','Ð­ÐºÐ¾Ð½Ð¾Ð¼Ð¸ÐºÐ° Ð¸ Ñ‚Ð¾Ñ€Ð³Ð¾Ð²Ð»Ñ','EconomÃ­a y Comercio','Ekonomi ve Ticaret'),(1427,'1427','category','Economics and Trade','Ø§Ù„Ø§Ù‚ØªØµØ§Ø¯ ÙˆØ§Ù„ØªØ¬Ø§Ø±Ø©','Economics and Trade','Economie et Commerce','Wirtschaft und Handel','Economia e commercio','Com&eacute;rcio e Economia','Ð­ÐºÐ¾Ð½Ð¾Ð¼Ð¸ÐºÐ° Ð¸ Ñ‚Ð¾Ñ€Ð³Ð¾Ð²Ð»Ñ','EconomÃ­a y Comercio','Ekonomi ve Ticaret'),(1428,'1428','category','Education','Ø«Ù‚Ø§ÙØ©','Education','Ã‰ducation','Bildung','Istruzione','Educa&ccedil;&atilde;o','ÐžÐ±Ñ€Ð°Ð·Ð¾Ð²Ð°Ð½Ð¸Ðµ','EducaciÃ³n','EÄŸitim'),(1429,'1429','category','Education','Ø«Ù‚Ø§ÙØ©','Education','Ã‰ducation','Bildung','Istruzione','Educa&ccedil;&atilde;o','ÐžÐ±Ñ€Ð°Ð·Ð¾Ð²Ð°Ð½Ð¸Ðµ','EducaciÃ³n','EÄŸitim'),(1430,'1430','category','Education','Ø«Ù‚Ø§ÙØ©','Education','Ã‰ducation','Bildung','Istruzione','Educa&ccedil;&atilde;o','ÐžÐ±Ñ€Ð°Ð·Ð¾Ð²Ð°Ð½Ð¸Ðµ','EducaciÃ³n','EÄŸitim'),(1431,'1431','category','Entertainment','ØªØ³Ù„ÙŠØ©','Entertainment','Divertissement','Unterhaltung','Entertainment','Entretenimento','Ð Ð°Ð·Ð²Ð»ÐµÑ‡ÐµÐ½Ð¸Ñ','Entretenimiento','EÄŸlence'),(1432,'1432','category','Entertainment','ØªØ³Ù„ÙŠØ©','Entertainment','Divertissement','Unterhaltung','Entertainment','Entretenimento','Ð Ð°Ð·Ð²Ð»ÐµÑ‡ÐµÐ½Ð¸Ñ','Entretenimiento','EÄŸlence'),(1433,'1433','category','Entertainment','ØªØ³Ù„ÙŠØ©','Entertainment','Divertissement','Unterhaltung','Entertainment','Entretenimento','Ð Ð°Ð·Ð²Ð»ÐµÑ‡ÐµÐ½Ð¸Ñ','Entretenimiento','EÄŸlence'),(1434,'1434','category','Movies & Animation','Ø£ÙÙ„Ø§Ù… ÙˆØ±Ø³ÙˆÙ… Ù…ØªØ­Ø±ÙƒØ©','Movies & Animation','Films & Animations','Filme und Animation','Film e Animazione','Filmes e Anima&ccedil;&otilde;es','Ð¤Ð¸Ð»ÑŒÐ¼Ñ‹ Ð¸ Ð°Ð½Ð¸Ð¼Ð°Ñ†Ð¸Ñ','Cine y AnimaciÃ³n','Film ve Animasyon'),(1435,'1435','category','Movies & Animation','Ø£ÙÙ„Ø§Ù… ÙˆØ±Ø³ÙˆÙ… Ù…ØªØ­Ø±ÙƒØ©','Movies & Animation','Films & Animations','Filme und Animation','Film e Animazione','Filmes e Anima&ccedil;&otilde;es','Ð¤Ð¸Ð»ÑŒÐ¼Ñ‹ Ð¸ Ð°Ð½Ð¸Ð¼Ð°Ñ†Ð¸Ñ','Cine y AnimaciÃ³n','Film ve Animasyon'),(1436,'1436','category','Movies & Animation','Ø£ÙÙ„Ø§Ù… ÙˆØ±Ø³ÙˆÙ… Ù…ØªØ­Ø±ÙƒØ©','Movies & Animation','Films & Animations','Filme und Animation','Film e Animazione','Filmes e Anima&ccedil;&otilde;es','Ð¤Ð¸Ð»ÑŒÐ¼Ñ‹ Ð¸ Ð°Ð½Ð¸Ð¼Ð°Ñ†Ð¸Ñ','Cine y AnimaciÃ³n','Film ve Animasyon'),(1437,'1437','category','Gaming','Ø§Ù„Ø£Ù„Ø¹Ø§Ø¨','Gaming','Jeux','Spiele','Gioco','Jogos','ÐÐ·Ð°Ñ€Ñ‚Ð½Ñ‹Ðµ Ð¸Ð³Ñ€Ñ‹','Juego de azar','Kumar'),(1438,'1438','category','Gaming','Ø§Ù„Ø£Ù„Ø¹Ø§Ø¨','Gaming','Jeux','Spiele','Gioco','Jogos','ÐÐ·Ð°Ñ€Ñ‚Ð½Ñ‹Ðµ Ð¸Ð³Ñ€Ñ‹','Juego de azar','Kumar'),(1439,'1439','category','Gaming','Ø§Ù„Ø£Ù„Ø¹Ø§Ø¨','Gaming','Jeux','Spiele','Gioco','Jogos','ÐÐ·Ð°Ñ€Ñ‚Ð½Ñ‹Ðµ Ð¸Ð³Ñ€Ñ‹','Juego de azar','Kumar'),(1440,'1440','category','History and Facts','ØªØ§Ø±ÙŠØ® ÙˆØ­Ù‚Ø§Ø¦Ù‚','History and Facts','Histoire et faits','Geschichte und Fakten','storia e fatti','Fatos e Hist&oacute;ria','Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ Ð¸ Ñ„Ð°ÐºÑ‚Ñ‹','Historia y Datos','Tarihi ve GerÃ§ekler'),(1441,'1441','category','History and Facts','ØªØ§Ø±ÙŠØ® ÙˆØ­Ù‚Ø§Ø¦Ù‚','History and Facts','Histoire et faits','Geschichte und Fakten','storia e fatti','Fatos e Hist&oacute;ria','Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ Ð¸ Ñ„Ð°ÐºÑ‚Ñ‹','Historia y Datos','Tarihi ve GerÃ§ekler'),(1442,'1442','category','History and Facts','ØªØ§Ø±ÙŠØ® ÙˆØ­Ù‚Ø§Ø¦Ù‚','History and Facts','Histoire et faits','Geschichte und Fakten','storia e fatti','Fatos e Hist&oacute;ria','Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ Ð¸ Ñ„Ð°ÐºÑ‚Ñ‹','Historia y Datos','Tarihi ve GerÃ§ekler'),(1443,'1443','category','Live Style','Ù†Ù…Ø· Ø§Ù„Ø¹ÙŠØ´','Live Style','Art de vivre','Live Style','Stile Live','Estilo de Vida','ÐžÐ±Ñ€Ð°Ð· Ð¶Ð¸Ð·Ð½Ð¸','Estilos de vida','CanlÄ± Stil'),(1444,'1444','category','Live Style','Ù†Ù…Ø· Ø§Ù„Ø¹ÙŠØ´','Live Style','Art de vivre','Live Style','Stile Live','Estilo de Vida','ÐžÐ±Ñ€Ð°Ð· Ð¶Ð¸Ð·Ð½Ð¸','Estilos de vida','CanlÄ± Stil'),(1445,'1445','category','Live Style','Ù†Ù…Ø· Ø§Ù„Ø¹ÙŠØ´','Live Style','Art de vivre','Live Style','Stile Live','Estilo de Vida','ÐžÐ±Ñ€Ð°Ð· Ð¶Ð¸Ð·Ð½Ð¸','Estilos de vida','CanlÄ± Stil'),(1446,'1446','category','Natural','Ø§Ù„Ø·Ø¨ÙŠØ¹Ø©','Natural','Naturel','NatÃ¼rliches','naturale','Natural','ÐŸÑ€Ð¸Ñ€Ð¾Ð´Ð°','Servicios','DoÄŸal'),(1447,'1447','category','Natural','Ø§Ù„Ø·Ø¨ÙŠØ¹Ø©','Natural','Naturel','NatÃ¼rliches','naturale','Natural','ÐŸÑ€Ð¸Ñ€Ð¾Ð´Ð°','Servicios','DoÄŸal'),(1448,'1448','category','Natural','Ø§Ù„Ø·Ø¨ÙŠØ¹Ø©','Natural','Naturel','NatÃ¼rliches','naturale','Natural','ÐŸÑ€Ð¸Ñ€Ð¾Ð´Ð°','Servicios','DoÄŸal'),(1449,'1449','category','News and Politics','Ø§Ù„Ø£Ø®Ø¨Ø§Ø± ÙˆØ§Ù„Ø³ÙŠØ§Ø³Ø©','News and Politics','Nouvelles et Politique','Nachrichten und Politik','News and Politics','Not&iacute;cias e Pol&iacute;tica','ÐÐ¾Ð²Ð¾ÑÑ‚Ð¸ Ð¸ Ð¿Ð¾Ð»Ð¸Ñ‚Ð¸ÐºÐ°','Noticias y PolÃ­tica','Haberler ve Politika'),(1450,'1450','category','News and Politics','Ø§Ù„Ø£Ø®Ø¨Ø§Ø± ÙˆØ§Ù„Ø³ÙŠØ§Ø³Ø©','News and Politics','Nouvelles et Politique','Nachrichten und Politik','News and Politics','Not&iacute;cias e Pol&iacute;tica','ÐÐ¾Ð²Ð¾ÑÑ‚Ð¸ Ð¸ Ð¿Ð¾Ð»Ð¸Ñ‚Ð¸ÐºÐ°','Noticias y PolÃ­tica','Haberler ve Politika'),(1451,'1451','category','News and Politics','Ø§Ù„Ø£Ø®Ø¨Ø§Ø± ÙˆØ§Ù„Ø³ÙŠØ§Ø³Ø©','News and Politics','Nouvelles et Politique','Nachrichten und Politik','News and Politics','Not&iacute;cias e Pol&iacute;tica','ÐÐ¾Ð²Ð¾ÑÑ‚Ð¸ Ð¸ Ð¿Ð¾Ð»Ð¸Ñ‚Ð¸ÐºÐ°','Noticias y PolÃ­tica','Haberler ve Politika'),(1452,'1452','category','People and Nations','Ø§Ù„Ù†Ø§Ø³ ÙˆØ§Ù„Ø£Ù…Ù…','People and Nations','Les gens et les Nations','Menschen und Nationen','Persone e delle Nazioni','Na&ccedil;&otilde;es e Pessoas','Ð›ÑŽÐ´Ð¸ Ð¸ ÐÐ°Ñ†Ð¸Ñ','Pueblos y Naciones','Ä°nsanlar ve Milletler'),(1453,'1453','category','People and Nations','Ø§Ù„Ù†Ø§Ø³ ÙˆØ§Ù„Ø£Ù…Ù…','People and Nations','Les gens et les Nations','Menschen und Nationen','Persone e delle Nazioni','Na&ccedil;&otilde;es e Pessoas','Ð›ÑŽÐ´Ð¸ Ð¸ ÐÐ°Ñ†Ð¸Ñ','Pueblos y Naciones','Ä°nsanlar ve Milletler'),(1454,'1454','category','People and Nations','Ø§Ù„Ù†Ø§Ø³ ÙˆØ§Ù„Ø£Ù…Ù…','People and Nations','Les gens et les Nations','Menschen und Nationen','Persone e delle Nazioni','Na&ccedil;&otilde;es e Pessoas','Ð›ÑŽÐ´Ð¸ Ð¸ ÐÐ°Ñ†Ð¸Ñ','Pueblos y Naciones','Ä°nsanlar ve Milletler'),(1455,'1455','category','Pets and Animals','Ø§Ù„Ø­ÙŠÙˆØ§Ù†Ø§Øª Ø§Ù„Ø£Ù„ÙŠÙØ© ÙˆØ§Ù„Ø­ÙŠÙˆØ§Ù†Ø§Øª','Pets and Animals','Animaux et Animaux','Haustiere und Tiere','Animali e Animali','Animais','Ð–Ð¸Ð²Ð¾Ñ‚Ð½Ñ‹Ðµ','Animales y mascotas','Evcil ve Hayvanlar'),(1456,'1456','category','Pets and Animals','Ø§Ù„Ø­ÙŠÙˆØ§Ù†Ø§Øª Ø§Ù„Ø£Ù„ÙŠÙØ© ÙˆØ§Ù„Ø­ÙŠÙˆØ§Ù†Ø§Øª','Pets and Animals','Animaux et Animaux','Haustiere und Tiere','Animali e Animali','Animais','Ð–Ð¸Ð²Ð¾Ñ‚Ð½Ñ‹Ðµ','Animales y mascotas','Evcil ve Hayvanlar'),(1457,'1457','category','Pets and Animals','Ø§Ù„Ø­ÙŠÙˆØ§Ù†Ø§Øª Ø§Ù„Ø£Ù„ÙŠÙØ© ÙˆØ§Ù„Ø­ÙŠÙˆØ§Ù†Ø§Øª','Pets and Animals','Animaux et Animaux','Haustiere und Tiere','Animali e Animali','Animais','Ð–Ð¸Ð²Ð¾Ñ‚Ð½Ñ‹Ðµ','Animales y mascotas','Evcil ve Hayvanlar'),(1458,'1458','category','Places and Regions','Ø§Ù„Ø£Ù…Ø§ÙƒÙ† ÙˆØ§Ù„Ù…Ù†Ø§Ø·Ù‚','Places and Regions','Lieux et rÃ©gions','Orte und Regionen','Luoghi e Regioni','Lugares e Regi&otilde;es','ÐœÐµÑÑ‚Ð° Ð¸ Ñ€ÐµÐ³Ð¸Ð¾Ð½Ñ‹','Lugares y Regiones','Yerler ve BÃ¶lgeler'),(1459,'1459','category','Places and Regions','Ø§Ù„Ø£Ù…Ø§ÙƒÙ† ÙˆØ§Ù„Ù…Ù†Ø§Ø·Ù‚','Places and Regions','Lieux et rÃ©gions','Orte und Regionen','Luoghi e Regioni','Lugares e Regi&otilde;es','ÐœÐµÑÑ‚Ð° Ð¸ Ñ€ÐµÐ³Ð¸Ð¾Ð½Ñ‹','Lugares y Regiones','Yerler ve BÃ¶lgeler'),(1460,'1460','category','Places and Regions','Ø§Ù„Ø£Ù…Ø§ÙƒÙ† ÙˆØ§Ù„Ù…Ù†Ø§Ø·Ù‚','Places and Regions','Lieux et rÃ©gions','Orte und Regionen','Luoghi e Regioni','Lugares e Regi&otilde;es','ÐœÐµÑÑ‚Ð° Ð¸ Ñ€ÐµÐ³Ð¸Ð¾Ð½Ñ‹','Lugares y Regiones','Yerler ve BÃ¶lgeler'),(1461,'1461','category','Science and Technology','Ø§Ù„Ø¹Ù„ÙˆÙ… ÙˆØ§Ù„ØªÙƒÙ†ÙˆÙ„ÙˆØ¬ÙŠØ§','Science and Technology','Science et technologie','Wissenschaft und Technik','Scienze e Tecnologia','Ci&ecirc;ncia e Tecnologia','ÐÐ°ÑƒÐºÐ° Ð¸ Ñ‚ÐµÑ…Ð½Ð¾Ð»Ð¾Ð³Ð¸Ñ','Ciencia y TecnologÃ­a','Bilim ve Teknoloji'),(1462,'1462','category','Science and Technology','Ø§Ù„Ø¹Ù„ÙˆÙ… ÙˆØ§Ù„ØªÙƒÙ†ÙˆÙ„ÙˆØ¬ÙŠØ§','Science and Technology','Science et technologie','Wissenschaft und Technik','Scienze e Tecnologia','Ci&ecirc;ncia e Tecnologia','ÐÐ°ÑƒÐºÐ° Ð¸ Ñ‚ÐµÑ…Ð½Ð¾Ð»Ð¾Ð³Ð¸Ñ','Ciencia y TecnologÃ­a','Bilim ve Teknoloji'),(1463,'1463','category','Science and Technology','Ø§Ù„Ø¹Ù„ÙˆÙ… ÙˆØ§Ù„ØªÙƒÙ†ÙˆÙ„ÙˆØ¬ÙŠØ§','Science and Technology','Science et technologie','Wissenschaft und Technik','Scienze e Tecnologia','Ci&ecirc;ncia e Tecnologia','ÐÐ°ÑƒÐºÐ° Ð¸ Ñ‚ÐµÑ…Ð½Ð¾Ð»Ð¾Ð³Ð¸Ñ','Ciencia y TecnologÃ­a','Bilim ve Teknoloji'),(1464,'1464','category','Sport','Ø±ÙŠØ§Ø¶Ø©','Sport','Sport','Sport','Sport','Esporte','Ð¡Ð¿Ð¾Ñ€Ñ‚','Deporte','Spor'),(1465,'1465','category','Sport','Ø±ÙŠØ§Ø¶Ø©','Sport','Sport','Sport','Sport','Esporte','Ð¡Ð¿Ð¾Ñ€Ñ‚','Deporte','Spor'),(1466,'1466','category','Sport','Ø±ÙŠØ§Ø¶Ø©','Sport','Sport','Sport','Sport','Esporte','Ð¡Ð¿Ð¾Ñ€Ñ‚','Deporte','Spor'),(1467,'1467','category','Travel and Events','Ø³ÙØ± ÙˆØ£Ø­Ø¯Ø§Ø«','Travel and Events','Voyage et Ã©vÃ©nement','Reisen und Veranstaltungen','Viaggi ed Eventi','Viagens e Eventos','ÐŸÑƒÑ‚ÐµÑˆÐµÑÑ‚Ð²Ð¸Ñ Ð¸ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ñ','Viajes y Eventos','Gezi ve Etkinlikler'),(1468,'1468','category','Travel and Events','Ø³ÙØ± ÙˆØ£Ø­Ø¯Ø§Ø«','Travel and Events','Voyage et Ã©vÃ©nement','Reisen und Veranstaltungen','Viaggi ed Eventi','Viagens e Eventos','ÐŸÑƒÑ‚ÐµÑˆÐµÑÑ‚Ð²Ð¸Ñ Ð¸ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ñ','Viajes y Eventos','Gezi ve Etkinlikler'),(1469,'1469','category','Travel and Events','Ø³ÙØ± ÙˆØ£Ø­Ø¯Ø§Ø«','Travel and Events','Voyage et Ã©vÃ©nement','Reisen und Veranstaltungen','Viaggi ed Eventi','Viagens e Eventos','ÐŸÑƒÑ‚ÐµÑˆÐµÑÑ‚Ð²Ð¸Ñ Ð¸ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ñ','Viajes y Eventos','Gezi ve Etkinlikler'),(1470,'1470','category','Apparel & Accessories','Ù…Ù„Ø§Ø¨Ø³ ÙˆØ§ÙƒØ³Ø³ÙˆØ§Ø±Ø§Øª','Apparel & Accessories','Apparel & Accessories','Apparel & Accessories','Apparel & Accessories','Apparel & Accessories','Apparel & Accessories','Apparel & Accessories','Apparel & Accessories'),(1471,'1471','category','Autos & Vehicles','Ø§Ù„Ø³ÙŠØ§Ø±Ø§Øª Ùˆ Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª','Autos & Vehicles','Autos & Vehicles','Autos & Vehicles','Autos & Vehicles','Autos & Vehicles','Autos & Vehicles','Autos & Vehicles','Autos & Vehicles'),(1472,'1472','category','Baby & Children\'s Products','Ù…Ù†ØªØ¬Ø§Øª Ø§Ù„Ø£Ø·ÙØ§Ù„','Baby & Children\'s Products','Baby & Children&#39;s Products','Baby & Children\'s Products','Baby & Children\'s Products','Baby & Children\'s Products','Baby & Children\'s Products','Baby & Children\'s Products','Baby & Children\'s Products'),(1473,'1473','category','Beauty Products & Services','Ù…Ù†ØªØ¬Ø§Øª Ø§Ù„Ø¬Ù…Ø§Ù„ \\ Ø®Ø¯Ù…Ø§Øª','Beauty Products & Services','Beauty Products & Services','Beauty Products & Services','Beauty Products & Services','Beauty Products & Services','Beauty Products & Services','Beauty Products & Services','Beauty Products & Services'),(1474,'1474','category','Computers & Peripherals','Ø£Ø¬Ù‡Ø²Ø© Ø§Ù„ÙƒÙ…Ø¨ÙŠÙˆØªØ± ÙˆÙ…Ù„Ø­Ù‚Ø§ØªÙ‡','Computers & Peripherals','Computers & Peripherals','Computers & Peripherals','Computers & Peripherals','Computers & Peripherals','Computers & Peripherals','Computers & Peripherals','Computers & Peripherals'),(1475,'1475','category','Consumer Electronics','Ø§Ù„Ø§Ù„ÙƒØªØ±ÙˆÙ†ÙŠØ§Øª','Consumer Electronics','Consumer Electronics','Consumer Electronics','Consumer Electronics','Consumer Electronics','Consumer Electronics','Consumer Electronics','Consumer Electronics'),(1476,'1476','category','Dating Services','Ø®Ø¯Ù…Ø§Øª ','Dating Services','Dating Services','Dating Services','Dating Services','Dating Services','Dating Services','Dating Services','Dating Services'),(1477,'1477','category','Financial Services','Ø§Ù„Ø®Ø¯Ù…Ø§Øª Ø§Ù„Ù…Ø§Ù„ÙŠØ©','Financial Services','Financial Services','Financial Services','Financial Services','Financial Services','Financial Services','Financial Services','Financial Services'),(1478,'1478','category','Gifts & Occasions','Ù‡Ø¯Ø§ÙŠØ§ ÙˆÙ…Ù†Ø§Ø³Ø¨Ø§Øª','Gifts & Occasions','Gifts & Occasions','Gifts & Occasions','Gifts & Occasions','Gifts & Occasions','Gifts & Occasions','Gifts & Occasions','Gifts & Occasions'),(1479,'1479','category','Home & Garden','Ø§Ù„Ø¹Ù‚Ø§Ø±Ø§Øª','Home & Garden','Home & Garden','Home & Garden','Home & Garden','Home & Garden','Home & Garden','Home & Garden','Home & Garden'),(1480,'sort_by','Sort by','Sort by','ØªØ±ØªÙŠØ¨ Ø­Ø³Ø¨','Sorteer op','Trier par','Sortiere nach','Ordina per','Ordenar por','Ð¡Ð¾Ñ€Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¿Ð¾','Ordenar por','GÃ¶re sÄ±rala'),(1481,'top','Top','Top','Ø£Ø¹Ù„Ù‰','Top','Haut','oben','Superiore','Topo','Ð²ÐµÑ€Ñ…Ð½Ð¸Ð¹','Parte superior','Ãœst'),(1482,'comment_on_post','Comment on post','Comment on post','Ø§Ù„ØªØ¹Ù„ÙŠÙ‚ Ø¹Ù„Ù‰ Ø¢Ø®Ø±','Reageer op post','Commentaire sur le post','Kommentar zum Beitrag','Commento sul post','Comente na postagem','ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹ Ðº ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÑŽ','Comentar en la publicaciÃ³n','YayÄ±na yorum yapÄ±n'),(1483,'email_provider_banned','The email provider is blacklisted and not allowed, please choose another email provider.','The email provider is blacklisted and not allowed, please choose another email provider.','Ù…Ø²ÙˆØ¯ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ù…Ø¯Ø±Ø¬ ÙÙŠ Ø§Ù„Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø³ÙˆØ¯Ø§Ø¡ ÙˆØºÙŠØ± Ù…Ø³Ù…ÙˆØ­ Ø¨Ù‡ ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ø®ØªÙŠØ§Ø± Ù…Ø²ÙˆØ¯ Ø¨Ø±ÙŠØ¯ Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø¢Ø®Ø±.','De e-mailprovider staat op de zwarte lijst en is niet toegestaan, kies een andere e-mailprovider.','Le fournisseur de messagerie est sur la liste noire et n&#039;est pas autorisÃ©. Veuillez choisir un autre fournisseur de messagerie.','Der E-Mail-Anbieter ist auf der schwarzen Liste und nicht zulÃ¤ssig. Bitte wÃ¤hlen Sie einen anderen E-Mail-Anbieter.','Il provider di posta elettronica Ã¨ nella lista nera e non Ã¨ consentito, si prega di scegliere un altro provider di posta elettronica.','O provedor de e-mail estÃ¡ na lista negra e nÃ£o Ã© permitido, por favor, escolha outro provedor de e-mail.','ÐŸÐ¾ÑÑ‚Ð°Ð²Ñ‰Ð¸Ðº ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹ Ð½Ð°Ñ…Ð¾Ð´Ð¸Ñ‚ÑÑ Ð² Ñ‡ÐµÑ€Ð½Ð¾Ð¼ ÑÐ¿Ð¸ÑÐºÐµ Ð¸ Ð½Ðµ Ð´Ð¾Ð¿ÑƒÑÐºÐ°ÐµÑ‚ÑÑ, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ð³Ð¾ Ð¿Ð¾ÑÑ‚Ð°Ð²Ñ‰Ð¸ÐºÐ° ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹.','El proveedor de correo electrÃ³nico estÃ¡ en la lista negra y no estÃ¡ permitido, elija otro proveedor de correo electrÃ³nico.','E-posta saÄŸlayÄ±cÄ± kara listeye alÄ±ndÄ± â€‹â€‹ve izin verilmedi, lÃ¼tfen baÅŸka bir e-posta saÄŸlayÄ±cÄ± seÃ§in.'),(1484,'sent_product_to_you','Sent product to you','Sent product to you','Ø£Ø±Ø³Ù„Øª Ø§Ù„Ù…Ù†ØªØ¬ Ù„Ùƒ','Verzonden product naar u','Produit envoyÃ© Ã  vous','Produkt an Sie gesendet','Prodotto inviato a voi','Enviado produto para vocÃª','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ð» Ð²Ð°Ð¼ Ñ‚Ð¾Ð²Ð°Ñ€','Producto enviado a usted','Size gÃ¶nderilen Ã¼rÃ¼n'),(1485,'color','Color','Color','Ø§Ù„Ù„ÙˆÙ†','Kleur','Couleur','Farbe','Colore','Cor','Ñ†Ð²ÐµÑ‚','Color','Renk'),(1486,'2checkout','2Checkout','2Checkout','2Checkout','2Checkout','2Checkout','2Kasse','2Checkout','2Checkout','2Checkout','2 Checkout','2Checkout'),(1487,'card_number','Card Number','Card Number','Ø±Ù‚Ù… Ø§Ù„Ø¨Ø·Ø§Ù‚Ø©','Kaartnummer','NumÃ©ro de carte','Kartennummer','Numero di carta','NÃºmero do cartÃ£o','ÐÐ¾Ð¼ÐµÑ€ ÐºÐ°Ñ€Ñ‚Ñ‹','NÃºmero de tarjeta','Kart numarasÄ±'),(1488,'address','Address','Address','Ø¹Ù†ÙˆØ§Ù†','Adres','Adresse','Adresse','Indirizzo','EndereÃ§o','ÐÐ´Ñ€ÐµÑ','DirecciÃ³n','Adres'),(1489,'city','City','City','Ù…Ø¯ÙŠÙ†Ø©','stad','Ville','Stadt','CittÃ ','Cidade','Ð³Ð¾Ñ€Ð¾Ð´','Ciudad','Kent'),(1490,'state','State','State','Ø­Ø§Ù„Ø©','Staat','Etat','Zustand','Stato','Estado','Ð³Ð¾ÑÑƒÐ´Ð°Ñ€ÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ð¹','Estado','Belirtmek, bildirmek'),(1491,'zip','Zip Code','Zip Code','Ø§Ù„Ø±Ù…Ø² Ø§Ù„Ø¨Ø±ÙŠØ¯ÙŠ','Postcode','Code postal','Postleitzahl','Cap','CÃ³digo postal','ÐŸÐ¾Ñ‡Ñ‚Ð¾Ð²Ñ‹Ð¹ Ð˜Ð½Ð´ÐµÐºÑ','CÃ³digo postal','Posta kodu'),(1492,'pay','Pay Now','Pay Now','Ø§Ø¯ÙØ¹ Ø§Ù„Ø¢Ù†','Nu betalen','Payez maintenant','Zahl jetzt','Paga ora','Pague agora','Ð—Ð°Ð¿Ð»Ð°Ñ‚Ð¸Ñ‚ÑŒ ÑÐµÐ¹Ñ‡Ð°Ñ','Pague ahora','Åžimdi Ã¶de'),(1493,'2checkout_declined','Your payment was declined, please contact your bank or card issuer and make sure you have the requir','Your payment was declined, please contact your bank or card issuer and make sure you have the required funds.','ØªÙ… Ø±ÙØ¶ Ø¯ÙØ¹ØªÙƒ ØŒ ÙŠØ±Ø¬Ù‰ Ø§Ù„Ø§ØªØµØ§Ù„ Ø¨Ø§Ù„Ù…ØµØ±Ù Ø£Ùˆ Ù…ØµØ¯Ø± Ø§Ù„Ø¨Ø·Ø§Ù‚Ø© ÙˆØ§Ù„ØªØ£ÙƒØ¯ Ù…Ù† Ø£Ù† Ù„Ø¯ÙŠÙƒ Ø§Ù„Ø£Ù…ÙˆØ§Ù„ Ø§Ù„Ù…Ø·Ù„ÙˆØ¨Ø©.','Uw betaling is geweigerd. Neem contact op met uw bank of creditcardmaatschappij en zorg dat u over het benodigde geld beschikt.','Votre paiement a Ã©tÃ© refusÃ©, veuillez contacter votre banque ou votre Ã©metteur de carte et assurez-vous de disposer des fonds nÃ©cessaires.','Ihre Zahlung wurde abgelehnt. Wenden Sie sich an Ihre Bank oder Ihren Kartenaussteller, und vergewissern Sie sich, dass Sie Ã¼ber das erforderliche Guthaben verfÃ¼gen.','Il tuo pagamento Ã¨ stato rifiutato, contatta la tua banca o l&#039;emittente della carta e assicurati di avere i fondi necessari.','Seu pagamento foi recusado, entre em contato com seu banco ou emissor do cartÃ£o e verifique se vocÃª tem os fundos necessÃ¡rios.','Ð’Ð°Ñˆ Ð¿Ð»Ð°Ñ‚ÐµÐ¶ Ð±Ñ‹Ð» Ð¾Ñ‚ÐºÐ»Ð¾Ð½ÐµÐ½, Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, ÑÐ²ÑÐ¶Ð¸Ñ‚ÐµÑÑŒ Ñ Ð±Ð°Ð½ÐºÐ¾Ð¼ Ð¸Ð»Ð¸ ÑÐ¼Ð¸Ñ‚ÐµÐ½Ñ‚Ð¾Ð¼ ÐºÐ°Ñ€Ñ‚Ñ‹ Ð¸ ÑƒÐ±ÐµÐ´Ð¸Ñ‚ÐµÑÑŒ, Ñ‡Ñ‚Ð¾ Ñƒ Ð²Ð°Ñ ÐµÑÑ‚ÑŒ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ñ‹Ðµ ÑÑ€ÐµÐ´ÑÑ‚Ð²Ð°.','Su pago fue rechazado, pÃ³ngase en contacto con su banco o con el emisor de la tarjeta y asegÃºrese de tener los fondos necesarios.','Ã–demeniz reddedildi, lÃ¼tfen bankanÄ±za veya kart dÃ¼zenleyicinize baÅŸvurun ve gerekli paraya sahip olduÄŸunuzdan emin olun.'),(1494,'expire_date','Expire Date','Expire Date','ØªØ§Ø±ÙŠØ® Ø§Ù†ØªÙ‡Ø§Ø¡ Ø§Ù„ØµÙ„Ø§Ø­ÙŠØ©','Vervaldatum','Date d&#039;expiration','Ablaufdatum','Data di scadenza','Data de validade','Ð“Ð¾Ð´ÐµÐ½ Ð´Ð¾','Fecha de caducidad','Son kullanma tarihi'),(1495,'no_interested_people','There are no interested users.','There are no interested users.','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ù…Ø³ØªØ®Ø¯Ù…ÙˆÙ† Ù…Ù‡ØªÙ…ÙˆÙ†.','Er zijn geen geÃ¯nteresseerde gebruikers.','Il n&#039;y a pas d&#039;utilisateurs intÃ©ressÃ©s.','Es gibt keine interessierten Benutzer.','Non ci sono utenti interessati.','NÃ£o hÃ¡ usuÃ¡rios interessados.','ÐÐµÑ‚ Ð·Ð°Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ¾Ð²Ð°Ð½Ð½Ñ‹Ñ… Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹.','No hay usuarios interesados.','Ä°lgilenen kullanÄ±cÄ± yok.'),(1496,'less','less','Less','Less','Less','Less','Less','Less','Less','Less','Less','Less'),(1497,'completed','Completed','Completed','Ù…Ù†Ø¬Ø²','Voltooid','TerminÃ©','Abgeschlossen','Completato','ConcluÃ­do','Ð—Ð°Ð²ÐµÑ€ÑˆÐµÐ½Ð½Ñ‹Ð¹','Terminado','Tamamlanan'),(1498,'studied_at','Studied at','Studied at','Ø¯Ø±Ø³ ÙÙŠ','Gestudeerd aan','Ã‰tudiÃ© Ã ','Studierte an','Studiato a','Estudou na','Ð£Ñ‡Ð¸Ð»ÑÑ Ð²','EstudiÃ³ en','Okudu'),(1499,'cant_share_own','You can&#039;t share a post on a page or a group that is your not own.','You can&#039;t share a post on a page or a group that is your not own.','Ù„Ø§ ÙŠÙ…ÙƒÙ†Ùƒ Ù…Ø´Ø§Ø±ÙƒØ© Ù…Ù†Ø´ÙˆØ± Ø¹Ù„Ù‰ ØµÙØ­Ø© Ø£Ùˆ Ù…Ø¬Ù…ÙˆØ¹Ø© ØºÙŠØ± Ø®Ø§ØµØ© Ø¨Ùƒ.','Je kunt een bericht op een pagina of een groep die niet van jezelf is, niet delen.','Vous ne pouvez pas partager un message sur une page ou un groupe qui n&#039;est pas le vÃ´tre.','Sie kÃ¶nnen keinen Beitrag auf einer Seite oder einer Gruppe teilen, die nicht Ihrer eigenen gehÃ¶rt.','Non puoi condividere un post su una pagina o un gruppo che non sei proprietario.','VocÃª nÃ£o pode compartilhar uma postagem em uma pÃ¡gina ou em um grupo que nÃ£o Ã© seu.','Ð’Ñ‹ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¿Ð¾Ð´ÐµÐ»Ð¸Ñ‚ÑŒÑÑ Ð¿Ð¾ÑÑ‚Ð¾Ð¼ Ð½Ð° ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ðµ Ð¸Ð»Ð¸ Ð² Ð³Ñ€ÑƒÐ¿Ð¿Ðµ, ÐºÐ¾Ñ‚Ð¾Ñ€Ð°Ñ Ð½Ðµ Ð¿Ñ€Ð¸Ð½Ð°Ð´Ð»ÐµÐ¶Ð¸Ñ‚ Ð²Ð°Ð¼.','No puedes compartir una publicaciÃ³n en una pÃ¡gina o un grupo que no sea tuyo.','Bir sayfada veya kendi olmayan bir gruptaki bir gÃ¶nderiyi paylaÅŸamazsÄ±nÄ±z.'),(1500,'accept_group_chat_request','Accepted your group chat invitation.','Accepted your group chat invitation.','ØªÙ… Ù‚Ø¨ÙˆÙ„ Ø¯Ø¹ÙˆØ© Ø§Ù„Ø¯Ø±Ø¯Ø´Ø© Ø§Ù„Ø¬Ù…Ø§Ø¹ÙŠØ©.','Uw uitnodiging voor groepschat geaccepteerd.','AcceptÃ© votre invitation Ã  la discussion de groupe.','Hat Ihre Einladung zum Gruppenchat angenommen.','Ha accettato l&#039;invito alla chat di gruppo.','Aceitou seu convite para bate-papo em grupo.','ÐŸÑ€Ð¸Ð½ÑÑ‚Ð¾ Ð¿Ñ€Ð¸Ð³Ð»Ð°ÑˆÐµÐ½Ð¸Ðµ Ð² Ð³Ñ€ÑƒÐ¿Ð¿Ð¾Ð²Ð¾Ð¹ Ñ‡Ð°Ñ‚.','AceptÃ³ su invitaciÃ³n de chat grupal.','Grup sohbeti davetinizi kabul ettiniz.'),(1501,'jobs','Jobs','Jobs','ÙˆØ¸Ø§Ø¦Ù','Jobs','Emplois','ArbeitsplÃ¤tze','Lavori','Empregos','Ñ€Ð°Ð±Ð¾Ñ‚Ñ‹','Trabajos','Meslekler'),(1502,'post_job_text','Post a job for {{page_name}} to reach the right applicants on','Post a job for {{page_name}} to reach the right applicants on','Ø§Ù†Ø´Ø± ÙˆØ¸ÙŠÙØ© Ù„Ù€ {{page_name}} Ù„Ù„ÙˆØµÙˆÙ„ Ø¥Ù„Ù‰ Ø§Ù„Ù…ØªÙ‚Ø¯Ù…ÙŠÙ† Ø§Ù„Ù…Ù†Ø§Ø³Ø¨ÙŠÙ†','Plaats een vacature voor {{page_name}} om de juiste sollicitanten te bereiken op','DÃ©posez une offre pour {{nom_page}} afin d&#039;atteindre les bons candidats le','VerÃ¶ffentlichen Sie einen Job fÃ¼r {{page_name}}, um die richtigen Bewerber am zu erreichen','Pubblica un lavoro per {{page_name}} per raggiungere i candidati giusti','Publique uma tarefa para {{page_name}} alcanÃ§ar os candidatos certos em','ÐžÐ¿ÑƒÐ±Ð»Ð¸ÐºÑƒÐ¹Ñ‚Ðµ Ð²Ð°ÐºÐ°Ð½ÑÐ¸ÑŽ Ð´Ð»Ñ {{page_name}}, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð½Ð°Ð¹Ñ‚Ð¸ Ð½ÑƒÐ¶Ð½Ñ‹Ñ… ÐºÐ°Ð½Ð´Ð¸Ð´Ð°Ñ‚Ð¾Ð² Ð½Ð°','Publique un trabajo para {{page_name}} para llegar a los solicitantes correctos en','DoÄŸru baÅŸvuru sahiplerine ulaÅŸmak iÃ§in {{page_name}} iÃ§in bir iÅŸ gÃ¶nderin.'),(1503,'create_job','Create Job','Create Job','Ø®Ù„Ù‚ ÙˆØ¸ÙŠÙØ©','Taak maken','CrÃ©er un emploi','Job erstellen','Crea lavoro','Criar trabalho','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ','Crear trabajo','Ä°ÅŸ OluÅŸtur'),(1504,'job_title','Job Title','Job Title','Ø¹Ù†ÙˆØ§Ù† ÙˆØ¸ÙŠÙÙŠ','Functietitel','Profession','Berufsbezeichnung','Titolo di lavoro','Titulo do trabalho','Ð”Ð¾Ð»Ð¶Ð½Ð¾ÑÑ‚ÑŒ','TÃ­tulo profesional','Ä°ÅŸ ismi'),(1505,'salary_range','Salary Range','Salary Range','Ù†Ø·Ø§Ù‚ Ø§Ù„Ø±Ø§ØªØ¨','Salaris schaal','Ã‰chelle salariale','Gehaltsspanne','Fascia di reddito','Faixa salarial','Ð”Ð¸Ð°Ð¿Ð°Ð·Ð¾Ð½ Ð·Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ñ‹','Rango salarial','MaaÅŸ aralÄ±ÄŸÄ±'),(1506,'minimum','Minimum','Minimum','Ø§Ù„Ø­Ø¯ Ø§Ù„Ø£Ø¯Ù†Ù‰','Minimum','Le minimum','Minimum','Minimo','MÃ­nimo','Ð¼Ð¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ñ‹Ð¹','MÃ­nimo','minimum'),(1507,'maximum','Maximum','Maximum','Ø£Ù‚ØµÙ‰','maximaal','Maximum','Maximal','Massimo','MÃ¡ximo','Ð¼Ð°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ð°Ñ','MÃ¡ximo','Maksimum'),(1508,'per_hour','Per Hour','Per Hour','ÙÙŠ Ø§Ù„Ø³Ø§Ø¹Ø©','Per uur','Par heure','Pro Stunde','All&#039;ora','Por hora','Ð’ Ñ‡Ð°Ñ','Por hora','Saat baÅŸÄ±'),(1509,'per_day','Per Day','Per Day','ÙÙŠ Ø§Ù„ÙŠÙˆÙ…','Per dag','Par jour','Pro Tag','Al giorno','Por dia','Ð’ Ð´ÐµÐ½ÑŒ','Por dÃ­a','GÃ¼nlÃ¼k'),(1510,'per_week','Per Week','Per Week','ÙÙŠ Ø§Ù„Ø§Ø³Ø¨ÙˆØ¹','Per week','Par semaine','Pro Woche','A settimana','Por semana','Ð’ Ð½ÐµÐ´ÐµÐ»ÑŽ','Por semana','Haftada'),(1511,'per_month','Per Month','Per Month','ÙƒÙ„ Ø´Ù‡Ø±','Per maand','Par mois','Pro Monat','Al mese','Por mÃªs','Ð’ Ð¼ÐµÑÑÑ†','Por mes','Her ay'),(1512,'per_year','Per Year','Per Year','ÙƒÙ„ Ø³Ù†Ø©','Per jaar','Par an','Pro Jahr','Per anno','Por ano','Ð’ Ð³Ð¾Ð´','Por aÃ±o','YÄ±l baÅŸÄ±na'),(1513,'job_type','Job Type','Job Type','Ù†ÙˆØ¹ Ø§Ù„ÙˆØ¸ÙŠÙØ©','Soort baan','Type d&#039;emploi','Auftragstyp','Tipo di lavoro','Tipo de emprego','Ð¢Ð¸Ð¿ Ð·Ð°Ð´Ð°Ð½Ð¸Ñ','Tipo de empleo','Meslek tÃ¼rÃ¼'),(1514,'full_time','Full Time','Full Time','ÙˆÙ‚Øª ÙƒØ§Ù…Ù„','Full time','Ã€ plein temps','Vollzeit','Tempo pieno','Tempo total','ÐÐ° Ð¿Ð¾ÑÑ‚Ð¾ÑÐ½Ð½Ð¾Ð¹ Ð¾ÑÐ½Ð¾Ð²Ðµ','Tiempo completo','Tam zamanlÄ±'),(1515,'part_time','Part Time','Part Time','Ø¯ÙˆØ§Ù… Ø¬Ø²Ø¦Ù‰','Deeltijd','Ã€ temps partiel','Teilzeit','Mezza giornata','Meio perÃ­odo','ÐÐµÐ¿Ð¾Ð»Ð½Ð°Ñ Ð·Ð°Ð½ÑÑ‚Ð¾ÑÑ‚ÑŒ','Medio tiempo','YarÄ± zamanlÄ±'),(1516,'internship','Internship','Internship','ÙØªØ±Ø© ØªØ¯Ø±ÙŠØ¨','Stage','Stage','Praktikum','tirocinio','EstÃ¡gio','Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´ÑÑ‚Ð²ÐµÐ½Ð½Ð°Ñ Ð¿Ñ€Ð°ÐºÑ‚Ð¸ÐºÐ°','Internado','Staj'),(1517,'volunteer','Volunteer','Volunteer','ØªØ·ÙˆØ¹','Vrijwilliger','BÃ©nÃ©vole','Freiwillige','Volontario','VoluntÃ¡rio','Ð´Ð¾Ð±Ñ€Ð¾Ð²Ð¾Ð»ÐµÑ†','Voluntario','GÃ¶nÃ¼llÃ¼'),(1518,'contract','Contract','Contract','Ø¹Ù‚Ø¯','Contract','Contrat','Vertrag','Contrarre','Contrato','ÐºÐ¾Ð½Ñ‚Ñ€Ð°ÐºÑ‚','Contrato','sÃ¶zleÅŸme'),(1519,'job_des_text','Describe the responsibilities and preferred skills for this job','Describe the responsibilities and preferred skills for this job','ØµÙ Ø§Ù„Ù…Ø³Ø¤ÙˆÙ„ÙŠØ§Øª ÙˆØ§Ù„Ù…Ù‡Ø§Ø±Ø§Øª Ø§Ù„Ù…ÙØ¶Ù„Ø© Ù„Ù‡Ø°Ù‡ Ø§Ù„ÙˆØ¸ÙŠÙØ©','Beschrijf de verantwoordelijkheden en voorkeursvaardigheden voor deze functie','DÃ©crivez les responsabilitÃ©s et les compÃ©tences prÃ©fÃ©rÃ©es pour cet emploi.','Beschreiben Sie die Verantwortlichkeiten und bevorzugten FÃ¤higkeiten fÃ¼r diesen Job','Descrivi le responsabilitÃ  e le competenze preferite per questo lavoro','Descreva as responsabilidades e habilidades preferidas para este trabalho','ÐžÐ¿Ð¸ÑˆÐ¸Ñ‚Ðµ Ð¾Ð±ÑÐ·Ð°Ð½Ð½Ð¾ÑÑ‚Ð¸ Ð¸ Ð¿Ñ€ÐµÐ´Ð¿Ð¾Ñ‡Ñ‚Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ðµ Ð½Ð°Ð²Ñ‹ÐºÐ¸ Ð´Ð»Ñ ÑÑ‚Ð¾Ð¹ Ñ€Ð°Ð±Ð¾Ñ‚Ñ‹','Describa las responsabilidades y habilidades preferidas para este trabajo.','Bu iÅŸ iÃ§in sorumluluklarÄ± ve tercih edilen becerileri tanÄ±mlayÄ±n'),(1520,'job_add_iamge','Add an image to help applicants see what it&#039;s like to work at this location.','Add an image to help applicants see what it&#039;s like to work at this location.','Ø£Ø¶Ù ØµÙˆØ±Ø© Ù„Ù…Ø³Ø§Ø¹Ø¯Ø© Ø§Ù„Ù…ØªÙ‚Ø¯Ù…ÙŠÙ† Ø¹Ù„Ù‰ Ù…Ø¹Ø±ÙØ© ÙƒÙŠÙÙŠØ© Ø§Ù„Ø¹Ù…Ù„ ÙÙŠ Ù‡Ø°Ø§ Ø§Ù„Ù…ÙˆÙ‚Ø¹.','Voeg een afbeelding toe om aanvragers te helpen zien hoe het is om op deze locatie te werken.','Ajoutez une image pour aider les candidats Ã  voir Ã  quoi Ã§a ressemble de travailler Ã  cet endroit.','FÃ¼gen Sie ein Bild hinzu, damit Bewerber sehen, wie es ist, an diesem Standort zu arbeiten.','Aggiungi un&#039;immagine per aiutare i candidati a vedere com&#039;Ã¨ lavorare in questa posizione.','Adicione uma imagem para ajudar os candidatos a ver como Ã© trabalhar neste local.','Ð”Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ð¾Ð¼Ð¾Ñ‡ÑŒ ÐºÐ°Ð½Ð´Ð¸Ð´Ð°Ñ‚Ð°Ð¼ ÑƒÐ²Ð¸Ð´ÐµÑ‚ÑŒ, ÐºÐ°ÐºÐ¾Ð²Ð¾ ÑÑ‚Ð¾ Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ñ‚ÑŒ Ð² ÑÑ‚Ð¾Ð¼ Ð¼ÐµÑÑ‚Ðµ.','Agregue una imagen para ayudar a los solicitantes a ver cÃ³mo es trabajar en esta ubicaciÃ³n.','BaÅŸvuru sahiplerinin bu konumda Ã§alÄ±ÅŸmanÄ±n nasÄ±l bir ÅŸey olduÄŸunu gÃ¶rmelerine yardÄ±mcÄ± olmak iÃ§in bir resim ekleyin.'),(1521,'use_cover_photo','Use Cover Photo','Use Cover Photo','Ø§Ø³ØªØ®Ø¯Ø§Ù… ØµÙˆØ±Ø© Ø§Ù„ØºÙ„Ø§Ù','Gebruik omslagfoto','Utiliser la photo de couverture','Titelbild verwenden','Usa foto di copertina','Usar Foto de Capa','Ð˜ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÑŒ Ð¾Ð±Ð»Ð¾Ð¶ÐºÑƒ','Usar foto de portada','Kapak FotoÄŸrafÄ±nÄ± Kullan'),(1522,'questions','Questions','Questions','Ø§Ù„Ø£Ø³Ø¦Ù„Ø©','vragen','Des questions','Fragen','Domande','QuestÃµes','Ð’Ð¾Ð¿Ñ€Ð¾ÑÑ‹','Preguntas','Sorular'),(1523,'free_text_question','Free Text Question','Free Text Question','Ù†Øµ Ø­Ø± Ø§Ù„Ø³Ø¤Ø§Ù„','Vrije tekst vraag','Question de texte libre','Freitext-Frage','Domanda a testo libero','Pergunta de texto livre','Ð¡Ð²Ð¾Ð±Ð¾Ð´Ð½Ñ‹Ð¹ Ñ‚ÐµÐºÑÑ‚Ð¾Ð²Ñ‹Ð¹ Ð²Ð¾Ð¿Ñ€Ð¾Ñ','Pregunta de texto libre','Serbest Metin Sorusu'),(1524,'yes_no_question','Yes/No Question','Yes/No Question','Ù†Ø¹Ù… / Ù„Ø§ Ø³Ø¤Ø§Ù„','Ja-nee-vraag','Question oui / non','Ja-nein Frage','Si nessuna domanda','Sim / NÃ£o Pergunta','Ð”Ð° / Ð½ÐµÑ‚ Ð²Ð¾Ð¿Ñ€Ð¾Ñ','Pregunta de sÃ­ o no','Evet soru yok'),(1525,'multiple_choice_question','Multiple Choice Question','Multiple Choice Question','Ø³Ø¤Ø§Ù„ Ù…ØªØ¹Ø¯Ø¯ Ø§Ù„Ø®ÙŠØ§Ø±Ø§Øª','Meerkeuze vraag','Question Ã  choix multiples','Multiple-Choice-Frage','Domanda a scelta multipla','Pergunta de mÃºltipla escolha','Ð’Ð¾Ð¿Ñ€Ð¾Ñ Ñ Ð¼Ð½Ð¾Ð¶ÐµÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ð¼ Ð²Ñ‹Ð±Ð¾Ñ€Ð¾Ð¼','Pregunta de opciÃ³n mÃºltiple','Ã‡oktan seÃ§meli soru'),(1526,'add_question','Add Question','Add Question','Ø£Ø¶Ù Ø³Ø¤Ø§Ù„','Vraag toevoegen','Ajouter une question','Frage hinzufÃ¼gen','Aggiungi domanda','Adicionar pergunta','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð²Ð¾Ð¿Ñ€Ð¾Ñ','AÃ±adir pregunta','Soru ekle'),(1527,'add_an_answers','Add answers','Add answers','Ø£Ø¶Ù Ø¥Ø¬Ø§Ø¨Ø§Øª','Antwoorden toevoegen','Ajouter des rÃ©ponses','Antworten hinzufÃ¼gen','Aggiungi risposte','Adicionar respostas','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¾Ñ‚Ð²ÐµÑ‚Ñ‹','Agregar respuestas','Cevap ekle'),(1528,'question_one','Question One','Question One','Ø³Ø¤Ø§Ù„ ÙˆØ§Ø­Ø¯','Vraag een','Question une','Frage eins','Domanda uno','Pergunta um','Ð’Ð¾Ð¿Ñ€Ð¾Ñ Ð¿ÐµÑ€Ð²Ñ‹Ð¹','Pregunta uno','Birinci soru'),(1529,'question_two','Question Two','Question Two','Ø§Ù„Ø³Ø¤Ø§Ù„ Ø§Ù„Ø«Ø§Ù†ÙŠ','Vraag twee','DeuxiÃ¨me question','Frage zwei','Domanda due','Pergunta dois','Ð’Ð¾Ð¿Ñ€Ð¾Ñ Ð²Ñ‚Ð¾Ñ€Ð¾Ð¹','Pregunta dos','Soru Ä°ki'),(1530,'question_three','Question Three','Question Three','Ø§Ù„Ø³Ø¤Ø§Ù„ Ø§Ù„Ø«Ø§Ù„Ø«','Vraag drie','TroisiÃ¨me question','Frage drei','Domanda tre','Pergunta trÃªs','Ð’Ð¾Ð¿Ñ€Ð¾Ñ Ñ‚Ñ€ÐµÑ‚Ð¸Ð¹','Pregunta tres','Soru ÃœÃ§'),(1531,'edit_job','Edit Job','Edit Job','ØªØ­Ø±ÙŠØ± Ø§Ù„ÙˆØ¸ÙŠÙØ©','Job bewerken','Modifier le travail','Job bearbeiten','Modifica lavoro','Editar trabalho','Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ','Editar trabajo','Ä°ÅŸi DÃ¼zenle'),(1532,'delete_job','Delete Job','Delete Job','Ø­Ø°Ù Ø§Ù„ÙˆØ¸ÙŠÙØ©','Taak verwijderen','Supprimer le travail','Job lÃ¶schen','Elimina lavoro','Excluir trabalho','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ','Eliminar trabajo','Ä°ÅŸi Sil'),(1533,'apply_now','Apply Now','Apply Now','Ù‚Ø¯Ù… Ø§Ù„Ø¢Ù†','Nu toepassen','Appliquer maintenant','Jetzt bewerben','Applica ora','Aplique agora','ÐŸÑ€Ð¸Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ ÑÐµÐ¹Ñ‡Ð°Ñ','Aplica ya','Åžimdi Uygula'),(1534,'experience','Experience','Experience','ØªØ¬Ø±Ø¨Ø©','Ervaring','ExpÃ©rience','Erfahrung','Esperienza','ExperiÃªncia','ÐžÐ¿Ñ‹Ñ‚','Experiencia','Deneyim'),(1535,'add_experience','Add Experience','Add Experience','Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ø®Ø¨Ø±Ø©','Voeg ervaring toe','Ajouter une expÃ©rience','Erfahrung hinzufÃ¼gen','Aggiungi esperienza','Adicionar ExperiÃªncia','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¾Ð¿Ñ‹Ñ‚','AÃ±adir experiencia','Deneyim ekle'),(1536,'position','Position','Position','Ù…ÙˆØ¶Ø¹','Positie','Position','Position','Posizione','PosiÃ§Ã£o','ÐŸÐ¾Ð·Ð¸Ñ†Ð¸Ñ','PosiciÃ³n','pozisyon'),(1537,'where_did_you_work','Where did you work?','Where did you work?','Ø£ÙŠÙ† Ø¹Ù…Ù„ØªØŸ','Waar heb je gewerkt?','OÃ¹ avez-vous travaillÃ©?','Wo hast du gearbeitet?','Dove lavori?','Onde vocÃª trabalhou?','Ð“Ð´Ðµ Ñ‚Ñ‹ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑˆÑŒ?','Â¿Donde trabajaste?','Nerede Ã§alÄ±ÅŸtÄ±n?'),(1538,'i_currently_work','I currently work here','I currently work here','Ø£Ù†Ø§ Ø­Ø§Ù„ÙŠØ§ Ø£Ø¹Ù…Ù„ Ù‡Ù†Ø§','Ik werk momenteel hier','Je travaille actuellement ici','Ich arbeite zurzeit hier','Attualmente lavoro qui','eu trabalho aqui atualmente','Ñ ÑÐµÐ¹Ñ‡Ð°Ñ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÑŽ Ð·Ð´ÐµÑÑŒ','actualmente trabajo aquÃ­','ÅŸuanda burada Ã§alÄ±ÅŸÄ±yorum'),(1539,'please_answer_questions','Please answer the questions','Please answer the questions','Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ù„Ø¥Ø¬Ø§Ø¨Ø© Ø¹Ù„Ù‰ Ø§Ù„Ø£Ø³Ø¦Ù„Ø©','Beantwoord alstublieft de vragen','S&#039;il vous plaÃ®t rÃ©pondre aux questions','Bitte beantworten Sie die Fragen','Per favore, rispondi alle domande','Por favor responda as perguntas','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¾Ñ‚Ð²ÐµÑ‚ÑŒÑ‚Ðµ Ð½Ð° Ð²Ð¾Ð¿Ñ€Ð¾ÑÑ‹','Por favor contesta las preguntas','LÃ¼tfen sorularÄ± cevaplayÄ±nÄ±z'),(1540,'you_apply_this_job','You have already applied for this job.','You have already applied for this job.','Ù„Ù‚Ø¯ ØªÙ‚Ø¯Ù…Øª Ø¨Ø§Ù„ÙØ¹Ù„ Ù„Ù‡Ø°Ù‡ Ø§Ù„ÙˆØ¸ÙŠÙØ©.','Je hebt al gesolliciteerd voor deze functie.','Vous avez dÃ©jÃ  postulÃ© pour ce travail.','Sie haben sich bereits auf diese Stelle beworben.','Hai giÃ  fatto domanda per questo lavoro.','VocÃª jÃ¡ se inscreveu para este trabalho.','Ð’Ñ‹ ÑƒÐ¶Ðµ Ð¿Ð¾Ð´Ð°Ð»Ð¸ Ð·Ð°ÑÐ²ÐºÑƒ Ð½Ð° ÑÑ‚Ñƒ Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ.','Ya has solicitado este trabajo.','Bu iÅŸ iÃ§in zaten baÅŸvurdunuz.'),(1541,'search_for_jobs','Search for jobs','Search for jobs','Ø§Ù„Ø¨Ø­Ø« Ø¹Ù† ÙˆØ¸Ø§Ø¦Ù','Zoek voor banen','Chercher du travail','Nach Jobs suchen','Cerca lavoro','Procure por empregos','ÐŸÐ¾Ð¸ÑÐº Ñ€Ð°Ð±Ð¾Ñ‚Ñ‹','BÃºsqueda de empleo','Ä°ÅŸ aramak'),(1542,'no_available_jobs','No available jobs to show.','No available jobs to show.','Ù„Ø§ ØªÙˆØ¬Ø¯ ÙˆØ¸Ø§Ø¦Ù Ù…ØªØ§Ø­Ø© Ù„Ù„Ø¹Ø±Ø¶.','Geen beschikbare taken om te tonen.','Aucun emploi disponible Ã  afficher.','Keine verfÃ¼gbaren Jobs zum Anzeigen.','Nessun lavoro disponibile da mostrare.','NÃ£o hÃ¡ trabalhos disponÃ­veis para mostrar.','ÐÐµÑ‚ Ð´Ð¾ÑÑ‚ÑƒÐ¿Ð½Ñ‹Ñ… Ñ€Ð°Ð±Ð¾Ñ‡Ð¸Ñ… Ð¼ÐµÑÑ‚, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ.','No hay trabajos disponibles para mostrar.','GÃ¶sterilecek mÃ¼sait iÅŸ yok.'),(1543,'load_more_jobs','Load more jobs','Load more jobs','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„ÙˆØ¸Ø§Ø¦Ù','Laad meer taken','Charger plus de jobs','Weitere Jobs laden','Carica piÃ¹ lavori','Carregar mais trabalhos','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð²Ð°ÐºÐ°Ð½ÑÐ¸Ð¹','Cargar mÃ¡s trabajos','Daha fazla iÅŸ yÃ¼kle'),(1544,'show_apply','Show Applies','Show Applies','Ø¹Ø±Ø¶ ØªØ·Ø¨ÙŠÙ‚','Tonen Toepassen','Afficher appliquer','Show Ãœbernehmen','Mostra Applica','Mostrar Aplicar','ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ ÐŸÑ€Ð¸Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ','Mostrar Aplicar','GÃ¶ster Uygula'),(1545,'common_things','Common Things','Common Things','Ø§Ù„Ø£Ø´ÙŠØ§Ø¡ Ø§Ù„Ù…Ø´ØªØ±ÙƒØ©','Gewone dingen','Choses communes','Allgemeine Dinge','Cose comuni','Coisas comuns','ÐžÐ±Ñ‰Ð¸Ðµ Ð²ÐµÑ‰Ð¸','Cosas en comÃºn','Ortak ÅŸeyler'),(1546,'thing_in_common','Thing in common','Thing in common','Ø´ÙŠØ¡ Ù…Ø´ØªØ±Ùƒ','Ding gemeen','Chose en commun','Gemeinsamkeiten','Cosa in comune','Coisa em comum','Ð’ÐµÑ‰ÑŒ Ð¾Ð±Ñ‰Ð°Ñ','Cosa en comÃºn','Ortak ÅŸey'),(1547,'things_in_common','Things in common','Things in common','Ø£Ø´ÙŠØ§Ø¡ Ù…Ø´ØªØ±ÙƒØ©','Gemeenschappelijke dingen','Choses en commun','Gemeinsame Dinge','Cose in comune','Coisas em comum','ÐžÐ±Ñ‰Ð¸Ðµ Ð²ÐµÑ‰Ð¸','Cosas en comun','Ortak ÅŸeyler'),(1548,'weather_unit','Weather Unit','Weather Unit','ÙˆØ­Ø¯Ø© Ø§Ù„Ø·Ù‚Ø³','Weereenheid','UnitÃ© mÃ©tÃ©orologique','Weather Unit','UnitÃ  meteorologica','Unidade MeteorolÃ³gica','ÐŸÐ¾Ð³Ð¾Ð´Ð½Ð°Ñ ÐµÐ´Ð¸Ð½Ð¸Ñ†Ð°','Unidad de clima','Hava Durumu Birimi'),(1549,'job_applied','Already applied','Already applied','ØªØ·Ø¨Ù‚ Ø¨Ø§Ù„ÙØ¹Ù„','Al toegepast','DÃ©jÃ  appliquÃ©','Bereits angewendet','GiÃ  applicato','JÃ¡ aplicado','Ð£Ð¶Ðµ Ð¿Ñ€Ð¸Ð¼ÐµÐ½ÐµÐ½Ð¾','Ya aplicado','Zaten uygulandÄ±'),(1550,'apply_your_job','applied to your job request.','applied to your job request.','ØªØ·Ø¨Ù‚ Ø¹Ù„Ù‰ Ø·Ù„Ø¨ Ø¹Ù…Ù„Ùƒ.','toegepast op uw sollicitatie.','appliquÃ© Ã  votre demande d&#039;emploi.','auf Ihre Stellenanfrage angewendet.','applicato alla tua richiesta di lavoro.','aplicada Ã  sua solicitaÃ§Ã£o de emprego.','Ð¿Ñ€Ð¸Ð¼ÐµÐ½ÑÐµÑ‚ÑÑ Ðº Ð²Ð°ÑˆÐµÐ¹ Ð·Ð°ÑÐ²ÐºÐµ Ð½Ð° Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ.','aplicado a su solicitud de trabajo.','iÅŸ isteÄŸinize uygulanÄ±r.'),(1551,'apply_job_successfully','You have successfully applied to this job.','You have successfully applied to this job.','Ù„Ù‚Ø¯ ØªÙ‚Ø¯Ù…Øª Ø¨Ù†Ø¬Ø§Ø­ Ø¥Ù„Ù‰ Ù‡Ø°Ù‡ Ø§Ù„ÙˆØ¸ÙŠÙØ©.','Je hebt met succes gesolliciteerd op deze functie.','Vous avez postulÃ© avec succÃ¨s Ã  ce travail.','Sie haben sich erfolgreich auf diese Stelle beworben.','Hai fatto domanda con successo a questo lavoro.','VocÃª se inscreveu com sucesso neste trabalho.','Ð’Ñ‹ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¿Ð¾Ð´Ð°Ð»Ð¸ Ð·Ð°ÑÐ²ÐºÑƒ Ð½Ð° ÑÑ‚Ñƒ Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ.','Has aplicado con Ã©xito a este trabajo.','Bu iÅŸe baÅŸarÄ±yla baÅŸvurdunuz.'),(1552,'job_successfully_created','Job request successfully created.','Job request successfully created.','ØªÙ… Ø¥Ù†Ø´Ø§Ø¡ Ø·Ù„Ø¨ Ø§Ù„ÙˆØ¸ÙŠÙØ© Ø¨Ù†Ø¬Ø§Ø­.','Taakaanvraag succesvol aangemaakt.','Demande de travail crÃ©Ã©e avec succÃ¨s.','Jobanfrage erfolgreich erstellt.','Richiesta di lavoro creata correttamente.','SolicitaÃ§Ã£o de tarefa criada com sucesso.','Ð—Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑÐ¾Ð·Ð´Ð°Ð½.','Solicitud de trabajo creada con Ã©xito.','Ä°ÅŸ isteÄŸi baÅŸarÄ±yla oluÅŸturuldu.'),(1553,'job_successfully_edited','Job request successfully updated.','Job request successfully updated.','ØªÙ… ØªØ­Ø¯ÙŠØ« Ø·Ù„Ø¨ Ø§Ù„ÙˆØ¸ÙŠÙØ© Ø¨Ù†Ø¬Ø§Ø­.','Taakaanvraag succesvol bijgewerkt.','Demande de travail mise Ã  jour avec succÃ¨s.','Jobanfrage erfolgreich aktualisiert.','Richiesta di lavoro aggiornata correttamente.','SolicitaÃ§Ã£o de tarefa atualizada com sucesso.','Ð—Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½.','Solicitud de trabajo actualizada correctamente.','Ä°ÅŸ isteÄŸi baÅŸarÄ±yla gÃ¼ncellendi.'),(1554,'invited_to_group','invited you to join the group chat.','invited you to join the group chat.','Ø¯Ø¹Ø§Ùƒ Ù„Ù„Ø§Ù†Ø¶Ù…Ø§Ù… Ø¥Ù„Ù‰ Ø§Ù„Ø¯Ø±Ø¯Ø´Ø© Ø§Ù„Ø¬Ù…Ø§Ø¹ÙŠØ©.','heeft u uitgenodigd om deel te nemen aan de groepschat.','vous invite Ã  rejoindre le chat en groupe.','hat Sie zum Gruppenchat eingeladen.','ti ha invitato a unirti alla chat di gruppo.','convidou vocÃª para participar do chat em grupo.','Ð¿Ñ€Ð¸Ð³Ð»Ð°ÑÐ¸Ð» Ð²Ð°Ñ Ð¿Ñ€Ð¸ÑÐ¾ÐµÐ´Ð¸Ð½Ð¸Ñ‚ÑŒÑÑ Ðº Ð³Ñ€ÑƒÐ¿Ð¿Ð¾Ð²Ð¾Ð¼Ñƒ Ñ‡Ð°Ñ‚Ñƒ.','te invitÃ³ a unirte al chat grupal.','sizi grup sohbetine katÄ±lmaya davet etti.'),(1555,'declined_group_chat_request','declined your group chat invitation.','declined your group chat invitation.','Ø±ÙØ¶ Ø¯Ø¹ÙˆØ© Ø§Ù„Ø¯Ø±Ø¯Ø´Ø© Ø§Ù„Ø¬Ù…Ø§Ø¹ÙŠØ©.','uw uitnodiging voor groepschat geweigerd.','a refusÃ© votre invitation Ã  la discussion de groupe.','hat Ihre Gruppenchat-Einladung abgelehnt.','rifiutato l&#039;invito alla chat di gruppo.','recusou seu convite para bate-papo em grupo.','Ð¾Ñ‚ÐºÐ»Ð¾Ð½Ð¸Ð» Ð¿Ñ€Ð¸Ð³Ð»Ð°ÑˆÐµÐ½Ð¸Ðµ Ð² Ð³Ñ€ÑƒÐ¿Ð¿Ð¾Ð²Ð¾Ð¹ Ñ‡Ð°Ñ‚.','rechazÃ³ su invitaciÃ³n de chat grupal.','grup sohbeti davetinizi reddetti.'),(1556,'offer_job','Offer a job','Offer a job','Ø§Ø¹Ø±Ø¶ Ø¹Ù…Ù„','Bied een baan aan','Offrir un emploi','Biete einen Job an','Offri un lavoro','Oferecer um emprego','ÐŸÑ€ÐµÐ´Ð»Ð¾Ð¶Ð¸Ñ‚ÑŒ Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ','Ofrecer un trabajo','Bir iÅŸ teklif'),(1557,'posted_job_offer','posted a job offer','posted a job offer','Ù†Ø´Ø± Ø¹Ø±Ø¶ Ø¹Ù…Ù„.','een vacature geplaatst.','postÃ© une offre d&#039;emploi.','hat ein Stellenangebot gepostet.','pubblicato un&#039;offerta di lavoro.','postou uma oferta de emprego.','Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð» Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ Ð¾ Ñ€Ð°Ð±Ð¾Ñ‚Ðµ.','publicÃ³ una oferta de trabajo.','bir iÅŸ teklifi yayÄ±nladÄ±.'),(1558,'verified_page','Verified Page','Verified Page','ØµÙØ­Ø© Ù…ÙˆØ«ÙˆÙ‚Ø©','Geverifieerde pagina','Page vÃ©rifiÃ©e','Verifizierte Seite','Pagina verificata','PÃ¡gina verificada','ÐŸÑ€Ð¾Ð²ÐµÑ€ÐµÐ½Ð½Ð°Ñ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð°','PÃ¡gina verificada','DoÄŸrulanmÄ±ÅŸ sayfa'),(1559,'unfriend','Unfriend','Unfriend','Ø§Ù„ØºØ§Ø¡ Ø§Ù„ØµØ¯Ø§Ù‚Ù‡','Unfriend','DÃ©samie','Unfreund','Unfriend','Anular','Unfriend','No amigo','ArkadaÅŸlÄ±ktan Ã‡Ä±kar'),(1560,'funding','Fundings','Fundings','Ø¨Ø§Ù„ØªÙ…ÙˆÙŠÙ„','financieringen','Des financements','FÃ¶rderungen','finanziamenti','Financiamentos','ÑÐ´ÐµÐ»ÐºÐ°Ð¼ Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ','Financiaciones','Fonlar'),(1561,'my_funding','My Funding Requests','My Funding Requests','Ø·Ù„Ø¨Ø§Øª Ø§Ù„ØªÙ…ÙˆÙŠÙ„ Ø§Ù„Ø®Ø§ØµØ© Ø¨ÙŠ','Mijn financieringsverzoeken','Mes demandes de financement','Meine Finanzierungsanfragen','Le mie richieste di finanziamento','Minhas solicitaÃ§Ãµes de financiamento','ÐœÐ¾Ð¸ Ð·Ð°ÑÐ²ÐºÐ¸ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ','Mis solicitudes de financiamiento','Finansman Ä°steklerim'),(1562,'create_new_funding','Create new funding request','Create new funding request','Ø¥Ù†Ø´Ø§Ø¡ Ø·Ù„Ø¨ ØªÙ…ÙˆÙŠÙ„ Ø¬Ø¯ÙŠØ¯','Maak een nieuw financieringsverzoek','CrÃ©er une nouvelle demande de financement','Erstellen Sie eine neue Finanzierungsanfrage','Crea una nuova richiesta di finanziamento','Criar nova solicitaÃ§Ã£o de financiamento','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð½Ð¾Ð²Ñ‹Ð¹ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ','Crear nueva solicitud de financiaciÃ³n','Yeni fon talebi yarat'),(1563,'funding_created','Funding request has been successfully created.','Funding request has been successfully created.','ØªÙ… Ø¥Ù†Ø´Ø§Ø¡ Ø·Ù„Ø¨ Ø§Ù„ØªÙ…ÙˆÙŠÙ„ Ø¨Ù†Ø¬Ø§Ø­.','Financieringsaanvraag is succesvol aangemaakt.','La demande de financement a Ã©tÃ© crÃ©Ã©e avec succÃ¨s.','Finanzierungsantrag wurde erfolgreich erstellt.','La richiesta di finanziamento Ã¨ stata creata correttamente.','A solicitaÃ§Ã£o de financiamento foi criada com sucesso.','Ð—Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑÐ¾Ð·Ð´Ð°Ð½.','La solicitud de financiaciÃ³n se ha creado con Ã©xito.','Finansman isteÄŸi baÅŸarÄ±yla oluÅŸturuldu.'),(1564,'no_funding_found','No funding found','No funding to show','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ ØªÙ…ÙˆÙŠÙ„','Geen financiering gevonden','Aucun financement trouvÃ©','Keine Finanzierung gefunden','Nessun finanziamento trovato','Nenhum financiamento encontrado','Ð¤Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾','No se encontraron fondos.','Fon bulunamadÄ±'),(1565,'delete_fund','Delete','Delete','Ø­Ø°Ù','Verwijder','Effacer','LÃ¶schen','Elimina','Excluir','ÑƒÐ´Ð°Ð»ÑÑ‚ÑŒ','Borrar','silmek'),(1566,'confirm_delete_fund','Are you sure that you want to delete this funding request?','Are you sure that you want to delete this funding request?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ø·Ù„Ø¨ Ø§Ù„ØªÙ…ÙˆÙŠÙ„ Ù‡Ø°Ø§ØŸ','Weet u zeker dat u dit financieringsverzoek wilt verwijderen?','ÃŠtes-vous sÃ»r de vouloir supprimer cette demande de financement?','MÃ¶chten Sie diesen Finanzierungsantrag wirklich lÃ¶schen?','Sei sicuro di voler eliminare questa richiesta di finanziamento?','Tem certeza de que deseja excluir esta solicitaÃ§Ã£o de financiamento?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾Ñ‚ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ?','Â¿EstÃ¡ seguro de que desea eliminar esta solicitud de financiaciÃ³n?','Bu fon talebini silmek istediÄŸinize emin misiniz?'),(1567,'funding_edited','Funding request has been successfully updated.','Funding request has been successfully updated.','ØªÙ… ØªØ­Ø¯ÙŠØ« Ø·Ù„Ø¨ Ø§Ù„ØªÙ…ÙˆÙŠÙ„ Ø¨Ù†Ø¬Ø§Ø­.','Financieringsaanvraag is succesvol bijgewerkt.','La demande de financement a Ã©tÃ© mise Ã  jour avec succÃ¨s.','Der Finanzierungsantrag wurde erfolgreich aktualisiert.','La richiesta di finanziamento Ã¨ stata aggiornata correttamente.','A solicitaÃ§Ã£o de financiamento foi atualizada com sucesso.','Ð—Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½.','La solicitud de financiaciÃ³n se ha actualizado correctamente.','Fon talebi baÅŸarÄ±yla gÃ¼ncellendi.'),(1568,'most_recent_funding','Most recent funding','Most recent funding','Ø£Ø­Ø¯Ø« ØªÙ…ÙˆÙŠÙ„','Meest recente financiering','Financement le plus rÃ©cent','Letzte Finanzierung','Finanziamento piÃ¹ recente','Financiamento mais recente','Ð¡Ð°Ð¼Ð¾Ðµ Ð¿Ð¾ÑÐ»ÐµÐ´Ð½ÐµÐµ Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ','Financiamiento mÃ¡s reciente','En yeni finansman'),(1569,'raised_of','Raised of','Raised of','Ø£Ø«Ø§Ø±Øª Ù…Ù†','Opgeheven van','Ã‰levÃ© de','Erzogen von','Allevato di','Levantado de','ÐŸÐ¾Ð´Ð½ÑÐ» Ð¸Ð·','Criado de','YÃ¼kseltilmiÅŸ'),(1570,'donate','Donate','Donate','ØªØ¨Ø±Ø¹','schenken','Faire un don','Spenden','Donare','Doar','Ð¶ÐµÑ€Ñ‚Ð²Ð¾Ð²Ð°Ñ‚ÑŒ','Donar','baÄŸÄ±ÅŸlamak'),(1571,'donated_to','donated to your funding request.','donated to your funding request.','ØªØ¨Ø±Ø¹Øª Ù„Ø·Ù„Ø¨ Ø§Ù„ØªÙ…ÙˆÙŠÙ„ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ.','gedoneerd aan uw financieringsverzoek.','fait un don Ã  votre demande de financement.','gespendet auf Ihre Finanzierungsanfrage.','donato alla tua richiesta di finanziamento.','doado para sua solicitaÃ§Ã£o de financiamento.','Ð¿Ð¾Ð¶ÐµÑ€Ñ‚Ð²Ð¾Ð²Ð°Ð» Ð½Ð° Ð²Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ.','donado a su solicitud de financiaciÃ³n.','fon talebinize baÄŸÄ±ÅŸta bulunabilirsiniz.'),(1572,'total_donations','Total donations','Total donations','Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„ØªØ¨Ø±Ø¹Ø§Øª','Totaal aantal donaties','Total des dons','Gesamtspenden','Donazioni totali','Total de doaÃ§Ãµes','Ð’ÑÐµÐ³Ð¾ Ð¿Ð¾Ð¶ÐµÑ€Ñ‚Ð²Ð¾Ð²Ð°Ð½Ð¸Ð¹','Donaciones totales','Toplam baÄŸÄ±ÅŸ'),(1573,'recent_donations','Recent donations','Recent donations','Ø§Ù„ØªØ¨Ø±Ø¹Ø§Øª Ø§Ù„Ø£Ø®ÙŠØ±Ø©','Recente donaties','Dons rÃ©cents','Aktuelle Spenden','Donazioni recenti','DoaÃ§Ãµes recentes','ÐÐµÐ´Ð°Ð²Ð½Ð¸Ðµ Ð¿Ð¾Ð¶ÐµÑ€Ñ‚Ð²Ð¾Ð²Ð°Ð½Ð¸Ñ','Donaciones recientes','Son baÄŸÄ±ÅŸlar'),(1574,'instagram','Instagram','Instagram','Ø¥ÙŠÙ†Ø³ØªØ§Ø¬Ø±Ø§Ù…','Instagram','Instagram','Instagram','Instagram','Instagram','Instagram','Instagram','Instagram'),(1575,'created_donation_request','created a donation request','created a donation request','Ø®Ù„Ù‚ Ø·Ù„Ø¨ Ø§Ù„ØªØ¨Ø±Ø¹','een donatieverzoek gemaakt','crÃ©Ã© une demande de don','hat eine Spendenanfrage erstellt','ha creato una richiesta di donazione','criou uma solicitaÃ§Ã£o de doaÃ§Ã£o','ÑÐ¾Ð·Ð´Ð°Ð» Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ð¿Ð¾Ð¶ÐµÑ€Ñ‚Ð²Ð¾Ð²Ð°Ð½Ð¸Ðµ','creÃ³ una solicitud de donaciÃ³n','baÄŸÄ±ÅŸ isteÄŸi oluÅŸturdu'),(1576,'people_with_common','Meet people with things in common','Meet people with things in common','Ø§Ù„ØªÙ‚ÙŠ Ø¨Ø£Ø´Ø®Ø§Øµ Ù„Ø¯ÙŠÙ‡Ù… Ø£Ø´ÙŠØ§Ø¡ Ù…Ø´ØªØ±ÙƒØ©','Ontmoet mensen met dingen gemeen','Rencontrer des gens avec des choses en commun','Treffen Sie Menschen mit Gemeinsamkeiten','Incontra persone con cose in comune','ConheÃ§a pessoas com coisas em comum','Ð’ÑÑ‚Ñ€ÐµÑ‚Ð¸Ñ‚ÑŒ Ð»ÑŽÐ´ÐµÐ¹ Ñ Ð¾Ð±Ñ‰Ð¸Ð¼Ð¸ Ð²ÐµÑ‰Ð°Ð¼Ð¸','Conoce gente con cosas en comÃºn','Ortak ÅŸeyleri olan insanlarla tanÄ±ÅŸÄ±n'),(1577,'donated_to_request','donated to a funding request','donated to a funding request','ØªØ¨Ø±Ø¹Øª Ù„Ø·Ù„Ø¨ Ø§Ù„ØªÙ…ÙˆÙŠÙ„','gedoneerd aan een financieringsverzoek','donnÃ© Ã  une demande de financement','an einen FÃ¶rderantrag gespendet','donato a una richiesta di finanziamento','doado a uma solicitaÃ§Ã£o de financiamento','Ð¿Ð¾Ð¶ÐµÑ€Ñ‚Ð²Ð¾Ð²Ð°Ð» Ð½Ð° Ð·Ð°Ð¿Ñ€Ð¾Ñ Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ','donado a una solicitud de financiaciÃ³n','fon talebine baÄŸÄ±ÅŸlandÄ±'),(1578,'you_cant_pay','You can`t donate more than {{money}}','You can`t donate more than {{money}}','Ù„Ø§ ÙŠÙ…ÙƒÙ†Ùƒ Ø§Ù„Ø¯ÙØ¹ Ø£ÙƒØ«Ø± Ù…Ù† {{money}}','U kunt niet meer betalen dan {{money}}','Vous ne pouvez pas payer plus que {{money}}','Sie kÃ¶nnen nicht mehr als {{money}} bezahlen','Non puoi pagare piÃ¹ di {{money}}','VocÃª nÃ£o pode pagar mais do que {{money}}','Ð’Ñ‹ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð·Ð°Ð¿Ð»Ð°Ñ‚Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ, Ñ‡ÐµÐ¼ {{money}}','No puede pagar mÃ¡s de {{money}}','{{Money}} &#039;dan daha fazla Ã¶deyemezsiniz.'),(1579,'confirm_delete_job','Are you sure that you want to delete this job?','Are you sure that you want to delete this job?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ù‡ Ø§Ù„ÙˆØ¸ÙŠÙØ©ØŸ','Weet u zeker dat u deze taak wilt verwijderen?','ÃŠtes-vous sÃ»r de vouloir supprimer ce travail?','MÃ¶chten Sie diesen Job wirklich lÃ¶schen?','Sei sicuro di voler eliminare questo lavoro?','Tem certeza de que deseja excluir este trabalho?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ñƒ Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ?','Â¿EstÃ¡s seguro de que deseas eliminar este trabajo?','Bu iÅŸi silmek istediÄŸinden emin misin?'),(1580,'1580','category','Accounting & Finance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1581,'1581','category','Admin & Office',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1582,'1582','category','Art & Design',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1583,'1583','category','Business Operations',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1584,'1584','category','Cleaning & Facilities',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1585,'1585','category','Community & Social Services',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1586,'1586','category','Computer & Data',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1587,'1587','category','Construction & Mining',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1588,'1588','category','Education',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1589,'1589','category','Farming & Forestry',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1590,'1590','category','Healthcare',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1591,'1591','category','Installation, Maintenance & Repair',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1592,'1592','category','Legal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1593,'1593','category','Management',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1594,'1594','category','Manufacturing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1595,'1595','category','Media & Communication',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1596,'1596','category','Personal Care',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1597,'1597','category','Protective Services',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1598,'1598','category','Restaurant & Hospitality',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1599,'1599','category','Retail & Sales',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1600,'1600','category','Science & Engineering',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1601,'1601','category','Sports & Entertainment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1602,'1602','category','Transportation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1603,'lost_in_space','','Looks like you&#039;re lost in space!','ÙŠØ¨Ø¯Ùˆ Ø£Ù†Ùƒ ÙÙ‚Ø¯Øª ÙÙŠ Ø§Ù„ÙØ¶Ø§Ø¡!','Het lijkt erop dat je verdwaald bent in de ruimte!','On dirait que tu es perdu dans lespace!','Sieht aus wie Sie im Weltraum verloren sind!','Sembra che ti sei perso nello spazio!','Parece que vocÃª estÃ¡ perdido no espaÃ§o!','ÐŸÐ¾Ñ…Ð¾Ð¶Ðµ, Ð²Ñ‹ Ð¿Ð¾Ñ‚ÐµÑ€ÑÐ»Ð¸ÑÑŒ Ð² ÐºÐ¾ÑÐ¼Ð¾ÑÐµ!','Â¡Parece que estÃ¡s perdido en el espacio!','Uzayda kaybolmuÅŸ gibisin!'),(1604,'add_funds','','Add Funds','Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ø£Ù…ÙˆØ§Ù„','Fondsen toevoegen','Ajouter des fonds','Geld hinzufÃ¼gen','Aggiungere fondi','Adicionar fundos','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ ÑÑ€ÐµÐ´ÑÑ‚Ð²Ð°','AÃ±adir fondos','Fon ekle'),(1605,'send_money_friends','','Send money to friends','Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø£Ù…ÙˆØ§Ù„ Ø¥Ù„Ù‰ Ø§Ù„Ø£ØµØ¯Ù‚Ø§Ø¡','Stuur geld naar vrienden','Envoyer de largent Ã  des amis','Geld an Freunde senden','Invia denaro agli amici','Envie dinheiro para amigos','ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ Ð´ÐµÐ½ÑŒÐ³Ð¸ Ð´Ñ€ÑƒÐ·ÑŒÑÐ¼','EnvÃ­a dinero a amigos','ArkadaÅŸlarÄ±na para gÃ¶nder'),(1606,'view_analytics','','View Analytics','Ø¹Ø±Ø¶ Ø§Ù„ØªØ­Ù„ÙŠÙ„Ø§Øª','Bekijk Analytics','Afficher les analyses','Analytics anzeigen','Visualizza Analytics','Ver anÃ¡lise','ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ð°Ð½Ð°Ð»Ð¸Ñ‚Ð¸ÐºÐ¸','Ver anÃ¡lisis','Analyticsâ€™i GÃ¶rÃ¼ntÃ¼le'),(1607,'next','','Next','Ø§Ù„ØªØ§Ù„Ù‰','volgende','Prochain','NÃ¤chster','Il prossimo','PrÃ³ximo','ÑÐ»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ð¹','prÃ³ximo','Sonraki'),(1608,'ad_media','','Media','ÙˆØ³Ø§Ø¦Ù„ Ø§Ù„Ø¥Ø¹Ù„Ø§Ù…','Media','MÃ©dias','Medien','Media','meios de comunicaÃ§Ã£o','Ð¡ÐœÐ˜','Media','medya'),(1609,'targeting','','Targeting','Ø§Ø³ØªÙ‡Ø¯Ø§Ù','Gericht op','Ciblage','Targeting','Targeting','Alvejando','Ð½Ð°Ñ†ÐµÐ»Ð¸Ð²Ð°Ð½Ð¸Ðµ','OrientaciÃ³n','Hedefleme'),(1610,'comp_name','','Company name','Ø§Ø³Ù… Ø§Ù„Ø´Ø±ÙƒØ©','Bedrijfsnaam','Nom de la compagnie','Name der Firma','Nome della ditta','Nome da empresa','ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ð¸','Nombre de empresa','Åžirket AdÄ±'),(1611,'camp_title','','Campaign title','Ø¹Ù†ÙˆØ§Ù† Ø§Ù„Ø­Ù…Ù„Ø©','Campagnetitel','Titre de la campagne','Kampagnentitel','Titolo della campagna','TÃ­tulo da campanha','ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ ÐºÐ°Ð¼Ð¿Ð°Ð½Ð¸Ð¸','TÃ­tulo de la campaÃ±a','Kampanya baÅŸlÄ±ÄŸÄ±'),(1612,'website_url','','Website URL','Ø¹Ù†ÙˆØ§Ù† Ù…ÙˆÙ‚Ø¹ Ø§Ù„ÙˆÙŠØ¨','Website URL','Website URL','Website URL','URL del sito Web','URL do site','URL ÑÐ°Ð¹Ñ‚Ð°','URL del sitio web','Web sitesi URLsi'),(1613,'camp_desc','','Campaign description','ÙˆØµÙ Ø§Ù„Ø­Ù…Ù„Ø©','Campagnebeschrijving','Description de la campagne','Kampagnenbeschreibung','Descrizione della campagna','DescriÃ§Ã£o da campanha','ÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ ÐºÐ°Ð¼Ð¿Ð°Ð½Ð¸Ð¸','DescripciÃ³n de la campaÃ±a.','Kampanya aÃ§Ä±klamasÄ±'),(1614,'ad_img_help','','Select a image for your campaign','Ø§Ø®ØªØ± ØµÙˆØ±Ø© Ù„Ø­Ù…Ù„ØªÙƒ','Selecteer een afbeelding voor uw campagne','SÃ©lectionnez une image pour votre campagne','WÃ¤hlen Sie ein Bild fÃ¼r Ihre Kampagne aus','Seleziona unimmagine per la tua campagna','Selecione uma imagem para sua campanha','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ Ð´Ð»Ñ Ð²Ð°ÑˆÐµÐ¹ ÐºÐ°Ð¼Ð¿Ð°Ð½Ð¸Ð¸','Seleccione una imagen para su campaÃ±a','KampanyanÄ±z iÃ§in bir resim seÃ§in'),(1615,'ad_start_date_help','','Select campaign starting date, UTC','Ø­Ø¯Ø¯ ØªØ§Ø±ÙŠØ® Ø¨Ø¯Ø¡ Ø§Ù„Ø­Ù…Ù„Ø© ØŒ UTC','Selecteer campagne startdatum, UTC','SÃ©lectionnez la date de dÃ©but de la campagne, UTC','WÃ¤hlen Sie das Startdatum der Kampagne (UTC)','Seleziona la data di inizio della campagna, UTC','Selecionar data de inÃ­cio da campanha, UTC','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´Ð°Ñ‚Ñƒ Ð½Ð°Ñ‡Ð°Ð»Ð° ÐºÐ°Ð¼Ð¿Ð°Ð½Ð¸Ð¸, UTC','Seleccione la fecha de inicio de la campaÃ±a, UTC','Kampanya baÅŸlangÄ±Ã§ â€‹â€‹tarihini seÃ§in, UTC'),(1616,'ad_end_date_help','','Select campaign ending date, UTC','Ø­Ø¯Ø¯ ØªØ§Ø±ÙŠØ® Ø§Ù†ØªÙ‡Ø§Ø¡ Ø§Ù„Ø­Ù…Ù„Ø© ØŒ UTC','Selecteer einddatum campagne, UTC','SÃ©lectionnez la date de fin de la campagne, UTC','WÃ¤hlen Sie das Enddatum der Kampagne (UTC)','Seleziona la data di fine della campagna, UTC','Selecionar data de tÃ©rmino da campanha, UTC','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´Ð°Ñ‚Ñƒ Ð¾ÐºÐ¾Ð½Ñ‡Ð°Ð½Ð¸Ñ ÐºÐ°Ð¼Ð¿Ð°Ð½Ð¸Ð¸, UTC','Seleccione la fecha de finalizaciÃ³n de la campaÃ±a, UTC','Kampanya bitiÅŸ tarihini seÃ§in, UTC'),(1617,'ad_desc_help','','Tell users what your campaign is about','Ø£Ø®Ø¨Ø± Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ø¨Ù…Ø§Ù‡ÙŠØ© Ø­Ù…Ù„ØªÙƒ','Vertel gebruikers waar uw campagne over gaat','Expliquez aux utilisateurs en quoi consiste votre campagne','Teilen Sie den Nutzern mit, worum es in Ihrer Kampagne geht','DÃ¬ agli utenti di cosa tratta la tua campagna','Informe aos usuÃ¡rios o que Ã© sua campanha','Ð Ð°ÑÑÐºÐ°Ð¶Ð¸Ñ‚Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼ Ð¾ Ð²Ð°ÑˆÐµÐ¹ ÐºÐ°Ð¼Ð¿Ð°Ð½Ð¸Ð¸','Informe a los usuarios de quÃ© trata su campaÃ±a','KullanÄ±cÄ±lara kampanyanÄ±zÄ±n ne hakkÄ±nda olduÄŸunu sÃ¶yleyin'),(1618,'camp_budget','','Campaign Budget','Ù…ÙŠØ²Ø§Ù†ÙŠØ© Ø§Ù„Ø­Ù…Ù„Ø©','Campagne Budget','budget de campagne','Kampagnenbudget','Budget della campagna','OrÃ§amento de Campanha','Ð‘ÑŽÐ´Ð¶ÐµÑ‚ ÐºÐ°Ð¼Ð¿Ð°Ð½Ð¸Ð¸','Presupuesto CampaÃ±a','Kampanya BÃ¼tÃ§esi'),(1619,'camp_budget_help','','Enter the amount you want to spend on this campaign','Ø£Ø¯Ø®Ù„ Ø§Ù„Ù…Ø¨Ù„Øº Ø§Ù„Ø°ÙŠ ØªØ±ÙŠØ¯ Ø¥Ù†ÙØ§Ù‚Ù‡ Ø¹Ù„Ù‰ Ù‡Ø°Ù‡ Ø§Ù„Ø­Ù…Ù„Ø©','Voer het bedrag in dat u aan deze campagne wilt besteden','Saisissez le montant que vous souhaitez dÃ©penser pour cette campagne','Geben Sie den Betrag ein, den Sie fÃ¼r diese Kampagne ausgeben mÃ¶chten','Inserisci limporto che desideri spendere per questa campagna','Digite o valor que vocÃª deseja gastar nesta campanha','Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ ÑÑƒÐ¼Ð¼Ñƒ, ÐºÐ¾Ñ‚Ð¾Ñ€ÑƒÑŽ Ð²Ñ‹ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ Ð¿Ð¾Ñ‚Ñ€Ð°Ñ‚Ð¸Ñ‚ÑŒ Ð½Ð° ÑÑ‚Ñƒ ÐºÐ°Ð¼Ð¿Ð°Ð½Ð¸ÑŽ','Ingrese el monto que desea gastar en esta campaÃ±a','Bu kampanyada harcamak istediÄŸiniz tutarÄ± girin'),(1620,'ad_preview','','Ad preview','Ù…Ø¹Ø§ÙŠÙ†Ø© Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†','Advertentievoorbeeld','AperÃ§u de lannonce','Anzeigenvorschau','Ad preview','VisualizaÃ§Ã£o do anÃºncio','ÐŸÑ€ÐµÐ´Ð²Ð°Ñ€Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ñ€ÐµÐºÐ»Ð°Ð¼Ñ‹','Vista previa del anuncio','Reklam Ã¶nizlemesi'),(1621,'album_name_help','','Choose your album name','Ø§Ø®ØªØ± Ø§Ø³Ù… Ø§Ù„Ø£Ù„Ø¨ÙˆÙ… Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ','Kies je albumnaam','Choisissez le nom de votre album','WÃ¤hlen Sie Ihren Albumnamen','Scegli il nome del tuo album','Escolha o nome do seu Ã¡lbum','Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ Ð²Ð°ÑˆÐµÐ³Ð¾ Ð°Ð»ÑŒÐ±Ð¾Ð¼Ð°','Elige el nombre de tu Ã¡lbum','AlbÃ¼m adÄ±nÄ±zÄ± seÃ§in'),(1622,'browse_articles','','Browse articles','ØªØµÙØ­ Ø§Ù„Ù…Ù‚Ø§Ù„Ø§Øª','Blader door artikelen','Browse articles','Artikel durchsuchen','Sfoglia gli articoli','Procurar artigos','ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ ÑÑ‚Ð°Ñ‚ÐµÐ¹','Examinar artÃ­culos','Makalelere gÃ¶z at'),(1623,'no_blogs_created','','You haven&#039;t created any articles yet.','Ù„Ù… ØªÙ†Ø´Ø¦ Ø£ÙŠ Ù…Ù‚Ø§Ù„Ø§Øª Ø­ØªÙ‰ Ø§Ù„Ø¢Ù†.','U heeft nog geen artikelen gemaakt.','Vous navez pas encore crÃ©Ã© darticles.','Sie haben noch keine Artikel erstellt.','Non hai ancora creato alcun articolo.','VocÃª ainda nÃ£o criou nenhum artigo.','Ð’Ñ‹ ÐµÑ‰Ðµ Ð½Ðµ ÑÐ¾Ð·Ð´Ð°Ð»Ð¸ Ð½Ð¸ Ð¾Ð´Ð½Ð¾Ð¹ ÑÑ‚Ð°Ñ‚ÑŒÐ¸.','AÃºn no has creado ningÃºn artÃ­culo.','HenÃ¼z herhangi bir makale yazmadÄ±nÄ±z.'),(1624,'create_group_chat','','Create a group chat','Ø¥Ù†Ø´Ø§Ø¡ Ø¯Ø±Ø¯Ø´Ø© Ø¬Ù…Ø§Ø¹ÙŠØ©','Maak een groepschat','CrÃ©er un chat en groupe','Erstelle einen Gruppenchat','Crea una chat di gruppo','Crie um chat em grupo','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð³Ñ€ÑƒÐ¿Ð¿Ð¾Ð²Ð¾Ð¹ Ñ‡Ð°Ñ‚','Crea un chat grupal','Grup sohbeti oluÅŸtur'),(1625,'turn_on','','Turn On','Ø´ØºÙ„Ù‡','Aanzetten','Allumer','Anschalten','Accendere','Ligar','Ð’ÐºÐ»ÑŽÑ‡Ð°Ñ‚ÑŒ','Encender','AÃ§'),(1626,'type_message','','Type a message','Ø§ÙƒØªØ¨ Ø±Ø³Ø§Ù„Ø©','Type een bericht','Type a message','Geben Sie eine Nachricht ein','Scrivi un messaggio','Digite uma mensagem','Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ','Escribe un mensaje','Bir mesaj yazÄ±n'),(1627,'edit_funding','','Edit funding request','ØªØ­Ø±ÙŠØ± Ø·Ù„Ø¨ Ø§Ù„ØªÙ…ÙˆÙŠÙ„','Financieringsaanvraag bewerken','Modifier la demande de financement','FÃ¶rderantrag bearbeiten','Modifica richiesta di finanziamento','Editar solicitaÃ§Ã£o de financiamento','Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð·Ð°ÑÐ²ÐºÑƒ Ð½Ð° Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ','Editar solicitud de financiaciÃ³n','Finansman talebini dÃ¼zenle'),(1628,'fund_amount','','How much money you would like to receive?','ÙƒÙ… Ù…Ù† Ø§Ù„Ù…Ø§Ù„ ØªØ±ÙŠØ¯ Ø§Ù„Ø­ØµÙˆÙ„ Ø¹Ù„ÙŠÙ‡ØŸ','Hoeveel geld wilt u ontvangen?','Combien dargent aimeriez-vous recevoir?','Wie viel Geld mÃ¶chten Sie erhalten?','Quanti soldi vorresti ricevere?','Quanto dinheiro vocÃª gostaria de receber?','Ð¡ÐºÐ¾Ð»ÑŒÐºÐ¾ Ð´ÐµÐ½ÐµÐ³ Ð²Ñ‹ Ñ…Ð¾Ñ‚ÐµÐ»Ð¸ Ð±Ñ‹ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ?','Â¿CuÃ¡nto dinero te gustarÃ­a recibir?','Ne kadar para almak istersin?'),(1629,'browse_events','','Browse Events','ØªØµÙØ­ Ø§Ù„Ø£Ø­Ø¯Ø§Ø«','Bladeren door evenementen','Parcourir les Ã©vÃ©nements','Events durchsuchen','Sfoglia gli eventi','Procurar Eventos','ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ð¹','Examinar eventos','Etkinliklere GÃ¶z At'),(1630,'start_time','','Start time','ÙˆÙ‚Øª Ø§Ù„Ø¨Ø¯Ø¡','Starttijd','Heure de dÃ©but','Startzeit','Orario di inizio','Hora de inÃ­cio','Ð’Ñ€ÐµÐ¼Ñ Ð½Ð°Ñ‡Ð°Ð»Ð°','Hora de inicio','BaÅŸlama zamanÄ±'),(1631,'end_time','','End time','ÙˆÙ‚Øª Ø§Ù„Ù†Ù‡Ø§ÙŠØ©','Eindtijd','Heure de fin','Endzeit','Fine del tempo','Fim do tempo','Ð’Ñ€ÐµÐ¼Ñ Ð¾ÐºÐ¾Ð½Ñ‡Ð°Ð½Ð¸Ñ','Hora de finalizaciÃ³n','BitiÅŸ zamanÄ±'),(1632,'no_one_created_event','','It seems like no one created an event yet!','ÙŠØ¨Ø¯Ùˆ Ø£Ù† Ù„Ø§ Ø£Ø­Ø¯ Ø£Ù†Ø´Ø£ Ø­Ø¯Ø«Ù‹Ø§ Ø­ØªÙ‰ Ø§Ù„Ø¢Ù†!','Het lijkt erop dat nog niemand een evenement heeft gemaakt!','Il semble que personne na encore crÃ©Ã© dÃ©vÃ©nement!','Es scheint, dass noch niemand ein Event erstellt hat!','Sembra che nessuno abbia ancora creato un evento!','Parece que ninguÃ©m criou um evento ainda!','ÐšÐ°Ð¶ÐµÑ‚ÑÑ, Ñ‡Ñ‚Ð¾ Ð½Ð¸ÐºÑ‚Ð¾ ÐµÑ‰Ðµ Ð½Ðµ ÑÐ¾Ð·Ð´Ð°Ð» ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ðµ!','Â¡Parece que nadie creÃ³ un evento todavÃ­a!','HenÃ¼z kimse bir etkinlik oluÅŸturmadÄ±!'),(1633,'event_start','','When this event will start?','Ù…ØªÙ‰ Ø³ÙŠØ¨Ø¯Ø£ Ù‡Ø°Ø§ Ø§Ù„Ø­Ø¯Ø«ØŸ','Wanneer begint dit evenement?','Quand cet Ã©vÃ©nement va-t-il commencer?','Wann beginnt diese Veranstaltung?','Quando inizierÃ  questo evento?','Quando este evento comeÃ§arÃ¡?','ÐšÐ¾Ð³Ð´Ð° ÑÑ‚Ð¾ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ðµ Ð½Ð°Ñ‡Ð½ÐµÑ‚ÑÑ?','Â¿CuÃ¡ndo comenzarÃ¡ este evento?','Bu etkinlik ne zaman baÅŸlayacak?'),(1634,'event_end','','When this event will end?','Ù…ØªÙ‰ Ø³ÙŠÙ†ØªÙ‡ÙŠ Ù‡Ø°Ø§ Ø§Ù„Ø­Ø¯Ø«ØŸ','Wanneer eindigt dit evenement?','Quand cet Ã©vÃ©nement se terminera-t-il?','Wann endet diese Veranstaltung?','Quando finirÃ  questo evento?','Quando este evento terminarÃ¡?','ÐšÐ¾Ð³Ð´Ð° ÑÑ‚Ð¾ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ðµ Ð·Ð°ÐºÐ¾Ð½Ñ‡Ð¸Ñ‚ÑÑ?','Â¿CuÃ¡ndo terminarÃ¡ este evento?','Bu etkinlik ne zaman bitecek?'),(1635,'browse_forum','','Browse Forum','ØªØµÙØ­ Ø§Ù„Ù…Ù†ØªØ¯Ù‰','Browse forum','Parcourir le forum','Forum durchsuchen','Sfoglia il forum','Navegar no FÃ³rum','ÐžÐ±Ð·Ð¾Ñ€ Ñ„Ð¾Ñ€ÑƒÐ¼Ð°','Examinar el foro','Foruma GÃ¶z At'),(1636,'browse_funding','','Browse Funding','ØªØµÙØ­ Ø§Ù„ØªÙ…ÙˆÙŠÙ„','Browse financiering','Parcourir le financement','Durchsuchen Sie die Finanzierung','Sfoglia finanziamenti','Procurar financiamento','ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ñ„Ð¸Ð½Ð°Ð½ÑÐ¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ','Examinar Financiamiento','Finansmana GÃ¶z AtÄ±n'),(1637,'filter','','Filter','Ù…Ù†Ù‚ÙŠ','Filter','Filtre','Filter','Filtro','Filtro','Ð¤Ð¸Ð»ÑŒÑ‚Ñ€','Filtrar','filtre'),(1638,'personal_pic','','Your personal picture','ØµÙˆØ±ØªÙƒ Ø§Ù„Ø´Ø®ØµÙŠØ©','Je persoonlijke foto','Votre photo personnelle','Dein persÃ¶nliches Bild','La tua foto personale','Sua foto pessoal','Ð’Ð°ÑˆÐ° Ð»Ð¸Ñ‡Ð½Ð°Ñ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸Ñ','Tu foto personal','KiÅŸisel resmin'),(1639,'dont_have_account','','Don&#039;t have an account?','Ù„ÙŠØ³ Ù„Ø¯ÙŠÙƒ Ø­Ø³Ø§Ø¨ØŸ','Heb je nog geen account?','Vous navez pas de compte?','Sie haben noch keinen Account?','Non hai un account?','NÃ£o possui uma conta?','Ð£ Ð²Ð°Ñ Ð½ÐµÑ‚ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚Ð°?','Â¿No tienes una cuenta?','HesabÄ±nÄ±z yok mu?'),(1640,'already_have_account','','Already have an account?','Ù‡Ù„ Ù„Ø¯ÙŠÙƒ Ø­Ø³Ø§Ø¨ØŸ','Heb je al een account?','Vous avez dÃ©jÃ  un compte?','Hast du schon ein Konto?','Hai giÃ  un account?','jÃ¡ tem uma conta?','Ð£Ð¶Ðµ ÐµÑÑ‚ÑŒ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚?','Â¿Ya tienes una cuenta?','Zaten hesabÄ±nÄ±z var mÄ±?'),(1641,'approve_post_text','','Your post was submitted, we will review your content soon.','ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ù…Ù†Ø´ÙˆØ± Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ ØŒ Ø³Ù†Ø±Ø§Ø¬Ø¹ Ø§Ù„Ù…Ø­ØªÙˆÙ‰ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ù‚Ø±ÙŠØ¨Ù‹Ø§.','Je bericht is verzonden. We zullen je inhoud binnenkort beoordelen.','Votre message a Ã©tÃ© envoyÃ©, nous examinerons bientÃ´t votre contenu.','Ihr Beitrag wurde Ã¼bermittelt. Wir werden Ihren Inhalt in KÃ¼rze Ã¼berprÃ¼fen.','Il tuo post Ã¨ stato inviato, esamineremo presto i tuoi contenuti.','Sua postagem foi enviada. Analisaremos seu conteÃºdo em breve.','Ð’Ð°ÑˆÐµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾, Ð¼Ñ‹ ÑÐºÐ¾Ñ€Ð¾ Ñ€Ð°ÑÑÐ¼Ð¾Ñ‚Ñ€Ð¸Ð¼ Ð²Ð°Ñˆ ÐºÐ¾Ð½Ñ‚ÐµÐ½Ñ‚.','Su publicaciÃ³n fue enviada, revisaremos su contenido pronto.','GÃ¶nderiniz gÃ¶nderildi, iÃ§eriÄŸinizi yakÄ±nda inceleyeceÄŸiz.'),(1642,'remove_all_sessions','','Logout From All Sessions','ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø®Ø±ÙˆØ¬ Ù…Ù† Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø¯ÙˆØ±Ø§Øª','Uitloggen bij alle sessies','DÃ©connexion de toutes les sessions','Von allen Sitzungen abmelden','Esci da tutte le sessioni','Sair de todas as sessÃµes','Ð’Ñ‹Ð¹Ñ‚Ð¸ Ð¸Ð· Ð²ÑÐµÑ… ÑÐµÑÑÐ¸Ð¹','Cerrar sesiÃ³n de todas las sesiones','TÃ¼m Oturumlardan Ã‡Ä±kÄ±ÅŸ Yap'),(1643,'approve_post','','Your post was approved and published!','ØªÙ…Øª Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„Ù‰ Ù…Ø´Ø§Ø±ÙƒØªÙƒ ÙˆÙ†Ø´Ø±Ù‡Ø§!','Je bericht is goedgekeurd en gepubliceerd!','Votre message a Ã©tÃ© approuvÃ© et publiÃ©!','Ihr Beitrag wurde genehmigt und verÃ¶ffentlicht!','Il tuo post Ã¨ stato approvato e pubblicato!','Sua postagem foi aprovada e publicada!','Ð’Ð°Ñˆ Ð¿Ð¾ÑÑ‚ Ð±Ñ‹Ð» Ð¾Ð´Ð¾Ð±Ñ€ÐµÐ½ Ð¸ Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð½!','Â¡Tu publicaciÃ³n fue aprobada y publicada!','GÃ¶nderiniz onaylandÄ± ve yayÄ±nlandÄ±!'),(1644,'approve_post','','Your post was approved and published!','ØªÙ…Øª Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„Ù‰ Ù…Ø´Ø§Ø±ÙƒØªÙƒ ÙˆÙ†Ø´Ø±Ù‡Ø§!','Je bericht is goedgekeurd en gepubliceerd!','Votre message a Ã©tÃ© approuvÃ© et publiÃ©!','Ihr Beitrag wurde genehmigt und verÃ¶ffentlicht!','Il tuo post Ã¨ stato approvato e pubblicato!','Sua postagem foi aprovada e publicada!','Ð’Ð°Ñˆ Ð¿Ð¾ÑÑ‚ Ð±Ñ‹Ð» Ð¾Ð´Ð¾Ð±Ñ€ÐµÐ½ Ð¸ Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð½!','Â¡Tu publicaciÃ³n fue aprobada y publicada!','GÃ¶nderiniz onaylandÄ± ve yayÄ±nlandÄ±!'),(1645,'no_going_people','','There are no going users.','Ù„Ø§ ÙŠÙˆØ¬Ø¯ Ù…Ø³ØªØ®Ø¯Ù…ÙˆÙ† Ø°Ø§Ù‡Ø¨ÙˆÙ†.','Er zijn geen vertrekkende gebruikers.','Il ny a aucun utilisateur actif.','Es gibt keine gehenden Benutzer.','Non ci sono utenti attivi.','NÃ£o hÃ¡ usuÃ¡rios ativos.','Ð¢Ð°Ð¼ Ð½ÐµÑ‚ Ð¸Ð´ÑƒÑ‰Ð¸Ñ… Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹.','No hay usuarios que vayan.','Giden kullanÄ±cÄ± yok.'),(1646,'liked_pages','','Liked Pages','ØµÙØ­Ø§Øª Ø£Ø¹Ø¬Ø¨ØªÙ†ÙŠ','Liked Pages','Pages aimÃ©es','Gefallene Seiten','Pagine piaciute','PÃ¡ginas curtidas','ÐŸÐ¾Ð½Ñ€Ð°Ð²Ð¸Ð²ÑˆÐ¸ÐµÑÑ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','PÃ¡ginas Me gusta','BeÄŸenilen Sayfalar'),(1647,'joined_groups','','Joined Groups','Ø§Ù†Ø¶Ù… Ø¥Ù„Ù‰ Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø§Øª','Aangesloten groepen','Groupes joints','Verbundene Gruppen','Gruppi uniti','Grupos Associados','ÐžÐ±ÑŠÐµÐ´Ð¸Ð½ÐµÐ½Ð½Ñ‹Ðµ Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','Grupos unidos','KatÄ±lan Gruplar'),(1648,'earn_text_create_blog','','Earn %d points by creating a new blog','ÙƒØ³Ø¨Ùª d Ù†Ù‚Ø§Ø· Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø¥Ù†Ø´Ø§Ø¡ Ù…Ø¯ÙˆÙ†Ø© Ø¬Ø¯ÙŠØ¯Ø©','Verdien %d punten door een nieuw blog te maken','Gagnez %d points en crÃ©ant un nouveau blog','Verdiene %d Punkte, indem du ein neues Blog erstellst','Guadagna %d punti creando un nuovo blog','Ganhe %d pontos criando um novo blog','Ð—Ð°Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ð¹Ñ‚Ðµ %d Ð±Ð°Ð»Ð»Ð¾Ð², ÑÐ¾Ð·Ð´Ð°Ð² Ð½Ð¾Ð²Ñ‹Ð¹ Ð±Ð»Ð¾Ð³','Gane %d puntos creando un nuevo blog','Yeni bir blog oluÅŸturarak %d puan kazanÄ±n'),(1649,'view_interested_Candidates','','View Interested Candidates','Ø¹Ø±Ø¶ Ø§Ù„Ù…Ø±Ø´Ø­ÙŠÙ† Ø§Ù„Ù…Ù‡ØªÙ…ÙŠÙ†','Bekijk geÃ¯nteresseerde kandidaten','Voir les candidats intÃ©ressÃ©s','Interessierte Kandidaten anzeigen','Visualizza i candidati interessati','Exibir candidatos interessados','ÐŸÐ¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ Ð·Ð°Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ¾Ð²Ð°Ð½Ð½Ñ‹Ñ… ÐºÐ°Ð½Ð´Ð¸Ð´Ð°Ñ‚Ð¾Ð²','Ver candidatos interesados','Ä°lgilenen AdaylarÄ± GÃ¶ster'),(1650,'memories','','Memories','Ø°ÙƒØ±ÙŠØ§Øª','Herinneringen','Souvenirs','Erinnerungen','Ricordi','RecordaÃ§Ãµes','Ð’Ð¾ÑÐ¿Ð¾Ð¼Ð¸Ð½Ð°Ð½Ð¸Ñ','Recuerdos','hatÄ±ralar'),(1651,'on_this_day','','On this day','ÙÙŠ Ù‡Ø°Ø§ Ø§Ù„ÙŠÙˆÙ…','Op deze dag','Ce jour-lÃ ','An diesem Tage','In questo giorno','Neste dia','Ð’ ÑÑ‚Ð¾Ñ‚ Ð´ÐµÐ½ÑŒ','En este dÃ­a','BugÃ¼n'),(1652,'there_are_no_memories_this_day','','You don&#039;t have any memories on this day.','Ù„ÙŠØ³ Ù„Ø¯ÙŠÙƒ Ø£ÙŠ Ø°ÙƒØ±ÙŠØ§Øª ÙÙŠ Ù‡Ø°Ø§ Ø§Ù„ÙŠÙˆÙ….','Je hebt op deze dag geen herinneringen.','Vous navez aucun souvenir ce jour-lÃ .','Sie haben an diesem Tag keine Erinnerungen.','Non hai ricordi in questo giorno.','VocÃª nÃ£o tem lembranÃ§as neste dia.','Ð£ Ñ‚ÐµÐ±Ñ Ð½ÐµÑ‚ Ð²Ð¾ÑÐ¿Ð¾Ð¼Ð¸Ð½Ð°Ð½Ð¸Ð¹ Ð² ÑÑ‚Ð¾Ñ‚ Ð´ÐµÐ½ÑŒ.','No tienes ningÃºn recuerdo en este dÃ­a.','Bu gÃ¼nle ilgili hatÄ±ralarÄ±nÄ±z yok.'),(1653,'friendversaries','','Friendaversary','Friendaversary','Vriendschap','Friendaversary','Friendaversary','Friendaversary','Friendaversary','Friendaversary','Friendaversary','Friendaversary'),(1654,'memory_this_day','','You have remembrance on this day','Ù„Ø¯ÙŠÙƒ Ø°ÙƒØ±Ù‰ ÙÙŠ Ù‡Ø°Ø§ Ø§Ù„ÙŠÙˆÙ…','Je hebt op deze dag een herinnering','Vous vous souvenez de ce jour','Sie haben Erinnerung an diesen Tag','Hai un ricordo in questo giorno','VocÃª tem lembranÃ§a neste dia','Ð£ Ð²Ð°Ñ ÐµÑÑ‚ÑŒ Ð¿Ð°Ð¼ÑÑ‚ÑŒ Ð² ÑÑ‚Ð¾Ñ‚ Ð´ÐµÐ½ÑŒ','Recuerdas este dÃ­a','Bu gÃ¼n hatÄ±rlÄ±yorsun'),(1655,'page_analytics','','Page Analytics','ØªØ­Ù„ÙŠÙ„Ø§Øª Ø§Ù„ØµÙØ­Ø©','Pagina-analyse','Page Analytics','Seitenanalyse','Analisi della pagina','Page Analytics','ÐÐ½Ð°Ð»Ð¸Ñ‚Ð¸ÐºÐ° ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†','AnalÃ­tica de pÃ¡gina','Sayfa Analizi'),(1656,'total_likes','','Total Likes','Ø¥Ø¬Ù…Ø§Ù„ÙŠ Ø§Ù„Ø¥Ø¹Ø¬Ø§Ø¨Ø§Øª','Totaal aantal likes','Total Jaime','Total Likes','Mi Piace totali','Total de curtidas','Ð’ÑÐµÐ³Ð¾ Ð»Ð°Ð¹ÐºÐ¾Ð²','Me gusta total','Toplam BeÄŸenme'),(1657,'today','','Today','Ø§Ù„ÙŠÙˆÙ…','Vandaag','Aujourdhui','Heute','Oggi','Hoje','CÐµÐ³Ð¾Ð´Ð½Ñ','Hoy','BugÃ¼n'),(1658,'this_month','','This Month','Ù‡Ø°Ø§ Ø§Ù„Ø´Ù‡Ø±','Deze maand','Ce mois-ci','Diesen Monat','Questo mese','Este mÃªs','Ð­Ñ‚Ð¾Ñ‚ Ð¼ÐµÑÑÑ†','Este mes','Bu ay'),(1659,'this_year','','This Year','Ù‡Ø°Ø§ Ø§Ù„Ø¹Ø§Ù…','Dit jaar','Cette annÃ©e','Dieses Jahr','Questanno','Este ano','Ð­Ñ‚Ð¾Ñ‚ Ð³Ð¾Ð´','Este aÃ±o','Bu yÄ±l'),(1660,'group_analytics','','Group Analytics','ØªØ­Ù„ÙŠÙ„Ø§Øª Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Groepsanalyse','Analytique de groupe','Gruppenanalyse','Analisi di gruppo','AnÃ¡lise de grupo','Ð“Ñ€ÑƒÐ¿Ð¿Ð¾Ð²Ð°Ñ Ð°Ð½Ð°Ð»Ð¸Ñ‚Ð¸ÐºÐ°','AnalÃ­tica de grupo','Grup Analizi'),(1661,'total_member','','Total Members','Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„Ø£Ø¹Ø¶Ø§Ø¡','Totaal aantal leden','Total des membres','Mitglieder insgesamt','Membri totali','Total de membros','Ð’ÑÐµÐ³Ð¾ ÑƒÑ‡Ð°ÑÑ‚Ð½Ð¸ÐºÐ¾Ð²','Miembros totales','Toplam Ãœye'),(1662,'thread_reply','','replied to your thread','Ø±Ø¯ Ø¹Ù„Ù‰ Ù…ÙˆØ¶ÙˆØ¹Ùƒ','antwoordde op uw thread','rÃ©pondu Ã  votre fil','hat auf deinen Thread geantwortet','rispose alla tua discussione','respondeu ao seu tÃ³pico','Ð¾Ñ‚Ð²ÐµÑ‚Ð¸Ð» Ð² Ð²Ð°ÑˆÑƒ Ð²ÐµÑ‚ÐºÑƒ','respondiÃ³ a tu hilo','iÅŸ parÃ§acÄ±ÄŸÄ±na cevap verdi'),(1663,'share_on_timeline','','Share on my timeline','Ø´Ø§Ø±Ùƒ Ø¹Ù„Ù‰ Ø§Ù„Ø¬Ø¯ÙˆÙ„ Ø§Ù„Ø²Ù…Ù†ÙŠ Ø§Ù„Ø®Ø§Øµ Ø¨ÙŠ','Deel op mijn tijdlijn','Partager sur ma chronologie','Teile auf meiner Timeline','Condividi sulla mia cronologia','Compartilhar na minha linha do tempo','ÐŸÐ¾Ð´ÐµÐ»Ð¸Ñ‚ÑŒÑÑ Ð½Ð° Ð¼Ð¾ÐµÐ¼ Ð³Ñ€Ð°Ñ„Ð¸ÐºÐµ','Comparte en mi lÃ­nea de tiempo','Zaman Ã§izelgemde paylaÅŸ'),(1664,'shared_forum','','shared a forum','Ø´Ø§Ø±Ùƒ Ù…Ù†ØªØ¯Ù‰','heeft een forum gedeeld','shared a forum','hat ein Forum geteilt','ha condiviso un forum','compartilhou um fÃ³rum','Ð¿Ð¾Ð´ÐµÐ»Ð¸Ð»ÑÑ Ñ„Ð¾Ñ€ÑƒÐ¼Ð¾Ð¼','compartiÃ³ un foro','bir forum paylaÅŸtÄ±'),(1665,'forum_shared','','Forum posts were successfully added to your timeline!','ØªÙ…Øª Ø¥Ø¶Ø§ÙØ© Ù…Ø´Ø§Ø±ÙƒØ§Øª Ø§Ù„Ù…Ù†ØªØ¯Ù‰ Ø¥Ù„Ù‰ Ø§Ù„Ø¬Ø¯ÙˆÙ„ Ø§Ù„Ø²Ù…Ù†ÙŠ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ø¨Ù†Ø¬Ø§Ø­!','Forumberichten zijn met succes toegevoegd aan uw tijdlijn!','Les messages du forum ont Ã©tÃ© ajoutÃ©s avec succÃ¨s Ã  votre chronologie!','ForenbeitrÃ¤ge wurden erfolgreich zu Ihrer Timeline hinzugefÃ¼gt!','I post del forum sono stati aggiunti correttamente alla tua sequenza temporale!','As postagens do fÃ³rum foram adicionadas com sucesso Ã  sua linha do tempo!','Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ Ð½Ð° Ñ„Ð¾Ñ€ÑƒÐ¼Ðµ Ð±Ñ‹Ð»Ð¸ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ Ð² Ð²Ð°Ñˆ Ð³Ñ€Ð°Ñ„Ð¸Ðº!','Â¡Las publicaciones del foro se agregaron con Ã©xito a su lÃ­nea de tiempo!','Forum gÃ¶nderileri zaman Ã§izelgenize baÅŸarÄ±yla eklendi!'),(1666,'thread_shared','','Thread was successfully added to your timeline!','ØªÙ…Øª Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹ Ø¨Ù†Ø¬Ø§Ø­ Ø¥Ù„Ù‰ Ù…Ø®Ø·Ø·Ùƒ Ø§Ù„Ø²Ù…Ù†ÙŠ!','Discussie is met succes toegevoegd aan je tijdlijn!','Le fil a Ã©tÃ© ajoutÃ© avec succÃ¨s Ã  votre chronologie!','Thread wurde erfolgreich zu Ihrer Timeline hinzugefÃ¼gt!','La discussione Ã¨ stata aggiunta correttamente alla tua cronologia!','O tÃ³pico foi adicionado com sucesso Ã  sua linha do tempo!','Ð¢ÐµÐ¼Ð° Ð±Ñ‹Ð»Ð° ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° â€‹â€‹Ð² Ð²Ð°Ñˆ Ð³Ñ€Ð°Ñ„Ð¸Ðº!','Â¡El hilo se agregÃ³ con Ã©xito a su lÃ­nea de tiempo!','Konu zaman Ã§izelgenize baÅŸarÄ±yla eklendi!'),(1667,'shared_thread','','shared a thread','Ø´Ø§Ø±Ùƒ Ù…ÙˆØ¶ÙˆØ¹','deelde een thread','a partagÃ© un fil de discussion','hat einen Thread geteilt','ha condiviso una discussione','compartilhou um tÃ³pico','Ð¿Ð¾Ð´ÐµÐ»Ð¸Ð»ÑÑ Ñ‚ÐµÐ¼Ð¾Ð¹','ha compartido un hilo','bir konu paylaÅŸtÄ±'),(1668,'sub_category','','Sub Category','ØªØµÙ†ÙŠÙ ÙØ±Ø¹ÙŠ','Subcategorie','Sous-catÃ©gorie','Unterkategorie','Sottocategoria','Subcategoria','ÐŸÐ¾Ð´ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸Ñ','SubcategorÃ­a','Alt Kategori'),(1669,'remaining_text','','Remaining {{time}} for your membership','{{time}} Ø§Ù„Ù…ØªØ¨Ù‚ÙŠØ© Ù„Ø¹Ø¶ÙˆÙŠØªÙƒ','Resterende {{tijd}} voor uw lidmaatschap','Reste {{time}} pour votre adhÃ©sion','Verbleibende {{Zeit}} fÃ¼r Ihre Mitgliedschaft','Restante {{time}} per la tua iscrizione','Restante {{time}} para sua associaÃ§Ã£o','ÐžÑÑ‚Ð°Ð»Ð¾ÑÑŒ {{time}} Ð´Ð»Ñ Ð²Ð°ÑˆÐµÐ³Ð¾ Ñ‡Ð»ÐµÐ½ÑÑ‚Ð²Ð°','Restante {{time}} para su membresÃ­a','ÃœyeliÄŸiniz iÃ§in {{time}} kaldÄ±'),(1670,'free_plan_upload','','To upload images, videos, and audio files, you have to upgrade to pro member.','Ù„ØªØ­Ù…ÙŠÙ„ Ø§Ù„ØµÙˆØ± ÙˆÙ…Ù‚Ø§Ø·Ø¹ Ø§Ù„ÙÙŠØ¯ÙŠÙˆ ÙˆØ§Ù„Ù…Ù„ÙØ§Øª Ø§Ù„ØµÙˆØªÙŠØ© ØŒ ÙŠØ¬Ø¨ Ø§Ù„ØªØ±Ù‚ÙŠØ© Ø¥Ù„Ù‰ Ø¹Ø¶Ùˆ Ù…Ø­ØªØ±Ù.','Om afbeeldingen, videos en audiobestanden te uploaden, moet je upgraden naar pro-lid.','Pour tÃ©lÃ©charger des images, des vidÃ©os et des fichiers audio, vous devez passer Ã  un membre pro.','Um Bilder, Videos und Audiodateien hochzuladen, mÃ¼ssen Sie ein Upgrade auf Pro Member durchfÃ¼hren.','Per caricare immagini, video e file audio, devi effettuare lupgrade a un membro professionista.','Para fazer upload de imagens, vÃ­deos e arquivos de Ã¡udio, Ã© necessÃ¡rio atualizar para o membro profissional.','Ð§Ñ‚Ð¾Ð±Ñ‹ Ð·Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ, Ð²Ð¸Ð´ÐµÐ¾ Ð¸ Ð°ÑƒÐ´Ð¸Ð¾ Ñ„Ð°Ð¹Ð»Ñ‹, Ð²Ñ‹ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ Ð¿ÐµÑ€ÐµÐ¹Ñ‚Ð¸ Ð½Ð° Ð¿Ñ€Ð¾Ñ„ÐµÑÑÐ¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ñ‡Ð»ÐµÐ½.','Para cargar imÃ¡genes, videos y archivos de audio, debe actualizar a miembro profesional.','Resim, video ve ses dosyasÄ± yÃ¼klemek iÃ§in profesyonel Ã¼yeye yÃ¼kseltmelisiniz.'),(1671,'free_plan_upload_pro','','To upload images, videos, and audio files, you have to upgrade to pro member.','Ù„ØªØ­Ù…ÙŠÙ„ Ø§Ù„ØµÙˆØ± ÙˆÙ…Ù‚Ø§Ø·Ø¹ Ø§Ù„ÙÙŠØ¯ÙŠÙˆ ÙˆØ§Ù„Ù…Ù„ÙØ§Øª Ø§Ù„ØµÙˆØªÙŠØ© ØŒ ÙŠØ¬Ø¨ Ø§Ù„ØªØ±Ù‚ÙŠØ© Ø¥Ù„Ù‰ Ø¹Ø¶Ùˆ Ù…Ø­ØªØ±Ù.','Om afbeeldingen, videos en audiobestanden te uploaden, moet je upgraden naar pro-lid.','Pour tÃ©lÃ©charger des images, des vidÃ©os et des fichiers audio, vous devez passer Ã  un membre pro.','Um Bilder, Videos und Audiodateien hochzuladen, mÃ¼ssen Sie ein Upgrade auf Pro Member durchfÃ¼hren.','Per caricare immagini, video e file audio, devi effettuare lupgrade a un membro professionista.','Para fazer upload de imagens, vÃ­deos e arquivos de Ã¡udio, Ã© necessÃ¡rio atualizar para o membro profissional.','Ð§Ñ‚Ð¾Ð±Ñ‹ Ð·Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ, Ð²Ð¸Ð´ÐµÐ¾ Ð¸ Ð°ÑƒÐ´Ð¸Ð¾ Ñ„Ð°Ð¹Ð»Ñ‹, Ð²Ñ‹ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ Ð¿ÐµÑ€ÐµÐ¹Ñ‚Ð¸ Ð½Ð° Ð¿Ñ€Ð¾Ñ„ÐµÑÑÐ¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ñ‡Ð»ÐµÐ½.','Para cargar imÃ¡genes, videos y archivos de audio, debe actualizar a miembro profesional.','Resim, video ve ses dosyasÄ± yÃ¼klemek iÃ§in profesyonel Ã¼yeye yÃ¼kseltmelisiniz.'),(1672,'approve_blog','','Your blog was approved and published!','ØªÙ…Øª Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„Ù‰ Ù…Ø¯ÙˆÙ†ØªÙƒ ÙˆÙ†Ø´Ø±Ù‡Ø§!','Je blog is goedgekeurd en gepubliceerd!','Votre blog a Ã©tÃ© approuvÃ© et publiÃ©!','Ihr Blog wurde genehmigt und verÃ¶ffentlicht!','Il tuo blog Ã¨ stato approvato e pubblicato!','Seu blog foi aprovado e publicado!','Ð’Ð°Ñˆ Ð±Ð»Ð¾Ð³ Ð±Ñ‹Ð» Ð¾Ð´Ð¾Ð±Ñ€ÐµÐ½ Ð¸ Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð½!','Su blog fue aprobado y publicado!','Blogunuz onaylandÄ± ve yayÄ±nlandÄ±!'),(1673,'refund','','Refund','Ø¥Ø¹Ø§Ø¯Ø© Ù…Ø§Ù„','Terugbetaling','Rembourser','RÃ¼ckerstattung','Rimborso','Reembolso','Ð’Ð¾Ð·Ð²Ñ€Ð°Ñ‚ Ð´ÐµÐ½ÐµÐ³','Reembolso','Geri Ã¶deme'),(1674,'refund_page','','Refund page','ØµÙØ­Ø© Ø§Ø³ØªØ±Ø¯Ø§Ø¯ Ø§Ù„Ø£Ù…ÙˆØ§Ù„','Pagina terugbetalen','Page de remboursement','RÃ¼ckerstattungsseite','Pagina di rimborso','PÃ¡gina de reembolso','Ð¡Ñ‚Ñ€Ð°Ð½Ð¸Ñ†Ð° Ð²Ð¾Ð·Ð²Ñ€Ð°Ñ‚Ð°','PÃ¡gina de reembolso','Geri Ã¶deme sayfasÄ±'),(1675,'reason','','Reason','Ø§Ù„Ø³Ø¨Ø¨','Reden','Raison','Grund','Motivo','RazÃ£o','Ð¿Ñ€Ð¸Ñ‡Ð¸Ð½Ð°','RazÃ³n','neden'),(1676,'business_days','','We will review your request within 2 - 3 business days.','Ø³Ù†Ø±Ø§Ø¬Ø¹ Ø·Ù„Ø¨Ùƒ Ø®Ù„Ø§Ù„ 2 - 3 Ø£ÙŠØ§Ù… Ø¹Ù…Ù„.','We beoordelen uw verzoek binnen twee tot drie werkdagen.','Nous examinerons votre demande dans un dÃ©lai de 2 Ã  3 jours ouvrables.','Wir werden Ihre Anfrage innerhalb von 2 - 3 Werktagen prÃ¼fen.','Esamineremo la tua richiesta entro 2-3 giorni lavorativi.','Analisaremos sua solicitaÃ§Ã£o dentro de 2 a 3 dias Ãºteis.','ÐœÑ‹ Ñ€Ð°ÑÑÐ¼Ð¾Ñ‚Ñ€Ð¸Ð¼ Ð²Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð² Ñ‚ÐµÑ‡ÐµÐ½Ð¸Ðµ 2â€“3 Ñ€Ð°Ð±Ð¾Ñ‡Ð¸Ñ… Ð´Ð½ÐµÐ¹.','Revisaremos su solicitud dentro de 2 a 3 dÃ­as hÃ¡biles.','Ä°steÄŸinizi 2-3 iÅŸ gÃ¼nÃ¼ iÃ§inde inceleyeceÄŸiz.'),(1677,'you_not_membership','','Oops, You are not a subscriber, you can&#039;t request refund.','Ø¹ÙÙˆÙ‹Ø§ ØŒ Ø£Ù†Øª Ù„Ø³Øª Ù…Ø´ØªØ±ÙƒÙ‹Ø§ ØŒ Ù„Ø§ ÙŠÙ…ÙƒÙ†Ùƒ Ø·Ù„Ø¨ Ø§Ø³ØªØ±Ø¯Ø§Ø¯ Ø§Ù„Ø£Ù…ÙˆØ§Ù„.','Oeps, u bent geen abonnee, u kunt geen restitutie aanvragen.','Oups, vous nÃªtes pas abonnÃ©, vous ne pouvez pas demander de remboursement.','Hoppla, Sie sind kein Abonnent, Sie kÃ¶nnen keine RÃ¼ckerstattung beantragen.','Spiacenti, non sei un abbonato, non puoi richiedere il rimborso.','Ops, vocÃª nÃ£o Ã© assinante, nÃ£o pode solicitar reembolso.','Ðš ÑÐ¾Ð¶Ð°Ð»ÐµÐ½Ð¸ÑŽ, Ð²Ñ‹ Ð½Ðµ ÑÐ²Ð»ÑÐµÑ‚ÐµÑÑŒ Ð¿Ð¾Ð´Ð¿Ð¸ÑÑ‡Ð¸ÐºÐ¾Ð¼, Ð²Ñ‹ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð·Ð°Ð¿Ñ€Ð¾ÑÐ¸Ñ‚ÑŒ Ð²Ð¾Ð·Ð²Ñ€Ð°Ñ‚.','Vaya, no eres un suscriptor, no puedes solicitar un reembolso.','Hata! Abone deÄŸilsiniz, geri Ã¶deme isteÄŸinde bulunamazsÄ±nÄ±z.'),(1678,'select_your_membership','','Please select your correct membership','ÙŠØ±Ø¬Ù‰ ØªØ­Ø¯ÙŠØ¯ Ø¹Ø¶ÙˆÙŠØªÙƒ Ø§Ù„ØµØ­ÙŠØ­Ø©','Selecteer uw juiste lidmaatschap','Veuillez sÃ©lectionner votre adhÃ©sion correcte','Bitte wÃ¤hlen Sie Ihre korrekte Mitgliedschaft','Seleziona la tua iscrizione corretta','Selecione sua associaÃ§Ã£o correta','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð¾Ðµ Ñ‡Ð»ÐµÐ½ÑÑ‚Ð²Ð¾','Por favor seleccione su membresÃ­a correcta','LÃ¼tfen doÄŸru Ã¼yeliÄŸinizi seÃ§in'),(1679,'request_review_text','','Your request is under review, we will notify you once its approved','Ø·Ù„Ø¨Ùƒ Ù‚ÙŠØ¯ Ø§Ù„Ù…Ø±Ø§Ø¬Ø¹Ø© ØŒ ÙˆØ³ÙˆÙ Ù†Ø®Ø·Ø±Ùƒ Ø¨Ù…Ø¬Ø±Ø¯ Ø°Ù„Ùƒ','Uw verzoek wordt beoordeeld, we zullen u hiervan op de hoogte stellen','Votre demande est en cours dexamen, nous vous en informerons une fois','Ihre Anfrage wird geprÃ¼ft, wir werden Sie benachrichtigen, sobald sie vorliegt','La tua richiesta Ã¨ in fase di revisione, ti informeremo una volta','O seu pedido estÃ¡ em revisÃ£o, iremos notificÃ¡-lo assim que','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð°Ñ…Ð¾Ð´Ð¸Ñ‚ÑÑ Ð½Ð° Ñ€Ð°ÑÑÐ¼Ð¾Ñ‚Ñ€ÐµÐ½Ð¸Ð¸, Ð¼Ñ‹ ÑÐ¾Ð¾Ð±Ñ‰Ð¸Ð¼ Ð²Ð°Ð¼, ÐºÐ°Ðº Ñ‚Ð¾Ð»ÑŒÐºÐ¾','Su solicitud estÃ¡ bajo revisiÃ³n, se lo notificaremos una vez','Ä°steÄŸiniz inceleniyor, size bir kez bildireceÄŸiz'),(1680,'refund_decline','','Your refund request has been declined!','ØªÙ… Ø±ÙØ¶ Ø·Ù„Ø¨ Ø§Ø³ØªØ±Ø¯Ø§Ø¯ Ø§Ù„Ø£Ù…ÙˆØ§Ù„ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ!','Uw teruggaveverzoek is afgewezen!','Votre demande de remboursement a Ã©tÃ© refusÃ©e!','Ihr RÃ¼ckerstattungsantrag wurde abgelehnt!','La tua richiesta di rimborso Ã¨ stata rifiutata!','O seu pedido de reembolso foi recusado!','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ð²Ð¾Ð·Ð²Ñ€Ð°Ñ‚ Ð±Ñ‹Ð» Ð¾Ñ‚ÐºÐ»Ð¾Ð½ÐµÐ½!','Â¡Su solicitud de reembolso ha sido rechazada!','Geri Ã¶deme isteÄŸiniz reddedildi!'),(1681,'refund_approve','','Your refund request has been approved! please check your balance.','ØªÙ…Øª Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„Ù‰ Ø·Ù„Ø¨ Ø§Ø³ØªØ±Ø¯Ø§Ø¯ Ø§Ù„Ø£Ù…ÙˆØ§Ù„ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ! ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ø±ØµÙŠØ¯Ùƒ.','Uw teruggaveverzoek is goedgekeurd! controleer uw saldo.','Votre demande de remboursement a Ã©tÃ© approuvÃ©e! veuillez vÃ©rifier votre solde.','Ihr RÃ¼ckerstattungsantrag wurde genehmigt! Bitte Ã¼berprÃ¼fen Sie Ihr Guthaben.','La tua richiesta di rimborso Ã¨ stata approvata! controlla il tuo saldo.','O seu pedido de reembolso foi aprovado! por favor, verifique seu saldo.','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ð²Ð¾Ð·Ð²Ñ€Ð°Ñ‚ Ð±Ñ‹Ð» Ð¾Ð´Ð¾Ð±Ñ€ÐµÐ½! Ð¿Ð¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ ÑÐ²Ð¾Ð¹ Ð±Ð°Ð»Ð°Ð½Ñ.','Â¡Su solicitud de reembolso ha sido aprobada! por favor revise su saldo.','Geri Ã¶deme isteÄŸiniz onaylandÄ±! lÃ¼tfen bakiyenizi kontrol edin.'),(1682,'paystack','','Paystack','Paystack','Paystack','Paystack','Paystack','Paystack','Paystack','Paystack','Paystack','Paystack'),(1683,'cashfree','','Cashfree','Ù†Ù‚Ø¯ÙŠ','Geldvrij','Cashfree','Bargeldlos','Cashfree','Cashfree','Cashfree','Libre de efectivo','Cashfree'),(1684,'offer','','Offer','Ø¹Ø±Ø¶','Aanbod','Offre','Angebot','Offrire','Oferta','ÐŸÑ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ','Oferta','Teklif'),(1685,'create_offer','','Create New Offer','Ø¥Ù†Ø´Ø§Ø¡ Ø¹Ø±Ø¶ Ø¬Ø¯ÙŠØ¯','Maak een nieuwe aanbieding','CrÃ©er une nouvelle offre','Neues Angebot erstellen','Crea nuova offerta','Criar nova oferta','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð½Ð¾Ð²Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ','Crear nueva oferta','Yeni Teklif OluÅŸtur'),(1686,'post_offer_text','','Post a offer for {{page_name}} on','Ø§Ù†Ø´Ø± Ø¹Ø±Ø¶Ù‹Ø§ Ù„Ù€ {{page_name}} ÙÙŠ','Plaats een aanbieding voor {{page_name}} op','Publiez une offre pour {{page_name}} sur','VerÃ¶ffentlichen Sie ein Angebot fÃ¼r {{Seitenname}} am','Pubblica unofferta per {{page_name}} su','Poste uma oferta para {{page_name}} no','Ð Ð°Ð·Ð¼ÐµÑÑ‚Ð¸Ñ‚Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ Ð´Ð»Ñ {{page_name}} Ð²','Publique una oferta para {{page_name}} en','{{Page_name}} iÃ§in bir teklif gÃ¶nderin'),(1687,'create_offer','','Create New Offer','Ø¥Ù†Ø´Ø§Ø¡ Ø¹Ø±Ø¶ Ø¬Ø¯ÙŠØ¯','Maak een nieuwe aanbieding','CrÃ©er une nouvelle offre','Neues Angebot erstellen','Crea nuova offerta','Criar nova oferta','Ð¡Ð¾Ð·Ð´Ð°Ñ‚ÑŒ Ð½Ð¾Ð²Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ','Crear nueva oferta','Yeni Teklif OluÅŸtur'),(1688,'offer_type','','Offer Type','Ù†ÙˆØ¹ Ø§Ù„Ø¹Ø±Ø¶','Aanbiedingstype','Type doffre','Angebotsart','Tipo di offerta','Tipo de oferta','Ð¢Ð¸Ð¿ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ñ','Tipo de oferta','Teklif TÃ¼rÃ¼'),(1689,'discount_percent','','Discount Percent','Ù†Ø³Ø¨Ø© Ø§Ù„Ø®ØµÙ…','Kortingspercentage','Pourcentage de remise','Rabatt Prozent','Percentuale di sconto','Porcentagem de desconto','ÐŸÑ€Ð¾Ñ†ÐµÐ½Ñ‚ ÑÐºÐ¸Ð´ÐºÐ¸','Porcentaje de descuento','Ä°ndirim YÃ¼zdesi'),(1690,'discount_amount','','Discount Amount','Ù…Ù‚Ø¯Ø§Ø± Ø§Ù„Ø®ØµÙ…','Korting hoeveelheid','Montant de la remise','Rabattbetrag','Totale sconto','Valor do desconto','Ð¡ÑƒÐ¼Ð¼Ð° ÑÐºÐ¸Ð´ÐºÐ¸','Importe de descuento','Ä°ndirim tutarÄ±'),(1691,'buy_get_discount','','Buy X Get Y Discount','Ø§Ø´ØªØ±Ù X Ø§Ø­ØµÙ„ Ø¹Ù„Ù‰ Ø®ØµÙ… Y','Koop X krijg Y korting','Acheter X Get Y Discount','Kaufen Sie X Get Y Discount','Acquista X Ottieni Y Sconto','Compre o desconto X Get Y','ÐšÑƒÐ¿Ð¸Ñ‚ÑŒ X ÐŸÐ¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ Y Ð¡ÐºÐ¸Ð´ÐºÐ°','Compre X Obtenga Y Descuento','X Get Y Ä°ndirimi SatÄ±n Al'),(1692,'spend_get_off','','Spend X Get Y Off','Ø£Ù†ÙÙ‚ X Ø§Ø­ØµÙ„ Ø¹Ù„Ù‰ Y Off','Besteed X Krijg Y Off','Passer X descendre Y','Verbringen Sie X Get Y Off','Spendi X Ottieni Y Off','Gaste X e tire Y','ÐŸÐ¾Ñ‚Ñ€Ð°Ñ‚ÑŒ X ÐŸÐ¾Ð»ÑƒÑ‡Ð¸ Y Off','Gastar X Obtener Y Off','X Harcama Y KazanÄ±n'),(1693,'free_shipping','','Free Shipping','Ø§Ù„Ø´Ø­Ù† Ù…Ø¬Ø§Ù†Ø§','Gratis verzending','Livraison gratuite','Kostenloser Versand','Spedizione gratuita','Envio GrÃ¡tis','Ð‘ÐµÑÐ¿Ð»Ð°Ñ‚Ð½Ð°Ñ Ð´Ð¾ÑÑ‚Ð°Ð²ÐºÐ°','EnvÃ­o gratis','Ãœcretsiz kargo'),(1694,'get','','Get','Ø§Ø­ØµÙ„ Ø¹Ù„Ù‰','Krijgen','Avoir','Bekommen','Ottenere','Obter','ÐŸÐ¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ','Obtener','Almak'),(1695,'spend','','Spend','Ø£Ù†ÙÙ‚','Besteden','DÃ©penser','Verbringen','Trascorrere','Gastar','ÐŸÑ€Ð¾Ð²Ð¾Ð´Ð¸Ñ‚ÑŒ','Gastar','Harcama'),(1696,'amount_off','','Amount Off','Ø§Ù„Ù…Ø¨Ù„Øº Ø®Ø§Ø±Ø¬','Bedrag uit','Montant hors','Betrag aus','Importo Off','Valor desativado','Ð¡ÑƒÐ¼Ð¼Ð° Ð²Ñ‹ÐºÐ»ÑŽÑ‡ÐµÐ½Ð°','Cantidad de descuento','Tutar KapalÄ±'),(1697,'offer_successfully_created','','Offer successfully created.','ØªÙ… Ø¥Ù†Ø´Ø§Ø¡ Ø§Ù„Ø¹Ø±Ø¶ Ø¨Ù†Ø¬Ø§Ø­.','Aanbieding succesvol gemaakt.','Offre crÃ©Ã©e avec succÃ¨s.','Angebot erfolgreich erstellt.','Offerta creata con successo.','Oferta criada com sucesso.','ÐŸÑ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑÐ¾Ð·Ð´Ð°Ð½Ð¾.','Oferta creada con Ã©xito.','Teklif baÅŸarÄ±yla oluÅŸturuldu.'),(1698,'created_offer','','Created new offer','ØªÙ… Ø¥Ù†Ø´Ø§Ø¡ Ø¹Ø±Ø¶ Ø¬Ø¯ÙŠØ¯','Nieuwe aanbieding gemaakt','CrÃ©ation dune nouvelle offre','Neues Angebot erstellt','Nuova offerta creata','Nova oferta criada','Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¾ Ð½Ð¾Ð²Ð¾Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ','Nueva oferta creada','Yeni teklif oluÅŸturuldu'),(1699,'discounted_items','','Discounted Items and/or Services','Ø¹Ù†Ø§ØµØ± Ùˆ / Ø£Ùˆ Ø®Ø¯Ù…Ø§Øª Ù…Ø®ÙØ¶Ø©','Afgeprijsde artikelen en / of services','Articles et / ou services Ã  prix rÃ©duit','ErmÃ¤ÃŸigte Artikel und / oder Dienstleistungen','Articoli e / o servizi scontati','Itens com desconto e / ou serviÃ§os','Ð£Ñ†ÐµÐ½ÐµÐ½Ð½Ñ‹Ðµ Ñ‚Ð¾Ð²Ð°Ñ€Ñ‹ Ð¸ / Ð¸Ð»Ð¸ ÑƒÑÐ»ÑƒÐ³Ð¸','ArtÃ­culos y / o servicios con descuento','Ä°ndirimli ÃœrÃ¼nler ve / veya Hizmetler'),(1700,'items_services','','Add items or services to this offer Max 100 character','Ø£Ø¶Ù Ø¹Ù†Ø§ØµØ± Ø£Ùˆ Ø®Ø¯Ù…Ø§Øª Ù„Ù‡Ø°Ø§ Ø§Ù„Ø¹Ø±Ø¶ Ø¨Ø­Ø¯ Ø£Ù‚ØµÙ‰ 100 Ø­Ø±Ù','Voeg items of services toe aan deze aanbieding Max. 100 tekens','Ajouter des articles ou des services Ã  cette offre 100 caractÃ¨res max.','FÃ¼gen Sie diesem Angebot Artikel oder Dienstleistungen hinzu. Maximal 100 Zeichen','Aggiungi articoli o servizi a questa offerta Max 100 caratteri','Adicione itens ou serviÃ§os a esta oferta MÃ¡ximo de 100 caracteres','Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ñ‚Ð¾Ð²Ð°Ñ€Ñ‹ Ð¸Ð»Ð¸ ÑƒÑÐ»ÑƒÐ³Ð¸ Ðº ÑÑ‚Ð¾Ð¼Ñƒ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸ÑŽ ÐœÐ°ÐºÑ 100 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð²','Agregue elementos o servicios a esta oferta MÃ¡ximo 100 caracteres','Bu teklife Ã¼rÃ¼n veya hizmet ekleyin Maks. 100 karakter'),(1701,'discounted_items_less','','Discounted items must be less than 100 character','ÙŠØ¬Ø¨ Ø£Ù† ØªÙƒÙˆÙ† Ø§Ù„Ø¹Ù†Ø§ØµØ± Ø§Ù„Ù…Ø®ØµÙˆÙ…Ø© Ø£Ù‚Ù„ Ù…Ù† 100 Ø­Ø±Ù','Items met korting moeten minder dan 100 tekens bevatten','Les articles Ã  prix rÃ©duits doivent contenir moins de 100 caractÃ¨res','ErmÃ¤ÃŸigte Artikel mÃ¼ssen weniger als 100 Zeichen enthalten','Gli articoli scontati devono contenere meno di 100 caratteri','Itens com desconto devem ter menos de 100 caracteres','Ð£Ñ†ÐµÐ½ÐµÐ½Ð½Ñ‹Ðµ Ð¿Ñ€ÐµÐ´Ð¼ÐµÑ‚Ñ‹ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ Ð±Ñ‹Ñ‚ÑŒ Ð¼ÐµÐ½ÐµÐµ 100 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð²','Los artÃ­culos con descuento deben tener menos de 100 caracteres.','Ä°ndirimli Ã¼rÃ¼nler 100 karakterden az olmalÄ±dÄ±r'),(1702,'offers','','Offers','Ø¹Ø±ÙˆØ¶','Aanbiedingen','Des offres','Bietet an','offerte','Ofertas','ÐŸÑ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ñ','Ofertas','Teklifler'),(1703,'load_more_offers','','Load more offers','ØªØ­Ù…ÙŠÙ„ Ø§Ù„Ù…Ø²ÙŠØ¯ Ù…Ù† Ø§Ù„Ø¹Ø±ÙˆØ¶','Laad meer aanbiedingen','Charger plus doffres','Laden Sie weitere Angebote','Carica piÃ¹ offerte','Carregar mais ofertas','Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹','Cargue mÃ¡s ofertas','Daha fazla teklif yÃ¼kle'),(1704,'no_available_offers','','No available offers to show.','Ù„Ø§ ØªÙˆØ¬Ø¯ Ø¹Ø±ÙˆØ¶ Ù…ØªØ§Ø­Ø© Ù„Ù„Ø¹Ø±Ø¶.','Geen beschikbare aanbiedingen om weer te geven.','Aucune offre disponible Ã  afficher.','Keine verfÃ¼gbaren Angebote zu zeigen.','Nessuna offerta disponibile da mostrare.','NÃ£o hÃ¡ ofertas disponÃ­veis para mostrar.','ÐÐµÑ‚ Ð´Ð¾ÑÑ‚ÑƒÐ¿Ð½Ñ‹Ñ… Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ð¹ Ð´Ð»Ñ Ð¿Ð¾ÐºÐ°Ð·Ð°.','No hay ofertas disponibles para mostrar.','GÃ¶sterilecek mevcut teklif yok.'),(1705,'delete_offer','','Delete Offer','Ø­Ø°Ù Ø§Ù„Ø¹Ø±Ø¶','Aanbieding verwijderen','Supprimer loffre','Angebot lÃ¶schen','Elimina offerta','Excluir oferta','Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ','Eliminar oferta','Teklifi Sil'),(1706,'confirm_delete_offer','','Are you sure that you want to delete this offer?','Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ø§ Ø§Ù„Ø¹Ø±Ø¶ØŸ','Weet u zeker dat u deze aanbieding wilt verwijderen?','ÃŠtes-vous sÃ»r de vouloir supprimer cette offre?','Sind Sie sicher, dass Sie dieses Angebot lÃ¶schen mÃ¶chten?','Sei sicuro di voler eliminare questa offerta?','Tem certeza de que deseja excluir esta oferta?','Ð’Ñ‹ ÑƒÐ²ÐµÑ€ÐµÐ½Ñ‹, Ñ‡Ñ‚Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ?','Â¿EstÃ¡s seguro de que deseas eliminar esta oferta?','Bu teklifi silmek istediÄŸinizden emin misiniz?'),(1707,'edit_offer','','Edit Offer','ØªØ¹Ø¯ÙŠÙ„ Ø§Ù„Ø¹Ø±Ø¶','Aanbieding bewerken','Modifier loffre','Angebot bearbeiten','Modifica offerta','Editar oferta','Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ','Editar oferta','Teklifi DÃ¼zenle'),(1708,'offer_successfully_edited','','Offer successfully updated.','ØªÙ… ØªØ­Ø¯ÙŠØ« Ø§Ù„Ø¹Ø±Ø¶ Ø¨Ù†Ø¬Ø§Ø­.','Aanbieding succesvol bijgewerkt.','Offre mise Ã  jour avec succÃ¨s.','Angebot erfolgreich aktualisiert.','Offerta aggiornata con successo.','Oferta atualizada com sucesso.','ÐŸÑ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¾.','Oferta actualizada con Ã©xito.','Teklif baÅŸarÄ±yla gÃ¼ncellendi.'),(1709,'nearby_shops','','Nearby Shops','Ø§Ù„Ù…ØªØ§Ø¬Ø± Ø§Ù„Ù‚Ø±ÙŠØ¨Ø©','Nabijgelegen winkels','Commerces Ã  proximitÃ©','In der NÃ¤he GeschÃ¤fte','Negozi nelle vicinanze','Lojas prÃ³ximas','ÐœÐ°Ð³Ð°Ð·Ð¸Ð½Ñ‹ Ð¿Ð¾Ð±Ð»Ð¸Ð·Ð¾ÑÑ‚Ð¸','Tiendas cercanas','YakÄ±ndaki MaÄŸazalar'),(1710,'shops_found','','Shops found','ÙˆØ¬Ø¯Øª Ø§Ù„Ù…ØªØ§Ø¬Ø±','Winkels gevonden','Magasins trouvÃ©s','GeschÃ¤fte gefunden','Negozi trovati','Lojas encontradas','ÐœÐ°Ð³Ð°Ð·Ð¸Ð½Ñ‹ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ‹','Tiendas encontradas','Bulunan dÃ¼kkanlar'),(1711,'no_shops_found','','No shops found','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ù…ØªØ§Ø¬Ø±','Geen winkels gevonden','Aucun magasin trouvÃ©','Keine GeschÃ¤fte gefunden','Nessun negozio trovato','Nenhuma loja encontrada','ÐœÐ°Ð³Ð°Ð·Ð¸Ð½Ñ‹ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ñ‹','No se encontraron tiendas.','DÃ¼kkan bulunamadÄ±'),(1712,'nearby_business','','Nearby Business','Ø§Ù„Ø£Ø¹Ù…Ø§Ù„ Ø§Ù„Ù‚Ø±ÙŠØ¨Ø©','Nabijgelegen bedrijf','Entreprise Ã  proximitÃ©','In der NÃ¤he GeschÃ¤ft','AttivitÃ  nelle vicinanze','NegÃ³cios nas proximidades','Ð‘Ð¸Ð·Ð½ÐµÑ Ð¿Ð¾Ð±Ð»Ð¸Ð·Ð¾ÑÑ‚Ð¸','Negocios cercanos','YakÄ±ndaki Ä°ÅŸletmeler'),(1713,'business_found','','Business found','ØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø§Ù„Ø£Ø¹Ù…Ø§Ù„','Bedrijf gevonden','Entreprise trouvÃ©e','GeschÃ¤ft gefunden','AttivitÃ  trovate','NegÃ³cio encontrado','Ð‘Ð¸Ð·Ð½ÐµÑ Ð½Ð°Ð¹Ð´ÐµÐ½','Negocio encontrado','Ä°ÅŸletme bulundu'),(1714,'no_business_found','','No business found','Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø¹Ù…Ù„','Geen bedrijf gevonden','Aucune entreprise trouvÃ©e','Kein GeschÃ¤ft gefunden','Nessuna attivitÃ  trovata','Nenhuma empresa encontrada','Ð‘Ð¸Ð·Ð½ÐµÑ Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½','No se ha encontrado ningÃºn negocio.','Ä°ÅŸletme bulunamadÄ±'),(1715,'login_attempts','','Too many login attempts please try again later','Ø§Ù„ÙƒØ«ÙŠØ± Ù…Ù† Ù…Ø­Ø§ÙˆÙ„Ø§Øª ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„ ÙŠØ±Ø¬Ù‰ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ù…Ø±Ø© Ø£Ø®Ø±Ù‰ ÙÙŠ ÙˆÙ‚Øª Ù„Ø§Ø­Ù‚','Te veel inlogpogingen, probeer het later opnieuw','Trop de tentatives de connexion, veuillez rÃ©essayer plus tard','Zu viele Anmeldeversuche versuchen Sie es spÃ¤ter erneut','Troppi tentativi di accesso, riprovare piÃ¹ tardi','Muitas tentativas de login, tente novamente mais tarde','Ð¡Ð»Ð¸ÑˆÐºÐ¾Ð¼ Ð¼Ð½Ð¾Ð³Ð¾ Ð¿Ð¾Ð¿Ñ‹Ñ‚Ð¾Ðº Ð²Ñ…Ð¾Ð´Ð°, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ Ð¿Ð¾Ð·Ð¶Ðµ','Demasiados intentos de inicio de sesiÃ³n, intente nuevamente mÃ¡s tarde','Ã‡ok fazla giriÅŸ denemesi lÃ¼tfen daha sonra tekrar deneyin'),(1716,'complexity_requirements','','The password supplied does not meet the minimum complexity requirements','Ù„Ø§ ØªÙÙŠ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ù…Ù‚Ø¯Ù…Ø© Ø¨Ø§Ù„Ø­Ø¯ Ø§Ù„Ø£Ø¯Ù†Ù‰ Ù…Ù† Ù…ØªØ·Ù„Ø¨Ø§Øª Ø§Ù„ØªØ¹Ù‚ÙŠØ¯','Het opgegeven wachtwoord voldoet niet aan de minimale complexiteitsvereisten','Le mot de passe fourni ne rÃ©pond pas aux exigences minimales de complexitÃ©','Das angegebene Passwort entspricht nicht den Mindestanforderungen an die KomplexitÃ¤t','La password fornita non soddisfa i requisiti minimi di complessitÃ ','A senha fornecida nÃ£o atende aos requisitos mÃ­nimos de complexidade','ÐŸÑ€ÐµÐ´Ð¾ÑÑ‚Ð°Ð²Ð»ÐµÐ½Ð½Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ Ð½Ðµ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ Ñ‚Ñ€ÐµÐ±Ð¾Ð²Ð°Ð½Ð¸ÑÐ¼ Ð¼Ð¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾Ð¹ ÑÐ»Ð¾Ð¶Ð½Ð¾ÑÑ‚Ð¸','La contraseÃ±a suministrada no cumple los requisitos mÃ­nimos de complejidad.','Verilen parola minimum karmaÅŸÄ±klÄ±k gereksinimlerini karÅŸÄ±lamÄ±yor'),(1717,'least_characters','','Must be at least 6 characters long.','ÙŠØ¬Ø¨ Ø£Ù„Ø§ ÙŠÙ‚Ù„ Ø·ÙˆÙ„ Ø§Ù„Ø£Ø­Ø±Ù Ø¹Ù† 6 Ø£Ø­Ø±Ù.','Moet minimaal 6 tekens lang zijn.','Doit contenir au moins 6 caractÃ¨res.','Muss mindestens 6 Zeichen lang sein.','Deve contenere almeno 6 caratteri.','Deve ter pelo menos 6 caracteres.','Ð”Ð¾Ð»Ð¶Ð½Ð¾ Ð±Ñ‹Ñ‚ÑŒ Ð´Ð»Ð¸Ð½Ð¾Ð¹ Ð½Ðµ Ð¼ÐµÐ½ÐµÐµ 6 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð².','Debe tener al menos 6 caracteres de longitud.','En az 6 karakter uzunluÄŸunda olmalÄ±.'),(1718,'contain_lowercase','','Must contain a lowercase letter.','ÙŠØ¬Ø¨ Ø£Ù† ÙŠØ­ØªÙˆÙŠ Ø¹Ù„Ù‰ Ø­Ø±Ù ØµØºÙŠØ±.','Moet een kleine letter bevatten.','Doit contenir une lettre minuscule.','Muss einen Kleinbuchstaben enthalten.','Deve contenere una lettera minuscola.','Deve conter uma letra minÃºscula.','Ð”Ð¾Ð»Ð¶ÐµÐ½ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ñ‚ÑŒ ÑÑ‚Ñ€Ð¾Ñ‡Ð½ÑƒÑŽ Ð±ÑƒÐºÐ²Ñƒ.','Debe contener una letra minÃºscula.','KÃ¼Ã§Ã¼k harf iÃ§ermelidir.'),(1719,'contain_uppercase','','Must contain an uppercase letter.','ÙŠØ¬Ø¨ Ø£Ù† ÙŠØ­ØªÙˆÙŠ Ø¹Ù„Ù‰ Ø­Ø±Ù ÙƒØ¨ÙŠØ±.','Moet een hoofdletter bevatten.','Doit contenir une lettre majuscule.','Muss einen GroÃŸbuchstaben enthalten.','Deve contenere una lettera maiuscola.','Deve conter uma letra maiÃºscula.','Ð”Ð¾Ð»Ð¶ÐµÐ½ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ñ‚ÑŒ Ð·Ð°Ð³Ð»Ð°Ð²Ð½ÑƒÑŽ Ð±ÑƒÐºÐ²Ñƒ.','Debe contener una letra mayÃºscula.','Bir bÃ¼yÃ¼k harf iÃ§ermeli.'),(1720,'number_special','','Must contain a number or special character.','ÙŠØ¬Ø¨ Ø£Ù† ÙŠØ­ØªÙˆÙŠ Ø¹Ù„Ù‰ Ø±Ù‚Ù… Ø£Ùˆ Ø­Ø±Ù Ø®Ø§Øµ.','Moet een cijfer of een speciaal teken bevatten.','Doit contenir un chiffre ou un caractÃ¨re spÃ©cial.','Muss eine Zahl oder ein Sonderzeichen enthalten.','Deve contenere un numero o un carattere speciale.','Deve conter um nÃºmero ou caractere especial.','Ð”Ð¾Ð»Ð¶ÐµÐ½ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ñ‚ÑŒ Ð½Ð¾Ð¼ÐµÑ€ Ð¸Ð»Ð¸ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ ÑÐ¸Ð¼Ð²Ð¾Ð».','Debe contener un nÃºmero o carÃ¡cter especial.','Bir sayÄ± veya Ã¶zel karakter iÃ§ermelidir.'),(1721,'users_can_post','','Users can post on my page','ÙŠÙ…ÙƒÙ† Ù„Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ† Ø§Ù„Ù†Ø´Ø± Ø¹Ù„Ù‰ ØµÙØ­ØªÙŠ','Gebruikers kunnen op mijn pagina posten','Les utilisateurs peuvent poster sur ma page','Benutzer kÃ¶nnen auf meiner Seite posten','Gli utenti possono pubblicare sulla mia pagina','Os usuÃ¡rios podem postar na minha pÃ¡gina','ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸ Ð¼Ð¾Ð³ÑƒÑ‚ Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ñ‚ÑŒ Ð½Ð° Ð¼Ð¾ÐµÐ¹ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ðµ','Los usuarios pueden publicar en mi pÃ¡gina','KullanÄ±cÄ±lar sayfama mesaj gÃ¶nderebilir'),(1722,'privileges','','Privileges','Ø§Ù…ØªÙŠØ§Ø²Ø§Øª','Voorrechten','PrivilÃ¨ges','Privilegien','privilegi','PrivilÃ©gios','Ð¿Ñ€Ð¸Ð²Ð¸Ð»ÐµÐ³Ð¸Ð¸','Privilegios','AyrÄ±calÄ±klar'),(1723,'access_to_general_settings','','Access to general settings','Ø§Ù„ÙˆØµÙˆÙ„ Ø¥Ù„Ù‰ Ø§Ù„Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø¹Ø§Ù…Ø©','Toegang tot algemene instellingen','AccÃ¨s aux paramÃ¨tres gÃ©nÃ©raux','Zugriff auf allgemeine Einstellungen','Accesso alle impostazioni generali','Acesso a configuraÃ§Ãµes gerais','Ð”Ð¾ÑÑ‚ÑƒÐ¿ Ðº Ð¾Ð±Ñ‰Ð¸Ð¼ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ°Ð¼','Acceso a configuraciones generales','Genel ayarlara eriÅŸim'),(1724,'access_to_info_settings','','Access to page information settings','Ø§Ù„ÙˆØµÙˆÙ„ Ø¥Ù„Ù‰ Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„ØµÙØ­Ø©','Toegang tot instellingen voor pagina-informatie','AccÃ¨s aux paramÃ¨tres des informations de la page','Zugriff auf Einstellungen fÃ¼r Seiteninformationen','Accesso alle impostazioni delle informazioni sulla pagina','Acesso Ã s configuraÃ§Ãµes de informaÃ§Ãµes da pÃ¡gina','Ð”Ð¾ÑÑ‚ÑƒÐ¿ Ðº Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ°Ð¼ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¸ Ð¾ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ðµ','Acceso a la configuraciÃ³n de informaciÃ³n de la pÃ¡gina','Sayfa bilgisi ayarlarÄ±na eriÅŸim'),(1725,'access_to_social_settings','','Access to social links settings','Ø§Ù„ÙˆØµÙˆÙ„ Ø¥Ù„Ù‰ Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø±ÙˆØ§Ø¨Ø· Ø§Ù„Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠØ©','Toegang tot instellingen voor sociale links','AccÃ¨s aux paramÃ¨tres des liens sociaux','Zugriff auf Einstellungen fÃ¼r soziale Links','Accesso alle impostazioni dei social network','Acesso Ã s configuraÃ§Ãµes de links sociais','Ð”Ð¾ÑÑ‚ÑƒÐ¿ Ðº Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ°Ð¼ ÑÐ¾Ñ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ñ… ÑÑÑ‹Ð»Ð¾Ðº','Acceso a la configuraciÃ³n de enlaces sociales','Sosyal baÄŸlantÄ±lar ayarlarÄ±na eriÅŸim'),(1726,'access_to_avatar_settings','','Access to avatar &amp; cover settings','Ø§Ù„ÙˆØµÙˆÙ„ Ø¥Ù„Ù‰ Ø§Ù„ØµÙˆØ±Ø© Ø§Ù„Ø±Ù…Ø²ÙŠØ©','Toegang tot avatar','AccÃ¨s Ã  lavatar','Zugang zum Avatar','Access to avatar','Acesso ao avatar','Ð”Ð¾ÑÑ‚ÑƒÐ¿ Ðº Ð°Ð²Ð°Ñ‚Ð°Ñ€Ñƒ','Acceso al avatar','Avatara eriÅŸim'),(1727,'access_to_design_settings','','Access to design settings','Ø§Ù„ÙˆØµÙˆÙ„ Ø¥Ù„Ù‰ Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØªØµÙ…ÙŠÙ…','Toegang tot ontwerpinstellingen','AccÃ¨s aux paramÃ¨tres de conception','Zugriff auf Designeinstellungen','Accesso alle impostazioni di progettazione','Acesso Ã s configuraÃ§Ãµes de design','Ð”Ð¾ÑÑ‚ÑƒÐ¿ Ðº Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ°Ð¼ Ð´Ð¸Ð·Ð°Ð¹Ð½Ð°','Acceso a configuraciones de diseÃ±o','TasarÄ±m ayarlarÄ±na eriÅŸim'),(1728,'access_to_admins_settings','','Access to admins settings','Ø§Ù„ÙˆØµÙˆÙ„ Ø¥Ù„Ù‰ Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ù…Ø³Ø¤ÙˆÙ„ÙŠÙ†','Toegang tot beheerdersinstellingen','AccÃ¨s aux paramÃ¨tres des administrateurs','Zugriff auf Administratoreinstellungen','Accesso alle impostazioni degli amministratori','Acesso Ã s configuraÃ§Ãµes de administrador','Ð”Ð¾ÑÑ‚ÑƒÐ¿ Ðº Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ°Ð¼ Ð°Ð´Ð¼Ð¸Ð½Ð¾Ð²','Acceso a la configuraciÃ³n de administradores','YÃ¶netici ayarlarÄ±na eriÅŸim'),(1729,'access_to_analytics_settings','','Access to analytics settings','Ø§Ù„ÙˆØµÙˆÙ„ Ø¥Ù„Ù‰ Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØªØ­Ù„ÙŠÙ„Ø§Øª','Toegang tot analyse-instellingen','AccÃ¨s aux paramÃ¨tres danalyse','Zugriff auf Analyseeinstellungen','Accesso alle impostazioni di analisi','Acesso Ã s configuraÃ§Ãµes de anÃ¡lise','Ð”Ð¾ÑÑ‚ÑƒÐ¿ Ðº Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ°Ð¼ Ð°Ð½Ð°Ð»Ð¸Ñ‚Ð¸ÐºÐ¸','Acceso a la configuraciÃ³n de anÃ¡lisis','Analiz ayarlarÄ±na eriÅŸim'),(1730,'access_to_delete_page_settings','','Access to delete page settings','Ø§Ù„ÙˆØµÙˆÙ„ Ù„Ø­Ø°Ù Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØµÙØ­Ø©','Toegang om pagina-instellingen te verwijderen','AccÃ¨s pour supprimer les paramÃ¨tres de page','Zugriff zum LÃ¶schen von Seiteneinstellungen','Accesso per eliminare le impostazioni della pagina','Acesso para excluir configuraÃ§Ãµes da pÃ¡gina','Ð”Ð¾ÑÑ‚ÑƒÐ¿ Ðº ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸ÑŽ Ð½Ð°ÑÑ‚Ñ€Ð¾ÐµÐº ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñ‹','Acceso para eliminar la configuraciÃ³n de la pÃ¡gina','Sayfa ayarlarÄ±nÄ± silme eriÅŸimi'),(1731,'access_to_privacy_settings','','Access to privacy settings','Ø§Ù„ÙˆØµÙˆÙ„ Ø¥Ù„Ù‰ Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø®ØµÙˆØµÙŠØ©','Toegang tot privacy-instellingen','AccÃ¨s aux paramÃ¨tres de confidentialitÃ©','Zugriff auf Datenschutzeinstellungen','Accesso alle impostazioni sulla privacy','Acesso a configuraÃ§Ãµes de privacidade','Ð”Ð¾ÑÑ‚ÑƒÐ¿ Ðº Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ°Ð¼ ÐºÐ¾Ð½Ñ„Ð¸Ð´ÐµÐ½Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾ÑÑ‚Ð¸','Acceso a la configuraciÃ³n de privacidad','Gizlilik ayarlarÄ±na eriÅŸim'),(1732,'access_to_members_settings','','Access to members settings','Ø§Ù„ÙˆØµÙˆÙ„ Ø¥Ù„Ù‰ Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ø£Ø¹Ø¶Ø§Ø¡','Toegang tot ledeninstellingen','AccÃ¨s aux paramÃ¨tres des membres','Zugriff auf Mitgliedereinstellungen','Accesso alle impostazioni dei membri','Acesso Ã s configuraÃ§Ãµes de membros','Ð”Ð¾ÑÑ‚ÑƒÐ¿ Ðº Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ°Ð¼ ÑƒÑ‡Ð°ÑÑ‚Ð½Ð¸ÐºÐ¾Ð²','Acceso a la configuraciÃ³n de miembros','Ãœye ayarlarÄ±na eriÅŸim'),(1733,'access_to_delete_group_settings','','Access to delete group settings','Ø§Ù„ÙˆØµÙˆÙ„ Ø¥Ù„Ù‰ Ø­Ø°Ù Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø©','Toegang om groepsinstellingen te verwijderen','AccÃ¨s pour supprimer les paramÃ¨tres du groupe','Zugriff zum LÃ¶schen von Gruppeneinstellungen','Accesso per eliminare le impostazioni del gruppo','Acesso para excluir configuraÃ§Ãµes de grupo','Ð”Ð¾ÑÑ‚ÑƒÐ¿ Ðº ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸ÑŽ Ð½Ð°ÑÑ‚Ñ€Ð¾ÐµÐº Ð³Ñ€ÑƒÐ¿Ð¿Ñ‹','Acceso para eliminar la configuraciÃ³n del grupo','Grup ayarlarÄ±nÄ± silme eriÅŸimi'),(1734,'invitation_links','','Invitation Links','Ø±ÙˆØ§Ø¨Ø· Ø§Ù„Ø¯Ø¹ÙˆØ©','Invitation Links','Invitation Links','Invitation Links','Link allinvito','Links para convites','ÐŸÑ€Ð¸Ð³Ð»Ð°ÑÐ¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ðµ ÑÑÑ‹Ð»ÐºÐ¸','Enlaces de invitaciÃ³n','Davetiye BaÄŸlantÄ±larÄ±'),(1735,'available_links','','Available Links','Ø§Ù„Ø±ÙˆØ§Ø¨Ø· Ø§Ù„Ù…ØªØ§Ø­Ø©','Beschikbare links','Liens disponibles','VerfÃ¼gbare Links','Link disponibili','Links DisponÃ­veis','Ð”Ð¾ÑÑ‚ÑƒÐ¿Ð½Ñ‹Ðµ ÑÑÑ‹Ð»ÐºÐ¸','Enlaces Disponibles','KullanÄ±labilir BaÄŸlantÄ±lar'),(1736,'generated_links','','Generated Links','Ø§Ù„Ø±ÙˆØ§Ø¨Ø· Ø§Ù„Ù…ÙˆÙ„Ø¯Ø©','Gegenereerde links','Liens gÃ©nÃ©rÃ©s','Generierte Links','Link generati','Links gerados','Ð¡Ð³ÐµÐ½ÐµÑ€Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ðµ ÑÑÑ‹Ð»ÐºÐ¸','Enlaces generados','OluÅŸturulan BaÄŸlantÄ±lar'),(1737,'used_links','','Used Links','Ø±ÙˆØ§Ø¨Ø· Ù…Ø³ØªØ¹Ù…Ù„Ø©','Gebruikte links','Liens utilisÃ©s','Verwendete Links','Link usati','Links Usados','Ð˜ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ð½Ð½Ñ‹Ðµ ÑÑÑ‹Ð»ÐºÐ¸','Enlaces Usados','KullanÄ±lan BaÄŸlantÄ±lar'),(1738,'generate_link','','Generate links','Ø¥Ù†Ø´Ø§Ø¡ Ø±ÙˆØ§Ø¨Ø·','Generate links','GÃ©nÃ©rer des liens','Links generieren','Genera collegamenti','Gere links','Ð“ÐµÐ½ÐµÑ€Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑÑÑ‹Ð»ÐºÐ¸','Generar enlaces','BaÄŸlantÄ± oluÅŸtur'),(1739,'code_successfully','','Code successfully generated','ØªÙ… Ø¥Ù†Ø´Ø§Ø¡ Ø§Ù„Ø±Ù…Ø² Ø¨Ù†Ø¬Ø§Ø­','Code succesvol gegenereerd','Code gÃ©nÃ©rÃ© avec succÃ¨s','Code erfolgreich generiert','Codice generato correttamente','CÃ³digo gerado com sucesso','ÐšÐ¾Ð´ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ ÑÐ³ÐµÐ½ÐµÑ€Ð¸Ñ€Ð¾Ð²Ð°Ð½','CÃ³digo generado con Ã©xito','Kod baÅŸarÄ±yla oluÅŸturuldu'),(1740,'copied','','Copied','Ù†Ø³Ø®','Gekopieerd','CopiÃ©','Kopiert','Copiato','Copiado','ÑÐºÐ¾Ð¿Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¹','Copiado','Kopyalanan'),(1741,'copy','','Copy','Ù†Ø³Ø®','KopiÃ«ren','Copie','Kopieren','copia','cÃ³pia de','ÐºÐ¾Ð¿Ð¸Ñ','Copiar','kopya'),(1742,'invited_user','','Invited User','Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø§Ù„Ù…Ø¯Ø¹Ùˆ','Uitgenodigde gebruiker','Utilisateur invitÃ©','Eingeladener Benutzer','Utente invitato','UsuÃ¡rio Convidado','ÐŸÑ€Ð¸Ð³Ð»Ð°ÑˆÐµÐ½Ð½Ñ‹Ð¹ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ','Usuario invitado','Davet Edilen KullanÄ±cÄ±'),(1743,'unlimited','','Unlimited','ØºÙŠØ± Ù…Ø­Ø¯ÙˆØ¯','Onbeperkt','IllimitÃ©','Unbegrenzt','Illimitato','Ilimitado','Ð½ÐµÐ¾Ð³Ñ€Ð°Ð½Ð¸Ñ‡ÐµÐ½Ð½Ñ‹Ð¹','Ilimitado','SÄ±nÄ±rsÄ±z'),(1744,'anonymous','','Anonymous','Ù…Ø¬Ù‡ÙˆÙ„','Anoniem','Anonyme','Anonym','Anonimo','AnÃ´nimo','Ð°Ð½Ð¾Ð½Ð¸Ð¼Ð½Ð¾Ðµ','AnÃ³nimo','Anonim'),(1745,'iban','','IBAN','Ø±Ù‚Ù… Ø§Ù„Ø­Ø³Ø§Ø¨ Ø¨ØµÙŠØºØ© IBAN','IBAN','IBAN','IBAN','IBAN','IBAN','IBAN','IBAN','IBAN'),(1746,'full_name','','Full name','Ø§Ù„Ø§Ø³Ù… Ø§Ù„ÙƒØ§Ù…Ù„','Voor-en achternaam','Nom complet','VollstÃ¤ndiger Name','Nome e cognome','Nome completo','Ð¤Ð˜Ðž','Nombre completo','Ad Soyad'),(1747,'swift_code','','Swift code','Ø±Ù…Ø² Ø§Ù„Ø³Ø±Ø¹Ø©','Swift code','Code rapide','SWIFT-Code','Codice SWIFT','CÃ³digo Swift','Ð¡Ð²Ð¸Ñ„Ñ‚ ÐºÐ¾Ð´','CÃ³digo SWIFT','Swift kodu'),(1748,'withdraw_approve','','Your withdraw request has been approved!','ØªÙ…Øª Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„Ù‰ Ø·Ù„Ø¨ Ø§Ù„Ø³Ø­Ø¨ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ!','Uw intrekkingsverzoek is goedgekeurd!','Votre demande de retrait a Ã©tÃ© approuvÃ©e!','Ihre RÃ¼cktrittsanfrage wurde genehmigt!','La tua richiesta di prelievo Ã¨ stata approvata!','Sua solicitaÃ§Ã£o de retirada foi aprovada!','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° Ð²Ñ‹Ð²Ð¾Ð´ ÑÑ€ÐµÐ´ÑÑ‚Ð² Ð±Ñ‹Ð» Ð¾Ð´Ð¾Ð±Ñ€ÐµÐ½!','Â¡Su solicitud de retiro ha sido aprobada!','Para Ã§ekme talebiniz onaylandÄ±!'),(1749,'withdraw_declined','','Your withdraw request has been declined!','ØªÙ… Ø±ÙØ¶ Ø·Ù„Ø¨ Ø§Ù„Ø³Ø­Ø¨ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ!','Uw verzoek tot intrekking is afgewezen!','Votre demande de retrait a Ã©tÃ© refusÃ©e!','Ihre Auszahlungsanfrage wurde abgelehnt!','La tua richiesta di prelievo Ã¨ stata rifiutata!','Sua solicitaÃ§Ã£o de retirada foi recusada!','Ð’Ð°Ñˆ Ð·Ð°Ð¿Ñ€Ð¾Ñ Ð½Ð° ÑÐ½ÑÑ‚Ð¸Ðµ Ð±Ñ‹Ð» Ð¾Ñ‚ÐºÐ»Ð¾Ð½ÐµÐ½!','Â¡Su solicitud de retiro ha sido rechazada!','Para Ã§ekme talebiniz reddedildi!'),(1750,'register_and_pay','','Register and pay using','Ø³Ø¬Ù„ ÙˆØ§Ø¯ÙØ¹ Ø¨Ø§Ø³ØªØ®Ø¯Ø§Ù…','Registreer en betaal met','Inscrivez-vous et payez en utilisant','Registrieren und bezahlen mit','Registrati e paga usando','Registre-se e pague usando','Ð—Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€ÑƒÐ¹Ñ‚ÐµÑÑŒ Ð¸ Ð¾Ð¿Ð»Ð°Ñ‚Ð¸Ñ‚Ðµ, Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÑ','RegÃ­strese y pague usando','KayÄ±t ve kullanarak Ã¶deme'),(1751,'live','','Live','Ø­ÙŠ','Leven','Vivre','Wohnen','Vivere','Viver','ÐŸÑ€ÑÐ¼Ð¾Ð¹ ÑÑ„Ð¸Ñ€','En Vivo','CanlÄ±'),(1752,'go_live','','Go Live','Ø§Ù†Ø·Ù„Ù‚','Ga leven','Go Live','Geh Leben','Andare in diretta','Go Live','Go Live','Ir a vivir','CanlÄ± YayÄ±na BaÅŸla'),(1753,'started_live_video','','started a live video.','Ø¨Ø¯Ø£ ÙÙŠØ¯ÙŠÙˆ Ù…Ø¨Ø§Ø´Ø±.','begon een live video.','a commencÃ© une vidÃ©o en direct.','startete ein Live-Video.','ha iniziato un video dal vivo.','iniciou um vÃ­deo ao vivo.','Ð½Ð°Ñ‡Ð°Ð» Ð¶Ð¸Ð²Ð¾Ðµ Ð²Ð¸Ð´ÐµÐ¾.','comenzÃ³ un video en vivo.','canlÄ± bir video baÅŸlattÄ±.'),(1754,'razorpay','','Razorpay','Razorpay','Razorpay','Razorpay','Razorpay','Razorpay','Razorpay','Razorpay','Razorpay','Razorpay'),(1755,'paysera','','Paysera','Ù…Ø³Ø­','Scannen','NumÃ©riser','Scannen','Paysera','Digitalizar','Paysera','Escanear','Paysera'),(1756,'unfollow','','unfollow','ØºÙŠØ± Ù…ØªØ§Ø¨Ø¹','ontvolgen','ne pas suivre','nicht mehr folgen','Smetti','deixar de seguir','ÐžÑ‚ÑÐ¾ÐµÐ´Ð¸Ð½Ð¸Ñ‚ÑŒÑÑ','dejar de seguir','vazgeÃ§ebilirim'),(1757,'withdraw_method','','Withdraw Method','Ø·Ø±ÙŠÙ‚Ø© Ø§Ù„Ø³Ø­Ø¨','Intrekkingsmethode','MÃ©thode de retrait','Methode zurÃ¼ckziehen','Metodo di prelievo','Retirar MÃ©todo','ÐœÐµÑ‚Ð¾Ð´ Ð²Ñ‹Ð²Ð¾Ð´Ð°','MÃ©todo de retirada','Para Ã‡ekme YÃ¶ntemi'),(1758,'bank','','Bank','Ø¨Ù†Ùƒ','Bank','Banque','Bank','Banca','Banco','Ð‘Ð°Ð½ÐºÐ°','Banco','Banka'),(1759,'end_live','','End live','Ù†Ù‡Ø§ÙŠØ© Ø§Ù„Ø¹ÙŠØ´','Live beÃ«indigen','Fin en direct','Live beenden','Termina dal vivo','Terminar ao vivo','ÐšÐ¾Ð½ÐµÑ† Ð¶Ð¸Ñ‚ÑŒ','Fin en vivo','CanlÄ± sona erdir'),(1760,'get_notification_posts','','Get a notification when {USER} create a new post.','Ø§Ø­ØµÙ„ Ø¹Ù„Ù‰ Ø¥Ø´Ø¹Ø§Ø± Ø¹Ù†Ø¯Ù…Ø§ ÙŠÙ†Ø´Ø¦ {USER} Ù…Ø´Ø§Ø±ÙƒØ© Ø¬Ø¯ÙŠØ¯Ø©.','Ontvang een melding wanneer {USER} een nieuw bericht maakt.','Recevez une notification lorsque {USER} crÃ©e un nouveau message.','Erhalten Sie eine Benachrichtigung, wenn {USER} einen neuen Beitrag erstellt.','Ricevi una notifica quando {USER} crea un nuovo post.','Receba uma notificaÃ§Ã£o quando {USER} criar uma nova postagem.','ÐŸÐ¾Ð»ÑƒÑ‡Ð¸Ñ‚Ðµ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ðµ, ÐºÐ¾Ð³Ð´Ð° {USER} ÑÐ¾Ð·Ð´Ð°ÑÑ‚ Ð½Ð¾Ð²Ð¾Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ.','Reciba una notificaciÃ³n cuando {USUARIO} cree una nueva publicaciÃ³n.','{USER} yeni bir yayÄ±n oluÅŸtururken bildirim alÄ±n.'),(1761,'stop_notification_posts','','Stop getting a notifications from {USER}','Ø§Ù„ØªÙˆÙ‚Ù Ø¹Ù† ØªÙ„Ù‚ÙŠ Ø¥Ø´Ø¹Ø§Ø±Ø§Øª Ù…Ù† {USER}','Geen meldingen meer ontvangen van {USER}','Ne plus recevoir de notifications de {USER}','Keine Benachrichtigungen mehr von {USER} erhalten','Non ricevere piÃ¹ notifiche da {USER}','Pare de receber notificaÃ§Ãµes de {USER}','ÐŸÑ€ÐµÐºÑ€Ð°Ñ‚Ð¸Ñ‚ÑŒ Ð¿Ð¾Ð»ÑƒÑ‡Ð°Ñ‚ÑŒ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ñ Ð¾Ñ‚ {USER}','Dejar de recibir notificaciones de {USER}','{USER} adlÄ± kullanÄ±cÄ±dan bildirim almayÄ± durdur'),(1762,'created_new_post','','created a new post.','Ø£Ù†Ø´Ø£ Ù…Ø´Ø§Ø±ÙƒØ© Ø¬Ø¯ÙŠØ¯Ø©.','heeft een nieuw bericht gemaakt.','a crÃ©Ã© une nouvelle publication.','hat einen neuen Beitrag erstellt.','creato un nuovo post.','criou uma nova postagem.','ÑÐ¾Ð·Ð´Ð°Ð» Ð½Ð¾Ð²Ñ‹Ð¹ Ð¿Ð¾ÑÑ‚.','creÃ³ una nueva publicaciÃ³n.','yeni bir yayÄ±n oluÅŸturdu.'),(1763,'time_friends','','It&#039;s been {TIME} since you both are friends! Send them a message to celebrate.','Ù„Ù‚Ø¯ Ù…Ø± {TIME} Ù„Ø£Ù†ÙƒÙ…Ø§ ØµØ¯ÙŠÙ‚Ø§Ù†! Ø£Ø±Ø³Ù„ Ù„Ù‡Ù… Ø±Ø³Ø§Ù„Ø© Ù„Ù„Ø§Ø­ØªÙØ§Ù„.','Het is {TIME} sinds jullie allebei vrienden zijn! Stuur ze een bericht om het te vieren.','Ã‡a fait {TIME} puisque vous Ãªtes tous les deux amis! Envoyez-leur un message pour cÃ©lÃ©brer.','Es ist {ZEIT} her, seit ihr beide Freunde seid! Senden Sie ihnen eine Nachricht zum Feiern.','Ãˆ stato {TIME} da quando entrambi siete amici! Invia loro un messaggio per festeggiare.','Faz {TIME} desde que vocÃªs dois sÃ£o amigos! Envie uma mensagem para comemorar.','Ð­Ñ‚Ð¾ Ð±Ñ‹Ð»Ð¾ {Ð’Ð Ð•ÐœÐ¯}, Ñ‚Ð°Ðº ÐºÐ°Ðº Ð²Ñ‹ Ð¾Ð±Ð° Ð´Ñ€ÑƒÐ·ÑŒÑ! ÐžÑ‚Ð¿Ñ€Ð°Ð²ÑŒÑ‚Ðµ Ð¸Ð¼ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¾Ñ‚Ð¿Ñ€Ð°Ð·Ð´Ð½Ð¾Ð²Ð°Ñ‚ÑŒ.','Â¡Ha pasado {TIME} desde que ambos son amigos! EnvÃ­ales un mensaje para celebrar.','Ä°kiniz de arkadaÅŸ olduÄŸunuz iÃ§in {TIME} oldu! Kutlamak iÃ§in onlara bir mesaj gÃ¶nderin.'),(1764,'request_refund','','Request refund','Ø·Ù„Ø¨ Ø§Ø³ØªØ±Ø¯Ø§Ø¯ Ø§Ù„Ø£Ù…ÙˆØ§Ù„','Verzoek om terugbetaling','Demande de remboursement','Geld zurÃ¼ck verlangen','Richiesta di rimborso','Reembolso pedido','Ð—Ð°Ð¿Ñ€Ð¾ÑÐ¸Ñ‚ÑŒ Ð²Ð¾Ð·Ð²Ñ€Ð°Ñ‚','Solicitud de reembolso','Ä°stek iadesi'),(1765,'is_live','','is live now.','ÙŠØ¹ÙŠØ´ Ø§Ù„Ø¢Ù†.','is nu live.','est en direct maintenant.','ist jetzt live.','Ã¨ in diretta ora.','estÃ¡ ao vivo agora.','ÑÐµÐ¹Ñ‡Ð°Ñ Ð¶Ð¸Ð².','es en vivo ahora.','ÅŸimdi canlÄ±.'),(1766,'was_live','','was live.','ÙƒØ§Ù† ÙŠØ¹ÙŠØ´.','was live.','Ã©tait en direct.','war live.','era vivo.','estava vivo.','Ð±Ñ‹Ð» Ð¶Ð¸Ð²Ð¾Ð¹.','Fue en vivo.','canlÄ±ydÄ±.'),(1767,'january','','January','ÙƒØ§Ù†ÙˆÙ† Ø§Ù„Ø«Ø§Ù†ÙŠ','januari','janvier','Januar','gennaio','janeiro','ÑÐ½Ð²Ð°Ñ€ÑŒ','enero','Ocak'),(1768,'february','','February','Ø´Ù‡Ø± ÙØ¨Ø±Ø§ÙŠØ±','februari','fÃ©vrier','Februar','febbraio','fevereiro','Ñ„ÐµÐ²Ñ€Ð°Ð»ÑŒ','febrero','Åžubat'),(1769,'march','','March','Ù…Ø§Ø±Ø³','maart','Mars','MÃ¤rz','marzo','marcha','Ð¼Ð°Ñ€Ñˆ','marzo','Mart'),(1770,'april','','April','Ø£Ø¨Ø±ÙŠÙ„','april','avril','April','aprile','abril','Ð°Ð¿Ñ€ÐµÐ»Ñ','abril','Nisan'),(1771,'may','','May','Ù…Ø§ÙŠÙˆ','mei','Mai','Kann','Maggio','Maio','Ð¼Ð°Ð¹','Mayo','MayÄ±s'),(1772,'june','','June','ÙŠÙˆÙ†ÙŠÙˆ','juni','juin','Juni','giugno','Junho','Ð¸ÑŽÐ½ÑŒ','junio','Haziran'),(1773,'july','','July','ÙŠÙˆÙ„ÙŠÙˆ','juli','juillet','Juli','luglio','Julho','Ð¸ÑŽÐ»ÑŒ','julio','Temmuz'),(1774,'august','','August','Ø£ØºØ³Ø·Ø³','augustus','aoÃ»t','August','agosto','agosto','Ð°Ð²Ð³ÑƒÑÑ‚ÐµÐ¹ÑˆÐ¸Ð¹','agosto','AÄŸustos'),(1775,'september','','September','Ø³Ø¨ØªÙ…Ø¨Ø±','september','septembre','September','settembre','setembro','ÑÐµÐ½Ñ‚ÑÐ±Ñ€ÑŒ','septiembre','EylÃ¼l'),(1776,'october','','October','Ø§ÙƒØªÙˆØ¨Ø±','oktober','octobre','Oktober','ottobre','Outubro','Ð¾ÐºÑ‚ÑÐ±Ñ€Ñ','octubre','Ekim'),(1777,'november','','November','Ø´Ù‡Ø± Ù†ÙˆÙÙ…Ø¨Ø±','november','novembre','November','novembre','novembro','Ð½Ð¾ÑÐ±Ñ€ÑŒ','noviembre','KasÄ±m'),(1778,'december','','December','Ø¯ÙŠØ³Ù…Ø¨Ø±','december','dÃ©cembre','Dezember','dicembre','dezembro','Ð”ÐµÐºÐ°Ð±Ñ€ÑŒ','diciembre','AralÄ±k'),(1779,'notifications_single','','Notifications','Ø¥Ø´Ø¹Ø§Ø±Ø§Øª','meldingen','notifications','Benachrichtigungen','notifiche','notificaÃ§Ãµes','Ð£Ð²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ñ','Notificaciones','Bildirimler'),(1780,'get_started','','Get Started','Ø§Ù„Ø¨Ø¯Ø¡','Begin','Commencer','Loslegen','Iniziare','Iniciar','ÐÐ°Ñ‡Ð°Ñ‚ÑŒ','Empezar','BaÅŸlamak'),(1781,'enable_weather_loc','','Please enable location on your browser to view current weather.','ÙŠØ±Ø¬Ù‰ ØªÙ…ÙƒÙŠÙ† Ø§Ù„Ù…ÙˆÙ‚Ø¹ ÙÙŠ Ø§Ù„Ù…ØªØµÙØ­ Ù„Ø¹Ø±Ø¶ Ø§Ù„Ø·Ù‚Ø³ Ø§Ù„Ø­Ø§Ù„ÙŠ.','Activeer locatie op uw browser om de actuele weergegevens te bekijken.','S&#039;il vous plaÃ®t activer adresse de votre navigateur pour afficher la mÃ©tÃ©o actuelle.','Bitte aktivieren Sie diese Position auf Ihrem Browser aktuelles Wetter anzuzeigen.','Si prega di abilitare posizione sul tuo browser per visualizzare meteo.','Ative o local em seu navegador para ver o tempo atual.','ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²ÐºÐ»ÑŽÑ‡Ð¸Ñ‚Ðµ Ð¼ÐµÑÑ‚Ð¾Ð¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ Ð² Ð²Ð°ÑˆÐµÐ¼ Ð±Ñ€Ð°ÑƒÐ·ÐµÑ€Ðµ Ð´Ð»Ñ Ð¿Ñ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€Ð° Ñ‚ÐµÐºÑƒÑ‰ÐµÐ¹ Ð¿Ð¾Ð³Ð¾Ð´Ñ‹.','Por favor, activa ubicaciÃ³n en su navegador para ver tiempo actual.','Åžu anki hava durumunu gÃ¶rÃ¼ntÃ¼lemek iÃ§in tarayÄ±cÄ±nÄ±zda konum Ã¶zelliÄŸini etkinleÅŸtirmek edin.'),(1782,'enable_friend_loc','','Access to your location is Disabled. Enable it on your browser if you want to see people around you.','Ø§Ù„ÙˆØµÙˆÙ„ Ø¥Ù„Ù‰ Ø§Ù„Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ù‡Ùˆ Ù…Ø¹Ø·Ù„. ØªÙ…ÙƒÙŠÙ†Ù‡ Ø¹Ù„Ù‰ Ø§Ù„Ù…ØªØµÙØ­ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ø¥Ø°Ø§ ÙƒÙ†Øª ØªØ±ÙŠØ¯ Ø£Ù† ØªØ±Ù‰ Ø§Ù„Ù†Ø§Ø³ Ù…Ù† Ø­ÙˆÙ„Ùƒ.','De toegang tot uw locatie is uitgeschakeld. Schakel het op uw browser als u wilt mensen om je heen te zien.','L&#039;accÃ¨s Ã  votre emplacement est dÃ©sactivÃ©. Activez-le sur votre navigateur si vous voulez voir les gens autour de vous.','Zugriff auf Ihren Standort ist deaktiviert. Aktivieren Sie es auf Ihrem Browser, wenn du um dich herum zu sehen, die Leute wollen.','L&#039;accesso alla tua posizione Ã¨ Disabilitato. Attiva sul vostro browser, se volete vedere persone intorno a voi.','Acesso Ã  sua localizaÃ§Ã£o estÃ¡ desativada. AtivÃ¡-lo no seu navegador se vocÃª quiser ver as pessoas ao seu redor.','Ð”Ð¾ÑÑ‚ÑƒÐ¿ Ðº Ð²Ð°ÑˆÐµÐ¼Ñƒ Ð¼ÐµÑÑ‚Ð¾Ð¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð¸ÑŽ Ð¾Ñ‚ÐºÐ»ÑŽÑ‡ÐµÐ½. Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚Ðµ ÐµÐ³Ð¾ Ð² Ð²Ð°ÑˆÐµÐ¼ Ð±Ñ€Ð°ÑƒÐ·ÐµÑ€Ðµ, ÐµÑÐ»Ð¸ Ð²Ñ‹ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð²Ð¸Ð´ÐµÑ‚ÑŒ, Ñ‡Ñ‚Ð¾ Ð»ÑŽÐ´Ð¸ Ð²Ð¾ÐºÑ€ÑƒÐ³ Ð²Ð°Ñ.','El acceso a su ubicaciÃ³n es Desactivado. Activarlo en su navegador si desea ver a las personas que le rodean.','BulunduÄŸunuz yere eriÅŸim Devre DÄ±ÅŸÄ±. Ã§evrenizdeki insanlarÄ± gÃ¶rmek istiyorsanÄ±z tarayÄ±cÄ±nÄ±zda etkinleÅŸtirin.'),(1783,'sunday','','Sunday','Ø§Ù„Ø£Ø­Ø¯','zondag','dimanche','Sonntag','Domenica','domingo','Ð’Ð¾ÑÐºÑ€ÐµÑÐµÐ½ÑŒÐµ','domingo','Pazar'),(1784,'monday','','Monday','Ø§Ù„Ø¥Ø«Ù†ÙŠÙ†','maandag','Lundi','Montag','Lunedi','Segunda-feira','Ð¿Ð¾Ð½ÐµÐ´ÐµÐ»ÑŒÐ½Ð¸Ðº','lunes','Pazartesi'),(1785,'tuesday','','Tuesday','Ø§Ù„Ø«Ù„Ø§Ø«Ø§Ø¡','dinsdag','Mardi','Dienstag','martedÃ¬','terÃ§a','Ð²Ñ‚Ð¾Ñ€Ð½Ð¸Ðº','martes','SalÄ±'),(1786,'wednesday','','Wednesday','Ø§Ù„Ø£Ø±Ø¨Ø¹Ø§Ø¡','woensdag','Mercredi','Mittwoch','mercoledÃ¬','quarta-feira','ÑÑ€ÐµÐ´Ð°','miÃ©rcoles','Ã‡arÅŸamba'),(1787,'thursday','','Thursday','Ø§Ù„Ø®Ù…ÙŠØ³','donderdag','Jeudi','Donnerstag','giovedi','quinta-feira','Ð§ÐµÑ‚Ð²ÐµÑ€Ð³','jueves','PerÅŸembe'),(1788,'friday','','Friday','ÙŠÙˆÙ… Ø§Ù„Ø¬Ù…Ø¹Ø©','vrijdag','Vendredi','Freitag','VenerdÃ¬','Sexta-feira','Ð¿ÑÑ‚Ð½Ð¸Ñ†Ð°','viernes','Cuma'),(1789,'saturday','','Saturday','ÙŠÙˆÙ… Ø§Ù„Ø³Ø¨Øª','zaterdag','samedi','Samstag','Sabato','sÃ¡bado','ÑÑƒÐ±Ð±Ð¾Ñ‚Ð°','sÃ¡bado','Cumartesi');
/*!40000 ALTER TABLE `wo_langs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_likes`
--

DROP TABLE IF EXISTS `wo_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_likes`
--

LOCK TABLES `wo_likes` WRITE;
/*!40000 ALTER TABLE `wo_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_live_sub_users`
--

DROP TABLE IF EXISTS `wo_live_sub_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_live_sub_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `is_watching` int(11) NOT NULL DEFAULT '0',
  `time` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `is_watching` (`is_watching`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_live_sub_users`
--

LOCK TABLES `wo_live_sub_users` WRITE;
/*!40000 ALTER TABLE `wo_live_sub_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_live_sub_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_manage_pro`
--

DROP TABLE IF EXISTS `wo_manage_pro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_manage_pro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL DEFAULT '',
  `price` varchar(11) NOT NULL DEFAULT '0',
  `featured_member` int(11) NOT NULL DEFAULT '0',
  `profile_visitors` int(11) NOT NULL DEFAULT '0',
  `last_seen` int(11) NOT NULL DEFAULT '0',
  `verified_badge` int(11) NOT NULL DEFAULT '0',
  `posts_promotion` int(11) NOT NULL DEFAULT '0',
  `pages_promotion` int(11) NOT NULL DEFAULT '0',
  `discount` text NOT NULL,
  `image` varchar(300) NOT NULL DEFAULT '',
  `night_image` varchar(300) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_manage_pro`
--

LOCK TABLES `wo_manage_pro` WRITE;
/*!40000 ALTER TABLE `wo_manage_pro` DISABLE KEYS */;
INSERT INTO `wo_manage_pro` VALUES (1,'star','3',1,1,1,1,0,0,'0','','',1,7),(2,'hot','8',1,1,1,1,5,5,'10','','',1,30),(3,'ultima','89',1,1,1,1,20,20,'20','','',1,365),(4,'vip','259',1,1,1,1,40,40,'60','','',1,0);
/*!40000 ALTER TABLE `wo_manage_pro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_messages`
--

DROP TABLE IF EXISTS `wo_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media` varchar(255) NOT NULL DEFAULT '',
  `mediaFileName` varchar(200) NOT NULL DEFAULT '',
  `mediaFileNames` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `seen` int(11) NOT NULL DEFAULT '0',
  `deleted_one` enum('0','1') NOT NULL DEFAULT '0',
  `deleted_two` enum('0','1') NOT NULL DEFAULT '0',
  `sent_push` int(11) NOT NULL DEFAULT '0',
  `notification_id` varchar(50) NOT NULL DEFAULT '',
  `type_two` varchar(32) NOT NULL DEFAULT '',
  `stickers` text,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `lat` varchar(200) NOT NULL DEFAULT '0',
  `lng` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `from_id` (`from_id`),
  KEY `to_id` (`to_id`),
  KEY `seen` (`seen`),
  KEY `time` (`time`),
  KEY `deleted_two` (`deleted_two`),
  KEY `deleted_one` (`deleted_one`),
  KEY `sent_push` (`sent_push`),
  KEY `group_id` (`group_id`),
  KEY `order1` (`from_id`,`id`),
  KEY `order2` (`group_id`,`id`),
  KEY `order3` (`to_id`,`id`),
  KEY `order7` (`seen`,`id`),
  KEY `order8` (`time`,`id`),
  KEY `order4` (`from_id`,`id`),
  KEY `order5` (`group_id`,`id`),
  KEY `order6` (`to_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_messages`
--

LOCK TABLES `wo_messages` WRITE;
/*!40000 ALTER TABLE `wo_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_moviecommentreplies`
--

DROP TABLE IF EXISTS `wo_moviecommentreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_moviecommentreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comm_id` int(11) NOT NULL DEFAULT '0',
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `likes` int(11) NOT NULL DEFAULT '0',
  `posted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `comm_id` (`comm_id`),
  KEY `movie_id` (`movie_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_moviecommentreplies`
--

LOCK TABLES `wo_moviecommentreplies` WRITE;
/*!40000 ALTER TABLE `wo_moviecommentreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_moviecommentreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_moviecomments`
--

DROP TABLE IF EXISTS `wo_moviecomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_moviecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `posted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `movie_id` (`movie_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_moviecomments`
--

LOCK TABLES `wo_moviecomments` WRITE;
/*!40000 ALTER TABLE `wo_moviecomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_moviecomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_movies`
--

DROP TABLE IF EXISTS `wo_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `genre` varchar(50) NOT NULL DEFAULT '',
  `stars` varchar(300) NOT NULL DEFAULT '',
  `producer` varchar(100) NOT NULL DEFAULT '',
  `country` varchar(50) NOT NULL DEFAULT '',
  `release` year(4) DEFAULT NULL,
  `quality` varchar(10) DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `cover` varchar(500) NOT NULL DEFAULT 'upload/photos/d-film.jpg',
  `source` varchar(1000) NOT NULL DEFAULT '',
  `iframe` varchar(1000) NOT NULL DEFAULT '',
  `video` varchar(3000) NOT NULL DEFAULT '',
  `views` int(11) NOT NULL DEFAULT '0',
  `rating` varchar(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `genre` (`genre`),
  KEY `country` (`country`),
  KEY `release` (`release`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_movies`
--

LOCK TABLES `wo_movies` WRITE;
/*!40000 ALTER TABLE `wo_movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_notifications`
--

DROP TABLE IF EXISTS `wo_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_notifications` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `notifier_id` int(11) NOT NULL DEFAULT '0',
  `recipient_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `reply_id` int(11) unsigned DEFAULT '0',
  `comment_id` int(11) unsigned DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_chat_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `thread_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `story_id` int(11) NOT NULL DEFAULT '0',
  `seen_pop` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT '',
  `type2` varchar(32) NOT NULL DEFAULT '',
  `text` text,
  `url` varchar(255) NOT NULL DEFAULT '',
  `full_link` varchar(1000) NOT NULL DEFAULT '',
  `seen` int(11) NOT NULL DEFAULT '0',
  `sent_push` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `notifier_id` (`notifier_id`),
  KEY `user_id` (`recipient_id`),
  KEY `post_id` (`post_id`),
  KEY `seen` (`seen`),
  KEY `time` (`time`),
  KEY `page_id` (`page_id`),
  KEY `group_id` (`group_id`,`seen_pop`),
  KEY `sent_push` (`sent_push`),
  KEY `order1` (`seen`,`id`),
  KEY `order2` (`notifier_id`,`id`),
  KEY `order3` (`recipient_id`,`id`),
  KEY `order4` (`post_id`,`id`),
  KEY `order5` (`page_id`,`id`),
  KEY `order6` (`group_id`,`id`),
  KEY `order7` (`time`,`id`),
  KEY `comment_id` (`comment_id`),
  KEY `reply_id` (`reply_id`),
  KEY `blog_id` (`blog_id`),
  KEY `story_id` (`story_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_notifications`
--

LOCK TABLES `wo_notifications` WRITE;
/*!40000 ALTER TABLE `wo_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_offers`
--

DROP TABLE IF EXISTS `wo_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `discount_type` varchar(200) NOT NULL DEFAULT '',
  `discount_percent` int(11) NOT NULL DEFAULT '0',
  `discount_amount` int(11) NOT NULL DEFAULT '0',
  `discounted_items` varchar(150) DEFAULT '',
  `buy` int(11) NOT NULL DEFAULT '0',
  `get_price` int(11) NOT NULL DEFAULT '0',
  `spend` int(11) NOT NULL DEFAULT '0',
  `amount_off` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `expire_date` time NOT NULL,
  `expire_time` int(11) DEFAULT NULL,
  `image` varchar(300) NOT NULL DEFAULT '',
  `currency` varchar(50) NOT NULL DEFAULT '',
  `time` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  KEY `user_id` (`user_id`),
  KEY `spend` (`spend`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_offers`
--

LOCK TABLES `wo_offers` WRITE;
/*!40000 ALTER TABLE `wo_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_pageadmins`
--

DROP TABLE IF EXISTS `wo_pageadmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_pageadmins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `general` int(11) NOT NULL DEFAULT '1',
  `info` int(11) NOT NULL DEFAULT '1',
  `social` int(11) NOT NULL DEFAULT '1',
  `avatar` int(11) NOT NULL DEFAULT '1',
  `design` int(11) NOT NULL DEFAULT '1',
  `admins` int(11) NOT NULL DEFAULT '0',
  `analytics` int(11) NOT NULL DEFAULT '1',
  `delete_page` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_pageadmins`
--

LOCK TABLES `wo_pageadmins` WRITE;
/*!40000 ALTER TABLE `wo_pageadmins` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_pageadmins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_pagerating`
--

DROP TABLE IF EXISTS `wo_pagerating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_pagerating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `valuation` int(11) DEFAULT '0',
  `review` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_pagerating`
--

LOCK TABLES `wo_pagerating` WRITE;
/*!40000 ALTER TABLE `wo_pagerating` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_pagerating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_pages`
--

DROP TABLE IF EXISTS `wo_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_name` varchar(32) NOT NULL DEFAULT '',
  `page_title` varchar(32) NOT NULL DEFAULT '',
  `page_description` varchar(1000) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT 'upload/photos/d-page.jpg',
  `cover` varchar(255) NOT NULL DEFAULT 'upload/photos/d-cover.jpg',
  `users_post` int(11) NOT NULL DEFAULT '0',
  `page_category` int(11) NOT NULL DEFAULT '1',
  `sub_category` varchar(50) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL DEFAULT '',
  `facebook` varchar(32) NOT NULL DEFAULT '',
  `google` varchar(32) NOT NULL DEFAULT '',
  `vk` varchar(32) NOT NULL DEFAULT '',
  `twitter` varchar(32) NOT NULL DEFAULT '',
  `linkedin` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(32) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `call_action_type` int(11) NOT NULL DEFAULT '0',
  `call_action_type_url` varchar(255) NOT NULL DEFAULT '',
  `background_image` varchar(200) NOT NULL DEFAULT '',
  `background_image_status` int(11) NOT NULL DEFAULT '0',
  `instgram` varchar(32) NOT NULL DEFAULT '',
  `youtube` varchar(100) NOT NULL DEFAULT '',
  `verified` enum('0','1') NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `registered` varchar(32) NOT NULL DEFAULT '0/0000',
  `boosted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`),
  KEY `registered` (`registered`),
  KEY `user_id` (`user_id`),
  KEY `page_category` (`page_category`),
  KEY `active` (`active`),
  KEY `verified` (`verified`),
  KEY `boosted` (`boosted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_pages`
--

LOCK TABLES `wo_pages` WRITE;
/*!40000 ALTER TABLE `wo_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_pages_categories`
--

DROP TABLE IF EXISTS `wo_pages_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_pages_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(160) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_pages_categories`
--

LOCK TABLES `wo_pages_categories` WRITE;
/*!40000 ALTER TABLE `wo_pages_categories` DISABLE KEYS */;
INSERT INTO `wo_pages_categories` VALUES (2,'1419'),(3,'1422'),(4,'1425'),(5,'1428'),(6,'1431'),(7,'1434'),(8,'1437'),(9,'1440'),(10,'1443'),(11,'1446'),(12,'1449'),(13,'1452'),(14,'1455'),(15,'1458'),(16,'1461'),(17,'1464'),(18,'1467');
/*!40000 ALTER TABLE `wo_pages_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_pages_invites`
--

DROP TABLE IF EXISTS `wo_pages_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_pages_invites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `inviter_id` int(11) NOT NULL DEFAULT '0',
  `invited_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`inviter_id`,`invited_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_pages_invites`
--

LOCK TABLES `wo_pages_invites` WRITE;
/*!40000 ALTER TABLE `wo_pages_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_pages_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_pages_likes`
--

DROP TABLE IF EXISTS `wo_pages_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_pages_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `user_id` (`user_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_pages_likes`
--

LOCK TABLES `wo_pages_likes` WRITE;
/*!40000 ALTER TABLE `wo_pages_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_pages_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_payment_transactions`
--

DROP TABLE IF EXISTS `wo_payment_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_payment_transactions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `kind` varchar(100) NOT NULL,
  `amount` decimal(11,0) unsigned NOT NULL,
  `transaction_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_payment_transactions`
--

LOCK TABLES `wo_payment_transactions` WRITE;
/*!40000 ALTER TABLE `wo_payment_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_payment_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_payments`
--

DROP TABLE IF EXISTS `wo_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_payments` (
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
-- Dumping data for table `wo_payments`
--

LOCK TABLES `wo_payments` WRITE;
/*!40000 ALTER TABLE `wo_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_pinnedposts`
--

DROP TABLE IF EXISTS `wo_pinnedposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_pinnedposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `active` (`active`),
  KEY `page_id` (`page_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_pinnedposts`
--

LOCK TABLES `wo_pinnedposts` WRITE;
/*!40000 ALTER TABLE `wo_pinnedposts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_pinnedposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_pokes`
--

DROP TABLE IF EXISTS `wo_pokes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_pokes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `received_user_id` int(11) NOT NULL DEFAULT '0',
  `send_user_id` int(11) NOT NULL DEFAULT '0',
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `received_user_id` (`received_user_id`),
  KEY `user_id` (`send_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_pokes`
--

LOCK TABLES `wo_pokes` WRITE;
/*!40000 ALTER TABLE `wo_pokes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_pokes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_polls`
--

DROP TABLE IF EXISTS `wo_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `text` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_polls`
--

LOCK TABLES `wo_polls` WRITE;
/*!40000 ALTER TABLE `wo_polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_posts`
--

DROP TABLE IF EXISTS `wo_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `recipient_id` int(11) NOT NULL DEFAULT '0',
  `postText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `page_event_id` int(11) NOT NULL DEFAULT '0',
  `postLink` varchar(1000) NOT NULL DEFAULT '',
  `postLinkTitle` text,
  `postLinkImage` varchar(100) NOT NULL DEFAULT '',
  `postLinkContent` varchar(1000) NOT NULL DEFAULT '',
  `postVimeo` varchar(100) NOT NULL DEFAULT '',
  `postDailymotion` varchar(100) NOT NULL DEFAULT '',
  `postFacebook` varchar(100) NOT NULL DEFAULT '',
  `postFile` varchar(255) NOT NULL DEFAULT '',
  `postFileName` varchar(200) NOT NULL DEFAULT '',
  `postFileThumb` varchar(3000) NOT NULL DEFAULT '',
  `postYoutube` varchar(255) NOT NULL DEFAULT '',
  `postVine` varchar(32) NOT NULL DEFAULT '',
  `postSoundCloud` varchar(255) NOT NULL DEFAULT '',
  `postPlaytube` varchar(500) NOT NULL DEFAULT '',
  `postDeepsound` varchar(500) NOT NULL DEFAULT '',
  `postMap` varchar(255) NOT NULL DEFAULT '',
  `postShare` int(11) NOT NULL DEFAULT '0',
  `postPrivacy` enum('0','1','2','3','4') NOT NULL DEFAULT '1',
  `postType` varchar(30) NOT NULL DEFAULT '',
  `postFeeling` varchar(255) NOT NULL DEFAULT '',
  `postListening` varchar(255) NOT NULL DEFAULT '',
  `postTraveling` varchar(255) NOT NULL DEFAULT '',
  `postWatching` varchar(255) NOT NULL DEFAULT '',
  `postPlaying` varchar(255) NOT NULL DEFAULT '',
  `postPhoto` varchar(3000) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `registered` varchar(32) NOT NULL DEFAULT '0/0000',
  `album_name` varchar(52) NOT NULL DEFAULT '',
  `multi_image` enum('0','1') NOT NULL DEFAULT '0',
  `multi_image_post` int(11) NOT NULL DEFAULT '0',
  `boosted` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `thread_id` int(11) NOT NULL DEFAULT '0',
  `videoViews` int(11) NOT NULL DEFAULT '0',
  `postRecord` varchar(3000) NOT NULL DEFAULT '',
  `postSticker` text,
  `shared_from` int(15) NOT NULL DEFAULT '0',
  `post_url` text,
  `parent_id` int(15) NOT NULL DEFAULT '0',
  `cache` int(11) NOT NULL DEFAULT '0',
  `comments_status` int(11) NOT NULL DEFAULT '1',
  `blur` int(11) NOT NULL DEFAULT '0',
  `color_id` int(11) NOT NULL DEFAULT '0',
  `job_id` int(11) NOT NULL DEFAULT '0',
  `offer_id` int(11) NOT NULL DEFAULT '0',
  `fund_raise_id` int(11) NOT NULL DEFAULT '0',
  `fund_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `stream_name` varchar(100) NOT NULL DEFAULT '',
  `live_time` int(50) NOT NULL DEFAULT '0',
  `live_ended` int(11) NOT NULL DEFAULT '0',
  `agora_resource_id` text,
  `agora_sid` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `postFile` (`postFile`),
  KEY `postShare` (`postShare`),
  KEY `postType` (`postType`),
  KEY `postYoutube` (`postYoutube`),
  KEY `page_id` (`page_id`),
  KEY `group_id` (`group_id`),
  KEY `registered` (`registered`),
  KEY `time` (`time`),
  KEY `boosted` (`boosted`),
  KEY `product_id` (`product_id`),
  KEY `poll_id` (`poll_id`),
  KEY `event_id` (`event_id`),
  KEY `videoViews` (`videoViews`),
  KEY `shared_from` (`shared_from`),
  KEY `order1` (`user_id`,`id`),
  KEY `order2` (`page_id`,`id`),
  KEY `order3` (`group_id`,`id`),
  KEY `order4` (`recipient_id`,`id`),
  KEY `order5` (`event_id`,`id`),
  KEY `order6` (`parent_id`,`id`),
  KEY `multi_image` (`multi_image`),
  KEY `album_name` (`album_name`),
  KEY `postFacebook` (`postFacebook`),
  KEY `postVimeo` (`postVimeo`),
  KEY `postDailymotion` (`postDailymotion`),
  KEY `postSoundCloud` (`postSoundCloud`),
  KEY `postYoutube_2` (`postYoutube`),
  KEY `fund_raise_id` (`fund_raise_id`),
  KEY `fund_id` (`fund_id`),
  KEY `offer_id` (`offer_id`),
  KEY `live_time` (`live_time`),
  KEY `live_ended` (`live_ended`),
  KEY `active` (`active`),
  KEY `job_id` (`job_id`),
  KEY `page_event_id` (`page_event_id`),
  KEY `blog_id` (`blog_id`),
  KEY `color_id` (`color_id`),
  KEY `thread_id` (`thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_posts`
--

LOCK TABLES `wo_posts` WRITE;
/*!40000 ALTER TABLE `wo_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_products`
--

DROP TABLE IF EXISTS `wo_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `category` int(11) NOT NULL DEFAULT '0',
  `sub_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `location` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `type` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USD',
  `lng` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `lat` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category` (`category`),
  KEY `price` (`price`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_products`
--

LOCK TABLES `wo_products` WRITE;
/*!40000 ALTER TABLE `wo_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_products_categories`
--

DROP TABLE IF EXISTS `wo_products_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_products_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(160) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_products_categories`
--

LOCK TABLES `wo_products_categories` WRITE;
/*!40000 ALTER TABLE `wo_products_categories` DISABLE KEYS */;
INSERT INTO `wo_products_categories` VALUES (1,'1470'),(2,'1471'),(3,'1472'),(4,'1473'),(5,'1474'),(6,'1475'),(7,'1476'),(8,'1477'),(9,'1478'),(10,'1479');
/*!40000 ALTER TABLE `wo_products_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_products_media`
--

DROP TABLE IF EXISTS `wo_products_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_products_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_products_media`
--

LOCK TABLES `wo_products_media` WRITE;
/*!40000 ALTER TABLE `wo_products_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_products_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_profilefields`
--

DROP TABLE IF EXISTS `wo_profilefields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_profilefields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `length` int(11) NOT NULL DEFAULT '0',
  `placement` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'profile',
  `registration_page` int(11) NOT NULL DEFAULT '0',
  `profile_page` int(11) NOT NULL DEFAULT '0',
  `select_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `active` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `registration_page` (`registration_page`),
  KEY `active` (`active`),
  KEY `profile_page` (`profile_page`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_profilefields`
--

LOCK TABLES `wo_profilefields` WRITE;
/*!40000 ALTER TABLE `wo_profilefields` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_profilefields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_reactions`
--

DROP TABLE IF EXISTS `wo_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_reactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `post_id` int(11) unsigned DEFAULT '0',
  `comment_id` int(11) unsigned DEFAULT '0',
  `replay_id` int(11) unsigned DEFAULT '0',
  `reaction` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `idx_reaction` (`reaction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_reactions`
--

LOCK TABLES `wo_reactions` WRITE;
/*!40000 ALTER TABLE `wo_reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_reactions_types`
--

DROP TABLE IF EXISTS `wo_reactions_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_reactions_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `wowonder_icon` varchar(300) NOT NULL DEFAULT '',
  `sunshine_icon` varchar(300) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_reactions_types`
--

LOCK TABLES `wo_reactions_types` WRITE;
/*!40000 ALTER TABLE `wo_reactions_types` DISABLE KEYS */;
INSERT INTO `wo_reactions_types` VALUES (1,'like','','',1),(2,'love','','',1),(3,'haha','','',1),(4,'wow','','',1),(5,'sad','','',1),(6,'angry','','',1);
/*!40000 ALTER TABLE `wo_reactions_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_recentsearches`
--

DROP TABLE IF EXISTS `wo_recentsearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_recentsearches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `search_id` int(11) NOT NULL DEFAULT '0',
  `search_type` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`search_id`),
  KEY `search_type` (`search_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_recentsearches`
--

LOCK TABLES `wo_recentsearches` WRITE;
/*!40000 ALTER TABLE `wo_recentsearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_recentsearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_refund`
--

DROP TABLE IF EXISTS `wo_refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_refund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `pro_type` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `time` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `pro_type` (`pro_type`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_refund`
--

LOCK TABLES `wo_refund` WRITE;
/*!40000 ALTER TABLE `wo_refund` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_relationship`
--

DROP TABLE IF EXISTS `wo_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `relationship` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `from_id` (`from_id`),
  KEY `relationship` (`relationship`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_relationship`
--

LOCK TABLES `wo_relationship` WRITE;
/*!40000 ALTER TABLE `wo_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_reports`
--

DROP TABLE IF EXISTS `wo_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(15) unsigned NOT NULL DEFAULT '0',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(15) NOT NULL DEFAULT '0',
  `group_id` int(15) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `seen` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `seen` (`seen`),
  KEY `profile_id` (`profile_id`),
  KEY `page_id` (`page_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_reports`
--

LOCK TABLES `wo_reports` WRITE;
/*!40000 ALTER TABLE `wo_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_savedposts`
--

DROP TABLE IF EXISTS `wo_savedposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_savedposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_savedposts`
--

LOCK TABLES `wo_savedposts` WRITE;
/*!40000 ALTER TABLE `wo_savedposts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_savedposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_stickers`
--

DROP TABLE IF EXISTS `wo_stickers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_stickers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `media_file` varchar(250) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_stickers`
--

LOCK TABLES `wo_stickers` WRITE;
/*!40000 ALTER TABLE `wo_stickers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_stickers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_story_seen`
--

DROP TABLE IF EXISTS `wo_story_seen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_story_seen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `story_id` int(11) NOT NULL DEFAULT '0',
  `time` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `story_id` (`story_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_story_seen`
--

LOCK TABLES `wo_story_seen` WRITE;
/*!40000 ALTER TABLE `wo_story_seen` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_story_seen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_sub_categories`
--

DROP TABLE IF EXISTS `wo_sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_sub_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `lang_key` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `lang_key` (`lang_key`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_sub_categories`
--

LOCK TABLES `wo_sub_categories` WRITE;
/*!40000 ALTER TABLE `wo_sub_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_terms`
--

DROP TABLE IF EXISTS `wo_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_terms`
--

LOCK TABLES `wo_terms` WRITE;
/*!40000 ALTER TABLE `wo_terms` DISABLE KEYS */;
INSERT INTO `wo_terms` VALUES (1,'terms_of_use','<h4>1- Write your Terms Of Use here.</h4>     \nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,          quis sdnostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.          <br><br>          <h4>2- Random title</h4>          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(2,'privacy_policy','<h2>Who we are?</h2>\nProvide name and contact details of the data controller. This will typically be your business or you, if you are a sole trader. Where applicable, you should include the identity and contact details of the controllerâ€™s representative and/or the data protection officer. \n\n<h2>What information do we collect?</h2>\nSpecify the types of personal information you collect, eg names, addresses, user names, etc. You should include specific details on:\nhow you collect data (eg when a user registers, purchases or uses your services, completes a contact form, signs up to a newsletter, etc) \nwhat specific data you collect through each of the data collection method\nif you collect data from third parties, you must specify categories of data and source\nif you process sensitive personal data or financial information, and how you handle this \n<br><br>\nYou may want to provide the user with relevant definitions in relation to personal data and sensitive personal data. \n<br><br>\n<h2>How do we use personal information?</h2>\nDescribe in detail all the service- and business-related purposes for which you will process data. For example, this may include things like:\npersonalisation of content, business information or user experience\naccount set up and administration\ndelivering marketing and events communication\ncarrying out polls and surveys\ninternal research and development purposes\nproviding goods and services\nlegal obligations (eg prevention of fraud)\nmeeting internal audit requirements\n<br><br>\nPlease note this list is not exhaustive. You will need to record all purposes for which you process personal data. \n<br><br>\n<h2>What legal basis do we have for processing your personal data?</h2>\nDescribe the relevant processing conditions contained within the GDPR. There are six possible legal grounds: \nconsent\ncontract\nlegitimate interests\nvital interests\npublic task \nlegal obligation\n<br><br>\nProvide detailed information on all grounds that apply to your processing, and why. If you rely on consent, explain how individuals can withdraw and manage their consent. If you rely on legitimate interests, explain clearly what these are.\n<br><br>\nIf youâ€™re processing special category personal data, you will have to satisfy at least one of the six processing conditions, as well as additional requirements for processing under the GDPR. Provide information on all additional grounds that apply. \n<br><br>\n<h2>When do we share personal data?</h2>\nExplain that you will treat personal data confidentially and describe the circumstances when you might disclose or share it. Eg, when necessary to provide your services or conduct your business operations, as outlined in your purposes for processing. You should provide information on:\nhow you will share the data\nwhat safeguards you will have in place\nwhat parties you may share the data with and why\n\n<h2>Where do we store and process personal data?</h2>\nIf applicable, explain if you intend to store and process data outside of the data subjectâ€™s home country. Outline the steps you will take to ensure the data is processed according to your privacy policy and the applicable law of the country where data is located.\n\nIf you transfer data outside the European Economic Area, outline the measures you will put in place to provide an appropriate level of data privacy protection. Eg contractual clauses, data transfer agreements, etc.\n\n<h2>How do we secure personal data?</h2>\nDescribe your approach to data security and the technologies and procedures you use to protect personal information. For example, these may be measures:\nto protect data against accidental loss\nto prevent unauthorised access, use, destruction or disclosure\nto ensure business continuity and disaster recovery\nto restrict access to personal information\nto conduct privacy impact assessments in accordance with the law and your business policies\nto train staff and contractors on data security\nto manage third party risks, through use of contracts and security reviews\n<br><br>\nPlease note this list is not exhaustive. You should record all mechanisms you rely on to protect personal data. You should also state if your organisation adheres to certain accepted standards or regulatory requirements.\n<br><br>\n<h2>How long do we keep your personal data for?</h2>\nProvide specific information on the length of time you will keep the information for in relation to each processing purpose. The GDPR requires you to retain data for no longer than reasonably necessary. Include details of your data or records retention schedules, or link to additional resources where these are published.\n<br><br>\nIf you cannot state a specific period, you need to set out the criteria you will apply to determine how long to keep the data for (eg local laws, contractual obligations, etc)\n<br><br>\nYou should also outline how you securely dispose of data after you no longer need it.\n<br><br>\n<h2>Your rights in relation to personal data</h2>\nUnder the GDPR, you must respect the right of data subjects to access and control their personal data. In your privacy notice, you must outline their rights in respect of:\naccess to personal information \ncorrection and deletion\nwithdrawal of consent (if processing data on condition of consent)\ndata portability\nrestriction of processing and objection\nlodging a complaint with the Information Commissionerâ€™s Office\n\nYou should explain how individuals can exercise their rights, and how you plan to respond to subject data requests. State if any relevant exemptions may apply and set out any identity verifications procedures you may rely on.\n\nInclude details of the circumstances where data subject rights may be limited, eg if fulfilling the data subject request may expose personal data about another person, or if youâ€™re asked to delete data which you are required to keep by law. \n\n<h2>Use of automated decision-making and profiling</h2>\nWhere you use profiling or other automated decision-making, you must disclose this in your privacy policy. In such cases, you must provide details on existence of any automated decision-making, together with information about the logic involved, and the likely significance and consequences of the processing of the individual.\n\n<h2>How to contact us?</h2>\nExplain how data subject can get in touch if they have questions or concerns about your privacy practices, their personal information, or if they wish to file a complaint. Describe all ways in which they can contact you â€“ eg online, by email or postal mail.\n<br><br>\nIf applicable, you may also include information on:\n<br><br>\n<h2>Use of cookies and other technologies</h2>\nYou may include a link to further information, or describe within the policy if you intend to set and use cookies, tracking and similar technologies to store and manage user preferences on your website, advertise, enable content or otherwise analyse user and usage data. Provide information on what types of cookies and technologies you use, why you use them and how an individual can control and manage them.\n<br><br>\nLinking to other websites / third party content\nIf you link to external sites and resources from your website, be specific on whether this constitutes endorsement, and if you take any responsibility for the content (or information contained within) any linked website.\n<br><br>\nYou may wish to consider adding other optional clauses to your privacy policy, depending on your businessâ€™ circumstances. \n'),(3,'about','<h4>1- Write about your website here.</h4>          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.          <br><br>          <h4>2- Random title</h4>          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod          tempor incididunt ut labore et dxzcolore magna aliqua. Ut enim ad minim veniam,          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(4,'refund','<h4>1- Write your Terms Of Use here.</h4>     \r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,          quis sdnostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.          <br><br>          <h4>2- Random title</h4>          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');
/*!40000 ALTER TABLE `wo_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_tokens`
--

DROP TABLE IF EXISTS `wo_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `app_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(200) NOT NULL DEFAULT '',
  `time` int(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`),
  KEY `app_id` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_tokens`
--

LOCK TABLES `wo_tokens` WRITE;
/*!40000 ALTER TABLE `wo_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_user_gifts`
--

DROP TABLE IF EXISTS `wo_user_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_user_gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL DEFAULT '0',
  `to` int(11) NOT NULL DEFAULT '0',
  `gift_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `from` (`from`),
  KEY `to` (`to`),
  KEY `gift_id` (`gift_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_user_gifts`
--

LOCK TABLES `wo_user_gifts` WRITE;
/*!40000 ALTER TABLE `wo_user_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_user_gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_userads`
--

DROP TABLE IF EXISTS `wo_userads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_userads` (
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
  `page_id` varchar(50) NOT NULL DEFAULT '',
  `start` date NOT NULL,
  `end` date NOT NULL,
  `budget` float unsigned NOT NULL DEFAULT '0',
  `spent` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `appears` (`appears`),
  KEY `user_id` (`user_id`),
  KEY `location` (`location`(255)),
  KEY `gender` (`gender`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_userads`
--

LOCK TABLES `wo_userads` WRITE;
/*!40000 ALTER TABLE `wo_userads` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_userads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_userads_data`
--

DROP TABLE IF EXISTS `wo_userads_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_userads_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ad_id` int(11) NOT NULL DEFAULT '0',
  `clicks` int(15) NOT NULL DEFAULT '0',
  `views` int(15) NOT NULL DEFAULT '0',
  `spend` float unsigned NOT NULL DEFAULT '0',
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_userads_data`
--

LOCK TABLES `wo_userads_data` WRITE;
/*!40000 ALTER TABLE `wo_userads_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_userads_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_userfields`
--

DROP TABLE IF EXISTS `wo_userfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_userfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_userfields`
--

LOCK TABLES `wo_userfields` WRITE;
/*!40000 ALTER TABLE `wo_userfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_userfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_users`
--

DROP TABLE IF EXISTS `wo_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(70) NOT NULL DEFAULT '',
  `first_name` varchar(60) NOT NULL DEFAULT '',
  `last_name` varchar(32) NOT NULL DEFAULT '',
  `avatar` varchar(100) NOT NULL DEFAULT 'upload/photos/d-avatar.jpg',
  `cover` varchar(100) NOT NULL DEFAULT 'upload/photos/d-cover.jpg',
  `background_image` varchar(100) NOT NULL DEFAULT '',
  `background_image_status` enum('0','1') NOT NULL DEFAULT '0',
  `relationship_id` int(11) NOT NULL DEFAULT '0',
  `address` varchar(100) NOT NULL DEFAULT '',
  `working` varchar(32) NOT NULL DEFAULT '',
  `working_link` varchar(32) NOT NULL DEFAULT '',
  `about` text,
  `school` varchar(32) NOT NULL DEFAULT '',
  `gender` varchar(32) NOT NULL DEFAULT 'male',
  `birthday` varchar(50) NOT NULL DEFAULT '0000-00-00',
  `country_id` int(11) NOT NULL DEFAULT '0',
  `website` varchar(50) NOT NULL DEFAULT '',
  `facebook` varchar(50) NOT NULL DEFAULT '',
  `google` varchar(50) NOT NULL DEFAULT '',
  `twitter` varchar(50) NOT NULL DEFAULT '',
  `linkedin` varchar(32) NOT NULL DEFAULT '',
  `youtube` varchar(100) NOT NULL DEFAULT '',
  `vk` varchar(32) NOT NULL DEFAULT '',
  `instagram` varchar(32) NOT NULL DEFAULT '',
  `language` varchar(31) NOT NULL DEFAULT 'english',
  `email_code` varchar(32) NOT NULL DEFAULT '',
  `src` varchar(32) NOT NULL DEFAULT 'Undefined',
  `ip_address` varchar(32) DEFAULT '',
  `follow_privacy` enum('1','0') NOT NULL DEFAULT '0',
  `friend_privacy` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `post_privacy` varchar(255) NOT NULL DEFAULT 'ifollow',
  `message_privacy` enum('1','0','2') NOT NULL DEFAULT '0',
  `confirm_followers` enum('1','0') NOT NULL DEFAULT '0',
  `show_activities_privacy` enum('0','1') NOT NULL DEFAULT '1',
  `birth_privacy` enum('0','1','2') NOT NULL DEFAULT '0',
  `visit_privacy` enum('0','1') NOT NULL DEFAULT '0',
  `verified` enum('1','0') NOT NULL DEFAULT '0',
  `lastseen` int(32) NOT NULL DEFAULT '0',
  `showlastseen` enum('1','0') NOT NULL DEFAULT '1',
  `emailNotification` enum('1','0') NOT NULL DEFAULT '1',
  `e_liked` enum('0','1') NOT NULL DEFAULT '1',
  `e_wondered` enum('0','1') NOT NULL DEFAULT '1',
  `e_shared` enum('0','1') NOT NULL DEFAULT '1',
  `e_followed` enum('0','1') NOT NULL DEFAULT '1',
  `e_commented` enum('0','1') NOT NULL DEFAULT '1',
  `e_visited` enum('0','1') NOT NULL DEFAULT '1',
  `e_liked_page` enum('0','1') NOT NULL DEFAULT '1',
  `e_mentioned` enum('0','1') NOT NULL DEFAULT '1',
  `e_joined_group` enum('0','1') NOT NULL DEFAULT '1',
  `e_accepted` enum('0','1') NOT NULL DEFAULT '1',
  `e_profile_wall_post` enum('0','1') NOT NULL DEFAULT '1',
  `e_sentme_msg` enum('0','1') NOT NULL DEFAULT '0',
  `e_last_notif` varchar(50) NOT NULL DEFAULT '0',
  `notification_settings` varchar(400) NOT NULL DEFAULT '{"e_liked":1,"e_shared":1,"e_wondered":0,"e_commented":1,"e_followed":1,"e_accepted":1,"e_mentioned":1,"e_joined_group":1,"e_liked_page":1,"e_visited":1,"e_profile_wall_post":1,"e_memory":1}',
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `active` enum('0','1','2') NOT NULL DEFAULT '0',
  `admin` enum('0','1','2') NOT NULL DEFAULT '0',
  `type` varchar(11) NOT NULL DEFAULT 'user',
  `registered` varchar(32) NOT NULL DEFAULT '0/0000',
  `start_up` enum('0','1') NOT NULL DEFAULT '0',
  `start_up_info` enum('0','1') NOT NULL DEFAULT '0',
  `startup_follow` enum('0','1') NOT NULL DEFAULT '0',
  `startup_image` enum('0','1') NOT NULL DEFAULT '0',
  `last_email_sent` int(32) NOT NULL DEFAULT '0',
  `phone_number` varchar(32) NOT NULL DEFAULT '',
  `sms_code` int(11) NOT NULL DEFAULT '0',
  `is_pro` enum('0','1') NOT NULL DEFAULT '0',
  `pro_time` int(11) NOT NULL DEFAULT '0',
  `pro_type` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  `joined` int(11) NOT NULL DEFAULT '0',
  `css_file` varchar(100) NOT NULL DEFAULT '',
  `timezone` varchar(50) NOT NULL DEFAULT '',
  `referrer` int(11) NOT NULL DEFAULT '0',
  `ref_user_id` int(11) NOT NULL DEFAULT '0',
  `balance` varchar(100) NOT NULL DEFAULT '0',
  `paypal_email` varchar(100) NOT NULL DEFAULT '',
  `notifications_sound` enum('0','1') NOT NULL DEFAULT '0',
  `order_posts_by` enum('0','1') NOT NULL DEFAULT '1',
  `social_login` enum('0','1') NOT NULL DEFAULT '0',
  `android_m_device_id` varchar(50) NOT NULL DEFAULT '',
  `ios_m_device_id` varchar(50) NOT NULL DEFAULT '',
  `android_n_device_id` varchar(50) NOT NULL DEFAULT '',
  `ios_n_device_id` varchar(50) NOT NULL DEFAULT '',
  `web_device_id` varchar(100) NOT NULL DEFAULT '',
  `wallet` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0.00',
  `lat` varchar(200) NOT NULL DEFAULT '0',
  `lng` varchar(200) NOT NULL DEFAULT '0',
  `last_location_update` varchar(30) NOT NULL DEFAULT '0',
  `share_my_location` int(11) NOT NULL DEFAULT '1',
  `last_data_update` int(11) NOT NULL DEFAULT '0',
  `details` varchar(300) NOT NULL DEFAULT '{"post_count":0,"album_count":0,"following_count":0,"followers_count":0,"groups_count":0,"likes_count":0}',
  `sidebar_data` text,
  `last_avatar_mod` int(11) NOT NULL DEFAULT '0',
  `last_cover_mod` int(11) NOT NULL DEFAULT '0',
  `points` float unsigned NOT NULL DEFAULT '0',
  `daily_points` int(11) NOT NULL DEFAULT '0',
  `point_day_expire` varchar(50) NOT NULL DEFAULT '',
  `last_follow_id` int(11) NOT NULL DEFAULT '0',
  `share_my_data` int(11) NOT NULL DEFAULT '1',
  `last_login_data` text,
  `two_factor` int(11) NOT NULL DEFAULT '0',
  `new_email` varchar(255) NOT NULL DEFAULT '',
  `two_factor_verified` int(11) NOT NULL DEFAULT '0',
  `new_phone` varchar(32) NOT NULL DEFAULT '',
  `info_file` varchar(300) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `state` varchar(50) NOT NULL DEFAULT '',
  `zip` varchar(11) NOT NULL DEFAULT '',
  `school_completed` int(11) NOT NULL DEFAULT '0',
  `weather_unit` varchar(11) NOT NULL DEFAULT 'us',
  `paystack_ref` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `active` (`active`),
  KEY `admin` (`admin`),
  KEY `src` (`src`),
  KEY `gender` (`gender`),
  KEY `avatar` (`avatar`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `registered` (`registered`),
  KEY `joined` (`joined`),
  KEY `phone_number` (`phone_number`) USING BTREE,
  KEY `referrer` (`referrer`),
  KEY `wallet` (`wallet`),
  KEY `friend_privacy` (`friend_privacy`),
  KEY `lat` (`lat`),
  KEY `lng` (`lng`),
  KEY `order1` (`username`,`user_id`),
  KEY `order2` (`email`,`user_id`),
  KEY `order3` (`lastseen`,`user_id`),
  KEY `order4` (`active`,`user_id`),
  KEY `last_data_update` (`last_data_update`),
  KEY `points` (`points`),
  KEY `paystack_ref` (`paystack_ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_users`
--

LOCK TABLES `wo_users` WRITE;
/*!40000 ALTER TABLE `wo_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_userschat`
--

DROP TABLE IF EXISTS `wo_userschat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_userschat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `conversation_user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `color` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `conversation_user_id` (`conversation_user_id`),
  KEY `time` (`time`),
  KEY `order1` (`user_id`,`id`),
  KEY `order2` (`user_id`,`id`),
  KEY `order3` (`conversation_user_id`,`id`),
  KEY `order4` (`conversation_user_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_userschat`
--

LOCK TABLES `wo_userschat` WRITE;
/*!40000 ALTER TABLE `wo_userschat` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_userschat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_userstory`
--

DROP TABLE IF EXISTS `wo_userstory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_userstory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  `posted` varchar(50) NOT NULL DEFAULT '',
  `expire` varchar(100) DEFAULT '',
  `thumbnail` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `expires` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_userstory`
--

LOCK TABLES `wo_userstory` WRITE;
/*!40000 ALTER TABLE `wo_userstory` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_userstory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_userstorymedia`
--

DROP TABLE IF EXISTS `wo_userstorymedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_userstorymedia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `story_id` int(30) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT '',
  `filename` text,
  `expire` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `expire` (`expire`),
  KEY `story_id` (`story_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_userstorymedia`
--

LOCK TABLES `wo_userstorymedia` WRITE;
/*!40000 ALTER TABLE `wo_userstorymedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_userstorymedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_verification_requests`
--

DROP TABLE IF EXISTS `wo_verification_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_verification_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `user_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passport` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `photo` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `seen` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_verification_requests`
--

LOCK TABLES `wo_verification_requests` WRITE;
/*!40000 ALTER TABLE `wo_verification_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_verification_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_videocalles`
--

DROP TABLE IF EXISTS `wo_videocalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_videocalles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_token` text,
  `access_token_2` text,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `room_name` varchar(50) NOT NULL DEFAULT '',
  `active` int(11) NOT NULL DEFAULT '0',
  `called` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `declined` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `to_id` (`to_id`),
  KEY `from_id` (`from_id`),
  KEY `called` (`called`),
  KEY `declined` (`declined`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_videocalles`
--

LOCK TABLES `wo_videocalles` WRITE;
/*!40000 ALTER TABLE `wo_videocalles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_videocalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_votes`
--

DROP TABLE IF EXISTS `wo_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `option_id` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_votes`
--

LOCK TABLES `wo_votes` WRITE;
/*!40000 ALTER TABLE `wo_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wo_wonders`
--

DROP TABLE IF EXISTS `wo_wonders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wo_wonders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_wonders`
--

LOCK TABLES `wo_wonders` WRITE;
/*!40000 ALTER TABLE `wo_wonders` DISABLE KEYS */;
/*!40000 ALTER TABLE `wo_wonders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:16:54
