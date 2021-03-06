-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: ofsdb
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
-- Table structure for table `ofs_accounts`
--

DROP TABLE IF EXISTS `ofs_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_accounts`
--

LOCK TABLES `ofs_accounts` WRITE;
/*!40000 ALTER TABLE `ofs_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofs_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_backgrounds`
--

DROP TABLE IF EXISTS `ofs_backgrounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_backgrounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `duration` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_backgrounds`
--

LOCK TABLES `ofs_backgrounds` WRITE;
/*!40000 ALTER TABLE `ofs_backgrounds` DISABLE KEYS */;
INSERT INTO `ofs_backgrounds` VALUES (1,'assets/backgrounds/default_1.jpg','http://proxibolt.com',NULL),(2,'assets/backgrounds/default_2.jpg','http://proxibolt.com',NULL),(3,'assets/backgrounds/default_3.jpg','http://proxibolt.com',NULL);
/*!40000 ALTER TABLE `ofs_backgrounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_downloads`
--

DROP TABLE IF EXISTS `ofs_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_downloads` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(100) NOT NULL,
  `time` int(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_downloads`
--

LOCK TABLES `ofs_downloads` WRITE;
/*!40000 ALTER TABLE `ofs_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofs_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_files`
--

DROP TABLE IF EXISTS `ofs_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_files` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `upload_id` varchar(500) NOT NULL,
  `secret_code` varchar(500) NOT NULL,
  `file` varchar(500) NOT NULL,
  `size` int(20) DEFAULT '0',
  `time` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_files`
--

LOCK TABLES `ofs_files` WRITE;
/*!40000 ALTER TABLE `ofs_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofs_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_language`
--

DROP TABLE IF EXISTS `ofs_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_language` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_language`
--

LOCK TABLES `ofs_language` WRITE;
/*!40000 ALTER TABLE `ofs_language` DISABLE KEYS */;
INSERT INTO `ofs_language` VALUES (1,'English','english'),(2,'Dutch','dutch');
/*!40000 ALTER TABLE `ofs_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_log`
--

DROP TABLE IF EXISTS `ofs_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_log` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `time` int(100) NOT NULL,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_log`
--

LOCK TABLES `ofs_log` WRITE;
/*!40000 ALTER TABLE `ofs_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofs_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_receivers`
--

DROP TABLE IF EXISTS `ofs_receivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_receivers` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `upload_id` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `private_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_receivers`
--

LOCK TABLES `ofs_receivers` WRITE;
/*!40000 ALTER TABLE `ofs_receivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofs_receivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_sessions`
--

DROP TABLE IF EXISTS `ofs_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_sessions`
--

LOCK TABLES `ofs_sessions` WRITE;
/*!40000 ALTER TABLE `ofs_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofs_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_settings`
--

DROP TABLE IF EXISTS `ofs_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_settings` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(100) NOT NULL,
  `site_title` varchar(100) NOT NULL,
  `site_desc` varchar(200) NOT NULL,
  `site_url` varchar(100) NOT NULL,
  `lock_page` varchar(100) NOT NULL,
  `name_on_file` varchar(100) NOT NULL,
  `max_size` int(100) NOT NULL,
  `max_files` int(200) NOT NULL,
  `max_file_reports` int(100) NOT NULL,
  `blocked_types` text,
  `expire` int(100) NOT NULL,
  `upload_dir` varchar(100) NOT NULL,
  `favicon_path` varchar(100) NOT NULL,
  `logo_path` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `bg_timer` int(100) NOT NULL,
  `default_destruct` varchar(100) NOT NULL,
  `default_sharetype` varchar(100) NOT NULL,
  `default_email_to` varchar(100) NOT NULL,
  `password_enabled` varchar(100) NOT NULL,
  `analytics` text NOT NULL,
  `accept_terms` varchar(100) NOT NULL,
  `email_from_name` varchar(100) NOT NULL,
  `email_from_email` varchar(100) NOT NULL,
  `email_to_name` varchar(100) NOT NULL,
  `email_server` varchar(100) NOT NULL,
  `smtp_host` varchar(100) NOT NULL,
  `smtp_auth` varchar(100) NOT NULL,
  `smtp_secure` varchar(100) NOT NULL,
  `smtp_port` int(100) NOT NULL,
  `smtp_username` varchar(100) NOT NULL,
  `smtp_password` varchar(100) NOT NULL,
  `terms_text` text NOT NULL,
  `about_text` text NOT NULL,
  `ad_1_enabled` varchar(100) NOT NULL,
  `ad_1_code` text NOT NULL,
  `ad_2_enabled` varchar(100) NOT NULL,
  `ad_2_code` text NOT NULL,
  `purchase_code` varchar(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `last_update_check` int(100) NOT NULL,
  `encrypt_files` int(1) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_settings`
--

LOCK TABLES `ofs_settings` WRITE;
/*!40000 ALTER TABLE `ofs_settings` DISABLE KEYS */;
INSERT INTO `ofs_settings` VALUES (1,'ofs','ofs - Online file sharing','Online file sharing','','false','ofs',1024,10,2,'',1209600,'uploads/','assets/img/icon.png','assets/img/logo.png','english',5,'no','mail','','true','','yes','No-Reply ofs','noreply@yourdomain.com','','LOCAL','','true','tls',587,'','','Files sent through this application are only intended for the specific receiver, sharing the files with other people is not allowed','This is an about text that can be modified in the admin panel','false','','false','','','2.1.3',0,0,NULL);
/*!40000 ALTER TABLE `ofs_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_social`
--

DROP TABLE IF EXISTS `ofs_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_social` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `google` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `github` varchar(100) NOT NULL,
  `tumblr` varchar(100) NOT NULL,
  `pinterest` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_social`
--

LOCK TABLES `ofs_social` WRITE;
/*!40000 ALTER TABLE `ofs_social` DISABLE KEYS */;
INSERT INTO `ofs_social` VALUES (1,'http://facebook.com/Proxibolt','http://twitter.com/proxibolt_us','','','http://github.com','','');
/*!40000 ALTER TABLE `ofs_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_templates`
--

DROP TABLE IF EXISTS `ofs_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `msg` text NOT NULL,
  `lang` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_templates`
--

LOCK TABLES `ofs_templates` WRITE;
/*!40000 ALTER TABLE `ofs_templates` DISABLE KEYS */;
INSERT INTO `ofs_templates` VALUES (1,'receiver','Dear {email_to},\r\n\r\nYou have received some file(s) from {email_from} with a total size of {size} MB.\r\nThe file(s) will be destroyed after {expire_time}.\r\n\r\n<b>Files:</b>\r\n{file_list}\r\n\r\n<b>Message:</b>\r\n{message}\r\n\r\n{download_btn}\r\n\r\nBest regards,\r\n{site_name}','english'),(2,'sender','Dear,\r\n\r\nThanks for using {site_name} your file(s) have been successfully uploaded and an email has been sent to the recipients. The uploaded files will be destroyed after {expire_time}.\r\n\r\n<b>Files sent to:</b>\r\n{email_list}\r\n<b>Files sent:</b>\r\n{file_list}\r\n\r\n{download_btn}\r\n\r\nBest regards,\r\n{site_name}\r\n','english'),(3,'destroyed','Dear,\r\n\r\nThis is just an email to let you know that your files on <strong>{site_name}</strong> have been destroyed.\r\n\r\n<b>Files destroyed:</b>\r\n{file_list}\r\n\r\nBest regards,\r\n{site_name}','english'),(4,'downloaded','Dear,\r\n\r\n{download_email} has downloaded your file(s) from {site_name}.\r\n\r\n<b>Files downloaded:</b>\r\n{file_list}\r\n\r\n<b>Receivers of files:</b>\r\n{email_list}\r\n\r\n{download_btn}\r\n\r\nBest regards,\r\n{site_name}','english'),(5,'receiver_subject','You have received some files !','english'),(6,'sender_subject','Your items have been sent !','english'),(7,'destroyed_subject','Your items have been destroyed !','english'),(8,'downloaded_subject','Someone has downloaded your items !','english'),(25,'receiver','Beste,\r\n\r\n{email_from} heeft u bestanden gestuurd met een totale grootte van {size} MB\r\nDe bestanden worden vernietigd over {expire_time}\r\n\r\n<b>Bestanden:</b>\r\n{file_list}\r\n\r\n<b>Bericht:</b>\r\n{message}\r\n\r\n{download_btn}\r\n\r\nMet vriendelijke groet,\r\n{site_name}','dutch'),(26,'sender','Beste,\r\n\r\nBedankt voor het gebruiken van {site_name}, de bestanden zijn succesvol naar de ontvangers gestuurd.\r\nDe bestanden worden vernietigd in {expire_time}\r\n\r\n<b>Verstuurd naar:</b>\r\n{email_list}\r\n<b>Bestanden verstuurd:</b>\r\n{file_list}\r\n\r\n{download_btn}\r\n\r\nMet vriendelijke groet,\r\n{site_name}\r\n','dutch'),(27,'destroyed','Beste,\r\n\r\nUw bestanden op {site_name} zijn vernietigd.\r\n\r\n<b>Bestanden vernietigd:</b>\r\n{file_list}\r\n<b>Bestanden waren verstuurd  naar:</b>\r\n{email_list}\r\n\r\nMet vriendelijke groet,\r\n{site_name}','dutch'),(28,'downloaded','Beste,\r\n\r\nDit is een email om u ervan op hoogte te stellen dat {download_email} uw bestanden heeft gedownload.\r\n\r\n<b>Bestanden:</b>\r\n{file_list}\r\n\r\n<b>Ontvangers:</b>\r\n{email_list}\r\n\r\n{download_btn}\r\n\r\nMet vriendelijke groet,\r\n{site_name}','dutch'),(29,'receiver_subject','U heeft bestanden ontvangen','dutch'),(30,'sender_subject','Uw bestanden zijn verzonden','dutch'),(31,'destroyed_subject','Uw bestanden zijn vernietigd','dutch'),(32,'downloaded_subject','Iemand heeft uw bestanden gedownload','dutch');
/*!40000 ALTER TABLE `ofs_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_themes`
--

DROP TABLE IF EXISTS `ofs_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_themes` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `path` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_themes`
--

LOCK TABLES `ofs_themes` WRITE;
/*!40000 ALTER TABLE `ofs_themes` DISABLE KEYS */;
INSERT INTO `ofs_themes` VALUES (1,'Default','default','ready'),(2,'OldTimer','oldtimer','stopped'),(3,'Grey-Dark','grey','stopped');
/*!40000 ALTER TABLE `ofs_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_updates`
--

DROP TABLE IF EXISTS `ofs_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_updates` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `version` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_updates`
--

LOCK TABLES `ofs_updates` WRITE;
/*!40000 ALTER TABLE `ofs_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofs_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_uploads`
--

DROP TABLE IF EXISTS `ofs_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_uploads` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `upload_id` varchar(200) NOT NULL,
  `email_from` varchar(500) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `secret_code` varchar(500) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `time` int(100) NOT NULL,
  `time_expire` int(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `count` int(100) NOT NULL,
  `share` varchar(100) NOT NULL,
  `destruct` varchar(100) NOT NULL,
  `flag` varchar(100) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `encrypt` varchar(500) DEFAULT NULL,
  `pm_email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_uploads`
--

LOCK TABLES `ofs_uploads` WRITE;
/*!40000 ALTER TABLE `ofs_uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofs_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofs_users`
--

DROP TABLE IF EXISTS `ofs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofs_users` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofs_users`
--

LOCK TABLES `ofs_users` WRITE;
/*!40000 ALTER TABLE `ofs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofs_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:10:17
