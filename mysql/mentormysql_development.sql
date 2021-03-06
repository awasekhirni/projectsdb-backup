-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: mentormysql_development
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
-- Table structure for table `api_users`
--

DROP TABLE IF EXISTS `api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `mentor` tinyint(1) NOT NULL,
  `mentee` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_api_users_on_email_and_mentor_and_mentee` (`email`,`mentor`,`mentee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_users`
--

LOCK TABLES `api_users` WRITE;
/*!40000 ALTER TABLE `api_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiences` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `available_offline` tinyint(1) DEFAULT NULL,
  `available_online` tinyint(1) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `api_user_id` int(11) DEFAULT NULL,
  `programminglanguage_id` int(11) DEFAULT NULL,
  `meetinginterval_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_experiences_on_api_user_id` (`api_user_id`),
  KEY `index_experiences_on_meetinginterval_id` (`meetinginterval_id`),
  KEY `index_experiences_on_programminglanguage_id` (`programminglanguage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetingintervals`
--

DROP TABLE IF EXISTS `meetingintervals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetingintervals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `interval` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetingintervals`
--

LOCK TABLES `meetingintervals` WRITE;
/*!40000 ALTER TABLE `meetingintervals` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetingintervals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programminglanguages`
--

DROP TABLE IF EXISTS `programminglanguages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programminglanguages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programminglanguages`
--

LOCK TABLES `programminglanguages` WRITE;
/*!40000 ALTER TABLE `programminglanguages` DISABLE KEYS */;
/*!40000 ALTER TABLE `programminglanguages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishes`
--

DROP TABLE IF EXISTS `wishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `available_offline` tinyint(1) DEFAULT NULL,
  `available_online` tinyint(1) DEFAULT NULL,
  `goal` varchar(255) DEFAULT NULL,
  `api_user_id` int(11) DEFAULT NULL,
  `programminglanguage_id` int(11) DEFAULT NULL,
  `meetinginterval_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_wishes_on_api_user_id` (`api_user_id`),
  KEY `index_wishes_on_meetinginterval_id` (`meetinginterval_id`),
  KEY `index_wishes_on_programminglanguage_id` (`programminglanguage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishes`
--

LOCK TABLES `wishes` WRITE;
/*!40000 ALTER TABLE `wishes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:08:50
