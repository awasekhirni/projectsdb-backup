-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: prjmgmt
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
-- Table structure for table `filedownload_log`
--

DROP TABLE IF EXISTS `filedownload_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filedownload_log` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `filerelease_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  KEY `all_idx` (`user_id`,`filerelease_id`),
  KEY `time_idx` (`time`),
  KEY `filerelease_id_idx` (`filerelease_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filedownload_log`
--

LOCK TABLES `filedownload_log` WRITE;
/*!40000 ALTER TABLE `filedownload_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `filedownload_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filemodule`
--

DROP TABLE IF EXISTS `filemodule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filemodule` (
  `filemodule_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `module_name` varchar(40) DEFAULT NULL,
  `recent_filerelease` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`filemodule_id`),
  KEY `idx_filemodule_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filemodule`
--

LOCK TABLES `filemodule` WRITE;
/*!40000 ALTER TABLE `filemodule` DISABLE KEYS */;
/*!40000 ALTER TABLE `filemodule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filemodule_monitor`
--

DROP TABLE IF EXISTS `filemodule_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filemodule_monitor` (
  `filemodule_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `anonymous` tinyint(1) NOT NULL DEFAULT '1',
  KEY `idx_filemodule_monitor_id` (`filemodule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filemodule_monitor`
--

LOCK TABLES `filemodule_monitor` WRITE;
/*!40000 ALTER TABLE `filemodule_monitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `filemodule_monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filerelease`
--

DROP TABLE IF EXISTS `filerelease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filerelease` (
  `filerelease_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `unix_box` varchar(20) NOT NULL DEFAULT 'remission',
  `unix_partition` int(11) NOT NULL DEFAULT '0',
  `text_notes` text,
  `text_changes` text,
  `release_version` varchar(20) DEFAULT NULL,
  `filename` varchar(80) DEFAULT NULL,
  `filemodule_id` int(11) NOT NULL DEFAULT '0',
  `file_type` varchar(50) DEFAULT NULL,
  `release_time` int(11) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `file_size` int(11) DEFAULT NULL,
  `post_time` int(11) NOT NULL DEFAULT '0',
  `text_format` int(11) NOT NULL DEFAULT '0',
  `downloads_week` int(11) NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'N',
  `old_filename` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`filerelease_id`),
  KEY `group_id_idx` (`group_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `unix_box_idx` (`unix_box`),
  KEY `post_time_idx` (`post_time`),
  KEY `idx_release_time` (`release_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filerelease`
--

LOCK TABLES `filerelease` WRITE;
/*!40000 ALTER TABLE `filerelease` DISABLE KEYS */;
/*!40000 ALTER TABLE `filerelease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_forum_id` int(11) NOT NULL DEFAULT '0',
  `posted_by` int(11) NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `date` int(11) NOT NULL DEFAULT '0',
  `is_followup_to` int(11) NOT NULL DEFAULT '0',
  `thread_id` int(11) NOT NULL DEFAULT '0',
  `has_followups` int(11) DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `idx_forum_group_forum_id` (`group_forum_id`),
  KEY `idx_forum_is_followup_to` (`is_followup_to`),
  KEY `idx_forum_thread_id` (`thread_id`),
  KEY `idx_forum_id_date` (`group_forum_id`,`date`),
  KEY `idx_forum_id_date_followup` (`group_forum_id`,`date`,`is_followup_to`),
  KEY `idx_forum_thread_date_followup` (`thread_id`,`date`,`is_followup_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_agg_msg_count`
--

DROP TABLE IF EXISTS `forum_agg_msg_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_agg_msg_count` (
  `group_forum_id` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_agg_msg_count`
--

LOCK TABLES `forum_agg_msg_count` WRITE;
/*!40000 ALTER TABLE `forum_agg_msg_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_agg_msg_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_group_list`
--

DROP TABLE IF EXISTS `forum_group_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_group_list` (
  `group_forum_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `forum_name` text NOT NULL,
  `is_public` int(11) NOT NULL DEFAULT '0',
  `description` text,
  PRIMARY KEY (`group_forum_id`),
  KEY `idx_forum_group_list_group_id` (`group_id`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_group_list`
--

LOCK TABLES `forum_group_list` WRITE;
/*!40000 ALTER TABLE `forum_group_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_group_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_monitored_forums`
--

DROP TABLE IF EXISTS `forum_monitored_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_monitored_forums` (
  `monitor_id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`monitor_id`),
  KEY `idx_forum_monitor_thread_id` (`forum_id`),
  KEY `idx_forum_monitor_combo_id` (`forum_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_monitored_forums`
--

LOCK TABLES `forum_monitored_forums` WRITE;
/*!40000 ALTER TABLE `forum_monitored_forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_monitored_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_monitored_threads`
--

DROP TABLE IF EXISTS `forum_monitored_threads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_monitored_threads` (
  `thread_monitor_id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `thread_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`thread_monitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_monitored_threads`
--

LOCK TABLES `forum_monitored_threads` WRITE;
/*!40000 ALTER TABLE `forum_monitored_threads` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_monitored_threads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_saved_place`
--

DROP TABLE IF EXISTS `forum_saved_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_saved_place` (
  `saved_place_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `save_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`saved_place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_saved_place`
--

LOCK TABLES `forum_saved_place` WRITE;
/*!40000 ALTER TABLE `forum_saved_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_saved_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_thread_id`
--

DROP TABLE IF EXISTS `forum_thread_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_thread_id` (
  `thread_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_thread_id`
--

LOCK TABLES `forum_thread_id` WRITE;
/*!40000 ALTER TABLE `forum_thread_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_thread_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frs_dlstats_file_agg`
--

DROP TABLE IF EXISTS `frs_dlstats_file_agg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frs_dlstats_file_agg` (
  `file_id` int(11) NOT NULL DEFAULT '0',
  `day` int(11) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  KEY `idx_dlstats_file_file_id` (`file_id`),
  KEY `idx_dlstats_file_day` (`day`),
  KEY `idx_dlstats_file_down` (`downloads`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frs_dlstats_file_agg`
--

LOCK TABLES `frs_dlstats_file_agg` WRITE;
/*!40000 ALTER TABLE `frs_dlstats_file_agg` DISABLE KEYS */;
/*!40000 ALTER TABLE `frs_dlstats_file_agg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frs_dlstats_filetotal_agg`
--

DROP TABLE IF EXISTS `frs_dlstats_filetotal_agg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frs_dlstats_filetotal_agg` (
  `file_id` int(11) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  KEY `idx_stats_agr_tmp_fid` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frs_dlstats_filetotal_agg`
--

LOCK TABLES `frs_dlstats_filetotal_agg` WRITE;
/*!40000 ALTER TABLE `frs_dlstats_filetotal_agg` DISABLE KEYS */;
/*!40000 ALTER TABLE `frs_dlstats_filetotal_agg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frs_dlstats_group_agg`
--

DROP TABLE IF EXISTS `frs_dlstats_group_agg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frs_dlstats_group_agg` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `day` int(11) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  KEY `group_id_idx` (`group_id`),
  KEY `day_idx` (`day`),
  KEY `downloads_idx` (`downloads`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frs_dlstats_group_agg`
--

LOCK TABLES `frs_dlstats_group_agg` WRITE;
/*!40000 ALTER TABLE `frs_dlstats_group_agg` DISABLE KEYS */;
/*!40000 ALTER TABLE `frs_dlstats_group_agg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frs_dlstats_grouptotal_agg`
--

DROP TABLE IF EXISTS `frs_dlstats_grouptotal_agg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frs_dlstats_grouptotal_agg` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  KEY `idx_stats_agr_tmp_gid` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frs_dlstats_grouptotal_agg`
--

LOCK TABLES `frs_dlstats_grouptotal_agg` WRITE;
/*!40000 ALTER TABLE `frs_dlstats_grouptotal_agg` DISABLE KEYS */;
/*!40000 ALTER TABLE `frs_dlstats_grouptotal_agg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frs_file`
--

DROP TABLE IF EXISTS `frs_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frs_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` text,
  `filepath` varchar(255) DEFAULT NULL,
  `release_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `processor_id` int(11) NOT NULL DEFAULT '0',
  `release_time` int(11) NOT NULL DEFAULT '0',
  `file_size` bigint(20) NOT NULL DEFAULT '0',
  `post_date` int(11) NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `computed_md5` varchar(32) DEFAULT NULL,
  `reference_md5` varchar(32) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`file_id`),
  KEY `idx_frs_file_release_id` (`release_id`),
  KEY `idx_frs_file_type` (`type_id`),
  KEY `idx_frs_file_date` (`post_date`),
  KEY `idx_frs_file_processor` (`processor_id`),
  KEY `idx_frs_file_name` (`filename`(45))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frs_file`
--

LOCK TABLES `frs_file` WRITE;
/*!40000 ALTER TABLE `frs_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `frs_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frs_file_deleted`
--

DROP TABLE IF EXISTS `frs_file_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frs_file_deleted` (
  `file_id` int(11) NOT NULL,
  `filename` text,
  `filepath` varchar(255) DEFAULT NULL,
  `release_id` int(11) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `processor_id` int(11) NOT NULL DEFAULT '0',
  `release_time` int(11) NOT NULL DEFAULT '0',
  `file_size` bigint(20) NOT NULL DEFAULT '0',
  `post_date` int(11) NOT NULL DEFAULT '0',
  `status` char(1) NOT NULL DEFAULT 'A',
  `computed_md5` varchar(32) DEFAULT NULL,
  `reference_md5` varchar(32) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `delete_date` int(11) unsigned DEFAULT NULL,
  `purge_date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `idx_delete_date` (`delete_date`),
  KEY `idx_purge_date` (`purge_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frs_file_deleted`
--

LOCK TABLES `frs_file_deleted` WRITE;
/*!40000 ALTER TABLE `frs_file_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `frs_file_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frs_filetype`
--

DROP TABLE IF EXISTS `frs_filetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frs_filetype` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frs_filetype`
--

LOCK TABLES `frs_filetype` WRITE;
/*!40000 ALTER TABLE `frs_filetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `frs_filetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frs_uploaded_links`
--

DROP TABLE IF EXISTS `frs_uploaded_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frs_uploaded_links` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `release_id` int(11) NOT NULL,
  `release_time` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `owner_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `release_idx` (`release_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frs_uploaded_links`
--

LOCK TABLES `frs_uploaded_links` WRITE;
/*!40000 ALTER TABLE `frs_uploaded_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `frs_uploaded_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjmgmt_installed_version`
--

DROP TABLE IF EXISTS `prjmgmt_installed_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prjmgmt_installed_version` (
  `version` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjmgmt_installed_version`
--

LOCK TABLES `prjmgmt_installed_version` WRITE;
/*!40000 ALTER TABLE `prjmgmt_installed_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjmgmt_installed_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:12:40
