-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: uberclonedb
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
-- Table structure for table `cabs`
--

DROP TABLE IF EXISTS `cabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabs` (
  `cab_id` int(15) NOT NULL AUTO_INCREMENT,
  `cab_no` varchar(20) NOT NULL,
  `cab_lat` varchar(10) NOT NULL,
  `cab_lng` varchar(10) NOT NULL,
  `on_trip` int(2) NOT NULL DEFAULT '0',
  `cab_bearing` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cab_id`),
  UNIQUE KEY `cab_no` (`cab_no`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabs`
--

LOCK TABLES `cabs` WRITE;
/*!40000 ALTER TABLE `cabs` DISABLE KEYS */;
INSERT INTO `cabs` VALUES (3,'CH01 5321','30.7292235','76.8409035',1,'0.0');
/*!40000 ALTER TABLE `cabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `driver_id` int(15) NOT NULL AUTO_INCREMENT,
  `one_signal_id` varchar(500) NOT NULL DEFAULT '000',
  `driver_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `verification_code` varchar(200) NOT NULL,
  `is_verified` int(2) NOT NULL DEFAULT '0',
  `cab_no` varchar(20) NOT NULL,
  `on_duty` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`driver_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `cab_no` (`cab_no`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (5,'ac3d663f-6b13-41f4-8668-ee8c8b8bf728','Sachin ','8968894728','nams1497@gmail.com','1234','$2y$10$ePr/k7cWHQqOcFG3CN/NP.sgpopjgf5qBMnKqjQg7VEo0CnlJimjG',1,'CH01 5321',1);
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rides`
--

DROP TABLE IF EXISTS `rides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rides` (
  `ride_id` int(15) NOT NULL AUTO_INCREMENT,
  `driver_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `src_lat` varchar(20) NOT NULL,
  `src_lng` varchar(20) NOT NULL,
  `dest_lat` varchar(20) NOT NULL,
  `dest_lng` varchar(20) NOT NULL,
  `fare` varchar(10) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `booked_at` varchar(20) NOT NULL,
  PRIMARY KEY (`ride_id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rides`
--

LOCK TABLES `rides` WRITE;
/*!40000 ALTER TABLE `rides` DISABLE KEYS */;
INSERT INTO `rides` VALUES (101,5,18,'30.730678','76.841431','30.7055869','76.80127089999999','105','5970',1,'1502452252'),(100,5,18,'30.730678','76.841431','30.64254959999999','76.8173359','202','2991',2,'1502451995');
/*!40000 ALTER TABLE `rides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_verified` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2020-10-06 22:15:35
