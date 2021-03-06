-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: instantgrocerydb
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
-- Table structure for table `aboutuspage`
--

DROP TABLE IF EXISTS `aboutuspage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aboutuspage` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutuspage`
--

LOCK TABLES `aboutuspage` WRITE;
/*!40000 ALTER TABLE `aboutuspage` DISABLE KEYS */;
INSERT INTO `aboutuspage` VALUES (1,'About Us','<p><strong>About Us</strong><br />\r\nGoGrocer is a MaaS - Mobile App as a Service. We provide mobile app solutions to Supermarkets, fashion stores and other related establishments.</p>');
/*!40000 ALTER TABLE `aboutuspage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `receiver_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `society` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_status` int(11) NOT NULL,
  `added_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,3,'yashasvi','8750221354','noida','sector-59','f7','yash memorial school','UP','110043','28.6089944','77.3578777',1,'2020-04-21 08:02:20','2020-05-13 17:39:22'),(9,14,'yashasvi jain','8750221354','Delhi','Laxmi Nagar','yashasvi jain','NA','najafgarh','110043','28.6090126','76.9854526',1,'2020-05-07 12:24:20','2020-05-13 08:51:26'),(10,15,'me','7895811769','Noida','sector-58','f7','NA','UP','201301','28.607028','77.362101',1,'2020-05-08 20:49:36','2020-05-13 08:51:26'),(11,17,'Neeraj','9990155993','Delhi','Laxmi Nagar','hshshs','NA','Delhi','201301','28.635537','77.281829',1,'2020-05-09 03:36:30','2020-05-13 08:51:26'),(12,18,'yashasvi jain','8750221354','Delhi','Laxmi Nagar','ni gihl','NA','najjafgjk','110043','28.611665','76.978678',1,'2020-05-11 08:02:05','2020-05-13 08:51:26'),(13,5,'yashasvi','8750221354','noida','sector-59','f7','yash memorial school','UP','110043','28.6089944','77.3578777',1,'2020-05-13 18:04:45','2020-05-13 18:04:46');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'GoGrocer Admin','support@tecmanic.com','$2y$10$jKFfBq4e07cCPCbbNOyDLe8XQZBfeNtrqfMtSDVkiBi1sMo/nP1jm','images/admin/profile/07-04-20/070420120712pm-604a0cadf94914c7ee6c6e552e9b4487-curved-check-mark-circle-icon-by-vexels.png');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_payouts`
--

DROP TABLE IF EXISTS `admin_payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_payouts` (
  `payout_id` int(11) NOT NULL AUTO_INCREMENT,
  `payout_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `respond_payout_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payout_amt` float NOT NULL,
  PRIMARY KEY (`payout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_payouts`
--

LOCK TABLES `admin_payouts` WRITE;
/*!40000 ALTER TABLE `admin_payouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `banner_id` int(100) NOT NULL AUTO_INCREMENT,
  `banner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (5,'banner1','images/banner/060520100312am-download-(7).jpg'),(6,'banner2','images/banner/060520114457am-download-(6).jpg'),(7,'banner3','images/banner/060520100355am-download-(4).jpg'),(8,'banner4','images/banner/060520100432am-download-(3).jpg');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancel_for`
--

DROP TABLE IF EXISTS `cancel_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancel_for` (
  `res_id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancel_for`
--

LOCK TABLES `cancel_for` WRITE;
/*!40000 ALTER TABLE `cancel_for` DISABLE KEYS */;
INSERT INTO `cancel_for` VALUES (1,'i bought from somewhere else');
/*!40000 ALTER TABLE `cancel_for` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_rewards`
--

DROP TABLE IF EXISTS `cart_rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_rewards` (
  `cart_rewards_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rewards` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`cart_rewards_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_rewards`
--

LOCK TABLES `cart_rewards` WRITE;
/*!40000 ALTER TABLE `cart_rewards` DISABLE KEYS */;
INSERT INTO `cart_rewards` VALUES (1,'NVUU994a',20,3),(2,'NVUU994a',20,3),(3,'WYCX36f7',20,3),(4,'VUQT8945',20,3),(5,'EVIB84fa',20,3),(6,'RNME22cd',20,3),(7,'SYEP6921',10,3),(8,'SYEP6921',10,3),(9,'UUGP5179',10,3),(10,'KUDU6545',10,3),(11,'GFMX79fb',10,3),(12,'XKLI7326',20,3),(13,'RJZL9027',10,3),(14,'FQJC32e4',20,3),(15,'VDQP4535',20,3),(16,'VDQP4535',20,3),(17,'YDAL194a',20,3),(18,'ARAU98e8',20,3),(19,'ARAU98e8',20,3),(20,'ARAU98e8',20,3),(21,'ARAU98e8',20,3),(22,'ARAU98e8',20,3),(23,'ARAU98e8',20,3),(24,'ARAU98e8',20,3),(25,'ARAU98e8',20,3),(26,'ARAU98e8',20,3),(27,'ARAU98e8',20,3),(28,'ARAU98e8',20,3),(29,'BOAS181a',10,3),(30,'BOAS181a',10,3),(31,'BOAS181a',10,3),(32,'VIOA0806',20,3),(33,'EYVP11bc',20,3),(34,'EYVP11bc',20,3),(35,'AVXP04d2',20,3),(36,'AVXP04d2',20,3),(37,'AVXP04d2',20,3),(38,'AVXP04d2',20,3),(39,'AVXP04d2',20,3),(40,'AVXP04d2',20,3),(41,'AVXP04d2',20,3),(42,'AVXP04d2',20,3),(43,'AVXP04d2',20,3),(44,'AVXP04d2',20,3),(45,'KVSY740f',30,3),(46,'KVSY740f',30,3),(47,'KVSY740f',30,3),(48,'KVSY740f',30,3),(49,'KVSY740f',30,3),(50,'KVSY740f',30,3),(51,'KVSY740f',30,3),(52,'KVSY740f',30,3),(53,'BSTO1263',30,3),(54,'BSTO1263',30,3),(55,'BSTO1263',30,3),(56,'BSTO1263',30,3),(57,'BSTO1263',30,3),(58,'BSTO1263',30,3),(59,'BSTO1263',30,3),(60,'BSTO1263',30,3),(61,'BSTO1263',30,3),(62,'BSTO1263',30,3),(63,'BSTO1263',30,3),(64,'BSTO1263',30,3),(65,'WFGT47fd',30,3),(66,'WFGT47fd',30,3),(67,'WFGT47fd',30,3),(68,'WFGT47fd',30,3),(69,'WFGT47fd',30,3),(70,'WFGT47fd',30,3),(71,'WFGT47fd',30,3),(72,'WFGT47fd',30,3),(73,'WFGT47fd',30,3),(74,'WFGT47fd',30,3),(75,'WFGT47fd',30,3),(76,'WFGT47fd',30,3),(77,'WFGT47fd',30,3),(78,'WFGT47fd',30,3);
/*!40000 ALTER TABLE `cart_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Grocery & Staple','Grocery-&-Staple','images/category/11-05-2020/download.jpg',3,1,'Grocery & Staple',1),(2,'natur','natur','images/category/10-04-2020/app-logo-3.png',3,1,'natur',1),(3,'bro','bro','images/category/10-04-2020/app-logo-2.png',0,0,'bro',1),(5,'Grocery & Staples','Grocery-&-Staples','images/category/25-04-2020/gns.png',0,0,'Grocery & Staples',1),(6,'Atta & Other Flours','Atta-&-Other-Flours','images/category/25-04-2020/sub_atta.jpg',5,1,'Atta & Other Flours',1),(7,'Dry Fruits & Nuts','Dry-Fruits-&-Nuts','images/category/25-04-2020/dryf.jpg',5,1,'Dry Fruits & Nuts',1),(8,'Vegetables & Fruits','Vegetables-&-Fruits','images/category/25-04-2020/veg-removebg-preview.png',0,0,'Vegetables & Fruits',1),(11,'Testing','Testing','images/category/06-05-2020/Bobbins.png',6,2,'Testing',1),(12,'Drinks','Drinks','images/category/07-05-2020/Bobbins.png',0,0,'Drinks',1),(13,'attta','attta','images/category/07-05-2020/604a0cadf94914c7ee6c6e552e9b4487-curved-check-mark-circle-icon-by-vexels.png',0,0,'attta',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` int(100) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Delhi'),(3,'Noida');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `closing_hours`
--

DROP TABLE IF EXISTS `closing_hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `closing_hours` (
  `closing_hrs_id` int(100) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_hrs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_hrs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`closing_hrs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `closing_hours`
--

LOCK TABLES `closing_hours` WRITE;
/*!40000 ALTER TABLE `closing_hours` DISABLE KEYS */;
INSERT INTO `closing_hours` VALUES (1,'2020-05-15','11:00','22:00');
/*!40000 ALTER TABLE `closing_hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon` (
  `coupon_id` int(100) NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_value` int(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (1,'No Cooking April Offer','APRI40','No cooking April use this code & get upto 50% off','2020-04-09','2020-04-26',150,40,'Percentage'),(2,'testing','APE245','sdfjv mdsfbvdn bmfsnbmx m vskn ,dz v,sldmv zk;dnf,bn w','2020-05-01','2020-09-10',150,100,'price');
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_sign` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'INR','INR');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_product`
--

DROP TABLE IF EXISTS `deal_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal_product` (
  `deal_id` int(11) NOT NULL AUTO_INCREMENT,
  `varient_id` int(11) NOT NULL,
  `deal_price` float NOT NULL,
  `valid_from` datetime NOT NULL,
  `valid_to` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`deal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_product`
--

LOCK TABLES `deal_product` WRITE;
/*!40000 ALTER TABLE `deal_product` DISABLE KEYS */;
INSERT INTO `deal_product` VALUES (1,2,12,'2020-04-16 17:40:31','2020-04-21 17:56:19',1),(2,7,70,'2020-05-06 00:00:00','2020-05-31 00:00:00',1),(3,13,210,'2020-05-12 00:00:00','2020-05-22 10:00:00',1);
/*!40000 ALTER TABLE `deal_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_boy`
--

DROP TABLE IF EXISTS `delivery_boy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_boy` (
  `dboy_id` int(11) NOT NULL AUTO_INCREMENT,
  `boy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `boy_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `boy_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boy_loc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`dboy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_boy`
--

LOCK TABLES `delivery_boy` WRITE;
/*!40000 ALTER TABLE `delivery_boy` DISABLE KEYS */;
INSERT INTO `delivery_boy` VALUES (1,'Rahul','9876543210','Noida','sssddd',NULL,'Birgoli, uttarakhand','29.6683543','80.1337864',1),(2,'Rahu','987654788','Noida','sssddd',NULL,'Noida Sector-58','28.6067511','77.3597194',1),(3,'Mujeeb','9895811769','Noida','12345','exMX19Ktv48:APA91bGPUqOnK0MO_6byp6OeYdjI-HrBMIcj5APZ_RIr3wQpRljzUljPyRmSoYYB5RYkdoW_HRGiLmHDH_4SNmZVEuNkZf-qIDEZSsa2ht5UbN5Oe3cfsB0_JQfbJDmV2-B62zQE7HOB','f7 noida','28.5801879','77.3180866',1),(4,'Rahu','+918476978906','Noida','sssddd',NULL,'Noida Sector 59 Metro Station, Vishwakarma Road, D Block, Sector 59, Noida, Uttar Pradesh, India','28.607693','77.3727027',1),(5,'Rahul','+918476978906','Noida','sssdddd',NULL,'Noida, Uttar Pradesh, India','28.5355161','77.3910265',1),(6,'Rahul','07895811769','Delhi','sssdddd',NULL,'Delhi, India','28.7040592','77.1024902',1);
/*!40000 ALTER TABLE `delivery_boy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_rating`
--

DROP TABLE IF EXISTS `delivery_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `dboy_id` int(11) NOT NULL,
  `rating` float NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_rating`
--

LOCK TABLES `delivery_rating` WRITE;
/*!40000 ALTER TABLE `delivery_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm`
--

DROP TABLE IF EXISTS `fcm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fcm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_server_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_server_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm`
--

LOCK TABLES `fcm` WRITE;
/*!40000 ALTER TABLE `fcm` DISABLE KEYS */;
INSERT INTO `fcm` VALUES (1,'AAAAUflnTFM:APA91bggghlGcB3DdSV_K5tKBDOJherPDN0TlQsYNeUzS92HSz0Ou1c_d0ty2Mvp_XAcxYMhqdh0XQG57cMC_8P2N_lFZmZQT55EZ2sfAx_d84ztVMYHGWaUfYwD-vQN','jkhdfsghghsdafjgsjhgjhssfgshgfshgafghgsdfjjhfgsdhafhsagfdsf','bjhkszhgjkxhgjkzbgjhgvxfcghzfCGJfzJHCFjhxfgjhxfjhf');
/*!40000 ALTER TABLE `fcm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freedeliverycart`
--

DROP TABLE IF EXISTS `freedeliverycart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freedeliverycart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min_cart_value` float NOT NULL DEFAULT '0',
  `del_charge` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freedeliverycart`
--

LOCK TABLES `freedeliverycart` WRITE;
/*!40000 ALTER TABLE `freedeliverycart` DISABLE KEYS */;
INSERT INTO `freedeliverycart` VALUES (1,500,20);
/*!40000 ALTER TABLE `freedeliverycart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_api`
--

DROP TABLE IF EXISTS `map_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `map_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_api`
--

LOCK TABLES `map_api` WRITE;
/*!40000 ALTER TABLE `map_api` DISABLE KEYS */;
INSERT INTO `map_api` VALUES (1,'AIjhfDq6a7_3mqLmO1mcnxJMkehXRdvfgdjd');
/*!40000 ALTER TABLE `map_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minimum_maximum_order_value`
--

DROP TABLE IF EXISTS `minimum_maximum_order_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `minimum_maximum_order_value` (
  `min_max_id` int(100) NOT NULL AUTO_INCREMENT,
  `min_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`min_max_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minimum_maximum_order_value`
--

LOCK TABLES `minimum_maximum_order_value` WRITE;
/*!40000 ALTER TABLE `minimum_maximum_order_value` DISABLE KEYS */;
INSERT INTO `minimum_maximum_order_value` VALUES (1,'500','5000');
/*!40000 ALTER TABLE `minimum_maximum_order_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg91`
--

DROP TABLE IF EXISTS `msg91`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `msg91` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg91`
--

LOCK TABLES `msg91` WRITE;
/*!40000 ALTER TABLE `msg91` DISABLE KEYS */;
INSERT INTO `msg91` VALUES (1,'GOGRCK','1978ghfhjhx55d4d55f3');
/*!40000 ALTER TABLE `msg91` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationby`
--

DROP TABLE IF EXISTS `notificationby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificationby` (
  `noti_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sms` int(11) NOT NULL,
  `app` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  PRIMARY KEY (`noti_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationby`
--

LOCK TABLES `notificationby` WRITE;
/*!40000 ALTER TABLE `notificationby` DISABLE KEYS */;
INSERT INTO `notificationby` VALUES (2,3,1,1,1),(4,5,1,1,1),(5,6,1,1,1),(10,11,1,1,1),(11,12,1,1,1),(12,13,1,1,1),(13,14,1,1,0),(14,15,1,1,1),(16,17,1,1,1),(17,18,1,1,1);
/*!40000 ALTER TABLE `notificationby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `cart_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` float NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by_wallet` float NOT NULL DEFAULT '0',
  `rem_price` float NOT NULL DEFAULT '0',
  `order_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `delivery_charge` float NOT NULL DEFAULT '0',
  `time_slot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dboy_id` int(11) NOT NULL DEFAULT '0',
  `order_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `user_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelling_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT '0',
  `coupon_discount` float NOT NULL DEFAULT '0',
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_by_store` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,3,0,1,'27b55',20,'card',0,20,'2020-04-21','2020-05-13',0,'4:00 AM- 11:00 PM',3,'Confirmed',NULL,NULL,0,0,'success',2,NULL),(2,3,1,1,'036d1',20,'COD',0,20,'2020-05-13','2020-05-13',0,'4:00 AM- 11:00 PM',3,'Out_For_Delivery','/images/user/signature/130520143146user_signature.png',NULL,0,0,NULL,2,NULL),(3,3,1,1,'de2c7',20,'COD',0,20,'2020-05-13','2020-05-13',0,'4:00 AM- 11:00 PM',3,'Out_For_Delivery','/images/user/signature/130520150102user_signature.png',NULL,0,0,NULL,0,NULL),(4,3,1,1,'4b0ff',20,'COD',0,20,'2020-05-14','2020-05-14',0,'4:00 AM- 11:00 PM',3,'Confirmed',NULL,NULL,0,0,NULL,2,NULL),(5,3,1,1,'12345',20,'COD',0,20,'2020-04-21','2020-05-13',0,'4:00 AM- 11:00 PM',3,'Out_For_Delivery','/images/user/signature/130520145804user_signature.png',NULL,0,0,NULL,2,NULL),(6,3,1,1,'10427',20,'COD',0,20,'2020-04-22','2020-05-13',0,'4:00 AM- 11:00 PM',3,'Completed','/images/user/signature/130520174533user_signature.png',NULL,0,0,NULL,0,NULL),(7,3,5,1,'LNEZ87',20,'COD',0,20,'2020-04-22','2020-05-08',0,'4:00 AM- 11:00 PM',3,'Pending',NULL,NULL,0,0,NULL,1,NULL),(8,3,1,9,'NDOWOF48',20,'COD',0,20,'2020-05-14','2020-05-14',0,'4:00 AM- 11:00 PM',3,'Confirmed',NULL,NULL,0,0,NULL,1,NULL),(23,3,0,1,'VDRR3577',320,NULL,0,320,'2020-05-13','2020-04-23',20,'4:00 AM- 11:00 PM',0,'Pending',NULL,NULL,0,0,NULL,2,NULL),(24,3,0,1,'GXMJ64d3',320,NULL,0,320,'2020-05-05','2020-04-23',20,'4:00 AM- 11:00 PM',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(25,3,0,1,'MNAX60dd',320,NULL,0,320,'2020-05-05','2020-04-23',20,'4:00 AM- 11:00 PM',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(26,3,0,1,'NVUU994a',320,'card',0,300,'2020-05-06','2020-04-23',20,'4:00 AM- 11:00 PM',0,'Pending',NULL,NULL,0,0,'success',0,NULL),(27,3,0,1,'TPWY9579',320,NULL,0,320,'2020-05-06','2020-04-23',20,'4:00 AM- 11:00 PM',0,'cancelled',NULL,NULL,0,0,NULL,0,NULL),(28,3,0,1,'RYPK324e',320,NULL,0,320,'2020-05-06','2020-04-23',20,'4:00 AM- 11:00 PM',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(29,3,0,1,'WYCX36f7',320,'card',0,300,'2020-05-06','2020-04-23',20,'4:00 AM- 11:00 PM',0,'Pending',NULL,NULL,0,0,'success',1,NULL),(30,3,0,1,'ICHV39ab',320,NULL,0,320,'2020-05-06','2020-04-23',20,'4:00 AM- 11:00 PM',0,'cancelled',NULL,'i bought from somewhere else',0,0,NULL,1,'2020-05-09 13:12:57'),(160,3,1,1,'AVXP04d2',720,'COD',0,740,'2020-05-09','2020-05-09',0,'13:00 - 16:00',0,'Pending',NULL,NULL,0,0,'COD',0,NULL),(161,3,1,1,'THKC0750',500,NULL,0,500,'2020-05-09','2020-05-09',0,'07:00 - 10:00',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(162,3,1,1,'UWFM8537',3600,NULL,0,3600,'2020-05-11','2020-04-11',0,'07:00 - 10:00',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(163,3,1,1,'WJFE154f',1870,NULL,0,1870,'2020-05-11','2020-04-11',0,'07:00 - 10:00',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(164,3,1,1,'MHMA61f5',1870,NULL,0,1870,'2020-05-11','2020-04-11',0,'07:00 - 10:00',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(165,3,1,1,'DMKI55b7',1870,NULL,0,1870,'2020-05-11','2020-04-11',0,'07:00 - 10:00',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(166,3,1,1,'KVSY740f',420,'wallet',400,0,'2020-05-11','2020-04-11',20,'07:00 - 10:00',0,'Pending',NULL,NULL,0,0,'success',0,NULL),(167,3,1,1,'TSYC8960',3520,NULL,0,3520,'2020-05-12','2020-04-13',0,'07:00 - 10:00',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(168,3,1,1,'VAGI7013',11100,NULL,0,11100,'2020-05-13','2020-04-23',0,'04:00 AM-11:00 PM',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(169,3,1,1,'NZFQ99a9',11100,NULL,0,11100,'2020-05-13','2020-04-23',0,'4:00 AM- 11:00 PM',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(170,3,1,1,'GNUH7645',11100,NULL,0,11100,'2020-05-13','2020-04-23',0,'4:00 AM- 11:00 PM',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(171,3,1,1,'VAOP1305',11100,NULL,0,11100,'2020-05-13','2020-04-23',0,'4:00 AM- 11:00 PM',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(172,3,1,1,'XWID25e3',11100,NULL,0,11100,'2020-05-13','2020-04-23',0,'04:00 AM-11:00 PM',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(173,3,1,1,'LUSZ42b0',11100,NULL,0,11100,'2020-05-13','2020-04-13',0,'07:00 - 10:00',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(174,3,1,1,'XSIL7530',11100,NULL,0,11100,'2020-05-13','2020-05-23',0,'4:00 AM- 11:00 PM',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(175,3,1,1,'LPNO5526',5560,NULL,0,5560,'2020-05-13','2020-05-23',0,'4:00 AM- 11:00 PM',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(176,3,1,1,'LTQF3596',11100,NULL,0,11100,'2020-05-13','2020-04-13',0,'07:00 - 10:00',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(177,3,1,1,'KFTB2960',60,NULL,0,60,'2020-05-13','2020-04-13',20,'timeslot',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(178,3,1,1,'PHGW5993',11100,NULL,0,11100,'2020-05-13','2020-04-13',0,'07:00 - 10:00',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(179,3,1,1,'AIZJ47a9',890,NULL,0,890,'2020-05-13','2020-04-13',0,'timeslot',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(180,3,1,1,'BSTO1263',1050,'wallet',1070,0,'2020-05-13','2020-04-13',0,'timeslot',0,'Pending',NULL,NULL,0,0,'success',0,NULL),(181,3,1,1,'DEWW482c',70,NULL,0,70,'2020-05-13','2020-04-13',20,'timeslot',0,'Pending',NULL,NULL,0,0,NULL,0,NULL),(182,3,1,1,'WFGT47fd',70,'wallet',50,0,'2020-05-13','2020-04-13',20,'timeslot',0,'Pending',NULL,NULL,0,0,'success',0,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payout_req_valid`
--

DROP TABLE IF EXISTS `payout_req_valid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payout_req_valid` (
  `val_id` int(11) NOT NULL AUTO_INCREMENT,
  `min_amt` int(11) NOT NULL,
  `min_days` int(11) NOT NULL,
  PRIMARY KEY (`val_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payout_req_valid`
--

LOCK TABLES `payout_req_valid` WRITE;
/*!40000 ALTER TABLE `payout_req_valid` DISABLE KEYS */;
INSERT INTO `payout_req_valid` VALUES (1,10,10);
/*!40000 ALTER TABLE `payout_req_valid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payout_requests`
--

DROP TABLE IF EXISTS `payout_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payout_requests` (
  `req_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payout_amt` float NOT NULL,
  `req_date` date NOT NULL,
  `complete` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payout_requests`
--

LOCK TABLES `payout_requests` WRITE;
/*!40000 ALTER TABLE `payout_requests` DISABLE KEYS */;
INSERT INTO `payout_requests` VALUES (1,'1',39.2,'2020-05-04',2),(2,'1',40,'2020-05-04',2),(3,'1',38,'2020-04-22',2),(5,'1',19.6,'2020-05-06',0);
/*!40000 ALTER TABLE `payout_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (5,3,'Brown Eggs','images/product/09-05-2020/Egg-Myths-2.jpg'),(6,1,'Chakki Fresh','images/product/20-04-2020/post-1-img.jpg'),(7,9,'Nature Fresh Sampoorna Chakki Atta','images/product/25-04-2020/att2.jpg'),(8,9,'Aashirvaad Shudh Chakki Whole Wheat Atta','images/product/25-04-2020/ashirwad.jpg'),(9,7,'Choice California Whole Walnuts','images/product/25-04-2020/walnut.jpg'),(11,7,'ProV Pistachios','images/product/25-04-2020/almond1.jpeg'),(12,8,'New Potato','images/product/25-04-2020/patato.jpeg'),(13,8,'Lemon','images/product/25-04-2020/lemon.jpeg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_varient`
--

DROP TABLE IF EXISTS `product_varient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_varient` (
  `varient_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mrp` float DEFAULT NULL,
  `price` float NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `varient_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`varient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_varient`
--

LOCK TABLES `product_varient` WRITE;
/*!40000 ALTER TABLE `product_varient` DISABLE KEYS */;
INSERT INTO `product_varient` VALUES (2,5,1,'pcs',15,10,'the healthy source of rich protein','images/product/11-04-2020/app-logo-3.png'),(4,6,10,'KG',360,350,'chakki fresh atta with a taste of goodness.','images/product/20-04-2020/post-1-img.jpg'),(5,5,10,'pcs',150,100,'cghn','images/product/20-04-2020/hero-logo.png'),(6,7,1,'KG',400,360,'Perfect combination of health and taste Naturally rich in fibre and nutrients Helps prepare soft and fluffy roti, paranthas etc. Ideal to prepare various sweets and savouries','images/product/25-04-2020/att2.jpg'),(7,8,1,'KG',200,170,'Made with superior quality wheat Prepares soft and delicious roti Rich source of Fibre Consists of heavier in feel quality flour','images/product/25-04-2020/ashirwad.jpg'),(8,9,1,'KG',300,250,'Energy-packed nutritious Walnuts Nutty yet pleasantly sweet in taste Ideal for snacking, cooking and baking A great topping to add a perfect crunch to desserts, ice cream and shakes','images/product/25-04-2020/walnut.jpg'),(10,11,1,'KG',400,250,'Makes for a healthy and tasty addition to both sweet and savoury dishes Rich in taste and nutrition Sprinkle over a variety of recipes like desserts, sundaes, biscuits, cakes, etc. Offers an extra crunch in every bite','images/product/25-04-2020/almond1.jpeg'),(11,12,1,'KG',40,20,'New Potato is high in calories which supplement energy requirements of the body. It\'s also known for its anti-inflammatory properties.','images/product/25-04-2020/patato.jpeg'),(12,14,6,'unit',20,12,'Lemon is Vitamin C rich citrus fruit that enhances your beauty. It rejuvenates your skin from within, bringing a glow to your face.','images/product/25-04-2020/lemon.jpeg'),(13,7,5,'KG',200,130,'Integrated mix of six different grains Comes with the goodness of wheat, soya, channa, oat, maize and psyllium husk Rich source of essential Vitamins and Dietary Fibre Low in saturated fats Makes soft, fluffy rotis that have high nutritional value','images/product/25-04-2020/atta3.jpg');
/*!40000 ALTER TABLE `product_varient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reedem_values`
--

DROP TABLE IF EXISTS `reedem_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reedem_values` (
  `reedem_id` int(100) NOT NULL AUTO_INCREMENT,
  `reward_point` int(100) NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`reedem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reedem_values`
--

LOCK TABLES `reedem_values` WRITE;
/*!40000 ALTER TABLE `reedem_values` DISABLE KEYS */;
INSERT INTO `reedem_values` VALUES (1,1,'0.50');
/*!40000 ALTER TABLE `reedem_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_points`
--

DROP TABLE IF EXISTS `reward_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reward_points` (
  `reward_id` int(100) NOT NULL AUTO_INCREMENT,
  `min_cart_value` int(100) NOT NULL,
  `reward_point` int(100) NOT NULL,
  PRIMARY KEY (`reward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_points`
--

LOCK TABLES `reward_points` WRITE;
/*!40000 ALTER TABLE `reward_points` DISABLE KEYS */;
INSERT INTO `reward_points` VALUES (1,10,10),(2,20,20),(3,20000,20000),(4,30,30);
/*!40000 ALTER TABLE `reward_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secondary_banner`
--

DROP TABLE IF EXISTS `secondary_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secondary_banner` (
  `sec_banner_id` int(100) NOT NULL AUTO_INCREMENT,
  `banner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`sec_banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secondary_banner`
--

LOCK TABLES `secondary_banner` WRITE;
/*!40000 ALTER TABLE `secondary_banner` DISABLE KEYS */;
INSERT INTO `secondary_banner` VALUES (1,'banner1','images/banner/060520114355am-download-(2).jpg');
/*!40000 ALTER TABLE `secondary_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `society`
--

DROP TABLE IF EXISTS `society`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `society` (
  `society_id` int(100) NOT NULL AUTO_INCREMENT,
  `society_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(100) NOT NULL,
  PRIMARY KEY (`society_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `society`
--

LOCK TABLES `society` WRITE;
/*!40000 ALTER TABLE `society` DISABLE KEYS */;
INSERT INTO `society` VALUES (4,'Laxmi Nagar',1),(6,'sector-58',3),(7,'Sector-55',3);
/*!40000 ALTER TABLE `society` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `store_id` int(100) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_share` float NOT NULL DEFAULT '0',
  `device_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'EasyDay','Shivam','82877288806','Noida',2,'qwerty','deekhati62@gmail.com','tecmanic','28.636568','77.09648','Noida Sector 18'),(4,'shivam','rawat','9876543210','Delhi',0,'jhgjhgjhgjh','abcd@gmail.com','qwerty','28.6089944','77.3578777','Noida Sector 18'),(5,'Vishal Mega Mart','Siddharth','0847697888','Noida',0,'jhbjkhbjkh','dkhati866@gmail.com','qwerty','28.6005955','77.4003841','Sector 121, Noida, Uttar Pradesh, India'),(10,'dee','Siddharth','0847697898','Noida',1,NULL,'deekhti62@gmail.com','sssddd','28.5355161','77.3910265','Noida, Uttar Pradesh, India');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_bank`
--

DROP TABLE IF EXISTS `store_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_bank` (
  `ac_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `ac_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ifsc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `upi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_bank`
--

LOCK TABLES `store_bank` WRITE;
/*!40000 ALTER TABLE `store_bank` DISABLE KEYS */;
INSERT INTO `store_bank` VALUES (1,1,'674890230590','HDFC0005477','Digvijay singh','HDFC Bank','7895811769@upi');
/*!40000 ALTER TABLE `store_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_earning`
--

DROP TABLE IF EXISTS `store_earning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_earning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `paid` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_earning`
--

LOCK TABLES `store_earning` WRITE;
/*!40000 ALTER TABLE `store_earning` DISABLE KEYS */;
INSERT INTO `store_earning` VALUES (10,1,10);
/*!40000 ALTER TABLE `store_earning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_notification`
--

DROP TABLE IF EXISTS `store_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_notification` (
  `not_id` int(11) NOT NULL AUTO_INCREMENT,
  `not_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `read_by_store` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`not_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_notification`
--

LOCK TABLES `store_notification` WRITE;
/*!40000 ALTER TABLE `store_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_orders`
--

DROP TABLE IF EXISTS `store_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_orders` (
  `store_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `varient_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `order_cart_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `store_approval` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`store_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_orders`
--

LOCK TABLES `store_orders` WRITE;
/*!40000 ALTER TABLE `store_orders` DISABLE KEYS */;
INSERT INTO `store_orders` VALUES (5,2,2,20,'27b55','2020-04-21 13:14:27',1),(6,2,2,20,'036d1','2020-04-21 13:26:19',1),(7,2,2,20,'de2c7','2020-04-21 13:27:15',1),(8,2,2,20,'4b0ff','2020-04-21 13:33:11',1),(9,2,2,20,'12345','2020-04-21 13:35:19',1),(10,2,2,20,'10427','2020-04-22 08:17:37',1),(11,2,2,20,'LNEZ87','2020-04-22 08:42:25',1),(12,2,2,20,'NDOWOF48','2020-04-22 08:48:06',1),(13,6,2,20,'NDOWOF48','2020-04-22 08:49:54',1),(14,6,2,20,'27b55','2020-04-22 08:53:41',1),(27,2,30,300,'VDRR3577','2020-05-01 06:14:41',1),(28,2,30,300,'IYVO666d','2020-05-05 17:47:04',1),(29,2,30,300,'GXMJ64d3','2020-05-05 17:50:34',1),(30,2,30,300,'MNAX60dd','2020-05-05 17:56:28',1),(31,2,30,300,'NVUU994a','2020-05-06 14:31:28',1),(32,2,30,300,'TPWY9579','2020-05-06 15:12:28',1),(33,2,30,300,'RYPK324e','2020-05-06 15:18:40',1),(34,2,30,300,'WYCX36f7','2020-05-06 15:20:03',1),(35,2,30,300,'ICHV39ab','2020-05-06 15:25:51',1),(198,6,1,360,'AVXP04d2','2020-05-09 05:46:34',1),(199,5,5,500,'THKC0750','2020-05-09 14:03:05',1),(200,2,10,100,'UWFM8537','2020-05-11 08:41:25',1),(201,4,10,3500,'UWFM8537','2020-05-11 08:41:25',1),(202,2,1,10,'WJFE154f','2020-05-11 14:11:33',1),(203,4,4,1400,'WJFE154f','2020-05-11 14:11:33',1),(204,5,1,100,'WJFE154f','2020-05-11 14:11:33',1),(205,6,1,360,'WJFE154f','2020-05-11 14:11:33',1),(206,2,1,10,'MHMA61f5','2020-05-11 14:13:39',1),(207,4,4,1400,'MHMA61f5','2020-05-11 14:13:39',1),(208,5,1,100,'MHMA61f5','2020-05-11 14:13:39',1),(209,6,1,360,'MHMA61f5','2020-05-11 14:13:39',1),(210,2,1,10,'DMKI55b7','2020-05-11 15:12:19',1),(211,4,4,1400,'DMKI55b7','2020-05-11 15:12:19',1),(212,5,1,100,'DMKI55b7','2020-05-11 15:12:19',1),(213,6,1,360,'DMKI55b7','2020-05-11 15:12:19',1),(214,5,4,400,'KVSY740f','2020-05-11 15:35:12',1),(215,2,7,70,'TSYC8960','2020-05-12 19:59:49',1),(216,4,5,1750,'TSYC8960','2020-05-12 19:59:49',1),(217,5,6,600,'TSYC8960','2020-05-12 19:59:49',1),(218,6,3,1080,'TSYC8960','2020-05-12 19:59:49',1),(219,11,1,20,'TSYC8960','2020-05-12 19:59:49',1),(220,2,30,300,'VAGI7013','2020-05-13 12:05:35',1),(221,6,30,10800,'VAGI7013','2020-05-13 12:05:35',1),(222,2,30,300,'NZFQ99a9','2020-05-13 12:08:44',1),(223,6,30,10800,'NZFQ99a9','2020-05-13 12:08:44',1),(224,2,30,300,'GNUH7645','2020-05-13 12:08:50',1),(225,6,30,10800,'GNUH7645','2020-05-13 12:08:50',1),(226,2,30,300,'VAOP1305','2020-05-13 12:09:00',1),(227,6,30,10800,'VAOP1305','2020-05-13 12:09:00',1),(228,2,30,300,'XWID25e3','2020-05-13 12:11:38',1),(229,6,30,10800,'XWID25e3','2020-05-13 12:11:38',1),(230,2,30,300,'LUSZ42b0','2020-05-13 12:28:00',1),(231,6,30,10800,'LUSZ42b0','2020-05-13 12:28:00',1),(232,2,30,300,'XSIL7530','2020-05-13 12:32:45',1),(233,6,30,10800,'XSIL7530','2020-05-13 12:32:45',1),(234,2,1,10,'LPNO5526','2020-05-13 12:36:50',1),(235,4,7,2450,'LPNO5526','2020-05-13 12:36:50',1),(236,5,8,800,'LPNO5526','2020-05-13 12:36:50',1),(237,6,3,1080,'LPNO5526','2020-05-13 12:36:50',1),(238,7,3,510,'LPNO5526','2020-05-13 12:36:50',1),(239,11,3,60,'LPNO5526','2020-05-13 12:36:50',1),(240,13,5,650,'LPNO5526','2020-05-13 12:36:50',1),(241,2,30,300,'LTQF3596','2020-05-13 12:52:32',1),(242,6,30,10800,'LTQF3596','2020-05-13 12:52:32',1),(243,2,4,40,'KFTB2960','2020-05-13 13:08:15',1),(244,2,30,300,'PHGW5993','2020-05-13 13:09:21',1),(245,6,30,10800,'PHGW5993','2020-05-13 13:09:21',1),(246,2,4,40,'AIZJ47a9','2020-05-13 13:18:52',1),(247,7,5,850,'AIZJ47a9','2020-05-13 13:18:52',1),(248,4,3,1050,'BSTO1263','2020-05-13 13:47:57',1),(249,2,5,50,'DEWW482c','2020-05-13 14:09:52',1),(250,2,5,50,'WFGT47fd','2020-05-13 14:11:15',1);
/*!40000 ALTER TABLE `store_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_products`
--

DROP TABLE IF EXISTS `store_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_products` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `varient_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_products`
--

LOCK TABLES `store_products` WRITE;
/*!40000 ALTER TABLE `store_products` DISABLE KEYS */;
INSERT INTO `store_products` VALUES (26,4,1222,1),(27,2,100,1),(28,5,10,1),(29,6,20,1),(30,7,100,1);
/*!40000 ALTER TABLE `store_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_society`
--

DROP TABLE IF EXISTS `store_society`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_society` (
  `store_society_id` int(100) NOT NULL AUTO_INCREMENT,
  `society_id` int(100) NOT NULL,
  `store_id` int(100) NOT NULL,
  PRIMARY KEY (`store_society_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_society`
--

LOCK TABLES `store_society` WRITE;
/*!40000 ALTER TABLE `store_society` DISABLE KEYS */;
INSERT INTO `store_society` VALUES (3,1,4),(4,3,4),(5,3,5);
/*!40000 ALTER TABLE `store_society` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_web_setting`
--

DROP TABLE IF EXISTS `tbl_web_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_web_setting` (
  `set_id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_web_setting`
--

LOCK TABLES `tbl_web_setting` WRITE;
/*!40000 ALTER TABLE `tbl_web_setting` DISABLE KEYS */;
INSERT INTO `tbl_web_setting` VALUES (1,'images/app_logo/11-05-2020/gogrocer-icon.png','GoGrocer','images/app_logo/favicon/11-05-2020/gogrocer-icon.png');
/*!40000 ALTER TABLE `tbl_web_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `termspage`
--

DROP TABLE IF EXISTS `termspage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `termspage` (
  `terms_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`terms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termspage`
--

LOCK TABLES `termspage` WRITE;
/*!40000 ALTER TABLE `termspage` DISABLE KEYS */;
INSERT INTO `termspage` VALUES (1,'Terms & Condition','<table cellspacing=\"0\" id=\"datatables\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><strong>Terms and Conditions</strong></p>\r\n\r\n			<p>Last Updated: 05&nbsp;May 2020</p>\r\n\r\n			<p>Bisht Technologies Private Limited, a company incorporated under the Companies Act, 1956 having its registered office at #3, 2nd floor, Kapil Complex Mukhani, Haldwani-263139 and operating office at A-130, Sector 63, Noida, who is the owner of the mobile application GoGrocer (the &quot;Application Provider&quot;) reserves all rights not expressly granted to you under these Terms and Conditions. GoGrocer mobile application, the product that is subject to these Terms and Conditions is hereafter referred to as the &quot;Licensed Application&quot;</p>\r\n\r\n			<p><strong>Scope of License</strong></p>\r\n\r\n			<p>This license granted to you for the Licensed Application by the Application Provider, is limited to a non-exclusive, non-transferable, license to use the Licensed Application on any Android&trade; and iOS device that you own or control. This license does not allow you to use the Licensed Application on any Android&trade; device that you do not own or control, and you may not distribute or make the Licensed Application available over a network where it could be used by multiple devices at the same time. Nothing contained in the Licensed Application should be considered as granting you, by implication or otherwise, any license or right to use any trade-marks, logos, or other names contained in the Licensed Application. You may not rent, lease, lend, sell, redistribute or sublicense the Licensed Application. You may not copy, decompile, reverse engineer, disassemble, attempt to derive the source code of, modify, or create derivative works of the Licensed Application, any updates, or any part thereof (except as and only to the extent any foregoing restriction is prohibited by applicable law or to the extent as may be permitted by the licensing terms governing use of any open sourced components included within the Licensed Application). Any attempt to do so is a violation of the rights of the Application Provider and its licensors. If you breach this restriction, you may be subject to prosecution and damages. The terms of the license will govern any upgrades provided by the Application Provider that replace and/or supplement the original Licensed Application, unless such upgrade is accompanied by a separate license in which case the terms of that license will govern its use.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>');
/*!40000 ALTER TABLE `termspage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_slot`
--

DROP TABLE IF EXISTS `time_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_slot` (
  `time_slot_id` int(100) NOT NULL AUTO_INCREMENT,
  `open_hour` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `close_hour` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_slot` int(11) NOT NULL,
  PRIMARY KEY (`time_slot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_slot`
--

LOCK TABLES `time_slot` WRITE;
/*!40000 ALTER TABLE `time_slot` DISABLE KEYS */;
INSERT INTO `time_slot` VALUES (1,'07:00','22:00',180);
/*!40000 ALTER TABLE `time_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notification`
--

DROP TABLE IF EXISTS `user_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notification` (
  `noti_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `noti_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noti_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_by_user` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`noti_id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notification`
--

LOCK TABLES `user_notification` WRITE;
/*!40000 ALTER TABLE `user_notification` DISABLE KEYS */;
INSERT INTO `user_notification` VALUES (3,5,'hey','jfkdjkl',0,'2020-05-07 00:00:00'),(4,6,'hey','jfkdjkl',0,'2020-05-07 00:00:00'),(6,11,'hey','jfkdjkl',0,'2020-05-07 00:00:00'),(7,12,'hey','jfkdjkl',0,'2020-05-07 00:00:00'),(8,13,'hey','jfkdjkl',0,'2020-05-07 00:00:00'),(9,14,'hey','jfkdjkl',0,'2020-05-07 00:00:00'),(132,5,'hey','n,jhjk',0,'2020-05-14 00:00:00'),(133,6,'hey','n,jhjk',0,'2020-05-14 00:00:00'),(134,11,'hey','n,jhjk',0,'2020-05-14 00:00:00'),(135,12,'hey','n,jhjk',0,'2020-05-14 00:00:00'),(136,13,'hey','n,jhjk',0,'2020-05-14 00:00:00'),(137,15,'hey','n,jhjk',0,'2020-05-14 00:00:00'),(138,17,'hey','n,jhjk',0,'2020-05-14 00:00:00'),(139,18,'hey','n,jhjk',0,'2020-05-14 00:00:00'),(141,5,'New Update !','bnvb',0,'2020-05-14 00:00:00'),(142,6,'New Update !','bnvb',0,'2020-05-14 00:00:00'),(143,11,'New Update !','bnvb',0,'2020-05-14 00:00:00'),(144,12,'New Update !','bnvb',0,'2020-05-14 00:00:00'),(145,13,'New Update !','bnvb',0,'2020-05-14 00:00:00'),(146,15,'New Update !','bnvb',0,'2020-05-14 00:00:00'),(147,17,'New Update !','bnvb',0,'2020-05-14 00:00:00'),(148,18,'New Update !','bnvb',0,'2020-05-14 00:00:00'),(150,5,'hey','kliuityfyuguh',0,'2020-05-14 00:00:00'),(151,6,'hey','kliuityfyuguh',0,'2020-05-14 00:00:00'),(152,11,'hey','kliuityfyuguh',0,'2020-05-14 00:00:00'),(153,12,'hey','kliuityfyuguh',0,'2020-05-14 00:00:00'),(154,13,'hey','kliuityfyuguh',0,'2020-05-14 00:00:00'),(155,15,'hey','kliuityfyuguh',0,'2020-05-14 00:00:00'),(156,17,'hey','kliuityfyuguh',0,'2020-05-14 00:00:00'),(157,18,'hey','kliuityfyuguh',0,'2020-05-14 00:00:00'),(159,5,'hey','new',0,'2020-05-14 00:00:00'),(160,6,'hey','new',0,'2020-05-14 00:00:00'),(161,11,'hey','new',0,'2020-05-14 00:00:00'),(162,12,'hey','new',0,'2020-05-14 00:00:00'),(163,13,'hey','new',0,'2020-05-14 00:00:00'),(164,15,'hey','new',0,'2020-05-14 00:00:00'),(165,17,'hey','new',0,'2020-05-14 00:00:00'),(166,18,'hey','new',0,'2020-05-14 00:00:00'),(168,5,'New Update !','jjlll',0,'2020-05-14 00:00:00'),(169,6,'New Update !','jjlll',0,'2020-05-14 00:00:00'),(170,11,'New Update !','jjlll',0,'2020-05-14 00:00:00'),(171,12,'New Update !','jjlll',0,'2020-05-14 00:00:00'),(172,13,'New Update !','jjlll',0,'2020-05-14 00:00:00'),(173,15,'New Update !','jjlll',0,'2020-05-14 00:00:00'),(174,17,'New Update !','jjlll',0,'2020-05-14 00:00:00'),(175,18,'New Update !','jjlll',0,'2020-05-14 00:00:00'),(176,3,'New Update !','nmwcdb',0,'2020-05-14 00:00:00'),(177,5,'New Update !','nmwcdb',0,'2020-05-14 00:00:00'),(178,6,'New Update !','nmwcdb',0,'2020-05-14 00:00:00'),(179,11,'New Update !','nmwcdb',0,'2020-05-14 00:00:00'),(180,12,'New Update !','nmwcdb',0,'2020-05-14 00:00:00'),(181,13,'New Update !','nmwcdb',0,'2020-05-14 00:00:00'),(182,15,'New Update !','nmwcdb',0,'2020-05-14 00:00:00'),(183,17,'New Update !','nmwcdb',0,'2020-05-14 00:00:00'),(184,18,'New Update !','nmwcdb',0,'2020-05-14 00:00:00'),(185,3,'New Update !','cdsdvcsdv',0,'2020-05-14 00:00:00'),(186,5,'New Update !','cdsdvcsdv',0,'2020-05-14 00:00:00'),(187,6,'New Update !','cdsdvcsdv',0,'2020-05-14 00:00:00'),(188,11,'New Update !','cdsdvcsdv',0,'2020-05-14 00:00:00'),(189,12,'New Update !','cdsdvcsdv',0,'2020-05-14 00:00:00'),(190,13,'New Update !','cdsdvcsdv',0,'2020-05-14 00:00:00'),(191,15,'New Update !','cdsdvcsdv',0,'2020-05-14 00:00:00'),(192,17,'New Update !','cdsdvcsdv',0,'2020-05-14 00:00:00'),(193,18,'New Update !','cdsdvcsdv',0,'2020-05-14 00:00:00'),(194,3,'hey','kljmkl',0,'2020-05-14 00:00:00'),(195,5,'hey','kljmkl',0,'2020-05-14 00:00:00'),(196,6,'hey','kljmkl',0,'2020-05-14 00:00:00'),(197,11,'hey','kljmkl',0,'2020-05-14 00:00:00'),(198,12,'hey','kljmkl',0,'2020-05-14 00:00:00'),(199,13,'hey','kljmkl',0,'2020-05-14 00:00:00'),(200,15,'hey','kljmkl',0,'2020-05-14 00:00:00'),(201,17,'hey','kljmkl',0,'2020-05-14 00:00:00'),(202,18,'hey','kljmkl',0,'2020-05-14 00:00:00');
/*!40000 ALTER TABLE `user_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `wallet` float NOT NULL DEFAULT '0',
  `rewards` int(11) NOT NULL DEFAULT '0',
  `is_verified` int(11) NOT NULL DEFAULT '0',
  `block` int(11) NOT NULL DEFAULT '0',
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'yashasviffgg','7895811769','yashu@gmail.com','eunMpQhi0W0:APA91bH4TAAgAnr6wEvBZUq-gv5AWb0WRp9UMJ_oDezH3iKGS8QklPmPMaURAkC8TL141aQiIJCALitqJWY9QN0srCm3JUK3uFLG7weld8c3zhDsI0lM7ibljiLjQdJsCjNQpGmP9WiC','N/A','1234','8128',1,138829,30,1,0,'2020-04-17 09:07:52'),(5,'digambar','8476978908','deekhati@gmail.com','qwertyu','N/A','qwertyonk','5294',1,0,0,1,0,'2020-04-17 09:27:42'),(6,'jhdhdh','9999999999','yashu@gmail.com','qwerty','N/A','123456','5093',1,0,0,0,0,'2020-04-20 10:37:48'),(11,'sonal','9179985780','s@gmail.com','f1bca86f19636b42','N/A','123',NULL,1,0,0,1,0,'2020-05-05 10:05:15'),(12,'dee','8476978906','dkhati866@gmail.com','d9b2f5b504871fa4','N/A','123456',NULL,1,0,0,1,0,'2020-05-06 08:13:36'),(13,'Shiv','8287728806','abcd@gmail.com','6ebf4b02c9c76a48','N/A','qwerty',NULL,1,0,0,1,0,'2020-05-06 08:22:34'),(15,'ramesh','9810493244','mzaade0@gmail.com','ff8eb481b831ccae','N/A','123456',NULL,1,0,0,1,0,'2020-05-08 20:46:13'),(17,'neeraj','9990155993','neerajbisht@live.com','08f40624fa58a70d','N/A','15101988','9051',1,2000,0,1,0,'2020-05-09 03:13:33'),(18,'nsj','8750221354','yashasvijain0000@gmail.com','390928a1d09d6603','N/A','12345678','6132',1,0,0,1,0,'2020-05-09 08:58:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_recharge_history`
--

DROP TABLE IF EXISTS `wallet_recharge_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet_recharge_history` (
  `wallet_recharge_history` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `recharge_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` float NOT NULL,
  `date_of_recharge` date NOT NULL,
  PRIMARY KEY (`wallet_recharge_history`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_recharge_history`
--

LOCK TABLES `wallet_recharge_history` WRITE;
/*!40000 ALTER TABLE `wallet_recharge_history` DISABLE KEYS */;
INSERT INTO `wallet_recharge_history` VALUES (1,14,'failed',2000,'2020-05-08'),(2,14,'failed',2000,'2020-05-08'),(3,14,'failed',2000,'2020-05-08'),(4,3,'success',20,'2020-05-08'),(5,3,'success',20,'2020-05-08'),(6,3,'success',20,'2020-05-08'),(7,3,'success',20,'2020-05-08'),(8,3,'success',20,'2020-05-08'),(9,3,'success',20,'2020-05-08'),(10,14,'failed',2000,'2020-05-08'),(11,14,'failed',2000,'2020-05-08'),(12,14,'success',20,'2020-05-08'),(13,14,'failed',2000,'2020-05-08'),(14,14,'success',20,'2020-05-08'),(15,14,'success',20,'2020-05-08'),(16,14,'success',20,'2020-05-08'),(17,14,'failed',20,'2020-05-08'),(18,3,'failed',20,'2020-05-08'),(19,14,'failed',20,'2020-05-08'),(20,3,'success',20,'2020-05-08'),(21,14,'success',20,'2020-05-08'),(22,14,'success',2000,'2020-05-08'),(23,3,'success',22,'2020-05-08'),(24,3,'success',22,'2020-05-08'),(25,3,'success',13,'2020-05-08'),(26,3,'success',12,'2020-05-08'),(27,3,'success',12,'2020-05-08'),(28,3,'success',120,'2020-05-08'),(29,3,'success',11,'2020-05-08'),(30,3,'success',11,'2020-05-08'),(31,17,'success',2000,'2020-05-09'),(32,3,'success',12,'2020-05-09'),(33,3,'success',12,'2020-05-09'),(34,3,'success',10,'2020-05-09'),(35,17,'failed',100,'2020-05-11'),(36,18,'failed',2,'2020-05-12'),(37,17,'failed',1000,'2020-05-12');
/*!40000 ALTER TABLE `wallet_recharge_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 22:07:12
