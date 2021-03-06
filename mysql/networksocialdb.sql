-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: networksocialdb
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
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertisement` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `markup` text NOT NULL,
  `added` int(33) NOT NULL,
  `page` varchar(255) NOT NULL DEFAULT '0',
  `click` int(99) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement`
--

LOCK TABLES `advertisement` WRITE;
/*!40000 ALTER TABLE `advertisement` DISABLE KEYS */;
/*!40000 ALTER TABLE `advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(40) NOT NULL,
  `name` varchar(240) NOT NULL,
  `added` varchar(50) NOT NULL DEFAULT '0',
  `cover` varchar(90) NOT NULL DEFAULT '0',
  `visible_to` enum('everyone','only_me','friends') NOT NULL DEFAULT 'everyone',
  `video` enum('yes','no') NOT NULL DEFAULT 'no',
  `removable` enum('yes','no') NOT NULL DEFAULT 'yes',
  `origin` varchar(100) NOT NULL DEFAULT 'null',
  `origin_id` varchar(100) NOT NULL DEFAULT 'null',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '0',
  `genre` int(9) NOT NULL,
  `added` varchar(44) NOT NULL DEFAULT '0',
  `cover` int(255) NOT NULL DEFAULT '0',
  `description` text,
  `iframe` text,
  `views` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps`
--

LOCK TABLES `apps` WRITE;
/*!40000 ALTER TABLE `apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apps_covers`
--

DROP TABLE IF EXISTS `apps_covers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_covers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` text NOT NULL,
  `app_id` int(99) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_covers`
--

LOCK TABLES `apps_covers` WRITE;
/*!40000 ALTER TABLE `apps_covers` DISABLE KEYS */;
/*!40000 ALTER TABLE `apps_covers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments` (
  `id` int(90) unsigned NOT NULL AUTO_INCREMENT,
  `filename` text NOT NULL,
  `userid` varchar(255) NOT NULL DEFAULT '',
  `added` varchar(80) NOT NULL DEFAULT '',
  `sended_to` varchar(44) NOT NULL DEFAULT '',
  `file_size` varchar(40) NOT NULL DEFAULT '0',
  `s3` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avps`
--

DROP TABLE IF EXISTS `avps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avps` (
  `arg` varchar(20) NOT NULL DEFAULT '',
  `value_s` text NOT NULL,
  `value_i` int(11) NOT NULL DEFAULT '0',
  `value_u` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avps`
--

LOCK TABLES `avps` WRITE;
/*!40000 ALTER TABLE `avps` DISABLE KEYS */;
/*!40000 ALTER TABLE `avps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blacklist` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `employer` int(40) unsigned NOT NULL DEFAULT '0',
  `userid` int(40) unsigned NOT NULL DEFAULT '0',
  `added` int(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist`
--

LOCK TABLES `blacklist` WRITE;
/*!40000 ALTER TABLE `blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmarks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` int(99) NOT NULL DEFAULT '0',
  `categ` varchar(255) NOT NULL,
  `added` varchar(44) NOT NULL DEFAULT '0',
  `clubid` varchar(60) NOT NULL DEFAULT '0',
  `uid` int(99) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checked_in`
--

DROP TABLE IF EXISTS `checked_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checked_in` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(90) NOT NULL DEFAULT '0',
  `place_id` varchar(255) NOT NULL DEFAULT '0',
  `data` text,
  `added` int(44) NOT NULL DEFAULT '0',
  `place_type` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checked_in`
--

LOCK TABLES `checked_in` WRITE;
/*!40000 ALTER TABLE `checked_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `checked_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(255) NOT NULL,
  `itemid` int(255) NOT NULL,
  `categ` varchar(80) NOT NULL DEFAULT '',
  `added` varchar(40) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `updated` varchar(44) NOT NULL DEFAULT '0',
  `available` enum('yes','no') NOT NULL DEFAULT 'yes',
  `item_type` varchar(50) NOT NULL DEFAULT '',
  `origin` varchar(50) NOT NULL DEFAULT 'null',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` enum('group','public_page') NOT NULL DEFAULT 'group',
  `general_category` varchar(244) NOT NULL DEFAULT '',
  `category` varchar(244) NOT NULL DEFAULT '',
  `subcategory` varchar(244) NOT NULL DEFAULT '',
  `cover` text NOT NULL,
  `website` varchar(200) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `privacy` enum('Open','Closed','Private') NOT NULL DEFAULT 'Open',
  `admin` text NOT NULL,
  `created` varchar(40) NOT NULL DEFAULT '0',
  `cover_position` varchar(12) NOT NULL DEFAULT '',
  `location` enum('yes','no') NOT NULL DEFAULT 'no',
  `loc_lat` varchar(200) NOT NULL DEFAULT '',
  `loc_lon` varchar(200) NOT NULL DEFAULT '',
  `loc_data` text NOT NULL,
  `allow_to_post` enum('only_admins','only_followers','everyone') NOT NULL DEFAULT 'only_followers',
  `verified` enum('yes','no') NOT NULL DEFAULT 'no',
  `status` text NOT NULL,
  `logo` text NOT NULL,
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities_followers`
--

DROP TABLE IF EXISTS `communities_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communities_followers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) NOT NULL DEFAULT '0',
  `added` varchar(50) NOT NULL DEFAULT '',
  `group_id` varchar(90) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities_followers`
--

LOCK TABLES `communities_followers` WRITE;
/*!40000 ALTER TABLE `communities_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `communities_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleted_photos`
--

DROP TABLE IF EXISTS `deleted_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deleted_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photoid` varchar(90) NOT NULL DEFAULT '0',
  `userid` int(33) NOT NULL,
  `time` varchar(40) NOT NULL DEFAULT '0',
  `filename` text NOT NULL,
  `albumid` int(255) NOT NULL DEFAULT '0',
  `padded` varchar(44) NOT NULL DEFAULT '0',
  `extension` varchar(20) NOT NULL,
  `size` int(90) NOT NULL,
  `position` varchar(255) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `s3` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_photos`
--

LOCK TABLES `deleted_photos` WRITE;
/*!40000 ALTER TABLE `deleted_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `deleted_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleted_posts`
--

DROP TABLE IF EXISTS `deleted_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deleted_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(150) NOT NULL DEFAULT '0',
  `type` varchar(90) NOT NULL DEFAULT 'text',
  `added` varchar(50) NOT NULL DEFAULT '0',
  `text` text,
  `settings` text,
  `privacy` enum('public','friends') NOT NULL DEFAULT 'public',
  `schedule` varchar(220) NOT NULL DEFAULT '0',
  `data` text,
  `origin` varchar(50) NOT NULL DEFAULT 'null',
  `post_id` varchar(200) NOT NULL DEFAULT '0',
  `views` varchar(220) NOT NULL DEFAULT '0',
  `shared` enum('yes','no') NOT NULL DEFAULT 'no',
  `origin_id` varchar(100) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_posts`
--

LOCK TABLES `deleted_posts` WRITE;
/*!40000 ALTER TABLE `deleted_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `deleted_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleted_videos`
--

DROP TABLE IF EXISTS `deleted_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deleted_videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` varchar(40) NOT NULL DEFAULT '',
  `videoid` varchar(200) NOT NULL DEFAULT '',
  `title` text NOT NULL,
  `description` text NOT NULL,
  `filename` text NOT NULL,
  `added` int(40) NOT NULL DEFAULT '0',
  `size` varchar(99) NOT NULL DEFAULT '0',
  `extension` varchar(15) NOT NULL DEFAULT '',
  `albumid` int(99) NOT NULL DEFAULT '0',
  `userid` int(160) NOT NULL DEFAULT '0',
  `tags` text NOT NULL,
  `views` int(255) NOT NULL DEFAULT '0',
  `external` varchar(255) NOT NULL DEFAULT '',
  `dur` varchar(62) NOT NULL DEFAULT '0',
  `s3` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_videos`
--

LOCK TABLES `deleted_videos` WRITE;
/*!40000 ALTER TABLE `deleted_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `deleted_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs`
--

DROP TABLE IF EXISTS `docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(50) NOT NULL DEFAULT '0',
  `filename` text NOT NULL,
  `original_filename` text NOT NULL,
  `size` varchar(50) NOT NULL DEFAULT '0',
  `format` varchar(50) NOT NULL DEFAULT '',
  `added` varchar(50) NOT NULL DEFAULT '0',
  `category` enum('personal_document','educational_paper','book','other') NOT NULL DEFAULT 'personal_document',
  `tags` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs`
--

LOCK TABLES `docs` WRITE;
/*!40000 ALTER TABLE `docs` DISABLE KEYS */;
/*!40000 ALTER TABLE `docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs_favorite`
--

DROP TABLE IF EXISTS `docs_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docs_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doc_id` varchar(50) NOT NULL DEFAULT '',
  `userid` varchar(50) NOT NULL DEFAULT 'picture',
  `added` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs_favorite`
--

LOCK TABLES `docs_favorite` WRITE;
/*!40000 ALTER TABLE `docs_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `docs_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed`
--

DROP TABLE IF EXISTS `feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `byuser` text NOT NULL,
  `itemid` text NOT NULL,
  `added` varchar(51) DEFAULT NULL,
  `categ` varchar(255) NOT NULL DEFAULT '',
  `parent_id` varchar(255) DEFAULT NULL,
  `origin` varchar(50) NOT NULL DEFAULT 'null',
  `hide_for` text NOT NULL,
  `origin_id` varchar(100) NOT NULL DEFAULT 'null',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed`
--

LOCK TABLES `feed` WRITE;
/*!40000 ALTER TABLE `feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed_favorite_users`
--

DROP TABLE IF EXISTS `feed_favorite_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feed_favorite_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(90) NOT NULL DEFAULT '0',
  `fvid` int(90) NOT NULL DEFAULT '0',
  `added` int(33) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_favorite_users`
--

LOCK TABLES `feed_favorite_users` WRITE;
/*!40000 ALTER TABLE `feed_favorite_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed_favorite_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` varchar(90) NOT NULL DEFAULT '0',
  `send_at` int(33) NOT NULL,
  `sender_email` varchar(255) NOT NULL DEFAULT '0',
  `attachment` varchar(255) NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `message` text,
  `read` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(99) NOT NULL,
  `friendid` int(99) NOT NULL,
  `added` varchar(50) NOT NULL DEFAULT '0',
  `status` enum('confirmed','pending') NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends_on_map`
--

DROP TABLE IF EXISTS `friends_on_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends_on_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(99) NOT NULL,
  `time` varchar(50) NOT NULL DEFAULT '',
  `status` text NOT NULL,
  `location` text NOT NULL,
  `custom` enum('yes','no') NOT NULL DEFAULT 'no',
  `available` enum('yes','no') NOT NULL DEFAULT 'yes',
  `media` text NOT NULL,
  `lat_long` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends_on_map`
--

LOCK TABLES `friends_on_map` WRITE;
/*!40000 ALTER TABLE `friends_on_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends_on_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gifts`
--

DROP TABLE IF EXISTS `gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categ` varchar(99) NOT NULL,
  `price` varchar(50) NOT NULL DEFAULT '0',
  `added` int(32) NOT NULL,
  `gift` text,
  `tags` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gifts`
--

LOCK TABLES `gifts` WRITE;
/*!40000 ALTER TABLE `gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(40) NOT NULL DEFAULT '0',
  `guestid` int(33) NOT NULL,
  `added` int(33) NOT NULL DEFAULT '0',
  `new` enum('yes','no') DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_log`
--

DROP TABLE IF EXISTS `ip_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ip_log` (
  `id` int(99) unsigned NOT NULL AUTO_INCREMENT,
  `data` text NOT NULL,
  `ip` varchar(99) NOT NULL DEFAULT '0',
  `userid` int(99) NOT NULL DEFAULT '0',
  `time` int(40) NOT NULL DEFAULT '0',
  `device_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_log`
--

LOCK TABLES `ip_log` WRITE;
/*!40000 ALTER TABLE `ip_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_rating`
--

DROP TABLE IF EXISTS `items_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items_rating` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(200) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `item_type` varchar(190) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_rating`
--

LOCK TABLES `items_rating` WRITE;
/*!40000 ALTER TABLE `items_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL DEFAULT '',
  `product_category` varchar(200) NOT NULL DEFAULT '',
  `product_description` text NOT NULL,
  `product_cover` varchar(150) NOT NULL DEFAULT '',
  `product_location` varchar(150) NOT NULL DEFAULT '',
  `price` varchar(32) NOT NULL DEFAULT '0',
  `added` varchar(32) NOT NULL DEFAULT '',
  `userid` varchar(100) NOT NULL DEFAULT '',
  `views` varchar(220) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_favorites`
--

DROP TABLE IF EXISTS `market_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market_favorites` (
  `id` int(40) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(99) NOT NULL DEFAULT '0',
  `added` varchar(50) NOT NULL DEFAULT '',
  `product_id` varchar(150) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_favorites`
--

LOCK TABLES `market_favorites` WRITE;
/*!40000 ALTER TABLE `market_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `market_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_pictures`
--

DROP TABLE IF EXISTS `market_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market_pictures` (
  `id` int(40) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(99) NOT NULL DEFAULT '0',
  `filename` text NOT NULL,
  `added` varchar(50) NOT NULL DEFAULT '',
  `size` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `product_id` varchar(150) NOT NULL DEFAULT '0',
  `s3` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_pictures`
--

LOCK TABLES `market_pictures` WRITE;
/*!40000 ALTER TABLE `market_pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `market_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `msg` text NOT NULL,
  `fromUser` int(9) NOT NULL DEFAULT '0',
  `toUser` int(9) NOT NULL DEFAULT '0',
  `time` int(9) NOT NULL DEFAULT '0',
  `lastby` int(99) NOT NULL DEFAULT '0',
  `read` enum('yes','no') NOT NULL DEFAULT 'no',
  `deleteby` varchar(40) NOT NULL DEFAULT '',
  `hidden` enum('yes','no') NOT NULL DEFAULT 'no',
  `shared` enum('yes','no') DEFAULT 'no',
  `bg` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages_typing`
--

DROP TABLE IF EXISTS `messages_typing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages_typing` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `fromUser` int(9) NOT NULL DEFAULT '0',
  `toUser` int(9) NOT NULL DEFAULT '0',
  `typing` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages_typing`
--

LOCK TABLES `messages_typing` WRITE;
/*!40000 ALTER TABLE `messages_typing` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages_typing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_colors`
--

DROP TABLE IF EXISTS `messenger_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` varchar(32) NOT NULL DEFAULT '',
  `userid` varchar(100) NOT NULL DEFAULT '',
  `recipient` varchar(100) NOT NULL DEFAULT '',
  `color` varchar(100) NOT NULL DEFAULT '#2196F3',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_colors`
--

LOCK TABLES `messenger_colors` WRITE;
/*!40000 ALTER TABLE `messenger_colors` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_nicknames`
--

DROP TABLE IF EXISTS `messenger_nicknames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_nicknames` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` varchar(32) NOT NULL DEFAULT '',
  `userid` varchar(100) NOT NULL DEFAULT '',
  `recipientid` varchar(100) NOT NULL DEFAULT '',
  `nickname` varchar(200) NOT NULL DEFAULT '',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_nicknames`
--

LOCK TABLES `messenger_nicknames` WRITE;
/*!40000 ALTER TABLE `messenger_nicknames` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_nicknames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_settings`
--

DROP TABLE IF EXISTS `messenger_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` varchar(32) NOT NULL DEFAULT '',
  `userid` varchar(100) NOT NULL DEFAULT '',
  `recipient` varchar(100) NOT NULL DEFAULT '',
  `settings` varchar(100) NOT NULL DEFAULT '{}',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_settings`
--

LOCK TABLES `messenger_settings` WRITE;
/*!40000 ALTER TABLE `messenger_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_history`
--

DROP TABLE IF EXISTS `music_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `listen` int(33) NOT NULL,
  `user` int(40) NOT NULL DEFAULT '0',
  `song` int(99) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_history`
--

LOCK TABLES `music_history` WRITE;
/*!40000 ALTER TABLE `music_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_my_music`
--

DROP TABLE IF EXISTS `music_my_music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_my_music` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uploader` int(90) NOT NULL DEFAULT '0',
  `added` int(33) NOT NULL,
  `position` mediumint(9) NOT NULL DEFAULT '0',
  `owner` int(40) NOT NULL DEFAULT '0',
  `musid` int(99) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_my_music`
--

LOCK TABLES `music_my_music` WRITE;
/*!40000 ALTER TABLE `music_my_music` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_my_music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_playlists`
--

DROP TABLE IF EXISTS `music_playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_playlists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` int(33) NOT NULL,
  `owner` int(40) NOT NULL DEFAULT '0',
  `name` text,
  `playcount` varchar(255) NOT NULL DEFAULT '0',
  `originalpid` varchar(255) NOT NULL DEFAULT '0',
  `favorite_cover` text,
  `updates` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_playlists`
--

LOCK TABLES `music_playlists` WRITE;
/*!40000 ALTER TABLE `music_playlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_playlists_pos`
--

DROP TABLE IF EXISTS `music_playlists_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_playlists_pos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` mediumint(9) NOT NULL DEFAULT '0',
  `trackid` int(255) NOT NULL,
  `playlistid` int(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_playlists_pos`
--

LOCK TABLES `music_playlists_pos` WRITE;
/*!40000 ALTER TABLE `music_playlists_pos` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_playlists_pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_purchased`
--

DROP TABLE IF EXISTS `music_purchased`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_purchased` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(40) NOT NULL DEFAULT '0',
  `song` int(99) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_purchased`
--

LOCK TABLES `music_purchased` WRITE;
/*!40000 ALTER TABLE `music_purchased` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_purchased` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_songs`
--

DROP TABLE IF EXISTS `music_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_songs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `artist` text NOT NULL,
  `title` text NOT NULL,
  `time` varchar(50) NOT NULL DEFAULT '0',
  `album` text NOT NULL,
  `uploader` int(90) NOT NULL DEFAULT '0',
  `path` text NOT NULL,
  `added` int(33) NOT NULL,
  `cover` text,
  `year` varchar(33) NOT NULL DEFAULT '',
  `comment` text,
  `genre` varchar(160) NOT NULL DEFAULT '',
  `deleted` enum('yes','no') NOT NULL DEFAULT 'no',
  `video` varchar(222) NOT NULL DEFAULT '0',
  `language` varchar(100) NOT NULL DEFAULT 'unknown',
  `video_community` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_songs`
--

LOCK TABLES `music_songs` WRITE;
/*!40000 ALTER TABLE `music_songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_stars`
--

DROP TABLE IF EXISTS `music_stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_stars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `artist` int(255) NOT NULL,
  `star` int(33) NOT NULL,
  `user` int(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_stars`
--

LOCK TABLES `music_stars` WRITE;
/*!40000 ALTER TABLE `music_stars` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_stars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_apps`
--

DROP TABLE IF EXISTS `my_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_apps` (
  `id` int(99) unsigned NOT NULL AUTO_INCREMENT,
  `appid` int(99) NOT NULL,
  `userid` int(99) NOT NULL DEFAULT '0',
  `added` varchar(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_apps`
--

LOCK TABLES `my_apps` WRITE;
/*!40000 ALTER TABLE `my_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nearby_people`
--

DROP TABLE IF EXISTS `nearby_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nearby_people` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(99) NOT NULL DEFAULT '0',
  `lat` varchar(190) NOT NULL DEFAULT '0',
  `long` varchar(190) NOT NULL DEFAULT '0',
  `time` varchar(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nearby_people`
--

LOCK TABLES `nearby_people` WRITE;
/*!40000 ALTER TABLE `nearby_people` DISABLE KEYS */;
/*!40000 ALTER TABLE `nearby_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` varchar(220) NOT NULL DEFAULT '0',
  `userid` varchar(220) NOT NULL DEFAULT '0',
  `item_id` varchar(220) NOT NULL DEFAULT '0',
  `type` varchar(220) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0',
  `read` enum('yes','no') NOT NULL DEFAULT 'no',
  `origin` varchar(50) NOT NULL DEFAULT 'null',
  `dropdown_seen` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `cover` text NOT NULL,
  `page_id` varchar(190) NOT NULL DEFAULT '0',
  `json` text NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_rate`
--

DROP TABLE IF EXISTS `photo_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_photo` int(11) NOT NULL,
  `userid` varchar(40) NOT NULL,
  `rate` int(11) NOT NULL,
  `dt_rated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `origin` varchar(50) NOT NULL DEFAULT 'null',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_rate`
--

LOCK TABLES `photo_rate` WRITE;
/*!40000 ALTER TABLE `photo_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(40) NOT NULL,
  `filename` text NOT NULL,
  `added` varchar(50) NOT NULL DEFAULT '0',
  `albumid` int(90) NOT NULL,
  `size` int(90) NOT NULL DEFAULT '0',
  `extension` varchar(20) NOT NULL,
  `position` mediumint(9) NOT NULL DEFAULT '0',
  `s3` enum('yes','no') NOT NULL DEFAULT 'no',
  `origin` varchar(50) NOT NULL DEFAULT 'null',
  `views` varchar(220) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `origin_id` varchar(220) NOT NULL DEFAULT 'null',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_answers`
--

DROP TABLE IF EXISTS `poll_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poll_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_answers`
--

LOCK TABLES `poll_answers` WRITE;
/*!40000 ALTER TABLE `poll_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_options`
--

DROP TABLE IF EXISTS `poll_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poll_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_options`
--

LOCK TABLES `poll_options` WRITE;
/*!40000 ALTER TABLE `poll_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_questions`
--

DROP TABLE IF EXISTS `poll_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poll_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `color_id` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poll_questions`
--

LOCK TABLES `poll_questions` WRITE;
/*!40000 ALTER TABLE `poll_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(150) NOT NULL DEFAULT '0',
  `type` varchar(90) NOT NULL DEFAULT 'text',
  `added` varchar(50) NOT NULL DEFAULT '0',
  `text` text,
  `settings` text,
  `privacy` enum('public','friends') NOT NULL DEFAULT 'public',
  `schedule` varchar(220) NOT NULL DEFAULT '0',
  `data` text,
  `origin` varchar(50) NOT NULL DEFAULT 'null',
  `views` varchar(220) NOT NULL DEFAULT '0',
  `shared` enum('yes','no') NOT NULL DEFAULT 'no',
  `pinned` enum('yes','no') NOT NULL DEFAULT 'no',
  `origin_id` varchar(220) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_posters`
--

DROP TABLE IF EXISTS `posts_posters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_posters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'picture',
  `added` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_posters`
--

LOCK TABLES `posts_posters` WRITE;
/*!40000 ALTER TABLE `posts_posters` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_posters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reactions`
--

DROP TABLE IF EXISTS `reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` varchar(220) NOT NULL DEFAULT '0',
  `userid` varchar(220) NOT NULL DEFAULT '0',
  `reaction` varchar(50) NOT NULL DEFAULT '0',
  `type` varchar(220) NOT NULL DEFAULT '0',
  `item_deleted` enum('yes','no') NOT NULL DEFAULT 'no',
  `added` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reactions`
--

LOCK TABLES `reactions` WRITE;
/*!40000 ALTER TABLE `reactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `type_id` int(50) NOT NULL DEFAULT '0',
  `report_by` int(50) NOT NULL DEFAULT '0',
  `added` int(32) NOT NULL DEFAULT '0',
  `seen` enum('yes','no') DEFAULT 'no',
  `reason` varchar(255) NOT NULL DEFAULT 'not_specified',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_history`
--

DROP TABLE IF EXISTS `search_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(190) NOT NULL DEFAULT '0',
  `added` int(33) NOT NULL,
  `owner` int(190) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_history`
--

LOCK TABLES `search_history` WRITE;
/*!40000 ALTER TABLE `search_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shared_links`
--

DROP TABLE IF EXISTS `shared_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shared_links` (
  `id` int(99) unsigned NOT NULL AUTO_INCREMENT,
  `byuser` int(99) NOT NULL,
  `data` text NOT NULL,
  `link` text NOT NULL,
  `added` int(40) NOT NULL DEFAULT '0',
  `embera` enum('yes','no') NOT NULL DEFAULT 'no',
  `post_id` varchar(160) NOT NULL DEFAULT '0',
  `available` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shared_links`
--

LOCK TABLES `shared_links` WRITE;
/*!40000 ALTER TABLE `shared_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `shared_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slideshow`
--

DROP TABLE IF EXISTS `slideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slideshow` (
  `id` int(99) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(40) NOT NULL DEFAULT '0',
  `added` varchar(50) NOT NULL DEFAULT '0',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'no',
  `options` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slideshow`
--

LOCK TABLES `slideshow` WRITE;
/*!40000 ALTER TABLE `slideshow` DISABLE KEYS */;
/*!40000 ALTER TABLE `slideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slideshow_imgs`
--

DROP TABLE IF EXISTS `slideshow_imgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slideshow_imgs` (
  `id` int(99) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(40) NOT NULL,
  `added` varchar(50) NOT NULL DEFAULT '0',
  `position` mediumint(9) NOT NULL DEFAULT '0',
  `ex` varchar(40) NOT NULL DEFAULT '',
  `s3` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slideshow_imgs`
--

LOCK TABLES `slideshow_imgs` WRITE;
/*!40000 ALTER TABLE `slideshow_imgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `slideshow_imgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `added` varchar(32) NOT NULL DEFAULT '',
  `userid` varchar(100) NOT NULL DEFAULT '',
  `public` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories_files`
--

DROP TABLE IF EXISTS `stories_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stories_files` (
  `id` int(40) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(99) NOT NULL DEFAULT '0',
  `filename` text NOT NULL,
  `added` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `story_id` varchar(150) NOT NULL DEFAULT '0',
  `s3` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories_files`
--

LOCK TABLES `stories_files` WRITE;
/*!40000 ALTER TABLE `stories_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `stories_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story_views`
--

DROP TABLE IF EXISTS `story_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `story_views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `story_id` varchar(32) NOT NULL DEFAULT '0',
  `added` varchar(32) NOT NULL DEFAULT '',
  `userid` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story_views`
--

LOCK TABLES `story_views` WRITE;
/*!40000 ALTER TABLE `story_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `story_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int(99) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` int(99) NOT NULL,
  `data` text,
  `type` varchar(100) NOT NULL DEFAULT '',
  `origin` varchar(50) NOT NULL DEFAULT 'null',
  `userid` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms`
--

DROP TABLE IF EXISTS `terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `markup` text,
  `page` varchar(99) NOT NULL,
  `added` varchar(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms`
--

LOCK TABLES `terms` WRITE;
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `themes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(99) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `body` varchar(99) NOT NULL DEFAULT '0',
  `kn` enum('true','false') NOT NULL DEFAULT 'false',
  `userid` int(99) NOT NULL DEFAULT '0',
  `added` int(40) NOT NULL DEFAULT '0',
  `ext` varchar(20) NOT NULL DEFAULT '',
  `position` varchar(80) NOT NULL DEFAULT '0',
  `s3` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_gifts`
--

DROP TABLE IF EXISTS `user_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_gifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gift_id` int(99) NOT NULL,
  `descr` text NOT NULL,
  `added` int(32) NOT NULL,
  `fromuser` int(99) NOT NULL,
  `private` enum('yes','no') NOT NULL DEFAULT 'no',
  `anonym` enum('yes','no') NOT NULL DEFAULT 'no',
  `userid` int(99) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_gifts`
--

LOCK TABLES `user_gifts` WRITE;
/*!40000 ALTER TABLE `user_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL DEFAULT '',
  `fullname` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `real_pass` varchar(90) NOT NULL DEFAULT '',
  `birthday` date NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `editsecret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `status` enum('confirmed','pending') NOT NULL DEFAULT 'pending',
  `online` int(60) NOT NULL DEFAULT '0',
  `theme` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `search` text NOT NULL,
  `class` enum('UC_MODERATOR','UC_ADMINISTRATOR','UC_SYSOP','UC_USER') NOT NULL DEFAULT 'UC_USER',
  `added` varchar(44) NOT NULL DEFAULT '0',
  `private` enum('yes','no') NOT NULL DEFAULT 'no',
  `privacy_age` enum('everyone','friends','only_me') NOT NULL DEFAULT 'everyone',
  `privacy_apps` enum('everyone','friends','only_me') NOT NULL DEFAULT 'everyone',
  `privacy_love` enum('everyone','friends') NOT NULL DEFAULT 'everyone',
  `allow_tag_photos` enum('friends','nobody') NOT NULL DEFAULT 'friends',
  `allow_tag_posts` enum('friends','nobody') NOT NULL DEFAULT 'friends',
  `allow_share_myphotos` enum('everyone','friends','nobody') NOT NULL DEFAULT 'everyone',
  `allow_comment_myphotos` enum('everyone','friends') NOT NULL DEFAULT 'everyone',
  `allow_send_pm` enum('everyone','friends') NOT NULL DEFAULT 'everyone',
  `display_online` enum('true','false') NOT NULL DEFAULT 'true',
  `balance` int(99) NOT NULL DEFAULT '0',
  `political_views` varchar(250) NOT NULL DEFAULT '',
  `world_view` varchar(250) NOT NULL DEFAULT '',
  `personal_priority` varchar(250) NOT NULL DEFAULT '',
  `important_in_others` varchar(250) NOT NULL DEFAULT '',
  `views_on_smoking` varchar(250) NOT NULL DEFAULT '',
  `views_on_alcohol` varchar(250) NOT NULL DEFAULT '',
  `language` varchar(255) NOT NULL DEFAULT 'en',
  `show_embera` enum('yes','no') NOT NULL DEFAULT 'yes',
  `auto_play_videos` enum('yes','no') NOT NULL DEFAULT 'no',
  `ip` varchar(100) NOT NULL DEFAULT '',
  `location` text NOT NULL,
  `location_id` text NOT NULL,
  `phone` varchar(60) NOT NULL DEFAULT '',
  `secret_code` varchar(4) NOT NULL DEFAULT '',
  `interests` text NOT NULL,
  `quotes` text NOT NULL,
  `aboutme` text NOT NULL,
  `hobby` text NOT NULL,
  `text_post` text NOT NULL,
  `notifications_settings` text NOT NULL,
  `profile_photo` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_books`
--

DROP TABLE IF EXISTS `users_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(99) NOT NULL,
  `book_title` text NOT NULL,
  `book_cover` text NOT NULL,
  `book_id` varchar(190) NOT NULL DEFAULT '0',
  `page_id` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_books`
--

LOCK TABLES `users_books` WRITE;
/*!40000 ALTER TABLE `users_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_movies`
--

DROP TABLE IF EXISTS `users_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_movies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(99) NOT NULL,
  `movie_title` text NOT NULL,
  `movie_cover` text NOT NULL,
  `movie_id` varchar(190) NOT NULL DEFAULT '0',
  `page_id` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_movies`
--

LOCK TABLES `users_movies` WRITE;
/*!40000 ALTER TABLE `users_movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `filename` text NOT NULL,
  `added` int(40) NOT NULL DEFAULT '0',
  `size` varchar(99) NOT NULL DEFAULT '0',
  `extension` varchar(15) NOT NULL DEFAULT '',
  `albumid` int(99) NOT NULL DEFAULT '0',
  `userid` int(160) NOT NULL DEFAULT '0',
  `views` int(255) NOT NULL DEFAULT '0',
  `external` varchar(255) NOT NULL DEFAULT '',
  `dur` varchar(62) NOT NULL DEFAULT '0',
  `s3` enum('yes','no') NOT NULL DEFAULT 'no',
  `width` varchar(200) NOT NULL DEFAULT '',
  `height` varchar(200) NOT NULL DEFAULT '',
  `origin` varchar(50) NOT NULL DEFAULT 'null',
  `description` text NOT NULL,
  `tags` text NOT NULL,
  `origin_id` varchar(220) NOT NULL DEFAULT 'null',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:10:14
