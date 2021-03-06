-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: appointerdb
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
-- Table structure for table `appointmentscheduler`
--

DROP TABLE IF EXISTS `appointmentscheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointmentscheduler` (
  `appointmentid` int(11) NOT NULL,
  `appointmenttitle` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `business_code` int(11) NOT NULL,
  `businesstypeid` int(11) NOT NULL,
  `customertypeid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  PRIMARY KEY (`business_code`,`businesstypeid`,`customertypeid`,`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointmentscheduler`
--

LOCK TABLES `appointmentscheduler` WRITE;
/*!40000 ALTER TABLE `appointmentscheduler` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointmentscheduler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businessentity`
--

DROP TABLE IF EXISTS `businessentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `businessentity` (
  `business_code` int(11) NOT NULL,
  `business_name` varchar(200) NOT NULL,
  `business_address` varchar(200) NOT NULL,
  `business_address2` varchar(200) NOT NULL,
  `business_city_town` varchar(100) NOT NULL,
  `business_zipcode` varchar(40) NOT NULL,
  `business_country` varchar(200) NOT NULL,
  `business_gpslat` varchar(40) NOT NULL,
  `business_gpslong` varchar(40) NOT NULL,
  `business_weburl` varchar(200) NOT NULL,
  `businesstypeid` int(11) NOT NULL,
  PRIMARY KEY (`business_code`,`businesstypeid`),
  KEY `businesstype_businessentity` (`businesstypeid`),
  CONSTRAINT `businesstype_businessentity` FOREIGN KEY (`businesstypeid`) REFERENCES `businesstype` (`businesstypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businessentity`
--

LOCK TABLES `businessentity` WRITE;
/*!40000 ALTER TABLE `businessentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `businessentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesstype`
--

DROP TABLE IF EXISTS `businesstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `businesstype` (
  `businesstypeid` int(11) NOT NULL,
  `businesstypename` varchar(100) NOT NULL,
  `businesstyperemark` varchar(200) NOT NULL,
  PRIMARY KEY (`businesstypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesstype`
--

LOCK TABLES `businesstype` WRITE;
/*!40000 ALTER TABLE `businesstype` DISABLE KEYS */;
/*!40000 ALTER TABLE `businesstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `customername` varchar(200) NOT NULL,
  `customeremail` varchar(200) NOT NULL,
  `customerphone` varchar(15) NOT NULL,
  `customeraddress1` varchar(200) NOT NULL,
  `customeraddress2` varchar(200) NOT NULL,
  `customercity_town` varchar(100) NOT NULL,
  `customerstate_province` varchar(200) NOT NULL,
  `customer_zipcode` varchar(40) NOT NULL,
  `customer_country` varchar(200) NOT NULL,
  `customertypeid` varchar(40) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerid`
--

DROP TABLE IF EXISTS `customerid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerid` (
  `customertypeid` int(11) NOT NULL,
  `customertype` varchar(100) NOT NULL,
  `customertyperemark` varchar(200) NOT NULL,
  PRIMARY KEY (`customertypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerid`
--

LOCK TABLES `customerid` WRITE;
/*!40000 ALTER TABLE `customerid` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerid` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:01:39
